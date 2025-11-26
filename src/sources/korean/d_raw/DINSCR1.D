// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38097 /* ~얼마 남지 않은 생명이 내 몸에 난 구멍을 통해 빠져나가고 있다. 세계가 불타든 다원 우주가 멸망하든 난 개의치 않아, 내 목숨만 돌려 달라고! 나는 이 삶을 철저히 파괴하고 부수고 분쇄하고 피와 똥으로 더럽혀 너도 살지 못하도록 할 거다! 다른 모든 생명이 죽어도 난 살아야 해!~ */
  IF ~  Global("Inscr_1","GLOBAL",0)
~ THEN REPLY #53654 /* ~패널을 조사한다.~ */ GOTO 1
  IF ~~ THEN REPLY #53652 /* ~비문으로부터 발길을 돌린다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53656 /* ~패널은 벽으로 밀어넣을 수 있도록 설계되었다.~ */
  IF ~~ THEN REPLY #53657 /* ~패널을 누른다.~ */ DO ~SetGlobal("Inscr_1","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53658 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53659 /* ~당신이 밀자 패널은 벽 속으로 쉽게 들어간다. 당신 뒤의 석관으로부터 찰칵 소리가 들린다.~ */
  IF ~~ THEN REPLY #53660 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END
