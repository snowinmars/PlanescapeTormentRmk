// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2293 /* ~그 여자는 퇴색된 누더기 옷을 입고 있다. 그녀는 당신이 다가오는 걸 흘깃 보더니, 당신과 마주치는 것을 피하려는 듯 고개를 돌린다.~ */
  IF ~~ THEN REPLY #2294 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #2295 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2296 /* ~그녀는 당신을 다시 흘깃 보고, 얼음처럼 차가운 눈초리로 쏘아본 후, 고개를 돌린다. ~ */
  IF ~~ THEN REPLY #2297 /* ~"어... 아가씨?"~ */ GOTO 2
  IF ~~ THEN REPLY #2298 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2299 /* ~그녀는 다시 돌아선다... 그리고 이번에는 손에 대거를 쥐고 있다. "꺼져, 개자식, 아니면 이걸 아무도 찾지 못할 곳에 쑤셔 넣을 테니."~ */
  IF ~~ THEN REPLY #2300 /* ~"진정하시오. 당신에게 뭘 좀 물어보고 싶을 뿐이오..."~ */ GOTO 3
  IF ~~ THEN REPLY #2301 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2302 /* ~마치 마귀라도 물리치려고 하는 듯 그녀는 빈손으로 가슴 위에 반원을 그린다. "당신과 할 얘기는 없어! 꺼져!"~ */
  IF ~~ THEN REPLY #2303 /* ~그녀를 공격한다.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #2304 /* ~떠난다.~ */ EXIT
END
