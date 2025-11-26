// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAODA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAODA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49891 /* ~당신은 그녀를 놀라게 한 것 같다. 그녀는 텐트 안을 뒤지는 것을 멈추고 불안한 표정으로 당신을 쳐다본다. ~ */
  IF ~~ THEN REPLY #49892 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #49893 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49894 /* ~"나는 아무 것도 하고 있지 않았어요! 맹세해요!"~ */
  IF ~~ THEN REPLY #49895 /* ~"내게 당신이 뭘 하고 있지 않았는지 말해주겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #49896 /* ~"당신이 뭘 하든 그건 당신 문제요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #49897 /* ~그녀는 뭔가 말할 것처럼 당신을 쳐다보다가 문 쪽으로 급히 달려간다. ~ */
  IF ~~ THEN REPLY #49898 /* ~"멈추시오..."~ */ DO ~EscapeArea()
~ EXIT
END
