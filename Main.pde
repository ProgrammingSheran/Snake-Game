Player p;
Settings set;
Enemies em;
Enemies em2;
Enemies em3;

void setup(){
  size(1280, 720);
  p = new Player("Bob", 0, 0);
  set = new Settings();
  em = new Enemies("Joe");
  em2 = new Enemies("Bill");
  em3 = new Enemies("Jack");
}

void draw(){
  background(240);
  //set.draw_grid();
  em.draw_enemies(30, 30);
  em2.draw_enemies(30, 30);
  em3.draw_enemies(50, 50);
  p.draw_player(80, 80);
  //println(p.pixelPos.x, p.pixelPos.y);
  //println(p.pos.x, p.pos.y);
  delay(1);
}

void keyPressed(){
  switch (keyCode){
    case UP:
      p.move_up(30);
      break;
    case DOWN:
      p.move_down(30);
      break;
    case RIGHT:
      p.move_right(30);
      break;
    case LEFT:
      p.move_left(30);
      break;
  }
}
