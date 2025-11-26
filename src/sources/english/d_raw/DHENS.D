// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHENS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHENS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3074 /* ~I'm a bitch, I'm a liar, I'm a thief, I'm your mother, I'm an oozing sore that cannot be ignored... no, wait, that's Meredith Brooks. What I am is a salesman who lies and through my lies you can find the truth. Maybe.~ */
  IF ~~ THEN REPLY #3366 /* ~I'll be interested to see if the designer can pull that off. Should be fun!~ */ EXIT
END
