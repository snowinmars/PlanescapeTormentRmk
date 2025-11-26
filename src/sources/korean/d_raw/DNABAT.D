// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNABAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNABAT~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #49302 /* ~천사와 같은 얼굴의 남자가 보인다. 그는 눈을 거의 감다시피 하고 있는데, 그것이 세상의 공포를 보지 않기 위해서인지, 아니면 세상이 그의 내면의 공포를 보지 못하도록 하기 위해서인지 알 수가 없다. 그러나 그럼에도 그는 얼굴에 주름이 잡힐 정도로 환히 웃고 있다. 당신에게 인사를 할 때의 그의 목소리는 상냥하기는 하나 활기가 없다. "안녕하시오."~ */
  IF ~~ THEN REPLY #49303 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #49304 /* ~"안녕하시오, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #49305 /* ~"뭘 알고 싶소?"~ */
  IF ~~ THEN REPLY #49306 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #49307 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #49308 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #49309 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #49310 /* ~"뭐, 이 배신자의 문 선술집 말이오? 이 곳은 저기 있는 썩은 바스가 운영하고 있으며, 단골들로는 전직 하모니움 마퀘즈; 전에 이 곳에서 일한 적이 있는 키틀라; 별의별 일을 다 해본 달란 - 그에 대해서는 흥미로운 얘기가 많으니 기회가 있으면 해주리다; 그리고 나도 아직 별로 아는 바가 없는 도나 퀴쇼가 있소."~ */
  IF ~~ THEN REPLY #49311 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #49312 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #49313 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.1
  SAY #49314 /* ~"나? 나는 나배트요. 한때는 알려진 이야기꾼이었으나, 이제는 술집에서 이야기나 파는 신세로 전락했소. 이제 나는 은퇴를 했소. 나중에 기회가 있으면 얘기를 들려주리다. 달리 원하는 것이라도 있소?"~ */
  IF ~~ THEN REPLY #49315 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #49316 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #49317 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.1
  SAY #49318 /* ~미소를 짓자 그의 얼굴은 주름투성이가 된다. "왜 내가 그것에 대해 안다고 생각하시오? 농담은 빼고 말하겠는데... 무엇이 알고 싶은 거요?"~ */
  IF ~~ THEN REPLY #49319 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #49320 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #49321 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #49322 /* ~나배트는 당신에게 미소짓는다. "이제는 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #49323 /* ~"나는 몇 가지 질문에 대한 답을 듣고자 할 뿐이오.."~ */ GOTO 1
  IF ~~ THEN REPLY #49324 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 6 // from:
  SAY #49325 /* ~천사와 같은 얼굴의 남자가 보인다. 그는 눈을 거의 감다시피 하고 있는데, 그것이 세상의 공포를 보지 않기 위해서인지, 아니면 세상이 그의 내면의 공포를 보지 못하도록 하기 위해서인지 알 수가 없다. 그러나 그럼에도 그는 얼굴에 주름이 잡힐 정도로 환히 웃고 있다. 당신에게 인사를 할 때의 그의 목소리는 상냥하기는 하나 활기가 없다. "안녕하시오. 나는 당신이 어떤 열쇠를 얻고자 한다고 들었소."~ */
  IF ~~ THEN REPLY #49326 /* ~"그렇소."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49327 /* ~"그렇소, 하지만 지금 당장은 아니오. 당신에게 물어볼 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #49328 /* ~"지금 당장은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",3)
Global("Caretaker","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #49329 /* ~"그래... 돌아오셨군. 열쇠의 세 번째 부분을 받겠소?"~ */
  IF ~~ THEN REPLY #49330 /* ~"그렇소."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49331 /* ~"그렇소, 하지만 지금 당장은 아니오. 당신에게 물어볼 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #49332 /* ~"지금 당장은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0 9.0 10.0
  SAY #49333 /* ~"이 도시의 쓰레기 매립지 관리인은 카이스라는 남자요. 풍문에 의하면 그의 집 마루 밑에는 상당량의 황금이 숨겨져 있으며, 어떤 갱단이 그로부터 그것을 빼앗으려고 한다고 하오. 내게는 그 일을 막아야 할 이유가 있소. 가서 카이스로부터 전후 사정을 알아 오시오. 그 일을 하면 열쇠를 주겠소. 그리고 만약 당신이 관심이 있다면 은밀 행동을 하는 기술에 대해서도 가르쳐 주겠소."~ */
  IF ~~ THEN REPLY #49334 /* ~"좋소. 먼저 물어보고 싶은 것들이 있소."~ */ JOURNAL #47847 /* ~배신자의 문 여관에 있는 나배트는 열쇠의 세 번째 부분을 얻기 위해 내가 무엇을 해야하는지 말해주었다. 아웃랜즈로 통하는 문 부근에 살고있는 관리인은 소문에 의하면 부자라고 한다... 그리고 그가 재산 때문에 습격을 당할 것이라는 소문이 돌고있다고 한다. ~ */ GOTO 9
  IF ~~ THEN REPLY #49335 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #47847 /* ~배신자의 문 여관에 있는 나배트는 열쇠의 세 번째 부분을 얻기 위해 내가 무엇을 해야하는지 말해주었다. 아웃랜즈로 통하는 문 부근에 살고있는 관리인은 소문에 의하면 부자라고 한다... 그리고 그가 재산 때문에 습격을 당할 것이라는 소문이 돌고있다고 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.0
  SAY #49336 /* ~"질문이 있소? 좋소. 문제는 당신이 이 일을 할 거냐는 거요. 내게는 열쇠가 있고, 당신에게는 할 질문들이 있소, 그리고 당신은 일을 마치면 답을 얻게 될 거요. 당신에게는 시간이 별로 없소."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49337 /* ~"좋소. 내가 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #49338 /* ~"왜 이 일이 당신에게 그렇게 중요한 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #49339 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #49340 /* ~"무슨 상관이오? 만약 내가 그가 내 할아버지라고 말한다면? 만약 내가 그를 공격하려는 자들에게 복수를 할 생각이라고 한다면? 만약 내가 그 돈을 나 자신이 차지하기; 위해서라고 한다면? 동기가 중요하다고 생각하시오? 중요한 건 당신은 당신이 원하는 열쇠를 얻고, 나 역시 이 일 때문에 뭔가를 얻을 거라는 거요."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49341 /* ~"좋소. 내가 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49342 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #49343 /* ~당신은 그가 가늘게 뜬 눈으로 당신을 평가하고 있다는 인상을 받는다. "내 정보원에 의하면 당신은 아직 내가 시킨 일을 끝내지 않았소. 하시오, 그러면 당신은 열쇠의 세 번째 부분을 얻을 것이오."~ */
  IF ~~ THEN REPLY #49344 /* ~"내 질문에 대답해줄 수 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #49345 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49346 /* ~그는 한숨을 쉰다. "뭘 알고 싶으시오? 나에 대해 알고 싶소? 나는 나배트요. 커스트에 대해 알고 싶소? 관심이 있는 사람을 찾아서 물어보시오. 이 선술집에 대해 알고 싶으시오? 이 곳은 배신당한 사람들로 가득 차 있소. 그 디바에 대해 알고 싶소? 일을 끝내면 당신은 그에게 한 걸음 더 다가가게 될 거요. 우리 모두가 행복할 수 있도록 가서 일을 끝내시오."~ */
  IF ~~ THEN REPLY #49347 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",5)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #49348 /* ~당신이 들어오자 나배트가 환하게 미소를 짓는다. "당신이 일을 끝냈다는 얘기를 들었소. 그건 열쇠의 세 번째 부분이 당신 갓이 되었다는 것을 의미하오." 그의 눈이 잠시 이글거리더니 그의 입에서 한 구절의 말이 튀어나온다. "...그들의 운명은 결정되었다..." 그의 눈이 정상으로 돌아오자 그는 어깨를 으쓱한다. "대단한 구절은 아니지만 그게 세 번째 열쇠요. 도와줘서 고맙소. 열쇠의 다음 부분은 달란이 가지고 있소. 그는 저기서 젊은 여자 친구와 함께 있소. 또는 당신이 원한다면 내가 당신에게 도둑질 기술을 좀 가르쳐 줄 수도 있소..."~ */
  IF ~~ THEN REPLY #49349 /* ~"이제 날 위해 몇 가지 질문에 대답해주겠소?"~ */ DO ~AddexperienceParty(43750)
SetGlobal("Curst_Key","GLOBAL",4)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~나는 세 번째 열쇠를 나배트로부터 받았다. "...그들의 운명은 결정되었다... 이제 나는 달란하고 얘기를 해야만 한다. 그는 젊은 여자 친구와 함께 있는 사람이다. ~ */ GOTO 14
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49350 /* ~"내게 은밀 행동의 기술을 가르쳐 주시오."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~나는 세 번째 열쇠를 나배트로부터 받았다. "...그들의 운명은 결정되었다... 이제 나는 달란하고 얘기를 해야만 한다. 그는 젊은 여자 친구와 함께 있는 사람이다. ~ */ GOTO 20
  IF ~~ THEN REPLY #67170 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~나는 세 번째 열쇠를 나배트로부터 받았다. "...그들의 운명은 결정되었다... 이제 나는 달란하고 얘기를 해야만 한다. 그는 젊은 여자 친구와 함께 있는 사람이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 16.0 17.0 18.0 19.0 22.0 24.1 25.1 26.0
  SAY #49352 /* ~"좋소. 지금 나는 인심을 쓰고 싶은 기분이니까."~ */
  IF ~~ THEN REPLY #49353 /* ~"당신은 왜 내가 그 노인을 구하기를 원했소? 이 곳은 배신의 도시가 아니오?"~ */ GOTO 16
  IF ~~ THEN REPLY #49354 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #49355 /* ~"내게 이야기를 해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #49356 /* ~"이 곳에 대해 얘기해주시오."~ */ GOTO 19
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49357 /* ~"내게 은밀 행동의 기술을 가르쳐 줄 수 있겠소?"~ */ GOTO 20
  IF ~~ THEN REPLY #67172 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",6)
GlobalGT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #49358 /* ~"또 당신이군, 에? 이제는 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #49359 /* ~"몇 가지 질문에 대한 답을 원하오..."~ */ GOTO 14
  IF ~~ THEN REPLY #49360 /* ~"내게 은밀 행동의 기술을 가르쳐 주기를 바라오."~ */ GOTO 20
  IF ~~ THEN REPLY #67173 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #49361 /* ~"그들은 한때 내 패거리였소. 그러나 놈들은 내가 자기네들 돈을 훔쳤다는 이유로 나를 쫓아냈소 - 그것이 명백한 모함이었는데도 말이오. 카이스에 대한 소문을 퍼뜨린 것도 나요. 나는 놈들이 그 함정에 빠질 것을 알고 있었으니까. 그리고 누군가가 나서서 그들을 처치하거나, 그들이 경비병에게 체포되기에 충분한 증거를 남기길 기대했소. 어떻게 되든 내가 이기게 되어 있었소."~ */
  IF ~~ THEN REPLY #49362 /* ~"알겠소...몇 가지만 더 물어보고 싶소..."~ */ GOTO 14
  IF ~~ THEN REPLY #49363 /* ~"멋지군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #49364 /* ~"내 이름은 나배트요. 성은 없소. 나는 한참 전에 어타머터(미캐너스의 한 지역)에서 이 곳으로 왔소, 새로운 것을 발견하고, 또 내 이야기를 들려줄 만한 사람들을 찾아서 말이오. 하지만 질이 좋지 않은 작자들에게 말려들게 되었고... 그 이후의 일은 아마 당신도 짐작이 갈 거요."~ */
  IF ~~ THEN REPLY #49365 /* ~"참 심오한 얘기요. 몇 가지만 더 물어보고 싶소..."~ */ GOTO 14
  IF ~~ THEN REPLY #49366 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY #49367 /* ~"지금 나는 복수에 대한 이야기를 쓰고 있소. 영감을 받았다고나 할까." 그는 사악한 미소를 짓는다. "완성을 하면 당신에게도 보여주리다, 하지만 그 전에는 곤란하오. 나는 완성된 작품만 공개하니까."~ */
  IF ~~ THEN REPLY #49368 /* ~"그럼 좋소. 몇 가지 질문에 좀 대답해주시오..."~ */ GOTO 14
  IF ~~ THEN REPLY #49369 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.3
  SAY #49370 /* ~"그것은 당신 눈에 보이는 것들에 대한 것이오, 물론 당신이 보지 못하는 부분은 제외하고. 이 곳은 배신자들로 득실거리며 권력 암투와 배신 행위가 끊이지 않는 도시요. 이 곳은 인간의 본성에서 가장 사악한 부분들을 적나라하게 드러내고 있는 곳이오. 별로 아름다운 곳이 아니지. 난 당신이 커스트에 대해 추상적으로 물어본 것이길 바라오, 나는 가이드가 아니니까."~ */
  IF ~~ THEN REPLY #49371 /* ~"좋소.몇 가지만 더 물어보고 싶소..."~ */ GOTO 14
  IF ~~ THEN REPLY #49372 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1 14.4 15.1
  SAY #67171 /* ~"당신은 도둑질이나 소매치기를 해본 적이 있소? 아니면 기초부터 가르쳐야 하는 거요?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67191 /* ~"전에 한 적이 있소."~ */ GOTO 21
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67192 /* ~"미안하지만 내게 기초부터 가르쳐 줘야할 것 같소."~ */ GOTO 23
  IF ~~ THEN REPLY #67193 /* ~"관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #67174 /* ~"정말 전직을 할 거요? 도둑인 동시에 전사가 될 수는 없소."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #67196 /* ~"알고 있소. 나는 더 이상 전사이길 원하지 않소. 내 녹슨 기술을 다시 연마하도록 합시다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #67197 /* ~"알고 있소. 나는 더 이상 메이지이길 원하지 않소. 내 녹슨 기술을 다시 연마하도록 합시다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~~ THEN REPLY #67198 /* ~"아니오, 하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #67175 /* ~"좋소. 기초를 잊고 싶지 않다 이거요?"~ */
  IF ~~ THEN REPLY #67199 /* ~"아니오. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #67200 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #67176 /* ~"만만치 않은 부탁이군. 좋소. 시작합시다. 우선 당신의 민첩성부터 시험합시다. 이 대거를 당신 손가락 위에 세워 보시오." 그는 나이프를 하나 던진다.~ */
  IF ~  CheckStatGT(Protagonist,18,DEX)
~ THEN REPLY #67201 /* ~칼이 가볍게 잡아 손가락 끝 위에 놓이도록 한다. ~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,19,DEX)
~ THEN REPLY #67202 /* ~칼자루를 잡은 후 손가락 끝에 올려놓는다. ~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #67203 /* ~그것을 잡으려고 시도한다. ~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #67177 /* ~당신은 대거를 손가락 끝으로 받아서 가볍게 한 번 돌린다. 나배트의 입이 벌어진다. "좋소. 당신은 확실이 날쌔군. 정말 훈련을 받고 싶소?"~ */
  IF ~~ THEN REPLY #67224 /* ~"그렇소. 날 지도해 주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #67225 /* ~"아니, 관두시오. 대신 날 위해 몇 가지 질문에 대답해주시오..."~ */ GOTO 14
  IF ~~ THEN REPLY #67226 /* ~"아니, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #67178 /* ~당신은 날아오는 대거의 손잡이를 잡아서 기민한 동작으로 손가락 끝에 올려 놓는다. "그거면 충분하오. 정말 훈련을 받고 싶소?"~ */
  IF ~~ THEN REPLY #67227 /* ~"그렇소. 날 지도해 주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #67228 /* ~"아니, 관두시오. 대신 날 위해 몇 가지 질문에 대답해주시오..."~ */ GOTO 14
  IF ~~ THEN REPLY #67229 /* ~"아니, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #67179 /* ~당신은 대거를 잡으려고 시도하나, 손잡이가 당신 손에서 튕겨 나간다. 당신은 칼에 베이는 것만 간신히 모면했다. "미안하지만 당신에겐 도둑이 되는 데 필요한 반사 신경이 없소. 뭐 달리 필요한 거라도 있소?"~ */
  IF ~~ THEN REPLY #67230 /* ~"날 위해 몇 가지 질문에 대답해주시오..."~ */ GOTO 14
  IF ~~ THEN REPLY #67231 /* ~"아니, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0 25.0
  SAY #67180 /* ~"좋소. 그럼 우선 다음과 같은 기초 사항들을 터득해야 하오: 은밀 행동, 자물쇠 따기, 함정 발견/제거, 그리고 적의 약점을 찾는 것이오."~ */
  IF ~~ THEN REPLY #67232 /* ~"계속하시오..."~ */ GOTO 28
  IF ~~ THEN REPLY #67233 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67181 /* ~"가장 중요한 기술들 중 하나는 조용히 움직이는 거요. 이는 당신으로 하여금 경비병 몰래 잠입하거나, 적의 배후를 노리는 일 등에 편리하오. 남이 보고 있을 때는 숨을 수 없다는 사실만 명심하시오."~ */
  IF ~~ THEN REPLY #67234 /* ~"계속하시오..."~ */ GOTO 29
  IF ~~ THEN REPLY #67240 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #67182 /* ~"좋소. 자물쇠. 자물쇠는 당신 친구가 아니오. 자물쇠들의 구조를 이해하여 열 방법을 알지 못하면 아무 것도 할 수가 없소. 게다가 어떤 녀석들은 덤으로 추잡한 함정을 설치해 놓기도 하오. 따라서 열기 전에 함정부터 확인하는 게 좋소. 함정에 대해선 잠시 후에 얘기하겠소."~ */
  IF ~~ THEN REPLY #67235 /* ~"계속하시오..."~ */ GOTO 30
  IF ~~ THEN REPLY #67236 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #67183 /* ~"자. 다음은 남들이 눈치 못 채게 소매치기를 하는 거요. 돈 때문에 소매치기하는 경우도 있지만, 눈독 들인 물건을 훔치기 위한 경우도 있소. 하지만 실패에 대비해 도망가거나 싸울 준비를 해 두는 것이 좋소."~ */
  IF ~~ THEN REPLY #67237 /* ~"계속하시오..."~ */ GOTO 31
  IF ~~ THEN REPLY #67241 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67184 /* ~"전에 내가 당신에게 함정에 대해서 얘기한 건 생각나오? 함정은 최악의 적이 될 수 있소. 어떤 물건이 삼엄하게 경비되거나, 오히려 아무런 경비도 없는 경우에는 각별히 조심하시오. 첫눈에 드러나는 건 아니니까 여유를 가지고 하시오."~ */
  IF ~~ THEN REPLY #67238 /* ~"계속하시오..."~ */ GOTO 32
  IF ~~ THEN REPLY #67242 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #67185 /* ~"함정을 *발견*한 경우, 함정을 돌아가거나, 해제를 시도해야만 하오. 하지만 함정을 해제하려다 오히려 그것을 작동시킬 위험이 있소. 기묘한 마법이나 기계가 사용된 경우엔 특히 더 유의하시오."~ */
  IF ~~ THEN REPLY #67239 /* ~"계속하시오..."~ */ GOTO 33
  IF ~~ THEN REPLY #67243 /* ~"기초적인 것들은 알고 있소. 그러니 훈련을 시작합시다."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #67186 /* ~"그림자 속이나 다른 엄폐물로부터 하는 배후 공격은 적에게 엄청난 대미지를 입힐 수가 있소, 특히 당신처럼 완력이 강한 사람이라면. 하지만 일단 공격을 하고 나면 적에게 모습이 드러나기 때문에 표적을 신중하게 고르시오."~ */
  IF ~~ THEN REPLY #67244 /* ~"좋소. 훈련을 시작합시다."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 27.1 28.1 29.1 30.1 31.1 32.1 33.0
  SAY #67187 /* ~"제일 먼저 배워야 할 것은 서두르지 말라는 거요. 서두르면 실수를 하고, 실수를 하면 말썽에 휘말리게 되오. 도둑으로서 그런 일만은 피해야 하오..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67245 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3000)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~나는 커스트의 배신자의 문 선술집에 있는 나배트란 사나이로부터 도둑이 되는 훈련을 받았다.~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67246 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~나는 커스트의 배신자의 문 선술집에 있는 나배트란 사나이로부터 도둑이 되는 훈련을 받았다.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67247 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~나는 커스트의 배신자의 문 선술집에 있는 나배트란 사나이로부터 도둑이 되는 훈련을 받았다.~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67188 /* ~얼마 후 그가 멈춘다. "됐소. 당신은 참 빨리도 배우는군. 나는 여기까지만 가르치겠소. 나머지는 스스로 익히시오."~ */
  IF ~~ THEN REPLY #67249 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2
  SAY #67189 /* ~얼마 후 그가 멈춘다. "됐소. 당신은 참 빨리도 배우는군. 나는 여기까지만 가르치겠소. 나머지는 스스로 익히시오... 하지만 당신 정도의 솜씨라면. 당신은 마치 전에 이러한 일들을 해본 경험이 있는 것 같소!" 그가 얘기를 하자 당신은 자신이 전에 이러한 일들을 해본 적이 있다는 사실을 깨닫는다... 당신은 과거에 이러한 기술들을 빠짐없이 지니고 있었고, 훈련은 그것들을 다시 일깨웠다.~ */
  IF ~~ THEN REPLY #67250 /* ~"아마 전에 해본 적이 있는 것 같소. 고맙소, 그리고 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #67190 /* ~어두운 통로에서 은밀하게 움직이며 위험한 함정들을 피하던 희미한 기억들이 다시 뚜렸해짐에 따라, 당신은 나배트가 당신에게 가르쳐 준 것 이상의 내용을 '배울' 수 있을 만큼의 기억을 회복한다. ~ */
  IF ~~ THEN REPLY #67251 /* ~떠난다.~ */ EXIT
END
