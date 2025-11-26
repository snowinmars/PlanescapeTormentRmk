// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIRST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIRST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #58302 /* ~키가 크고 가늘며, 긴 팔과 긴 머리를 지닌 생물이 보인다. 그의 거대한 입으로부터는 날카로운 엄니가 여러 개 튀어나와 있으며, 그의 손에는 날카롭고 기다란 손톱이 달려 있다. 당신이 다가가자 그는 당신을 계속 쳐다본다.~ */
  IF ~~ THEN REPLY #58304 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58305 /* ~그를 무시한다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58308 /* ~그는 그는 당신에게 다가와 냄새를 맡더니, 당신 가슴을 손톱으로 찔러 본다. 그는 입술을 핥는다. "넌 좀 딱딱하군, 하지만 그래도 맛은 있겠군."~ */
  IF ~~ THEN REPLY #58312 /* ~"질문할 것이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #58313 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 6.0 7.0 8.2 9.1 10.1 11.0 12.0 13.1 14.0 16.1 17.0 18.0
  SAY #58314 /* ~그는 이를 드러내며 웃는다. "식사 전의 대화는 건강에 좋아. 뭘 알고 싶지?"~ */
  IF ~~ THEN REPLY #58315 /* ~"당신은 날 잡아먹을 생각이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #58316 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #58317 /* ~"당신은 어떤 존재요?"~ */ GOTO 8
  IF ~~ THEN REPLY #58318 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #58319 /* ~"카케리에 대해 내게 어떤 얘기를 들려줄 수 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #58320 /* ~"이 지하 묘지에 대해 어떤 얘기를 해줄 수 있소?"~ */ GOTO 18
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #58321 /* ~"이 곳에는 당신이 죽기를 원하는 밀수꾼이 있소."~ */ GOTO 13
  IF ~~ THEN REPLY #58322 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58323 /* ~그의 미소가 한층 더 커진다. "그래, 니 바보 같은 질문이 다 끝나고 나면."~ */
  IF ~~ THEN REPLY #58324 /* ~"해보시오, 그러나 내가 당신 뱃속을 요절내 당신은 복통으로 죽을 거요."~ */ GOTO 4
  IF ~~ THEN REPLY #58325 /* ~"난 당신을 해칠 생각이 없소."~ */ GOTO 5
  IF ~~ THEN REPLY #58326 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.1
  SAY #58327 /* ~그는 어깨를 으쓱하고 체념하는 듯 두 팔을 든다. "그 위험을 감수하기로 하지."~ */
  IF ~~ THEN REPLY #58328 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58329 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58330 /* ~그는 어깨를 으쓱하고 체념하는 듯 두 팔을 든다. "애석하군, 난 널 죽일 건데."~ */
  IF ~~ THEN REPLY #58331 /* ~"왜?"~ */ GOTO 6
  IF ~~ THEN REPLY #58332 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58333 /* ~그는 다시 어깨를 으쓱한다. "이유는 없어... 단지 때와 장소가 나빴을 뿐이지." 그는 잠시 멈춘다. "아니면 제 시간에 제 장소에 왔다고 할 수도 있겠지." 그는 싱긋 웃는다. "누구 관점에서 보느냐에 따라 다르지."~ */
  IF ~~ THEN REPLY #58334 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58335 /* ~"날 죽이긴 쉽지가 않을 거요, 하지만 원한다면 어디 한 번 해보시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #58336 /* ~그는 코를 후비며 당신을 쳐다본다. "그리스트..." 그는 계속 당신을 쳐다보며 코를 후빈다.~ */
  IF ~~ THEN REPLY #58337 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58338 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58339 /* ~그는 한쪽 팔을 들어 겨드랑이를 천천히 긁는다. "게흐렐레스... 화랏투."~ */
  IF ~~ THEN REPLY #58340 /* ~"게흐렐레스란 뭐요?"~ */ GOTO 16
  IF ~~ THEN REPLY #58341 /* ~"화랏투란 뭐요?"~ */ GOTO 16
  IF ~~ THEN REPLY #58342 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58343 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58344 /* ~그가 하품을 하자 그의 입에서 나오는 악취가 당신을 엄습한다. "디바를 찾고 있어. 맛있는 음식이지, 그의 뼈에서 골수를 파먹을 거야."~ */
  IF ~~ THEN REPLY #58345 /* ~"당신은 트리어스가 먹고 싶소?"~ */ GOTO 10
  IF ~~ THEN REPLY #58346 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58347 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58348 /* ~그는 지루한 표정으로 당신을 본다. "아니, 디바. 난 트리어스 따위는 몰라."~ */
  IF ~~ THEN REPLY #58349 /* ~"트리어스는 어떤 디바의 이름이오."~ */ GOTO 11
  IF ~~ THEN REPLY #58350 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58351 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58352 /* ~그는 어깨를 으쓱하고 등을 긁는다. "트리어스, 시미어스, 뭐라고 부르든 상관없어. 내게는 점심거리니까. ~ */
  IF ~~ THEN REPLY #58353 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58354 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #58355 /* ~그는 입을 열고는 손톱으로 이빨 사이를 쑤시기 시작한다. 그는 불분명한 발음으로 당신에게 대답을 한다. "집, 내 집, 네 집이 아냐. 넌 카케리에서 환영받지 못해."~ */
  IF ~~ THEN REPLY #58356 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58357 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #58358 /* ~그는 냉담하게 당신을 쳐다보더니 고개를 끄덕인다. "알아... 얼마 전에 놈을 먹으려고 했는데 도망쳤어. 잡으려고 했지만 놈이 있는 곳은 함정투성이라서." 그는 어깨를 으쓱한다. "난 참을성이 있어. 언젠가는 놈도 실수를 할 거야."~ */
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",3)
~ THEN REPLY #58359 /* ~"그는 당신을 죽이라고 날 보냈소."~ */ GOTO 14
  IF ~~ THEN REPLY #58360 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58361 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58362 /* ~그는 손에다 대고 코를 푼 다음 그 결과물을 옆으로 던져 버린다. 그는 대답을 하면서 손을 닦는다. "오... 그럼 놈하고 널 죽일 이유가 하나 더 생겼군."~ */
  IF ~~ THEN REPLY #58363 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58364 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #58365 /* ~그는 환하게 싱긋 웃는다. "좋아. 질문에는 질렸어. 식사할 때야." 그는 달려들어 공격한다.~ */
  IF ~~ THEN REPLY #58366 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0 8.1
  SAY #58367 /* ~그가 트림을 하지 악취가 코를 찌른다. 그는 손가락으로 느리게 자신을 가리킨다. "나는 게흐렐레스야. 내 계급은 화랏투고."~ */
  IF ~~ THEN REPLY #58368 /* ~"그 밖에 어떤 계급들이 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #58369 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58370 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58371 /* ~그는 자기 손톱을 한가하게 살펴보더니 어깨를 으쓱한다. "난 네가 볼 마지막 게흐렐레스니 넌 알 필요가 없어."~ */
  IF ~~ THEN REPLY #58372 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58373 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #58374 /* ~그는 잠시 주변을 두리번거리더니 어깨를 으쓱한다. "아무 것도 안 해. 디바를 찾으려고 왔어."~ */
  IF ~~ THEN REPLY #58375 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58376 /* ~"안녕히 계시오."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
