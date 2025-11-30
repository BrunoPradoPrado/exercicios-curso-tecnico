int push=12;
int azul=2;
int vermelho=4;
int soma=0;
int cont=0;
int pescaria[20];
int valorPot=0;
int i=0;

void setup() {
  // put your setup code here, to run once:
  pinMode(push,INPUT);
  pinMode(azul,OUTPUT);
  pinMode(vermelho,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  while(cont<20 && soma<1000){
      digitalWrite(azul,HIGH);
    valorPot=map(analogRead(A0),0,1023,0,70);
    Serial.println("Valor pot:" +String(valorPot));
    if(digitalRead(push)==1){
      digitalWrite(vermelho,HIGH);
      digitalWrite(azul,LOW);
      pescaria[cont]=valorPot;
      cont++;
      soma+=valorPot;
      Serial.println("Valor soma: "+String(soma));
      delay(1500);
      digitalWrite(vermelho,LOW);
      digitalWrite(azul,HIGH);
      
    }
    delay(1000);
      
  }
    while(i<20){
        Serial.println(pescaria[i]);
        i++;
      }
}