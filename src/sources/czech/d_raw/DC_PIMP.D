// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_PIMP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_PIMP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67973 /* ~Svalnatý strážce si tě prohlédl od hlavy k patě. "Se mnou kámo mluvit nechceš... to s nima." Ukázal na několik atraktivních - i když trochu moc vyšňořených - žen v místnosti za ním. "A buď na ně hodnej, kámo... nic drsnýho si na ně nezkoušej."~ */
  IF ~~ THEN REPLY #67975 /* ~"Vlastně jsem chtěl mluvit s tebou..."~ */ GOTO 1
  IF ~~ THEN REPLY #67976 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67974 /* ~Zavrtěl hlavou; skrze průzor jeho helmy vidíš, jak kroutí očima. Už na tebe nehodlá promluvit ani jedno slovo.~ */
  IF ~~ THEN REPLY #67977 /* ~Odejdi.~ */ EXIT
END
