// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33529 /* ~이 기분이 더러운 것 같은 깡패를 건드려서 좋을 건 없을 듯하다. ~ */
  IF ~~ THEN REPLY #33532 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #33534 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33530 /* ~사내는 당신을 훑어보더니 당신 발에 침을 뱉는다. "뭐야? 싸움이라도 원하는 거야?"~ */
  IF ~~ THEN REPLY #33535 /* ~"그렇소... 당신은 준비가 됐소?~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33537 /* ~"아니오... 그냥 질문할 게 좀 있었을 뿐이오..."~ */ GOTO 2
  IF ~~ THEN REPLY #33538 /* ~"아니오. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #33531 /* ~"안됐군, 얼간이... 넌 나랑 싸워야겠어!" 사내는 긴 칼날이 달린 나이프를 뽑는다...~ */
  IF ~~ THEN REPLY #33540 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33541 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
