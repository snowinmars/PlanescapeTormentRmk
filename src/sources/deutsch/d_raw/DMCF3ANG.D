// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37164 /* ~Du siehst eine attraktive junge Frau in eleganten Kleidern. Sie scheint ziellos herumzuschlendern und die vielen zum Verkauf stehenden Waren anzusehen.~ */
  IF ~~ THEN REPLY #37171 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37172 /* ~Ignoriere sie.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37165 /* ~Sie betrachtet dich von oben bis unten und runzelt dann die Stirn. "Ich gebe mich nicht mit anstößigen Individuen ab. Und dem Aussehen nach paßt du recht gut in diese Kategorie. Mach dich davon, Dussel."~ */
  IF ~~ THEN REPLY #37173 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37174 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37166 /* ~Sie runzelt die Stirn stärker und stützt ihre Hände in die Hüften. "Das ist mir egal, Dussel. Laß mich in Ruhe, oder ich rufe die Wache!"~ */
  IF ~~ THEN REPLY #67883 /* ~"Dann schaff sie doch her..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #67884 /* ~"Also gut, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37167 /* ~Sie macht eine rüde Geste in deine Richtung. "Also gut... Wache! Wache!"~ */
  IF ~~ THEN REPLY #37178 /* ~Geh bevor sie ankommen.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37168 /* ~Die Frau dreht sich in deine Richtung und erkennt dich sofort wieder. Sie wirft dir einen finsteren Blick zu. "Was muß ich denn noch machen, damit du mich endlich in Ruhe läßt, Dussel?"~ */
  IF ~~ THEN REPLY #37179 /* ~"Vielleicht könntest du ein paar Fragen beantworten..."~ */ GOTO 5
  IF ~~ THEN REPLY #37180 /* ~"Tut mir leid, ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37169 /* ~Sie macht eine rüde Geste in deine Richtung. "Vielleicht will ich deine armseligen Fragen aber nicht beantworten. Such dir doch dafür lieber einen weisen Alten." Sie winkt dich fort. "Jetzt laß mich in Ruhe, oder ich rufe die Wache!"~ */
  IF ~~ THEN REPLY #37181 /* ~"Schaff sie doch her..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37182 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37170 /* ~Die Frau dreht sich in deine Richtung und erkennt dich sofort wieder. Sie wirft dir einen finsteren Blick zu. "Was muß ich denn noch machen, damit du mich endlich in Ruhe läßt, Dussel?" Sie seufzt und macht ein Geste des Mißmuts. "Ich habe dir schon einmal die Wache auf den Hals geschickt, ich kann das gerne noch einmal tun... auch wenn es nichts zu nützen scheint."~ */
  IF ~~ THEN REPLY #37183 /* ~"Schaff sie doch her..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37184 /* ~"Na schön, dann leb wohl."~ */ EXIT
END
