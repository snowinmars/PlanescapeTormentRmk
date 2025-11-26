// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR8~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38111 /* ~Fürchte die Namen. Namen haben Macht in der Identität. Andere können Namen als Waffen einsetzen. Namen sind Aufhänger, mit deren Hilfe man dich über die Ebenen hinweg aufgespüren kann. Bleib namenlos, und du bist sicher.~ */
  IF ~~ THEN REPLY #53764 /* ~Weiter.~ */ GOTO 1
  IF ~~ THEN REPLY #53765 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53766 /* ~Ich bin der Namenlose.~ */
  IF ~  Global("Inscr_8","GLOBAL",0)
~ THEN REPLY #53767 /* ~Untersuche die Tafel.~ */ GOTO 2
  IF ~~ THEN REPLY #53768 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53769 /* ~Die Tafel ist meisterlich gefertigt. Du glaubst, daß man sie in die Wand schieben kann.~ */
  IF ~~ THEN REPLY #53770 /* ~Drücke gegen dieTafel.~ */ DO ~SetGlobal("Inscr_8","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53771 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53772 /* ~Ohne das leiseste Geräusch gleitet die Tafel in die Wand. Da hörst du ein Klicken von dem Sarkophag hinter dir.~ */
  IF ~~ THEN REPLY #53773 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END
