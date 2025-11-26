// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DASHMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DASHMAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 42 44 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2133 /* ~긴 검은색 법복을 입고 창백한 얼굴을 한 사내가 보인다. 그는 시체안치소에서 본 사람들과 닮은 것 같다. 그러나 그는 그들과는 달리 혼란스러운 표정을 하고 있으며 주위를 두리번거리고 있다. 그는 당신을 발견하자 당신의 주의를 끌려고 손을 든다.~ */
  IF ~~ THEN REPLY #2180 /* ~"안녕하시오."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2181 /* ~그를 무시한다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 42 44 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2134 /* ~긴 검은색 법복을 입고 창백한 얼굴을 한 더스트맨이 보인다. 하지만 그는 시체안치소에서 본 더스트맨들과는 달리 혼란스런 표정을 하고 있으며, 뭔가를 찾고 있는 듯 주위를 두리번거리고 있다. 그는 당신을 발견하자 당신의 주의를 끌려고 손을 든다.~ */
  IF ~~ THEN REPLY #2182 /* ~"안녕하시오."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2183 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2135 /* ~남자는 당신이 말을 걸자 안도한 듯하다. 그는 가볍게 인사를 한다. "내 얘기를 들어주어 고맙소, 여행자. 나는 회색 외투로, 더스트맨 종파의 일원이오. 혹시 내게 길 안내를 해줄 수 있겠소...? 나는 이 지역을 잘 모르오. 나는 우리 종파 사람들이 자주 드나드는 바를 찾고 있소. 혹시 그런 곳에 대해 아시오?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2184 /* ~"이 근방에서 더스트맨으로 변장한 소매치기에 대한 소문이 돌고 있소. 혹시 그에 대해 아시오?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #2185 /* ~"'종파'? '당파' 말이오?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2186 /* ~"'종파'? 당신은 더스트맨이오. '당파'라고 말하려던 게 아니오?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2187 /* ~"더스트맨 바 말이오? 그 곳은 시체안치소 부근에 있소. 시체안치소 정문을 기점으로 하여 남서쪽으로 걸어가시오. 발견하지 못할 리는 없을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2188 /* ~"그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #61400 /* ~"들은 적이 있소. 만약 당신이 내 질문에 답해주면 당신을 도울 의향이 있소."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2189 /* ~거짓말: "어... 그래, 그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2190 /* ~거짓말: "어... 그래, 그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2191 /* ~"아니, 미안하오. 그 곳이 어디 있는지 모르겠소."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2192 /* ~거짓말: "아니, 미안하오. 그 곳이 어디 있는지 모르겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2193 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2194 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2 45.1 45.2
  SAY #2136 /* ~더스트맨은 고개를 끄덕인다. "그렇소... *당파*요. 난 당파라고 말하려고 했던 거요... 종파나 당파는 매한가지요... 혹시 당신은 우리 당파 사람들이 자주 드나드는 바를 알고 계시오?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2195 /* ~"이 근방에서 더스트맨으로 변장한 소매치기에 대한 소문이 돌고 있소. 혹시 그에 대해 아시오?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2196 /* ~"당신이 찾고 있는 바는 시체안치소 부근에 있소. 시체안치소 정문을 기점으로 하여 남서쪽으로 걸어가시오. 발견하지 못할 리는 없을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2197 /* ~"그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2198 /* ~"그 곳에 대해 들은 적이 있소. 내 질문에 대답해주겠다면 당신을 도울 용의가 있소."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2199 /* ~거짓말: "어... 그래, 그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2200 /* ~거짓말: "어... 그래, 그 곳에 대해 들은 적이 있소. 내 질문에 대답해주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2201 /* ~"아니, 미안하오. 그 곳이 어디 있는지 모르겠소."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2202 /* ~거짓말: "아니, 미안하오. 그 곳이 어디 있는지 모르겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2203 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2204 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.4 2.6 3.2 3.4 43.2 43.4 45.4 45.6
  SAY #2137 /* ~그는 한숨을 쉬고 손을 들어 올린다. "불행히도 내겐 돈이 없소."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2205 /* ~"그럼 관두시오. 당신이 찾고 있는 바는 시체안치소 부근에 있소. 시체안치소 정문을 기점으로 하여 남서쪽으로 걸어가시오. 발견하지 못할 리는 없을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #2206 /* ~"당신은 내 질문들에 대답해주는 건 어떻겠소? 그럼 공평할 것이오."~ */ GOTO 7
  IF ~~ THEN REPLY #2613 /* ~"그럼 난 당신을 도울 수가 없소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.8 2.9 2.10 2.11 3.6 3.7 3.8 3.9 4.2 6.1 7.2 8.4 9.1 10.2 11.2 12.4 13.2 14.2 15.3 16.2 18.4 43.6 43.7 45.8 45.9
  SAY #2138 /* ~더스트맨은 고개를 끄덕이고 마지막으로 고개를 숙인다. "시간을 내주어 고맙소."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2614 /* ~"물론이오. 안녕히 계시오."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2615 /* ~"물론이오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2616 /* ~"물론이오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",1)
~ THEN REPLY #2617 /* ~"물론이오. 안녕히 계시오."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #2618 /* ~"물론이오. 안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1 4.0 7.0 7.1 43.1 45.3
  SAY #2139 /* ~더스트맨은 미소짓는다. "대단히 고맙소, 여행자. 당신의 친절에는 정말 감사하오. 벌통 사람들은... 이런 일에 있어 별로 협조적이 아니오."~ */
  IF ~~ THEN REPLY #2620 /* ~"내게 얘기를 해주시오. 그런데 당신에게 뭘 좀 물어봐도 괜찮겠소?"~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #2621 /* ~"괜찮소. 안녕히 계시오, 회색 외투."~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.5 2.7 3.3 3.5 4.1 43.3 43.5 45.5 45.7
  SAY #2140 /* ~그는 고개를 끄덕인다. "당신의 요구는 합리적이오. 내게 더스트맨이 모이는 바의 위치를 알려 주면 나도 기꺼이 당신 질문에 대답하겠소."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2622 /* ~"당신이 찾고 있는 바는 시체안치소 부근에 있소. 시체안치소 정문을 기점으로 하여 남서쪽으로 걸어가시오. 발견하지 못할 리는 없을 거요."~ */ GOTO 6
  IF ~~ THEN REPLY #2649 /* ~거짓말: "그래, 시체안치소를 기점으로 하여 서쪽으로 세 블록을 가시오... 거기서 오른쪽 첫 번째 골목길에 바가 있을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_5","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #2650 /* ~"실은 그 곳이 어디 있었는지 기억할 수가 없소. 생각이 나면 다시 돌아오겠소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.0 9.0 10.1 11.1 12.3 13.1 14.1 15.2 16.1
  SAY #2141 /* ~"어떤 질문을 하고자 하오?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2651 /* ~"나는 파로드란 사람을 찾고 있소. 그에 대해 아시오?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2652 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 어디 가면 그것을 찾을 수 있는지 아시오?"~ */ GOTO 10
  IF ~~ THEN REPLY #2653 /* ~"이 구역에 대해 좀 얘기해줄 수 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #2654 /* ~"더스트맨에 대해 좀 얘기해줄 수 있겠소?"~ */ GOTO 15
  IF ~~ THEN REPLY #2655 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #2142 /* ~"미안하오, 하지만 나는 그런 이름을 모르오."~ */
  IF ~~ THEN REPLY #2656 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #2657 /* ~"괜찮소. 안녕히 계시오, 회색 외투."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #2143 /* ~"나는 그것이 어디 있는지 모르오. 당신이 그것을 잃어버린 건 참 안된 일이오."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2658 /* ~"정말로? 난 더스트맨이 재산에 별 관심이 없다고 생각했었는데."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #2659 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #2660 /* ~"신경을 써주어 고맙소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #2144 /* ~그는 어깨를 약간 으쓱한다. "당신이 그것을 잃어버린 일에 대해서는 나도 동정을 금할 수가 없소. 사람의 삶에 있어서 귀중한 것들은 많소."~ */
  IF ~~ THEN REPLY #2662 /* ~"당신은 더스트맨치고는 *특이한* 생각을 가지고 있는 듯하오."~ */ GOTO 14
  IF ~~ THEN REPLY #2663 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #2664 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY #2145 /* ~"이 지역에는... 우선 북서쪽에 시장이 있소. 그리고 남서쪽에는 정부 관련 건물이..." 그는 잠시 생각한다. "아마 해수 관리국일 거요..."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2665 /* ~"난 당신이 이 구역에 대해 잘 모른다고 생각했었는데."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #2666 /* ~"당신은 *이* 지역에 대해 매우 잘 아는 것 같소."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #2667 /* ~"당신은 *이* 지역에 대해 매우 잘 아는 것 같소."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #2668 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #2669 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #2146 /* ~그는 어깨를 으쓱한다. "벌통은 넓은 지역이오. 어떤 지역은 알지만 다른 곳들은 모르오."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2670 /* ~"더스트맨이 더스트트맨이 모이는 바가 어디 있는지 모른다니 묘하군. 그 곳은 시체안치소 바로 근처에 있소."~ */ GOTO 14
  IF ~~ THEN REPLY #2671 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #2672 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0 15.0
  SAY #2147 /* ~남자는 눈을 깜박인다. "나는 보통 더스트맨이 아니오."~ */
  IF ~~ THEN REPLY #2673 /* ~"그건 알겠소. 당신은 누구요?"~ */ GOTO 16
  IF ~~ THEN REPLY #2680 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #2681 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY #2148 /* ~그는 잠시 말을 멈춘다... 그리고 고개를 끄덕인다. "기꺼이 그러리다. 우리... 더스트맨은... 현세가 무엇인지 올바르게 인식하고 있소: 현세는 내세로 가기 전에 열정을 체험할 기회요. 우리는 내세에 대비하여 전세의 먼지들을 걸러 내오."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2682 /* ~"어... 그건 더스트맨치고는 *특이한* 생각이군."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2683 /* ~"그런 더스트맨 은어는 들어본 적도 없소. 당신은 누구요?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #2684 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #2685 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.1
  SAY #2149 /* ~그는 약간 불안한 표정으로 고개를 끄덕인다. "나는 제9원의 일원인 회색 외투요."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2686 /* ~"제9원? 그런 건 없소."~ */ GOTO 17
  IF ~~ THEN REPLY #2687 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #2688 /* ~"그럼 좋소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #2150 /* ~그는 갑자기 긴장한다. "나는 더스트맨 종파의 관습과 계급에 대해 당신과 논쟁할 시간은 없소. 그럼 이만 실례..."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2689 /* ~그의 손을 잡는다.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2690 /* ~그의 손을 잡는다.~ */ GOTO 26
  IF ~~ THEN REPLY #2691 /* ~"당신의 정체는 뭐요?"~ */ GOTO 27
  IF ~~ THEN REPLY #2692 /* ~"그럼 그 일에 대해선 잊으시오. 기분을 상하게 해 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.0 3.0 20.2 21.2 22.2 23.2 24.2 43.0 45.0
  SAY #2151 /* ~그는 당신을 순진한 체하며 바라본다, 그러나 당신은 그가 긴장하고 있다는 것을 눈치챈다. "뭐라고 했소?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2693 /* ~그의 손을 잡는다.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2694 /* ~그의 손을 잡는다.~ */ GOTO 26
  IF ~~ THEN REPLY #2695 /* ~"당신은 더스트맨이 아니오. 당신은 소매치기요."~ */ GOTO 27
  IF ~~ THEN REPLY #2696 /* ~"나도 미안하오. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2697 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 29.8 29.9 30.2 30.3 32.3 32.4 33.3 33.4 35.2 35.3 36.3 36.4 40.3 40.4 41.2 41.3
  SAY #2153 /* ~그는 고개를 끄덕인다. "좋소. 우리가 다시 만날 일은 없을 거요. 나는 다른 봉... 아니, 일거리를 찾도록 하겠소."~ */
  IF ~~ THEN REPLY #2698 /* ~"좋소. 이제 가시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.1
  SAY #2154 /* ~돌아서서 떠나려다 당신은 갑자기 뭔가 잘못되었다는 느낌을 받는다. 수상쩍게 생각한 당신은 회색 외투를 다시 본다, 그리고 바로 그 때 그가 자신의 소매에 뭔가를 넣는 것을 목격한다... 확신할 수는 없으나 그가 당신으로부터 뭔가를 훔친 것 같다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2699 /* ~그의 손을 잡는다.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2700 /* ~그의 손을 잡는다.~ */ GOTO 25
  IF ~~ THEN REPLY #2723 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2724 /* ~회색 외투가 다시 당신을 소매치기하도록 유도한 후 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2726 /* ~회색 외투가 다시 당신을 소매치기하도록 유도한 후 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2727 /* ~회색 외투가 다시 당신을 소매치기하도록 유도한 후 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2728 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2729 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY #2155 /* ~당신은 회색 외투가 깊숙이 고개를 숙일 때 그의 손이 당신 지갑을 향해 재빨리 움직이는 것을 발견한다. 만약 그를 의심하고 있지 않았다면 눈치채지 못했을 것이다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2730 /* ~그의 손을 잡는다.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2731 /* ~그의 손을 잡는다.~ */ GOTO 25
  IF ~~ THEN REPLY #2732 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2733 /* ~회색 외투가 당신을 소매치기하도록 방치하고서 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2735 /* ~회색 외투가 당신을 소매치기하도록 방치하고서 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2736 /* ~회색 외투가 당신을 소매치기하도록 방치하고서 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2737 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2738 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.0
  SAY #2156 /* ~당신은 회색 외투가 깊숙이 고개를 숙일 때 그의 손이 당신 지갑을 향해 재빨리 움직이는 것을 발견한다. 만약 사전에 더스트맨 소매치기에 대한 얘기를 듣지 못했다면 눈치채지 못했을 것이다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2739 /* ~그의 손을 잡는다.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2740 /* ~그의 손을 잡는다.~ */ GOTO 25
  IF ~~ THEN REPLY #2741 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2742 /* ~회색 외투가 당신을 소매치기하도록 방치하고서 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2744 /* ~회색 외투가 당신을 소매치기하도록 방치하고서 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2746 /* ~회색 외투가 당신을 소매치기하도록 방치하고서 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2747 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2748 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY #2157 /* ~당신으로 하여금 경계를 늦추지 않도록 한 것은 당신 자신의 소매치기 기술인지도 모른다. 하지만 당신은 돌아서서 떠나려다 본능적으로 지갑을 확인해 본다... 그리고 회색 외투가 그것으로부터 손을 빼내는 것을 눈치챈다. 그러나 그는 당신이 그가 하는 일을 보았다는 걸 눈치채지 못한 듯하다. ~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2749 /* ~그의 손을 잡는다.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2750 /* ~그의 손을 잡는다.~ */ GOTO 25
  IF ~~ THEN REPLY #2751 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2752 /* ~회색 외투가 다시 당신을 소매치기하도록 유도한 후 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2754 /* ~회색 외투가 다시 당신을 소매치기하도록 유도한 후 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2755 /* ~회색 외투가 다시 당신을 소매치기하도록 유도한 후 그가 쓰는 기술을 관찰한다.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2756 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2760 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3 20.4 20.5 21.3 21.4 21.5 22.3 22.4 22.5 23.3 23.4 23.5
  SAY #2158 /* ~당신은 그에게 추가로 벌통에 있는 장소들에 대한 길 안내를 해준다는 구실로 그와 대화를 나누며 그의 움직임을 연구한다. 회색 외투는 주로 자신의 더스트맨 변장을 이용하여 표적을 방심하게 하고, 자주 고개를 숙임으로서 소매치기 시도를 위장한다. 그가 또다시 손을 당신 지갑에 뻗치는 동안에도 당신은 그의 수법을 마음 속으로 기억해 둔다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2761 /* ~그의 손을 잡는다.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2762 /* ~그의 손을 잡는다.~ */ GOTO 25
  IF ~~ THEN REPLY #2777 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ GOTO 18
  IF ~~ THEN REPLY #2778 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2779 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.0 18.0 20.1 21.1 22.1 23.1 24.1
  SAY #2159 /* ~당신은 손을 재빨리 내밀어 그의 손을 부서질 듯 억세게 쥔다. 그는 본색을 드러내고, 당신의 손아귀에서 벗어나려고 안간힘을 쓰며 으르렁거린다. "날 놓으라고, 이 개자식아! 아니면 경비병들을 부르겠어!"~ */
  IF ~~ THEN REPLY #2780 /* ~"당신이 내 질문들에 대답을 한 *후에*, '더스트맨.'"~ */ GOTO 28
  IF ~~ THEN REPLY #12067 /* ~"당신이 가진 것을 모두 내놓으시오, 도둑, 그럼 보내주겠소."~ */ GOTO 28
  IF ~~ THEN REPLY #12068 /* ~"경비병들? 어디 불러보시오. 이 근처에 경비병들이 참 *많기도* 하겠소."~ */ GOTO 28
  IF ~~ THEN REPLY #12069 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12070 /* ~그를 그냥 보내준다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.1 18.1 20.0 21.0 22.0 23.0 24.0
  SAY #2160 /* ~당신은 손을 내민다, 하지만 회색 외투가 재빨리 물러서는 바람에 당신을 그를 놓친다. 그는 본색을 드러낸다, 그리고 두려움에 질린 표정으로 도망친다!~ */
  IF ~~ THEN REPLY #12071 /* ~"빌어먹을..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.2 18.2
  SAY #2161 /* ~회색 외투는 갑자기 도망치기 시작한다. ~ */
  IF ~~ THEN REPLY #12072 /* ~"빌어먹을..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.0 25.1 25.2
  SAY #2162 /* ~"흥." 그는 신경질이 나는 듯하다. "어떻게 내 수법을 간파했소?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12073 /* ~"나는 당신 같은 자가 더스트맨으로 변장하고 소매치기를 하니 주의하라는 얘기를 들었소."~ */ GOTO 29
  IF ~  GlobalGT("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #12074 /* ~"일반적인 더스트맨 철학에 대한 당신의 무지요. 당신보다 똑똑한 사람을 속이려면 사전에 연구를 하고 시도하시오 어쨌든 당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 29
  IF ~~ THEN REPLY #12075 /* ~"당신은 소매치기 솜씨를 더 연마해야겠소.그런데 물어볼 것들이 좀 있소..."~ */ GOTO 29
  IF ~~ THEN REPLY #12076 /* ~"그건 스스로 생각해 보시오. 그런데 물어볼 것들이 좀 있소..."~ */ GOTO 29
  IF ~~ THEN REPLY #12077 /* ~"당신을 걸 알아낼 만큼 오래살지 못할 거요. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1 28.2 28.3 30.0 32.1 33.0 35.0 36.1 41.0
  SAY #2163 /* ~"그래, 뭘 물어보고 싶소?"~ */
  IF ~~ THEN REPLY #12078 /* ~"그 더스트맨 복장을 입고 대체 무슨 짓을 하고 있는 거요?"~ */ GOTO 30
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12079 /* ~"나는 '파로드'란 사람을 찾고 있소. 당신은 그를 아오?"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12080 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 35
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12081 /* ~진실: "당신이 가진 걸 모두 내놓으시오, 아니면 당신을 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12082 /* ~허풍: "당신이 가진 걸 모두 내놓으시오, 아니면 당신을 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12083 /* ~진실: "자... 당신이 가진 걸 모두 내놓으시오, 아니면 당신을 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 33
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12084 /* ~허풍: "자... 당신이 가진 걸 모두 내놓으시오, 아니면 당신을 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #12085 /* ~"내 질문은 내가 당신을 죽이는 데 몇 초나 걸릴 거냐는 거요... 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12086 /* ~"꺼지시오. 만약 당신을 이 근처에서 다시 보게 된다면 당신을 죽여버리겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #12087 /* ~"당장 떠나시오. 시길 어디에서든 당신이 또 이런 유치한 사기극을 벌인다는 소문이 들리면 각오하시오.알겠소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #2164 /* ~그는 어깨를 으쓱한다. "아무도 더스트맨을 의심하지 않소." 그는 공허하게 웃는다. "사람들이 눈치채기 전에 돈을 꽤 털 수가 있지."~ */
  IF ~~ THEN REPLY #12088 /* ~"흥미롭군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 29
  IF ~~ THEN REPLY #12089 /* ~"내가 알고 싶었던 건 그게 전부요. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12090 /* ~"알겠소. 보시오, 회색 외투, 당신이 어떻게 해야 하는지 잘 들어두시오: 다시는 내 눈에 띄지 않도록 하시오, 아니면 당신을 죽일 테니. 당장 꺼지시오."~ */ GOTO 19
  IF ~~ THEN REPLY #12091 /* ~"그래, 똑똑하군. 시길 어디에서든 당신이 또 이런 유치한 사기극을 벌인다는 소문이 들리면 각오하시오.알겠소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 29.3 29.4
  SAY #2165 /* ~그는 눈을 좁게 뜬다. "내겐 아무 것도 없소. 당신이 오늘 내 첫 번째 표적이었소."~ */
  IF ~~ THEN REPLY #12092 /* ~허풍: "당신은 바보처럼 굴 뿐만이 아니라 진짜 바보군. 가진 것을 다 내놓지 않으면 수집자들이 거리에서 새 시체를 줍게 될 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
GiveGoldForce(50)
~ GOTO 32
  IF ~~ THEN REPLY #12093 /* ~진실: "당신은 바보처럼 굴 뿐만이 아니라 진짜 바보군. 가진 것을 다 내놓지 않으면 수집자들이 거리에서 새 시체를 줍게 될 거요."~ */ DO ~GiveGoldForce(50)
IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #12094 /* ~"틀린 답이오. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12095 /* ~"그래? 당신 몸을 샅샅이 뒤지고 나서 그게 사실인지 한 번 보도록 하지."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #2166 /* ~그는 툴툴거리며 당신 실력을 가늠해 본 후 생각을 바꾼다, 그리고 옷의 안감을 만진다. 그는 옷의 일부를 찢어서 그 안에 넣어 두었던 얼마되지 않는 돈을 꺼내서 당신에게 준다. 만약 그가 그것을 드러내 보이지 않았다면 당신은 그것을 발견하지 못했을 것 같다. ~ */
  IF ~~ THEN REPLY #12096 /* ~"그것뿐이오? 회색 외투, 만약 다른 걸 더 내놓지 않으면 당신과 죽음은 곧 친한 친구가 될 거요."~ */ GOTO 33
  IF ~~ THEN REPLY #12097 /* ~"그럼 좋소. 자, 당신에게 물어볼 것들이 있소..."~ */ GOTO 29
  IF ~~ THEN REPLY #12098 /* ~"내가 원했던 건 그게 전부요. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12099 /* ~"꺼지시오. 만약 당신을 이 근처에서 다시 보게 된다면 당신을 죽여버리겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #12100 /* ~"당장 떠나시오. 시길 어디에서든 당신이 또 이런 유치한 사기극을 벌인다는 소문이 들리면 각오하시오.알겠소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 33 // from: 29.5 29.6 32.0
  SAY #2167 /* ~그는 이빨을 드러낸다. "다른 건 없소."~ */
  IF ~~ THEN REPLY #12101 /* ~"그럼 좋소. 자, 당신에게 물어볼 것들이 있소..."~ */ GOTO 29
  IF ~~ THEN REPLY #12102 /* ~"그래? 당신 몸을 샅샅이 뒤지고 나서 그게 사실인지 한 번 보도록 하지."~ */ GOTO 34
  IF ~~ THEN REPLY #12103 /* ~"틀린 답이오. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12104 /* ~"꺼지시오. 만약 당신을 이 근처에서 다시 보게 된다면 당신을 죽여버리겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #12105 /* ~"당장 떠나시오. 시길 어디에서든 당신이 또 이런 유치한 사기극을 벌인다는 소문이 들리면 각오하시오.알겠소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 34 // from: 31.3 33.1
  SAY #2168 /* ~당신의 몸수색을 하려고 하자 그는 재빠르게 소매로부터 대거를 꺼내 빈 손에 쥔다. 그는 으르렁거리며 당신을 공격한다!~ */
  IF ~~ THEN REPLY #12106 /* ~"그럼 좋소..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.2
  SAY #2169 /* ~그는 눈살을 찌푸린다. "그래서? 내가 그런 걸 봤으리라고 생각하오? 난 돈에만 관심이 있소."~ */
  IF ~~ THEN REPLY #12107 /* ~"그럼 좋소, 당신에게 물어볼 것들이 조금 더 있소..."~ */ GOTO 29
  IF ~~ THEN REPLY #12108 /* ~"내가 알고 싶었던 건 그게 전부요. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12109 /* ~"꺼지시오. 만약 당신을 이 근처에서 다시 보게 된다면 당신을 죽여버리겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #12110 /* ~"당장 떠나시오. 시길 어디에서든 당신이 또 이런 유치한 사기극을 벌인다는 소문이 들리면 각오하시오.알겠소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 36 // from: 29.1
  SAY #2170 /* ~"그가 어쨌다는 거요?"~ */
  IF ~~ THEN REPLY #12111 /* ~"그가 누구요?"~ */ GOTO 37
  IF ~~ THEN REPLY #12112 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 29
  IF ~~ THEN REPLY #12113 /* ~"관두시오. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12114 /* ~"꺼지시오. 만약 당신을 이 근처에서 다시 보게 된다면 당신을 죽여버리겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #12115 /* ~"당장 떠나시오. 시길 어디에서든 당신이 또 이런 유치한 사기극을 벌인다는 소문이 들리면 각오하시오.알겠소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2171 /* ~"내가 얘기를 하면 날 보내 주겠소?"~ */
  IF ~~ THEN REPLY #12116 /* ~"아니오."~ */ GOTO 38
  IF ~~ THEN REPLY #12117 /* ~맹세: "만약 당신이 내 질문에 대답하면 그냥 보내주겠다고 약속하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12118 /* ~진실: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12119 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_3","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12120 /* ~진실: "내게 말하면 당신을 살려 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #12121 /* ~허풍: "내게 말하면 당신을 살려 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.4 37.5
  SAY #2172 /* ~그는 땅에 참을 뱉는다. "그럼 그 일에 대해 할 얘기가 없소."~ */
  IF ~~ THEN REPLY #12122 /* ~맹세: "좋소. 만약 당신이 내 질문에 대답하면 그냥 보내주겠다고 약속하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12123 /* ~진실: "좋소, 당신을 그냥 보내주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12124 /* ~거짓말: "좋소, 당신을 그냥 보내주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_4","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12125 /* ~진실: "내게 말하면 당신을 살려 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12126 /* ~허풍: "내게 말하면 당신을 살려 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12127 /* ~"틀린 답이오. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 37.2 37.3 38.0 38.1 38.2 38.3 38.4
  SAY #2173 /* ~"퍼로드는 수집자들의 왕초들 중 하나요. 많은 부하들을 거느리고 있고 조직적으로 행동한다고 하오. 그것말고는 아는 바가 없소. 나라면 그를 상대할 때 매우 조심하겠소."~ */
  IF ~~ THEN REPLY #12128 /* ~"그는 어디 있소?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2174 /* ~"그의 소굴은 넝마주이 광장에 있소... 넝마주이 광장은 여기서 북서쪽에 있는 거대한 넝마와 쓰레기 더미요. 북쪽 문으로 나가서 계속 북쪽으로 가면 그 곳에 도착할 거요. 들리는 얘기로는 파로드의 소굴은 쓰레기 더미 속이나, 아니면 그 밑에 있다고 하오. 하지만 정확히는 아무도 모르오. 자, 이제 날 보내 줄 거요?"~ */
  IF ~  Global("Lawful_Ash_1","GLOBAL",0)
~ THEN REPLY #12129 /* ~"아니. 당신에게 물어볼 것들이 더 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_2","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("Lawful_Ash_1","GLOBAL",1)
~ THEN REPLY #12130 /* ~"아니. 당신에게 물어볼 것들이 더 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_6","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ash_9","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #12131 /* ~"내가 알고 싶었던 건 그게 전부요. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12132 /* ~"꺼지시오. 만약 당신을 이 근처에서 다시 보게 된다면 당신을 죽여버리겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #12133 /* ~"당장 떠나시오. 시길 어디에서든 당신이 또 이런 유치한 사기극을 벌인다는 소문이 들리면 각오하시오.알겠소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #2175 /* ~그는 화가 난 것 같다. "당신은 날 보내 주겠다고 했잖소!"~ */
  IF ~~ THEN REPLY #12134 /* ~"그런데 당신은 자신이 더스트맨이라고 했소. 자, 이제 내 질문은..."~ */ GOTO 29
  IF ~~ THEN REPLY #12135 /* ~"그래, 난 많은 얘기를 했소, 그리고 당신과 얘기하는 데도 이젠 지쳤소. 죽을 준비를 하시오."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12136 /* ~"꺼지시오. 만약 당신을 이 근처에서 다시 보게 된다면 당신을 죽여버리겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #12137 /* ~"당장 떠나시오. 시길 어디에서든 당신이 또 이런 유치한 사기극을 벌인다는 소문이 들리면 각오하시오.알겠소?"~ */ GOTO 19
END

IF WEIGHT #1 /* Triggers after states #: 44 even though they appear after this state */
~  GlobalGT("Ashmantle","GLOBAL",0)
~ THEN BEGIN 42 // from:
  SAY #2176 /* ~회색 외투가 다시 당신 시야에 들어온다... 그는 여전히 길을 잃은 듯하며, 건물들을 바라보면서 뭐라고 중얼거리고 있다. ~ */
  IF ~  Global("Directed_Ashmantle","GLOBAL",0)
~ THEN REPLY #12138 /* ~"안녕하시오."~ */ GOTO 45
  IF ~  Global("Directed_Ashmantle","GLOBAL",1)
~ THEN REPLY #12139 /* ~"안녕하시오."~ */ GOTO 43
  IF ~~ THEN REPLY #12140 /* ~그를 그냥 지나친다.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #2177 /* ~"미안하지만 난 당신이 가르쳐 준 길을 잊어버렸소. 혹시 내게 다시 가르쳐 주실 수 있겠소?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12141 /* ~"이 근방에서 더스트맨으로 변장한 소매치기에 대한 소문이 돌고 있소. 혹시 그에 대해 아시오?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12142 /* ~"더스트맨 바 말이오? 그 곳은 시체안치소 부근에 있소. 시체안치소 정문을 기점으로 하여 남서쪽으로 걸어가시오. 발견하지 못할 리는 없을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12143 /* ~"그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12144 /* ~"그 곳에 대해 들은 적이 있소. 내 질문에 대답해주겠다면 당신을 도울 용의가 있소."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12145 /* ~거짓말: "어... 그래, 그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12146 /* ~거짓말: "어... 그래, 그 곳에 대해 들은 적이 있소. 내 질문에 대답해주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12147 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12148 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ GOTO 5
END

IF WEIGHT #0 ~  Global("Remove_Ash","GLOBAL",1)
~ THEN BEGIN 44 // from:
  SAY #2178 /* ~"난 떠날 거요! 날 보내 주시오!"~ */
  IF ~~ THEN REPLY #12149 /* ~"서두르는 게 좋을 거요."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0
  SAY #2179 /* ~"전에 당신은 내게 도움을 주지 못했소. 혹시 이제는 우리 종파 사람들이 자주 드나드는 바가 어디 있는지 아시오?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12150 /* ~"이 근방에서 더스트맨으로 변장한 소매치기에 대한 소문이 돌고 있소. 혹시 그에 대해 아시오?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #12151 /* ~"'종파'? '당파' 말이오?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #12152 /* ~"'종파'? 당신은 더스트맨이오. '당파'라고 말하려던 게 아니오?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12153 /* ~"더스트맨 바 말이오? 그 곳은 시체안치소 부근에 있소. 시체안치소 정문을 기점으로 하여 남서쪽으로 걸어가시오. 발견하지 못할 리는 없을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12154 /* ~"그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12155 /* ~"그 곳에 대해 들은 적이 있소. 내 질문에 대답해주겠다면 당신을 도울 용의가 있소."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12156 /* ~거짓말: "어... 그래, 그 곳에 대해 들은 적이 있소. 대가를 주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12157 /* ~거짓말: "어... 그래, 그 곳에 대해 들은 적이 있소. 내 질문에 대답해주겠다면 당신을 도울 용의가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12158 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12159 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ GOTO 5
END
