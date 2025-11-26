// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVGGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVGGRD~

IF ~  !Dead("Barr")
~ THEN BEGIN 0 // from:
  SAY #56938 /* ~Strážný si tě znuděně prohlédl. "Jestli chceš použít bránu, zajdi si za Barrem..." Kývl směrem k Barrovi, stojícímu u brány. "... esli ne, tak mě nech bejt, jasný?" Podíval se stranou.~ */
  IF ~~ THEN REPLY #56939 /* ~Odejdi.~ */ EXIT
END

IF ~  Dead("Barr")
~ THEN BEGIN 1 // from:
  SAY #56940 /* ~Strážný zívnul, když si tě prohlédl. "Doufám, že nechceš použít tu bránu, vole... Co je Barr mrtvej, nikdo neví, jak se s tím zachází." Podíval se stranou.~ */
  IF ~~ THEN REPLY #56941 /* ~Odejdi.~ */ EXIT
END
