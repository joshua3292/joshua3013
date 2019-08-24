float[] a = new float[5];
float b=0;
void setup() {
  fullScreen(P3D);  
  frameRate(5);
  inicializar();
}
  void draw(){
 
  quickSort(a, 0, a.length-1); 
  mostrar();
 }
 void mostrar() {
  background(255);
  for (int i=0; i<a.length; i++) { 
    noFill();
    strokeWeight(1);
    pushMatrix();
    stroke(0);
    translate(map(i, 0, a.length, width/a.length, width), height/2);
    rotateX(b);
    rotateY(b);
    rotateZ(b);
    sphere(a[i]);
    popMatrix();
   b+=0.01;
  }
}
void quickSort(float arr[], int begin, int end) {
  if (begin < end) {
    int partitionIndex = partition(arr, begin, end);

    quickSort(arr, begin, partitionIndex-1);
    quickSort(arr, partitionIndex+1, end);
  }
}
 int partition(float arr[], int begin, int end) {
  float pivot = arr[end];
  int i = (begin-1);

  for (int j = begin; j < end; j++) {
    if (arr[j] <= pivot) {
      i++;

      float swapTemp = arr[i];
      arr[i] = arr[j];
      arr[j] = swapTemp;
    }
  }

  float swapTemp = arr[i+1];
  arr[i+1] = arr[end];
  arr[end] = swapTemp;

  return i+1;
}
 void inicializar()
{
    for ( int i = 0; i <a.length; i++) {
    a[i]=random(100);
  }
}
void mousePressed(){
  inicializar();
  loop();
}
