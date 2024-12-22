// 図形の初期化と描画を管理

float boxX, boxY, boxWeight = 120, boxHeight = 100;
float topCircleX, topCircleY;
float circleSize = 200;
float circleX1, circleY1, rotationAngle1, eye = 0, eyeX = 1000,eyeY = 850;//上の半円
//三角形の作成に必要な変数
float angle1 = 0, angle2 = 0, angle3 = 0,angle4 = 0,angle5 = 0,angle6 = 0,angle7 = 0,angle8 = 0,angle9 = 0,angle10 = 0;
float distanceRight1 = 1400, distanceRight2 = 1400, distanceRight3 = 1400;
float TryX1 = 500+width/2,TryX2 = 500+width/2+80,TryX3 =500+width/2+160,TryX4 =500+ width/2+240,TryX5 =500+ width/2+320,TryX6 = 600+width/2+400,TryX7 =700+ width/2+480,TryX8 = 800+width/2+560,TryX9 =900+ width/2+640;
float TryY1 = -height, TryY2 = -height,TryY3 = -height,TryY4 = -height,TryY5 = -height,TryY6 = -height,TryY7 = -height,TryY8 = -height,TryY9 = -height,TryY10 = -height;
boolean showCircles = false;
float[][] starVertices;

void initShapes() {//初期化
  int numPoints = 26; // 頂点の数
  float radiusOuter = 75; // 外側の頂点の半径
  float radiusInner = 55;  // 内側の頂点の半径

  hadouVertices = new float[numPoints][2];
  for (int i = 0; i < numPoints; i++) {
    float angle = map(i, 0, numPoints, 0, TWO_PI);
    float radius = (i % 2 == 0) ? radiusOuter : radiusInner;
    hadouVertices[i][0] = cos(angle) * radius; // x座標
    hadouVertices[i][1] = sin(angle) * radius; // y座標
  }
  bluck_x = width/7*5;
  bluck_y = height ;//最初の□
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
  fill(0);
  rect(boxX, boxY, boxWeight, boxHeight);
  ellipse(bluck_x, bluck_y, 1, 1);// 回転の中心
  fill(255,0,0);
  ellipse(red_x,red_y,81,81);
  //三角形１～１０
   fill(random(eye),random(eye),random(eye));
  makeTri(TryX1,TryY1,angle1,78);
  makeTri(TryX2,TryY2,angle2,78);
  makeTri(TryX3,TryY3,angle3,78);
  makeTri(TryX4,TryY4,angle4,78);
  makeTri(TryX5,TryY5,angle5,78);
  makeTri(TryX6,TryY6,angle6,78);
  makeTri(TryX7,TryY7,angle7,78);
  makeTri(TryX8,TryY8,angle8,78);
  makeTri(TryX9,TryY9,angle9,78);
  if (showExclamation) {
    fill(255, 0, 0);
    textSize(100);
    text("??", red_x - 15, red_y - ballSize - 100);
  }
  fill(0);
  ellipse(circleX1, circleY1,800,800);
  fill(random(eye), random(eye), random(eye));
  ellipse(eyeX, eyeY, 40, 100);
  ellipse(eyeX+150, eyeY, 40, 100);
}
void showExclamationMark() {
  showExclamation = false;
}
void showExclamationMark2() {
  showExclamation = false;
}
// ギザギザ形状を描画
void drawHadou(float scale, float rotation, color fillColor) {
  pushMatrix();
  translate(bluck_x, bluck_y); // 画面中央を基点に
  rotate(radians(rotation)); // 回転
  scale(scale); // 拡大・収縮
  fill(fillColor);
  stroke(0);
  strokeWeight(1);

  beginShape();
  for (float[] vertex : hadouVertices) {
    vertex(vertex[0], vertex[1]); // 頂点を描画
  }
  endShape(CLOSE);
  popMatrix();
}
// 三角形を描画する関数
void makeTri(float x, float y, float angle, float size) {
  pushMatrix(); // 現在の座標系を保存
  translate(x, y); // 座標 (x, y) を中心に移動
  rotate(angle);   // 指定された角度で回転
  
  // 三角形を描画
  beginShape();
  vertex(0, -size / 2);      // 上の頂点
  vertex(-size / 5*3, size / 2); // 左下の頂点
  vertex(size / 5*3, size / 2);  // 右下の頂点
  endShape(CLOSE);
  
  popMatrix(); // 座標系を元に戻す
}
