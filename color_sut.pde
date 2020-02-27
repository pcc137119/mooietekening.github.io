void setup() {
  size(1920,1080);
  noStroke();

}
 float c =0;
 float b = 0;
 float a = 255;
 float diameter = 0;
 float test = 0;
void draw() {
  background(25-(mouseY*(25.0/600.0)),(179-(mouseY*(157.0/600.0))),(233.0-(mouseY*(72.0/600.0))));
  click();
  Zon();
  Zee();
  boot();
  booti();
  maakWolken();
  maakreflectie();
  eiland();
  vuurtoren();
  maakVliegtuig();
  fill(255,255,255);
  textSize(14);
  text("Hou de muis en een toets ingedrukt voor....", 40,40);
  wachtwoord();


}
void maakWolken(){
  maakWolk(100,100,100,50,-1);
  maakWolk(80,120,100,50,-0.5);
  maakWolk(80,190,100,50,-1.5);
  maakWolk(200,100,100,50,-2);
  maakWolk(1100,190,100,50,-1);
  maakWolk(1800,100,100,50,2);
  maakWolk(1700,120,100,50,1.5);
  maakWolk(1500,200,100,50,0.5);
}

void boot(){
  fill(0, 0, 0);
  rect(300-mouseY/1.5, 650, 50, 20);
  triangle(300-mouseY/1.5, 650, 300-mouseY/1.5, 670, 250-mouseY/1.5, 650);
  triangle(350-mouseY/1.5, 650, 350-mouseY/1.5, 670, 365-mouseY/1.5, 650 );
  //Rode streep op de boot
  fill(255, 0, 0);
  rect(300-mouseY/1.5, 655, 50, 5);
  triangle(300-mouseY/1.5, 655, 300-mouseY/1.5, 660, 260-mouseY/1.5, 655 );
  triangle(350-mouseY/1.5, 655, 350-mouseY/1.5, 660, 362-mouseY/1.5, 655 );
  //Kajuit
  fill(128, 48, 10);
  rect(320-mouseY/1.5, 635, 30, 15);
  //Stoompijp
  fill(0, 0, 0);
  rect(330-mouseY/1.5, 620, 10, 15);
  rect(290-mouseY/1.5, 620, 10, 30);
  fill(255, 0, 0);
  rect(330-mouseY/1.5, 625, 10, 5);
  rect(290-mouseY/1.5, 625, 10, 5);
}

void booti(){
fill(0, 0, 0);
  rect(500-mouseY/1.5, 850, 50, 20);
  triangle(500-mouseY/1.5, 850, 500-mouseY/1.5, 870, 450-mouseY/1.5, 850);
  triangle(550-mouseY/1.5, 850, 550-mouseY/1.5, 870, 565-mouseY/1.5, 850 );
  //Rode streep op de boot
  fill(255, 0, 0);
  rect(500-mouseY/1.5, 855, 50, 5);
  triangle(500-mouseY/1.5, 855, 500-mouseY/1.5, 860, 460-mouseY/1.5, 855 );
  triangle(550-mouseY/1.5, 855, 550-mouseY/1.5, 860, 562-mouseY/1.5, 855 );
  //Kajuit
  fill(128, 48, 10);
  rect(520-mouseY/1.5, 835, 30, 15);
  //Stoompijp
  fill(0, 0, 0);
  rect(530-mouseY/1.5, 820, 10, 15);
  rect(490-mouseY/1.5, 820, 10, 30);
  fill(255, 0, 0);
  rect(530-mouseY/1.5, 825, 10, 5);
  rect(490-mouseY/1.5, 825, 10, 5);
}

void Zon(){
  fill(255,255-(mouseY)*(135.0/1080), 0);
  circle(960,mouseY,(mouseY+400)/4);
}

void Zee(){
  fill(32.0-(mouseY*(51.0/1080.0)),150.0-(mouseY*(84.0/1080.0)),198.0-(mouseY*(21.0/1080.0)));
  //(10,101,188)
  rect(0,600,1920,480);
}

void maakWolk(int startXCoordinaat, int startYCoordinaat, int breedteWolk, int hoogteWolk, float beweegSnelheid) {
  fill(255,255,255);
  ellipse(startXCoordinaat-mouseY*beweegSnelheid, startYCoordinaat, breedteWolk, hoogteWolk);
  ellipse(startXCoordinaat-20-mouseY*beweegSnelheid, startYCoordinaat, breedteWolk, hoogteWolk);
  ellipse(startXCoordinaat+10-mouseY*beweegSnelheid, startYCoordinaat+15, breedteWolk, hoogteWolk);
}

void maakreflectie(){
if (mouseY < 650){
 fill(255,255-(mouseY)*(135.0/1080), 0);
  arc(960, 600,(mouseY+400)/4,(mouseY+400)/4, 0, PI, CHORD);

}}

void click(){
    if (a > 255) {
   a = 255;
   }
   if (a < 0) {
   a = 0;
   }
   if (b > 255) {
   b = 255;
   }
   if (b < 0) {
   b = 0;
   }
   if (c > 255) {
   c = 255;
   }
   if (c < 0) {
   c = 0;
   }
   if (c <= 0){
   b++;
   }
   if (b >= 255){
   a--;
   }
   if (a <= 0){
   c++;
   }
   if (c >= 255) {
   b--;
   }
   if (b <= 0){
   a++;
   }
   if (a >=255){
   c--;
   }
   if (mousePressed == true){
   background(a,b,c);
  }
}

void eiland(){
  fill(150, 100, 0);
  arc(1400, 800, 200, 150, PI, 2*PI, PIE);  
}

void vuurtoren(){
  fill(255, 255, 255);
  quad(1380, 730, 1383, 710, 1413, 710, 1417, 730);
  fill(255, 0, 0);
  quad(1383, 710, 1386, 690, 1410, 690, 1413, 710);
  fill(255, 255, 255);
  quad(1386, 690, 1389, 670, 1406, 670, 1409, 690);
  fill(150, 150, 150);
  quad(1383, 670, 1383, 660, 1411, 660, 1411, 670);
  fill(255, 255, 0);
  quad(1389, 660, 1389, 645, 1406, 645, 1406, 660);
  fill(150, 150, 150);
  arc(1397, 645, 17, 20, PI, 2*PI, PIE);
}

void wachtwoord(){
  if (keyPressed == true){
  test = 1;
  }
  if (test == 1) {
    fill(0,0,0);
    circle(1395,750,diameter);
    diameter++;
  }
  if (diameter >= 3300){
  textSize(18);
  fill(255,255,255);
  text("Het zwarte gat heeft uw computer opgegeten!", 770, 540);
  }
}

void maakVliegtuig(){
  fill(0, 200, 255);
  rect(600-mouseY/1.5, 100, 50, 15);
  triangle(580-mouseY/1.5, 115, 600-mouseY/1.5, 100, 600-mouseY/1.5, 115);
  triangle(640-mouseY/1.5, 100, 650-mouseY/1.5, 100, 653-mouseY/1.5, 90);
  fill(0, 150, 255);
  triangle(592-mouseY/1.5, 106, 600-mouseY/1.5, 106, 600-mouseY/1.5, 100);
  fill(0, 0, 0);
  rect(615-mouseY/1.5, 108, 10, 2);
  fill(255, 255, 255);
  rect(600-mouseY/1.5, 110, 50, 5);
}
