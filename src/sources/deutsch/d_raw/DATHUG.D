// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3577 /* ~"He! Frischfleisch! Entweder krieg ich dein Geld oder deine Seele."~ */
  IF ~~ THEN REPLY #2862 /* ~"Versuch's doch."~ */ EXIT
  IF ~~ THEN REPLY #3578 /* ~"Hier hast du mein ganzes Geld. Tu mir nicht weh."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3579 /* ~"Du hast noch mehr Geld? Her damit."~ */
  IF ~~ THEN REPLY #3580 /* ~"Diesmal nicht. Da mußt du dich wohl an meine Leiche halten."~ */ EXIT
  IF ~~ THEN REPLY #3581 /* ~"Hier, bitte schön."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END
