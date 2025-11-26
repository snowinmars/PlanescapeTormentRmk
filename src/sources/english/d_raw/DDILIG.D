// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~This older, stern-looking woman is clearly on her way somewhere. When she notices your approach, she studies you with a disapproving, tight-lipped frown.~ */
  IF ~~ THEN REPLY #2890 /* ~Only if you show me your boobies, honey-baby.~ */ EXIT
END
