// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47907 /* ~건장한 청년이 보인다. 그는 상자 안에 든 물건들을 시장 내의 각 상점으로 옮기고 있는 듯하다. 당신이 다가가자 그는 고개를 끄덕인다. "안녕하시오, 친구."~ */
  IF ~~ THEN REPLY #47908 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #47909 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47910 /* ~그는 다시 고개를 끄덕인다. "내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #47911 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #47912 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 6.1 8.0 9.0 10.0 11.0
  SAY #47913 /* ~"좋소." 그는 당신 질문을 기다린다.~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47914 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47916 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 5
  IF ~~ THEN REPLY #47917 /* ~"어디 가면 무기를 구입할 수 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #47918 /* ~"어디 가면 마법을 구입할 수 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #47919 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #47920 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 7.0
  SAY #47915 /* ~그는 고개를 젓는다. "뼈들의 지배자는... 방문자를 반기지 않소. 당신이 그를 찾고 있더라도 그를 실제로 만나는 것은 신상에 좋지 않을 거요."~ */
  IF ~~ THEN REPLY #47931 /* ~"그렇소."~ */ GOTO 4
  IF ~~ THEN REPLY #47932 /* ~"좋소. 다른 것에 대해 물어봅시다..."~ */ GOTO 2
  IF ~~ THEN REPLY #47933 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47921 /* ~그는 잠시 당신 얼굴을 빤히 쳐다보더니 고개를 숙여 당신 몸의 흉터를 둘러본다. 그는 당신 눈을 마주보면서 어깨를 으쓱한다. "시장을 나가서 남쪽으로 간 후, 다시 약간 동쪽으로 가시오. 신들의 가호가 당신에게 있기를." 그는 돌아서서 하던 일을 계속한다.~ */
  IF ~~ THEN REPLY #47922 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #47927 /* ~그는 눈살을 찌푸리고 당신을 아래위로 쳐다본다. "글쎄... 그 해골에게는 무슨 특별한 점이라도 있소?"~ */
  IF ~~ THEN REPLY #47928 /* ~"아니오."~ */ GOTO 6
  IF ~~ THEN REPLY #47929 /* ~"그렇소. 그것은 말을 할 수가 있소."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47930 /* ~그는 어깨를 으쓱한다. "그렇다면 왜 누가 그걸 원할지 이해하지 못하겠소."~ */
  IF ~~ THEN REPLY #47941 /* ~"만약 그것이 말하는 해골이라면?"~ */ GOTO 7
  IF ~~ THEN REPLY #47942 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #47943 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #47934 /* ~그는 잠시 당신을 쳐다본다. "그렇다면 특별한 해골이라고 할 수 있겠소. 그렇다면 뼈들의 지배자인 로타의 관심을 끌었을 수도 있겠소."~ */
  IF ~~ THEN REPLY #47935 /* ~"이 로타란 사람은 어디 있소?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47937 /* ~"안제와 얘기하시오. 그는 대개 아궁이 옆의 계산대에 있소."~ */
  IF ~~ THEN REPLY #47938 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #47939 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #47944 /* ~"앨렉과 얘기하시오. 그는 대개 아궁이에서 제일 멀리 떨어진 계산대에 있소."~ */
  IF ~~ THEN REPLY #47945 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #47946 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #47947 /* ~그는 한숨을 쉰다. "이 곳은 내 고향이오... 여기보다 더 좋은 곳들도 있겠지만 더 나쁜 곳들도 많소." 그는 다시 어깨를 으쓱한다. "자세한 얘기를 들으려면 안제의 아들 래즐로와 얘기하시오. 그는 대개 아궁이 근처에 있소. 그 아이는 이야기를 하는 걸 참 좋아하오."~ */
  IF ~~ THEN REPLY #47948 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #47949 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #47950 /* ~노동자는 당신을 쳐다보며 미소짓는다. "다시 만나 반갑소. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #47951 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #47952 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
