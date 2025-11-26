// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_02~

IF ~  !Global("S_Stone","AR0603",2)
!Global("S_Stone","AR0603",9)
~ THEN BEGIN 0 // from:
  SAY #47110 /* ~이것은 밝은 청색의 특이한 돌이다. 그것은 받침대에 단단히 고정되어 있다. ~ */
  IF ~~ THEN REPLY #47111 /* ~떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",2)
~ THEN BEGIN 1 // from:
  SAY #47112 /* ~바로 이 연한 청색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '부드러운 사랑'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47113 /* ~감각 체험을 시작한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47114 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47115 /* ~당신은 두 눈을 감고 있다. 당신은 자신이 누군가를 발끝으로 꽉 누르면서 서 있다는 것을 느낀다. 너무나도 부드러운 입술이 당신 입술을 비벼대면서 부드럽게 키스를 한다... 당신 심장은 지금 당장이라도 터질 것만 같으며, 당신은 하늘이라도 날고 있는 듯한 기분이다...~ */
  IF ~  Global("Sensation02","AR0603",0)
~ THEN REPLY #47116 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation02","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation02","AR0603",1)
~ THEN REPLY #47117 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",9)
~ THEN BEGIN 3 // from:
  SAY #47118 /* ~바로 이 연한 청색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '곪아 가는 질투'란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47119 /* ~감각 체험을 시작한다.~ */ GOTO 4
  IF ~~ THEN REPLY #47120 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47121 /* ~은거울처럼 반짝이는 갑옷을 입은 젊은 영웅이 다시 당신 선술집에 들어오자 당신 입술이 삐죽 튀어나온다. 그는 벨벳 망토를 벽에다 걸고 당신 가게의 손님들을 바다의 보석과도 같은 한 쌍의 눈으로 둘러보며, 웨이트리스들을 졸도하게 만드는 미소를 짓는다. 당신은 닦고 있던 머그를 내려놓고는, 그를 거꾸로 들어 물통 속에 처박으면 얼마나 신이 날까 상상을 하며 크게 헛기침을 한다.~ */
  IF ~  Global("Sensation09","AR0603",0)
~ THEN REPLY #47122 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation09","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation09","AR0603",1)
~ THEN REPLY #47123 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47124 /* ~그 체험은 당신 정신 속에서 이미 오래 전에 잊혀진 막연하게 비슷한 기억을 불러일으킨 것 같다... 당신은 감각석 사용을 통해 뭔가를 얻었다고 느낀다.~ */
  IF ~~ THEN REPLY #47125 /* ~떠난다.~ */ EXIT
END
