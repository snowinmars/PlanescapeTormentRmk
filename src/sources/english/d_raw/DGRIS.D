// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRIS~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #2925 /* ~This is the corpse of a man with a surprised look on his beak-nosed face. It's hard to tell how he died: whether from the numerous horrific slashing wounds across his abdomen and throat, or from blood loss incurred when his right arm was nearly severed from his shoulder.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ EXTERN ~DANNAH~ 114
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #2926 /* ~This is the corpse of a man with a surprised look on his beak-nosed face. It's hard to tell how he died: whether from the numerous horrific slashing wounds across his abdomen and throat, or from blood loss incurred when his right arm was nearly severed from his shoulder.~ */
  IF ~~ THEN REPLY #20657 /* ~"That's a bad way to go. If I could talk to him, he'd surely have a hell of a tale..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Quint_Item","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #20658 /* ~The beak-nosed body twitches slightly, and the phlegmy voice of Gris spills out. "Didja find it? Gave ye clear directions, I did, and now ye're gallivanting about while I lie here rotting. Ah, well. What can old, dead Gris do for ye now?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20659 /* ~"Where did you say Quint's charm was?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20660 /* ~"Where did you say your stash was again?"~ */ GOTO 5
  IF ~~ THEN REPLY #20661 /* ~"What happened to you, anyway?"~ */ GOTO 6
  IF ~~ THEN REPLY #20662 /* ~"What can you tell me about the catacombs?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20663 /* ~"Tell me about yourself."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20664 /* ~"Tell me about yourself."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20665 /* ~"Tell me about yourself."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20666 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_GStash","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #20667 /* ~The beak-nosed body twitches slightly, and the phlegmy voice of Gris spills out. "Didja find it? Gave ye clear directions, I did, and now ye're gallivanting about while I lie here rotting. Ah, well. What can old, dead Gris do for ye now?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20668 /* ~"Where did you say Quint's charm was?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20669 /* ~"Where did you say your stash was again?"~ */ GOTO 5
  IF ~~ THEN REPLY #20670 /* ~"What happened to you, anyway?"~ */ GOTO 6
  IF ~~ THEN REPLY #20671 /* ~"What can you tell me about the catacombs?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20672 /* ~"Tell me about yourself."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20673 /* ~"Tell me about yourself."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20674 /* ~"Tell me about yourself."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20675 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 9.0
  SAY #20676 /* ~"Told ye. It's on the left side of Marta's home - the crazy corpse-witch? - hidden in a pile o' refuse. Look long enough and ye'll find it."~ */
  IF ~~ THEN REPLY #20677 /* ~"I had some other questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #20678 /* ~"Thanks, Gris. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 9.1
  SAY #20679 /* ~"I hid it near Ojo - he's the retard, aye? - I hid it near his place. Figure none other'll raise the jink t' raise me, and since ye're the last one I'll be talking to, no doubt, ye can have it. It's off on the right side of his house as you face his door."~ */
  IF ~  Global("Know_GStash","GLOBAL",0)
~ THEN REPLY #20680 /* ~"All right. I have some other questions for you."~ */ GOTO 9
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20681 /* ~"All right. I have some other questions for you."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 7.0 9.2
  SAY #20682 /* ~"We and me boys had just popped this crypt... and it was harder than picking a chastity belt, I'm tellin' ye. After tearing and prying at the door for a little past eternity, got in here, and were looking at opening the main crypt when me bloods start shouting, and this... this *thing*... slashes me and dumps me into this crypt... I'm fightin' it, and I hear them start runnin'... me bloods... what happened to them, eh? Where be Burt? Lowden? They make it or are they in the dead-book?"~ */
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20683 /* ~Truth: "They're dead."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20684 /* ~Lie: "They made it."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20685 /* ~Lie: "I don't know."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20686 /* ~Lie: "They're dead."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20687 /* ~Lie: "They made it."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20688 /* ~Truth: "I don't know."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 9.4
  SAY #20689 /* ~"These're me stomping grounds. Lots of ripe crypts down here, near untouched by anyone in over a..." He pauses. "Well, a lot of years, by my reckoning. Me and the boys have cracked a lot of crypts down here... we'd just gotten to this one when the problem happened."~ */
  IF ~~ THEN REPLY #20690 /* ~"What happened?"~ */ GOTO 6
  IF ~~ THEN REPLY #20691 /* ~"What crypts can you tell me about?"~ */ GOTO 16
  IF ~~ THEN REPLY #20692 /* ~"Answer some other questions for me, will you?"~ */ GOTO 9
  IF ~~ THEN REPLY #20693 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.5 9.6
  SAY #20694 /* ~"Gris. Gris the Vulture. They called me that on account of bein' able to smell out crypts and snatch the best loot 'fore anyone else knew it was there. Spent most of my time pickin' at dead bodies. Why d'ye ask?"~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20695 /* ~"Quint was looking for you, Gris. He said you had something of his."~ */ GOTO 10
  IF ~  GlobalGT("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20696 /* ~"You're Gris, eh? I'll let the other villagers know you're dead."~ */ GOTO 19
  IF ~  Global("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20697 /* ~"You're Gris, eh? I'll let the other villagers know you're dead."~ */ GOTO 19
  IF ~~ THEN REPLY #20698 /* ~"No reason."~ */ GOTO 21
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",1)
~ THEN BEGIN 9 // from: 4.0 5.0 5.1 7.2 12.0 13.0 14.0 15.0 16.1 17.0 18.0 19.1 20.0 21.0 25.0 26.1
  SAY #20701 /* ~The corpse lets loose a gusty sigh. "What did ye want to know, berk?"~ */
  IF ~  Global("Quint_Item","GLOBAL",2)
~ THEN REPLY #20702 /* ~"Where did you say Quint's charm was?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #10881 /* ~"Where did you say your stash was again?"~ */ GOTO 5
  IF ~~ THEN REPLY #20703 /* ~"What happened to you, anyway?"~ */ GOTO 6
  IF ~  Global("Know_Gris","GLOBAL",1)
Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20704 /* ~"Gris, I need you to tell me where Quint's charm is. He said you would know."~ */ GOTO 10
  IF ~~ THEN REPLY #20705 /* ~"What can you tell me about the catacombs?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20706 /* ~"Tell me about yourself."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20707 /* ~"Tell me about yourself."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20708 /* ~"Tell me about yourself."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20709 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.3
  SAY #20717 /* ~"Quint's charm?" The corpse laughs. "If that stuffing-filled, pox-ridden whoreson sent you down here for that, you're in the wrong place, berk. That thing's back in the Buried Village."~ */
  IF ~~ THEN REPLY #20718 /* ~"But where is it?"~ */ GOTO 18
  IF ~~ THEN REPLY #20719 /* ~"I see. I'll go look. Farewell."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 2.6 3.6 9.7
  SAY #20720 /* ~"Gris. Gris the Vulture. They called me that on account of bein' able to smell out crypts and snatch the best loot 'fore anyone else knew it was there. Spent most of my time pickin' at dead bodies."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 116
END

IF ~~ THEN BEGIN 12 // from: 6.0 6.3
  SAY #20726 /* ~"Aye, good. Hate t' think they'd got away clean wi' me left down here for dead."~ */
  IF ~~ THEN REPLY #20728 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20729 /* ~"Yeah. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1 6.4
  SAY #20730 /* ~"Filthy blighters! Probably sold me out to fortune's whore, they did, leavin' me to that *thing* while they ran on back ta safety..."~ */
  IF ~~ THEN REPLY #20731 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20732 /* ~"Yeah. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 6.5
  SAY #20733 /* ~"Aye, well, and let's hope they didn't. Filthy running pikers."~ */
  IF ~~ THEN REPLY #20734 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20735 /* ~"Yeah. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4 3.4 9.5
  SAY #20736 /* ~"Y'already asked me about that, berk. Gris, Vulture, crypts, catacombs, bein' a Collector... what else did you need to know?"~ */
  IF ~~ THEN REPLY #20737 /* ~"Just the answers to some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20738 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY #20739 /* ~"There's one to the left of the entrance with a bunch of them vargie ghoul heads flying about... don't want to be messing there without a lot of torches and some crossbows. There's a crypt of pretty tiles to the right of the entrance and down a ways... then there's the one I was exploring before the unfortunate circumstance... I figure that the crypt with the pretty tiles has got some secret about it... it smells different. An' there's a secret chamber somewhere abouts, but I can't figure a way into it."~ */
  IF ~~ THEN REPLY #20740 /* ~"Where is it?"~ */ GOTO 17
  IF ~~ THEN REPLY #20741 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20742 /* ~"Farewell, Gris."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20743 /* ~"Down through the Drowned Nations a ways... don't remember exactly where, though."~ */
  IF ~~ THEN REPLY #20744 /* ~"All right. I had some other questions, then..."~ */ GOTO 9
  IF ~~ THEN REPLY #20745 /* ~"Thanks, Gris. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 10.1
  SAY #20746 /* ~"Heh. Berk, if I wasn't dead, ye can bet ye'd never be draggin' that chant from me. But..." he pauses philosophically, "but, since I'm a deader now, I'll tell ye. It's buried in the refuse on the left side of Marta the corpse-ripper's house. Y'aint averse to diggin' in refuse, I hope."~ */
  IF ~~ THEN REPLY #20747 /* ~"I'll find it. I had some other questions, first..."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris the Vulture told me where I could find Quint's poison charm - in a rubbish heap to the left of Marta's house, back in the Buried Village.~ */ GOTO 9
  IF ~~ THEN REPLY #20748 /* ~"Thanks, Gris. Farewell."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris the Vulture told me where I could find Quint's poison charm - in a rubbish heap to the left of Marta's house, back in the Buried Village.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.1 8.2
  SAY #20749 /* ~"Well, I'm friggin' dead, it looks like. Give 'em my worst regards, then. The blighters are probably already picking through me stash and scrounging my corpse."~ */
  IF ~~ THEN REPLY #20750 /* ~"Your stash?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20751 /* ~"Probably. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20752 /* ~"Probably. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.0
  SAY #20753 /* ~"Aye... I had a little bit tucked away near me kip... a little bit that that wheezing crusty blighter Pharod didn't know nothing about. It's to the right of that retard Ojo's place, if I remember correctly."~ */
  IF ~~ THEN REPLY #20754 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20755 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 8.3
  SAY #20756 /* ~"Aye, well, that's different for you, I'm sure."~ */
  IF ~~ THEN REPLY #20757 /* ~"Yeah, well... answer some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20758 /* ~"Err... yeah. Farewell."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #20759 /* ~This is the corpse of a man with a surprised look on his beak-nosed face. It's hard to tell how he died: whether from the numerous horrific slashing wounds across his abdomen and throat, or from blood loss incurred when his right arm was nearly severed from his shoulder. As the corpse replies to you, its voice rattles in its throat. "Eh... no... no, beast, must... run! Why do I feel so numb... am I drunk? Can't I feel me hands... and me legs? What - last thing I remember is being pushed in here, the boys being slashed by some big pikin' thing..."~ */
  IF ~~ THEN REPLY #20760 /* ~"Who are you?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #20761 /* ~"What are you talking about?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #20762 /* ~"Eh? Who in the Nine Hells are you? Show yerself... aww, by the hairy arse of Pan himself... I'm dead, ain't I?"~ */
  IF ~~ THEN REPLY #20763 /* ~"I'm afraid so. Can you answer me some questions?"~ */ GOTO 24
  IF ~~ THEN REPLY #20764 /* ~"Well..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #20765 /* ~"Always knew it'd come down to this... tell me, cutter... am I still in the catacombs?"~ */
  IF ~~ THEN REPLY #20766 /* ~"Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #20767 /* ~Lie: "No."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_1","GLOBALLaw",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20768 /* ~The corpse's voice is bitter. "Figures, aye, it does. Do them a good turn and they'll do nothing for ye."~ */
  IF ~~ THEN REPLY #20769 /* ~"Right. I just wanted to ask some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20770 /* ~"Forget this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #20771 /* ~The corpse seems surprised. "Someone fetched me out? Can't say I expected it of 'em... probably did it for me stash..."~ */
  IF ~~ THEN REPLY #20772 /* ~"Your stash?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20773 /* ~"Right. I just wanted to ask some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20774 /* ~"Forget this. Farewell."~ */ EXIT
END
