ArrayList <Bullet> bullets = new ArrayList <Bullet>(); //Array list for class Bullet

int Olafy = height-160;
int Olafx = width/2;
//IMAGES
PImage Olaf;
PImage OlafBack;
PImage Background; 
boolean it = true;//a constant value to continuously run particle system 



void setup() {
  Olaf = loadImage("Olaf Walking 3.png");//Loading the spaceship image
  OlafBack = loadImage("Olaf Walking Back 3.png");
  Background = loadImage("pine-trees-snow.jpg");
  size(Background.width, Background.height);//size of canvas
  }
  noStroke();
}

void draw() {
  background(Background);//background color 
  if (mouseX <= width/2) {
    image(OlafBack, Olafx, Olafy);
  } else {
    image(Olaf, Olafx, Olafy);
  }
  for (int j = bullets.size ()-1; j>=0; j--) {//setting the functions for the bullet projectiles
    Bullet b = bullets.get(j);
    b.display();
    b.move();
    for (int i = 0; i<meteors.length; i++) {
      b.hit(meteors[i]);
    }
  }
  if (keyPressed) {
    if (key == 'd') {
      Olafx+= 10;
    }
    if (keyPressed) {
      if (key == 'a') {
        Olafx-= 10;
      }
      Olafy = constrain(Olafy, height-160, height);
    }
  }
}

void mousePressed() {//setting the function of the mouse button being pressed
  if (mouseX <= width/2) {
    bullets.add(new Bullet(Olafx+15, Olafy+97, -20, -5.1, .1, .5, 4));
  } else {
    bullets.add(new Bullet(Olafx+70, Olafy+95, 20, -5.1, .1, .5, 4));
  }
}

