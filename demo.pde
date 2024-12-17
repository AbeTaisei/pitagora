import processing.serial.*;
import de.looksgood.ani.*;

AniSequence seq;

// 描画される円に関する変数
boolean showExclamation = false;
boolean redBallVisible = true;
int ballSize = 80;
float exclamationDelay = 0;
float red_x, red_y, blue_x, blue_y,bluck_x,bluck_y;
float starOffsetX, starOffsetY; // 星形のオフセット（動き）
float starRotation; // 星形の回転角度

void setup() {
  fullScreen();
  noStroke();
  smooth();
  ellipseMode(CENTER);



  initShapes(); // Shapes.pdeの関数で星形や円形の初期化
  initAnimation(); // Animation.pdeでアニメーションの登録

  Ani.init(this);
}

void draw() {
  background(255);
  drawShapes(); // Shapes.pdeの関数で図形を描画
}

void mousePressed() {
  if (mouseButton == LEFT) {
    reset();
  } else if (mouseButton == RIGHT) {
    seq.start(); // アニメーションを開始
  }
  showCircles = true; // 円の表示を有効化
}
