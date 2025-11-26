// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCMOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCMOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2905 /* ~Ich bin eines der Konstrukte der gemäßigten Drohung im Modron-Irrgang. Ich weiß nicht einmal, ob ich überhaupt schon existiere. Vielleicht bin ich nur ein Dialog und werde niemals mehr sein.~ */
  IF ~~ THEN REPLY #2906 /* ~Das wäre mir nur recht. Einen schönen Tag noch.~ */ EXIT
END
