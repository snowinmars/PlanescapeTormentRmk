// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHERMIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHERMIT~

IF ~  Global("Know_Hermit","GLOBAL",0)
CreatureInArea("AR0708")
~ THEN BEGIN 0 // from:
  SAY #57262 /* ~세월과 어둠 속에서의 생활 때문에 찌든, 구부정하고 더러운 남자가 보인다. 당신을 훔쳐보면서 그의 길고 기름에 전 머리가 휘날린다, 그리고 그의 눈은 두려움으로 크게 벌어진다. 그의 손가락은 비밀스런 패턴으로 뒤틀리기 시작한다...~ */
  IF ~~ THEN REPLY #57263 /* ~"괜찮소... 난 당신을 해치지 않을 것이오."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #57264 /* ~그가 주문을 완성하기 전에 공격한다.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57265 /* ~기다리며 어떤 일이 일어나는지 지켜본다. ~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
END

IF ~  Global("Know_Hermit","GLOBAL",1)
CreatureInArea("AR0708")
~ THEN BEGIN 1 // from:
  SAY #57266 /* ~은자는 당신으로부터 화급히 물러나서 손을 비밀스런 패턴으로 흔든다. "물러서라, 사악... 오, 당신이군. 이제 이 늙은 은자에게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #57267 /* ~"당신 자신에 대해 다시 얘기해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #57268 /* ~"이 곳에 대해 얘기해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #57269 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.2
  SAY #57271 /* ~"오, 또 다른 방문자군. 모두들 이 늙은이를 놀라게 하려고 작심을 한 거요? 이 곳의 터널들은 산책을 할 만한 곳이 아니오. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #57272 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #57273 /* ~"이 곳 지하에는 무엇이 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #57274 /* ~"당신과는 상관없는 일이오."~ */ GOTO 6
  IF ~~ THEN REPLY #57275 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #15954 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.3 4.0 5.1
  SAY #57277 /* ~그는 시끄럽게 한숨을 쉰다, 그리고 갑자기 멈춘 후, 주변을 두리번거린다. "내가 커스트로 온 것은 내가 모시는 신이 카케리로 추방되었기 때문이오. 나는 그분이 계신 곳으로 계속 가까이 가고 있으나, 그분을 따라 감옥 차원으로 들어갈 생각은 없소. 나는 그분을 구출할 방법을 모색하고 있소. 그분께서는 선한 신이시기 때문에 그런 곳으로 추방당하는 것은 말도 되지 않소. 하지만 그게 추방당한 자의 운명인가 보오."~ */
  IF ~~ THEN REPLY #57278 /* ~"당신은 이 곳에 얼마 동안이나 있었소?"~ */ GOTO 7
  IF ~~ THEN REPLY #57279 /* ~"혹시 이 근처에서 디바를 본 적은 없소?"~ */ GOTO 5
  IF ~~ THEN REPLY #57280 /* ~"어쨌든 이 장소에 대해서 무슨 이야기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #57281 /* ~"당신은 프리스트요? 당신에게 치료를 받을 수가 있겠소?"~ */ DO ~StartStore("Hermit",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57282 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.2 5.0
  SAY #57283 /* ~"이 곳 말이오? 이 곳은 괴물, 범죄자 - 참고로 말하겠는데 나는 범죄자가 아니오, 그리고 남을 해치려는 자들로 득실거리고 있소. 그래도 지상보다는 안전하오. 적어도 여기서는 자신이 어떤 위치에 있는지는 알 수가 있으니까. 지상은 전혀 그렇지 못하오."~ */
  IF ~~ THEN REPLY #57284 /* ~"이 곳에서 대체 무슨 일을 하고 있는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #57285 /* ~"이 근처에서 디바를 본 적이 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #57286 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.0 3.1 4.1
  SAY #57287 /* ~"소문은 들었소, 하지만 이 늙은이가 직접 보지는 못했소. 아마 지하일 거요, 이 곳에는 온갖 것들을 가두어 두니까. 하지만 나도 아직 그를 발견하지는 못했소. 만약 그를 발견한다면, 나는 그에게 내 신에 대해 아는 바가 없는지 물어볼 생각이오." 그는 또 한숨을 쉬고는 복도 저편을 바라본다. "왠지 나는 그가 저 서쪽에 있을 것 같다는 생각이 드오. 하지만 난 아직까지 그를 발견하지 못했소. 아마 그를 지키고 있는 자가 있을지도 모르오. "그는 당신에게 눈짓을 한다.  ~ */
  IF ~~ THEN REPLY #57288 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #57289 /* ~"이 곳에서 대체 무슨 일을 하고 있는 거요?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #57290 /* ~"고맙소. 안녕히 계시오."~ */ DO ~GiveItem("SPWI704",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #57291 /* ~"흥! 늙은이를 아무 이유도 없이 그렇게 놀라게 하다니. 그만 가보시오!" 그는 손을 흔들더니 재빨리 자리를 뜨기 시작한다. ~ */
  IF ~~ THEN REPLY #57292 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #57293 /* ~"너무나  긴 세월 동안이오... 거의 잊혀진 신을 위하여. 하지만 나는 그분을 기억하오... 이 곳에 있는 모든 괴물들을 영원토록 피하고 다니는 한이 있더라도 나는 그 분을 찾아내고야 멀 것이오." 그는 중얼거리며 다른 데로 시선을 돌린다. ~ */
  IF ~~ THEN REPLY #57294 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 8 // from:
  SAY #57295 /* ~세월과 어둠 속에서의 생활 때문에 찌든, 구부정하고 더러운 남자가 보인다. 그가 주변을 두리번거리자 그의 길고 기름에 전 머리가 휘날린다. 당신을 발견하자 그는 불쑥 말을 꺼낸다. "쓰레기 관리인 카이스가 내게 당신이 올 거라고 얘기해주었소. 디바는 강대하오, 여행자, 그리고 그를 지금 상대하느니 당신 사망증명서에 서명하는 편이 나을 거요. 당신은 이 도시의 혼란을 가라앉힘으로서 그를 약하게 할 수 있소... 그는 그것으로부터 에너지를 빨아들이고 있소."~ */
  IF ~~ THEN REPLY #57296 /* ~"어떻게 그걸 아시오?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57297 /* ~"어쨌든 난 위로 올라가겠소."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57298 /* ~"비키시오, 늙은이."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #57299 /* ~세월과 어둠 속에서의 생활 때문에 찌든, 구부정하고 더러운 남자가 보인다. 그가 주변을 두리번거리자 그의 길고 기름에 전 머리가 휘날린다. 당신을 발견하자 그는 불쑥 말을 꺼낸다. "쓰레기 관리인 카이스가 내게 당신이 올 거라고 얘기해주었소. 디바는 아직 강대하오, 여행자, 그러나 당신의 행동이 그를 약화시켰소. 당신은 이 도시의 혼란을 한층 가라앉힘으로서 그를 더욱 약하게 할 수 있소... 그는 아직도 그것으로부터 에너지를 빨아들이고 있소."~ */
  IF ~~ THEN REPLY #57300 /* ~"어떻게 그걸 아시오?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57301 /* ~"난 그와 대적할 준비가 됐소."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57302 /* ~"비키시오, 늙은이."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 10 // from:
  SAY #57303 /* ~세월과 어둠 속에서의 생활 때문에 찌든, 구부정하고 더러운 남자가 보인다. 그가 주변을 두리번거리자 그의 길고 기름에 전 머리가 휘날린다. 당신을 발견하자 그는 불쑥 말을 꺼낸다. "쓰레기 관리인 카이스가 내게 당신이 올 거라고 얘기해주었소. 당신은 그를 약화시키는 데 성공했소... 이 도시의 혼란은 거의 가라앉았으며 그의 계획운 수포로 돌아가고 있소. 가서 마무리를 지으시오."~ */
  IF ~~ THEN REPLY #57304 /* ~"어떻게 그걸 아시오?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57305 /* ~"물론이오. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #57306 /* ~지하에서 만난 적이 있는 늙은 은자가 보인다. 당신을 발견하자 그는 불쑥 말을 꺼낸다. "쓰레기 관리인 카이스가 내게 당신이 올 거라고 얘기해주었소. 디바는 강대하오, 여행자, 그리고 그를 지금 상대하느니 당신 사망증명서에 서명하는 편이 나을 거요. 당신은 이 도시의 혼란을 가라앉힘으로서 그를 약하게 할 수 있소... 그는 그것으로부터 에너지를 빨아들이고 있소."~ */
  IF ~~ THEN REPLY #57307 /* ~"어떻게 그걸 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #57308 /* ~"어쨌든 난 위로 올라가겠소."~ */ GOTO 15
  IF ~~ THEN REPLY #57309 /* ~"비키시오, 늙은이."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #57310 /* ~지하에서 만난 적이 있는 늙은 은자가 보인다. 당신을 발견하자 그는 불쑥 말을 꺼낸다. "쓰레기 관리인 카이스가 내게 당신이 올 거라고 얘기해주었소. 디바는 아직 강대하오, 여행자, 그러나 당신의 행동이 그를 약화시켰소. 당신은 이 도시의 혼란을 한층 가라앉힘으로서 그를 더욱 약하게 할 수 있소... 그는 아직도 그것으로부터 에너지를 빨아들이고 있소."~ */
  IF ~~ THEN REPLY #57311 /* ~"어떻게 그걸 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #57312 /* ~"난 그와 대적할 준비가 됐소."~ */ GOTO 15
  IF ~~ THEN REPLY #57313 /* ~"비키시오, 늙은이."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #57317 /* ~세월과 어둠 속에서의 생활 때문에 찌든, 구부정하고 더러운 남자가 보인다. 그가 주변을 두리번거리자 그의 길고 기름에 전 머리가 휘날린다. 당신을 발견하자 그는 불쑥 말을 꺼낸다. "쓰레기 관리인 카이스가 내게 당신이 올 거라고 얘기해주었소. 당신은 그를 약화시키는 데 성공했소... 이 도시의 혼란은 거의 가라앉았으며 그의 계획운 수포로 돌아가고 있소. 가서 마무리를 지으시오."~ */
  IF ~~ THEN REPLY #57315 /* ~"어떻게 그걸 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #57316 /* ~"물론이오. 안녕히 계시오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 8.0 9.0 10.0 11.0 12.0 13.0
  SAY #57318 /* ~"나는 그가 저 위에서 불타는 달처럼 찼다 이울었다 하고 있는 것을 *느낄* 수가 있소. 나는 그가 당신이 언제 올지 궁금해 하고 있는 것을 *들을* 수가 있소. 그는 대결을 열망하고 있소." ."~ */
  IF ~~ THEN REPLY #57319 /* ~"그는 곧 원하는 것을 얻을 것이오, 하지만 지금 당장은 아니오. 안녕히 계시오."~ */ GOTO 15
  IF ~~ THEN REPLY #57320 /* ~"그렇다면 그는 원하는 것을 얻을 것이오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 8.1 9.1 10.1 11.1 12.1 13.1 14.0 14.1
  SAY #57321 /* ~"가기 전에... 이 노인의 축복을 받겠소? 당신이 디바와 다른 끔찍한 괴물들을 상대하는 데 도움이 될지도 모르오. 내가 당신을 치료하기를 원하시오?"~ */
  IF ~~ THEN REPLY #57322 /* ~"사양하겠소."~ */ GOTO 18
  IF ~~ THEN REPLY #57323 /* ~"아니오. 자, 내 앞길을 막지 말고 비키시오."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57324 /* ~"그렇소.."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57325 /* ~"그렇소."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 8.2 9.2 11.2 12.2
  SAY #57326 /* ~그는 놀랄 정도로 강건한 팔을 당신 가슴에 얹는다. "가기 전에 내 축복을 받겠소? 나는 당신의 그 흉터투성이 얼굴이 싫소, 하지만 당신이 만반의 준비를 하고 가도록 하는 것은 내 신성한 임무요... 이건 당신만의 문제가 아니오. 내가 당신의 상처를 치료하도록 해주시오."~ */
  IF ~~ THEN REPLY #57327 /* ~"난 당신 축복 따위는 원하지 않소. 비키시오."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57328 /* ~"좋소."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57329 /* ~"좋소."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57331 /* ~"그렇다면 그의 앞에서 피를 흘릴 때 내가 했던 말을 기억하시오." 그는 얼굴을 찡그린다. "이런 말 하기는 싫지만, 행운을 비오."~ */
  IF ~~ THEN REPLY #57332 /* ~"그래, 고맙소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.0
  SAY #57334 /* ~"그럼 가시오. 실패해서는 안 되오, 상처 입은 자여." 그는 당신에게 머리를 숙인다.~ */
  IF ~~ THEN REPLY #57335 /* ~"고맙소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 16.1
  SAY #57338 /* ~그는 눈을 감고 정신을 집중하면서 말한다. "내가 당신의 상처를 치료하도록 해주시오." 그는 눈을 뜬다. "이제 가시오."~ */
  IF ~~ THEN REPLY #57340 /* ~"고맙소."~ */ DO ~FullHeal(Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 16.2 21.0 21.1 21.2 21.3 21.4 21.5 21.6 21.7
  SAY #57342 /* ~"누가 내 도움을 필요로 하오?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57344 /* ~"나요."~ */ DO ~FullHeal(Protagonist)
~ GOTO 21
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57349 /* ~"안나."~ */ DO ~FullHeal("Annah")
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57351 /* ~"모트."~ */ DO ~FullHeal("Morte")
~ GOTO 21
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57355 /* ~"다콘."~ */ DO ~FullHeal("Dakkon")
~ GOTO 21
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57356 /* ~"노돔."~ */ DO ~FullHeal("Nordom")
~ GOTO 21
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57358 /* ~"훨-후럼-그레이스."~ */ DO ~FullHeal("Grace")
~ GOTO 21
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57360 /* ~"이그너스."~ */ DO ~FullHeal("Ignus")
~ GOTO 21
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57362 /* ~"베일로."~ */ DO ~FullHeal("Vhail")
~ GOTO 21
  IF ~~ THEN REPLY #57366 /* ~"우리들 중 누구도 필요로 하지 않소. 하지만 축복에는 감사하오. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6 20.7
  SAY #57367 /* ~"됐소. 내가 치료해 줄 사람은 더 없소?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57368 /* ~"나요."~ */ DO ~FullHeal(Protagonist)
~ GOTO 20
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57369 /* ~"안나."~ */ DO ~FullHeal("Annah")
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57370 /* ~"모트."~ */ DO ~FullHeal("Morte")
~ GOTO 20
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57372 /* ~"다콘."~ */ DO ~FullHeal("Dakkon")
~ GOTO 20
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57373 /* ~"노돔."~ */ DO ~FullHeal("Nordom")
~ GOTO 20
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57374 /* ~"훨-후럼-그레이스."~ */ DO ~FullHeal("Grace")
~ GOTO 20
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57375 /* ~"이그너스."~ */ DO ~FullHeal("Ignus")
~ GOTO 20
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57376 /* ~"베일로."~ */ DO ~FullHeal("Vhail")
~ GOTO 20
  IF ~~ THEN REPLY #57377 /* ~"우리들 중 누구도 필요로 하지 않소. 하지만 축복에는 감사하오. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.3 2.4
  SAY #68484 /* ~"그러겠소? 그럼 좋소. 여기 누울 곳이 있소... 몬스터가 나타나면 알려 주리다.~ */
  IF ~~ THEN REPLY #32017 /* ~"고맙소."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END
