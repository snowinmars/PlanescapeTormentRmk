// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANIZIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANIZIUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #59314 /* ~Der Githyanki starrt dich verbittert an und sagt kein Wort. Als du versuchst, mit ihm zu sprechen, spuckt er auf den Boden und wendet sich ab.~ */
  IF ~~ THEN REPLY #59317 /* ~"Also, auf Wiedersehen."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("Ddakkon")
~ THEN BEGIN 1 // from:
  SAY #59321 /* ~Du siehst einen Githyanki mit kränklicher Hautfarbe, dünnem Gesicht und fiesen Augen. Er stolziert dezidiert auf und ab. Du kannst seine Wut förmlich riechen. Als du näherkommst, schaut er auf und knurrt dich an: "Was willst du?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59323 /* ~"Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59327 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #59328 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 3
  IF ~~ THEN REPLY #59329 /* ~"Hast du irgend etwas von einem Deva gehört, der hier sein soll?"~ */ GOTO 4
  IF ~~ THEN REPLY #59331 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.2 18.1 25.1
  SAY #59334 /* ~"Ich bin An'izius, und ich wünsche, daß du mich mit Euer Ehren anredest. Ich bin einer der einflußreichsten Leute in der Stadt, also gebührt mir diese Ehrerbietung." Er sieht dich scharf an. "Du bist nicht von hier. Was willst du?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59335 /* ~"Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59338 /* ~"Ich suche einen Deva."~ */ GOTO 4
  IF ~~ THEN REPLY #59339 /* ~"Ich suche etwas, das ich verloren habe."~ */ GOTO 5
  IF ~~ THEN REPLY #59341 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 18.2 25.2
  SAY #59345 /* ~Er sagt spöttisch: "Frag jemanden, der Zeit hat. Ich bin mit Staatsgeschäften beschäftigt."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59346 /* ~"Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59350 /* ~"Staatsgeschäfte?"~ */ GOTO 6
  IF ~~ THEN REPLY #59352 /* ~"Wer bist du eigentlich?"~ */ GOTO 2
  IF ~~ THEN REPLY #59354 /* ~"Ich suche einen Deva."~ */ GOTO 4
  IF ~~ THEN REPLY #59356 /* ~"Das werde ich. Wiedersehen."
~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.1 3.3 18.3 25.3
  SAY #59401 /* ~Seine Augen werden schmal. "Ein Deva? Was willst du denn mit einem Deva anfangen? Und wieso suchst du einen in Verdammnis?"~ */
  IF ~~ THEN REPLY #59410 /* ~"Ich glaube, er besitzt das Geheimnis meiner Sterblichkeit."~ */ GOTO 7
  IF ~~ THEN REPLY #59411 /* ~"Ich habe gehört, daß einer hier ist. Weißt du etwas darüber?"~ */ GOTO 8
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59413 /* ~"Vergiß es. Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59415 /* ~"Vergiß es. Ich muß gehen. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #59417 /* ~"Worum handelt es sich? Als Stadtoberhaupt kann ich dir vielleicht helfen."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59418 /* ~"Als Stadtoberhaupt brauchst du vielleicht *mich*. Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59419 /* ~"Ich habe meine Sterblichkeit verloren. Ich muß sie wiederfinden."~ */ GOTO 7
  IF ~~ THEN REPLY #59420 /* ~"Nichts Wichtiges. Ich werde es schon selbst finden."~ */ GOTO 9
  IF ~~ THEN REPLY #59421 /* ~"Nichts Wichtiges. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 8.0
  SAY #59422 /* ~Er sieht dich prüfend an, scheint dich im Geiste abzuschätzen und urteilt: "Es ist nichts, wobei du helfen könntest. Nun tritt zur Seite, ich muß nachdenken."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59423 /* ~"Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59424 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.1
  SAY #59427 /* ~Er sieht dich an, als hättest du die Grenze zum Wahnsinn passiert. "Vielleicht kann ich dir helfen. Möchtest du, daß ich dir helfe?"~ */
  IF ~~ THEN REPLY #59431 /* ~"Nein, ich mach das schon allein. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #59434 /* ~"Nicht daß ich wüßte." Er beäugt dich weiter. "Wenn du mich entschuldigen würdest, es warten Staatsgeschäfte auf mich."~ */
  IF ~~ THEN REPLY #59436 /* ~"Staatsgeschäfte?"~ */ GOTO 6
  IF ~~ THEN REPLY #59438 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #59441 /* ~"Warum hast du mich dann in meinen Gedanken unterbrochen? Ich sollte dich in Eisen legen lassen! Geh!" Er wendet sich von dir ab.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59444 /* ~"Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59448 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #59451 /* ~"Großartig. Du wirst sicher Gelegenheit haben, deinen Deva zu finden, während du im Gefängnis unterhalb von Verdammnis sitzt. Wache!" Wachen sind auf einmal um dich herum, und du spürst einen harten Schlag auf den Hinterkopf. Alles um dich herum wird schwarz...~ */
  IF ~~ THEN REPLY #59454 /* ~"Verdammt..."~ */ DO ~FadeToColor([20.0],0)
SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 4.2 5.0 6.0 9.0 18.0 25.0
  SAY #59460 /* ~Er fragt noch eindringlicher: "Was hast du gehört?"~ */
  IF ~~ THEN REPLY #59462 /* ~"Nur, daß du mit einem politischen Gegner Schwierigkeiten haben sollst."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #59464 /* ~Seine Augen weiten sich nur für den Bruchteil einer Sekunde, und werden dann wieder schmal. "Ich verstehe. Und du wirst mir helfen?"~ */
  IF ~~ THEN REPLY #59468 /* ~"Kommt drauf an, was du von mir willst."~ */ GOTO 14
  IF ~~ THEN REPLY #59471 /* ~"Ja."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59473 /* ~"Nein."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.1
  SAY #59485 /* ~"Dann nützt du mir nichts. Hinfort!" Er entläßt dich mit einer flüchtigen Handbewegung und beachtet dich nicht weiter.~ */
  IF ~~ THEN REPLY #59486 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #59490 /* ~"Es ist eine heikle Angelegenheit. Einer Gegnerin muß eine Lektion erteilt werden. Du mußt sie nicht töten, falls dich das abschreckt."~ */
  IF ~~ THEN REPLY #59493 /* ~"Also, dann mach ich's."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59496 /* ~"Vergiß es."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0 19.0
  SAY #59499 /* ~"Du mußt folgendes tun: Diese Frau, Siabha,... sie verkauft ihren Einfluß an den Meistbietenden und untergräbt so meine Stellung beim Verwalter dieser Stadt. Ich möchte, daß du sie demütigst. Du mußt nur einem Oberbefehlshaber der Wache erzählen, sie hätte dir Geld angeboten, wenn du mich angreifst. Du sollst reich belohnt werden."~ */
  IF ~~ THEN REPLY #59502 /* ~"Ich komm wieder."~ */ JOURNAL #59505 /* ~An'Izius, ein Githyanki-Beamter der Stadt Verdammnis, möchte, daß ich einen seiner politischen Gegner demütige, indem ich den Oberbefehlshaber der Wache anlüge.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("Ddakkon")
~ THEN BEGIN 16 // from:
  SAY #59515 /* ~Du siehst einen Githyanki mit kränklicher Hautfarbe, dünnem Gesicht und fiesen Augen. Er stolziert dezidiert auf und ab. Du kannst seine Wut förmlich riechen. Als du näherkommst, schaut er auf und knurrt dich an: "Was willst du?"~ */
  IF ~~ THEN REPLY #59516 /* ~"Ich hätte ein paar Fragen an dich..."~ */ EXTERN ~DDAKKON~ 357
END

IF ~~ THEN BEGIN 17 // from:
  SAY #59519 /* ~Die Augen des Githyanki werden schmal. "Ich habe den Haß abgelegt, den ich für dein Volk empfand. Ich stehe jetzt über der kleinlichen Fehde zwischen unseren beiden Rassen. Deshalb haben sie mich ins Exil geschickt. Doch in meinem Herzen habe ich den Sieg über sie davongetragen. Kannst du von dir dasselbe sagen?"~ */
  IF ~~ THEN REPLY #59526 /* ~"OK, ihr beiden, hört auf. Ich habe ein paar Fragen."~ */ GOTO 18
  IF ~~ THEN REPLY #59527 /* ~"Vergiß es. Wir gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #59530 /* ~"Was sind sie?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59533 /* ~"Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59537 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #59540 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 3
  IF ~~ THEN REPLY #59542 /* ~"Hast du irgend etwas von einem Deva gehört, der hier sein soll?"~ */ GOTO 4
  IF ~~ THEN REPLY #59544 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("C_Off","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #59547 /* ~"Was willst du, du Hund?"~ */
  IF ~~ THEN REPLY #59549 /* ~"Ich hab's mir anders überlegt. Ich werde dir helfen. Was brauchst du?"~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59553 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",9)
~ THEN BEGIN 20 // from:
  SAY #59558 /* ~"Und? Was machst du für Fortschritte?"~ */
  IF ~  Global("C_Off","GLOBAL",4)
~ THEN REPLY #59560 /* ~"Deine Gegnerin hat mir eine große Summe angeboten, um dich reinzulegen."~ */ GOTO 21
  IF ~  Global("C_Off","GLOBAL",7)
~ THEN REPLY #59562 /* ~"Ich habe mit dem Oberbefehlshaber der Wache gesprochen, und er sagte, er würde eine Abteilung schicken, um sie ins Gefängnis zu geleiten."~ */ DO ~SetGlobal("C_Off","GLOBAL",9)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #59578 /* ~An'Izius hat mich sehr gut dafür bezahlt, daß ich Siabha an die Wachen von Verdammnis ausgeliefert habe. Es war mehr als genug, um solch eine kleine Lüge zu rechtfertigen.~ */ GOTO 22
  IF ~~ THEN REPLY #59568 /* ~"Ich arbeite daran. Ich habe noch ein paar Fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #59574 /* ~"Ich arbeite daran. Ich komme noch einmal wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #59582 /* ~"Was? Ich verdopple die Summe ebenfalls!"~ */
  IF ~~ THEN REPLY #59585 /* ~"Abgemacht."~ */ DO ~SetGlobal("C_Off","GLOBAL",5)
~ GOTO 23
  IF ~~ THEN REPLY #59588 /* ~"Wir werden sehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #59590 /* ~"Dann schulde ich dir das hier." Er überreicht dir einen schweren Beutel mit Münzen. "Und nun geh." ~ */
  IF ~~ THEN REPLY #59592 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0
  SAY #59595 /* ~"Dann geh! Geh! Oder soll ich dir das Fell über die Ohren ziehen lassen?"~ */
  IF ~~ THEN REPLY #59599 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #59601 /* ~"Wir haben uns nichts mehr zu sagen. Unsere gemeinsame Arbeit ist beendet. Es darf keinen Verdacht geben. Geh."~ */
  IF ~~ THEN REPLY #59603 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 25 // from:
  SAY #59605 /* ~"Warum störst du mich permanent?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59606 /* ~"Ein Freund sagte mir, daß du Hilfe brauchst."~ */ GOTO 11
  IF ~~ THEN REPLY #59609 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #59610 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 3
  IF ~~ THEN REPLY #59611 /* ~"Hast du irgend etwas von einem Deva gehört, der hier sein soll?"~ */ GOTO 4
  IF ~~ THEN REPLY #59612 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 26 // from:
  SAY #66922 /* ~Der Githyanki-Beamte wirkt äußerst verzweifelt. "Bitte, Fremder! Du  mußt mir helfen! Überzeuge den Richter, daß die mir vorgeworfenen Verbrechen gar keine Verbrechen sind!"~ */
  IF ~~ THEN REPLY #66923 /* ~"Ich werd's versuchen..."~ */ EXIT
  IF ~~ THEN REPLY #66924 /* ~"Das werden wir ja sehen..."~ */ EXIT
END
