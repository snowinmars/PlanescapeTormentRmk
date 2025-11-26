// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJANSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJANSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67910 /* ~커스트 경비병들이 주도하는 린치의 대상이 된 이 남자의 얼굴은 피와 멍투성이다. 그는 아무 말도 하지 않고 부러진 이빨 하나와 각혈을 토한다.~ */
  IF ~~ THEN REPLY #67911 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END
