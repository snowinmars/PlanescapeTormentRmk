// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~GFGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5826 /* ~"You again? Guards! Guards!"~ */
  IF ~~ THEN REPLY #5827 /* ~Fight.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5828 /* ~Leave.~ */ EXIT
END

IF WEIGHT #1 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 1 // from:
  SAY #5829 /* ~"You again? Guards! Guards!"~ */
  IF ~~ THEN REPLY #5830 /* ~Fight.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5831 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #5832 /* ~"All right, berk... move it along and no one gets hurt."~ */
  IF ~~ THEN REPLY #5833 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #5834 /* ~"Welcome back to the Foundry, sir."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5835 /* ~"Thanks. I had an item to be picked up."~ */ GOTO 22
  IF ~~ THEN REPLY #5836 /* ~"Thanks."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 even though they appear after this state */
~  False()
~ THEN BEGIN 4 // from:
  SAY #5837 /* ~"Welcome back to the Foundry, sir."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5838 /* ~"Thanks. I had an item to be picked up."~ */ GOTO 22
  IF ~~ THEN REPLY #5839 /* ~"Thanks."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY #5840 /* ~You see a burly, bored-looking guard. "State your business, please."~ */
  IF ~~ THEN REPLY #5841 /* ~"Just looking around."~ */ GOTO 6
  IF ~~ THEN REPLY #5842 /* ~"I'm here to pick up an order."~ */ GOTO 7
  IF ~~ THEN REPLY #5843 /* ~"I'm here to put in an order."~ */ GOTO 8
  IF ~~ THEN REPLY #5844 /* ~"Who are you?"~ */ GOTO 9
  IF ~~ THEN REPLY #5845 /* ~"What are you doing?"~ */ GOTO 10
  IF ~  GlobalGT("Dream","GLOBAL",0)
GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #5846 /* ~"I'm helping Xander with the Dreambuilder."~ */ GOTO 23
  IF ~  Global("Dream","GLOBAL",5)
PartyHasItem("DrmKey")
~ THEN REPLY #5847 /* ~"I'm here to use the Dreambuilder."~ */ GOTO 24
  IF ~~ THEN REPLY #6478 /* ~"What is this place?"~ */ GOTO 11
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #6479 /* ~"I have a message for Keldor from Giltspur the auctioneer."~ */ GOTO 26
  IF ~~ THEN REPLY #67933 /* ~"No business. Sorry. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #5848 /* ~"Then I'm certain you won't mind just passing along."~ */
  IF ~~ THEN REPLY #5849 /* ~"May I come in?"~ */ GOTO 13
  IF ~~ THEN REPLY #5850 /* ~"Not at all."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 12.1 19.1
  SAY #5851 /* ~"Yes, sir. May we see your receipt?"~ */
  IF ~  PartyHasItem("Receipt")
~ THEN REPLY #5852 /* ~"Yes."~ */ GOTO 14
  IF ~~ THEN REPLY #5853 /* ~Lie: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Guards_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #5854 /* ~"No."~ */ GOTO 16
  IF ~~ THEN REPLY #5855 /* ~"I'm sure I had it on me..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 5.2 12.2
  SAY #5856 /* ~"I'm sorry, sir, but we are not currently accepting any new orders, due to a large project we have undertaken. Check back in about a year, sir. Thank you for your interest."~ */
  IF ~~ THEN REPLY #5857 /* ~"Right. I had more questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5858 /* ~"Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3 12.3
  SAY #5859 /* ~"I am a guard of the Believers of the Source, sir."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5860 /* ~"Believers of the Source?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5861 /* ~"Oh. I see. I had more questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5862 /* ~"Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4 12.4
  SAY #5863 /* ~"Guarding the gate, sir."~ */
  IF ~~ THEN REPLY #5864 /* ~"Riiight. I had more questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5865 /* ~"Thanks for your time."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.7 12.5
  SAY #5866 /* ~"You are in front of the Great Foundry, home to the Believers of the Source."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5867 /* ~"The who?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5868 /* ~"What is the Great Foundry?"~ */ GOTO 19
  IF ~~ THEN REPLY #5869 /* ~"Oh. Thanks. I had more questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5870 /* ~Leave: "Oh."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.1 10.0 11.2 13.0 15.1 17.0 19.0 20.1 21.0
  SAY #5871 /* ~"State the nature of your requirement, sir."~ */
  IF ~~ THEN REPLY #5872 /* ~"Just looking around."~ */ GOTO 6
  IF ~~ THEN REPLY #5873 /* ~"I'm here to pick up an order."~ */ GOTO 7
  IF ~~ THEN REPLY #5874 /* ~"I'm here to put in an order."~ */ GOTO 8
  IF ~~ THEN REPLY #5875 /* ~"Who are you?"~ */ GOTO 9
  IF ~~ THEN REPLY #5876 /* ~"What are you doing?"~ */ GOTO 10
  IF ~~ THEN REPLY #5877 /* ~"What is this place?"~ */ GOTO 11
  IF ~~ THEN REPLY #5878 /* ~"No business. Sorry."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #5879 /* ~"Not until you can demonstrate that you have business here, sir."~ */
  IF ~~ THEN REPLY #5880 /* ~"I see. I had more questions, then."~ */ GOTO 12
  IF ~~ THEN REPLY #5881 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #5882 /* ~"Thank you, sir. The clerk you seek holds office on the southern wall of the Foundry. Thank you for your patronage." He opens the gate for you.~ */
  IF ~~ THEN REPLY #5883 /* ~Leave.~ */ DO ~SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY #5884 /* ~"Sir, you do not appear to have a receipt."~ */
  IF ~~ THEN REPLY #5885 /* ~"I'm sure I had it on me..."~ */ GOTO 17
  IF ~~ THEN REPLY #5886 /* ~"Hm. No. I do have other questions, though."~ */ GOTO 12
  IF ~~ THEN REPLY #5887 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY #5888 /* ~"Then I'm afraid you'll have to leave, sir."~ */
  IF ~~ THEN REPLY #5889 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.3 15.0
  SAY #5890 /* ~"Yes, sir, I'm sure you did. However, until you can produce evidence that you have business here, I'm afraid we cannot offer admittance."~ */
  IF ~~ THEN REPLY #5891 /* ~"I had other questions, then."~ */ GOTO 12
  IF ~~ THEN REPLY #5892 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0 11.0
  SAY #5893 /* ~"Yes, sir. Godsmen, we're called."~ */
  IF ~~ THEN REPLY #5894 /* ~"Why?"~ */ GOTO 20
  IF ~~ THEN REPLY #5895 /* ~"Good for you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY #5896 /* ~"Aside from being home to the Believers of the Source, it is also one of the largest foundries known to mortal existence. Much traffic passes through these gates; we take orders from all across the planes. Currently, we are not accepting any further orders as most of our craftsmen are either working on a new project or are commissioned for the next several months on smaller orders. What this means in practical terms is that you're not getting in unless you have a receipt for work to pick up or have urgent business inside."~ */
  IF ~~ THEN REPLY #5897 /* ~"I do have urgent business!"~ */ GOTO 12
  IF ~~ THEN REPLY #5898 /* ~"I do have a receipt!"~ */ GOTO 7
  IF ~~ THEN REPLY #5899 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #5900 /* ~"We are one of the fifteen recognized factions of Sigil, sir. We believe that every being has within it the spark of divinity - neither good nor evil, necessarily, but potential to be divine. Beyond divinity, we believe there lies something greater. We believe all life has a purpose and a goal, and we are devoted to understanding what these goals are. We strive toward greatness with every step in our lives."~ */
  IF ~~ THEN REPLY #5901 /* ~"Sounds important."~ */ GOTO 21
  IF ~~ THEN REPLY #5902 /* ~"Good for you. Are you going to let me in?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #5903 /* ~"We believe it is, sir. Can I help you with anything else?"~ */
  IF ~~ THEN REPLY #5904 /* ~"Yes. I had more questions."~ */ GOTO 12
  IF ~~ THEN REPLY #5905 /* ~"No."~ */ EXIT
  IF ~~ THEN REPLY #5906 /* ~"Thanks, no."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.0 4.0
  SAY #5907 /* ~"Yes, sir. Go on in."~ */
  IF ~~ THEN REPLY #5908 /* ~"Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5
  SAY #6480 /* ~"Yes, sir. We were told about you. Go on in."~ */
  IF ~~ THEN REPLY #6481 /* ~"Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6
  SAY #6482 /* ~The guard looks at you with an unreadable expression for a moment. "Good luck with it. Go on in."~ */
  IF ~~ THEN REPLY #6483 /* ~"Thanks."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Foundry_Open","AR0500",1)
~ THEN BEGIN 25 // from:
  SAY #66285 /* ~"Welcome back, sir? You have more business inside, I presume. Please keep the courtyard clear, and keep moving."~ */
  IF ~~ THEN REPLY #66286 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8
  SAY #67931 /* ~"Thank you, sir. You'll find him in the Great Godsman Hall." He opens the gate for you.~ */
  IF ~~ THEN REPLY #67932 /* ~"Thanks."~ */ DO ~SetGlobal("Foundry_Open","AR0500",1)
SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END
