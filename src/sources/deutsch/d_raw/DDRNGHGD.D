// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHGD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from: 3.0
  SAY #38492 /* ~"Sssss... Fleischschwesen, dass hier isst kein Ort für dich...."~ */
  IF ~~ THEN REPLY #38493 /* ~"Was machst du hier?~ */ GOTO 1
  IF ~~ THEN REPLY #38494 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #38495 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #38496 /* ~"Dann gehe ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #38497 /* ~"Wir wollen unsser Heim vergrößßern. Feinde ausslöschschen... Nahrung finden, damit wir nicht mehr auf dahergelaufenem Fleischsch rumkauen müssssen, kapiert? Der Schschweigende König ssagt unss... kein laufendess Fleischsch."~ */
  IF ~~ THEN REPLY #38498 /* ~"Wer ist der Schweigende König?"~ */ GOTO 4
  IF ~~ THEN REPLY #38499 /* ~"Wo bin ich hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #38500 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #38501 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 5.1
  SAY #38502 /* ~"Diessen Ort? Diess sssind die Ertrunkenen Nationen. Diess isst unsser neues Jagdgebiet. Diess... isst unssere Sspeissekammer."~ */
  IF ~~ THEN REPLY #38503 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.0 5.2
  SAY #38504 /* ~"Sspäher ssind wir, Sspäher für die Toten Lande."~ */
  IF ~~ THEN REPLY #38505 /* ~"Wonach späht ihr?"~ */ GOTO 0
  IF ~~ THEN REPLY #38506 /* ~"Ich verstehe. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #38507 /* ~"Ssss!" Der Ghul zischt frustriert. "Der Schschweigende König isst unsser Herrschscher. Akaste isst unssere Anführerin! Schschon bald werden wir das Gleichgewicht zwischschen beiden finden!"~ */
  IF ~~ THEN REPLY #38508 /* ~"Wer bist du überhaupt?"~ */ GOTO 3
  IF ~~ THEN REPLY #38509 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #38510 /* ~"Ssss... dass Fleischsch isst wieder da..."~ */
  IF ~~ THEN REPLY #38511 /* ~"Was machst du hier?~ */ GOTO 1
  IF ~~ THEN REPLY #38512 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #38513 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #38514 /* ~"Dann gehe ich. Leb wohl."~ */ EXIT
END
