// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERFEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66400 /* ~Du triffst auf eine gelangweilt aussehende Frau. Sie sieht dich an, als du sie ansprichst und wendet sich dann ab.~ */
  IF ~~ THEN REPLY #66401 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #66402 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66403 /* ~Sie seufzt und schenkt dir ihre Aufmerksamkeit. "Sei gegrüßt... Was willst du?"~ */
  IF ~~ THEN REPLY #66404 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #66405 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66406 /* ~Ihre Miene verfinstert sich. "Ich bin beschäftigt, und ich habe keine Zeit für Fragen. Such dir doch bitte einen Schlepper." ~ */
  IF ~~ THEN REPLY #66407 /* ~"Es wird nur einen Moment deiner Zeit beanspruchen..."~ */ GOTO 3
  IF ~~ THEN REPLY #66408 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66409 /* ~"Ich versuche, mich auf die Auktion zu konzentrieren. Ich hab jetzt keine Zeit für dich." Sie wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #66410 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66411 /* ~Du erblickst eine junge Frau. Sie macht einen ziemlich aufgeregten Eindruck. Sie sieht dich an, als du näherkommst und lächelt.~ */
  IF ~~ THEN REPLY #66412 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~~ THEN REPLY #66413 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66414 /* ~"Hallo, Schleifer. Was auf dem Herzen?"~ */
  IF ~~ THEN REPLY #66415 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66416 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66417 /* ~Sie runzelt die Stirn und seufzt. "Ich will hier nichts verpassen. Also mach's kurz."~ */
  IF ~~ THEN REPLY #66418 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #66419 /* ~"Was machst du da?"~ */ GOTO 8
  IF ~~ THEN REPLY #66420 /* ~"Was geht hier eigentlich genau vor sich?"~ */ GOTO 9
  IF ~~ THEN REPLY #66421 /* ~"Gibt es irgend etwas Interessantes in diesem Bezirk?"~ */ GOTO 11
  IF ~~ THEN REPLY #66422 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66423 /* ~"Jemand, der versucht, eine Auktion zu verfolgen. Kannst du dich bitte kurzfassen?"~ */
  IF ~~ THEN REPLY #66424 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66425 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66426 /* ~"Ich bin dabei, für einen der Diener mitzubieten. Für den Mann da..." Sie stockt und errötet. "Nun, egal. Willst du sonst noch was?"~ */
  IF ~~ THEN REPLY #66427 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66429 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66430 /* ~"Diese Leute hat man kleinerer Straftaten überführt, und man hat ihnen Schulden auferlegt. Sie werden jetzt als Diener verkauft, um die Schulden abzuzahlen."~ */
  IF ~~ THEN REPLY #66431 /* ~"Was geschieht, wenn die Strafe abgebüßt ist?"~ */ GOTO 10
  IF ~~ THEN REPLY #66432 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66433 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66434 /* ~Sie lächelt. "Nun... Dann erhalten sie ihren normalen Status als Bürger zurück und werden freigelassen. Sie können dann ein neues Leben anfangen."~ */
  IF ~~ THEN REPLY #66435 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #66436 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66437 /* ~"Nur die Auktionen. Das ist zumindest meine Meinung. Es gibt hier noch einen Auktionator, aber er versteigert nur Gegenstände und dergleichen. Da solltest du trotzdem mal hingehen." Sie lächelt.~ */
  IF ~~ THEN REPLY #66438 /* ~"Das werde ich. Ich habe noch ein paar Fragen...."~ */ GOTO 6
  IF ~~ THEN REPLY #66440 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66439 /* ~Du siehst eine ernst aussehende Frau. Sie wirft dir einen Blick zu und versucht dann, dir auszuweichen.~ */
  IF ~~ THEN REPLY #66441 /* ~"Sei gegrüßt."~ */ GOTO 13
  IF ~~ THEN REPLY #66442 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66443 /* ~Sie sieht dich verärgert an. "Nun, was willst du denn?"~ */
  IF ~~ THEN REPLY #66444 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #66445 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66446 /* ~Sie sieht dich finster an. "Ich hab keine Zeit. Frag jemand, der Zeit hat."~ */
  IF ~~ THEN REPLY #66447 /* ~"Es wird nur einen kurzen Moment deiner Zeit beanspruchen."~ */ GOTO 15
  IF ~~ THEN REPLY #66448 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66449 /* ~Ihre Miene verfinstert sich noch. "Ist mir egal. Hau ab!"~ */
  IF ~~ THEN REPLY #66450 /* ~"Hast du nicht einen Moment Zeit, um jemandem weiterzuhelfen?"~ */ GOTO 16
  IF ~~ THEN REPLY #66451 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66452 /* ~Sie sieht dich angewidert an, schnaubt und wendet sich ab.~ */
  IF ~~ THEN REPLY #66453 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66454 /* ~Du siehst die Besucherin der Auktion. Sie winkt ab, als du wieder versuchst, mit ihr ins Gespräch zu kommen.~ */
  IF ~~ THEN REPLY #66455 /* ~Geh weg.~ */ EXIT
END
