//int n1 =0;
//int n2=0;
//etc OR 
//int nums{0,0,0,0,0}; OR

int[] nums= new int[100];

void setup(){
  size(500,500);
  for (int i =0; i<100;i++){ //++ means add one not add itself
   nums[i] = int(map(i,0,100,0,width)); //map returns float so make it an int
  }
  
  //nums[1] = 10
  //you could manually put them in or...
  //int[] nums = {10,1000,9,-10,1};
}

void draw(){
  for (int i=0; i<100; i++){
  ellipse(nums[i], height/2,5,i*5);
  }
  
  for (int i=0; i<100;i++){
   nums[i]++; 
   if( nums[i] > width){
    nums[i] = 0; 
   }
  }
}