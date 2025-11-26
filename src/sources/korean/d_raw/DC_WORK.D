// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WORK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WORK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67978 /* ~이 노동자는 아주 잠시 하던 일을 멈추고 당신을 쳐다본다. "이보시오... 통행인과 잡담을 하다보면 나는 내 할 일을 할 수가 없소. 날 좀 그냥 내버려 두시오." 그는 하던 일로 돌아간다.~ */
  IF ~~ THEN REPLY #67979 /* ~떠난다.~ */ EXIT
END
