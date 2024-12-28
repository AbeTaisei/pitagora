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
  seq.add(Ani.to(this, 2, 1, "eye", 255, Ani.LINEAR, "onStart:effect1"));
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
  //seq.add(Ani.to(this, 2, "bluck_y", height/2, Ani.LINEAR, " onStart:showExclamationMark")); // 星を動かす
  seq.add(Ani.to(this, 2, "boxY", height, Ani.LINEAR));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.3, 0.1, "TryX1", width/4, Ani.EXPO_IN));
  seq.add(Ani.to(this, 0.3, 0.1, "TryY1", height, Ani.BACK_IN));
  seq.add(Ani.to(this, 0.3, 0.1, "angle1", -3, Ani.EXPO_IN));
  seq.add(Ani.to(this, 1.8, 0.3, "red_x", width/7, Ani.CIRC_IN_OUT));
  seq.add(Ani.to(this, 0.3, 2, "TryX2", 0, Ani.BACK_IN));
  seq.add(Ani.to(this, 0.3, 2, "TryY2", height/4*3, Ani.LINEAR));
  seq.add(Ani.to(this, 0.3, 2, "angle2", -1, Ani.LINEAR));
  seq.endStep();
  //球がジャンプして球がいた位置に三角形の攻撃を飛ばす。
  seq.beginStep();
  seq.add(Ani.to(this, 0.4, 0.3, "red_x", ballSize/2, Ani.QUAD_IN_OUT));
  seq.add(Ani.to(this, 0.4, 0.3, "red_y", height/4*3-ballSize, Ani.QUAD_OUT));
  seq.add(Ani.to(this, 0.3, 0.3, "TryX3", width/7, Ani.LINEAR));
  seq.add(Ani.to(this, 0.3, 0.3, "TryY3", height, Ani.LINEAR));
  seq.add(Ani.to(this, 0.3, 0.3, "angle3", PI*5, Ani.LINEAR));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.2, "red_y", height/4*3-60, Ani.QUAD_IN));
  seq.endStep();
  //ボールに向かって
  seq.beginStep();
  seq.add(Ani.to(this, 0.2, "red_y", height/4*3-60, Ani.QUAD_IN));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.5, 0.3, "red_x", width/4+ballSize/2, Ani.QUAD_IN_OUT));
  seq.add(Ani.to(this, 0.5, 0.3, "red_y", ballSize/2, Ani.QUAD_OUT));
  seq.add(Ani.to(this, 0.4, 0.1, "TryX4", 0, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, 0.1, "TryY4", height/4*3-60, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, 0.1, "angle4", PI*7, Ani.LINEAR));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.4, "red_x", width/2+ballSize/2, Ani.QUAD_IN_OUT));
  seq.add(Ani.to(this, 0.4, "red_y", 690, Ani.QUAD_OUT));
  seq.add(Ani.to(this, 0.2, "TryX5", width/4+ballSize/2, Ani.LINEAR));
  seq.add(Ani.to(this, 0.2, "TryY5", 0, Ani.LINEAR));
  seq.add(Ani.to(this, 0.2, "angle5", PI*6, Ani.LINEAR));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.6, "red_x", width/8+ballSize/2, Ani.QUAD_IN_OUT));
  seq.add(Ani.to(this, 0.6, "red_y", height/20+ballSize/2, Ani.QUAD_OUT));
  seq.add(Ani.to(this, 0.2, "circleX1", circleX1+300, Ani.QUAD_IN_OUT));
  seq.add(Ani.to(this, 0.4, 0.2, "eyeX", eyeX+300, Ani.QUAD_IN_OUT));
  seq.add(Ani.to(this, 0.2, "bluck_x", bluck_x+300, Ani.QUAD_IN_OUT));
  seq.add(Ani.to(this, 0.4, 0.2, "eye", 100, Ani.QUAD_IN_OUT, "onStart:effect2"));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 1.5, "red_y", height-ballSize, Ani.BOUNCE_OUT, "onEnd:effect2"));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 1.2, "eye", 255, Ani.BOUNCE_OUT, "onStart:effect1"));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.4, 1, "red_x", width/4+ballSize/2, Ani.QUAD_IN_OUT));
  seq.add(Ani.to(this, 0.4, 1, "red_y", ballSize, Ani.QUAD_OUT));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.4, "red_x", width/3+ballSize/2, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, "red_y", height/3+ballSize-5, Ani.QUAD_OUT));
  seq.add(Ani.to(this, 0.4, "bluck_x", width/9*4, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, "bluck_y", height/10*7+ballSize-10, Ani.BACK_IN));
  seq.add(Ani.to(this, 0.4, "circleX1", width/9*4, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, "circleY1", height/4*3+ballSize-10, Ani.BACK_IN));
  seq.add(Ani.to(this, 0.4, "eyeX", width/3, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, "eyeY", height/20*11, Ani.BACK_IN));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 2.5, "red_y", red_y-100, Ani.BACK_IN));
  seq.add(Ani.to(this, 2.5, "bluck_y", bluck_y-100, Ani.BACK_IN));
  seq.add(Ani.to(this, 2.5, "circleY1", circleY1-100, Ani.BACK_IN));
  seq.add(Ani.to(this, 2.5, "eyeY", eyeY-100, Ani.BACK_IN));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.5, "red_y", red_y-200, Ani.BACK_OUT));
  seq.add(Ani.to(this, 0.4, "bluck_y", bluck_y+100, Ani.BACK_IN));
  seq.add(Ani.to(this, 0.4, "circleY1", circleY1+100, Ani.BACK_IN));
  seq.add(Ani.to(this, 0.4, "eyeY", eyeY+100, Ani.BACK_IN));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.2, "red_y", red_y+20, Ani.LINEAR));
  seq.add(Ani.to(this, 0.2, "bluck_y", bluck_y-280, Ani.LINEAR));
  seq.add(Ani.to(this, 0.2, "circleY1", circleY1-280, Ani.LINEAR));
  seq.add(Ani.to(this, 0.2, "eyeY", eyeY-280, Ani.LINEAR));
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.4, "red_y", -height, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, "red_x", width/3, Ani.LINEAR));
  seq.add(Ani.to(this, 1.8, "bluck_x", width/7*5, Ani.SINE_IN_OUT));
  seq.add(Ani.to(this, 1.8, "bluck_y", height, Ani.SINE_IN_OUT));
  seq.add(Ani.to(this, 1.8, "circleX1", width/7*5, Ani.SINE_IN_OUT));
  seq.add(Ani.to(this, 1.8, "circleY1", height, Ani.SINE_IN_OUT));
  seq.add(Ani.to(this, 1.8, "eyeY", 800, Ani.SINE_IN_OUT));
  seq.add(Ani.to(this, 1.8, "eyeX", 1000, Ani.SINE_IN_OUT));
  seq.endStep();
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
  seq.endStep();
  seq.beginStep();
  seq.add(Ani.to(this, 0.2, "TryY1", -height*2, Ani.LINEAR));
  seq.add(Ani.to(this, 0.4, 0.2, "TryY2", -height*2, Ani.LINEAR));
  seq.add(Ani.to(this, 0.6, 0.4, "TryY3", -height*2, Ani.LINEAR));
  seq.add(Ani.to(this, 0.8, 0.6, "TryY4", -height*2, Ani.LINEAR));
  seq.add(Ani.to(this, 1.0, 0.8, "TryY5", -height*2, Ani.LINEAR));
  seq.endStep();
  seq.endSequence();
  // 円のアニメーションシーケンスを登録
  seq2 = new AniSequence(this);
  seq2.beginSequence();
  seq2.add(Ani.to(this, 0.000001, "red_x", -ballSize/2, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.000001, "red_y", height/3, Ani.LINEAR));
  seq2.beginStep();
  seq2.add(Ani.to(this, 0.4, "red_x", width/2-ballSize/2+8, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.4, "red_y", height/4*3, Ani.LINEAR));
  seq2.endStep();
  seq2.beginStep();
  seq2.add(Ani.to(this, 0.6, "red_x", red_x+400, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.6, "red_y", ballSize/2, Ani.QUAD_OUT));
  seq2.add(Ani.to(this, 0.6, "bluck_x", bluck_x+100, Ani.QUINT_OUT));
  seq2.add(Ani.to(this, 0.6, "circleX1", circleX1+100, Ani.QUINT_OUT));
  seq2.endStep();
  seq2.beginStep();
  seq2.add(Ani.to(this, 0.3, "red_y", height/2+75, Ani.QUAD_OUT));
  seq2.add(Ani.to(this, 0.2, "TryX1", -width, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.04, 0.02, "TryX2", width, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.06, 0.04, "TryX3", -width, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.08, 0.06, "TryX4", width, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.1, 0.08, "TryX5", -width, Ani.LINEAR));
  seq2.endStep();
  seq2.beginStep();
  seq2.add(Ani.to(this, 2.6, "red_y", red_y+200, Ani.QUAD_OUT));
  seq2.add(Ani.to(this, 2.6, "bluck_y", bluck_y+200, Ani.QUAD_OUT));
  seq2.add(Ani.to(this, 2.6, "circleY1", circleY1+200, Ani.QUAD_OUT));
  seq2.add(Ani.to(this, 2.6, "eyeY", eyeY+100, Ani.QUAD_OUT));
  seq2.endStep();
  seq2.beginStep();
  seq2.add(Ani.to(this, 0.2, "TryX1", width/5*4, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.4, 0.2, "TryX2", width/5*4, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.6, 0.4, "TryX3", width/5*4, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.8, 0.6, "TryX4", width/5*4, Ani.LINEAR));
  seq2.add(Ani.to(this, 1, 0.8, "TryX5", width/5*4, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.2, "TryY1", height/5*2, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.4, 0.2, "TryY2", height/5*2-30, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.6, 0.4, "TryY3",height/5*2-40, Ani.LINEAR));
  seq2.add(Ani.to(this, 0.8, 0.6, "TryY4",height/5*2-60, Ani.LINEAR));
  seq2.add(Ani.to(this, 1.0, 0.8, "TryY5", height/5*2-80, Ani.LINEAR));
  seq2.endStep();
  seq2.endSequence();
}
