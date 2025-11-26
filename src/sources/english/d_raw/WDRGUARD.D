// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WDRGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~WDRGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #48221 /* ~This bored-looking wererat seems glad of any excuse to alleviate the tedium. "What ye want, meat?"~ */
  IF ~~ THEN REPLY #48222 /* ~"I'd like to get out."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #48223 /* ~"I just want to talk to you."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48224 /* ~"Nothing. Forget it."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #48225 /* ~"Ye would, eh? What might make it worth our while t' disobey Mantuok and risk the wrath o' the rats, hm?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48226 /* ~"Your lives. If you let me out of here now, I'll let you live."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("a1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48227 /* ~"Your lives. If you let me out of here now, I'll let you live."~ */ GOTO 4
  IF ~~ THEN REPLY #48228 /* ~"The promise that none will ever know what I have done... and perhaps a promise of some coin later."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48229 /* ~"How would they ever know?"~ */ GOTO 11
  IF ~~ THEN REPLY #48230 /* ~"How about some jink?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48231 /* ~"Think about it: I am clearly a danger to you, and yet I'm speaking to you as an equal. Do you really think these walls can hold me if I put my mind to it? I suggest, without threatening you, that it's in your best interests to let me go."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48232 /* ~"Because I'm going to get out of here sometime, and when I do, it's going to be messy."~ */ GOTO 4
  IF ~~ THEN REPLY #48233 /* ~"Come to think of it, I can't think of anything."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #48234 /* ~Raimon looks you up and down carefully. Noting the violence in your eyes and size of your muscles, he very carefully unlocks and opens the door for you. He steps aside and keeps his eyes averted from yours.~ */
  IF ~~ THEN REPLY #48235 /* ~"Thanks, pal."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
  IF ~~ THEN REPLY #48236 /* ~"So long."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48237 /* ~He keeps his eyes averted from yours. "Please don't hurt me, blood... I was just doin' my job."~ */
  IF ~~ THEN REPLY #48238 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #48239 /* ~He looks you over and sneers. "Ye think ye could hurt me, eh? Ye'll have to find a way out, first!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #48240 /* ~"What if I promise that none will ever know what I have done... and perhaps a promise of some coin later."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48241 /* ~"Why don't you just let me out?"~ */ GOTO 11
  IF ~~ THEN REPLY #48242 /* ~"What if I gave you some coin?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48243 /* ~"Think about it: I am clearly a danger to you, and yet I'm speaking to you as an equal. Do you really think these walls can hold me if I put my mind to it? I suggest, without threatening you, that it's in your best interests to let me go."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48244 /* ~"Because I'm going to get out of here sometime, and when I do, it's going to be messy."~ */ GOTO 4
  IF ~~ THEN REPLY #48245 /* ~"I'll try to think of one, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #48246 /* ~"That sounds like a good way t'do it. I never much cared for Mantuok's bossery anyways." He unlocks the door, opens it, and steps aside. "Now get out o' here before I can't pretend I don't see you no longer."~ */
  IF ~~ THEN REPLY #48247 /* ~"You got it. Farewell."~ */ DO ~AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #48248 /* ~"Tell ye what... yer purse jingled prettily when ye came in. One hundred pieces of coin from it - and I'm sure ye can spare it - and ye can leave."~ */
  IF ~~ THEN REPLY #48249 /* ~"It's a deal."~ */ GOTO 7
  IF ~~ THEN REPLY #48250 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #48251 /* ~"Throw it through the bars here, then, and I'll let ye go. And before ye ask, ye'll just have to trust me to do it, eh, Shaddeus?" He smirks at his partner.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #48252 /* ~"All right. Here you go."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(3750)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #48253 /* ~"I don't have that much..."~ */ GOTO 9
  IF ~~ THEN REPLY #48254 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48255 /* ~He counts the coins carefully. When he's finally convinced they're all there, he unlocks the door for you. "Now get out o' here!"~ */
  IF ~~ THEN REPLY #48256 /* ~"All right, all right."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #48257 /* ~"Then y'ain't gettin' out, are ye?" His laugh is like a chitter. He turns away.~ */
  IF ~~ THEN REPLY #48258 /* ~"Dammit..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #48259 /* ~"Ye just want to talk, eh? Well, ye'll get no conversation from ol' Raimon, that's for sure!" He turns away from you.~ */
  IF ~~ THEN REPLY #48264 /* ~"If you let me out of here now, I'll let you live."~ */ GOTO 1
  IF ~~ THEN REPLY #48261 /* ~"Fine, then."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #48262 /* ~He sneers at you. "Like I'd trust you?" His whiskers twitch. "Try again."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48263 /* ~"If you let me out of here now, I'll let you live."~ */ DO ~SetGlobal("Zap","GLOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48264 /* ~"If you let me out of here now, I'll let you live."~ */ GOTO 4
  IF ~~ THEN REPLY #48265 /* ~"How about some jink?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48266 /* ~"Think about it: I am clearly a danger to you, and yet I'm speaking to you as an equal. Do you really think these walls can hold me if I put my mind to it? I suggest, without threatening you, that it's in your best interests to let me go."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48267 /* ~"Because I'm going to get out of here sometime, and when I do, it's going to be messy."~ */ GOTO 4
  IF ~~ THEN REPLY #48268 /* ~"Forget it."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 12 // from:
  SAY #48269 /* ~"What do ye want now, ye addle-cove?"~ */
  IF ~~ THEN REPLY #48270 /* ~"I want to talk to you."~ */ GOTO 10
  IF ~~ THEN REPLY #48271 /* ~"I want to talk about my options in leaving."~ */ GOTO 1
  IF ~~ THEN REPLY #48272 /* ~"Nothing. Forget it."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 13 // from:
  SAY #48273 /* ~As you approach the bars, there is a flash of silver, and one of the wererat guards falls upon the other with a blinding ferocity!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY #48275 /* ~"Aye, then." He takes the keys from Raimon's body, unlocks the door, and opens it for you. "Get going, now." He gives a quick bow and scampers away.~ */
  IF ~~ THEN REPLY #48276 /* ~"We will. Thanks."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #48277 /* ~"You're wondering why I did that, aren't you? I used to be a Buried Villager. Shaddeus was my name. I don't want to be a wererat, and I don't figure that it makes me any less loyal to humanity to have this disease. Get out. Now." He unlocks the door, opens it for you, and scampers away.~ */
  IF ~~ THEN REPLY #48278 /* ~"Thanks, Shaddeus. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #48279 /* ~After having slain his fellow wererat, this fellow looks square at Annah. "Annah, it's Shaddeus. I'm lettin' you out. I can't stand to see you caged like this. Put in a kind word for me should you make it back to the Village, and let 'em know that somethin' bad's coming that way. Can't say what, yet, but... just so you know."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
PartyGoldLT(100)
CheckStatLT(Protagonist,13,STR)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,INT)
~ THEN BEGIN 17 // from:
  SAY #48280 /* ~As you approach the bars, there is a flash of silver, and one of the wererat guards falls upon the other with a blinding ferocity!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ EXTERN ~DSHAD~ 8
END
