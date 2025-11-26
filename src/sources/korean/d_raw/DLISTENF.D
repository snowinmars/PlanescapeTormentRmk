// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9360 /* ~이 여자는 그 여자가 하는 말에 매료된 듯하다. 그녀는 당신이 말을 걸어도 아무런 반응이 없다. ~ */
  IF ~~ THEN REPLY #9361 /* ~"관두시오, 그럼."~ */ EXIT
END
