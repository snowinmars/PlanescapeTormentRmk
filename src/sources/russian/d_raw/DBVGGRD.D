// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVGGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVGGRD~

IF ~  !Dead("Barr")
~ THEN BEGIN 0 // from:
  SAY #56938 /* ~Стражник устало глядит на тебя полузакрытыми глазами. «Если хочешь пройти через ворота — тебе к Барру... — он кивает на Барра, стоящего перед воротами, — а если нет — отвали, ладно?» Он отворачивается.~ */
  IF ~~ THEN REPLY #56939 /* ~Уйти.~ */ EXIT
END

IF ~  Dead("Barr")
~ THEN BEGIN 1 // from:
  SAY #56940 /* ~Осматривая тебя, стражник зевает. «Надеюсь, ты тут не за тем, чтоб пройти через ворота, пень... Барр помер, так что больше никто не знает, как работает эта штуковина». Он отворачивается.~ */
  IF ~~ THEN REPLY #56941 /* ~Уйти.~ */ EXIT
END
