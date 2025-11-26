// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRATBONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRATBONE~

IF ~  Global("Ratbone","AR0101",0)
~ THEN BEGIN 0 // from:
  SAY #16225 /* ~이 키가 크고 호리호리한 남자는 발 아래의 땅을 계속 쳐다보고 있다. 그는 쓰레기에서 숨겨진 단서나 물건이라도 찾는 것처럼 때때로 동작을 멈추고 무릎을 꿇는다. 비록 야위어 보이기는 하나, 그는 민첩하고 유연한 듯하다. ~ */
  IF ~~ THEN REPLY #16305 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 1
  IF ~~ THEN REPLY #16306 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16226 /* ~당신이 말을 걸자 그는 재빠르게 몸을 반쯤 웅크린다... 하지만 그가 당신에게 달려들려는 건지, 아니면 다른 곳으로 도약하려는 건지는 알 수가 없다. "뭐야? 빨리 말을 해."~ */
  IF ~~ THEN REPLY #16307 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #16308 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16227 /* ~"난 대답할 게 없어. 꺼져." 전에는 눈치채지 못했는데 지금 보니 그는 손에 긴 곡선형의 대거를 쥐고 있다.~ */
  IF ~~ THEN REPLY #16309 /* ~"내게 말을 한다고 해서 해가 될 건 없지 않소..."~ */ GOTO 3
  IF ~~ THEN REPLY #16310 /* ~"당신은 날 협박하려는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #16311 /* ~"안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #16228 /* ~"그래?" 그는 당신을 흘겨본 후 자기 옆의 땅바닥에 침을 뱉는다. "내가 그걸 어떻게 알아?"~ */
  IF ~~ THEN REPLY #16312 /* ~"이해할 수가 없소."~ */ GOTO 4
  IF ~~ THEN REPLY #16313 /* ~"당신은 그냥 날 믿어야 할 거요."~ */ GOTO 5
  IF ~~ THEN REPLY #16314 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16229 /* ~"뭘 모르겠다는 거야, 얼간아? 흥! 잘 들어. 니가 여기 질문을 하러 왔는지 내가 무슨 수로 알지? 그리고 만약 그러한 질문들이 내가 대답하기를 원하지 않는 거라면? 날 잡아서 고문하기라도 할 거야?"~ */
  IF ~~ THEN REPLY #16315 /* ~"내게 말을 좀 하시오. 몇 가지만 물어보면 되오..."~ */ GOTO 5
  IF ~~ THEN REPLY #16316 /* ~맹세: "나는 당신을 해치려 하지 않겠소. 약속하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #16317 /* ~거짓말: "나는 당신을 해치려 하지 않겠소. 약속하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #16318 /* ~"내 질문에 대해서는 잊으시오. 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 4.1 4.2
  SAY #16230 /* ~"어림없지. 가서 다른 사람이나 귀찮게 하라고."~ */
  IF ~~ THEN REPLY #16319 /* ~떠난다.~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #16231 /* ~"왜? 이 랫본이 겁나기라도 하나? 위협을 느끼는 거야, 얼간아?"~ */
  IF ~~ THEN REPLY #16320 /* ~"아니오."~ */ GOTO 7
  IF ~~ THEN REPLY #16321 /* ~"그렇소."~ */ GOTO 8
  IF ~~ THEN REPLY #16322 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16232 /* ~"헤헤. 니가 하는 걸 보면 알 수가 있지. 좋아, 내게 뭘 원하는 거야?"~ */
  IF ~~ THEN REPLY #16323 /* ~"내가 말한 것처럼 난 당신에게 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16324 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #16233 /* ~"그럼 그건 니 실수지. 날 가만히 내버려 두고 꺼져."~ */
  IF ~~ THEN REPLY #16325 /* ~떠난다.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 2.2 3.2 4.3 5.0 6.2 7.1 8.0
  SAY #16234 /* ~당신이 떠나려 하자 그는 당신을 부른다. "이봐, 잠깐만 기다려..."~ */
  IF ~~ THEN REPLY #16326 /* ~"그래서?"~ */ GOTO 10
  IF ~~ THEN REPLY #16327 /* ~그를 무시하고 그냥 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16235 /* ~그는 똑바로 서서 무기를 치운다. "누가 널 보냈지? 넌 왜 여기 온 거야?"~ */
  IF ~~ THEN REPLY #16328 /* ~"아무도 날 보내지 않았소. 내가 이 곳에 온 건 내 뜻이오."~ */ GOTO 12
  IF ~~ THEN REPLY #16329 /* ~"당신은 왜 누군가가 날 보냈을 거라고 생각하는 것이오?"~ */ GOTO 12
  IF ~~ THEN REPLY #16330 /* ~"대체 무슨 얘기를 하는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #16331 /* ~"당신과는 상관없는 일이오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #16236 /* ~그는 다시 침을 뱉는다. "흥. 그럼 꺼져."~ */
  IF ~~ THEN REPLY #16332 /* ~떠난다.~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2
  SAY #16237 /* ~"흠..." 그는 당신을 오랫동안 뚫어지게 쳐다본다. 어색한 정적이 지나간 후 그가 말을 한다. "좋아. 내게서 뭘 알고 싶은 거지?"~ */
  IF ~~ THEN REPLY #16333 /* ~"내가 말한 것처럼 난 당신에게 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16334 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0 12.0 15.0 17.0 20.0 21.1 22.3 23.1 24.2 25.1 27.2 28.0 29.1 33.0 34.0 35.7 36.0 37.4 39.0 40.4 41.0 42.4 43.3 44.2 45.2 46.1 47.2 48.4 49.3 50.3 51.2 52.3 55.1 58.2 59.2 62.0 64.1 65.1 76.0 77.0 79.0
  SAY #16238 /* ~"그럼 말을 해봐. 질문을 하라고."~ */
  IF ~  Global("RB_Name","AR0101",0)
~ THEN REPLY #16335 /* ~"당신은 누구요?"~ */ GOTO 14
  IF ~  Global("RB_Name","AR0101",1)
~ THEN REPLY #16336 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 20
  IF ~~ THEN REPLY #16337 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 21
  IF ~~ THEN REPLY #16338 /* ~"내게 이 구역에 대해서 얘기해줄 수 있겠소?~ */ GOTO 42
  IF ~  Global("RB_Quest","AR0101",3)
~ THEN REPLY #16339 /* ~"그 수집자와 방탕자에 대해 다시 얘기해주시오."~ */ GOTO 67
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",0)
~ THEN REPLY #16340 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 32
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",1)
~ THEN REPLY #16341 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 39
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",2)
~ THEN REPLY #16342 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 40
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16343 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 41
  IF ~~ THEN REPLY #16344 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #16239 /* ~"난 랫본이야. 넌 누구지?"~ */
  IF ~~ THEN REPLY #16345 /* ~거짓말: "나는, 어... 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16346 /* ~"내겐 이름이 없소."~ */ GOTO 16
  IF ~~ THEN REPLY #16347 /* ~"모르겠소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16348 /* ~"당신과는 상관없는 일이오."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #16240 /* ~그는 눈살을 찌푸린다. "그래, 물론 그렇겠지."~ */
  IF ~~ THEN REPLY #16349 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16350 /* ~"그렇소, 그게 나요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #16241 /* ~햇본은 능글맞게 웃는다. "물론 아니겠지. 그러리라고 생각했어. 왜 아니지?"~ */
  IF ~~ THEN REPLY #16351 /* ~거짓말: "좋소... 나는, euh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16352 /* ~"내가 그것을 기억하지 못하기 때문이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16353 /* ~"당신과는 상관없는 일이오."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.2 16.1
  SAY #16242 /* ~랫본이 눈썹을 치켜 올린다. "정말? 사실이라고 하기에는 너무 기괴하군... 헤. 어떤 일을 당한 거야? 누가 네 흉터투성이 대가리를 치기라도 한 거야?"~ */
  IF ~~ THEN REPLY #16354 /* ~"Quelque chose comme ?. 그 밖에도 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16355 /* ~"그건 긴 얘기요. 나중에 기회가 있으면 얘기하리다. 안녕히 계시오."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3 16.2 30.3 31.2 32.3 35.3 35.5 37.0 37.2 40.0 40.2
  SAY #16243 /* ~"오? 흥. 애초에 너와는 얘기하지 말았어야 했어. 꺼져. 너와는 더 이상 얘기하기 싫으니까."~ */
  IF ~~ THEN REPLY #16356 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16357 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 38.0 60.0
  SAY #16244 /* ~그는 당신 말을 중간에서 끊는다. "아니! 듣고 싶지 않아. 꺼져." 그는 돌아서서 수색을 계속한다.~ */
  IF ~~ THEN REPLY #16358 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #16245 /* ~"헤! 벌써 까먹었어, 얼간아? 랫본이라고!"~ */
  IF ~~ THEN REPLY #16359 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16360 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #16246 /* ~"신경 꺼."~ */
  IF ~~ THEN REPLY #16361 /* ~"당신은 뭔가를 찾고 있는 것 같소."~ */ GOTO 22
  IF ~~ THEN REPLY #16362 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 13
  IF ~~ THEN REPLY #16363 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #16247 /* ~"아니, 실은 난 사-" 그는 갑자기 말을 멈추고 미심쩍은 눈으로 당신을 흘겨본다. "왜 관심을 가지는 거지?"~ */
  IF ~~ THEN REPLY #16364 /* ~"그냥 궁금했을 뿐이오."~ */ GOTO 30
  IF ~~ THEN REPLY #16365 /* ~진실: "혹시 내가 도울 수는 없을까 생각하던 중이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Rbone_1","GLOBALGood",1)
~ GOTO 30
  IF ~~ THEN REPLY #16366 /* ~거짓말: "혹시 내가 도울 수는 없을까 생각하던 중이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_3","GLOBALLaw",-1)
~ GOTO 30
  IF ~~ THEN REPLY #16367 /* ~"아니오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16368 /* ~"실은 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 30.0 30.1 31.0 31.1 31.3
  SAY #16248 /* ~"흠. 난 크래니움 랫을 사냥하고 있어."~ */
  IF ~~ THEN REPLY #16369 /* ~"당신은 왜 쥐를 사냥하는 거요?"~ */ GOTO 24
  IF ~~ THEN REPLY #16370 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16371 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #16249 /* ~"그냥 쥐가 아니라 크래니움 랫이야. 놈들에게는 현상금이 붙어 있지. 알아? 꼬리 하나 당 동전 한 닢이라고."~ */
  IF ~~ THEN REPLY #16372 /* ~"왜 그들에게 현상금이 걸려 있는 거요?"~ */ GOTO 25
  IF ~~ THEN REPLY #16373 /* ~"당신은 꼬리를 어디로 가져가오?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16374 /* ~"흥미롭군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16375 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #16250 /* ~"에? 그건 놈들이 보통 쥐가 아니기 때문이지. 놈들은 훨씬 더 위험한 놈들이야. 더 많은 수가 함께 모일 수록 더 똑똑해져... 메이지처럼 주문을 사용할 수 있을 정도로. 벌통, 아니 시길은 주문을 영창하는 쥐들이 찍찍거리지 않아도 이미 충분히 위험한 곳이지. ~ */
  IF ~~ THEN REPLY #16376 /* ~"꼬리는 어디로 가져가오?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16377 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16378 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #16251 /* ~"왜? 너도 쥐 사냥을 할 생각이야?"~ */
  IF ~~ THEN REPLY #16379 /* ~"그렇소."~ */ GOTO 27
  IF ~~ THEN REPLY #16380 /* ~"아마 그럴지도."~ */ GOTO 27
  IF ~~ THEN REPLY #16381 /* ~"아니, 그냥 궁금했을 뿐이오."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #16252 /* ~"여기선 하지마, 얼간아. 내 사냥터에 다른 얼간이가 와서 들쑤시지 않아도 벌써 최근에는 놈들이 귀해지고 있다고."~ */
  IF ~~ THEN REPLY #16382 /* ~"그들의 최근에는 귀하오? 왜 그런지 아시오?"~ */ GOTO 28
  IF ~~ THEN REPLY #16383 /* ~"난 그래도 알고 싶소."~ */ GOTO 29
  IF ~~ THEN REPLY #16384 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16385 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #16253 /* ~"몰라. 너무 많이 사냥을 한 탓인지도 몰라, 시길의 쥐 사냥꾼은 나 하나뿐이 아니니까. 넝마주이 광장에서는 나 하나뿐이지만.~ */
  IF ~~ THEN REPLY #16386 /* ~"흥미롭군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16387 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.1
  SAY #16254 /* ~"흠." 그는 당신을 흘겨본 후 한숨을 쉰다. "내가 왜 너에게 그런 비밀까지 가르쳐 주는 건지 모르겠군. 광장의 동쪽으로 나간 후 남쪽으로 가. 그 곳은 시장의 남쪽에 있어. 어쨌든 여기서 사냥할 생각은 마. 한 사람의 쥐 사냥꾼이 먹고 살기에 충분할 만큼도 없다고!"~ */
  IF ~~ THEN REPLY #16388 /* ~"그렇소? 왜 그런지 혹시 짐작이라도 가오?~ */ GOTO 28
  IF ~~ THEN REPLY #16389 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 13
  IF ~~ THEN REPLY #16390 /* ~"고맙소. 기회가 있으면 그 곳에 들리리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 22.0 22.1 22.2
  SAY #16255 /* ~"흠. 아무런 대가도 없이 얘길 해줄 순 없지. 니가 여기서 뭘 하고 있는지부터 말해."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16391 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16392 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #16393 /* ~"나는 자신이 누군지 누르오. 그냥 방황하고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #16394 /* ~"그건 당신이 상관할 바가 아니라고 생각하는데."~ */ GOTO 18
  IF ~~ THEN REPLY #16395 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY #16256 /* ~"에? 이봐, 얼간아. 그것보다는 그럴 듯하게 해야지, 거짓말을 하려면." 그는 눈알을 희번덕거리며 신랄하게 웃는다. ~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16396 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16397 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #16398 /* ~"말했던 것처럼 그냥 방황하고 있소."~ */ GOTO 18
  IF ~~ THEN REPLY #16399 /* ~뭔가 꾸며댄다.~ */ GOTO 23
  IF ~~ THEN REPLY #16400 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 13.5
  SAY #16257 /* ~"정말이야? 흠..." 그는 당신 쪽으로 몸을 구부리고 목소리를 낮춘다. "그는 근처에 있어. 왜 그를 찾는 거지? 그가 니 친구야? 아니면 적이야?"~ */
  IF ~~ THEN REPLY #16401 /* ~"그는 내가 필요로 하는 정보를 가지고 있소."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 33
  IF ~~ THEN REPLY #16402 /* ~거짓말: "그는 내 친구요."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 34
  IF ~~ THEN REPLY #16403 /* ~거짓말: "적이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~~ THEN REPLY #16404 /* ~"그건 당신이 상관할 바가 아니라고 생각하는데."~ */ DO ~SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~~ THEN REPLY #16405 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #16258 /* ~"그래? 어쨌든 제대로 찾아왔어. 여기서 잘 찾아보라고. 그가 꽤 단단히 숨어 있기는 하지만 분명히 이 넝마주이 광장에서 찾을 수가 있을 거야. 금방 발견하게 될 거라고."~ */
  IF ~~ THEN REPLY #16406 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 13
  IF ~~ THEN REPLY #16407 /* ~"가서 그를 찾도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #16259 /* ~"그래?" 랫본은 당신을 조심스럽게 살핀다. "흠. 그럼 그로부터 일자리를 얻으려는 거야? 당신은 그런 부류로 보이지는 않는데. 관두자고. 어쨌든 제대로 찾아왔어. 여기서 잘 찾아보라고. 그가 꽤 단단히 숨어 있기는 하지만 분명히 이 넝마주이 광장에서 찾을 수가 있을 거야. 금방 발견하게 될 거라고."~ */
  IF ~~ THEN REPLY #16408 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 13
  IF ~~ THEN REPLY #16409 /* ~"가서 그를 찾도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #16260 /* ~그는 잠시 몸을 움츠린다. 그러더니 킬킬 웃으면서 고개를 젓는다. "헤! 당신처럼 생긴 사람이 찾아오는 건 나도 원하지 않을 걸. 당신한테 파로드가 어디 있는지 얘기를 해주면 그가 싫어할 걸. 내가 곤란한 일을 당할 수가 있다고..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16410 /* ~맹세: "나는 당신 이름을 발설하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
~ GOTO 36
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16411 /* ~맹세: "나는 당신 이름을 발설하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~~ THEN REPLY #16412 /* ~거짓말: "난 당신 이름을 발설하지 않겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_5","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16413 /* ~진실: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16414 /* ~진실: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16415 /* ~허풍: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16416 /* ~허풍: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~~ THEN REPLY #16417 /* ~"그럼 관두시오. 다른 것에 대해 물어봅시다..."~ */ GOTO 13
  IF ~~ THEN REPLY #16418 /* ~"그럼 내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #16261 /* ~"염병할! 헤... 이유는 묻지 마, 하지만 당신을 믿기로 하지." 그는 침을 뱉으려고 잠시 말을 멈춘다. "내가 나중에 후회하도록 만들지는 말라고! 여기서 잘 찾아보라고. 그가 꽤 단단히 숨어 있기는 하지만 분명히 이 넝마주이 광장에서 찾을 수가 있을 거야. 금방 발견하게 될 거라고."~ */
  IF ~~ THEN REPLY #16419 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16420 /* ~"가서 그를 찾도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 35.2
  SAY #16262 /* ~그는 고개를 슬프게 젓는다. "미안하지만 그럴 수가 없어. 하지만 그는 가까운 곳에 있으니까 금방 자력으로 찾을 수가 있을 거야."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16421 /* ~진실: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16422 /* ~진실: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16423 /* ~허풍: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16424 /* ~허풍: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16425 /* ~"그럼 다른 질문들을 좀 하겠소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16426 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.4 35.6 37.1 37.3 40.1 40.3
  SAY #16263 /* ~그는 당신을 조소하며 당신 발에 침을 뱉는다. "흥. 나를 해치기 않겠다고 약속하고선. 애초에 너와는 얘기하지 말았어야 했어. 꺼져. 너와는 더 이상 얘기하기 싫으니까."~ */
  IF ~~ THEN REPLY #16427 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16428 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 13.6
  SAY #16264 /* ~그는 짜증스러운 듯 고개를 젓는다. "전에 이미 얘기했잖아! 여기서 잘 찾아보라고. 그가 꽤 단단히 숨어 있기는 하지만 분명히 이 넝마주이 광장에서 찾을 수가 있을 거야. 그러니 또 까먹고 날 다시 귀찮게 하기 전에 가서 녀석을 찾으라고!"~ */
  IF ~~ THEN REPLY #16429 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 13
  IF ~~ THEN REPLY #16430 /* ~"가서 그를 찾도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7
  SAY #16265 /* ~랫본은 불쾌하다는 표정을 짓는다. "내가 전에 말했지, 말해줄 수가 없다고. 그는 가까운 곳에 있으니까 자력으로 찾아봐."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16431 /* ~진실: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16432 /* ~진실: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16433 /* ~허풍: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16434 /* ~허풍: "당신이 아는 것을 내게 말하시오, 아니면 당신도 그와 같은 운명을 맞이할 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16435 /* ~"그럼 다른 질문들을 좀 하겠소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16436 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 13.8
  SAY #16266 /* ~"만약 그걸 여기서 잃어버렸다면 포기하는 게 좋아. 어쨌든 난 널 도울 수가 없으니까."~ */
  IF ~~ THEN REPLY #16437 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16438 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 13.3
  SAY #16267 /* ~"뭘 알고 싶은 거지? 내가 대답해줄 수 있는 게 있을지도 몰라."~ */
  IF ~~ THEN REPLY #16439 /* ~"어디 가면 일거리를 얻을 수가 있소?"~ */ GOTO 43
  IF ~~ THEN REPLY #16440 /* ~"내가 즐겁게 시간을 보낼만한 곳은 어디 있소?"~ */ GOTO 48
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16441 /* ~"이 곳에서 조심해야 할 것들은?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16442 /* ~"이 곳에서 조심해야 할 것들은?"~ */ GOTO 50
  IF ~~ THEN REPLY #16443 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 13
  IF ~~ THEN REPLY #16444 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 48.1 49.0 50.1 51.0 52.1 58.0 59.0
  SAY #16268 /* ~"일? 벌통에서는 일거리는 거의 없어. 적어도 떳떳한 일은 말이야. 만약 당신이 절박한 상황이라면 수집자로 일할 수도 있겠지... 하지만 나라면 다른 구역을 찾아가겠어. 마계구가 제일 낫지."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16445 /* ~"쥐를 사냥하는 건 어떻소?"~ */ GOTO 47
  IF ~~ THEN REPLY #16446 /* ~"수집자?"~ */ GOTO 45
  IF ~~ THEN REPLY #16447 /* ~"어떻게 하면 마계구로 갈 수가 있소?"~ */ GOTO 44
  IF ~~ THEN REPLY #16448 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16449 /* ~"그럼 그 곳에서 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2 45.1 47.1
  SAY #16269 /* ~"그건 쉽지... 그냥... 흠... 아니야. 사실은 내가 늘 이용하던 길은 이제 엉망이 되었어... 다버스가 그 주변의 구조를 완전히 바꾸어 놓았거든. 이제는 어떻게 하면 갈 수 있을지 모르겠어."~ */
  IF ~~ THEN REPLY #16450 /* ~"다버스?"~ */ GOTO 46
  IF ~~ THEN REPLY #16451 /* ~"수집자가 되는 일에 대해 당신이 한 말은 구체적으로 어떤 얘기였소?"~ */ GOTO 45
  IF ~~ THEN REPLY #16452 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16453 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.1 46.0 47.0
  SAY #16270 /* ~"그래. 수집자는 시길... 주로 벌통에서 시체를 주워 시체안치소로 가져가지. 더스트맨이 시체를 사거든. 그 구역의 상태가 더 나빠지는 걸 막지." ~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16454 /* ~"쥐를 사냥하는 건 어떻소?"~ */ GOTO 47
  IF ~~ THEN REPLY #16455 /* ~"어떻게 하면 마계구로 갈 수가 있소?"~ */ GOTO 44
  IF ~~ THEN REPLY #16456 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16457 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0
  SAY #16271 /* ~"넌 정말 그렇게까지 무식한 거야? 다버스들은 시길의 주인인 레이디 오브 페인의 하인들이지. 내게 그녀에 대해서 물을 생각도 하지 말라고, 그녀에 대해 얘기만 해도 액운이 닥치니까."~ */
  IF ~~ THEN REPLY #16458 /* ~"수집자가 되는 일에 대해 당신이 한 말은 구체적으로 어떤 얘기였소?"~ */ GOTO 45
  IF ~~ THEN REPLY #16459 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16460 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.0 45.0
  SAY #16272 /* ~랫본은 당신을 막으려는 듯은 손을 들어 올린다. "안돼! 그럴 꿈도 꾸지 말라고... 적어도 여기선 안돼! 내가 벌어먹기에 충분할 만큼도 없으니까. 내 생각엔 놈들이 거의 씨가 마른 것 같아. 만약 그 일을 하려면 다른 곳으로 가라고."~ */
  IF ~~ THEN REPLY #16461 /* ~"수집자가 되는 일에 대해 당신이 한 말은 구체적으로 어떤 얘기였소?"~ */ GOTO 45
  IF ~~ THEN REPLY #16462 /* ~"어떻게 하면 마계구로 갈 수가 있소?"~ */ GOTO 44
  IF ~~ THEN REPLY #16463 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16464 /* ~"어디 두고 봅시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.1 50.2 51.1 52.2 58.1 59.1
  SAY #16273 /* ~"난 당신이 정확히 뭘 찾고 있는지는 모르겠지만, 여기선 찾아봐야 소용이 없어. 이 부근에서는 '숙녀들'도 문제가 될 수 있으니까."~ */
  IF ~~ THEN REPLY #16465 /* ~"아니오."~ */ GOTO 49
  IF ~~ THEN REPLY #16466 /* ~"이 곳에서 일자리를 얻으려면 어디로 가야 하오?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16467 /* ~"이 곳에서 조심해야 할 것들은?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16468 /* ~"이 곳에서 조심해야 할 것들은?"~ */ GOTO 50
  IF ~~ THEN REPLY #16469 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16470 /* ~"내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #16274 /* ~"에... 그럼 관두라고."~ */
  IF ~~ THEN REPLY #16471 /* ~"이 곳에서 일자리를 얻으려면 어디로 가야 하오?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
!Dead("Adyzoel")
~ THEN REPLY #16472 /* ~"이 곳에서 조심해야 할 것들은?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16473 /* ~"이 곳에서 조심해야 할 것들은?"~ */ GOTO 50
  IF ~~ THEN REPLY #16474 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16475 /* ~"내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 42.3 48.3 49.2
  SAY #16275 /* ~"특별한 건 없어... 여기서는 언제 어디서 위험이 닥칠지 아무도 모르니까. 늘 뒤를 조심하고, 사람들과 얘기를 할 때는 가려서 말해. 엉뚱한 사람과 얘기를 하면 죽거나 그보다 더 심한 일을 당할 수도 있으니까. ~ */
  IF ~~ THEN REPLY #16476 /* ~"더 나쁜?"~ */ GOTO 51
  IF ~~ THEN REPLY #16477 /* ~"어디 가면 일거리를 얻을 수가 있소?"~ */ GOTO 43
  IF ~~ THEN REPLY #16478 /* ~"내가 즐겁게 시간을 보낼만한 곳은 어디 있소?"~ */ GOTO 48
  IF ~~ THEN REPLY #16479 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16480 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #16276 /* ~그는 심각한 표정으로 고개를 끄덕인다. "물론. 죽음보다 더 지독한 일은 생각할 수 없다는 등의 헛소리는 내게 지껄이지 마."~ */
  IF ~~ THEN REPLY #16481 /* ~"어디 가면 일거리를 얻을 수가 있소?"~ */ GOTO 43
  IF ~~ THEN REPLY #16482 /* ~"내가 즐겁게 시간을 보낼만한 곳은 어디 있소?"~ */ GOTO 48
  IF ~~ THEN REPLY #16483 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16484 /* ~"내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.2 48.2 49.1
  SAY #16277 /* ~"너무 많아. 하지만 정말 조심해야 할 걸 하나 일러주지. 벌통에서 얼쩡거리고 있는 방탕자가 하나 있어. 별로 강해 보이지는 않을지도 모르지만 실은 그는 타고난 전사야!"~ */
  IF ~~ THEN REPLY #16485 /* ~"그게 누구요?"~ */ GOTO 53
  IF ~~ THEN REPLY #16486 /* ~"어디 가면 일거리를 얻을 수가 있소?"~ */ GOTO 43
  IF ~~ THEN REPLY #16487 /* ~"내가 즐겁게 시간을 보낼만한 곳은 어디 있소?"~ */ GOTO 48
  IF ~~ THEN REPLY #16488 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16489 /* ~"그럼 그를 조심하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #16278 /* ~"잠깐, 내 말은 아직 안 끝났어. 정말 조심해야 할 건 그 방탕자가 아니라 그를 늘 따라다니는 더러운 수집자라고. 내 생각에 그 수집자는 방탕자의 학살과 단순히 시체를 끌고 가 처리하는 것 이상의 관계가 있어."~ */
  IF ~~ THEN REPLY #16490 /* ~"수집자?"~ */ GOTO 54
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16491 /* ~"무슨 뜻이오?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16492 /* ~"어떻게 그걸 아시오?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16493 /* ~"무슨 뜻이오?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16494 /* ~"어떻게 그걸 아시오?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #16279 /* ~"그래, 시길... 주로 벌통에서 시체를 주워 시체안치소로 가져가 돈을 받는 자들이지."~ */
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16495 /* ~"'이상의 뭔가가 있다'가 대체 무슨 뜻이오?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16496 /* ~"당신은 이 수집자에 대해 어떻게 아시오?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16497 /* ~"'이상의 뭔가가 있다'가 대체 무슨 뜻이오?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16498 /* ~"당신은 이 수집자에 대해 어떻게 아시오?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 55 // from: 53.1 53.2 54.0 54.1
  SAY #16280 /* ~"흠... 이봐, 당신은 관심이 있는 모양이군. 하지만 이건 보통 얘기가 아니라 중대한 비밀이라고. 내게 얘기를 듣고 싶으면 내 부탁을 들어주어야겠어." ~ */
  IF ~~ THEN REPLY #16499 /* ~"부탁이 뭔지 말하시오."~ */ GOTO 56
  IF ~~ THEN REPLY #16500 /* ~"그럼 관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 13
  IF ~~ THEN REPLY #16501 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #16281 /* ~"좋아, 좋아. 나는 지금 한 친구와 내기를 하고 있어... 일종의 경쟁이지. 자시한 건 알 필요가 없고 내가 가능한 한 많은 쥐꼬리를 원한다는 것만 알라고. 보통 쥐의 꼬리는 소용이 없어... 크래니움 랫... 뇌 쥐의 꼬리여야만 해. 내게 쥐꼬리를 다섯 개 가져다 주면 그 더러운 수집자와 잔인한 방탕자의 비밀에 대한 얘기를 다 들려주지."~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16502 /* ~"여기 쥐꼬리 다섯 개가 있소."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16503 /* ~"크래니움 랫?"~ */ GOTO 57
  IF ~~ THEN REPLY #16504 /* ~"이해하오."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16505 /* ~"내 시간을 허비할 가치가 있을 것 같지 않소."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY #16282 /* ~"그래. 놈들은 보통 쥐가 아니야. 놈들은 사람들에게 훨씬 위험한 존재지. 더 많은 수가 함께 모일 수록 더 똑똑해져... 복병을 배치하고 메이지처럼 주문을 사용할 수 있을 정도로. 놈들을 잡으려고 할 때는 각별히 조심하라고!"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16506 /* ~"여기 쥐꼬리 다섯 개가 있소."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16507 /* ~"이해하오."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16508 /* ~"내 시간을 허비할 가치가 있을 것 같지 않소."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 56.2 57.1 78.0
  SAY #16283 /* ~"그래. 다른 건 없어?"~ */
  IF ~~ THEN REPLY #16509 /* ~"그렇소, 어디 가면 일거리를 찾을 수가 있소?"~ */ GOTO 43
  IF ~~ THEN REPLY #16510 /* ~"그렇소. 시간을 즐겁게 보내려면 어디로 가야 하오?"~ */ GOTO 48
  IF ~~ THEN REPLY #16511 /* ~"그렇소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16512 /* ~"아니, 아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 56.3 57.2 78.1
  SAY #16284 /* ~"마음대로 해. 그 두 사람의 비밀에 대해 알고 싶으면 뭘 가져와야 하는지는 알겠지. 그 밖에 다른 건?"~ */
  IF ~~ THEN REPLY #16513 /* ~"그렇소, 어디 가면 일거리를 찾을 수가 있소?"~ */ GOTO 43
  IF ~~ THEN REPLY #16514 /* ~"그렇소. 시간을 즐겁게 보내려면 어디로 가야 하오?"~ */ GOTO 48
  IF ~~ THEN REPLY #16515 /* ~"그렇소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16516 /* ~"아니, 아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",1)
~ THEN BEGIN 60 // from:
  SAY #16285 /* ~"난 당신이 왜 돌아왔는지는 모르겠지만, 당신과는 한 마디도 더 얘기할 생각이 없어."~ */
  IF ~~ THEN REPLY #16517 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 19
  IF ~  !Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16518 /* ~"사과하고 싶었소."~ */ GOTO 62
  IF ~  Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16519 /* ~"사과하고 싶었소."~ */ GOTO 61
  IF ~  Global("RB_Sorry","AR0101",1)
~ THEN REPLY #16520 /* ~"사과하고 싶었소."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 60.2
  SAY #16286 /* ~"아니, 얼간아. 네가 한 짓은 너무 지나쳤어. 넌 거짓말을 하고 날 협박하기까지 했어... 꺼져."~ */
  IF ~~ THEN REPLY #16521 /* ~떠난다.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1
  SAY #16287 /* ~"흠." 그는 잠시 생각한 후 어깨 너머로 침을 뱉는다. "나도 실수할 때는 있으니까 당신에게 다시 기회를 주기로 하지. 앞으로는 말조심하라고..."~ */
  IF ~~ THEN REPLY #16522 /* ~"고맙소. 질문할 것들이 좀 있소."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16523 /* ~"물론이오. 안녕히 계시오."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.3
  SAY #16288 /* ~"아니, 얼간아. 난 이미 너에게 기회를 줬어. 꺼져."~ */
  IF ~~ THEN REPLY #16524 /* ~떠난다.~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
GlobalLT("RB_Quest","AR0101",2)
~ THEN BEGIN 64 // from:
  SAY #16289 /* ~당신이 다가가자 랫본은 당신을 올려다 본다. "허?"~ */
  IF ~  GlobalGT("RB_Quest","AR0101",0)
NumItemsPartyGT("Tail",4)
~ THEN REPLY #16525 /* ~"당신을 위해 쥐꼬리를 가져왔소."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16526 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16527 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",2)
~ THEN BEGIN 65 // from:
  SAY #16290 /* ~당신이 다가가자 랫본은 당신을 올려다 본다. "다시 만나 반갑군. 쥐꼬리는 가져왔어?"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16528 /* ~"그렇소."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16529 /* ~"아직 아니오. 물어볼 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16530 /* ~"아니, 아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 56.0 57.0 64.0 65.0
  SAY #16291 /* ~그는 꼬리를 받아서 가죽 주머니에 넣는다. 그 동안 그는 쉬지 않고 킬킬거린다. "이거면 충분하겠군! 정말 고마워."~ */
  IF ~~ THEN REPLY #16531 /* ~"나는 지금 당장 당신 비밀에 대해 들아야겠소."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 13.4 66.0
  SAY #16292 /* ~"물론이지. 내가 그 방탕자를 처음 봤을 때 난 뭔가 이상하다고 생각했어. 남의 이목을 피하기 위해 벌통에서 결투를 할 수도 있겠지, 하지만 그가 이 곳에 온지 벌써 여러 날이 지났어... 게다가 그는 마차를 타고 자신의 집으로 돌아갈 생각은 않고 벌통에서 숙박을 하고 있어."~ */
  IF ~~ THEN REPLY #16532 /* ~"관심?"~ */ GOTO 68
  IF ~~ THEN REPLY #16533 /* ~"계속하시오..."~ */ GOTO 69
  IF ~~ THEN REPLY #16534 /* ~"나머지는 나중에 들어야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #16293 /* ~"그래, 사법 관계. 머시킬러 같은 자들 말이야. 그들은 시길의 거리들 (중 일부를) 정찰하며 '질서'를 강제하지." 그는 얼굴을 찌푸린다. "그들은 벌통과 같은 빈민굴은 가급적 피하지."~ */
  IF ~~ THEN REPLY #16535 /* ~"알겠소. 그럼 계속하시오..."~ */ GOTO 69
  IF ~~ THEN REPLY #16536 /* ~"나머지는 나중에 들어야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0
  SAY #16294 /* ~"나는 도둑질은 오래 전에 그만뒀어(그 이유는 묻지 마), 하지만 그건 지나치리만큼 간단한 일이었지. 난 어느 날 밤 자정 무렵에 그가 묵고 있는 벼룩투성이 여관의 뒤쪽으로 몰래 숨어들어 갔어. 누가 그의 방 창문 옆에 있었는지 한 번 맞추어 보라고. 바로 그 수집자였어!"~ */
  IF ~~ THEN REPLY #16537 /* ~"계속해 주시오..."~ */ GOTO 70
  IF ~~ THEN REPLY #16538 /* ~"나머지는 나중에 들어야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #16295 /* ~"그래서 난 이중으로 의심을 하게 됐지. 옛날의 내 호기심이 다시 발동한 탓에 나는 그 수집자를 미행하기 시작했지. 그는 자지도 먹지도 않아... 방탕자가 밖에 나가 돌아다닐 때를 제외하고는 그는 늘 자신이 발견할 수 있는 가장 어두운 골목에 앉아 허공을 쳐다보지."~ */
  IF ~~ THEN REPLY #16539 /* ~"흥미롭군. 계속하시오..."~ */ GOTO 71
  IF ~~ THEN REPLY #16540 /* ~"나머지는 나중에 들어야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #16296 /* ~"가장 중요한 부분은 바로 이거야. 어느 어두운 밤 나는 그 수집자가 앉아 있는 골목이 내려다 보이는 지붕에 누워 있었지, 바로 그 때 누가 나타났는지 알겠어?"~ */
  IF ~~ THEN REPLY #16541 /* ~"방탕자?"~ */ GOTO 72
  IF ~~ THEN REPLY #16542 /* ~"말하시오."~ */ GOTO 73
  IF ~~ THEN REPLY #16543 /* ~"다른 기회에 얘기해주시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #16297 /* ~"아니! *마족*이었어!"~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.1 72.0
  SAY #16298 /* ~"틀림없는 마족이었어. 그녀는 정말 아름다웠어, 천사와 같은 날개에, 입술은 마치... 어쨌든 절세의 미녀였어. 하지만 그녀는 틀림없는 마족이야, 바테주의 일종으로 내가 온 곳에서는 이리니즈라 불리는 종류지."~ */
  IF ~~ THEN REPLY #16544 /* ~"그럼 계속하시오..."~ */ GOTO 74
  IF ~~ THEN REPLY #16545 /* ~"나머지는 나중에 들어야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #16299 /* ~"그들이 얘기할 때 그 내용을 들을 수 있었다면 원이 없었을 거야, 하지만 난 마족의 시선을 끄는 짓을 할 만큼 무모하지는 않았지. 내가 아는 건 그들이 잠시 얘기를 나눈 후, 그 마족이 잔인하게 비웃는 웃음을 웃으며 그녀를 향해 으르렁거리는 수집자를 내버려 둔 채 사라졌다는 사실뿐이야.~ */
  IF ~~ THEN REPLY #16546 /* ~"이러한 일들이 모두 사실이라고 단언할 수 있소?"~ */ GOTO 75
  IF ~~ THEN REPLY #16547 /* ~"왜 마족이 수집자와 얘기를 하겠소?"~ */ GOTO 76
  IF ~~ THEN REPLY #16548 /* ~"흥미로운 얘기요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #16300 /* ~"헤! 날 믿지 못하겠으면 직접 가서 보라고! 하지만 조심해. 그 방탕자는 정말 지독한 놈이니까. 그와 결투를 하거나 그 수집자를 귀찮게 하는 자는 모두 순식간에 사망자 명단에 오르게 된다고."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #16549 /* ~"왜 마족이 수집자와 얘기를 하겠소?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #16550 /* ~"왜 마족이 수집자와 얘기를 하겠소?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #16551 /* ~"흥미로운 얘기요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 74.1 75.0
  SAY #16301 /* ~"전혀 이해를 못했군, 이 미치광이 얼간이 같으니! 그는 수집자가 아니야! 헤... 만약 당신이 마족... 그것도 미치광이 타나리가 아닌 바테주을 만나게 된다면, 그것에 직접 물어보지 그래? 어떤 답을 듣게 될 지는 상상도 못할 테니까."~ */
  IF ~~ THEN REPLY #16552 /* ~"정보를 주어 고맙소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16553 /* ~"만약 조우하게 되면 그렇게 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #16302 /* ~"전혀 이해를 못했군, 이 미치광이 얼간이 같으니! 그는 수집자가 아니야! 헤... 만약 당신이 마족... 그것도 미치광이 타나리가 아닌 바테주을 만나게 된다면..." 그는 훨-후럼-그레이스가 있는 것을 눈치채고 말을 멈춘다. "아니, 내 말은 타나리가 '보다 자유로운 의지'를 지녔다는 뜻이야. 어쨌든 바테주를 만나면 그것에 대해 직접 물어보라고. 어떤 답을 듣게 될 지는 상상도 못할 테니까."~ */
  IF ~~ THEN REPLY #16554 /* ~"정보를 주어 고맙소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16555 /* ~"만약 조우하게 되면 그렇게 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 53.3 53.4 54.2 54.3
  SAY #16303 /* ~"난 이미 내가 대가로 뭘 원하는지 당신에게 말했어. 쥐꼬리 다섯 개. 보통 쥐의 꼬리는 소용이 없어... 크래니움 랫... 뇌 쥐의 꼬리여야만 해. 내게 쥐꼬리를 다섯 개 가져다 주면 그 더러운 수집자와 잔인한 방탕자의 비밀에 대한 얘기를 다 들려주지."~ */
  IF ~~ THEN REPLY #16556 /* ~"이해하오."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16557 /* ~"내 시간을 허비할 가치가 있을 것 같지 않소."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",3)
~ THEN BEGIN 79 // from:
  SAY #16304 /* ~당신이 다가가자 랫본은 당신을 올려다 본다. "허?"~ */
  IF ~~ THEN REPLY #16558 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #16559 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END
