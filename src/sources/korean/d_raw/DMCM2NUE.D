// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37249 /* ~수수한 옷을 입은 나이든 남자가 보인다. 그의 창백한 노란색 피부는 나이 때문에 쭈글쭈글하다. 당신이 다가가자 그는 지루하다는 표정으로 쳐다본다. ~ */
  IF ~~ THEN REPLY #37260 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37261 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37250 /* ~"반갑소, 젊은이. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #37262 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37263 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37251 /* ~그가 얼굴을 찌푸리자 그의 얼굴은 온통 주름으로 뒤덮인다. "한두 개 정도는 답해줄 수 있지만, 가급적 빨리 하시오."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37264 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37265 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 5
  IF ~~ THEN REPLY #37266 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #37267 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37252 /* ~"로타... 내가 아는 이름이 아니오. 당신을 도울 수가 없소. 하지만 돌아다니면서 물어보면 아는 사람이 있을 거요."~ */
  IF ~~ THEN REPLY #37268 /* ~"알겠소. 당신은 누가 날 도울 수 있을지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #37269 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37253 /* ~그는 고개를 젓는다. "아니오. 우리는 남에 일에 참견하는 것을 좋아하지 않는 평범한 사람들이오." 그는 지루하다는 표정을 짓는다.~ */
  IF ~~ THEN REPLY #37270 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37271 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37254 /* ~"사라진 해골..." 그는 웃음을 터뜨린다. "글쎄, 그런 얘기는 들어본 적이 없소. 뭐라고 대답해야 할지 모르겠소."~ */
  IF ~~ THEN REPLY #37273 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #37272 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37255 /* ~그는 한숨을 쉰다. "이것 보시오, 젊은이. 난 물건을 사러 왔고, 당신은 상인이 아니오. 내 말을 알아듣겠소? 아니라면 꺼지시오!"~ */
  IF ~~ THEN REPLY #37274 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #37275 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37256 /* ~"대답할 게 없소. 안녕히 가시오." 그는 돌아선다.~ */
  IF ~~ THEN REPLY #37276 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37257 /* ~수수한 옷을 입은 나이든 남자가 보인다. 그의 창백한 노란색 피부는 나이 때문에 쭈글쭈글하다. 당신이 다가가자 그는 지루하다는 표정으로 쳐다본다. "또 당신이오? 꺼지시오." 그는 돌아선다.~ */
  IF ~~ THEN REPLY #37258 /* ~떠난다.~ */ EXIT
END
