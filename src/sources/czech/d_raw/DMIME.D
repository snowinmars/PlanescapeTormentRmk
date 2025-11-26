// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49773 /* ~Tvář tohoto muže byla bíle pomalována. Na jeho čelo je namalován pár obočí a pomocí červeného pudru byly vytvořeny dva malé kruhy na jeho tvářích a zvýraznění jeho rtů. Něco říká, ale neslyšíš jej. Jeho ruce tlačí na něco, co vypadá jako nějaká neviditelná zeď.~ */
  IF ~~ THEN REPLY #49774 /* ~"Cože? Neslyším tě..."~ */ GOTO 1
  IF ~~ THEN REPLY #49775 /* ~Zkus se jej dotknout.~ */ GOTO 2
  IF ~~ THEN REPLY #49776 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49777 /* ~Svěsil hlavu, bezhlasně vzdychl a pokrčil rameny. Pak trochu poodstoupil, rozmachem tě přivítal a začal pantomimu různých akcí... šplh na laně, chůzi ze schodů a tak dál.~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN EXTERN ~DGRACE~ 144
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49778 /* ~Zkus se jej dotknout.~ */ GOTO 2
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49779 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #49780 /* ~Natáhl ses, aby ses mima dotknul, ale tvá ruka se zarazila o nějakou neviditelnou sílu. Herec se zdá být polapen v nějaké neviditelné krabici nebo kleci.~ */
  IF ~~ THEN REPLY #49781 /* ~Odejdi.~ */ EXIT
END
