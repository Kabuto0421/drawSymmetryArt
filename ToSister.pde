float lineWeight = 4;
int mode1 = 0;
int mode2 = 0;
int mode3 = 0;
int mode4 = 0;
int mode5 = 0;
int mode6 = 0;
int mode7 = 0;
int mode8 = 0;
boolean kesigomu = false;
float colorx = 900;
float colory = 255;

void setup() {
  size(800, 800);
  background(0);
  frameRate(360);
}

void draw() {
println(lineWeight);
  int x = mouseX;
  int px = pmouseX;
  int y = mouseY;
  int py = pmouseY;
  strokeWeight(lineWeight);
}
void mouseDragged() {

  int x = mouseX;
  int px = pmouseX;
  int y = mouseY;
  int py = pmouseY;
  if (kesigomu == false) {//kesigomuモードがオフの時([e]キーでオンになるように書いといた
  
  //八つのカラフルな色の線を描くコード
    stroke((py*(colory/colorx)), (px*(colory/colorx)), ((height-py)*(colory/colorx)));
    line(px, py, x, y);

    stroke(((height-py)*(colory/colorx)), ((width-px)*(colory/colorx)), (py*(colory/colorx)));
    line(width-px, height-py, width-x, height-y);

    stroke(py*(colory/colorx), (width-px)*(colory/colorx), (height-py)*(colory/colorx));
    line(width-px, py, width-x, y);

    stroke((height-py)*(colory/colorx), px*(colory/colorx), py*(colory/colorx));
    line(px, height-py, x, height-y);

    stroke(px*(colory/colorx), py*(colory/colorx), (width-px)*(colory/colorx));
    line(py, px, y, x);

    stroke((width-px)*(colory/colorx), py*(colory/colorx), px*(colory/colorx));
    line(py, width-px, y, width-x);

    stroke(px*(colory/colorx), (height-py)*(colory/colorx), (width-px)*(colory/colorx));
    line(height-py, px, height-y, x);

    stroke((width-px)*(colory/colorx), (height-py)*(colory/colorx), px*(colory/colorx));
    line(height-py, width-px, height-y, width-x);
  }
  
  //こっからが新規
  if (kesigomu == true) {//kesigomuモードがオンの時([r]キーで元に戻せる)
  //黒だけの８本の線
    stroke(0);
    
    line(px, py, x, y);

    line(width-px, height-py, width-x, height-y);

    line(width-px, py, width-x, y);

    line(px, height-py, x, height-y);

    line(py, px, y, x);

    line(py, width-px, y, width-x);

    line(height-py, px, height-y, x);

    line(height-py, width-px, height-y, width-x);
  }
  //ここまでが新規
}

void keyPressed() {
  if (key == 'q') {
    lineWeight += 3;
  } else if (key == 'w') {
    lineWeight -= 3;
  } else if (key == 'e') {
    //stroke(0);
    kesigomu = true;
  } else if (key == 'r') {
    kesigomu = false;
  }
}
