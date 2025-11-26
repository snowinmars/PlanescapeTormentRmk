// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFANE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFANE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2931 /* ~I'm Fane, the leader of the Starved Dogs Barking Clan in the tenement of thugs. I'm a MEAN person. MEAN! MEAN!~ */
  IF ~~ THEN REPLY #2932 /* ~You Xaositects are all alike. Plenty of bark, no bite.~ */ EXIT
END
