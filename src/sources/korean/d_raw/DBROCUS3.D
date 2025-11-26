// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3202 /* ~이 위세 당당한 신사는 당신이 접근해오는 것을 경멸에 찬 눈초리로 바라본다. "나는 여기에 숙녀들과 담소를 나누러 왔지 당신과 같은 사람과 얘기를 하러 온 것이 아니오. 당신이 질문 따위를 가지고 날 귀챃게 할 생각이 아니기를 바라겠소."~ */
  IF ~~ THEN REPLY #3203 /* ~"실은 물어볼 것이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40142 /* ~"보다 공손한 태도를 취하는 게 좋을 거요."~ */ GOTO 3
  IF ~~ THEN REPLY #40143 /* ~"그럴 생각이었소, 하지만 내 시간을 낭비하지 않겠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #40144 /* ~"아니, 그럴 생각은 없었소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40145 /* ~"또 나를 귀찮게 하는 거요? 내가 당신 같은 부류의 인간과 얘기를 하고자 했다면 이 곳 동쪽에 있는 그런 자들이 득실거리는 구역으로 갔을 거요. 이제 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #40146 /* ~"보다 공손한 태도를 취하는 게 좋을 거요."~ */ GOTO 3
  IF ~~ THEN REPLY #40147 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #40148 /* ~귀족은 눈을 가늘게 뜨고 당신을 본다. "상관없소... 전혀! 날 내버려 두고 그만 떠나 주시오."~ */
  IF ~~ THEN REPLY #40149 /* ~"보다 공손한 태도를 취하는 게 좋을 거요."~ */ GOTO 3
  IF ~~ THEN REPLY #40150 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0
  SAY #40151 /* ~그는 마음을 가라앉히려는 듯 두 눈을 감고 천천히 숨을 내쉰다. "만약 그렇게 해야만 당신이 떠나겠다면 그렇게 하리다: 부디 귀하께서 제 곁을 떠나 *다른* 곳에서 대화 상대를 찾으시라고 부탁드리고 싶소."~ */
  IF ~~ THEN REPLY #40152 /* ~"좋소... 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #40153 /* ~떠난다.~ */ EXIT
END
