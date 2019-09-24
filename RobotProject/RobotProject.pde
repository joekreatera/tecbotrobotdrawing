JRobot joe;
JRobot jorge;
void setup(){
  size(400,400);
  
  
  joe = new JRobot();
  joe.moveTo(0,200);
  joe.setSpeed(5);
  joe.setAngle(90);

  jorge= new JRobot();
  jorge.moveTo(400,200);
  jorge.setSpeed(3);
  jorge.setAngle(270);
}

boolean crash(JRobot r1, JRobot r2){
  
  int x1 = r1.getX();
  int y1 = r1.getY();
  int x2 = r2.getX();
  int y2 = r2.getY();
  float d = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
  if( d < 10 ){
    return true;
  }
  return false;
}

void draw(){
  joe.move();
  joe.render();
  
  jorge.move();
  jorge.render();
 

  if( crash(joe, jorge) ) {
    joe.setAngle(0);
    jorge.setAngle(180);
  }
}
