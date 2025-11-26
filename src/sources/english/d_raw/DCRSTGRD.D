// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1536 /* ~You see one of Curst's guards. He is bloodied and panting. "Got no time to talk. You got a free hand, you can help with... the defense." He waves a hand at you, dismissing you.~ */
  IF ~~ THEN REPLY #58830 /* ~"What happened?"~ */ GOTO 1
  IF ~~ THEN REPLY #58832 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1538 /* ~"What happened was that some damn fool set something free and suddenly we're in Carceri fightin' for our lives. Now get out of here and do something useful."~ */
  IF ~~ THEN REPLY #58831 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1539 /* ~"Didn't I tell you to get on about your business? I meant it! Go on!"~ */
  IF ~~ THEN REPLY #58833 /* ~"Fine, fine."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 3 // from:
  SAY #1540 /* ~"What in the Nine Hells are you doing down here?"~ */
  IF ~~ THEN REPLY #58834 /* ~"I was just wandering around."~ */ GOTO 5
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58835 /* ~"What can you tell me about that suit of armor?"~ */ GOTO 6
  IF ~~ THEN REPLY #58836 /* ~"I'm looking for a deva."~ */ GOTO 7
  IF ~~ THEN REPLY #58837 /* ~"Nothing. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #1541 /* ~"Stop right there!" The guard attacks!~ */
  IF ~~ THEN REPLY #58838 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58839 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 6.1
  SAY #58840 /* ~"Wandering? In the prison? You've come to aid an escape!" He swings his weapon at you!~ */
  IF ~~ THEN REPLY #58858 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58859 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #58841 /* ~"I don't know. It's been a part of the prison as long as I can remember. We can't open the cell, no matter how we try. It's a nice suit of armor, too, but we can't get to it at all. Now it's your turn to answer a question: What are you doing down here?"~ */
  IF ~~ THEN REPLY #58860 /* ~"Looking for a deva."~ */ GOTO 7
  IF ~~ THEN REPLY #58861 /* ~"I'm just wandering around."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.0
  SAY #58842 /* ~He smiles. "You'll be joining the celestial choir soon enough, berk." He unlimbers his weapon and attacks!~ */
  IF ~~ THEN REPLY #58862 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58863 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #58843 /* ~You see one of Curst's finest. He looks a little bored. "What do you want? Don't you know there's a lockdown?"~ */
  IF ~~ THEN REPLY #58864 /* ~"What can you tell me about this place?"~ */ GOTO 10
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58865 /* ~"A woman named Lady Roberta is involved in plans to kill her husband, Carl. I think he's one of the Burgher's assistants."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58866 /* ~"I wanted to turn myself in for the murder of Carl Parfidor."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58867 /* ~"One of the officials of this town has asked me to murder another one of them. I thought I had better warn you."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58868 /* ~"I want you to arrest me."~ */ GOTO 15
  IF ~~ THEN REPLY #58869 /* ~"I'm looking for a deva."~ */ GOTO 16
  IF ~~ THEN REPLY #58870 /* ~"I'd like to see the person in charge."~ */ GOTO 11
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58871 /* ~"One of the officials of this town has asked me to murder another one of them. I thought I had better warn you."~ */ GOTO 22
  IF ~~ THEN REPLY #58929 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from: 10.0 11.0 12.1 13.1 14.0 15.2 16.0 17.1 22.0
  SAY #58844 /* ~"What do you want now?"~ */
  IF ~~ THEN REPLY #58872 /* ~"What can you tell me about this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #58873 /* ~"I'd like to see the person in charge."~ */ GOTO 11
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58874 /* ~"A woman named Lady Roberta is involved in plans to kill her husband, Carl. I think he's one of the Burgher's assistants."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58875 /* ~"I wanted to turn myself in for the murder of Carl Parfidor."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58876 /* ~"One of the officials of this town has asked me to murder another one of them. I thought I had better warn you."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58877 /* ~"I want you to arrest me."~ */ GOTO 15
  IF ~~ THEN REPLY #58878 /* ~"I'm looking for a deva."~ */ GOTO 16
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58879 /* ~"One of the officials of this town has asked me to murder another one of them. I thought I had better warn you."~ */ GOTO 22
  IF ~~ THEN REPLY #58932 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #58845 /* ~"We're under lockdown right now because of the plague. Don't know what's causing it, but we're quarantining sections of the town till we find out. You want something else?"~ */
  IF ~~ THEN REPLY #58880 /* ~"I had a few more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #58881 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.6 9.1 17.0
  SAY #58846 /* ~"What, the Burgher? He's in the administration building. Good luck getting to him, though. He don't see *anyone* these days. His mind's definitely going someplace else..."~ */
  IF ~~ THEN REPLY #58882 /* ~"I had a few more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #58883 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 9.2
  SAY #58847 /* ~"Lady Roberta?" His forehead creases in thought. "We'll look into this." He looks away. "Oh. Thanks."~ */
  IF ~~ THEN REPLY #58884 /* ~"What, isn't there a reward for this?"~ */ GOTO 17
  IF ~~ THEN REPLY #58885 /* ~"I had a few more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #58886 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.2 9.3
  SAY #58848 /* ~"That's not a joking matter. We're looking into this death seriously. Whoever did it is going to spend a long, long time in prison."~ */
  IF ~~ THEN REPLY #58887 /* ~"I'm serious. I killed him."~ */ GOTO 18
  IF ~~ THEN REPLY #58888 /* ~"Oh. Sorry for the joke. I had more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #58889 /* ~"Oh. Sorry. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3 9.4
  SAY #58849 /* ~He shakes his head. "I might look stupid to you, but berk, I ain't getting involved in political squabbles. I value my job... and my life. Take it to the captain."~ */
  IF ~~ THEN REPLY #58890 /* ~"Very well. I had a few more questions, then."~ */ GOTO 9
  IF ~~ THEN REPLY #58891 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4 9.5
  SAY #58850 /* ~"Arrest you? What for?"~ */
  IF ~~ THEN REPLY #58892 /* ~"I just want to go to prison."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 19
  IF ~~ THEN REPLY #58893 /* ~"Because I'm totally insane! Bloogidy-bloog a woo ha ha!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 20
  IF ~~ THEN REPLY #58894 /* ~"Forget it. Answer some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #58895 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 9.6
  SAY #58851 /* ~"Then you're looking at the wrong end of the Great Ring, berk, because even if there were one here, you'd not be finding it. It'd be locked away like a miser's gold."~ */
  IF ~~ THEN REPLY #58896 /* ~"All right, then. I had a few questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #58897 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.0
  SAY #58852 /* ~He smirks. "Virtue is its own reward, right? You want more than that, go talk to someone in charge."~ */
  IF ~~ THEN REPLY #58898 /* ~"Then I'd like to talk to whoever's in charge."~ */ GOTO 11
  IF ~~ THEN REPLY #58899 /* ~"Fine. I had a few questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #58900 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.0
  SAY #58853 /* ~"Are you going to come quietly, or do we have to get rough?"~ */
  IF ~~ THEN REPLY #58901 /* ~"I'll come quietly."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58902 /* ~"We're going to fight."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY #58854 /* ~"If you insist. Let's go."~ */
  IF ~~ THEN REPLY #58903 /* ~"I changed my mind. Forget it."~ */ GOTO 21
  IF ~~ THEN REPLY #58904 /* ~"All right. Let's go."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #58855 /* ~"You've convinced me. Let's move it along, then."~ */
  IF ~~ THEN REPLY #58905 /* ~"I changed my mind. Forget it."~ */ GOTO 21
  IF ~~ THEN REPLY #58906 /* ~"All right. Let's go."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #58856 /* ~"It's a little too late for that, berk. Are you coming quietly or not?"~ */
  IF ~~ THEN REPLY #58908 /* ~"I'll come quietly."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58909 /* ~"We're going to fight."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 8.7 9.7
  SAY #58928 /* ~He shakes his head. "I might look stupid to you, but berk, I ain't getting involved in political squabbles. I value my job... and my life. Take it to the captain. He's over by the mid-town gate, right before you head through to the other part of town."~ */
  IF ~~ THEN REPLY #58930 /* ~"Very well. I had a few other questions, then..."~ */ GOTO 9
  IF ~~ THEN REPLY #58931 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
Global("Curst_Arrest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #58933 /* ~"What the... PRISON BREAK!" The guard attacks!~ */
  IF ~~ THEN REPLY #58934 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58935 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
