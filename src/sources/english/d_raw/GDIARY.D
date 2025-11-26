// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GDIARY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~GDIARY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #30104 /* ~This book looks like it is made from paper-thin silver sheets. The engraving of a woman is on the cover of the text, and there is a small lock on the side of the book. No matter how you try, the lock resists your attempts to open it.~ */
  IF ~~ THEN REPLY #50095 /* ~"Well, I didn't want to read it anyway... well, at least, not yet."~ */ EXIT
END
