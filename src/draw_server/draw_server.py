from OpenGL.GL import *
from OpenGL.GLUT import *
from OpenGL.GLU import *

import socket
import _thread
import re
import math
import numpy as np
from scipy.ndimage import gaussian_filter1d
from scipy import signal
from PIL import Image as Image


from rdp import rdp

window = 0

# mouse locations
mouse_x = 0
mouse_y = 0

# led locations
led_x = 0
led_y = 0

# memory of points to draw in each frame
points_to_draw = []

# indicated when the draw button is clicked
start_drawing = False
# indicated when the clear button is clicked
start_clear = False
# indicated when the scroll button is clicked
start_scroll = False

enable_zoom = True

# indicates current color being used
current_color = 0
point_radius = 10
# define constants
RED = 0
GREEN = 1
BLUE = 2
WHITE = 3
BLACK = 4

# flag to know when ethernet connection is established
is_connected = False

screen_width = 1280
screen_height = 720
x_ratio = 1.0
y_ratio = 1.0
#thread lock
lock = _thread.allocate_lock()
tex = 0


# filename = "zoom.jpg"
# img = Image.open(filename)
# img_data = np.array(list(img.getdata()), np.int8)
zoom_in_left_x = 200
zoom_in_right_x = 100
zoom_bottom_y = 100
# def read_texture(filename):
#     textID = glGenTextures(1)
#     glBindTexture(GL_TEXTURE_2D, textID)
#     glPixelStorei(GL_UNPACK_ALIGNMENT, 1)
#     glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP)
#     glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP)
#     glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT)
#     glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT)
#     glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST)
#     glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST)
#     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_DECAL)
#     glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, img.size[0], img.size[1], 0, GL_RGB, GL_UNSIGNED_BYTE, img_data)
#     return textID

# def draw_texture():
#     if start_drawing is False and start_clear is False:
#         tex = read_texture('test.jpg')
#
#         # glBindTexture(GL_TEXTURE_2D, tex)
#
#         glEnable(GL_TEXTURE_2D)
#         glBegin(GL_QUADS)
#         glTexCoord2d(0, 1)
#         glVertex2f(screen_width - zoom_in_left_x, zoom_bottom_y)
#         glTexCoord2d(0, 0)
#         glVertex2f(screen_width - zoom_in_left_x, 0)
#         glTexCoord2d(1, 0)
#         glVertex2f(screen_width - 1, 0)
#         glTexCoord2d(1, 1)
#         glVertex2f(screen_width - 1, zoom_bottom_y)
#         glEnd()
#         glDisable(GL_TEXTURE_2D)
def draw_zoom():
    if start_drawing is False and start_clear is False and enable_zoom:

        mid_y = zoom_bottom_y/2
        zoom_in_mid = zoom_in_left_x - zoom_in_right_x
        zoom_in_mid = screen_width - zoom_in_mid

        #plus
        connectPoints(screen_width-zoom_in_left_x, mid_y, zoom_in_mid - 2, mid_y, BLACK)
        connectPoints(screen_width-zoom_in_left_x + zoom_in_right_x/2, 2, screen_width-zoom_in_left_x + zoom_in_right_x/2, zoom_bottom_y, BLACK)

        #minus
        connectPoints(zoom_in_mid+2,mid_y, screen_width-1, mid_y, BLACK)

class Points():
    "Stores the x,y location and color of each point"
    def __init__(self, x, y, color):
        self.x = x
        self.y = y
        self.color = color
        self.disconnect = False

    def set_disconnect(self, discnnect):
        self.disconnect = discnnect

def smooth_points(start,end):
    global points_to_draw
    global lock
    current_col = points_to_draw[0].color
    smoothed_points_to_draw = []

    points_list = []
    # y = []
    # x = []

    for index in range(start,end):
        points_list.append([points_to_draw[index].x,points_to_draw[index].y])

    a = np.array(points_list)
    x, y = a.T
    t = np.linspace(0, 1, len(x))
    t2 = np.linspace(0, 1, len(y))

    x2 = np.interp(t2, t, x)
    y2 = np.interp(t2, t, y)
    sigma = 3
    x3 = gaussian_filter1d(x2, sigma)
    y3 = gaussian_filter1d(y2, sigma)

    x4 = np.interp(t, t2, x3)
    y4 = np.interp(t, t2, y3)

    i = 0
    for index in range(start,end):
        points_to_draw[index].x = x4[i]
        points_to_draw[index].y = y4[i]
        i = i + 1

    #
    #     # x = smoothTriangle(x, 2)
    #     # y = smoothTriangle(y, 2)
    # #
    # #
    # #     for i in range(0,len(x3)):
    # #         smoothed_points_to_draw.append(Points(x3[i],y3[i],current_col))
    # #
    # # points_to_draw = smoothed_points_to_draw
    print(len(points_to_draw))


def start_socket():
    global start_drawing, start_clear, start_scroll, points_to_draw, current_color, point_radius
    global led_x,led_y, is_connected, lock
    scroll_ref_x = 0
    scroll_ref_y = 0

    PORT = 9090
    BUFFER_SIZE = 12

    smooth_start = 0
    smooth_end = 0


    # Set up socket
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        # Allow re-binding the same port
        sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        # Bind to port on any interface
        sock.bind(('0.0.0.0', PORT))
        sock.listen(1) # allow backlog of 1

        print("BEGIN LISTENING ON PORT", PORT)
        # Begin listening for connections
        while(True):
            conn, addr = sock.accept()
            with conn:
                print("\nCONNECTION:", addr)
                is_connected = True;
                # Receive and handle command
                start_drawing = False
                while(True):
                    data = conn.recv(BUFFER_SIZE)
                    data_string = str(data)

                    if (data_string.__contains__("CON")):
                        # the erase  pushbotton is pressed
                        print(str(data))
                        start_clear = True

                    elif (data_string.__contains__("COFF")):
                        # the erase pushbotton is no longer pressed
                        print(str(data))
                        start_clear = False

                    elif (data_string.__contains__("SON")):
                        # the erase  pushbotton is pressed
                        print(str(data))
                        start_scroll = True
                        scroll_ref_x = led_x
                        scroll_ref_y = led_y

                    elif (data_string.__contains__("SOFF")):
                        # the erase pushbotton is no longer pressed
                        print(str(data))
                        start_scroll = False

                    elif (data_string.__contains__("OFF")):
                        # the draw pushbotton is no longer pressed
                        print(str(data))
                        smooth_end = len(points_to_draw)
                        smooth_points(smooth_start,smooth_end)
                        start_drawing = False

                    elif (data_string.__contains__("ON")):
                        # the draw pushbotton is pressed
                        print(str(data))
                        if start_drawing == False:
                            smooth_start = len(points_to_draw)

                        start_drawing = True

                    elif (data_string.__contains__("RED")):
                        #set color
                        print(str(data))
                        current_color = RED

                    elif (data_string.__contains__("GREEN")):
                        # set color
                        print(str(data))
                        current_color = GREEN

                    elif (data_string.__contains__("BLUE")):
                        # set color
                        print(str(data))
                        current_color = BLUE


                    elif (data_string.__contains__("RESET")):
                        # reset the points, i.e - clear the screen
                        print(str(data))
                        lock.acquire()
                        points_to_draw.clear()
                        lock.release()
                        point_radius = 10



                    elif (data_string.__contains__("x:")):
                        # data format => x:<x_value>,y:<y_value>

                        # parse x_point
                        for points in re.finditer(r"x:.+\d+,", str(data)):
                            temp_led_x = (int((points.group(0).split(':')[1]).split(',')[0]))
                            # print(points_x)


                        # parse y_point
                        for points in re.finditer(r"y:.+\d+", str(data)):
                            temp_led_y = (int(points.group(0).split(':')[1]))
                            # print(points_y)

                        if(temp_led_x == 640 and temp_led_y == 360):
                            continue
                        led_x = temp_led_x
                        led_y = temp_led_y

                        # mirror x_axis along center point, as camera captures mirrored image, so mirror again to fix it
                        led_x = led_x * x_ratio
                        led_x = screen_width - led_x

                        # print(led_x)
                        # print(led_y)
                        led_y = led_y * y_ratio

                        if start_drawing:
                            #insert into mem
                            points_to_draw.append(Points(led_x,led_y,current_color))

                        elif start_clear:
                            points_to_draw.append(Points(led_x, led_y, WHITE))

                        elif start_scroll:

                            if enable_zoom:
                                if led_y <= zoom_bottom_y:
                                    if led_x >= screen_width - zoom_in_left_x and led_x <= screen_width - zoom_in_right_x:
                                        point_radius = min(20,point_radius + 1)
                                        continue
                                    elif led_x >= screen_width - zoom_in_right_x and led_x <= screen_width-1:
                                        point_radius = max(5, point_radius - 1)
                                        continue

                            delta_x = led_x - scroll_ref_x
                            delta_y = led_y - scroll_ref_y

                            for index in range(0,len(points_to_draw)):
                                points_to_draw[index].x = points_to_draw[index].x + delta_x
                                points_to_draw[index].y = points_to_draw[index].y + delta_y

                            scroll_ref_x = led_x
                            scroll_ref_y = led_y


                        else:
                            if(len(points_to_draw) > 0):
                                points_to_draw[-1].set_disconnect(True)

def connectPoints(x1,y1,x2,y2, color):
    if (color == RED):
        glColor3f(1.0, 0.0, 0.0)
    elif (color == GREEN):
        glColor3f(0.0, 1.0, 0.0)
    elif (color == BLUE):
        glColor3f(0.0, 0.0, 1.0)
    elif (color == WHITE):
        glColor3f(1.0, 1.0, 1.0)
        radius = 20
    else:
        glColor3f(0.0, 0.0, 0.0)
    if(x2-x1 != 0):
        gradient = (y2-y1)/(x2-x1)
        angle = math.atan(gradient)
        x1_1 = x1 + point_radius*math.sin(angle)
        x1_2 = x1 - point_radius * math.sin(angle)

        y1_1 = y1 - point_radius*math.cos(angle)
        y1_2 = y1 + point_radius * math.cos(angle)


        x2_1 = x2 + point_radius*math.sin(angle)
        x2_2 = x2 - point_radius * math.sin(angle)

        y2_1 = y2 - point_radius*math.cos(angle)
        y2_2 = y2 + point_radius * math.cos(angle)

        glBegin(GL_POLYGON)
        glVertex2f(x1_1,y1_1)
        glVertex2f(x2_1, y2_1)
        glVertex2f(x2_2, y2_2)
        glVertex2f(x1_2, y1_2)
        glEnd()
    else:
        glBegin(GL_POLYGON)

        glVertex2f(x1 - point_radius, y1)
        glVertex2f(x2 - point_radius, y2)
        glVertex2f(x2 + point_radius, y2)
        glVertex2f(x1 + point_radius, y1)

        glEnd()

def InitGL(Width, Height):
    global tex
    glClearColor(1, 1, 1, 0.0)
    glClearDepth(1.0)
    glDepthFunc(GL_LESS)
    glEnable(GL_DEPTH_TEST)
    # glPolygonMode(GL_FRONT, GL_LINE)
    # glPolygonMode(GL_BACK, GL_LINE)
    # glShadeModel(GL_SMOOTH)
    glViewport(0, 0, 640, 480)
    glClear(GL_COLOR_BUFFER_BIT)
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    glOrtho(0.0, 640, 480, 0.0, 0.0, 1.0)

    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity()


    # glMatrixMode(GL_PROJECTION)
    # glLoadIdentity()

    # gluPerspective(45.0, float(Width) / float(Height), 0.1, 100.0)

    glMatrixMode(GL_MODELVIEW)


def ReSizeGLScene(Width, Height):
    global x_ratio,y_ratio
    global screen_width
    x_ratio = Width/1280
    y_ratio = Height/720
    screen_width = Width
    # print (screen_width)
    glClearColor(1, 1, 1, 0.0)
    if Height == 0:
        Height = 1

    glViewport(0, 0, Width, Height)
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    glOrtho(0.0, Width, Height, 0.0, 0.0, 1.0)

    glMatrixMode(GL_MODELVIEW)

def drawOneCircle(x,y,radius, color):

    if(color == RED):
        glColor3f(1.0, 0.0, 0.0)
    elif(color == GREEN):
        glColor3f(0.0, 1.0, 0.0)
    elif(color == BLUE):
        glColor3f(0.0, 0.0, 1.0)
    elif (color == WHITE):
        glColor3f(1.0, 1.0, 1.0)
        # radius = 20
    else:
        glColor3f(0.0, 0.0, 0.0)

    glBegin(GL_POLYGON)

    glVertex2f(x, y)
    two_pi = 2 * math.pi
    incr = two_pi / 10.0

    i = 0
    while i <= (two_pi + incr):
        point_x = math.cos(i) * radius + x;
        point_y = math.sin(i) * radius + y;

        glVertex2f(point_x, point_y);
        i = i + incr
    glEnd()


def DrawGLScene():
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

    draw_zoom()
    # draw_texture()

    lock.acquire()
    for i in range(0,len(points_to_draw)):
        drawOneCircle(points_to_draw[i].x, points_to_draw[i].y, point_radius,points_to_draw[i].color)
        if i > 0 and points_to_draw[i-1].disconnect == False:
            connectPoints(points_to_draw[i-1].x,points_to_draw[i-1].y,points_to_draw[i].x,points_to_draw[i].y, points_to_draw[i].color)

    lock.release()


    if is_connected:
        if start_clear:
            drawOneCircle(led_x, led_y, point_radius+15, BLACK)
            drawOneCircle(led_x, led_y, point_radius-2, WHITE)
        else:
            drawOneCircle(led_x, led_y, point_radius, current_color)
    else:
        drawOneCircle(mouse_x, mouse_y, 10, current_color)


    glutSwapBuffers()

def mouseControlFREE(mx, my):
    global mouse_x,mouse_y
    mouse_x = mx
    mouse_y = my




def mouseControlPRESSED(mx, my):
    global points_to_draw
    points_to_draw.append(Points(mx,my,current_color))

def keyPressed(*args):
    global rquad
    if args[0] == b"q":
        exit()

    # print(args[0])


def main():
    global window

    # Create a thread for ethernet communication
    try:
        _thread.start_new_thread(start_socket, ())
    except:
        print("Error: unable to start thread")

    glutInit()
    glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH)
    glutInitWindowSize(screen_width, screen_height)
    glutInitWindowPosition(0, 0)
    window = glutCreateWindow(b"Cube")
    glutDisplayFunc(DrawGLScene)
    glutIdleFunc(DrawGLScene)
    glutReshapeFunc(ReSizeGLScene)
    glutPassiveMotionFunc(mouseControlFREE)
    glutKeyboardFunc(keyPressed)
    glutMotionFunc(mouseControlPRESSED)
    # InitGL(640, 480)
    glutFullScreen()
    glutMainLoop()


print("Press any key to exit")
main()