// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3577 /* ~"Hej! Świeże mięsko! Powiem ci coś, mięsko, dawaj kasę albo odbiorę ci duszę."~ */
  IF ~~ THEN REPLY #2862 /* ~"Spróbuj."~ */ EXIT
  IF ~~ THEN REPLY #3578 /* ~"Tu są wszystkie moje pieniądze. Nie rób mi krzywdy."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3579 /* ~"Masz więcej brzdęku? To dawaj."~ */
  IF ~~ THEN REPLY #3580 /* ~"Nie tym razem. Musisz spróbować zabrać go mojemu trupowi."~ */ EXIT
  IF ~~ THEN REPLY #3581 /* ~"Proszę."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END
