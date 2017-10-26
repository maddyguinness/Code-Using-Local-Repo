//int myInt;
//int[] myIntArray = {0,100,99,-10,5};
////declare an array
//boolean[] myBoolArray= {true, false, true};
int i;
int[] myArray = new int[100];
// array is 100 things long 
//int myArray[0] = 100; //manually fill values

void setup() {
  //println(myIntArray);
  size(600, 600);
  //instead of filling out 100  values use a for loop
  for (int i=0; i< myArray.length; i++) {
    myArray[i] = int(random(800));
  }
}

void draw() {
  println(myArray);

  for (int i=0; i<myArray.length; i++);{
  line(width, 0, myArray[i], height);


}

}