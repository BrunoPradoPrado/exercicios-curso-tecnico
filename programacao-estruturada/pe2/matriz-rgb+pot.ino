
int RGB[]={11,10,9};
int Cor[10][3]={
{255,0,0},
{0,255,0},
{0,0,255},
{0,0,0},
{205,255,255},
{100,255,180},
{50,255,180},
{0,130,255},
{180,255,130},
{220,130,255}
};
int Valorpot=0;

void setup(){
 Serial.begin(9600);
 }

void loop(){
  Valorpot=analogRead(A0);
  int i = map(Valorpot,0,1024,0,10); 
 analogWrite(RGB[0],Cor[i][0]);
 analogWrite(RGB[1],Cor[i][1]);
 analogWrite(RGB[2],Cor[i][2]);
 delay(500);
}  