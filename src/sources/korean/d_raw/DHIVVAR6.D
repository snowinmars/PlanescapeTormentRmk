// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49016 /* ~걱정스런 표정을 하고 있는 여자가 보인다. ~ */
  IF ~~ THEN REPLY #49017 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #49018 /* ~그녀를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49019 /* ~여자는 한숨을 쉰다. "내 남편이 또 없어졌어요."~ */
  IF ~~ THEN REPLY #49020 /* ~"그는 바쁜 사람 같소."~ */ GOTO 4
  IF ~~ THEN REPLY #49021 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49022 /* ~"나는 내 남편이 돌아오기를 기다리고 있어요. 그가 나간 지 벌써 한참이 됐기 때문에 난 걱정이 되요."~ */
  IF ~~ THEN REPLY #49023 /* ~"틀림없이 그는 곧 돌아올 거요."~ */ GOTO 3
  IF ~~ THEN REPLY #49024 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49025 /* ~"당신 말이 옳아요. 어머... 벌써 시간이 이렇게... 실례해야겠어요. 내겐 끝내야 할 일들이 있어요."~ */
  IF ~~ THEN REPLY #49026 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49027 /* ~"그래요, 그리고 나도 바빠요... 그러니 제발 떠나 주세요."~ */
  IF ~~ THEN REPLY #49028 /* ~"안녕히 계시오."~ */ EXIT
END
