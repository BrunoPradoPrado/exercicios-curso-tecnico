int Led[]{11,10,9,8};
void setup() {
  for (int i=0;i<4;i++){(pinMode(Led[i],OUTPUT));}
  }


void loop() {
  for (int i=0;i<8;i++){
    if (i>3){
      digitalWrite(Led[7-i], HIGH);
      delay(500);
      digitalWrite(Led[7-i], LOW);
      delay(500);
    } else{
      digitalWrite(Led[i], HIGH);
      delay(500);
      digitalWrite(Led[i], LOW);
      delay(500);
  }
}
}