// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9708 /* ~이 생명체는 숫양의 몸과 인간의 상체를 지니고 있다. 그의 텁수룩한 머리에는 둥글게 감긴 뿔들이 달려 있고, 그의 털가죽은 정교한 패턴으로 염색되고 깎여 있다. 그는 뿔과 머리를 색이 있는 유리알과 간단한 보석류로 치장하고 있다. 그는 당신이 있다는 사실을 눈치채지 못한 듯하다.~ */
  IF ~~ THEN REPLY #7544 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #7565 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2725 /* ~그는 당신 말을 듣지 못했던지 아니면 못 들은 척 하는 것 같다. 그 생명체는 떠나려는 것 같다. ~ */
  IF ~~ THEN REPLY #7623 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 2
  IF ~~ THEN REPLY #7646 /* ~그가 지나가도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2734 /* ~그는 당신을 조심스럽게 본다... 그 생명체는 당신을 수상하게 생각하나 두려워하지는 않는 것 같다. ~ */
  IF ~~ THEN REPLY #12334 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #12335 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2743 /* ~그 생명체의 목소리는 굵고 낭랑하다. "벌통의 거리에서? 여기는 그런 곳이 못 되오. 내가 내 할 일을 하도록 그냥 내버려 두시오. 나중에 더 나은 장소에서 만나게 되면 그 때 다시 얘기합시다."~ */
  IF ~~ THEN REPLY #12336 /* ~"난 몇 가지 질문을 하고 싶었을 뿐이오..."~ */ GOTO 4
  IF ~~ THEN REPLY #12337 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2753 /* ~"다음 기회에 합시다, 두 다리... 다음 기회에." 그는 걷기 시작한다.~ */
  IF ~~ THEN REPLY #12339 /* ~그가 떠나려 할 때 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12340 /* ~그를 그냥 보내준다.~ */ EXIT
END
