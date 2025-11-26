// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_09~

IF ~  !Global("S_Stone","AR0603",16)
!Global("S_Stone","AR0603",19)
~ THEN BEGIN 0 // from:
  SAY #34220 /* ~This is an unusual, violet stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47529 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",19)
~ THEN BEGIN 1 // from:
  SAY #47530 /* ~This violet stone is the one that the clerk directed you towards. Within it lies the experience 'a vastly important secret.'~ */
  IF ~~ THEN REPLY #47531 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47532 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47533 /* ~Six Imperial servants rush ahead of you, swinging the golden doors of the Dragon Palace wide.

"Long live the Empress!" they cry in unison. "One thousand years! Long live the Empress! One Thousand Years!" ~ */
  IF ~~ THEN REPLY #47534 /* ~Continue experience.~ */ GOTO 3
  IF ~~ THEN REPLY #47535 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47536 /* ~Beyond the threshold, dozens of loyal warlords, kings in their own right, drop to their knees, touching their heads to the floor in deference as you pass them en route to the grand Imperial Throne.~ */
  IF ~~ THEN REPLY #47537 /* ~Continue experience.~ */ GOTO 4
  IF ~~ THEN REPLY #47538 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47539 /* ~As you turn and face your minions, seating yourself upon the Imperial Throne, you allow a small, satisfied smile to creep across your carefully painted lips. There is but one thought in the forefront of your mind:~ */
  IF ~~ THEN REPLY #47540 /* ~Continue experience.~ */ GOTO 5
  IF ~~ THEN REPLY #47541 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47542 /* ~...that the body of the young Empress, Wu Tsun Sha, lies broken at the bottom of the Well of Solitude, and that you - Bai Hwa, a horse merchant's daughter - are at last poised to shake the Empire and the corrupt Wu Dynasty to its very foundations.~ */
  IF ~  Global("Sensation19","AR0603",0)
~ THEN REPLY #47543 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation19","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation19","AR0603",1)
~ THEN REPLY #47544 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",16)
~ THEN BEGIN 6 // from:
  SAY #47545 /* ~This violet stone is the one that the clerk directed you towards. Within it lies the experience 'shock and a rise to seething vengefulness.'~ */
  IF ~~ THEN REPLY #47546 /* ~Begin the sensation.~ */ GOTO 7
  IF ~~ THEN REPLY #47547 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47548 /* ~You stand somewhere in the nether regions of the planes, a sweltering place where the ground is beaten copper, and the sky is of brass. Here, the bodies of sinners - petitioners in this horrid place - are rolled amongst iron brambles and bronze scorpions until their bones are fine, gray dust.~ */
  IF ~~ THEN REPLY #47549 /* ~Continue experience.~ */ GOTO 8
  IF ~~ THEN REPLY #47550 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47551 /* ~You squint at the horizon, the bone-dust rising with putrid-smelling gusts of wind that carry with them the sound of agonized moaning. There is nothing but flat, metallic landscape as far as the eye can see. The dust is everywhere, in everything... it stings at your eyes, coats the insides of your mouth with a pasty film. You spit, wiping at it with your finger, but it's of no use: the stuff's taste has fouled your mouth completely.~ */
  IF ~~ THEN REPLY #47552 /* ~Continue experience.~ */ GOTO 9
  IF ~~ THEN REPLY #47553 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47554 /* ~You look down at the 'key' in your hand... a minute platinum orb... and picture the man's face who solemnly swore to you the magical portal you just passed through - now gone, of course - led to the green fields of Bytopia. Someone, by all the powers and their proxies, was going to pay for this one.~ */
  IF ~  Global("Sensation16","AR0603",0)
~ THEN REPLY #47555 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation16","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation16","AR0603",1)
~ THEN REPLY #47556 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 9.0
  SAY #47557 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47558 /* ~Leave.~ */ EXIT
END
