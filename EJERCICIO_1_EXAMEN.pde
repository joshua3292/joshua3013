float[] vector=new float[10];
float temp, actual;
int p, j;
float aux;
float a=0;
void setup() {
  begin();
  fullScreen(P3D);
  frameRate(5);
}

void draw() {
  p++;
  if ((p+1)>=vector.length) noLoop();
  float aux= vector[p];
  j=p-1;
  while ((j>=0) && (aux <vector[j])) {
    vector[j+1]=vector[j];
    j--;
  }
  vector[j+1]=aux;
  show();
}

void show() {
    background(255);
    for (int i=0; i<vector.length; i++) { 
      noFill();
      strokeWeight(3);
      pushMatrix();
      stroke(0);
      translate(map(i, 0, vector.length, width/vector.length, width), height/2);
      rotateX(a);
      rotateY(a);
      rotateZ(a);
      box(vector[i]);
      popMatrix();
     a+=0.01;
  }
}

void begin() {
p=0;
actual=0;
  for (int i=0; i<vector.length; i++) {
    vector[i]=random(100);
  }
}
void mousePressed() {
  begin();
  loop();
}
