// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2903 /* ~나는 모드론 미로에 득실거리는 저성능 로봇들 중 하나요. 내 임무는 미로에 침입하는 모든 자들에게 도전하는 거요. 도전을 박은 것처럼 느끼시오?~ */
  IF ~~ THEN REPLY #2904 /* ~아직 아니오, 하지만 틀림없이 그렇게 될 거요. 잘 있으시오.~ */ EXIT
END
