//Vazquez Leandro
//tp1 comision 3

size(800,400);
PImage retrato;

retrato = loadImage ("retrato.jpeg");
//fondo 
background(118,174,216);
image(retrato ,0,0,400,400);

//rostro
fill(240,227,179);
ellipse(580,150,200,220);
noFill();
fill(222,207,154);
ellipse(580,150,30,20);
noFill();
//ojo izquierdo
fill(255,255,255);
ellipse(540,130,40,25);
noFill();
fill(162,132,20);
ellipse(540,130,10,10);
noFill();

//ojo derecho
fill(255,255,255);
ellipse(615,130,40,25);
noFill();
fill(162,132,20);
ellipse(615,130,10,10);
noFill();
// boca 
fill(255,255,255);
rect(530,180,110,11);

//pelo
fill(0,0,0);
rect(480,40,160,50);
noFill();
fill(85,82,69);
rect(640,25,40,100);
noFill();


//cuello
fill(240,227,179);
rect(500,250,150,150);
noFill();

//camisa
fill(58,54,124);
rect(500,300,150,100);
