// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34192 /* ~Pohyblivý zkrvavený železný řetěz, který se sám smotává a rozmotává. Připomíná vlnícího se hada. Destička vedle nese text: 'Kyronův pohyblivý řetěz, z Řinčícího zásahu.'~ */
  IF ~~ THEN REPLY #42657 /* ~Dotkni se řetězu.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42658 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42656 /* ~Řetěz je mírně teplý na dotek, jako kdyby byl živý. Všímáš si různých ostnů, malých háčků, jehliček a dalších malých, ostrých kousků, které jsou přivařené podél celé délky řetězu.~ */
  IF ~~ THEN REPLY #42659 /* ~Odejít.~ */ EXIT
END
