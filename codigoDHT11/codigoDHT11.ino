#include "DHT.h"
#define dht_type DHT11

int dht_pin = A1;
DHT dht_1 = DHT(dht_pin, dht_type);

void setup() {
  Serial.begin(9600);
  dht_1.begin();
}

void loop() {
  float umidade = dht_1.readHumidity();
  float temperatura = dht_1.readTemperature();

  umidade = umidade - 53;
  temperatura = temperatura - 10;



  if (isnan(temperatura) or isnan(umidade)) {
    Serial.println("Erro ao ler");
  } else {
    Serial.print("");
    Serial.print(umidade);
    Serial.print("  ");
    Serial.print(" ");
    Serial.print(temperatura);
    Serial.println(" ");
  }
  delay(2000);
}