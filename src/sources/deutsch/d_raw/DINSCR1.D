// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38097 /* ~Das bißchen Leben, das es in der Welt gibt, läuft aus diesem Loch in meinem Körper aus. Mag die Welt brennen, mögen die Ebenen brennen, nur laß mich leben! Ich werde dieses Leben so schrecklich zerstören, es zerbrechen, es zerschlagen, es in Blut und Unrat tränken, damit auch du nicht leben kannst! Laß die ganze Schöpfung brennen, denn ich kann nicht sterben!~ */
  IF ~  Global("Inscr_1","GLOBAL",0)
~ THEN REPLY #53654 /* ~Untersuche die Tafel.~ */ GOTO 1
  IF ~~ THEN REPLY #53652 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53656 /* ~Die Tafel ist so gefertigt, daß sie in der Wand verschwinden kann.~ */
  IF ~~ THEN REPLY #53657 /* ~Drücke gegen dieTafel.~ */ DO ~SetGlobal("Inscr_1","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53658 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53659 /* ~Du drückst gegen die Tafel, und sie gleitet leicht in die Wand. Da hörst du ein Klicken von dem Sarkophag hinter dir.~ */
  IF ~~ THEN REPLY #53660 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END
