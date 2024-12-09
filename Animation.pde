void initAnimation() {
     // Ani ライブラリの初期化
  Ani.init(this);

  // 一連のアニメーションを登録
  seq = new AniSequence(this);
  seq.beginSequence();

  // step 0
  seq.add(Ani.to(this, 2.5, "red_y", height - ballSize - 60, Ani.BOUNCE_OUT));

  // step 1
  seq.beginStep();
  seq.add(Ani.to(this, 2, "red_y", height - ballSize / 2, Ani.LINEAR));
  seq.add(Ani.to(this, 2, "starOffsetY", height/2, Ani.LINEAR,"delay:1, onStart:showExclamationMark")); // 星を動かす
  seq.add(Ani.to(this, 2, "starRotation", PI * 4, Ani.LINEAR)); // 星を回転させる
  seq.add(Ani.to(this, 2, "boxY", height, Ani.LINEAR));
  seq.endStep();

  // step 2
  seq.beginStep();
  seq.add(Ani.to(this, 1, "topCircleY", height / 2, Ani.EXPO_IN));
  seq.add(Ani.to(this, 1, "bottomCircleY", height / 2,Ani.EXPO_IN));
  textSize(100);
  seq.add(Ani.to(this, 2, "red_x", width / 3 + ballSize / 2, Ani.LINEAR));
  seq.add(Ani.to(this, 2, "red_y:200", Ani.QUART_OUT, "onEnd:moveServo1"));
  seq.endStep();

  // step 3
  seq.beginStep();
  seq.add(Ani.to(this, 2, "blue_x", width + ballSize / 2, Ani.EXPO_IN_OUT));
  seq.add(Ani.to(this, 2, "blue_y:300", Ani.EXPO_IN_OUT, "onEnd:moveServo2"));
  seq.endStep();

  seq.endSequence();

  // 円のアニメーションシーケンスを登録
}
