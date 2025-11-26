// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLODGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLODGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66627 /* ~This person seems moderately surprised to see you. "How odd... I was certain we had locked the door. In any case, I would ask that you please leave us be for the moment."~ */
  IF ~~ THEN REPLY #66629 /* ~"Of course. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #67880 /* ~"I'll leave when I please. Farewell."~ */ EXIT
END
