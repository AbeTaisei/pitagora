// 図形の初期化と描画を管理

float boxX, boxY, boxWeight = 120, boxHeight = 100;
float topCircleX, topCircleY, bottomCircleX, bottomCircleY;
float circleSize = 200;
float circleX1, circleY1, rotationAngle1,eye = 0,eyeX = 1000;//上の半円
//三角形の作成に必要な変数
float angleRight = 0, angleLeft = 0, angleDown = 0, angleUp = 0;
float distanceRight1 = 200, distanceRight2 = 200, distanceRight3 = 200;
float distanceLeft1 = 200, distanceLeft2 = 200, distanceLeft3 = 200;
float distanceDown1 = 200, distanceDown2 = 200, distanceDown3 = 200;
float distanceUp1 = 200, distanceUp2 = 200, distanceUp3 = 200;
float centerX, centerY;
boolean showCircles = false;
float[][] starVertices;

void initShapes() {//初期化
  bluck_x = width/3;
  bluck_y = height + 150;//最初の□
  red_x = width / 6;
  red_y = -ballSize / 2;//赤い球
  starOffsetX = width / 3;
  starOffsetY = height + 150;
  starRotation = 0;//★
  circleX1 = width/7*5;
  circleY1 = height;
  rotationAngle1 = PI; // 最初の半円の初期設定
  boxX = width / 8;
  boxY = height - 100;
  starVertices = new float[][] {
    {0, -50}, {14, -20}, {47, -15}, {23, 7}, {29, 40},
    {0, 25}, {-29, 40}, {-23, 7}, {-47, -15}, {-14, -20}
  };
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
//主人公とその付近の関数
void drawShapes() {
  // 最初の半円の描画
  drawHalfCircle(circleX1, circleY1, 400, color(0), rotationAngle1);
  fill(random(eye),random(eye),random(eye));
  ellipse(eyeX,height/6*5,40,100);
  ellipse(width/9*7,height/6*5,40,100);
  fill(0);
  rect(boxX, boxY, boxWeight, boxHeight);
  ellipse(bluck_x, bluck_y, 1, 1);// 回転の中心
  pushMatrix(); // 右側の三角形
  translate(bluck_x, bluck_y);
  rotate(radians(angleRight));
  fill(0, 0, 255); // 右の三角形（青）
  triangle(
    distanceRight1, -25, // 左頂点
    distanceRight2, 25, // 右頂点
    distanceRight3 + 50, 0 // 先端
    );
  popMatrix();
  // 左側の三角形
  pushMatrix();
  translate(bluck_x, bluck_y);
  rotate(radians(angleLeft));
  // 左の三角形（緑）
  fill(0, 255, 0);
  triangle(
    -distanceLeft1, -75, // 右頂点
    -distanceLeft2, 75, // 左頂点
    -distanceLeft3 - 150, 0 // 先端
    );
  popMatrix();
  if (redBallVisible) {
    drawStar(starOffsetX, starOffsetY, starRotation);
    fill(255, 0, 0);
    ellipse(red_x, red_y, ballSize, ballSize);
    fill(0);
    ellipse(bluck_x, bluck_y, ballSize/4, ballSize/4);
  }
  // 上側の三角形
  pushMatrix();
  translate(bluck_x, bluck_y);
  rotate(radians(angleUp));
  fill(255, 165, 0); // オレンジ色
  triangle(
    -25, -distanceUp1, // 左頂点
    25, -distanceUp2, // 右頂点
    0, -distanceUp3 - 50 // 先端
    );
  popMatrix();
  // 下側の三角形
  pushMatrix();
  translate(bluck_x, bluck_y);
  rotate(radians(angleDown));
  fill(128, 0, 128); // 紫色
  triangle(
    -25, distanceDown1, // 左頂点
    25, distanceDown2, // 右頂点
    0, distanceDown3 + 50 // 先端
    );
  popMatrix();
  if (showExclamation) {
    fill(255, 0, 0);
    textSize(100);
    text("??", red_x - 15, red_y - ballSize - 100);
  }
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
void showExclamationMark() {
  showExclamation = false;
}
void showExclamationMark2() {
  showExclamation = false;
}
