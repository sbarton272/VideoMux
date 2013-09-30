
const int ledPin = 13;
const int pinS0 = 2;
const int pinS1 = 3;
const int pinS2 = 4;
const int pinEN = 5;
const int NUM_CHANNELS = 8;
int delayTime = 1000;

// the setup() method runs once, when the sketch starts

void setup() {
  // initialize the digital pin as an output.
  pinMode(pinS0, OUTPUT);
  pinMode(pinS1, OUTPUT);
  pinMode(pinS2, OUTPUT);
  pinMode(pinEN, OUTPUT);
  pinMode(ledPin, OUTPUT);

  digitalWrite(pinEN, LOW);   // set the LED on ???
  chooseVideoOutput(0);

  Serial.begin(115200);
  Serial.println("Online");
}

// the loop() methor runs over and over again,
// as long as the board has power

void loop() {

  int channel;

  for(int i=0 ; i < NUM_CHANNELS; i++){
      chooseVideoOutput(channel);
      //Serial.println(i);
      delay(100);
  }  

}

int chooseVideoOutput(int channel){

  int S0, S1, S2;

  // check for valid video #
  if( !( (channel >=0) & (channel < NUM_CHANNELS) ) ) {
    return -1; // error
  }

  // select bits for mux
  S0 = bitRead(channel, 0);
  S1 = bitRead(channel, 1);
  S2 = bitRead(channel, 2);

  setPinMode(pinS0, S0);
  setPinMode(pinS1, S1);
  setPinMode(pinS2, S2);

}

/* set the given pin to HIGH or LOW if state is non-zero/zero */
int setPinMode(int pin, int state) {

  if(state == 0) {
    digitalWrite(pin, LOW);
  } 
  else {
    digitalWrite(pin, HIGH);
  }

}


