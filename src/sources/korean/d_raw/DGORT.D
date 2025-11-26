// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGORT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51179 /* ~이 거대한 생물의 키는 2.7m가 넘는다. 물결치는 듯한 근육이 그의 거대한 몸을 지탱하고 있다. 그는 옆에 서 있는 자신과 흡사하게 생긴 생물들 둘과 대화를 하고 있다.~ */
  IF ~~ THEN REPLY #51180 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #51181 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51182 /* ~당신이 인사를 하자 그는 돌아서서 당신을 내려다본다. 그는 어리둥절해 하는 듯하다. "고트는 꼬마에게 인사해."~ */
  IF ~~ THEN REPLY #51183 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51184 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51185 /* ~그는 미안한 표정을 지으면서 고개를 젓는다. "고트는 당신 말 잘 못해. 미안. 토프에게 물어." 그는 자신의 옆에 있는 생물들 중 하나를 가리킨다.~ */
  IF ~~ THEN REPLY #51186 /* ~"알겠소. 고맙소."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51187 /* ~고트가 보인다. 그는 당신을 내려다보며 미소를 짓는다. "고트는 당신에게 다시 인사해."~ */
  IF ~~ THEN REPLY #51188 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51189 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51190 /* ~고트가 보인다. 그는 고개를 깊숙이 숙인다. "고트는 인사해, 친구. 고트는 감사해 그의 목숨 구해줘서." 그는 돌아선다.~ */
  IF ~~ THEN REPLY #51191 /* ~떠난다.~ */ EXIT
END
