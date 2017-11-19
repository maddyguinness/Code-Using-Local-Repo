

//image map
//data
String[] names;
float[] latatude;
float[] longitude;
int[] pop;

Table table;

//long is a larger float 
//short is a integer uses less memory 


void setup(){
table = loadTable("name of file", "header");
//Println(table.getRowCount());
names= new String[table.getRowCount()];

for (int i=0; i< table.getRowCount(); i++){
  
  TableRow row = table.getRow(i);
  names[i] = row.getString("city");
  //lats[]//get float for latitude etc
  
  // can also use class contructors to loop data too
}

void draw(){
  
 
}