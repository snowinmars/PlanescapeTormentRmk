// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPEATO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPEATO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58706 /* ~더러운 옷을 입은 청년이 보인다. 당신이 다가가자 그는 경계하는 눈빛으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #58707 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58708 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58709 /* ~"무엇을 원하시오?" 그는 초조하게 주변을 두리번거린다.~ */
  IF ~~ THEN REPLY #58710 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58711 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0 5.0 6.1 7.0 8.1 9.1 10.3 11.2 12.2 13.2 15.2 16.1 17.0 19.0
  SAY #58712 /* ~"뭘 알고 싶소?"~ */
  IF ~~ THEN REPLY #58713 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #58714 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #58715 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #58716 /* ~"나는 어떤 디바를 찾고 있소. 나는 그가 이 곳에 있다고 들었소."~ */ GOTO 14
  IF ~~ THEN REPLY #58717 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58718 /* ~그는 대답하기 전에 잠시 주저한다. "그건 당신에게 어떤 의미가 있소?"~ */
  IF ~~ THEN REPLY #58719 /* ~"나는 내가 누구와 얘기하고 있는지 알고 싶소."~ */ GOTO 4
  IF ~~ THEN REPLY #58720 /* ~"태도를 바꾸지 않으면 내가 따금하게 버릇을 고쳐주겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #58721 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58722 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58723 /* ~"나는 피토요." 그는 지루한 표정으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #58724 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58725 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58726 /* ~그는 화난 표정으로 당신에게 뭔가 말하려고 하다가 당신의 전신에 난 흉터를 보고는 관둔다. "미안하오, 나는 피토요."~ */
  IF ~~ THEN REPLY #58727 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58728 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #58729 /* ~그는 억지로 미소를 짓는다. "나는 상인에게 몇 가지 물건을 *빌리다가* 잡혔소. 그는 그 일이 마음에 들지 않았던지 날 여기 집어 넣었소."~ */
  IF ~~ THEN REPLY #58730 /* ~"당신은 도둑이군."~ */ GOTO 7
  IF ~~ THEN REPLY #58731 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58732 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58733 /* ~그는 당신을 노려본다. "그렇게 말할 수도 있겠지."~ */
  IF ~~ THEN REPLY #58734 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58735 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58736 /* ~"꺼지시오. 난 당신에겐 질렸소." 그는 코방귀를 뀌고는 스스로를 우스꽝스럽게 아래위로  쳐다본다. "내가 가이드처럼 보이오?"~ */
  IF ~~ THEN REPLY #58737 /* ~"아니, 당신은 건강에 심각한 문제가 있는 사람처럼 보이오."~ */ GOTO 9
  IF ~~ THEN REPLY #58738 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58739 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58740 /* ~그는 어리둥절한 표정으로 당신을 쳐다본다. "대체 무슨 얘기요? 내겐 아무런 건강 문제도 없소."~ */
  IF ~~ THEN REPLY #58741 /* ~"만약 내 질문에 답하지 않으면 그렇게 될 거요."~ */ GOTO 10
  IF ~~ THEN REPLY #58742 /* ~"관두시오. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58743 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58744 /* ~그는 당신의 도발에 응해 일어나려다가 마음을 바꾼다. "이 곳은 감옥으로, 세 개의 환상 구역으로 구성되어 있소: 바깥쪽 고리, 가운데 고리. 그리고 안쪽 고리."~ */
  IF ~~ THEN REPLY #58745 /* ~"바깥쪽 구역에 대해서 말해주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #58746 /* ~"가운데 구역에 대해서 말해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #58747 /* ~"안쪽 구역에 대해서 말해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #58748 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58749 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #58750 /* ~"당신은 지금 바깥쪽 구역에 있소. 여기 있는 자들은 경범들이오. 좀도둑, 강도 등이오."~ */
  IF ~~ THEN REPLY #58751 /* ~"가운데 구역에 대해서 말해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #58752 /* ~"안쪽 구역에 대해서 말해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #58753 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58754 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 13.1
  SAY #58755 /* ~"가운데는 약간 더 위험한 자들로, 폭력배, 깡패, 우발적으로 또는 사고로 살인을 저지른 사람들이 수용되어 있소."~ */
  IF ~~ THEN REPLY #58756 /* ~"바깥쪽 구역에 대해서 말해주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #58757 /* ~"안쪽 구역에 대해서 말해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #58758 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58759 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1
  SAY #58760 /* ~"안쪽은 매우 위험하거나 치안의 위협이 되는 자들을 위한 구역이오. 강간범. 살인자, 반역자 등이 수용되어 있소."~ */
  IF ~~ THEN REPLY #58761 /* ~"바깥쪽 구역에 대해서 말해주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #58762 /* ~"가운데 구역에 대해서 말해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #58763 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58764 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.3
  SAY #58765 /* ~"트리어스를 말하는 거겠군." 그는 눈살을 찌푸리고 잠시 시선을 돌린다. "그렇소. 우리에겐 불행한 일이지만 사실이오."~ */
  IF ~~ THEN REPLY #58766 /* ~"왜 그런 말을 하는 거요?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58767 /* ~"경비병들은 감옥을 확장할 때 우리들 노동력으로 이용하오. 그들이 필요로 할 때마다 우리는 땅을 파서 새 감방을 만드오. 이러한 작업을 하다가 새로운 지역을 발견했는데, 바로 거기 트리어스가 있었소." 그는 잠시 얘기를 멈추고 눈살을 찌푸린다. "그 바로 직후에 역병이 창궐했소."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58768 /* ~"그래, 그것에 대해서는 들은 기억이 있소. 얼마나 심각했소?"~ */ GOTO 16
  IF ~~ THEN REPLY #58769 /* ~"역병?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #58770 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58771 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.0
  SAY #58772 /* ~"정말 끔찍했소... 백 명 가까이 죽고, 다른 많은 사람들도 감염되었소." 그는 잠시 멈춘다. "하지만 이제는 가라앉은 것 같소. 최근에 감염된 사람은 없소."~ */
  IF ~~ THEN REPLY #58773 /* ~"알겠소. 그래, 트리어스는 어디 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #58774 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58775 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58776 /* ~그는 고개를 젓는다. "모르겠소, 나는 새 발굴 장소에 가본 적이 없으니까. 찾아다니다 보면 발견하게 될 거요."~ */
  IF ~~ THEN REPLY #58777 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58778 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY #58779 /* ~그는 고개를 끄덕인다. "그래, 지독한 역병이었소. 그가 발견된 직후 시작되어 순식간에 번졌소."~ */
  IF ~~ THEN REPLY #58780 /* ~"얼마나 심각했소?"~ */ GOTO 16
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #58781 /* ~도둑 피토가 보인다. "다시 만나 반갑소. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #58782 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58783 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
