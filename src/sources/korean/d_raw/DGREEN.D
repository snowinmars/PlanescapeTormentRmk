// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGREEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGREEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51177 /* ~그 생물은 보통 림-림처럼 보인다. 이렇게 작고 귀여운 생물이 다섯 명의 마법사 견습생들을 참살했다고는 믿기 어렵다.~ */
  IF ~~ THEN REPLY #51178 /* ~림-림을 걷어찬다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #60321 /* ~그것을 그냥 내버려 둔다.~ */ EXIT
END
