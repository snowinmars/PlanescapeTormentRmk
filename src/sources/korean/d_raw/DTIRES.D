// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIRES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIRES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38116 /* ~해진 넝마를 걸치고 있는 노인이 보인다. 가까이 다가가자 당신은 그에게는 양쪽 눈이 모두 없다는 사실을 발견한다. 그의 눈꺼풀의 상처 입은 세포 조직이 텅 빈 눈구멍 속으로 우묵 들어가는 바람에 그의 머리는 마치 썩고 있는 해골처럼 보인다.~ */
  IF ~~ THEN REPLY #38141 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #38142 /* ~노인을 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #38117 /* ~노인은 당신이 있는 방향을 대강 짐작해 돌아선 후 당신을 더듬으려는 듯 두 팔을 내민다. "어둠 속 들리는 목소리 누구? 친절한 말 한다 당신에 대해, 그리고 혼돈이라 부른다."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38143 /* ~"말은 내 혼돈에 대해 얘기하오. 두려워 마시오, 나도 카오시텍츠의 일원이니까."~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38144 /* ~"목소리... 말... 발... 팔..."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38145 /* ~"혼돈의 말을 하면 날 친구로 부르겠다고? 이렇게 뒤죽박죽으로 얘기하는 게 정말 필요한 거요?"~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38146 /* ~"허?~ */ GOTO 16
  IF ~~ THEN REPLY #38147 /* ~"어... 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #38118 /* ~"아... 당신 카오스, 나와 나처럼." 장님은 미소를 지으며 당신을 향해 조심스럽게 발을 내딛는다. 그가 움직은 것을 보면서 당신은 그가 한쪽 다리를 절름거린다는 사실을 눈치챈다.~ */
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38148 /* ~"당신 다리는 어떻게 된 거요... 부상을 입었소?"~ */ GOTO 3
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38149 /* ~"머뭇거리는 탄식의 골목으로 갈 수 있는 방법을 얘기해줄 수 있겠소?"~ */ GOTO 15
  IF ~  Global("Know_Tiresias","GLOBAL",1)
~ THEN REPLY #38150 /* ~"당신은 자신이 굶주린 개들을 지나 골목으로 나갈 수 있는 방법을 안다고 했소?"~ */ GOTO 8
  IF ~  Global("Know_Tiresias","GLOBAL",2)
~ THEN REPLY #38151 /* ~"비밀의 문이 어디 있는지 다시 얘기해주겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #38152 /* ~"그렇소.. 난 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #38119 /* ~"아니, 괜찮아 나는. 약간 베였을 뿐이다." 말을 하면서 그는 자신의 다리 위쪽을 덮고 있는 넝마를 걷어 올린다, 그러자 넓적다리에서 무릎에 이르는 갚게 베인 상처가 드러난다. ~ */
  IF ~~ THEN REPLY #38153 /* ~"무슨 일이 일어났소?"~ */ GOTO 4
  IF ~~ THEN REPLY #38154 /* ~"머뭇거리는 탄식의 골목으로 갈 수 있는 방법을 얘기해줄 수 있겠소?"~ */ GOTO 15
  IF ~~ THEN REPLY #38155 /* ~"그렇소.. 난 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #38120 /* ~"굶주린 개들의 칼 맛을 보았다. 건너편에 있는 메인 홀에 모였다, 그들은. 울부짖고, 으르렁 거리며, 배회하고 있다."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38157 /* ~"이 굶주린 개들에 대해 얘기해주시오."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38158 /* ~"굶주려 짖는 개들? 그들은 저 안에 몇 명이나 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #38159 /* ~"알겠소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 15.0
  SAY #38122 /* ~"그들은 사나운 혼돈. 하나의 형제, 그러나 누구의 형제도 아니다."~ */
  IF ~~ THEN REPLY #38160 /* ~"만약 그들이 카오시텍츠라면 왜 당신을 공격했소?"~ */ GOTO 6
  IF ~~ THEN REPLY #38161 /* ~"그들의 수는 몇이나 되오?"~ */ GOTO 7
  IF ~~ THEN REPLY #38162 /* ~"알겠소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #38127 /* ~노인은 고개를 젓는다. "관계 없다. 공격할 거다, 누구든지 뭐든지. 그렇게 그들에게 속삭인다, 혼돈이. 당신도 베인다. 저 안에 들어가면."~ */
  IF ~~ THEN REPLY #38163 /* ~"그들의 수는 몇이나 되오?"~ */ GOTO 7
  IF ~~ THEN REPLY #38165 /* ~"알겠소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.0 15.1
  SAY #38129 /* ~늙은 카오스맨은 잠시 멈추고 허공 쪽으로 자신의 보이지 않는 시선을 돌린다. "많다, 그들은... 강하고 사납다. 하지만 있다, 다른 길. 나와 나만 아는 비밀의 길. 저쪽 골목으로 가는 안전한 길."~ */
  IF ~~ THEN REPLY #38166 /* ~"이 비밀의 길이란 무엇이오?"~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #38167 /* ~"관두시오. 내 스스로 방법을 찾겠소."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 7.0
  SAY #38130 /* ~"어둠은 빛이 아니고 빛은 어둠이 아니다. 밝고 빛나는 동전은 비출 수가 있다." 노인은 강조를 하려고 손가락을 비빈다. ~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #38168 /* ~장님에게 동전 열 닢을 준다.~ */ GOTO 9
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38169 /* ~장님에게 동전 스무 닢을 준다.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38170 /* ~"난 당신에게 한 푼도 줄 수가 없소. 내가 원하는 걸 말해주지 않으면 당신에게 암흑의 진정한 의미를 가르쳐 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38171 /* ~"비밀과 비밀을 교환하는 건 어떻소. 난 당신에게 '어떤' 도둑이 이 건물 어디에 숨었는지를 말해줄 수 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38172 /* ~"그럼 관두시오. 내 스스로 방법을 찾겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38131 /* ~당신은 노인의 손에 동전 열 닢을 쥐어 준다. 그는 잠시 기다리더니 무게를 재려는 듯 손에 쥔 동전을 흔든다. 그는 잠시 생각을 해보더니 동전을 당신에게 돌려준다. "충분하지 않다. 목숨 값이 열 닢밖에 안 되는가?"~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38173 /* ~그에게 동전 스무 닢을 준다.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38174 /* ~"나랑 흥정을 하곗다는 거요. 좋소... 아건 어떻소, 만약 당신이 내가 원하는 걸 말해주면 당신 목숨은 살려 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38175 /* ~"비밀과 비밀을 교환하는 건 어떻소. 난 당신에게 '어떤' 도둑이 이 건물 어디에 숨었는지를 말해줄 수 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38176 /* ~"관두시오. 내 스스로 방법을 찾겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 13.1
  SAY #38132 /* ~당신이 돈을 주자 노인은 재빨리 주머니 속에 넣는다. "남서쪽 방에 숨겨진 문을 찾아라. 열면 메인 홀 저편, 골목 쪽 출구에 가까운 곳으로 나오게 된다."~ */
  IF ~~ THEN REPLY #38177 /* ~"도와줘 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~나는 깡패들의 아파트에서 한 늙고 눈먼 카오시텍트를 만났다. 그는 아파트의 메인 홀에 모여있는 굶주린 짖는 개들과 마주치는 일없이 머뭇거리는 탄식의 골목으로 갈 수 있는 비밀의 문에 대해 얘기해주었다. 그 문은 메인 홀 옆에 있는 남서쪽 방에 있다고 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 13.2 17.0
  SAY #38133 /* ~노인은 당신 협박에 격분한 것 같다. "넌 친구 아니다 그리고 넌 여기 친구 없다! 난 여기 친구들 있어서 부른다." 그는 고함을 지르려는 듯 숨을 깊숙이 들이쉰다.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #38178 /* ~손을 뻗쳐 그가 소리를 지르기 전에 그의 목을 부러트린다.~ */ GOTO 12
  IF ~~ THEN REPLY #38179 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #38180 /* ~재빨리 떠난다.~ */ DO ~Enemy()
SetGlobal("Tenement_Alarm","GLOBAL",1)
FloatMessage(Myself,9635)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #38134 /* ~당신은 재빨리 노인을 덮친다. 한 손으로 그의 입을 막아 비명을 지르지 못하게 한 다음, 다른 한 손으로는 그의 머리를 우두둑 소리가 날 때까지 비튼다.~ */
  IF ~~ THEN REPLY #38181 /* ~"너무 쉽군."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2
  SAY #38135 /* ~"도둑? 여기? 누가 티레시아스로부터 훔쳤다... 아마 당신이 말하는 자일지도..." 노인은 당신의 제의를 고려하는 듯 손을 들어 턱을 어루만진다. "좋다... 비밀 대 비밀. 말해라 당신부터."~ */
  IF ~~ THEN REPLY #38182 /* ~"당신 물건을 훔친 건 어린 계집이오. 그녀는 건너편 대기실에서 메인 홀로 통하는 문 근처에 숨어 있소."~ */ DO ~SetGlobal("Sybil_Betrayed","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Tiresias_2","GLOBALGood",-1)
~ GOTO 14
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38183 /* ~"다시 생각해 보았소. 여기 동전 스무 닢이 있소. 내가 당신이 아는 걸 말해주시오."~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38184 /* ~"다시 생각해 보았소. 당신이 내가 원하는 걸 말해주면 당신 목숨은 살려 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38185 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38136 /* ~티레시아스는 고개를 끄덕여 사의를 표한다. "소녀 도둑? 처치하겠다, 그녀."~ */
  IF ~~ THEN REPLY #38186 /* ~"옳소. 이제 이 비밀의 길에 대해 얘기해주시오."~ */ GOTO 19
  IF ~~ THEN REPLY #38188 /* ~"의심스럽군. 이제 내게 당신이 아는 걸 말하시오, 늙은이."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 2.1 3.1
  SAY #38137 /* ~"그렇다, 티레시아스는 길을 안다. 골목으로 나가는 출구는 남쪽의 메인 홀에 있다, 하지만 없다 통과할 수. 굶주린 개들이 거기 모여 길을 막고 있다."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38189 /* ~"이 굶주린 개들에 대해 얘기해주시오."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38190 /* ~"굶주려 짖는 개들? 그들은 저 안에 몇 명이나 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #38191 /* ~"알겠소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.2 1.3
  SAY #38138 /* ~노인은 머리를 한쪽으로 기울인다, 그리고 그의 보이지 않는 시선은 허공에 고정되어 있다. "너 혼돈 아냐! 아나! 아니!"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #38192 /* ~"어... 당신 말은 말이 되질 않소."~ */ GOTO 17
  IF ~~ THEN REPLY #38193 /* ~"이 안에 있는 사람들은 모두 미쳤나?"~ */ GOTO 17
  IF ~~ THEN REPLY #38194 /* ~그의 횡설수설을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38139 /* ~"가, 말하지 마. 말 끝났어. 완전히 끝났어!" 그는 당신에게 등을 돌린다. 그는 당신에게 더 이상 할 말이 없는 듯하다. ~ */
  IF ~~ THEN REPLY #38195 /* ~"이봐, 늙은이. 내게 보다 명료한 답을 주지 않으면 눈 이외의 다른 곳들도 잃게 될 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38196 /* ~"이래서는 끝이 없겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3
  SAY #38140 /* ~"남서쪽 방에는 숨겨진 문 있다. 저편의 문은 안 된다, 그 문은 개들에게로 통한다."~ */
  IF ~~ THEN REPLY #38197 /* ~"도와줘 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1
  SAY #38187 /* ~"남서쪽 방에 숨겨진 문을 찾아라. 열면 메인 홀 저편, 골목 쪽 출구에 가까운 곳으로 나오게 된다."~ */
  IF ~~ THEN REPLY #38198 /* ~"도와줘 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~나는 깡패들의 아파트에서 한 늙고 눈먼 카오시텍트를 만났다. 그는 아파트의 메인 홀에 모여있는 굶주린 짖는 개들과 마주치는 일없이 머뭇거리는 탄식의 골목으로 갈 수 있는 비밀의 문에 대해 얘기해주었다. 그 문은 메인 홀 옆에 있는 남서쪽 방에 있다고 한다. ~ */ EXIT
END
