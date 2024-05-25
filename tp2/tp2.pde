/*
lucas salvatierra
47114689
comision 3
*/
int desaparecer;
int estado;
PImage ianaturaleza;
int POSX , POSY;
int contador;
PImage autor;
PImage lugar;
PFont font;
void setup(){
  size(640,480);
  estado=1;
  ianaturaleza=loadImage("ia naturaleza.jpg");
  POSX =100;
  POSY=100;
  contador=0;
  lugar=loadImage("lugar.jpg");
  autor=loadImage("autor.jpg");
  font = loadFont("BerlinSansFBDemi-Bold-48.vlw");
  textFont(font,32);
  desaparecer=255;
}
void draw(){
  textAlign(LEFT);
  contador=contador+1;
if(contador>=150){
  estado++;
  contador=0;
}
 if (estado==1){
   image(ianaturaleza,0,0);
   textSize(35);
    text("Nombre de la obra:META-NATURE IA",POSX,POSY);
   POSX=POSX+2;
 }
 
 if (estado==2){
   image(autor,0,0,width,height);
   fill(0);
   textSize(20);
   text("Obra:de Miguel Chevelier Miguel Chevalier \n nacio en Ciudad de México, 22 de abril de 1959 \n es un artista virtual y digital francés.",POSX,POSY);
   POSX=100;
   POSY+=3;
 
 }
 else if (estado==3){
desaparecer=desaparecer-4;
   image(lugar,0,0,width,height);
   fill(255,desaparecer);
   textSize(35);
   text("la obra fue presentada en francia \n Le Grenier à sel, Aviñón  ",POSX,POSY);
   POSX=50;
   POSY=100;
   }
 else if (estado>=3){
   fill(255);
   rect(220,200,200,50);
   textAlign(CENTER,CENTER);
   fill(0);
   text("presionar",320,225);
   }
}
void mousePressed(){
  if(estado>=3){
    if (mouseX>220 && mouseX<220+200 && mouseY>200 && mouseY<200+50) {
    estado=1;
    POSX=100;
    POSY=100;
    contador=0;
    desaparecer=250;
    fill(255);
    }   
  }
  
}
