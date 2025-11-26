// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_DRINK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_DRINK~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67935 /* ~당신이 불쑥 말을 걸자, 이 사람은 돌아서서 냉소하는 표정으로 당신을 흘겨본다. 그러나 당신 모습을 보고는 그는 표정을 다소 누그러뜨린다. 그리고 마지 못해 고개를 끄덕여 인사를 한다.~ */
  IF ~~ THEN REPLY #67936 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67937 /* ~이 사람은 자신의 술잔으로부터 고개를 드는 둥 마는 둥 한다 . "난 당신을 도울 수도, 당신 질문에 대답할 수도 없소... 그러니 날 그냥 내버려 두시오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #67938 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67939 /* ~그들은 당신 쪽으로 돌아서서 당신을 노려본다. "내가 바쁜 게 보이지 않소? 만약 내가 당신과 얘기하고 싶었다면 내가 먼저 대화를 시작했을 거요." 그들은 돌아선다.~ */
  IF ~~ THEN REPLY #67940 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67941 /* ~이 사람은 돌아서서 불안한 표정으로 당신을 본다. "난 당신이 여기서 술을 마시는 것을 막을 수는 없소, 하지만 당신과 얘기는 하지 않을 거요. 더 이상 할 얘기는 없소." 그들은 돌아서서 마시던 술을 계속 마신다.~ */
  IF ~~ THEN REPLY #67942 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67943 /* ~그들은 더 이상 당신에게 할 말이 없다. ~ */
  IF ~~ THEN REPLY #67944 /* ~떠난다.~ */ EXIT
END
