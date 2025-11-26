// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART11.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART11~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34203 /* ~Malba ukazuje obrovskou žulovou pevnost - ohavnou věc, dlouhou a nízkou, pokrytou šilhajícími chrliči - na pozadí něčeho, co vypadá jako noční obloha. Oblak karmínových a fialových par se víří na pozadí, po pravé straně obrazu. Popis zní jednoduše - 'Knihovna.'~ */
  IF ~~ THEN REPLY #42678 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_11","AR0608",1)
~ EXIT
END
