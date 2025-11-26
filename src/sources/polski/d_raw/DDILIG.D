// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Ta starsza, poważnie wyglądająca kobieta z pewnością zdąża dokądś. Gdy zauważa, że się zbliżasz, wpatruje się w ciebie surowym, wyrażającym dezaprobatę wzrokiem.~ */
  IF ~~ THEN REPLY #2890 /* ~.~ */ EXIT
END
