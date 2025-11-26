// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9352 /* ~Ta kobieta ignoruje twoje przybycie. Zdaje się być do reszty pochłonięta ofertą sprzedawców.~ */
  IF ~~ THEN REPLY #9353 /* ~Zostaw ją sam na sam z jej zakupami.~ */ EXIT
END
