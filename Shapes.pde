// 図形の初期化と描画を管理

float boxX, boxY, boxWeight = 100, boxHeight = 100;
float topCircleX, topCircleY, bottomCircleX, bottomCircleY;
float circleSize = 200;
float circleX1, circleY1, rotationAngle1;//上の半円
float circleX2, circleY2, rotationAngle2;//下の半円
boolean showCircles = false;
float[][] starVertices;

void initShapes() {//初期化
  red_x = width / 3 * 2;
  red_y = -ballSize / 2;
  blue_x = width / 2;
  blue_y = height - ballSize / 2;
  starOffsetX = width / 3;
  starOffsetY = height + 150;
  starRotation = 0;
  // 最初の半円の初期設定
  circleX1 = width/3;
  circleY1 = -height;
  rotationAngle1 = 2.8;
  // 2番目の半円の初期設定
  circleX2 = width/3;
  circleY2 = -height/2 +150;
  rotationAngle2 = PI;
  boxX = width / 3 * 2 - 50;
  boxY = height - 100;
  starVertices = new float[][] {
    {0, -50}, {14, -20}, {47, -15}, {23, 7}, {29, 40},
    {0, 25}, {-29, 40}, {-23, 7}, {-47, -15}, {-14, -20}
  };
}
//主人公とその付近の関数
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
   // 最初の半円の描画
  drawHalfCircle(circleX1, circleY1, 150, color(0, 0, 255), rotationAngle1);
  
  // 2番目の半円の描画
  drawHalfCircle(circleX2, circleY2, 150, color(255, 0, 0), rotationAngle2);
}
//星を描くための関数
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
//半円を作るための関数
void drawHalfCircle(float x, float y, float radius, color fillColor, float rotation) {
  pushMatrix();
  translate(x, y);
  rotate(rotation);
  fill(fillColor);
  arc(0, 0, radius * 2, radius * 2, 0, PI); // 半円を描画
  popMatrix();
}
