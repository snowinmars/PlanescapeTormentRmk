// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR~

IF ~  Global("RChaser","AR0400",0)
!Dead("Adyzoel")
~ THEN BEGIN 0 // from:
  SAY #15496 /* ~이 법복을 입은 역겨운 사내는 주변을 조심스럽게 둘러보며 어슬렁거리고 있다. 당신은 그가 젊은 귀족으로부터 멀리 떨어지려 하지 않는다는 사실을 눈치챈다. 그는 당신이 자신을 바라보는 것을 눈치채고 급하게 움직이기 시작한다. ~ */
  IF ~~ THEN REPLY #15520 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Rchaser","AR0400",1)
~ GOTO 1
  IF ~~ THEN REPLY #15521 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15497 /* ~그는 공포로 눈을 크게 뜨고 당신을 향해 고개를 돌린다. 그의 얼굴은 고름투성이의 종기로 뒤덮여 있으며 뚱뚱한 검은 파리들이 그의 머리 주변을 날라다니고 있다. "날 해치지 마시오, 나으리... 난 아무 것도 모르고, 가진 것도 없소!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15522 /* ~"겉모습으로 날 속일 생각은 하지 마시오. 난 당신이 무엇인지 아오, 마족."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15523 /* ~"나는 당신이 겉으로 드러난 것 이상의 존재라고 들었소."~ */ GOTO 20
  IF ~~ THEN REPLY #15524 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #15525 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #15498 /* ~그는 비틀거리며 뒤로 한 걸음 물러선다, 그리고 더듬더듬 말을 한다... "하지만... 나으리, 말씀 드렸듯이... 난 아는 게 없소. 정말이오!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15526 /* ~"겉모습으로 날 속일 생각은 하지 마시오. 난 당신이 무엇인지 아오, 마족."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15527 /* ~"나는 당신이 겉으로 드러난 것 이상의 존재라고 들었소."~ */ GOTO 20
  IF ~~ THEN REPLY #15528 /* ~"그건 어디 두고 봅시다. 말을 하겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #15529 /* ~"좋소, 그럼 가시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #15499 /* ~"알겠소... 난... 당신과 얘기를 하도록 하도록 하겠소, 나으리..." 그는 불안한 듯 손을 쥐어 튼다, 그리고 곪은 곳에 앉은 파리를 쫓을 때만 손을 움직인다."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15530 /* ~"겉모습으로 날 속일 생각은 하지 마시오. 난 당신이 무엇인지 아오, 마족."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15531 /* ~"나는 당신이 겉으로 드러난 것 이상의 존재라고 들었소."~ */ GOTO 20
  IF ~~ THEN REPLY #15532 /* ~"당신은 누구요?"~ */ GOTO 8
  IF ~~ THEN REPLY #15533 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #15534 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15535 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15536 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 본 적이 있소?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 5.0 6.1 7.0 8.1 9.2 10.1 11.2 12.2 13.1 14.1 15.0 16.2 20.2 21.0
  SAY #15500 /* ~그는 공포에 질려 고개를 끄덕인다. "아무거나 물어보시오, 나으리..."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15537 /* ~"겉모습으로 날 속일 생각은 하지 마시오. 난 당신이 무엇인지 아오, 마족."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15538 /* ~"나는 당신이 겉으로 드러난 것 이상의 존재라고 들었소."~ */ GOTO 20
  IF ~~ THEN REPLY #15539 /* ~"당신은 누구요?"~ */ GOTO 8
  IF ~~ THEN REPLY #15540 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #15541 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15542 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15543 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 본 적이 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #15544 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.6
  SAY #15501 /* ~"그런 건 없소, 나으리, 정말이오! 맹세하오!" 그는 검사해 보라는 듯 양손을 내민다. ~ */
  IF ~~ THEN REPLY #15545 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15546 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.5 4.5
  SAY #15502 /* ~그는 고개를 젓는다. "아니, 난 그를 모르오, 나으리."~ */
  IF ~~ THEN REPLY #15547 /* ~"틀림없소? 내가 알기로 그는 수집자요."~ */ GOTO 7
  IF ~~ THEN REPLY #15548 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15549 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #15503 /* ~"에? 난 혼자서 일을 하오, 나으리. 친구도 동료도 없소..."~ */
  IF ~~ THEN REPLY #15550 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15551 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.2
  SAY #15504 /* ~"나 말씀이오? 내 이름은 말릭이오, 나으리. 하지만... 하지만 나는 '방탕자를 따라다니는 자'라고 불리오."~ */
  IF ~~ THEN REPLY #15552 /* ~"그건 왜요?"~ */ GOTO 9
  IF ~~ THEN REPLY #15553 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15554 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.3 8.0
  SAY #15505 /* ~"허? 아... 나는 이 사람을 따라다니오." 그는 가까이에 있는 젊은 귀족을 향해 고개를 끄덕인다. 청년은 그를 보고 경멸스럽다는 표정을 지은 후 고개를 돌린다. "그의 뒤처리를 하오. 시체들 말이오."~ */
  IF ~~ THEN REPLY #15555 /* ~"당신은 왜 그런 일을 하는 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #15556 /* ~"그는 누구요?"~ */ GOTO 11
  IF ~~ THEN REPLY #15557 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15558 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1
  SAY #15506 /* ~"나는, 에, 시체안치소의 더스트맨에게 시체를 판다오. 아시다시피 돈 때문이오. 돌볼 사람도 없이 죽은 시체의 경우에는 시체가 지녔던 물건도 가져가서 파오."~ */
  IF ~~ THEN REPLY #15559 /* ~"누가 귀족이오?"~ */ GOTO 11
  IF ~~ THEN REPLY #15560 /* ~"다른 질문이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #15561 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #15507 /* ~"그 말이오? 나도 모르오, 나으리. 어느날 갑자기 나타나 싸움을 하기 시작했소... 그는 그것을 '대결'이라고 부르오. 보시다시피 나는 그와 얘기를 하지 않소... 단지 시체를 끌고 갈 뿐이오. 아마 당신이 직접 가서 그에게 물어보는 것이..." ~ */
  IF ~~ THEN REPLY #15562 /* ~"그럼 그는 뛰어난 전사요?"~ */ GOTO 12
  IF ~~ THEN REPLY #15563 /* ~"왜 당신은 시체를 끌고 가는 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #15564 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15565 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15566 /* ~그는 고개를 끄덕인다. "아, 그렇소... 보시다시피 난 싸움에 대해선 모르지만 그는 매우 위험한 사람인 것 같소. 나라면 그와는 결코 싸우려 하지 않겠소..."~ */
  IF ~~ THEN REPLY #15567 /* ~"당신은 그가 나보다 뛰어나다고 생각하오?"~ */ GOTO 14
  IF ~~ THEN REPLY #15568 /* ~"그는 어떻게 싸우오? 칼로? 마법으로?"~ */ GOTO 13
  IF ~~ THEN REPLY #15569 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15570 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.0
  SAY #15509 /* ~"에... 그는 칼, 그것도 구부러진 모양의 칼을 사용하오, 나으리. 정말 화려하게 생긴 칼이고 그의 동작도 그에 못지 않게 화려하오. 그는 빠르고 마치 춤추듯 움직이오." 그는 그 검사의 동작을 어설프게 흉내낸다. 덕분에 파리 떼가 도망간다. "휙! 휙! 휙! 당신은 죽은 목숨이오!" 그는 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #15571 /* ~"당신은 그가 나보다 뛰어나다고 생각하오?"~ */ GOTO 14
  IF ~~ THEN REPLY #15572 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15573 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #15510 /* ~그는 갑자기 걱정스러운 표정을 짓는다. "아, 아니오. 내 말은 그런 뜻이 아니었소, 나으리! 나는 당신이 싸우는 것을 본 적이 없소. 아마 당신이라면 그에게 도전해도 괜찮을지도... 하지만 당신 실력이 모자라면 그가 당신을 죽일 것이오. 당신이 질 경우에 대비해서... 당신이 원한다면 더스트맨에게 당신 유언을 전해 줄 수도..."~ */
  IF ~~ THEN REPLY #15574 /* ~"그는 어떻게 싸우오? 칼로? 마법으로?"~ */ GOTO 13
  IF ~~ THEN REPLY #15575 /* ~"그 일에 대해서는 고민하지 마시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15576 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4 4.4
  SAY #15511 /* ~"벌통 말씀이오, 나으리?" 그는 두건 위를 긁은 후 어깨를 으쓱한다. "벌통은 보시는 바와 같이... 모든 지역에 걸쳐 비참한 슬럼이오. 그 이상은 더 얘기할 것이 없소."~ */
  IF ~~ THEN REPLY #15577 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15578 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",1)
!Dead("Adyzoel")
~ THEN BEGIN 16 // from:
  SAY #15512 /* ~그는 당신이 다가가자 놀란 듯하다, 그러나 이내 당신을 알아본다. "안녕하시오, 나으리."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15579 /* ~"겉모습으로 날 속일 생각은 하지 마시오. 난 당신이 무엇인지 아오, 마족."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15580 /* ~"안녕하시오, '방탕자를 따라다니는 자' 나는 당신이 겉으로 드러난 것 이상의 존재라고 들었소."~ */ GOTO 20
  IF ~~ THEN REPLY #15581 /* ~"안녕하시오, '방탕자를 따라다니는 자.' 질문할 것들이 좀 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #15582 /* ~"안녕하시오, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",0)
Dead("Adyzoel")
~ THEN BEGIN 17 // from:
  SAY #15513 /* ~이 법복을 입은 역겨운 사내는 주변을 조심스럽게 둘러보며 어슬렁거리고 있다. 그는 당신이 자신을 바라보는 것을 눈치채고 급하게 움직이기 시작한다. ~ */
  IF ~~ THEN REPLY #15583 /* ~"안녕하시오..."~ */ GOTO 18
  IF ~~ THEN REPLY #15584 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.2
  SAY #15514 /* ~사내는 갑자기 도망친다, 그러자 시체 파리들과 그의 더러운 갈색 법복이 바람에 나부낀다.~ */
  IF ~~ THEN REPLY #15585 /* ~"빌어먹을..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Dead("Adyzoel")
~ THEN BEGIN 19 // from:
  SAY #15515 /* ~당신이 접근하는 것을 보자 사내의 종기투성이 얼굴은 근심으로 가득 찬다. 그는 뒤로 물러서기 시작한다.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15586 /* ~"겉모습으로 날 속일 생각은 하지 마시오. 난 당신이 무엇인지 아오, 마족."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15589 /* ~"나는 당신이 겉으로 드러난 것 이상의 존재라고 들었소."~ */ GOTO 20
  IF ~~ THEN REPLY #15590 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 18
  IF ~~ THEN REPLY #15591 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.1 3.1 4.1 16.1 19.1
  SAY #15516 /* ~"에? 그게 무슨 뜻이오, 나으리?" 그는 정말로 당황해 하는 것 같다.~ */
  IF ~~ THEN REPLY #15592 /* ~"당신이 내게 말해주는 것이 어떻겠소, '방탕자를 따라다니는 자."~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15593 /* ~"당신은 내가 무슨 말을 하는지 알 것이오. 당신의 정체는 뭐요?"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15594 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15595 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15517 /* ~"난... 당신이 무슨 말을 하는지 모르겠소, 나으리... 정말이오! 혹시 날 다른 사람으로 착각한 건 아니오?"~ */
  IF ~~ THEN REPLY #15596 /* ~"좋소. 그럼 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #15597 /* ~진실: "말해라, 아니면 널 두들겨서라도 답을 듣고야 말겠다, 이 쓰레기야!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rchasr_1","GLOBALGood",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15598 /* ~허풍: : "말해라, 아니면 널 두들겨서라도 답을 듣고야 말겠다, 이 쓰레기야!~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rchasr_1","GLOBALLaw",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15599 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",3)
~ THEN BEGIN 22 // from:
  SAY #15518 /* ~당신이 접근하자 사내의 종기투성이 얼굴은 공포로 가득 찬다. 그는 소리를 지르며 뒤로 물러서기 시작한다.~ */
  IF ~~ THEN REPLY #15600 /* ~"기다리시오, 질문할 것들이 좀 있소..."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15601 /* ~그를 그냥 보내준다.~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.0 2.0 3.0 4.0 16.0 19.0
  SAY #15519 /* ~그는 공포에 질려 소리없이 당신을 바라본다. ~ */
  IF ~~ THEN REPLY #15602 /* ~"그래서?"~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("RChaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15603 /* ~"겁낼 필요는 없소, 난 당신을 해치려고 온 게 아니니까."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("Rchaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15604 /* ~"내가 생각했던 대로군. 안녕히 계시오."~ */ DO ~SetGlobal("RChaser","AR0400",3)
~ EXIT
END
