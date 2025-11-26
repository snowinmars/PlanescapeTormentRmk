// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2543 /* ~Vidíš ženu s bledou tváří, oblečenou do černého roucha. Tiše zírá do svého drinku.~ */
  IF ~~ THEN REPLY #2545 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #2546 /* ~Nechej ji být.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2544 /* ~Vidíš Spalovačku s bledou tváří, oblečenou do černého roucha. Tiše zírá do svého drinku.~ */
  IF ~~ THEN REPLY #2547 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #2548 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2549 /* ~Spalovačka zvedla pohled. "Ano?"~ */
  IF ~~ THEN REPLY #2550 /* ~"Můžu ti položit pár otázek?"~ */ GOTO 3
  IF ~~ THEN REPLY #2551 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2552 /* ~"Teď ne." Spalovačka ztichla a vrátila se k drinku.~ */
  IF ~~ THEN REPLY #2553 /* ~"Sbohem tedy."~ */ EXIT
END
