int state=0;

void setup() {
  size(500, 500);
}

void draw() {
  //if (state==0){
  //  background(100);
  //}else if(state== 1){
  //  background(150);
  //} else if(state==2){
  //  background(200);
  //}

  switch (state) {
  case 0:
  background(30);
  break;
  case 1:
    background(50);
    break;
case 2:
    background(100);
    break;
    
    default:
    //default is for if the case is not true it will go straight to default 

//case is better for lots of varitions of if else statements 
// break; to stop it from going to case 2 immediatley 
  }
}

void mousePressed() {
  if (state> 5) {
    state=0;
  } else {
    state++;
  }
}