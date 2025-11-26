// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_01~

IF ~  !Global("S_Stone","AR0603",1)
!Global("S_Stone","AR0603",8)
~ THEN BEGIN 0 // from:
  SAY #47094 /* ~이것은 녹황색의 특이한 돌이다. 그것은 받침대에 단단히 고정되어 있다. ~ */
  IF ~~ THEN REPLY #47095 /* ~떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",1)
~ THEN BEGIN 1 // from:
  SAY #47096 /* ~바로 이 녹황색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '피할 수 없는 고통'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47097 /* ~감각 체험을 시작한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47098 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47099 /* ~그 체험은 짦지만 매우 격렬하다. 당신은 자신보다 약간 강한 사람과 뜨거운 용암이 강물처럼 흐르는 곳에서 접전을 벌이고 있다. 그러나 당신의 무기를 쥐고 있는 쪽 손은 천천히 마그마 쪽으로 밀려 가고 있다. 땀방울은 나오자 마자 증발해 버리고, 당신 손등에 난 털은 엄청난 열기 때문에 시꺼멓게 타버린다, 마침내 당신의 손과 그 손에 쥐고 있는 도끼는 용암 속으로 들어가 순식간에 재로 변해버리고, 당신의 고통에 찬 절규가 계곡 안에서 메아리친다. ~ */
  IF ~  Global("Sensation01","AR0603",0)
~ THEN REPLY #47100 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation01","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation01","AR0603",1)
~ THEN REPLY #47101 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",8)
~ THEN BEGIN 3 // from:
  SAY #47102 /* ~바로 이 녹황색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '정신 이상'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47103 /* ~감각 체험을 시작한다.~ */ GOTO 4
  IF ~~ THEN REPLY #47104 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47105 /* ~그 체험은 기묘하고 몹시 언짢다... 당신은 어떤 사람의 목에 나이프를 들이대고 그의 입을 손으로 꽉 막은 채 그의 얼굴에 뜨거운 숨을 내쉬고 있다. 당신은 그를 찌르기 시작한다... 천천히. 나이프는 그의 살 속으로 파고 들어가 깊숙이 박힌다. 뜨거운 피가 당신 팔을 적신다, 그리고 당신은 거칠게 숨을 쉬면서 엽기적인 희열을 느낀다... 체험은 그것으로 끝이다. ~ */
  IF ~  Global("Sensation08","AR0603",0)
~ THEN REPLY #47106 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation08","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation08","AR0603",1)
~ THEN REPLY #47107 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47108 /* ~그 체험은 당신 정신 속에서 이미 오래 전에 잊혀진 막연하게 비슷한 기억을 불러일으킨 것 같다... 당신은 감각석 사용을 통해 뭔가를 얻었다고 느낀다.~ */
  IF ~~ THEN REPLY #47109 /* ~떠난다.~ */ EXIT
END
