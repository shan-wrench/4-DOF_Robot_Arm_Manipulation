#include <Servo.h>

Servo servo1, servoL, servoR, servo3, servo4, servo5;

void rotateServo(Servo &servo, int startAngle, int endAngle, int time) {
  for (int angle = startAngle; angle <= endAngle; angle++) {
    servo.write(angle);
    delay(time); 
  }
  delay(500);
}

void rotateServotwo(Servo &servo1,Servo &servo2, int startAngle, int endAngle, int time) {
  for (int angle = startAngle; angle <= endAngle; angle++) {
    servo1.write(angle);
    servo2.write(angle);
    delay(time);
  }
  delay(500);
}

void reverseServo(Servo &servo, int startAngle, int endAngle, int time) {
  for (int angle = startAngle; angle >= endAngle; angle--) {
    servo.write(angle);
    delay(time);
  }
  delay(500);
}

void reverseServotwo(Servo &servo1,Servo &servo2, int startAngle, int endAngle, int time) {
  for (int angle = startAngle; angle >= endAngle; angle--) {
    servo1.write(angle);
    servo2.write(angle);
    delay(time); 
  }
  delay(500);
}

void setup() {
  // Attach the servos to the respective pins
  servo1.attach(3);
  servoL.attach(5);
  servoR.attach(6);
  servo3.attach(9);
  servo4.attach(10);
  servo5.attach(11);

  // Initialize servos to 0 degrees
  servo1.write(90);
  servoL.write(105);
  servoR.write(105);
  servo3.write(0);
  servo4.write(90);
  servo5.write(170);
  delay(1000);

  Serial.begin(9600);
  Serial.println("Enter 'R', 'G', or 'B':");

}
void loop() {
    if (Serial.available() > 0) { 
    char input = Serial.read(); 

    if (input == 'R' || input == 'r') {
      Serial.println("You selected Red.");
      reverseServo(servo5, 170, 120, 5);
      rotateServo(servo1, 90, 130, 15);
      rotateServo(servo4, 90, 170, 15);
      rotateServo(servo3, 0, 165, 15);
      rotateServo(servo5, 120, 180, 10);
      reverseServo(servo3, 165, 150, 15);
      reverseServo(servo1, 130, 57, 15);
      rotateServo(servo3, 150, 175, 15);
      reverseServo(servo5, 180, 120, 5);
    } 
    else if (input == 'G' || input == 'g') {
      Serial.println("You selected Green.");
      reverseServo(servo5, 170, 120, 5);
      rotateServo(servo1, 90, 95, 15);
      rotateServo(servo4, 90, 170, 15);
      rotateServo(servo3, 0, 170, 15);
      rotateServo(servo5, 120, 180, 10);  
      reverseServo(servo3, 170, 60, 15);
      reverseServo(servo1, 95, 47, 15);
      rotateServotwo(servoL, servoR, 105, 140, 15); 
      reverseServo(servo4, 170, 100, 15);
      reverseServo(servo5, 180, 120, 5);

    } else if (input == 'B' || input == 'b') {
      Serial.println("You selected Blue.");
      reverseServo(servo5, 170, 120, 5);
      rotateServo(servo1, 90, 110, 15);
      rotateServo(servo4, 90, 125, 15);
      rotateServo(servo3, 0, 130, 15);
      rotateServo(servo5, 120, 180, 10);
      reverseServo(servo3, 130, 120, 15);
      reverseServo(servo1, 110, 80, 15);
      rotateServo(servo4, 125, 155, 15);
      rotateServo(servo3, 120, 150, 15);
      reverseServo(servo5, 180, 120, 10);

}
}
}