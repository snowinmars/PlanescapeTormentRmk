// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65087 /* ~Du siehst eine junge Frau mit blaßgelber Haut. Als du dich näherst, siehst du, daß ihre Haut mit kleinen Pusteln übersät ist. ~ */
  IF ~~ THEN REPLY #65088 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #65089 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65090 /* ~Sie wirft dir einen kurzen Blick zu und runzelt die Stirn. "Sei gegrüßt, Schleifer. Was willst du?"~ */
  IF ~~ THEN REPLY #65091 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #65092 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65093 /* ~Ihr Stirnrunzeln wird stärker. "Tut mir leid, aber ich bin sehr beschäftigt im Moment. Ich hab keine Zeit, mit dir zu reden..." Sie dreht sich um und geht. ~ */
  IF ~~ THEN REPLY #65094 /* ~"Es wird nur einen Moment deiner Zeit beanspruchen..."~ */ GOTO 3
  IF ~~ THEN REPLY #65095 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65096 /* ~"Ich habe keine Zeit für dich. Frag jemand anderen..." Sie dreht sich um.~ */
  IF ~~ THEN REPLY #65097 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65098 /* ~Du siehst eine Frau mit gelber Haut und chronischem Husten. Sie wirft dir einen kurzen Blick zu, als du dich näherst.~ */
  IF ~~ THEN REPLY #65099 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~~ THEN REPLY #65100 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65101 /* ~Sie lächelt dich an und will antworten, aber der Husten unterbricht sie. "Ja..." Sie hat einen Hustenanfall. "Hallo, Schleifer... Willst du etwas?"~ */
  IF ~~ THEN REPLY #65102 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65103 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65104 /* ~"Stets zu Diensten, aber beeil dich bitte."~ */
  IF ~~ THEN REPLY #65105 /* ~"Bist du in Ordnung?"~ */ GOTO 7
  IF ~~ THEN REPLY #65106 /* ~"Warum hast du gelbe Haut?"~ */ GOTO 8
  IF ~~ THEN REPLY #65107 /* ~"Was weißt du über diesen Bezirk?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65108 /* ~"Ich vermisse einen Schädel. Ich will herausfinden, wer ihn genommen hat."~ */ GOTO 11
  IF ~~ THEN REPLY #65109 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65110 /* ~Sie lächelt. "Ja. Danke der Nachfrage. Es geht wieder vorbei."~ */
  IF ~~ THEN REPLY #65111 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65112 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65113 /* ~"Nun..." Sie sieht peinlich berührt aus. "Es ist die Luft in diesem Bezirk. Sie ist nicht gerade sauber und bereitet den meisten Leuten Probleme. Es ist der ganze Rauch und wer weiß was aus der Gießerei..." Sie fängt wieder an zu husten und gibt dir durch Gesten zu verstehen, du sollst dich mit deinen Fragen beeilen.~ */
  IF ~~ THEN REPLY #65114 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65115 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65116 /* ~"Oh, na ja..." Sie hustet. "Es gibt viele Läden, Märkte, Hausierer und..." Ein weiterer Hustenanfall unterbricht sie. "...solche Dinge..." Sie verstummt und faßt sich schmerzverzerrt an die Brust.~ */
  IF ~~ THEN REPLY #65117 /* ~"Bist du ganz sicher in Ordnung?"~ */ GOTO 10
  IF ~~ THEN REPLY #65118 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65119 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65120 /* ~Sie lächelt. "Absolut..." Sie klopft sich auf die Brust.~ */
  IF ~~ THEN REPLY #65121 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65122 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65123 /* ~Sie runzelt die Stirn und denkt nach. "Nein... Ich haben keine Ahnung, wer so etwas wollen könnte..." Sie sieht aus, als käme ein weiterer Hustenanfall, aber er geht vorüber. "Ich weiß auch nicht, wen du sonst fragen könntest."~ */
  IF ~~ THEN REPLY #65124 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65125 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65126 /* ~Du siehst eine Frau mittleren Alters mit gelber Haut. Als du näher kommst, wirft sie dir einen kurzen Blick zu und versucht, dich davonzuwinken.~ */
  IF ~~ THEN REPLY #65127 /* ~"Sei gegrüßt."~ */ GOTO 13
  IF ~~ THEN REPLY #65128 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65129 /* ~Sie sieht dich ängstlich an. "Ah... Hallo... Schleifer." Sie sieht sich um und sucht in den Schatten nach Leuten, die sich versteckt haben könnten. "Du willst etwas?"~ */
  IF ~~ THEN REPLY #65130 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #65131 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65132 /* ~"Und was wären das für Fragen?"~ */
  IF ~~ THEN REPLY #65133 /* ~"Was weißt du über diesen Bezirk?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65134 /* ~"Jemand hat mir einen Schädel gestohlen. Ich bin auf der Suche danach."~ */ GOTO 16
  IF ~~ THEN REPLY #65135 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65136 /* ~"Das hier ist der Untere Bezirk, Heimat der gewöhnlichen Leute wie ich. Viel mehr gibt es nicht zu sagen. Sie dich um, und finde es selbst heraus."~ */
  IF ~~ THEN REPLY #65137 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #65138 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65139 /* ~Sie runzelt die Stirn und macht eine seltsame Geste über ihrem Herz. "Ich habe Geschichten gehört..." Sie macht eine Pause. "Manche sagen, es gibt einen Nekromanten, oder Priester der Toten, oder etwas Ähnliches in diesem Bezirk. Er sammelt Schädel, aber ich weiß nicht wofür..."~ */
  IF ~~ THEN REPLY #65140 /* ~"Weißt du, wo ich ihn finden kann?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65141 /* ~Sie schüttelt langsam den kopf. "Geschichten, Schleifer. Nur Geschichten... Es gibt so etwas nicht in diesem Bezirk. Es sind nur Geschichten..."~ */
  IF ~~ THEN REPLY #65142 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65143 /* ~Als du dich der Frau näherst, erinnerst du dich, daß du einst schon einmal mit ihr gesprochen hast. "Hallo mal wieder, Schleifer. Was willst du?"~ */
  IF ~~ THEN REPLY #65144 /* ~"Nein, leb wohl."~ */ EXIT
END
