// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3398 /* ~Ich bin ein Kunde im Unteren Bezirk. Ich laufe herum, schau mir die Ware an und bin nur Füllmaterial.~ */
  IF ~~ THEN REPLY #3399 /* ~Klasse. Danke, daß du mir ein wenig 'Zeit' geopfert hast.~ */ EXIT
END
