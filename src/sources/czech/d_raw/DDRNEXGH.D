// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNEXGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNEXGH~

IF ~~ THEN BEGIN 0 // from:
  SAY #40306 /* ~"Ach... nemocný... vargouillino kousnutí... taaaak nemocný..."~ */
  IF ~~ THEN REPLY #40340 /* ~"Uh-oh... to nezní moc dobře..."~ */ EXIT
END
