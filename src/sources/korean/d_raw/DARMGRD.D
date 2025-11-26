// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMGRD~

IF ~~ THEN BEGIN 0 // from:
  SAY #64550 /* ~"이보시오! 거긴 출입 제한 구역이오! 당신은 거기 들어갈 수가 없소!"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64555 /* ~"허락은 어떻게 받을 수가 있소?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64556 /* ~징표를 경비병에게 보여둔다: "나는 징표를 가지고 있소."~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64557 /* ~거짓말: "난 이 문을 통과할 권한을 부여받았소."~ */ GOTO 3
  IF ~~ THEN REPLY #64558 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #64551 /* ~"고위층의 허락을 받던지, 아니면 우리를 거쳐 가야 할 거요." 그는 험상스러운 표정으로 미소를 짓는다. "하지만 후자는 권하고 싶지 않소."~ */
  IF ~~ THEN REPLY #64559 /* ~"어쨌든난 시도해 보겠소."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64560 /* ~"알겠소. 그럼 그냥 떠나도록 하리다."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #64552 /* ~그는 징표를 자세히 살펴본다. "내 실수였소. 달리 도움이 필요한 거라도 있소?"~ */
  IF ~~ THEN REPLY #64561 /* ~"아니오. 안녕히 계시오."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
  IF ~~ THEN REPLY #64562 /* ~"아니오."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #64553 /* ~"그럼 그걸 내게 보여주시오." 그는 당신이 뭔가를 내놓기를 기다리면서 말한다. "만약 내게 장난을 치고 있는 거라면 당신은 내 인내심이 그다지 오래 가지 않는다는 걸 알게 될 거요."~ */
  IF ~~ THEN REPLY #64563 /* ~"그렇다면 그걸 고치는 게 좋을 거요."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64564 /* ~"좋소. 그렇게 호전적으로 나올 필요는 없지 않소. 잘 있으시오."~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY #64554 /* ~"무슨 도움이 필요하시오?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64565 /* ~"어떻게 하면 이 문을 통과할 수가 있소?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64566 /* ~징표를 경비병에게 보여둔다: "나는 징표를 가지고 있소."~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64567 /* ~거짓말: "난 이 문을 통과할 권한을 부여받았소."~ */ GOTO 3
  IF ~~ THEN REPLY #64568 /* ~"그럼 관두시오."~ */ EXIT
END
