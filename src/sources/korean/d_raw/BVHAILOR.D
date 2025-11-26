// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BVHAILOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~BVHAILOR~

IF ~  LastPersonTalkedTo("Morte")
Global("Vhail_Talked_Morte","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31488 /* ~"다시 묻겠다: 우리는 전에 만난 적이 있는가, 이름 없는 자여?"~ [VHA256A] */
  IF ~~ THEN EXTERN ~DMORTE~ 646
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63854 /* ~"너는 내게 신뢰감을 주지 않는다, 해골."~ [VHA256B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Vhail_Talked_Annah","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63855 /* ~"나는 꺼림칙할 정도로 낯이 익다, 이름 없는 자."~ [VHA257A] */
  IF ~~ THEN EXTERN ~DANNAH~ 314
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63856 /* ~"너의 의견은 이 문제에 있어 아무런 의미가 없다, 티플링. 뭔가... 이상하다. 진실은 곧 그 모습을 드러낼 것이다."~ [VHA257B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Vhail_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #63857 /* ~"너의 경건함은 네가 인간들에게 지은 죄에 대한 속죄인가, 서큐버스 ?"~ [VHA258] */
  IF ~~ THEN EXTERN ~DGRACE~ 380
END
