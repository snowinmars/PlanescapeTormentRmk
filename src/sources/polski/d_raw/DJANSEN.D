// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJANSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJANSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67910 /* ~Człowiek ten jest cały posiniaczony i zalany krwią. Całą twarz ma zaczerwienioną i opuchniętą od razów strażników Klątwy. Nie odzywa się, tylko spluwa połamanymi zębami i strzyka strugami krwi.~ */
  IF ~~ THEN REPLY #67911 /* ~"Odejdź."~ */ EXIT
END
