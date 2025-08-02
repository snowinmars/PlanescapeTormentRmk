// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLABOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLABOR~

IF ~  !Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #9348 /* ~Перед тобой тощий усталый мужчина. Его одежда воняет грязью и потом, и он, похоже, запыхался. Он не обращает внимания на твое приближение... он похож на одного из обычных рабочих с рыночной площади.~ */
  IF ~~ THEN REPLY #9349 /* ~Оставить его в покое.~ */ EXIT
END

IF ~  Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #22651 /* ~Этот человек наблюдает за твоим приближением... это один из тех, с кем ты работал, подменяя Джелая. «Ну, здравствуй... рад снова тебя видеть, — он понижает тон. — Держись подальше от неприятностей и следи за Крэддоком... его легко разозлить, так вот».~ */
  IF ~~ THEN REPLY #22652 /* ~«Спасибо за предупреждение. Прощай».~ */ EXIT
END
