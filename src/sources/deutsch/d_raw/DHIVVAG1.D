// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48800 /* ~Du triffst auf einen Mann, der sich im Innern des Gebäudes umzusehen scheint.~ */
  IF ~~ THEN REPLY #48801 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #48802 /* ~Laß den Mann in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48803 /* ~"Du schon wieder... Hab ich dir nich' gesagt, daß das mein Ort is? Zieh Leine, bevor ich grob werden muß!"~ */
  IF ~~ THEN REPLY #48804 /* ~"Da bin ich aber gespannt."~ */ GOTO 3
  IF ~~ THEN REPLY #48805 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48806 /* ~"Ich hab diesen Ort als erster gefunden. Du verhältst dich besser ganz ruhig, wenn du weißt, was das Beste für dich is."~ */
  IF ~~ THEN REPLY #48807 /* ~"Was gedenkst du denn sonst zu tun?"~ */ GOTO 3
  IF ~~ THEN REPLY #48808 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48809 /* ~"Du hast es so gewollt!"~ */
  IF ~~ THEN REPLY #48810 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
