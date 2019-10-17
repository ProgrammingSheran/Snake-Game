// Enemy class for the enemies being spawned randomly

class Enemies{
   
  String name;
  int number;
  PVector pos;
  PVector pixelPos;
  
  Enemies(String name){
    this.name = name;
    int random_x_y = (int) random(width) / 2;
    println(random_x_y);
    pos = new PVector(random_x_y, random_x_y);
    pixelPos = new PVector(random_x_y, random_x_y);
  }
  
  public void draw_enemies(int sx, int sy){
    textSize(10);
    fill(240, 100, 0);
    noStroke();
    rect(pixelPos.x, pixelPos.y, sx, sy);
    fill(255);
    textAlign(CENTER, CENTER);
    text(name, pixelPos.x + sx / 2, pixelPos.y + sy / 2);
  }
}
