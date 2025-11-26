// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANZE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANZE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33883 /* ~완고하게 생긴 노인이 보인다. 그의 찌푸린 얼굴은 주름투성이다.~ */
  IF ~~ THEN REPLY #33884 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #33885 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33886 /* ~그는 재빨리, 그리고 딱딱하게 인사를 한다. "댁도 안녕하시오? 난 안제라 하오. 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #33887 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #33888 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.1 6.1 8.0 9.0 10.0 12.1
  SAY #33889 /* ~그는 이빨을 드러내지 않고 싱긋 웃는다. "당신과 얘기를 할 시간은 있는 것 같소. 뭘 알고 싶소?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #33890 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #33891 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33892 /* ~"저 아궁이는 뭐 하는 데 쓰이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #33893 /* ~"나는 무기를 구입하고 싶소."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33894 /* ~"나는 마법 아이템을 구입하고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #33895 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #33896 /* ~"난 로타에 대해 들어본 적은 없는 것 같소..." 그는 생각을 하느라 눈을 가늘게 뜬다. "하지만 *뼈들*인지 뭔지 하는 자에 대해서는 들은 적이 있소. 그는 건드려서는 안 되는 자라고 하오. 엄청난 힘을 지닌 자로 죽은 자들을 상대한다고 하오."~ */
  IF ~~ THEN REPLY #33897 /* ~"그는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33898 /* ~"그에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33899 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #33900 /* ~그는 어깨를 으쓱한다. "모르겠소. 그런 자는 어디든지 원하는 곳에서 살 수가 있으니까. 누가 감히 그에게 안 된다고 하겠소?"~ */
  IF ~~ THEN REPLY #33901 /* ~"그에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33902 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #33903 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #33904 /* ~그는 짤막하게 웃는다. "내가 아는 건 다 말했소. 그에 대해 더 이상은 모르오."~ */
  IF ~~ THEN REPLY #33905 /* ~"그는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33906 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #33907 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #33908 /* ~그는 걱정스러운 표정을 지으려고 애를 써보나 결과는 참담하다. "딱한 일이구려, 친구. 만약 도둑질을 당했다면 하모니움에게 가서 얘기를 하시오."~ */
  IF ~~ THEN REPLY #33909 /* ~"하모니움?"~ */ GOTO 7
  IF ~~ THEN REPLY #33910 /* ~"고맙소, 질문할 것들이 더 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #33911 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #33912 /* ~그는 미소짓는다. "법이오, 친구. 시길에서는 하모니움이 곧 법이오. 만약 당신 물건을 잃어버렸다면 그들에게 가서 얘기를 하시오." ~ */
  IF ~~ THEN REPLY #33913 /* ~"당신은 하모니움이 그 해골을 되찾을 수 있으리라고 생각하시오?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #33915 /* ~그는 뭐라고 말하려다가 갑자기 멈추고 생각을 한다. 잠시 후 그는 웃음을 터뜨린다. "아니오, 친구. 말 안 하는 게 좋을 것 가소. 신경 쓰지 마시오."~ */
  IF ~~ THEN REPLY #33914 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #33916 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #33917 /* ~"옆 가게의 앨렉과 얘기하시오. 그라면 당신이 원하는 것을 가지고 있을지도 모르오." 그는 자신의 왼쪽에 있는 판매대를 가리킨다.~ */
  IF ~~ THEN REPLY #33918 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #33919 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #33920 /* ~그는 아궁이를 흘긋 본 후 목소리를 낮춘다. "저 아궁이는 내 게으름뱅이 아들에게 책임이란 것에 대해 가르치는 것 말고는 아무런 용도가 없소. 그 아이는 늘 잡담만 하고 있소. 자신이 무슨 대단한 학자라고 착각을 하고 있으며, 노동의 진정한 가치에 대해 알지 못하오. 하지만 만약 꼭 알아야 할 것이 있다면... 그 아이에게 물어보는 편이 나을지도 모르오."~ */
  IF ~~ THEN REPLY #33921 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #33922 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #33923 /* ~Noeud nul~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #34244 /* ~안제는 당신을 보고 늘 그러하듯이 이빨을 드러내지 않고 싱긋 웃는다. "다시 온 걸 환영하오, 오늘은 무엇이 필요하시오?"~ */
  IF ~~ THEN REPLY #34245 /* ~"당신 상품들을 보고 싶소."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34246 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #34247 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lazlo_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #34248 /* ~"나는 내 아들 래즐로의 죽음을 애도하고 있소. 나는 당분간 가게를 열지 않을 생각이오... 언제까지인지는 나도 모르겠소..."~ */
  IF ~~ THEN REPLY #34249 /* ~떠난다.~ */ EXIT
END
