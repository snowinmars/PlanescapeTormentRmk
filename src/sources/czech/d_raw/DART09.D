// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34201 /* ~Malba zobrazuje něco, co vypadá jako nekonečně dlouhý proud žlučovitě zeleného plynu, roztahujícího se do temnoty. V spodním pravém rohu malby je vidět horizont poničené skalnaté planiny... vzbudilo to v tobě dojem, že 'hlava' zeleného oblaku se připravuje k úderu na planinu. Popis obrazu zní 'Hazazoth při zničení N'garu.'~ */
  IF ~~ THEN REPLY #42673 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_09","AR0608",1)
~ EXIT
END
