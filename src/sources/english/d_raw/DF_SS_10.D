// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_10~

IF ~  !Global("S_Stone","AR0603",17)
!Global("S_Stone","AR0603",20)
~ THEN BEGIN 0 // from:
  SAY #34221 /* ~This is an unusual, bluish-purple stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47562 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",17)
~ THEN BEGIN 1 // from:
  SAY #47563 /* ~This bluish-purple stone is the one that the clerk directed you towards. Within it lies the experience 'slowly dawning horror.'~ */
  IF ~~ THEN REPLY #47564 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47565 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47566 /* ~"How good could it be?" you think, regarding the burgundy liquid carefully. Across the table from you, the twisted old man smiles slyly.

"Please, sir, try." he whispers, his hushed voice the sound of dry leaves blown over a roughly cobbled street. "Thou shall find it more than lives up to thy expectations, I am sure." ~ */
  IF ~~ THEN REPLY #47567 /* ~Continue experience.~ */ GOTO 3
  IF ~~ THEN REPLY #47568 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47569 /* ~You nod at him and lift the crystal goblet into the air, watching the light play through the crimson liquor. You'd come a long way for this drink... searched long and hard for this old man... and you'll be damned to let anything rush you, now. The moment was to be savored.~ */
  IF ~~ THEN REPLY #47570 /* ~Continue experience.~ */ GOTO 4
  IF ~~ THEN REPLY #47571 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47572 /* ~You raise the glass to your lips, inhaling the stuff's aroma. The bouquet is light, sweet, intoxicating... almost dizzyingly so. You've tried countless drinks... written tomes about them, their flavors and smells, means of manufacture, in your journeys across the planes. But this... this stuff was supposed to be legendary. No living man you'd found or heard of had tried the stuff. The stories were ridiculous - nothing could taste quite so good - but if there were the slightest bit of truth to them, this would be some fine liquor indeed.~ */
  IF ~~ THEN REPLY #47573 /* ~Continue experience.~ */ GOTO 5
  IF ~~ THEN REPLY #47574 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47575 /* ~At last, you drink of the goblet, a cautious sip...~ */
  IF ~~ THEN REPLY #47576 /* ~Continue experience.~ */ GOTO 6
  IF ~~ THEN REPLY #47577 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47578 /* ~Incredible! Indescribable! As the flavor washes over your palette, you fight the urge to shudder with delight. Nothing... *nothing* you have tried in all your long years has tasted quite like this. You look up at the old man, startled to find your glass empty - you had drained it all in a single draught. You wipe your eyes with the back of your hand, not entirely sure when you had begun to cry.~ */
  IF ~~ THEN REPLY #47579 /* ~Continue experience.~ */ GOTO 7
  IF ~~ THEN REPLY #47580 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47581 /* ~"Tears of joy, eh?" The old man laughs softly. "Quite pleasing to the tongue, is it not? Wouldst thou like some more, perchance?" He smiles at you once more.

"Yes... yes, if I might..."~ */
  IF ~~ THEN REPLY #47582 /* ~Continue experience.~ */ GOTO 8
  IF ~~ THEN REPLY #47583 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47584 /* ~"Surely." he replies, refilling your glass. Try as you might, you cannot resist downing it in a single gulp. You thrust your finger into the goblet in an attempt to find some last, hidden drop of the stuff. Several times more does he fill the goblet, and each time you gulp the stuff down as a starving man would devour a feast, unable to control yourself, to deny yourself another exquisite taste of it.~ */
  IF ~~ THEN REPLY #47585 /* ~Continue experience.~ */ GOTO 9
  IF ~~ THEN REPLY #47586 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47587 /* ~He chuckles softly once more. "A drink such as this... a man wouldst do anything for it, no?"

You nod without hesitation. "Yes, a man would..." Looking at him, his sly smile suddenly takes on a whole new meaning. A sense of horror begins to creep over you, even as you begin to yearn painfully for more of the blood-red liquor...~ */
  IF ~~ THEN REPLY #47588 /* ~Continue experience.~ */ GOTO 10
  IF ~~ THEN REPLY #47589 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47590 /* ~"Yes, yes..." The old man grins, his yellow eyes gleaming. "A man *wouldst* do anything, in the *thrall* of such a drink... even the most terrible, the most heinous of deeds... as thou shall see, my newest servant."~ */
  IF ~  Global("Sensation17","AR0603",0)
~ THEN REPLY #47591 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation17","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation17","AR0603",1)
~ THEN REPLY #47592 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",20)
~ THEN BEGIN 11 // from:
  SAY #47593 /* ~This bluish-purple stone is the one that the clerk directed you towards. Within it lies the experience 'lycanthropy.'~ */
  IF ~~ THEN REPLY #47594 /* ~Begin the sensation.~ */ GOTO 12
  IF ~~ THEN REPLY #47595 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47596 /* ~Suddenly aware that the hour has almost come, you leap from your bed and run flying from your cottage and into the surrounding woods. Stumbling in the dark, you come to a small, moonlit clearing... the one you had found last week and decided to use, tonight. You hastily strip off your clothes, sit in the long grass, and wait. ~ */
  IF ~~ THEN REPLY #47597 /* ~Continue experience.~ */ GOTO 13
  IF ~~ THEN REPLY #47598 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #47599 /* ~You close your eyes, listening to the steady chirp of crickets, the throaty croaking of bullfrogs in the nearby creek, the rustle of the grass as the wind caresses it. What would someone think, seeing this through your eyes, *experiencing* this moment and what was next to come? Soon you would travel to the city, find a cleric to rid you of the Curse... but for now, may as well make the best of things. You rub your hands together with anticipation, grinning like a bearded, fire-haired giant of a madman, sitting naked and alone in a forest clearing in the dead of night.~ */
  IF ~~ THEN REPLY #47600 /* ~Continue experience.~ */ GOTO 14
  IF ~~ THEN REPLY #47601 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #47602 /* ~A prickling sensation runs across your skin, and your senses sharpen dramatically. You breathe in through your nose, inhaling the scent of everything around you: the damp earth, the sweat on your cast-off clothes, the opossum clinging fearfully to the tree behind you...~ */
  IF ~~ THEN REPLY #47603 /* ~Continue experience.~ */ GOTO 15
  IF ~~ THEN REPLY #47604 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #47605 /* ~You open your eyes and look down at your forearms. The faint moonlight reveals the slightest quivering across their surface... but in moments, the flesh begins to ripple impossibly, tufts of thick brown fur sprouting forth. With a grisly crackling sound - like popping joints and grinding bones - your back and shoulders begin to hunch and broaden... uncomfortable, but not quite painful. Your muscles - your entire body mass - doubles, triples in size, and continues to grow.~ */
  IF ~~ THEN REPLY #47606 /* ~Continue experience.~ */ GOTO 16
  IF ~~ THEN REPLY #47607 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47608 /* ~Still fascinated by the transformation yourself, you watch as your fingers wither away to nothing, hands swelling into meaty paws from which burst fur and massive, black claws. The night seems to become brighter as your eyes transform, become accustomed to the darkness... a wide muzzle comes into view, and you touch your wet, snuffling nose delicately, chuckling to yourself. Next time, you think, you'll have to stare into a mirror or pond as the Curse takes effect... watch your face warp and change, losing its familiar shape to become a bear's.~ */
  IF ~~ THEN REPLY #47609 /* ~Continue experience.~ */ GOTO 17
  IF ~~ THEN REPLY #47610 /* ~Interrupt the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #47611 /* ~Soon, it becomes difficult to concentrate upon anything but your more basic urges... food would be good, right now. Yes, food - perhaps you'll get lucky and find a nice, fat catfish in the creek. You rise off your massive haunches with a *huff* and begin to amble through the trees on all fours, heading for the water's edge...~ */
  IF ~  Global("Sensation20","AR0603",0)
~ THEN REPLY #47612 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation20","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation20","AR0603",1)
~ THEN REPLY #47613 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 17.0
  SAY #47614 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47615 /* ~Leave.~ */ EXIT
END
