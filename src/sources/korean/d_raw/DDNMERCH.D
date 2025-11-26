// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDNMERCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDNMERCH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50999 /* ~한 발로 공 위에 서서, 점프를 하며 공에 디딘 발을 바꾸고 있는 스켈레톤이 보인다. 그의 이빨 사이로는 휘파람이 새어 나오고 있다. 그는 몹시 지루해 보인다. 그러나 당신이 다가가자 그의 태도가 극적으로 변한다. "어서 오시오! 어서 오시오! 내겐 고요한 자들을 약탈하러 온 얼간이들로부터 방금 나온 쓸만한 물건들이 잔뜩 있소. 혹시 보시겠소?"~ */
  IF ~~ THEN REPLY #51002 /* ~"좋소. 당신이 지닌 물건들을 보여주시오."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51001 /* ~"아니오. 대신 당신에게 몇가지 질문할 것들이 있소."~ */ GOTO 1
  IF ~~ THEN REPLY #51003 /* ~"아니오. 내 실수였소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51004 /* ~그는 한숨을 쉰다. "이보시오, 나도 내게 이 세상이 끝날 때까지 가만히 서서 잡담을 할 시간이 있다는 건 아오, 하지만 난 산 자들을 상대하는 걸 별로 좋아하지 않소, 알겠소? 나는 산 자들이 죽기 전에 그들로부터 이런 물건들을 취해서 다른 죽은 자들에게 파오, 그래서 나는 당신만 괜찮다면 이 거래를 끝내고 집에 돌아가고 싶소, 알겠소? 그래, 내 물건들을 보겠소? 그럼 좋소, 보여주리다. 아니라면 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #51006 /* ~"당신이 지닌 물건들을 보여주시오."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51005 /* ~"그럼 관두시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #51007 /* ~"오. 또 당신이군. 이제는 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #51008 /* ~"내 질문들 중 어느 하나라도 대답을 해줄 생각은 있는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #51009 /* ~"새로운 물건은 없소?"~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51010 /* ~"아무 것도 아니오. 내 실수였소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51011 /* ~"아니." 그는 당신 뒤를 쳐다본다. "난 차라리 벽이나 쳐다보겠소." 그는 다시 당신을 쳐다본다. "물건을 살 거요, 안 살 거요?"~ */
  IF ~~ THEN REPLY #51012 /* ~"물건을 사겠소."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51034 /* ~"아니, 그렇게 생각하지 않소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #51035 /* ~"그럼 안녕히 가시오." 그는 자신의 희디 흰 이빨들 사이로 음조도 맞지 않는 휘파람을 부르고 있다. ~ */
  IF ~~ THEN REPLY #51036 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Undead_Alert","AR1500",1)
~ THEN BEGIN 5 // from:
  SAY #51037 /* ~해골 상인은 주변의 소란에도 불구하고 별 반응이 없다. "날 죽이러 왔소? 마음대로 하시오. 난 개의치 않소."~ */
  IF ~~ THEN REPLY #51038 /* ~"정말 상관없다는 말이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #51039 /* ~"그럼 그걸 한 번 시험해 보겠소."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51040 /* ~"그럼 당신을 그냥 내버려 두도록 하지. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51041 /* ~"물론 아니오. 나는 이미 오래 전에 끔찍하게 죽었소. 나는 당신이 내게 어떤 짓을 하든 두렵지 않소. 고통은 내게 아무 의미도 없소. 이제 내게 있는 것 의식뿐이고, 그것조차도 당신과 굳이 싸울 정도로 내게 소중하지는 않소."~ */
  IF ~~ THEN REPLY #51042 /* ~"좋아. 그럼 죽어라."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51043 /* ~"흥미롭군. 그럼 안녕히 계시오."~ */ EXIT
END
