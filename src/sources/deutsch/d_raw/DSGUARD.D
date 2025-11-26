// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #46767 /* ~"Tut mir leid. Hier oben hat keiner Zutritt, bis der Adlat Sandoz zurückkommt. Das gilt auch für dich."~ */
  IF ~~ THEN REPLY #46768 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 1
  IF ~~ THEN REPLY #46906 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46907 /* ~"Er ist ein Gläubiger, ein wahrer Gläubiger - doch er ist etwas launenhaft. Die ganze Reiserei durch das Multiversum kann ja nicht gut für den Kopf sein. Entweder, man verliert die Perspektive, oder man kriegt zuviel davon. Gut ist es auf jeden Fall nicht. Ich hoffe, er kommt wohlbehalten zurück."~ */
  IF ~~ THEN REPLY #46908 /* ~"Das werden wir schon sehen. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #46909 /* ~"Sei gegrüßt. Hat Keldor dich geschickt? Seit Sandoz hier oben ist, fantasiert er den ganzen Tag hinter der Tür. Ich hoffe, du kannst was für ihn tun."~ */
  IF ~~ THEN REPLY #46910 /* ~"Man wird sehen." Ruf durch die Tür: "Sandoz! Ich muß mit dir sprechen!"~ */ EXTERN ~DSANDOZ~ 0
END

IF WEIGHT #5 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #46911 /* ~"Ihr müßt mit Sandoz reden, Herr? Viel Glück..."~ */
  IF ~~ THEN REPLY #46912 /* ~"Danke." Ruf durch die Tür: "Sandoz! Wir müssen miteinander reden!"~ */ EXTERN ~DSANDOZ~ 1
END

IF WEIGHT #1 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #46913 /* ~"Herr." Die Wache scheint nicht gewillt zu sein, noch mehr zu sagen.~ */
  IF ~~ THEN REPLY #46914 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",7)
~ THEN BEGIN 5 // from:
  SAY #63354 /* ~Die Wache starrt dich verbittert an. "Er ist schon tot. Bist du nicht zufrieden? Geh runter und sprich mit Keldor."~ */
  IF ~~ THEN REPLY #63355 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #64646 /* ~"Herr." Die Wache scheint nicht gewillt zu sein, noch mehr zu sagen.~ */
  IF ~~ THEN REPLY #64647 /* ~"Leb wohl."~ */ EXIT
END
