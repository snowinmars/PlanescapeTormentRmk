// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTIL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2966 /* ~Я зловещая книга заклинаний, которую ты можешь носить у себя в инвентаре.~ */
  IF ~~ THEN REPLY #2967 /* ~Зловещая, говоришь? Заклинаний, значит? Я здесь! А теперь меня нет.~ */ EXIT
END
