// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34187 /* ~이 스테인드 글라스를 구성하는 수백 개의 반투명한 녹색 유리 조각들은 어떠한 접착제에 의해 결합된 것 같지는 않다. 그것들은 알 수 없는 힘에 의해 철제 창틀 안에서 자유롭게 떠 있는 상태로 유지되고 있다. 그 조각들은 느린 속도로 물결을 일으키며 움직이고 있으며, 그것들이 갤러리아 안의 빛을 각기 다른 방향으로 굴절시킴에 따라 창의 표면에 지속적으로 변하는 기묘한 패턴들이 나타난다. 창 옆의 이름표에는 다음과 같은 제목이 적혀 있다: '아르카디아의 스테인드 글라스 창.'~ */
  IF ~~ THEN REPLY #42709 /* ~유리를 만진다.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42710 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42706 /* ~당신은 물결치는 유리 조각들을 만지려고 손을 내미나 만질 수가 없다... 당신 손은 유리의 표면 바로 앞에서 멈춘다.~ */
  IF ~~ THEN REPLY #42714 /* ~유리를 주먹으로 친다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sglass_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #42717 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42708 /* ~당신 손만 멍들었을 뿐이다. 그 유리는 철판처럼 단단하다.~ */
  IF ~~ THEN REPLY #42718 /* ~떠난다.~ */ EXIT
END
