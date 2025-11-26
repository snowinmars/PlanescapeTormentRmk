// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOADY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOADY~

IF ~  GlobalLT("Sarhava","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #32066 /* ~당신이 다가가자 이 젊은 귀족은 경멸하는 듯한 표정을 짓는다, 그러나 달리 무슨 말은 하지 않는다. ~ */
  IF ~~ THEN REPLY #32067 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #32073 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32069 /* ~그는 노골적으로 당신을 무시한다.~ */
  IF ~~ THEN REPLY #32074 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #32070 /* ~당신이 다가가자 젊은 귀족은 당신과 눈을 마주치는 것을 피한다, 그리고 고개를 저으면서 입을 손으로 막은 채 킬킬거리고 있다.~ */
  IF ~~ THEN REPLY #32075 /* ~"안녕하시오..."~ */ GOTO 3
  IF ~~ THEN REPLY #32076 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32071 /* ~그는 눈알을 부리리며 당신에게 다른 데로 가라고 손짓한다. 그는 당신의 인사에 단 한 마디라도 응답할 생각이 없는 것 같다. ~ */
  IF ~~ THEN REPLY #32077 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 4 // from:
  SAY #32072 /* ~젊은 귀족은 점잖게 고개를 끄덕여 답례하나, 당신과 대화를 나누려고 하지는 않는다.~ */
  IF ~~ THEN REPLY #32078 /* ~떠난다.~ */ EXIT
END
