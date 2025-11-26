// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGCORV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGCORV~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 22 20 21 33 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37282 /* ~플레이트 아머를 입은 장신의 남자가 보인다. 갑옷은 어깨, 팔꿈치, 그리고 팔뚝 부분에 가시가 박혀 있는 특이한 디자인이다. 당신이 다가가자 그는 가볍게 인사를 하나, 그의 시선은 시장 쪽을 향하고 있다. "안녕하시오, 나는 경비병 코버스라고 하오."~ */
  IF ~~ THEN REPLY #37283 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37284 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37285 /* ~"내가 어떻게 도와드리면 되겠소?" 그는 친절한 표정을 짓고 있으나, 그의 시선은 당신 어깨 너머를 향하고 있다. ~ */
  IF ~~ THEN REPLY #37286 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37287 /* ~"지금은 도움이 필요 없소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.2 8.1 9.0 11.0 12.0 13.1 14.2 16.0 17.0 18.0 19.0 22.0 23.0 25.1 26.0 28.2 29.1 30.0 31.2 33.0 34.0 35.4 36.0 42.0 43.1 44.0
  SAY #37288 /* ~그는 고개를 끄덕인다. "내가 도울 수 있다면 도우리다." 그는 시장 쪽을 관망하고 있다.~ */
  IF ~~ THEN REPLY #37289 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37290 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 6
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37291 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Know_Lenny","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37292 /* ~"당신은 렌니란 사람을 아시오?"~ */ GOTO 24
  IF ~  Global("Know_Byron","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37293 /* ~"당신은 바이런 픽잇이란 사람을 아시오?"~ */ GOTO 27
  IF ~  Global("Know_Anarchists","GLOBAL",1)
~ THEN REPLY #37294 /* ~"당신은 창고에 아나키스트들이 있다는 사실을 아시오?"~ */ GOTO 35
  IF ~~ THEN REPLY #37295 /* ~"나는 무기를 구입하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #37296 /* ~"나는 마법 아이템을 구입하고 싶소."~ */ GOTO 12
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37297 /* ~그가 무엇을 바라보고 있는지 본다.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37298 /* ~그가 무엇을 바라보고 있는지 본다.~ */ GOTO 19
  IF ~  !Global("Byron_Arrested","GLOBAL",1)
Global("Corvus_Zac","GLOBAL",1)
~ THEN REPLY #24718 /* ~"나는 당신과 잭이라는 상인에 대해 얘기하고 싶소."~ */ JOURNAL #66255 /* ~하모니움 경비병인 코버스는 잭이라는 상인의 살인범을 밝힐 증거를 찾고 있다. 나도 유심히 살펴보는 것이 좋을 듯하다. ~ */ GOTO 42
  IF ~~ THEN REPLY #66254 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37299 /* ~그는 가볍게 고개를 끄덕인다. "나는 하모니움 경비병 코버스요. 나는 이 시장의 치안을 유지하오." 그는 잠시 주변을 둘러보더니 당신을 쳐다본다. ~ */
  IF ~~ THEN REPLY #37300 /* ~"하모니움에 대해 얘기해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #37301 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37302 /* ~"우리의 신념은 간단하오: 우리는 빛이오. 우리는 길이오. 우리는 질서요. 우리는 진실이오. 우리는 이 곳 시길의 질서와 치안을 유지하오. 우리는 이 도시의 경찰 역할을 하오." 그는 다시 주위를 둘러본다.~ */
  IF ~~ THEN REPLY #37303 /* ~"다른 당파들에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #37304 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37305 /* ~"나는 그들에 대해 별로 아는 바가 없소. 미안하지만 각 당파의 대변인에게 직접 질문하는 것이 좋을 거요." 그는 미소를 지은 후 주위를 둘러본다.~ */
  IF ~~ THEN REPLY #37306 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 2.1 10.0
  SAY #37307 /* ~그는 시선을 당신에게로 돌리고 눈살을 찌푸린다. "로타는 건드리지 마시오. 그를 찾으려는 건 별로 좋은 생각이 아니오."~ */
  IF ~~ THEN REPLY #37308 /* ~"왜?"~ */ JOURNAL #66533 /* ~나는 하모니움 경비병인 코버스와 로타에 대해 얘기를 나누었다. 그는 내게 로타는 매우 강대하니 함부로 대해서는 안된다고  경고했다. 설령 그럴지라도 나는 그를 만나야만 한다. ~ */ GOTO 7
  IF ~~ THEN REPLY #37309 /* ~"그래도 나는 그를 찾아야만 하오."~ */ JOURNAL #66534 /* ~코버스의 말에 의하면 로타는 마계구에 있는 흉가에 가면 만날 수 있다고 한다.~ */ GOTO 9
  IF ~~ THEN REPLY #37310 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37311 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37312 /* ~그는 먼 곳을 쳐다보며 얼굴을 찌푸린다. "나는 하모니움 사관인 동시에 현실주의자요. 현실주의자로서 나는 법 위에 존재하는 자들도 있다는 사실을 알고 있소. 그게 인생이오." 그는 잠시 멈춘다.~ */
  IF ~~ THEN REPLY #37313 /* ~"계속하시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37314 /* ~"법을 두려워하지 않는 사람들 중에는 시 고위층에 비호 세력이 있는 자들도 있고, 또 스스로의 권력과 다른 이들에게 공포를 심어 줄 수 있는 능력 때문에 그러는 자들도 있소. 로타의 힘은 강대하오. 당신이 내 말을 이해할 지는 모르겠지만, 어쨌든 그는 아무도 건드릴 수 없는 존재요." ~ */
  IF ~~ THEN REPLY #37315 /* ~"그래도 난 그를 찾아야만 하오."~ */ JOURNAL #66534 /* ~코버스의 말에 의하면 로타는 마계구에 있는 흉가에 가면 만날 수 있다고 한다.~ */ GOTO 9
  IF ~~ THEN REPLY #37316 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37317 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #37318 /* ~그는 시장을 쳐다보면서 한숨을 쉰다. "좋소. 그의 집은 이 곳 남쪽에 있는 흉가요. 행운을 빌겠소."~ */
  IF ~~ THEN REPLY #37319 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37320 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37321 /* ~그는 대답을 하기 전에 잠시 당신을 빤히 쳐다본다. "그건 뼈들의 지배자 로타가 할 만한 짓 같소."~ */
  IF ~~ THEN REPLY #37322 /* ~"이 '로타'란 사람은 어디 가면 만날 수 있소?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 2.6
  SAY #37323 /* ~"안제와 얘기하시오. 그가 당신을 도울 수 있을 거요. 그는 아궁이 옆에 있소."~ */
  IF ~~ THEN REPLY #37324 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37325 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.7
  SAY #37326 /* ~"엘렉과 얘기하시오. 그가 당신을 도울 수 있을 거요. 그는 시장의 반대편에 있소."~ */
  IF ~~ THEN REPLY #37327 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37328 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 18.1
  SAY #37329 /* ~당신은 어깨 너머로 카리나가 근처에서 어슬렁거리고 있는 것을 본다. 코버스는 그녀에게 온 정신이 팔려 있는 듯하다. ~ */
  IF ~~ THEN REPLY #37330 /* ~"그녀의 이름은 카리나요."~ */ GOTO 14
  IF ~~ THEN REPLY #37331 /* ~그 상황을 모르는 체한다.~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37332 /* ~그는 다시 시선을 당신 쪽으로 돌린다. "실례지만 혹시 그녀를 알고 있소?" 그는 카리나를 다시 쳐다본다. "천사같은 목소리에 너무나 귀엽소..." ~ */
  IF ~~ THEN REPLY #37333 /* ~"그렇소, 그리고 그녀는 또한 외로워 하고 있소... 나는 그녀가 당신같은 신사라면 기꺼이 친구로 받아들일 거라고 생각하오."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~하모니움 경비병인 코버스는 카리나라는 아가씨에게 반한 듯하다. 나는 그에게 그녀가 외로우며 친구를 원한다고 말해주었다. ~ */ GOTO 15
  IF ~~ THEN REPLY #37334 /* ~"물론이오. 다른 구애자들도 다 그녀에 대해 같은 생각를 하고 있음에 틀림없소..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Corvus_1","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #37335 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 14.0 18.3
  SAY #37336 /* ~그는 당신을 흘긋 보더니 다시 카리나를 바라본다. "잠시 실례하겠소." 그는 당신을 돌아서 카리나가 있는 곳으로 향한다. ~ */
  IF ~~ THEN REPLY #37342 /* ~"좋소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #37343 /* ~코버스는 환히 웃으며 당신 있는 곳으로 돌아온다. "고맙소, 친구. 정말 멋진 아가씨요..." 그는 황홀한지 눈이 좀 흐리멍덩하다.~ */
  IF ~~ THEN REPLY #37344 /* ~"천만의 말씀이오. 당신에게 물어볼 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37345 /* ~"안녕히 계시오, 코버스."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #37346 /* ~그는 한숨을 쉬고 시선을 다시 당신에게로 돌린다. 그는 지금 별로 기분이 좋지 않은 듯하다. "뭐라고 했소?"~ */
  IF ~~ THEN REPLY #37347 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 22 20 21 33 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37348 /* ~하모니움 경비병 코버스가 보인다. "다시 만나 반갑소. 어떤 도움이 필요하시오?" 그는 당신 어깨 너머를 흘긋 쳐다보며 누군가를 찾고 있는 것 같다. ~ */
  IF ~~ THEN REPLY #37349 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37350 /* ~그가 무엇을 바라보고 있는지 본다.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37351 /* ~그가 무엇을 바라보고 있는지 본다.~ */ GOTO 19
  IF ~  Global("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37352 /* ~"나는 카리나가 아무하고도 사귀고 있지 않다는 사실을 알아냈소. 나는 그녀가 당신같은 신사라면 기꺼이 친구로 받아들일 거라고 생각하오."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~하모니움 경비병인 코버스는 카리나라는 아가씨에게 반한 듯하다. 나는 그에게 그녀가 외로우며 친구를 원한다고 말해주었다. ~ */ GOTO 15
  IF ~~ THEN REPLY #37353 /* ~"지금은 도움이 필요 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.9 18.2
  SAY #37354 /* ~당신은 어깨 너머로 어떤 아가씨가 시장 안을 돌아다니고 있는 것을 본다. 코버스는 그녀에게 온 정신이 팔려 있는 듯하다. ~ */
  IF ~~ THEN REPLY #37355 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37356 /* ~"당신은 뭔가에 몰두하고 있는 것 같소. 뭘 바라보고 있소?"~ */ GOTO 43
  IF ~~ THEN REPLY #66273 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 33 even though they appear after this state */
~  Dead("Karina")
~ THEN BEGIN 20 // from:
  SAY #37357 /* ~하모니움 경비병이 보인다. 그는 괴로워하는 듯하며, 간신히 평정을 유지하고 있다. "용서하시오. 지금은 당신과 얘기할 수가 없소... 나는 너무나도 슬픈 일을 당해서 혼자서 조용히 있고 싶소."~ */
  IF ~~ THEN REPLY #37358 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 33 even though they appear after this state */
~  Dead("Karina")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #37359 /* ~하모니움 경비병 코버스가 보인다. 그는 괴로워하는 듯하며, 간신히 평정을 유지하고 있다. "용서하시오. 지금은 당신과 얘기할 수가 없소... 나는 너무나도 슬픈 일을 당해서 혼자서 조용히 있고 싶소."~ */
  IF ~~ THEN REPLY #37360 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 even though they appear after this state */
~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #37361 /* ~하모니움 경비병 코버스가 보인다. 당신이 다가가자 그는 미소를 지으며 가볍게 고개를 끄덕인다. "안녕하시오, 친구. 잘 지내고 있기를 바라겠소."~ */
  IF ~~ THEN REPLY #37362 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37363 /* ~"당신과 카리나는 어떻게 지내고 있소?"~ */ GOTO 23
  IF ~~ THEN REPLY #37364 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #37365 /* ~그는 환한 미소를 짓는다. "우리는 잘 지내고 있소, 고맙소. 당신의 친절에 대해서는 정말 감사하오."~ */
  IF ~~ THEN REPLY #37366 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37367 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3
  SAY #37368 /* ~그는 생각을 하느라 눈살을 찌푸린다. "렌니... 그래, 그런 이름의 도둑을 알고 있소. 그는 주로 공성탑 부근에서 어슬렁거리오."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37369 /* ~"내게 그에 대해 어떤 얘기를 해줄 수가 있겠소."~ */ JOURNAL #36025 /* ~코버스는 렌니가 체포되는 것을 여러 차례 회피한 도둑의 달인이라고 한다. 또한 렌니는 남을 함부로 해치지 않는 도의심이 강한 사람이라고 한다.~ */ GOTO 25
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37370 /* ~"내게 그에 대해 어떤 얘기를 해줄 수가 있겠소."~ */ GOTO 30
  IF ~~ THEN REPLY #37371 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #37373 /* ~"공식적으로는 아무 것도 없소." 그는 대답하기 전에 잠시 입을 다문다. "비공식적으로 그는 도둑, 그것도 달인이오. 비록 도둑이기는 하지만 그는 명확한 윤리관을 지니고 있는 듯하오. 그는 남을 죽이거나 해친 적은 없소. 법망을 교묘하게 피한 적은 여러 번 있지만..." 그는 잠시 멈춘다.~ */
  IF ~~ THEN REPLY #37374 /* ~"그 밖에 다른 건?"~ */ JOURNAL #36024 /* ~코버스는 렌니에게 등을 보일 정도로 그를 신뢰한다고 내게 말했다. ~ */ GOTO 26
  IF ~~ THEN REPLY #37375 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37376 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37377 /* ~"그렇소... 렌니에게라면 내 등을 보일 수도 있소. 내게 그러한 평을 들을 수 있는 사람은 얼마되지 않으나 렌니는 그들 중 하나요." 그는 어깨를 으쓱한다. "그게 전부요, 친구."~ */
  IF ~~ THEN REPLY #37378 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37379 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.4
  SAY #37380 /* ~그는 눈살을 찌푸리며 고개를 끄덕인다. "그렇소, 나는 바이런을 잘 아오."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37381 /* ~"그에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ JOURNAL #36023 /* ~코버스에 의하면 바이런 픽잇은 범죄용의자라고 한다. 그는 마계구의 개방 시장에서 일어나는 대부분의 범죄의 배후에 있는 것으로 의심받고 있다. ~ */ GOTO 28
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37382 /* ~"내게 그에 대해 어떤 얘기를 해줄 수가 있겠소."~ */ GOTO 30
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37383 /* ~"나는 그가 이 곳 시길에서 범죄 행위를 하고 있다는 사실을 입증하는 증거를 가지고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #37384 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #37385 /* ~"공식적으로는 아무 것도 없소." 그는 대답하기 전에 잠시 입을 다문다. "비공식적으로 그는 시장에서 일어나는 모든 범죄의 흑막이라는 혐의가 짙소. 우리는 그가 잭이라는 상인을 살해했다고 생각하고 있소. 그의 범죄 혐의 리스트는 상당히 방대하오." 그는 잠시 멈춘다.~ */
  IF ~~ THEN REPLY #37386 /* ~"그 밖에 다른 건?"~ */ JOURNAL #37391 /* ~코버스는 자기라면 결코 바이런 픽잇에게 배후를 보이거나 어느 장소에서든 그와  단둘이 있지는 않겠다고 말한다. ~ */ GOTO 29
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37387 /* ~"나는 그가 이 곳 시길에서 범죄 행위를 하고 있다는 사실을 입증하는 증거를 가지고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #37388 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37389 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37392 /* ~"그렇소... 그에게는 결코 내 등 뒤를 보이고 싶지 않소, 그리고 그와 어느 곳에서든 단둘이 있는 건 생각하기도 싫소." 그는 어깨를 으쓱한다. "그게 전부요, 친구."~ */
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37393 /* ~"나는 그가 이 곳 시길에서 범죄 행위를 하고 있다는 사실을 입증하는 증거를 가지고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #37394 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37395 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.1 27.1
  SAY #37396 /* ~그는 단호한 표정을 짓는다. "그에 대해 내가 아는 것은 모두 하모니움의 공무와 관련이 있소. 그러한 일에 대해 알지도 못하는 사람과 얘기할 수는 없소. 당신을 더 잘 알게 된 후라면 모를까..."~ */
  IF ~~ THEN REPLY #37397 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37398 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 28.1 29.0
  SAY #37399 /* ~그는 관심을 가지고 당신을 바라본다. "오? 이 증거란 것을 내가 볼 수 있겠소?" ~ */
  IF ~  !Dead("Byron")
~ THEN REPLY #37400 /* ~그에게 서류를 준다.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~나는 하모니움 경비병인 코버스에게 바이런 픽잇이 범죄자라는 증거를 주었다. 그는 바이런을 체포했으며 놈이 법정에서 응분의 심판을 받도록 할 것이다. ~ */ GOTO 32
  IF ~  Dead("Byron")
~ THEN REPLY #37401 /* ~그에게 서류를 준다.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~나는 하모니움 경비병인 코버스에게 바이런 픽잇이 범죄자라는 증거를 주었다. 그는 바이런을 체포했으며 놈이 법정에서 응분의 심판을 받도록 할 것이다. ~ */ GOTO 34
  IF ~~ THEN REPLY #37402 /* ~"그 일에 대해서는 잠시 생각해 보겠소. 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39441 /* ~"이만 가야할 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #37404 /* ~그는 서류를 철저하게 살펴본 후 접어서 넣는다. 그는 고개를 끄덕이며 미소를 짓는다. "정말 잘 했소. 이 서류들은 그 내용이 매우 소상하오. 내가 책임지고 바이런 픽잇이 법정에 서도록 만들겠소." 그는 당신에게 경례를 한 후 떠나려고 돌아선다. "곧 돌아오리다."~ */
  IF ~~ THEN REPLY #37405 /* ~"좋소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Byron_Arrested","GLOBAL",1)
~ GOTO 33
END

IF WEIGHT #1 ~  Global("Byron_Arrested","GLOBAL",3)
~ THEN BEGIN 33 // from: 32.0
  SAY #37406 /* ~그는 곧 돌아와서 당신을 보며 미소짓는다. "다 끝났소. 픽잇은 구속되었으며 증거는 법정에 제출되었소. 그는 곧 재판을 받게 될 것이오." 그는 가볍게 고개를 끄떡여 당신에게 경의를 표한다. "다시 한 번 감사하오."~ */
  IF ~~ THEN REPLY #37407 /* ~"천만의 말씀이오. 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37408 /* ~"고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #39442 /* ~그는 서류를 철저하게 살펴본 후 접어서 옥 속에 넣는다. 그는 고개를 끄덕이며 미소를 짓는다. "정말 잘 했소. 나는 법정 앞에 이 서류들을 계시하여 만인이 바이런의 악행을 알 수 있도록 하겠소." 그는 눈살을 찌푸린다. "하지만 바이런 픽잇은 이미 죽어서 신들의 심판을 기다리고 있소.."~ */
  IF ~~ THEN REPLY #39443 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39444 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.5
  SAY #43033 /* ~그는 깊은 생각에 잠겨 잠시 눈살을 찌푸린다. "아나키스트들은 시 전체에 널리 퍼져 있소. 하지만, 그들이 법을 어기기 전에는 우리도 어쩔 도리가 없소." ~ */
  IF ~  Global("Kill_Vorten","GLOBAL",0)
~ THEN REPLY #43034 /* ~"나는 그들이 말썽을 일으키기 전에 처리되어야만 하는 위험분자들이라고 생각했는데 아니오?"~ */ GOTO 36
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #43035 /* ~"그들의 리더는 내게 3급 사관 보텐이라는 하모니움 사관을 죽여 달라고 부탁했소."~ */ GOTO 37
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #43036 /* ~"나는 신뢰할 수 있는 출처로부터 그들이 3급 사관 보텐의 죽음에 책임이 있다는 얘기를 들었소."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",5)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 40
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #43037 /* ~"나는 신뢰할 수 있는 출처로부터 그들이 3급 사관 보텐의 죽음에 책임이 있다는 얘기를 들었소."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",6)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 41
  IF ~~ THEN REPLY #43038 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #43039 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #43040 /* ~그는 한숨을 쉰다. "나도 그 의견에는 동의하오. 하지만, 범죄 사실을 입증할 증거도 없이 마구잡이로 잡아들이는 것은 옳지 않소. 만약 당신이 내게 정당한 이유를 제시한다면, 내가 이 아나키스트들이 상응하는 벌을 받도록 조치하겠소. 하지만 그렇지 않다면, 그들에게도 집회와 언론의 자유는 있소."~ */
  IF ~~ THEN REPLY #43041 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #43042 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #43043 /* ~그는 우려하는 표정으로 당신을 본다. "그건 매우 심각한 혐의요. 정말 그러한 고발을 하겠소?"~ */
  IF ~~ THEN REPLY #43044 /* ~"그렇소."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",4)
AddexperienceParty(2000)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #66535 /* ~나는 코버스에게 아나키스트가 내게 품계 3 보텐을 죽여달라고 부탁했다고 털어놓았다. 그는 그들을 알아서 처리하겠다고 말했다. ~ */ GOTO 38
  IF ~~ THEN REPLY #43045 /* ~"아니, 관두겠소."~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #43046 /* ~"좋소. 그들이 처벌받도록 조치하리다. 참 잘했소." 그는 미소를 짓는다.~ */
  IF ~~ THEN REPLY #43047 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #43048 /* ~그는 어깨를 으쓱한다. "그럼 이 일에 대해서는 더 이상 아무 말도 말도록 합시다."~ */
  IF ~~ THEN REPLY #43049 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #43050 /* ~"당신이 어떻게든 직접 관련이 되지 않고서야... 어떻게 그런 것을 알수가 있겠소?" 그는 이야기를 계속하기 전에 한동안 당신을 노려본다. "당신은 친구이니 당신으로부터 이 이야기를 들었다는 사실은 잊도록 하겠소. 어쨌든 이 아나키스트들이 처벌받도록 조치하리다. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #43052 /* ~"안녕히 계시오."~ */ JOURNAL #66536 /* ~나는 코버스에게  아나키스트 품계 3 보텐을 죽인 것은 아나키스트라고 말했다. 그는 즉각 사건과 나의 관련 여부를 의심하기는 했으나, 그 문제에 대해 더 추궁하지는 않았다. 그가 이 건에 대해 그냥 넘어가 주는 것은 우리의 우정 때문임에 틀림없다. 그는 아나키스트는 자신이 알아서 처리하겠다고 말했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.3
  SAY #43053 /* ~"당신이 어떻게든 직접 관련이 되지 않고서야... 어떻게 그런 것을 알 수가 있겠소?" 그는 이야기를 계속하기 전에 한동안 당신을 노려본다. "이 아나키스트들이 처벌받도록 조치하리다. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #43054 /* ~"안녕히 계시오."~ */ DO ~Enemy()
~ JOURNAL #66537 /* ~나는 코버스에게  아나키스트 품계 3 보텐을 죽인 것은 아나키스트라고 말했다. 그는 즉각 사건과 나의 관련 여부를 의심하기는 했으나, 그 문제에 대해 더 추궁하지는 않았다. 하지만 그는 더 이상 나와 얘기하려 하지 않는다. ~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.10
  SAY #66251 /* ~"내가 아는 것은 모두 하모니움의 공무와 관련이 있소. 그러한 일에 대해 얘기할 수는 없소..." 그는 잠시 멈춘다. "내가 얘기할 수 있는 건 잭은 살해당했으며, 수사가 진행되고 있다는 것뿐이오. 만약 그 수사에 도움이 될 만한 것을 발견하면 내게로 가져오시오."~ */
  IF ~~ THEN REPLY #66252 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #66253 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.1
  SAY #66266 /* ~그는 다시 시선을 당신 쪽으로 돌린다. "실례하겠소.." 그의 시선은 다시 젊은 아가씨에게로 향하고 그의 목소리는 점점 작아져 속삭임이 된다. "천사같은 목소리에 너무나 귀엽소..." 그는 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #66267 /* ~"왜 그녀에게 가서 얘기하지 않소? 당신은 그녀에게 꽤 반한 것 같은데..."~ */ JOURNAL #66539 /* ~코버스는 개방 시장에 있는 한 젊은 아가씨에게 반한 것 같다. 나는 그에게 그녀와 직접 얘기를 해보라고 권했으나... 그는 그녀가 자신에게는 과분한 사람이라고 생각하는 듯 했다. 아마 내가 대신 그녀와 얘기를 해 그녀가 어떤 사람인지 알아보는 것이 좋을 것 같다. ~ */ GOTO 44
  IF ~~ THEN REPLY #66268 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #66269 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #66270 /* ~거북한 침묵이 흐른다. 마침내 그는 당신 쪽으로 돌아선다. "나... 나는 그럴 수가 없었소. 저런 아가씨라면... 틀림없이..." 그는 한숨을 쉰다. "달리 내가 도와줄 것이라도 있소?"~ */
  IF ~~ THEN REPLY #66271 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #66272 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END
