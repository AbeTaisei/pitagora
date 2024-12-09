import processing.serial.*;
import de.looksgood.ani.*;

AniSequence seq, circleSeq;

// 描画される円に関する変数
boolean showExclamation = false;
boolean redBallVisible = true, blueBallVisible = false;
int ballSize = 80;
float exclamationDelay = 0;
float red_x, red_y, blue_x, blue_y;
float starOffsetX, starOffsetY; // 星形のオフセット（動き）
float starRotation; // 星形の回転角度

void setup() {
  fullScreen();
  noStroke();
  smooth();
  ellipseMode(CENTER);

  red_x = width / 3 * 2;
  red_y = -ballSize / 2;
  blue_x = width / 2;
  blue_y = height - ballSize / 2;
  starOffsetX = width / 3;
  starOffsetY = height + 150;
  starRotation = 0;

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
    if (blueBallVisible) {
      reset();
    }
    seq.start(); // アニメーションを開始
  }
  showCircles = true; // 円の表示を有効化
}
