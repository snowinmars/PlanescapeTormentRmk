// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARGRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARGRI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 9 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2927 /* ~이 스켈레톤은 고대의 사제의 것으로 보이는 중후하고 화려한 법복을 입고 있다. 그는 크고 인상적인 지팡이를 지니고 있는데, 그것은 정교하게 조각된 뿔들, 매달린 펜던트들, 그리고 금박을 입힌 해골로 장식되어 있다.~ */
  IF ~~ THEN REPLY #2928 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Hargrimm","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21040 /* ~'스켈레톤 사제'를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21041 /* ~잿불처럼 빛나는 눈을 지닌 이 스켈레톤은 당신을 훑어본다... 하지만 아무런 대답도 하지 않는다.~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21042 /* ~"당신이 침묵의 왕이오?"~ */ GOTO 4
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
~ THEN REPLY #21043 /* ~"당신이 하그림이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #21044 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21045 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #21046 /* ~그는 엄숙하게 고개를 끄덕인다. 그러자 그의 지팡이에 달린 펜던트들이 조용히 딸랑거린다. 그의 조용하고 날카로운 시선은 어쩐지 불안한 느낌이 든다. ~ */
  IF ~~ THEN REPLY #21047 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21048 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 4.2 5.5 6.4 9.0 10.5 11.1 12.3 13.2 14.1 15.1 16.3 17.3 18.2 19.4 20.2 21.3 22.3 23.6 24.2 25.2 26.4 27.1 28.1 30.3 31.3 32.2 33.1 35.2 36.2 37.1 39.0 40.4 41.3 43.5 44.3 45.1 46.0 47.2 50.2 51.5 52.4 53.5 54.4 55.5 56.4 57.3 58.2 59.8 60.7 63.7 71.0 72.2 73.1 105.3 106.0 107.1
  SAY #21049 /* ~그는 당신에게 계속하라고 손짓을 한다. ~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21050 /* ~"당신은 소에고가 크래니움랫의 스파이라는 것을 알고 있소?"~ */ GOTO 40
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #21051 /* ~"낡은 통로의 파편 더미에서 한 무리의 크래니움 랫을 찾아내 죽였소."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ JOURNAL #21107 /* ~나는 하그림에게 내가 어떻게 이 곳 죽은 자의 왕국에서 크래니움 랫 여러 마리를 찾아내 처치했는지 말했다. 그는 내게 감사하다고 했으나 그것이 전부였다.~ */ GOTO 47
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #21052 /* ~"내가 침묵의 왕과 얘기를 할 수 있겠소?"~ */ GOTO 5
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21053 /* ~"왜 나는 이 곳에 갇히게 된 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #21054 /* ~"여기는 어디요?"~ */ GOTO 15
  IF ~~ THEN REPLY #21102 /* ~"여기서 뭘 하는 거요?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #21103 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21104 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21105 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 33
  IF ~  NumInParty(1)
~ THEN REPLY #68093 /* ~"이 곳에서 휴식을 취해도 괜찮겠소?"~ */ GOTO 107
  IF ~  NumInParty(1)
~ THEN REPLY #68094 /* ~"내겐 치료가 필요하오. 날 도와줄 수 있겠소?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68095 /* ~"여기서 휴식을 취해도 괜찮겠소?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68096 /* ~"우리에겐 치료가 필요하오. 우릴 도와줄 수 있겠소?"~ */ GOTO 107
  IF ~~ THEN REPLY #21106 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #21108 /* ~그는 고개를 젓는다, 그리고 기품이 있으나 왠지 오싹한 동작으로 몸을 돌려 동쪽을 가리킨다. 그리고 나서 다시 당신 쪽으로 돌아선다.~ */
  IF ~~ THEN REPLY #21109 /* ~"당신이 하그림이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #21110 /* ~"그와 얘기를 할 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #21111 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21112 /* ~"그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 14.0 25.0
  SAY #21113 /* ~그는 자신의 뼈만 남은 손바닥을 치켜든다. 그는 말하기 위해 삐걱거리는 소리를 내고 먼지를 내뿜으며 입을 연다. "안 된다." 그의 굵고 울려 퍼지는 목소리는 천장이 둥근 방 안에서 오랫동안 메아리친다.~ */
  IF ~~ THEN REPLY #21114 /* ~"하지만 왜 안 되는 거요?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21115 /* ~"하지만 난 떠나도 좋다는 그의 허락이 필요하오."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21116 /* ~"하지만 난 떠나도 좋다는 그의 허락이 필요하오."~ */ GOTO 10
  IF ~~ THEN REPLY #21117 /* ~진실:"내가 그를 만날 수 있게 해주시오, 아니면 당신들을 가루로 만들어 버리겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21118 /* ~허풍: "내가 그를 만날 수 있게 해주시오, 아니면 당신들을 가루로 만들어 버리겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21119 /* ~"그럼 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21120 /* ~"그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21121 /* ~그의 목소리가 방 안에서 쩌렁쩌렁 울려 퍼진다. "살아 있는 자는 누구라도 그분의 알현실로 통하는 문을 지나갈 수 없다. 그리고 설령 그런 일이 가능하더라도 그대에게 알현을 허락할 수는 없다. 그대는 그분을 뵐 수 없다."~ */
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21122 /* ~"하지만 난 떠나도 좋다는 그의 허락이 필요하오."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21123 /* ~"하지만 난 떠나도 좋다는 그의 허락이 필요하오."~ */ GOTO 10
  IF ~~ THEN REPLY #21124 /* ~진실:"내가 그를 만날 수 있게 해주시오, 아니면 당신들을 가루로 만들어 버리겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21125 /* ~허풍: "내가 그를 만날 수 있게 해주시오, 아니면 당신들을 가루로 만들어 버리겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21126 /* ~"그럼 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21127 /* ~"그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0 47.0
  SAY #21128 /* ~"나는 그대의 요청을 침묵의 왕께 전하겠다."~ */
  IF ~~ THEN REPLY #21129 /* ~"고맙소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21130 /* ~"침묵의 왕께서 말씀하셨다. 그대는 떠나도 좋다. 그대의 길을 더 이상 막지 않을 것이다."~ */
  IF ~~ THEN REPLY #21131 /* ~"고맙소. 안녕히 계시오."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #21132 /* ~하그림은 나를 위해 침묵의 왕에게 내 사정을 설명했으며, 덕분에  나는 죽은 자의 왕국에서 풀려나게 되었다. ~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #21133 /* ~하그림은 당신 방향으로 고개를 조용히 끄덕임으로서 인사를 한다. ~ */
  IF ~~ THEN REPLY #21134 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21135 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 6.1 47.1
  SAY #21136 /* ~그는 손바닥을 치켜든다. "안 된다. 침묵의 왕의 힘에 의해 그대는 이 곳에서 떠날 수가 없다."~ */
  IF ~  Global("DN_Reason","AR1500",1)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21137 /* ~"내가 어떤 일을 해야 당신을 납득시킬 수 있겠소?"~ */ GOTO 43
  IF ~  Global("DN_Reason","AR1500",0)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21138 /* ~"내가 어떤 일을 해야 당신을 납득시킬 수 있겠소?"~ */ GOTO 59
  IF ~  Global("DN_Rats","AR1500",3)
~ THEN REPLY #67809 /* ~"하지만... 내가 당신을 설득시키기 위해 또 어떤 일을 할 수 있겠소?"~ */ DO ~SetGlobal("Soego_Quest","GLOBAL",1)
~ JOURNAL #67810 /* ~나는 하그림에게 나를 풀어주도록 그를 납득시킬 다른 방법은 없겠느냐고 물었다. 그는 내게 죽은 자의 왕국으로부터 소에고를 제거할 방법을 강구해 달라고 부탁했으며, 내가 성공하면 나를 위해 침묵의 왕에게 진언하겠다고 말했다. ~ */ GOTO 105
  IF ~~ THEN REPLY #21139 /* ~진실:"내가 그를 만날 수 있게 해주시오, 아니면 당신들을 가루로 만들어 버리겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21140 /* ~허풍: "내가 그를 만날 수 있게 해주시오, 아니면 당신들을 가루로 만들어 버리겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21141 /* ~"그럼 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21142 /* ~"그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 5.4 6.2 6.3 10.3 10.4
  SAY #21143 /* ~그의 목소리가 방 안에서 쩌렁쩌렁 울려 퍼진다. "그런 짓을 하는 것은 용납되지 않는다." 천장에서 먼지가 떨어지고, 당신 귀는 소리 때문에 윙윙거린다. 당신이 회복할 동안에도 그의 주변에 강대한 기가 결집되기 시작한다. 하지만 그는 공격하려는 움직임을 보이지는 않는다. ~ */
  IF ~~ THEN REPLY #21144 /* ~그를 공격한다. ~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21145 /* ~"그럼 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21146 /* ~"그럼 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 107.0
  SAY #21147 /* ~"그것은 침묵의 왕께서 원하시는 바이다. 이 곳에서 잡힌 산 자들은 고요한 자들의 일원이 될 때까지 그분의 왕국에서 탄식하며 지내야만 한다."~ */
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21150 /* ~"그가 마음을 바꾸도록 설득할 수는 있겠소?~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~하그림은 날 풀어주도록 침묵의 왕을 설득할 수 있을지도 모른다고 했다. 만약 어떤 방법을 써서라도 내가 그를 만날 수만 있다면...~ */ GOTO 14
  IF ~~ THEN REPLY #21148 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #21149 /* ~"고요한 자들?"~ */ GOTO 13
  IF ~~ THEN REPLY #21151 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21152 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #21154 /* ~"진정한 사자들이다. 말을 할 수도 없으며 영원한 휴식을 취하는 것 이외에 아무 것도 할 수 없는 자들이다. 침묵의 왕께서 그들을 굽어살피시기를!"~ */
  IF ~~ THEN REPLY #21155 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21156 /* ~"날 해방하도록 침묵의 왕을 설득할 수는 있겠소?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~하그림은 날 풀어주도록 침묵의 왕을 설득할 수 있을지도 모른다고 했다. 만약 어떤 방법을 써서라도 내가 그를 만날 수만 있다면...~ */ GOTO 14
  IF ~~ THEN REPLY #21157 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21158 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.1
  SAY #21159 /* ~잠시 침묵한 후 그는 삐걱거리며 입을 연다: "그럴 가능성은 희박하나 전무하다고는 할 수 없다. 침묵의 왕의 마음은 범인으로선 이해할 수가 없다."~ */
  IF ~~ THEN REPLY #21160 /* ~"그와 얘기를 할 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #21161 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21162 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4
  SAY #21163 /* ~그는 자신의 주변을 몸짓으로 가리킨다. "그대는 죽은 자의 왕국의 국경 안에 있는 침묵의 왕의 홀에 있다."~ */
  IF ~~ THEN REPLY #21164 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #21165 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21166 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.5 23.0
  SAY #21167 /* ~그는 자신의 지팡이와 법복을 가리킨다. "나는 하그림이라 불린다. 나는 이 곳의 시민들의 대제사장이다. 나는 침묵의 왕의 말씀을 그분의 추종자들에게 전한다."~ */
  IF ~~ THEN REPLY #21168 /* ~"당신은 어떻게 해서 이 곳에 오게 되었소?"~ */ GOTO 57
  IF ~~ THEN REPLY #21169 /* ~"그의 추종자들? 이 곳에는 또 누가 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21170 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #21171 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21173 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.6 16.1 18.1 19.3 20.1 21.2 22.2 50.1 51.4 52.3 53.4 54.3 55.4 56.3 57.1 58.0 72.1
  SAY #21172 /* ~"우리는 스켈레톤이다. 이 곳에는 우리 말고도 좀비와 굴이 있다. 한때는 그림자들도 있었으나 그들은 오래 전에 여기를 떠났다. 때때로 산 자도 그의 삶의 마지막 나날을 여기서 보내곤 한다. 그리고 동쪽 멀리에는 많은 크래니움 랫들이 살고 있다. "~ */
  IF ~~ THEN REPLY #21174 /* ~"당신 동족에 대해서 얘기해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #21175 /* ~"다른 언데드에 대해 얘기해주시오."~ */ GOTO 19
  IF ~~ THEN REPLY #21176 /* ~"쥐들에 대해 얘기해주시오."~ */ GOTO 22
  IF ~~ THEN REPLY #21177 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21178 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #21179 /* ~"우리는 진정한 사자인 고요한 자들을 돌보고 침묵의 왕의 말씀을 따른다. 우리는 여기서 이미 여러 세기 동안 우리의 사명을 수행하고 있다."~ */
  IF ~~ THEN REPLY #21180 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #21181 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21182 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21183 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #21184 /* ~그는 썩은 먼지의 구름을 내뿜으며 대답한다: "누구에 대해 알고 싶은가?"~ */
  IF ~~ THEN REPLY #21185 /* ~"좀비."~ */ GOTO 20
  IF ~~ THEN REPLY #21186 /* ~"굴."~ */ GOTO 21
  IF ~~ THEN REPLY #21187 /* ~"그림자들은 어떻게 되었소?"~ */ GOTO 50
  IF ~~ THEN REPLY #21188 /* ~"관두시오. 이 곳에는 그 밖에 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21189 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 3
  IF ~~ THEN REPLY #21190 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.2
  SAY #21191 /* ~"그들은 노동자로서 침묵의 왕과 죽은 자의 왕국에 봉사한다. 그들은 그들 중 가장 현명하고 총명한 자인 썩은 메리의 지도 아래 일을 하고 있다."~ */
  IF ~~ THEN REPLY #21192 /* ~"썩은 메리에 대해 얘기해주시오."~ */ GOTO 26
  IF ~~ THEN REPLY #21193 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21194 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21195 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 22.1 32.0
  SAY #21196 /* ~"나는 그들이나 그들의 여족장인 아카스트를 신뢰하지 않는다. 그들은 배고픈 눈으로 우리를 바라보고 있으며, 만약 우리의 수와 침묵의 왕의 말씀만 아니었더라면 그들은 벌써 우리들을 모두 잡아먹었을 것이다." 그는 생각하는 듯 잠시 말을 멈춘다. ~ */
  IF ~~ THEN REPLY #21197 /* ~"계속하시오..."~ */ JOURNAL #21202 /* ~나에게 하그림은 아카스트 때문에 우려가 된다고 말했다. 그는 아카스트와 그녀의 굴들이 지하 묘지에 있는 모든 것들을 죽여서 잡아먹지 못하고 있는 유일한 이유는 스켈레톤과 좀비를 합한 숫자가 그들보다 많고, 또한 침묵의 왕을 두려워하기 때문이라고 생각하고 있다. ~ */ GOTO 72
  IF ~~ THEN REPLY #21198 /* ~"아카스트에 대해 얘기해주시오."~ */ GOTO 32
  IF ~~ THEN REPLY #21199 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21200 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21201 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2 45.0
  SAY #21203 /* ~"그들은 군집성 정신을 지닌 쥐로, 한때 엄청난 수로 이 곳을 습격해 우리가 보호하고 있는 시체들을 뜯어먹었다. 하지만 굴들의 활약으로 그들은 퇴치되었고, 이제는 이 곳 동쪽에 있는 그들의 굴 밖으로 나오지 않는다. ~ */
  IF ~~ THEN REPLY #21204 /* ~"그들에게 무슨 약점이라도 있소?"~ */ JOURNAL #21209 /* ~하그림은 내게 크래니움 랫과 효율적으로 싸우려면 작은 집단들을 가능한 한 많이 노려서 없애야 한다고 말해주었다. 그렇게 하면 보다 큰 무리에 속하는 쥐들의 수가 줄어 그들이 전투시 사용할 수 있는 능력도 줄어든다. ~ */ GOTO 46
  IF ~~ THEN REPLY #21205 /* ~"내게 굴들에 대해 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #21206 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21207 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21208 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.7 24.1 25.1 26.3 27.0 28.0 30.2 31.2 32.1
  SAY #21210 /* ~그는 썩은 먼지의 구름을 내뿜으며 대답한다: "누구에 대해 알고 싶은가?"~ */
  IF ~~ THEN REPLY #21211 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 16
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21212 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21213 /* ~"썩은 메리에 대해 얘기해주시오."~ */ GOTO 26
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21214 /* ~"소에고에 대해 얘기해주시오."~ */ GOTO 29
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",1)
~ THEN REPLY #21215 /* ~"소에고에 대해 얘기해주시오."~ */ GOTO 28
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #21216 /* ~"아카스트에 대해 얘기해주시오."~ */ GOTO 32
  IF ~~ THEN REPLY #21217 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 3
  IF ~~ THEN REPLY #21218 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1 13.0 15.0 16.2 18.0 23.1 31.1 57.2 58.1
  SAY #21219 /* ~"우리의 주군이시자 영도자이시다. 그분은 법을 만들고 우리를 보호하신다. 그대는 이 곳에서 말썽을 일으키지 않는 것이 좋을 것이다, 이방인. 침묵의 왕께서는 이 곳에서 일어나는 모든 일을 다 보고 계시며, 그분의 정의는 신속하게 실행된다."~ */
  IF ~~ THEN REPLY #21220 /* ~"왜 그는 침묵의 왕이라 불리는 거요?"~ */ GOTO 25
  IF ~~ THEN REPLY #21221 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~~ THEN REPLY #21222 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21223 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #21224 /* ~"그분께서는 우리를 인도하시는 데 꼭 필요한 말씀만 하신다. 침묵의 왕을 찬양하라."~ */
  IF ~~ THEN REPLY #21225 /* ~"그와 얘기를 할 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #21226 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~~ THEN REPLY #21227 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21228 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 23.2 52.0
  SAY #21229 /* ~"그녀는 '썩은 무리'라고 불리는, 죽은 자의 왕국에 사는 좀비들 중 가장 총명하다. 대부분의 언데드와는 달리 그녀는 죽었을 때 자신의 마음을 잃지 않았다. 그 이상은 더 말해줄 것이 없다."~ */
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23857 /* ~"당신은 그녀가 하는 말을 이해하는 것이 힘들지 않소?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~하그림에게 썩은 메리가 하는 말을 이해할 수 없다고 얘기하자 그는 내가 그녀와 말을 하는 법을 *배워야* 한다고 말해주었다. 아마 그녀는 그 말이 무슨 뜻인지 알겠지.~ */ GOTO 27
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #21230 /* ~"당신은 어떻게 그녀가 하는 말을 이해하오?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~하그림에게 썩은 메리가 하는 말을 이해할 수 없다고 얘기하자 그는 내가 그녀와 말을 하는 법을 *배워야* 한다고 말해주었다. 아마 그녀는 그 말이 무슨 뜻인지 알겠지.~ */ GOTO 27
  IF ~~ THEN REPLY #21231 /* ~"썩은 무리에 대해... 얘기해주시오."~ */ GOTO 20
  IF ~~ THEN REPLY #21232 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~~ THEN REPLY #21233 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21234 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #21236 /* ~한참이 지난 후에야 그는 대답을 한다. "그대는 *듣는* 법을 배워야 한다. 그뿐이다."~ */
  IF ~~ THEN REPLY #21237 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~~ THEN REPLY #21238 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21239 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4
  SAY #21240 /* ~그의 목소리는 한층 더 심각해진다: "나는 그에 대해 더 이상 얘기하지 않겠다. 침묵의 왕께서 그의 비참한 영혼에 저주를 내리시기를!"~ */
  IF ~~ THEN REPLY #21241 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~~ THEN REPLY #21242 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21243 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3 105.2
  SAY #21244 /* ~"그는 우리에게 그가 '거짓된 삶'이라고 부르는 이 삶을 포기하고 진정한 죽음을 맞이하라고 설득하고 있다. 그는 우리의 열정이 우리를 현생에 묶어 두고 있으며, 우리가 열정과 우리 임무를 버려야 한다고 주장하고 있다. 그는 우리가 죽기를 바라고 있다..."~ */
  IF ~~ THEN REPLY #21245 /* ~"계속하시오..."~ */ JOURNAL #21249 /* ~하그림은 소에고를 불쾌하게 생각하고 있는데 이는 그가 죽은 자의 왕국의 시민에게 죽어야만 한다고 끊임없이 설득하고 있기 때문이다. 만약 그의 설득이 성공해 그들의 수가 대폭 줄어든다면, 크래니움 랫이나 아카스트의 굴들과 같은 위협으로부터 자신들을 지킬 수 없게 돼 그들의 집단 전체가 위험에 빠질 거라고 그는 생각하고 있다. ~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #21250 /* ~"그의 말에 귀를 기울이는 자도 다소는 있으나, 아직까지는 그의 믿음에 귀의한 자는 없다. 그의 믿음에 귀의하는 자는 영원히 침묵하게 되며, 그러면 우리들의 수는 줄어들어 종국에 우리는 우리를 에워싸고 있는 것들에 의해 파멸 당할 것이다. 소에고는 자신이 옳은 일을 하고 있다고 생각하고 있으나, 실제로 그는 큰 해를 끼치고 있다. ~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #67811 /* ~"당신은 그가 크래니움 랫의 스파이라는 사실을 알고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #21251 /* ~"당신은 왜 그가 머무르는 걸 허락하고 있소?"~ */ GOTO 31
  IF ~~ THEN REPLY #21252 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~~ THEN REPLY #21253 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21254 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #21255 /* ~"우리는 그를 강제로 추방할 수가 없다. 그는 우리가 그를 해칠 수 없다는 것을 안다. 죽음의 협정... 어떠한 언데드도 먼저 공격당하지 않는 한 더스트맨을 해칠 수는 없다. 또한 침묵의 왕께서는 그분의 홀 안에서 피를 흘리는 것을 원하지 않으신다."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #21256 /* ~"당신은 그가 크래니움 랫의 스파이라는 사실을 알고 있소?"~ */ GOTO 40
  IF ~~ THEN REPLY #21257 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #21258 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~~ THEN REPLY #21259 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21260 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1 23.5 72.0
  SAY #21261 /* ~"그녀는 이 곳에 온 굴들의 집단의 여족장이다. 그녀는 강하며 극히 교활하다."~ */
  IF ~~ THEN REPLY #21262 /* ~"내게 굴들에 대해 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #21263 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 23
  IF ~~ THEN REPLY #21264 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21265 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.8 59.0 60.0 63.0
  SAY #21266 /* ~그는 고개를 젓는다. "그런 것은 본 적이 없다. 왜 그대는 그것을 찾는가?"~ */
  IF ~~ THEN REPLY #21267 /* ~"파로드라는 사람을 위해."~ */ GOTO 34
  IF ~~ THEN REPLY #21268 /* ~"그럼 관두시오. 그 밖에도 물어보고 싶은 것들이 좀 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #21269 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #21270 /* ~스켈레톤은 뒤로 물러선다. 그는 지상을 응시하기라도 하는 듯 위쪽 먼 곳을 쳐다본다. "아직도 그의 벌레투성이인 시꺼먼 심장은 박동하고 있는가? 그 씨근거리는 추악한 살덩이는 우리의 살 터전을 약탈하러 부하들을 계속해서 보내는가." 그는 다시 당신을 쳐다본다 "그대가 이 곳에 온 건 실수였다... 여기서는 그러한 신성 모독자들을 용납하지 않는다. ~ */
  IF ~~ THEN REPLY #21271 /* ~"하지만 난 그의 일당이 아니오..."~ */ GOTO 38
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21272 /* ~"그럼 당신은 날 어떻게 할 생각이오?"~ */ GOTO 36
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21273 /* ~"그럼 당신은 날 어떻게 할 생각이오?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2
  SAY #21274 /* ~그는 조용히 당신을 노려본다. "아무 짓도 하지 않을 것이다. 죽음의 협정이 그대를 보호한다. 하지만 그대는 죽을 때까지 이 곳에 머물러야 한다."~ */
  IF ~~ THEN REPLY #21275 /* ~"하지만 난 죽을 수가 없소."~ */ GOTO 37
  IF ~~ THEN REPLY #21276 /* ~"하지만 실은 난 파로드의 일당이 아니오."~ */ GOTO 38
  IF ~~ THEN REPLY #21277 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21278 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #21279 /* ~"우리는 침묵의 왕의 법에 의해 그대를 처형할 것이다. 이 곳에서는 도굴꾼은 살려두지 않는다. ~ */
  IF ~~ THEN REPLY #21280 /* ~"하지만 난 죽을 수가 없소."~ */ GOTO 37
  IF ~~ THEN REPLY #21281 /* ~"하지만 실은 난 파로드의 일당이 아니오."~ */ GOTO 38
  IF ~~ THEN REPLY #21282 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21283 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #21284 /* ~그는 대답하기 전에 한참 동안 당신의 눈을 응시한다. "아무런 문제도 없다. 그대는 침묵의 왕의 감시 아래 영원히 이 곳에서 영원히 머무르게 될 것이다. 아마 언젠가는 그대도 자신의 잘못을 깨닫고 우리 문명에 기여하려는 노력을 하게 될지도 모른다."~ */
  IF ~~ THEN REPLY #21285 /* ~"하지만 실은 난 파로드의 일당이 아니오."~ */ GOTO 38
  IF ~~ THEN REPLY #21286 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21287 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.0 35.1 36.1 37.0
  SAY #21288 /* ~"그렇다면 그대는 왜 그 비참한 영혼의 심부름을 하려고 우리의 집을 침범했는가?"~ */
  IF ~~ THEN REPLY #21289 /* ~"나는 내가 필요한 정보를 얻는 조건으로 그를 위해 구체를 찾고 있을 뿐이오.우리들 사이에 충성심 따위는 존재하지 않소."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #21290 /* ~"그것은 어디까지나 이번 한 번으로 한정된 용병 임무요. 그는 내가 구체를 찾아오면 그에 대한 대가를 지불할 것이오."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",2)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #21291 /* ~그는 턱을 자신의 뼈만 남은 손가락으로 *탁 탁 탁* 치면서 당신을 유심히 살펴본다. "그대는 그러한 자를 따를 사람 같지는 않다. 아마 그대의 말은 진실일 것이다. 아마... 그대가 이 곳에 머무른 것도 용인될 수 있을 것이다."~ */
  IF ~~ THEN REPLY #21292 /* ~"좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21293 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.0 30.0 31.0 43.0 44.0 105.1
  SAY #21294 /* ~그는 먼지와 썩은 옷의 냄새를 풍기며 당신에게 가까이 다가온다. "그게 대체 무슨 얘기인가? 소에고가 뇌 쥐와 한 패라는 증거는 무엇인가?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #21295 /* ~"나는 그들과 얘기를 했고 그들은 내게 그 사실을 말해주었소."~ */ GOTO 41
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57892 /* ~"증거인 그의 일지가 그의 방에 있소. 하지만 그는 이미 죽었소."~ */ JOURNAL #21303 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 그는 이 문제에 대해 차후에 조사하겠다고 말했다. ~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21296 /* ~"증거인 그의 일지가 그의 방에 있소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21297 /* ~"증거인 그의 일지가 그의 방에 있소. 내가 그에게 그것에 대해 얘기하자 그는 쥐 인간으로 변해 나를 공격했소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~~ THEN REPLY #21299 /* ~"관두시오. 그 밖에 질문할 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #21300 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21304 /* ~"그들은 그대가 소에고를 죽이도록 거짓말을 했을지도 모른다. 그 점에 대해서는 생각해 보았는가?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57893 /* ~"증거인 그의 일지가 그의 방에 있소. 하지만 그는 이미 죽었소."~ */ JOURNAL #21303 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 그는 이 문제에 대해 차후에 조사하겠다고 말했다. ~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21305 /* ~"증거인 그의 일지가 그의 방에 있소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67794 /* ~"증거인 그의 일지가 그의 방에 있소. 내가 그에게 그것에 대해 얘기하자 그는 쥐 인간으로 변해 나를 공격했소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~~ THEN REPLY #21306 /* ~"그럼 다른 증거를 찾아내도록 하겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #21301 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했으나 그가 만족할만한 증거는 제시하지 못했다. 아마 소에고나 그의 주변으로부터 보다 살득력 있는 증거를 찾을 수 있을지도 모른다. ~ */ GOTO 3
  IF ~~ THEN REPLY #21307 /* ~"그럼 다른 증거를 찾아내도록 하겠소. 안녕히 계시오."~ */ JOURNAL #21301 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했으나 그가 만족할만한 증거는 제시하지 못했다. 아마 소에고나 그의 주변으로부터 보다 살득력 있는 증거를 찾을 수 있을지도 모른다. ~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.2 40.3 41.1 41.2 73.0 102.2 102.3 103.1 103.2
  SAY #21309 /* ~"확인해 보도록 하겠다. 소에고를 찾아서 그의 방에서 그와 이 문제에 대해 얘기를 나누도록 하겠다. 만약 이 일이 사실이라면 나는 그대에게 크게 감사하겠다."~ */
  IF ~~ THEN REPLY #21310 /* ~기다린다.~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",1)
SetGlobal("Spawn_Soego","GLOBAL",1)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
FadeToColor([20.0],0)
SetGlobal("1500_Destroy_Duplicate","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 10.0 62.0
  SAY #21311 /* ~그는 말을 꺼내기 전에 잠시 당신을 주시한다. "죽은 자의 왕국의 왕국에 대해 그대가 아무런 악의도 지니고 있지 않다는 것을 행동으로 입증하라. 그러면 나도 그대의 탄원을 침묵의 왕께 올릴 수도 있을 것이다."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21312 /* ~"당신은 소에고가 크래니움랫의 스파이라는 것을 알고 있소?"~ */ GOTO 40
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
!Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21313 /* ~"나는 더스트맨에게 파로드가 이 곳에서 훔친 시체를 그들에게 팔고 있다는 사실을 얘기해줄 수 있소. 난 그들이 파로드를 저지할 것이라고 확신하오."~ */ GOTO 44
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21314 /* ~"나는 더스트맨에게 파로드가 이 곳에서 훔친 시체를 그들에게 팔고 있다는 사실을 얘기해줄 수 있소. 난 그들이 파로드를 저지할 것이라고 확신하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALCHaotic_Hargrimm_2","GLOBALLaw",-2)
~ GOTO 44
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57708 /* ~"내가 당신을 위해 할 수 있는 일은 없겠소?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~하그림은 내게 죽은 자의 왕국 주변을 탐색하여 발견되는 크래니움 랫을 가차없이 죽이라고 말했다. ~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21315 /* ~"내가 당신을 위해 제거해 줄 자는 없소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~하그림은 내게 죽은 자의 왕국 주변을 탐색하여 발견되는 크래니움 랫을 가차없이 죽이라고 말했다. ~ */ GOTO 45
  IF ~~ THEN REPLY #21316 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21317 /* ~"그럼 가서 다른 할 일을 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.2
  SAY #21319 /* ~"그대도 그대의 제의에 내재된 문제점을 인식하고 있을 것이다. 우리는 그대가 그런 일을 할 것이라는 기대 하나만 가지고 그대가 떠나는 것을 허락할 수는 없다. ~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21320 /* ~"당신은 소에고가 크래니움랫의 스파이라는 것을 알고 있소?"~ */ GOTO 40
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57737 /* ~"내가 당신을 위해 할 수 있는 일은 없겠소?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~하그림은 내게 죽은 자의 왕국 주변을 탐색하여 발견되는 크래니움 랫을 가차없이 죽이라고 말했다. ~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21321 /* ~"내가 당신을 위해 제거해 줄 자는 없소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21324 /* ~하그림은 내게 죽은 자의 왕국 주변을 탐색하여 발견되는 크래니움 랫을 가차없이 죽이라고 말했다. ~ */ GOTO 45
  IF ~~ THEN REPLY #21322 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21323 /* ~"그럼 가서 다른 할 일을 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.3 43.4 44.1 44.2
  SAY #21325 /* ~"좋다. 때로는 굴들도 교묘하게 숨어 이 곳을 염탐하러 온 크래니움 랫의 작은 무리를 놓칠 때가 있다. 만약 그러한 쥐들을 발견하면 반드시 죽이도록 하라."~ */
  IF ~~ THEN REPLY #21326 /* ~"크래니움 랫에 대해 얘기해주시오."~ */ GOTO 22
  IF ~~ THEN REPLY #21327 /* ~"기억해 두리다. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #21328 /* ~"그렇게 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 22.0
  SAY #21329 /* ~"그들의 힘은 모인 수에 있다. 만약 따로 떨어져 있는 작은 무리들을 찾아 죽인다면 강한 무리도 서서히 그 힘을 잃을 것이다. 예를 들어 동쪽에 있는 쥐굴에서 그들의 힘은 강대하다. 하지만 만약 지상의 벌통에서 뇌 쥐들을 죽인다면 그들의 힘은 감소할 것이다. ~ */
  IF ~~ THEN REPLY #21330 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21331 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 3.1
  SAY #21332 /* ~그는 만족한 듯 고개를 끄덕인다. "우리는 그대에게 사의를 표한다. 침묵의 왕의 가호가 그대와 함께 하기를."~ */
  IF ~  Global("Hargrimm_Trust","AR1500",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67795 /* ~"그래... 이제는 날 위해 침묵의 왕에게 진언을 해줄 수 있겠소?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 7
  IF ~  Global("Hargrimm_Trust","AR1500",0)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67796 /* ~"그래... 이제는 날 위해 침묵의 왕에게 진언을 해줄 수 있겠소?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 10
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21333 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21334 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 74 99 78 even though they appear after this state */
~  Global("DN_Prisoner","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #21335 /* ~하그림은 당신을 향해 엄숙하게 고개를 끄덕인다. ~ */
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #67274 /* ~"낡은 통로의 파편 더미에서 한 무리의 크래니움 랫을 찾아내 죽였소."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ EXIT
  IF ~  NumInParty(1)
~ THEN REPLY #63994 /* ~"여기서 휴식을 취해도 괜찮겠소?"~ */ GOTO 101
  IF ~  NumInParty(1)
~ THEN REPLY #63995 /* ~"내겐 치료가 필요하오. 날 도와줄 수 있겠소?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63996 /* ~"여기서 휴식을 취해도 괜찮겠소?"~ */ GOTO 101
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63997 /* ~"우리에겐 치료가 필요하오. 우릴 도와줄 수 있겠소?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61825 /* ~"썩은 메리에 대해 당신에게 묻고 싶었소... 당신은 그녀가 하는 말을 이해하는 게 어렵지 않소?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~하그림에게 썩은 메리가 하는 말을 이해할 수 없다고 얘기하자 그는 내가 그녀와 말을 하는 법을 *배워야* 한다고 말해주었다. 아마 그녀는 그 말이 무슨 뜻인지 알겠지.~ */ GOTO 100
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61826 /* ~"썩은 메리에 대해 당신에게 묻고 싶었소... 당신은 어떻게 그녀가 하는 말을 이해하오?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~하그림에게 썩은 메리가 하는 말을 이해할 수 없다고 얘기하자 그는 내가 그녀와 말을 하는 법을 *배워야* 한다고 말해주었다. 아마 그녀는 그 말이 무슨 뜻인지 알겠지.~ */ GOTO 100
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21336 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 49
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #64946 /* ~"당신은 소에고가 크래니움랫의 스파이라는 것을 알고 있소?"~ */ GOTO 102
  IF ~~ THEN REPLY #21337 /* ~"안녕히 계시오, 하그림."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.7 100.0
  SAY #21338 /* ~그는 고개를 젓는다. "이 곳에서는 그러한 것을 본 적이 없다. 아마 시길 더 깊숙한 곳... 침수된 지하 묘지를 탐색해 보도록 하라. 그 곳으로 통하는 입구는 그대가 이 곳에 처음으로 들어온 곳의 서쪽에 있다. 영면하고 있는 죽은 자들을 건드리지 마라, 아니면 침묵의 왕의 분노를 사게 될 테니!"~ */
  IF ~~ THEN REPLY #21339 /* ~"고맙소. 안녕히 계시오, 하그림."~ */ JOURNAL #21340 /* ~하그림은 내가 원하는 청동 구체를 찾으려면 죽은 자의 왕국너머에 있는 침수된 지하 묘지를 찾아보라고 말해주었다.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 19.2
  SAY #21341 /* ~"우리도 알지 못한다. 그들은 아마 다른 곳에서 방황하고 있을 것이다. 우리는 이 곳을 거의 떠나지 않는다." 그는 얘기를 계속해야 할지 망설이는 듯 잠시 말을 멈춘다. "한때는 많은 그림자들이 우리들과 함께 살았다. 하지만 그들은 이미 오래 전에 이 곳을 떠났으며, 우리는 그들이 어디로 갔는지 알지 못한다. 어떤 자들은 그들이 차원을 방황하고 있다고 한다."~ */
  IF ~~ THEN REPLY #21342 /* ~"그들은 차원들을 방황하고 있소?"~ */ JOURNAL #21346 /* ~하그림은 한때 많은 수의 그림자들이 죽은 자의 왕국에서 살았었다고 내게 말해주었다. 썩은 메리의 환시에 의하면 그들은 모두 음의 에너지계에 있는 요새로 끌려갔다고 한다. ~ */ GOTO 51
  IF ~~ THEN REPLY #21343 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21344 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21345 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #21347 /* ~"나도 그 일에 대해 한 번 물어본 적이 있다. 메리는 환영을 통해 그들의 운명을 보았다고 한다. 그녀에 의하면 그들은 모두 음의 에너지계에 있는 파괴된 요새로 끌려 들어갔으며, 그 후회의 묘지로부터 그들은 탈출할 수 없다고 한다. ~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21348 /* ~"메리가 누구요?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21349 /* ~"메리... 썩은 메리?"~ */ GOTO 52
  IF ~~ THEN REPLY #21350 /* ~"음의 에너지계에 있는 요새?"~ */ GOTO 53
  IF ~~ THEN REPLY #21351 /* ~"왜 당신은 이 곳에 머무르는 거요?"~ */ GOTO 55
  IF ~~ THEN REPLY #21352 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21353 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21354 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 53.1 53.2 54.0 54.1 55.1 55.2 56.0 56.1
  SAY #21355 /* ~그는 고개를 끄덕인다. "그렇다, 썩은 메리. 침묵의 왕께서 그녀를 굽어살피시기를. 그녀는 오래 전 그녀가 아직 살아 있었을 때 예언자였으며, 아직도 때때로 환영을 본다."~ */
  IF ~~ THEN REPLY #21356 /* ~"그녀에 대해 얘기해주시오."~ */ GOTO 26
  IF ~~ THEN REPLY #21357 /* ~"요새라고 했소?"~ */ GOTO 53
  IF ~~ THEN REPLY #21358 /* ~"왜 당신은 이 곳에 머무르는 거요?"~ */ GOTO 55
  IF ~~ THEN REPLY #21359 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21360 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21361 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.2 52.1 55.3 56.2
  SAY #21362 /* ~"그렇다." 스켈레톤 프리스트는 고개를 젓는다. "매우 어리석은 일이다."~ */
  IF ~~ THEN REPLY #21363 /* ~"왜?"~ */ GOTO 54
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21364 /* ~"메리가 누구요?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21365 /* ~"메리... 썩은 메리라고 했소?"~ */ GOTO 52
  IF ~~ THEN REPLY #21366 /* ~"왜 당신은 이 곳에 머무르는 거요?"~ */ GOTO 55
  IF ~~ THEN REPLY #21367 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21368 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21369 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #21370 /* ~"그 차원은 언데드의 빈 껍데기를 채우는 모든 에너지의 근원이다. 삶이 우리를 떠날 때 마법, 열정... 또는 다른 요인들에 의해 이러한 에너지가 빈 껍데기를 채움으로서 공허한 삶을 얻는 경우가 있다. 하지만 나는 그 곳에 어떻게 뭔가가 *존재*하는 것이 가능한지 이해할 수가 없다. "~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21371 /* ~"메리가 누구요?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21372 /* ~"메리... 썩은 메리라고 했소?"~ */ GOTO 52
  IF ~~ THEN REPLY #21373 /* ~"왜 당신은 이 곳에 머무르는 거요?"~ */ GOTO 55
  IF ~~ THEN REPLY #21374 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21375 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21376 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.3 52.2 53.3 54.2
  SAY #21377 /* ~"이 왕국은 우리가 관리하고 있다. 고요한 자들 - 진정한 사자는 보호와 보살핌을 받아야만 한다... 그렇지 않으면 지하 묘지의 공포가 그들을 엄습하여 그들의 잠을 방해할 것이다. 그들을 보살피는 것은 우리의 신성한 의무이다. ~ */
  IF ~~ THEN REPLY #21378 /* ~"지하 묘지의 공포?"~ */ GOTO 56
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21379 /* ~"메리가 누구요?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21380 /* ~"메리... 썩은 메리라고 했소?"~ */ GOTO 52
  IF ~~ THEN REPLY #21381 /* ~"요새라고 했소?"~ */ GOTO 53
  IF ~~ THEN REPLY #21382 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21383 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21384 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #21385 /* ~"산 자들... 인간과 쥐들... 매장된 자들에 대한 우리의 서약에 도전하는 모든 자들. 침묵의 왕께서 우리를 보호하시기를."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21386 /* ~"메리가 누구요?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21387 /* ~"메리... 썩은 메리라고 했소?"~ */ GOTO 52
  IF ~~ THEN REPLY #21388 /* ~"요새라고 했소?"~ */ GOTO 53
  IF ~~ THEN REPLY #21389 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21390 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21391 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 16.0
  SAY #21392 /* ~"나는 오래 전에 죽었다, 그리고 죽음 뒤에 기다리는 것은 망각뿐이라는 것을 깨달았다... 다행히도 나는 결정적인 순간에 그러한 운명을 피할 수가 있었다."~ */
  IF ~~ THEN REPLY #21393 /* ~"피할 수가 있었다?"~ */ GOTO 58
  IF ~~ THEN REPLY #21394 /* ~"당신은 추종자에 대해 얘기했소. 이 곳에는 또 누가 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21395 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #21396 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21397 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #21398 /* ~"그렇다, 나는 이 곳에서 깨어났다. 지하 묘지에서 여러 날을 방황한 끝에 나는 지금의 내 주군이신 침묵의 왕의 옥좌가 있는 곳에 우연히 도달하게 되었다. 그분은 내게 말씀하셨으며, 그 운명적인 만남으로부터 죽은 자의 왕국이 탄생하게 되었다."~ */
  IF ~~ THEN REPLY #21399 /* ~"당신은 추종자에 대해 얘기했소. 이 곳에는 또 누가 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21400 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #21401 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21402 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1
  SAY #21403 /* ~"먼저 나는 그대가 왜 이 곳에 왔는지 알고 싶다."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21404 /* ~"나는 어떤 물건을 찾고 있소. 그것은 작은 청동 구체요."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21405 /* ~"크래니움 랫의 집합체인 여럿이-모여-하나가 날 보냈소."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21406 /* ~"나는 소에고를 찾고 있었소."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21407 /* ~"아무런 이유도 없소."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21408 /* ~거짓말: "아무런 이유도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21409 /* ~거짓말: "아무런 이유도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21410 /* ~거짓말: "아무런 이유도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21411 /* ~"당신과는 상관없는 일이오."~ */ GOTO 60
  IF ~~ THEN REPLY #21412 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 3
  IF ~~ THEN REPLY #21413 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.7
  SAY #21414 /* ~스켈레톤은 어깨를 으쓱한다, 그리고 당신에게 가라고 손짓한다. "그럼 그렇게 하라. 그대의 이 곳에서의 체류를 즐기도록 하라."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21415 /* ~"나는 어떤 물건을 찾고 있소. 그것은 작은 청동 구체요."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21416 /* ~"크래니움 랫의 집합체인 여럿이-모여-하나가 날 보냈소."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21417 /* ~"나는 소에고를 찾고 있었소."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21418 /* ~"아무런 이유도 없소."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21419 /* ~거짓말: "아무런 이유도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21420 /* ~거짓말: "아무런 이유도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21421 /* ~거짓말: "아무런 이유도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21422 /* ~"기다리시오. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21423 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.2 60.2 63.2
  SAY #21424 /* ~"그 창백한 죽음 숭배자는 우리의 나라에 인간을 몇 명이나 더 끌어들여야 만족할 것인가?! 수백, 아니 수천 명? 시길 시민 모두?!" 스켈레톤은 다시 시선을 당신에게 돌린다. "그대는 더스트맨과 한 패인가? 그대는 그들의 믿음을 족쇄처럼 차고 다니며, 진정한 죽음이라는 터무니없는 사상을 숭배하는가?"~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21425 /* ~"아니오."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21426 /* ~"그렇소."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21427 /* ~거짓말: "아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_4","GLOBALLaw",-1)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1 61.2 63.3 63.4 63.5 63.6 67.0 68.0
  SAY #21428 /* ~"흥!" 스켈레톤은 고개를 저으며 당신으로부터 시선을 돌린다.~ */
  IF ~~ THEN REPLY #21429 /* ~"그래서...?"~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 43
END

IF ~~ THEN BEGIN 63 // from: 59.3 59.4 59.5 59.6 60.3 60.4 60.5 60.6
  SAY #21430 /* ~"정말인가? 나로서는 믿기가 어렵다."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21431 /* ~"나는 어떤 물건을 찾고 있소. 그것은 작은 청동 구체요."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21432 /* ~"크래니움 랫의 집합체인 여럿이-모여-하나가 날 보냈소."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21433 /* ~"나는 소에고를 찾고 있었소."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21434 /* ~"그건 진실이오."~ */ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21435 /* ~거짓말: "그건 진실이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21436 /* ~거짓말: "그건 진실이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21437 /* ~거짓말: "그건 진실이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~~ THEN REPLY #21438 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 3
  IF ~~ THEN REPLY #21439 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.1 60.1 63.1
  SAY #21440 /* ~"침묵의 왕이시어! 그대는 *쥐들*과 한 패란 말인가?" 그는 격노한다. "그대는 우리의 피보호자의 무덤을 더럽히고 그들의 잔해를 먹는 군집성의 청소 동물들에게 협력하고 있단 말인가?!"~ */
  IF ~~ THEN REPLY #21441 /* ~"사과하겠소..."~ */ GOTO 65
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21442 /* ~"그렇소. 그게 어쨌다는 거요?"~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21443 /* ~"그렇소. 그게 어쨌다는 거요?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #21444 /* ~"당연히 그래야 할 것이다! 그들은 왜 그대를 이 곳에 보냈는가?"~ */
  IF ~~ THEN REPLY #21445 /* ~"침묵의 왕을 죽이기 위해."~ */ GOTO 68
  IF ~~ THEN REPLY #21446 /* ~거짓말: "협정을 위한 교섭 때문에."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
  IF ~~ THEN REPLY #21447 /* ~거짓말: "아무런 이유도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #21448 /* ~그의 눈에서 깜박이고 있는 진홍색 불빛이 가늘어진다. "그건 믿기가 어렵다. 그대에게는 진실에 보다 가까운 대답이 있을 것이다."~ */
  IF ~~ THEN REPLY #21449 /* ~"침묵의 왕을 죽이기 위해."~ */ GOTO 68
  IF ~~ THEN REPLY #21450 /* ~거짓말: "협정을 위한 교섭 때문에."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 65.1 66.1
  SAY #21451 /* ~"협상할 것은 아무 것도 없다. 협정은 아직 그 효력을 발휘하고 있다. 그들은 우리의 국경선을 존중해야 한다는 교훈을 얻었으며, 우리 또한 그들의 국경선을 존중한다."~ */
  IF ~~ THEN REPLY #21452 /* ~"어쨌든 그것이 내기 이 곳에 온 이유요."~ */ GOTO 62
END

IF ~~ THEN BEGIN 68 // from: 65.0 66.0
  SAY #21453 /* ~"감히 우리의 영토에 들어와 우리 주군을 위협하려고 하다니 무엄하기 그지없다! 그것도 다름 아닌 뇌 쥐의 명령으로! 그대는 그대의 만용에 대한 대가를 치를 것이다."~ */
  IF ~~ THEN REPLY #21454 /* ~"나는 진실을 말했을 뿐이오. 이제 나는 그를 죽일 마음이 없소."~ */ GOTO 62
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21455 /* ~"그럼 내가 고통을 받도록 만드시오."~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21456 /* ~"그럼 내가 고통을 받도록 만드시오."~ */ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 64.1 68.1
  SAY #21457 /* ~"그대는 굴들의 배설물로서만 이 지하 묘지를 나갈 수 있을 것이다! 침묵의 왕이시어, 우리에게 승리를!"~ */
  IF ~~ THEN REPLY #21458 /* ~그들의 공격에 대처한다.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21459 /* ~도망친다.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 64.2 68.2
  SAY #21462 /* ~그는 지팡이를 치켜들었다가 갑자기 멈춘다. "아아, 슬프도다! 우리가 죽음의 협정을 준수하는 것은 그대의 행운이자 침묵의 왕의 은총임을 알라. 그러나 그대는 이 지하 묘지에서 *결코* 나갈 수가 없을 것이다. 잘 있으라."~ */
  IF ~~ THEN REPLY #21461 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 40.1 41.0
  SAY #21463 /* ~"이 일을 조사하도록 하겠다. 만약 이 일이 사실이라면 그대를 크게 치하할 것이다."~ */
  IF ~~ THEN REPLY #21464 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
ClearAllActions()
~ GOTO 3
  IF ~~ THEN REPLY #21465 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 21.0
  SAY #21466 /* ~"그들은 영원한 굶주림에 시달리고 있다. 만약 우리가 그들을 제지하지 않으면 그들은 매장된 마을과 크래니움 랫의 굴을 습격해 모조리 죽일 것이다. 그리고 나서 그들은 이 곳으로 돌아와 여기 있는 모든 자들 또한 죽일 것이다."~ */
  IF ~~ THEN REPLY #21467 /* ~"아카스트에 대해 얘기해주시오."~ */ GOTO 32
  IF ~~ THEN REPLY #21468 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #21469 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #21470 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #21471 /* ~"그는 다른 이유로 도망쳤는지도 모른다. 그 가능성은 생각해 보았는가?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #21472 /* ~"증거인 그의 일지가 그의 방에 있소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~~ THEN REPLY #21473 /* ~"그럼 다른 증거를 찾아내도록 하겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #21474 /* ~"그럼 다른 증거를 찾아내도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 99 78 even though they appear after this state */
~  Global("Prisoner_Movie","GLOBAL",1)
~ THEN BEGIN 74 // from:
  SAY #21475 /* ~"멈추어라! 그대는 너무 깊은 곳까지 들어왔다. 그대는 침묵의 왕의 영토인 죽은 자의 왕국을 침범한 것이다! 그대는 평화적으로 우리에게 복종하겠는가?" ~ */
  IF ~~ THEN REPLY #21476 /* ~"무엇에게 항복하란 말이오?"~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("Know_Hargrimm","GLOBAL",1)
SetGlobal("Know_Silent_King","GLOBAL",1)
SetGlobal("Hargrimm_Talk","AR1500",2)
SetDoorLocked("AR1500D1",TRUE)
SetDoorLocked("AR1500D2",TRUE)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #21477 /* ~"침묵의 왕께서는 우리 나라의 문 안으로 들어오는 자는 모두 포로로 삼으라고 명하셨다. 그대는 복종하겠는가?"~ */
  IF ~~ THEN REPLY #21478 /* ~"좋소, 항복하겠소."~ */ GOTO 76
  IF ~~ THEN REPLY #21479 /* ~"아니, 하지 않겠소?"~ */ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #21480 /* ~"그럼 따라오라... 그대를 예배당으로 안내하겠다. 이 사실을 알라: 그대는 죽은 자의 왕국 안은 자유로이 돌아다닐 수가 있다, 하지만 밖으로는 나갈 수가 없다. 그대는 이 곳에서 죽을 때까지 머무르게 될 것이다. 만약 그대가 우리처럼 언데드로서 부활한다면 그대는 자유를 얻을 수가 있다. 침묵의 왕을 찬양하라. 그분의 의지는 실행될 것이다."~ */
  IF ~~ THEN REPLY #21481 /* ~그들을 따라간다.~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("DN_Surrender","AR1500",1)
StartCutSceneMode()
StartCutSceneEx("1500cs3",FALSE)
~ JOURNAL #61610 /* ~나는 강대한 힘을 지닌 언데드 요술사 겸 사제와 마주치게 되었다. 그는 내가 '침묵의 왕'의 영토인 죽은 자의 왕국을 침범했다고 주장했다. 나는 항복하기로 합의했고, 그는 내게 이 곳 안에서는 자유로이 돌아다녀도 좋으나 지하 묘지 밖으로는 나가서는 안 된다고 말했다. 스켈레톤 사제에 의하면 나는 죽을 때까지 이 곳을 떠날 수 없으나, 만약 내가 죽어 그들처럼 언데드로 부활한다면 자유를 얻을 것이라 한다. 하지만 아마 다른 방법이 있을 것이다...~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #21482 /* ~"그렇다면 그대는 이 곳 침묵의 왕의 홀에서 죽을 것이다."~ */
  IF ~~ THEN REPLY #21483 /* ~"좋소, 항복하겠소."~ */ GOTO 76
  IF ~~ THEN REPLY #21484 /* ~"그렇다면 할 수 없소."~ */ DO ~SetGlobal("Undead_Alert","AR1500",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ JOURNAL #61609 /* ~나는 강대한 힘을 지닌 언데드 요술사 겸 사제와 마주치게 되었다. 그는 내가 '침묵의 왕'의 영토인 죽은 자의 왕국을 침범했다고 주장했다. 나는 항복하기를 거부했고 그와 그의 언데드 부하들에 의해 즉시 공격을 당했다. ~ */ EXIT
END

IF WEIGHT #0 ~  Global("Throne_Movie","GLOBAL",1)
~ THEN BEGIN 78 // from:
  SAY #23955 /* ~"그래, 그대가 왔군." 스켈레톤은 시선을 거대한 옥좌로 돌린다. 그대가 여기서 보고 있는 것은 우리 문명의 종말이다."~ */
  IF ~~ THEN REPLY #24110 /* ~"무슨 뜻이오?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
  IF ~~ THEN REPLY #24112 /* ~"저것이 침묵의 왕이오?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #24114 /* ~그가 계속하기를 조용히 기다린다.~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #23956 /* ~"그렇다."~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 78.0 78.2 79.0
  SAY #23957 /* ~"왕이 아무 말도 하시지 않는다는 사실을 그 누구도 알아서는 안 된다."~ */
  IF ~~ THEN REPLY #24117 /* ~"이 상태가 얼마나 계속되어 왔소?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24119 /* ~"왜 그는 말을 하지 않소?"~ */ GOTO 82
END

IF ~~ THEN BEGIN 81 // from:
  SAY #23958 /* ~하그림의 시선은 그림자 속 깊숙한 곳으로 향한다. "그는 이미 오래 전부터 우리에게 아무런 말도 하지 않는다. 그는 저주받을 진정한 죽음을 향해 떠났다." 그의 목소리로부터 분노와 절망을 희미하게나마 느낄 수가 있다. "그는 우리를 산 자들 사이에서 고통받도록 내버려 두고 떠났다! 우리는... 모든 산 자들의... 먹이가 되었다."~ */
  IF ~~ THEN REPLY #24121 /* ~"그럼 왜 그가 통치하는 거요?"~ */ GOTO 83
  IF ~~ THEN REPLY #24124 /* ~"그렇다면... 그는 어떻게 통치하오?"~ */ GOTO 84
  IF ~~ THEN REPLY #24126 /* ~"그럼 실제로는 누가 통치하오?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY #23959 /* ~"그는 이 곳을 떠났기 때문에 아무 말도 없는 것이다. 그는 진정한 진정한 죽음을 위해 우리를 저버렸다... 이 곳에는 그의 빈 껍질만이 남아있을 뿐이다."~ */
  IF ~~ THEN REPLY #24129 /* ~"이 상태가 얼마나 계속되어 왔소?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24131 /* ~"그럼 왜 그가 통치하는 거요?"~ */ GOTO 83
  IF ~~ THEN REPLY #24133 /* ~"그렇다면... 그는 어떻게 통치하오?"~ */ GOTO 84
  IF ~~ THEN REPLY #24134 /* ~"그럼 누가 실제로 죽은 자의 왕국을 지배해 왔소?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 83 // from: 81.0 82.1 84.0
  SAY #23960 /* ~"그는 그래야만 하기 때문에 통치한다."~ */
  IF ~~ THEN REPLY #24135 /* ~"하지만 그가 이미 죽었다면... 어떻게?"~ */ GOTO 84
  IF ~~ THEN REPLY #24136 /* ~"그럼 누가 실제로 죽은 자의 왕국을 지배해 왔소?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 81.1 82.2 83.0
  SAY #23961 /* ~"우리는 침묵의 왕이 오래 전에 남긴 말씀을 바탕으로 그의 뜻을 해석하여 실행에 옮긴다. 그건 결코 쉬운 일이 아니었다..." 하그림은 마치 보이지 않는 무게에 짓눌려 있는 듯 그의 목소리에는 피곤한 기색이 역력하다. "내게는 그에게 질문하고 싶은 것들이 너무나도 많다."~ */
  IF ~~ THEN REPLY #24139 /* ~"그럼 왜 그가 아직도 통치하는 거요?"~ */ GOTO 83
  IF ~~ THEN REPLY #24141 /* ~"그럼 실제로 누가 이 곳을 지배하오?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 81.2 82.3 83.1 84.1
  SAY #23962 /* ~"메리와 내가 침묵의 왕께 진언한다. 우리는 그를 대신하여 통치한다."~ */
  IF ~~ THEN REPLY #24143 /* ~"왜 당신은 사람들에게 진실을 얘기하지 않는 거요?"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23963 /* ~"나는 우리가 만든 것들을 보존하고 싶을 뿐이다. 나는 죽고 싶지 않다."~ */
  IF ~~ THEN EXTERN ~DSTALEMA~ 49
END

IF ~~ THEN BEGIN 87 // from:
  SAY #23964 /* ~"만약 우리 백성들이 이 사실을 알게 된다면... 또는 아카스트나 크래니움 랫의 정신 집합체인 여럿이-모여-하나가 이 기만에 대해 알게 된다면... 우리가 지금까지 쌓아 온 모든 것들이 파괴될 것이다. 우리 내부와 외부의 적을 제지하고 있는 것은 이 빈 껍질 단 하나 뿐이다. 만약 진실이 밝혀진다면 우리의 작은 왕국은 무너질 것이다."~ */
  IF ~~ THEN REPLY #24150 /* ~"계속하시오..."~ */ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #23965 /* ~"나는 그대에게 침묵을 지키도록 강요할 수는 없다. 하지만 나는 그대에게 그대 자신만 생각하지 말고, 만약 그대가 여기서 본 것을 발설할 경우 어떤 일이 벌어질 지에 대해서도 고려해 달라고 부탁하고자 한다."~ */
  IF ~~ THEN REPLY #24152 /* ~맹세를 한다: "나는 떠나길 원할 뿐이오, 하그림. 만약 내 부탁을 들어준다면 나는 침묵을 지키겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24154 /* ~거짓으로 맹세를 한다: "나는 떠나길 원할 뿐이오, 하그림. 만약 내 부탁을 들어준다면 나는 침묵을 지키겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-1)
~ GOTO 89
  IF ~~ THEN REPLY #24156 /* ~"당신 백성들은 진실을 알아야 하오. 그 때문에 당신들의 문명이 파괴되더라도 그건 어쩔 수가 없는 일이오."~ */ GOTO 90
  IF ~~ THEN REPLY #24159 /* ~"왜 새로운 왕을 옥좌에 앉히지 않소?"~ */ GOTO 93
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1 93.2 93.3 94.1 94.2 96.0 96.1
  SAY #23966 /* ~하그림은 잠시 아무 말도 하지 않는다. "그대는 이 곳을 떠나도 좋다. 떠나라... 그리고 간청하건대 그대가 한 약속을 지켜라."~ */
  IF ~~ THEN REPLY #24164 /* ~"고맙소. 안녕히 계시오."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~나는 썩은 메리가 내가 말해준 침묵의 왕의 알현실로 통하는 전이문을 사용했다. 나는 거기서 죽은 자의 왕국의 군주가 말라비틀어진  시체에 불과하다는 사실을 알게 되었다. 나는 그 사실을 아무에게도 말하지 않기로 약속했고, 대신 하그림은 나를 죽은 자의 왕국으로부터 해방했다.~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.2 93.4 94.3 96.2
  SAY #24092 /* ~하그림은 잠시 아무 말도 하지 않는다. "다시 말하지만 나는 그대에게 침묵을 지키도록 강요할 수는 없다. 하지만 나는 그대가 그들에게 말할 것인가 여부는 알아야겠다.~ */
  IF ~~ THEN REPLY #24166 /* ~"그들에게 말하겠소."~ */ GOTO 98
  IF ~~ THEN REPLY #24181 /* ~진실: "그들에게 말하지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 91
  IF ~~ THEN REPLY #24182 /* ~거짓말: "그들에게 말하지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1 90.2
  SAY #24093 /* ~"그대에게 감사한다. 그대는 원한다면 당장 이 곳을 떠나도 좋다. 알현실의 남쪽 끝에 있는 문을 이용하라."~ */
  IF ~~ THEN REPLY #24183 /* ~"고맙소. 안녕히 계시오."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~나는 썩은 메리가 내가 말해준 침묵의 왕의 알현실로 통하는 전이문을 사용했다. 나는 거기서 죽은 자의 왕국의 군주가 말라비틀어진  시체에 불과하다는 사실을 알게 되었다. 나는 그 사실을 아무에게도 말하지 않기로 약속했고, 대신 하그림은 나를 죽은 자의 왕국으로부터 해방했다.~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #24094 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from: 88.3
  SAY #24095 /* ~"왕은 옥좌에 앉을 때 반드시 살아 있어야만 한다. 옥좌는 살아 있지 않는 자는 받아들이지 않는다. 일단 옥좌에 앉으면..." 하그림의 어조가 한층 불길해진다. "...다시는 떠날 수가 없다."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
Global("Soego_Fled","GLOBAL",0)
~ THEN REPLY #24185 /* ~"소에고는 어떡하오?"~ */ GOTO 94
  IF ~~ THEN REPLY #24186 /* ~"만약 당신이 받아들이겠다면 내가 당신들의 왕이 되겠소."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24187 /* ~맹세를 한다: "나는 떠나길 원할 뿐이오, 하그림. 만약 내 부탁을 들어준다면 나는 침묵을 지키겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24188 /* ~거짓으로 맹세를 한다: "나는 떠나길 원할 뿐이오, 하그림. 만약 내 부탁을 들어준다면 나는 침묵을 지키겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24189 /* ~"당신 백성들은 진실을 알아야 하오. 그 때문에 당신들의 문명이 파괴되더라도 그건 어쩔 수가 없는 일이오."~ */ GOTO 90
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #24096 /* ~"소에고는 좋은 왕이 될 수가 없다. 그는 침묵을 지키기에는 말하는 것을 너무 좋아한다. 또한 옥좌에 앉으면 그는 진정한 죽음을 얻을 수가 없게 된다. 그것은 우리로부터 삶을 뺏는 것과 마찬가지로 불경스러운 행위이다."~ */
  IF ~~ THEN REPLY #24190 /* ~"만약 당신이 받아들이겠다면 내가 당신들의 왕이 되겠소."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24191 /* ~맹세를 한다: "나는 떠나길 원할 뿐이오, 하그림. 만약 내 부탁을 들어준다면 나는 침묵을 지키겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24192 /* ~거짓으로 맹세를 한다: "나는 떠나길 원할 뿐이오, 하그림. 만약 내 부탁을 들어준다면 나는 침묵을 지키겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24193 /* ~"당신 백성들은 진실을 알아야 하오. 그 때문에 당신들의 문명이 파괴되더라도 그건 어쩔 수가 없는 일이오."~ */ GOTO 90
END

IF ~~ THEN BEGIN 95 // from:
  SAY #24097 /* ~"일단 옥좌에 앉으면 다시는 떠날 수가 없다. 죽음... 진정한 죽음만이... 침묵의 왕의 옥좌로부터 해방될 수 있는 유일한 길이다."~ */
  IF ~~ THEN REPLY #24194 /* ~"그렇소. 그렇게 하겠소."~ */ EXTERN ~DSTALEMA~ 51
  IF ~~ THEN REPLY #24195 /* ~"그렇다면, 아니오."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.1 97.0
  SAY #24098 /* ~"내가 생각했던 대로군." 하그림이 한숨을 쉬자 먼지가 구름처럼 나온다. "하지만 그래도 나는 그대가 침묵의 왕의 정체에 대해 말할 것인가 여부는 알아야겠다.~ */
  IF ~~ THEN REPLY #24196 /* ~맹세를 한다: "나는 떠나길 원할 뿐이오, 하그림. 만약 내 부탁을 들어준다면 나는 침묵을 지키겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24197 /* ~거짓으로 맹세를 한다: "나는 떠나길 원할 뿐이오, 하그림. 만약 내 부탁을 들어준다면 나는 침묵을 지키겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24198 /* ~"당신 백성들은 진실을 알아야 하오. 그 때문에 당신들의 문명이 파괴되더라도 그건 어쩔 수가 없는 일이오."~ */ GOTO 90
END

IF ~~ THEN BEGIN 97 // from:
  SAY #24099 /* ~하그림은 고개를 끄덕이고 옥좌를 가리킨다. "그럼 그대의 옥좌에 앉으소서, 침묵의 왕이시여..."~ */
  IF ~~ THEN REPLY #24199 /* ~"기다리시오... 관두는 게 좋을 것 같소."~ */ GOTO 96
  IF ~~ THEN REPLY #24200 /* ~옥좌를 차지한다.~ */ DO ~SetGlobal("Took_Throne","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 90.0
  SAY #24100 /* ~스켈레톤 사제는 슬프게 고개를 젓는다. "그걸 용납할 수는 없다, 산 자여. 침묵의 왕께서 내게 무운을 주시길..."~ */
  IF ~~ THEN REPLY #24201 /* ~싸운다.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #24202 /* ~도망친다.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR1501")
~ THEN BEGIN 99 // from:
  SAY #58914 /* ~하그림은 침묵의 왕의 알현실 남쪽에 있는 넓은 문을 엄숙하게  가리킨다. "이제 떠나라, 산 자여, 그리고 기억하라: 이 일을 결코 입 밖에 내지 말아라. 나와 얘기하고 싶다면 이 신성한 방 밖에서 날 찾도록 하라."~ */
  IF ~~ THEN REPLY #58915 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 48.5 48.6
  SAY #61822 /* ~한참이 지난 후에야 그는 대답을 한다. "그대는 *듣는* 법을 배워야 한다. 그뿐이다."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #61823 /* ~"알겠소. 혹시 작은 청동 구체를 어딘가에서 본 적이 있소?"~ */ GOTO 49
  IF ~~ THEN REPLY #61824 /* ~"그럼 그녀와 다시 얘기를 하도록 하겠소. 안녕히 계시오, 하그림." ~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 48.1 48.3
  SAY #63992 /* ~하그림은 한동안 조용히 당신을 쳐다본다, 그리고 한숨을 쉰다. "그대는 이 곳에서 안전할 것이다. 휴식을 취하라."~ */
  IF ~~ THEN REPLY #63993 /* ~"고맙소."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 48.8
  SAY #64947 /* ~그는 먼지와 썩은 옷의 냄새를 풍기며 당신에게 가까이 다가온다. "그게 대체 무슨 얘기인가? 소에고가 뇌 쥐와 한 패라는 증거는 무엇인가?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #64954 /* ~"나는 그들과 얘기를 했고 그들은 내게 그 사실을 말해주었소."~ */ GOTO 103
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64955 /* ~"증거인 그의 일지가 그의 방에 있소. 하지만 그는 이미 죽었소."~ */ JOURNAL #21303 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 그는 이 문제에 대해 차후에 조사하겠다고 말했다. ~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64956 /* ~"증거인 그의 일지가 그의 방에 있소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64957 /* ~"증거인 그의 일지가 그의 방에 있소. 내가 그에게 그것에 대해 얘기하자 그는 쥐 인간으로 변해 나를 공격했소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~~ THEN REPLY #64959 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #64948 /* ~"그들은 그대가 소에고를 죽이도록 거짓말을 했을지도 모른다. 그 점에 대해서는 생각해 보았는가?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67797 /* ~"증거인 그의 일지가 그의 방에 있소. 하지만 그는 이미 죽었소."~ */ JOURNAL #21303 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 그는 이 문제에 대해 차후에 조사하겠다고 말했다. ~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67798 /* ~"증거인 그의 일지가 그의 방에 있소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67799 /* ~"증거인 그의 일지가 그의 방에 있소. 내가 그에게 그것에 대해 얘기하자 그는 쥐 인간으로 변해 나를 공격했소."~ */ JOURNAL #21302 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했다. 하그림은 이 건에 대하여 그를 추궁했으며, 그 결과 그의 죄상이 드러나 소에고는 자신의 방에 죽을 때까지 갇히게 되었다. 그러자 소에고는 위어랫으로 변신하여 하그림을 공격했으나 신속하게 처치되었다. ~ */ GOTO 42
  IF ~~ THEN REPLY #64962 /* ~"관두시오. 가서 다른 증거를 찾겠소. 안녕히 계시오."~ */ JOURNAL #21301 /* ~나는 하그림에게 소에고와 크래니움 랫의 관계에 대해서 이야기를 했으나 그가 만족할만한 증거는 제시하지 못했다. 아마 소에고나 그의 주변으로부터 보다 살득력 있는 증거를 찾을 수 있을지도 모른다. ~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #64949 /* ~"이 일을 조사하도록 하겠다. 만약 이 일이 사실이라면 그대를 크게 치하할 것이다."~ */
  IF ~~ THEN REPLY #64963 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 10.2
  SAY #67800 /* ~스켈레톤 제사장은 깊은 한숨을 쉰다, 그리고 그가 생각에 잠기자 그의 눈빛이 희미해진다. "소에고, 그 저주받을 더스트맨을 제거하라, 그러면 침묵의 왕께 그대의 자유에 대해 진언하겠다. 그러나 그를 암살하는 것은 내가 원하는 바는 아니다. 그를 죽은 자의 왕국에서 추방할 구실만 제공하면 된다."~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",0)
Global("Soego_Journal","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67802 /* ~"소에고? 아... 그는 죽었소."~ */ GOTO 106
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #67803 /* ~"당신은 그가 크래니움 랫의 스파이라는 사실을 알고 있소?"~ */ GOTO 40
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67804 /* ~"왜 소에고 때문에 그토록 골머리를 앓는 거요?"~ */ GOTO 29
  IF ~~ THEN REPLY #67805 /* ~"그 일에 대해 조사하도록 하겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #67806 /* ~"내가 무슨 일을 할 수 있을지 한 번 알아보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #67801 /* ~"그가...? 흥! 그대는 내가 그대를 위해 침묵의 왕께 진언하기를 기대하는가? 그럴 수 없다! 그대가 소에고를 죽인 일이 정당하다는 것을 입증할 때까지 그대는 죽은 자의 왕국을 떠날 수가 없다."~ */
  IF ~~ THEN REPLY #67807 /* ~"좋소. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #67808 /* ~"그렇다면 증거를 찾아보도록 하겠소." ~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 3.9 3.10 3.11 3.12
  SAY #68089 /* ~"아니다. 그대가 여기서 죽음을 기다리는 죄수가 아니었다면, 대답은 달랐을 것이다."~ */
  IF ~~ THEN REPLY #68090 /* ~"왜 내가 이 곳에 갇히게 된 것이오?"~ */ GOTO 12
  IF ~~ THEN REPLY #68091 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #68092 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
