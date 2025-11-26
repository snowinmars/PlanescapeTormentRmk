// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCONVSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCONVSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46332 /* ~이 사람은 당신이 대화에 끼어들자 당신 쪽으로 몸을 돌리고 정중하게 인사한다. "미안하오, 하지만 나는 지금 중요한 대화를 나누는 중이오. 그러니 괜찮으시다면... 안녕히 가시오." 그들은 다시 당신에게 정중하게 인사를 하고는 하던 얘기를 계속한다. ~ */
  IF ~~ THEN REPLY #46333 /* ~떠난다.~ */ EXIT
END
