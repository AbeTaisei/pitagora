// 図形の初期化と描画を管理

float boxX, boxY, boxWeight = 100, boxHeight = 100;
float topCircleX, topCircleY, bottomCircleX, bottomCircleY;
float circleSize = 200;
boolean showCircles = false;
float[][] starVertices;

void initShapes() {
  boxX = width / 3 * 2 - 50;
  boxY = height - 100;

  topCircleX = width / 3;
  topCircleY = -circleSize / 2;
  bottomCircleX = width / 3;
  bottomCircleY = height + circleSize / 2;

  starVertices = new float[][] {
    {0, -50}, {14, -20}, {47, -15}, {23, 7}, {29, 40},
    {0, 25}, {-29, 40}, {-23, 7}, {-47, -15}, {-14, -20}
  };
}

void drawShapes() {
  fill(0);
  rect(boxX, boxY, boxWeight, boxHeight);

  if (redBallVisible) {
    drawStar(starOffsetX, starOffsetY, starRotation);
    fill(255, 0, 0);
    ellipse(red_x, red_y, ballSize, ballSize);
  }

  if (showExclamation) {
    fill(255, 0, 0);
    textSize(300);
    text("!!", red_x - 15, red_y - ballSize - 100);
  }

  if (showCircles) {
    drawTopCircle(topCircleX, topCircleY, circleSize * 2);
    drawBottomCircle(bottomCircleX, bottomCircleY, circleSize * 2);
  }
}

void drawStar(float x, float y, float rotation) {
  pushMatrix();
  translate(x, y);
  rotate(rotation);
  fill(255, 200, 0);
  stroke(0);
  strokeWeight(2);
  beginShape();
  for (float[] vertex : starVertices) {
    vertex(vertex[0], vertex[1]);
  }
  endShape(CLOSE);
  popMatrix();
}

void drawTopCircle(float x, float y, float size) {
  noStroke();
  fill(0, 0, 255);
  arc(x, y, size, size, radians(180), radians(360), PIE);
}

void drawBottomCircle(float x, float y, float size) {
  fill(0, 0, 255);
  arc(x, y, size, size, radians(0), radians(180), PIE);
}
