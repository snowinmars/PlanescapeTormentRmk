// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTIL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2966 /* ~I am an evil book of spells you can carry around in your inventory.~ */
  IF ~~ THEN REPLY #2967 /* ~Evil, you say? Spells, you say? I'm there! Then I'm gone.~ */ EXIT
END
