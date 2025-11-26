// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BVHAILOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~BVHAILOR~

IF ~  LastPersonTalkedTo("Morte")
Global("Vhail_Talked_Morte","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31488 /* ~"Ich muß nochmals fragen: Sind wir uns schon einmal begegnet, Namenloser?"~ [VHA256A] */
  IF ~~ THEN EXTERN ~DMORTE~ 646
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63854 /* ~"Du erzeugst in mir kein Vertrauen, Schädel."~ [VHA256B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Vhail_Talked_Annah","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63855 /* ~"Du kommst mir erschreckend bekannt vor, Namenloser."~ [VHA257A] */
  IF ~~ THEN EXTERN ~DANNAH~ 314
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63856 /* ~"Deine Meinung hat in dieser Angelegenheit kein Gewicht, Scheusal. Etwas... stimmt nicht. Die Wahrheit wird noch früh genug ans Licht kommen."~ [VHA257B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Vhail_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #63857 /* ~"Ist deine Frömmigkeit die Sühne für deine Sünden an Sterblichen, Sukkubus?"~ [VHA258] */
  IF ~~ THEN EXTERN ~DGRACE~ 380
END
