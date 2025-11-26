// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34200 /* ~Malba vysokých černých útesů, v pozadí je krvavě rudé nebe. Vypadá to, jako by se na útesu skrývaly nějaké postavy, ale když se pokoušíš na ně zaměřit, obrazy zmizely. Destička u obrazu nese text 'Nájezdníci z Jinozemě.'~ */
  IF ~~ THEN REPLY #42672 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_08","AR0608",1)
~ EXIT
END
