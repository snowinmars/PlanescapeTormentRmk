// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLODGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLODGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66627 /* ~Die Person scheint etwas überrascht zu sein, dich zu sehen. "Wie merkwürdig... Ich war mir sicher, daß wir die Tür geschlossen haben. Wie dem auch sei, ich würde jetzt darum bitten, daß du uns verläßt."~ */
  IF ~~ THEN REPLY #66629 /* ~"Natürlich. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #67880 /* ~Ich gehe, wann ich will. Leb wohl."~ */ EXIT
END
