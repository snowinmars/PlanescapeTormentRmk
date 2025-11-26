// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORES~

IF ~~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Tmavovlasá žena s bledou pletí má ušlechtilý, kultivovaný vzhled. Když se otočila k tobě, všiml sis, že její oči - které ti dříve připadaly šedé - mají barvu leštěné oceli.~ */
  IF ~~ THEN REPLY #34366 /* ~"Zdravím..."~ */ EXIT
END
