// Player class for the player rect and movement
Settings pset;

class Player{
  
  int score;
  int sx;
  int sy;
  int text_size;
  private String name;
  PVector pos;
  PVector pixelPos;
  
  Player(String name, int x, int y){
    this.name = name;
    
    pos = new PVector(x, y);
    pixelPos = new PVector(x, y);
    pset = new Settings();
  }
  
  public void draw_player(int sx, int sy){
    this.sx = sx;
    this.sy = sy;
    text_size = pset.calc_text_size(sx, sy);
    textSize(text_size);
    fill(240, 100, 0);
    noStroke();
    rect(pixelPos.x, pixelPos.y, sx, sy);
    fill(255);
    textAlign(CENTER, CENTER);
    text(name, pixelPos.x + sx / 2 , pixelPos.y + sy / 2);
  }
  
  void move_up(int speed){
    if (pixelPos.y > speed){
      pixelPos.y -= speed;
    }
  }
  
  void move_down(int speed){
    if (pixelPos.y < height - sy - speed){
      pixelPos.y += speed;
    }
  }
  
  void move_right(int speed){
    if (pixelPos.x < width  - sx - speed){
      pixelPos.x += speed;
    }
  }
  
  void move_left(int speed){
    if (pixelPos.x > speed){
      pixelPos.x -= speed;
    }
  }
}
