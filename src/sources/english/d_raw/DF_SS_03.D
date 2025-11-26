// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_03~

IF ~  !Global("S_Stone","AR0603",3)
!Global("S_Stone","AR0603",10)
~ THEN BEGIN 0 // from:
  SAY #34214 /* ~This is an unusual, violet stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47414 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",3)
~ THEN BEGIN 1 // from:
  SAY #47415 /* ~This violet stone is the one that the clerk directed you towards. Within it lies the experience 'mind-numbing tedium.'~ */
  IF ~~ THEN REPLY #47428 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47429 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47417 /* ~The experience couldn't be more than a few minutes long, but *hours* seem to pass... a long, boring lecture in the driest, dustiest hall in the University of Chalm in Sigil. You look about the vast hall, hoping to catch someone's eye to pull a face at - but the other students are either asleep or staring listlessly into space. You drop your quill pen, pick it up, and drop again... just for something to do. You consider stabbing yourself in the eye with it, just to see if your senses haven't been wholly numbed by the incredible boredom...~ */
  IF ~  Global("Sensation03","AR0603",0)
~ THEN REPLY #47418 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation03","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation03","AR0603",1)
~ THEN REPLY #47419 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",10)
~ THEN BEGIN 3 // from:
  SAY #47420 /* ~This violet stone is the one that the clerk directed you towards. Within it lies the experience 'bitter loathing.'~ */
  IF ~~ THEN REPLY #47421 /* ~Begin the sensation.~ */ GOTO 4
  IF ~~ THEN REPLY #47422 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47423 /* ~Venomous tears of pain brimming in your narrow yellow eyes, you gather the tattered remains of your small, scaled, red wings off the floor. You humbly back out of Groba's study, gritting your needle-like teeth beneath sealed lips.

Sure, you're only a spinagon - least among devils - but that's no cause for a pit fiend to tear your wings off because he doesn't like the message you've brought him! What will your gelugon master do, now? He certainly can't say anything to Groba, and what use is a spinagon without its wings? You'll probably get cast into the Pit of Flame for 'incompetence!'

Vengeance out of the question, there's little to do but shake your clawed fist and hate, hate, *HATE* Groba with all the loathing your hard little black devil's heart can muster...~ */
  IF ~  Global("Sensation10","AR0603",0)
~ THEN REPLY #47424 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation10","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation10","AR0603",1)
~ THEN REPLY #47425 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47426 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47427 /* ~Leave.~ */ EXIT
END
