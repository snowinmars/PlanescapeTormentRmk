// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GDIARY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~GDIARY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #30104 /* ~이 책은 종이처럼 얇은 은판으로 만들어진 것 같다. 책의 표지에는 여자의 모습이 새겨져 있으며 측면에는 작은 자물쇠가 있다. 아무리 공을 들여도 자물쇠는 열릴 생각을 하지 않는다. ~ */
  IF ~~ THEN REPLY #50095 /* ~"어, 그걸 읽을 생각은 없었소... 적어도 아직은 말이오."~ */ EXIT
END
