// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAMLIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAMLIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
Global("Rauk","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49877 /* ~"Hey! Was machst du in meinem Zelt?!"~ */
  IF ~~ THEN REPLY #49878 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49879 /* ~"Ich suche Rauks Zelt. Weißt du, wo es ist?"~ */ GOTO 4
  IF ~~ THEN REPLY #49880 /* ~"Entschuldigung. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Rauk","Global",0)
~ THEN BEGIN 1 // from:
  SAY #49881 /* ~"Die Dame soll dich verfluchen! Was um alles in den Ebenen willst du denn?!"~ */
  IF ~~ THEN REPLY #49882 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49883 /* ~"Ich suche Rauks Zelt. Weißt du, wo es ist?"~ */ GOTO 4
  IF ~~ THEN REPLY #49884 /* ~"Ich gehe jetzt. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Rauk","Global",1)
~ THEN BEGIN 2 // from:
  SAY #49885 /* ~"Klar, du bist 'n Freund von Rauk und ich bin 'n Freund von Rauk. Na und? Das heißt nicht, daß ich mit dir reden muß."~ */
  IF ~~ THEN REPLY #49886 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #49887 /* ~"Du platzt hier unangemeldet in mein Zelt rein, und alles, was du zu sagen hast, ist 'Sei gegrüßt!?' Zieh Leine, Dussel!"~ */
  IF ~~ THEN REPLY #49888 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #49889 /* ~"Verdammt nochmal! Du bist auch einer von Rauks 'Freunden'? Ja, das ist eins von den Zelten, die er sein Zuhause nennt. Wie du siehst, ist dies hier besetzt. Geh zu einem seiner anderen Zelte!"~ */
  IF ~~ THEN REPLY #49890 /* ~"Leb wohl."~ */ DO ~SetGlobal("Rauk","Global",1)
~ EXIT
END
