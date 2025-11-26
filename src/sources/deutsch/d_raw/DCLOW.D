// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2903 /* ~Ich bin eines der mechanischen Konstrukte der sanften Drohung im Modron-Irrgang. Ich habe die Pflicht, alle Eindringlinge herauszufordern, die den Irrgang betreten. Fühlst du dich herausgefordert?~ */
  IF ~~ THEN REPLY #2904 /* ~Noch nicht, aber ich weiß, dass es so kommen wird. Lebe wohl.~ */ EXIT
END
