// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63563 /* ~Du siehst einen jungen Mann mit gelangweiltem Gesichtsausdruck. Er bemerkt dich nicht, als du näherkommst.~ */
  IF ~~ THEN REPLY #63564 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #63565 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63566 /* ~Als du ihn grüßt, zuckt er zusammen und dreht sich zu dir um. "Was... Was willst du?"~ */
  IF ~~ THEN REPLY #63567 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #63568 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63569 /* ~"Fragen... Oh nein. Ich bin beschäftigt." ~ */
  IF ~~ THEN REPLY #63570 /* ~"Es wird nur einen Moment deiner Zeit beanspruchen..."~ */ GOTO 3
  IF ~~ THEN REPLY #63571 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63572 /* ~"Mir doch egal." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #63573 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63574 /* ~Du siehst einen jungen Mann. Er beobachtet die Menge um sich herum genau. Als du näherkommst, nickt er dir zu.~ */
  IF ~~ THEN REPLY #63575 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~~ THEN REPLY #63576 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63577 /* ~"Ja, einen schönen Tag wünsche ich." Er mustert dich von unten bis oben.~ */
  IF ~~ THEN REPLY #63578 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63579 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63581 /* ~"Frag nur zu."~ */
  IF ~~ THEN REPLY #63582 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #63583 /* ~"Was machst du da?"~ */ GOTO 8
  IF ~~ THEN REPLY #63584 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 9
  IF ~~ THEN REPLY #63585 /* ~"Gibt es irgend etwas Interessantes in diesem Bezirk?"~ */ GOTO 11
  IF ~~ THEN REPLY #63586 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63587 /* ~"Niemand von Bedeutung. Wolltest du mich etwas Bestimmtes fragen?~ */
  IF ~~ THEN REPLY #63588 /* ~"Ja, ich habe einige Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63589 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63590 /* ~"Ich beobachte die Menge. Ich beobachte gerne Menschen, Ich finde es faszinierend."~ */
  IF ~~ THEN REPLY #63591 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63592 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63593 /* ~"Nicht sehr viel. Ich komme eigentlich nur her, um die Leute zu beobachten. Es gibt hier viele Märkte und so, darum kommen viele verschiedene Leute her... Ich beobachte gerne Menschen." Er sieht sich um.~ */
  IF ~~ THEN REPLY #63594 /* ~"Was kann man hier kaufen?"~ */ GOTO 10
  IF ~~ THEN REPLY #63595 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63597 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63598 /* ~Er lächelt. "Nun... eigentlich fast alles... Sieh dich um und kauf ein."~ */
  IF ~~ THEN REPLY #63599 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63600 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63601 /* ~"Ja! Die Menschen hier sind faszinierend. Ganz verschiedene Leute... Aber den meisten ist das wohl egal..."~ */
  IF ~~ THEN REPLY #63602 /* ~"Hmm. Ich habe noch ein paar Fragen...."~ */ GOTO 6
  IF ~~ THEN REPLY #63603 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63604 /* ~Du sieht einen ängstlich aussehenden Mann. Als du näherkommt, wirft er dir einen ärgerlichen Blick zu.~ */
  IF ~~ THEN REPLY #63605 /* ~"Sei gegrüßt."~ */ GOTO 13
  IF ~~ THEN REPLY #63606 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63607 /* ~Er sieht dich gelangweilt an. "Äh... Hallo."~ */
  IF ~~ THEN REPLY #63608 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #63609 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63610 /* ~"Dann such dir einen Schnüffler." Er runzelt die Stirn.~ */
  IF ~~ THEN REPLY #63611 /* ~"Es wird nur einen kurzen Moment deiner Zeit beanspruchen."~ */ GOTO 15
  IF ~~ THEN REPLY #63612 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63613 /* ~Er runzelt die Stirn noch stärker. "Das interessiert mich einen Rattenarsch..."~ */
  IF ~~ THEN REPLY #63614 /* ~"Du willst mir also nicht helfen?"~ */ GOTO 16
  IF ~~ THEN REPLY #63615 /* ~"Ich verstehe, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63616 /* ~Er sieht dich angewidert an, schnaubt und wendet sich ab. "Bescheuerter Schlucker..."~ */
  IF ~~ THEN REPLY #63617 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63618 /* ~Du siehst einen Besucher der Auktion. Er winkt ab, als du noch einmal versuchst, mit ihm zu sprechen.~ */
  IF ~~ THEN REPLY #63619 /* ~Geh weg.~ */ EXIT
END
