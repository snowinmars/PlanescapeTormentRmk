// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPROPHY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPROPHY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9354 /* ~Tato hrozivě vypadající žena ti darovala pouze krátký pohled předtím, než se opět vrátila k vyvolávání z vrchu jeviště. Její mohutný hlas se rozléhá napříč tržnicí a dokonce přehlušuje i ruch vydávaný prodavači i nakupujícími.~ */
  IF ~~ THEN REPLY #9355 /* ~Odejdi od ní.~ */ EXIT
END
