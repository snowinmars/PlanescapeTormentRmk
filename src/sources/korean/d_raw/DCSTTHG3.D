// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9852 /* ~거칠게 생기고 건조한 피부를 지닌 사내가 보인다. 그는 기분이 좀 언짢은 것 같으며, 당신이 다가가도 눈치채지 못한다.~ */
  IF ~~ THEN REPLY #9853 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #9854 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9857 /* ~그는 당신 목소리를 듣고 놀란 듯하다, 그리고 재빨리 몸을 돌려 당신을 마주본다. 그는 얼굴을 붉히고 있으며, 숨이 매우 가쁘다.~ */
  IF ~~ THEN REPLY #9861 /* ~"놀라게 해서 미안하오. 당신에게 몇 가지 질문을 하고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #9859 /* ~"우린 너무 긴장하고 있는 것 같지 않소?"~ */ GOTO 5
  IF ~~ THEN REPLY #9862 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9863 /* ~그는 당신을 화난 듯 쏘아보며 등 뒤로부터 대거를 꺼낸다. "꺼져, 얼간아! 당장 떠나지 않으면 넌 죽은 목숨이야!"~ */
  IF ~~ THEN REPLY #9865 /* ~"진정하시오. 난 뭘 좀 물어보려고 할 뿐이오."~ */ GOTO 3
  IF ~~ THEN REPLY #9868 /* ~"칼을 치우지 않으면 그걸 빼앗아 당신을 죽이겠소." ~ */ GOTO 4
  IF ~~ THEN REPLY #9870 /* ~"당신 원하는 대로 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9872 /* ~그는 수비 자세를 취하고 당신을 칼로 위협한다. "너에게 해줄 대답은 없어. 너하곤 할 말이 없어. 물러나!"~ */
  IF ~~ THEN REPLY #9873 /* ~"칼을 치우지 않으면 그걸 빼앗아 당신을 죽이겠소." ~ */ GOTO 4
  IF ~~ THEN REPLY #9874 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9875 /* ~그는 당신을 비웃고 칼로 몸짓을 한다. "그럼 내게 와. 내가 널 베고 네가 죽어갈 동안 웃어 줄 테니."~ */
  IF ~~ THEN REPLY #9876 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #9878 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #9880 /* ~당신은 그가 당신에게 무슨 말을 해야 할지 몰라 어쩔 줄 모르고 있다는 인상을 받는다. 당신의 코멘트는 그를 놀라게 만든 것 같다. "어... 난 딴 생각을 하고 있었던 것 같소. 무엇을 원하시오?" 그는 당신을 조심스럽게 쳐다본다.~ */
  IF ~~ THEN REPLY #9883 /* ~"몇 가지 질문에만 대답해주면 되오. 좋소?"~ */ GOTO 6
  IF ~~ THEN REPLY #9884 /* ~"실은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9885 /* ~그는 당신을 쳐다본 후, 불안한 듯 주변을 둘러본다. "질문 하나만 하고 떠나시오. 내겐 시간도 생각도 없으니까."~ */
  IF ~~ THEN REPLY #9886 /* ~"나는 어떤 디바를 찾고 있소. 나는 그가 커스트에 있는 것으로 알고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #9887 /* ~"누가 이 곳의 실력자요?"~ */ GOTO 8
  IF ~~ THEN REPLY #9888 /* ~"뭐 흥미있는 뉴스는 없소?"~ */ GOTO 9
  IF ~~ THEN REPLY #9889 /* ~"뭘 하고 있는 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #9890 /* ~"만약 믿고 질문할만한 사람을 찾는다면 누구에게 가야 하오?"~ */ GOTO 11
  IF ~~ THEN REPLY #9891 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9892 /* ~그는 미심쩍은 눈으로 당신을 쳐다본다. "그렇소. '군자연하는' 놈들 중 하나가 커스트의 거리를 걸어다니고 있소. 당신은 미쳐도 더럽게 미친 모양이군. 난 당신에게 대답을 해주었소, 그러니 이제 가보시오." 그는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #9893 /* ~떠난다~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9894 /* ~"토버스 길재프요. 그는 시 광장에 있는 행정국 사무실에 있소. 난 당신에게 대답을 해주었소, 그러니 이제 가보시오." 그는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #9895 /* ~떠난다~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #9896 /* ~그는 잠시 생각을 한다. "모르겠소... 난 소문에는 별 관심이 없소. 배신자의 술집으로 가시오. 그 곳은 저쪽으로 내려가면 있는 술집이오." 그는 애매모호하게 몸짓을 한다. "난 당신에게 대답을 해주었소, 그러니 이제 가보시오." 그는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #9897 /* ~떠난다~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #9898 /* ~그는 당신을 보고 웃는다. "그건 당신이 알 필요가 없는 일이오. 난 당신에게 대답을 해주었소, 그러니 이제 가보시오." 그는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #9899 /* ~떠난다~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #9900 /* ~그는 당신에게 미소를 지으며 웃는다. "그건 좋은 질문이오. 알고 보니 당신도 똑똑한 친구로군." 그는 잠시 생각한 후 당신을 조심스럽게 쳐다본다. "만약 내가 당신이라면 샤와 얘기하겠소. 그녀는 이 주변의 거리를 얼쩡거리고 있으니 찾기는 어렵지 않을 거요. 당신이 그녀에게 잘해 주면 그녀가 당신을 도울 거요. 난 당신에게 대답을 해주었소, 그러니 이제 가보시오." 그는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #9901 /* ~떠난다~ */ DO ~EscapeArea()
~ EXIT
END
