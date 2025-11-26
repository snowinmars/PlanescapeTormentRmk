// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19696 /* ~이 여자 굴로부터는 피와 썩은 시체의 냄새가 난다. 그녀의 긴 섬유질의 머리 속에서는 벌레와 구더기들이 기어 다니고 있으며, 그녀는 무시무시하게 생긴 손톱으로 자신의 노란 눈을 가리고 있는 머리를 제치곤 한다. 그녀의 피부는 역겨운 녹색이 되었으며, 썩은 부위와 상처에서 흘러나오는 고름으로 뒤덮여 있다. ~ */
  IF ~~ THEN REPLY #19705 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #19706 /* ~굴을 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19697 /* ~굴은 눈을 가늘게 뜨고 당신에게 으르렁댄다. 그녀는 길이가 두 뼘은 될 것 같은 혀를 내밀어 자신의 더러운 입술을 핥는다.~ */
  IF ~~ THEN REPLY #19707 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #19708 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19698 /* ~굴은 계속 배고픈 눈으로 당신으로 바라본다. 그녀는 당장이라도 달려들어 당신을 잡아먹고 싶은 충동을 억제하는 듯, 자신의 날카로운 손톱이 달린 손을 쥐었다 폈다 한다. ~ */
  IF ~~ THEN REPLY #19709 /* ~"진정하시오, 그리고 내 질문에 대답해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #19710 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19699 /* ~굴은 당신에게 날카롭게 소리를 지른다. "닥쳐, 고기! 말하지마! 난 고깃덩어리 말은 안 들어! 나는 네 가슴의 고동만 들어, 정맥 속의 피, 달콤하고 맛있는 피... 맛있는 심장 고기..." 그녀의 입으로부터 침이 흘러나와 먼지투성이 바닥에 떨어진다. "말하지마!"~ */
  IF ~~ THEN REPLY #19711 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19700 /* ~당신이 다가가자 굴은 날카롭게 소리를 지른다. "꺼져! 꺼지라고! 난 고기하고는 얘기 안 해! 난 듣지 않을 거야, 고기! 가!"~ */
  IF ~~ THEN REPLY #19712 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19701 /* ~이 여자 굴로부터는 피와 썩은 시체의 냄새가 난다. 그녀의 긴 섬유질의 머리 속에서는 벌레와 구더기들이 기어 다니고 있으며, 그녀는 무시무시하게 생긴 손톱으로 자신의 노란 눈을 가리고 있는 머리를 제치곤 한다. 그녀의 피부는 역겨운 녹색이 되었으며, 썩은 부위와 상처에서 흘러나오는 고름으로 뒤덮여 있다. ~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 204
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50422 /* ~이 여자 굴로부터는 피와 썩은 시체의 냄새가 난다. 그녀의 긴 섬유질의 머리 속에서는 벌레와 구더기들이 기어 다니고 있으며, 그녀는 무시무시하게 생긴 손톱으로 자신의 노란 눈을 가리고 있는 머리를 제치곤 한다. 그녀의 피부는 역겨운 녹색이 되었으며, 썩은 부위와 상처에서 흘러나오는 고름으로 뒤덮여 있다. ~ */
  IF ~~ THEN REPLY #50423 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #50425 /* ~굴을 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
