// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3577 /* ~"Hej! Čerstvý maso! Víš co, dej mi prachy, nebo si vezmu tvoji duši."~ */
  IF ~~ THEN REPLY #2862 /* ~"Zkus to."~ */ EXIT
  IF ~~ THEN REPLY #3578 /* ~"Tady jsou všechny moje peníze. Neubližuj mi."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3579 /* ~"Máš další prachy? Sem s nima!"~ */
  IF ~~ THEN REPLY #3580 /* ~"Tentokrát ne. Jen přes moji mrtvolu."~ */ EXIT
  IF ~~ THEN REPLY #3581 /* ~"Tady máš."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END
