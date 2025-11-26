// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART14.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART14~

IF ~  Global("View_Art_14","AR0608",0)
~ THEN BEGIN 0 // from:
  SAY #34206 /* ~이 그림은 기괴하게 생긴, 매부리코 할망구의 초상화다. 마귀할멈의 피부는 역겨운 청회색이며, 그녀의 두 눈은 마치 깜부기불처럼 빨갛게 빛나고 있다. 그녀의 길고 날카로운 턱은 앞쪽으로 툭 튀어나왔으며, 그녀의 아래턱에서는 두 개의 누런 견치가 마치 작은 엄니처럼 위쪽으로 비어져 나와 있다. 그녀의 쭈글쭈글한 자주색 입술에 머금은 미소는 끔찍한 비밀에 대해 말하고 있다. 이름표에는 '오이노스의 회색 마귀할멈'이라고 적혀 있다.~ */
  IF ~~ THEN REPLY #42684 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_14","AR0608",1)
~ GOTO 2
END

IF ~  Global("View_Art_14","AR0608",1)
~ THEN BEGIN 1 // from:
  SAY #42681 /* ~이 그림은 기괴하게 생긴, 매부리코 할망구의 초상화다. 마귀할멈의 피부는 역겨운 청회색이며, 그녀의 두 눈은 마치 깜부기불처럼 빨갛게 빛나고 있다. 그녀의 길고 날카로운 턱은 앞쪽으로 툭 튀어나왔으며, 그녀의 아래턱에서는 두 개의 누런 견치가 마치 작은 엄니처럼 위쪽으로 비어져 나와 있다. 그녀의 쭈글쭈글한 자주색 입술에 머금은 미소는 끔찍한 비밀에 대해 말하고 있다. 이름표에는 '오이노스의 회색 마귀할멈'이라고 적혀 있다.~ */
  IF ~~ THEN REPLY #42686 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #42682 /* ~당신이 돌아서려 하자 뭔가가 당신의 주의를 끈다... 기묘한, 따끔따끔한 감각이 당신의 정신 깊숙한 곳에서 느껴지기 시작한다... 어떤 기억이다.~ */
  IF ~~ THEN REPLY #42687 /* ~기억을 되살리려고 노력한다.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,300)
~ GOTO 3
  IF ~~ THEN REPLY #42688 /* ~돌아서서 기억을 억누른다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42683 /* ~당신은 자신이 가시나무 미로에서 당황한 채 서 있는 것을 기억한다. 그림에서 본 추악한 노파가 당신 앞에서 미친 듯이 웃고 있다. 당신은 왜 그녀가 웃는지 알 수 없어 낭패감에 이를 간다. "내 불쌍하고 소중한 인간!" 그녀는 읊조린다. "이런, 그건 자네 *첫 번째* 소원이었네!" 그녀는 갈고리 손톱이 달린 여윈 손가락으로 당신 이마를 가리킨다. 당신의 관자놀이가 갑자기 욱신욱신 쑤시기 시작한다... 당신은 더 이상 아무 것도 기억하지 못한다.~ */
  IF ~~ THEN REPLY #42689 /* ~떠난다.~ */ EXIT
END
