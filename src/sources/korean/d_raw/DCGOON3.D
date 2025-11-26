// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53780 /* ~"멍청아, 넌 엉뚱한 문으로 들어왔어. 그게 네가 이 세상에서 하는 마지막 실수가 될 거다.~ */
  IF ~~ THEN REPLY #53781 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
