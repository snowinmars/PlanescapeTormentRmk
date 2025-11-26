// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSINKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSINKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3179 /* ~Heard around town you were lookin for a way into the Prison. Soon as I get dialogue, I'll tell you how.~ */
  IF ~~ THEN REPLY #3181 /* ~And then I can go get that treacherous angel Trias! Oh boy!~ */ EXIT
  IF ~~ THEN EXIT
END
