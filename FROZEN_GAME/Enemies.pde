class Enemies {

  PVector loc, vel, acc;
  PImage wolf, marshmallow, soldier, wolfb, marshmallowb, soldierb;
  float sz;
  int floor;

  Enemies(float x, float y, float vx, float vy, float accx, float accy, float sz) {
    wolf = loadImage("wolf dude.png");
    wolfb = loadImage("wolf dude back.png");
    marshmallow = loadImage("golem guy.png");
    marshmallowb = loadImage("golem guy back.png");
    soldier = loadImage("HAN.png");
    soldierb = loadImage("hann.png");
    loadtime = int(random(0, 6));
    loc = new PVector(x, y);
    vel = new PVector(vx, vy);
    acc = new PVector(accx, accy);
    sz = sz;
    floor = height - 160;
  }


  void make() {
    if (loadtime == 1) {
      image(wolf, 0, floor);
    }
    if (loadtime == 2) {
      image(wolfb, width, floor);
    }
    if (loadtime == 3) {
      image(marshmallow, width, floor);
    }
    if (loadimage == 4) {
      image(marshmallowb, 0, floor);
    }
    if (loadtime == 5) {
      image(soldier, 0, floor);
    }
    if (loadtime == 6) {
      image(soldierb, width, floor);
    }
  }
  
  void attack(){
    loc.add(vel);
    vel.add(acc);
  }

