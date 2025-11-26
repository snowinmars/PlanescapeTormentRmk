// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3577 /* ~"Hey! Fresh meat! Tell you what, meat' give me your money or I'll take your soul."~ */
  IF ~~ THEN REPLY #2862 /* ~"Try it."~ */ EXIT
  IF ~~ THEN REPLY #3578 /* ~"Here's all my money. Don't hurt me."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3579 /* ~"You got more money? Let's have it."~ */
  IF ~~ THEN REPLY #3580 /* ~"Not this time. You'll have to try to take it from my corpse."~ */ EXIT
  IF ~~ THEN REPLY #3581 /* ~"Here you go."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END
