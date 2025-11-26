// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERMALE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66457 /* ~Du triffst auf einen gelangweilt aussehenden jungen Mann. Als er dich näherkommen sieht, nickt er dir zu.~ */
  IF ~~ THEN REPLY #66458 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #66459 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66460 /* ~"Ja? Was willst du?"~ */
  IF ~~ THEN REPLY #66461 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #66462 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66463 /* ~"Hmm. Nun ja, ich bin nicht so sehr auf dem laufenden. Du solltest mal woanders fragen." ~ */
  IF ~~ THEN REPLY #66464 /* ~"Es wird nur einen Moment deiner Zeit beanspruchen..."~ */ GOTO 3
  IF ~~ THEN REPLY #66465 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66466 /* ~"Also, ich finde immer noch, daß du es mal woanders probieren solltest." Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #66467 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66468 /* ~Du triffst auf einen jungen Mann. Er schaut mißtrauisch, als du dich näherst.~ */
  IF ~~ THEN REPLY #66469 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~~ THEN REPLY #66470 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66471 /* ~"Einen guten Tag, Schleifer." Er betrachtet deine Narben und bekommt einen ängstlichen Gesichtsausdruck.~ */
  IF ~~ THEN REPLY #66473 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66474 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66475 /* ~"Hmm. Also gut..."~ */
  IF ~~ THEN REPLY #66476 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #66477 /* ~"Was machst du da?"~ */ GOTO 8
  IF ~~ THEN REPLY #66478 /* ~"Kannst du mir sagen, was hier vor sich geht?"~ */ GOTO 9
  IF ~~ THEN REPLY #66479 /* ~"Gibt es irgend etwas Interessantes in diesem Bezirk?"~ */ GOTO 11
  IF ~~ THEN REPLY #66480 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66481 /* ~"Das würde ich nicht sagen. Stell deine Fragen nur, Schleifer.~ */
  IF ~~ THEN REPLY #66482 /* ~"Schön. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66483 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66484 /* ~"Ich schau mir nur die Auktion an. Ich kann mir gar nichts leisten, aber von Zeit zu Zeit macht es Spaß, zu sehen, wer zur Versteigerung angeboten wird.~ */
  IF ~~ THEN REPLY #66485 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66486 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66487 /* ~Er konzentriert sich einen Augenblick, bevor er antwortet. "Nun, diese Leute haben diverse Straftaten begangen, und schulden etwas Klimper. Da sie nicht zahlen können, werden sie für eine bestimmte Zeit als Diener verkauft, um ihre Schulden zu tilgen."~ */
  IF ~~ THEN REPLY #66488 /* ~"Du meinst, sie sind Sklaven?"~ */ GOTO 10
  IF ~~ THEN REPLY #66489 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66490 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66491 /* ~Er zuckt mit den Achseln. "Ja, ich denke, das sind sie... Zumindest für eine Weile. Die meisten Leute bezeichnen sie aber lieber als Diener..."~ */
  IF ~~ THEN REPLY #66492 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66493 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66494 /* ~"Nee, überhaupt nichts. Das Leben hier ist eigentlich ganz schön langweilig. Darum komme ich hierher und guck mir die Auktionen an." Er seufzt.~ */
  IF ~~ THEN REPLY #66495 /* ~"Hmm. Ich habe noch ein paar Fragen...."~ */ GOTO 6
  IF ~~ THEN REPLY #66496 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66497 /* ~Du triffst auf einen Mann mit einem sorgenvollen Gesichtsausdruck. Er lächelt und winkt dir zu.~ */
  IF ~~ THEN REPLY #66498 /* ~"Sei gegrüßt."~ */ GOTO 13
  IF ~~ THEN REPLY #66499 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66500 /* ~"Hallo, Schleifer. Was gibt's?"~ */
  IF ~~ THEN REPLY #66501 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #66502 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66503 /* ~"Fragen? Oh... Nun ja, dann brauchst du einen Schlepper. Mich nicht." Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #66504 /* ~"Kannst du mir nicht ein paar Fragen beantworten?"~ */ GOTO 15
  IF ~~ THEN REPLY #66505 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66506 /* ~"Nein, ehrlich gesagt nicht. Ich betrachte es nicht als meine Aufgabe, Planlose mit Wissen zu versorgen." Er lächelt.~ */
  IF ~~ THEN REPLY #66507 /* ~"Du willst mir also nicht helfen?"~ */ GOTO 16
  IF ~~ THEN REPLY #66508 /* ~"Ich verstehe, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66509 /* ~"Nein, ganz sicher nicht. Ich würde mir jetzt so einen Schlepper holen.~ */
  IF ~~ THEN REPLY #66510 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66511 /* ~Du siehst einen Besucher der Auktion. Er winkt ab, als du noch einmal versuchst, mit ihm zu sprechen.~ */
  IF ~~ THEN REPLY #66512 /* ~Geh weg.~ */ EXIT
END
