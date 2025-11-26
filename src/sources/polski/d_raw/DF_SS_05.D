// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_05~

IF ~  !Global("S_Stone","AR0603",5)
!Global("S_Stone","AR0603",12)
~ THEN BEGIN 0 // from:
  SAY #34216 /* ~To niezwykły, czerwono-pomarańczowy kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47445 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",5)
~ THEN BEGIN 1 // from:
  SAY #47446 /* ~Przewodnik skierował cię do tego niezwykłego, czerwono-pomarańczowego kamienia. Kryje się w nim doznanie 'Pożerająca niecierpliwość'.~ */
  IF ~~ THEN REPLY #47447 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47448 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47449 /* ~Stoisz debatując z Amnasem Okrutnie Powolnym, Strażnikiem Lwiego Klucza, by określić, czy twoje zadanie jest dla niego dostatecznie ważne, by przekazać artefakt pod twoją opiekę. Całe to doznanie to czysta udręka... po każdym jego słowie następuje odpowiednio długa pauza; zanim możesz coś powiedzieć, każdy punkt zostaje wielokrotnie powtórzony. Przedstawiasz argument, a potem czekasz i czekasz i *czekasz* aż wysunie kontrargumenty. Na które pośpiesznie wysuwasz własne... znowu musisz przeczekać kolejną falę mamrotania, nieskończonych kontrargumentów. Nie możesz jednak po prostu obciąć biesowi głowy i zabrać klucza z drgających zwłok...~ */
  IF ~  Global("Sensation05","AR0603",0)
~ THEN REPLY #47450 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation05","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation05","AR0603",1)
~ THEN REPLY #47452 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",12)
~ THEN BEGIN 3 // from:
  SAY #47451 /* ~Przewodnik skierował cię do tego niezwykłego, czerwono-pomarańczowego kamienia. Kryje się w nim doznanie 'wylęknione podniecenie'.~ */
  IF ~~ THEN REPLY #47453 /* ~Zacznij doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47454 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47455 /* ~Wykręcasz głowę, by spojrzeć na dziwne urządzenie zamocowane na twoich plecach... wyrastają z niego cztery skrzydła, każde wykonane ze skóry obciągniętej na wiklinowej ramie. Z miejsca, w którym się znajdujesz, Latający Zamek Dilgyara wygląda jak drobny pyłek zawieszony na stalowo-błękitnym niebie - na mile wokół nic tylko powietrze. "Tak podróżują *wszyscy* w Sferze Powietrza." Mówią. "To proste." Uśmiechasz się z wyższością, odwracasz się i skaczesz z klifu wprost w chłodne powietrze poniżej, zostawiając za sobą żołądek. Gdy nagle skrzydła chwytają wiatr, całym twoim ciałem wstrząsa podmuch, gdy wzbijasz się ponad pustką kierując się do domostwa Księcia Żywiołów...~ */
  IF ~  Global("Sensation12","AR0603",0)
~ THEN REPLY #47456 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation12","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation12","AR0603",1)
~ THEN REPLY #47457 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47458 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47459 /* ~Odejdź.~ */ EXIT
END
