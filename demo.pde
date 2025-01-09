import processing.serial.*;
import de.looksgood.ani.*;

AniSequence seq, seq2, seq3;

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
int gmn = 0;

PFont font;                     // フォントオブジェクト
boolean transitionComplete = false; // 暗転が完了したかどうかのフラグ
int backgroundColor = 255;          // 現在の背景色（白から黒へ変化）
void setup() {
  fullScreen();
  smooth();
  ellipseMode(CENTER);
  initShapes(); // Shapes.pdeの関数で星形や円形の初期化
  initAnimation(); // Animation.pdeでアニメーションの登録
  //Arduino設定
  if (arduinoOn) {
    printArray(Serial.list()); // 使用可能なシリアルポート一覧の出力。デバッグ用
    String portName = Serial.list()[0]; // 使用するシリアルポート名
    serialPort = new Serial(this, portName, 9600);
    serialPort.buffer(inByte.length); // 読み込むバッファの長さをの指定
    initServo();
  }
  Ani.init(this);
  font = createFont("NotoSansCJKjp-Regular", 100); // 日本語フォントを読み込む
  textFont(font); // フォントを適用
  background(backgroundColor); // 初期背景色を設定
}

void draw() {
  background(255);
  if (gmn == 3) {
    fadeOut(2, "続"); // 暗転速度を2に設定して「完」を表示
  }
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
    if (arduinoOn) {
      initServo();
    }
  } else if (mouseButton == RIGHT&&gmn == 0) {
    seq.start(); // アニメーションを開始
    gmn += 1;
  } else if (mouseButton == RIGHT&&gmn == 1) {
    gmn += 1;
    seq3.start();
  } else if (mouseButton == RIGHT&&gmn == 2) {
    gmn += 1;
  }
  showCircles = true; // 円の表示を有効化
}
