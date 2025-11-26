// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMODRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMODRON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #2980 /* ~당신 눈에 팔, 다리, 날개가 각각 두 개씩 달린 입방체의 모습이 들어온다. 입방체의 정면은 활기에 찬 얼굴이다. 당신이 접근하자 그 생명체는 당신을 주시한다.~ */
  IF ~~ THEN REPLY #2981 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #44710 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44711 /* ~"안녕하십니까." 생명체는 성별을 구별할 수 없는 단조로운 목소리로 말한다.~ */
  IF ~~ THEN REPLY #44712 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44713 /* ~"관두시오. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 6.1 7.2 8.1 9.1 10.1 11.1 12.0 13.1 14.1
  SAY #44714 /* ~그는 계속 당신을 멍하니 쳐다본다. "질문을 하십시오."~ */
  IF ~~ THEN REPLY #44715 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #44716 /* ~"당신은 어떤 존재요?"~ */ GOTO 7
  IF ~~ THEN REPLY #44717 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #44718 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 13
  IF ~~ THEN REPLY #44719 /* ~"관두시오. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44720 /* ~"우리는 모드론입니다."~ */
  IF ~~ THEN REPLY #44721 /* ~"당신 이름이 모드론이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #44722 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44723 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44724 /* ~"우리는 모드론입니다. 우리에게는 이름이 없습니다. 우리는 모드론입니다. 당신이 여기서 보는 모든 것들은 모드론입니다. 우리는 하나입니다."~ */
  IF ~~ THEN REPLY #44725 /* ~"좋소. 만약 당신들이 모두 모드론이라면 *이* 모드론의 이름은 뭐요? 내가 지금 얘기하고 있는 모드론 말이오."~ */ GOTO 5
  IF ~~ THEN REPLY #44726 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44727 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #44728 /* ~모드론은 산발적으로 노크 소리를 내기 시작한다. 그는 당신을 계속해서 바라보면서 고통스러운 표정을 짓는다. "우리... 나..." 그가 당신으로부터 고개를 돌리자 노크 소리가 멈춘다. "우리는 모드론입니다. 우리는 모드론이라는 전체 이외에 다른 개성은 지니고 있지 않습니다. 우리에게는 이름이 없습니다."~ */
  IF ~~ THEN REPLY #44729 /* ~"그럼 어떻게 한 모드론을 다른 모드론으로부터 식별할 수 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #44730 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44731 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44732 /* ~모드론은 당신 질문에 대해 생각하느라 잠시 멈춘다. "우리는 압니다. 우리는 모드론입니다. 우리는 전체의 일부입니다. 당신이 손의 팔의 일부라고 인식하듯, 우리는 각 개체를 전체의 일부로 인식합니다."~ */
  IF ~~ THEN REPLY #44733 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44734 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44735 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #44736 /* ~"우리는 모드론입니다, 우리는 쿼드론입니다."~ */
  IF ~~ THEN REPLY #44737 /* ~"모드론이란 무엇이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #44738 /* ~"쿼드론이란 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44739 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44740 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #44741 /* ~"우리는 모드론입니다. 우리 종족은 그렇게 식별되고 있습니다."~ */
  IF ~~ THEN REPLY #44742 /* ~"그럼 쿼드론이란 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44743 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44744 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #44745 /* ~"우리 종족 내에서 우리는 쿼드론으로 식별되고 있습니다."~ */
  IF ~~ THEN REPLY #44746 /* ~"그럼 모드론이란 무엇이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #44747 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44748 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #44749 /* ~"던젼 구조물 루비콘."~ */
  IF ~~ THEN REPLY #44750 /* ~"그건 정확하게 어떤 것이오?"~ */ GOTO 11
  IF ~~ THEN REPLY #44751 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44752 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 14.0
  SAY #44753 /* ~모드론 당신을 보며 얼굴을 찌푸리더니 방 안을 둘러본다. "우리는 알고 있어야 합니다... 우리는 모드론입니다. 우리는 전체의 일부입니다... 우리는... 엔지니어에게 문의하십시오."~ */
  IF ~~ THEN REPLY #44754 /* ~"엔지니어는 어디 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #44755 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44756 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44757 /* ~모드론은 주변을 두리번거린다. "우리는 모릅니다. 정보가 없습니다... 우리는 혼란스럽습니다..."~ */
  IF ~~ THEN REPLY #44758 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44759 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #44760 /* ~"지시 대기중."~ */
  IF ~~ THEN REPLY #44761 /* ~"뭐에 대한 지시 사항 말이오?"~ */ GOTO 14
  IF ~~ THEN REPLY #44762 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44763 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44764 /* ~모드론은 당신을 멍하니 쳐다본다. "어떤 일을 해야 하는가에 대한 지시입니다."~ */
  IF ~~ THEN REPLY #44765 /* ~"무슨 임무? 당신들은 대체 이 곳에서 어떤 일들을 하오?"~ */ GOTO 11
  IF ~~ THEN REPLY #44766 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #44767 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 15 // from:
  SAY #44768 /* ~당신 눈에 팔, 다리, 날개가 각각 두 개씩 달린 입방체의 모습이 들어온다. 입방체의 정면은 활기에 찬 얼굴이다. 당신이 접근하자 그 생명체는 당신을 주시한다.~ */
  IF ~~ THEN REPLY #44769 /* ~"안녕하시오."~ */ GOTO 16
  IF ~~ THEN REPLY #44770 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #44771 /* ~"안녕하십니까." 생명체는 성별을 구별할 수 없는 단조로운 목소리로 말한다.~ */
  IF ~~ THEN REPLY #44772 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44773 /* ~"관두시오. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.1 19.1 20.0 21.1 22.0 23.2 24.1 25.1 26.0 27.1 28.0
  SAY #44774 /* ~그는 계속 당신을 멍하니 쳐다본다. "질문을 하십시오."~ */
  IF ~~ THEN REPLY #44775 /* ~"당신은 누구요?"~ */ GOTO 18
  IF ~~ THEN REPLY #44776 /* ~"당신은 어떤 존재요?"~ */ GOTO 21
  IF ~  Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44777 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 23
  IF ~  !Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44778 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 26
  IF ~~ THEN REPLY #44779 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 27
  IF ~~ THEN REPLY #44780 /* ~"관두시오. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44781 /* ~그는 대답을 하기 전에 당신을 한동안 쳐다본다. "불확실... 혼란이 존재합니다..."~ */
  IF ~~ THEN REPLY #44782 /* ~"당신은 무엇이오?"~ */ GOTO 19
  IF ~~ THEN REPLY #44783 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44784 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #44785 /* ~"아닙니다... 때로는... 불확실성이 존재합니다." ~ */
  IF ~~ THEN REPLY #44786 /* ~"나도 내가 누군지 기억하지 못하오."~ */ GOTO 20
  IF ~~ THEN REPLY #44787 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44788 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #44789 /* ~"당신을 동정합니다..." 그는 손을 내밀어 당신 어깨를 조심스럽게 만진다. 잠시 후 그는 손을 치운다.~ */
  IF ~~ THEN REPLY #44790 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44791 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY #44792 /* ~"우리 종족은 모드론으로 알려져 있습니다.. 우리는 법의 차원 미캐너스에서 왔습니다."~ */
  IF ~~ THEN REPLY #44793 /* ~"미캐너스에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #44794 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44795 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44796 /* ~"법의 차원... 많은 법들. 질서 정연합니다..." 그의 목소리는 점차 줄어들어 들리지 않게 된다.~ */
  IF ~~ THEN REPLY #44797 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44798 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #44799 /* ~그녀는 주변을 두리번거린다. "던젼 시뮬레이터입니다. 하지만 작동하지 않습니다. 고장났습니다." 그는 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #44800 /* ~"무슨 일이 일어났소?"~ */ GOTO 24
  IF ~~ THEN REPLY #44801 /* ~"던젼 시뮬레이터란 무엇이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #44802 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44803 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #44804 /* ~"알 수 없습니다. 그것은 작동을 중지했습니다."~ */
  IF ~~ THEN REPLY #44805 /* ~"던젼 시뮬레이터란 무엇이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #44806 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44807 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #44808 /* ~모드론은 당신을 쏘아보더니 한숨을 쉰다. "그것은 던젼을 시뮬레이트합니다. 던젼 시뮬레이터가 달리 어떤 일을 하리라고 생각합니까?"~ */
  IF ~~ THEN REPLY #44809 /* ~"그건 어떻게 고장이 났소?"~ */ GOTO 24
  IF ~~ THEN REPLY #44810 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44811 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #44812 /* ~그는 당신을 보면서 눈살을 찌푸린다. "당신이 고쳤으니 당연히 당신이 알아야 하지 않겠습니까."~ */
  IF ~~ THEN REPLY #44813 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44814 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.4
  SAY #44815 /* ~그는 잠시 멈춘다. "숙고 중... 사고 중... 당신 질문에 응답 중..." 그는 당신을 보면서 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #44816 /* ~"무슨 생각을 하고 있었소?"~ */ GOTO 28
  IF ~~ THEN REPLY #44817 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44818 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44819 /* ~"삶의 많은 수수께끼들..." 그는 입을 다문다.~ */
  IF ~~ THEN REPLY #44820 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #44821 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 29 // from:
  SAY #44822 /* ~당신 눈에 팔, 다리, 날개가 각각 두 개씩 달린 입방체의 모습이 들어온다. 입방체의 정면은 활기에 찬 얼굴이다. 당신이 접근하자 그 생명체는 당신을 주시한다.~ */
  IF ~~ THEN REPLY #44823 /* ~"안녕하시오."~ */ GOTO 30
  IF ~~ THEN REPLY #44824 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #44825 /* ~그는 당신을 멍하니 쳐다본다.~ */
  IF ~~ THEN REPLY #44826 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 31
  IF ~~ THEN REPLY #44827 /* ~"관두시오. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #44828 /* ~그는 눈 한 번 깜박이지 않고 당신을 계속 쳐다본다. ~ */
  IF ~~ THEN REPLY #44829 /* ~"내 질문에 대답해줄 수 있겠소?"~ */ GOTO 32
  IF ~~ THEN REPLY #44830 /* ~"관두시오. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #44831 /* ~당신을 계속 쳐다보면서 아무런 감정도 없는 그의 눈이 깜박인다.~ */
  IF ~~ THEN REPLY #44832 /* ~"관두시오. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END
