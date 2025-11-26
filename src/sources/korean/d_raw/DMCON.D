// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60874 /* ~한쪽 팔에 역겨운 노란색의 피부를 지닌 기계 인간이 보인다. 로봇임이 분명하나 매우 생동감이 있는 얼굴을 하고 있다. 그는 얼굴을 찡그리며 당신을 노려보고 있다.~ */
  IF ~~ THEN REPLY #60875 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #60876 /* ~로봇을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60877 /* ~톱니바퀴가 윙윙거리는 소리와 함께 로봇의 눈은 실처럼 가늘어진다. 그 사이에도 그는 당신을 계속 쳐다보고 있다. 갑자기 로봇은 고릴라처럼 가슴을 두들겨 쩽그렁 소리를 낸다, 그리고 몇 번 점프를 한다. 마침내 그는 진정하고 당신을 노려본다.~ */
  IF ~~ THEN REPLY #60878 /* ~"그 짓을 한 목적이 대체 뭐요?"~ */ GOTO 2
  IF ~~ THEN REPLY #60879 /* ~"당신은 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #60880 /* ~"당신은 어떤 존재요?"~ */ GOTO 6
  IF ~~ THEN REPLY #60881 /* ~"뭘 하고 있는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #60882 /* ~"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60883 /* ~그는 일어나면서 어리둥절한 표정으로 당신을 쳐다보더니 머리를 긁는다. "공포 반응을 유도하기 위한 것이었소. 성공했소?"~ */
  IF ~~ THEN REPLY #60884 /* ~"별로."~ */ GOTO 3
  IF ~~ THEN REPLY #60885 /* ~"그렇소, 정말 훌륭했소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60886 /* ~그는 한숨을 쉬고 잠시 시선을 돌린다. "그것 참 애석하군. 나는 당신에게 추가로 몇 대를 더 먹여서 내 예상 수명을 늘리려고 했는데. 할 수 없지..." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60887 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #60888 /* ~그는 미소를 짓고 고개를 끄덕인다. "좋소. 그럼 기록해 두었다가 나중에 또 써먹어야지." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60889 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #60890 /* ~"나는 당신의 숙적이오." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60891 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60892 /* ~"나는 보통 전투용 로봇이오. 내 사양은: 평균적 전투능력, 평균적 지능, 그리고 평균적인 무기 사용 능력이오." 그는 당신에게 달려든다. ~ */
  IF ~~ THEN REPLY #60893 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60894 /* ~"나는 지금 당신 약점을 조사 중이오." 로봇은 잠시 멈춘다. "조사가 끝났소. 이제부터 당신을 무자비하게 공격하겠소" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60895 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY #60896 /* ~"내 주목을 끌고 나서는 날 그냥 잊겠다고? 그건 곤란하지!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60897 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60898 /* ~한쪽 팔에 역겨운 노란색의 피부를 지닌 기계 인간이 보인다. 로봇임이 분명하나 매우 생동감이 있는 얼굴을 하고 있다. 그는 얼굴을 찡그리며 당신을 노려보고 있다.~ */
  IF ~~ THEN REPLY #60899 /* ~"안녕하시오."~ */ GOTO 10
  IF ~~ THEN REPLY #60900 /* ~로봇을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60901 /* ~그는 당신을 살펴보면서 과장되게 냉소한다. 마침내 그는 단조로운 웃음소리를 내며 웃는다. "그들이 보낼 수 있는 최고가 고작 이것인가! 하! 불쌍한 바보들." 그는 계속 당신을 노려본다.~ */
  IF ~~ THEN REPLY #60903 /* ~"누가 보낼 수 있는 최고라고?"~ */ GOTO 11
  IF ~~ THEN REPLY #60904 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #60905 /* ~"당신은 어떤 존재요?"~ */ GOTO 13
  IF ~~ THEN REPLY #60906 /* ~"뭘 하고 있는 거요?"~ */ GOTO 14
  IF ~~ THEN REPLY #60907 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60908 /* ~그는 머리를 제끼고 웃는다. "하! 하! 무지를 가장하려는 너의 시도도 네 목숨을 구하지는 못할 것이다. 너는 이제 죽은 목숨이다!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60909 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60910 /* ~"내겐 자아가 없다. 나는 네가 이 던젼을 탐험하는 것을 방해하기 위해서만 존재하는, 이름도 없는 경험치 획득용 몬스터에 불과하다." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60911 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #60912 /* ~그는 잠시 멈추고 머리를 긁는다. "나는 네가 죽을 때가지 널 아낌없이 두들길 몬스터다... 물론 네가 날 먼저 죽이는 경우를 제외하고는." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60915 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #60916 /* ~"나는 적에게 무력감을 느끼게 하기 위하여 잘난 체하는 거다. 만약 성공한다면 내가 지금부터 시작할 전투에서의 내 승리는 보장될 것이다." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60917 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #60918 /* ~"하! 난 그런 냉담한 태도와 인사말로 내 분노를 피할 수 있으리라고 생각하나? 어림없다!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60919 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 16 // from:
  SAY #60920 /* ~한쪽 팔에 역겨운 노란색의 피부를 지닌 기계 인간이 보인다. 로봇임이 분명하나 매우 생동감이 있는 얼굴을 하고 있다. 그는 얼굴을 찡그리며 당신을 노려보고 있다.~ */
  IF ~~ THEN REPLY #60921 /* ~"안녕하시오."~ */ GOTO 17
  IF ~~ THEN REPLY #60922 /* ~로봇을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60923 /* ~"안녕하시오." 그는 멍한 표정으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #60924 /* ~"당신은 누구요?"~ */ GOTO 18
  IF ~~ THEN REPLY #60926 /* ~"당신은 어떤 존재요?"~ */ GOTO 19
  IF ~~ THEN REPLY #60927 /* ~"뭘 하고 있는 거요?"~ */ GOTO 20
  IF ~~ THEN REPLY #60928 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60929 /* ~그는 생각을하느라 잠시 멈춘다, 그리고 어깨를 으쓱한다. "모르겠소." 그는 눈살을 찌푸린다. "나는 내가 누구인지 안 적도 없는 것 같소, 나는 내 정체성, 내 삶의 목적이 아무런 의미도 없는 것 같다는 생각이 드오. 나는 상실감을 느끼오... 나는 내 좌절감을 다른 사람에게 발산하고 싶소 ..." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60930 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #60931 /* ~그는 눈살을 찌푸린다. "나는 어떤 잔인한 게임의 졸에 불과하오. 내게는 자아도 없고 삶도 없소, 그리고 이제는 당신이 나타나 쓸데없는 질문으로 날 화나게 하고 있소. 나는 삶이 싫소 당신이 싫소." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60932 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #60933 /* ~그는 경멸하는 표정으로 당신을 쳐다본다. "나는 당신을 흠씬 두들기기 위해 당신 헛소리가 끝나기를 기다리고 있소." 그는 당신을 노려본다.~ */
  IF ~~ THEN REPLY #60934 /* ~"왜 그러고 싶은 거요?"~ */ GOTO 21
  IF ~~ THEN REPLY #60935 /* ~로봇을 공격한다. ~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60937 /* ~그는 어깨를 으쓱한다. "내 창조주는 다른 옵션을 주지 않았소. 이 문장이 끝나는 즉시 당신을 공격하겠소." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60938 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #60939 /* ~"당신도 안녕히 가시오. 하지만 당신이 가기 전에 나는 당신 때문에 야기된 스트레스를 당신에게 발산해야겠소."~ */
  IF ~~ THEN REPLY #60941 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
