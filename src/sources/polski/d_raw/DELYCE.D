// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELYCE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DELYCE~

IF ~  Global("Elyce","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #21865 /* ~Podbiega do ciebie spanikowana, zadyszana młoda kobieta. Po twarzy spływają jej łzy. "Proszę pana! Musi mi pan pomóc ich powstrzymać! Oni się *pozabijają*!"~ */
  IF ~~ THEN REPLY #33509 /* ~"Co się dzieje?'~ */ GOTO 1
  IF ~~ THEN REPLY #33510 /* ~"Przykro mi, ale to nie mój problem. Żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33499 /* ~"Mój brat i mój kochanek... kłócą się! Na razie to tylko słowa, ale ja wiem, że zaraz poleje się krew! Proszę mi pomóc ich powstrzymać, błagam!"~ */
  IF ~~ THEN REPLY #33511 /* ~"Zaraz z nimi porozmawiam..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #33512 /* ~"Mogę ich powstrzymać, ale nie pracuję za darmo..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #33513 /* ~"Przykro mi, ale to nie mój problem. Żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33500 /* ~"Tysięczne dzięki, krwawniku! Tam są!"~ */
  IF ~~ THEN REPLY #33514 /* ~"Wrócę jak z nimi porozmawiam."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #33501 /* ~"Krwawniku, mogę dać ci brzdęk... przynajmniej sto miedziaków... tylko ich powstrzymaj!"~ */
  IF ~~ THEN REPLY #33515 /* ~"Wrócę jak z nimi porozmawiam."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #33516 /* ~"Po dłuższym zastanowieniu dochodzę do wniosku, że to jednak nie moja sprawa. Żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",1)
~ THEN BEGIN 4 // from:
  SAY #33502 /* ~"Dziękuję ci, że przerwałeś tę bójkę śmiałku... Bałam się, że pozabijają się nawzajem, a nie chciałabym stracić ani brata, ani mojego kochanego Maeta."~ */
  IF ~~ THEN REPLY #33517 /* ~"Żaden kłopot. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #33518 /* ~"W takim razie przydałby się pokaz wdzięczności..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 7.1
  SAY #33503 /* ~Jej twarz natychmiast pochmurnieje. "Wydaje ci się, że gdzie jesteś śmiałku, w Dzielnicy Pani? Gdybym miała jakiś brzdęk, wydałabym go na jedzenie dla mojej rodziny! Przykro mi, nie mogę cię *wynagrodzić*. Będzie ci musiała wystarczyć moja wdzięczność." Wyrzuca to z siebie i odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #33519 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Elyce","AR0400",3)
~ THEN BEGIN 6 // from:
  SAY #33504 /* ~"Śmiałku, proszę! Powstrzymaj ich!"~ */
  IF ~~ THEN REPLY #33520 /* ~"Spróbuję..."~ */ EXIT
  IF ~~ THEN REPLY #33521 /* ~"Właściwie doszedłem do wniosku, że to nie moja sprawa. Żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 7 // from:
  SAY #33505 /* ~"Dziękuję ci, że przerwałeś tę bójkę śmiałku... Bałam się, że pozabijają się nawzajem, a nie chciałabym stracić ani brata, ani mojego kochanego Maeta."~ */
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33522 /* ~"Cieszę się, że mogłem pomóc. Żegnaj."~ */ EXIT
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33523 /* ~"W takim razie przydałby się pokaz wdzięczności..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
  IF ~  Global("Evil_Elyce_1","GLOBAL",1)
~ THEN REPLY #33524 /* ~"Oczywiście. Teraz odbiorę nagrodę..."~ */ DO ~SetGlobal("Elyce","AR0400",5)
GiveItemCreate("TsilBra",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #33506 /* ~Kiwa głową i zdejmuje z ubrania srebrną matową bransoletę. "Masz śmiałku... mój jedyny skarb. Życie każdego z nich jest dla mnie tego warte, chociaż..." Kobieta wzdycha smutno.~ */
  IF ~~ THEN REPLY #33525 /* ~"Czekaj... masz, zabierz ją z powrotem. Zatrzymaj swoją bransoletę."~ */ DO ~TakePartyItemNum("TsilBra",1)
IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #33526 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #33507 /* ~Jej oczy się rozjaśniają. "Dziękuję, śmiałku! Niech cienie Pani cię omijają!"~ */
  IF ~~ THEN REPLY #33527 /* ~"Pewnie... żegnaj."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",5)
~ THEN BEGIN 10 // from:
  SAY #33508 /* ~"Śmiałku, jeszcze raz dziękuję za powstrzymanie tej bójki."~ */
  IF ~~ THEN REPLY #33528 /* ~"Żaden kłopot. Żegnaj."~ */ EXIT
END
