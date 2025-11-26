// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_06~

IF ~  !Global("S_Stone","AR0603",6)
!Global("S_Stone","AR0603",13)
~ THEN BEGIN 0 // from:
  SAY #34217 /* ~This is an unusual, violet stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47460 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",6)
~ THEN BEGIN 1 // from:
  SAY #47461 /* ~This violet stone is the one that the clerk directed you towards. Within it lies the experience 'tired surrender.'~ */
  IF ~~ THEN REPLY #47462 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47463 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47464 /* ~Shuddering, chattering, hoping beyond hope to be found, you curl into yourself beneath a blanket of snow to save what little warmth you have left. Fighting to keep your eyes open - to remain awake - you become aware that you can no longer feel your arms... your legs... the ice against your face... and tired, so tired, you at last resign to the inevitable. You close your eyes, bidding sleep a bitter welcome as the sense of loss forces a single tear - doomed to crystallize before it even reaches your cheek - from your aching eyes.~ */
  IF ~  Global("Sensation06","AR0603",0)
~ THEN REPLY #47465 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation06","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation06","AR0603",1)
~ THEN REPLY #47466 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",13)
~ THEN BEGIN 3 // from:
  SAY #47467 /* ~This violet stone is the one that the clerk directed you towards. Within it lies the experience 'grim determination.'~ */
  IF ~~ THEN REPLY #47468 /* ~Begin the sensation.~ */ GOTO 4
  IF ~~ THEN REPLY #47469 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47470 /* ~The entire hall was in ruins and still in the process of being destroyed, as dozens of combatants hurled weapons, deadly, arcane magicks and themselves at one another in a desperate struggle to be the last one standing. Plumes of acrid green smoke rose from the pile of limp bodies you dragged yourself out of, having barely escaped the wrath of some fiendish spell. There it was - across the way, through the battling throng, through the bloodthirsty battle ahead of you, sitting untouched on a miraculously upright table - your pint of mead! And you'd get it back, if you had to kill every last one of the brawling tavern patrons to do it!~ */
  IF ~  Global("Sensation13","AR0603",0)
~ THEN REPLY #47471 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation13","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation13","AR0603",1)
~ THEN REPLY #47472 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47473 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47474 /* ~Leave.~ */ EXIT
END
