// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #46767 /* ~"Promiň, sire. Nikdo nesmí nahoru, dokud se nevrátí factol Sandoz. Nemůžeš jít dál."~ */
  IF ~~ THEN REPLY #46768 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 1
  IF ~~ THEN REPLY #46906 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46907 /* ~"Je to věřící, pane, opravdový věřící - ale je dost náladový a všechno to cestování po mnohovesmíru mu moc nesvědčí. Člověk buď ztratí nadhled, nebo ho získá až moc. Tak či tak, moc dobré to není. Doufám, že bude brzy zpátky, v bezpečí."~ */
  IF ~~ THEN REPLY #46908 /* ~"Uvidíme. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #46909 /* ~"Zdravím, pane. Poslal tě Keldor? Sandoz sem přišel a zuří za těmi dveřmi už celý den. Doufám, že pro něj můžeš něco udělat."~ */
  IF ~~ THEN REPLY #46910 /* ~"Uvidíme." Zařvi přes dveře. "Sandozi! Potřebuju s tebou mluvit!"~ */ EXTERN ~DSANDOZ~ 0
END

IF WEIGHT #5 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #46911 /* ~"Chceš si promluvit se Sandozem, pane? Hodně štěstí..."~ */
  IF ~~ THEN REPLY #46912 /* ~"Díky." Zařvi přes dveře. "Sandozi! Potřebuju s tebou mluvit!"~ */ EXTERN ~DSANDOZ~ 1
END

IF WEIGHT #1 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #46913 /* ~"Pane." Strážní odmítají pokračovat v rozhovoru.~ */
  IF ~~ THEN REPLY #46914 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",7)
~ THEN BEGIN 5 // from:
  SAY #63354 /* ~Stráž na tebe hořce pohlédla. "Už je mrtvý. Nejsi šťastný? Jdi dolů a promluv si s Keldorem."~ */
  IF ~~ THEN REPLY #63355 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #64646 /* ~"Pane." stráž vypadá, že je to všechno co chtěla říct.~ */
  IF ~~ THEN REPLY #64647 /* ~"Sbohem."~ */ EXIT
END
