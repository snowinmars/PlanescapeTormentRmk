// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_07~

IF ~  !Global("S_Stone","AR0603",7)
!Global("S_Stone","AR0603",14)
~ THEN BEGIN 0 // from:
  SAY #34218 /* ~This is an unusual, light blue stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47475 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",7)
~ THEN BEGIN 1 // from:
  SAY #47476 /* ~This light blue stone is the one that the clerk directed you towards. Within it lies the experience 'supernatural lust.'~ */
  IF ~~ THEN REPLY #47477 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47478 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47479 /* ~You find yourself coupling with a succubus, a creature of such intense, otherworldly beauty that even her fiend's horns and thrashing tail give you no pause. She gasps under you... you desire her so completely that the whole of your existence seems focused towards this single goal. As your life explodes from you in a starry burst, you hear the delighted laughter of the succubus as she drains you dry, leaving your body but a soulless husk...~ */
  IF ~  Global("Sensation07","AR0603",0)
~ THEN REPLY #47480 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation07","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation07","AR0603",1)
~ THEN REPLY #47481 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",14)
~ THEN BEGIN 3 // from:
  SAY #47482 /* ~This light blue stone is the one that the clerk directed you towards. Within it lies the experience 'complete bafflement.'~ */
  IF ~~ THEN REPLY #47483 /* ~Begin the sensation.~ */ GOTO 4
  IF ~~ THEN REPLY #47484 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47485 /* ~You awake from uneasy dreams to find yourself transformed in your dank lair into a rather small, four-limbed, fleshy thing. You're lying on your shell-less, as it were wholly unprotected, back and when you lift your tiny head - unadorned with its usual sensory antennae - a little you can see your pinkish belly, partly covered in soft, curling hairs quite unlike the black bristles you're accustomed to seeing there. Your two - only two! - legs now jut from the end of your torso, rather than up from around your abdomen. They look thick and ungainly in proportion to your body, and lie there limply, making no attempt to right you on their own - only by actively concentrating can you move the things. What has *happened* to you?~ */
  IF ~  Global("Sensation14","AR0603",0)
~ THEN REPLY #47486 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation14","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation14","AR0603",1)
~ THEN REPLY #47487 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47488 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47489 /* ~Leave.~ */ EXIT
END
