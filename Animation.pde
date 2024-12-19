void initAnimation() {
  // Ani ライブラリの初期化
  Ani.init(this);

  // 一連のアニメーションを登録
  seq = new AniSequence(this);
  seq.beginSequence();
  seq.beginStep();
  seq.add(Ani.to(this, 2.5, "red_y", height - ballSize/2-100, Ani.BOUNCE_OUT));
  seq.endStep();

  // step 1
  seq.beginStep();
  seq.add(Ani.to(this, 2.5, "red_y", height - ballSize/2, Ani.LINEAR));
  seq.add(Ani.to(this, 2.5, "boxY", height, Ani.LINEAR));
  seq.add(Ani.to(this, 2, 1, "eye", 255, Ani.LINEAR, "onStart:effect"));
  seq.add(Ani.to(this, 3, 2, "eyeX", 800, Ani.BOUNCE_IN));
  seq.endStep();
  // step 1
  seq.beginStep();
  seq.add(Ani.to(this, 0.2, "TryX1", width/2, Ani.LINEAR));
  seq.add(Ani.to(this, 0.2, "TryY1", height/3, Ani.LINEAR));
  seq.add(Ani.to(this, 0.2, "angle1", PI, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, 0.2, "TryX2", width/2+80, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, 0.2, "TryY2", height/4, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, 0.2, "angle2", PI*2, Ani.LINEAR));
  seq.add(Ani.to(this, 0.6, 0.4, "TryX3", width/2+160, Ani.LINEAR));
  seq.add(Ani.to(this, 0.6, 0.4, "TryY3", height/3, Ani.LINEAR));
  seq.add(Ani.to(this, 0.6, 0.4, "angle3", PI, Ani.LINEAR));
  seq.add(Ani.to(this, 0.8, 0.6, "TryX4", width/2+240, Ani.LINEAR));
  seq.add(Ani.to(this, 0.8, 0.6, "TryY4", height/4, Ani.LINEAR));
  seq.add(Ani.to(this, 0.8, 0.6, "angle4", PI*2, Ani.LINEAR));
  seq.add(Ani.to(this, 1.0, 0.8, "TryX5", width/2+320, Ani.LINEAR));
  seq.add(Ani.to(this, 1.0, 0.8, "TryY5", height/3, Ani.LINEAR));
  seq.add(Ani.to(this, 1.0, 0.8, "angle5", PI, Ani.LINEAR));
  seq.add(Ani.to(this, 1.2, 1.0, "TryX6", width/2+400, Ani.LINEAR));
  seq.add(Ani.to(this, 1.2, 1.0, "TryY6", height/4, Ani.LINEAR));
  seq.add(Ani.to(this, 1.2, 1.0, "angle6", 2*PI, Ani.LINEAR));
  seq.add(Ani.to(this, 1.4, 1.2, "TryX7", width/2+480, Ani.LINEAR));
  seq.add(Ani.to(this, 1.4, 1.2, "TryY7", height/3, Ani.LINEAR));
  seq.add(Ani.to(this, 1.4, 1.2, "angle7", PI, Ani.LINEAR));
  seq.add(Ani.to(this, 1.6, 1.4, "TryX8", width/2+560, Ani.LINEAR));
  seq.add(Ani.to(this, 1.6, 1.4, "TryY8", height/4, Ani.LINEAR));
  seq.add(Ani.to(this, 1.6, 1.4, "angle8", 2*PI, Ani.LINEAR));
  seq.add(Ani.to(this, 1.8, 1.6, "TryX9", width/2+640, Ani.LINEAR));
  seq.add(Ani.to(this, 1.8, 1.6, "TryY9", height/3, Ani.LINEAR));
  seq.add(Ani.to(this, 1.8, 1.6, "angle9", PI, Ani.LINEAR));
  //seq.add(Ani.to(this, 2, "bluck_y", height/2, Ani.LINEAR, " onStart:showExclamationMark")); // 星を動かす
  seq.add(Ani.to(this, 2, "boxY", height, Ani.LINEAR));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.3,0.1, "TryX1", width/4, Ani.EXPO_IN));
  seq.add(Ani.to(this, 0.3,0.1, "TryY1", height, Ani.BACK_IN));
  seq.add(Ani.to(this, 0.3,0.1, "angle1", -3, Ani.EXPO_IN));
   seq.add(Ani.to(this, 2,0.3, "red_x", width/7, Ani.CIRC_IN_OUT));
  seq.endStep();
  seq.endSequence();
  // 円のアニメーションシーケンスを登録
}
