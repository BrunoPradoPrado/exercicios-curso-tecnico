#include <Wire.h>
#include <LiquidCrystal_I2C.h> //biblioteca do display usado juntamente com o arduíno
int ldr=0;
int pot=0;
int leitura[10][2];
int somaldr=0;
int medialdr=0;
int maiorldr=0;
int menorldr=2000;
LiquidCrystal_I2C lcd(0x27,16,2);

int somapot=0;
int mediapot=0;
int maiorpot=0;
int menorpot=2000;


void setup() {
  lcd.init();
  lcd.setBacklight(HIGH);
  Serial.begin(9600);
}

void loop() {
  delay(250);
  for(int i=0; i<10; i++){
  ldr = analogRead(A0);
  pot = analogRead(A1);
  leitura[i][0]=ldr; 
  leitura[i][1]=pot;
  Serial.println("LDR "+String(ldr));
  Serial.println("POT "+String(pot));
  delay(1000);
  
  somaldr = somaldr + leitura[i][0];
  somapot = somapot + leitura[i][1];
  
  if (maiorldr<leitura[i][0]){
    maiorldr = leitura[i][0];
  } else if(menorldr>leitura[i][0]){
    menorldr = leitura[i][0];
  }
  
  if (maiorpot<leitura[i][1]){
    maiorpot = leitura[i][1];
  } else if(menorpot>leitura[i][1]){
    menorpot = leitura[i][1];
  }
  }
    Serial.println("          LDR    --   POT");
    
int medialdr=somaldr/10;
int mediapot=somapot/10;
    Serial.println("Soma:  "+String(somaldr)+"--"+String(somapot));
    Serial.println("Média:  "+String(medialdr)+"--"+String(mediapot));
    Serial.println("Maior:  "+String(maiorldr)+"--"+String(maiorpot));
    Serial.println("Menor:  "+String(menorldr)+"--"+String(menorpot));
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Soma-"+String(somaldr)+"-"+String(somapot));
  
  lcd.setCursor(0,1);
  lcd.print("Media-"+String(medialdr)+"-"+String(mediapot));
  delay(3000);
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Maior-"+String(maiorldr)+"-"+String(maiorpot));
  
  lcd.setCursor(0,1);
  lcd.print("Menor-"+String(menorldr)+"-"+String(menorpot));

  delay(3000);
  }
