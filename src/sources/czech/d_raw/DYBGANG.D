// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYBGANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DYBGANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46105 /* ~Naštvaně vypadající mladík nevypadá jako pouliční grázl, spíš jako někdo, kdo by takový chtěl být. Drze se zašklebil, když ses přiblížil. "Táhni do hajzlu, vole! Já se s tebou vykecávat nebudu."~ */
  IF ~~ THEN REPLY #46106 /* ~"Eh... dobře. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #46107 /* ~Odejdi.~ */ EXIT
END
