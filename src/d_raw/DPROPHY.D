// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPROPHY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPROPHY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9354 /* ~Эта угрюмая женщина удостаивает тебя лишь мимолетным взглядом, после чего возвращается к своим тирадам на помосте. Ее мощный голос разносится по рынку, пробиваясь даже через гомон торговцев и топот ног.~ */
  IF ~~ THEN REPLY #9355 /* ~Оставить ее в покое.~ */ EXIT
END
