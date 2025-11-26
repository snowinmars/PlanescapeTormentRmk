// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAUNT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAUNT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2929 /* ~Я, скорее всего, призрак, который летает по Сигилу и кое-каким другим зонам. Я даже не знаю, сделают ли меня.~ */
  IF ~~ THEN REPLY #2930 /* ~Жизнь полна неопределенностей... и похоже, даже после смерти в этом плане нет никакого прогресса.~ */ EXIT
END
