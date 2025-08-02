// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAPGOOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAPGOOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2839 /* ~Мы — братки, стоим, охраняем ворота в Мусорные районы и Погребенную деревню. Чтоб пройти, тебе придется либо кинуть нас, либо отдубасить.~ */
  IF ~~ THEN REPLY #2840 /* ~Звучит захватывающе. Жду не дождусь, когда ДИЗАЙНЕР это ЗАКОНЧИТ. Хорошего ДНЯ, сэры.~ */ EXIT
END
