// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCONVSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCONVSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46332 /* ~Diese Person wendet sich um, als du die Leute in unterbrichst, und nickt höflich zum Gruß. "Entschuldigung, mein Herr, aber ich bin gerade beschäftigt. Wenn es Euch nichts ausmacht... Lebt wohl." Die Leute deuten eine höfliche Verbeugung an und wenden sich wieder ihrer Angelegenheit zu.~ */
  IF ~~ THEN REPLY #46333 /* ~Geh weg.~ */ EXIT
END
