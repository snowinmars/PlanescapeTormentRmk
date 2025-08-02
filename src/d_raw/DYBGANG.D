// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYBGANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DYBGANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46105 /* ~Этот сердитый на вид юноша кажется скорее не бандитом, а тем, кто пытается быть на него похожим. Он ухмыляется, когда ты подходишь. «'Отвали', 'пень'! Переговори с 'большими шишками', а я с тобой 'трещать' не буду».~ */
  IF ~~ THEN REPLY #46106 /* ~«Э... Хорошо. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #46107 /* ~Уйти.~ */ EXIT
END
