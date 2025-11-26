// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFANE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFANE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2931 /* ~Jestem Fara, przywódca Klanu Szczekających Zagłodzonych Psów z kamienicy zbirów. Jestem podły, Podły, PODŁY!~ */
  IF ~~ THEN REPLY #2932 /* ~Wy Kaosyci jesteście wszyscy tacy sami. Mnóstwo szczekania i żadnego gryzienia.~ */ EXIT
END
