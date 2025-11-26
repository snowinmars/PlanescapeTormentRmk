// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWM~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61241 /* ~바쁜 노동자가 보인다. 그는 당신이 다가와도 본 척을 하지 않는다.~ */
  IF ~~ THEN REPLY #61242 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #61243 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61244 /* ~"미안하오. 난 지금 정말 바쁘오. 제발 날 방해하지 마시오." 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #61245 /* ~떠난다.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61246 /* ~바쁜 노동자가 보인다. "얘기할 시간이 없소. 도움이 필요하면 감독과 얘기하시오." 그는 돌아선다.~ */
  IF ~~ THEN REPLY #61247 /* ~떠난다.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61248 /* ~바쁜 노동자가 보인다. 당신이 다가가자 그는 눈살울 찌푸린다. "꺼지시오. 잡담할 시간이 없소." 그는 당신을 무시한다.~ */
  IF ~~ THEN REPLY #61249 /* ~떠난다.~ */ EXIT
END
