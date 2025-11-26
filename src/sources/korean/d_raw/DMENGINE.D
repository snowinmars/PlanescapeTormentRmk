// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMENGINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMENGINE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48686 /* ~당신 눈에 팔, 다리, 날개가 각각 두 개씩 달린 입방체의 모습이 들어온다. 입방체의 정면은 활기에 찬 얼굴이다. 당신이 접근하자 그 생명체는 당신을 주시한다.~ */
  IF ~~ THEN REPLY #48687 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #48688 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48689 /* ~"안녕하십니까." 생명체는 성별을 구별할 수 없는 단조로운 목소리로 말한다.~ */
  IF ~~ THEN REPLY #48690 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48691 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.2 7.1 8.1 9.1 10.2 11.3 12.2 13.1 14.1 15.1 16.1 18.0 19.1 21.0 26.0 27.0 28.2 29.1 30.2 31.1 34.0
  SAY #48692 /* ~그는 계속 당신을 멍하니 쳐다본다. "질문을 하십시오."~ */
  IF ~~ THEN REPLY #48693 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48694 /* ~"당신은 어떤 존재요?"~ */ GOTO 6
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48695 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 9
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48696 /* ~"루비콘은 구체적으로 어떤 일을 할 수가 있소?"~ */ GOTO 19
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48697 /* ~"나는 탐험할 던젼을 만들고 싶소."~ */ GOTO 22
  IF ~  Global("Portal_Lens","GLOBAL",1)
~ THEN REPLY #48698 /* ~"나는 전이문 렌즈를 이용해 다른 곳으로 이동하고 싶소."~ */ GOTO 25
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #54222 /* ~"어떻게 하면 여기서 나갈 수가 있소?"~ */ GOTO 31
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #66393 /* ~"루비콘에 대해 내가 알아두어야 할 위험 사항은 없소?"~ */ GOTO 32
  IF ~~ THEN REPLY #68063 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48700 /* ~"우리는 모드론입니다."~ */
  IF ~~ THEN REPLY #48701 /* ~"당신 이름이 모드론이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #48702 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48703 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #48704 /* ~"우리는 모드론입니다. 우리에게는 이름이 없습니다. 우리는 모드론입니다. 당신이 여기서 보는 모든 것들은 모드론입니다. 우리는 하나입니다."~ */
  IF ~~ THEN REPLY #48705 /* ~"만약 이름이 없다면 어떻게 한 모드론을 다른 모드론으로부터 식별할 수 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #48706 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48707 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48708 /* ~모드론은 당신 질문에 대해 생각하느라 잠시 멈춘다. "우리는 압니다. 우리는 모드론입니다. 우리는 전체의 일부입니다. 당신이 손의 팔의 일부라고 인식하듯, 우리는 각 개체를 전체의 일부로 인식합니다."~ */
  IF ~~ THEN REPLY #48709 /* ~"당신 개인은 어떻소..."~ */ GOTO 27
  IF ~~ THEN REPLY #48710 /* ~"흥미롭군. 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48711 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #48712 /* ~"우리는 모드론입니다, 우리는 쿼드론입니다."~ */
  IF ~~ THEN REPLY #48713 /* ~"모드론이란 무엇이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #48714 /* ~"쿼드론이란 무엇이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #48715 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48716 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48717 /* ~"우리는 모드론입니다. 우리 종족은 그렇게 식별되고 있습니다."~ */
  IF ~~ THEN REPLY #48718 /* ~"그럼 쿼드론이란 무엇이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #48719 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48720 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48721 /* ~"우리 종족 내에서 우리는 쿼드론으로 식별되고 있습니다."~ */
  IF ~~ THEN REPLY #48722 /* ~"그럼 모드론이란 무엇이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #48723 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48724 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 31.0
  SAY #48725 /* ~"이건 던젼 구조물 루비콘 입니다."~ */
  IF ~~ THEN REPLY #48726 /* ~"그건 정확하게 어떤 것이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #48727 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48728 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #48729 /* ~모드론은 대답을 하면서 낮은 윙윙 소리를 내기 시작한다: 루비콘: 프로젝트 목표는 일반적으로 던젼이라 불리는 환경에 관련된 사회적 및 비사회적 역학 관계를 규정하고 그러한 환경에서 높은 확률로 발생하는 일탈 행위를 규명하는 것입니다. ~ */
  IF ~~ THEN REPLY #48730 /* ~"그 일을 어떻게 해낼 생각이오?"~ */ GOTO 11
  IF ~~ THEN REPLY #48731 /* ~"어떤 변이에 대해 말하는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #48732 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48733 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #48734 /* ~"루비콘은 일련의 방들을 만들어 특정 패턴으로 연결함으로서 일반적으로 *던젼*이라 불리는 환경을 작성할 수 있습니다.각 던젼은 다음 세 가지 난이도들 중 하나로 설정될 수 있습니다: 저난도, 보통, 고난도. 던젼은 선택한 난이도에 따라 이에 상응하는 몬스터, 함정, 그리고 보물들이 배치됩니다. 일단 작성된 후에는 던젼에서 모험을 할 수 있습니다." 모드론은 낮은 윙윙 소리를 내기 시작한다.~ */
  IF ~~ THEN REPLY #48735 /* ~"저 허밍소리는 무엇이오?"~ */ GOTO 30
  IF ~~ THEN REPLY #48736 /* ~"변이라고 했소?"~ */ GOTO 12
  IF ~~ THEN REPLY #48737 /* ~"흥미롭군. 이러한 던젼들 중 한 곳을 시험해보고 싶소."~ */ GOTO 13
  IF ~~ THEN REPLY #48738 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48739 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 30.0
  SAY #48740 /* ~"해명되어야 할 의문: 무엇이 사람들로 하여금 던젼에 오게 합니까? 왜 사람들은 그토록 위험한 곳에 들어가려고 합니까? 애당초 던젼은 왜 존재합니까? 실행 가능한 던젼의 역학은 어떤 것입니까? 우리는 이해할 수 없습니다..." 그는 잠시 멈춘다. "나는... 이해할... 수 없습..."~ */
  IF ~~ THEN REPLY #48748 /* ~"흥미롭군. 이러한 던젼들 중 한 곳을 시험해보고 싶소."~ */ GOTO 13
  IF ~~ THEN REPLY #48749 /* ~"당신은 *우리* 대신 *나*라고 하기 시작했소..."~ */ GOTO 28
  IF ~~ THEN REPLY #48750 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48751 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0 28.0 29.0 30.1
  SAY #48752 /* ~모드론은 한참이 지난 후에야 대답을 한다. "요구 거부... 사고에 의해... 프로젝트 중단."~ */
  IF ~~ THEN REPLY #48753 /* ~"어떤 사고 말이오?"~ */ GOTO 14
  IF ~~ THEN REPLY #48754 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48755 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #48756 /* ~"던젼 구조물이 불안정해졌습니다, 원인 - 불확실. 안전 장치 작동에 의해 던젼 붕괴, 원인 - 불확실. 전이문 렌즈 고장으로 인한 고향 차원 미캐너스와의 연락 단절, 원인 - 불확실. 던젼의 리셋이 필요합니다. ~ */
  IF ~~ THEN REPLY #48757 /* ~"그럼 왜 그것을 리셋하지 않소?"~ */ GOTO 15
  IF ~~ THEN REPLY #48758 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48759 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #48760 /* ~"리셋은 프로젝트 감독만이 발동시킬 수 있습니다. 프로젝트 감독 - 소멸. 전이문 렌즈 고장으로 인한 고향 차원 미캐너스와의 연락 단절 - 미캐너스로부터의 새로운 감독의 파견 불가."~ */
  IF ~~ THEN REPLY #48761 /* ~"한 번 정리를 해봅시다. 관리자 없이는 리셋을 할 수가 없고, 리셋을 하지 않고서는 관리자를 얻을 수가 없단 말이오?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #48762 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48763 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #48764 /* ~모드론은 걱정하는 것처럼 보인다, 그리고 그는 안절부절 못하기 시작한다. "정확한 분석입니다. 프로젝트는 중단되었습니다."~ */
  IF ~~ THEN REPLY #48765 /* ~"이보시오, 난 모험자이며 한창때는 여러 던젼을 탐험하였소. 내가 당신들 관리자가 되는 건 어떻겠소?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",3)
~ GOTO 17
  IF ~~ THEN REPLY #48766 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48767 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #48768 /* ~방은 갑자기 윙윙거리는 소리로 가득 찬다, 그리고 다시 갑자기 조용해진다. "도움을 기꺼이 받아들이겠습니다. 당신이 새 프로젝트 감독입니다. 다음 임무를 지시하십시오. ~ */
  IF ~~ THEN REPLY #48769 /* ~"던젼을 리셋하시오."~ */ DO ~FixEngineRoom()
GenerateModronMaze()
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #48770 /* ~"리셋 중..." 방은 귀에 들리기 보다는 몸으로 느껴지는 낮은 똑똑 소리로 가득 찬다. "기존 던젼 와해 중..." 소리는 점점 더 커져 바닥이 진동할 정도로 커진다. "새 던젼 초기화 중..." 소리는 더욱 더 커져 당신 머리가 폭발하지는 않을까 우려될 정도가 된다. 그러나 다음 순간 갑자기 방 안이 조용해진다. "리셋 완료. 던젼 구조물 상태: 저난도. 추가적인 명령을 기다리고 있습니다, 창조적 관리자."~ */
  IF ~~ THEN REPLY #48771 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48772 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #48773 /* ~"루비콘은 일련의 방들을 만들어 특정 패턴으로 연결함으로서 일반적으로 *던젼*이라 불리는 환경을 작성할 수 있습니다.각 던젼은 다음 세 가지 난이도들 중 하나로 설정될 수 있습니다: 저난도, 보통, 고난도. 던젼은 선택한 난이도에 따라 이에 상응하는 몬스터, 함정, 그리고 보물들이 배치됩니다. 일단 작성된 후에는 던젼에서 모험을 할 수 있습니다." 모드론은 잠시 멈춘다. "전이문 렌즈를 이용하면 기능의 추가도 가능합니다."~ */
  IF ~~ THEN REPLY #48774 /* ~"어떤 추가 기능 말이오?"~ */ DO ~SetGlobal("Portal_Lens","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #48775 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48776 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #48777 /* ~"루비콘은 기존의 알려진 전이문에 자신을 일시적으로 접속함으로서 다른 지역으로 통하는 관문을 열 수가 있습니다. 이 효과는 *전이문 렌즈*로 알려져 있습니다. 이를 이용하면 실제로 전이문이 있는 곳까지 가지 않아도 루비콘 내에서 그 전이문을 이용할 수 있습니다."~ */
  IF ~~ THEN REPLY #48778 /* ~"그럼 내가 어떤 전이문의 위치를 알 경우에는 여기서 그 곳으로 갈 수가 있단 말이오?~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #48779 /* ~"그렇습니다, 창조적 관리자."~ */
  IF ~~ THEN REPLY #48780 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48781 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.4
  SAY #48782 /* ~"난이도를 선택하십시오."~ */
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48783 /* ~"이미 저난도로 설정이 되어 있소, 그러니 그냥 던젼을 작성하시오."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48784 /* ~"현재는 저난도로 설정되어 있소. 설정을 보통으로 변경하시오."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48785 /* ~"현재는 저난도로 설정되어 있소. 설정을 고난도로 변경하시오."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48786 /* ~"이미 보통으로 설정이 되어 있소, 그러니 그냥 던젼을 작성하시오."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48787 /* ~"현재는 보통으로 설정되어 있소. 설정을 저난도로 변경하시오."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48788 /* ~"현재는 보통으로 설정되어 있소. 설정을 고난도로 변경하시오."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48789 /* ~"이미 고난도로 설정이 되어 있소, 그러니 그냥 던젼을 작성하시오."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48790 /* ~"현재는 고난도로 설정되어 있소. 설정을 보통으로 변경하시오."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48791 /* ~"현재는 고난도로 설정되어 있소. 설정을 저난도로 변경하시오."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~~ THEN REPLY #48792 /* ~"관두시오. 현 상태를 유지하시오."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1 22.2 22.3 22.4 22.5 22.6 22.7 22.8
  SAY #48793 /* ~"기존 던젼 와해 중..." 방은 낮은 똑똑 소리로 가득 찬다. "새 던젼 초기화 중..." 바닥이 진동하기 시작한다, 그러나 이내 다시 조용해진다. "던젼 작성 완료. 추가적인 명령을 기다리고 있습니다, 창조적 관리자."~ */
  IF ~~ THEN REPLY #48794 /* ~"지금으로선 그게 다요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.9
  SAY #48795 /* ~"현재 설정 유지. 추가적인 명령을 기다리고 있습니다, 창조적 관리자."~ */
  IF ~~ THEN REPLY #48796 /* ~"지금으로선 그게 다요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.5
  SAY #48797 /* ~"목적지를 말씀하십시오, 창조적 관리자."~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #48905 /* ~"벌통, 넝마주이 광장 부근."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #48906 /* ~"벌통, 시체안치소 부근."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #48907 /* ~"벌통, 시장 부근."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #48908 /* ~"벌통, 불타는 시체 바 부근."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #48909 /* ~"마계구."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #48910 /* ~"사무구."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #48911 /* ~"눈물을 흘리는 돌 지하 묘지."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #48912 /* ~"관두시오. 지금으로선 그게 다요. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #48913 /* ~모드론 엔지니어가 보인다. "안녕하십니까."~ */
  IF ~~ THEN REPLY #48914 /* ~"질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48915 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.0
  SAY #48916 /* ~"나..." 모드론은 혼란스러운 듯 잠시 대화를 중단한다. 방 안에 격렬한 윙윙 소리가 울려 퍼지나, 이내 잠잠해진다. "우리는 모드론입니다. 우리는 전체의 일부입니다. 전체는 모드론입니다. 그 이외의 것은 존재하지 않습니다."~ */
  IF ~~ THEN REPLY #48917 /* ~"흥미롭군. 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48918 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.1
  SAY #48919 /* ~모드론은 우려하는 표정으로 당신을 보더니 방 안을 두리번거린다. "당신은 오류를 범하고 있습니다. 우리는 모드론입니다. 우리는 전체입니다... 우리는 이 문제에 대해 얘기하지 않겠습니다."~ */
  IF ~~ THEN REPLY #48920 /* ~"좋소. 당신이 말한 던젼들 중 한 곳을 시험해보고 싶소."~ */ GOTO 13
  IF ~~ THEN REPLY #48921 /* ~"난 내가 무슨 얘기를 들었는지 아오. 당신은 *나*라고 말하기 시작했소..."~ */ GOTO 29
  IF ~~ THEN REPLY #48922 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48923 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #48924 /* ~모드론 눈살을 찌푸린다. 당신 질문에 대답하는 그의 목소리로부터 화난 기색을 희미하게나마 느낄 수가 있다. "아닙니다. . 우리는 모드론입니다. 우리는 전체의 일부입니다. 우리는 이 문제에 대해 더 이상 얘기하지 않겠습니다." 방 안이 격렬한 윙윙 소리로 가득 차나, 이내 잠잠해진다.~ */
  IF ~~ THEN REPLY #48925 /* ~"좋소. 당신이 말한 던젼들 중 한 곳을 시험해보고 싶소."~ */ GOTO 13
  IF ~~ THEN REPLY #48926 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48927 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 11.0
  SAY #48928 /* ~"루비콘은 가치가 있는 업적입니다..." 그는 잠시 말을 멈춘다. "나... 우리는... 만족합니다."~ */
  IF ~~ THEN REPLY #48929 /* ~"변이라고 했소?"~ */ GOTO 12
  IF ~~ THEN REPLY #48930 /* ~"흥미롭군. 이러한 던젼들 중 한 곳을 시험해보고 싶소."~ */ GOTO 13
  IF ~~ THEN REPLY #48931 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48932 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.6
  SAY #66394 /* ~모드론은 대답을 하기 전에 잠시 주저한다. "출구 사용 불능. 프로젝트 중단..." 방 안은 혼란스런 윙윙 소리로 가득 찬다, 그리고 갑자기 조용해진다.~ */
  IF ~~ THEN REPLY #66395 /* ~"무슨 프로젝트? 대체 무슨 얘기를 하고 있는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #66396 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #66397 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 2.7
  SAY #68064 /* ~"그렇습니다, 창조적 관리자. 미로 안에서는 동료들과 헤어지지 마십시오. 만약 미로가 리셋되거나, 난이도가 변경되면, 미로에 남아 있던 사람은 모두 죽을 것입니다."~ */
  IF ~~ THEN REPLY #68065 /* ~"알겠소. 나는 미로에 있는 동안 내 파티를 재편성하지 않겠소. 그 밖에 다른 건?"~ */ JOURNAL #68071 /* ~모드론 미로에서는 파티를 재구성할 수가 없다. 만약 미로를 리세트하거나 난이도 설정을 변경하면, 미로의 남은 사람은 죽을 것이다. ~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #68066 /* ~"그렇습니다, 창조적 관리자. 미로 안에서는 아이템을 떨구지 마십시오. 만약 미로가 리셋되거나, 난이도가 변경되면, 미로에 남아 있던 아이템은 모두 파괴됩니다."~ */
  IF ~~ THEN REPLY #68067 /* ~"알겠소. 나는 미로에 중요한 물건은 떨구지 않도록 하겠소. 그 밖에 다른 건?"~ */ JOURNAL #68072 /* ~모드론 미로에서는 중요한 물건을 떨구어서는 안 된다. 만약 미로를 리세트하거나 난이도 설정을 변경하면, 미로에 남긴 물건은 파괴될 것이다. ~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #68068 /* ~그는 잠시 생각하기 위해 동작을 멈춘다. "아닙니다, 창조적 관리자."~ */
  IF ~~ THEN REPLY #68069 /* ~"알겠소. 물어볼 것이 더 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #68070 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
