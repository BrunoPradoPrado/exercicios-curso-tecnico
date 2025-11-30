#include <Wire.h>
#include <LiquidCrystal_I2C.h>
int push1 = 12;
int push2 = 2;
int vetor[100];

//Inicializa o display no endereco 0x27
LiquidCrystal_I2C lcd(0x27,16,2);
 
void setup()
{lcd.init();
 lcd.setBacklight(HIGH);
 pinMode(push1,INPUT);
 pinMode(push2,INPUT);
 }

void leitura(){
  int valorpot = analogRead(A0);
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Valorpot."+String(valorpot));
  }
void finaliza(){}
void media(){}
void soma(){}
void par(){}
void impar(){}

void loop()
{
  if(digitalRead(push1)==HIGH){leitura();}
  if(digitalRead(push2)==HIGH){finaliza();}
  
  int ValorPot=random(0,1024);
  //lcd.scrollDisplayLeft(); para textos que ocupam mais colunas do que o display oferece
  lcd.setCursor(0,0);
  lcd.print("");
  lcd.setCursor(0,1);
  lcd.print("");
  delay(10);

}