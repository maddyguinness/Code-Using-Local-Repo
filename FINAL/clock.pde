//class Timer {

//  float Time;
//  boolean timeUp;

//  Timer(float set) {
//    timeUp=false;
//    Time= set;
//  }

//  float getTime() {
//    return(Time);
//  }

//  void setTime(float set) {
//    Time = set;
//  }

//  void countDown() {
//    Time-=1/frameRate;
    
//    if(spotlight.objectFound==true){
//      Time= 0;
//    }

//    if (Time<= 0) {
//      if(spotlight.objectFound==false){
//      Time=0;
//      timeUp= true;
//      //gameOver();
//    }
//    }
//  }

//  //void gameOver() {
//    //text("Game Over", width/2-80, height/2);
//    //fill(255);
//    //textSize(20);
//    //rect(width/2-80, height/2+30, 120, 40);
//    //fill(0);
//    //text("Restart?", width/2-60, height/2+53);
    
//    //if (mouseX<540 && mouseX>421
//    //&& mouseY<398 && mouseY>357){
//    //  if(mousePressed==true){
//    //    Time=10;
//    //    timeUp= false;
//    //  }
//    }