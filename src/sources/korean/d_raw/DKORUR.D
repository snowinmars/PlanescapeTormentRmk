// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKORUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKORUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36238 /* ~먼지투성이 옷을 입고 있는 중년 남성이 보인다. 그는 건강이 별로 좋지 않은 것 같다. 그의 피부는 창백한 노란색이며, 그의 팔에는 군데군데 고름집이 있다. ~ */
  IF ~~ THEN REPLY #36265 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #36266 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36239 /* ~그는 고개를 돌려 공허한 눈으로 당신을 흘긋 본다. 주변을 둘러보면서 그의 눈은 의심 때문에 점점 가늘어진다. "무엇을 원하시오?" 그의 목소리는 쉬었다. ~ */
  IF ~~ THEN REPLY #36267 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #36268 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36240 /* ~그는 시선을 당신에게로 돌린다. "왜 나를 귀찮게 하는 거요? 내가 가이드로 보이오?"~ */
  IF ~~ THEN REPLY #36269 /* ~"당신이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #36270 /* ~"당신은 내가 배울 것이 있는 박식한 인물인 듯하오."~ */ GOTO 4
  IF ~~ THEN REPLY #36271 /* ~"가이드란 무엇이오?"~ */ GOTO 23
  IF ~~ THEN REPLY #36272 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36241 /* ~그는 당신을 보며 코웃음친다. "이런 염병할... 꺼지시오. 난 이런 일에 낭비할 시간이 없소. " 그는 고개를 돌린다.~ */
  IF ~~ THEN REPLY #36273 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.3 6.1 7.2 8.3 9.2 10.2 11.1 12.3 13.2 14.1 15.1 16.0 17.2 18.1 19.0 21.0 23.0 24.0 25.1
  SAY #36242 /* ~그는 한숨을 쉰다. "뭘 알고 싶은 거요?"~ */
  IF ~~ THEN REPLY #36274 /* ~"당신은 누구요?"~ */ GOTO 25
  IF ~~ THEN REPLY #36275 /* ~"괜찮으시오?"~ */ GOTO 5
  IF ~~ THEN REPLY #36276 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #36277 /* ~"이 부근에서 볼만한 건 없소?"~ */ GOTO 17
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36278 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 20
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36279 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54106 /* ~"나는 전사가 되고 싶소. 내게 전사의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54107 /* ~"나는 보다 나은 전사가 되고 싶소. 내 기량을 향상시키는 일을 도와줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #64627 /* ~"고맙소. 그만 가야겠소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #36243 /* ~"몇 년 동안 죽어 있으면 괜찮아질 거요." 그는 기침을 하고 위를 올려다본다. "최근 이 구역의 공기는 계속 나빠지고 있소. 내 생각에 대 주조소가 잠잠해지거나... 스파이어로부터 바람이 불어오면 나아질 거요."~ */
  IF ~~ THEN REPLY #36281 /* ~"이 곳 공기는 왜 이런 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #36282 /* ~"주조소에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #36283 /* ~"바람이 어떻다는 얘기요?"~ */ GOTO 10
  IF ~~ THEN REPLY #36284 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36285 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1 9.0 10.0
  SAY #36244 /* ~"그건 아마 전이문들 때문일 거요." 그는 심하게 기침을 한 후에 다시 당신에게로 시선을 돌린다. ~ */
  IF ~~ THEN REPLY #36286 /* ~"무슨 뜻이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #36287 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36288 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36245 /* ~"이 곳에는 마계로 통하는 전이문들이 많소, 그리고 그런 문들을 통해 어비스의 추잡한 층들로부터 나쁜 공기와 매연이 유입되고 있소. 그게 이 곳이 *마계*구라고 불리는 이유요." 그는 웃는다. "이 지역을 거니는 건 음식에 얼굴을 처박고 숨쉬는 것과 같소. 소금, 연기, 연초... 그건 모두 이 구역이 뿜어내는 매연과 탁 쏘는 유황 가스의 누런 담요들이오." 그는 군데군데 빠진 이빨을 드러내며 웃는다. "멋지지 않소?"~ */
  IF ~~ THEN REPLY #36289 /* ~"어, 그렇소... 당신은 주조소 얘기를 했었소."~ */ GOTO 8
  IF ~~ THEN REPLY #36290 /* ~"바람이 어떻다는 얘기요?"~ */ GOTO 10
  IF ~~ THEN REPLY #36291 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36292 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0 10.1
  SAY #36246 /* ~"이 구역의 심장부에 있소. 굴뚝들이 늘어선 곳이오. 그들 갓즈맨은 쇠로부터 물건을 만들어 내오. 화려한 것들은 아니지만 쓸모는 있는 물건들이오. 하지만 대기를 추가로 오염시키오." ~ */
  IF ~~ THEN REPLY #36293 /* ~"갓즈맨?"~ */ GOTO 9
  IF ~~ THEN REPLY #36294 /* ~"이 곳 공기는 왜 이런 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #36295 /* ~"당신은 전에 바람에 대한 얘기를 하지 않았었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #36296 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36297 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36247 /* ~"신봉자들이라고도 하오. 그들의 본거지는 대 주조소로, 그 곳에서 그들은 망치를 두드리며 수십 수백 수천 번의 전생을 거친 후에는 신이 될 수 있다는 헛소리를 지껄이고 있소." 그는 눈알을 부라린 후 입에서 갈색의 가래를 내뱉는다. "그들은 결국 고통을 받으며 죽도록 일할 뿐이오... 나는 그들의 두 배는 더 힘들게 일하지만 내가 아무리 하찮은 신이라도 될 가능성은 없소. 무슨 말인지 알겠소?" 그는 허무하게 웃는다. ~ */
  IF ~~ THEN REPLY #36298 /* ~"이 곳 공기는 왜 이런 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #36299 /* ~"당신은 전에 바람에 대한 얘기를 하지 않았었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #36300 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36301 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.1 8.2 9.1
  SAY #36248 /* ~"때때로 시길의 스파이어로부터 바람이 불어와 스모그를 날려보내오..." 그는 하늘을 쳐다보며 기침을 한다. "...적어도 한동안은."~ */
  IF ~~ THEN REPLY #36302 /* ~"이 곳 공기는 왜 이런 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #36303 /* ~"이 주조소란 곳에 대해 얘기를 해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #36304 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36305 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY #36249 /* ~"에..." 그는 별 미친 놈을 다 보겠다는 표정으로 당신을 쳐다본다. "혹시 물질계에서 왔소? 이 곳에는 공방, 가게, 창고 등이 있소." 그는 눈을 가늘게 뜨고 당신을 본다. 그의 눈은 다소 흐릿한 것 같다. "뭐 특별히 찾는 거라도 있소?"~ */
  IF ~~ THEN REPLY #36306 /* ~"어곳에서는 어떤 일들을 할 수가 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #36307 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36308 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36250 /* ~그는 당신을 잠시 살펴보더니 의미 있는 표정으로 당신을 쳐다본다. "혹시 무기를 담금질하려는 거요?" 그는 웃다가 기침을 심하게 한다. "이 근처에는 그럴 만한 곳이 없소. 만약 그것이 당신이 원하는 거라면 다른 구역을 찾아가 보는 것이 좋을 거요." ~ */
  IF ~~ THEN REPLY #36309 /* ~"뭐라고 하셨소?"~ */ GOTO 13
  IF ~~ THEN REPLY #36310 /* ~"나는 돈이 좀 필요하오."~ */ GOTO 14
  IF ~~ THEN REPLY #36311 /* ~"물건을 좀 사고 싶소."~ */ GOTO 15
  IF ~~ THEN REPLY #36312 /* ~"다른 질문이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #36313 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36251 /* ~그는 다시 웃는다, 그러다 전보다도 더 심하게 기침을 한다. "미안하오. 신경 쓰지 마시오. 뭐 특별히 찾는 거라도 있소?"~ */
  IF ~~ THEN REPLY #36314 /* ~"나는 돈이 좀 필요하오."~ */ GOTO 14
  IF ~~ THEN REPLY #36315 /* ~"물건을 좀 사고 싶소."~ */ GOTO 15
  IF ~~ THEN REPLY #36316 /* ~"다른 질문이 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #36317 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #36252 /* ~"만약 당신이 일거리를 찾고 있다면 포기하시오. 이 곳에 사는 사람들조차 일자리 부족으로 허덕이고 있으니까."~ */
  IF ~~ THEN REPLY #36318 /* ~"물건을 좀 사고 싶소."~ */ GOTO 15
  IF ~~ THEN REPLY #36319 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36320 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.1 14.0
  SAY #36253 /* ~"만약 당신이 아이템을 좀 구입하거나, 비싼 물건을 내다 팔고자 한다면, 개방 시장에 가보시오." 그는 다시 기침하기 시작한다.~ */
  IF ~~ THEN REPLY #36321 /* ~"시장에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #36323 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36324 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36254 /* ~그는 장난기 있게 웃는다. "당신은 거기서 물건을 사고 팔 수 있소. 그 곳은 시장이오. 더 이상 무슨 말이 필요하오?"~ */
  IF ~~ THEN REPLY #36325 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36326 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.3
  SAY #36255 /* ~"에..." 그는 잠시 집중한다. "탑이 있소. 그 곳은 사람들 입방아에 많이 오르내리오."~ */
  IF ~~ THEN REPLY #36327 /* ~"탑에 대해 얘기해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #36328 /* ~"그 밖에 생각나는 건 없소?"~ */ GOTO 19
  IF ~~ THEN REPLY #36329 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36330 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36256 /* ~"하!" 그는 웃는다, 그러나 그것은 이내 기침으로 변한다. "이 구역의 심오한 비밀들 중 하나요... 들리는 얘기로는 그것은 매우 오래 전 시길에 갑자지 나타났다고 하오. 하지만 그것이 어디서 왔는지, 어떻게 해서 이 곳에 나타나게 됐는지, 그리고 어떻게 하면 그 안에 들어갈 수 있는지에 대해서는 아무도 알지 못하오. 그것은 괜히 공간만 차지하고 있으나, 좋은 구경거리인 것 또한 사실이오... 산과 무기에 의해 생긴 수많은 자국들로 미루어 볼 때... 그 탑은 수백 차례 이상의 전쟁을 치른 것 같소."~ */
  IF ~~ THEN REPLY #36331 /* ~"그 밖에 생각나는 건 없소?"~ */ GOTO 19
  IF ~~ THEN REPLY #36332 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36333 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #36257 /* ~그는 잠시 생각한 후 어깨를 으쓱한다 "볼 만한 게 생각나지 않소."~ */
  IF ~~ THEN REPLY #36334 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36335 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.4
  SAY #36258 /* ~그는 불안한 표정으로 주위를 둘러본다. "그래... 그에 대해 들은 적이 있소. 그와 대적할 생각은 하지 마시오. 그의 집은 *밤의 뼈들*이라는 얼토당토 않은 이름으로 불리고 있소."~ */
  IF ~~ THEN REPLY #36336 /* ~"이 장소는 어디에 있소?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #36259 /* ~그는 눈살을 찌푸린다. "그건 정말 위험한 얘기요... 난 그 건에 대해 아무 말도 할 생각이 없소, 하지만 만약 얘기를 한다면 이 구역에 있는 폐허가 된 건물을 유심히 살피라고 말하고 싶소. 혹시 그 곳에서 뭔가를 찾을지도 모르지 않겠소?" 그는 당신을 노려본다. "하지만 당신은 내게서 아무 말도 듣지 못한 거요, 알겠소?"~ */
  IF ~~ THEN REPLY #36337 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 4
  IF ~~ THEN REPLY #36338 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 4.5
  SAY #36260 /* ~그는 좀 불편해 보인다. "해골을 잃어버렸소? 자, 내가 당신에게 다음과 같은 얘기를 했다는 건 잊으시오, 하지만 이 부근에는..." 그는 주변을 흘긋 본다. "해골을 수집해 먹고 사는 자들이 있소. 그들은 로타라는 사람을 위해 일하오. 그들은 그를 *뼈들의 지배자*라고 부르오."~ */
  IF ~~ THEN REPLY #36339 /* ~"이 로타란 사람은 어디 있소?"~ */ GOTO 21
  IF ~~ THEN REPLY #36340 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2
  SAY #36261 /* ~그는 눈살을 찌푸린다. "정말 천치같은 질문을 하려고 할 때 가서 만나는 사람이오..." 그는 당신을 노려본다~ */
  IF ~~ THEN REPLY #36341 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #36342 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #36262 /* ~먼지투성이 옷을 입고 있는 중년 남성이 보인다. "또 왔소?" 그는 눈살을 찌푸린다. "이젠 뭐요?"~ */
  IF ~~ THEN REPLY #36343 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54108 /* ~"나는 전사가 되고 싶소. 내게 전사의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54109 /* ~"나는 보다 나은 전사가 되고 싶소. 내 기량을 향상시키는 일을 도와줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #54110 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.0
  SAY #36263 /* ~그는 가볍게 고개를 끄덕인다. "내 이름은 코러요. 전성기에는 나도 상당히 뛰어난 전사였소..." 그는 잠시 멈추고 한숨을 쉰다. "그러한 날들은 이미 지나갔소, 하지만 내 기술이 완전히 녹슨 건 아니오."~ */
  IF ~~ THEN REPLY #36345 /* ~"내게 전사의 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 26
  IF ~~ THEN REPLY #36346 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 4.6 24.1 25.0
  SAY #36264 /* ~"좋소... 싫다고 할 이유는 없소. 정말 현재 직업을 버리고자 하오?"~ */
  IF ~~ THEN REPLY #36347 /* ~"그렇소."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 27
  IF ~~ THEN REPLY #52333 /* ~"아니, 생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.7 24.2 26.0
  SAY #52334 /* ~"그래... 구체적으로 뭘 배우고 싶소?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52335 /* ~"내가 훈련을 더 받을 준비가 됐는지 말해줄 수 있겠소?"~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52336 /* ~"내가 훈련을 더 받을 준비가 됐는지 말해줄 수 있겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #52338 /* ~"지금은 아무 것도 원하지 않소. 나중에 다시 오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 38.1 40.1
  SAY #52339 /* ~"당신은 지금 시점에서 내가 가르칠 수 있는 건 다 알고 있소... 경험을 더 쌓거든 다시 오시오."~ */
  IF ~~ THEN REPLY #52340 /* ~"알겠소. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #52341 /* ~"당신에게 조금 더 가르쳐 줄 수 있을 것 같소."~ */
  IF ~~ THEN REPLY #52342 /* ~"난 준비가 됐소. 내게 어떤 것을 가르쳐줄 수가 있소?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.6 33.6 34.6 35.6 36.6 38.0 39.0 40.0
  SAY #52343 /* ~"뭘 배우고 싶소?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52344 /* ~"내게 주먹으로 싸우는 법을 가르쳐 주시오."~ */ GOTO 32
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52345 /* ~"내게 대거를 쓰는 법을 가르쳐 주시오."~ */ GOTO 33
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52346 /* ~"내게 곤봉을 쓰는 법을 가르쳐 주시오."~ */ GOTO 34
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52347 /* ~"내게 도끼를 쓰는 법을 가르쳐 주시오."~ */ GOTO 35
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52348 /* ~"내게 망치를 쓰는 법을 가르쳐 주시오."~ */ GOTO 36
  IF ~~ THEN REPLY #52349 /* ~"오늘은 훈련을 받을 생각이 없소. 나중에 다시 오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #52350 /* ~"당신은 이미 내 실력을 능가했소. 당신은 내가 본 중에서 최강의 전사요... 아마 다원 우주 사상 최고의 전사들 중 하나일 거요."~ */
  IF ~~ THEN REPLY #52351 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52352 /* ~"주먹 말이오? 좋소... 원한다면 가르쳐 줄 수 있소."~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52353 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52354 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52355 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52356 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66935 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66936 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66937 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #66938 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #52357 /* ~"대거 말이오? 좋소... 원한다면 가르쳐 줄 수 있소."~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52358 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52359 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52361 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66939 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66940 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66941 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66948 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #66952 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY #52362 /* ~"곤봉 말이오? 좋소... 원한다면 가르쳐 줄 수 있소."~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52363 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52364 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52365 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52366 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66942 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66943 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66949 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #66953 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY #52367 /* ~"도끼 말이오? 좋소... 원한다면 가르쳐 줄 수 있소."~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52368 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52369 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52370 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52371 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66944 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66945 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66950 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #66954 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.4
  SAY #52372 /* ~"망치 말이오? 좋소... 원한다면 가르쳐 줄 수 있소."~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52373 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52374 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52375 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52376 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66946 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66947 /* ~"그렇소, 이 무기를 사용하는 법을 배우고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66951 /* ~"아니오... 내게 다른 어떤 무기들에 대해 가르쳐 줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #66955 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.0 32.2 32.4 33.0 33.2 33.4 34.0 34.2 34.4 35.0 35.2 35.4 36.0 36.2 36.4
  SAY #52377 /* ~"좋소, 시작하겠소... 준비는 됐소? ~ */
  IF ~~ THEN REPLY #52378 /* ~"됐소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #52379 /* ~"헤... 다 된 것 같소. 이젠 뭐요?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52380 /* ~"고맙소. 만약 당신이 가르쳐 주겠다면 다른 무기에 대해서도 배우고 싶소."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #52381 /* ~"고맙소. 만약 당신이 가르쳐 주겠다면 다른 무기에 대해서도 배우고 싶소."~ */ GOTO 28
  IF ~~ THEN REPLY #52382 /* ~"고맙소. 오늘 배우고 싶었던 건 그게 전부요."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.1 32.3 33.1 33.3 34.1 34.3 35.1 35.3 36.1 36.3
  SAY #52383 /* ~"지금은 당신에게 더 이상 가르칠 수가 없소, 당신이 전사로서의 길에 전념하기 전에는 말이오. 만약 더 나아지고 싶다면 전사가 되는 일에 전력을 투구해야 할 거요. 그러나 당신은 지금 무술을 익히는 데 전력을 다하고 있지 않소. 당신이 스스로의 신체를 무기로 만들었을 때 비로소 내게 무기에 대해 더 배울 수 있게 될 것이오."~ */
  IF ~~ THEN REPLY #52384 /* ~"좋소. 또 어떤 무기에 대해 가르쳐 줄 수 있겠소?"~ */ JOURNAL #68288 /* ~나는 전사의 길을 전문적을 밟지 않는 한 무기에 대해 더 이상 배울 수가 없다는 얘기를 들었다. 도둑질이나 마법에 한눈 팔지 않고 전투 기술을 습득하는 일에 보다 엄격하게 전념하면 내 강사가 얘기해준 것과 같은 전문화의 길이 열릴 것이다. ~ */ GOTO 30
  IF ~~ THEN REPLY #52385 /* ~"고맙소. 안녕히 계시오."~ */ JOURNAL #68288 /* ~나는 전사의 길을 전문적을 밟지 않는 한 무기에 대해 더 이상 배울 수가 없다는 얘기를 들었다. 도둑질이나 마법에 한눈 팔지 않고 전투 기술을 습득하는 일에 보다 엄격하게 전념하면 내 강사가 얘기해준 것과 같은 전문화의 길이 열릴 것이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 32.5 33.5 34.5 35.5 36.5
  SAY #66931 /* ~그는 놀란 표정으로 당신을 바라본다 "더 배우고 싶소? 친구, 그 무기에 대해서는 더 배울 수가 없소. 다원 우주 전체에서도 당신에게 그 무기에 대해 더 가르쳐 줄 수 있는 사람은 없소."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66932 /* ~"고맙소. 만약 당신이 가르쳐 주겠다면 다른 무기에 대해서도 배우고 싶소."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66933 /* ~"고맙소. 만약 당신이 가르쳐 주겠다면 다른 무기에 대해서도 배우고 싶소."~ */ GOTO 28
  IF ~~ THEN REPLY #66934 /* ~"고맙소. 오늘 배우고 싶었던 건 그게 전부요."~ */ EXIT
END
