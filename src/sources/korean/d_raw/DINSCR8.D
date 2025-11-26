// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR8~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38111 /* ~이름을 두려워하라. 이름은 그 정체성에 힘을 지닌다. 이름은 타인에 의해 무기로 쓰일 수가 있다. 이름은 차원을 가로질러 너를 추적할 수 있게 해주는 갈고리와 같다. 이름을 가지지 말라, 그러면 안전할 것이다.~ */
  IF ~~ THEN REPLY #53764 /* ~계속한다.~ */ GOTO 1
  IF ~~ THEN REPLY #53765 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53766 /* ~나는 이름 없는 자다.~ */
  IF ~  Global("Inscr_8","GLOBAL",0)
~ THEN REPLY #53767 /* ~패널을 조사한다.~ */ GOTO 2
  IF ~~ THEN REPLY #53768 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53769 /* ~이 패널은 뛰어난 솜씨로 만들어졌다. 그것은 밀면 벽 속으로 들어갈 것 같다.~ */
  IF ~~ THEN REPLY #53770 /* ~패널을 누른다.~ */ DO ~SetGlobal("Inscr_8","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53771 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53772 /* ~패널은 조용히 벽 속으로 들어간다. 당신 뒤의 석관으로부터 찰칵 소리가 들린다.~ */
  IF ~~ THEN REPLY #53773 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END
