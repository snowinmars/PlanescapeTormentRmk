// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCMOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCMOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2905 /* ~I am one of the moderate threat level constructs in the modron maze. I don't even know if I exist yet. Perhaps I am nothing more than a dialogue and that is all I shall ever be.~ */
  IF ~~ THEN REPLY #2906 /* ~I could only hope for so much. Good day.~ */ EXIT
END
