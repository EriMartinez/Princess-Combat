float x,y,a,b;
color boton =color(229,198,229);
int pantalla;
int eleccion=0;
int jugador = 0;
int personaje =0;
int personajedos=0;
int turno =0;
int reinicio;
float vidauno, vidados;
float ataqueuno, ataquedos;
class Carta {

  String nombre;
  int ataque;
  int defensa;
  int costeDeMana;
  int x,y;
  int princesa;
  
Carta(String nombre_, int ataque_, int defensa_, int costeDeMana_, int princesa_, int x_, int y_){
  princesa = princesa_;
  nombre = nombre_;
  ataque = ataque_;
  defensa = defensa_;
  costeDeMana = costeDeMana_;
   
  x = x_;
  y = y_;
  }
  
 void display(){
  switch (princesa){
  case 0:
  {
    nieves (130, 180);
  }
  break;
  case 1:
  {
    cenicienta (290, 180);
  }
  break;
  case 2:
  {
    durmiente (450, 180);
  }
  break;
  case 3:
  {
    chantelle (380, 400);
  }
  break; 
  case 4:
  {
    rapunzel (180, 400);
  }
  break;
  }
 }
}
Carta Nieves;
Carta Chantelle;
Carta Rapunzel;
Carta Cenicienta;
Carta Aurora;

void setup (){
size (600,600);
x=width/2;
y=height/2;
  Nieves = new Carta("BlancaNieves", 3, 5, 2, 0,-220,-17);
  Chantelle = new Carta("Chantelle",4,4,7,3,30,220);
  Rapunzel = new Carta("Rapunzel", 5, 6, 4,4,-170,230);
  Cenicienta = new Carta("Cenicienta", 3, 6, 3, 1,-50,-17);
  Aurora= new Carta("Aurora", 7, 7, 5, 2,110,-17);
}

void draw (){
  background (204, 132, 206);
 
  pantallauno(x,y);
  mouseSobreBoton();

  if (pantalla ==0){
  pantallauno (x,y);}
  
  if ((mouseX> x -55) && (mouseX< x +55) && (mouseY> y -50) && (mouseY< y +50)&& (mousePressed)){
  pantalla = 1;
  }
  
  if (pantalla == 1){
  pantallados(); 
  }
 
  if ((personaje != 0)&&(personajedos !=0)){
  pantalla = 2;
  }
  
  if (pantalla == 2){
  pantallatres(); 
  }
 
  if (pantalla ==3){
  pantallafinal();  
  if (keyPressed && (key=='0'))
  {
     pantalla=0;
     personaje=0;
     personajedos=0;
   }
  }
 }   
     

void pantallauno(float xi, float yi){
  pushMatrix();
  translate (xi, yi);
  fill (229,198,229);
  textSize(40);
  textAlign(CENTER);
  text ("Princess' combat", 0,-150);
  fill (boton);
  rectMode (CENTER);
  rect (0,0,100,50);
  fill (204, 132, 206);
  noStroke();
  triangle (-25,15,30,4,-25,-18);
  //corona
  fill (251,222,126);
  noStroke ();
  rectMode (CENTER);
  rect (-2,-50,30,15); 
  fill (251,222,126);
  triangle(-17, -56, -5, -56, -17, -68);
  triangle(13, -56, 3, -56, 13, -68);
  triangle(-7, -56, 3, -56, -2, -68);
  popMatrix();
  
}
void pantallados(){
  pushMatrix();
  background (112,196,150);
  fill (225,69,104);
  textSize(30);
  textAlign(CENTER);
  text ("¡SELECCIONA TU PRINCESA!", 295,40);
  fill (225,69,104);
  textSize(20);
  text ("¡ JUGADOR 1 ELIGE DANDO CLICK !", 295, 85);
  text ("¡ JUGADOR 2 ELIGE PRESIONANDO LA TECLA !", 295,570);
  
  Nieves.display();
  Cenicienta.display();
  Aurora.display();
  Rapunzel.display();
  Chantelle.display();
  flor(250,180);
  flor(-250,180);
  
  //Blanca Nieves
  fill (215, 69, 104);
  textSize(20);
  textAlign(CENTER);
  text ("'a'", 130, 290);
  textSize(15);
  textAlign(CENTER);
  text ("¡ Blanca Nieves !", 135, 310);
  
  //Cenicienta
  fill (215, 69, 104);
  textSize(20);
  textAlign(CENTER);
  text ("'s'", 290, 290);
  textSize(15);
  textAlign(CENTER);
  text ("¡ Cenicienta !", 290, 310);
  
  //Aurora
  fill (215, 69, 104);
  textSize(20);
  textAlign(CENTER);
  text ("'d'", 450, 290);
  textSize(15);
  textAlign(CENTER);
  text ("¡ Aurora !", 450, 310);
  
  //Rapunzel
  fill (215, 69, 104);
  textSize(20);
  textAlign(CENTER);
  text ("'f '", 182, 510);
  textSize(15);
  textAlign(CENTER);
  text ("¡ Rapunzel !", 182, 530);
  
  //Chantelle
  fill (215, 69, 104);
  textSize(20);
  textAlign(CENTER);
  text ("'g'", 380, 510);
  textSize(15);
  textAlign(CENTER);
  text ("¡ Chantelle !", 380, 530);
  
  popMatrix();}
    
  //pantallatres
  void pantallatres(){
  background (145,188,188);
  pushMatrix();
  fill (215, 69, 104);
  textSize(35);
  textAlign(CENTER);
  text ("¿QUIÉN SERÁ LA MÁS BONITA?", 300,80);
  
  fill (229,198,229);
  textSize(30);
  textAlign(CENTER);
  text ("NIVEL DE BELLEZA", 300,140); 
  text (vidauno, 175,185);
  text (vidados, 425, 185);
  textSize(20);
  textAlign(CENTER);
  text ("Jugador 1: ATACA CON ' v ' ||", 170,450);
  text ("Jugador 2: ATACA CON ' n '", 460,450);
  
  flor(-240,200);
  flor (-180, 200);
  flor (-120, 200);
  flor (-60, 200);
  flor (0, 200);
  flor (60, 200);
  flor (120, 200);
  flor (180, 200);
  flor (240, 200);
  
  if (personaje==1){
  translate(50,100);
  Nieves.display();
  }
  else if (personaje ==2){
  translate(-130,100);
  Cenicienta.display();}
     
  else if (personaje == 3){
  translate(-300,100);
  Aurora.display();}
  
  else if (personaje == 4){
  translate(-45,-120);
  Rapunzel.display();}
  
  else if (personaje ==5){
  translate(-240,-120);
  Chantelle.display();
  }     
         
  if (vidauno<=0 || vidados<=0){
  pantalla=3;
  }
  popMatrix();
  
  pushMatrix();
  if (personajedos==1){
  translate(300,110);
  Nieves.display();
  }
  else if (personajedos ==2){
  translate(120,100);
  Cenicienta.display();}
  else if (personajedos == 3){
  translate(0,100);
  Aurora.display();}
  else if (personajedos == 4){
  translate(250,-115);
  Rapunzel.display();}
  else if (personajedos ==5){
  translate(50,-115);
  Chantelle.display();
  }     
    
  popMatrix();
  }
  
void pantallafinal(){
  pushMatrix();
  background (204, 132, 206);
  flor(-240,200);
  flor (-180, 200);
  flor (-120, 200);
  flor (-60, 200);
  flor (0, 200);
  flor (60, 200);
  flor (120, 200);
  flor (180, 200);
  flor (240, 200); 
  translate (300,300);
 
  if (vidauno<=0){
  fill (229,198,229);
  textSize(30);
  textAlign(CENTER);
  text ("¡LA PRINCESA 2", 10,-220);
  text ("ES LA MÁS BONITA!", 10,-190);
  text ("¡PRESIONA ' 0 ' PARA VOLVER A JUGAR!", 10, -10);
}
  
  if (vidados<=0){
  fill (229,198,229);
  textSize(30);
  textAlign(CENTER);
  text ("¡LA PRINCESA 1!", 10,-220);
  text ("ES LA MÁS BONITA!", 10,-190);
  text ("¡PRESIONA ' 0 ' PARA VOLVER A JUGAR!", 10, -10);
}
   
  popMatrix();
}

void flor (int xi, int yi){
  pushMatrix();
  translate(xi,yi);
  
  //dibujo flor
  fill (221,180,7);
  noStroke();
  rectMode(CENTER);
  rect (300,330,20,20,10);
  
  fill (255);
  noStroke();
  rectMode(CENTER);
  rect (300,315,20,20,10);
  
  fill (255);
  noStroke();
  rectMode(CENTER);
  rect (285,330,20,20,10);
  
  fill (255);
  noStroke();
  rectMode(CENTER);
  rect (315,330,20,20,10);
  
  fill (255);
  noStroke();
  rectMode(CENTER);
  rect (300,345,20,20,10);
  
  //dibujo tallo
  fill (116,153,46);
  noStroke();
  rectMode(CENTER);
  rect (300,362,10,10,8);

  fill (116,153,46);
  noStroke();
  rectMode(CENTER);
  rect (295,373,10,10,8);
  
  fill (116,153,46);
  noStroke();
  rectMode(CENTER);
  rect (282,373,10,10,8);

  fill (116,153,46);
  noStroke();
  rectMode(CENTER);
  rect (300,386,10,10,8);
  popMatrix();
}
  
void nieves (float xi, float yi){
  //abro matriz para dibujar a blanca nieves
  pushMatrix();
  translate (xi,yi);
  
  //dibujo cabello
  fill (0,0,0);
  noStroke ();
  rectMode (CENTER);
  rect (0,0,95,90,15);
  
  //dibujo la cabeza
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (0,10, 70,70, 15);
  
  //dibujo moño
  fill (209, 0, 0);
  noStroke ();
  rectMode (CENTER);
  rect (25, -33, 10,10, 2);
  fill (209, 0, 0);
  noStroke ();
  rectMode (CENTER);
  rect (31, -33, 6,6, 2);
  fill (209, 0, 0);
  noStroke ();
  rectMode (CENTER);
  rect (38, -33, 10,10, 2);
  
  //dibujo ojos
  fill (0,0,0);
  noStroke ();
  ellipse (-13, 5, 10, 10);
  
  fill (0,0,0);
  noStroke ();
  ellipse (13, 5, 10, 10);
  
  //dibujo chapitas
  fill (201,125,183);
  noStroke ();
  ellipse (20, 15, 10, 10);
  
  fill (201,125,183);
  noStroke ();
  ellipse (-20, 15, 10, 10);
  
  //dibujo vestido
  fill (38, 115, 179);
  noStroke ();
  rectMode (CENTER);
  rect (0, 50, 45, 25, 9);
  
  fill (251, 225,112);
  rectMode (CENTER);
  rect (0, 70, 45, 25,9);
  
  //dibujo manos
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (28, 55, 10,10,9);
  
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (-28, 55, 10,10,9);
  
  //dibujo brazo izquierdo
  fill (104,192,220);
  noStroke();
  rectMode (CENTER);
  rect (-28, 45, 20,20,9);
  //dibujo brazo derecho
  fill (104,192,220);
  noStroke();
  rectMode (CENTER);
  rect (28, 45, 20,20,9);
  
  //dibujo corona
  fill (251,222,126);
  noStroke ();
  rectMode (CENTER);
  rect (0,-50,30,15);
  
  fill (251,222,126);
  triangle(-15, -56, -3, -56, -15, -68);
  triangle(15, -56, 3, -56, 15, -68);
  triangle(-5, -56, 5, -56, 0, -68);
  
  popMatrix();}

  void cenicienta (int xi, int yi){
  //abro matriz para dibujar a cenicienta
  pushMatrix();
  translate (xi,yi);
  
  //dibujo la cabeza
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (0,10, 70,70, 25);
  
  //dibujo cabello
  fill (246,201,61);
  noStroke ();
  rectMode (CENTER);
  rect (0,-20,70,32,15);
  
  fill (246,201,61);
  noStroke ();
  rectMode (CENTER);
  rect (20,-40,35,35, 15);
  
  //dibujo diadema
  fill (67,155,197);
  noStroke ();
  rectMode (CENTER);
  rect (0,-25,68,10,50);
  
  //dibujo ojos
  fill (0,0,0);
  noStroke ();
  ellipse (-13, 5, 10, 10);
  
  fill (0,0,0);
  noStroke ();
  ellipse (13,5, 10, 10);
  
  //dibujo chapitas
  fill (201,125,183);
  noStroke ();
  ellipse (20, 17, 10, 10);
  
  fill (201,125,183);
  noStroke ();
  ellipse (-20, 17, 10, 10);
  
  //dibujo vestido
  fill (63, 149, 195);
  noStroke ();
  rectMode (CENTER);
  rect (0, 50, 45, 25, 9);
  
  fill (63, 149, 195);
  rectMode (CENTER);
  rect (0, 70, 45, 25,9);
  
  fill (175, 210,226);
  rectMode (CENTER);
  rect(12, 60, 24, 10, 3, 3, 3, 220);
  
  fill (175, 210,226);
  rectMode (CENTER);
  rect(-11, 60, 24, 10, 3, 3, 220, 3);
  
  //dibujo manos
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (28, 55, 10,10,9);
  
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (-28, 55, 10,10,9);
  
  //dibujo brazo izquierdo
  fill (175, 210,226);
  noStroke();
  rectMode (CENTER);
  rect (-28, 45, 20,20,9);
  //dibujo brazo derecho
  fill (175, 210,226);
  noStroke();
  rectMode (CENTER);
  rect (28, 45, 20,20,9);
  //dibujo corona
  fill (251,222,126);
  noStroke ();
  rectMode (CENTER);
  rect (0,-40,30,15);
  
  fill (251,222,126);
  triangle(-15, -46, -3, -46, -15, -58);
  triangle(15, -46, 3, -46, 15, -58);
  triangle(-5, -46, 5, -46, 0, -58);
  
  popMatrix();
}
void durmiente (int xi, int yi){
  //abro matriz para dibujar a blanca nieves
  pushMatrix();
  translate (xi,yi);
  
  //dibujo cabello
  fill (247,193,63);
  noStroke ();
  rectMode (CENTER);
  rect (0,10,95,110,15);
  
  //dibujo la cabeza
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (0,10, 70,70, 15);
  
  fill (246,201,61);
  noStroke ();
  rectMode (CENTER);
  rect (0,-20,70,32,15);

  //dibujo ojos
  fill (0,0,0);
  noStroke ();
  ellipse (-13, 5, 10, 10);
  
  fill (0,0,0);
  noStroke ();
  ellipse (13, 5, 10, 10);
  
  //dibujo chapitas
  fill (201,125,183);
  noStroke ();
  ellipse (20, 15, 10, 10);
  
  fill (201,125,183);
  noStroke ();
  ellipse (-20, 15, 10, 10);
  
  //dibujo vestido
  fill (215, 69, 104);
  noStroke ();
  rectMode (CENTER);
  rect (0, 50, 45, 25, 9);
  
  fill (233,128,168);
  rectMode (CENTER);
  rect (0, 70, 45, 25,9);
  
  //dibujo manos
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (28, 55, 10,10,9);
  
  fill (239, 213,171);
  noStroke();
  rectMode (CENTER);
  rect (-28, 55, 10,10,9);
  
  //dibujo brazo izquierdo
  fill (233,128,168);
  noStroke();
  rectMode (CENTER);
  rect (-28, 45, 20,20,9);
  //dibujo brazo derecho
  fill (233,128,168);
  noStroke();
  rectMode (CENTER);
  rect (28, 45, 20,20,9);
  
   //dibujo cuello
  fill (255);
  noStroke();
  triangle(0, 40, 25, 40, 25, 30);
  
  fill (255);
  noStroke();
  triangle(0, 40, -25, 40, -25, 30);
  
  //dibujo corona
  fill (251,222,126);
  noStroke ();
  rectMode (CENTER);
  rect (0,-50,30,15);
  
  fill (251,222,126);
  triangle(-15, -56, -3, -56, -15, -68);
  triangle(15, -56, 3, -56, 15, -68);
  triangle(-5, -56, 5, -56, 0, -68);
  
  popMatrix();
  }
void chantelle (int xi, int yi){
  //abro matriz para dibujar a blanca nieves
  pushMatrix();
  translate (xi,yi);
  
  //dibujo cabello
  fill (43,187,191);
  noStroke ();
  rectMode (CENTER);
  rect (0,0,95,90,15);
  fill (43,187,191);
  noStroke ();
  rectMode (CENTER);
  rect (50,-40,40,40,15);
  fill (43,187,191);
  noStroke ();
  rectMode (CENTER);
  rect (-50,-40,40,40,15);
  
  //dibujo la cabeza
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (0,10, 70,70, 15);
  
  //dibujo ojos
  fill (0,0,0);
  noStroke ();
  ellipse (-13, 5, 10, 10);
  
  fill (0,0,0);
  noStroke ();
  ellipse (13, 5, 10, 10);
  
  //dibujo chapitas
  fill (201,125,183);
  noStroke ();
  ellipse (20, 15, 10, 10);
  
  fill (201,125,183);
  noStroke ();
  ellipse (-20, 15, 10, 10);
  
  //dibujo vestido
  fill (201, 107, 232);
  noStroke ();
  rectMode (CENTER);
  rect (0, 50, 45, 25, 9);
  
  fill (138, 49, 145);
  rectMode (CENTER);
  rect (0, 70, 45, 25,9);
  
  //dibujo manos
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (28, 55, 10,10,9);
  
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (-28, 55, 10,10,9);
  
  //dibujo brazo izquierdo
  fill (138, 49, 145);
  noStroke();
  rectMode (CENTER);
  rect (-28, 45, 20,20,9);
  //dibujo brazo derecho
  fill (138, 49, 145);
  noStroke();
  rectMode (CENTER);
  rect (28, 45, 20,20,9);
  
  //dibujo corona
  fill (251,222,126);
  noStroke ();
  rectMode (CENTER);
  rect (0,-50,30,15);
  
  fill (251,222,126);
  triangle(-15, -56, -3, -56, -15, -68);
  triangle(15, -56, 3, -56, 15, -68);
  triangle(-5, -56, 5, -56, 0, -68);
    
  popMatrix();
  }
void rapunzel (int xi, int yi){
  //abro matriz para dibujar a blanca nieves
  pushMatrix();
  translate (xi,yi);
  
  //dibujo cabello
  fill (223,158,104);
  noStroke ();
  rectMode (CENTER);
  rect (0,0,95,90,15);
  fill (223,158,104);
  noStroke ();
  rectMode (CENTER);
  rect (-40,20,40,40,15);
  fill (223,158,104);
  noStroke ();
  rectMode (CENTER);
  rect (-50,40,40,40,15);
  fill (223,158,104);
  noStroke ();
  rectMode (CENTER);
  rect (-60,60,40,40,15);
  fill (223,158,104);
  noStroke ();
  rectMode (CENTER);
  rect (-70,80,40,40,15);
  
  //dibujo la cabeza
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (0,10, 70,70, 15);
  
  //dibujo moño
  fill (168, 79, 126);
  noStroke ();
  rectMode (CENTER);
  rect (-75, 73, 10,10, 2);
  
  fill (168, 79, 126);
  noStroke ();
  rectMode (CENTER);
  rect (-70, 73, 6,6, 2);
  
  fill (168, 79, 126);
  noStroke ();
  rectMode (CENTER);
  rect (-63, 73, 10,10, 2);
  
  //dibujo ojos
  fill (0,0,0);
  noStroke ();
  ellipse (-13, 5, 10, 10);
  
  fill (0,0,0);
  noStroke ();
  ellipse (13, 5, 10, 10);
  
  //dibujo chapitas
  fill (201,125,183);
  noStroke ();
  ellipse (20, 15, 10, 10);
  
  fill (201,125,183);
  noStroke ();
  ellipse (-20, 15, 10, 10);
  
  //dibujo vestido
  fill (168, 79, 126);
  noStroke ();
  rectMode (CENTER);
  rect (0, 50, 45, 25, 9);
  
  fill (247,205,200);
  rectMode (CENTER);
  rect (0, 70, 45, 25,9);
  
  //dibujo manos
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (28, 55, 10,10,9);
  
  fill (239,213,171);
  noStroke();
  rectMode (CENTER);
  rect (-28, 55, 10,10,9);
  
  //dibujo brazo izquierdo
  fill (247,205,200);
  noStroke();
  rectMode (CENTER);
  rect (-28, 45, 20,20,9);
  //dibujo brazo derecho
  fill (247,205,200);
  noStroke();
  rectMode (CENTER);
  rect (28, 45, 20,20,9);
  
  //dibujo corona
  fill (251,222,126);
  noStroke ();
  rectMode (CENTER);
  rect (0,-50,30,15);
  
  fill (251,222,126);
  triangle(-15, -56, -3, -56, -15, -68);
  triangle(15, -56, 3, -56, 15, -68);
  triangle(-5, -56, 5, -56, 0, -68);
  
  popMatrix();
  }  


void mouseSobreBoton(){
  pushMatrix();
  //me fijo si el mouse está dentro del cuerpo del boton
  if( (mouseX> x -55) && (mouseX< x +55) && (mouseY> y -50) && (mouseY< y +50)){
    boton = color(251,222,126);
  }
  else{
    boton = color(229,198,229);
  }
  popMatrix();
}
 

void mouseClicked(){

//nieves
if (pantalla==1){
  if ((mouseX > 0)&& (mouseX< 200) && (mouseY> 0)&& (mouseY< 300)){
   personaje = 1;
   vidauno=100;
   ataqueuno=random (1,25);
  }
   //cenicienta
  if ((mouseX> 201)&& (mouseX<400) && (mouseY>  0)&& (mouseY< 300)){
    personaje =2;
    vidauno=100;
   ataqueuno=random (1,25);
  }
  //durmiente
  if ((mouseX> 401)&& (mouseX<600) && (mouseY>  0)&& (mouseY< 300)){
    personaje =3;
    vidauno=100;
   ataqueuno=random (1,25);
  }
  //chantelle
  if ((mouseX>0 )&& (mouseX<300) && (mouseY> 300)&& (mouseY<600)){
    personaje =4;
   vidauno=100;
   ataqueuno=random (1,25);
  }
  //rapunzel
  if ((mouseX> 301)&& (mouseX<600) && (mouseY> 300)&& (mouseY< 600)){
    personaje =5;
    vidauno=100;
   ataqueuno=random (1,25);
  }
}}

  void keyPressed(){
 pushMatrix();
   if (pantalla ==1){
    if(key=='a'){//120 y 70
   //nieves
   personajedos= 1;
   vidados=100;
   ataquedos=random (1,25);
    }
    
  if (key=='s'){ //cenicienta
    personajedos =2;
    vidados=100;
   ataquedos=random (1,25);
  }
  if (key =='d'){//durmiente
    personajedos=3;
    vidados=100;
   ataquedos=random (1,25);
  }
 
  if (key =='f'){ //chantelle
    personajedos = 4;
    vidados=100;
   ataquedos=random (1,25);
  
  }
  if (key=='g'){//rapunzel
    personajedos = 5;
    vidados=100;
   ataquedos=random (1,25);
    }}
    popMatrix();
    
    pushMatrix();
    
    if ((turno ==0) && (pantalla ==2)){
      if (key=='v'|| key=='V'){
      vidados = vidados-ataqueuno;
      println(vidados);
      turno =1;}}
      
  if ((turno ==1) && (pantalla ==2)){
    if (key=='n'|| key=='N'){
      vidauno = vidauno-ataquedos;
      println(vidauno);
      turno =0;}}
      
    
 popMatrix();}