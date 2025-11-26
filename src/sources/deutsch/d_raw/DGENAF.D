// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63508 /* ~Du erblickst eine gelangweilt aussehende Frau. Sie wirft dir einen Blick zu, als du dich näherst, und runzelt die Stirn.~ */
  IF ~~ THEN REPLY #63509 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #63510 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63511 /* ~Sie seufzt und sieht sich um, dann wendet sie ihre Aufmerksamkeit dir zu. "Sei gegrüßt... Was willst du?"~ */
  IF ~~ THEN REPLY #63512 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #63513 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63514 /* ~Ihr Stirnrunzeln vertieft sich. "Fragen... Vergiß es, Dussel. Ich bin beschäftigt und habe keine Zeit für Fragen." ~ */
  IF ~~ THEN REPLY #63515 /* ~"Es wird nur einen Moment deiner Zeit beanspruchen..."~ */ GOTO 3
  IF ~~ THEN REPLY #63516 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63517 /* ~"Ich habe keine einzige Sekunde für dich Zeit." Sie betrachtet wieder die Umgebung. "Verzieh dich, oder ich rufe die Wache."~ */
  IF ~~ THEN REPLY #63518 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63519 /* ~Du erblickst eine junge Frau. Sie macht einen ziemlich aufgeregten Eindruck. Sie sieht dich an, als du näherkommst und lächelt.~ */
  IF ~~ THEN REPLY #63520 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~~ THEN REPLY #63521 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63522 /* ~"Ja. Sei gegrüßt und so weiter... Willst du irgendwas?"~ */
  IF ~~ THEN REPLY #63523 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63524 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63525 /* ~Sie runzelt die Stirn und seufzt. "Bitte mach schnell. Ich möchte nichts verpassen."~ */
  IF ~~ THEN REPLY #63526 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #63527 /* ~"Was machst du da?"~ */ GOTO 8
  IF ~~ THEN REPLY #63528 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 9
  IF ~~ THEN REPLY #63529 /* ~"Gibt es irgend etwas Interessantes in diesem Bezirk?"~ */ GOTO 11
  IF ~~ THEN REPLY #63530 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63531 /* ~"Was? Warum willst du das wissen? Ich will hier einfach nur etwas ersteigern. Ich sehe nicht ein, daß du meinen Namen wissen mußt." Sie sieht dich ungeduldig an.~ */
  IF ~~ THEN REPLY #63532 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63533 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63534 /* ~"Ich versuche, ein paar Dinge zu ersteigern, die der Auktionator verkauft... Wenn du also endlich zur Sache kommen würdest, könnte ich wieder meinen Geschäften nachgehen."~ */
  IF ~~ THEN REPLY #63535 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63536 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63537 /* ~"Es ist tatsächlich ein wundervoller Ort. Sieh dich doch mal um. Da sind die Händler, die Märkte, die Auktionen..." Ihr scheinen die Worte zu fehlen. "Ziemlich viel los hier..."~ */
  IF ~~ THEN REPLY #63538 /* ~"Was kann man hier kaufen?"~ */ GOTO 10
  IF ~~ THEN REPLY #63539 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63540 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63541 /* ~Sie lächelt. "Nun... eigentlich fast alles... außer meine Zeit. Bist du jetzt fertig mit deinen Fragen?"~ */
  IF ~~ THEN REPLY #63542 /* ~"Nicht ganz. Ich habe noch ein paar Fragen...."~ */ GOTO 6
  IF ~~ THEN REPLY #63543 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63544 /* ~Sie legt die Stirn in Falten. "Ich weiß nicht. Ich lebe schon mein ganzes Leben lang hier und nehme die Dinge, wie sie sind." Sie zuckt die Schultern. "Sieh dich nur mal um, du findest bestimmt etwas Interessantes für dich."~ */
  IF ~~ THEN REPLY #63545 /* ~"Das werde ich. Ich habe noch ein paar Fragen...."~ */ GOTO 6
  IF ~~ THEN REPLY #63546 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63547 /* ~Du siehst eine ernst aussehende Frau. Sie wirft dir einen Blick zu und versucht dann, dir auszuweichen.~ */
  IF ~~ THEN REPLY #63548 /* ~"Sei gegrüßt."~ */ GOTO 13
  IF ~~ THEN REPLY #63549 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63550 /* ~Sie sieht dich besorgt an. "Äh... Hallo." Sie sieht verärgert aus.~ */
  IF ~~ THEN REPLY #63551 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #63552 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63553 /* ~"Ich habe keine Lust auf deine Gesellschaft. Hau ab. Sie runzelt die Stirn.~ */
  IF ~~ THEN REPLY #63554 /* ~"Es wird nur einen kurzen Moment deiner Zeit beanspruchen."~ */ GOTO 15
  IF ~~ THEN REPLY #63555 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63556 /* ~Ihr Stirnrunzeln wird stärker. "Nein. Ich will mit dir nichts zu tun haben. Hau ab! Kapierst du, du Dussel?"~ */
  IF ~~ THEN REPLY #63557 /* ~"Nein."~ */ GOTO 16
  IF ~~ THEN REPLY #63558 /* ~"Nein, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63559 /* ~Sie sieht dich angewidert an, schnaubt und wendet sich ab.~ */
  IF ~~ THEN REPLY #63560 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63561 /* ~Du siehst die Besucherin der Auktion. Sie winkt ab, als du wieder versuchst, mit ihr ins Gespräch zu kommen.~ */
  IF ~~ THEN REPLY #63562 /* ~Geh weg.~ */ EXIT
END
