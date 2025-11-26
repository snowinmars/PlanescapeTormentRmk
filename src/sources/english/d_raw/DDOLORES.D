// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORES~

IF ~~ THEN BEGIN 0 // from:
  SAY #34365 /* ~This dark-haired, pale-skinned woman has a cultured, refined look about her. As she turns to you, you note that her eyes - which you had previously thought to be gray - are the color of brushed steel.~ */
  IF ~~ THEN REPLY #34366 /* ~"Greetings..."~ */ EXIT
END
