// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_08~

IF ~  !Global("S_Stone","AR0603",15)
!Global("S_Stone","AR0603",18)
~ THEN BEGIN 0 // from:
  SAY #34219 /* ~This is an unusual, reddish-orange stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47490 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",15)
~ THEN BEGIN 1 // from:
  SAY #47491 /* ~This reddish-orange stone is the one that the clerk directed you towards. Within it lies the experience 'horrible regret.'~ */
  IF ~~ THEN REPLY #47492 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47493 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47494 /* ~You stand on the deck of your flagship, the Divine Hammer, as it floats over the continent of Agarheim, held aloft by the winds of magic. The very landscape roils and shudders beneath the bombardment of your fleet, one thousand ships' cannons and bombards hurling their sorcerous fire down like vengeful gods. The shockwaves began to hit your ship only minutes ago - a constant vibration that sends shudders through the whole of the ancient craft and moves your very bones - accompanied by a constant, rumbling bass. As the land's mountains begin to sink and the seas that surround it begin to boil off into the atmosphere, your first officer comes to stand beside you. ~ */
  IF ~~ THEN REPLY #47495 /* ~Continue experience.~ */ GOTO 3
  IF ~~ THEN REPLY #47496 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47497 /* ~"My Lord Admiral... permission to speak freely, sir."

You nod your acquiescence, your stomach sinking as you guess at his question.

"My lord... forgive me, but how? What gives us the right? A billion lives..."~ */
  IF ~~ THEN REPLY #47498 /* ~Continue experience.~ */ GOTO 4
  IF ~~ THEN REPLY #47499 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47500 /* ~You speak without turning to him, unable to take your eyes of Rhumos, the nation's vast capital city, as it vaporizes into a cloud of super-heated gasses twelve miles across and growing ever-wider. "If you only knew the full treachery of the Agarites, First Officer Felm, one which is beyond most any man's comprehension... then you would know. You would speak of our right to annihilate them? We've no right to let them live."~ */
  IF ~~ THEN REPLY #47501 /* ~Continue experience.~ */ GOTO 5
  IF ~~ THEN REPLY #47502 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47503 /* ~"But... sir? Traitors, all of them? Surely, among the hundreds of thousands. How many innocents-"

"Silence! Speak of it no more - our king has spoken, His will be done. The task set to us is a horrible one, not fit for contemplation or questioning. There is no room for pity, no room for remorse - only *duty.*"~ */
  IF ~~ THEN REPLY #47504 /* ~Continue experience.~ */ GOTO 6
  IF ~~ THEN REPLY #47505 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47506 /* ~The two of you stand silently for a time, watching the last minutes of Agarheim. At long last you sigh... a low, stuttering exhalation that sounds as if something has broken inside you. Beneath the brazen plate that covers the ruined half of your face, your dead eye begins to weep...~ */
  IF ~~ THEN REPLY #47507 /* ~Continue experience.~ */ GOTO 7
  IF ~~ THEN REPLY #47508 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47509 /* ~"Falm... my friend... I would have you understand. I know now, as I look down at what I have wrought here, that were I to think upon what I have done... what I have *truly* done... I would be struck mad. A deed such as this... the anguish would overwhelm, destroy me. So, First Officer Falm, it must be that there *are* no innocents in Agarheim... no mothers, no children, no *people.* Only traitors. Vile, cunning traitors, who deserve no less than the full brunt of our most Holy King's wrath. Do you understand this?"~ */
  IF ~~ THEN REPLY #47510 /* ~Continue experience.~ */ GOTO 8
  IF ~~ THEN REPLY #47511 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47512 /* ~"Y-yes, m'lord."

"Good. Now go... I wish to be alone, here."

"By your command, Lord Admiral." Falm bows his head and returns below deck, leaving you to stand over the end of a civilization.~ */
  IF ~  Global("Sensation15","AR0603",0)
~ THEN REPLY #47513 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation15","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation15","AR0603",1)
~ THEN REPLY #47514 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",18)
~ THEN BEGIN 9 // from:
  SAY #47515 /* ~This reddish-orange stone is the one that the clerk directed you towards. Within it lies the experience 'indescribable frustration.'~ */
  IF ~~ THEN REPLY #47516 /* ~Begin the sensation.~ */ GOTO 10
  IF ~~ THEN REPLY #47517 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47518 /* ~You can see it now, the crown of Haephon, gleaming upon a marble pedestal. No more than twenty strides away, it is... with it, you could wrest control of the armies of Aethanopolis away from your treacherous brother and restore your father's kingdom. A fool, your wretched brother was... you smile grimly at the thought... to leave the king's only daughter alive, thinking she could do him no harm. ~ */
  IF ~~ THEN REPLY #47519 /* ~Continue experience.~ */ GOTO 11
  IF ~~ THEN REPLY #47520 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #47521 /* ~A sound! The creak of leather sandals, the softest hiss... over there, by that third pillar! She was close now, Polaphi the Medusa, jealously guarding the crown her servants had stolen for her so long ago. Crouching behind a wide pillar, you wrap your hand tightly around your trusted Thrice-Blessed Javelin. With your Helm of Swiftness and the Hundred-Mirrored Shield, even a beast such as Polaphi would be no match for you. Any moment, now, she would round the pillar and meet the sight of you. Even if she turned away from the shield, your javelin would surely find her throat...~ */
  IF ~~ THEN REPLY #47522 /* ~Continue experience.~ */ GOTO 12
  IF ~~ THEN REPLY #47523 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47524 /* ~Suddenly, there is a gentle touch on your shoulder. You gasp, spinning around to face - of course - the Medusa. Accepting the inevitable, you only have time to loose a piercing cry of frustration before your lungs... and every other part of you... solidifies into cold, gray stone.~ */
  IF ~  Global("Sensation18","AR0603",0)
~ THEN REPLY #47525 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation18","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation18","AR0603",1)
~ THEN REPLY #47527 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.0 12.0
  SAY #47526 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47528 /* ~Leave.~ */ EXIT
END
