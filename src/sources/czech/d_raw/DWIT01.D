// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43023 /* ~Tato osoba zkouší různé bojové manévry na dřevěné tréninkové figuríně. Vypadá, že je příliš zaneprázdněna na to, aby s tebou teď hovořila.~ */
  IF ~~ THEN REPLY #43024 /* ~Odejít.~ */ EXIT
END
