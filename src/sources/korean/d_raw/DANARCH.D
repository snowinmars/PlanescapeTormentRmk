// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3162 /* ~이 사람은 당신은 의심으로 가득 찬 눈초리로 쳐다본 후, 재빨리 눈길을 다른 데로 돌리고, 당신을 무시한 채 하던 일로 돌아간다. 이 집단 전체가 일종의 무장 봉기를 준비하고 있는 듯하다.~ */
  IF ~~ THEN REPLY #3163 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #64388 /* ~전과 마찬가지로 당신은 완전히 무시당한다.~ */
  IF ~~ THEN REPLY #64389 /* ~떠난다.~ */ EXIT
END
