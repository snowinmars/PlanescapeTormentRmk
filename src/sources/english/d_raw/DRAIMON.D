// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAIMON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAIMON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23859 /* ~This bored-looking wererat seems glad of any excuse to alleviate the tedium. "What ye want, meat?"~ */
  IF ~~ THEN REPLY #23860 /* ~"I'd like to get out."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23861 /* ~"I just want to talk to you."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #23862 /* ~"Nothing. Forget it."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #23863 /* ~"Ye would, eh? What might make it worth our while t' disobey Mantuok and risk the wrath o' the rats, hm?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23864 /* ~"Your lives. If you let me out of here now, I'll let you live."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23865 /* ~"Your lives. If you let me out of here now, I'll let you live."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23866 /* ~"The promise that none will ever know what I have done... and perhaps a promise of some coin later."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23867 /* ~"How would they ever know?"~ */ GOTO 11
  IF ~~ THEN REPLY #23868 /* ~"How about some jink?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23869 /* ~"Think about it: I am clearly a danger to you, and yet I'm speaking to you as an equal. Do you really think these walls can hold me if I put my mind to it? I suggest, without threatening you, that it's in your best interests to let me go."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23870 /* ~"Because I'm going to get out of here sometime, and when I do, it's going to be messy."~ */ GOTO 4
  IF ~~ THEN REPLY #23871 /* ~"Come to think of it, I can't think of anything."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #23872 /* ~Raimon looks you up and down carefully. Noting the violence in your eyes and size of your muscles, he very carefully unlocks and opens the door for you. He steps aside and keeps his eyes averted from yours.~ */
  IF ~~ THEN REPLY #23873 /* ~"Thanks, pal."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
  IF ~~ THEN REPLY #23874 /* ~"So long."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 13 12 even though they appear after this state */
~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #23875 /* ~He keeps his eyes averted from yours. "Please don't hurt me, blood... I was just doin' my job."~ */
  IF ~~ THEN REPLY #23876 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #23877 /* ~He looks you over and sneers. "Ye think ye could hurt me, eh? Ye'll have to find a way out, first!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23878 /* ~"What if I promise that none will ever know what I have done... and perhaps a promise of some coin later."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23879 /* ~"Why don't you just let me out?"~ */ GOTO 11
  IF ~~ THEN REPLY #23880 /* ~"What if I gave you some coin?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23881 /* ~"Think about it: I am clearly a danger to you, and yet I'm speaking to you as an equal. Do you really think these walls can hold me if I put my mind to it? I suggest, without threatening you, that it's in your best interests to let me go."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23882 /* ~"Because I'm going to get out of here sometime, and when I do, it's going to be messy."~ */ GOTO 4
  IF ~~ THEN REPLY #23883 /* ~"I'll try to think of one, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #23884 /* ~"That sounds like a good way t'do it. I never much cared for Mantuok's bossery anyways." He unlocks the door, opens it, and steps aside. "Now get out o' here before I can't pretend I don't see you no longer."~ */
  IF ~~ THEN REPLY #23885 /* ~"You got it. Farewell."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #23886 /* ~"Tell ye what... yer purse jingled prettily when ye came in. One hundred pieces of coin from it - and I'm sure ye can spare it - and ye can leave."~ */
  IF ~~ THEN REPLY #23887 /* ~"It's a deal."~ */ GOTO 7
  IF ~~ THEN REPLY #23888 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23889 /* ~"Throw it through the bars here, then, and I'll let ye go. And before ye ask, ye'll just have to trust me to do it, eh, Shaddeus?" He smirks at his partner.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #23890 /* ~"All right. Here you go."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(200)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #23891 /* ~"I don't have that much..."~ */ GOTO 9
  IF ~~ THEN REPLY #23892 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #23893 /* ~He counts the coins carefully. When he's finally convinced they're all there, he unlocks the door for you. "Now get out o' here!"~ */
  IF ~~ THEN REPLY #23894 /* ~"All right, all right."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #23895 /* ~"Then y'ain't gettin' out, are ye?" His laugh is like a chitter. He turns away.~ */
  IF ~~ THEN REPLY #23896 /* ~"Dammit..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #23897 /* ~"Ye just want to talk, eh? Well, ye'll get no conversation from ol' Raimon, that's for sure!" He turns away from you.~ */
  IF ~~ THEN REPLY #23898 /* ~"Then I'd like to discuss getting me out of here."~ */ GOTO 1
  IF ~~ THEN REPLY #23899 /* ~"Fine, then."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #23900 /* ~He sneers at you. "Like I'd trust you?" His whiskers twitch. "Try again."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23901 /* ~"If you let me out of here now, I'll let you live."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23902 /* ~"If you let me out of here now, I'll let you live."~ */ GOTO 4
  IF ~~ THEN REPLY #23903 /* ~"How about some jink?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23904 /* ~"Think about it: I am clearly a danger to you, and yet I'm speaking to you as an equal. Do you really think these walls can hold me if I put my mind to it? I suggest, without threatening you, that it's in your best interests to let me go."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23905 /* ~"Because I'm going to get out of here sometime, and when I do, it's going to be messy."~ */ GOTO 4
  IF ~~ THEN REPLY #23906 /* ~"Forget it."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #23907 /* ~"What do ye want now, ye addle-cove?"~ */
  IF ~~ THEN REPLY #23908 /* ~"I want to talk to you."~ */ GOTO 10
  IF ~~ THEN REPLY #23909 /* ~"I want to talk about my options in leaving."~ */ GOTO 1
  IF ~~ THEN REPLY #23910 /* ~"Nothing. Forget it."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #23911 /* ~"What're ye still doin' around here, berk? Get goin'!" He ducks his head and avoids looking at you.~ */
  IF ~~ THEN REPLY #23912 /* ~"Very well."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #23913 /* ~"What the... SHADDEUS! GET 'IM!" The two wererats attack you.~ */
  IF ~~ THEN REPLY #23914 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
