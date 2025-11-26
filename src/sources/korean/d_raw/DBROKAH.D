// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROKAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROKAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45789 /* ~약간 뒤뚱거리며 걷는 작은 사내가 눈에 들어온다. 그는 거의 희극적인 악센트으로 말을 한다. "신들과 천계에 걸고 묻겠는데, 이건 대체 뭐요?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DMICCAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45791 /* ~"우리 손님! 우리 손님! 믹카! 우리 손님이 다시 오셨어!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45793 /* ~작은 사내가 대답한다. "물론 당신 눈에는 손님이 보이겠지. 늘 말이야... 단, 거리를 지나가고 있는 손님들이. 우리 가게엔 손님이 오지 않아, 절대로 안 올 거라고. 손님을 기대하는 건 헛..." 그는 당신을 발견하고는 말을 멈춘다. "믹카! 손님이 오셨어!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45795 /* ~"나도 알아. 안다고. 나도 눈이 있는데 보지 못할 것 같아?" 그는 당신 쪽으로 돌아선다. "오늘은 무슨 용건으로 오셨소?"~ */
  IF ~~ THEN REPLY #45796 /* ~"거래에 대해 얘기합시다."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45797 /* ~"이 지역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #45798 /* ~"당신 자신에 대해 얘기해줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #45799 /* ~"그녀는 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #45800 /* ~"당파들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #45801 /* ~"아무 것도 아니오, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45802 /* ~"물론 나는 이 손님을 맞을 준비가 되어 있다고! 나는 어떤 손님도 맞이할 준비가 되어 있어!" 그는 당신 쪽으로 돌아선다. "오늘은 무슨 용건으로 오셨소?"~ */
  IF ~~ THEN REPLY #45803 /* ~"거래에 대해 얘기합시다."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45804 /* ~"이 지역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #45805 /* ~"당신 자신에 대해 얘기해줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #45806 /* ~"그녀는 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #45807 /* ~"당파들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #45808 /* ~"아무 것도 아니오, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45809 /* ~"아, 이 지역에 대해 알고 싶으시오? 나는 많은 것들을 말해 드릴 수가 있소. 볼 것들이 아주 많다오..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 9
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45811 /* ~"나? 나에 대해 알고 싶소? 믹카, 손님이 나에 대해 알고 싶대!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 10
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45813 /* ~"그녀? 그녀 말이오? 그녀는 나와 거의 40 년을 함께 산 조강지처이며 내 삶의 빛이자 내 인생..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 11
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45815 /* ~"에, 당파? 당파 말이오? 미카, 손님이 당파에 대해 알고 싶대! 우리는..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 12
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45817 /* ~"나는 그에게 시장에 대해 말해줄 생각이었어, 하지만 당신 때문에 이제는 매음굴에 대해 얘기해줄 거야, 그리고 그 다음에는 시 공회당에 대해 얘기할 거고 다른 구경거리에 대해서는 입을 다물 걸라고!"
두 사람은 당신을 무시하고 고함지르기 시합을 시작한다.
~ */
  IF ~~ THEN REPLY #45818 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #45819 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 10
  IF ~~ THEN REPLY #45820 /* ~"그럼 안녕히 계시오."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 11.0 11.1 11.2 12.0 12.1 12.2 13.0 13.1 13.2
  SAY #45821 /* ~그들은 서로에게 고함을 지르기에 바빠 당신은 볼 생각도 하지 않는다. 가게는 곧 그들의 고함 소리로 시끄러워진다.~ */
  IF ~~ THEN REPLY #45822 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45823 /* ~"내게는 야심이 부족해? 야심이 부족하다고? 그게 다 누구 때문인데! 당신만 없었으면 난 가게 주인이 아니라 위대한 모험자가 되었을 거라고!" 두 사람은 당신을 무시하고 고함지르기 시합을 시작한다.~ */
  IF ~~ THEN REPLY #45824 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #45825 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 10
  IF ~~ THEN REPLY #45826 /* ~"그럼 안녕히 계시오."~ */ GOTO 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45827 /* ~"...그녀가 이미 거기에 있지만 않았다면! 그녀는 벌통의 이 편에서 가장 지독한 술고래요, 손님, 그리고 그녀가 그런지는 이미 오래 되었소. 내 마누라는 술이라면 오케아노스 강을 채울 정도로 마시고도 여전히 목마르다고 할 거요."
두 사람은 계속 당신을 무시하고 말다툼을 한다. 
~ */
  IF ~~ THEN REPLY #45828 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #45829 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 10
  IF ~~ THEN REPLY #45830 /* ~"그럼 안녕히 계시오."~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45831 /* ~"내게도 확실하게 믿는 게 있지 - 나는 현생이 내가 전생에 대해 지은 죄에 대한 형벌이라고 굳게 믿는다고!"
두 사람은 당신을 무시하고 열띤 논쟁을 벌이기 시작한다.
~ */
  IF ~~ THEN REPLY #45832 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #45833 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 10
  IF ~~ THEN REPLY #45834 /* ~"그럼 안녕히 계시오."~ */ GOTO 10
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45835 /* ~"그녀의 취향은 자신의 배를 크게 만드는 데 쏠려 있소. 그녀의 취향은 입에 집중되어 있지만, 그것마저도 대단한 수준이 아니오."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 13
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45837 /* ~브로카는 중간에 끼어들어 신랄하게 비꼰다. "어떻게 이토록 아름다운 여인의 입과 자태를 찬미하지 않을 수 있겠소? 나는 참으로 분별력도 없고 취미도 더럽소..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45839 /* ~"그건 정말 믿기 어렵게 하는군! 인생의 추억이 될 만한 일을 할 기회를 그토록 많이 놓치다니!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 15
END

IF ~~ THEN BEGIN 17 // from:
  SAY #45841 /* ~"닥쳐! 난 네가 남자가 되더라도 나보다 더 나은 남자가 될 수는 없어!" 그는 잠시 멈추고 자신이 한 말을 되새기면서 자신의 부인을 유심히 살펴본다. "그렇지 않을지도 모르겠군. 당신은 내가 지금까지 본 대부분의 남자보다도 수염이 더 많으니까..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 16
END
