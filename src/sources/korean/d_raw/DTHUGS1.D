// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGS1~

IF ~  NumTimesTalkedToLT(1)
~ THEN BEGIN 0 // from:
  SAY #1910 /* ~그는 당신이 접근하지 천천히 고개를 들어 올린다. 그는 당신을 쳐다보더니 역겨운 듯 조소를 한다. "넌 대체 누구야?" 그는 코에 주름을 잡는다. "더스티들이 썩어 가는 개 한 마리를 잃어버린 모양이군." 그는 웃는다. "흥! 그렇게 추악한 건 난생 처음 보는군." ~ */
  IF ~~ THEN REPLY #1911 /* ~"거울에 비친 당신 모습을 제외하고는?"~ */ GOTO 1
  IF ~~ THEN REPLY #1912 /* ~"혀를 함부로 놀리지 마시오, 아니면 그것이 당신 발 아래서 뒹굴게 될 테니까."~ */ GOTO 1
  IF ~~ THEN REPLY #1913 /* ~"안녕히 계시오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 11.0 11.1
  SAY #1914 /* ~사내는 잠시 놀란 듯했으나, 다시 조소를 하며 칼의 손잡이를 손가락으로 만지작거린다. "맛을 좀 봐야할 것 같군, 나으리."~ */
  IF ~~ THEN REPLY #1915 /* ~"그 칼을 뽑아 당신이 죽이게 될 사람은 당신 자신뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #1916 /* ~"진정하시오, 난 당신과 싸울 생각이 없소."~ */ GOTO 3
  IF ~~ THEN REPLY #1917 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1918 /* ~"안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1919 /* ~그는 자신의 무기에 손을 뻗는다. "어디 두고 보자고, 어디..."~ */
  IF ~~ THEN REPLY #1945 /* ~"난 이미 경고했소..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #1920 /* ~"아, 그래? 그는 당신 발에 침을 뱉는다. "뭐야, 네 놈 정맥에는 시시한 겁쟁이의 피라도 흐르는 거야, 얼간아? 아니면 지난번 싸움에서 피가 다 흘러 나가기라도 한 거야?"~ */
  IF ~~ THEN REPLY #1921 /* ~"내가 기억하기에 당신 어머니는 정맥에 시시한 겁쟁이의 피가 흐르는 그런 여자였지... 그리고 내가 세보니까 이 도시의 사생아들의 절반은 당신과 같은 핏줄을 타고났더군."~ */ GOTO 4
  IF ~~ THEN REPLY #1922 /* ~"말썽이 커지기 전에 그만둡시다."~ */ GOTO 5
  IF ~~ THEN REPLY #1923 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1924 /* ~"안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1
  SAY #1925 /* ~당신이 한 말의 뜻이 이해하려고 하는 듯 사내는 잠시 눈을 깜박인다, 그리고 이내 그의 얼굴은 분노로 빨개진다. 그는 칼을 뽑아 당신에게로 돌격한다. ~ */
  IF ~~ THEN REPLY #1946 /* ~자신을 방어한다...~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #1926 /* ~"아니, 그건 그렇게 간단하지가 않아. 내 칼에 찔리지 않는 특권을 누리는 대가를 지불해야지."~ */
  IF ~~ THEN REPLY #1927 /* ~"좋소 그럼. 얼마면 되겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #1929 /* ~"하지만 당신 어머니는 돈을 받지 않았소. 그런데 왜 당신은 받겠다는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #1930 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1931 /* ~그냥 떠난다.~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #1932 /* ~"네가 가진 걸 내게 다 넘기면 봐주지." 그는 웃는다. "자, 내놔."~ */
  IF ~~ THEN REPLY #1936 /* ~그에게 지닌 돈을 모두 준다.~ */ GOTO 10
  IF ~~ THEN REPLY #1937 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1938 /* ~떠난다.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY #1933 /* ~"다음 번에 나와 얘기를 하려고 할 때는 사전에 잘 생각해 보는 게 좋을 거다, 이 개자식아."~ */
  IF ~~ THEN REPLY #1939 /* ~"지금 *뭐*라고 했소."~ */ GOTO 9
  IF ~~ THEN REPLY #1940 /* ~그냥 관두고 떠난다.~ */ EXIT
  IF ~~ THEN REPLY #1941 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 3.3 5.3 6.2 11.2
  SAY #1934 /* ~"그래, 다시 푸주간으로나 돌아가라고, 이 겁쟁이야." 그는 웃는다.~ */
  IF ~~ THEN REPLY #1942 /* ~"지금 *뭐*라고 했소."~ */ GOTO 9
  IF ~~ THEN REPLY #1943 /* ~그냥 관두고 떠난다.~ */ EXIT
  IF ~~ THEN REPLY #1944 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #1935 /* ~"아, 정말 미안하군, 나으리... 혹시 넌 귀머거리인가?" 그는 당신을 경멸하는 눈초리로 본다. "머리에 몇 방 얻어맞기라도 한 건가?" 그는 강조하려고 자신의 머리를 가볍게 두드린다. "너한테는 천천히 얘기를 해주어야 하나, 얼간아?"~ */
  IF ~~ THEN REPLY #1947 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1948 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #1949 /* ~당신이 돈을 꺼내려 하자 그는 손을 치켜든다. "아니, 겁쟁이, 그건 잠시 그냥 가지고 있어... 생각해 보니 널 그냥 죽인 후에 가져가는 게 나을 것 같군." 그는 칼을 뽑고 미소를 짓는다. "내가 널 더 추하게 만들어 주게 될 것 같군."~ */
  IF ~~ THEN REPLY #1950 /* ~자신을 방어한다...~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #1951 /* ~"에?" 그는 조소한다. "또 너야, 얼간아? 동냥이라도 바라나? 다른 곳에 가서 구걸하는 게 좋을 걸." 그는 당신을 위아래로 쳐다본다. "너보다 추한 건 지금까지 본 적도 없어."~ */
  IF ~~ THEN REPLY #1953 /* ~"거울에 비친 당신 모습을 제외하고는?"~ */ GOTO 1
  IF ~~ THEN REPLY #1954 /* ~"혀를 함부로 놀리지 마시오, 아니면 그것이 당신 발 아래서 뒹굴게 될 테니까."~ */ GOTO 1
  IF ~~ THEN REPLY #1955 /* ~"안녕히 계시오."~ */ GOTO 8
END
