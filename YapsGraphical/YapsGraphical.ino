//
// NB! This is a file generated from the .4Dino file, changes will be lost
//     the next time the .4Dino file is built
//
#define RESETLINE     30

#define DisplaySerial Serial1

#include "YapsGraphicalConst.h"
#include "Picaso_Serial_4DLib.h"
#include "Picaso_LedDigitsDisplay.h"
#include "Picaso_Const4D.h"
Picaso_Serial_4DLib Display(&DisplaySerial);
#include <Wire.h>                         // For SDA/SCL connections


#define THERMISTORNOMINAL 10000.0   // resistance at 25C
#define TEMPERATURENOMINAL 25.0     // degrees centigrade
#define NUMSAMPLES 5                // Improve calculation efficiency by averaging reads over a number of samples
#define IMONSCALINGFACTOR 200.0     // 200uA drawn per amp
#define HIGHTEMPLIMIT 80.0         // Limit in Centigrade at which things may be getting too hot.
#define WARNINGTEMPLIMIT 100.0       // Limit in Centigrade at which things need to be monitored.

// Analog connections - references in schematic
#define CASETHERMISTOR A0
#define RECTIFIERTHERMISTOR A1
#define MOSFETTHERMISTOR A2
#define LT3081U3TEMP A3
#define LT3081U4TEMP A4
#define IMONCURRENT A5

// Resistors - measured with DMM - references in schematic, update on final build
#define CASERESISTOR 9940
#define RECTIFIERRESISTOR 10060
#define MOSFETRESISTOR 9750

word hndl;
unsigned long timeLast = 0;         // time thermistors were last read
const unsigned long period = 1000;  // delay between reads of thermistors

void setup()
{
  pinMode(RESETLINE, OUTPUT);   // Display reset pin
  digitalWrite(RESETLINE, 1);       // Reset Display, using shield
  delay(100);                   // wait for it to be recognised
  digitalWrite(RESETLINE, 0);       // Release Display Reset, using shield
  delay(3000);                  // give display time to startup

  // now start display as Serial lines should have 'stabilised'
  DisplaySerial.begin(200000) ;     // Hardware serial to Display, same as SPE on display is set to
  Display.TimeLimit4D = 5000 ;            // 5 second timeout on all commands
  Display.Callback4D = mycallback ;
  Display.gfx_ScreenMode(LANDSCAPE);      // change manually if orientation change

  // Look for SD card and mount
  Display.putstr("Mounting...\n");
  if (!(Display.file_Mount()))
  {
    while(!(Display.file_Mount()))
    {
      Display.putstr("Drive not mounted...");
      delay(200);
      Display.gfx_Cls();
      delay(200);
    }
  }
  hndl = Display.file_LoadImageControl("YAPS~62A.dat", "YAPS~62A.gci", 1);

  // put your setup code here, to run once:
  initialiseDisplay();
  setupINA260();
} // end Setup **do not alter, remove or duplicate this line**

void loop()
{
  // Display VIP from INA260 and the LT3081 reported current
  DisplayVoltage();
  DisplayCurrent();
  DisplayiMonCurrent();
  DisplayPower();

  // Display all temperatures only once a period to prioritse VIP
  unsigned long timeNow = millis();
  if (timeNow - timeLast >= period) {
    DisplayCaseTemperature();
    DisplayRectifierTemperature();
    DisplayMosfetTemperature();
    DisplayLT3081U3Temperature();
    DisplayLT3081U4Temperature();
    timeLast = timeNow;
  }
}

/*  **************************************************************************
    Display Functions
    **************************************************************************
*/

/*
  Reads the Case thermistor, calculates a temperature and displays the value
*/
void DisplayCaseTemperature() {
  float reading;
  float resistance;
  float temperature;

  // Obtain reading from thermistor and convert to temperature
  reading = ReadAnalog(CASETHERMISTOR);
  resistance = CASERESISTOR * (1024.0 / reading - 1.0);
  temperature = Temperature(resistance);

  int units = temperature; // drop the fraction element
  int fractions = (temperature - units) * 100; // convert fractions into units
  LedDigitsDisplay(Display, hndl, units, iiCustomdigits6, 105, 3, 1, 9, 0) ;  // CaseTempUnits
  LedDigitsDisplay(Display, hndl, fractions, iiCustomdigits8, 137, 2, 1, 9, 0) ;  // CaseTempFractions

  FlagTemperatureIfNecessary(temperature, 141, 35, 125);
}

/*
  Reads the Rectifier thermistor, calculates a temperature and displays the value
*/
void DisplayRectifierTemperature() {
  float reading;
  float resistance;
  float temperature;

  // Obtain reading from thermistor and convert to temperature
  reading = ReadAnalog(RECTIFIERTHERMISTOR);
  resistance = RECTIFIERRESISTOR * (1024.0 / reading - 1.0);
  temperature = Temperature(resistance);

  int units = temperature; // drop the fraction element
  int fractions = (temperature - units) * 100; // convert fractions into units
  LedDigitsDisplay(Display, hndl, units, iiCustomdigits5, 105, 3, 1, 9, 0) ;  // RectifierTempUnits
  LedDigitsDisplay(Display, hndl, fractions, iiCustomdigits9, 137, 2, 1, 9, 0) ;  // RectifierTempFractions

  FlagTemperatureIfNecessary(temperature, 173, 35, 125);
}

/*
  Reads the Mosfet thermistor, calculates a temperature and displays the value
*/
void DisplayMosfetTemperature() {
  float reading;
  float resistance;
  float temperature;

  // Obtain reading from thermistor and convert to temperature
  reading = ReadAnalog(MOSFETTHERMISTOR);
  resistance = MOSFETRESISTOR * (1024.0 / reading - 1.0);
  temperature = Temperature(resistance);

  int units = temperature; // drop the fraction element
  int fractions = (temperature - units) * 100; // convert fractions into units
  LedDigitsDisplay(Display, hndl, units, iiCustomdigits7, 105, 3, 1, 9, 0) ;  // MosfetTempUnits
  LedDigitsDisplay(Display, hndl, fractions, iiCustomdigits10, 137, 2, 1, 9, 0) ;  // MosfetTempFractions

  FlagTemperatureIfNecessary(temperature, 205, 35, 125);
}

/*
  Reads the LT3081 Voltage, converts to a temperature and displays the value
*/
void DisplayLT3081U3Temperature() {
  int reading = ReadAnalog(LT3081U3TEMP);     // Should return a value somewhere between 0 and 306.9 (representing 0 - 1.5V)
  float vOut = reading * (5.0 / 1023.0);  // Convert to a voltage between 0.01mV and 5V (actually 1.5V max)
  float temperature = vOut * 100.0;       // Convert to temperature value 10mV = 1C

  int units = temperature; // drop the fraction element
  int fractions = (temperature - units) * 100; // convert fractions into units
  LedDigitsDisplay(Display, hndl, units, iiCustomdigits12, 263, 3, 1, 9, 0) ;       // LT3081U3TempUnits
  LedDigitsDisplay(Display, hndl, fractions, iiCustomdigits11, 295, 2, 1, 9, 0) ;  // LT3081U3TempFractions

  FlagTemperatureIfNecessary(temperature, 141, 170, 148);
}

void DisplayLT3081U4Temperature() {
  int reading = ReadAnalog(LT3081U4TEMP);     // Should return a value somewhere between 0 and 306.9 (representing 0 - 1.5V)
  float vOut = reading * (5.0 / 1023.0);  // Convert to a voltage between 0.01mV and 5V (actually 1.5V max)
  float temperature = vOut * 100.0;       // Convert to temperature value 10mV = 1C

  int units = temperature; // drop the fraction element
  int fractions = (temperature - units) * 100; // convert fractions into units
  LedDigitsDisplay(Display, hndl, units, iiCustomdigits13, 263, 3, 1, 9, 0) ;  // LT3081U4TempUnits
  LedDigitsDisplay(Display, hndl, fractions, iiCustomdigits14, 295, 2, 1, 9, 0) ;  // LT3081U4TempFractions

  FlagTemperatureIfNecessary(temperature, 173, 170, 148);
}

/*
  Reads the iMon voltage, converts to a current and displays the value
*/
void DisplayiMonCurrent() {
  int reading = ReadAnalog(IMONCURRENT); // Should return a value somewhere between 0 and 123 (representing 0 - 600mV)
  float vOut = reading * (5.0 / 1023.0); // Convert to a voltage between 0 and 5V.
  float current = (vOut / IMONSCALINGFACTOR) * 1000.0; // Convert to current value

  int units = current;
  LedDigitsDisplay(Display, hndl, units, iiCustomdigits3, 248, 1, 1, 9, 0) ;  // iMonUnits
  int fractions = (current - units) * 1000;
  LedDigitsDisplay(Display, hndl, fractions, iiCustomdigits4, 262, 3, 1, 9, 0) ;  // iMonFractions
}

/*
  Draw a coloured rectangle if the temperature needs to be flagged
*/
void FlagTemperatureIfNecessary(float temperature, word top, word left, word width) {

  word colour;
  if (temperature >= HIGHTEMPLIMIT) {
    colour = RED;
  } else if (temperature >= WARNINGTEMPLIMIT) {
    colour = ORANGE;
  } else {
    colour = BLACK;
  }
  Display.gfx_Rectangle(left, top, left + width, top + 25, colour);
}

/*  **************************************************************************
    Analog reading Functions
    **************************************************************************
*/

/*
 * Obtain the actual Vcc value of the 4Duino from an internal reference source.
 * The nominal 5V Vin can fluctuate a lot and affect analog read accuracy.
 */
long readVCC() {
  long result;
  // Read 1.1V reference against AVcc
  ADMUX = _BV(REFS0) | _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  delay(2); // Wait for Vref to settle
  ADCSRA |= _BV(ADSC); // Convert
  while (bit_is_set(ADCSRA, ADSC));
  result = ADCL;
  result |= ADCH << 8;
  result = 1126400L / result; // Calculate Vcc (in mV); 1126400 = 1.1*1024*1000
  return result;
}

/*
  Return an averaged reading from the Analog pin
*/
float ReadAnalog(int pin) {
  uint8_t i;
  float average;
  float samples[NUMSAMPLES];

  for (i = 0; i < NUMSAMPLES; i++) {
    int value = analogRead(pin);
    float supply = readVCC() / 1000.0; // obtain vcc at time of read
    float valueCorrected = supply / 5 * value; // improve the accuracy of the analog reading
    samples[i] = valueCorrected;
    delay(10); // spread readings out otherwise they are likely to be the same value or very close
  }

  average = 0;
  for (i = 0; i < NUMSAMPLES; i++) {
    average += samples[i];
  }
  return average / NUMSAMPLES;
}

/*  **************************************************************************
    SDA/SCL Reading Functions
    **************************************************************************
*/

void DisplayVoltage() {

  double dVoltage = 0.0;

  // ask for voltage readings
  Wire.beginTransmission(0x40); // Address
  Wire.write(0x02);             // Bus Voltage Register
  Wire.endTransmission();
  dVoltage = ReadData(1.25);    // Voltage is accurate to 1.25V

  // Display
  int units = dVoltage * 1000;  // Extended Graphics digits only displays units with an implied DP
  if (units < 0) {
    units = 0;
  }
  LedDigitsDisplay(Display, hndl, units, iLeddigits1+1, 8, 5, 4, 28, 1) ;  // Volts
}

void DisplayCurrent() {

  double dCurrent = 0.0;

  // ask for current readings
  Wire.beginTransmission(0x40); // Address
  Wire.write(0x01);             // Bus Voltage Register
  Wire.endTransmission();
  dCurrent = ReadData(1.25);    // Current is accurate to 1.25mA

  // Display
  int units = dCurrent * 1000;  // Extended Graphics digits only displays units with an implied DP
  if (units < 0) {
    units = 0;
  }
  LedDigitsDisplay(Display, hndl, units, iLeddigits2+1, 203, 4, 4, 28, 0) ;  // Amps
}

void DisplayPower() {

  double dPower = 0.0;

  // ask for power readings
  Wire.beginTransmission(0x40); // Address
  Wire.write(0x03);             // Bus Voltage Register
  Wire.endTransmission();
  dPower = ReadData(10.0);      // Power is accurate to 10mW

  // Display - custom digits only displays whole numbers with no DP so need to split
  int units = dPower; // drop the fraction element
  int fractions = (dPower - units) * 1000; // convert fractions into units
  LedDigitsDisplay(Display, hndl, units, iiCustomdigits1, 64, 2, 1, 9, 0) ;  // PowerUnits
  LedDigitsDisplay(Display, hndl, fractions, iiCustomdigits2, 87, 3, 1, 9, 0) ;  // PowerFractions
}

/*
 * Read NUMSAMPLES values from the preset register (for V, I or P) and average them.
 * The LSB size represents the LSB size as stated in the datasheet.
 */
double ReadData(float lsbSize) {

  long total = 0;
  int value = 0;
  double dValue = 0.0;

  total = 0;
  for(int i = 0; i < NUMSAMPLES; i++){
    Wire.requestFrom(0x40, 2); // Read two bytes
    delay(5);
    if (2 <= Wire.available()) {
      value = Wire.read();    // receive high byte (overwrites previous reading)
      value = value << 8;     // shift high byte to be high 8 bits
      value |= Wire.read();   // receive low byte as lower 8 bits
      total += value;
    }
  }

  // Turn into high precision, average them and convert to result
  dValue = total;
  dValue = ((dValue * lsbSize) / 5.000) / 1000.000;
  return dValue;
}

/*  **************************************************************************
    Calculation Functions
    **************************************************************************
*/

/*
  Calculate the temperature based on the Steinhart-Hart equation.
  Coefficients are from the datasheet
  An alternative would be to hold a table of resistances/temperatures from the datasheet.
  Must consider memory usage.
*/
float Temperature(float r2) {
  float temperature;
  double coeffA = 3.354016e-03;
  double coeffB = 2.541522e-04;
  double coeffC = 3.730922e-06;
  double coeffD = -7.881561e-08;
  double logR2 = 0.0;

  logR2 = log(r2/THERMISTORNOMINAL);
  temperature = (1.0 / (coeffA + coeffB*logR2 + coeffC*logR2*logR2 + coeffD*logR2*logR2*logR2));
  temperature -= 273.15;
  return temperature;
}


/*  **************************************************************************
    Supporting Functions
    **************************************************************************
*/

/*
  Start up the display within initial graphics and values.
*/

void initialiseDisplay() {
  Display.gfx_Cls();
  Display.img_Show(hndl,iStatictext1);                        // VoltText
  Display.img_SetWord(hndl, iMeter1, IMAGE_INDEX, 5);         // where frame is 0 to 16 (for a displayed 0 to 16)
  Display.img_Show(hndl,iMeter1);                             // Meter image
  Display.img_Show(hndl,iStatictext3);                        // AmpText
  Display.img_Show(hndl, iLeddigits1);                        // Volts show all digits at 0, only do this once
  Display.img_Show(hndl, iLeddigits2);                        // Amps show all digits at 0, only do this once
  Display.gfx_Line(2, 100, 318, 100, SLATEGRAY);              // Line1
  Display.img_Show(hndl,iStatictext4);                        // PowerText
  Display.img_Show(hndl, iCustomdigits1);                     // PowerUnits show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext5);                        // PowerDP
  Display.img_Show(hndl, iCustomdigits2);                     // PowerFractions show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext6);                        // WattsText
  Display.img_Show(hndl,iStatictext7);                        // iMonText
  Display.img_Show(hndl, iCustomdigits3);                     // iMonUnits show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext8);                        // iMonDP
  Display.img_Show(hndl, iCustomdigits4);                     // iMonFractions show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext9);                        // iMonAmpText
  Display.gfx_Line(2, 127, 318, 127, SLATEGRAY);              // Line2
  Display.img_SetWord(hndl, iThermometer1, IMAGE_INDEX, 80);  // where frame is 0 to 140 (for a displayed -1 to -1)
  Display.img_Show(hndl,iStatictext2);                        // CaseCText
  Display.img_Show(hndl,iThermometer1);                       // Thermometer1
  Display.img_Show(hndl,iStatictext10);                       // CaseText
  Display.img_Show(hndl, iCustomdigits6);                     // CaseTempUnits show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext15);                       // CaseDP
  Display.img_Show(hndl, iCustomdigits8);                     // CaseTempFractions show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext11);                       // RectifierText
  Display.img_Show(hndl, iCustomdigits5);                     // RectifierTempUnits show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext16);                       // RectifierDP
  Display.img_Show(hndl, iCustomdigits9);                     // RectifierTempFractions show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext12);                       // MosfetText:
  Display.img_Show(hndl, iCustomdigits7);                     // MosfetTempUnits show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext17);                       // MosfetDP
  Display.img_Show(hndl, iCustomdigits10);                    // MosfetTempFractions show all digits at 0, only do this once
  Display.img_Show(hndl,iStatictext14);                       // LT3081u3Text
  Display.img_Show(hndl,iStatictext18);                       // LT3081U3DP
  Display.img_Show(hndl,iStatictext13);                       // LT3081u4Text
  Display.img_Show(hndl,iStatictext19);                       // LT3081U4DP
  Display.img_Show(hndl, iCustomdigits12);                    // LT3081U3TempUnits show all digits at 0, only do this once
  Display.img_Show(hndl, iCustomdigits11);                    // LT3081U3TempFractions show all digits at 0, only do this once
  Display.img_Show(hndl, iCustomdigits13);                    // LT3081U4TempUnits show all digits at 0, only do this once
  Display.img_Show(hndl, iCustomdigits14);                    // LT3081U4TempFractions show all digits at 0, only do this once
}


void setupINA260() {
 // write to the INA260: Address:Register:High Byte:Low Byte
 // See datasheet for values
 Wire.begin();
 Wire.beginTransmission(0x40); //address set by A1 and A0 pins on INA260
 Wire.write(0x00);             // config register
 Wire.write(0x61);             // high byte -> take 1 average
 //Wire.write(0x65);           // high byte -> take 4 averages
 Wire.write(0xb7);             // low byte -> conversion time for voltage and current = 4.156 ms
                               // (average out the data for low noise), and operate in continous mode
 Wire.endTransmission();
}

/*
 routine to handle Serial errors
*/
void mycallback(int ErrCode, unsigned char Errorbyte)
{
#ifdef LOG_MESSAGES
  const char *Error4DText[] = {"OK\0", "Timeout\0", "NAK\0", "Length\0", "Invalid\0"} ;
  LOG_MESSAGES.print(F("Serial 4D Library reports error ")) ;
  LOG_MESSAGES.print(Error4DText[ErrCode]) ;
  if (ErrCode == Err4D_NAK)
  {
    LOG_MESSAGES.print(F(" returned data= ")) ;
    LOG_MESSAGES.println(Errorbyte) ;
  }
  else
    LOG_MESSAGES.println(F("")) ;
  while (1) ; // you can return here, or you can loop
#else
  // Pin 13 has an LED connected on most Arduino boards. Just give it a name
#define led 13
  while (1)
  {
    digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(200);                // wait for a second
    digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
    delay(200);                // wait for a second
  }
#endif
}


