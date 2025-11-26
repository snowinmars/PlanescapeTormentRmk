// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHEKKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHEKKA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48041 /* ~Du triffst auf einen betrunkenen Wachsoldaten. Er trägt die Rüstung der Besten von Verdammnis, doch es scheint so, als ob ihm nur am Schutz seines Fusels liegt. Er mustert dich ohne großes Interesse mit toten Augen.~ */
  IF ~~ THEN REPLY #48042 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #48043 /* ~"Was machst du hier?"~ */ GOTO 3
  IF ~~ THEN REPLY #48044 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48045 /* ~Chek'ka Plute mustert dich eindringlich mit all der Konzentration, die ein Betrunkener aufbringen kann. Er grinst höhnisch und wendet sich wieder seinem Humpen zu.~ */
  IF ~~ THEN REPLY #48046 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #48047 /* ~"Was machst du hier?"~ */ GOTO 3
  IF ~~ THEN REPLY #48048 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0
  SAY #48049 /* ~"Chek'ka Plute. Gehör zur Elite von Verdammnis." Er rülpst.~ */
  IF ~~ THEN REPLY #48050 /* ~"Was machst du hier?"~ */ GOTO 3
  IF ~~ THEN REPLY #48051 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #48084 /* ~Er zeigt auf den Besuldeten Barsen hinter der Theke. "Beobachte ihn. Er soll hier 'n Tunnel haben, un' ich will seh'n, wie er 'n benutzt, mal seh'n, ob da was dran is. Warten. Beobachten. Jetz' hau ab! Ich muß hier gucken!"~ */
  IF ~~ THEN REPLY #48085 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #48086 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #48087 /* ~Die betrunkene Wache schwankt auf dich zu und brüllt. Offensichtlich will er zuerst dich sterben sehen.~ */
  IF ~~ THEN REPLY #48088 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
