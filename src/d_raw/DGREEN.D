// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGREEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGREEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51177 /* ~Перед тобой нечто, выглядящее как обычный лим-лим. Трудно поверить, что такое милое создание смогло забить пять магов-учеников так просто.~ */
  IF ~~ THEN REPLY #51178 /* ~Пнуть лим-лима.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #60321 /* ~Оставить его в покое.~ */ EXIT
END
