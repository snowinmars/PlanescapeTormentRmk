// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTAI~

IF ~  Global("Mortai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1794 /* ~이 작고 쭈글쭈글한 사내는 그가 입고 있는 법복에 비해 너무 작다. 그의 작은 체구를 가리기에 그렇게 큰 옷을 고른 것처럼 보인다. 그는 90대 후반인 것처럼 보이나 활력이 넘쳐 흐르고 있다... 그는 늘 안절부절 못하고 있으며 그의 눈은 마치 바 안을 새처럼 날렵하게 둘러보고 있다.~ */
  IF ~~ THEN REPLY #13417 /* ~"안녕하시오."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #13418 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1795 /* ~남자는 눈을 번뜩이며 당신을 살펴본다, 그리고 고개를 가볍게 끄덕여 인사한다. "반갑소, 여행자. 당신은 시길에 온지 얼마 안된 것 같소..." 그는 말을 얼버무린다. "실례지만 혹시 우리가 전에 만난 적이 있지 않소? 어쩐지 당신 얼굴이 낯이 익소."~ */
  IF ~~ THEN REPLY #13419 /* ~"그럴지도 모르오. 당신은 그것이 나였다고 확신할 수 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #13420 /* ~"아니오, 적어도 난 당신을 기억하지 못하오."~ */ GOTO 2
  IF ~~ THEN REPLY #13421 /* ~"그럼 관두시오. 그만 가야겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #13350 /* ~"흠... 내가 착각을 한 모양이오." 모타이는 고개를 젓는다. "뭐, 상관없소. 이 모타이 그레이브센드가 어떻게 도와 드리면 되겠소? 당신은..." 그는 혀를 차면서 말한다. "*계약*에 관심이 있소?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13422 /* ~"계약?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13423 /* ~"계약?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
~ THEN REPLY #13424 /* ~"모타이 그레이브센드? 당신이 앵갸와 계약을 한 더스트맨이오?"~ */ GOTO 42
  IF ~~ THEN REPLY #13425 /* ~"오늘은 사양하겠소, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 10.0 61.0
  SAY #13351 /* ~"계약서 말이오? 그건 그냥 간단한 거래요." 모타이는 그의 거대한 법복 깊숙한 곳에서 먼지투성이의 양피지와 깃펜을 꺼낸다. "나는 당신에게 동전 쉰 닢을 주겠소. 그 대신 당신이 죽은 후 더스트맨 당파는 당신의 유해에 대한 권리를 가질 것이오." 그는 미소를 짓고 혀를 찬다. "죽은 후에 시체가 무슨 필요가 있겠소?"~ */
  IF ~~ THEN REPLY #13426 /* ~"더스트맨은 시체를 가지고 무엇을 하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #13427 /* ~"내 시체에 동전 50닢? 좋소, 서명을 하겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #13428 /* ~"관심없소. 하지만 좀 물어볼 것들이 있소.~ */ GOTO 9
  IF ~~ THEN REPLY #13429 /* ~"당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.1 9.1 10.1 61.1
  SAY #13352 /* ~"계약서 말이오? 그건 그냥 간단한 거래요." 모타이는 그의 거대한 법복 깊숙한 곳에서 먼지투성이의 양피지와 깃펜을 꺼낸다. "일반적으로 계약액은 동전 쉰 닢이지만... 당신에게는 백 닢을 주겠소. 그 대신 당신이 죽은 후 더스트맨 당파는 당신의 유해에 대한 권리를 가질 것이오." 그는 미소를 짓고 혀를 찬다. "죽은 후에 시체가 무슨 필요가 있겠소?"~ */
  IF ~~ THEN REPLY #13430 /* ~"더스트맨은 시체를 가지고 무엇을 하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #13431 /* ~"내 시체에 동전 백 닢? 좋소, 서명을 하겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #13432 /* ~"관심없소. 하지만 좀 물어볼 것들이 있소.~ */ GOTO 9
  IF ~~ THEN REPLY #13433 /* ~"당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #13353 /* ~그는 모른다는 듯 두 손을 든다. "무슨 상관이오? 당신이 죽은 후에는 아무런 의미도 없소."~ */
  IF ~~ THEN REPLY #13434 /* ~"내겐 상관이 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #13435 /* ~"좋소, 서명하겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #13436 /* ~"관심없소. 하지만 좀 물어볼 것들이 있소.~ */ GOTO 9
  IF ~~ THEN REPLY #13437 /* ~"당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13354 /* ~"*꼭* 알아야겠다면 말해주리다. 대부분의 경우 시체를 가지고 아무 일도 하지 않소, 그러니 우리들 더스트맨은 그냥 돈을 허비한 셈이오! 정말 어리석기도 하지!" 그는 가볍게 미소를 지은 후 미안하다는 표정을 짓는다. "하지만... *매우 가끔씩* 시체안치소의 노동자들을 교체해야 할 경우가 있소. 그럴 경우 우리는 당신 시체를 필요로 할지도 모르오."~ */
  IF ~~ THEN REPLY #13438 /* ~"당신 얘기는 내가 죽은 후에 좀비로서 부활되어 시체안치소에서 노동을 하게 될 거란 얘기요? 별로 기분좋은 얘기가 아니군."~ */ GOTO 7
  IF ~~ THEN REPLY #13439 /* ~"좋소, 서명하겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #13440 /* ~"관심없소. 하지만 좀 물어볼 것들이 있소.~ */ GOTO 9
  IF ~~ THEN REPLY #13441 /* ~"당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #13355 /* ~"아, 하지만 아무런 위해도 가하지 않고 아무런 고통도 없소..." 모타이는 강조하려는 듯 손가락을 하나 치켜든다. "그리고 위험도 없소. 당신은 사후에 자신에게 아무런 필요도 없을 것을 넘기고, 대신 *현생*에서 쓸 돈을 받는 셈이오." 모타이는 자신의 가슴을 가볍게 두드린다. "나 자신도 계약서에 서명을 했소... 내가 죽은 후에 *내* 시체는 아무런 필요도 없으니까."~ */
  IF ~~ THEN REPLY #13442 /* ~"흠... 옳소. 좋소, 서명을 하리다."~ */ GOTO 12
  IF ~~ THEN REPLY #13443 /* ~"생각해 보겠소. 지금으로선 몇 가지 물어볼 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13444 /* ~"난 여러 이유 때문에 그냥 편안하게 영면하고 싶소. 당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.2 12.5 13.5 20.3 21.4 32.3 34.2 35.2 40.2 61.5 63.4
  SAY #13356 /* ~"하지만 난 당신을 도울 수가 있소!" 당신이 떠나려 하자 그는 간청하는 목소리로 당신을 부른다. "만약 돈이 필요하게 되면 돌아오시오, 이 모타이가 도와 드리겠소... 계약서에 서명만 하면."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 4.2 5.2 6.2 7.1 10.2 11.2 12.4 13.4 20.2 21.3 22.0 23.0 24.3 25.2 26.1 27.5 27.6 27.7 27.8 27.9 28.1 29.2 30.0 31.1 32.2 33.1 34.1 35.1 36.3 37.2 38.1 40.1 41.3 42.3 43.5 44.5 45.4 46.5 49.4 52.4 55.3 60.0 61.4 62.0 63.3 66.2
  SAY #13357 /* ~"물론이오." 모타이는 고개를 끄덕인다. "기꺼이 당신 질문에 대답해 드리겠소..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13445 /* ~"그 계약에 대해 다시 얘기해주시오."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13446 /* ~"그 계약에 대해 다시 얘기해주시오."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13447 /* ~"당신이 얘기한 계약에 서명하고 싶소."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13448 /* ~"당신과 서명한 계약을 취소하고 싶소."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13449 /* ~"당신이 앵갸와 사후 계약서에 서명한 사람이오?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13450 /* ~"당신이 앵갸와 서명한 계약서를 볼 수 있겠소?"~ */ GOTO 54
  IF ~~ THEN REPLY #13451 /* ~"내게 이 곳 손님들에 대해 얘기해줄 수 있겠소?"~ */ GOTO 27
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13452 /* ~"최근에 일지를 본 적이 있소? 난 내 일지를 잃어버렸소."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13453 /* ~"나는 파로드란 사람을 찾고 있소. 그를 본 적이 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #13454 /* ~"오늘은 질문할 것이 없소. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 10 // from: 9.7
  SAY #13358 /* ~모타이는 고개를 젓는다. "나는 일지에 대해서는 모르오." 그는 미소짓는다. "내 전문은 *다른* 종류의 문서요."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13455 /* ~"당신이 전에 얘기했던 계약 말이오? 그게 어떻다는 거요?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13456 /* ~"당신이 전에 얘기했던 계약 말이오? 그게 어떻다는 거요?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #13457 /* ~"그건 당신이 전에도 얘기한 적이 있소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13458 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 11 // from: 9.8
  SAY #13359 /* ~모타이는 눈살을 찌푸린다. "그는 수집자들 중 하나요, 그렇지 않소? 나는 그에 대해 별로 아는 게 없소... 참입자 에모릭이 그에 대해 언급한 적이 있는 것 같소." 모타이는 주변을 둘러본다. "에모릭은 이 바 어딘가에 있을 거요... 그는 대개 맨 구석에 있는 연설자용 테이블 부근에 있소."~ */
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13459 /* ~"참입자 에모릭?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13460 /* ~"참입자 에모릭?"~ */ GOTO 33
  IF ~~ THEN REPLY #13461 /* ~"아. 다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13462 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 12 // from: 3.1 4.1 5.1 6.1 7.0 9.2 35.0
  SAY #13360 /* ~"훌륭하오! 훌륭해!" 모타이는 매우 기뻐한다... 엷은 미소를 띠며 그는 당신 앞에 먼지투성이 양피지 한 장과 깃펜을 놓는다. "당신은 결코 후회하지 않을 거요." 그는 손가락으로 계약서의 세 군데를 찍는다. "여기, 여기, 그리고 여기에 서명하시오, 그러면 우리 거래는 완료되오."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13463 /* ~여기저기에 서명한다.~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13464 /* ~여기저기에 서명한다.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #13465 /* ~"그런데 말이오... 당신은 내가 만난 다른 더스트맨들보다 훨씬 더 감정을 노골적으로 드러내는 것 같소."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13466 /* ~"그런데 말이오... 당신은 내가 만난 다른 더스트맨들보다 훨씬 더 감정을 노골적으로 드러내는 것 같소."~ */ GOTO 13
  IF ~~ THEN REPLY #13467 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13468 /* ~"관두시오. 당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.2 12.3
  SAY #13361 /* ~모타이의 미소는 싸늘하게 식는다. "무슨 악의를 가지고 그런 말을 한 게 아니라고 믿소."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13469 /* ~"아니오. 계약서에 서명하겠소."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13470 /* ~"아니오. 계약서에 서명하겠소."~ */ GOTO 21
  IF ~~ THEN REPLY #13471 /* ~"무슨 문제라도 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #13472 /* ~"당신 기분을 상하게 하려고 했던 건 아니오... 하지만 당신은 나와 이 계약서에 서명을 하는 데 매우 열성적이었소. 더스트맨에게 그런 열성이 있다는 건 내게 이상하게 느껴졌소."~ */ GOTO 63
  IF ~~ THEN REPLY #13473 /* ~"사과하리다. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13474 /* ~"당신 기분을 상하게 하려고 했던 건 아니오... 하지만 당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 21.2 63.0
  SAY #13362 /* ~당신은 깃펜을 손에 쥐고 양피지에 서명을 하기 시작한다... 깃펜이 양피지에 닿자 마치 대거로 강철 위에 글씨를 쓰는 것처럼 *끽끽* 소리가 난다.~ */
  IF ~~ THEN REPLY #13475 /* ~계속 서명한다...~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13363 /* ~당신은 양피지에 서명을 하려고 한다, 하지만 당신은 그것이 당신 펜 아래에서 움직이고 있다는 사실을 깨닫게 된다... 아무리 노력을 해도 그 위에 당신 이름을 서명할 수가 없다. 계약서가 먼지투성이 양피지에서 뭔가 살아 있는 것으로 변한 듯하다..."~ */
  IF ~~ THEN REPLY #13476 /* ~"어... 모타이? 이 계약서는 대체 어떻게 된 거요?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #13364 /* ~당신은 모타이와 얘기를 하려고 그를 쳐다본다. 그러나 그의 얼굴은 어느새 히죽 웃는 해골로 바뀌어 있다. 바 안에서는 시간이 멈춘 듯하다, 그리고 다른 손님들은 석상처럼 얼어 붙은 채 아무런 말들이 없다. 모타이가 입을 열자 해골 안에서 먼지가 연기처럼 나온다.~ */
  IF ~~ THEN REPLY #13477 /* ~"모타이...?~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13365 /* ~사신의 머리는 귀에 거슬리는 소리로 말을 한다, 그리고 그 이빨들 사이로 먼지가 흘러나온다...

  *서명하시오."

  *하지만 모든 것에는 대가가 따르는 법이오."

  *그리고 무엇이 인간의 본성을 바꿀 수가 있소?"

이 말들은 조화되지 않은 죽음의 합창으로, 마치 다섯, 열, 스물, 백의... 남, 녀, 노, 소, 절박한, 조용한, 신경질적인.. 목소리가 한꺼번에 말하는 것 같다.~ */
  IF ~~ THEN REPLY #13478 /* ~"인간의 본성...?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13366 /* ~당신은 그 말을 하면서 갑자기 아찔해진다. 그리고 나서 당신 귀에 들리는 건 모타이의 보통 목소리다. 그는 한 손을 당신 어깨에 얹고 있다. "괜찮소?" 그는 불안하게 웃는다. "난 당신 정신이 아주 나간 줄 알았소..."~ */
  IF ~~ THEN REPLY #13479 /* ~정신을 차리려고 노력한다...~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #13367 /* ~마치 시간이 숨을 내쉬고 다시 정상적으로 호흡하는 듯하다... 바도 다시 정상으로 돌아왔으며, 모타이의 얼굴도 더 이상 사신의 머리가 아니다. 마치 어떤 것이 절박하게 부상하려고 하나 그럴 수 없는 것처럼, 당신은 당신 해골 안에서 이상한 압력을 느낀다. 먼지를 내뿜으며 말하는 사신의 머리와의 체험은... 마치 당신이 서로 찔러 하나의 이미지를 만드는 여러 개의 기억의 파편들을 동시에 기억해 낸 것처럼 느껴진다... 그리고 어떤 이유에서인지 사신의 머리의 모든 목소리가 오래 전에 죽은 사람들의 사람들의 목소리라는 사실을 안다. ~ */
  IF ~~ THEN REPLY #13480 /* ~"잠깐만 시간을 주시오... 난 괜찮을 거요."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13368 /* ~모타이는 당신 어깨에서 손을 뗀다... 그는 당신 건강을 걱정해서라기보다는 손님을 하나 잃을지도 모른다는 생각에 불안해 하는 것 같다. 테이블 위에 놓인 양피지를 보자 당신은 당신이 계약서에 서명을 한 것이 이번이 처음은 아니라는 사실을 깨닫게 된다... 그리고 이와 같은 계약서에 서명하는 것 역시 처음은 아니라는 생각이 든다. ~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13481 /* ~계약서에 서명하는 것을 마친다.~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13482 /* ~계약서에 서명하는 것을 마친다.~ */ GOTO 23
  IF ~~ THEN REPLY #13483 /* ~"실은 말이오, 모타이... 이 계약서에 서명하는 것을 잠시 미루고 싶소. 우선 다른 질문들부터 하고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13484 /* ~"당신이 날 도울 수 있다고는 생각되지 않소... 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 12.1 13.1 63.1
  SAY #13369 /* ~당신이 다시 깃펜으로 양피지에 쓰려고 하자, 당신 머릿속에서 기억과 생각이 요동하는 것이 느껴진다..~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13485 /* ~기억을 억누르고 계약서에 서명을 한다.~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13486 /* ~기억을 억누르고 계약서에 서명을 한다.~ */ GOTO 23
  IF ~~ THEN REPLY #13487 /* ~기억에 몸을 맡긴다.~ */ GOTO 14
  IF ~~ THEN REPLY #13488 /* ~"실은 말이오, 모타이... 이 계약서에 서명하는 것을 잠시 미루고 싶소. 우선 다른 질문들부터 하고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13489 /* ~"당신이 날 도울 수 있다고는 생각되지 않소... 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #13370 /* ~당신이 계약서에서 모타이가 가리킨 세 장소에 'X'라고 적어 넣는다. 당신이 서명을 끝내자 모타이는 두 손을 마치 채찍처럼 재빠르게 움직인다. 왼손으로는 양피지에 먼지를 뿌려 잉크가 빨리 마르도록 하고, 오른손으로는 당신 손에 모두 쉰 닢의 동전을 쥐어 준다. ~ */
  IF ~~ THEN REPLY #13490 /* ~"이제 그 일이 끝났으니 당신에게 질문을 좀 합시다..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13491 /* ~"우리 거래는 완료되었소... 안녕히 계시오."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 23 // from: 20.1 21.1
  SAY #13371 /* ~당신이 계약서에서 모타이가 가리킨 세 장소에 'X'라고 적어 넣는다. 당신이 서명을 끝내자 모타이는 두 손을 마치 채찍처럼 재빠르게 움직인다. 왼손으로는 양피지에 먼지를 뿌려 잉크가 빨리 마르도록 하고, 오른손으로는 당신 손에 모두 백 닢의 동전을 쥐어 준다. ~ */
  IF ~~ THEN REPLY #13492 /* ~"이제 그 일이 끝났으니 당신에게 질문을 좀 합시다..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13493 /* ~"우리 거래는 완료되었소... 안녕히 계시오."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 24 // from: 9.3
  SAY #13372 /* ~모타이는 매우 조심스러워 하는 것 같다. "불행히 그럴 수는 없소. 계약은 이미 성립되어 그 효력을 발휘하고 있소."~ */
  IF ~~ THEN REPLY #13494 /* ~"당신과의 계약을 해지할 수 있는 방법은 있소?"~ */ GOTO 25
  IF ~~ THEN REPLY #13495 /* ~허풍: "내 계약서를 당장 내놓지 않으면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13496 /* ~진실: "내 계약서를 당장 내놓지 않으면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13497 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13498 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13373 /* ~모타이는 고개를 젓는다. "이제 그건 법적인 문제요." 그는 턱을 두드리며 혀를 찬다. "다른 사람의 경우라면 계약서를 내주었을 지도 모르오, 하지만 당신의 경우에는 계약서의 조건이 곧 성립될 것 같소."~ */
  IF ~~ THEN REPLY #13499 /* ~허풍: "이건 어떻소: 내 계약서를 당장 내놓지 않으면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13500 /* ~진실: "이건 어떻소: 내 계약서를 당장 내놓지 않으면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13501 /* ~"그럼 좋소. 달리 질문할 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13502 /* ~"그럼 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 26 // from: 24.1 24.2 25.0 25.1
  SAY #13374 /* ~모타이는 그 자리에서 가만히 당신의 능력을 잰다. "만약 당신이 여기서 무기를 뽑으면 그걸 미처 쓰기도 전에 죽게 될 거요. 이 곳에는 당신이 볼 수조차 없는 수호자들이 떠다니고 있소. 그리고 만약 당신이 살아서 나가더라도 더스트맨 당파는 전력을 다해 당신을 처벌할 것이오. 내 앞에서 그런 어리석은 협박은 하지 마시오."~ */
  IF ~~ THEN REPLY #13503 /* ~"위험을 감수하겠소... 죽을 준비를 하시오."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13504 /* ~"그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13505 /* ~"그럼 관두시오. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 27 // from: 9.6
  SAY #13375 /* ~"물론이오. 어느 손님에 대해 알고 싶소?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13506 /* ~"죽음을 기다리는 자에 대해 얘기해줄 수 있겠소?"~ */ GOTO 28
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13507 /* ~"내게 세레에 대해 얘기해줄 수 있겠소?"~ */ GOTO 31
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13508 /* ~"내게 참입자 에모릭에 대해 얘기해줄 수 있겠소?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13509 /* ~"내게 참입자 에모릭에 대해 얘기해줄 수 있겠소?"~ */ GOTO 33
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13510 /* ~"내게 늙은 카퍼아이즈에 대해 얘기해줄 수 있겠소?"~ */ GOTO 36
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
~ THEN REPLY #13511 /* ~"관두시오. 실은 난 그들의 이름을 전혀 모르오. 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 9
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13512 /* ~"관두시오. 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13513 /* ~"관두시오. 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #13653 /* ~"관두시오. 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13654 /* ~"관두시오. 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13655 /* ~"안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13376 /* ~"정말 문제가 많은 참입자요." 모타이는 못마땅하다는 듯 혀를 찬다. "그는 더스트맨에게 있어서는 안될 열정을 가지고 죽음을 추구하고 있소."~ */
  IF ~~ THEN REPLY #13514 /* ~"더스트맨에게는 열정을 느끼는 것이 허락되지 않소?"~ */ GOTO 29
  IF ~~ THEN REPLY #13515 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13516 /* ~"안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 29 // from: 13.2 28.0 31.0 33.0 36.0 37.0 40.0 63.2
  SAY #13377 /* ~"아, 그렇소." 모타이는 눈살을 찌푸린다. "지나친 열정이나 감정은 진정한 죽음에 도달하는 것을 방해하오. 열정은 우리 당파의 철학과 상반되오."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #13517 /* ~"진정한 죽음?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 30
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13518 /* ~"진정한 죽음?"~ */ GOTO 30
  IF ~~ THEN REPLY #13519 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13520 /* ~"안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #13378 /* ~"진정한 죽음은 모든 더스트맨이 동경하며, 다른 사람들이 도달하는 것을 돕는, 평온한 망각의 경지요." 그는 못마땅하다는 듯 혀를 찬다. "우리 당파는 영혼을 현생에 묶어 두는 그 어느 것도 배격하오. 열정은 영혼의 닻 구실을 해서 영혼의 진정한 죽음에 도달하는 것을 막소." 그는 고개를 젓는다. "정말 불행한 일이오."~ */
  IF ~~ THEN REPLY #13521 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13522 /* ~"알겠소. 매우 유익했소. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY #13379 /* ~"고뇌하고 있는 참입자요. 내가 듣기로 그녀는 얼마 전에 병에 걸렸다고 하오... 그 때문에 그녀가 변한 것 같소. 이제 그녀는 신랄하며 화를 잘 내는 성격의 사람이 되었고, 더스트맨의 신념에 대해 예전처럼 믿지 않는 것 같소. 나는 그러한 신랄함이 당파 안에서의 그녀의 지위를 위협할 수 있는 열정이 아닐까 우려가 되오."~ */
  IF ~~ THEN REPLY #13523 /* ~"더스트맨에게는 열정을 느끼는 것이 허락되지 않소?"~ */ GOTO 29
  IF ~~ THEN REPLY #13524 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13525 /* ~"안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 32 // from: 11.0 27.2
  SAY #13380 /* ~"제4원에 속하는 존경받는 참입자요. 그는 *매우* 현명한 사람이오." 모타이는 약간 걱정이 되는 듯 당신을 살펴본다. "그에게 무슨 용건이 있는지 물어봐도 괜찮겠소? 아마 내가 그 대신 당신을 도울 수 있을지도 모르오." ~ */
  IF ~~ THEN REPLY #13526 /* ~"나는 에모릭과 계약을 하는 일에 대해 생각하고 있었소."~ */ GOTO 34
  IF ~~ THEN REPLY #13527 /* ~거짓말: "나는 에모릭과 계약을 하는 일에 대해 생각하고 있었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_2","GLOBALLaw",-1)
~ GOTO 34
  IF ~~ THEN REPLY #13528 /* ~"난 그렇게 생각하지 않소. 하지만 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13529 /* ~"아니, 당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오, 모타이."~ */ GOTO 8
END

IF ~~ THEN BEGIN 33 // from: 11.1 27.3
  SAY #13381 /* ~"제4원에 속하는 존경받는 참입자요. 그는 *매우* 현명한 사람이오." 그는 현생에 대한 열정과 미련을 던져 버렸소..." 그는 만족스러운 듯 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #13530 /* ~"더스트맨에게는 열정을 느끼는 것이 허락되지 않소?"~ */ GOTO 29
  IF ~~ THEN REPLY #13531 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13532 /* ~"정보를 주어 고맙소. 안녕히 계시오, 모타이."~ */ GOTO 56
END

IF ~~ THEN BEGIN 34 // from: 32.0 32.1
  SAY #13382 /* ~모타이는 당황하는 기색이 역력하다. " 아니, 안 되오! 그는 내가 계약의 조건으로 제시하는 액수의 반도 주지 않을 것이오. 내가 당신에게 줄 수 있는 액수에 비하면 새 발의 피에 불과할 거요! 성급한 결정을 내리기 전에 이 점을 잘 생각해 보시오!"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13533 /* ~"얼마나 더 제시하겠소?"~ */ DO ~SetGlobal("Mortai_Blackmail","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #13534 /* ~"생각해 보겠소. 그밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13535 /* ~"당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #13383 /* ~"나는..." 모타이는 혀를 찬다. "나는 당신에게 이른 다섯 닢, 아니 백 닢을 제시하겠소. 그건 다른 더스트맨들이 제시하는 것보다 훨씬 많은 액수요."~ */
  IF ~~ THEN REPLY #13536 /* ~"좋소. 당신과 계약하겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #13537 /* ~"생각해 보겠소. 그밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13538 /* ~"당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 27.4
  SAY #13384 /* ~모타이의 표정이 싸늘해진다. "구리빛 눈을 지닌 자 말이오? 그가 왜 여기 있는 지는 *그의* 눈만 봐도 알 수가 있소." 그는 가슴 위에 손가락으로 반원을 그린다. "그는 더스트맨의 일원이기는 하오, 하지만 나라면 *결코* 그같은 자하고는 사후 계약서를 서명하지 않을 거요. 그의 영혼은 동전이며, 내가 보기에 그는 돈에 대한 과다한 열정을 지니고 있소. 그는 이름뿐인 더스트맨이오."~ */
  IF ~~ THEN REPLY #13539 /* ~"더스트맨에게는 열정을 느끼는 것이 허락되지 않소?"~ */ GOTO 29
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13540 /* ~"오, 그도 계약 업무를 하고 있소?"~ */ GOTO 37
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13541 /* ~"당신 얘기는 내가 그와도 사후 계약서에 서명할 수 있단 뜻이오?"~ */ GOTO 40
  IF ~~ THEN REPLY #13542 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13545 /* ~"정보를 주어 고맙소. 안녕히 계시오, 모타이."~ */ GOTO 56
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #13385 /* ~모타이는 못마땅하다는 듯 혀를 찬다. "그렇소, 하지만 그 욕심꾸러기 괴물과 서명하느니 나와 하는 편이 낫소. 탐욕은 인간을 죽음으로 인도하는 열정이고, 더스트맨에게 있어서는 두 배나 더 위험하오."~ */
  IF ~~ THEN REPLY #13543 /* ~"더스트맨에게는 열정을 느끼는 것이 허락되지 않소?"~ */ GOTO 29
  IF ~~ THEN REPLY #13546 /* ~"만약에 내가 그와 계약서에 서명을 하면 어떻게 되오?"~ */ GOTO 38
  IF ~~ THEN REPLY #13547 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13548 /* ~"정보를 주어 고맙소. 안녕히 계시오, 모타이."~ */ GOTO 56
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #13386 /* ~모타이는 당신을 차가운 눈으로 응시한다. "그렇다면 당신은 범죄 행위를 저지르게 되는 거요. 나는 당신이 체포되도록 조치할 것이고, 법에 의거해 더스트맨은 사후 계약서를 당신이 의도한 것보다 더 *일찍* 집행하게 될 것이오." ~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #13544 /* ~"나는 이미 그와 계약서에 서명했소. 그 일에 대해 어떻게 할 거요?"~ */ GOTO 39
  IF ~~ THEN REPLY #13549 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13550 /* ~"정보를 주어 고맙소. 안녕히 계시오, 모타이."~ */ GOTO 56
END

IF ~~ THEN BEGIN 39 // from: 38.0 50.0 52.0
  SAY #13387 /* ~모타이의 얼굴이 창백해진다... 당신은 더스트맨이 얼굴이 더 창백해 지는 것이 것이 가능하리라고는 미처 생각하지 못했다. 그는 어떻게 해야 할지 망설이는 듯 중얼거린다. "당신..." 그는 갑자기 손뼉을 세 번 친다. 그러자 바람이 으르렁거리는 소리가 바 안에 울려 퍼지기 시작한다...~ */
  IF ~~ THEN REPLY #13551 /* ~"좋소, 그럼. 죽을 준비를 하시오..."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.2
  SAY #13388 /* ~모타이는 못마땅하다는 듯 혀를 찬다. "그렇소, 하지만 그 욕심꾸러기 괴물과 서명하느니 나와 하는 편이 낫소. 탐욕은 인간을 죽음으로 인도하는 열정이고, 더스트맨에게 있어서는 두 배나 더 위험하오. 카퍼이이즈와 얘기해 시간을 허비하지 말고... 나와 거래합시다."~ */
  IF ~~ THEN REPLY #13552 /* ~"더스트맨에게는 열정을 느끼는 것이 허락되지 않소?"~ */ GOTO 29
  IF ~~ THEN REPLY #13553 /* ~"알겠소. 하지만 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13554 /* ~"당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오, 모타이."~ */ GOTO 8
END

IF ~~ THEN BEGIN 41 // from: 42.1 55.1
  SAY #13389 /* ~모타이는 눈살을 찌푸린 후 그의 법복 안을 들여다 본다. "나는 보통 서류들을 가지고 다니지 않소, 하지만..." 모타이는 법복으로부터 한 다발의 서류를 꺼내 훑어보기 시작한다. "아니, 그건 지금 지니고 있지 않소. 내가 안쪽 방에 가서 그걸 가져오기를 바라시오?"~ */
  IF ~~ THEN REPLY #13555 /* ~"만약 그럴 수가 있다면 어디 한 번 보고 싶소."~ */ GOTO 64
  IF ~~ THEN REPLY #13556 /* ~"그렇지는 않소. 그 계약을 취소하고 싶소."~ */ GOTO 43
  IF ~~ THEN REPLY #13557 /* ~"당신은 계약서들을 이 곳에 보관해 두고 있소?"~ */ GOTO 55
  IF ~~ THEN REPLY #13558 /* ~"아니, 지금은 아니오. 대신 질문을 좀 하고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13559 /* ~"당신이 그와 서명한 사람인지 확인했을 뿐이오. 신경 쓰지 마시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 42 // from: 2.2 9.4 61.2
  SAY #13390 /* ~모타이는 눈살을 찌푸린다. 그는 곤란해 하는 것 같다. "아마..." 그는 잠시 생각한다. "하지만 그 이름이 생각나지 않소."~ */
  IF ~~ THEN REPLY #13560 /* ~"그 계약을 해지하고 싶소."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13561 /* ~"당신은 그 계약서를 지니고 있소?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13562 /* ~"앵갸의 계약서를 다시 볼 수 있겠소?"~ */ GOTO 54
  IF ~~ THEN REPLY #13563 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13564 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 43 // from: 41.1 42.0 55.0 66.0
  SAY #13391 /* ~모타이는 매우 조심스러워 하는 것 같다. "미안하지만 불가능하오. 계약은 이미 성립되어 그 효력을 발휘하고 있소."~ */
  IF ~~ THEN REPLY #13565 /* ~"그 계약서는 그의 삶을 갈가리 찢어 놓고 있소."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13566 /* ~"그 계약서는 그에게 엄청난 고뇌를 안겨 주고 있소... 마음 속에서 그토록 격렬하게 감정이 요동처서는 그가 진정한 죽음에 접근하지 못할 수도 있소."~ */ GOTO 45
  IF ~~ THEN REPLY #13567 /* ~"당신과의 계약을 해지할 수 있는 방법은 있소?"~ */ GOTO 49
  IF ~~ THEN REPLY #13568 /* ~허풍: "그 계약서를 당장 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13569 /* ~진실: "그 계약서를 당장 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13570 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13571 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 44 // from: 43.0 49.2 52.1
  SAY #13392 /* ~모타이는 고개를 젓는다. "그건 정말 불행한 일이오... 하지만 그건 이제 인정의 문제가 아니라 법적 문제요."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13572 /* ~"그 계약서는 그에게 엄청난 고뇌를 안겨 주고 있소... 마음 속에서 그토록 격렬하게 감정이 요동처서는 그가 진정한 죽음에 접근하지 못할 수도 있소."~ */ GOTO 45
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13573 /* ~"당신과의 계약을 해지할 수 있는 방법은 있소?"~ */ JOURNAL #64581 /* ~나는 모타이 그레이브센드와 이야기를 나누었으나, 그는 계약에 대해 타협하기를 거부했다. 그를 어떻게 설득해야 할지 모르겠으나 분명히 방법은 있을 것이다. 하지만 내가 한 가지 눈치챈 것은 그가 내가 시길에서 본 다른 더스트맨과는 다르게 행동한다는 점이다. 만약 내가 그나 바에 있는 다른 이들로부터 더스트맨의 신조에 대해 더 자세히 배울 수가 있다면, 그의 철학을 역으로 이용하여 그로부터 계약서를 얻어낼 방법을 발견할 수 있을지도 모른다.~ */ GOTO 49
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #64585 /* ~"내가 당신과의 계약을 해결할 방법이 혹시 없겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #13574 /* ~허풍: "그 계약서를 당장 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13575 /* ~진실: "그 계약서를 당장 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13576 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13577 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.0 49.3 52.2
  SAY #13393 /* ~그는 잠시 골똘히 생각한다. 당신이 그를 코너로 몰아 넣은 것 같다. "그럴 수는 없소. 그건 법적 문제요, 친구... 그리고 진정한 죽음에 도달하기 위해 그러한 감정을 극복하는 건 서명한 사람의 책임이오 나는..."~ */
  IF ~~ THEN REPLY #13578 /* ~"그래 당신은 한 장의 양피지 때문에 그로부터 진정한 죽음의 기회를 앗아가겠다는 거요?"~ */ GOTO 46
  IF ~~ THEN REPLY #13579 /* ~"당신과의 계약을 해지할 수 있는 방법은 있소?"~ */ GOTO 49
  IF ~~ THEN REPLY #13580 /* ~허풍: "그 계약서를 당장 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13581 /* ~진실: "그 계약서를 당장 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13582 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13583 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #13394 /* ~모타이는 한숨을 쉬고 당신을 달래려는 듯 두 손을 든다. "이것 보시오, 당신이 얘기하는 것과는 상황이 다르오..."~ */
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13584 /* ~"당신은 한 사람의 영혼을 종이 한 장 때문에 파멸시킴으로서 더스트맨의 철학을 모독했소. 당신 당파의 다른 멤버들도 당신의 이런 행동을 아오? 만약 모른다면 곧 알게 될 것이오."~ */ GOTO 47
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13585 /* ~"당신은 한 사람의 영혼을 종이 한 장 때문에 파멸시킴으로서 더스트맨의 철학을 모독했소. 당신 당파의 다른 멤버들도 당신의 이런 행동을 아오? 만약 모른다면 곧 알게 될 것이오."~ */ GOTO 51
  IF ~~ THEN REPLY #13586 /* ~"당신과의 계약을 해지할 수 있는 방법은 있소?"~ */ GOTO 49
  IF ~~ THEN REPLY #13587 /* ~허풍: "그 계약서를 당장 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13588 /* ~진실: "그 계약서를 당장 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13589 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13590 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #13395 /* ~모타이는 당신을 쏘아본 후 입을 연다, 그리고 닫았다가 다시 연다. "이런 염병할... 여기서 기다리시오." 그는 속삭이는 듯한 목소리로 말한다. "그리고 입을 다물고 있으시오." 그는 당신을 노려보고 나서 육중하게 걸어간다.~ */
  IF ~~ THEN REPLY #13591 /* ~기다린다...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #13396 /* ~잠시 후 그가 돌아온다. 그는 손에 들고 있는 먼지투성이 양피지를 당신에게 준다. "여기 있소!" 그는 경멸하듯 코방귀를 뀐다. "모든 건 한 사람의 정신적 안정을 위해서요... 이제 설교는 집어치우고 내 앞에서 꺼지시오!"~ */
  IF ~~ THEN REPLY #13592 /* ~"지금은 일단... 떠나도록 하겠소. 안녕히 계시오, 모타이."~ */ DO ~GiveItemCreate("Acontrac",Protagonist,1,0,0)
SetGlobal("Mortai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 43.2 44.1 44.2 45.1 46.2 52.3
  SAY #13397 /* ~모타이는 고개를 젓는다. "그건 법적 문제이지 토론의 대상이 아니오."~ */
  IF ~~ THEN REPLY #13593 /* ~허풍: "이건 어떻소: 내게 앵갸의 계약서를 주시오, 아니면 당신을 지금 거 있는 자리에서 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13594 /* ~진실: "이건 어떻소: 앵갸의 계약서를 내놓으시오, 아니면 당신이 서 있는 그 자리에서 당신을 도륙하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13595 /* ~"하지만 그 계약서는 그의 삶을 갈가리 찢어 놓고 있소."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13596 /* ~"하지만 그 계약서는 그의 삶을 갈가리 찢어 놓고 있소. 그것은 그에게 엄청난 고뇌를 안겨 주고 있소... 마음 속에서 그토록 격렬하게 감정이 요동처서는 그가 진정한 죽음에 접근하지 못할 수도 있소."~ */ GOTO 45
  IF ~~ THEN REPLY #13597 /* ~"그럼 좋소. 달리 질문할 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13598 /* ~"그럼 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from:
  SAY #13398 /* ~모타이는 그 자리에서 가만히 당신의 능력을 잰다. "만약 당신이 그 계약서를 가져가면 당신은 여길 살아서 떠나지 못할 거요. 이 곳에는 당신이 볼 수조차 없는 수호자들이 떠다니고 있소. 그리고 만약 당신이 살아서 나가더라도 더스트맨 당파는 전력을 다해 당신을 처벌할 것이오. 내 앞에서 그런 어리석은 협박은 하지 마시오."~ */
  IF ~~ THEN REPLY #13599 /* ~"위험을 감수하겠소. 날 한 번 멈추어 보시오."~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 39
  IF ~~ THEN REPLY #13600 /* ~모타이에게 계약서를 돌려준다.~ */ GOTO 66
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY #13399 /* ~잠시 후 그가 돌아온다. 그는 손에 들고 있는 먼지투성이 양피지를 당신에게 준다. "여기 있소!" 그는 경멸하듯 코방귀를 뀐다. "모든 건 한 사람의 정신적 안정을 위해서요... 이제 내 앞에서 꺼지시오!"~ */
  IF ~~ THEN REPLY #13601 /* ~"지금은 일단... 떠나도록 하겠소. 안녕히 계시오, 모타이."~ */ DO ~SetGlobal("Mortai","GLOBAL",2)
GiveItem("Acontrac",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.3 43.4 44.3 44.4 45.2 45.3 46.3 46.4 49.0 49.1
  SAY #13400 /* ~모타이는 그 자리에서 가만히 당신의 능력을 잰다. "만약 당신이 여기서 무기를 뽑으면 그걸 미처 쓰기도 전에 죽게 될 거요. 이 곳에는 당신이 볼 수조차 없는 수호자들이 떠다니고 있소. 그리고 만약 당신이 살아서 나가더라도 더스트맨 당파는 전력을 다해 당신을 처벌할 것이오. 내 앞에서 그런 어리석은 협박은 하지 마시오."~ */
  IF ~~ THEN REPLY #13602 /* ~"위험을 감수하겠소... 죽을 준비를 하시오."~ */ GOTO 39
  IF ~~ THEN REPLY #13603 /* ~"그 계약서는 그의 삶을 갈가리 찢어 놓고 있소."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13604 /* ~"그 계약서는 그에게 엄청난 고뇌를 안겨 주고 있소... 마음 속에서 그토록 격렬하게 감정이 요동처서는 그가 진정한 죽음에 접근하지 못할 수도 있소."~ */ GOTO 45
  IF ~~ THEN REPLY #13605 /* ~"당신과의 계약을 해지할 수 있는 방법은 있소?"~ */ GOTO 49
  IF ~~ THEN REPLY #13606 /* ~"그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13607 /* ~"그럼 관두시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from:
  SAY #13401 /* ~(NULL NODE)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 9.5 42.2 55.2 61.3 66.1
  SAY #13402 /* ~모타이는 법복 속에서 계약서를 꺼내 당신이 볼 수 있도록 치켜든다. "여기 있소... 앵갸는 간단한 서명 하나로 부자가 되었소." 당신을 계약서를 대강 훑어본다, 그것은 아무런 문제도 없는 공식 계약서 같다. ~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13608 /* ~계약서를 살펴보는 척 하면서 양피지를 가짜 계약서와 바꿔친 후, 모타이에게 돌려준다.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13609 /* ~계약서를 살펴보는 척 하면서 양피지를 가짜 계약서와 바꿔친 후, 모타이에게 돌려준다.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13610 /* ~계약서를 살펴보는 척 하면서 양피지를 가짜 계약서와 바꿔친 후, 모타이에게 돌려준다.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13611 /* ~"좋소... 하자는 없는 것 같소."~ */ GOTO 66
END

IF ~~ THEN BEGIN 55 // from: 41.2
  SAY #13403 /* ~"그렇소, 시체안치소로 운반될 때까지는. 나는 내 자신의 계약서를 포함해 많은 계약서에 서명을 받았소. 그걸 모두 시체안치소로 운반하는 건 정말 힘든 일이오."~ */
  IF ~~ THEN REPLY #13613 /* ~"난 당신이 앵갸와 한 계약을 해지하고자 하오."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13614 /* ~"당신은 앵갸와 작성한 계약서를 몸에 지니고 있소?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13615 /* ~"앵갸의 계약서를 다시 볼 수 있겠소?"~ */ GOTO 54
  IF ~~ THEN REPLY #13616 /* ~"관두시오, 그럼. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13617 /* ~"그냥 궁금했을 뿐이오. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 9.9 10.3 11.3 22.1 23.1 24.4 25.3 26.2 27.10 28.2 29.3 30.1 31.2 33.2 36.4 37.3 38.2 41.4 42.4 43.6 44.6 45.5 46.6 49.5 52.5 55.4 66.3
  SAY #13404 /* ~당신이 떠나려 하자 그는 고개를 끄덕인다. "흠..." 그는 묘한 표정을 짓는다. ~ */
  IF ~~ THEN REPLY #13618 /* ~"무슨 문제라도 있소?"~ */ GOTO 57
  IF ~~ THEN REPLY #13619 /* ~"안녕히 계시오, 모타이."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #13405 /* ~모타이는 눈살을 찌푸린다. "미안하오, 다시 한 번 물어야겠소... 우리가 전에 만난 적이 없는 것이 확실하오?"~ */
  IF ~~ THEN REPLY #13620 /* ~"그럴지도 모르오. 하지만 나는 당신을 기억하지 못하오."~ */ GOTO 58
  IF ~~ THEN REPLY #13621 /* ~"아니, 난 그렇게 생각하지 않소."~ */ GOTO 58
  IF ~~ THEN REPLY #13622 /* ~"안녕히 계시오, 모타이."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #13406 /* ~"흠." 모타이는 고개를 젓는다. "뭐, 상관없소."~ */
  IF ~~ THEN REPLY #13623 /* ~"안녕히 계시오, 모타이."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 56.1 57.2 58.0
  SAY #13407 /* ~"그래, 안녕히 계시오..." 모타이는 당신이 떠나는 중에도 당신을 계속 살펴본다, 그리고 그가 조용히 중얼거리는 소리가 들린다. "저 자에게는 뭔가가 있어..."~ */
  IF ~~ THEN REPLY #13624 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Mortai","GLOBAL",2)
~ THEN BEGIN 60 // from:
  SAY #13408 /* ~"아..." 모타이는 당신이 다가가자 눈살을 찌푸리며 혀를 찬다. "또 당신이군... 더스트맨 당파의 이름으로 나로부터 계약서를 더 빼앗아 가려고 왔소?" 그는 얼굴을 찌푸린 후 한숨을 쉰다. "뭐, 괜찮소. 과거는 과거니까..." 그는 예전의 미소를 되찾고 당신을 향해 고개를 끄덕인다. "어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #13625 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #13626 /* ~"그럼 관두시오. 그만 가야겠소."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ EXIT
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN BEGIN 61 // from:
  SAY #13409 /* ~"아, 여행자!" 모타이는 당신을 보자 미소짓는다. "다시 만나 반갑소... 내가 당신을 어떻게 도와 드리면 되겠소?" 그는 기대를 하는 듯하다. "혹시 계약을 하러 오셨소?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13627 /* ~"계약?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13628 /* ~"계약?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13629 /* ~"당신이 앵갸와 사후 계약서에 서명한 사람이오?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13630 /* ~"당신이 앵갸와 서명한 계약서를 볼 수 있겠소?"~ */ GOTO 54
  IF ~~ THEN REPLY #13631 /* ~"아니오, 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13632 /* ~"당신이 날 도울 수 있다고는 생각되지 않소. 이만 실례해야겠소."~ */ GOTO 8
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",1)
~ THEN BEGIN 62 // from:
  SAY #13410 /* ~"아, 여행자!" 모타이는 당신을 보자 미소짓는다. "다시 만나 반갑소... 내가 당신을 어떻게 도와 드리면 되겠소?"~ */
  IF ~~ THEN REPLY #13633 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13634 /* ~"그럼 관두시오. 그만 가야겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 13.3
  SAY #13411 /* ~"열성적?! 나..." 모타이는 눈썹을 치켜 올린다, 그리고 점잖게 기침을 한다. "계약서에 서명을 하실 생각이오, 아니오? 아니라면..."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13635 /* ~"계약서에 서명하고 싶소."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",0)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13636 /* ~"계약서에 서명하고 싶소."~ */ GOTO 21
  IF ~~ THEN REPLY #13637 /* ~"감정을 드러내는 것이 무슨 문제라도 되오?"~ */ GOTO 29
  IF ~~ THEN REPLY #13638 /* ~"미안하오, 하지만 나는 계약서에 서명을 하고 싶지 않소. 하지만 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13639 /* ~"당신 기분을 상하게 하려고 했던 건 아니오... 하지만 당신이 날 도울 수 있다고는 생각되지 않소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 64 // from: 41.0
  SAY #13412 /* ~"잠깐 기다리시오..." 그는 일어나서 자리를 뜬다.~ */
  IF ~~ THEN REPLY #13640 /* ~그가 돌아오기를 기다린다...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
GiveItemCreate("Acontrac",Myself,1,0,0)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #64582 /* ~모타이는 앵갸의 계약서를 몸에 지니고 있지 않았던 모양이다. 그는 먼저 가서 그것을 가져왔어야만 했다... 하지만 그는 용무를 마쳤을 때 그것을 안쪽 방에 다시 갖다 두지 않았다. ~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 69.0
  SAY #13413 /* ~"여기 있소... 앵갸... 매우 우울한 사람으로 급하게 서명을 했소..." 그는 혀를 찬다. "그리고 이제는 *훨씬* 부자가 되었소." 당신을 계약서를 대강 훑어본다, 그것은 아무런 문제도 없는 공식 계약서 같다. ~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13641 /* ~계약서를 살펴보는 척 하면서 양피지를 가짜 계약서와 바꿔친 후, 모타이에게 돌려준다.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13642 /* ~계약서를 살펴보는 척 하면서 양피지를 가짜 계약서와 바꿔친 후, 모타이에게 돌려준다.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13643 /* ~계약서를 살펴보는 척 하면서 양피지를 가짜 계약서와 바꿔친 후, 모타이에게 돌려준다.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13644 /* ~"좋소... 하자는 없는 것 같소."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 50.1 54.3 65.3 67.0 68.0
  SAY #13414 /* ~모타이는 계약서를 치운다, 그리고 당신은 그가 계약서를 안쪽 방이 아니라 그의 법복 안에 넣었다는 것을 눈치챈다. 모타이는 혀를 찬다. "그거면 그 계약서의 대한 당신의 질문의 답으로 충분하겠소?"~ */
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13646 /* ~"나는 그 계약을 해지하고 싶소."~ */ GOTO 43
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13647 /* ~"앵갸의 계약서를 다시 볼 수 있겠소?"~ */ GOTO 54
  IF ~~ THEN REPLY #13648 /* ~"그렇소, 하지만 다른 질문들을 좀 하고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #13649 /* ~"그렇소, 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 54.0 65.0
  SAY #13415 /* ~서류를 살펴보면서 당신은 잠시 모타이로부터 등을 돌린다... 당신이 계약서를 바꾸려 할 때 모타이가 기침을 한다. "그 계약서는 함부로 다루지 않는 것이 좋을 거요. 만약 분실되면 그에 상응하는 조치를 취해야 하니까." 그는 혀를 차고 손가락으로 탁 소리를 낸다. "계약서를 돌려주기 바라오..."~ */
  IF ~~ THEN REPLY #13650 /* ~그것을 그에게 돌려준다.~ */ GOTO 66
END

IF ~~ THEN BEGIN 68 // from: 54.1 54.2 65.1 65.2
  SAY #13416 /* ~서류를 살펴보면서 당신은 잠시 모타이로부터 등을 돌리고 계약서를 바꿔친다. 그는 눈치채지 못한 것 같다.~ */
  IF ~~ THEN REPLY #13652 /* ~'앵갸의 계약서'를 다시 그에게 돌려준다.~ */ DO ~DestroyItemObject("FalseCon",Protagonist,FALSE)
AddexperienceParty(500)
~ GOTO 66
END

IF ~~ THEN BEGIN 69 // from: 64.0
  SAY #48404 /* ~한참이 지난 후 모타이는 먼지투성이 양피지 한 장을 손에 쥐고 돌아온다. 그는 그것을 들어서 당신에게 보여주나, 손에서 놓을 생각은 하지 않는다.~ */
  IF ~~ THEN REPLY #48405 /* ~양피지를 살펴본다.~ */ GOTO 65
END
