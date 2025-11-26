// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFANE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFANE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2931 /* ~Ich bin Fane, der Anführer der Ausgehungerten Bellenden Hunde im Mietshaus der Schläger. Ich bin eine NIEDERTRÄCHTIGE Person. NIEDERTRÄCHTIG UND GEMEIN!~ */
  IF ~~ THEN REPLY #2932 /* ~Ihr Xaositekten seid doch alle gleich. Große Klappe und nichts dahinter.~ */ EXIT
END
