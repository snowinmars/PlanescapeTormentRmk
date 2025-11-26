// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBTGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67912 /* ~Strážný se zastavil jenom aby ti mohl říct: "Nic jsi neviděl. Pokud víš, co je pro tebe dobré."  Otočil se zpět ke své oběti.~ */
  IF ~~ THEN REPLY #67913 /* ~"Sbohem."~ */ EXIT
END
