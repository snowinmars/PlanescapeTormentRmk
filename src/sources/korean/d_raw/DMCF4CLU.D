// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37185 /* ~평범한 여인이 보인다. 그녀는 시장을 찾은 평범한 고객인 듯하다. ~ */
  IF ~~ THEN REPLY #37193 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37194 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37186 /* ~당신이 인사하자 그녀는 돌아선다. "네..."~ */
  IF ~~ THEN REPLY #37195 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37196 /* ~"신경 쓸 것 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37187 /* ~그녀는 지루하다는 표정으로 당신을 본다. "좋아요..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37197 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37198 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #37199 /* ~"어디 가면 무기를 구입할 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #37200 /* ~"어디 가면 마법을 구입할 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #37201 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #37202 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37188 /* ~"그런 사람에 대해서는 들어본 적도 없어요. *뼈들의 지배자*란 이름은 한 번 들으면 쉽게 잊을 이름은 아니죠." 그녀는 계속 지루한 표정을 하고 있다.~ */
  IF ~~ THEN REPLY #37203 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37204 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37189 /* ~그녀는 잠시 당신을 빤히 쳐다본다.. "해골을 잃어버렸다... 매일 듣는 얘기는 아니군요. 뭐라고 말을 해야 할지 모르겠어요." 그녀는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #37205 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37206 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37190 /* ~그녀는 지루하다는 표정으로 당신을 쳐다본 후 시장을 흘긋 본다. "바로 여기예요. 시간을 내서 상인들에게 물어보세요. 분명히 당신이 원하는 물건을 구할 수 있을 거예요."~ */
  IF ~~ THEN REPLY #37207 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37208 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37191 /* ~그녀는 한숨을 쉰다. "별로 대단한 곳은 아니지만... 나나 여기 있는 사람들에게 있어서는 유일한 고향이에요. 이 곳을 떠날 일은 결코 없을 테니 사랑하도록 노력을 해야죠."~ */
  IF ~~ THEN REPLY #37209 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37210 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37192 /* ~그녀는 고개를 돌려 당신이 다가오는 것을 보더니 눈살을 찌푸린다. "나는 이미 당신에게 시간을 내줬어요. 더 이상 할애할 시간은 없어요" 그녀는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #37211 /* ~떠난다.~ */ EXIT
END
