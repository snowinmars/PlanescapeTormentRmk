// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTBARSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTBARSE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
Global("Slavers","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #48096 /* ~수척하고 험상궂게 생긴 사내가 보인다. 그의 거친 얼굴은 주름투성이이며, 그의 눈은 충혈되어 있다. "배신자의 문 여관에 오신 걸 환영하오. 나는 여관 주인인 썩은 바스요."~ */
  IF ~~ THEN REPLY #48097 /* ~"무슨 일이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #48098 /* ~"그건 대체 어떤 종류의 이름이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #48101 /* ~"당신은 어떤 물건들을 팔고 있소?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48107 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48108 /* ~"잘된 일이오. 안녕히 계시오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #48109 /* ~"그렇소. 내 딸이 노예 상인들에게 납치를 당했소, 그리고 그 아이가 없으면 이 가게는 망해서 제1원 안에 사는 부자 녀석들 중 하나에게 팔리게 될 거요." 그는 당신을 보다 자세히 살펴본다. "당신이 바로 디바에 대해 물어보고 다니는 사람이 아니오? 제안을 하겠소. 당신이 날 도우면 나도 당신을 돕겠소."~ */
  IF ~~ THEN REPLY #48110 /* ~"당신은 디바에 대해 무엇을 알고 있소?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #48111 /* ~"난 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48112 /* ~"이 일에 대해서는 나중에 얘기합시다. 지금은 질문할 게 더 있소."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #48113 /* ~"생각해 보겠소. 결정을 하면 다시 오리다. 안녕히 계시오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #48114 /* ~그는 당신을 노려본다. "바스는 내 이름이오. 전에 친구였던 녀석들이 근거도 없는 소문을 퍼뜨리는 바람에 '썩은'이라는 별명이 붙었소." 그는 몹시 화난 것 같다. "대체 뭘 원하는 거요? 당신은 무슨 모험자라도 되오?"~ */
  IF ~~ THEN REPLY #48116 /* ~"왜? 뭐가 잘못되었소?"~ */ GOTO 1
  IF ~~ THEN REPLY #48117 /* ~"나는 뭘 좀 물어보고 싶소..."~ */ GOTO 4
  IF ~~ THEN REPLY #48118 /* ~"당신은 어떤 물건들을 팔고 있소?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48119 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48120 /* ~"잘된 일이오. 안녕히 계시오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.4 7.1
  SAY #48125 /* ~그는 교활하게 웃는다. "당신은 그를 찾고 있소, 그렇지 않소? 그는 감옥 깊숙한 곳에 감금되어 있소. 나는 당신에게 체포되거나 뇌물을 쓰지 않고도 그 곳에 갈 수 있는 방법을 알려 줄 수 있소. 어차피 전술한 두 방법은 아무런 소용도 없을 거요."~ */
  IF ~~ THEN REPLY #48127 /* ~"대신 나는 어떤 일을 해야 하오?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.0 7.3 8.0 12.0 13.0 14.1
  SAY #48128 /* ~"뭘 알고 싶소?"~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #48129 /* ~"이 도시는 왜 이렇게 썰렁한 분위기요?"~ */ JOURNAL #47843 /* ~배신자의 문 여관의 주인인 썩은 바스는 시의 지도자들이 최근 감옥을 확장하다가 돌 거품 속에 갇힌 디바를 발견했다고 내게 말해주었다. 물론 그들은 그를 해방하지 않았다. 대신 그의 칼을 빼앗아 지하의 감옥의 동력원으로 이용하고 있다. ~ */ GOTO 7
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #48130 /* ~"이 도시는 왜 이렇게 썰렁한 분위기요?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ JOURNAL #47843 /* ~배신자의 문 여관의 주인인 썩은 바스는 시의 지도자들이 최근 감옥을 확장하다가 돌 거품 속에 갇힌 디바를 발견했다고 내게 말해주었다. 물론 그들은 그를 해방하지 않았다. 대신 그의 칼을 빼앗아 지하의 감옥의 동력원으로 이용하고 있다. ~ */ GOTO 7
  IF ~~ THEN REPLY #48131 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~  Global("Slavers","GLOBAL",1)
Global("Curst_Key","GLOBAL",0)
~ THEN REPLY #48132 /* ~"당신은 처리해야 할 일이 있다고 했소. 내가 뭘 해주기를 원하시오?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48133 /* ~"당신은 디바에 대해 무엇을 알고 있소?"~ */ GOTO 3
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48134 /* ~"당신은 어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48135 /* ~"아무 것도 없는 것 같소. 안녕히 계시오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48135 /* ~"아무 것도 없는 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.0 4.3 6.0
  SAY #48136 /* ~"가서 저기 있는 마퀘즈와 얘기하시오. 그는 전직 하모니움이오. 그는 이 노예 상인들에 대해 알고 있고, 그리고 그는 당신을 디바에게로 인도할 열쇠의 첫 번째 부분을 지니고 있소. 열쇠는 다섯 부분으로 구성되어 있으나, 그것은 물리적인 열쇠는 아니오. 모든 부분들을 다 손에 넣으면 내게로 오시오 - 열쇠는 내 머릿속의 정보를 개방할 것이오. 그 때까지 그 정보는 비밀로 남아 있을 거요. 당신은 열쇠 소유자들을 모두 만족시켜야만 하오." ~ */
  IF ~~ THEN REPLY #48137 /* ~"생각해 보겠소.그 밖에도 질문할 것들이 있소."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~썩은 바스는 내게 노예 상인들로부터 자신의 딸을 구해달라고 부탁했다. 그는 내게 그의 여관에 있는 하모니움 사관 마퀘즈하고 얘기하라고 말했다. ~ */ GOTO 4
  IF ~~ THEN REPLY #48138 /* ~"하지 않겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ JOURNAL #68074 /* ~썩은 바스는 내게 노예 상인들로부터 자신의 딸을 구해달라고 부탁했다. 그는 내게 그의 여관에 있는 하모니움 사관 마퀘즈하고 얘기하라고 말했다. ~ */ GOTO 9
  IF ~~ THEN REPLY #48139 /* ~"하겠소."~ */ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 0.2 0.3 0.4 1.3 2.2 2.3 2.4 4.6 7.4 8.1 12.1 13.1
  SAY #48140 /* ~"내 말을 들으시오... 빌어먹을! 알지도 못하는 사람에게 이런 부탁을 하는 건 정말 싫지만, 당신이 날 도우면 나도 당신을 돕겠소." 그는 서둘러서 다음 말을 한다. "내 딸이 납치당해 곧 팔릴 신세요, 그리고 그 아이의 도움 없이는 나는 이 가게를 잃게 될 거요. 나는 당신에게 도움이 될 정보를 갖고 있소. 당신이 내 등을 긁어 주면 나도 당신 등을 긁어 주겠소. 알겠소?"~ */
  IF ~~ THEN REPLY #48141 /* ~"무엇을 원하시오?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~썩은 바스는 내게 노예 상인들로부터 자신의 딸을 구해달라고 부탁했다. 그는 내게 그의 여관에 있는 하모니움 사관 마퀘즈하고 얘기하라고 말했다. ~ */ GOTO 5
  IF ~~ THEN REPLY #48142 /* ~"관두시오. 나는 지금 바쁘오."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #48143 /* ~"헤. 이 곳은 언제나 말썽투성이요. 우선 그들은 감옥을 더 늘리려고 땅을 파다가 이 디바를 발견했소. 그는 흑요석으로 만든 감옥 안에 갇혀 있었으며, 그를 묶고 있는 사슬은 아예 바닥에 고정되어 있었소. 그들은 그의 칼을 빼앗아 그 마력을 죄수들을 감옥에 감금하는 데 이용하고 있소. 그들은 디바를 어떻게 할 것이냐 대해 논쟁을 벌이고, 그 발견으로부터 최대한의 이익을 챙기고 '친구들'을 배신할 궁리를 하느라 바빴소... 바로 그 때 역병이 번지기 시작했소."~ */
  IF ~~ THEN REPLY #48144 /* ~"역병?"~ */ JOURNAL #48160 /* ~썩은 바스는 내게 시의 관리들이 디바의 감옥을 연지 얼마 되지 않아 커스트가 역병에 의해 마비되었다고 말했다. ~ */ GOTO 12
  IF ~~ THEN REPLY #48145 /* ~"당신은 디바에 대해 무엇을 알고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #48146 /* ~"왜 디바는 감금되었던 거요?"~ */ GOTO 13
  IF ~~ THEN REPLY #48147 /* ~"그 밖에도 질문할 것들이 몇 개 더 있소..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48148 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48159 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #48161 /* ~"이 곳은 각종 소문과 빈정거림의 온상이오. 누구도 남을 믿지 않소. 조건없이 남을 도와주는 사람 따윈 없소. 누구나 자신 이외의 모든 사람을 미워하며, 음해할 기회만 노리고 있소. 당신같은 사람은... 이 곳의 정치적인 역학 관계를 모르기 때문에 사람들에게 있어 좋은 봉이오. 그리고 당신이 철저하게 이용당할 거라는 건 내가 보장하겠소. ~ */
  IF ~~ THEN REPLY #48162 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48163 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48164 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",6)
~ THEN BEGIN 9 // from: 5.1 6.1 14.0
  SAY #48165 /* ~"당신이 날 돕지 않겠다면 나도 당신을 도울 수 없소. 내 가게에서 나가시오."~ */
  IF ~~ THEN REPLY #48166 /* ~"아니오. 당신은 어떤 물건들을 파시오?"~ */ GOTO 11
  IF ~~ THEN REPLY #48167 /* ~"아니오. 난 휴식을 취할 장소가 필요하오."~ */ GOTO 11
  IF ~~ THEN REPLY #48168 /* ~"마음을 바꿨소.당신을 돕겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48169 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 9.2
  SAY #48170 /* ~"마퀘즈가 당신이 해야 할 일을 일러줄 거요, 그리고 당신이 일을 마치면 열쇠를 가지고 있는 다음 사람에게로 안내해 줄 거요."~ */
  IF ~~ THEN REPLY #48171 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~썩은 바스는 내게 노예 상인들로부터 자신의 딸을 구해달라고 부탁했다. 그는 내게 그의 여관에 있는 하모니움 사관 마퀘즈하고 얘기하라고 말했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.1
  SAY #48172 /* ~"날 죽여야만 그걸 얻을 수 있을 거요. 하지만 그런 짓을 하면 당신은 이 도시의 어느 곳에도 가지 못하고 여기서 썩을 거요. 난 농담을 하는 게 아니오. 당신은 절대로 나갈 수가 없소."~ */
  IF ~~ THEN REPLY #48173 /* ~어쨌든 그를 죽인다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #48174 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0
  SAY #48175 /* ~"그렇소. 사람들을 쓰러지게 만드는 병이오. 사람들의 신경을 날카롭게 만들 뿐만 아니라 탈진시켜 아무 일도 할 수 없게 만드오. 경비병들은 시의 일부를 봉쇄했으며, 그들은 모두 몹시 긴장한 상태요. 요즘 같으면 그들은 지극히 하찮은 구실로도 당신을 감옥에 처넣을 거요. 난 당신이 어떻게 이 곳으로 들어왔는지 모르겠소, 하지만 나가려면 전이문이 필요할 거요."~ */
  IF ~~ THEN REPLY #48176 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48177 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48178 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #48179 /* ~그는 당신이 농담을 한 건지 보려고 당신을 유심히 살핀다. "나는 그들이 땅 속에 묻힌 그를 발견했다고 이미 말했소. 그건 나로서는 애당초 그가 어떻게 그 곳에 갇히게 되었는지 알 수가 없다는 얘기요. 내게도 디바를 가둘 정도의 힘이 있었으면 좋겠소. 그런 힘이라면 참 쓸모가 있을 거요."~ */
  IF ~~ THEN REPLY #48180 /* ~"그럼 다른 질문들에 답해주시오."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48181 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48182 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Slavers","GLOBAL",6)
~ THEN BEGIN 14 // from:
  SAY #48183 /* ~그는 질문을 하면서 초조한 기색을 감추려고 노력한다. "내 딸에 대해 뭔가 알아낸 것이라도 있소? 나는 그녀가 걱정되오. 만약 어떤 소식이라도 들으면 마퀘즈에게 얘기를 해주시오."~ */
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48184 /* ~"나는 그녀를 찾지 않겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
  IF ~~ THEN REPLY #48185 /* ~"아직 아니오. 물어볼 것들이 좀 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #48186 /* ~"아직 아니오. 당신은 어떤 물건들을 파시오?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48187 /* ~"아직 아니오. 난 휴식을 취할 장소가 필요하오."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
!Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #48188 /* ~"그렇소. 그녀는 이 곳으로 곧 돌아올 거요. 난 가서 마퀘즈에게 얘기하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66863 /* ~"내가 그녀를 구하려고 하던 도중 그녀는 죽고 말았소. 가서 마퀘즈에게 얘기를 하겠소."~ */ DO ~SetGlobal("Slavers","GLOBAL",7)
~ EXIT
  IF ~~ THEN REPLY #66864 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",7)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
~ THEN BEGIN 15 // from:
  SAY #48189 /* ~그의 눈에는 아직도 비통한 기색이 역력하다. "뭘 원하시오?"~ */
  IF ~~ THEN REPLY #48190 /* ~"이 열쇠란 대체 어떤 것이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #48191 /* ~"당신은 어떤 물건들을 파시오?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48192 /* ~"난 휴식을 취할 장소가 필요하오."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48193 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #48194 /* ~"그것은 열쇠요, 하지만 물리적인 열쇠는 아니오. 무슨 말인지 알겠소? 모든 부분들을 다 손에 넣으면 내게로 오시오 - 열쇠는 내 머릿속의 정보를 개방할 것이오. 그 때까지 그 정보는 비밀로 남아 있을 거요. 당신은 열쇠 소유자들을 모두 만족시켜야만 하오. 원하는 건 그게 전부요?"~ */
  IF ~~ THEN REPLY #48195 /* ~"당신은 어떤 물건들을 파시오?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48196 /* ~"난 휴식을 취할 장소가 필요하오."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48197 /* ~"그렇소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #48198 /* ~"열쇠를 얻는 데 무슨 진전이 있었소? 좀 너무 초조해하는 것처럼 보이오. 꼭 손에 놓을 수 있을 테니 너무 걱정하지 마시오."~ */
  IF ~~ THEN REPLY #48199 /* ~"이 열쇠란 대체 어떤 것이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #48200 /* ~"당신은 어떤 물건들을 파시오?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48201 /* ~"난 휴식을 취할 장소가 필요하오."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48202 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
Global("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #48203 /* ~"당신이 할 일이 하나 더 있소. 저기 있는 첵'카 플루트라는 술취한 자식이 보이오? 가서 그를 죽이시오." 그는 목소리를 높인다. "이봐, 첵'카! 자네를 위해 저승사자가 왔네!"~ */
  IF ~~ THEN EXTERN ~DCHEKKA~ 4
END

IF WEIGHT #3 ~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
GlobalGT("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #48204 /* ~"이제 그 술취한 얼간이를 죽였으니 문을 열 수가 있소. 갈 준비는 되었소? 다시는 돌아올 수가 없소. 일단 당신이 지나가고 나면 문은 잠기고, 빗장도 걸리며, 마법으로 보호될 것이오. 지금 가겠소?"~ */
  IF ~~ THEN REPLY #48205 /* ~"나는 이제 준비가 됐소."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48206 /* ~"먼저 여관에서 휴식을 취하고 싶소."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48207 /* ~"먼저 당신이 파는 물건들부터 보고 싶소."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48208 /* ~"아직 아니오."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3 21.3
  SAY #48209 /* ~"그럼 준비를 마치거든 내게 다시 와서 얘기를 해주시오."~ */
  IF ~~ THEN REPLY #48210 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 ~  Global("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 21 // from:
  SAY #48211 /* ~"갈 준비는 되었소? 다시는 돌아올 수가 없소. 일단 당신이 지나가고 나면 문은 잠기고, 빗장도 걸리며, 마법으로 보호될 것이오. 지금 가겠소?"~ */
  IF ~~ THEN REPLY #48212 /* ~"나는 이제 준비가 됐소."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48213 /* ~"먼저 여관에서 휴식을 취하고 싶소."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48214 /* ~"먼저 당신이 파는 물건들부터 보고 싶소."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48215 /* ~"아직 아니오."~ */ GOTO 20
END
