// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDSTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDSTL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3170 /* ~Cette porte est maintenue en place par de lourds verrous et des pointes acérées. On dirait qu'il est impossible de l'ouvrir avec les moyens dont tu disposes.~ */
  IF ~  Global("Curst_key","GLOBAL",7)
~ THEN REPLY #3171 /* ~Prononce les syllabes que Trias t'a révélées.~ */ GOTO 1
  IF ~~ THEN REPLY #68141 /* ~Ne touche pas à la porte.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #68142 /* ~À la première syllabe, la porte craque et grince. À la deuxième, les barbelures métalliques se tordent et se desserrent. Et, à la troisième, le battant s'ouvre.~ */
  IF ~~ THEN REPLY #68143 /* ~"Et voilà."~ */ DO ~SetDoorLocked("ar702d03",FALSE)
OpenDoor("AR702d03")
~ EXIT
END
