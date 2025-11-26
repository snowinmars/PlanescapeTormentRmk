// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNOROCHJ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNOROCHJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46511 /* ~You see a spindle-thin man in dirty black robes. His stiff black hair springs forth from his skull like a crown of spikes, and his leper-white skin is drawn sharply across his skull. He is frowning into his drink and mumbling to himself. ~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46526 /* ~"Greetings."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46527 /* ~"Norochj?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46528 /* ~Leave him in peace.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46512 /* ~You see a spindle-thin Dustman in dirty black robes. His stiff black hair springs forth from his skull like a crown of spikes, and his leper-white skin is drawn sharply across his skull. He is frowning into his drink and mumbling to himself.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46529 /* ~"Greetings."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46530 /* ~"Norochj?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46531 /* ~Leave him in peace.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Norochj","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #46513 /* ~You see Norochj. He is pulling at one of his spikes of hair and using it to scratch a spot on his face. You can't help but think he'd look a lot better with dreadlocks. ~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46532 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46533 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46534 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46535 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46536 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46537 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46538 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46539 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46540 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62892 /* ~"I found the... not-Dustman. She's too busy being dead to pickpocket anyone again."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62893 /* ~"Something troubling you?"~ */ GOTO 5
  IF ~  Global("Norochj_Ad","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62894 /* ~"I'm here about the posting outside."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62895 /* ~"Emoric told me to speak to you, Norochj."~ */ GOTO 12
  IF ~~ THEN REPLY #62896 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 0.1 1.0 1.1
  SAY #46514 /* ~The Dustman looks up, blinks once, then looks you up and down, studying you. As he studies you, he takes one of his spiked locks and points at himself with it. "Norochj. Initiate. Dustman. Guard."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",0)
~ THEN REPLY #46545 /* ~"You look troubled... Norochj."~ */ GOTO 5
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46546 /* ~"I'm here about the posting outside."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46547 /* ~"Emoric told me to speak to you."~ */ GOTO 12
  IF ~~ THEN REPLY #46548 /* ~"Can I ask you some questions?"~ */ GOTO 4
  IF ~~ THEN REPLY #46549 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #46515 /* ~Norochj shakes his head, then gazes back down into his drink.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46550 /* ~"Is anything wrong? You look troubled."~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46551 /* ~"Hold on. Emoric told me to speak to you."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46609 /* ~"I'm here about the posting outside."~ */ GOTO 6
  IF ~~ THEN REPLY #46610 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.10 3.0 4.0 9.10 10.10 11.10
  SAY #46516 /* ~Norochj touches his face and traces the shape of his frown with his finger. "Troubled, yes."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46553 /* ~"What's wrong?"~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46554 /* ~"Emoric told me to speak to you."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46611 /* ~"I'm here about the posting outside."~ */ GOTO 6
  IF ~~ THEN REPLY #46612 /* ~"I don't think I can help you with your troubles. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.11 3.1 4.2 5.0 5.2
  SAY #46517 /* ~The Dustman looks you up and down. "Many troubles have I. Help can you. A mausoleum awakes, the dead walk, the dead disturbed, the Dustmen disturbed. Find out what disturbs the undead, and copper coins will I pay."~ */
  IF ~~ THEN REPLY #46556 /* ~"Very well. Where is this mausoleum?"~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",1)
~ JOURNAL #17134 /* ~Norochj, a Dustman I met in the Gathering Dust bar, told me of a mausoleum where the dead walk. He wanted me to look into the matter. He said the mausoleum entrance was north and west of the Dustman memorial outside of the Mortuary. He said I should go to the archway there, make a semicircle over my heart with my right index finger, then the entrance would open. If I can find the problem in the mausoleum and solve it, then I'll return to Norochj and let him know.~ */ GOTO 13
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46557 /* ~"Well, I don't know if I can help you with that. Emoric told me to speak to you about another matter."~ */ GOTO 12
  IF ~~ THEN REPLY #46558 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 12.0
  SAY #46518 /* ~Norochj nods. "Find him I cannot. Important to the Dustmen it is."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46559 /* ~"Don't worry - I already found him. He won't be pulling that trick again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Fortunately, I'd already taken care of Ash-Mantle, so I collected the reward.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46560 /* ~"Don't worry - I already found him. He won't be pulling that trick again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Fortunately, I'd already taken care of Ash-Mantle, so I collected the reward.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46561 /* ~"Don't worry - I already found him. He won't be pulling that trick again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Fortunately, I'd already taken care of Ash-Mantle, so I collected the reward.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Dead("Ashman")
~ THEN REPLY #46562 /* ~"Don't worry - I already found him and put him out of his misery."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Fortunately, I'd already butchered ol' Ash-Mantle, so I collected the reward.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Dead("Ashman")
~ THEN REPLY #46563 /* ~"Don't worry - I already found him and put him out of his misery."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Fortunately, I'd already butchered ol' Ash-Mantle, so I collected the reward.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Dead("Ashman")
~ THEN REPLY #62897 /* ~"Don't worry - I already found him and put him out of his misery."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ GOTO 9
  IF ~  Dead("Mochai")
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62898 /* ~"Don't worry - I already found her and put her out of her misery."~ */ GOTO 15
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62899 /* ~"I could track him down for you."~ */ GOTO 8
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62900 /* ~"I could track him down for you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Norochj_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #62901 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7 7.8
  SAY #46519 /* ~Norochj nods again. "For making my troubles your troubles, copper coins will I pay. Find the not-Dustman, deal with him, then return. Norochj will wait."~ */
  IF ~~ THEN REPLY #46568 /* ~"Very well. I will return when I have found this... 'Not-Dustman.' Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 2.5 2.8 7.2 7.5 9.2 9.5 9.8 10.2 10.5 10.8 11.2 11.5 11.8 15.2 15.5 16.2 16.5
  SAY #46520 /* ~Norochj's lines of worry smooth out as you speak. "Thanks give I." He reaches into his robes and draws forth a small bag, which he hands to you. "Copper coin. A hundred."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46569 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46570 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46571 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46572 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46573 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46574 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46575 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46576 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46577 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62902 /* ~"I found the... not-Dustman. She's too busy being dead to pickpocket anyone again."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62903 /* ~"Was something else troubling you?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #62904 /* ~"By the way, Emoric told me to speak to you about another matter."~ */ GOTO 12
  IF ~~ THEN REPLY #62905 /* ~"Thanks... glad I could help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.4 2.7 7.1 7.4 9.1 9.4 9.7 10.1 10.4 10.7 11.1 11.4 11.7 15.1 15.4 16.1 16.4
  SAY #46521 /* ~Norochj's lines of worry smooth out as you speak. "Thanks give I." He reaches into his robes and draws forth a small bag, which he hands to you. "Copper coin. Twice a hundred."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46581 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46582 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46583 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46584 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46585 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46586 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46587 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46588 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46589 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62906 /* ~"I found the... not-Dustman. She's too busy being dead to pickpocket anyone again."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62911 /* ~"Was something else troubling you?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62912 /* ~"By the way, Emoric told me to speak to you about another matter."~ */ EXIT
  IF ~~ THEN REPLY #62913 /* ~"Thanks... glad I could help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.0 2.3 2.6 7.0 7.3 9.0 9.3 9.6 10.0 10.3 10.6 11.0 11.3 11.6 15.0 15.3 16.0 16.3
  SAY #46522 /* ~Norochj's lines of worry smooth out as you speak. "Thanks give I." He reaches into his robes and draws forth a large bag, which he hands to you. "Copper coin. Thrice a hundred. And..." He reaches into his robe again, then throws a roll of bandages to you. "Need these bandages more than I, you seem." ~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46593 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46594 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46595 /* ~"I found out what was going on in the mausoleum. The dead sleep again."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~I returned to Norochj and told him that I had solved the problem in the mausoleum.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46596 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46597 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46598 /* ~"I found the... not-Dustman. He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~I'd found and dealt with Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46599 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46600 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46601 /* ~"I found the... not-Dustman. He's too busy being dead to pickpocket anyone again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~I'd found and butchered Ash-Mantle, so I collected the reward from Norochj.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #64430 /* ~"I found the... not-Dustman. She's too busy being dead to pickpocket anyone again."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46602 /* ~"Was something else troubling you?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46603 /* ~"By the way, Emoric told me to speak to you about another matter."~ */ GOTO 12
  IF ~~ THEN REPLY #46604 /* ~"Thanks... glad I could help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.12 3.2 4.1 5.1 6.1 9.11 11.11
  SAY #46523 /* ~"Emoric sent you to me..." He studies you for a moment, then sighs and points at himself. "Norochj is Dustman. Guard. Serve Dustman interest, protect Dustman interest, protect Dustman *reputation.*" The man sighs again. "In the Hive, many thieves. One thief wears robes of Dustman, but a Dustman not."~ */
  IF ~~ THEN REPLY #46605 /* ~"There's a thief disguised as a Dustman?"~ */ DO ~SetGlobal("Dustman_Pickpocket","GLOBAL",1)
~ JOURNAL #17075 /* ~I did as Emoric bade and spoke with the Dustman, Norochj. He is having trouble tracking down a man, a thief, dressed as a Dustman.~ */ GOTO 7
  IF ~~ THEN REPLY #46606 /* ~"I don't think I can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #46524 /* ~Norochj nods. "Mausoleum by Dustman memorial. Go north and west from black monument, go to arch and a semi-circle over your heart with this finger this make." He wiggles the index finger on his right hand. "To the mausoleum, go you will."~ */
  IF ~~ THEN REPLY #46607 /* ~"I'll look into it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #46525 /* ~Norochj sighs, and tugs on one of his hair spikes. "Dustmen make pledge not to enter mausoleum. Make pledge to dead. Cannot. Only not-Dustmen may enter."~ */
  IF ~~ THEN REPLY #46608 /* ~"I'll look into it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.9 7.6 9.9 10.9 11.9
  SAY #61163 /* ~Norochj blinks at you in silence for a moment. "You found not-Dustman. You kill *him?*"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61164 /* ~"Oh, him? He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61166 /* ~"Oh, him? He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61167 /* ~"Oh, him? He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61168 /* ~"Oh, er, yeah, I meant *him.* He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61170 /* ~"Oh, er, yeah, I meant *him.* He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61171 /* ~"Oh, er, yeah, I meant *him.* He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61173 /* ~"Uh, no, there was a *woman* in the Smoldering Corpse Bar who wasn't a Dustman, and I..."~ */ DO ~SetGlobal("Mochai_Norochj_Pickpocket","GLOBAL",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.6
  SAY #61174 /* ~"Non-Dustman not woman. Non-Dustman is a man."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61175 /* ~"Oh, him? He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61179 /* ~"Oh, him? He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61180 /* ~"Oh, him? He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61181 /* ~"Oh, er, yeah, I meant *him.* He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61182 /* ~"Oh, er, yeah, I meant *him.* He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61183 /* ~"Oh, er, yeah, I meant *him.* He won't be picking pockets in this town again."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61184 /* ~"Oh. Forgive my feeble attempt at humor. If I happen to come across this... *man*... disguised as a Dustman, I'll let you know. Farewell."~ */ EXIT
END
