// Setting class for settings

class Settings{
  
  int scale = 32;
  int cols = width / scale;
  int rows = height / scale;
  
  void draw_grid(){
    strokeWeight(1);
    for (int i = 0; i < cols; i++){
      for (int j = 0; j < rows; j++){
        int x = i * scale;
        int y = j * scale;
        fill(255);
        stroke(0);
        rect(x, y, scale, scale);
      }
    }
  }
  
  public int calc_text_size(int x, int y){
    if (x <= 30 && y <= 30){
      return 10;
    }
    else if (x >= 50 && y >= 50){
      return 28;
    }
    return 0;
  }
}
