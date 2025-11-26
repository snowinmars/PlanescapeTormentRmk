// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_05~

IF ~  !Global("S_Stone","AR0603",5)
!Global("S_Stone","AR0603",12)
~ THEN BEGIN 0 // from:
  SAY #34216 /* ~이것은 불그스레한 오렌지색의 특이한 돌이다. 그것은 받침대에 단단히 고정되어 있다. ~ */
  IF ~~ THEN REPLY #47445 /* ~떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",5)
~ THEN BEGIN 1 // from:
  SAY #47446 /* ~바로 이 불그스름한 오렌지색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '애태우는 조바심'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47447 /* ~감각 체험을 시작한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47448 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47449 /* ~당신은 사자 열쇠의 수호자인 '끔찍스럽게 느린 자' 암나스와, 당신의 임무가 그가 그 마도구를 내주어야 할 만큼 중요한 것인가에 대해서 논쟁을 벌이고 있다. 그 행위는 그 자체로서 순수한 고통이다... 그는 단어 한 마디를 내뱉고는 예외없이 한참 쉬었다가 그 다음 단어를 내뱉는다. 그리고 그는 당신에게 말을 할 기회를 주기 전에 자신의 논지를 장시간에 걸쳐 반복한다. 당신은 일단 주장을 편 후에는 그가 반론을 할 동안 기다리고, 또 기다리고, 또 다시 기다려야만 한다. 그것에 재빠르게 응수한 후에 당신은 다시금 암나스의 느리고, 두서없고, 끝없는 반론을 기다려야 한다. 당신은 엄니가 난 그 마족의 머리를 자르고 씰룩거리는 그의 시체로부터 열쇠를 빼앗으려는 충동을 억누르기 위해 혼신의 힘을 기울인다...~ */
  IF ~  Global("Sensation05","AR0603",0)
~ THEN REPLY #47450 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation05","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation05","AR0603",1)
~ THEN REPLY #47452 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",12)
~ THEN BEGIN 3 // from:
  SAY #47451 /* ~바로 이 불그스름한 오렌지색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '무시무시한 흥분'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47453 /* ~감각 체험을 시작한다.~ */ GOTO 4
  IF ~~ THEN REPLY #47454 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47455 /* ~당신은 고개를 돌려 당신 등 뒤에 맨 커다란 장비를 쳐다본다... 그것으로부터는 박쥐의 날개와 흡사한 두 쌍의 날개들이 펼쳐지고 있으며, 각 날개는 버드나무로 만든 틀 위에 가죽을 팽팽하게 켕겨서 만들었다. 당신이 서 있는 절벽에서 수십 리 떨어진 딜갸의 부유 요새는 푸르스름한 회색 하늘에 찍힌 티끌만한 점으로밖에는 보이지 않는다. 그들은 말했다. "이게 대기의 정령계에서 *모든* 사람들이 이동을 하는 방법이오. 아주 간단하오." 당신은 거북한 웃음을 지으며 뒤로 몇 걸음 물러섰다가, 울렁거리는 뱃속을 뒤로 한 채 절벽 아래의 서늘한 바람을 향해 도약한다. 날개들이 바람을 받아 당신이 천공에 있는 정령 왕자의 성을 향해 급상승함에 따라, 맹렬한 충격이 당신의 전신을 흔들고 지나간다...~ */
  IF ~  Global("Sensation12","AR0603",0)
~ THEN REPLY #47456 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation12","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation12","AR0603",1)
~ THEN REPLY #47457 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47458 /* ~그 체험은 당신 정신 속에서 이미 오래 전에 잊혀진 막연하게 비슷한 기억을 불러일으킨 것 같다... 당신은 감각석 사용을 통해 뭔가를 얻었다고 느낀다.~ */
  IF ~~ THEN REPLY #47459 /* ~떠난다.~ */ EXIT
END
