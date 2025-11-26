// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3577 /* ~"Hé, chair fraîche ! Écoute, tu me donnes ton argent, ou je te prends ton âme."~ */
  IF ~~ THEN REPLY #2862 /* ~"Essaie ça."~ */ EXIT
  IF ~~ THEN REPLY #3578 /* ~"Voilà tout mon argent. Ne me fais pas de mal."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3579 /* ~"Tu as encore de l'argent ? Donne-le moi."~ */
  IF ~~ THEN REPLY #3580 /* ~"Pas cette fois. Il faudra d'abord me passer sur le corps."~ */ EXIT
  IF ~~ THEN REPLY #3581 /* ~"Le voilà."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END
