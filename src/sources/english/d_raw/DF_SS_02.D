// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_02~

IF ~  !Global("S_Stone","AR0603",2)
!Global("S_Stone","AR0603",9)
~ THEN BEGIN 0 // from:
  SAY #47110 /* ~This is an unusual, light blue stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47111 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",2)
~ THEN BEGIN 1 // from:
  SAY #47112 /* ~This light blue stone is the one that the clerk directed you towards. Within it lies the experience 'tender love.'~ */
  IF ~~ THEN REPLY #47113 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47114 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47115 /* ~Your eyes are closed; you can sense yourself standing on the tips of your toes, pressed against someone tightly. Soft, soft lips brush against yours, giving you the most gentle of kisses... your heart seems to flutter in your chest, and you feel as if you could fall backwards and simply float off into space...~ */
  IF ~  Global("Sensation02","AR0603",0)
~ THEN REPLY #47116 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation02","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation02","AR0603",1)
~ THEN REPLY #47117 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",9)
~ THEN BEGIN 3 // from:
  SAY #47118 /* ~This light blue stone is the one that the clerk directed you towards. Within it lies the experience 'festering jealousy.'~ */
  IF ~~ THEN REPLY #47119 /* ~Begin the sensation.~ */ GOTO 4
  IF ~~ THEN REPLY #47120 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47121 /* ~You feel your lip curl as the fair-haired young hero, armor gleaming like a polished silver mirror, once again enters your tavern. Hanging his velvet cloak on a wall-peg, he surveys your patrons with a pair of eyes like sea-gems and a smile that sets the serving wenches swooning. You set the mug you're cleaning down and *harumph* loudly, thinking of what it'd be like to turn him upside-down and shove him in a rain barrel...~ */
  IF ~  Global("Sensation09","AR0603",0)
~ THEN REPLY #47122 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation09","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation09","AR0603",1)
~ THEN REPLY #47123 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47124 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47125 /* ~Leave.~ */ EXIT
END
