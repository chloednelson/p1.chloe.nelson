boolean textRect = false;
boolean buttonOne = false;
boolean buttonTwo = false;
boolean buttonThree = false;
boolean buttonOpen = false;
boolean buttonClose = false;
boolean buttonAlarm = false;
boolean buttonCall = false;
boolean MessageOne;
boolean MessageTwo;
boolean MessageThree;
boolean MessageOpen;
boolean MessageClose;
boolean MessageCall;
boolean MessageAlarm;
boolean MessageNo;
int startTime;
final int DISPLAY_DURATION = 3000; //1s = 1000
color buttonColor;
PImage img1;
PImage img2;
PImage img3;
PImage imgopen;
PImage imgclose;
PImage imgalarm;
PImage imgcall;

//add pause variable for unclicking button


void setup(){
  size(500,500);
  buttonColor = color(195);
  img1= loadImage("1.png");
  img2 = loadImage("2.png");
  img3 = loadImage("3.png");
  imgopen = loadImage("Door Open.png");
  imgclose = loadImage("Door Close.png");
  imgalarm = loadImage("Alarm.png");
  imgcall = loadImage("Call.png");
}

void draw(){
  background(255);
  image(img1, 125, 240, 75, 75);
  image(img2, 125, 165, 75, 75);
  image(img3, 125, 90, 75, 75);
  image(imgopen, 100, 320, 75, 75);
  image(imgclose, 290, 320, 75, 75);
  image(imgalarm, 100, 395, 75, 75);
  image(imgcall, 290, 395, 75, 75);
  
  
  if(textRect){
    fill(buttonColor = color(#F2F2F2));
  }
  else {
    fill(buttonColor = color(#F2F2F2));
  }
  
  rect(10,10,480,75);
  
  if(buttonOne){
    fill(buttonColor = color(100));
  }
  else {
    fill(buttonColor = color(#B4B4B4));
  }
  
  rect(200,250,50,50);
  textSize(50);
  fill(#000000);
  text("1" , 215, 290);
  
  
  if(buttonTwo){
    fill(buttonColor = color(100));
  }
  else{
    fill(buttonColor = color(#B4B4B4));
  }
  
  rect(200,175,50,50);
  textSize(50);
  fill(#000000);
  text("2" , 215, 215);
  
  if(buttonThree){
    fill(buttonColor = color(100));
  }
  else{
    fill(buttonColor = color(#B4B4B4));
  } 
  
  rect(200,100,50,50);
  textSize(50);
  fill(#000000);
  text("3", 215, 140);
  
  if(buttonOpen) {
    fill(buttonColor = color(100));
  }
  else{
    fill(buttonColor = color(#B4B4B4));
  }
  
  rect(170, 325, 50,50);
  textSize(20);
  fill(#000000);
  text("Open", 175, 355);
  
  if(buttonClose) {
    fill(buttonColor = color(100));
  }
  else{
    fill(buttonColor = color(#B4B4B4));
  }
  
  rect(230,325,50,50);
  textSize(20);
  fill(#000000);
  text("Close", 235, 355);
  
  if(buttonAlarm) {
    fill(buttonColor = color(100));
    if(buttonOne = true){
      buttonOne = !buttonOne;
    }
    if(buttonTwo = true){
      buttonTwo = !buttonTwo;
    }
    if(buttonThree = true){
      buttonThree = !buttonThree;
    }
    if(buttonOpen = true){
      buttonOpen = !buttonOpen;
    }
    if(buttonClose = true){
      buttonClose = !buttonClose;
    }
  }
  else{
    fill(buttonColor = color(#B4B4B4));
  }
  
  rect(170, 400, 50,50);
  textSize(20);
  fill(#FF0000);
  text("Alarm", 170, 430);
  
  if(buttonCall) {
    fill(buttonColor = color(100));
    if(buttonOne = true){
      buttonOne = !buttonOne;
    }
    if(buttonTwo = true){
      buttonTwo = !buttonTwo;
    }
    if(buttonThree = true){
      buttonThree = !buttonThree;
    }
    if(buttonOpen = true){
      buttonOpen = !buttonOpen;
    }
    if(buttonClose = true){
      buttonClose = !buttonClose;
    }
  }
  else{
    fill(buttonColor = color(#B4B4B4));
  }
  
  rect(230,400,50,50);
  textSize(20);
  fill(#FF0000);
  text("Call", 240, 430);
  
  
  if(MessageOne){
    textSize(20);
    fill(#050000);
    text("Going to floor One!", 15, 30);
    if(millis() - startTime > DISPLAY_DURATION){
      MessageOne = false;
    }
  }
  else{
    MessageOne = false;
  }
  if(MessageTwo){
    textSize(20);
    fill(#050000);
    text("Going to floor Two!", 15, 53);
    if(millis() - startTime > DISPLAY_DURATION){
      MessageTwo = false;
    }
  }
  else{
    MessageTwo = false;
  }
  if(MessageThree){
    textSize(20);
    fill(#050000);
    text("Going to floor Three!", 15, 75);
    if(millis() - startTime > DISPLAY_DURATION){
      MessageThree = false;
    }
  }
  else{
    MessageThree = false;
  }
  if(MessageOpen){
    textSize(15);
    fill(#050000);
    text("Door Open!", 200, 25);
    if(millis() - startTime > DISPLAY_DURATION){
      MessageOpen = false;
    }
  }
  else{
    MessageOpen = false;
  }
  if(MessageClose){
    textSize(15);
    fill(#050000);
    text("Door Close!", 200, 45);
    if(millis() - startTime > DISPLAY_DURATION){
      MessageClose = false;
    }
  }
  else{
    MessageClose = false;
  }
  
  if(MessageAlarm){
    textSize(15);
    fill(255,3,3);
    text("ALARM Ringing", 200, 63);
    if(millis() - startTime > DISPLAY_DURATION){
      MessageAlarm = false;
    }
  }
  else{
    MessageAlarm = false;
  }
  
  if(MessageCall){
    textSize(15);
    fill(255,3,3);
    text("Calling Emergency Services", 200, 82);
    if(millis() - startTime > DISPLAY_DURATION){
      MessageCall = false;
    }
  }
  else{
    MessageCall = false;
  }
  if(MessageNo){
    textSize(15);
    fill(255,3,3);
    text("Can't Move Floors or Doors", 300, 25);
    if(millis() - startTime > DISPLAY_DURATION){
      MessageNo = false;
    }
  }
  else{
    MessageNo = false;
  }
  
}
   

void mousePressed(){
  if(mouseX> 200 && mouseX < 250 && mouseY > 250 && mouseY < 300) {
    buttonOne = !buttonOne;
    MessageOne = dist(200,175,50,50) < 1000;
    startTime= millis();
  }
  
  if (mouseX > 200 && mouseX < 250 && mouseY > 175 && mouseY < 225){
    buttonTwo = !buttonTwo;
    MessageTwo = dist(200,175,50,50) < 1000;
    startTime= millis();
  }
  if(mouseX> 200 && mouseX < 250 && mouseY > 100 && mouseY < 150) {
    buttonThree = !buttonThree;
    MessageThree = dist(200,100,50,50) < 1000;
    startTime= millis();
  }
  if(mouseX> 170 && mouseX < 220 && mouseY > 325 && mouseY < 375) {
    buttonOpen = !buttonOpen;
    MessageOpen = dist(170,325,50,50) < 1000;
    startTime= millis();
  }
  if(mouseX> 230 && mouseX < 280 && mouseY > 325 && mouseY < 375) {
    buttonClose = !buttonClose;
    MessageClose = dist(230,325,50,50) < 1000;
    startTime= millis();
  }
  if(mouseX> 170 && mouseX < 220 && mouseY > 400 && mouseY < 450) {
    buttonAlarm = !buttonAlarm;
    MessageAlarm = dist(170,400,50,50) < 1000;
    startTime= millis();
    MessageNo = dist(230,325,50,50) < 1000;
    startTime = millis();
  }
  if(mouseX> 230 && mouseX < 280 && mouseY > 400 && mouseY < 450) {
    buttonCall = !buttonCall;
    MessageCall = dist(230,400,50,50) < 1000;
    startTime= millis();
    MessageNo = dist(230,400,50,50) < 1000;
    startTime = millis();
  }
}
