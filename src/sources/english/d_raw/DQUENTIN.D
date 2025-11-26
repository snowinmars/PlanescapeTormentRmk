// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUENTIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUENTIN~

IF ~  Global("Quentin","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7410 /* ~The man before you looks to be middle of height and years. He is stout with a thick, bullish neck, and his shoulders are hunched, as if a great weight was pressing upon them. He wears an impatient look as he stares at the black monolith in front of him.~ */
  IF ~~ THEN REPLY #7411 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #7412 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7413 /* ~The man throws you a glance. "There's room, cutter. No need to ask my leave to stand here."~ */
  IF ~~ THEN REPLY #7414 /* ~"Actually, I wanted to know what this monolith was."~ */ DO ~SetGlobal("Quentin","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #7415 /* ~"Very well. Sorry to disturb you."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 13.0
  SAY #7416 /* ~"It's a tombstone for the planes." He scoffs. "Graveyards of names are scratched on that rock. Can only hope my name's the one that'll split this stone in 'twain." He points at the base of the monolith. "'Quentin,' right there, hammered in just hard enough to send the damned thing crashing down."~ */
  IF ~~ THEN REPLY #7417 /* ~"'Tombstone for the planes'?"~ */ GOTO 3
  IF ~~ THEN REPLY #7418 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7419 /* ~"Aye." Quentin smiles ruefully. "The Dusties scratch the names of the dead on this monument here..." He gestures around him. "And on the walls of this place. Not enough space by my reckoning, but no matter... they do their best. Can barely read half the names."~ */
  IF ~~ THEN REPLY #7420 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #7421 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.1
  SAY #7422 /* ~"Reading the new arrivals. Try and find a new one every day, try and remember if I knew 'em, nothing more."~ */
  IF ~~ THEN REPLY #7423 /* ~"The Dustmen record the names of all that have died on this monument?"~ */ GOTO 5
  IF ~~ THEN REPLY #7424 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7425 /* ~"Aye, they scratch 'em on this rock... and scratch 'em on the walls in this place, too." Quentin scoffs. "I don't know why they take the trouble to take a counting of the dead... the Dusties have more care for the living."~ */
  IF ~  Global("Mourn","GLOBAL",0)
~ THEN REPLY #7426 /* ~"The living?"~ */ DO ~SetGlobal("Mourn","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Mourn","GLOBAL",0)
~ THEN REPLY #7427 /* ~"The living?"~ */ GOTO 6
  IF ~~ THEN REPLY #7428 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #7429 /* ~"Aye... y'know about the Dustmen mourners that come to this place? They aren't mourning the dead, see, they're mourning the living. You can barely get a word in them edgewise without 'em asking to mourn some poor *living* berk for ye."~ */
  IF ~~ THEN REPLY #7430 /* ~"Why do they mourn the living?"~ */ GOTO 7
  IF ~~ THEN REPLY #7431 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7432 /* ~"You got me there, cutter." He shrugs. "Might want to put the question t'them. Seems to me the dead are thrice-worth the pity of any poor sod living in this pit." He nods at the monument. "Every name on there is blest in my book, it is."~ */
  IF ~~ THEN REPLY #7433 /* ~"Ever know anybody who came back after their name was put on there?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7434 /* ~"Can you tell me who that crazy Dustman is on the other side of the monolith?"~ */ GOTO 10
  IF ~~ THEN REPLY #7435 /* ~"I see. Thanks for speaking with me. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Quentin","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7436 /* ~You see Quentin. He's still studying the rock, as if he could topple it with his gaze.~ */
  IF ~~ THEN REPLY #7437 /* ~"Greetings, Quentin."~ */ GOTO 9
  IF ~~ THEN REPLY #7438 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #7439 /* ~"Eh?" Quentin throws you a glance, then nods. "Well met again, cutter. You come to claim a slice of this rock fer yer name?"~ */
  IF ~~ THEN REPLY #7440 /* ~"Not yet. I had some questions for you..."~ */ GOTO 13
  IF ~~ THEN REPLY #7441 /* ~"No, just passing through. Farewell, Quentin."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 13.3
  SAY #7442 /* ~Quentin smirks. "Not the sanest bird in the cackle-house, is he? That barmy's 'Death-of-Names.'" Quentin scoffs. "Though 'Death-of-Sense' might fit him better." ~ */
  IF ~~ THEN REPLY #7443 /* ~"What does he do here?"~ */ GOTO 11
  IF ~~ THEN REPLY #7444 /* ~"I see. Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7445 /* ~"He's the keeper of the memorial area. Knows where all the names are around here, and he can point one out if you need him to. He's a little addled to be sure, but he's helped me a few times." He shrugs. "He's also got the duty of carvin' new names in when their owners pass on."~ */
  IF ~~ THEN REPLY #7446 /* ~"I had some other questions for you..."~ */ GOTO 13
  IF ~~ THEN REPLY #7447 /* ~"I see. Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0 13.2
  SAY #7448 /* ~"You mean come back from death?" Quentin shakes his head. "Not a one, cutter. Everything that lives dies, and that's the way of things." He shrugs. "Still, considering the planes go on forever n' all, I suppose anythin's possible."~ */
  IF ~~ THEN REPLY #7449 /* ~"I suppose so. Say, I had some other questions for you..."~ */ GOTO 13
  IF ~~ THEN REPLY #7450 /* ~"I see. Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 11.0 12.0
  SAY #7451 /* ~"No harm in asking, cutter."~ */
  IF ~~ THEN REPLY #7452 /* ~"Can you tell me what this monument is again?"~ */ GOTO 2
  IF ~~ THEN REPLY #7453 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #7454 /* ~"Ever know anybody who came back after their name was carved here?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7455 /* ~"Can you tell me who that crazy Dustman is on the other side of the monolith?"~ */ GOTO 10
  IF ~~ THEN REPLY #7456 /* ~"I see. Thanks."~ */ EXIT
END
