// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTCOFF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51470 /* ~당신은 석관의 덮개를 들어 올리려고 애를 쓰나 그것은 꿈쩍도 하지 않는다. 자물쇠 등의 장치로 아주 단단하게 고정된 모양이다. ~ */
  IF ~~ THEN REPLY #51471 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Inscr_1","GLOBAL",1)
Global("Inscr_2","GLOBAL",1)
Global("Inscr_3","GLOBAL",1)
Global("Inscr_4","GLOBAL",1)
Global("Inscr_5","GLOBAL",1)
Global("Inscr_6","GLOBAL",1)
Global("Inscr_7","GLOBAL",1)
Global("Inscr_8","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #51473 /* ~석관의 덮개는 잠금 장치가 해제된 덕분에 쉽게 움직일 수가 있다. ~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53782 /* ~석관을 연다.~ */ GOTO 5
  IF ~  Global("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53783 /* ~석관을 연다.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 2
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #53784 /* ~석관을 연다.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #53785 /* ~당신은 석관을 연다... 그러나 그 안에는 열쇠 한 개가 들어 있을 뿐이다. 그 안에는 유해가 없으며, 보다 큰 문제는 해골도 없다는 사실이다.~ */
  IF ~~ THEN REPLY #53786 /* ~"로타가 이 사실을 알면 별로 좋아하지 않을 텐데..."~ */ JOURNAL #51472 /* ~나는 로타가 원하는 해골이 있는 무덤을 발견했다. 하지만 그 무덤의 석관은 비어 있었다. 로타에게 가서 얘기해야겠다. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53787 /* ~당신은 잠시 조용히 서서 석관의 내용물을 들여다 본다.~ */
  IF ~~ THEN REPLY #53788 /* ~열쇠를 가지고 떠난다.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #53789 /* ~당신은 석관을 연다... 그러나 그 안에는 열쇠 한 개가 들어 있을 뿐이다. 그 안에는 유해가 없으며, 값나가는 물건도 없다.~ */
  IF ~~ THEN REPLY #53790 /* ~열쇠를 가지고 떠난다.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Protagonist,1,0,0)
~ JOURNAL #51475 /* ~나는 지하 묘지에서 어떤 무덤을 발견했다. 그 중심에는 빈 석관이 하나 있었다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY #53791 /* ~석관은 텅 비었다. 당신이 지난 번에 점검한 이래 달라진 건 없다. ~ */
  IF ~~ THEN REPLY #53792 /* ~떠난다.~ */ EXIT
END
