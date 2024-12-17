void initAnimation() {
  // Ani ライブラリの初期化
  Ani.init(this);

  // 一連のアニメーションを登録
  seq = new AniSequence(this);
  seq.beginSequence();

  // step 0
  seq.add(Ani.to(this, 2.5, "red_y", height - ballSize/2-100 , Ani.BOUNCE_OUT));

  // step 1
  seq.beginStep();
   seq.add(Ani.to(this, 2, "eye", 255, Ani.LINEAR));
  seq.add(Ani.to(this, 2, "red_y", height - ballSize / 2, Ani.LINEAR));
  seq.add(Ani.to(this, 2, "bluck_y", height/2, Ani.LINEAR, "delay:1, onStart:showExclamationMark")); // 星を動かす
  seq.add(Ani.to(this, 2, "boxY", height, Ani.LINEAR));
  seq.endStep();

  /* // step 2
   seq.beginStep();
   //seq.add(Ani.to(this, 2, "rotationAngle1", TWO_PI, Ani.LINEAR));
   seq.add(Ani.to(this, 2, "red_x", width / 3 + ballSize / 2, Ani.LINEAR));
   seq.add(Ani.to(this, 2, "red_y:200", Ani.BOUNCE_IN, "delay:1, onStart:showExclamationMark2"));
   seq.endStep();
   
   // step 3
   seq.beginStep();
   seq.add(Ani.to(this, 0.4, "circleY1", height/5, Ani.ELASTIC_OUT));
   seq.add(Ani.to(this, 0.4, "circleX1", width / 3 + ballSize / 1.5, Ani.LINEAR));
   seq.add(Ani.to(this, 0.4, "red_x", width/3  +150+ ballSize / 2, Ani.LINEAR));
   seq.add(Ani.to(this, 0.4, "red_y", height  - ballSize/2 ,Ani.LINEAR));
   seq.endStep();
   //step4
   seq.beginStep();
   seq.add(Ani.to(this, 0.6, "circleY1", height+200, Ani.QUART_OUT ));
   seq.add(Ani.to(this, 0.4, "circleX1", width / 3 + ballSize / 2, Ani.LINEAR));
   seq.add(Ani.to(this, 0.6, "red_x", width/3  +550+ ballSize / 2, Ani.LINEAR));
   seq.add(Ani.to(this, 0.6, "red_y", ballSize/2 ,Ani.LINEAR));
   seq.endStep();
   //step5
   seq.beginStep();
   seq.add(Ani.to(this, 0.8, "red_x", width/3  +750+ ballSize / 2, Ani.LINEAR));
   seq.add(Ani.to(this, 0.8, "red_y", height-ballSize/2 ,Ani.LINEAR));
   seq.endStep();*/
  //step6
  seq.beginStep();
  seq.add(Ani.to(this, 1, "rotationAngle1", TWO_PI*5+TWO_PI*3/2, Ani.LINEAR));
  seq.add(Ani.to(this, 1, "angleLeft", 240, Ani.LINEAR));
  seq.add(Ani.to(this, 1, "distanceLeft3", 500, Ani.LINEAR));
  seq.endStep();
  seq.endSequence();
  // 円のアニメーションシーケンスを登録
}
