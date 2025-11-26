// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33542 /* ~이 깡패는 얼굴을 어찌나 음험하게 찌푸리고 있는지 마치 엽기적인 가면을 쓰고 있는 것처럼 보일 정도이다. 당신이 다가가자 그는 눈을 가늘게 뜬다." ~ */
  IF ~~ THEN REPLY #33545 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #33546 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33543 /* ~"주둥아리를 닥쳐, 이 못생긴 개자식아! 아무도 네 녀석이 내게 말을 걸어도 좋다곤 안 했어! 내가 네 얼굴에 질려서 널 칼로 찌르기 전에 어서 꺼져!"~ */
  IF ~~ THEN REPLY #33544 /* ~"어디 해보시오, 그럼 당신 몸에 새로운 구멍이 몇 개 생길 테니."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33547 /* ~떠난다.~ */ EXIT
END
