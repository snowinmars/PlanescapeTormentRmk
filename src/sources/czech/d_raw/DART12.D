// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART12.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART12~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34204 /* ~Obraz zachycuje temné město, vzdálený pohled nějakého gigantického centra civilizace, vypáleného a vyrabovaného. Ulice jsou ale prázdné, bez vojáků, uprchlíků nebo dokonce těl. Popis zní 'Pošetilost Uda.'~ */
  IF ~~ THEN REPLY #42679 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_12","AR0608",1)
~ EXIT
END
