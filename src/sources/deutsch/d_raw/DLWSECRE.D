// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSECRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSECRE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3036 /* ~Ich bin ein geheimnistuerischer Bewohner des Unteren Bezirks. Der Himmel bewahre, daß jemand meine Geheimnisse stiehlt! Keuch!~ */
  IF ~~ THEN REPLY #3037 /* ~Verdammter Klugscheißer...
~ */ EXIT
END
