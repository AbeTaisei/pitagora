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
