int Ledverde=12;
int Ledamarelo=10;
int Ledvermelho=8;
int Pinopush=2;



void setup() {
  pinMode(Ledverde,OUTPUT);
  pinMode(Ledamarelo,OUTPUT);
  pinMode(Ledvermelho,OUTPUT);
  pinMode(Pinopush,INPUT);
  Serial.begin(9600);
}

void leitura(){
  int Unidade=analogRead(A0);
  Serial.println("Unidade"+String(Unidade));
  delay(500);

 if (Unidade < 350) {
    digitalWrite(Ledverde, HIGH);
    digitalWrite(Ledvermelho, LOW);
    digitalWrite(Ledamarelo, LOW);
    
  } else if (Unidade < 700) {
    digitalWrite(Ledamarelo, HIGH);
    digitalWrite(Ledvermelho, LOW);
    digitalWrite(Ledverde, LOW);
    
  } else if (Unidade >= 700) {
    digitalWrite(Ledvermelho, HIGH);
    digitalWrite(Ledamarelo, LOW);
    digitalWrite(Ledverde, LOW);
  
  }
}
void loop() {
  if (digitalRead(Pinopush)==HIGH){
    leitura();
  }
  
}