// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3190 /* ~전의 두 사람과 마찬가지로 나도 손님이오. 나는 여자 캐릭터가 될지도 모르오. 하하!~ */
  IF ~~ THEN REPLY #3191 /* ~당신은 정말 웃기는군.~ */ EXIT
END
