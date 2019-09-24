class JRobot{
  public int x;
  public int y;
  float angle;
  int speed;
  boolean isDrawing;
  public JRobot(){
    x = 0;
    y = 0;
    angle  = 0;
    speed = 0;
  }
  
  public int getX(){
    return x;
  }
  public int getY(){
    return y;
  }
  
  public void setSpeed(int newSpeed){
    speed = newSpeed;
  }
  public void moveTo(int toX, int toY){
    x = toX;
    y = toY;
  }
  
  public void setAngle(float a){
    angle = a;
  }
  public void move(){
    float rx = speed*sin(angle*PI/180);
    float ry = speed*cos(angle*PI/180);
    x = x + (int)rx;
    y = y + (int)ry;
  }
  public void render(){
     ellipse(x,y,10,10); 
  }
}
