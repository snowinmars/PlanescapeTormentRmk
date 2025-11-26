// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWF~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61250 /* ~바쁜 노동자가 보인다. 그녀는 당신이 다가와도 본 척을 하지 않는다.~ */
  IF ~~ THEN REPLY #61251 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #61252 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61253 /* ~"미안해요. 난 지금 정말 바빠요. 날 방해하지 마세요" 그녀는 당신에게 등을 돌린다.~ */
  IF ~~ THEN REPLY #61254 /* ~떠난다.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61255 /* ~바쁜 노동자가 보인다. "난 얘기할 시간이 없어요. 도움이 필요하면 감독과 얘기하세요." 그녀는 돌아선다.~ */
  IF ~~ THEN REPLY #61256 /* ~떠난다.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61257 /* ~바쁜 노동자가 보인다. 당신이 다가가자 그녀는 눈살을 찌푸린다. "꺼져요. 잡담할 시간이 없어요." 그녀 당신을 무시한다.~ */
  IF ~~ THEN REPLY #61258 /* ~떠난다.~ */ EXIT
END
