#include <Wire.h>
#include <LiquidCrystal_I2C.h>
int push1 = 2;
int push2 = 3;
int vetor[100];
int i = 0;

LiquidCrystal_I2C lcd(0x27,16,2);
 
void setup()
{lcd.init();
 lcd.setBacklight(HIGH);
 pinMode(push1,INPUT);
 pinMode(push2,INPUT);
 Serial.begin(9600);
 }

void leitura(){
  int valorpot = analogRead(A0);
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Valorpot."+String(valorpot));
  vetor[i] = valorpot;
  i++;
  }
void finaliza(){ 
  for (int repete=0; repete<i; repete++){
      Serial.println(vetor[repete]);
    }
  }
void media(){}
void soma(){
  for (int repete=0; repete<i; repete++){
    if(vetor[repete]%2==0){
      Serial.println(vetor[repete]);
    }
  }
}
void par(){
  for (int repete=0; repete<i; repete++){
    if(vetor[repete]%2==0){
      Serial.println(vetor[repete]);
    }
  }
}
void impar(){
  for (int repete=0; repete<i; repete++){
    if(vetor[repete]%2!=0){
      Serial.println(vetor[repete]);
    }
  }
  }
  
void loop(){
  if(digitalRead(push1)==HIGH){leitura();}
  if(digitalRead(push2)==HIGH){finaliza();}

  int ValorPot=random(0,1024);
  //lcd.scrollDisplayLeft();
  lcd.setCursor(0,0);
  lcd.print("");
  lcd.setCursor(0,1);
  lcd.print("");
  delay(10);

}