final int NUM_WALKERS = 5; //cannot change, constant int //5 is th NUMBER OF WALKERS BEING MADE
float[] x= new float[NUM_WALKERS];
float[] y= new float[NUM_WALKERS];

void setup() {
  background(0);
  size(800, 800);
  for (int i=0; i<NUM_WALKERS; i++) {
    x[i]= width/2;
    y[i] = height/2;
  }
}
// random walker example using ARRAYS
void draw() {
  for (int i=0; i<NUM_WALKERS; i++) {
    int r = int(random(4)); //random needs to be casted as int not float
    switch (r){ // switch statement to use random numbers to move
     case 0:
     x[i] += 5*i;
      break;
     case 1:
     x[i] -= 5*i;
     break;
     case 2:
       y[i] += 5*i;
     break;
     case 3:
       y[i] -= 5*i;
    }
    fill(map(i,0,5,0,255));
    ellipse(x[i],y[i],20,20); // drawing 5 walkers as there are 5 numbers in the array and a ellipse is beinhg drawn for each one 
    
  }
}