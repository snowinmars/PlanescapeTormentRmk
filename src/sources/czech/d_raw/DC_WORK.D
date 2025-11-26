// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WORK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WORK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67978 /* ~Dělník zvedl pohled od své práce. "Hele... to, co tady dělám, se neudělá, jestli se budu vykecávat s každým, kdo pude kolem. Tak mě nechej a jdi otravovat někoho jinýho, jasný?" Vrátil se zpátky ke své rozdělané práci.~ */
  IF ~~ THEN REPLY #67979 /* ~Odejdi.~ */ EXIT
END
