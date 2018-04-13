//global variables
int x, y;

void setup() {
  size(400, 400);
  frameRate(200);
  // Set start coords
  x = 0;
  y = 0;
}

void draw() {
  fill(0);
  strokeWeight(1);
  //drawName();
  //noLoop();
}

// Algorithm for your first name
void drawName() {
  moveRight(100);
  moveDown(100);
  moveLeft(10);
  moveRight(10);
  moveUp(10);
  rightDown(10);
  leftDown(10);
  leftUp(10);
  leftUp(10);
}

// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*1; i++) {
    point(x+i, y);
  }
  x=x+(rep);
}
void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y=y+(rep);
}
void moveleft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  x=y-(rep);
}
void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y );
  }
  x=x-(rep);
}
void moveUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y=y-(rep);
}
void rightDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y+i);
  }
  x=x+(rep);
  y=y+(rep);
}
void leftDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y+i);
  }
  y=y+(rep);
  x=x-(rep);
}
void leftUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y-i);
  }
  y=y-(rep);
  x=x-(rep);
}

//buttod
void mouseClicked() {
  saveFrame("line-######.png");
}

void keyPressed() {
  if (key==CODED) {
    if (keyCode==RIGHT) {
      moveRight(5);
    } else if (keyCode== DOWN) {
      moveDown(5);
    } else if (keyCode== UP) {
      moveUp(5);
    } else if (keyCode== LEFT) {
      moveLeft(5);
    } else if (keyCode== RIGHT && keyCode==DOWN) {
      rightDown(5);
    }
  }
}