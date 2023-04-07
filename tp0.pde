void setup(){
size(800,400);
background(25,100,68);
PImage avion;
avion= loadImage("Avion.png");
image(avion,0,0,400,400);
}
void draw(){
  fill(113,112,109);
  quad(400,120,800,110,800,400,400,400);
  fill(206,172,121);
  quad(400,150,800,140,800,400,400,400);
  fill(#585752);
  quad(400,230,800,210,800,400,400,400);
  fill(173,116,30);
  quad(400,280,800,260,800,400,400,400);
  fill(152,146,137);
quad(400,300,800,290,800,400,400,400);
  fill(254);
  triangle(440,280,450,320,460,280);
fill(#6B7470);
  rect(557,250,5,70);//pie de rueda de lado
  fill(3,3,3);//negro
  ellipse(450,320,15,25);//ruedas
  fill(255);
ellipse(450,320,10,20);
fill(3,3,3);
ellipse(600,320,15,25);
fill(#6B7470);
ellipse(600,320,10,20);
fill(3,3,3);
ellipse(560,315,15,25);
fill(#6B7470);
ellipse(560,315,10,20);//ruedas
fill(255);// turbinas
  ellipse(630,210,69,80);
  fill(76,80,78);//gris
  ellipse(610,213,20,70);
  fill(3,3,3);//negro
  ellipse(610,213,15,65);
  fill(255); //blanco
  fill(#6B7470);
  rect(598,250,5,70);//pie de rueda
  fill(255);
  quad(660,50,710,50,690,230,620,240);//cuerpo del avio
quad(430,200,650,190,660,260,400,260);//cuerpo abajo
quad(425,280,650,280,660,260,400,260);
triangle(650,190,700,230,650,280);
rect(450,210,15,60);//puerta
stroke(0,0,230);
curveTightness(4);
  beginShape();
  curveVertex(700,250);
  curveVertex(400,260);
  curveVertex(697,230);
  curveVertex(410,280);
  endShape();
curveTightness(4);
  beginShape();
  curveVertex(700,240);
  curveVertex(400,260);
  curveVertex(697,230);
  curveVertex(410,240);
  endShape();
  stroke(10);
ellipse(640,220,69,80);
fill(76,80,78);
ellipse(623,220,30,70);
fill(3,3,3);//negro
ellipse(620,220,20,60);
fill(255); //blanco
triangle(500,280,710,310,560,270);//ala larga
fill(60,3,255);//azul del avion
triangle(519,276,710,310,550,275);
fill(255); //blanco
quad(730,220, 740,220,720,305,700,310);//ala
fill(60,3,255);//azul del avion
quad(725,240,735,240,733,245,720,245);
quad(720,255,730,255,730,260,715,260);
fill(56,62,59);//ventana
quad(425,210,440,210,445,225,418,225);//ventana
fill(247,245,244); //color gris ventanas
ellipse(480,230,10,15);
ellipse(500,230,10,15);//pasajeros
ellipse(520,230,10,15);
ellipse(540,230,10,15);
ellipse(560,230,10,15);
ellipse(580,230,10,15);
ellipse(600,230,10,15);
triangle(670,70,770,70,660,90);//ala de arriba
fill(60,3,255);//azul del avion
triangle(670,75,760,70,662,85);
fill(255);
triangle(443,280,450,320,460,280);//pata delantera
fill(167,157,157);
triangle(660,90,698,160,705,82);
 fill(31,28,28,200);
 beginShape();
 vertex(410,320);
 vertex(440,320);
 vertex(450,300);
 vertex(460,320);
 vertex(600,330);
 vertex(480,360);
 vertex(570,400);
 vertex(440,360);
 vertex(400,340);
 vertex(410,320);
 endShape();






}
