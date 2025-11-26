// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #25998 /* ~Malý, šlachovitý bandita je opásaný hadry zbarvenými rudě a černě. Rozzlobeně na tebe zírá, zatímco jdeš k němu blíž.~ */
  IF ~~ THEN REPLY #26001 /* ~"Zdravím.."~ */ GOTO 1
  IF ~~ THEN REPLY #26002 /* ~Nechej banditu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25999 /* ~Muž nemluví, jenom na tebe naštvaně zírá. Nevypadá to, že by zrovna on byl šéfem téhle malé bandy.~ */
  IF ~~ THEN REPLY #26000 /* ~"Tak tedy sbohem."~ */ EXIT
END
