// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRIS~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #2925 /* ~이것은 놀란 표정을 하고 있는 매부리코 남자의 시체이다. 그가 복부와 목에 난 여러 개의 자상 때문에 죽었는지, 아니면 오른팔이 어깨에서 거의 잘려 나갔을 때의 출혈로 죽은 건지는 판단하기가 어렵다.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ EXTERN ~DANNAH~ 114
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #2926 /* ~이것은 놀란 표정을 하고 죽은 매부리코 사내의 시체이다. 그가 어떻게 죽었는지는 알기 어렵다. 복부와 목에 난 여러 개의 끔찍한 자상 때문인지, 아니면 어깨에서 팔이 거의 잘라져 나갔을 때의 출혈 때문인지 판단하기 어렵다. ~ */
  IF ~~ THEN REPLY #20657 /* ~"정말 끔찍하게도 죽었군. 만약 내가 그와 얘기할 수가 있었다면, 아마 그가 대단한 무용담을 늘어놓았을 거요..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Quint_Item","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #20658 /* ~매부리코의 시체는 약간 씰룩거린다, 그리고 그리스의 냉담한 목소리가 흘러나온다. "찾았어? 난 네게 확실한 위치를 일러주었어. 그런데 넌 내가 여기서 썩어갈 동안 그냥 어슬렁거리기나 하는 거야? 어쨌든 이 늙고 죽은 그리스에게 무슨 볼일이지?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20659 /* ~"퀸트의 부적이 어디 있는지 다시 말해주겠소?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20660 /* ~"당신이 은닉한 물건이 어디 있는지 다시 말해주겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #20661 /* ~"당신은 대체 무슨 일을 당한 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #20662 /* ~"지하 묘지에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20663 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20664 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20665 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20666 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_GStash","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #20667 /* ~매부리코의 시체는 약간 씰룩거린다, 그리고 그리스의 냉담한 목소리가 흘러나온다. "찾았어? 난 네게 확실한 위치를 일러주었어. 그런데 넌 내가 여기서 썩어갈 동안 그냥 어슬렁거리기나 하는 거야? 어쨌든 이 늙고 죽은 그리스에게 무슨 볼일이지?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20668 /* ~"퀸트의 부적이 어디 있는지 다시 말해주겠소?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20669 /* ~"당신 은닉한 물건이 어디 있는지 다시 말해주겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #20670 /* ~"당신은 대체 무슨 일을 당한 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #20671 /* ~"지하 묘지에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20672 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20673 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20674 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20675 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 9.0
  SAY #20676 /* ~"얘기했잖아. 그건 마타의 집 왼쪽에 있는 쓰레기 더미 속에 숨겨져 있다고. 시체를 뒤적이는 그 미치광이 마녀는 알지? 한참 찾아보면 발견할 수 있을 거야."~ */
  IF ~~ THEN REPLY #20677 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20678 /* ~"고맙소, 그리스. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 9.1
  SAY #20679 /* ~"나는 그것을 오조 집 근처에 숨겼어. 그 정박아 말이야. 다른 녀석들이 날 소생시키기 위해 돈을 모을 리는 만무하고, 당신이 내가 얘기를 나누는 마지막 사람이 될 건 뻔하니, 그 돈은 당신에게 주지. 그건 그의 집 문을 정면으로 마주볼 때 그 오른쪽에 있어."~ */
  IF ~  Global("Know_GStash","GLOBAL",0)
~ THEN REPLY #20680 /* ~"좋소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 9
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20681 /* ~"좋소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 7.0 9.2
  SAY #20682 /* ~"나와 내 동료들은 이 무덤의 문을 열었지... 그리고 말해 두겠는데 그건 여자의 정조대를 푸는 것보다 어려웠어. 우리는 한참 긁적거린 후에야 문을 열고 들어올 수가 있었어. 그리고 주 묘지를 열려고 살피고 있을 때 내 동료들이 비명을 지르기 시작했지, 그리고 이... 이 것이 날 덮쳐서 무덤 안에 처넣었어... 난 발버둥치는 동안 그들이 도망치는 소리를 들었어... 내 동료들... 버트, 그리고 로우덴은 어디 있지? 그들은 살아서 돌아갔어, 아니면 그들도 죽었어?~ */
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20683 /* ~진실: "그들은 죽었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20684 /* ~거짓말: "그들은 살아남았소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20685 /* ~거짓말: "모르겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20686 /* ~거짓말: "그들은 죽었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20687 /* ~거짓말: "그들은 살아남았소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20688 /* ~진실: "모르겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 9.4
  SAY #20689 /* ~"이 지역은 내 영역이야. 여기에는 털기 좋은 무덤들이 많이 있지... 아무도 손대지 않은... " 그는 잠시 말을 멈춘다. "내가 알기로는 정말 오랫동안 아무도 이 곳에 손을 대지 않았어. 나와 내 동료들은 여기서 많은 무덤을 털었지... 하지만 문제가 생긴 건 우리가 이 무덤에 들어왔을 때였어."~ */
  IF ~~ THEN REPLY #20690 /* ~"무슨 일이 일어났소?"~ */ GOTO 6
  IF ~~ THEN REPLY #20691 /* ~"내게 어떤 무덤에 대해 얘기를 해줄 수가 있겠소?" ~ */ GOTO 16
  IF ~~ THEN REPLY #20692 /* ~"그 밖의 질문에도 대답해 주겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #20693 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.5 9.6
  SAY #20694 /* ~"그리스. 대머리수리 그리스. 그런 이름을 얻게 된 건 내가 그 누구보다도 먼저 무덤을 찾아내고 그 안에서 가장 좋은 물건들을 약탈하는 재주를 지녔기 때문이었지. 나는 내 인생의 대부분을 시체를 터는 데 보냈지. 왜 그런 걸 물어보는 거지?"~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20695 /* ~"퀸트는 당신을 찾고 있소, 그리스. 그는 당신이 자기 물건을 가지고 있다고 했소."~ */ GOTO 10
  IF ~  GlobalGT("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20696 /* ~"당신이 그리스요? 마을 사람들에게 당신이 죽었다는 사실을 알려주겠소."~ */ GOTO 19
  IF ~  Global("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20697 /* ~"당신이 그리스요? 마을 사람들에게 당신이 죽었다는 사실을 알려주겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #20698 /* ~"아무런 이유도 없소."~ */ GOTO 21
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",1)
~ THEN BEGIN 9 // from: 4.0 5.0 5.1 7.2 12.0 13.0 14.0 15.0 16.1 17.0 18.0 19.1 20.0 21.0 25.0 26.1
  SAY #20701 /* ~시체는 크게 한숨을 쉰다. "뭘 알고 싶은 거지?"~ */
  IF ~  Global("Quint_Item","GLOBAL",2)
~ THEN REPLY #20702 /* ~"퀸트의 부적이 어디 있는지 다시 말해주겠소?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #10881 /* ~"당신이 은닉한 물건이 어디 있는지 다시 말해주겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #20703 /* ~"당신은 대체 무슨 일을 당한 거요?"~ */ GOTO 6
  IF ~  Global("Know_Gris","GLOBAL",1)
Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20704 /* ~"그리스, 내게 퀸트의 부적이 어디 있는지 말해주어야겠소. 그는 당신이 알고 있을 거라고 했소."~ */ GOTO 10
  IF ~~ THEN REPLY #20705 /* ~"지하 묘지에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20706 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20707 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20708 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20709 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.3
  SAY #20717 /* ~"퀸트의 부적?" 시체는 웃는다. "만약 그 뚱뚱한 매독 걸린 개자식이 그걸 찾으라고 당신을 이 곳까지 보낸 거라면, 당신은 헛걸음을 한 거야. 그건 매장된 마을에 있어."~ */
  IF ~~ THEN REPLY #20718 /* ~"하지만 그건 어디 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #20719 /* ~"알겠소. 가서 찾아보리다. 안녕히 계시오."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 2.6 3.6 9.7
  SAY #20720 /* ~"그리스. 대머리수리 그리스. 그런 이름을 얻게 된 건 내가 그 누구보다도 먼저 무덤을 찾아내고 그 안에서 가장 좋은 물건들을 약탈하는 재주를 지녔기 때문이었지. 나는 내 인생의 대부분을 시체를 터는 데 보냈지. ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 116
END

IF ~~ THEN BEGIN 12 // from: 6.0 6.3
  SAY #20726 /* ~"그래, 잘됐군. 나를 이 곳에서 죽도록 내버려두고 제 놈들만 무사할 수는 없지."~ */
  IF ~~ THEN REPLY #20728 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20729 /* ~"그래, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1 6.4
  SAY #20730 /* ~"더러운 배신자들! 나를 운명이라는 차녀에게 팔아 넘긴 게 틀림없어. 날 그것의 제물이 되도록 남겨놓고 자기들만 열나게 도망치다니..."~ */
  IF ~~ THEN REPLY #20731 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20732 /* ~"그래, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 6.5
  SAY #20733 /* ~"그래, 좋아, 놈들도 무사하지 못했기를 빌자고. 더러운 배신자들."~ */
  IF ~~ THEN REPLY #20734 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20735 /* ~"그래, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4 3.4 9.5
  SAY #20736 /* ~"그것에 대해서는 이미 물어봤잖아. 그리스, 대머리수리, 무덤, 지하 묘지, 수집자... 그것 말고 더 알고 싶은 게 뭐야?"~ */
  IF ~~ THEN REPLY #20737 /* ~"질문에나 답해주시오..."~ */ GOTO 9
  IF ~~ THEN REPLY #20738 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY #20739 /* ~"지하 묘지 입구 왼쪽에 바구일 여러 마리가 날아다니는 곳에 무덤이 하나 있지... 충분한 수의 횃불과 몇 개의 석궁이 없다면 함부로 갈 곳은 아니야. 그리고 입구에서 오른쪽으로 한참 내려온 곳에 예쁜 타일이 있는 무덤이 있어... 그리고 내가 불행한 운명을 맞이하기 직전에 답사한 무덤이 있지... 내 생각에 예쁜 타일이 깔린 무덤에는 뭔가 비밀이 있는 것 같아... 그 곳은 냄새가 달랐거든. 그리고 나도 들어갈 방법을 찾을 수가 없었던 비밀의 방이 하나 있어."~ */
  IF ~~ THEN REPLY #20740 /* ~"그건 어디 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #20741 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20742 /* ~"안녕히 계시오, 그리스."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20743 /* ~"익사한 왕국 깊숙한 곳 어딘가에 있어... 하지만 정확하게 어딘지는 모르겠어.~ */
  IF ~~ THEN REPLY #20744 /* ~"좋소. 그럼 다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20745 /* ~"고맙소, 그리스. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 10.1
  SAY #20746 /* ~"헤. 만약 내가 죽지 않았다면 당신은 내게서 이런 얘기들을 절대로 듣지 못했을 거야. 하지만..." 그는 달관한 듯 말을 멈춘다. "하지만 나는 이제 죽었으니 말해주지. 그건 마타의 집 왼쪽에 있는 쓰레기 더미 속에 있어. 당신이 쓰레기 더미를 뒤지는 걸 싫어하지 않기를 바라겠어."~ */
  IF ~~ THEN REPLY #20747 /* ~"그걸 찾도록 하겠소. 하지만 먼저 질문하고 싶은 것들이 있소..."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~대머리수리 그리스는 내게 퀸트의 항독 부적이 어디 있는지 알려 주었다. 그것의 매장된 마을의 마타의 집 왼쪽에 있는 쓰레기 더미 속에 있다.~ */ GOTO 9
  IF ~~ THEN REPLY #20748 /* ~"고맙소, 그리스. 안녕히 계시오."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~대머리수리 그리스는 내게 퀸트의 항독 부적이 어디 있는지 알려 주었다. 그것의 매장된 마을의 마타의 집 왼쪽에 있는 쓰레기 더미 속에 있다.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.1 8.2
  SAY #20749 /* ~"난 정말로 죽은 모양이군. 그럼 놈들에게 염병에나 걸려 죽으라는 말이나 전해 줘. 아마 그 악당들은 벌써 내 은닉한 물건과 내 시체를 약탈하고 있을 거라고."~ */
  IF ~~ THEN REPLY #20750 /* ~"당신이 은닉한 물건?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20751 /* ~"아마도. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20752 /* ~"아마도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.0
  SAY #20753 /* ~"그래... 내 집 근처에 좀 감추어 두었지... 그 씨근거리는 늙은 불한당 파로드 모르게 말이야. 내가 기억이 틀리지 않는다면 난 그걸 정박아 오조 집 오른쪽에 감추어 두었어."~ */
  IF ~~ THEN REPLY #20754 /* ~"그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20755 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 8.3
  SAY #20756 /* ~"그래, 당신 경우는 다르겠지."~ */
  IF ~~ THEN REPLY #20757 /* ~"그해, 좋소... 다른 질문들에 대답해주시오..."~ */ GOTO 9
  IF ~~ THEN REPLY #20758 /* ~"어... 그래. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #20759 /* ~이것은 놀란 표정을 하고 죽은 매부리코 사내의 시체이다. 그가 어떻게 죽었는지는 알기 어렵다. 복부와 목에 난 여러 개의 끔찍한 자상 때문인지, 아니면 어깨에서 팔이 거의 잘라져 나갔을 때의 출혈 때문인지 판단하기 어렵다. 시체가 당신에게 대답을 하려고 하자 그의 목소리가 목구멍에서 가르랑거린다. "에... 안돼... 안돼... 짐승... 도망쳐야만 해! 왜 아무런 감각도 없는 거지... 술에 취했나? 손에 아무런 감각도 없어... 그리고 내 다리? 내가 마지막으로 기억하는 건 내가 밀려서 여기 들어오게 되었고, 동료들이 뭔가 거대한 것에 의해 베이는..."~ */
  IF ~~ THEN REPLY #20760 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #20761 /* ~"대체 무슨 얘기를 하는 거요?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #20762 /* ~"에? 당신은 대체 누구지? 모습을 드러내라고... 판 신의 털투성이 엉덩이에 걸고 묻겠는데... 나는 죽었어, 그렇지 않아?"~ */
  IF ~~ THEN REPLY #20763 /* ~"불행히도 그런 것 같소. 내 질문을 대답해줄 수 있겠소?"~ */ GOTO 24
  IF ~~ THEN REPLY #20764 /* ~"글쎄..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #20765 /* ~"언젠가는 이렇게 될 줄 알았지... 말해줘, 난 아직도 지하 묘지 안에 있는 거야?"~ */
  IF ~~ THEN REPLY #20766 /* ~"그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #20767 /* ~거짓말: "아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_1","GLOBALLaw",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20768 /* ~시체의 목소리는 증오로 가득 차 있다. "알겠어. 그래. 놈들에게 잘해주어도 돌아오는 건 없지."~ */
  IF ~~ THEN REPLY #20769 /* ~"알겠소. 난 당신에게 뭘 좀 물어보려고 할 뿐이오."~ */ GOTO 9
  IF ~~ THEN REPLY #20770 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #20771 /* ~시체는 놀란 듯하다. "누가 날 찾으라고 당신을 보냈어? 그러리라고는 기대하지 않았는데... 아마 내가 은닉한 물건 때문이겠지.~ */
  IF ~~ THEN REPLY #20772 /* ~"당신이 은닉한 물건"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20773 /* ~"알겠소. 난 당신에게 뭘 좀 물어보려고 할 뿐이오."~ */ GOTO 9
  IF ~~ THEN REPLY #20774 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
