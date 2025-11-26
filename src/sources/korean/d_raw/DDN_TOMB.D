// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_TOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_TOMB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48901 /* ~이 거대한 무덤에는 짤막한 비문이 새겨져 있다.~ */
  IF ~~ THEN REPLY #48902 /* ~비문을 읽는다.~ */ DO ~SetGlobal("DN_Read_Tomb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #58918 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58916 /* ~'여기 바'진의 어머니 ...가 잠들다.' 묘비의 이름 부분은 읽을 수가 없다. ~ */
  IF ~~ THEN REPLY #58917 /* ~떠난다.~ */ EXIT
END
