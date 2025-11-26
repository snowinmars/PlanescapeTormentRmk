// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGDRIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGDRIX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37412 /* ~플레이트 아머를 입은 장신의 남자가 보인다. 갑옷은 어깨, 팔꿈치, 그리고 팔뚝 부분에 가시가 박혀 있는 특이한 디자인이다. 당신이 다가가자 그는 가볍게 인사를 한다. "안녕하시오."~ */
  IF ~~ THEN REPLY #37413 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37414 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37415 /* ~"내가 어떻게 도와드리면 되겠소?" 그는 우호적인 표정으로 당신을 본다.~ */
  IF ~~ THEN REPLY #37416 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37417 /* ~"지금은 도움이 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 7.2 8.1 9.0 11.0 12.0
  SAY #37418 /* ~그는 미소짓는다. "물론이오."~ */
  IF ~~ THEN REPLY #37419 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37420 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 7
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37421 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #37422 /* ~"나는 무기를 구입하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #37423 /* ~"나는 마법 아이템을 구입하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #37459 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37424 /* ~그는 가볍게 고개를 끄덕인다. "나는 하모니움 경비병 드릭셀이오. 나는 이 시장의 치안을 유지하오."~ */
  IF ~~ THEN REPLY #37425 /* ~"하모니움에 대해 얘기해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #37426 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37427 /* ~그는 갑자기 당신을 주시한다. "우리의 신념은 간단하오: 우리는 빛이오. 우리는 길이오. 우리는 질서요. 우리는 진실이오." 그는 단호한 표정을 짓는다. "내가 하모니움에 가입했을 때 내 마음에는 추호의 의심도 없었소. 어떤 자들은 질서와 조화를 회복하기 위해 혼돈과 싸우는 일에 대해 떠벌이고 다니오, 하지만 그들에겐 실제로 그럴 배짱도 없소. 그러나 우리 하모니움은 행동으로 보여주고 있소. 우리는 시길과 다원 우주의 질서를 수호하고 있소." 그는 당연하다는 듯 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #37428 /* ~"계속하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #37429 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37430 /* ~얘기를 하면서 그는 한층 대담해지는 듯하다. "우리는 말로만 질서를 지키겠다고 하는 것이 아니오. 우리는 질서를 유지하고 강제하기 위해 힘들게 싸우고 있소. 아나키스트, 카오시텍츠, 타나리... 그런 자들은 모두 하모니움이 있는 곳에서는 조심해야 하오. 혼돈은 관용을 베풀 때만 존재할 수 있소!"~ */
  IF ~~ THEN REPLY #37431 /* ~"다른 당파들에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #37432 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37433 /* ~그는 지루하다는 표정을 지으며 어깨를 으쓱한다. "아무 것도 없소. 그들은 하모니움이라는 진실의 일부가 아니오. 나는 그들에 대해 연구한 적이 없소."~ */
  IF ~~ THEN REPLY #37434 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 2.1 10.0
  SAY #37435 /* ~그는 어이가 없다는 표정으로 당신을 본다, 그리고 뭔가 얘기하려다가 멈춘다, 그리고 나서 다시 얘기하기 시작한다. "어... 로타가 어디 있는지는 누구도 확실히 알지 못하오. 그는 법을 어긴 적이 없기 때문에 우리 하모니움은 그를 그냥 내버려 두고 있소. 어... 당신도 그렇게 하는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #37436 /* ~"왜?"~ */ GOTO 8
  IF ~~ THEN REPLY #37437 /* ~"그래도 난 그를 찾아야만 하오."~ */ GOTO 9
  IF ~~ THEN REPLY #37438 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37439 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37440 /* ~그는 당신에게 화난 표정을 짓는다. "그건 말이오, 그럴만한 충분한 이유나 지원해 줄 동료들도 없이 로타처럼 강대한 자와 상대하는 것은 자살행위이기 때문이오! 그게 이유요."~ */
  IF ~~ THEN REPLY #37441 /* ~"그래도 난 그를 찾아야만 하오."~ */ GOTO 9
  IF ~~ THEN REPLY #37442 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37443 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #37444 /* ~그는 대답을 하기 전에 잠시 당신을 빤히 쳐다본다. "좋소. 그의 집으로 통하는 입구는 이 구역에 있는 흉가요." 그는 당신을 정면으로 쳐다보려고 하지 않는다. ~ */
  IF ~~ THEN REPLY #37445 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37446 /* ~그는 대답을 하기 전에 잠시 당신을 빤히 쳐다본다. "그건 뼈들의 지배자 로타가 할 만한 짓 같소." 그는 불안한 표정으로 주변을 둘러본다, 그리고 당신에게 작은 목소리로 말한다. "그가 직접 하는 건 아니고 부하들을 통해서 하오. 로타는 그런 일에 직접 나서지 않으니까."~ */
  IF ~~ THEN REPLY #37448 /* ~"이 '로타'란 사람은 어디 가면 만날 수 있소?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #37449 /* ~그는 시장을 가리킨다. 이 곳에는 여러 상인들이 있소. 그들로부터 당신이 원하는 것을 구입할 수 있을 거요."~ */
  IF ~~ THEN REPLY #37450 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37452 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #37454 /* ~드릭셀은 당신에게 가볍게 인사한다. "다시 만나 반갑소. 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #37455 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37456 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
