// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTTRANS~

IF ~  NumInPartyGT(1)
~ THEN BEGIN 0 // from:
  SAY #38940 /* ~Открыв ворота, ты чувствуешь дуновение холодного ветра. Ты содрогаешься, услышав шепот, хотя ты и не можешь различить, о чем он говорит. Мгновение спустя он исчезает, и наступает тишина... Ты осознаешь, что уже был здесь раньше, и у тебя возникает сильное чувство того, что твои товарищи не должны следовать за тобой внутрь.~ */
  IF ~~ THEN REPLY #38951 /* ~«Я войду сюда один. Подождите меня здесь».~ */ EXIT
END
