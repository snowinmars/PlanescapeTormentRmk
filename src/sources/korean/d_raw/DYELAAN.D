// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELAAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELAAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58377 /* ~젊은 여자가 보인다. 그녀의 얼굴은 더럽고 머리도 엉망인데다, 그녀의 옷은 넝마를 기워서 만든 것 같다. 당신이 다가가자 그녀는 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #58378 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58379 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58380 /* ~그녀는 경계하는 눈초리로 당신을 보더니 뒤로 물러선다. "뭘 원하는 거죠?"~ */
  IF ~~ THEN REPLY #58381 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58382 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58383 /* ~그녀는 잠시 당신을 노려보더니 긴장을 좀 푼다. "당신이 내게 원하는 게 그것뿐이길 바라겠어요." 그녀는 의심쩍은 눈초리로 당신을 본다.~ */
  IF ~~ THEN REPLY #58384 /* ~"그것 말고 내가 뭘 원하겠소?"~ */ GOTO 3
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58386 /* ~"내가 원하는 건 내 질문에 대한 답뿐이오."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58387 /* ~"내가 원하는 건 내 질문에 대한 답뿐이오."~ */ GOTO 7
  IF ~~ THEN REPLY #58388 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58389 /* ~그녀 눈살을 찌푸리고 양손을 엉덩이에 얹는다. "이봐요. 난 그렇게 추한 편도 아니고, 이 곳에는 여자가 별로 없어요. 무슨 말인지 알겠어요?"~ */
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58390 /* ~"내가 원하는 건 내 질문에 대한 답뿐이오."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58391 /* ~"내가 원하는 건 내 질문에 대한 답뿐이오."~ */ GOTO 7
  IF ~~ THEN REPLY #58392 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58393 /* ~"좋아요, 그..." 그녀는 갑자기 멈추고 당신을 골똘히 쳐다본다. 그녀는 당신을 알아보는 듯하다. "잠깐 기다려요. 큰 덩치에 몸은 흉터투성이며, 별난 헤어스타일... 당신이 바로 로버타에게 배신을 때린 남자로군요!!~ */
  IF ~~ THEN REPLY #58394 /* ~"로버타 파휘도... 그녀가 이 곳에 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #58395 /* ~"난 당신이 무슨 말을 하는 지 모르겠소."~ */ GOTO 6
  IF ~~ THEN REPLY #58396 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58397 /* ~"그래요, 그녀도 여기 있어요." 그녀는 잠시 얘기를 멈추고 미소를 짓는다. "그녀한테 한 번 가봐요. 아주 좋아할 테니."~ */
  IF ~~ THEN REPLY #58398 /* ~"물론 그럴 거요. 하지만 우선 물어보고 싶은 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58399 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58401 /* ~그녀는 눈살을 찌푸린다. "물론 아니에요. 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #58404 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58406 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 15.1 16.0 17.0
  SAY #58408 /* ~"묻고 싶은 걸 물으세요."~ */
  IF ~~ THEN REPLY #58409 /* ~"당신은 누구요?"~ */ GOTO 8
  IF ~~ THEN REPLY #58410 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #58411 /* ~"나는 어떤 디바를 찾고 있소. 나는 그가 이 곳에 있는 것으로 알고 있소."~ */ GOTO 13
  IF ~~ THEN REPLY #58413 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58415 /* ~"나는 옐란이에요. 대단한 이름은 아니지만 그래도 내 이름이니까요."~ */
  IF ~~ THEN REPLY #58418 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #58420 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58423 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58425 /* ~그녀는 잠시 생각하더니 어깨를 으쓱한다. "난 내게서 손님을 도둑질해 가는 년을 두들겨 줬어요. 난 잡혔고, 여기로 보내진 거죠."~ */
  IF ~~ THEN REPLY #58427 /* ~"손님을 빼앗아 가?"~ */ GOTO 10
  IF ~~ THEN REPLY #58429 /* ~"누구를 손봐주었소?"~ */ GOTO 11
  IF ~~ THEN REPLY #58431 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58434 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #58436 /* ~"나는 창녀였고 꽤 인기가 있었어요... 그녀가 나타나기 전까지는. 그래서 난 손님을 되찾을 심산으로 그녀 얼굴을 좀 손봐 줄 생각을 한 거죠." 그녀는 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #58439 /* ~"누구를 손봐주었소?"~ */ GOTO 11
  IF ~~ THEN REPLY #58443 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58445 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #58448 /* ~그녀는 잠시 생각을 하더니 어깨를 으쓱한다. "이름도 기억이 나지 않아요... 아니며 아예 알지도 못했을지도. 그녀는 경쟁자였고 내게 중요한 것 그것뿐이었어요."~ */
  IF ~~ THEN REPLY #58453 /* ~"그녀 당신 손님을 빼앗아 갔다고 했소?"~ */ GOTO 10
  IF ~~ THEN REPLY #58455 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58457 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #58459 /* ~그녀는 잠시 당신을 쳐다본다, 그리고 그녀의 눈에 눈물이 고이기 시작한다. 그녀는 눈물을 재빨리 닦고는 마음을 가다듬는다. "달리 할 말이 뭐 있겠어요. 여기는 감옥이고, 이 곳에서의 삶은 고달파요. 여기보다 심한 감옥들도 있다고는 하지만 난 절대로 그 말을 믿지 못하겠어요..." 그녀의 목소리가 속삭임처럼 작아진다... "만약 다시 한 번 기회가 주어진다면..."~ */
  IF ~~ THEN REPLY #58461 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58463 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #58465 /* ~그녀는 고개를 끄덕인다. "이 곳 어딘가에 디바가 있다고 해요... 직접 보진 못했지만 그에 대한 소문이 많이 돌고 있어요. 대부분의 사람들은 그를 *역병을 불러오는 자*라고 부르고 있어요."~ */
  IF ~~ THEN REPLY #58469 /* ~"역병을 불러오는 자?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #58472 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58475 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58478 /* ~"그래요... 그가 발견되자마자 이 곳에 역병이 발생했어요. 내가 듣기로는 역병이 감옥 전체를 휩쓸어 죄수들도 대부분 죽었다고 해요." 그녀는 어깨를 으쓱한다. "대부분의 사람들은 그가 원인이라고 하지만 난 모르겠어요."~ */
  IF ~~ THEN REPLY #58480 /* ~"그는 어디 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #58482 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58486 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58488 /* ~그녀는 어깨를 으쓱한다. "몰라요. 이 근처라는 것 말고는."~ */
  IF ~~ THEN REPLY #58489 /* ~"당신은 그가 근처에 있다는 것은 알지만 그 정확한 위치는 모른다..."~ */ GOTO 16
  IF ~~ THEN REPLY #58491 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58493 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58494 /* ~그녀는 고개를 끄덕인다. "이봐요, 이 곳을 휩쓸고 간 역병은 정말 지독했고, 대부분의 사람들은 그가 원인이라고 해요. 그런데 왜 내가 그를 찾으러 가겠어요?"~ */
  IF ~~ THEN REPLY #58495 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58496 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #58497 /* ~옐란이 보인다. 당신이 다가가자 그녀는 얼굴을 찌푸린다. "또 당신이군요. 뭐죠?"~ */
  IF ~~ THEN REPLY #58498 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58499 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
