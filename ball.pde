class Ball {
  PVector pos;
  int r;
  int v;
  
  Ball(int w, int h, int rad, int vel){
    int x = round(random(rad,w-rad));
    int y = round(random(rad,h-rad));
    println(x,y);
    
    pos = new PVector(x,y);
    
    v = vel;
    r = rad;
  }
  
  void update(int mX, int mY){
    //PVector mVector = new PVector(mX,mY);
    PVector dVector = new PVector(mX-pos.x,mY-pos.y);
    float dist = dist(mX,mY,pos.x,pos.y);
    dVector.div(dist);
    dVector.mult(v*dist/100);
    
    pos.add(dVector);
  }
  
  void show(int mX, int mY){
    noStroke();
    fill(0,255,100);
    ellipse(pos.x,pos.y,2*r,2*r);
    
    stroke(255);
    float w = dist(mX,mY,pos.x,pos.y);
    
    strokeWeight(w/50);
    line(mX,mY,pos.x,pos.y);
  }
}