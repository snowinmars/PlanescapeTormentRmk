// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVCOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVCOLL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #54788 /* ~Dieser Mann ist in eine schmutzige, zerlumpte braune Robe gehüllt. Eine lange Kapuze verdeckt fast sein ganzes Gesicht.~ */
  IF ~~ THEN REPLY #54789 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #54790 /* ~Laß ihn in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #54791 /* ~Du siehst, wie sich seine Augen unter seiner Kapuze verengen, und er tritt einen Schritt zurück. "Was willst du?"~ */
  IF ~~ THEN REPLY #54792 /* ~"Was machst du da?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54793 /* ~"Was ist das für ein Ort?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54794 /* ~"Was ist das für ein Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #54795 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #54796 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 9.0
  SAY #54797 /* ~"Ich kümmere mich gern um meinen eigenen Kram, Schleifer, und mir wär's recht, wenn du das auch machen würdest."~ */
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54799 /* ~"Was ist das für ein Ort?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54798 /* ~"Was ist das für ein Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #54800 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #54801 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 9.1
  SAY #54802 /* ~Er sieht sich um. "Dafür gibt's eigentlich keinen richtigen Namen. Die Müll-Labyrinthe, könnte man vielleicht sagen."~ */
  IF ~~ THEN REPLY #54803 /* ~"Was machst du hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #54804 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #54805 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 9.2
  SAY #54806 /* ~"Pharods Dorf, Schleifer." Er zeigt auf die Backsteine in der Decke und den Müll, der sich über euch in der stinkenden Dunkelheit auftürmt. "Das Begrabene Dorf."~ */
  IF ~~ THEN REPLY #54807 /* ~"Was machst du hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #54808 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #54809 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2 3.1 4.1 9.3
  SAY #54810 /* ~"Hä?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54811 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54812 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54813 /* ~"Ich suche nach einem Journal, das ich verloren hab."~ */ GOTO 6
  IF ~~ THEN REPLY #54814 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 7.0 8.0
  SAY #54815 /* ~Er schüttelt nur verwundert den Kopf.~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54816 /* ~"Was ist mit Pharod? Weißt du, wo er ist?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54817 /* ~"Was ist mit Pharod? Weißt du, wo er ist?"~ */ GOTO 8
  IF ~~ THEN REPLY #54818 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #54819 /* ~Der Mann nickt. "Da mußt du in den südwestlichen Teil des Müllirrgangs. Da findest du eine Falltür, die führt dahin, wo Pharod ist."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54820 /* ~"Ich suche außerdem nach einem Journal, das ich verloren hab."~ */ GOTO 6
  IF ~~ THEN REPLY #54821 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #54822 /* ~Der Mann nickt. "Es gibt einen Bogen, der nach Nordwesten aus dieser großen Kammer rausführt. Da findest du den alten Pharod."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54823 /* ~"Ich suche außerdem nach einem Journal, das ich verloren hab."~ */ GOTO 6
  IF ~~ THEN REPLY #54824 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #54825 /* ~Der Mann macht einen Schritt zurück und schaut dich von unter seiner Kapuze mißtrauisch an. "Du wieder, was? Was willst du?"~ */
  IF ~~ THEN REPLY #54826 /* ~"Was machst du da?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54827 /* ~"Was ist das für ein Ort?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54828 /* ~"Was ist das für ein Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #54829 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #54830 /* ~"Nichts. Leb wohl."~ */ EXIT
END
