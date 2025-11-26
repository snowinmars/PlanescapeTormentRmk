// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDSTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDSTL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3170 /* ~이 문은 거대한 자물쇠들과 철조망에 의해 봉쇄되어 있다. 현재 당신이 지닌 수단으로 이 문을 여는 것은 불가능할 것 같다.~ */
  IF ~  Global("Curst_key","GLOBAL",7)
~ THEN REPLY #3171 /* ~트리어스가 당신에게 가르쳐 준 음절을 말한다.~ */ GOTO 1
  IF ~~ THEN REPLY #68141 /* ~문을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #68142 /* ~당신이 첫 번째 음절을 영창하자, 문이 삐걱거리기 시작한다. 두 번째 음절이 영창되자 금속 가시들이 뒤틀리며 당겨져 나온다, 그리고 세 번째 음절의 영창과 함께 문이 열린다. ~ */
  IF ~~ THEN REPLY #68143 /* ~"그럼 할 수 없지."~ */ DO ~SetDoorLocked("ar702d03",FALSE)
OpenDoor("AR702d03")
~ EXIT
END
