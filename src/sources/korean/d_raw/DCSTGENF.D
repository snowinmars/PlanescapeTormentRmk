// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63249 /* ~지루해 하는 듯한 여자가 보인다. 당신이 다가가자 그녀는 당신을 흘긋 보고 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #63250 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #63251 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63252 /* ~그녀는 한숨을 쉬고 주변을 둘러본 후에야 시선을 당신에게로 돌린다. "안녕하세요... 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #63253 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #63254 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63255 /* ~그녀는 얼굴을 한층 찡그린다. "질문... 집어치워요. 난 가이드도 아니고 될 생각도 없어요. 꺼져요."~ */
  IF ~~ THEN REPLY #63256 /* ~"잠깐만 시간을 내주면 되오..."~ */ GOTO 3
  IF ~~ THEN REPLY #63257 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63258 /* ~"내겐 당신에게 줄 시간이 일 초도 없어요." 그녀는 잠시 멈춘다, 그리고 등 뒤에서 대거를 꺼낸다. "대신 내가 당신에게 따끔한 베이터산 강철의 맛을 보여주는 건 어떻겠어요?"~ */
  IF ~~ THEN REPLY #63259 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63260 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63261 /* ~지루해 하는 듯한 여자가 보인다. 당신이 다가가자 그녀는 당신을 흘긋 보고 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #63262 /* ~"안녕하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #63263 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63264 /* ~그녀는 당신에게 미소를 짓는다, 그러나 불안한 듯 주변을 두리번거린다. "그래, 안녕하세요... 뭐 원하는 거라도 있나요?"~ */
  IF ~~ THEN REPLY #63265 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63266 /* ~"아니, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63267 /* ~그녀는 눈살을 찌푸리고 한숨을 쉰다. "꼭 그래야만 하겠다면 빨리 물어보세요."~ */
  IF ~~ THEN REPLY #63268 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #63269 /* ~"뭘 하고 있는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #63270 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #63271 /* ~"디바에 대해 혹시 아는 것이 없소?"~ */ GOTO 11
  IF ~~ THEN REPLY #63272 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63273 /* ~"내가 누구인지는 중요하지 않아요. 그냥 질문만 하세요, 능력껏 대답을 하 테니..." 그녀는 초조한 표정으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #63274 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63275 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63276 /* ~"내가 무엇을 하는가는 당신이 알 바가 아니에요. 제발 질문이나 하세요."~ */
  IF ~~ THEN REPLY #63277 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63278 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63279 /* ~"커스트는 거짓말쟁이, 사기꾼, 그리고 배신자들의 도시예요. 여기서 믿을 수 있는 건 자기 자신밖에 없어요 - 그리고 그 경우에도 한 번 더 생각하는 게 좋을 거예요. " 그녀는 어깨를 으쓱한다. "그 점만 명심하면 괜찮을 거예요."~ */
  IF ~~ THEN REPLY #63280 /* ~"거짓말쟁이, 사기꾼... 거기에는 당신도 포함되오?"~ */ GOTO 10
  IF ~~ THEN REPLY #63281 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63282 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63283 /* ~그녀는 미소짓는다. "물론이죠..."~ */
  IF ~~ THEN REPLY #63284 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63285 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63286 /* ~그녀는 생각을 하느라 눈살을 찌푸린다. "디바에 대해서는 아는 게 없어요." 그녀는 어깨를 으쓱한다. "이 도시의 중심에 있는 행정부 사무실에 가서 물어보세요."~ */
  IF ~~ THEN REPLY #63287 /* ~"그러리다. 질문할 것이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63288 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63289 /* ~지루해 하는 듯한 여자가 보인다. 당신이 다가가자 그녀는 당신을 흘긋 보고 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #63290 /* ~"안녕하시오."~ */ GOTO 13
  IF ~~ THEN REPLY #63291 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63292 /* ~그녀는 우려하는 표정으로 당신을 쳐다본다. "어... 안녕하세요. 당신이 뭘 원하든 내겐 없어요. 날 그냥 내버려 두세요." 여자는 주변을 두리번거린다.~ */
  IF ~~ THEN REPLY #63293 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #63294 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63295 /* ~"흠... 그렇다 하더라도 난 당신이 날 귀찮게 하는 게 싫어요. 꺼져요." 그녀는 눈살을 찌푸린다~ */
  IF ~~ THEN REPLY #63296 /* ~"잠깐만 시간을 내주면 되오."~ */ GOTO 15
  IF ~~ THEN REPLY #63297 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63298 /* ~그녀는 얼굴을 찡그리고 엉덩이에 손을 갖다 댄다. "좋아요. 내가 얌전하게 '노'라고 하는 걸 알아듣지 못하겠다면... 거칠게 나와야 알아듣겠어요?"~ */
  IF ~~ THEN REPLY #63299 /* ~"그래야 할 것 같소."~ */ GOTO 16
  IF ~~ THEN REPLY #63300 /* ~"아니오, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63301 /* ~그녀는 미소짓는다. "그럼 좋아... 가서 네 엉덩이가 바닥에 닿을 때까지 막대 위에 앉아 있다가 닿으면 빙빙 돌라고!" 그녀는 무례한 손짓을 한다. "꺼져, 이 미친 놈아!"~ */
  IF ~~ THEN REPLY #63302 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63303 /* ~지루해 하는 듯한 여자가 보인다. 당신이 다가가자 그녀는 당신을 흘긋 보고 눈살을 찌푸린다. "당신한테는 이미 지쳤어, 꺼져..." 그녀는 돌아서서 당신을 무시한다.~ */
  IF ~~ THEN REPLY #63304 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #63305 /* ~이 사람은 감옥에 갇혀 있다는 사실 때문에 정신이 산란한 듯하다. 아무리 노력해도 그녀는 아무런 반응을 보이지 않는다.~ */
  IF ~~ THEN REPLY #63306 /* ~떠난다.~ */ EXIT
END
