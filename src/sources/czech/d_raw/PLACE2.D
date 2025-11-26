// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PLACE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~PLACE2~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #38700 /* ~Vidíš hubeného muže ve špinavých šatech, se zahnutým nosem a dvěma rohy, které mu vystupují z čela. Klopýtá kolem a mumlá si sám pro sebe... páchne solným lákem, zvratky a levným vínem. [Be sure to put in placeholder 2]~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #38701 /* ~"Zdravím."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #38702 /* ~"Jsi Jhelai? Jestli jo, tak tě Craddock potřebuje zpátky na tržišti."~ */ JOURNAL #30880 /* ~Schopný Přemýšlivě-myslící mi řekl, že Ravel byla uvězněna v jednom z bludišť Paní Bolesti, a že klíč k portálu do jejího bludiště by mělo být něco Ravelino. Moc mi to nepomohlo.~ */ EXIT
  IF ~~ THEN REPLY #38703 /* ~Jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #38704 /* ~"Eh?" Muž na tebe zašilhá zakaleným zrakem. "Copató? Coó?"~ */
  IF ~~ THEN REPLY #38705 /* ~"Jsi Jhelai? Jestli jo, tak tě Craddock potřebuje zpátky na tržišti."~ */ EXIT
  IF ~~ THEN REPLY #38706 /* ~"Nevadí. Promiň, že jsem tě obtěžoval."~ */ EXIT
END
