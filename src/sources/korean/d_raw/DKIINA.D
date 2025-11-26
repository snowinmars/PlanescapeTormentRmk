// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2921 /* ~이 험상궂은 기스저라이 여인의 눈은 증오로 가득 차 있다. "네가 나로부터 내 동족을 훔쳤다는 것을 *알라.* 네가 *고통*을 받을 것이라는 것을 *알라.*" 그녀의 손은 공중에서 빛나는 자취를 만들어 내기 시작한다. ~ */
  IF ~~ THEN REPLY #2922 /* ~"무슨 뜻이오?"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43584 /* ~싸운다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43585 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #43586 /* ~이 여자의 피부는 노란색이며 얼굴은 모질게 생겼다. 그녀의 몸은 문신으로 뒤덮여 있으며, 허리에 긴 칼을 차고 있다. 그녀의 눈은 두 개의 작은 흑진주와 같다. 당신이 다가가자 그녀의 눈은 당신을 주시한다.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43587 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 3
  IF ~~ THEN REPLY #43588 /* ~"안녕하시오."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43589 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #43590 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #43591 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #43592 /* ~"미안하오, 내가 사람을 잘못 보았소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #43593 /* ~이 여자의 피부는 노란색이며 얼굴은 모질게 생겼다. 그녀의 몸은 문신으로 뒤덮여 있으며, 허리에 긴 칼을 차고 있다. 그녀의 눈은 두 개의 작은 흑진주와 같다. 당신이 다가가자 그녀의 눈은 당신을 주시한다.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43594 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 3
  IF ~~ THEN REPLY #43595 /* ~"안녕하시오."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43596 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #43597 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #43598 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #43599 /* ~"미안하오, 내가 사람을 잘못 보았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.3 1.4 2.0 2.1 2.3 2.4
  SAY #43600 /* ~"당신은... '사람들' 사이에 친구로 알려져 있소. 나는 아직 당신을 *알지* 못하오. 나는 당신을 도울 수 없소."~ */
  IF ~~ THEN REPLY #43601 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 4
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43602 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #43603 /* ~"그럼 다른 기회에 당신 도움을 다시 청하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43604 /* ~그녀의 두 눈은 당신을 쳐다보며 반짝인다. "내 말을 듣고 내 마음을 *알도록* 하시오. 나는 당신을 도울 수 없소. 떠나시오."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43605 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #43606 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 5 // from:
  SAY #43607 /* ~"나는 아직 당신을 *알지* 못하오. 내가 당신과 대화를 하지 않을 것이라는 사실을 *알도록* 하시오."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43608 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #43609 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #43610 /* ~"나는 아직 당신을 *알지* 못하오. 내가 당신과 대화를 하지 않을 것이라는 사실을 *알도록* 하시오."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43611 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #43612 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 3.1 4.0 5.0 6.0 23.2 24.2
  SAY #43613 /* ~그녀는 약간 긴장한다. "어떻게 그 이름을 *알았소?*"~ */
  IF ~~ THEN REPLY #43614 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #43615 /* ~"거리에서 돌고 있는 소문이오."~ */ GOTO 9
  IF ~~ THEN REPLY #43616 /* ~"관두시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0 10.0
  SAY #43617 /* ~그녀는 당신 얼굴을 재빨리 훑어본다. 당신은 그녀가 당신을 주시하고 있다는 것을 느낄 수가 있다. "기스저라이 '사람들'이 당신에게 감사한다는 사실을 *알기* 바라오. 이 일은 결코 잊지 않겠소. 할다의 석양이오, 여행자 - 나는 내 동포들에게 이 소식을 알려야겠소."~ */
  IF ~~ THEN REPLY #43618 /* ~"그럼 행운을 빌겠소, 그리고 안녕히 계시오."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~나는 내가 만난 한 기스저라이에게 기스양키가 계획하고 있는 브리스티고 요새 습격에 대해 말해주었다. 그녀는 다급하게 떠났다. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 7.2
  SAY #43619 /* ~그녀가 당신을 노려본다. "정보의 출처를 말하시오."~ */
  IF ~~ THEN REPLY #43620 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #43621 /* ~"난 당신에게 아무 얘기도 해주지 않겠소."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #43622 /* ~"만약 내게 이야기하지 않으면 빌콰의 눈이 당신을 응시할 것이오."~ */
  IF ~~ THEN REPLY #43623 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #43624 /* ~"내가 왜 당신에게 그걸 말해주어야 하오?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #43625 /* ~쉿 소리와 함께 그녀는 당신 앞에 푸른 빛으로 뭔가를 그리기 시작한다...~ */
  IF ~~ THEN REPLY #43626 /* ~싸운다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43627 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #5 ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #43628 /* ~이 여자의 피부는 노란색이며 얼굴은 모질게 생겼다. 그녀의 몸은 문신으로 뒤덮여 있으며, 허리에 긴 칼을 차고 있다. 그녀의 눈은 두 개의 작은 흑진주와 같다. 당신이 다가가자 그녀의 눈은 당신을 주시한다. '저카이의 일족이 그대에게 경의를 표하오. 나는 당신의 지혜와 당신이 우리에게 준 도움을 *알고* 있소. 내가 당신을 어떻게 도우면 되는지 말해주시오."~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43629 /* ~"그리고 여행자는 만족하오. 나는 당신이 내 질문에 대답해주기를 바라오."~ */ GOTO 13
  IF ~~ THEN REPLY #43630 /* ~"당신에게 질문할 것이 좀 있소."~ */ GOTO 13
  IF ~~ THEN REPLY #43631 /* ~"당신은 누구요?"~ */ GOTO 14
  IF ~~ THEN REPLY #43632 /* ~"미안하오, 내가 사람을 잘못 보았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 16.0 17.1 19.0 20.0 21.0 22.0
  SAY #43633 /* ~"당신 생각을 말하시오. 당신 얘기를 들으리다."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43634 /* ~"기스양키와 기스저라이의 차이에 대해서 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43635 /* ~"기스양키와 기스저라이의 차이에 대해서 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43636 /* ~"내게 기스저라이의 수사적 표현에 대해 가르쳐 줄 수 있겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #43637 /* ~"내게 저서몬의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #43638 /* ~"지금은 다른 질문이 없소. 시간을 내주어 고맙소."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #43639 /* ~"나는 키이'나요. 나는 *저스요*. 저서몬의 길을 가르치며, '사람들'을 그들의 운명으로 인도하오."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43640 /* ~"기스양키와 기스저라이의 차이에 대해서 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43641 /* ~"기스양키와 기스저라이의 차이에 대해서 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43642 /* ~"내게 기스저라이의 수사적 표현에 대해 가르쳐 줄 수 있겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #43643 /* ~"내게 저서몬의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #43644 /* ~"지금은 다른 질문이 없소. 시간을 내주어 고맙소."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 13.4 14.4
  SAY #43645 /* ~"할다의 석양이오, 여행자.당신은 산 위의 엘레즈파처럼 용맹과감하오.~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
~ THEN REPLY #43646 /* ~"나는 토리그의 식탁에서 식사를 했소. 안녕히 계시오." ("감사하오.")~ */ EXIT
  IF ~~ THEN REPLY #43647 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #43648 /* ~"안녕하시오, 칼을 울리는 자여."~ */
  IF ~~ THEN REPLY #43649 /* ~"반갑소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #43650 /* ~"반갑소, 카이'나. 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 14.1
  SAY #43651 /* ~그녀는 잠시 당신을 지그시본다. "기스는 우리들을 *일리티드*의 억압으로부터 해방한 위대한 전사였소. 그리고 저서몬께서는 그녀의 부관이셨소. 두 사람이 우리 민족을 해방시키고 나서, 기스는 저주받은 평원에서 저서몬과 대립했소. 격론이 오가고, 서로 칼을 주고받았소 - 그리고 하나의 민족은 둘로 갈라졌소. 사악한 여왕 측에 남은 자들은 기스양키라는 아름을 택했소. 우리들 중 저서몬의 길을 따른 자들은 변함없이 '사람들'에게 충실했으며, 스스로를 기스저라이라고 부르게 되었소."~ */
  IF ~~ THEN REPLY #43652 /* ~"당신들은 왜 서로를 그토록 미워하는 거요?"~ */ JOURNAL #39486 /* ~나는 기스양키와 기스저라이의 적대 관계가 그들이 고대에 공유했던 공통의 근원에서 비롯되었다는 것을 발견했다 - 양 진영 모두 상대방의 현재의 모습을 증오한다. 공통의 근원에서 나온 두 사물이 종종 완전한 정반대가 된다는 건 참으로 기묘한 일이다.~ */ GOTO 20
  IF ~~ THEN REPLY #43653 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ JOURNAL #39486 /* ~나는 기스양키와 기스저라이의 적대 관계가 그들이 고대에 공유했던 공통의 근원에서 비롯되었다는 것을 발견했다 - 양 진영 모두 상대방의 현재의 모습을 증오한다. 공통의 근원에서 나온 두 사물이 종종 완전한 정반대가 된다는 건 참으로 기묘한 일이다.~ */ GOTO 13
  IF ~~ THEN REPLY #43654 /* ~"감사하오. 안녕히 계시오."~ */ JOURNAL #39486 /* ~나는 기스양키와 기스저라이의 적대 관계가 그들이 고대에 공유했던 공통의 근원에서 비롯되었다는 것을 발견했다 - 양 진영 모두 상대방의 현재의 모습을 증오한다. 공통의 근원에서 나온 두 사물이 종종 완전한 정반대가 된다는 건 참으로 기묘한 일이다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 14.2
  SAY #43655 /* ~"기스저라이의 언어는 역사에 바탕을 두고 있소. 우리에게 있어 모든 것은 이야기가 되오. 암유는 강력한 도구로 영웅적인 행동을 장려하고, 악행을 경계하도록 하는 본보기로 이용되오. '토릭의 테이블'에 대해 얘기할 때 우리는 토릭이 그의 호의와 손님에 대한 친절로 유명했다는 걸 기억하오. 반면 '셀칸트의 심장'에 대해 얘기할 때 우리는 셀칸트의 음탕함과 잔인함을 상기하오. 이해하겠소?"~ */
  IF ~~ THEN REPLY #43656 /* ~"그렇소."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~저스 키나는 내게 기스저라이의 언어에 대해 많은 것을 가르쳐 주었다. 그것은 은유, 비유, 그리고 기스저라이 역사와 얽힌 이야기들에 바탕을 두고 있는 것 같다. ~ */ GOTO 21
  IF ~~ THEN REPLY #43657 /* ~"아니오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #43658 /* ~"그렇다면 난 당신에게 더 이상 가르쳐 줄 수가 없소."~ */
  IF ~~ THEN REPLY #43659 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #43660 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #43661 /* ~"우리 민족은 양쪽 모두 페난스크의 당나귀와 같소. 고집스럽고, 맹목적이며, 성가시오. 기스양키는 거기에 덧붙여 잔인하오. 그들은 우리가 자신들로는 이해할 수 없는 영역으로 성장했기 때문에 우리들을 증오하오."~ */
  IF ~~ THEN REPLY #43662 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #43663 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0
  SAY #43664 /* ~당신에 대한 교육이 시작된다.
현자가 "아나크의 서를 썼다." 
배신 행위를 비난할 때는 "빌콰의 눈"을 기억하라고 한다.
인심 좋은 사람들에게는 그들의 "벽장이 비었다"고 말한다.
일반적인 인사로는 "반갑소, 칼을 울리는 자여"와 "저카이의 일족이 그대에게 경의를 표하오" 등이 있으며 이에 대해서는 "그리고 여행자는 만족하오"라고 대답해야 한다.
당신의 정신은 이러한 숙어들로 가득 찬다.
~ */
  IF ~~ THEN REPLY #43665 /* ~"고맙소, 키이'나. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #43666 /* ~"고맙소, 키이'나. 할다의 석양이오." ("이 만남은 즐거웠소.")~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.3 14.3
  SAY #43667 /* ~"그럴 수가 없소. 당신은 길을 *알기*에는 너무 산만하고... 너무 '인간'이오."~ */
  IF ~~ THEN REPLY #43668 /* ~"알겠소. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #43669 /* ~"고맙소, 키이'나. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #43670 /* ~이 여자의 피부는 노란색이며 얼굴은 모질게 생겼다. 그녀의 몸은 문신으로 뒤덮여 있으며, 허리에 긴 칼을 차고 있다. 그녀의 눈은 두 개의 작은 흑진주와 같다. 당신이 다가가자 그녀의 눈은 당신을 주시한다.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43671 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 26
  IF ~~ THEN REPLY #43672 /* ~"안녕하시오."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43673 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #43674 /* ~"당신은 누구요?"~ */ GOTO 25
  IF ~~ THEN REPLY #43675 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 25
  IF ~~ THEN REPLY #43676 /* ~"미안하오, 내가 사람을 잘못 보았소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #43677 /* ~당신이 다가가자 그녀는 조용히 쳐다본다.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43678 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 26
  IF ~~ THEN REPLY #43812 /* ~"안녕하시오."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43813 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #43814 /* ~"당신은 누구요?"~ */ GOTO 25
  IF ~~ THEN REPLY #43815 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 25
  IF ~~ THEN REPLY #43816 /* ~"미안하오, 내가 사람을 잘못 보았소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.3 23.4 24.1 24.3 24.4
  SAY #43684 /* ~그녀는 침착하다. "나는 당신을... *알지* 못하오. 이 만남은 우리들 중 어느 쪽에도 도움이 되지 않소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #43685 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0 24.0
  SAY #43686 /* ~"나는 당신을 *알지* 못하오, 그러나 당신은 내 동족들의 관습에 따라 인사하고 있소. 상관없소... 나는 당신을 도울 수가 없소, 여행자. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #43687 /* ~"소금으로 덮힌 배가 항해를 떠나오."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 60 even though they appear after this state */
~  NearbyDialog("DDakkon")
Global("Dakkon_Know_Kiina","AR0500",0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #43688 /* ~이 여자의 피부는 노란색이며 얼굴은 모질게 생겼다. 그녀의 몸은 문신으로 뒤덮여 있으며, 허리에 긴 칼을 차고 있다. 그녀의 눈은 두 개의 작은 흑진주와 같다. 당신이 다가가자 그녀의 눈은 다콘의 움직임을 주시한다.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 133
END

IF WEIGHT #11 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 28 // from:
  SAY #43689 /* ~저스는 다콘이 당신에게로 돌아가는 것을 음침한 시선으로 바라본다. 그녀는 다콘보고 공격하라고 도발하는 듯 당신에게 등 뒤를 보인다.~ */
  IF ~~ THEN REPLY #43690 /* ~"다콘, 그녀를 베시오."~ */ EXTERN ~DDAKKON~ 137
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43691 /* ~"그만하시오, 키이'나. 당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 36
  IF ~~ THEN REPLY #43692 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #43693 /* ~당신이 다가가도 그녀는 당신을 완전히 무시한다. 다콘이 그녀에게 인사를 하나 그녀는 이 역시 무시한다. 그녀는 다콘에게 험한 말들을 퍼부으나 그는 침착한 목소리로 대답한다. 이는 오히려 그녀를 격분시킨다.~ */
  IF ~~ THEN REPLY #43694 /* ~"다콘, 날 위해 번역을 해주겠소?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #43695 /* ~"그녀가 뭐라고 했소?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43696 /* ~"그녀에게 브리스티고 요새를 잘 아느냐고 물어보시오."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 36
  IF ~~ THEN REPLY #43697 /* ~기다린다.~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #43698 /* ~"여기를 떠납시다~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from:
  SAY #43699 /* ~"왜 당신은 본심을 숨기고 저서몬의 깨어지지 않은 원을 지님으로서 그것을 모욕하오? 당신은 더 이상 '사람들', 슈라크'아트'로의 배신자! 아나크와 *저스*는 이미 그들의 의사를 밝혔으며, 그들의 명령은 복종될 것이오. 당신은 나나... 다른 *저스*에게 당신의 마음을 얘기할 자격이 없소."~ */
  IF ~~ THEN DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ EXTERN ~DDAKKON~ 145
END

IF ~~ THEN BEGIN 31 // from: 29.4
  SAY #43700 /* ~다콘은 지극히 정중하게 고개를 숙임으로서 그녀의 말을 끊는다. 그녀는 고개를 그로부터 돌려 당신을 바라본다. "당신은 파리아(천민)의 그림자 속에서 걷고 있소!"~ */
  IF ~~ THEN REPLY #43701 /* ~"갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 29.1
  SAY #43702 /* ~"통역의 필요는 없소, 내가 직접 말해줄 테니. 당신은 저서몬의 말씀을 들을 자격이 없는 피와 흉터로 얼룩진 인간이오. 당신은 파리아(천민)의 그림자 속에서 걷고 있소. 하지만 그는 당신이 내 말을 들을 수 있도록 해주라고 나를 설득했소. 나는 당신의 의중을 *알고* 싶소."~ */
  IF ~~ THEN REPLY #43703 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43704 /* ~"당신은 브리스티고 요새를 잘 알고 있소?"~ */ GOTO 36
  IF ~~ THEN REPLY #43705 /* ~"나는 아무 것도 원하지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #43706 /* ~그녀는 흥미로워 하는 동시에 당황해 한다. "그래, 공격하시오, 다콘, 그리고 배신이 당신의 기스양키 심장에서 넘쳐 흐르도록 하시오!" 그녀는 그에게 목을 내민다.~ */
  IF ~~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXTERN ~DDAKKON~ 138
END

IF ~~ THEN BEGIN 34 // from:
  SAY #43707 /* ~그녀는 다시 다콘에게 말한다. "당신은 '사람들' 중 하나가 아닌 자를 위해 날 공격할 것이오? 그의 말이 *저스*의 말보다 더 권위가 있소? 진실로 당신은 정도를 벗어났소, 다콘. 어쩌다가 그 지경이 되었소."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 139
END

IF ~~ THEN BEGIN 35 // from:
  SAY #43708 /* ~"당신은 정도를 벗어났소, 다콘. 당신이 다시 길을 차기를 내가 바란다는 것을 *아시오.* 안녕히 가시오."~ */
  IF ~~ THEN REPLY #43709 /* ~"갑시다, 다콘."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.2 32.1
  SAY #43710 /* ~그녀는 당신을 뚫어지게 쳐다본다. "파리아(천민)의 그림자 속을 걷는 당신이 어떻게 그 이름을 알게 된 거요?"~ */
  IF ~~ THEN REPLY #43711 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 37
  IF ~~ THEN REPLY #43712 /* ~"거리에서 돌고 있는 소문이오."~ */ GOTO 38
  IF ~~ THEN REPLY #43713 /* ~"관두시오."~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0 38.0 41.4 42.2 52.4 55.2 60.1
  SAY #43714 /* ~"내가 감사한다는 사실을... *알기* 바라오. 이 일이 결코 잊혀지지 않을 것이라는 것을 *알기* 바라오." 그녀는 다콘 쪽으로 돌아선다. "이 일이 슈라크'아트'로의 멸망에 대한 속죄가 될 수 없다는 사실을 알도록* 하시오. 아나크의 판결의 아직도 유효하오."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43715 /* ~"흠... 안녕히 계시오."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
SetGlobal("Shrakatlor","GLOBAL",1)
EscapeArea()
~ JOURNAL #39489 /* ~나는 내가 만난 한 기스저라이에게 기스양키가 계획하고 있는 브리스티고 요새 습격에 대해 말해주었다. 그녀는 다급하게 떠났다. ~ */ EXIT
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43716 /* ~"흠... 안녕히 계시오."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~나는 내가 만난 한 기스저라이에게 기스양키가 계획하고 있는 브리스티고 요새 습격에 대해 말해주었다. 그녀는 다급하게 떠났다. ~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2
  SAY #43717 /* ~"나는 당신이 어디서 이 이름을 들었는지 *알아야* 하오. ~ */
  IF ~~ THEN REPLY #43718 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 37
  IF ~~ THEN REPLY #43719 /* ~"내 말이 들리지 않았소? 난 당신에게 말해주지 랂을 거요."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #43720 /* ~"빌콰의 눈!" 그녀는 다콘 쪽으로 돌아선다. "그에게 말하라고 하시오!"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 140
END

IF ~~ THEN BEGIN 40 // from:
  SAY #43721 /* ~"그렇다면 당신들 둘 모두 죽을 것이오." 그녀는 마법을 영창하기 위해 손짓하기 시작한다. ~ */
  IF ~~ THEN REPLY #43722 /* ~싸운다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43723 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.3
  SAY #43724 /* ~다시 한동안 격렬한 대화가 오고간 후 그녀는 갑자기 다콘과 얘기하는 것을 멈춘다. "나는 당신 말을 듣지 않겠소. 당신이 내 말을 들어야 할 것이오, 인간. 나는 당신을 *알지* 못하오, 하지만 당신 모습은 내게 좋은 인상을 주지 못하오. 당신의 몸은 피와 흉터로 쓴 책이오, 그리고 당신은 저서몬을 *알지* 못하고 스스로를 *알지* 못하는 파리아(천민)의 그림자 속을 걷고 있소. 당신 의중을 말하시오!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43725 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 42
  IF ~~ THEN REPLY #43726 /* ~"안녕하시오."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43727 /* ~"파리아의 그림자? 그게 무슨 뜻이오?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43728 /* ~"파리아의 그림자? 그게 무슨 뜻이오?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43729 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43730 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43731 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43732 /* ~"내게 기스저라이의 언어를 가르쳐 줄 수 있겠소?"~ */ GOTO 56
  IF ~~ THEN REPLY #43733 /* ~"내게 저서몬의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 59
  IF ~~ THEN REPLY #43734 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 52.0 52.1
  SAY #43735 /* ~그녀는 짜증이 나는 듯 쉿 소리를 낸다. "당신의 인사치레는 먼지나 마찬가지요. 통곡의 징조가 다가오고 있소. 시간이 별로 없소, 인간. 나는 당신의 질문을 듣겠소, 그러나 그 후에는 떠나 주시오."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43736 /* ~"당신이 내게 파리아의 그림자에서 걷고 있다고 한 건 무슨 의미요?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43737 /* ~"당신이 내게 파리아의 그림자에서 걷고 있다고 한 건 무슨 의미요?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43738 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43739 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43740 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43741 /* ~"내게 기스저라이의 언어를 가르쳐 줄 수 있겠소?"~ */ GOTO 56
  IF ~~ THEN REPLY #43742 /* ~"내게 저서몬의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 59
  IF ~~ THEN REPLY #43743 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.2 41.3 42.0 42.1 52.2 52.3 55.0 55.1 61.0 61.1
  SAY #43744 /* ~"당신은 파리아와 걸으면서도 그의 내력을 모른단 말이오? 그는 다른 얘기를 할 때는 신속하나, 자신의 내력에 대해서는 침묵을 지켰단 말이오? 그에게 슈라크'아트'로, 그리고 기스양키에 의한 그 위대한 요새의 멸망에 대해 물어보시오, 그리고 그의 분열된 정신이 어떠한 진실을 드러내는지 보시오. 그에게 안개와 같은 *카락*을 지니고 어떻게 감히 저서몬의의 말씀을 입에 담는지 물어보시오."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 141
END

IF ~~ THEN BEGIN 44 // from:
  SAY #43745 /* ~"저서몬의 마음이 어떻게 표현되는 지에 대해서는 의심의 여지가 없소. 여러 세대에 걸친 *저스*는 르라크마의 보석과 같으며, 이 문제에 대해서는 한마음이오. 당신은 분열된 마음으로 그것을 지니고 있소. 의심은 당신 것이며, 당신 스스로의 불충에서 나온 메아리요."~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 142
END

IF ~~ THEN BEGIN 45 // from:
  SAY #43746 /* ~"당신은 모든 것을 빌콰의 눈으로 보고 있소, 따라서 당신은 변화하는 혼돈 속에서 슈라크'아트'로의 희생자들과 함께 잠들 것이오. 당신의 마음은 분열되었으며, 그 *카락* 또한 약하오."~ */
  IF ~~ THEN REPLY #43747 /* ~칼 앞에서 막고 선다. ~ */ EXTERN ~DDAKKON~ 143
  IF ~~ THEN REPLY #43748 /* ~"다콘, 지금 당장 멈추시오."~ */ GOTO 48
  IF ~~ THEN REPLY #43749 /* ~"그만두시오, 다콘."~ */ GOTO 48
  IF ~~ THEN REPLY #43750 /* ~저스를 공격한다.~ */ EXTERN ~DDAKKON~ 143
END

IF ~~ THEN BEGIN 46 // from:
  SAY #43751 /* ~"개자식! 기스양키 배신자!" 그녀는 당신에게 자신의 칼을 휘두른다!~ */
  IF ~~ THEN REPLY #43752 /* ~"죽을 때요, 키이'나."~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #43753 /* ~두 사람은 칼은 마치 소용돌이처럼 상대방을 향해 날아간다!~ */
  IF ~~ THEN DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2
  SAY #43754 /* ~다콘은 마지못해 칼을 내린다. 키이'나는 잠시 믿을 수 없다는 표정으로 그를 보더니, 신랄하게 웃는다. "마침내 진실이 밝혀졌군. 당신의 마음은 분열된 것이 아니오. 당신은 이 인간의... 노예요. 그는 아나크의 권위를 가지고 당신에게 말하고, 당신은 그의 명령에 *복종하오.*:~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",0)
~ EXTERN ~DDAKKON~ 144
END

IF ~~ THEN BEGIN 49 // from:
  SAY #43755 /* ~"그의 말은 당신을 대변하며 림보의 형체를 지나고 있소. 나는 당신 말에 귀를 기울이지 않겠소, 다콘."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 146
END

IF ~~ THEN BEGIN 50 // from:
  SAY #43756 /* ~"인-간은 저서몬의 말씀을 들을 자격이 없소. 그들의 마음은 분열되어 있으며, 그들은 가는 곳마다 불화를 일으키오. 이 자는 피와 흉터로 얼룩져 있으며, 배신자와 함께 여행을 하고 있소. 만약 당신이 내게 그의 말에 귀를 기울이라고 한다면 당신의 가슴 속에서는 빌콰의 심장이 뛰고 있소."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 147
END

IF ~~ THEN BEGIN 51 // from:
  SAY #43757 /* ~"나는 그의 말에 귀를 기울이지 않겠소. 그가 내 말을 들어야 할 것이오."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 148
END

IF ~~ THEN BEGIN 52 // from:
  SAY #43758 /* ~여자는 당신 쪽으로 고개를 돌린다. 그녀의 흑진주 같은 두 눈은 위험하게 번득인다." 나는 당신을 *알지* 못하오, 하지만 당신 모습은 내게 좋은 인상을 주지 못하오. 당신의 몸은 피와 흉터로 쓴 책이오, 그리고 당신은 저서몬을 대변한다고 주장하는 파리아(천민)의 그림자 속을 걷고 있소. 당신 의중을 말하시오!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43759 /* ~"안녕하시오, 칼을 울리는 자여."~ */ GOTO 42
  IF ~~ THEN REPLY #43760 /* ~"안녕하시오."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43761 /* ~"파리아의 그림자? 그게 무슨 뜻이오?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43762 /* ~"파리아의 그림자? 그게 무슨 뜻이오?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43763 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43764 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43765 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43766 /* ~"내게 기스저라이의 언어를 가르쳐 줄 수 있겠소?"~ */ GOTO 56
  IF ~~ THEN REPLY #43767 /* ~"내게 저서몬의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 59
  IF ~~ THEN REPLY #43768 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 41.5 41.6 42.3 42.4 52.5 52.6 55.3 55.4 61.2 61.3
  SAY #43769 /* ~그녀는 다콘을 잠시 지그시본다. "기스는 우리들을 *일리티드*의 억압으로부터 해방한 위대한 전사였소. 그리고 저서몬께서는 그녀의 부관이셨소. 두 사람이 우리 민족을 해방시키고 나서, 기스는 저주받은 평원에서 저서몬과 대립했소. 격론이 오가고, 서로 칼을 주고받았소 - 그리고 하나의 민족은 둘로 갈라졌소. 사악한 여왕 측에 남은 자들은 기스양키라는 아름을 택했소. 우리들 중 저서몬의 길을 따른 자들은 변함없이 '사람들'에게 충실했으며, 스스로를 기스저라이라고 부르게 되었소. 우리의 분노는 기스의 배신 때문이오."~ */
  IF ~~ THEN REPLY #43770 /* ~"당신들은 왜 서로를 그토록 미워하는 거요?"~ */ JOURNAL #39486 /* ~나는 기스양키와 기스저라이의 적대 관계가 그들이 고대에 공유했던 공통의 근원에서 비롯되었다는 것을 발견했다 - 양 진영 모두 상대방의 현재의 모습을 증오한다. 공통의 근원에서 나온 두 사물이 종종 완전한 정반대가 된다는 건 참으로 기묘한 일이다.~ */ GOTO 54
  IF ~~ THEN REPLY #43771 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ JOURNAL #39486 /* ~나는 기스양키와 기스저라이의 적대 관계가 그들이 고대에 공유했던 공통의 근원에서 비롯되었다는 것을 발견했다 - 양 진영 모두 상대방의 현재의 모습을 증오한다. 공통의 근원에서 나온 두 사물이 종종 완전한 정반대가 된다는 건 참으로 기묘한 일이다.~ */ GOTO 55
  IF ~~ THEN REPLY #43772 /* ~"감사하오. 안녕히 계시오."~ */ JOURNAL #39486 /* ~나는 기스양키와 기스저라이의 적대 관계가 그들이 고대에 공유했던 공통의 근원에서 비롯되었다는 것을 발견했다 - 양 진영 모두 상대방의 현재의 모습을 증오한다. 공통의 근원에서 나온 두 사물이 종종 완전한 정반대가 된다는 건 참으로 기묘한 일이다.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #43773 /* ~"우리 민족은 양쪽 모두 페난스크의 당나귀와 같소. 고집스럽고, 맹목적이며, 성가시오. 기스양키는 거기에 덧붙여 잔인하오. 그들은 우리가 자신들로는 이해할 수 없는 영역으로 성장했기 때문에 우리들을 증오하오."~ */
  IF ~~ THEN REPLY #43774 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 55
  IF ~~ THEN REPLY #43775 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.0 53.1 54.0 57.0 58.0 59.0 60.0
  SAY #43776 /* ~"아크'알리의 익사! 질문을 하시오, 대답을 해주리다."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43777 /* ~"당신이 내게 파리아의 그림자에서 걷고 있다고 한 건 무슨 의미요?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43778 /* ~"당신이 내게 파리아의 그림자에서 걷고 있다고 한 건 무슨 의미요?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43779 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43780 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43781 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43782 /* ~"내게 기스저라이의 언어를 가르쳐 줄 수 있겠소?"~ */ GOTO 56
  IF ~~ THEN REPLY #43783 /* ~"내게 저서몬의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 59
  IF ~~ THEN REPLY #43784 /* ~"더 이상 질문할 것이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 41.7 42.5 52.7 55.5 61.4
  SAY #43785 /* ~"만약 당신과 함께 여행하는 자에게 그럴 의사가 없다면, 내가 당신을 가르치겠소. 기스저라이의 언어는 역사에 바탕을 두고 있소. 우리에게 있어 모든 것은 이야기가 되오. 암유는 강력한 도구로 영웅적인 행동을 장려하고, 악행을 경계하도록 하는 본보기로 이용되오. '토릭의 테이블'에 대해 얘기할 때 우리는 토릭이 그의 호의와 손님에 대한 친절로 유명했다는 걸 기억하오. 반면 '셀칸트의 심장'에 대해 얘기할 때 우리는 셀칸트의 음탕함과 잔인함을 상기하오. 이해하겠소?"~ */
  IF ~~ THEN REPLY #43786 /* ~"그렇소."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~저스 키나는 내게 기스저라이의 언어에 대해 많은 것을 가르쳐 주었다. 그것은 은유, 비유, 그리고 기스저라이 역사와 얽힌 이야기들에 바탕을 두고 있는 것 같다. ~ */ GOTO 57
  IF ~~ THEN REPLY #43787 /* ~"아니오."~ */ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #43788 /* ~당신에 대한 교육이 계속된다.
현자가 "아나크의 서를 썼다." 
배신 행위를 비난할 때는 "빌콰의 눈"을 기억하라고 한다.
인심 좋은 사람들에게는 그들의 "벽장이 비었다"고 말한다.
일반적인 인사로는 "반갑소, 칼을 울리는 자여"와 "저카이의 일족이 그대에게 경의를 표하오" 등이 있으며 이에 대해서는 "그리고 여행자는 만족하오"라고 대답해야 한다.
당신의 정신은 이러한 숙어들로 가득 찬다.
~ */
  IF ~~ THEN REPLY #43789 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 55
  IF ~~ THEN REPLY #43790 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43791 /* ~"그럼 나는 더 이상 당신을 도울 수가 없소. 당신과 함께 걷는 자기 이 문제에 대한 그의 생각을 말하도록 하시오."~ */
  IF ~~ THEN REPLY #43792 /* ~"질문할 것들이 몇 가지 더 있소..."~ */ GOTO 55
  IF ~~ THEN REPLY #43793 /* ~"당신이 무슨 말을 하는지 알아들을 수가 없으니 그에게 가르쳐 달라고 해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 41.8 42.6 52.8 55.6 61.5
  SAY #43794 /* ~그녀의 표정이 굳어진다. "당신은 스스로를 저스라 부르며 내 도덕성에 대해 설교를 하는 자와 함께 여행을 하면서 내게 길을 가르쳐 달라고 하는 거요? 나는 가르쳐 주지 않을 테니 그에게 가르쳐 달라고 하시오!~ */
  IF ~~ THEN REPLY #43798 /* ~"진정하고 내 질문에 조금만 더 대답해주시오."~ */ GOTO 55
  IF ~~ THEN REPLY #43799 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
Global("Kiina_Speak","GLOBAL",1)
~ THEN BEGIN 60 // from:
  SAY #43800 /* ~"날 다시 괴롭히러 왔소? 이제는 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #43801 /* ~"난 몇 가지 질문을 하고 싶었을 뿐이오..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43802 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ GOTO 37
  IF ~~ THEN REPLY #43803 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 61 // from:
  SAY #43804 /* ~당신이 다가가자 저스는 마지못해 인사를 한다. "당신의 말이 우리들을 비극으로부터 구했다는 사실을 *알기* 바라오. 우리는 황금의 손의 서약을 했소, 인간. 그대는 여행할 동료를 잘못 선택했소..." 그녀는 다콘을 노려본다. "하지만 당신은 자신이 '사람들'의 친구임을 입증했소. 나는 당신 말에 귀를 기울이겠소." 그녀의 말과는 달리 그녀는 당신과 상대하는 것이 별로 내키지 않는 듯하다."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43805 /* ~"다콘에 대해서 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43806 /* ~"다콘에 대해서 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 43
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43807 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43808 /* ~"내게 기스저라이와 기스양키의 차이를 가르쳐 줄 수 있겠소?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43809 /* ~"내게 기스저라이의 언어를 가르쳐 줄 수 있겠소?"~ */ GOTO 56
  IF ~~ THEN REPLY #43810 /* ~"내게 저서몬의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 59
  IF ~~ THEN REPLY #43811 /* ~"더 이상 질문할 것이 없소. 안녕히 계시오."~ */ EXIT
END
