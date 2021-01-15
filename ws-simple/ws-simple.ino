

//https://randomnerdtutorials.com/esp8266-nodemcu-mqtt-publish-bme280-arduino/
//https://arduinojson.org/

#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>
#include <SPI.h>
#include <TFT_eSPI.h> 
#include <ArduinoJson.h>

#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_BME280 bme; // I2C
TFT_eSPI tft = TFT_eSPI();
float temp;
float hum;
float pres;
const long interval = 1000*10;

void bmetoJson(char *buffer, int epochtime, float temp, float hum, float pres){
  StaticJsonDocument<170> doc;
  doc["sensor"] = "esp8266_A/bme280";
  doc["timestamp"] = epochtime; 
  JsonArray data = doc.createNestedArray("data"); 
  JsonObject data_0 = data.createNestedObject();
  data_0["temperature"] = temp;
  data_0["humidity"] = hum;
  data_0["pressure"] = pres;
  serializeJson(doc, buffer,170);
}

void setup() {
  
  Serial.begin(9600);
  Serial.println();

  bool status;
  status = bme.begin(0x76);  
  if (!status) {
    Serial.println("Could not find a valid BME280 sensor, check wiring!");
    while (1);
  }
  
  tft.init();
  tft.setRotation(2);
  tft.fillScreen(TFT_RED);
  tft.setTextColor(TFT_BLACK); // Background is not defined so it is transparent
  tft.print("Original Adafruit font!");  
}


void loop() {

  char buffer[170];

    temp = bme.readTemperature();
    hum = bme.readHumidity();
    pres = bme.readPressure()/100.0F;

    int epochTime  = 0000;
    bmetoJson(buffer,epochTime, temp, hum, pres);
    Serial.printf("Message: %s \n", buffer);
 
  
 tft.fillScreen(TFT_BLACK);
 tft.setCursor (70, 35, 2);

 if (temp >= 24 ){
  tft.setTextColor(TFT_RED, TFT_BLACK);
 } else if (temp <= 19) {
  tft.setTextColor(TFT_BLUE, TFT_BLACK);
 } else {
  tft.setTextColor(TFT_GREEN, TFT_BLACK);

 }

 // DISPLAY TEMP
 tft.drawFloat(temp, 1, 10, 25, 8);
 tft.setCursor (200, 50, 4);
 tft.print(" `C");

// DISPLAY HUMIDITY
 tft.drawFloat(hum, 1, 10, 155, 8);
 tft.setCursor (200, 170, 4);
 tft.print(" %");
 
 delay(interval);
 
}
