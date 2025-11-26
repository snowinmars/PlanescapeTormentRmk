// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3577 /* ~"이봐! 신선한 고기! 돈을 내놓지 않으면 널 죽여 버리겠어."~ */
  IF ~~ THEN REPLY #2862 /* ~"어디 한 번 해보시오."~ */ EXIT
  IF ~~ THEN REPLY #3578 /* ~"여기 내 돈이 모두 있소. 제발 날 해치지 마시오."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3579 /* ~"돈이 더 있어? 그럼 어서 내놔."~ */
  IF ~~ THEN REPLY #3580 /* ~"이번은 안 되지. 돈을 원한다면 날 죽여야 할 거요."~ */ EXIT
  IF ~~ THEN REPLY #3581 /* ~"여기 있소."~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END
