// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSC_TRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSC_TRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50384 /* ~이 오래된 낡은 양피지 두루마리는 붉은 리본으로 묶여 있으며, 곰팡내가 희미하게 난다. 리본은 밀랍으로 봉인되어 있다. ~ */
  IF ~~ THEN REPLY #50385 /* ~봉인을 뜯어 두루마리를 연 후 그것을 읽는다.~ */ GOTO 1
  IF ~~ THEN REPLY #50386 /* ~두루마리를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50387 /* ~두루마리에는 갈겨 쓴 글 몇 줄과 기묘한 룬이 적혀 있다. 글의 내용은:

"이것이 널 죽이지는 못하겠지만 네 행보를 늦추는 효과는 분명히 있을 거다"
"날 그만 쫓아라 이 도둑놈들아 이건 내 몸이다 내 몸이란 말이다"
"이제... 죽어라"~ */
  IF ~~ THEN REPLY #50388 /* ~"대체 뭔...?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50389 /* ~~ */
  IF ~~ THEN REPLY #50390 /* ~~ */ DO ~ApplySpell(Protagonist,WIZARD_BALL_LIGHTNING)
DestroyPartyItem("SCTrap",FALSE)
~ EXIT
END
