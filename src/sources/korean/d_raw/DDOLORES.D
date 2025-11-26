// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORES~

IF ~~ THEN BEGIN 0 // from:
  SAY #34365 /* ~검은 머리에 창백한 피부를 한 이 여인은 교양이 있고 세련되게 생겼다. 그녀가 돌아서서 당신을 마주보자 당신은 그녀의 눈이 전에 생각했던 것처럼 회색이 아니라 윤을 낸 강철과 같은 색이라는 사실을 깨닫는다. ~ */
  IF ~~ THEN REPLY #34366 /* ~"안녕하시오..."~ */ EXIT
END
