// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARTPTRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DARTPTRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50864 /* ~"I'm sorry, sir, but I'm here to look at the artwork - not to converse with strangers. Now if you'll be so kind as to excuse me... farewell."~ */
  IF ~~ THEN REPLY #50865 /* ~Leave.~ */ EXIT
END
