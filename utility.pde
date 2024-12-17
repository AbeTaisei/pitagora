void reset() {
  red_y = -ballSize / 2;
  blue_x = width / 2;
  blue_y = height - ballSize / 2;
  starRotation = 0;
  showCircles = false;
  topCircleY = -circleSize / 2;
  bottomCircleY = height + circleSize / 2;
  showExclamation = false;
}
 //seq.add(Ani.to(this, 2, "starOffsetY", height/2, Ani.LINEAR, "delay:1, onStart:showExclamationMark")); // 星を動かす
 //seq.add(Ani.to(this, 2, "starRotation", PI * 4, Ani.LINEAR)); // 星を回転させる
  
