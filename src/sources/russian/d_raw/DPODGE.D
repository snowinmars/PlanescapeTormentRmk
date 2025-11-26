// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPODGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPODGE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2891 /* ~Я толстый пыхтящий карманник из района аристократов. Скорее всего, ты уже встречал других моих товарищей в районе низшего сословия.~ */
  IF ~~ THEN REPLY #2892 /* ~Да, точно. Наверно, прямо сейчас пойду их искать. Прощай.~ */ EXIT
END
