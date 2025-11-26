// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOAX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOAX~

IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3017 /* ~철로... 만들어진 생명체가 보인다. 그것의 크기는 놀랄 정도로 크다. 똑바로 선다면 공성탑의 천장을 뚫고 나갈 정도다. 그가 용광로에서 망치를 두드림에 따라 천둥같은 굉음이 통로에 울려 퍼지며, 재와 매연의 냄새가 대기를 가득 채운다.~ */
  IF ~~ THEN REPLY #3019 /* ~"안녕하시오."~ */ JOURNAL #67791 /* ~나는 마계구에 있는 공성탑으로 들어갈 방법을 발견했다. 탑 안에는 그 탑만큼이나 큰 철제 골렘이 있었다. 그것은 탑 안의 용광로를 이용하여 무기를 만들고 있는 듯했다. ~ */ GOTO 3
  IF ~~ THEN REPLY #3018 /* ~골렘을 그냥 내버려 둔다.~ */ EXIT
END

IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26210 /* ~이 거대한 강철 골렘은 아직도 용광로에서 작업을 하고 있다. 통로 아래서는 불똥이 튀기고 있으며, 재와 증기의 구름이 시끄러운 소리를 내며 위로 올라오고 있다. ~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",4)
~ THEN REPLY #26277 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~  Global("Coaxmetal","GLOBAL",4)
PartyHasItem("Cube")
~ THEN REPLY #26279 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 59
  IF ~  Global("Coaxmetal","GLOBAL",4)
!PartyHasItem("Cube")
~ THEN REPLY #26280 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 63
  IF ~~ THEN REPLY #26281 /* ~골렘을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.2 5.2 6.4 7.1 8.1 9.1 10.1 11.1 12.1 13.4 14.4 15.1 16.0 17.2 18.1 19.1 20.1 21.1 22.0 23.1 24.1 25.0 26.1 27.1 28.0 29.1 30.1 31.0 33.0 34.1 35.1 36.1 37.3 38.1 39.2 40.1 41.1 42.1 43.1 44.1 45.1 46.1 50.0 65.1
  SAY #26211 /* ~질문하라.~ */
  IF ~~ THEN REPLY #26283 /* ~"당신은 어떤 존재요?"~ */ GOTO 4
  IF ~~ THEN REPLY #26284 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 17
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26285 /* ~"뭘 하고 있는 거요?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26286 /* ~"당신은 왜 무기를 만들고 있소?"~ */ GOTO 7
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26287 /* ~"당신이 무기들을 가지고 무엇을 하는지 더 얘기해줄 수 있겠소?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26288 /* ~"내가 지닌 무기들을 손봐 줄 수 있겠소?"~ */ GOTO 64
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #26290 /* ~"블러드 워에 대해 어떤 것을 아시오?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26291 /* ~"래벌이라는 나이트 해그에 대해 들은 적이 있소?"~ */ GOTO 26
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26292 /* ~"당신은 후회의 요새라는 성에 대해 아시오?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",2)
Global("Coaxmetal_Gives_Cage","GLOBAL",0)
~ THEN REPLY #26294 /* ~"나는 무겁고, 잘 정제되었으며, 장식이 달린 새장이 필요하오. 혹시 가지고 있소?"~ */ DO ~GiveItemCreate("DrmCage",Protagonist,1,0,0)
SetGlobal("Coaxmetal_Gives_Cage","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26295 /* ~"나중에. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26296 /* ~"나중에. 안녕히 계시오."~ */ GOTO 51
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #26212 /* ~거대한 골렘이 당신 쪽으로 돌아서자 금속과 금속이 부딪치는 요란한 소리가 난다. 당신은 골렘이 이 공성탑의 일부라는 사실을 갑자기 깨닫는다. 그것의 동체 하부에 달린 거더, 파이프, 그리고 거대한 줄들은 벽과 연결되어 있다, 그리고 골렘의 하반신은 다름 아닌 용광로 그 자체이다. ~ */
  IF ~~ THEN REPLY #26297 /* ~"당신은 대체 무엇이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #26298 /* ~"관두시오... 난 엉뚱한 곳에 온 모양이오. 방해해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #26213 /* ~나는 목적이 주어진 철이다. ~ */
  IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26299 /* ~"어떤 목적?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26300 /* ~"당신 목적에 대해 다시 얘기해주겠소?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26301 /* ~"그래, 당신이 전에 얘기한 적이 있소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26302 /* ~"알겠소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 4.0 4.1
  SAY #26214 /* ~나는 다원 우주를 파괴할 도구를 만든다. ~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26303 /* ~"무기를 만든다는 뜻이오? 그게 당신의 목적이오?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",2)
~ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26304 /* ~"전에 당신은 자신의 목적이 무기를 만드는 것이라고 했소... 맞소?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26305 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26306 /* ~"그럼 당신이 하던 일을 계속할 수 있도록 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 5.0 5.1 9.0
  SAY #26215 /* ~금속도 육신과 다를 바가 없다. 양쪽 모두 그 정맥에 가능성이 흐르고 있다. 열과 압력을 가하면 그 가능성이 표면으로 드러나게 된다. 내 목적은 그 가능성을 끌어내어 그것이 스스로를 표현할 수 있도록 해주는 것이다. ~ */
  IF ~~ THEN REPLY #26307 /* ~"당신은 누굴 위해 이러한 무기들을 만들고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #26308 /* ~"왜 이 일을 하는 거요?"~ */ GOTO 7
  IF ~  GlobalLT("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26309 /* ~"내가 지닌 무기들을 손봐 줄 수 있겠소?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",3)
~ GOTO 64
  IF ~  Global("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26310 /* ~"내가 지닌 무기들을 손봐 줄 수 있겠소?"~ */ GOTO 64
  IF ~~ THEN REPLY #26311 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26312 /* ~"그럼 당신이 하던 일을 계속할 수 있도록 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 6.1
  SAY #26216 /* ~내 신체를 구성하고 있는 철은 한 때 고통의 미약한 표현으로서만 존재했다. 칼. 창. 도끼. 화살촉. 투석기의 리벳. 이러한 전쟁의 도구로부터 나는 만들어져다. ~ */
  IF ~~ THEN REPLY #26313 /* ~"무슨 일이 일어났소?"~ */ GOTO 8
  IF ~~ THEN REPLY #26314 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26315 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26217 /* ~이러한 미약한 고통의 표현들은 녹여져 이 신체를 만드는 데 쓰이게 되었다. 내 가능성이 실현될 수 있게 된 것이다. 이제 내 목적은 다른 금속들이 지닌 가능성을 끌어내는 일이다. ~ */
  IF ~~ THEN REPLY #26316 /* ~"당신은 누군가가 그러한 무기들을 녹여 당신을 만들었다고 했소. 그게 누구요?"~ */ GOTO 9
  IF ~~ THEN REPLY #26317 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26318 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26218 /* ~차원의 전쟁터로부터 엔트로피가 나를 창조하였다.~ */
  IF ~~ THEN REPLY #26319 /* ~"당신은 지금 당신의 목적은 무기를 만드는 것이라고 했소?"~ */ GOTO 6
  IF ~~ THEN REPLY #26320 /* ~"알겠소... 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26321 /* ~"엔트로피를 만나게 되면 그에게 감사의 뜻을 표할 수 있도록 날 상기시켜 주시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #26219 /* ~나는 엔트로피를 위해 그것들을 만든다 그것들은 스스로를 표현하고자 하는 고통이다.~ */
  IF ~~ THEN REPLY #26322 /* ~"엔트로피가 왜 무기를 필요로 하오?"~ */ GOTO 11
  IF ~~ THEN REPLY #26323 /* ~"알겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #26324 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26220 /* ~이 탑의 피안에서는 질서가 그 군대를 집결시키고 있다. 다원 우주가 그것의 상처를 치료한다. 언젠가는 그것의 힘이 엔트로피에 필적하게 될 것이다.~ */
  IF ~~ THEN REPLY #26325 /* ~"다원 우주가 당신의 적이오? 왜?"~ */ JOURNAL #26107 /* ~공성탑 안의 골렘은 다원 우주 그 자체가 자신의 적이며... 그것이 그가  용광로에서 일하고 있는 이유라고 한다. 그는 우주를 없앨 수 있는 무기를 만들고자 한다. ~ */ GOTO 12
  IF ~~ THEN REPLY #26326 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26327 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26222 /* ~다원 우주는 숨쉰다. 성장한다. 정체한다. 그것은 차원들을 사슬로 한 고리 한 고리씩 묶고 있다. 언젠가는 엔트로피조차 사슬에 묶이게 될 것이다. ~ */
  IF ~~ THEN REPLY #26328 /* ~"그럼 당신은 엔트로피를 속박하는 데 반대하오?"~ */ GOTO 13
  IF ~~ THEN REPLY #26329 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26330 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26223 /* ~어떠한 존재가 스스로를 죽지 못하는 존재로 만들었다면, 그것은 다른 형태의 죽음을 맞이한 것에 불과하다. ~ */
  IF ~~ THEN REPLY #26331 /* ~"그럼 당신은 불사가 다른 형태의 죽음에 불과하다는 거요?"~ */ GOTO 34
  IF ~~ THEN REPLY #26332 /* ~"왜 그 죽음이 다른 죽음보다 더 나쁘다는 거요?"~ */ GOTO 14
  IF ~~ THEN REPLY #26333 /* ~진실: "당신이 가져오는 죽음이 폭력적이고 무의하다는 것을 제외하고는."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #26334 /* ~진실: "사실이오. 그래 당신은 왜 엔트로피의 대의를 받들게 되었소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #26335 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26336 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2 13.3
  SAY #26224 /* ~만물은 언젠가는 쇠망한다는 공통점을 지니고 있다. 전쟁은 필요하다. 죽음도 필요하다. 그리고 쇠망 역시 필요하다.~ */
  IF ~~ THEN REPLY #26337 /* ~"그럼 이것이 얼마나 많으면 너무 많은 거요?~ */ GOTO 15
  IF ~~ THEN REPLY #26338 /* ~"이러한 것들은 필요할지도 모르오... 일정한 한도 내에서."~ */ GOTO 15
  IF ~~ THEN REPLY #26339 /* ~"이러한 것들은 절대로 필요가 없소. 그것들을 조장하고 그것들이 초래하는 파괴를 미화하는 것은 잘못된 일이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #26341 /* ~"동의하오. 이러한 것들이 없으면 정체 상태에 빠지게 되오."~ */ GOTO 16
  IF ~~ THEN REPLY #26342 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26343 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #26225 /* ~한계란 없다. 한계는 질서의 사슬의 고리들 중 하나이다. 모든 한계는 타파되어야만 한다.~ */
  IF ~~ THEN REPLY #26344 /* ~"죽음이 그 결과일지라도?~ */ GOTO 16
  IF ~~ THEN REPLY #26345 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26346 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3 15.0
  SAY #26226 /* ~만물은 엔트로피의 칼날 앞에 쓰러져야만 한다. 삼라 만상의 벽을 허물어야 할 때가 다가오고 있다. 질서는 칼 앞에 쓰러질 것이다. 그리고 그 사슬은 끊어질 것이다. 다원 우주는 파괴될 것이다. ~ */
  IF ~~ THEN REPLY #26347 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26348 /* ~"엄청난 전쟁인 것 같소... 아마 그 곳에서 내가 당신을 만나게 될지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.1
  SAY #26227 /* ~이 탑은 공성용 장치이다. 그 목적은 차원 간의 벽을 허무는 것이다. ~ */
  IF ~~ THEN REPLY #26349 /* ~"차원의 벽을 허물어? 어떻게?"~ */ JOURNAL #26106 /* ~공성탑은 실제 공성탑이 성벽을 돌파하듯이 차원간의 벽을 돌파할 힘이 있는 것 같다. 물론 이는 어디까지나 초차원적인 감각에서의 '돌파'이다. 침략자들의 대군이 차원의 벽 앞에서 공성탑이 다리를 내리고 목표 차원에 구멍을 뚫기를 기다린다. 구멍이 뚫리면 그들은 공성탑을 통해 새로운 차원으로 흘러 들어간다. 공성탑은 침략군이 차원을 유린할 수 있도록 해주는 일종의 문이 되는 셈이다. 나는 탑이 다원 우주에 수많은 구멍을 뚫음으로서 차원들에 어떤 손상을 입히고 있는지 궁금하다...~ */ GOTO 20
  IF ~~ THEN REPLY #26350 /* ~"만약 공성탑이 차원을 여행할 수 있다면, 왜 당신은 이 곳에 남아있는 거요?"~ */ GOTO 18
  IF ~~ THEN REPLY #26351 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26353 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #26228 /* ~탑은 이 도시 안에 갇혀 있다. 이 도시는 공성탑조차 허물 수 없는 감옥이다. ~ */
  IF ~~ THEN REPLY #26354 /* ~"공성탑은 처음에 어떻게 해서 이 도시에 나타나게 되었소?"~ */ GOTO 19
  IF ~~ THEN REPLY #26355 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26356 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26229 /* ~과거에 이 탑은 차원들을 상대로 공성전을 감행했다. 내가 어떻게 이 곳에 오게 되었는지는 나도 알지 못한다. 어떻게 하면 이 곳에서 탈출할 수 있는지도 모른다.~ */
  IF ~~ THEN REPLY #26357 /* ~"당신은 공성탑이 차원의 벽을 허물 수 있다고 했소. 어떻게?"~ */ JOURNAL #26106 /* ~공성탑은 실제 공성탑이 성벽을 돌파하듯이 차원간의 벽을 돌파할 힘이 있는 것 같다. 물론 이는 어디까지나 초차원적인 감각에서의 '돌파'이다. 침략자들의 대군이 차원의 벽 앞에서 공성탑이 다리를 내리고 목표 차원에 구멍을 뚫기를 기다린다. 구멍이 뚫리면 그들은 공성탑을 통해 새로운 차원으로 흘러 들어간다. 공성탑은 침략군이 차원을 유린할 수 있도록 해주는 일종의 문이 되는 셈이다. 나는 탑이 다원 우주에 수많은 구멍을 뚫음으로서 차원들에 어떤 손상을 입히고 있는지 궁금하다...~ */ GOTO 20
  IF ~~ THEN REPLY #26358 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26359 /* ~"그거 안됐소. 하지만 내게는 당신을 도울 방법이 없는 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0
  SAY #26230 /* ~공성탑은 공격 대상이 될 차원에 닻을 내린다. 그리고 탑의 가교가 열리는 순간 다원 우주에는 상처가 난다. 무수한 군대들이 탑을 통해 한 차원으로부터 다른 차원으로 진군할 수가 있다. ~ */
  IF ~~ THEN REPLY #26366 /* ~"이 탑을 사용했던 군대들은 어떻게 되었소?"~ */ GOTO 21
  IF ~~ THEN REPLY #26367 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26368 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #26231 /* ~엔트로피가 그들을 파괴했다. ~ */
  IF ~~ THEN REPLY #26369 /* ~"공성탑이 침공한 차원은 어떻게 되었소?"~ */ GOTO 22
  IF ~~ THEN REPLY #26370 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26371 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26232 /* ~엔트로피가 그들을 파괴했다. ~ */
  IF ~~ THEN REPLY #26372 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26373 /* ~"매우 흥미롭소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.6
  SAY #26233 /* ~그것은 다원 우주를 파멸시킬 전쟁이다. ~ */
  IF ~~ THEN REPLY #26374 /* ~"그건 얼마나 오래 계속되어 왔소?"~ */ GOTO 24
  IF ~~ THEN REPLY #26375 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26376 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26234 /* ~금속의 수명의 몇 배나 되는 시간 동안이다. ~ */
  IF ~~ THEN REPLY #26377 /* ~"거기에 참여한 적은 있소?"~ */ GOTO 25
  IF ~~ THEN REPLY #26378 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26379 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26235 /* ~그렇다. 비명을 지르며 아버누스의 연기로 가득 찬 하늘을 갈기갈기 찢은 사출 무기는 바로 이 용광로에서 만들어졌다. 그 무기는 얼마나 날카로웠는지 바람조차 고통스러워할 정도였다. ~ */
  IF ~~ THEN REPLY #26380 /* ~"오… 아, 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26381 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 2.7
  SAY #26236 /* ~나이트 해그는 이 도시를 파괴하고자 했다. 그녀가 남긴 위업들은 파괴와 관련된 것들이었다. 그녀는 엔트로피의 길을 걸었다. ~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #26382 /* ~"그녀는 어떻게 되었소?~ */ JOURNAL #26104 /* ~골렘은 래벌이 시길을 파괴하려 했으며,  '질서'가 그녀를 벌로서 감옥에 가두었다고 말했다. 하지만 그는 그 감옥이 어디에 있는지는 모른다. ~ */ GOTO 27
  IF ~~ THEN REPLY #26383 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26384 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #26237 /* ~질서가 그녀를 사슬로 묶었다. 그녀는 투옥되었다.~ */
  IF ~~ THEN REPLY #26385 /* ~"당신은 이 감옥이 어디 있는지 아시오?"~ */ GOTO 28
  IF ~~ THEN REPLY #26386 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26387 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #26238 /* ~나는 그녀의 감옥의 위치를 알지 못한다. ~ */
  IF ~~ THEN REPLY #26388 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26389 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.8
  SAY #26239 /* ~그 곳은 그림자들이 사는 곳이다. 이 탑조차도 벽을 허물 수가 없는 요새이다.~ */
  IF ~~ THEN REPLY #26390 /* ~"그것에 대해 더 아는 것은 없소?"~ */ JOURNAL #26096 /* ~골렘은 후회의 요새에 대해 알고 있었다... 그 곳의 벽은 공성탑조차도 뚫을 수가 없다고 한다. 그는 그 요새가 자신을 잊어버리고 '음의 에너지계'에서 서서히 소멸해가는 기념비라고 했다. ~ */ GOTO 30
  IF ~~ THEN REPLY #26391 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26392 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ GOTO 51
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #26240 /* ~그 곳은 스스로를 망각한 기념관이다. 이제 그 요새는 어둠 속에서 쇠망해 가고 있다. 음의 에너지계의 하늘에서 서서히 죽어가고 있는 것이다. ~ */
  IF ~~ THEN REPLY #26393 /* ~"그 곳에 어떻게 하면 도달할 수 있는지 혹시 아시오?"~ */ GOTO 31
  IF ~~ THEN REPLY #26394 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26395 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ GOTO 51
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #26241 /* ~아니다. ~ */
  IF ~~ THEN REPLY #26396 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26397 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ GOTO 51
END

IF ~~ THEN BEGIN 32 // from: 2.9
  SAY #26242 /* ~나는 그런 물건을 가지고 있다. 오래 전에 꿈 제조기를 만들려는 자가 내게 왔다. 그는 내게 그 새장이 내 품을 떠날 때 내가 이 도시의 감옥으로부터 벗어나게 될 것이라고 약속했다. ~ */
  IF ~~ THEN REPLY #26398 /* ~"알겠소... 그걸 내가 가질 수 있겠소?"~ */ JOURNAL #26103 /* ~나는 골렘으로부터 꿈의 새장을 얻었다. 그것을 잰더에게 가져가 그가 그것을 쓸 수 있는지 알아봐야겠다. ~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #26243 /* ~그렇다. 이 새장을 가지고 가서 그러한 감옥을 만드는 자들을 파멸시켜라. ~ */
  IF ~~ THEN REPLY #26399 /* ~가기 전에 질문할 것들이 더 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #26400 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 13.0
  SAY #26244 /* ~불사란 허언에 불과하다. 살아 있는 자는 그 누구라도 죽을 수 있다.~ */
  IF ~~ THEN REPLY #26401 /* ~"당신은 자신이 불사신을 죽일 수 있는 무기를 만들 수 있다는 거요?"~ */ GOTO 35
  IF ~~ THEN REPLY #26402 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26403 /* ~"알겠소... 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #26245 /* ~모든 생물에게는 절대로 극복할 수 없는 약점이 최소한 하나는 존재한다. 시간. 병. 철. 죄책감.~ */
  IF ~~ THEN REPLY #26404 /* ~"어떤 무기를 사용해야 하는지는 어떻게 아시오?"~ */ GOTO 36
  IF ~~ THEN REPLY #26405 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26406 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26246 /* ~그러한 무기를 만들기 위해서는 적에 대해서 알아야만 한다.~ */
  IF ~~ THEN REPLY #26407 /* ~"어떻게 해야만 그렇게 할 수가 있소?"~ */ GOTO 37
  IF ~~ THEN REPLY #26408 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26409 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26247 /* ~일단 적의 일부분을 가지고 시작하라. 한 방울의 피. 결정화된 생각. 그의 희망들 중 하나. 이러한 것들은 모두 그가 죽을 수 있는 방법에 대해 말해준다. ~ */
  IF ~~ THEN REPLY #26410 /* ~"만약 적이 어둠 속에 자신을 감추고 멀리에서만 공격하며, 결코 모습을 드러내지 않는다면?"~ */ GOTO 38
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #26411 /* ~"흠... 당신은 날 죽일 수는 무기를 만들 수가 있소?"~ */ GOTO 45
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #26412 /* ~"흠... 당신은 날 죽일 수는 무기를 만들 수가 있소?"~ */ GOTO 45
  IF ~~ THEN REPLY #26413 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26414 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #26248 /* ~그렇다면 그것이 당신이 보아야 하는 적의 일부이다. ~ */
  IF ~~ THEN REPLY #26416 /* ~"어떻게?"~ */ GOTO 39
  IF ~~ THEN REPLY #26417 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26418 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26249 /* ~당신 적의 행동은 이미 많은 것을 말해주고 있다. 당신 적은 당신과 직접 싸우는 것을 원하지 않는다. 그것은 약점이다. ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #26419 /* ~"또는... 어떤 이유에서든 그것이 나와 직접 대결할 수 없다면?"~ */ DO ~SetGlobal("Know_Transcendent_Weakness","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #26420 /* ~"어떻게 하면 내가 그것을 이용할 수 있소?"~ */ GOTO 42
  IF ~~ THEN REPLY #26421 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26422 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26250 /* ~그것 또한 하나의 가능성이다. 양쪽 모두 그의 약점을 드러내고 있다. ~ */
  IF ~~ THEN REPLY #26423 /* ~"어떻게 하면 내가 그것을 이용할 수 있소?"~ */ GOTO 41
  IF ~~ THEN REPLY #26425 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26426 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26251 /* ~당신 적의 행동은 그가 당신과 직접 싸우는 것을 원하지 않는다는 사실을 말해주었다. 그것은 약점이다. ~ */
  IF ~~ THEN REPLY #26427 /* ~"어떻게 하면 내가 그것을 이용할 수 있소?"~ */ JOURNAL #26102 /* ~골렘은 내게 그림자로부터 나를 습격하는 적에 대해서 조언을 주었다... 그는 적이 날 직접 공격하지 않거나 직접 공격할 수 없다는 사실은 내가 이용해야할 약점이라고 말했다. 그는 나에게 적이 원하는 조건 아래서 싸워서는 안 되며, 그 대신 적과 직접 맞서라고 충고했다. ~ */ GOTO 43
  IF ~~ THEN REPLY #26429 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26430 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #26252 /* ~당신의 적과 직접 맞서라. 적과 직접 싸워라.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26431 /* ~"당신은 불사란 단어에 불과하며... 모든 생명은 죽을 수 있다고 했소. 당신은 날 죽일 수 있는 무기를 만들 수가 있소?"~ */ GOTO 45
  IF ~~ THEN REPLY #26432 /* ~"좋소. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26433 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #26253 /* ~만약 적이 당신과 직접 맞서기를 원하지 않는다면, 그가 원하는 대로 되도록 하지 말라. 적과 직접 싸워라.~ */
  IF ~~ THEN REPLY #26435 /* ~"그리고 만약 그것이 날 직접 공격할 수 없는 이유가 그것에게 다른 선택의 여지가 없기 때문이라면?"~ */ JOURNAL #26095 /* ~골렘은 내게 그림자로부터 나를 습격하는 적에 대해서 조언을 주었다... 그는 적이 날 직접 공격하지 않거나 직접 공격할 수 없다는 사실은 내가 이용해야할 약점이라고 말했다. 그는 나에게 적이 원하는 조건 아래서 싸워서는 안 되며, 그 대신 적과 직접 맞서라고 충고했다.  만약 적에게 날 직접 공격할 수 없는 이유가 있다면 그것을 밝혀내 이용해야 한다고 그는 말했다. ~ */ GOTO 44
  IF ~~ THEN REPLY #26436 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26437 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #26254 /* ~만약 그가 당신과 직접 맞설 수 없다면 그 이유를 찾아라. 그 이유가 그의 약점을 드러낼 것이다. ~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26438 /* ~"당신은 불사란 단어에 불과하며... 모든 생명은 죽을 수 있다고 했소. 당신은 날 죽일 수 있는 무기를 만들 수가 있소?"~ */ GOTO 45
  IF ~~ THEN REPLY #26439 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26440 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.1 37.2 42.0 44.0
  SAY #26255 /* ~그렇다.~ */
  IF ~~ THEN REPLY #26441 /* ~"정말이오? 어떻게?"~ */ GOTO 46
  IF ~~ THEN REPLY #26442 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26443 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #26256 /* ~당신의 피 한 방울이 필요하다. 그뿐이다. ~ */
  IF ~~ THEN REPLY #26444 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal_Weapon","GLOBAL",1)
GiveItemCreate("BladeIm",Protagonist,1,0,0)
AddexperienceParty(10000)
~ GOTO 47
  IF ~~ THEN REPLY #26445 /* ~"나중에. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26446 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #26257 /* ~당신의 죽음을 가져올 도구가 만들어지고 교육되었다. 하지만 그것으로는 충분하지 않다. ~ */
  IF ~~ THEN REPLY #26447 /* ~"무슨 뜻이오?"~ */ JOURNAL #26088 /* ~그 철제 골렘은 그의 말에 의하면 나조차 죽일 수 있다는 무기를 만들어주었다... 하지만 그를 위해서는 그 무기를 합당한 곳, 즉 내가 다른 차원으로부터 격리된 공간에서 사용하지 않으면 안 된다. 나는 그에게 어떻게 하면 그런 곳에 다다를 수 있느냐고 물었으나 그는 모른다고 했다. ~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #26258 /* ~당신의 심장이 계속 뛰도록 만들고 당신 육신을 치유하는 마법은 강력하다. 당신은 다른 차원들로부터 격리된 장소에서 그 칼로 당신의 육신을 찔러야만 한다.~ */
  IF ~~ THEN REPLY #26448 /* ~"왜?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26259 /* ~그 이유는 나도 알지 못한다. 하지만 그 장소와 무기는 양쪽 모두 당신이 죽기 위해서는 필요한 것들이다. ~ */
  IF ~~ THEN REPLY #26450 /* ~"그처럼 다른 차원으로부터 차단된 곳은 어디에서 찾을 수가 있겠소?~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #26260 /* ~나는 알지 못한다. ~ */
  IF ~~ THEN REPLY #26454 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26455 /* ~"그럼 가서 그런 곳을 내 스스로 찾도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.11 29.2 30.2 31.1 65.3
  SAY #26261 /* ~기다려라. 떠나기 전에 당신이 해야 할 일이 있다.~ */
  IF ~~ THEN REPLY #26456 /* ~"뭐?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26262 /* ~이 감옥을 파괴하라. 날 해방하라. 내 목적은 이 감옥 안에서는 달성될 수 없다. ~ */
  IF ~~ THEN REPLY #26459 /* ~"그건 할 수가 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 53
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26460 /* ~"어떻게 하면 당신을 해방시킬 수가 있겠소?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26457 /* ~"어떻게 하면 당신을 해방시킬 수가 있겠소?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #26263 /* ~설명하라.~ */
  IF ~~ THEN REPLY #26458 /* ~"만약 당신이 이 도시에서 탈출한다면 당신은 다른 차원들에 전쟁과 파괴만 가져올 것이오. 수많은 생명들이 희생될 것이오. 난 그런 일을 용납할 수 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 54
  IF ~~ THEN REPLY #26461 /* ~"당신의 목적은 이 곳에 있소, 골렘. 당신의 목적은 날 위해 봉사하는 거요. 내게 무기를 제공하고 당신 '자유'에 대해선 다시 언급하지 마시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_3","GLOBALGood",-2)
~ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #26264 /* ~그것이 내가 해방되어야 하는 이유이다. 다원 우주는 그 군세를 집결시키고 있다. 그것은 스스로의 상처를 치유하고 있다. 그것은 엔토로피에 필적할 정도로 성장할지도 모른다. 그런 일이 일어나는 것을 용납할 수는 없다. ~ */
  IF ~~ THEN REPLY #26462 /* ~"동의할 수 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_3","GLOBALLaw",2)
~ GOTO 55
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26463 /* ~"흠... 당신 논지를 이해하겠소. 어떻게 하면 당신을 해방시킬 수가 있겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26464 /* ~"흠... 당신 논지를 이해하겠소. 어떻게 하면 당신을 해방시킬 수가 있겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 60
END

IF ~~ THEN BEGIN 55 // from: 53.1 54.0
  SAY #26265 /* ~귀를 기울이라. 들리는가?~ */
  IF ~~ THEN REPLY #26465 /* ~"뭐?"~ */ GOTO 56
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26466 /* ~"더 이상 할 말은 없소. 난 당신을 해방하지 않을 거요. 다원 우주는 당신이 가져올 혼돈과 고통을 필요로 하지 않소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26093 /* ~내가 요새로 향하기 위해 공성탑을 떠나려 하자 골렘은 자신이 다원 우주 전체에 걸친 엔트로피의 성전을 계속할 수 있도록 그의 감옥에서 탈출하는 것을 도와달라고 부탁했다. 나는 거절했다. 그는 나를 공성탑으로부터 내쫓았고 난 그 곳에 다시는 발을 들여놓을 수가 없게 되었다. 다원 우주가 그로 인해 고통받지 않을 것이라는 점을 생각할 때 별로 큰 대가를 치른 것은 아니다. ~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26467 /* ~"더 이상 할 말은 없소. 당신 목적은 이 곳에 있소, 골렘, 그리고 당신은 계속 날 위해 봉사해야 하오. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~내가 요새로 향하기 위해 공성탑을 떠나려 하자 골렘은 자신이 다원 우주 전체에 걸친 엔트로피의 성전을 계속할 수 있도록 그의 감옥에서 탈출하는 것을 도와달라고 부탁했다. 나는 거절했다. 그의 목적은 나에게 봉사하는 것이지 어리석은 이상 때문에 다원 우주와 싸우는 것은 아니기 때문이다. 그는 나를 공성탑으로부터 내쫓았고 난 그 곳에 다시는 발을 들여놓을 수가 없게 되었다. ~ */ GOTO 57
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #26266 /* ~방치된 금속의 소리. 녹. 스스로를 표현하지 못하는 무기. 차원의 전장에서 피도 묻지 않은 채 방치되어 있다. 날 해방하라. 그들을 해방하라.~ */
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26468 /* ~"난 당신을 풀어 줄 수 없소. 다원 우주에 더 이상의 혼돈과 유혈은 필요없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26090 /* ~내가 요새로 향하기 위해 공성탑을 떠나려 하자 골렘은 자신이 다원 우주 전체에 걸친 엔트로피의 성전을 계속할 수 있도록 그의 감옥에서 탈출하는 것을 도와달라고 부탁했다. 나는 거절했다. 그는 나를 공성탑으로부터 내쫓았고 난 그 곳에 다시는 발을 들여놓을 수가 없게 되었다. 다원 우주가 그로 인해 고통받지 않을 것이라는 점을 생각할 때 별로 큰 대가를 치른 것은 아니다. ~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26469 /* ~"더 이상 할 말은 없소. 당신 목적은 이 곳에 있소, 골렘, 그리고 당신은 계속 날 위해 봉사해야 하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~내가 요새로 향하기 위해 공성탑을 떠나려 하자 골렘은 자신이 다원 우주 전체에 걸친 엔트로피의 성전을 계속할 수 있도록 그의 감옥에서 탈출하는 것을 도와달라고 부탁했다. 나는 거절했다. 그의 목적은 나에게 봉사하는 것이지 어리석은 이상 때문에 다원 우주와 싸우는 것은 아니기 때문이다. 그는 나를 공성탑으로부터 내쫓았고 난 그 곳에 다시는 발을 들여놓을 수가 없게 되었다. ~ */ GOTO 57
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26470 /* ~"내가 어떻게 그들을 해방시킬 수가 있겠소?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26471 /* ~"내가 어떻게 그들을 해방시킬 수가 있겠소?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 57 // from: 55.1 55.2 56.0 56.1 59.1 59.2 59.3
  SAY #26267 /* ~질서가 당신을 사슬로 구속하였다. 당신은 나와 모든 죽는 자들의 적이다. 당신은 세상의 종말이 올 때까지 이 탑에 다시는 들어올 수 없다. ~ */
  IF ~~ THEN REPLY #26472 /* ~"그래야만 한다면 그럴 수밖에. 안녕히 계시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal","GLOBAL",5)
AddexperienceParty(12000)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 52.1 54.1 56.2
  SAY #26268 /* ~당신이 지니고 있는 차원의 입방체를 내게 달라. 그것은 나를 이 곳으로부터 해방시킬 수 있다. ~ */
  IF ~~ THEN REPLY #26473 /* ~"좋소, 여기 있소."~ */ DO ~DestroyPartyItem("Cube",TRUE)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
GiveItemCreate("EDag",Protagonist,1,0,0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26091 /* ~나는 모드론 입방체를 골렘에게 주었다, 그러자 사방은 암흑으로 둘러싸였다. 무슨 일이 일어났는지는 알 수 없으나 공성탑은 그 자리에 그대로 있었다. 난 다시는 그 곳에 들어갈 수 없을 것이라는 기묘한 느낌이 들었다. 하지만 그는 내게 기이한 무기를 주었다...~ */ EXIT
  IF ~~ THEN REPLY #26474 /* ~"난 그걸 포기할 수가 없소."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 1.1 58.1 60.1 61.1 62.1 63.0
  SAY #26269 /* ~그것은 이 탑이 이 곳을 떠날 수 있도록 해주는 문이다. 내게 차원의 입방체를 달라.~ */
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26475 /* ~"좋소, 여기 있소."~ */ DO ~DestroyPartyItem("Cube",TRUE)
GiveItemCreate("EDag",Protagonist,1,0,0)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26094 /* ~나는 모드론 입방체를 골렘에게 주었다, 그러자 사방은 암흑으로 둘러싸였다. 무슨 일이 일어났는지는 알 수 없으나 공성탑은 그 자리에 그대로 있었다. 난 다시는 그 곳에 들어갈 수 없을 것이라는 기묘한 느낌이 들었다. 하지만 그는 내게 기이한 무기를 주었다...~ */ EXIT
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26476 /* ~"그렇다 하더라도 난 그 입방체를 포기할 수는 없소. 그건 내게 너무 소중하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26477 /* ~"난 그런 아이템을 당신에게 주지 않을 것이오. 그건 선물로 주기에는 너무나도 강력한 것 같소. 만약 찾아낸다면 내 스스로 간직할 것이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~~ THEN REPLY #26478 /* ~"난 당신에게 그걸 주지 않겠소. 난 당신이 해방되도록 내버려둘 수 없소. 다원 우주에 더 이상의 혼돈과 유혈은 필요없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ GOTO 57
END

IF ~~ THEN BEGIN 60 // from: 52.2 54.2 56.3
  SAY #26270 /* ~나를 이 곳으로부터 해방시킬 수 있는 차원의 입방체가 존재한다.~ */
  IF ~~ THEN REPLY #26479 /* ~"하지만... 내겐 그러한 입방체가 없소."~ */ GOTO 61
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26480 /* ~"나는 그 입방체를 아오. 하지만 당신에게 줄 수는 없소."~ */ GOTO 59
END

IF ~~ THEN BEGIN 61 // from: 60.0 63.1
  SAY #26271 /* ~그렇다면 그 입방체를 내게 가져오라.~ */
  IF ~~ THEN REPLY #26482 /* ~"어디 가면 그런 것을 찾을 수 있겠소?"~ */ GOTO 62
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26483 /* ~"나는 그 입방체를 아오. 하지만 당신에게 줄 수는 없소."~ */ GOTO 59
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #26272 /* ~그것의 위치를 알지 못한다. 그것을 찾아서 내게 가져오라.~ */
  IF ~~ THEN REPLY #26484 /* ~"좋소... 그 입방체를 찾아서 당신에게 가져오겠소."~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",4)
~ JOURNAL #26097 /* ~골렘은 자신이 공성탑에서 탈출할 수 있도록 차원의 입방체를 가져오라고 내게 요구했다. 그는 내가 그것을 자신에게 가져올 때까지는 내 질문이나 요구에 일체 응하지 않을 것이다. ~ */ EXIT
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26485 /* ~"나는 그 입방체를 아오. 하지만 당신에게 줄 수는 없소."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 1.2
  SAY #26273 /* ~차원의 입방체는 어디 있는가?~ */
  IF ~~ THEN REPLY #26486 /* ~"나는 그것을 가지고 있지 않소. 설령 가지고 있더라도 당신에게 줄 수는 없소."~ */ GOTO 59
  IF ~~ THEN REPLY #26487 /* ~"나는 아직 입방체를 찾지 못했소, 하지만 당신에게 질문을 좀 하고 싶소--"~ */ GOTO 61
  IF ~~ THEN REPLY #26488 /* ~"아직 찾아내지 못했소. 찾으면 돌아오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 2.5 6.2 6.3
  SAY #26274 /* ~당신이 가져온 것을 내게 보여주라. 나는 그것의 가능성을 연구하여 고통을 표현할 수 있는지 살펴볼 것이다.~ */
  IF ~~ THEN REPLY #26489 /* ~"좋소..."~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #26276 /* ~완료되었다. ~ */
  IF ~~ THEN REPLY #26490 /* ~"당신이 가지고 있는 다른 무기들을 좀 볼 수 있겠소?"~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #26491 /* ~"좋소. 다른 질문이 있소..."~ */ GOTO 2
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26492 /* ~"알겠소. 내가 원했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26493 /* ~"알겠소. 내가 원했던 건 그게 전부요. 안녕히 계시오."~ */ GOTO 51
END
