// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFELL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 4 3 1 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3013 /* ~Gdy podchodzicie, Upadły odwraca się w waszą stronę. Stojąca obok ciebie Anna sztywnieje, gdy napotyka jego spojrzenie.~ */
  IF ~~ THEN REPLY #23037 /* ~"Witaj, Upadły."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23038 /* ~"Anno... co się stało?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23039 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Fell","GLOBAL",0)
Global("Know_Dabus","GLOBAL",1)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #21094 /* ~Widzisz dabusa... ale jest w nim coś, co wydaje ci się dziwne. Ma taką samą grzywę siwych włosów, takie same zielonkawe plamy na skórze, taką samą parę kozich rogów... nagle zdajesz sobie sprawę, że on stąpa po ziemi, a nie unosi się nad nią. Z jakiegoś powodu sprawia to, że jesteś zaniepokojony... i najwyraźniej wzbudza takie same uczucia w Annie, bo gwałtownie nabrała powietrza gdy napotkała jego spojrzenie.~ */
  IF ~~ THEN REPLY #23040 /* ~"Uch... witaj."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23041 /* ~"Anno... co się stało?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23042 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 11
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21096 /* ~Upadły odwraca się w twoją stronę, gdy podchodzisz. Chowa ręce w rękawach i czeka.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23043 /* ~Spróbuj nawiązać rozmowę, sprawdź czy potrafisz przetłumaczyć to, co mówi Upadły.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23044 /* ~Spróbuj nawiązać rozmowę, sprawdź czy potrafisz przetłumaczyć to, co mówi Upadły.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23045 /* ~Spróbuj porozmawiać z Upadłym, sprawdź czy go rozumiesz.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #23046 /* ~"Upadły, mogę zobaczyć jakie masz tatuaże?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23047 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23048 /* ~"Mam do ciebie kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23049 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23050 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23051 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23052 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23053 /* ~"Anno, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23054 /* ~"Dak'konie, czy możesz dla mnie tłumaczyć?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23055 /* ~"Nie-Sławo, czy możesz dla mnie tłumaczyć?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23056 /* ~"Nieważne. Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Know_Dabus","GLOBAL",1)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #21101 /* ~Widzisz dabusa... ale jest w nim coś, co wydaje ci się dziwne. Ma taką samą grzywę siwych włosów, takie same zielonkawe plamy na skórze, taką samą parę kozich rogów... nagle zdajesz sobie sprawę, że on stąpa po ziemi, a nie unosi się nad nią. Z jakiegoś powodu to sprawia, że jesteś zaniepokojony.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23057 /* ~Spróbuj nawiązać rozmowę, sprawdź czy potrafisz przetłumaczyć co mówi ta istota.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23058 /* ~Spróbuj nawiązać rozmowę, sprawdź czy potrafisz przetłumaczyć co mówi ta istota.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23059 /* ~Spróbuj porozmawiać z nim, sprawdź czy go rozumiesz.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23060 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23061 /* ~"Mam do ciebie kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23062 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23063 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23064 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23065 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23066 /* ~"Anno, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23067 /* ~"Dak'konie, czy możesz dla mnie tłumaczyć?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23068 /* ~"Nie-Sławo, czy możesz dla mnie tłumaczyć?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23069 /* ~Zignoruj dabusa i zbadaj studio.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Know_Dabus","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #21498 /* ~Widzisz wysoką istotę z bujną grzywą siwych włosów. Na skórze ma zielonkawe plamy, a z czoła wyrasta jej para kozich rogów. Jest ubrana w długą, falistą togę.~ */
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #23070 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #23071 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN REPLY #23072 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ GOTO 6
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",1)
~ THEN REPLY #23073 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #23074 /* ~Zignoruj dabusa i zbadaj studio.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21499 /* ~Nad głową istoty pojawia się seria symboli. Są otoczone lekką poświatą i po prostu... unoszą się tam.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 211
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.3
  SAY #21500 /* ~Nad głową istoty pojawia się seria symboli. Są otoczone lekką poświatą i po prostu... unoszą się tam.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 118
END

IF ~~ THEN BEGIN 7 // from:
  SAY #21501 /* ~W odpowiedzi 'Upadły' się kłania. Nad jego głową pojawia się pojedynczy symbol. Na początku jest zamazany, ale potem zmienia się w biały okrąg przecięty czarną błyskawicą. Z jakiegoś powodu wydaje ci się, że *znasz* tę istotę.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 121
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.4 4.1
  SAY #21502 /* ~Dabus cierpliwie czeka, dłonie ma ukryte w rękawach. Nad jego głową pojawia się seria symboli, potem się rozmywa i pojawia się znak zapytania.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23075 /* ~Spróbuj nawiązać rozmowę, sprawdź czy potrafisz przetłumaczyć co mówi dabus.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23076 /* ~Spróbuj nawiązać rozmowę, sprawdź czy potrafisz przetłumaczyć co mówi dabus.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23077 /* ~Spróbuj porozmawiać z dabusem i sprawdź, czy potrafisz go zrozumieć.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23078 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23079 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23080 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23081 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23082 /* ~"Morte, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23083 /* ~"Anno, czy możesz dla mnie tłumaczyć?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23084 /* ~"Dak'konie, czy możesz dla mnie tłumaczyć?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23085 /* ~"Nie-Sławo, czy możesz dla mnie tłumaczyć?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23086 /* ~"Przykro mi, ale cię nie rozumiem."~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~~ THEN REPLY #23087 /* ~"Ee... żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.0 2.1 3.0 3.1 8.0 8.1
  SAY #21503 /* ~Zadajesz dabusowi wiele pytań, próbując rozwiązać rebusy pojawiające się nad jego głową. W trakcie całej 'dyskusji' jest wyjątkowo cierpliwy, używa łatwych do przetłumaczenia zdań. Po kilku minutach zaczynasz chwytać... wydaje ci się, że już kiedyś to robiłeś.~ */
  IF ~~ THEN REPLY #23088 /* ~"Może potrafisz mi pomóc..."~ */ GOTO 13
  IF ~~ THEN REPLY #23089 /* ~"Chciałem tylko odświeżyć moją znajomość rebusów. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 2.2 3.2 8.2
  SAY #21504 /* ~Zadajesz dabusowi wiele pytań, próbując rozwiązać rebusy pojawiające się nad jego głową. Pomimo tego, że przez całą 'dyskusję' jest wyjątkowo cierpliwy, nie możesz ich rozgryźć. W końcu dabus przestaje pokazywać symbole i po prostu czeka.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23090 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23091 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23092 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23093 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23094 /* ~"Anno, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23095 /* ~"Dak'konie, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23096 /* ~"Nie-Sławo, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23097 /* ~"Przykro mi, ale cię nie rozumiem."~ */ GOTO 12
  IF ~~ THEN REPLY #23098 /* ~"Ee... żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.2 8.12 9.1 10.8
  SAY #21505 /* ~Dabus nieznacznie się kłania. Wokół jego głowy wirują symbole, odwraca się.~ */
  IF ~~ THEN REPLY #23099 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.11 10.7
  SAY #21506 /* ~Nad głową dabusa pojawia się seria symboli. Potem nieznacznie się kłania i odwraca się.~ */
  IF ~~ THEN REPLY #23100 /* ~"Ee... żegnaj."~ */ JOURNAL #21863 /* ~W dziwnym salonie znalazłem dabusa, lecz nie mogłem zrozumieć co mówił. Będę musiał znaleźć kogoś stąd, kto to dla mnie przetłumaczy.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.4 3.3 8.3 9.0 15.4 16.4 18.4 19.4 21.4 22.4 24.4 25.4 27.3 28.4 30.0 32.7 33.7 35.7 36.7 38.7 39.7 41.6 42.6 44.6 45.6 47.3 48.3 50.3 51.3 53.4 54.5 56.2 57.1 61.3 63.4 65.3 66.4 68.4 70.3 72.4 73.4 75.4 76.4 78.0 79.0 81.4 82.4 84.4 85.4 87.4 88.4 90.4 91.4 93.4 94.7 95.7 100.3 101.3 102.3 106.4 107.3
  SAY #21507 /* ~Dabus czeka.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23101 /* ~"Kim jesteś?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23102 /* ~"Kim jesteś?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23103 /* ~"Co to za miejsce?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23104 /* ~"Co to za miejsce?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 19
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23105 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23106 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23107 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~FloatRebus(Myself)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23108 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64390 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64391 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64392 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64393 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23109 /* ~"Upadły, powiedziałeś, że już kiedyś mnie spotkałeś... wiesz jak zginąłem?"~ */ DO ~FloatRebus(Myself)
~ GOTO 72
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23110 /* ~"Upadły, powiedziałeś, że już kiedyś mnie spotkałeś... wiesz jak zginąłem?"~ */ DO ~FloatRebus(Myself)
~ GOTO 73
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23111 /* ~"Upadły, wiesz coś o Raveli?"~ */ DO ~FloatRebus(Myself)
~ GOTO 32
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23112 /* ~"Upadły, wiesz coś o Raveli?"~ */ DO ~FloatRebus(Myself)
~ GOTO 33
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23113 /* ~"Upadły, to ty zrobiłeś tatuaże na tej odciętej ręce którą znalazłem?"~ */ DO ~FloatRebus(Myself)
~ GOTO 53
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23114 /* ~"Upadły, to ty zrobiłeś tatuaże na tej odciętej ręce którą znalazłem?"~ */ DO ~FloatRebus(Myself)
~ GOTO 54
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23115 /* ~"Możesz mi coś powiedzieć o moich tatuażach?"~ */ DO ~FloatRebus(Myself)
~ GOTO 65
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23116 /* ~"Możesz mi coś powiedzieć o moich tatuażach?"~ */ DO ~FloatRebus(Myself)
~ GOTO 66
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23117 /* ~"Mogę zobaczyć jakie masz tatuaże?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23118 /* ~"Mogę zobaczyć jakie masz tatuaże?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23119 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #21508 /* ~Dabus lekko pochyla głowę, a nad jego głową pojawia się pojedynczy symbol. Na początku jest zamazany, ale potem zmienia się w biały okrąg przecięty czarną błyskawicą.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23120 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23121 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23122 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #21509 /* ~Dabus lekko pochyla głowę, a nad jego głową pojawia się pojedynczy symbol. Na początku jest zamazany, ale potem zmienia się w biały okrąg przecięty czarną błyskawicą. Z jakiegoś powodu wiesz, że dabus ma imię... imię, które brzmi 'Upadły'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23123 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23124 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23125 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23126 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23127 /* ~"Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23128 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #21510 /* ~Już chcesz zadać pytanie, gdy nagle zdajesz sobie sprawę, że już znasz imię dabusa - ma na imię 'Upadły'. Jakby w odpowiedzi dabus lekko skłania głowę, a nad jego głową pojawia się pojedynczy symbol. Na początku jest zamazany, ale potem zmienia się w biały okrąg przecięty czarną błyskawicą.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23129 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23130 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23131 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23132 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23133 /* ~"Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23134 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #21511 /* ~Wokół głowy Upadłego pojawia się ciąg symboli... trochę to trwa, zanim symbole się uformują, początkowo to tylko linie, potem rozbłyskują kolorami zapierającymi dech w piersiach.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23135 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23136 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23137 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY #21512 /* ~Wokół głowy Upadłego pojawia się ciąg symboli... trochę to trwa, zanim symbole się uformują, początkowo to tylko linie, potem rozbłyskują kolorami zapierającymi dech w piersiach. Zgadujesz jakie jest znaczenie części z nich i wydaje ci się, że jest artystą... a to jest salon tatuażu.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23138 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23139 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23140 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23141 /* ~"Mogę zobaczyć jakie masz tatuaże?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23142 /* ~"Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23143 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.3
  SAY #21513 /* ~Wokół głowy Upadłego pojawia się ciąg symboli... trochę to trwa, zanim symbole się uformują, początkowo to tylko linie, potem rozbłyskują kolorami zapierającymi dech w piersiach. (Tutaj tatuuję kolorem i życiem ciało i krew.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23144 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23145 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23146 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23147 /* ~"Mogę zobaczyć jakie masz tatuaże?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23148 /* ~"Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23149 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #21514 /* ~Upadły kłania się z czcią, a wokół jego głowy wiruje strumień symboli, zgodnie z kierunkiem wskazówek zegara, potem w przeciwną stronę.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23150 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23151 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23152 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
END

IF ~~ THEN BEGIN 21 // from: 13.4 13.6 15.3
  SAY #21515 /* ~Upadły kłania się z czcią, a wokół jego głowy wiruje strumień symboli, zgodnie z kierunkiem wskazówek zegara, potem w przeciwną stronę. Zgadujesz znaczenie części symboli, ale wydaje ci się, że powiedział coś o tym, że nie przyszedłeś tu po raz pierwszy.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23153 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23154 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23155 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23156 /* ~"Czy wiesz, kim jestem?"~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23157 /* ~"Rozumiem. Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23158 /* ~"Nie chcę słyszeć już nic więcej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.5 13.7 16.3 54.4
  SAY #21516 /* ~Upadły kłania się z czcią, a wokół jego głowy wiruje strumień symboli, zgodnie z kierunkiem wskazówek zegara, potem w przeciwną stronę. Przetłumaczenie zajmuje ci chwilę: (To pierwszy i nie pierwszy raz kiedy tu przyszedłeś.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23284 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23288 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23853 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23854 /* ~"Czy wiesz, kim jestem?"~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23855 /* ~"Rozumiem. Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23856 /* ~"Nie chcę słyszeć już nic więcej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #21517 /* ~Nad głową Upadłego pojawia się i wyostrza kolejna seria symboli.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24255 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24256 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24257 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY #21518 /* ~Nad głową Upadłego pojawia się i wyostrza kolejna seria symboli. Te symbole nie są tak skomplikowane jak inne. Wydaje ci się, że powiedział, że cię zna, ale nie może powiedzieć nic więcej.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24258 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24259 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24260 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24261 /* ~"Czemu nie?"~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24262 /* ~"Rozumiem. Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24263 /* ~"W takim razie nieważne... Wrócę jak znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY #21519 /* ~Nad głową Upadłego pojawia się i wyostrza kolejna seria symboli. Tłumaczysz tak szybko jak pojawiły się symbole... zupełnie jakbyś już wiele razy tłumaczył ten sznur symboli. (Tak, ale nie wolno mi opowiadać twojej historii.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24264 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24265 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24266 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24267 /* ~"Czemu nie?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ GOTO 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24268 /* ~"Może mógłbyś odpowiedzieć na następne pytanie..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24269 /* ~"W takim razie nie ma już o czym rozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #21520 /* ~Przez chwilę Upadły nie reaguje, potem pojawia się strumień rebusów, jakby wyciekał prosto z jego umysłu.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24271 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24272 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24273 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ EXTERN ~DGRACE~ 20
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY #21521 /* ~Przez chwilę Upadły nie reaguje, potem pojawia się strumień rebusów, jakby wyciekał prosto z jego umysłu. Wydaje ci się, że opowiada swoją historię... ale nie potrafisz przetłumaczyć reszty.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24275 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24276 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24277 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24278 /* ~"Rozumiem. Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~~ THEN REPLY #24279 /* ~"W takim razie nieważne... Wrócę jak znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #21522 /* ~Przez chwilę Upadły nie reaguje, potem pojawia się strumień rebusów, jakby wyciekał prosto z jego umysłu. (Przykro mi, nie mogę. Nie mogę zmienić natury człowieka.) Nie potrafisz wyjaśnić dlaczego, ale ostatnie zdanie wywołuje pod twoją czaszką dziwne mrowienie.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24280 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24281 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24282 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24283 /* ~"'Natury człowieka'? Co to znaczy?"~ */ DO ~FloatRebus(Myself)
~ GOTO 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24284 /* ~"Rozumiem. Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24285 /* ~"Nie chcę słyszeć już nic więcej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #21523 /* ~Obok Upadłego, pojawia się krótka seria cienkich jak papier rebusów, potem rozsypują się w drobny pył.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24286 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24287 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24288 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
END

IF ~~ THEN BEGIN 30 // from: 28.3
  SAY #21524 /* ~Pojawiające się nad głową Upadłego symbole są prawie identyczne jak poprzedni strumień. (Przykro mi. Nie mogę powiedzieć.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24289 /* ~"Rozumiem. Upadły, mam do ciebie jeszcze jedno pytanie."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24290 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #21525 /* ~Przez chwilę panuje niemal namacalna cisza... trawa tak długo, że zaczynasz się zastanawiać, czy Upadły cię usłyszał. Ponad jego głową powoli pojawia się kilka dziwnie szarych symboli.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24291 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24292 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24293 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
END

IF ~~ THEN BEGIN 32 // from: 13.14
  SAY #21526 /* ~Przez chwilę panuje niemal namacalna cisza... trawa tak długo, że zaczynasz się zastanawiać, czy Upadły cię usłyszał. Ponad jego głową powoli pojawia się kilka dziwnie szarych symboli. Mówi, że wie... i że ona nie jest mitem.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24294 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24295 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24296 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24297 /* ~"Gdzie ona jest?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24298 /* ~"Co możesz mi o niej powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24299 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24300 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24301 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24302 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 13.15
  SAY #21527 /* ~Przez chwilę panuje niemal namacalna cisza... trawa tak długo, że zaczynasz się zastanawiać, czy Upadły cię usłyszał. Ponad jego głową powoli pojawia się kilka dziwnie szarych symboli. (Ona nie jest mitem.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24303 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24304 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24305 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24306 /* ~"Gdzie ona jest?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24307 /* ~"Co możesz mi o niej powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24308 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24309 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24310 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24311 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #21528 /* ~Seria szarych symboli wiruje wokół głowy Upadłego, niczym powolny wir, nagle wyrównuje się w dziwny, pokrętny wzór.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24312 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24313 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24314 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
END

IF ~~ THEN BEGIN 35 // from: 32.3 41.3
  SAY #21529 /* ~Seria szarych symboli wiruje wokół głowy Upadłego, niczym powolny wir, nagle wyrównuje się w dziwny, pokrętny wzór. Wydaje ci się, że mówi coś o labiryncie... ale nie wiesz dokładnie, o co mu chodzi.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24315 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24316 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24317 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24318 /* ~"Uwięziona w labiryncie?"~ */ DO ~FloatRebus(Myself)
~ GOTO 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24319 /* ~"Co możesz mi o niej powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24320 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24321 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24322 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24323 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.3 42.3
  SAY #21530 /* ~Seria szarych symboli wiruje wokół głowy Upadłego, niczym powolny wir, nagle wyrównuje się w dziwny, pokrętny wzór. (Jest w jednym z labiryntów Pani.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24324 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24325 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24326 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24327 /* ~"Labiryntów?"~ */ DO ~FloatRebus(Myself)
~ GOTO 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24328 /* ~"Co możesz mi o niej powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24329 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24330 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24331 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24332 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #21531 /* ~Kolejna seria symboli maszeruje jak szereg niewolników niosących ciężki ładunek.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24333 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24334 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24335 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #21532 /* ~Kolejna seria symboli maszeruje jak szereg niewolników niosących ciężki ładunek. Wydaje ci się, że mówi cos o 'uwięzieniu' lub 'karze'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24336 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24337 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24338 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24339 /* ~"Jest uwięziona? Wiesz jak mogę do niej dotrzeć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24340 /* ~"Co możesz mi o niej powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24341 /* ~"Wydaje mi się, że zrozumiałem wystarczająco wiele. Mam jeszcze kilka pytań."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24342 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24343 /* ~"Wydaje mi się, że zrozumiałem wystarczająco wiele. Mam jeszcze kilka pytań."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24344 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #21533 /* ~Kolejna seria symboli maszeruje jak szereg niewolników niosących ciężki ładunek. (Jej wola nie zgadzała się z wolą Pani. Ravela została ukarana. Została uwięziona w labiryncie.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24345 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24346 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24347 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24348 /* ~"Co Ravela zrobiła?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24349 /* ~"Wiesz jak mogę się dostać do tego labiryntu?"~ */ DO ~FloatRebus(Myself)
~ GOTO 45
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24350 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24351 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24352 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24353 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #21534 /* ~Obok Upadłego pojawił się biały okrąg, nagle pojawia się w nim wyraźna rysa.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24354 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24355 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24356 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
END

IF ~~ THEN BEGIN 41 // from: 32.4 33.4 35.4 38.4 44.3
  SAY #21535 /* ~Obok Upadłego pojawia się biały okrąg, nagle pojawia się w nim wyraźna rysa. Wydaje ci się, że mówi coś o 'rozłupaniu klatki/miasta...' ale nie jesteś pewien. Może Ravela chciała zrobić wyłom?~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24357 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24358 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24359 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24360 /* ~"Wiesz gdzie ona jest?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24361 /* ~"Wydaje mi się, że zrozumiałem wystarczająco wiele. Mam jeszcze kilka pytań."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24362 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24363 /* ~"Wydaje mi się, że zrozumiałem wystarczająco wiele. Mam jeszcze kilka pytań."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24364 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.4 39.3 45.3
  SAY #21536 /* ~Obok Upadłego pojawił się biały okrąg, nagle pojawia się w nim wyraźna rysa - instynktownie rozpoznajesz, że okrąg symbolizuje to miasto, Sigil. (Chciała otworzyć Klatkę.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24365 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24366 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24367 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24368 /* ~"Wiesz gdzie ona jest?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24369 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24370 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24371 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24372 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #21537 /* ~Z Upadłego wydobywają się kolejne strumienie rebusów, ale krążą niżej, jakby były bardzo ciężkie.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24373 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24374 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24375 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
END

IF ~~ THEN BEGIN 44 // from: 38.3
  SAY #21538 /* ~Z Upadłego wydobywają się kolejne strumienie rebusów, ale krążą niżej, jakby były bardzo ciężkie. O ile rozumiesz Upadły nie wie jak się do niej dostać... i że nie powinno się tego próbować.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24376 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24377 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24378 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24379 /* ~"Co możesz mi o niej powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24380 /* ~"Wydaje mi się, że zrozumiałem wystarczająco wiele. Mam jeszcze kilka pytań."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24381 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24382 /* ~"Wydaje mi się, że zrozumiałem wystarczająco wiele. Mam jeszcze kilka pytań."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24383 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 39.4
  SAY #21539 /* ~Z Upadłego wydobywają się kolejne strumienie rebusów, ale krążą niżej, jakby były bardzo ciężkie. (Nie wiem gdzie można ją znaleźć. Nie powinna zostać odnaleziona. Jest w mocy Pani.) Symbole w ostatnim zdaniu mają ostre krawędzie, przypominają ci ostrze sztyletu.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24384 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24385 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24386 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24387 /* ~"Co możesz mi o niej powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24388 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24389 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24390 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24391 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #21540 /* ~Zanim możesz zmienisz temat wokół Upadłego pojawia się kolejna seria symboli - ich układ przypomina 'X', pulsują jak słabe serce.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24392 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24393 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24394 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 47 // from: 32.5 35.5 38.5 41.4 44.4
  SAY #21541 /* ~Zanim możesz zmienisz temat wokół Upadłego pojawia się kolejna seria symboli - ich układ przypomina 'X', pulsują jak słabe serce. Wydaje ci się, że cię ostrzega być zostawił Ravelę w spokoju.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24395 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24396 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24397 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24398 /* ~"Będę o tym pamiętał. Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24399 /* ~"Możliwe, że i tak będę musiał ją znaleźć, Upadły. Żegnaj."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 33.5 36.5 39.5 42.4 45.4
  SAY #21542 /* ~Zanim możesz zmienisz temat wokół Upadłego pojawia się kolejna seria symboli - ich układ przypomina 'X', pulsują jak słabe serce. (Nie szukaj jej. Bije w niej złe serce. Zrobi wszystko co tylko będzie w jej mocy, by cię zranić.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24400 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24401 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24402 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24403 /* ~"Będę o tym pamiętał. Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24404 /* ~"Możliwe, że i tak będę musiał ją znaleźć, Upadły. Żegnaj."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #21543 /* ~Zanim możesz wyjść, wokół Upadłego pojawia się kolejna seria symboli - ich układ przypomina 'X', pulsują jak słabe serce.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24405 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24406 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24407 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 50 // from: 32.6 35.6 38.6 41.5 44.5
  SAY #21544 /* ~Zanim możesz wyjść temat wokół Upadłego pojawia się kolejna seria symboli - ich układ przypomina 'X', pulsują jak słabe serce. Wydaje ci się, że cię ostrzega być zostawił Ravelę w spokoju.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24408 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24409 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24410 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24411 /* ~"Będę o tym pamiętał. Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24412 /* ~"Możliwe, że i tak będę musiał ją znaleźć, Upadły. Żegnaj."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 33.6 36.6 39.6 42.5 45.5
  SAY #21545 /* ~Zanim możesz zmienisz temat wokół Upadłego pojawia się kolejna seria symboli - ich układ przypomina 'X', pulsują jak słabe serce. (Nie szukaj jej. Bije w niej złe serce. Zrobi wszystko co tylko będzie w jej mocy, by cię zranić.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24413 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24414 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24415 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24416 /* ~"Będę o tym pamiętał. Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24417 /* ~"Możliwe, że i tak będę musiał ją znaleźć, Upadły. Żegnaj."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #21546 /* ~Upadły przez chwilę bada ramię, śledząc palcem wzór. Potem podnosi wzrok i pojawia się seria rebusów, na początku zamglonych, potem szybko się wyostrzają.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24418 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24419 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24420 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
END

IF ~~ THEN BEGIN 53 // from: 13.16
  SAY #21547 /* ~Upadły przez chwilę go bada, śledząc palcem wzór. Potem podnosi wzrok i pojawia się seria rebusów, na początku zamglonych, potem szybko się wyostrzają. Wydaje ci się, że powiedział że to twoje ramię, że tatuaże mówią o tobie i 'czwórce innych'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24421 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24422 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24423 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24424 /* ~"Jaka czwórka innych?"~ */ DO ~FloatRebus(Myself)
~ GOTO 56
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24425 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24426 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 13.17
  SAY #21548 /* ~Upadły przez chwilę go bada, śledząc palcem wzór. Potem podnosi wzrok i pojawia się seria rebusów, na początku zamglonych, potem szybko się wyostrzają. (To twoje ramię. Tatuaże są moje. Jeden z nich mówi o czasach, kiedy podróżowałeś z czwórką innych.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24427 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24428 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24429 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24430 /* ~"Jaką czwórką innych?"~ */ DO ~FloatRebus(Myself)
~ GOTO 57
  IF ~  Global("Translate_Dabus","GLOBAL",0)
GlobalLT("Fell","GLOBAL",2)
~ THEN REPLY #24431 /* ~"To twoje tatuaże? Spotkaliśmy się wcześniej?"~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24432 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24433 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #21549 /* ~Z głowy Upadłego wylatują cztery sznury symboli, odpowiadają wzorowi z odciętego ramienia. Przez chwilę unoszą się niezależnie, potem tworzą ogniwa, a w końcu łańcuch.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24434 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24435 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
END

IF ~~ THEN BEGIN 56 // from: 53.3
  SAY #21550 /* ~Z głowy Upadłego wylatują cztery sznury symboli, odpowiadają wzorowi z odciętego ramienia. Trudno przetłumaczyć te symbole i w końcu nie jesteś pewien, czy dobrze je przełożyłeś. Wydaje ci się, że powiedział, 'niekochana, która kocha', 'jeden który widzi', ktoś 'chowany' i ostatni 'w okowach'. Gdy kończy tłumaczyć przez chwilę unoszą się niezależnie, potem tworzą ogniwa, a w końcu łańcuch.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24436 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24437 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24438 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24439 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 54.3
  SAY #21551 /* ~Z głowy Upadłego wylatują cztery sznury symboli, odpowiadają wzorowi z odciętego ramienia. (Mówią o czwórce. Mam ci opowiedzieć o ich sercach?)~ */
  IF ~~ THEN REPLY #24440 /* ~"Tak."~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24274 /* ~Upadły przetłumaczył runy z mojej starej ręki... powiedział, że opisują one czwórkę, która kiedyś podążała ze mną jedną ścieżką. Ta czwórka to: 'jedna niekochana, która kocha niekochającego', 'jeden, który nie widzi tego co inni, ale widzi czego inni nie widzą', 'jeden, który jest chowańcem i związany służbą' oraz 'jeden, który jest niewolnikiem, a jego łańcuchami jest słowo'. Powiedział, że wszyscy byli równie udręczeni co ja, a poprzez swoje cierpienie także innych skazywałem na ból.~ */ GOTO 59
  IF ~~ THEN REPLY #24441 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #24442 /* ~"Nie chcę wiedzieć nic więcej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #21552 /* ~Upadły kiwa głową, pojawiające się wokół niego symbole są jak świetliki. Z tego co potrafisz odczytać wynika, że mówi, że te na twoich plecach zostały wykonane bardzo staranną dłonią i że są to wskazówki. Ten na twoim ramieniu oznacza 'torturę' lub 'udrękę'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24444 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24445 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24446 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #21553 /* ~Symbole wirują przed tobą, składasz je w całość:

(Jedna niekochana, która kocha niekochającego.)

(Jeden, który nie widzi tego co inni, ale widzi czego inni nie widzą.)

(Jeden, który jest chowańcem i związany służbą.)

(Jeden, który jest niewolnikiem, a jego łańcuchami jest słowo.)

Gdy kończysz tłumaczyć cztery strumienie znaków tworzą ogniwa, a potem formują łańcuch... łańcuch wygina się, aż tworzy symbol, który rozpoznajesz.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24447 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24448 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24449 /* ~"Ten symbol... co on oznacza?"~ */ DO ~FloatRebus(Myself)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from:
  SAY #21554 /* ~Symbol się wyostrza, jego krawędzie niemal rażą twoje oczy. Gdy tak się unosi Upadły wskazuje głową twą lewą rękę, twój bark.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24450 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24451 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
END

IF ~~ THEN BEGIN 61 // from: 59.2
  SAY #21555 /* ~Symbol się wyostrza, jego krawędzie niemal rażą twoje oczy. (To udręka. To ona przyciąga do ciebie udręczone dusze.) Upadły wskazuje głową twą lewą rękę, twój bark. (Ciało wie kiedy cierpi, nawet jeśli umysł zapomniał. Tak więc zawsze nosisz ten symbol.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24452 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24453 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24454 /* ~"Wspomniałeś, że na ramieniu były inne tatuaże? Jakie?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24455 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24456 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #21556 /* ~Upadły ponownie bada twe ramię, śledząc na jego powierzchni inne, wyblakłe tatuaże. Gdy tak robi, każdy z nich pojawia się nad jego głową jako symbol, początkowo zamglony, później szybko się wyostrza. Odwraca się do ciebie i czeka.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24457 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24458 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24459 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 63 // from: 61.2
  SAY #21557 /* ~Upadły ponownie bada twe ramię, śledząc na jego powierzchni inne, wyblakłe tatuaże. Gdy tak robi, każdy z nich pojawia się nad jego głową jako symbol, początkowo zamglony, później szybko się wyostrza. Odwraca się do ciebie i czeka. (Zapomniane, teraz przypomniane. Jeśli chcesz możesz znowu je nosić.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24460 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24461 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24462 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24463 /* ~"Chciałbym wiedzieć, co to za tatuaże... mogę zobaczyć jakie masz dostępne tatuaże?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24464 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24465 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #21558 /* ~Upadły przez chwilę obserwuje twoje ciało, obchodzi cię dookoła. Ilustruje symbolem każdy badany tatuaż. W końcu staje przed tobą.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24466 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24467 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24468 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
END

IF ~~ THEN BEGIN 65 // from: 13.18
  SAY #21559 /* ~Upadły przez chwilę obserwuje twoje ciało, obchodzi cię dookoła. Ilustruje symbolem każdy badany tatuaż. W końcu staje przed tobą. Z tego co możesz odczytać z unoszących się symboli wynika, że to nie są jego tatuaże.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24469 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24470 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24471 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24472 /* ~"Będę o tym pamiętał. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24473 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 13.19
  SAY #21560 /* ~Upadły przez chwilę obserwuje twoje ciało, obchodzi cię dookoła. Ilustruje symbolem każdy badany tatuaż. W końcu staje przed tobą. (Znam je. Żaden nie wyszedł spod mojej ręki.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24474 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24475 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24476 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24477 /* ~"Co możesz mi o nich powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 68
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24478 /* ~"Będę o tym pamiętał. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24479 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #21561 /* ~Upadły kiwa głową, symbole pojawiają się wokół niego jak świetliki.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24480 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24481 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24482 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 68 // from: 66.3
  SAY #21562 /* ~Upadły kiwa głową, symbole pojawiają się wokół niego jak świetliki. (Te na twoich plecach zostały starannie narysowane, to wskazówki dla umysłu, który zapomniał sam siebie. Symbol na twoim lewym barku to znak udręki.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24483 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24484 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24485 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24486 /* ~"Udręki?"~ */ DO ~FloatRebus(Myself)
~ GOTO 70
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24487 /* ~"Będę o tym pamiętał. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24488 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #21563 /* ~Symbol się wyostrza, jego krawędzie niemal rażą twoje oczy. Upadły wskazuje głową twoje lewe ramię, potem bark.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24489 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24490 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24491 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 70 // from: 68.3
  SAY #21564 /* ~Symbol się wyostrza, jego krawędzie niemal rażą twoje oczy. (To udręka. To ona przyciąga do ciebie udręczone dusze.) Upadły wskazuje głową twą lewą rękę, twój bark. (Ciało wie kiedy cierpi, nawet jeśli umysł zapomni. Tak więc zawsze nosisz tę runę.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24492 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24493 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24494 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24495 /* ~"Będę o tym pamiętał. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24496 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #21565 /* ~Przez chwilę Upadły nie reaguje... potem nad jego głową pojawiają się powoli, groźnie, trzy symbole, każdy z nich rzuca długi cień.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24497 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24498 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24499 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
END

IF ~~ THEN BEGIN 72 // from: 13.12
  SAY #21566 /* ~Przez chwilę Upadły nie reaguje... potem nad jego głową pojawiają się powoli, groźnie, trzy symbole, każdy z nich rzuca długi cień. Wydaje ci się, że mówi coś o... cieniach.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24500 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24501 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24502 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24503 /* ~"Cienie?"~ */ DO ~FloatRebus(Myself)
~ GOTO 75
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24504 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24505 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 13.13
  SAY #21567 /* ~Przez chwilę Upadły nie reaguje... potem nad jego głową pojawiają się powoli, groźnie, trzy symbole, każdy z nich rzuca długi cień. (Cienie.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24506 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24507 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24508 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24509 /* ~"Cienie?"~ */ DO ~FloatRebus(Myself)
~ GOTO 76
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24510 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24511 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #21568 /* ~Trzy symbole wirują wokół siebie, każdy pozostawia nikły, czarny, zamglony ślad. Tworzą nierówną linię, jak zęby i szpony i *mnożą się*. Trzy rozdzielają się na trzy, te znowu na trzy, aż całe pomieszczenie zdaje się być pokryte rojem cieni.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24512 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24513 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24514 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
END

IF ~~ THEN BEGIN 75 // from: 72.3
  SAY #21569 /* ~Trzy symbole wirują wokół siebie, każdy pozostawia nikły, czarny, zamglony ślad. Tworzą nierówną linię, jak zęby i szpony i *mnożą się*. Trzy rozdzielają się na trzy, te znowu na trzy, aż całe pomieszczenie zdaje się być pokryte rojem cieni. Zdaje się mówić, że zostałeś zabity przez wiele... 'cieni'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24515 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24516 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24517 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24518 /* ~"Dlaczego?"~ */ DO ~FloatRebus(Myself)
~ GOTO 78
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24519 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24520 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 73.3
  SAY #21570 /* ~Trzy symbole wirują wokół siebie, każdy pozostawia nikły, czarny, zamglony ślad. Tworzą nierówną linię, jak zęby i szpony i *mnożą się*... gdzie były trzy jest dziewięć, dziewięć zmienia się w dwadzieścia siedem, aż całe pomieszczenie zdaje się być pokryte rojem cieni. (Wiele cieni. Wyszły z ciemności, otoczyły cię i zostawiły byś umarł.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24521 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24522 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24523 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24524 /* ~"Dlaczego?"~ */ DO ~FloatRebus(Myself)
~ GOTO 79
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24525 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24526 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #21571 /* ~Upadły ponownie bada twe ramię, śledząc na jego powierzchni inne, wyblakłe tatuaże. Gdy tak robi, każdy z nich pojawia się nad jego głową jako symbol, początkowo zamglony, później szybko się wyostrza. Odwraca się do ciebie. Jeśli dobrze tłumaczysz symbol, to mówi, że zapomniał o tych tatuażach, ale teraz sobie przypomina.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24527 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24528 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24529 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 78 // from: 75.3
  SAY #21572 /* ~Niewyraźne symbole zlewają się w ten jedno, rozwiewają się, by zastąpił je jeden prosty symbol. Upadły zdaje się nie wiedzieć dlaczego.~ */
  IF ~~ THEN REPLY #24530 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #24531 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.3
  SAY #21573 /* ~Niewyraźne symbole zlewają się w ten jeden, rozwiewają się, by zastąpił je jeden prosty. (Nie wiem.)~ */
  IF ~~ THEN REPLY #24532 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #24533 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #21574 /* ~Wokół upadłego, jeden po drugim, powoli pojawia się ciąg symboli.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24534 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24535 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24536 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
END

IF ~~ THEN BEGIN 81 // from: 13.8 13.10
  SAY #21575 /* ~Wokół Upadłego, jeden po drugim, powoli pojawia się ciąg symboli. Wydaje ci się, że mówi, że to jakaś galeria... galeria o *tobie*. Następną część trudno przetłumaczyć, ale wydaje ci się, że Upadły mówi, że... jest mu smutno z twojego powodu.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24537 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24538 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24539 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24540 /* ~"Smutno? Dlaczego?"~ */ DO ~FloatRebus(Myself)
~ GOTO 84
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24541 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24542 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 13.9 13.11
  SAY #21576 /* ~Wokół upadłego, jeden po drugim, powoli pojawia się ciąg symboli. (To moja galeria. Twoje porzucone skóry to moje płótna. Podziwiam cię. Jest mi smutno z twojego powodu.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24543 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24544 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24545 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24546 /* ~"Smutno z mojego powodu? Dlaczego?"~ */ DO ~FloatRebus(Myself)
~ GOTO 85
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24547 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24548 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #21577 /* ~Wokół upadłego pojawia się kolejny ciąg symboli, tym razem tworzą koło.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24549 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24550 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24551 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
END

IF ~~ THEN BEGIN 84 // from: 81.3
  SAY #21578 /* ~Wokół upadłego pojawia się kolejny ciąg symboli, tym razem tworzą koło. Mówi coś o byciu *naznaczonym* i udręczonym. Jest jeszcze jedna część, której nie potrafisz przetłumaczyć, ale chyba dotyczy trwałego bólu.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24552 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24553 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24554 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24555 /* ~"Co masz na myśli?"~ */ DO ~FloatRebus(Myself)
~ GOTO 87
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24556 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24557 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 82.3
  SAY #21579 /* ~Wokół Upadłego pojawia się kolejny ciąg symboli, tym razem tworzą koło. (Na twym ciele znajduje się znak udręki. Na nim wzrosły tragedie i straty, jak kamienie na fundamentach. Zniosłeś wiele bólu.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24558 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24559 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24560 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24561 /* ~"Co masz na myśli?"~ */ DO ~FloatRebus(Myself)
~ GOTO 88
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24562 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24563 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #21580 /* ~Nad głową Upadłego pojawia się długi strumień rebusów, nagle jak macki otacza jego ręce.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24586 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24587 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24588 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
END

IF ~~ THEN BEGIN 87 // from: 84.3
  SAY #21581 /* ~Nad głową Upadłego pojawia się długi strumień rebusów, nagle jak macki otacza jego ręce. Zdaje się mówić, że podziwia cię, że zniosłeś 'straty'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24589 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24590 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24591 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24592 /* ~"Mów dalej..."~ */ DO ~FloatRebus(Myself)
~ GOTO 90
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24593 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24594 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 85.3
  SAY #21582 /* ~Nad głową Upadłego pojawia się długi strumień rebusów, nagle jak macki otacza jego ręce. (Podziwiam cię, bo nigdy się nie poddałeś, bez względu na ciężar strat, pomimo tego, że wciąż dźwigasz ich łańcuchy.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24595 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24596 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24597 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24598 /* ~"Mów dalej..."~ */ DO ~FloatRebus(Myself)
~ GOTO 91
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24599 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24600 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #21583 /* ~Nad głową Upadłego pojawia się długi sznur rebusów, potem spada przykrywając go jak płaszcz.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24601 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24602 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24603 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
END

IF ~~ THEN BEGIN 90 // from: 87.3
  SAY #21584 /* ~Nad głową Upadłego pojawia się długi sznur rebusów, potem spada przykrywając go jak płaszcz. Zadaje się mówić, że te 'straty' wypełniają twe życie... i twoje inne 'życia'. Ale znowu nie jesteś pewien, co oznacza reszta symboli z tej wiadomości.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24604 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24605 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24606 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24607 /* ~"Ee... jest jeszcze coś co możesz mi powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24608 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24609 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 88.3
  SAY #21585 /* ~Nad głową Upadłego pojawia się długi sznur rebusów, potem spada przykrywając go jak płaszcz. (Te straty wypełniają to życie i wszystkie poprzednie. Zrzucałeś życia jak wąż skórę. Badasz nieskończone ścieżki życia.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24610 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24611 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24612 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24613 /* ~"Powiedz coś więcej."~ */ DO ~FloatRebus(Myself)
~ GOTO 93
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24614 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24615 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #21586 /* ~Nad głową Upadłego pojawia się długi sznur rebusów, potem nagle spada na podłogę, spływając jak cień.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24616 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24617 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24618 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
END

IF ~~ THEN BEGIN 93 // from: 91.3
  SAY #21587 /* ~Nad głową Upadłego pojawia się długi sznur rebusów, potem nagle spada na podłogę, spływając jak cień. (Potraktuj to jak ostrzeżenie, każde twoje życie rzuca cień na egzystencję. Musisz się udać do miejsca, gdzie cienie oszalały, a żale pobruździły ziemię.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24619 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24620 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24621 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24622 /* ~"Jest jeszcze coś co możesz mi powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 95
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24623 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24624 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 90.3 106.3
  SAY #21588 /* ~Obok Upadłego, pojawia się krótka seria cienkich jak papier rebusów, które potem rozsypują się w drobny pył. Wydaje ci się, że właśnie cię ostrzegł, byś podczas podróży niczego nie podpisywał.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24625 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24626 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24627 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24628 /* ~"Dobrze."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24629 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24630 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24631 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24632 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24633 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.3
  SAY #21589 /* ~Obok Upadłego, pojawia się krótka seria cienkich jak papier rebusów, potem rozsypują się w drobny pył. (Niczego nie podpisuj.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24634 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24635 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24636 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24637 /* ~"Dobrze."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24638 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24639 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24640 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24641 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24642 /* ~"Dość już usłyszałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #21590 /* ~Pojawia się kolejna seria rebusów, tworzy spiralę - jest w nich coś z pytania.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24643 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24644 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24645 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
END

IF ~~ THEN BEGIN 97 // from: 94.3 94.4 94.5 94.6
  SAY #21591 /* ~Pojawia się kolejna seria rebusów, tworzy spiralę - jest w nich coś z pytania. Wydaje ci się, że właśnie zapytał czy czujesz się... 'kompletny'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24646 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24647 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24648 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24649 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 100
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24650 /* ~"To nie twoja sprawa."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24651 /* ~Kłamstwo: "Tak, czuję się kompletny. Dlaczego pytasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24652 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 95.3 95.4 95.5 95.6
  SAY #21592 /* ~Pojawia się kolejna seria rebusów, tworzy spiralę - jest w nich coś z pytania. (Czujesz się kompletny?)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24653 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24654 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24655 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24656 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 101
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24657 /* ~"To nie twoja sprawa."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24658 /* ~Kłamstwo: "Tak, czuję się kompletny. Dlaczego pytasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24659 /* ~"Nie chcę o tym dłużej rozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #21593 /* ~Upadły kiwa głową, a wokół niego, jak aureola pojawia się ciąg symboli.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24660 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24661 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24662 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
END

IF ~~ THEN BEGIN 100 // from: 97.3
  SAY #21594 /* ~Upadły kiwa głową, a wokół niego, jak aureola pojawia się ciąg symboli. Wydaje ci się, że mówi byś 'był silny' i 'nie tracił wiary'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24663 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24664 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24665 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24666 /* ~"Postaram się. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #24667 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 98.3
  SAY #21595 /* ~Upadły kiwa głową, a wokół niego, jak aureola pojawia się ciąg symboli. (Jesteś silny. Nie trać wiary, a znowu będziesz kompletny.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24668 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24669 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24670 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24671 /* ~"Postaram się. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24672 /* ~"Dzięki, Upadły. Może wrócę później, jak będę miał jakieś pytania. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 97.4 97.5 98.4 98.5
  SAY #21596 /* ~Upadły nie reaguje.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24673 /* ~"Dobra, nieważne. Mam kilka innych pytań..."~ */ EXTERN ~DANNAH~ 131
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24674 /* ~"Dobra, nieważne. Mam kilka innych pytań..."~ */ EXTERN ~DDAKKON~ 77
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24675 /* ~"Dobra, nieważne. Mam kilka innych pytań..."~ */ EXTERN ~DGRACE~ 15
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24676 /* ~"Dobra, nieważne. Mam kilka innych pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24677 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24678 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 103
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24679 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 104
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24680 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 105
END

IF ~~ THEN BEGIN 103 // from: 102.5
  SAY #21597 /* ~Nagle Upadły odwraca się do Anny, a nad jego lewym ramieniem pojawia się mały strumień rebusów.~ */
  IF ~~ THEN REPLY #24681 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 104 // from: 102.6
  SAY #21598 /* ~Nagle Upadły odwraca się do Anny, a nad jego lewym ramieniem pojawia się mały strumień rebusów. Ledwo możesz je odczytać... wydaje ci się, że mówią coś o sercu Anny, ale nie jesteś pewien co... unoszą się tylko przez chwilę, potem znikają.~ */
  IF ~~ THEN REPLY #24682 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 105 // from: 102.7
  SAY #21599 /* ~Nagle Upadły odwraca się do Anny, a nad jego lewym ramieniem pojawia się mały strumień rebusów. Ledwo możesz je odczytać... (Nie trać swego serca.)~ */
  IF ~~ THEN REPLY #24683 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 106 // from:
  SAY #21600 /* ~Nad głową Upadłego pojawia się długi sznur rebusów, potem nagle spada na podłogę, spływając jak cień. Wydaje ci się, że cię ostrzega przed cieniami. Jest tam coś o miejscu smutków, ale znaczenie symboli jest niejasne.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24684 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24685 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24686 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24687 /* ~"Jest jeszcze coś co możesz mi powiedzieć?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24688 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24689 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #21601 /* ~Symbol się wyostrza, jego krawędzie niemal rażą twoje oczy. Upadły wskazuje głową twą lewą rękę, twój bark. Z tego co potrafisz odczytać, wynika, że znak na twoim ramieniu to 'udręka'. Następna seria symboli zdaje się dawać do zrozumienia, że cierpisz, nawet jeśli zapomniałeś.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24690 /* ~"Anno, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24691 /* ~"Dak'konie, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24692 /* ~"Sławo, co on powiedział?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24693 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24694 /* ~"Będę musiał wrócić, gdy znajdę lepszego tłumacza. Żegnaj."~ */ EXIT
END
