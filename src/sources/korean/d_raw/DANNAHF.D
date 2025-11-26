// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAHF~

IF ~~ THEN BEGIN 0 // from:
  SAY #63309 /* ~"*네*가 절대로 찾지 못할 곳에 있어. 만약 네가 그를 해칠 생각이라면 나부터 상대해야 할 걸!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63310 /* ~"내게 널 요절낼 힘만 준다면 난 신경 쓰지 않아!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63311 /* ~"수다는 그만 떨라고! 네가 원하는 게 싸움이라면, 어서- !"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63312 /* ~"만약 - - 만약 날 거쳐 갈 생각이라면 어서 해봐! 난..."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63313 /* ~"골통을 닥쳐, 알겠어?! 닥-"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 8
END
