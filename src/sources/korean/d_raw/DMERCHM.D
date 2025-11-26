// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9370 /* ~당신이 다가가지 이 사내는 재빠른 동작으로 인사한다. "이보시오... 당신도 시길에서 가장 훌륭한 물건들을 사고자 함이 틀림없소. 그렇다면 제대로 찾아오셨소."~ */
  IF ~~ THEN REPLY #9371 /* ~"어... 당신이 실제로 가게 인벤토리를 가지게 될 때까지 기다리겠소."~ */ EXIT
END
