float[] positionX;
float[] positionY;

/*COLOURS*/
int R = 6;
int G = 6;
int B = 20;

/*SIZE*/
float radius = 50;

///////////////////////////////////////////////////////////////////////////////////
int count = 0;
float alphabet;
void setup() {
background(R,G,B);
size(640,800);
positionX = new float[100];
positionY = new float[100];
for (int x = 0; x < 27; x++){
  alphabet = (360*(x)/26);
  positionX[x]= radius * sin(radians(alphabet));
}
for (int y = 0; y < 27; y++){
  alphabet = (360*(y)/26);
  positionY[y]= radius * cos(radians(alphabet));
}
}

void cross(float x, float y) {
  stroke(255,255,255);
  line(x-(radius/30),y-(radius/30),x+(radius/30),y+(radius/30));
  line(x-(radius/30),y+(radius/30),x+(radius/30),y-(radius/30));
}

void doublestroke(float x, float y) {
  stroke(255,255,255);
  line(x-(radius/30),y-(radius/30),x+(radius/30),y+(radius/30));
  line(x-(radius/30),y+(radius/90),x+(radius/30),y+(7*radius/90));
}


void alphaline(float x, float y, int posX, int posX2){
  line(x+(positionX[posX]),y-(positionY[posX]),x+(positionX[posX2]),y-(positionY[posX2]));
}


void draw(){
  strokeWeight(1);
  fill(R,G,B);
  


  }
