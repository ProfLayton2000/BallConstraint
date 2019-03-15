void setup(){
  size(1400,800);
  background(0,0);
}

Ball mainBall = new Ball(1400,800,30,2);

void draw(){
  background(0);
  
  mainBall.show(mouseX,mouseY);
  mainBall.update(mouseX,mouseY);
}