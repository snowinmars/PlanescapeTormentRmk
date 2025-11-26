// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHSOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHSOL~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #2917 /* ~This man has pale yellow skin and ears that taper to points. His eyes are like small black stones, and he wears supple chain armor that is covered with elaborate enamel. He eyes you suspiciously as you approach, placing his hand upon his sword hilt. He says nothing.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #2918 /* ~"Greetings, sword-ringer."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 2
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44575 /* ~"Greetings, honored githyanki."~ */ GOTO 3
  IF ~~ THEN REPLY #44576 /* ~"I would like to ask you a few questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #44578 /* ~"I'm sorry, I seem to have the wrong person. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #44581 /* ~"I do not speak to one who is not of the People. Speak to Yi'minn there if you wish to converse with us." He keeps his eyes on you.~ */
  IF ~~ THEN REPLY #44582 /* ~"I just had a few questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #44584 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #44585 /* ~In a flash, his sword is in his hands. "Address me in the manner of the githzerai dogs, will you? Apologize or I'll run you through."~ */
  IF ~~ THEN REPLY #44587 /* ~"Apologize? To you? I don't think so."~ */ GOTO 4
  IF ~~ THEN REPLY #44589 /* ~"My apologies. I thought you were a githzerai."~ */ GOTO 4
  IF ~~ THEN REPLY #44591 /* ~"You have my apologies."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #44592 /* ~He inclines his head, but his hand moves no further from his sword-hilt.~ */
  IF ~~ THEN REPLY #44593 /* ~"I had a few questions for you..."~ */ GOTO 5
  IF ~~ THEN REPLY #44595 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 5.1 6.0
  SAY #44597 /* ~With a hiss of indrawn breath, he attacks!~ */
  IF ~~ THEN REPLY #44599 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44600 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 3.0
  SAY #44602 /* ~"I do not answer questions. I am a githyanki knight. My words are my actions. Talk to Yi'minn or talk not to the githyanki."~ */
  IF ~~ THEN REPLY #44604 /* ~"Yi'minn? I'll do that. Where do I find him?"~ */ GOTO 7
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44678 /* ~"Oh, you're a githyanki? I thought I smelled the stench of illithid about you. Or perhaps it's your weak blood."~ */ GOTO 4
  IF ~~ THEN REPLY #44679 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #44680 /* ~"Test my patience no further. Go. Now."~ */
  IF ~~ THEN REPLY #44681 /* ~"I just had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #44682 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #44683 /* ~He looks at you evenly. "Look for him yourself. Go now. Cease this testing of my patience."~ */
  IF ~~ THEN REPLY #44684 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
~ THEN BEGIN 8 // from:
  SAY #44685 /* ~This man has pale yellow skin and ears that taper to points. His eyes are like small black stones, and he wears supple chain armor that is covered with elaborate enamel. When his eyes alight upon Dak'kon, his blade springs into his hands. "Githzerai dog! Come and taste my silver!"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 159
END

IF ~~ THEN BEGIN 9 // from:
  SAY #44686 /* ~"You would stand between us, human? Then you shall die too." He hurls himself at you.~ */
  IF ~~ THEN REPLY #44687 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44688 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44689 /* ~The two gith hurl themselves at each other.~ */
  IF ~~ THEN REPLY #44690 /* ~Attack the githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44691 /* ~Let them fight.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
