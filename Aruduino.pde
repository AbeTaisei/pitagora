boolean arduinoOn = true;

Serial serialPort;
boolean firstContact = false;
byte[] inByte = new byte[3];

int oval1, oval2;

void initServo() {
  oval1 = oval2 = 20;
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
