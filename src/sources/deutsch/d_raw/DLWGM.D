// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65029 /* ~Du siehst einen jungen Mann mit blaßgelber Haut. Als du dich ihm näherst, bemerkst Du, daß er einen Ausschlag hat, der die unbekleideten Stellen seiner Haut bedeckt. ~ */
  IF ~~ THEN REPLY #65030 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #65031 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65032 /* ~Er richtet seine müden Augen auf dich und runzelt die Stirn. "Was willst du, Dussel?"~ */
  IF ~~ THEN REPLY #65033 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #65034 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65035 /* ~Sein Ausdruck ändert sich zu Erschöpfung. "Es tut mir leid, aber ich bin im Moment ziemlich fertig. Ich hab keine Zeit, mit dir zu sprechen..." Er dreht sich um und will gehen. ~ */
  IF ~~ THEN REPLY #65036 /* ~"Es wird nur einen Moment deiner Zeit beanspruchen..."~ */ GOTO 3
  IF ~~ THEN REPLY #65037 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65038 /* ~"Ich hab keine Zeit für dich. Frag jemand anderen..." Er dreht sich um.~ */
  IF ~~ THEN REPLY #65039 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65040 /* ~Du siehst einen Mann mit gelber Haut und chronischem Husten. Er wirft dir einen kurzen Blick zu, als du dich näherst.~ */
  IF ~~ THEN REPLY #65041 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~~ THEN REPLY #65042 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65043 /* ~Er lächelt dich an. "Ja..." Er hustet ein wenig, aber es ist schnell vorüber. "Ich wette, du willst etwas von mir."~ */
  IF ~~ THEN REPLY #65044 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65045 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65046 /* ~"Oh... Also gut, schieß los."~ */
  IF ~~ THEN REPLY #65047 /* ~"Bist du in Ordnung?"~ */ GOTO 7
  IF ~~ THEN REPLY #65048 /* ~"Warum hast du gelbe Haut und diesen Husten?"~ */ GOTO 8
  IF ~~ THEN REPLY #65049 /* ~"Was weißt du über diesen Bezirk?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65050 /* ~"Ich vermisse einen Schädel. Ich will herausfinden, wer ihn genommen hat."~ */ GOTO 11
  IF ~~ THEN REPLY #65051 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65052 /* ~Er lächelt. "Nicht ganz, aber es geht mir besser als den meisten armen Schweinen in diesem Bezirk... Danke der Nachfrage, aber ich bin sicher, du willst etwas anderes."~ */
  IF ~~ THEN REPLY #65053 /* ~"Ja. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65054 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65055 /* ~"Dieser Bezirk ist voller Rauch und Abgase von Fabriken und wer weiß was noch. Sie verpesten die Luft, und du bekommst Husten. Die meisten armen Schweine hier haben verfärbte Haut und Ausschläge." Er macht eine Pause und zuckt mit den Schultern. "Da kann man nichts machen, so ist es nun mal hier."~ */
  IF ~~ THEN REPLY #65056 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65057 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65058 /* ~Er zuckt mit den Schultern und gestikuliert. "Der bloße Anblick sagt doch alles, Schleifer. Es ist nicht der Himmel, es ist nicht die Hölle. Es gibt bessere Orte, aber es gibt auch schlechtere."~ */
  IF ~~ THEN REPLY #65059 /* ~"Ich war im Stock. Das muß der Ort sein, den man besser meidet."~ */ GOTO 10
  IF ~~ THEN REPLY #65060 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65061 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65062 /* ~Er lacht, hört aber sofort auf, als eine weiterer Hustenanfall zu beginnen droht. "Ja... Der Stock ist nicht die Hölle, aber viel fehlt nicht mehr. Wolltest du noch etwas anderes wissen, Schleifer?"~ */
  IF ~~ THEN REPLY #65063 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65064 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65065 /* ~"Ich hab keinen blassen Schimmer. Wenn du im Stock wärst, dann würde ich die Staubies beschuldigen... Aber hier weiß ich nicht, wer so etwas wollen könnte." ~ */
  IF ~~ THEN REPLY #65066 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #65067 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65068 /* ~Du siehst einen Mann mittleren Alters mit gelber Haut. Als du näher kommst, wirft er dir einen kurzen Blick zu und seufzt. Er sieht dich gelangweilt an.~ */
  IF ~~ THEN REPLY #65069 /* ~"Sei gegrüßt."~ */ GOTO 13
  IF ~~ THEN REPLY #65070 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65071 /* ~"Ich weiß nicht, was du willst, aber ich geb's dir nicht. Zieh Leine." ~ */
  IF ~~ THEN REPLY #65072 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #65073 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65074 /* ~"Wirklich? Na, wenn es weiter nichts ist..."~ */
  IF ~~ THEN REPLY #65075 /* ~"Was weißt du über diesen Bezirk?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65076 /* ~"Jemand hat mir einen Schädel gestohlen. Ich bin auf der Suche nach ihm."~ */ GOTO 16
  IF ~~ THEN REPLY #65077 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65078 /* ~"Ja, das ist der Untere Bezirk. Gewöhnliche Leute leben hier. Viel mehr gibt es nicht zu sagen."~ */
  IF ~~ THEN REPLY #65079 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #65080 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65081 /* ~Er schnaubt und runzelt die Stirn. "Ein Schädel? Was im Namen Baators will jemand mit einem Schädel?" Er starrt dich einen Moment an und zuckt dann mit den Schultern. "Wie auch immer, das geht mich nichts an."~ */
  IF ~~ THEN REPLY #65082 /* ~"Weißt du also, wer ihn genommen haben könnte?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65083 /* ~Er schüttelt langsam den Kopf. "Nein. Und je mehr ich darüber nachdenke, desto weniger will ich es wissen..."~ */
  IF ~~ THEN REPLY #65084 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65085 /* ~Als du dich dem Mann näherst, erinnerst du dich, daß du einst schon einmal mit ihm gesprochen hast. "Hallo mal wieder, Schleifer. Was willst du?"~ */
  IF ~~ THEN REPLY #65086 /* ~"Nein, leb wohl."~ */ EXIT
END
