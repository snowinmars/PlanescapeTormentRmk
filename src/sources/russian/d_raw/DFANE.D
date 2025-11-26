// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFANE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DFANE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2931 /* ~Я Фейн, лидер клана Голодных Псов Лающих в Пристанище головорезов. Я ЗЛОЙ человек. ЗЛОЙ! ЗЛОЙ! ~ */
  IF ~~ THEN REPLY #2932 /* ~Твои хаоситеки все друг на друга похожи. Много лают и не кусаются.~ */ EXIT
END
