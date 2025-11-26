// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_03~

IF ~  !Global("S_Stone","AR0603",3)
!Global("S_Stone","AR0603",10)
~ THEN BEGIN 0 // from:
  SAY #34214 /* ~이것은 보라색의 특이한 돌이다. 그것은 받침대에 단단히 고정되어 있다. ~ */
  IF ~~ THEN REPLY #47414 /* ~떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",3)
~ THEN BEGIN 1 // from:
  SAY #47415 /* ~바로 이 보라색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '정신을 마비시킬 정도의 지루함'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47428 /* ~감각 체험을 시작한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47429 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47417 /* ~체험을 시작한지 고작해야 몇 분밖에 되지 않음에도 불구하고 몇 *시간*이 지난 것처럼 느껴진다... 당신은 시길의 챨름 대학의 가장 건조하고 먼지가 많은 강의실에서 갈고 지루한 강의를 듣고 있다. 당신은 넓은 강의실 안을 두리번거리며 짜증스러운 표정을 지을 대상을 찾아보나, 다른 학생들은 모두 곯아떨어졌거나 멍하니 허공만 쳐다보고 있다. 하도 할 일이 없어서 당신은 자신의 깃털펜을 떨구었다가 줍는 것을 반복한다... 당신은 이 경악할 만한 지루함이 오감을 완전히 마비시키지는 않았는지 확인하기 위해 펜으로 눈을 찌르고 싶다는 충동조차 느낀다...~ */
  IF ~  Global("Sensation03","AR0603",0)
~ THEN REPLY #47418 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation03","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation03","AR0603",1)
~ THEN REPLY #47419 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",10)
~ THEN BEGIN 3 // from:
  SAY #47420 /* ~바로 이 보라색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '격렬한 혐오'란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47421 /* ~감각 체험을 시작한다.~ */ GOTO 4
  IF ~~ THEN REPLY #47422 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47423 /* ~당신이 방바닥에서 갈기갈기 찢어진 당신의 조그만 빨간색 날개의 잔해를 줍고 있을 때, 당신의 가늘고 누런 눈에서는 표독스러운 고통의 눈물이 흘러내리고 있다. 당신은 굳게 담은 입 안에서 뾰족한 이빨을 바득바득 갈면서도 그로바의 서재로부터 공손한 자세로 나간다.

물론 당신은 바테주 중에서도 최하위인 스피나곤에 불과하다, 그러나 그렇다고 해서 단지 당신이 가져온 메시지가 마음에 들지 않는다는 이유 하나만으로 핏 휜드(최고위의 바테주)가 당신 날개를 찢어버려도 좋다는 의미는 아니다! 이제 당신의 겔루곤(바테주 서열 2위) 상관은 뭘 할 것인가? 당연히 그는 그로바에게는 아무 말도 하지 못할 것이다. 그리고 날개 없는 스피나곤이 대체 무슨 쓸모가 있겠는가? 아마 당신은 '무능함'에 대한 벌로 화염의 심연에 던져지게 될 것이다.

복수는 불가능하다. 당신이 할 수 있는 일이라고는 주먹을 쥐고 흔들면서 그로바를 당신의 시꺼먼 악마의 심장이 감당할 수 있는 최대한의 혐오로 증오하고, 또 증오하는 일뿐이다.~ */
  IF ~  Global("Sensation10","AR0603",0)
~ THEN REPLY #47424 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation10","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation10","AR0603",1)
~ THEN REPLY #47425 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47426 /* ~그 체험은 당신 정신 속에서 이미 오래 전에 잊혀진 막연하게 비슷한 기억을 불러일으킨 것 같다... 당신은 감각석 사용을 통해 뭔가를 얻었다고 느낀다.~ */
  IF ~~ THEN REPLY #47427 /* ~떠난다.~ */ EXIT
END
