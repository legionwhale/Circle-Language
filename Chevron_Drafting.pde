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
size(640,400);
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
  line(x-3,y-3,x+3,y+3);
  line(x-3,y+3,x+3,y-3);
}

void doublestroke(float x, float y) {
  stroke(255,255,255);
  line(x-3,y-3,x+3,y+3);
  line(x-3,y+1,x+3,y+7);
}

void chevron(float x, float y, int Pos1, int Pos2) {
 float gradient = ((positionY[Pos2]) - (positionY[Pos1]))/((positionX[Pos2]) - (positionX[Pos1]));
float midpointX = x + ((positionX[Pos1] + positionX[Pos2])/2);
float midpointY = y - ((positionY[Pos1] + positionY[Pos2])/2);


float Angle = (180*atan(gradient))/PI;
float b = sqrt((100)/(1+(pow(gradient,2))));
float a = sqrt(50 - (pow(b,2)));
if (Pos2 > Pos1){
line(midpointX, midpointY, midpointX + a, midpointY + b);
line(midpointX, midpointY, midpointX - a, midpointY + b);
} else {
  line(midpointX, midpointY, midpointX - a, midpointY - b);
line(midpointX, midpointY, midpointX + a, midpointY - b);
}
}

void alphaline(float x, float y, int posX, int posX2){
  line(x+(positionX[posX]),y-(positionY[posX]),x+(positionX[posX2]),y-(positionY[posX2]));
}


void draw(){
  strokeWeight(1);
  fill(R,G,B);
  
ellipse(radius*1.2,radius*1.6,radius*2,radius*2);
cross(radius*1.2+(positionX[0]),radius*1.6-(positionY[0]));
stroke(255,255,255);
alphaline((radius*1.2), (radius*1.6),15,1);

  chevron(60, 80, 15, 1);
  
  }
