#include <EEPROM.h>
#include <LiquidCrystal_PCF8574.h>
#include <Time.h>
#include <TimeLib.h>
#include <TinyGPS++.h>

TinyGPSPlus gps;
LiquidCrystal_PCF8574 lcd(0x27);

void(* resetFunc) (void) = 0;

bool trg[7];
long pastmillis[2];
int menu;
int feedback[2];
int tconfig[2];
String str;
bool triggers[288];
int index;
int hours;
int minutes;

void setup() {
  lcd.begin(16,2);
  lcd.setBacklight(255);
  lcd.setCursor(1,0);
  lcd.print("Automatic Bell");
  lcd.setCursor(2,1);
  lcd.print("Antonelli 99");
  delay(2000);
  lcd.clear();
  Serial.begin(9600);  
  trg[0] = true;
  trg[1] = true;  
  trg[2] = true;
  trg[3] = false;
  trg[4] = false;
  trg[5] = true;
  trg[6] = true;
  pinMode(4,OUTPUT);
  pinMode(13,OUTPUT);
  pastmillis[0] = 0;
  pastmillis[1] = 0;
  menu = 1;
  feedback[0] = EEPROM.read(2);
  feedback[1] = EEPROM.read(3);
  tconfig[0] = EEPROM.read(0);
  tconfig[1] = EEPROM.read(1);
  for(int i = 0;i < 288;i++){
    int values = EEPROM.read(i+16);
    triggers[i] = map(values,0,255,false,true);
  }
}

void ring() {
  if(trg[1] == true and weekday(now()) >= 2 and weekday(now()) <= 6){
    if(minute(now())%5==0 and trg[6]==true){
      index = map(minute(now()),0,55,hour(now())*12,hour(now())*12+11);
      if(triggers[index]==true){
        if(feedback[1] == 255){  
          tone(13,2000,1000);
          delay(1500);
        }
        digitalWrite(4,HIGH);
        delay(7500);
        digitalWrite(4,LOW);
        trg[6]=false;
      }
    } else if(minute(now())%5!=0 and trg[6]==false){
      trg[6]=true;
    }
  }
}

void loop() {
  if(analogRead(A0) > 0 and trg[1] == false){
    pastmillis[1] = millis();
  }
  keyboard();
  if(millis() - pastmillis[1] == 10000 and analogRead(A0) == 0 and menu != 12) {
    lcd.clear();
    menu = 1;
    trg[1] = true;
  }
  if(millis() - pastmillis[0] == 1800000 or trg[0] == true) {
    pastmillis[0] = millis();
    while (Serial.available() > 0){
      gps.encode(Serial.read());
      if (gps.location.isUpdated()){
        int y = gps.date.year();
        int m = gps.date.month();
        int d = gps.date.day();
        int h = gps.time.hour();
        int i = gps.time.minute();
        int s = gps.time.second();
        setTime(h,i,s,d,m,y);
        if(tconfig[0] == 255){
          adjustTime(tconfig[1] * 3600);
        } else if(tconfig[0] == 0){
          adjustTime(-1 * tconfig[1] * 3600);
        }
        trg[0]=false;
      }
    }
  }
  if(trg[1] == true){
    lcd.setCursor(3,0);
    if(day(now()) < 10) {
      lcd.print("0");
      lcd.print(day(now()));
    } else {
      lcd.print(day(now()));
    }
    lcd.print("/");
    if(month(now()) < 10) {
      lcd.print("0");
      lcd.print(month(now()));
    } else {
      lcd.print(month(now()));  
    }
    lcd.print("/");
    lcd.print(year(now()));
    lcd.setCursor(4,1);
    if(hour(now()) < 10) {
      lcd.print("0");
      lcd.print(hour(now()));
    } else {
      lcd.print(hour(now()));
    }
    lcd.print(":");
    if(minute(now()) < 10) {
      lcd.print("0");
      lcd.print(minute(now()));
    } else {
      lcd.print(minute(now()));
    }
    lcd.print(":");
    if(second(now()) < 10) {
      lcd.print("0");
      lcd.print(second(now()));
    } else {
      lcd.print(second(now()));  
    }
    lcd.setCursor(12,1);
    lcd.print(" ");
    delay(50);
  }
  ring();
}

void updateMenu() {
  if(trg[1] == false) {
    switch (menu) {
      case 0:
        menu++;
        break;
      case 1:
        lcd.clear();
        lcd.print(">Program Config");
        lcd.setCursor(0,1);
        lcd.print(" Test");
        break;
      case 2:
        lcd.clear();
        lcd.print(" Program Config");
        lcd.setCursor(0,1);
        lcd.print(">Test");
        break;
      case 3:
        lcd.clear();
        lcd.print(">Haptic Feedback");
        lcd.setCursor(0,1);
        lcd.print(" Warning Beep");
        break;
      case 4:
        lcd.clear();
        lcd.print(" Haptic Feedback");
        lcd.setCursor(0,1);
        lcd.print(">Warning Beep");
        break;
      case 5:
        lcd.clear();
        lcd.print(">Time Config");
        lcd.setCursor(0,1);
        lcd.print(" Restart");
        break;
      case 6:
        lcd.clear();
        lcd.print(" Time Config");
        lcd.setCursor(0,1);
        lcd.print(">Restart");
        break;
      case 7:
        menu--;
        break;
      case 10:
        menu++;
        break;
      case 11:
        lcd.clear();
        lcd.print(">Add Schedule");
        lcd.setCursor(0,1);
        lcd.print(" Erase Schedule");
        break;
      case 12:
        lcd.clear();
        lcd.print(" Add Schedule");
        lcd.setCursor(0,1);
        lcd.print(">Erase Schedule");
        break;
      case 13:
        menu--;
        break;
      case 20:
        menu++;
        break;
      case 21:
        lcd.clear();
        lcd.print(">Bell Test");
        lcd.setCursor(0,1);
        lcd.print(" Beep Test");
        break;
      case 22:
        lcd.clear();
        lcd.print(" Bell Test");
        lcd.setCursor(0,1);
        lcd.print(">Beep Test");
        break;
      case 23:
        menu--;
        break;
      case 30:
        menu++;
        break;
      case 31:
        lcd.clear();
        lcd.print("Haptic Feedback?");
        lcd.setCursor(0,1);
        lcd.print("1:Yes       2:No");
        trg[3] = true;
        break;
      case 32:
        menu--;
        break;
      case 40:
        menu++;
        break;
      case 41:
        lcd.clear();
        lcd.print("Warning Beep?");
        lcd.setCursor(0,1);
        lcd.print("1:Yes       2:No");
        trg[3] = true;
        break;
      case 42:
        menu--;
        break;
      case 50:
        menu++;
        break;
      case 51:
        lcd.clear();
        lcd.print("*:- time zone");
        delay(2000);
        lcd.clear();
        lcd.print("Time Zone:");
        lcd.setCursor(0,1);
        trg[4] = true;
        break;
      case 52:
        menu--;
        break;
      case 111:
        lcd.clear();
        lcd.print("Hour:");
        lcd.setCursor(0,1);
        trg[4]=true;
        break;
      case 112:
        lcd.clear();
        lcd.print("Minute:");
        lcd.setCursor(0,1);
        break;
      case 113:
        lcd.clear();
        lcd.print("Please restart");
        lcd.setCursor(0,1);
        lcd.print("is required");
        delay(3000);
        menu = 11;
        updateMenu();
        break;
      case 121:
        lcd.clear();
        lcd.print("Are you sure?");
        lcd.setCursor(0,1);
        lcd.print("1:Yes       2:No");
        trg[3] = true;
        break;
    }
  }
}

void executeAction(){
  switch(menu) {
    case 1:
      menu = 11;
      updateMenu();
      break;
    case 2:
      menu = 21;
      updateMenu();
      break;
    case 3:
      menu = 31;
      updateMenu();
      break;
    case 4:
      menu = 41;
      updateMenu();
      break;
    case 5:
      menu = 51;
      updateMenu();
      break;
    case 6:
      lcd.clear();
      lcd.print("Restarting...");
      delay(3000);
      lcd.setBacklight(0);
      lcd.clear();
      delay(1000);
      resetFunc();
      break;
    case 11:
      menu = 111;
      updateMenu();
      break;
    case 12:
      menu = 121;
      updateMenu();
      break;
    case 21:
      lcd.clear();
      lcd.print("Testing...");
      digitalWrite(4,HIGH);
      delay(2000);
      digitalWrite(4,LOW);
      delay(2000);
      digitalWrite(4,HIGH);
      delay(2000);
      digitalWrite(4,LOW);
      delay(2000);
      updateMenu();
      break;
    case 22:
      lcd.clear();
      lcd.print("Testing...");
      tone(13,2000,1000);
      delay(2000);
      tone(13,2000,1000);
      delay(2000);
      updateMenu();
      break;
  }
}

void keyboard() {
  if(analogRead(A0) == 0) {
    trg[2] = true;
  }
  if(menu == 51 and trg[4] == true) {
    if(analogRead(A0) > 0 and trg[2] == true){
      delay(9);
      if(analogRead(A0) >= 927 and analogRead(A0) <= 930 and trg[5] == true) {
        str += "-";
        lcd.print("-");
        if(feedback[0] ==  255) {
          tone(13,2000,100);   
        }
        trg[5]=false;
        trg[2]=false;
      } else if(analogRead(A0) >= 927 and analogRead(A0) <= 930 and trg[5] == false){
        if(feedback[0] == 255) {
          tone(13,2000,100); 
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 912 and analogRead(A0) <= 915){
        str += "7";
        lcd.print("7");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 888 and analogRead(A0) <= 891){
        str += "4";
        lcd.print("4");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 866 and analogRead(A0) <= 869){
        str += "1";
        lcd.print("1");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 850 and analogRead(A0) <= 852){
        str += "0";
        lcd.print("0");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 836 and analogRead(A0) <= 837){
        str += "8";
        lcd.print("8");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 822 and analogRead(A0) <= 825){
        str += "5";
        lcd.print("5");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 803 and analogRead(A0) <= 806){
        str += "2";
        lcd.print("2");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 784 and analogRead(A0) <= 787){
        if(str.toInt() >= 0) {
          EEPROM.update(0,255);
        } else if(str.toInt() < 0){
          EEPROM.update(0,0);
        }
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        if(str.toInt() >= -12 and str.toInt() <= 12){
          EEPROM.update(1,abs(str.toInt()));
          str = "";
          lcd.clear();
          lcd.print("Restarting...");
          delay(3000);
          lcd.setBacklight(0);
          lcd.clear();
          delay(1000);
          resetFunc();
        }
        str = "";
        pastmillis[1] = millis();
        lcd.clear();
        lcd.print("Insert valid");
        lcd.setCursor(0,1);
        lcd.print("value");
        trg[2]=false;
        trg[4]=false;
        trg[5]=true;
        delay(3000);
        menu = 51;
        updateMenu();
      } else if(analogRead(A0) >= 765 and analogRead(A0) <= 768){
        str += "9";
        lcd.print("9");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 753 and analogRead(A0) <= 755){
        str += "6";
        lcd.print("6");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 734 and analogRead(A0) <= 737){
        str += "3";
        lcd.print("3");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;  
      }
    }
  } else if((menu == 111 or menu == 112) and trg[4] == true) {
    if(analogRead(A0) > 0 and trg[2] == true){
      delay(9);
      if(analogRead(A0) >= 927 and analogRead(A0) <= 930) {
        lcd.clear();
        menu = 1;
        trg[1] = true;
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 912 and analogRead(A0) <= 915){
        str += "7";
        lcd.print("7");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 888 and analogRead(A0) <= 891){
        str += "4";
        lcd.print("4");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 866 and analogRead(A0) <= 869){
        str += "1";
        lcd.print("1");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 850 and analogRead(A0) <= 852){
        str += "0";
        lcd.print("0");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 836 and analogRead(A0) <= 837){
        str += "8";
        lcd.print("8");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 822 and analogRead(A0) <= 825){
        str += "5";
        lcd.print("5");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 803 and analogRead(A0) <= 806){
        str += "2";
        lcd.print("2");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 784 and analogRead(A0) <= 787){
        if(menu == 111){
          hours = str.toInt();
          if(hours > 24){
            lcd.clear();
            lcd.print("Insert a valid");
            lcd.setCursor(0,1);
            lcd.print("value");
            delay(3000);
            menu = 110;
          }
        } else if(menu == 112){
          h = str.toInt();
          index = map(minutes,0,55,hours*12,hours*12+11);
          EEPROM.update(16+index,255);
        }
        str = "";
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        if(menu == 112){
          trg[4]=false;
        }
        menu++;
        updateMenu();
        trg[2]=false;
      } else if(analogRead(A0) >= 765 and analogRead(A0) <= 768){
        str += "9";
        lcd.print("9");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 753 and analogRead(A0) <= 755){
        str += "6";
        lcd.print("6");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 734 and analogRead(A0) <= 737){
        str += "3";
        lcd.print("3");
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;  
      }
    }
  } else if(menu == 31 or menu == 41 or menu == 121){
    if(trg[3] == true){
      delay(9);
      if(analogRead(A0) >= 866 and analogRead(A0) <= 869){
        if(menu == 31){
          EEPROM.update(2,255);
          lcd.clear();
          lcd.print("Restarting...");
          delay(3000);
          lcd.setBacklight(0);  
          lcd.clear();
          delay(1000);
          resetFunc();
        } else if(menu == 41) {
          EEPROM.update(3,255);
          lcd.clear();
          lcd.print("Restarting...");
          delay(3000);
          lcd.setBacklight(0);  
          lcd.clear();
          delay(1000);
          resetFunc();
        } else if(menu == 121) {
          lcd.clear();
          lcd.print("Erasing...");
          for(int j = 0;j < 288;j++){
            if(triggers[j]==true){
              EEPROM.update(j+16,0);
            }
          }
          lcd.clear();
          lcd.print("Restarting...");
          delay(3000);
          lcd.setBacklight(0);
          lcd.clear();
          delay(1000);
          resetFunc();
        }
      }
      if(analogRead(A0) >= 803 and analogRead(A0) <= 806){
        if(menu == 31){
          EEPROM.update(2,0);
          lcd.clear();
          lcd.print("Restarting...");
          delay(3000);
          lcd.setBacklight(0);
          lcd.clear();
          delay(1000);
          resetFunc();
        } else if(menu == 41) {
          EEPROM.update(3,0);
          lcd.clear();
          lcd.print("Restarting...");
          delay(3000);
          lcd.setBacklight(0);
          lcd.clear();
          delay(1000);
          resetFunc();
        } else if(menu == 121){
          menu = 11;
          updateMenu();
        }
      }
    }
  } else if(menu != 31 or menu != 41 or menu != 51 or menu != 111 or menu != 112 or menu != 121) {
    if(analogRead(A0) > 0 and trg[2] == true ) {
      delay(9);
      if(analogRead(A0) >= 927 and analogRead(A0) <= 930 and trg[1] ==  false) {
        lcd.clear();
        menu = 1;
        trg[1] = true;
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 836 and analogRead(A0) <= 837 and trg[1] == false){
        menu++;
        updateMenu();
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 822 and analogRead(A0) <= 825 and trg[1] == false){
        executeAction();
        updateMenu();
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 803 and analogRead(A0) <= 806 and trg[1] == false){
        menu--;
        updateMenu();
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      } else if(analogRead(A0) >= 784 and analogRead(A0) <= 787){
        trg[1] = false;
        updateMenu();
        if(feedback[0] == 255){
          tone(13,2000,100);
        }
        trg[2]=false;
      }
    }
  }
}
