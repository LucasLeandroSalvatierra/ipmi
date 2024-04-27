PImage ferb ;


void setup() {
  
size(800,400);
ferb = loadImage("ferb.png");
} 

void draw() {
background(255) ;
  fill(0);
 text(mouseX+","+mouseY,400,10);
image(ferb,0,0);

//remera
triangle(510,330,532,349,545,330);
stroke(#FFC579);
strokeWeight(4);
beginShape();
//cara

vertex(570,107);
vertex(568,70);
vertex(487,63);
vertex(498,173);
vertex(500,190);
vertex(520,330);
vertex(570,330);
vertex(570,280);
vertex(564,280);
vertex(581,281);
//remera
line(510,330,590,330);

//boca
vertex(570,265);
vertex(581,281);
vertex(570,265);
vertex(568,213);
//nariz
vertex(568,213);
vertex(610,209);
vertex(610,209);
vertex(607,155);
vertex(607,155);
vertex(568,156);
//pupila
fill(0,0,200);
ellipse(550,155,10,10);
ellipse(580,147,10,10);
//oreja
fill(#FAE5CA);
ellipse(495,181,20,20);
endShape();
strokeWeight(2);
stroke(#238E00);
fill(#68AF76);
beginShape();
//pelo
vertex(629,88);
vertex(571,42);
vertex(629,88);
vertex(517,63);
vertex(502,76);
vertex(502,76);
vertex(496,57);
vertex(496,57);
vertex(469,70);
vertex(469,70);
vertex(490,40);
vertex(490,40);
vertex(458,25);
vertex(458,25);
vertex(504,21);
vertex(504,21);
vertex(491,0);
vertex(491,0);
vertex(540,28);
vertex(540,28);
vertex(596,5);
vertex(596,5);
vertex(571,40);

endShape();
strokeWeight(2);
stroke(0);
//ojos
fill(255);
ellipse(580,130,50,60);
ellipse(547,150,50,50);
//pupila
fill(0,0,200);
ellipse(550,153,10,10);
ellipse(580,147,10,10);
fill(255);
ellipse(554,151,5,5);
ellipse(583,145,5,5);



}
void mousePressed()
{
  println(mouseX+","+mouseY);
}
