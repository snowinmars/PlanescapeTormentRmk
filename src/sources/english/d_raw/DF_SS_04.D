// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_04~

IF ~  !Global("S_Stone","AR0603",4)
!Global("S_Stone","AR0603",11)
~ THEN BEGIN 0 // from:
  SAY #34215 /* ~This is an unusual, greenish-yellow stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47430 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",4)
~ THEN BEGIN 1 // from:
  SAY #47431 /* ~This greenish-yellow stone is the one that the clerk directed you towards. Within it lies the experience 'sheer wonder.'~ */
  IF ~~ THEN REPLY #47432 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47433 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47434 /* ~Hesitantly, you open your mouth and take a shallow breath... and water flows into your lungs like cool air. You smile and take a deep breath, gawking in all directions as you slowly sink to the bottom of the harbor, where hundreds of colorful fish weave through twisting tracts of brilliant coral. As your feet touch bottom, you peer up at the keel of your ship and laugh aloud with joy, a string of great bubbles shooting up towards the surface...~ */
  IF ~  Global("Sensation04","AR0603",0)
~ THEN REPLY #47435 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation04","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation04","AR0603",1)
~ THEN REPLY #47436 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",11)
~ THEN BEGIN 3 // from:
  SAY #47437 /* ~This greenish-yellow stone is the one that the clerk directed you towards. Within it lies the experience 'pure glee.'~ */
  IF ~~ THEN REPLY #47438 /* ~Begin the sensation.~ */ GOTO 4
  IF ~~ THEN REPLY #47439 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47440 /* ~Dancing and leaping about in rhythm with the wood elves' bouncing festival music, you and a dozen other dancers spin through the forest clearing like a whirling dervish, smiling and laughing like mad. As the cheering forest dwellers whoop, clap and dance alongside you, fairies careen through the air above your heads, leaving sparkling trails of colored light...~ */
  IF ~  Global("Sensation11","AR0603",0)
~ THEN REPLY #47441 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation11","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation11","AR0603",1)
~ THEN REPLY #47442 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47443 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47444 /* ~Leave.~ */ EXIT
END
