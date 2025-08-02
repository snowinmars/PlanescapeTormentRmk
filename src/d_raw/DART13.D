// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART13.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART13~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34205 /* ~Похоже, это подземный пейзаж... внутреннее пространство огромной пещеры, покрытой гигантской разноцветной плесенью, слегка светящейся в темноте. Табличка гласит: «Долина под Клангеддином».~ */
  IF ~~ THEN REPLY #42680 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_13","AR0608",1)
~ EXIT
END
