
public void setup(){
  size(600,600);
}
public void draw(){
  simpleFlower(width/2, height/2, 450);
  myFlower(width/2,height/2,300, (float)(150*Math.sin(PI/4)));
  
}
public void simpleFlower(int x, int y, int size){
  float theNumber = (float)(150*Math.sin(PI/4));
  int stemSize = size*2/3;
  background(360,360,360);
  stroke(0,90,0);
  line(300,height,300,600-size);
  
  line(x,(y-stemSize/2),x,(y+stemSize/2));
  line((x-stemSize/2),y,(x+stemSize/2),y);
  line((x-theNumber),(y-theNumber),(x+theNumber),(y+theNumber));
  line((x-theNumber),(y+theNumber),(x+theNumber),(y-theNumber));
}
public void myFlower (float x, float y, float size, float theNumber){
  stroke(255,239,0);
  line(x,(y-size/2),x,(y+size/2));
  line((x-size/2),y,(x+size/2),y);
  //these 2 lines need to use size 
  line((x-theNumber),(y-theNumber),(x+theNumber),(y+theNumber));
  line((x-theNumber),(y+theNumber),(x+theNumber),(y-theNumber));
  if (size>20){
    myFlower(x-size/2,y,size/3,theNumber/3);
    myFlower(x+size/2,y,size/3,theNumber/3);
    myFlower(x,y-size/2,size/3,theNumber/3);
    myFlower(x,y+size/2,size/3,theNumber/3);
    myFlower(x-theNumber,y-theNumber,size/3,theNumber/3);
    myFlower(x+theNumber,y+theNumber,size/3,theNumber/3);
    myFlower(x-theNumber,y+theNumber,size/3,theNumber/3);
    myFlower(x+theNumber,y-theNumber,size/3,theNumber/3);

  }
}
