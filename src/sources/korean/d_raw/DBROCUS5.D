// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3206 /* ~그 남자는 생각에 몰두하느라 이마에 깊은 주름이 패였다 . 당신이 다가가자 그는 정중하게 인사한다. "무슨 일이오?"~ */
  IF ~~ THEN REPLY #3207 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40689 /* ~"아무 것도 아니오. 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40690 /* ~이 진지하게 생긴 남자는 아직도 무슨 문제를 풀려고 노력하고 있다. 당신이 다가가자 그는 생각하던 걸 잠시 멈추고 당신을 쳐다본다. "뭐요?"~ */
  IF ~~ THEN REPLY #40691 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40692 /* ~"아무 것도 아니오. 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.3 4.1 5.0 6.2 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0
  SAY #40693 /* ~그는 좀 화가 난 듯하나, 아무 말도 하지 않는다.~ */
  IF ~~ THEN REPLY #40694 /* ~"당신은 무슨 고민이 있는 것 같소..."~ */ GOTO 3
  IF ~~ THEN REPLY #40695 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #40696 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40697 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 9
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40698 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 10
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40699 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 11
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40700 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 12
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40701 /* ~"혹시 래벌 퍼즐웰이 대해 아는 것이 없소?"~ */ GOTO 13
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40702 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #40703 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40704 /* ~남자는 눈살을 찌푸린다. "아니, '고민'이라고 할 정도는 아니오... 나는 단지 돌로라에게 이길 방법을 찾으려는 것뿐이오."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40705 /* ~"누구?"~ */ GOTO 4
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #40706 /* ~"그렇소, 그녀는 정말 강적이오."~ */ GOTO 8
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40707 /* ~"나는 아직 그녀와 겨룰 기회를 갖지 못했소."~ */ GOTO 7
  IF ~~ THEN REPLY #40708 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40709 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.0
  SAY #40710 /* ~"돌로라는 이 곳의 창녀들 중 하나요. 말수가 적으며, 교양이 있고, 지극히 총명하오... 그녀의 정신은 면도날처럼 날카롭소. 만약 당신이 도전하는 것을 좋아한다면 그녀를 전략 게임에서 이겨 보시오."~ */
  IF ~~ THEN REPLY #40711 /* ~"그럼 당신은 그녀를 한 번도 이긴 적이 없소?"~ */ GOTO 5
  IF ~~ THEN REPLY #40712 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40713 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40714 /* ~남자는 눈살을 찌푸리며 고개를 젓는다. "나는 비비안이라는 여자를 상대로 게임을 하곤 했으며, 내 자신이 상당히 뛰어난 플레이어라고 생각하게 되었소... 하지만 그 때 나는 돌로라를 만났소. 나는 비비안이 내게 일부러 져 준 것은 아닌가 강하게 의심하고 있소, 하지만 그녀에게 그 일에 대해 물어보지는 않았소."~ */
  IF ~~ THEN REPLY #40715 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40716 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #40717 /* ~"나는 돌로라에게 참패를 당한 후 휴식을 취하고 있소. 하지만 지난번에 난 그녀를 거의 이길 뻔한 것 같소. 그래서 나는 그녀를 다음 번에 이길 궁리를 하고 있는 거요."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40718 /* ~"돌로라가 누구요?"~ */ GOTO 4
  IF ~  Global("Dolora","GLOBAL",1)
Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40719 /* ~"나는 아직 그녀와 겨룰 기회를 갖지 못했소."~ */ GOTO 7
  IF ~~ THEN REPLY #40720 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40721 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.1
  SAY #40722 /* ~그는 고개를 끄덕인다. "뭐 다른 질문은 없소.. ?"~ */
  IF ~~ THEN REPLY #40723 /* ~"그렇소, 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40724 /* ~"아니오, 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1
  SAY #40725 /* ~"이보시오, 난 생각할 것이 있소. 그러니 실례가 안 된다면..."~ */
  IF ~~ THEN REPLY #40726 /* ~"기다리시오 - 그럼 당신에게 다른 것에 대해 물어봅시다..."~ */ GOTO 2
  IF ~~ THEN REPLY #40727 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #40728 /* ~"좋소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #40729 /* ~"아무 것도 아니오."~ */
  IF ~~ THEN REPLY #40730 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40731 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #40732 /* ~"래벌이라고 했소? 나는 그녀에게 그 일에 대해 물어본 적이 없소. 직접 물어보시오."~ */
  IF ~~ THEN REPLY #40733 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~  Global("Kesai_Ask","AR0605",0)
~ THEN REPLY #40734 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #40735 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.5
  SAY #40736 /* ~"모르오. 나는 비비안과 한동안 이야기를 하지 않았소. 나는 그녀가 그것을 잃어버렸다는 것도 모르고 있었소. 딱한 일이오. 그녀는 늘 놀랄 정도로 에로틱한 향기를 지니고 있었소..."~ */
  IF ~~ THEN REPLY #40737 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40738 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6
  SAY #40739 /* ~"아니, 모르오. 다른 건 없소?"~ */
  IF ~~ THEN REPLY #40740 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40741 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.7
  SAY #40742 /* ~"없소." 남자는 거북하게 웃은 후 한숨을 쉰다. "실은 알고 있소. 그녀는 나이트 해그였으며 레이디의 미로들 중 한 곳으로 추방되었소.그녀는 수백 개의 무시무시한 동화의 주인공이오... 하지만 당신이 원하는 정보는 이런 게 아닌 것 같소."~ */
  IF ~~ THEN REPLY #40743 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40744 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.8
  SAY #40745 /* ~그는 고개를 젓는다. "아니, 내가 아는 한 이 곳에는 아홉 명밖에 없소."~ */
  IF ~~ THEN REPLY #40746 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40747 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
