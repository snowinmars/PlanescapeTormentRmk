// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9709 /* ~이 사람은 당신을 무시한다. 그는 자기 앞에 서 있는 창녀와 협상하는 데 열중하고 있다. ~ */
  IF ~~ THEN EXIT
END
