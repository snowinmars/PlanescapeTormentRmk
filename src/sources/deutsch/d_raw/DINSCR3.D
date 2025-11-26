// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38101 /* ~Es ist äußerst wichtig, dir Aufzeichnungen deiner Reisen anzulegen, damit du aus ihnen lernen kannst. Noch wichtiger ist jedoch, daß die Informationsquellen, die du zur Aufdeckung dieses Rätsels verwendest, geschützt werden müssen, sobald sie gefunden sind. Wenn Schlüsselpersonen, Dokumente oder Orakel entweder durch Tod oder Zerstörung verschwinden, wirst du niemals wissen, wer oder was du bist und wie du so geworden bist.~ */
  IF ~  Global("Inscr_3","GLOBAL",0)
~ THEN REPLY #53707 /* ~Untersuche die Tafel.~ */ GOTO 1
  IF ~~ THEN REPLY #53708 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53709 /* ~Ein richtiges Meisterwerk. Die Tafel ist mit einer Präzision in die Wand eingesetzt, derer nur ein wahrer Meister fähig ist. Du glaubst, daß die Tafel sich noch weiter in die Wand schieben läßt.~ */
  IF ~~ THEN REPLY #53710 /* ~Drücke gegen dieTafel.~ */ DO ~SetGlobal("Inscr_3","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53711 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53712 /* ~Du drückst nur ganz leicht gegen die Tafel, und sie schiebt sich in die Wand. Da hörst du ein Klicken von dem Sarkophag hinter dir.~ */
  IF ~~ THEN REPLY #53713 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END
