// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #3176 /* ~Siabha spits at your feet. "Dog! You dare speak to me again when your false words imprisoned me here! Traitor! I hope the Styx swallows you and spits your bleached bones on the shore, that they might be whittled into flutes for an army of dung-eaters!"~ */
  IF ~~ THEN REPLY #68278 /* ~"Farewell, Siabha."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3178 /* ~This woman wears a haughty expression on her aquiline face, and her contempt for you is obvious as she speaks to you. "I am a busy woman. Do not detain me long."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #3180 /* ~"I just had a few questions..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60214 /* ~"I just had a few questions about Curst."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60215 /* ~"I spoke with An'izius. He had an interesting proposition."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60216 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",3)
GlobalLT("C_Off","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #60217 /* ~"Well?"~ */
  IF ~  Global("C_Off","GLOBAL",5)
~ THEN REPLY #60218 /* ~"He's offered to pay me a large sum to double-cross you."~ */ GOTO 9
  IF ~  Global("C_Off","GLOBAL",6)
~ THEN REPLY #60219 /* ~"I spoke with the guard captain, and he said he'd send a detachment to escort An'izius to the prison."~ */ DO ~SetGlobal("C_Off","GLOBAL",10)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #60222 /* ~I reported my success in turning An'izius over to the guards of Curst. Siabha was delighted, and paid me handsomely for this minor bit of treachery.~ */ GOTO 10
  IF ~~ THEN REPLY #60220 /* ~"I'm working on it. I had some questions..."~ */ GOTO 11
  IF ~~ THEN REPLY #60221 /* ~"I'm working on it. I'll be back."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #60223 /* ~"Our dealings are done. Begone or I shall have the guards remove you."~ */
  IF ~~ THEN REPLY #60224 /* ~"Very well."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #60225 /* ~"Back so soon? I have no time for your questions, scarred man."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #60226 /* ~"I just had a few questions..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60227 /* ~"I just had a few questions about Curst."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60228 /* ~"I spoke with An'izius. He had an interesting proposition."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60229 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #60230 /* ~"I am not a common tout for your pleasure and whim. Leave."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60231 /* ~"Then you might be interested in knowing that I spoke to An'izius. He had something interesting to say."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60232 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 4.1
  SAY #60233 /* ~She looks you over appraisingly. "I would really love to stay and chat with such a fine specimen, but I'm afraid duty calls. You do understand, don't you? Of course you do."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60234 /* ~"Then you might be interested in knowing that I spoke to An'izius. He had something interesting to say."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60235 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 4.2 5.0 6.0
  SAY #60236 /* ~"He's plotting some sort of defamation of me again, isn't he? What will it take to reverse his latest trick? How about if I double whatever he's paying you?"~ */
  IF ~~ THEN REPLY #60237 /* ~"All right. You've got a deal."~ */ GOTO 8
  IF ~~ THEN REPLY #60238 /* ~"He sent his regards. That's all."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60239 /* ~"Then go do whatever it was he asked you to do to me - but switch our roles, hm? I'll see you're rewarded handsomely."~ */
  IF ~~ THEN REPLY #60240 /* ~"I'll be back, then."~ */ JOURNAL #60241 /* ~Siabha, the other official in Curst, has offered me double what An'izius offered in order to double cross him. I'll think about it.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #60242 /* ~"Bah! Enough of this! I shall match his promise, but I will not raise it any further." She smiles challengingly at you. "You'll have to make your own decision. But remember... I may be able to offer you a little something more."~ */
  IF ~~ THEN REPLY #60243 /* ~"Very well. Farewell."~ */ JOURNAL #68274 /* ~Siabha made her final offer to me in her game of betrayals with An'izius.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #60244 /* ~She passes you a heavy bag of coins. "Take this, then, and begone. We never spoke of this matter." She tips a wink. "You have my gratitude... for whatever that's worth. Farewell, stranger."~ */
  IF ~~ THEN REPLY #60245 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY #60246 /* ~"I'm really very busy. Perhaps when you've finished this little errand? Thanks ever so much." She gives you a smile of brightest white, and turns away.~ */
  IF ~~ THEN REPLY #60247 /* ~"I'll be back, then..."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #60248 /* ~She sneers. "Yes, I'm certain that's all it was. Remember... whatever he offered, I will double. Think on that, stranger."~ */
  IF ~~ THEN REPLY #60249 /* ~"I will. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 13 // from:
  SAY #66785 /* ~This man, dressed in the finery of a Curst official, is terrified. "They're trying to kill me! I was just doing my job when the town shifted, and they think I had something to do with it, just because I signed execution orders! I meant no harm! I was just doing my job! Please help me!"~ */
  IF ~~ THEN REPLY #66792 /* ~"I'll do what I can. Wish me luck."~ */ EXIT
  IF ~~ THEN REPLY #66793 /* ~"You've earned your fate."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #66794 /* ~"Then I hope the gehreleths slaughter all of you! You bastard!"~ */
  IF ~~ THEN REPLY #66795 /* ~"Die well."~ */ EXIT
END
