// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURT~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2881 /* ~당신이 말을 걸자 버트의 시체가 씰룩거린다. "무엇... 무얼 원하시오?"~ */
  IF ~~ THEN REPLY #2882 /* ~"당신에게 몇 가지만 더 묻고 싶소..."~ */ GOTO 1
  IF ~~ THEN REPLY #20787 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1 3.1 4.0 5.0 6.1 7.0 8.0
  SAY #20788 /* ~"뭘... 뭘 알고 싶은 거요?"~ */
  IF ~  Global("Know_Burt","GLOBAL",0)
~ THEN REPLY #20789 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Burt","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20790 /* ~"당신 자신에 대해 다시 얘기해주시오."~ */ GOTO 2
  IF ~  Global("Know_BLG_Grouped","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20791 /* ~"그리스는 어떻게 되었소?"~ */ GOTO 5
  IF ~~ THEN REPLY #20792 /* ~"당신은 어떻게 죽었소?"~ */ GOTO 6
  IF ~~ THEN REPLY #20793 /* ~"지하 묘지에 대해서 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #20794 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20795 /* ~"난... 난 버트였소. 나와 내 가장 친한 동료인 로우덴... 우린 이제 죽었소."~ */
  IF ~~ THEN REPLY #20796 /* ~"로우덴은 지금 어디 있소?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20797 /* ~"날 위해 다른 질문들에 답해주시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #20798 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0
  SAY #20799 /* ~"재수없게 끔찍한 함정이 있는 무덤에 걸렸소. 우리는 그리스와 그를 잡은 *것*으로부터 미친 듯이 도망쳤소. 로우덴은... 우리가 이미 위험한지 아는 무덤으로 도망쳤소... 하지만 그는 어찌나 공포에 질렸던지 개의치 않았소. 나는 그가 죽는 소리를 들었소." 그의 목소리는 잠시 실망한 것처럼 들린다. "그는 이번 도굴의 약탈품을 모두 가지고 있었소... 이번 도굴에서는 괜찮은 걸 많이 건졌었는데..."~ */
  IF ~~ THEN REPLY #20800 /* ~"함정 무덤?"~ */ GOTO 4
  IF ~~ THEN REPLY #20801 /* ~"그랬을 것 같소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #20802 /* ~"정말. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20803 /* ~"그렇소. 쇠꼬챙이, 칼날, 피, 바닥의 격자. 만약 로우덴이 산산조각 나지 않았다면 아마 그 곳에 있을 거요. 그를 찾을 때는 발 밑을 조심하시오..."~ */
  IF ~~ THEN REPLY #20804 /* ~"그랬을 것 같소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #20805 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #20806 /* ~"끔찍했소... 무덤을 열었는데 *그녀*가 그 곳에 있었소. 로우덴과 나는 그리스를 안으로 밀어넣고 도망쳤소. 우리는 그가 비명을 지르는 소리를 들었소."~ */
  IF ~~ THEN REPLY #20807 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #20808 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY #20809 /* ~"나는... 죽었소? 그런 모양이군... 나는 무덤의 여왕으로부터 도망쳐 지하 묘지를 정신없이 가로질렀소. 로우덴은 위험한 곳으로 갔소... 난... 나는 계속 달리다가 벽에 부딪쳤소... 한참 피를 흘렸고... 깨어나 보니 쥐들이 날 물어뜯고 있었소.. 놈들은 날 잡아먹었소..."~ */
  IF ~~ THEN REPLY #20810 /* ~"로우덴은 어디 있소?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20811 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #20812 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY #20813 /* ~"생전에는... 우리의 영역이었소... 그리고 부의 원천... 시체를 가져다 파는 돈만으로도 이 지긋지긋한 곳에서 벗어날 수 있었을 거요... 너무 위험해... 그리스? 그리스?" 시체는 조용해진다. ~ */
  IF ~~ THEN REPLY #20814 /* ~"내 질문에 대답해 주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #20815 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #20816 /* ~이 시체는 비교적 최근의 것이다. 죽은지 2주 정도밖에 되지 않은 듯하며, 시체의 상당 부분은 쥐들이 뜯어먹었다. 이 시체의 이마의 피부 상태로 미루어 볼 때 누군가가 이 불쌍한 자의 머리를 무지막지하게 친 것 같다. 당신이 질문을 하자 그가 움직이기 시작한다 "누가... 내 잠을 방해하는 거요?"~ */
  IF ~~ THEN REPLY #20817 /* ~"당신에게 물어볼 것들이 있소, 시체..."~ */ GOTO 1
  IF ~~ THEN REPLY #20818 /* ~"아무도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #20819 /* ~이 시체는 비교적 최근의 것이다. 죽은지 2주 정도밖에 되지 않은 듯하며, 시체의 상당 부분은 쥐들이 뜯어먹었다. 이 시체의 이마의 피부 상태로 미루어 볼 때 누군가가 이 불쌍한 자의 머리를 무지막지하게 친 것 같다. 당신이 발가락으로 찌르자 시체는 힘없이 옆으로 뒹군다. ~ */
  IF ~~ THEN REPLY #20820 /* ~"여긴 쓸모있는 것이 없군..."~ */ EXIT
END
