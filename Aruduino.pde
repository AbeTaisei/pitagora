boolean arduinoOn = false;

Serial serialPort;
boolean firstContact = false;
byte[] inByte = new byte[3];

int oval1;
int oval2;

void initServo() {
  oval1 = 120;
  oval2 = 120;
  sendToServo(1, oval1);
  sendToServo(2, oval2);
}

void serialEvent(Serial port) {
  inByte = port.readBytes();
  if (!firstContact && inByte[0] == 'C') {
    println("connect!");
    port.clear();
    firstContact = true;
    initServo();
  }
}

void sendToServo(int id, int value) {
  if (!firstContact) return;
  int v = constrain(value, 15, 125);
  serialPort.write((byte) 'S');
  serialPort.write((byte) id);
  serialPort.write((byte) v);
}
//サーボ1を動かす
void moveServo1(){
  if(arduinoOn){
    oval1 = 20;
    sendToServo(1, oval1);
  }
}
//サーボ2を動かす
void moveServo2(){
  if(arduinoOn){
    oval2 = 40;
    sendToServo(2, oval2);
  }
}
