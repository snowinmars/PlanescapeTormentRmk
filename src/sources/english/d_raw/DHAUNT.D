// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAUNT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAUNT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2929 /* ~I'm a possible haunt that flits around Sigil and some of the other areas. I don't know whether I'll actually be implemented or not.~ */
  IF ~~ THEN REPLY #2930 /* ~Life is full of uncertainty... and it doesn't seem to get any better after you're dead, either.~ */ EXIT
END
