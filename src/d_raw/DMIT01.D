// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43000 /* ~Этот человек пристально всматривается в металлическую плиту, установленную на стене комнаты. Спустя минуту интенсивного сосредоточения, он взмахивает руками и произносит ряд впечатляющих «тайных слов»... но безуспешно. Тем не менее, он продолжает усердно практиковаться, не отвлекаясь на разговоры с тобой.~ */
  IF ~~ THEN REPLY #43001 /* ~Уйти.~ */ EXIT
END
