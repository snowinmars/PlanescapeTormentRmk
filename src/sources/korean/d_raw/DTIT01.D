// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43013 /* ~이 사람은 마네킹의 호주머니에서 아이템을 꺼내려 하고 있다. 그것은 틀에 매달려 있으며, 여러 종류의 종들이 달려 있다. 때문에 그가 마네킹을 너무 세게 만질 때마다 종들이 요란하게 울린다.~ */
  IF ~~ THEN REPLY #43014 /* ~떠난다.~ */ EXIT
END
