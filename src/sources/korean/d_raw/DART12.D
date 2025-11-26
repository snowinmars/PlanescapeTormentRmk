// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART12.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART12~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34204 /* ~이 그림은 멀리서 본, 한밤에 불타고 있는 어떤 문명의 중심지의 광경이다. 하지만 그 곳의 거리들은 텅 비어 있다. 병사, 피난민, 그리고 심지어는 시체조차 보이지 않는다. 이름표에는 '우도의 어리석음'이라고 적혀 있다. ~ */
  IF ~~ THEN REPLY #42679 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_12","AR0608",1)
~ EXIT
END
