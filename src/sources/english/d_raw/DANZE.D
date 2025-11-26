// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANZE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANZE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33883 /* ~You see an older, stern looking man. His face is a mixture of wrinkles and frown lines.~ */
  IF ~~ THEN REPLY #33884 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #33885 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33886 /* ~He gives you a quick, stiff bow. "Aye, greetin' to ye as well. Anze is me name. Whatcha' be needin?"~ */
  IF ~~ THEN REPLY #33887 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33888 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.1 6.1 8.0 9.0 10.0 12.1
  SAY #33889 /* ~He gives you a toothless grin. "I reckon I gots the time ta give ye the chant. Whatcha be needin' ta know?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #33890 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #33891 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 6
  IF ~~ THEN REPLY #33892 /* ~"What's that furnace used for?"~ */ GOTO 10
  IF ~~ THEN REPLY #33893 /* ~"I need to buy some weapons."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33894 /* ~"I need to buy some magic items."~ */ GOTO 9
  IF ~~ THEN REPLY #33895 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #33896 /* ~"Can't say I ever heard of Lothar..." He squints his eyes as he thinks. "But this *bones* fella, yeah, I heard of 'em. Chant is ya don't mess with 'em. Po'erful cutter, consorts with the dead an' such."~ */
  IF ~~ THEN REPLY #33897 /* ~"Where can I find him?"~ */ GOTO 4
  IF ~~ THEN REPLY #33898 /* ~"What can you tell me about him?"~ */ GOTO 5
  IF ~~ THEN REPLY #33899 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #33900 /* ~He shrugs. "I dunno. Cutter like that can set his kip where 'e pleases. No berks gonna deny 'em, that's fer certain."~ */
  IF ~~ THEN REPLY #33901 /* ~"What can you tell me about him?"~ */ GOTO 5
  IF ~~ THEN REPLY #33902 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33903 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #33904 /* ~He barks out a short laugh. "Ye heard it all, cutter. Don't know anythin' else 'bout 'em."~ */
  IF ~~ THEN REPLY #33905 /* ~"Where can I find him?"~ */ GOTO 4
  IF ~~ THEN REPLY #33906 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33907 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #33908 /* ~He tries to look concerned but fails miserably. "Sorry ta hear that, cutter. If'n ye think it were stolen, ye should tell the Harmonium."~ */
  IF ~~ THEN REPLY #33909 /* ~"The Harmonium?"~ */ GOTO 7
  IF ~~ THEN REPLY #33910 /* ~"Thank you, I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33911 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #33912 /* ~He smiles. "The law, cutter. Harmonium bashers are the law 'ere in Sigil. If'n yer property is missin' then ye should tell 'em."~ */
  IF ~~ THEN REPLY #33913 /* ~"Do you think the Harmonium can recover the skull?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #33915 /* ~He starts to say something, then stops to think. After a moment he chuckles. "Nay, cutter. I'd be guessin' not. Ne'er mind."~ */
  IF ~~ THEN REPLY #33914 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33916 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #33917 /* ~"Ye can talk to Aalek next door. He may have what ye need." He gestures at the counter to his left.~ */
  IF ~~ THEN REPLY #33918 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33919 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #33920 /* ~He glances at the furnace and then lowers his voice. "The furnace does nothin' other than teach me lazy boy spons'bility. That boy is always yappin' and talkin' and such. Reckon's 'emself a scholar an' don't know the value o' real work. If'n ye have serious questions... well, he may be better ta ask than me."~ */
  IF ~~ THEN REPLY #33921 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33922 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #33923 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #34244 /* ~Anze gives you his usual toothless grin. "Welcome back, cutter. Whatcha be needin' this day?"~ */
  IF ~~ THEN REPLY #34245 /* ~"I'd like to see your wares."~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34246 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34247 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lazlo_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #34248 /* ~"I be mournin' for the loss of me boy, Lazlo. I'll not open shop fer... I dunno how long..."~ */
  IF ~~ THEN REPLY #34249 /* ~Leave.~ */ EXIT
END
