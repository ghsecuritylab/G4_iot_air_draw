/*
  Adafruit Arduino - Lesson 3. RGB LED
*/

#include <SoftwareSerial.h>

int colorButtonPin = 7;
int drawButtonPin = 8;
int clearButtonPin = 12;
int resetButtonPin = 2;
int scrollButtonPin = 13;


int redPin = 11;
int greenPin = 10;
int bluePin = 9;

//uncomment this line if using a Common Anode LED
//#define COMMON_ANODE


#define RED 0
#define BLUE 1
#define GREEN 2
#define ON 3
#define OFF 4
#define CON 5
#define COFF 6
#define RESET 7
#define SON 8
#define SOFF 9


#define buttonDelay 200

//char data = 0;                //Variable for storing received data
int previous_command;

//flags that wait for each button to toggle from to high
bool waitingForLow_COLOR = false;
bool waitingForLow_DRAW = false;
bool waitingForLow_CLEAR = false;
bool waitingForLow_RESET = false;
bool waitingForLow_SCROLL = false;

int current_color = RED;
SoftwareSerial BTSerial(5, 6); //  TX,RX


void setup()
{
  Serial.begin(9600);         //Sets the data rate in bits per second (baud) for serial data transmission
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
  pinMode(colorButtonPin, INPUT);
  pinMode(drawButtonPin, INPUT);
  pinMode(clearButtonPin, INPUT);
  pinMode(resetButtonPin, INPUT);
  pinMode(scrollButtonPin, INPUT);

  Serial.print("DEBUG:Hello World\n");

  //Set to HC-05 default baud rate, found using AT+UART.  It is usually 38400.
  BTSerial.begin(38400);


}

void loop()
{

  if (BTSerial.available() > 0) {
    char data = BTSerial.read();      //Read the incoming data and store it into variable data
    switch (previous_command) {
      case RED:
        BTSerial.write("0");
        break;
      case GREEN:
        BTSerial.write("1");
        break;
      case BLUE:
        BTSerial.write("2");
        break;
      case ON:
        BTSerial.write("3");
        break;
      case OFF:
        BTSerial.write("4");
        break;
      case CON:
        BTSerial.write("5");
        break;
      case COFF:
        BTSerial.write("6");
        break;
      case RESET:
        BTSerial.write("7");
        break;
      case SON:
        BTSerial.write("8");
        break;
      case SOFF:
        BTSerial.write("9");
        break;
      default:
        break;
    }
    //    Serial.write(data);        //Print Value inside data in Serial monitor
    //    Serial.print("HMMMM\n");        //Print Value inside data in Serial monitor

  }
  //  if (Serial.available() > 0) {
  //    data = Serial.read();      //Read the incoming data and store it into variable data
  //    Serial.print(data);        //Print Value inside data in Serial monitor
  //    Serial.print("\n");        //New line
  //  }

  //COLOR BUTTON
  checkColorButton();

  //DRAW BUTTON
  checkDrawButton();

  //CLEAR BUTTON
  checkClearButton();

  //SCROLL BUTTON
  checkScrollButton();

  //RESET BUTTON
  checkResetButton();

  if (current_color == RED) {
    setColor(255, 0, 0);  // red
  }
  else if (current_color == GREEN) {
    setColor(0, 255, 0);  // green
  }
  else if (current_color == BLUE) {
    setColor(0, 0, 255);  // blue
  }



  //  setColor(255, 255, 0);  // yellow
  //  setColor(80, 0, 80);  // purple
  //  setColor(0, 255, 255);  // aqua
}

void checkColorButton() {
  int buttonState = digitalRead(colorButtonPin);

  if (!waitingForLow_COLOR && buttonState == HIGH) {
    Serial.print("DEBUG: COLOR BUTTON PRESSED\n");

    current_color = current_color + 1;
    current_color = current_color % 3;
    if (current_color == RED) {
      BTSerial.write("0");        //Print Value inside data in Serial monitor
      previous_command = RED;
    }
    else if (current_color == GREEN) {
      BTSerial.write("1");        //Print Value inside data in Serial monitor
      previous_command = GREEN;

    }
    else if (current_color == BLUE) {
      BTSerial.write("2");        //Print Value inside data in Serial .
      previous_command = BLUE;

    }
    //    BTSerial.write("\n");        //New line
    delay(buttonDelay);

    waitingForLow_COLOR = true;
  }
  if (waitingForLow_COLOR && buttonState == LOW) {
    waitingForLow_COLOR = false;
  }
}

void checkDrawButton() {
  int buttonState = digitalRead(drawButtonPin);

  if (!waitingForLow_DRAW && buttonState == HIGH) {
    Serial.print("DEBUG: DRAW BUTTON PRESSED\n");
    BTSerial.write("3");        //START DRAWING
    previous_command = ON;

    waitingForLow_DRAW = true;
    delay(buttonDelay);

  }

  if (waitingForLow_DRAW && buttonState == LOW) {
    waitingForLow_DRAW = false;
    BTSerial.write("4");        //END DRAWING
    previous_command = OFF;

    delay(buttonDelay);


  }
}

void checkClearButton() {
  int buttonState = digitalRead(clearButtonPin);

  if (!waitingForLow_CLEAR && buttonState == HIGH) {
    Serial.print("DEBUG: CLEAR BUTTON PRESSED\n");
    BTSerial.write("5");        //START CLEAR
    previous_command = CON;

    delay(buttonDelay);

    waitingForLow_CLEAR = true;

  }

  if (waitingForLow_CLEAR && buttonState == LOW) {
    BTSerial.write("6");        //START CLEAR
    previous_command = COFF;

    delay(buttonDelay);
    waitingForLow_CLEAR = false;
  }
}

void checkScrollButton() {
  int buttonState = digitalRead(scrollButtonPin);

  if (!waitingForLow_SCROLL && buttonState == HIGH) {
    Serial.print("DEBUG: SCROLL BUTTON PRESSED\n");
    BTSerial.write("8");        //START CLEAR
    previous_command = SON;

    delay(buttonDelay);

    waitingForLow_SCROLL = true;

  }

  if (waitingForLow_SCROLL && buttonState == LOW) {
    BTSerial.write("9");        //START CLEAR
    previous_command = SOFF;

    delay(buttonDelay);
    waitingForLow_SCROLL = false;
  }
}

void checkResetButton() {
  int buttonState = digitalRead(resetButtonPin);

  if (!waitingForLow_RESET && buttonState == HIGH) {
    Serial.print("DEBUG: RESET BUTTON PRESSED\n");
    BTSerial.write("7");        //START CLEAR
    previous_command = RESET;

    delay(buttonDelay);
    waitingForLow_RESET = true;

  }

  if (waitingForLow_RESET && buttonState == LOW) {
    waitingForLow_RESET = false;
  }
}

void setColor(int red, int green, int blue)
{
#ifdef COMMON_ANODE
  red = 255 - red;
  green = 255 - green;
  blue = 255 - blue;
#endif
  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue);
}
