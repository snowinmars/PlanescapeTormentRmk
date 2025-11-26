// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34190 /* ~이 대좌 위에는 루비로 만든 빛나는 작은 조상이 놓여 있으며, 그것은 날개가 달린 인간형 생물의 모습을 하고 있다. 조상의 모습은 악마나 천사 그 어느 쪽도 아닌 듯하다... 하지만 그것이 갤러리 내의 빛을 묘하게 굴절시키는 탓에 판별하기가 어렵다. 이 조상에는 그것이 정확히 무엇인지를 알려 줄 이름표가 붙어 있지 않다.~ */
  IF ~~ THEN REPLY #42704 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_03","AR0608",1)
~ EXIT
END
