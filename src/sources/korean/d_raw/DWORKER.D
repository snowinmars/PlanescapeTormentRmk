// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWORKER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWORKER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3160 /* ~안녕하시오. 나는 커스트에 있는 창고에서 일하오. 만약 정중하게 물어본다면, 나는 당신에게 아나키스트들이 이 곳에서 만나며, 그들과 만나는 일에 대해서 생각해 보라고 말해줄지도 모르오.~ */
  IF ~~ THEN REPLY #3161 /* ~물론이오. 아마 내 X를 잘라낼지도. ~ */ EXIT
  IF ~~ THEN EXIT
END
