// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1201~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34953 /* ~The number "1201" has been inked on the forehead of this corpse, and the ink has run down its eyes, cheeks and jaw. As you follow the ink tears down the corpse's face, you notice it has run into the stitching sealing the corpse's lips and has caught on what looks like the corner of a note stuck in the corpse's mouth.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34954 /* ~Try and pull the note out.~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34957 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34958 /* ~Use Stories-Bones-Tell on the corpse.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34959 /* ~"It was great talking to you. Farewell."~ */ GOTO 2
  IF ~~ THEN REPLY #34962 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~~ THEN REPLY #34963 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34955 /* ~The note has mingled with the ichor in the zombie's mouth. If you tried to pull the paper out through the cross-stitches, it would tear the paper to shreds. Hacking up the corpse to get at it looks like it will destroy the note - you'll need to find a delicate way to remove the stitches before removing the note.~ */
  IF ~~ THEN REPLY #34956 /* ~Use the scalpel to cut through the stitches.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34960 /* ~You deftly slice through the stitches sealing the corpse's mouth, and the jaw sags open. You carefully pull the note from the corpse's mouth... despite the condition of the paper, the writing on it still appears legible.

^NNOTE: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #34961 /* ~Examine the corpse again.~ */ EXIT
END
