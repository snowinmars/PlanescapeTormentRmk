// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER8~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17772 /* ~This old woman stands silently by the wall, staring off into the distance. She seems to be unconcerned with the flow of traffic around her, and clutches a wooden pole from which dozens of small fish are dangling.~ */
  IF ~~ THEN REPLY #17790 /* ~"Greetings..."~ */ GOTO 2
  IF ~~ THEN REPLY #17791 /* ~Leave her be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17773 /* ~"'Lo, sir, care to purchase some..." She suddenly recognizes you. "Oh, ye have returned."~ */
  IF ~~ THEN REPLY #22136 /* ~"Yes, I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #17793 /* ~"I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17774 /* ~"Oh... 'lo, sir." She squints at you for a moment, trying to discern your identity. "Oh my! 'Ere I was, thinkin' ye one o' me regular customers." She proffers her fish-pole. "Tuna, sir? Mackerel? Sea cucumber?"~ */
  IF ~~ THEN REPLY #17794 /* ~"No fish, thanks. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #17795 /* ~"No, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17775 /* ~"Hrmm..." Her mouth presses down into a tight-lipped frown, and she stares off over your shoulder.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22143 /* ~"I brought a tankard. Can I get the ink from the fish in it?" ~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22108 /* ~"Have you heard of a *brogota-fin?* I was told it bleeds ink from its gills."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17796 /* ~Look behind you, see what she's staring at.~ */ GOTO 4
  IF ~~ THEN REPLY #17797 /* ~"Uh... can you tell me about this area?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17798 /* ~"Do you know of a man named Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17799 /* ~"I've lost a journal, somewhere. Have you come across one?"~ */ GOTO 15
  IF ~~ THEN REPLY #17800 /* ~"Never mind... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #17776 /* ~You can see nothing of interest behind you. As you turn back to her, you catch her looking at you... she looks away quickly, resuming her staring off into the distance once more.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22149 /* ~"I brought a tankard. Can I get the ink from the fish in it?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22109 /* ~"Have you heard of a *brogota-fin?* I was told it bleeds ink from its gills."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17801 /* ~"What? Do I look familiar to you?"~ */ GOTO 5
  IF ~~ THEN REPLY #17802 /* ~"Can you tell me about this area?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17803 /* ~"Do you know of a man named Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17804 /* ~"I've lost a journal, somewhere. Have you come across one?"~ */ GOTO 15
  IF ~~ THEN REPLY #17805 /* ~"Er... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 15.2
  SAY #17777 /* ~"Goodness, no!" She pauses for a moment. "Aye, ye do."~ */
  IF ~~ THEN REPLY #17806 /* ~"Have you seen me before, then?"~ */ GOTO 6
  IF ~~ THEN REPLY #17807 /* ~"Interesting. Farewell, fishwife."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #17778 /* ~"I think... ye, or a man with yer very likeness, sir. T'was so long ago."~ */
  IF ~~ THEN REPLY #17808 /* ~"Tell me..."~ */ GOTO 7
  IF ~~ THEN REPLY #17809 /* ~"Interesting. Farewell, fishwife."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 17.0
  SAY #17779 /* ~"Well, sir, ye see... me sight's not so good now, t'wasn't back then, neither. But I thought I saw ye walkin' past with a small group trailin' along behind ye."~ */
  IF ~~ THEN REPLY #17810 /* ~"What did these people look like?"~ */ GOTO 8
  IF ~~ THEN REPLY #17811 /* ~"Interesting. Farewell, fishwife."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17780 /* ~"It's hard to say, sir... t'was so long ago, and ye walked by so quick-like. But I remember, now, the way ye held yer head up... there was a woman followin' ya, tryin' to stop ye. To get ye to turn around, speak to her... but ye pushed her away."~ */
  IF ~~ THEN REPLY #17812 /* ~"What happened then?"~ */ GOTO 9
  IF ~~ THEN REPLY #17813 /* ~"Interesting. Farewell, fishwife."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #17781 /* ~"Beautiful woman, she was... looked so sad, so angry, all at once. She stood there for a moment, then followed along behind ye just the same, hustlin' to catch up."~ */
  IF ~~ THEN REPLY #17814 /* ~"You had said there was a group? Who else was there?"~ */ GOTO 10
  IF ~~ THEN REPLY #17815 /* ~"Interesting. Farewell, fishwife."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #17782 /* ~She shrugs. "There was at least two other gentlemen with ye, sir... the only one I remember too clearly, though, was tall, thin. Reeked of bub, he did; I smelled him from across the way. Looked like he hadn't bathed in ages, too. He followed ye close, he did, an' never said a word. Acted like the woman wasn't even there, even when she bumped against him, tryin' to stop ye. That's all I remember, sir."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17816 /* ~Give her some copper for her time.~ */ GOTO 11
  IF ~~ THEN REPLY #17817 /* ~"Interesting. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #17783 /* ~How much do you give the fishwife?~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17818 /* ~One copper common.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 12
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17819 /* ~Five copper coins.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(5)
~ GOTO 13
  IF ~  PartyGoldGT(9)
~ THEN REPLY #17820 /* ~Ten copper coins.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(10)
~ GOTO 13
  IF ~  PartyGoldGT(19)
~ THEN REPLY #17821 /* ~Twenty copper coins.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(20)
~ GOTO 14
  IF ~~ THEN REPLY #17822 /* ~Nothing: "Interesting. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #17784 /* ~She smiles and nods at you. "Thank you, sir."~ */
  IF ~~ THEN REPLY #17823 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2
  SAY #17785 /* ~"Oh, my! Why, thank ye, sir, most kindly. May the Lady's shadow pass ye over."~ */
  IF ~~ THEN REPLY #17824 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY #17786 /* ~She stares at the heaping handful of coins for a moment, as if unsure what to do. You hold them a bit closer and she finally takes them, laughing uneasily. "Oh... oh! Oh my! Why, thank ye, sir! May the Lady's shadow pass ye over, and fortune always find ye! Please come and visit me, any time."~ */
  IF ~~ THEN REPLY #17825 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 3.4 3.5 4.3 4.4 4.5 15.3 15.4 15.5
  SAY #17787 /* ~She shakes her head, mouth closed tightly, and continues to look over your shoulder. Each time you try to catch a glance of what she might be looking at, you turn back to find her staring at you for the briefest of moments.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22153 /* ~"I brought a tankard. Can I get the ink from the fish in it?" ~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22112 /* ~"Have you heard of a *brogota-fin?* I was told it bleeds ink from its gills."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17826 /* ~"What? Do I look familiar to you?"~ */ GOTO 5
  IF ~~ THEN REPLY #17827 /* ~"Can you tell me about this area?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17828 /* ~"Do you know of a man named Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17829 /* ~"I've lost a journal, somewhere. Have you come across one?"~ */ GOTO 15
  IF ~~ THEN REPLY #17830 /* ~"Er... farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17788 /* ~"Well met again, sir! What can I do for ye?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22157 /* ~"I brought a tankard. Can I get the ink from the fish in it?" ~ */ DO ~TransformPartyItem("Tankard","TankardF",1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22116 /* ~"Have you heard of a *brogota-fin?* I was told it bleeds ink from its gills."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17831 /* ~"Could you tell me of when you saw me before, again?"~ */ GOTO 17
  IF ~~ THEN REPLY #17832 /* ~"Nothing, just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #17789 /* ~"Oh, surely, sir!"~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 3.1 4.1 15.1 16.1
  SAY #22105 /* ~She blinks, then nods. "Aye, that fish... that fish is a strange one, it is. Not many have heard of it and less'd want to eat it... difficult to kill, and even in death, it still seems to live. Not many want to latch their teeth around somethin' that still writhes."~ */
  IF ~~ THEN REPLY #22120 /* ~"Do you have one?"~ */ JOURNAL #21904 /* ~Meir'am has the fish, but as *usual,* it's not that easy. I need something to carry the ink in, like a cup, or a tankard. Maybe one of the merchants in the square is selling one I can use.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22106 /* ~"Aye... but the ink, ye'll need somethin' to carry it in. Have ye a bowl or cup, perchance?"~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #22126 /* ~"Great... I'll go look for one, then I'll be back."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22127 /* ~"Hmmm. Or a tankard... maybe one of the merchants is selling one. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.0 4.0 15.0 16.0
  SAY #22107 /* ~She nods and plucks a fish from her pole... it twitches as she grabs it, then starts lashing about as she begins to twist it like a rag. She wrings it until bluish-black ichor begins to trickle from the fish's gills. When your tankard is almost full, she relaxes her grip and throws the twitching fish into a sack at her side.~ */
  IF ~~ THEN REPLY #22129 /* ~"Thanks, and farewell."~ */ JOURNAL #21905 /* ~I finally got the ink, a whole tankard full. Now I can take this foul mess back to Mebbeth... who knows, maybe I can get her to drink it.~ */ EXIT
END
