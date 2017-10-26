boolean myBool = false;
int count= 0;

void setup() {
  size (500, 500);
}

void draw() {
  //boolean myBool = false;
  // if mouse is more than halfway myBool becomes true not false
  // if(mouseX > width/2){
  //  myBool= true;
  //  }else{ }

  //if my boolean is true draw a grey back ground
  if (myBool == true) {
    background(100, 110, 105);
  }
  //else draw a yellow background
  else {
    background(220, 220, 20);
  }

  count= count+1;
  if (count>5) {
    myBool=true;
    count= 0;
  } else {
    myBool= false;
  }
  // everyframe adds one to count, 
  //after 5 frames count is greater than 5 and myBool will = false
  // count= 0 resets count to 0 so grey and yellow will flash as it goes from true to false
  
  //x = x+1 can also be written as x+=1 or x++
}