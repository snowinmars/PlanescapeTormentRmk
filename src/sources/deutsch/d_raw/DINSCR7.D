// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR7~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38109 /* ~Das haben sie gesagt - Du bist geteilt worden. Du bist einer von vielen Männern. Du trägst viele Namen, und jeder hat Narben in deinem Fleisch hinterlassen.~ */
  IF ~~ THEN REPLY #53751 /* ~Weiter.~ */ GOTO 1
  IF ~~ THEN REPLY #53752 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53753 /* ~DER VERLORENE... DER UNSTERBLICHE... DAS INKARNATIONSENDE... MANN DER TAUSEND TODE... DER ZUM LEBEN VERDAMMTE... DER RASTLOSE... EINER VON VIELEN... DER, DEN DAS LEBEN GEFANGENHÄLT... DER SCHATTENBRINGER... DER VERWUNDETE... DER QUALENBRINGER... YEMETH...~ */
  IF ~~ THEN REPLY #53754 /* ~Weiter.~ */ GOTO 2
  IF ~~ THEN REPLY #53755 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53756 /* ~Das erschöpft mich langsam.~ */
  IF ~  Global("Inscr_7","GLOBAL",0)
~ THEN REPLY #53757 /* ~Untersuche die Tafel.~ */ GOTO 3
  IF ~~ THEN REPLY #53758 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53759 /* ~Die Tafel ist hervorragend gearbeitet, offensichtlich das Werk eines wahren Meisters. Sie sieht aus, als könne man sie in die Wand schieben.~ */
  IF ~~ THEN REPLY #53760 /* ~Drücke gegen dieTafel.~ */ DO ~SetGlobal("Inscr_7","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53761 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53762 /* ~Ein leises, zischendes Geräusch ertönt, als die Tafel in der Wand verschwindet. Du hörst ein Klicken von dem Sarkophag hinter dir.~ */
  IF ~~ THEN REPLY #53763 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END
