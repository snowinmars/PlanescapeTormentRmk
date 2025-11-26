// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOWDEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOWDEN~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Lowden","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2883 /* ~Lowden's mangled corpse stirs uneasily as you approach. "What you want, eh?"~ */
  IF ~~ THEN REPLY #2884 /* ~"Just the answers to some questions, Lowden."~ */ GOTO 1
  IF ~~ THEN REPLY #20821 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.1 4.1 5.0 6.0 7.0
  SAY #20822 /* ~"Mayhap I'll tell... mayhap I won't... Ask yer questions..."~ */
  IF ~  Global("Know_Lowden","GLOBAL",0)
~ THEN REPLY #20823 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Lowden","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20824 /* ~"Tell me about yourself again."~ */ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20825 /* ~"What happened to Gris?"~ */ GOTO 4
  IF ~~ THEN REPLY #20826 /* ~"How did you die?"~ */ GOTO 3
  IF ~~ THEN REPLY #20827 /* ~"Tell me about the catacombs."~ */ GOTO 6
  IF ~~ THEN REPLY #20828 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20829 /* ~"Lowden, eh? Me and Burt - and sometimes Gris, though he were nothin' but a bossy piker, and he was with us this last time - we was kings o' the catacombs. Dunno where Burt is. Probably dead."~ */
  IF ~~ THEN REPLY #20830 /* ~"What happened to you?"~ */ GOTO 3
  IF ~~ THEN REPLY #20831 /* ~"What happened to Gris?"~ */ GOTO 4
  IF ~~ THEN REPLY #20832 /* ~"Too bad. I had more questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #20833 /* ~"Probably. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0
  SAY #20834 /* ~"Made a wrong turn when we was runnin' away from where we dumped Gris, bolted in here, and 'fore I realized my mistake, got diced up and sliced up twenty ways to peak. Got my pieces shoved down the grate, and now... heh... now not even th' Dusties'll pay for this lot." He lets out a wet chuckle that smells like swamp gas.~ */
  IF ~~ THEN REPLY #20835 /* ~"What happened to Gris?"~ */ GOTO 4
  IF ~~ THEN REPLY #20836 /* ~"Ah, irony. I had more questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #20837 /* ~"That's pretty funny, all right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #20838 /* ~"Heh. Story of its own. Mostly my idea it was, and it came off all right at first - Burt didn't have no clue what I was doing. Did some lookin' around, found out where a ghoul'd made its home, and thought we'd take ol' Gris down there. Turns out that ghoul'd made more ghouls, and they nearly had us. Shoved Gris inside and took off like the Lady herself was after us. Betting Gris is dead."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #20839 /* ~"He is."~ */ GOTO 5
  IF ~~ THEN REPLY #20840 /* ~"Probably. I had some other questions for you."~ */ GOTO 1
  IF ~~ THEN REPLY #20841 /* ~"Sounds like you were thorough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20842 /* ~"I'd say it's a pity but I don't think it is. Man had the heart of a worm and the soul of a serpent, and there's a reason we called him the Vulture. Figure if I'm dead, I'm just as happy he is too."~ */
  IF ~~ THEN REPLY #20843 /* ~"Nice. I had some other questions for you..."~ */ GOTO 1
  IF ~~ THEN REPLY #20844 /* ~"Nice. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #20845 /* ~"Weepin' Stone is what we calls 'em on account of the water off'n the ceiling and the cryin' faces on the walls. Plenty o' crypts down here, and plenty more we've plundered. More's the pity that we fell afoul of 'em, but it was bound t' happen. I knew this place like the back o' my hand, but ... it's all going dark on me now..."~ */
  IF ~~ THEN REPLY #20846 /* ~"Answer a few more questions for me..."~ */ GOTO 1
  IF ~~ THEN REPLY #20847 /* ~"Then go dark. Farewell."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #20848 /* ~This body has been horribly mangled. It looks like it's been burned, stabbed, sliced, bludgeoned, and forced through a grate. It's in two halves, lying in a crusted pool of old blood. The voice that emerges from it, though, is practically jovial, and there's a tinge of maddened glee to it. "Aye, berk, what're ye wanting?"~ */
  IF ~~ THEN REPLY #20849 /* ~"The answers to some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #20850 /* ~"Nothing."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #20851 /* ~This body has been horribly mangled. It looks like it's been burned, stabbed, sliced, bludgeoned, and forced through a grate. It's in two halves, lying in a crusted pool of old blood. ~ */
  IF ~~ THEN REPLY #20852 /* ~"Nothing, eh? Ah, well."~ */ EXIT
END
