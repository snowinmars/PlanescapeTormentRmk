// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBEDAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBEDAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Smuggle","GLOBAL",6)
~ THEN BEGIN 0 // from:
  SAY #43055 /* ~"Thanks for your help. Maybe I'll see you later... or some friends of mine will. We're all over the place."~ */
  IF ~~ THEN REPLY #43056 /* ~"I had some questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #43057 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Smuggle","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #43058 /* ~"We still have a ways to go before the warehouse. What do you want?"~ */
  IF ~~ THEN REPLY #43059 /* ~"I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43060 /* ~"Nothing."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #43061 /* ~The engineer looks at you with contempt. "Away with you! I have no time for one such as you!"~ */
  IF ~~ THEN REPLY #43062 /* ~Attack her.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #43063 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #43064 /* ~She looks at you, blankly, without saying anything, waiting for the guards to arrive.~ */
  IF ~~ THEN REPLY #43065 /* ~"I had some questions for you..."~ */ GOTO 4
  IF ~~ THEN REPLY #43066 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43067 /* ~She continues to gaze at you. "I have no answers for you right now. Perhaps when you return."~ */
  IF ~~ THEN REPLY #43068 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Smuggle","GLOBAL",1)
!Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #43069 /* ~"Well, have you figured a way out of here? They won't let me out as I am. I need a disguise or something."~ */
  IF ~~ THEN REPLY #43070 /* ~"Do you have any ideas on what to disguise yourself as?"~ */ GOTO 6
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43071 /* ~"I picked up a smith disguise. Put this on."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43072 /* ~"No, not yet. I had some other questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #43073 /* ~"No, not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 34.1 35.0 36.0
  SAY #43074 /* ~"They're not stopping the smiths from leaving here. Maybe if you could find me a complete set of smithing gear and some spare rags - not just the tools, but the rest of the clothes... I have no idea where you'd find that. Don't kill any more people in here, all right? I've got enough trouble sown here as it is - we don't need this to get out to the rest of the city. In other words, don't be killing off any smiths for their clothes - I doubt they'd fit anyway."~ */
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43075 /* ~"I picked up a smith disguise. Put this on."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43076 /* ~"Fine. I'll see what I can do. In the meantime, answer some questions for me..."~ */ GOTO 9
  IF ~~ THEN REPLY #43077 /* ~"All right. I'll see what I can do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #43078 /* ~"I'll put this on as soon as we're ready to go. So what now? You'll have to lead me out."~ */
  IF ~~ THEN REPLY #43079 /* ~"All right, let's go."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43082 /* ~"We'll head out through the front door, and then head to a warehouse I know of, where some friends of mine are waiting. You ready?"~ */
  IF ~~ THEN REPLY #43083 /* ~"Let's go."~ */ DO ~SetGlobal("Smuggle","GLOBAL",5)
AddexperienceParty(8000)
StartCutSceneMode()
StartCutSceneEx("0503cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 5.2 6.1 10.4 11.2 12.3 13.0 14.2 15.4 16.3 17.0 18.1 19.0 20.1 21.2 22.1 23.2 24.2 25.0 32.1 75.0
  SAY #43084 /* ~"What did you want to know?"~ */
  IF ~~ THEN REPLY #43085 /* ~"Tell me about the Revolutionary League."~ */ GOTO 10
  IF ~~ THEN REPLY #43086 /* ~"Tell me about the Godsmen."~ */ GOTO 17
  IF ~~ THEN REPLY #43087 /* ~"Why do you cause all that destruction?"~ */ GOTO 18
  IF ~~ THEN REPLY #43088 /* ~"Tell me about yourself."~ */ GOTO 20
  IF ~~ THEN REPLY #43089 /* ~"What about Saros?"~ */ GOTO 75
  IF ~~ THEN REPLY #43090 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43091 /* ~She squints at you, as if gauging you, and says: "We believe that power corrupts by its very nature. We exist to overthrow power where it may arise. The factions of Sigil are therefore a prime target - they monopolize the City of Doors, a city that should be open to all who pass through here. Instead, they crush all who would speak freely and silence those who would move of their own accord. The power structure of Sigil must be destroyed!"~ */
  IF ~~ THEN REPLY #43092 /* ~"What's the structure of the Revolutionary League?"~ */ GOTO 15
  IF ~~ THEN REPLY #43093 /* ~"How did you fall in with these people, anyway?"~ */ GOTO 11
  IF ~~ THEN REPLY #43094 /* ~"Why not work within the system to change it?"~ */ GOTO 12
  IF ~~ THEN REPLY #43095 /* ~"How does one join the Revolutionary League?"~ */ GOTO 13
  IF ~~ THEN REPLY #43096 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43097 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 12.1 14.0 15.1 16.0
  SAY #43098 /* ~"My father, a Free Leaguer, was killed in a disagreement with one of the Doomguard. The killer was never brought to justice. My mother sought justice, but was arrested for her troubles by the Hardheads. A corrupt judge saw to it that she was found guilty of violating the peace and creating anarchy, and so she was executed by the Mercykillers. Of course I was going to seek out the Anarchists - they have the only answers I seek any longer."~ */
  IF ~~ THEN REPLY #43100 /* ~"Why not work within the system to change it?"~ */ GOTO 12
  IF ~~ THEN REPLY #43101 /* ~"How does one join the Revolutionary League?"~ */ GOTO 13
  IF ~~ THEN REPLY #43102 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43103 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 15.2 16.1
  SAY #43104 /* ~"With this system? You'd be corrupted before you could ever effect any change. This system isn't interested in working with anything that will lessen its power. It's the nature of people that they want to hold onto their power and consolidate it, no matter who they hurt in the process. Speak a word against the factions now, and they'll see you dead before you can take another breath. Far better to be rid of it all and build anew."~ */
  IF ~~ THEN REPLY #43105 /* ~"A lot of innocent people will get hurt that way."~ */ GOTO 14
  IF ~~ THEN REPLY #43106 /* ~"How did you fall in with the Anarchists?"~ */ GOTO 11
  IF ~~ THEN REPLY #43107 /* ~"How does one join the Revolutionary League?"~ */ GOTO 13
  IF ~~ THEN REPLY #43108 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43109 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3 11.1 12.2 14.1 15.3 16.2
  SAY #43110 /* ~She looks doubtful. "Join us? Hmmm. You've done enough to implicate yourself if you ever decided to turn stag on us, so you've done us more good than harm in any case." She stops to think a little longer. "All right. Go talk to Scofflaw Penn, at the printing shop. Tell him I said 'The city must burn.' He'll know what you mean." She gives you a hard look. "But I'm warning you: If *anything* happens to me, that phrase won't be worth two coppers."~ */
  IF ~~ THEN REPLY #43111 /* ~"'The city must burn.' All right. I had some other questions."~ */ JOURNAL #68106 /* ~Bedai-Lihn told me to seek out Scofflaw Penn at the print shop, and to tell him this: "The city must burn."~ */ GOTO 9
  IF ~~ THEN REPLY #43112 /* ~"'The city must burn.' All right. Farewell."~ */ JOURNAL #68106 /* ~Bedai-Lihn told me to seek out Scofflaw Penn at the print shop, and to tell him this: "The city must burn."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #43113 /* ~She scoffs. "If you were concerned about innocents, you would never have helped me in the first place. What about all those workers YOU killed when you destroyed the weapon in the Foundry? In every war, innocents suffer - but at least when you're with us, they'll have a chance to recover. Under the factions, they'll all just get ground away."~ */
  IF ~~ THEN REPLY #43114 /* ~"How did you fall in with the Anarchists?"~ */ GOTO 11
  IF ~~ THEN REPLY #43115 /* ~"How does one join the Revolutionary League?"~ */ GOTO 13
  IF ~~ THEN REPLY #43116 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43117 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.0
  SAY #43118 /* ~"We're divided into cells, each cell of an indeterminate number. Folks in one cell don't know the people in another cell, and that way we can't betray anyone. Sure, we might work at cross-purposes at times, but we demoralize the soul-crushing factions well enough that it's worth it."~ */
  IF ~~ THEN REPLY #43119 /* ~"Don't you think that maybe because of your group's actions, the factions are becoming even more militant and corrupt?"~ */ GOTO 16
  IF ~~ THEN REPLY #43120 /* ~"How did you fall in with the Anarchists?"~ */ GOTO 11
  IF ~~ THEN REPLY #43121 /* ~"Why not work within the system to change it?"~ */ GOTO 12
  IF ~~ THEN REPLY #43122 /* ~"How does one join the Revolutionary League?"~ */ GOTO 13
  IF ~~ THEN REPLY #43123 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43124 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #43125 /* ~"No. Their hypocrisy is laid bare, though, when they try to destroy the very people they're sworn to protect. Those who claim to uphold Sigil's structure are the first to tear it down when they're feeling threatened. We're showing how threadbare their ideas of governance are. We're a catalyst, but we're not the cause."~ */
  IF ~~ THEN REPLY #43126 /* ~"How did you fall in with the Anarchists?"~ */ GOTO 11
  IF ~~ THEN REPLY #43127 /* ~"Why not work within the system to change it?"~ */ GOTO 12
  IF ~~ THEN REPLY #43128 /* ~"How does one join the Revolutionary League?"~ */ GOTO 13
  IF ~~ THEN REPLY #43129 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43130 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY #43131 /* ~"The Godsmen? Ha. Most of the other factions at least pretend to have an answer. The Godsmen are worse than them, even - they get in the way of anyone trying to figure out what the big secret is, but they don't even have any idea what it is. Dogs in mangers, all. Worse, they pollute the Lower Ward, filling it with this deathly fog that kills off the elderly and weak. They call themselves helpful, but the truth is they're just another set of death-mongers."~ */
  IF ~~ THEN REPLY #43132 /* ~"All right. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43133 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #43134 /* ~"Because the old order has to come down. By destroying a part of a faction's headquarters, I help people lose faith in the Godsmen. By destroying that horrid weapon, I help the clients mistrust the Godsmen. By killing a factor, I show the others that the high-ups are targets and no-one should strive for eminence in a corrupt system, not when they might be the next victims. Each of these actions serves a symbolic point as well. None of them is destruction for the sake of destruction. That'd make us no better than the Doomguard."~ */
  IF ~~ THEN REPLY #43135 /* ~"The who?"~ */ GOTO 19
  IF ~~ THEN REPLY #43136 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43137 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #43138 /* ~"The Doomguard. A bunch of people who think that because everything falls apart, it's their job to make sure the center cannot hold. We're nominally allied with the Doomguard, but the truth is that they'll fall too. Eventually, they'll all fall."~ */
  IF ~~ THEN REPLY #43139 /* ~"Very well. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43140 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY #43141 /* ~"Me? There's not much to tell. I vowed to see the factions fall, and I pursued a course of study in magical engineering that would make me valuable to a wide range of them. There were others before the Godsmen, you know - many others. I've worn more faces than I can remember and had more names than the dead-book has entries. I can't even tell you the names of all those I've betrayed."~ */
  IF ~~ THEN REPLY #43142 /* ~"Sounds like quite a life. Are you happy with it?"~ */ GOTO 21
  IF ~~ THEN REPLY #43143 /* ~"I see. I had some other questions."~ */ GOTO 9
  IF ~~ THEN REPLY #43144 /* ~"Must be fun. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #43145 /* ~She emits a short, barking laugh, and says bitterly, "Happy? Since when has happy had anything to do with it?"~ */
  IF ~~ THEN REPLY #43146 /* ~"If you're not happy, why don't you quit doing it?"~ */ GOTO 22
  IF ~~ THEN REPLY #43147 /* ~"Never. Happiness is a false ideal, created in order to oppress the weak and gullible. True happiness does not exist."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_3","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #43148 /* ~"You're right. Forget it. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43149 /* ~"Good point. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #43150 /* ~"Quit doing it? And lose my vengeance? This defines me. This is who I am. It'd be like asking you to cut off your arm and be able to live with yourself." She eyes your scars. "Though you'd probably be able to do it."~ */
  IF ~~ THEN REPLY #43151 /* ~"So you'd let your bitterness and hatred control you?"~ */ GOTO 23
  IF ~~ THEN REPLY #43152 /* ~"Probably. I had some other questions."~ */ GOTO 9
  IF ~~ THEN REPLY #43153 /* ~"Probably. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #43154 /* ~"It has become a part of me. Without it, I become nothing."~ */
  IF ~~ THEN REPLY #43155 /* ~"Choose something else, then, and become more than you are."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #43157 /* ~"Then foster your bitterness, and let it rule you. Create more sorrow. I don't care."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #43160 /* ~"Right. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43163 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #43165 /* ~"I... I don't know how."~ */
  IF ~~ THEN REPLY #43167 /* ~"Try it. Try and see."~ */ GOTO 27
  IF ~~ THEN REPLY #43168 /* ~"Then you might as well just kill yourself, because there's no point in living if you can't change."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_2","GLOBALGood",-1)
~ GOTO 28
  IF ~~ THEN REPLY #43169 /* ~"Very well, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43170 /* ~"Then don't try. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #43171 /* ~"I agree. We are told that happiness is the ultimate goal to our strife, yet so few seem to have it... and those who do seem to be imbeciles and the self-satisfied who cannot open their eyes to the horrors of the world around them. Better to suffer, I say, than pay *that* price for happiness."~ */
  IF ~~ THEN REPLY #43172 /* ~"So true. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #43173 /* ~"Yes. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY #43174 /* ~"No, you wouldn't. And that apathy is precisely what we fight against. Good day."~ */
  IF ~~ THEN REPLY #43175 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #43176 /* ~"I will think on this. I will guarantee nothing. Farewell, traveler. You have given me much to think on."~ */
  IF ~~ THEN REPLY #43177 /* ~"I hope so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #43178 /* ~"I've thought on that, and then I realized that at least I'm making a difference, one that I believe in. That is enough for me. Farewell."~ */
  IF ~~ THEN REPLY #43179 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",3)
~ THEN BEGIN 29 // from:
  SAY #43180 /* ~She looks scornfully at you and sneers. "What, have you returned with your mind changed, or do you have some other use for me?"~ */
  IF ~~ THEN REPLY #43181 /* ~"I changed my mind. I'll kill him for you."~ */ GOTO 30
  IF ~~ THEN REPLY #43182 /* ~"I had some other questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #43183 /* ~"Nothing. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #43184 /* ~"You already had your chance. Do you think I'd really trust you to do it now? I think not. Get out of my sight."~ */
  IF ~~ THEN REPLY #43185 /* ~"Then answer some questions for me."~ */ GOTO 31
  IF ~~ THEN REPLY #43186 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 33.1 54.0
  SAY #43187 /* ~"If you will not aid me in my quest, why should I help you in yours? Good day, sir."~ */
  IF ~~ THEN REPLY #43188 /* ~"Good day."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 36 35 even though they appear after this state */
~  GlobalGT("F_Ass","GLOBAL",1)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN BEGIN 32 // from:
  SAY #43189 /* ~"Have you written the name Sandoz into the dead-book yet?"~ */
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43190 /* ~"Yes. He's dead."~ */ DO ~SetGlobal("F_Ass","GLOBAL",4)
SetGlobal("Smuggle","GLOBAL",1)
AddexperienceParty(8000)
~ GOTO 34
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43191 /* ~"No, not yet. I had some other questions, first."~ */ GOTO 9
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43192 /* ~"Not yet. Farewell."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",1)
~ THEN BEGIN 33 // from:
  SAY #43193 /* ~"Have you come to a decision whether you will accept the job?"~ */
  IF ~~ THEN REPLY #43194 /* ~"Yes, I'll do it."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_1","GLOBALLaw",-1)
~ GOTO 46
  IF ~~ THEN REPLY #43195 /* ~"No, I will not."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Bedai_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_1","GLOBALLaw",1)
~ GOTO 31
  IF ~~ THEN REPLY #43196 /* ~"No, not yet. I had some other questions."~ */ GOTO 38
  IF ~~ THEN REPLY #43197 /* ~"No, not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.0 43.2
  SAY #43198 /* ~"I require just one more task from you, and we'll leave these Godsmen to their turmoil. I need you to smuggle me out of this place - the guards are going to be looking for someone to blame, and I'd rather they not choose you - once I disappear, they'll know it was me, and you'll be off the hook. What do you say?"~ */
  IF ~~ THEN REPLY #43199 /* ~"Give me some time to think about it."~ */ GOTO 35
  IF ~~ THEN REPLY #43200 /* ~"Yes. I'll do it. What do I need to do?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43201 /* ~"No. I think you're trying to set me up."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
END

IF WEIGHT #5 ~  Global("Smuggle","GLOBAL",1)
Dead("Sandoz")
~ THEN BEGIN 35 // from: 34.0
  SAY #43202 /* ~"I need to get out of the Foundry. Will you help me? I need an answer NOW."~ */
  IF ~~ THEN REPLY #43203 /* ~"What the hell... all right."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43204 /* ~"No. I think you're trying to set me up."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #43205 /* ~"I said to give me time. Farewell."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 36 // from: 34.2 35.1
  SAY #43206 /* ~"Unless you can help me out of here, I have nothing to say to you."~ */
  IF ~~ THEN REPLY #43207 /* ~"Fine, then. I'll help you get out."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43208 /* ~"No. I won't."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #43210 /* ~"Then I have nothing to say to you."~ */
  IF ~~ THEN REPLY #43211 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2 39.2 40.2 41.1 42.0 49.1 50.1 51.1 52.1 68.1
  SAY #43212 /* ~"Other questions? Don't you have something to take care of?"~ */
  IF ~~ THEN REPLY #43213 /* ~"Tell me about yourself."~ */ GOTO 39
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43214 /* ~"Why should I do this?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43215 /* ~"Why should I do this?"~ */ GOTO 41
  IF ~~ THEN REPLY #43216 /* ~"What do you have against the Godsmen, anyway?"~ */ GOTO 42
  IF ~~ THEN REPLY #43217 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #43218 /* ~"My name is Bedai-Lihn. I'm a magical engineer - not a mage, mind you, but a theoretician - and I'm going to make sure the Godsmen don't get a chance to use that weapon or contract for other such weapons of war again."~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43219 /* ~"Why kill him?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43220 /* ~"Why destroy the machine?"~ */ GOTO 41
  IF ~~ THEN REPLY #43221 /* ~"All right. Answer some other questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43222 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.0
  SAY #43223 /* ~"Because these contracts the Godsmen sign with their customers are evil. The Godsmen allow themselves the luxury of pretending that their actions won't have consequences. Well, they do, and I'm going to show them how - by ensuring that the person responsible for getting the contract in the first place doesn't live to do it again."~ */
  IF ~  Global("F_Ass","GLOBAL",1)
~ THEN REPLY #43224 /* ~"All right. I'll do it."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~  Global("F_Ass","GLOBAL",2)
~ THEN REPLY #43225 /* ~"I don't think I want to do it."~ */ GOTO 45
  IF ~~ THEN REPLY #43226 /* ~"Very well. I had some other questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43227 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.2 39.1 68.2
  SAY #43228 /* ~"Why? Because that weapon is a tool of the devils... literally. The fiends are going to use it to wreak untold havoc and destruction across the face of creation, and no matter how many 'peacetime' uses that infernal device might have, not one will make up for the suffering it will cause."~ */
  IF ~~ THEN REPLY #43229 /* ~"What about the workers?"~ */ GOTO 52
  IF ~~ THEN REPLY #43230 /* ~"Very well. I had some other questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43231 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY #43232 /* ~"What I have against them is that they are as blind as all the other factions. They control the city in an iron grasp even as they pretend they've got no agenda. Their life-affirming philosophy doesn't extend as far as actually affirming life. Time to give them a dose of their own medicine."~ */
  IF ~~ THEN REPLY #43233 /* ~"I see. I had some other questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43234 /* ~"Very well. Farewell."~ */ EXIT
END

IF WEIGHT #10 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 43 // from:
  SAY #43235 /* ~"I heard the explosion from here. Excellent work. Are you interested in another task?"~ */
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43236 /* ~"What is it?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 44
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43237 /* ~"Why weren't you destroyed in the explosion with the other workers on the project?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 71
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #66890 /* ~"What is it?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
SetGlobal("Smuggle","GLOBAL",1)
~ GOTO 34
END

IF ~~ THEN BEGIN 44 // from: 43.0 71.0
  SAY #43238 /* ~"The factol, Sandoz... I'm sure you're familiar with him? He was the one responsible for the development of that fiendish device in the first place. He was the one who sought out the contract, and the one who promised the deadly weapon would be created. He is the one who is truly responsible for the deaths of those other engineers. He must die."~ */
  IF ~~ THEN REPLY #43239 /* ~"I'll do it."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43240 /* ~"No way. Enough people have died."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 40.1 44.1
  SAY #43241 /* ~"You don't want to do it? That's too bad, because you've already committed yourself to this course of action. Do you really think one more body is going to make a difference? Think of what you've already done, and think of the cost if you stop now. Nothing will change if you stop now, and you'll just have killed in vain. Do you really want to stop the faction-sponsored killing, or were you just talking big?"~ */
  IF ~~ THEN REPLY #43242 /* ~"I'll kill him."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43243 /* ~"No. I don't want to kill him."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 33.0 40.0 44.0 45.0
  SAY #43244 /* ~"Good. His name is Sandoz. I believe you've already had some contact with him. He won't suspect a thing. Don't worry about being quiet about it, either - Sandoz has been loud enough that the guards won't notice a bit of a ruckus. Just come back to me when you're done, and I'll set you one more task - and then we're done. Now get going!"~ */
  IF ~~ THEN REPLY #43245 /* ~"I've changed my mind. I don't want to kill him."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
  IF ~~ THEN REPLY #43246 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #43247 /* ~Her eyes fill with quick scorn. "You are truly weaker than I thought... and that was weak indeed. Farewell, then. Speak to me no more." She turns her back on you.~ */
  IF ~~ THEN REPLY #43248 /* ~"Very well, then. Farewell."~ */ EXIT
END

IF WEIGHT #11 ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",6)
~ THEN BEGIN 48 // from:
  SAY #43249 /* ~"Have you destroyed the infernal device yet?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #43250 /* ~"No. I need a token to get behind the doors."~ */ GOTO 49
  IF ~  !PartyHasItem("Gtoken")
False()
~ THEN REPLY #43251 /* ~"No. I lost the token needed to get behind the doors."~ */ GOTO 50
  IF ~~ THEN REPLY #43252 /* ~"What about the workers?"~ */ GOTO 52
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #43253 /* ~"Not yet. But I will, soon. Can you tell me of the weak spots on it?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #43254 /* ~"You need a token? Then speak to the foundry supervisor... I think Alissa Tield is her name. Or you might try the lad Saros. I understand he has light fingers..."~ */
  IF ~~ THEN REPLY #43255 /* ~"Very well. What are the weak spots on the machine?"~ */ GOTO 51
  IF ~~ THEN REPLY #43256 /* ~"I had some other questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43257 /* ~"All right, I'll do that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #43258 /* ~"Then you must either find out where it is, or seek one from the lad Saros or Alissa Tield, the foundry supervisor. If you cannot get it from one of them, then perhaps you'll have to fight your way into the machine. I wouldn't recommend that."~ */
  IF ~~ THEN REPLY #43259 /* ~"Very well. What are the weak spots on the machine?"~ */ GOTO 51
  IF ~~ THEN REPLY #43260 /* ~"I had some other questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43261 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.3 49.0 50.0 68.0
  SAY #43262 /* ~"Concentrate your energies on the firing device, I'd say. I'd recommend inserting something metal there. The hard steel of the item will spark and flurry, destroying the resonance of the weapon's magical field, leading it to self-destruction. When you've inserted the item into the device, leave. You'll have about half an hour before it detonates."~ */
  IF ~~ THEN REPLY #43263 /* ~"What about the workers?"~ */ GOTO 52
  IF ~~ THEN REPLY #43264 /* ~"I had some other questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43265 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 41.0 48.2 51.0
  SAY #43266 /* ~"What about them? They are slaves to their faction, and the faction will not weep when they are gone. Why, then, should you care?"~ */
  IF ~~ THEN REPLY #43267 /* ~"I care because they're innocent."~ */ GOTO 53
  IF ~~ THEN REPLY #43268 /* ~"I had some other questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43269 /* ~"You're right. I'll be back with news about the machine's destruction."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #43270 /* ~"Innocent? Ha. Only in an organization this corrupt could you call those who work on death machines 'innocent.' What a joke." She pauses, as if to clear her throat of bile. "Will you destroy the machine or not?"~ */
  IF ~~ THEN REPLY #43271 /* ~"I will not. They do not deserve to die."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43272 /* ~"I will. I'll return with a message of my success."~ */ EXIT
END

IF WEIGHT #12 ~  Global("Sabotage","GLOBAL",8)
~ THEN BEGIN 54 // from: 55.0
  SAY #43273 /* ~"You already had your chance. Do you think I'd really trust you to do it now? I think not. Get out of my sight."~ */
  IF ~~ THEN REPLY #43274 /* ~"Then answer some questions for me."~ */ GOTO 31
  IF ~~ THEN REPLY #43275 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.0 68.3 79.1
  SAY #43276 /* ~"Then we have nothing more to speak of. Hold your tongue regarding this, and I'll tell no one you contemplated treachery. Farewell. Do not speak to me again."~ */
  IF ~~ THEN REPLY #43277 /* ~"Wait! I changed my mind!"~ */ GOTO 54
  IF ~~ THEN REPLY #43278 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #13 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 56 // from:
  SAY #43279 /* ~"You're a Godsman now. Are you still happy with it?"~ */
  IF ~~ THEN REPLY #43280 /* ~"Yes, I am."~ */ GOTO 57
  IF ~~ THEN REPLY #43281 /* ~"No, not really."~ */ GOTO 58
  IF ~~ THEN REPLY #43282 /* ~"I had some questions for you."~ */ GOTO 59
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43295 /* ~"Thildon says you're an Anarchist."~ */ GOTO 73
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Thildon says you're an Anarchist."~ */ GOTO 64
  IF ~~ THEN REPLY #5531 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 58.3
  SAY #43284 /* ~"Good. It pleases me that you're happy with your choices. What can I do for you?"~ */
  IF ~~ THEN REPLY #43285 /* ~"I had some questions for you..."~ */ GOTO 59
  IF ~~ THEN REPLY #43286 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43287 /* ~"Why not?"~ */
  IF ~~ THEN REPLY #43288 /* ~"It's not what I thought it would be."~ */ GOTO 60
  IF ~~ THEN REPLY #43289 /* ~"Because I'm coming to realize that it's an empty title."~ */ GOTO 61
  IF ~~ THEN REPLY #43290 /* ~"I'm just discontent."~ */ GOTO 60
  IF ~~ THEN REPLY #43291 /* ~"Actually, I guess I'm pretty happy with it."~ */ GOTO 57
END

IF ~~ THEN BEGIN 59 // from: 56.2 57.0 60.0 63.0 64.0 65.0 66.0 67.0 72.0 73.1 76.0 77.1
  SAY #43292 /* ~"What are your questions?"~ */
  IF ~~ THEN REPLY #43293 /* ~"Tell me about the Great Foundry."~ */ GOTO 62
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43294 /* ~"Tell me what you know about the murder."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Thildon says you're an Anarchist."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43296 /* ~"Thildon says you're an Anarchist, and that you're trying to pin the crime on him."~ */ GOTO 73
  IF ~~ THEN REPLY #43297 /* ~"Tell me of the project you're working on."~ */ GOTO 65
  IF ~~ THEN REPLY #43298 /* ~"Tell me of some of the other people here."~ */ GOTO 66
  IF ~~ THEN REPLY #43299 /* ~"Who are you?"~ */ GOTO 67
  IF ~~ THEN REPLY #43300 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 58.2 61.0 61.1
  SAY #43301 /* ~"Few things are as we want them to be, and discontent comes to us all. Faction membership is an intangible reward. Think on this, and come back sometime later, won't you?"~ */
  IF ~~ THEN REPLY #43302 /* ~"Sure. I have a few questions, though..."~ */ GOTO 59
  IF ~~ THEN REPLY #43303 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 58.1
  SAY #43304 /* ~"Would you say you're devoted to the Godsmen, then?"~ */
  IF ~~ THEN REPLY #43305 /* ~Truth: "Yes."~ */ GOTO 60
  IF ~~ THEN REPLY #43306 /* ~Lie: "Yes."~ */ GOTO 60
  IF ~~ THEN REPLY #43307 /* ~Truth: "No."~ */ GOTO 69
  IF ~~ THEN REPLY #43308 /* ~Lie: "No."~ */ GOTO 69
  IF ~~ THEN REPLY #43309 /* ~"I can't see that it's any business of yours."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 59.0 81.0
  SAY #43310 /* ~She stifles a yawn. "You can ask almost anyone else here about the Foundry, and you'll get the same answer. What makes you think I'll give one that's any different? Ask another question."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43311 /* ~"Tell me what you know about the murder."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #43312 /* ~"Thildon says you're an Anarchist, and that you're trying to pin the crime on him."~ */ GOTO 64
  IF ~~ THEN REPLY #43313 /* ~"Tell me of the project you're working on."~ */ GOTO 65
  IF ~~ THEN REPLY #43314 /* ~"Tell me of some of the other people here."~ */ GOTO 66
  IF ~~ THEN REPLY #43315 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1 62.0 81.1
  SAY #43316 /* ~"Let's see... I asked the guards to head out for the night because I was working on some delicate engineering on the project in the next room, and I didn't need their psychic emanations fouling up some very crucial work. It was with some dismay that I found the body when I emerged from the room. Being as I have no other alibi, I realize I'm a suspect - and I suspect you've already found that I wouldn't consent to going under the spell to answer. The reason for that is that it would be violating the oath of secrecy I swore to protect the project."~ */
  IF ~~ THEN REPLY #43317 /* ~"I see. I had some other questions."~ */ GOTO 59
  IF ~~ THEN REPLY #43318 /* ~"I think I'll check on that with Keldor."~ */ GOTO 72
  IF ~~ THEN REPLY #43319 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 56.4 59.2 62.1 81.2
  SAY #43320 /* ~She scoffs. "An Anarchist? Right. Here's my other leg. Did you have some real questions, or can I get back to my work?"~ */
  IF ~~ THEN REPLY #43321 /* ~"I had some other questions."~ */ GOTO 59
  IF ~~ THEN REPLY #43322 /* ~"Get back to work. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 59.4 62.2 81.4
  SAY #43323 /* ~"Tell you about the project we've sworn our lives to complete and defend? Hmm. No. I don't think so. Not yet, anyway. Let's just say it's powerful, and it'll be worth the effort we've put into it."~ */
  IF ~~ THEN REPLY #43324 /* ~"Fine. Answer some other questions for me, then..."~ */ GOTO 59
  IF ~~ THEN REPLY #43325 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.5 62.3 81.5
  SAY #43326 /* ~"The other people here? Well, you've got the brilliant but eccentric Nihl Xander, the githzerai outcast woman Kel'lera, Thildon the Grey, whose heart is much less ambiguous than his name, Keldor the factor, Sandoz the factor, the two children of Sandoz, supervisors, smiths, and a host of others. They all pass me by at one point or another, and frankly I haven't made that much of an effort to get to know them. They work for me or they don't, and that's about as much as I care, I'm afraid. I'm rather devoted to my work."~ */
  IF ~~ THEN REPLY #43327 /* ~"All right. I have some other questions..."~ */ GOTO 59
  IF ~~ THEN REPLY #43328 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 59.6 81.6
  SAY #43329 /* ~"My name is Bedai-Lihn. I'm a magical engineer - not a mage, mind you, but a theoretician - and I'm going to make sure the Godsmen don't get a chance to use that weapon or contract for other such weapons of war again."~ */
  IF ~~ THEN REPLY #43330 /* ~"All right. Answer some other questions..."~ */ GOTO 59
  IF ~~ THEN REPLY #43331 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 79.0
  SAY #43332 /* ~She smiles with satisfaction. "Good. Hit the machine on one of its weak spots, and come back to let me know."~ */
  IF ~~ THEN REPLY #43333 /* ~"What are its weak spots?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #43334 /* ~"I'll let you know when I'm done. In the meantime, I had some more questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #43335 /* ~"Why do you want to do this?"~ */ GOTO 41
  IF ~~ THEN REPLY #43336 /* ~"I think I've changed my mind. I'm going to turn you in."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43337 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.2 61.3
  SAY #43338 /* ~"Would you say your lack of devotion is strong enough that you would strike at the Godsmen if given the chance?"~ */
  IF ~~ THEN REPLY #43339 /* ~"Yes, I would."~ */ GOTO 74
  IF ~~ THEN REPLY #43340 /* ~"Of course not!"~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 61.4
  SAY #43341 /* ~"No, it is not." She turns from you. "Farewell."~ */
  IF ~~ THEN REPLY #43342 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #43343 /* ~"Haven't you guessed? I swore under a false name and false identity. I am not the same person who swore the oath, and so I was immune. Now, will you take this new job, or not?"~ */
  IF ~~ THEN REPLY #43344 /* ~"What is it?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 72 // from: 63.1
  SAY #43345 /* ~"You do that. He'll verify what I've told you - he administered the oath to me, so he knows its power."~ */
  IF ~~ THEN REPLY #43346 /* ~"Very well. I had some other questions..."~ */ GOTO 59
  IF ~~ THEN REPLY #43347 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 56.3 59.3 81.3
  SAY #43348 /* ~Anger strikes sparks in her eyes - but a look of scorn replaces it so quickly you're not even sure you read it right. "An Anarchist? Right. Here's my other leg. Pull that one, too. Did you have some real questions, or can I get back to my work?"~ */
  IF ~~ THEN REPLY #43349 /* ~"What was that flash of anger?"~ */ GOTO 77
  IF ~~ THEN REPLY #43350 /* ~"I had some more questions..."~ */ GOTO 59
  IF ~~ THEN REPLY #43351 /* ~"You can get back to your work. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 69.0
  SAY #43352 /* ~"Then you've come to the right person." She smiles, and a new light comes into her eyes. "How would you like to strike against both the baatezu war machine and the Godsmen alike?"~ */
  IF ~~ THEN REPLY #43353 /* ~"What do you mean?"~ */ GOTO 79
  IF ~~ THEN REPLY #43354 /* ~"Not very much."~ */ GOTO 80
END

IF ~~ THEN BEGIN 75 // from: 9.4
  SAY #43355 /* ~"He was a useful pawn, but the fact of the matter is that he was too tied to his personal connections to understand the necessity of their destruction. If he dies, it will be no great loss. If he lives, neither will that. I will remember him fondly as a boy who did his part, but who lacked potential."~ */
  IF ~~ THEN REPLY #43356 /* ~"All right. Answer some other questions for me."~ */ GOTO 9
  IF ~~ THEN REPLY #43357 /* ~"That's kind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #43358 /* ~"Good, good. It's nice to see that this faction doesn't breed traitors. Can I help you with something else?"~ */
  IF ~~ THEN REPLY #43359 /* ~"I had some other questions..."~ */ GOTO 59
  IF ~~ THEN REPLY #43360 /* ~"No, thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 73.0
  SAY #43361 /* ~She smiles slightly. "You don't miss much, do you? Allow me to put it this way: How would you feel if you were falsely accused? My anger stems from that, and nothing more." She *seems* honest about this...~ */
  IF ~~ THEN REPLY #43362 /* ~"I don't buy that."~ */ GOTO 78
  IF ~~ THEN REPLY #43363 /* ~"Very well. I had some other questions..."~ */ GOTO 59
  IF ~~ THEN REPLY #43364 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #43365 /* ~"You'll have to, because you're getting no other answer from me." She turns stiffly away from you. "Farewell."~ */
  IF ~~ THEN REPLY #43366 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 74.0
  SAY #43367 /* ~"What I mean is that there is a weapon of incredible power being developed here in the Foundry, and that it is being funded by the baatezu - devils, if you prefer. Destroying it will not only give you a shot at the faction you say you reject, but will also bloody the nose of the entire race of fiends. What do you say?"~ */
  IF ~~ THEN REPLY #43368 /* ~"I'll do it."~ */ DO ~SetGlobal("Sabotage","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #43369 /* ~"No. I will not do it."~ */ DO ~SetGlobal("Sabotage","GLOBAL",8)
IncrementGlobalOnceEx("GLOBALGood_Bedai_3","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_2","GLOBALLaw",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 80 // from: 74.1
  SAY #43370 /* ~"Then you are of no use to me. You hold your tongue, I'll hold mine. Farewell."~ */
  IF ~~ THEN REPLY #43371 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #14 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 81 // from: 82.0
  SAY #43372 /* ~"What do you want?"~ */
  IF ~~ THEN REPLY #43373 /* ~"Tell me about the Great Foundry."~ */ GOTO 62
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #43374 /* ~"Tell me what you know about the murder."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43375 /* ~"Thildon says you're an Anarchist, and that you're trying to pin the crime on him."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43376 /* ~"Thildon says you're an Anarchist, and that you're trying to pin the crime on him."~ */ GOTO 73
  IF ~~ THEN REPLY #43377 /* ~"Tell me of the project you're working on."~ */ GOTO 65
  IF ~~ THEN REPLY #43378 /* ~"Tell me of some of the other people here."~ */ GOTO 66
  IF ~~ THEN REPLY #43379 /* ~"Who are you?"~ */ GOTO 67
  IF ~~ THEN REPLY #43380 /* ~"Nothing. Forget it."~ */ EXIT
END

IF WEIGHT #15 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 82 // from:
  SAY #43381 /* ~You see a severe woman with flaming red hair pulled back tight, giving her face a stretched, nervous look. She appears to be deep in thought. At your approach, she glances up and says, "Can I help you with something?"~ */
  IF ~~ THEN REPLY #43382 /* ~"Yes, I had some questions."~ */ GOTO 81
  IF ~~ THEN REPLY #43383 /* ~"No, sorry. Farewell."~ */ EXIT
END
