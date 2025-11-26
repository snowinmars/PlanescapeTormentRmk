// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7080 /* ~Grabarz owa ubrana jest w długie ciemne szaty, w których rękawach skrywa swoje dłonie. Ma pochyloną głowę i w określonym tempie, wraz z otaczającymi ja Grabarzami, snuje pieśń.~ */
  IF ~~ THEN REPLY #7081 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #8241 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #8201 /* ~Wydaje się, że cię usłyszała, nie podnosi jednakże wzroku.~ */
  IF ~~ THEN REPLY #8242 /* ~"Chciałbym porozmawiać z tobą przez chwilę."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8243 /* ~Wsłuchaj się w ich śpiew.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8244 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8245 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8246 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8247 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8248 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8249 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8250 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #8202 /* ~Wszyscy Grabarze utrzymują taki sam ton i rytm. Co kilka minut pieśń wzmaga się, stając się prawie krzykiem, po czym zanika powoli w przypominający echo sposób. Gdy już kończy ona wybrzmiewać, Grabarze recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swą pieśń na powrót.~ */
  IF ~~ THEN REPLY #8251 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #8252 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #8203 /* ~Grabarz unosi głowę. Nie przestaje śpiewać - wciąż utrzymuje to samo tempo i rytm, co otaczający ją Grabarze.~ */
  IF ~~ THEN REPLY #8253 /* ~"Co robicie?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8254 /* ~"Opłakuję zmarłą osobę."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8255 /* ~"Przyszedłem w imieniu osoby, która straciła kogoś."~ */ GOTO 35
  IF ~~ THEN REPLY #8256 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #8204 /* ~Grabarz ignoruje cię. Pochyla głowę i wznawia śpiew.~ */
  IF ~~ THEN REPLY #8257 /* ~"Chciałbym z tobą porozmawiać."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8258 /* ~Wsłuchaj się w ich śpiew.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8259 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8260 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8261 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8262 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8263 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8264 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8265 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #8205 /* ~Opłakująca przerywa nagle i zaczyna ci się przyglądać. "Czy cierpisz z powodu tych, którzy odeszli?"~ */
  IF ~~ THEN REPLY #8266 /* ~"Nie. Śmierć nie jest w stanie zachwiać moimi emocjami."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #8267 /* ~Prawda: "Tak... Jestem przekonany, że ponoszę odpowiedzialność za śmierć niewinnej kobiety, Deionarry. Ale nie tylko to mnie gnębi. Obwiniam się również za żal, o jaki przyprawiłem jej ojca."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #8268 /* ~Prawda: "Tak... Czuje się odpowiedzialny za śmierć niewinnego mężczyzny, Zachariasza. Jego odejście bardzo mnie dotknęło."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #8269 /* ~Prawda: "Tak... Obwiniam się za śmierć wielu niewinny osób z różnych zakątków sfer. Ciężar cierpienia spowodowany tą świadomością przerasta to, co potrafiłbym sam udźwignąć."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8270 /* ~"Nie ja. Jest pewna kobieta - Żona Angyara - która straciła syna. Balast cierpienia bardzo jej ciąży."~ */ GOTO 9
  IF ~~ THEN REPLY #8271 /* ~Kłamstwo: "Nie... Mówię w imieniu przyjaciela, ech... Adahna. To on jest tym, który cierpi z powodu zmarłej osoby."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8272 /* ~"Tak. Ta niedawna śmierć dostarczyła mi wiele cierpienia i bólu."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Cóż, uch, zanim się zgodzę, mam parę pytań do ciebie..."~ */ GOTO 20
  IF ~~ THEN REPLY #8273 /* ~"Wybacz... Przejęzyczyłem się. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #8206 /* ~"Będziemy opłakiwać ból twój i jej ojca, jeśli nie macie nic przeciwko temu."~ */
  IF ~~ THEN REPLY #8274 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie ból jej ojca i mój."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #8275 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #8207 /* ~"Będziemy opłakiwać twój ból, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #8276 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie mój ból."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #8277 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #8208 /* ~"Będziemy opłakiwać twój ból, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #8278 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie mój ból."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #8279 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #8209 /* ~"Będziemy opłakiwać jej ból, jeśli nie ma nic przeciwko temu."~ */
  IF ~~ THEN REPLY #8280 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie jej ból."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #8281 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #8210 /* ~"Będziemy opłakiwać jego ból, jeśli nie ma nic przeciwko temu."~ */
  IF ~~ THEN REPLY #8282 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie jego ból."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8283 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #8211 /* ~Grabarz przytakuje i wznawia śpiew.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8284 /* ~Wsłuchaj się w ich śpiew.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8285 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8286 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8287 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8288 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8289 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8290 /* ~Wsłuchaj się w ich śpiew.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8291 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.8 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #8212 /* ~Grabarz pochyla głowę i wznawia śpiew.~ */
  IF ~~ THEN REPLY #8292 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #8213 /* ~"Jesteśmy w żałobie."~ */
  IF ~~ THEN REPLY #8293 /* ~"Kto umarł?"~ */ GOTO 14
  IF ~  False()
Global("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #8294 /* ~"Myślałem, że wy, Grabarze, stoicie ponad opłakiwaniem i uczuciami."~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8295 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8296 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8297 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8298 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8299 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8300 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #8301 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #8214 /* ~"My nie opłakujemy umarłych. Opłakujemy żywych."~ */
  IF ~~ THEN REPLY #8302 /* ~"Żywych?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8303 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8304 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8305 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8306 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8307 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8308 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #8309 /* ~"Rozumiem... Mam inne pytania..."~ */ GOTO 20
  IF ~~ THEN REPLY #8310 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #8215 /* ~"Opłakujemy żywych, którzy odczuwają stratę z powodu tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #8311 /* ~"Dlaczego?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8312 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8313 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8314 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8315 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8316 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8317 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #8318 /* ~"Rozumiem... Mam inne pytania..."~ */ GOTO 20
  IF ~~ THEN REPLY #8319 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #8216 /* ~"Bardzo często, gdy dusza odchodzi w stan Prawdziwej Śmierci, pozostawia za sobą ślad zmartwienia. Gdy odejdzie ktoś, kogo kochaliśmy, towarzyszy temu cierpienie i odczucie straty."~ */
  IF ~~ THEN REPLY #8320 /* ~"Co jest czymś naturalnym..."~ */ GOTO 17
  IF ~~ THEN REPLY #8321 /* ~"Opłakujecie więc żywych, gdyż..."~ */ GOTO 17
  IF ~~ THEN REPLY #8322 /* ~"Prawdziwej Śmierci?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8323 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8324 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8325 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8326 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8327 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8328 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #8329 /* ~"Rozumiem... Mam inne pytania..."~ */ GOTO 20
  IF ~~ THEN REPLY #8330 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #8217 /* ~"Cierpienie i świadomość bycia opuszczonym to silne przeżycia. Tego typu emocje sprawiają, iż żywi zakotwiczają się silniej w tej egzystencji, co uniemożliwia im osiągnięcie Prawdziwej Śmierci, gdy nadejdzie ich czas. Opłakujemy żywych, którymi targają takie uczucia."~ */
  IF ~~ THEN REPLY #8331 /* ~"Prawdziwej Śmierci?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8332 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8333 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8334 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8335 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8336 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8337 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #8338 /* ~"Rozumiem... Mam inne pytania..."~ */ GOTO 20
  IF ~~ THEN REPLY #8339 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #8218 /* ~"Zwie się ją czasami śmiercią ostateczną. Prawdziwa Śmierć jest wyzwoleniem z tej złudnej, przepełnionej bólem egzystencji. To uwolnienie się od emocji. Uwolnienie od rozsądku. Wyzwolenie się z tych skorup."~ */
  IF ~~ THEN REPLY #8340 /* ~"Zdaje się to być odejściem w niepamięć."~ */ GOTO 19
  IF ~~ THEN REPLY #8341 /* ~"I dlatego opłakujecie żywych?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8342 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8343 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8344 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8345 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8346 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8347 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #8348 /* ~"Rozumiem... Mam inne pytania..."~ */ GOTO 20
  IF ~~ THEN REPLY #8349 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8219 /* ~Grabarz przytakuje. "Niektórzy ją tak nazywają, ale to nie jest zbytnio trafna nazwa."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8350 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8351 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8352 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8353 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8354 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8355 /* ~"Kogo w szczególności opłakujecie?"~ */ GOTO 40
  IF ~~ THEN REPLY #8356 /* ~"Mniejsza z tym. Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #8357 /* ~"Sądzę, że dość już usłyszałem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #8220 /* ~Grabarz czeka.~ */
  IF ~~ THEN REPLY #8358 /* ~"Co robicie?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #8359 /* ~"Dlaczego wasza pieśń się zmieniła?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8360 /* ~"Opłakuję zmarłą osobę."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8361 /* ~"Jestem tu w imieniu osoby, która kogoś straciła."~ */ GOTO 35
  IF ~~ THEN REPLY #8362 /* ~"Posłucham waszego śpiewu."~ */ GOTO 11
  IF ~~ THEN REPLY #8363 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #8221 /* ~Wszyscy Grabarze utrzymują jednakowy ton i rytm. Ta pieśń jednak, w odróżnieniu od tej, którą usłyszałeś za pierwszym razem, zmienia się cyklicznie niczym fale uderzające o morskie wybrzeże - to napiera, to cofa się. Przemyśleniu temu towarzyszy przebłysk wspomnień...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #8364 /* ~Spróbuj sobie przypomnieć...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #8365 /* ~Spróbuj sobie przypomnieć...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #8366 /* ~Spróbuj sobie przypomnieć...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #8367 /* ~Spróbuj sobie przypomnieć...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #33957 /* ~Odrzuć wspomnienie.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #8222 /* ~Przypominasz sobie mgliście, jak stoisz na dalekim brzegu... gdzieś, w jakimś oddalonym stąd miejscu. Jest ktoś z tobą - kobieta. Stoi po twojej lewej stronie, poza twym polem widzenia i nie możesz jej dostrzec. Gdy próbujesz sięgnąć głębiej pamięcią, wszystko zanika...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8368 /* ~Powróć do rzeczywistości.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8369 /* ~Powrót do rzeczywistości.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #8223 /* ~...i ponownie stoisz pośród opłakujących Grabarzy. Ich pieśń ucichła tak, iż prawie zlała się z ciszą. Kończą ją, recytują kilka wersów opiewających Prawdziwą Śmierć, po czym rozpoczynają swe śpiewy na nowo.~ */
  IF ~~ THEN REPLY #8370 /* ~Wsłuchaj się jeszcze raz.~ */ GOTO 21
  IF ~~ THEN REPLY #8371 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #8224 /* ~Wszyscy Grabarze utrzymują jednakowy ton i rytm. Ta pieśń jednak, w odróżnieniu od tej, którą usłyszałeś za pierwszym razem, śpiewana jest w znacznie wyższej tonacji, brzmi niczym świst wypuszczanej strzały, niczym hulający w wąwozie wiatr. Pieśń zaczyna się i kończy szybko. Kiedy Grabarze milkną, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swe śpiewy na nowo.~ */
  IF ~~ THEN REPLY #8372 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #8373 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #8225 /* ~Wszyscy Grabarze utrzymują jednakowy ton i rytm. Ta pieśń jednak, w odróżnieniu od tej, którą usłyszałeś za pierwszym razem, ma w sobie jakąś energię i spontaniczność - jest nieprzewidywalna, dźwięki zdaje się zmieniać nawet po tym, gdy opuszczą już ich usta. Niezależnie od tego, jak często następują w tej pieśni zmiany, Grabarze pozostają w doskonałej synchronizacji. Kiedy ich pieśń milknie na tyle, iż staje się prawie ciszą, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swe śpiewy na nowo.~ */
  IF ~~ THEN REPLY #8374 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #8375 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #8226 /* ~Pieśń ta, w odróżnieniu od tej zasłyszanej za pierwszym razem, to tylko pojedyncza nuta ciągnąca się przez kilka minut... Przypomina ci to bicie wielkiego dzwonu. Grabarze milkną na chwilę, gdy cichnie ich nuta. Recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swą 'pieśń' na nowo.~ */
  IF ~~ THEN REPLY #8376 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #8377 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #8227 /* ~Pieśń ta, w odróżnieniu od tej zasłyszanej za pierwszym razem, brzmi znacznie subtelniej. Czasami staje się tak cicha, że zdaje się zlewać z dobiegającym z ulic gwarem. Tak gdzieś po minucie Grabarze milkną, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swą 'pieśń' na nowo.~ */
  IF ~~ THEN REPLY #8378 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #8379 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #8228 /* ~Grabarz spogląda na ciebie bez wyrazu. "Nasza pieśń się nie zmieniła. Odkąd zaczęliśmy, śpiewamy ją tak samo."~ */
  IF ~~ THEN REPLY #8380 /* ~"Wasza pieśń się zmieniła... Słyszę różnicę w brzmieniu i rytmie."~ */ GOTO 29
  IF ~~ THEN REPLY #8381 /* ~"Dobrze, mniejsza z tym."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8229 /* ~Grabarz potrząsa głową. "Być może to ty się zmieniłeś."~ */
  IF ~~ THEN REPLY #8382 /* ~"Mam kilka innych pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #8383 /* ~"Być może. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.2 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #8230 /* ~"Opłakuję Iannisa. Boleje on po stracie swej pierwszej i jedynej córki, Deionarry."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #8384 /* ~"Deionarry? Słyszałem o niej. Wiesz może, jak umarła?"~ */ JOURNAL #27450 /* ~Grabarze żałobnicy powiedzieli, że opłakują człowieka o imieniu Iannis, który najwyraźniej jest ojcem kobiety, której ducha spotkałem w Kostnicy. Może Iannis będzie coś wiedział o mnie i Deionarze...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8385 /* ~"Mam jeszcze kilka pytań..."~ */ JOURNAL #27451 /* ~Grabarze żałobnicy powiedzieli, że opłakują człowieka o imieniu Iannis, który stracił swą jedyną córkę, Deionarrę. Z jakiegoś powodu imiona te wydały mi się dziwnie znajome, ale nie wiem dokładnie o kogo chodzi.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8386 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ JOURNAL #27451 /* ~Grabarze żałobnicy powiedzieli, że opłakują człowieka o imieniu Iannis, który stracił swą jedyną córkę, Deionarrę. Z jakiegoś powodu imiona te wydały mi się dziwnie znajome, ale nie wiem dokładnie o kogo chodzi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.3 13.6 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #8231 /* ~"Opłakujemy twój żal po tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #8387 /* ~"Doszedłem już do siebie. Ta osoba, którą opłakiwałeś, zanim zaczęliśmy rozmowę, potrzebuje tego bardziej niż ja."~ */ GOTO 34
  IF ~~ THEN REPLY #8388 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #8389 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.4 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #8232 /* ~"Opłakujemy Żonę Angyara bolejącą z powodu tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #8390 /* ~"Doszła już do siebie. Ta osoba, którą opłakiwałeś, zanim zaczęliśmy rozmowę, potrzebuje tego bardziej niż ona."~ */ GOTO 34
  IF ~~ THEN REPLY #8391 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #8392 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.5 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #8233 /* ~"Opłakujemy Adahna cierpiącego z powodu tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #8393 /* ~"Uch... Adahn doszedł już do siebie. Ta osoba, którą opłakiwałeś, zanim zaczęliśmy rozmowę, potrzebuje tego bardziej niż ona."~ */ GOTO 34
  IF ~~ THEN REPLY #8394 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #8395 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #8234 /* ~"Grabarz przytakuje, po czym pochyla głowę i wznawia śpiew.~ */
  IF ~~ THEN REPLY #8396 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #8397 /* ~Słuchaj.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #8398 /* ~Odejdź.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #8235 /* ~Opłakująca przerywa nagle i zaczyna ci się przypatrywać. "Czy osoba, o której mówisz, czuje żal po tych, którzy odeszli?"~ */
  IF ~~ THEN REPLY #8399 /* ~"Nie. Nie zachwiało to ich emocjami."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8400 /* ~"Tak. Pewna kobieta - żona Angyara - straciła syna. Ciężar cierpienia leży jej na sercu."~ */ GOTO 9
  IF ~~ THEN REPLY #8401 /* ~Kłamstwo: "Ech, tak... Mój przyjaciel, hmm... Adahn... dopiero co stracił kogoś bliskiego. Bardzo boleje z powodu osoby, która odeszła."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8402 /* ~"Tak. Ta niedawna śmierć zesłała im wiele cierpienia i bólu."~ */ GOTO 38
  IF ~~ THEN REPLY #8403 /* ~"Wybacz... Przejęzyczyłem się. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #8236 /* ~"Będziemy opłakiwać twój ból, jeśli sobie tego życzysz."~ */
  IF ~~ THEN REPLY #8404 /* ~"Gdybyś mógł, uśmierzyłoby to znacznie mój ból."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8405 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #8237 /* ~"Okoliczności jej śmierci nie są mi znane."~ */
  IF ~~ THEN REPLY #8406 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #8407 /* ~"Dobrze. To już wszystko, co chciałem wiedzieć."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #8238 /* ~"Będziemy opłakiwać ich ból, jeśli nie mają nic przeciwko temu."~ */
  IF ~~ THEN REPLY #8408 /* ~"Gdybyś mógł, znacznie uśmierzyłoby to ich ból."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #8409 /* ~"Nie, nie ma takiej potrzeby. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 11.6
  SAY #8239 /* ~W odróżnieniu od tej zasłyszanej za pierwszym razem, ciężko jest określić ton obecnej pieśni. Gdy słuchasz, zdajesz sobie sprawę, że jej brzmienie ulega dziwnemu zniekształceniu - tak, jakby powietrze samo w sobie zasysało pieśń.
Po upływie około minuty Grabarze milkną, recytują kilka wersów opiewających 'Prawdziwą Śmierć', po czym rozpoczynają swą 'pieśń' na nowo.~ */
  IF ~~ THEN REPLY #8410 /* ~"Mam parę pytań do ciebie..."~ */ GOTO 3
  IF ~~ THEN REPLY #8411 /* ~Pozwól im śpiewać w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #8240 /* ~"Opłakujemy osobę, o której mówiłeś, że czuje ból po tych, którzy odeszli."~ */
  IF ~~ THEN REPLY #8412 /* ~"Osoba ta doszła już do siebie. Ta osoba, którą opłakiwałeś, zanim zaczęliśmy rozmowę, potrzebuje tego bardziej niż ona."~ */ GOTO 34
  IF ~~ THEN REPLY #8413 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #8414 /* ~"Dzięki. To wszystko, co chciałem wiedzieć."~ */ GOTO 12
END
