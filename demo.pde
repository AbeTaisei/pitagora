import processing.serial.*;
import de.looksgood.ani.*;

AniSequence seq,seq2;

// 描画される円に関する変数
boolean showExclamation = false;
boolean redBallVisible = true;
int ballSize = 80;
float exclamationDelay = 0;
float red_x, red_y, bluck_x, bluck_y;
float[][] hadouVertices; // ギザギザ形状の頂点を格納

float scaleFactor1 = 5; // 初期スケール
float scaleSpeed1 = 0.06; // スケールの変化速度
float boolValue = 0; // booleanの代わりに0か1の浮動小数点数を使用
boolean isHadouActive1 = false; // ギザギザが表示中かどうか
boolean isExpanding = false; // 拡大中か収縮中かを管理
float rotationSpeed1 = 2; // 回転速度
float hadouAngle1 = 0; // 回転角
void setup() {
  fullScreen();
  smooth();
  ellipseMode(CENTER);
  initShapes(); // Shapes.pdeの関数で星形や円形の初期化
  initAnimation(); // Animation.pdeでアニメーションの登録

  Ani.init(this);
}

void draw() {
  background(255);

  if (isHadouActive1) {
    drawHadou(scaleFactor1, hadouAngle1, color(random(255), random(255), random(255), 100));

    // 拡大・収縮の切り替え
    if (isExpanding) {
      scaleFactor1 += scaleSpeed1; // 拡大
      if (scaleFactor1 > 7.0) { // 最大値に達したら収縮開始
        scaleSpeed1 = 0;
      }
    } else {
      scaleSpeed1 = 0.04;
      scaleFactor1 -= scaleSpeed1;//scaleSpeed1; // 収縮
      if (scaleFactor1 < 0.2) { // 最小値に達したら非表示
        isHadouActive1 = false;
      }
    }
    hadouAngle1 += rotationSpeed1; // 回転角度の更新
  }
  drawShapes(); // Shapes.pdeの関数で図形を描画
}

void mousePressed() {
  if (mouseButton == LEFT) {
    seq2.start(); // アニメーションを開始
  } else if (mouseButton == RIGHT) {
    seq.start(); // アニメーションを開始
  }
  showCircles = true; // 円の表示を有効化
}
