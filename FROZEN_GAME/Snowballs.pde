//CLASS
class Bullet {
  PVector loc, vel, acc;//Pvectors for location, velocity, acceleration
  float sz;//float for size

  //CONSTRUCTOR  
  Bullet(float x_, float y_, float vx_, float vy_, 
  float ax_, float ay_, float sz_) {//Parameters for the bullet constructor
    loc = new PVector(x_, y_);//location of the bullet
    vel = new PVector(vx_, vy_);//velocity of the bullet
    acc = new PVector(ax_, ay_);//acceleration of the bulet
    sz=sz_;
  }
  //TEMPORARY BULLET CONSTRUCTOR (IGNORE)
  //  Bullet() {
  //    loc = new PVector();
  //    vel = new PVector();
  //    acc = new PVector();
  //    sz=sz_;
  //  }

  //METHODS
  void display() {//method for the display of the bullet
    stroke(0, 255, 150);//removing the stroke of the bullet 
    fill(255);//the color of the bullet 
    ellipse(loc.x, loc.y, 15, 15);//the shape of the bullet
  }

  void move() {//method for the movement of the bullet
    vel.add(acc);//adding acceleration to the velocity of the bullet
    loc.add(vel);//adding velocity to the location of the bullet
  }
  void hit(Meteors m) {//method for the bullet's collision with the meteors
    if (loc.dist(m.point) < sz/2+m.sz/2) {
      println("hit");//print the word "hit" for everytime a bullet collides with a meteor
      m.sz = 0;//make the size of the meteors 0 upon collision with the bullet
    }
  }
}

