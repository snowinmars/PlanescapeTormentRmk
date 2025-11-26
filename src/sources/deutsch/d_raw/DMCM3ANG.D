// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37707 /* ~Du siehst einen gut aussehenden jungen Mann mit eleganter Kleidung. Er scheint ziellos herumzuschlendern und die vielen angebotenen Waren anzusehen. Er sieht dich herankommen, beachtet dich aber nicht weiter.~ */
  IF ~~ THEN REPLY #37713 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37714 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37706 /* ~Er betrachtet dich von oben bis unten und wirft dir dann einen geringschätzigen Blick zu. "Ich gebe mich nicht mit anstößigen Individuen ab. Dem Aussehen nach paßt du recht gut in diese Kategorie. Mach dich davon, Dussel."~ */
  IF ~~ THEN REPLY #37715 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37716 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37708 /* ~Er runzelt die Stirn und zeigt mit dem Finger auf dich, als würde er ein Kind schelten. "Das ist mir egal, Dussel. Laß mich in Ruhe, oder ich rufe die Wache!"~ */
  IF ~~ THEN REPLY #37717 /* ~"Schaff sie doch her..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37718 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37709 /* ~Er macht eine rüde Geste in deine Richtung. "Also gut... Wache! Wache!"~ */
  IF ~~ THEN REPLY #37719 /* ~Sei bereit, dich zu verteidigen...~ */ EXIT
  IF ~~ THEN REPLY #37720 /* ~Geh bevor sie ankommen.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37710 /* ~Der Mann dreht sich in deine Richtung und erkennt dich sofort wieder. Er blickt dich mit finsterer Miene an. "Was muß ich denn noch tun, damit du mich in Ruhe läßt, Dussel?"~ */
  IF ~~ THEN REPLY #37721 /* ~"Vielleicht könntest du ein paar Fragen beantworten..."~ */ GOTO 5
  IF ~~ THEN REPLY #37722 /* ~"Tut mir leid, ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37711 /* ~Er macht eine rüde Geste in deine Richtung. "Vielleicht will ich deine armseligen Fragen aber nicht beantworten. Such dir doch dafür lieber einen weisen Alten." Er winkt dich fort. "Jetzt laß mich in Ruhe, oder ich rufe die Wache!"~ */
  IF ~~ THEN REPLY #37723 /* ~"Schaff sie doch her..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37724 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_2","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37712 /* ~Der Mann dreht sich in deine Richtung und erkennt dich sofort wieder. Er blickt dich mit finsterer Miene an. "Was muß ich denn noch tun, damit du mich in Ruhe läßt, Dussel?" Er seufzt und wirft seine Arme genervt nach oben. "Ich habe dir schon einmal die Wache auf den Hals geschickt, ich kann das gerne noch einmal tun... auch wenn es nichts zu nützen scheint."~ */
  IF ~~ THEN REPLY #37725 /* ~"Schaff sie doch her..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37726 /* ~"Na schön, dann leb wohl."~ */ EXIT
END
