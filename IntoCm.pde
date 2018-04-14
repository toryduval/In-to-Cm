void setup() {
  size(800, 400);
}

void draw() {
  background(190, 224, 217);
  drawRef();
  textSize(20);
  //heading
  text("Inches to Centimeters Converter", 250, 40);
  textSize(10);
  text("By Tory Duval", 370, 55);
  //instructions
  text("INSTRUCTIONS: move mouse left and right for the\nline to move left and right between the two rulers.\nThe top ruler shows the length of the line in\ninches, the bottom one in centimeters.",550,170);
  //text for cm: and in:
  textSize(12);
  int xpos=(mouseX/40)-1;
  if (xpos<0) {
    xpos=0;
  } 
  else if (xpos>12) {
    xpos=12;
  }
  text("Inches:"+(xpos), 530, 120);
  text("Centimeters:"+cConverter(xpos), 530, 280);
  //line
  xpos=mouseX-40;
  if((xpos)>480){
    xpos=480;
  }
  else if (xpos<0){
    xpos=0;
  }
  fill(0);
  rect(40,200,xpos,20);
}

void drawRef() {
  fill(255);
  //inches ruler
  fill(252, 212, 99);
  rect(40, 100, 480, 60);
  stroke(0);
  fill(0);
  textSize(10);
  int i=80;
  for (int a=1; a<13; a+=1) {
    line(i, 100, i, 120);
    text(a, i-12, 120);
    i+=40;
  }
  //cm ruler
  fill(252, 212, 99);
  rect(40, 260, 480, 60);
  stroke(0);
  fill(0);
  textSize(10);
  i=56;
  for (int a=1; a<31; a+=1) {
    line(i, 260, i, 280);
    text(a, i-12, 280);
    i+=16;
  }
}

//conversion formula
float cConverter(float val) {
  val=val*2.54;
  return val;
}