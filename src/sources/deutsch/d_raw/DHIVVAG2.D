// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48812 /* ~Du triffst auf einen gebrechlich wirkenden Mann, der in der Ecke kauert.~ */
  IF ~~ THEN REPLY #48813 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #48967 /* ~Laß den Mann in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48968 /* ~"Du bist doch nicht zurückgekommen, um mir weh zu tun, oder? Bitte laß mich doch in Ruhe!"~ */
  IF ~~ THEN REPLY #48970 /* ~"Wovon redest du eigentlich?"~ */ GOTO 3
  IF ~~ THEN REPLY #48971 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48972 /* ~"Bitte tu mir nicht weh! Ich mach auch gar nichts!"~ */
  IF ~~ THEN REPLY #48974 /* ~"Wovon redest du eigentlich?"~ */ GOTO 3
  IF ~~ THEN REPLY #48975 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48976 /* ~"Bitte... bitte tu mir nicht weh!"~ */
  IF ~~ THEN REPLY #48978 /* ~"Leb wohl."~ */ EXIT
END
