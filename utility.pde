void effect1(){
  isHadouActive1 = true;
  isExpanding = true;
}
void effect2(){
  isHadouActive1 = true;
  isExpanding = false;
}
void fadeOut(int fadeSpeed, String message) {
  if (!transitionComplete) {
    // 暗転処理
    backgroundColor -= fadeSpeed; 
    if (backgroundColor <= 0) {
      backgroundColor = 0;
      transitionComplete = true; // 暗転完了
    }
    background(backgroundColor); // 背景色を更新
  } else {
    // メッセージを表示
    background(0); // 背景を黒に設定
    fill(255);     // 文字色を白に設定
    textSize(800); // フォントサイズを設定
    textAlign(CENTER, CENTER); // テキストを中央揃え
    text(message, width / 2, height / 2); // 画面中央にメッセージを表示
  }
}
