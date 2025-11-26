// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANGYAR~

IF ~  Global("Angyar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3007 /* ~This man looks... haunted. His eyes are half-lidded, as if he has had trouble sleeping, and his hair is long and unkempt. His beard is flecked with bits of dead skin and old bits of food. He doesn't seem to notice you as you approach.~ */
  IF ~~ THEN REPLY #3008 /* ~"Greetings..."~ */ DO ~SetGlobal("Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11701 /* ~Leave the man to his thoughts.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11671 /* ~The man glances up at the sound of your voice, and his slack expression vanishes... it looks like someone has lit two fires in his eyes. "What be yer business bargin' inta me house?" His eyes narrow, and his teeth clench. "Get! Or I'll send ye back ta whatever grave ye crawled from!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11702 /* ~"I spoke to your wife. I think I can help you with..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11703 /* ~"I spoke to your wife. I think I can help you with..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11704 /* ~"Go ahead and try, if you think you have the strength..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11705 /* ~"*No one* speaks to me that way... take back your words, or this house will become a crypt."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11706 /* ~Show him his Dustman Contract.~ */ GOTO 6
  IF ~~ THEN REPLY #11707 /* ~"Calm yourself. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #11708 /* ~"Farewell, then."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 5.0 5.1
  SAY #11672 /* ~"What were ye doin' botherin' me wife?! This ain't no flophouse for whore-chasers... ye'd best leave her alone and leave me home 'fore the dead-book gets a new name innit!"~ */
  IF ~~ THEN REPLY #11709 /* ~"Go ahead and try, if you think you have the strength..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11710 /* ~"*No one* speaks to me that way... take back your words, or this house will become a crypt."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11711 /* ~Show him his Dustman Contract.~ */ GOTO 6
  IF ~~ THEN REPLY #11712 /* ~"Calm yourself. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #11713 /* ~"Farewell, then."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3 1.5 2.1 2.3 5.3 5.5
  SAY #11673 /* ~The man's face turns blood-red, and he begins shouting. "Are ye daft?!" With a snarl, he spits at your feet. "*Ye filthy, scar-ridden dog! Off with ye, or even the powers won't be able ta save yer hide!*"~ */
  IF ~~ THEN REPLY #11714 /* ~"Go ahead and try, if you think you have the strength..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11715 /* ~"Farewell, then."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.6 2.4 3.1 5.6
  SAY #11674 /* ~The man throws a parting shot at your back. "Ye'd best never cross me door again, ye retch-stinkin' bastard."~ */
  IF ~~ THEN REPLY #11716 /* ~"That's it. You've earned your place in a grave..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11717 /* ~Leave without another word.~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY #11675 /* ~You see Angyar - he doesn't look any better than before. As you approach him again, he turns slowly to face you. His face tightens. "Ye again! Didn't ye hear me the FIRST time, ye pox-ridden dog?! Get out of me house, or so help the powers, I'll carve ye where ye stand!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11718 /* ~"I spoke to your wife. I think I can help you with..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11719 /* ~"I spoke to your wife. I think I can help you with..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11720 /* ~"Go ahead and try, if you think you have the strength..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11721 /* ~"*No one* speaks to me that way... take back your words, or this house will become a crypt."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11722 /* ~Show him his Dustman Contract.~ */ GOTO 6
  IF ~~ THEN REPLY #11723 /* ~"Calm yourself. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #11724 /* ~"Farewell, then."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.4 2.2 5.4
  SAY #11676 /* ~As you pull out the contract, the blood drains out of Angyar's face. For a moment he seems at a loss for words, then his temper quickly resurfaces. "Where did ye get that?! By the powers, ye'd best tell me..."~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11725 /* ~"Your wife told me where it was. She was worried about you."~ */ GOTO 7
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11726 /* ~"Your wife told me where it was. She was worried about you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 7
  IF ~~ THEN REPLY #11727 /* ~"I took it from a Dustman named Mortai. It has your name on it."~ */ GOTO 11
  IF ~~ THEN REPLY #11728 /* ~Tear up the contract.~ */ JOURNAL #64584 /* ~I tore up the Dead Contract that was causing Angyar so much misery. He seemed to shed a few years as the bits of paper fell to the floor. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #11677 /* ~Angyar sputters for a moment, then his rage seems to find a focus. "I... I'll *kill* her! I..."~ */
  IF ~~ THEN REPLY #11729 /* ~"You won't *touch* her, if you know what's good for you."~ */ GOTO 8
  IF ~~ THEN REPLY #11730 /* ~"That's your own business, but let's settle matters between us first: What're you going to give me for this contract?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #11731 /* ~"She told me because she was concerned about you... and your first reaction is to *punish* her for caring about you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #11732 /* ~Tear up the contract.~ */ JOURNAL #64584 /* ~I tore up the Dead Contract that was causing Angyar so much misery. He seemed to shed a few years as the bits of paper fell to the floor. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11678 /* ~"Ye *dare*... ye *dare* tell me how ta act... in me *own* home...?" He takes a deep breath, then he explodes. "Get out, damn ye! And take that devil paper with ye!"~ */
  IF ~~ THEN REPLY #11733 /* ~"Why don't you *make* me leave, if you think you have the strength..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11734 /* ~"Hold on! She told me because she was concerned about you... and your first reaction is to *punish* her for caring about you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #11679 /* ~"She went back on her word ta me, her *husband!*" Angyar's hand clenches into a fist, and he glares at you. "I told her ta speak of it ta no one, and here I find she tells the first stranger that comes into me house!" ~ */
  IF ~~ THEN REPLY #11735 /* ~"She broke her promise because she loved you. Laws and vows sometimes have to give way before more important matters." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11736 /* ~"You have a reason to be angry. She should not have made the promise if she had no intention of keeping it. I cannot respect an oath-breaker, but such a thing is now in the past."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Angyar_1","GLOBALLaw",1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11737 /* ~"You have a reason to be angry. She should not have made the promise if she had no intention of keeping it. I cannot respect an oath-breaker, but such a thing is now in the past."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_4","GLOBALLaw",-2)
~ GOTO 10
  IF ~~ THEN REPLY #11738 /* ~"Well, she did, and you'll have to deal with it. There is nothing more to be said."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11680 /* ~Some of the fury seems to flow out of Angyar, and he grunts. "What's done is done..." He glances at you suspiciously, then nods at the contract. "What do ye plan on doin' with that paper, then?"~ */
  IF ~~ THEN REPLY #11741 /* ~Tear up the contract.~ */ JOURNAL #64584 /* ~I tore up the Dead Contract that was causing Angyar so much misery. He seemed to shed a few years as the bits of paper fell to the floor. ~ */ GOTO 12
  IF ~~ THEN REPLY #11739 /* ~"I expect you to pay for it, just as you were paid for it."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY #11681 /* ~Angyar can't seem to take his eyes from the contract. "Why'd ye bring it ta me?" He looks suspicious. "Ta ransom it?"~ */
  IF ~~ THEN REPLY #11740 /* ~Tear up the contract.~ */ JOURNAL #64584 /* ~I tore up the Dead Contract that was causing Angyar so much misery. He seemed to shed a few years as the bits of paper fell to the floor. ~ */ GOTO 12
  IF ~~ THEN REPLY #11742 /* ~"I expect you to pay for it, just as you were paid for it."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.3 7.3 10.0 11.0 14.0
  SAY #11682 /* ~You tear up the parchment, and Angyar's eyes follow the bits of paper as they float to the ground with a desperate look. He shudders slightly, then straightens, as if a great weight was lifted from him. "Ye..." He looks like he is about to thank you, then stops and stares at you suspiciously. "Nothin's free. Not in the Hive, cutter."~ */
  IF ~~ THEN REPLY #11743 /* ~"Consider this free. And expect a lot of rules in the Hive to change while I'm around."~ */ DO ~AddexperienceParty(750)
IncrementGlobalOnceEx("GLOBALGood_Angyar_1","GLOBALGood",2)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 13
  IF ~~ THEN REPLY #11744 /* ~"I might need a favor in the future. Could you help me?"~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 30
  IF ~~ THEN REPLY #11745 /* ~"Well, if you feel the need to pay me, I had some questions..."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 15
  IF ~~ THEN REPLY #11746 /* ~"Then think of a way to pay me... for now, farewell."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11683 /* ~Angyar's angry expression crumbles; he looks tired of fighting his good fortune. "I... I... must have prayed ta the right powers this past half-month." He sighs. "Ye have me thanks, cutter... for whatever that's worth."~ */
  IF ~~ THEN REPLY #11747 /* ~"Actually, perhaps you can help me... I have some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11748 /* ~"Just don't make the same mistake again... I may not be around next time to help you."~ */ EXIT
  IF ~~ THEN REPLY #11749 /* ~"It's worth a great deal to me. Take care, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1 10.1 11.1
  SAY #11684 /* ~"I ransomed me life ta one man already, and I'm not about ta do it again, especially ta a walkin' dead man." He snarls. "Get out of me home, or I'll see ye dead twice!"~ */
  IF ~~ THEN REPLY #11750 /* ~Tear up the contract.~ */ JOURNAL #64584 /* ~I tore up the Dead Contract that was causing Angyar so much misery. He seemed to shed a few years as the bits of paper fell to the floor. ~ */ GOTO 12
  IF ~~ THEN REPLY #11751 /* ~"You want to kill me? Go ahead and try..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11752 /* ~"Very well. I'll just keep this contract close to me... just so you know it's still out there and still due when you die. Farewell, Angyar."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_2","GLOBALGood",-1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.0 16.1 17.3 18.3 19.2 20.1 21.0 22.1 23.3 25.2 26.0 27.0 28.1 29.0 30.0
  SAY #11685 /* ~Angyar nods. "Ask yer questions."~ */
  IF ~~ THEN REPLY #11753 /* ~"Can I ask why you signed the Dustman contract?"~ */ GOTO 22
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11754 /* ~"I'm looking for a man named Pharod. Do you know where I can find him?"~ */ GOTO 16
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11755 /* ~"I've lost a journal of mine. Have you seen one?"~ */ GOTO 29
  IF ~~ THEN REPLY #11756 /* ~"Do you mind if I rest here?"~ */ GOTO 28
  IF ~~ THEN REPLY #11757 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #11686 /* ~Angyar nods. "Aye, that name be known t'me, and not a fond name it is, either."~ */
  IF ~~ THEN REPLY #11758 /* ~"What can you tell me about him?"~ */ GOTO 17
  IF ~~ THEN REPLY #11759 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11760 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11687 /* ~He frowns. "He's one of them Collectors, and one with a long shadow - has quite a few boys at his beck n' call. He may not be lord of the realm, but he's not a smart one ta tangle with, lord or no."~ */
  IF ~~ THEN REPLY #11761 /* ~"Collectors?"~ */ GOTO 18
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11762 /* ~"Do you know where I can find him?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar told me where I could find Pharod; he said that Pharod's got his kip buried *beneath* Ragpicker's Square. He told me there was some kind of "portal" to the gate to Pharod's hideout, and that I would need to be carrying some 'junk' in order to open the portal. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11763 /* ~"Do you know where I can find him?"~ */ JOURNAL #64576 /* ~Angyar told me where I could find Pharod; he said that Pharod's got his kip buried *beneath* Ragpicker's Square. He told me there was some kind of "portal" to the gate to Pharod's hideout, and that I would need to be carrying some 'junk' in order to open the portal. ~ */ GOTO 20
  IF ~~ THEN REPLY #11764 /* ~"I have some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11765 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #11688 /* ~"Human vultures, jackals, hyenas... filthy berks who ain't got a shred of dignity. Most of them have their kip in Ragpicker's Square. Gather the deaders, scuttle everythin' worth jink from the bodies, then sell them back ta the Dusties at the Mortuary."~ */
  IF ~~ THEN REPLY #11766 /* ~"Why do they do that?"~ */ GOTO 19
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11767 /* ~"So Pharod is one of these Collectors? Do you know where I can find him?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar told me where I could find Pharod; he said that Pharod's got his kip buried *beneath* Ragpicker's Square. He told me there was some kind of "portal" to the gate to Pharod's hideout, and that I would need to be carrying some 'junk' in order to open the portal. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11768 /* ~"Where can I find Pharod again?"~ */ JOURNAL #64576 /* ~Angyar told me where I could find Pharod; he said that Pharod's got his kip buried *beneath* Ragpicker's Square. He told me there was some kind of "portal" to the gate to Pharod's hideout, and that I would need to be carrying some 'junk' in order to open the portal. ~ */ GOTO 20
  IF ~~ THEN REPLY #11769 /* ~"I have some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11770 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11689 /* ~"Dusties pay for bodies. Helps them keep the streets clean when the rains aren't enough."~ */
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11771 /* ~"So Pharod is one of these Collectors? Do you know where I can find him?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar told me where I could find Pharod; he said that Pharod's got his kip buried *beneath* Ragpicker's Square. He told me there was some kind of "portal" to the gate to Pharod's hideout, and that I would need to be carrying some 'junk' in order to open the portal. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11772 /* ~"Where can I find Pharod again?"~ */ JOURNAL #64576 /* ~Angyar told me where I could find Pharod; he said that Pharod's got his kip buried *beneath* Ragpicker's Square. He told me there was some kind of "portal" to the gate to Pharod's hideout, and that I would need to be carrying some 'junk' in order to open the portal. ~ */ GOTO 20
  IF ~~ THEN REPLY #11773 /* ~"I have some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11774 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1 17.2 18.1 18.2 19.0 19.1
  SAY #11690 /* ~"Aye, but I wouldn't be doin' ye a favor tellin' it ta ye..." His frown deepens. "One of me kin fell inta his lot a few months back, an spilled some of the dark of ol' Pharod. Ta hear tell, Pharod's actually got his kip buried somewhere *under* Ragpicker's Square. To get to it, there's some kind of portal ye need ta jump through while carryin' some junk in yer hand."~ */
  IF ~~ THEN REPLY #11775 /* ~"Where is Ragpicker's Square?"~ */ GOTO 21
  IF ~~ THEN REPLY #11776 /* ~"I have some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11777 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11691 /* ~"It's a few blocks from here... go straight west from the Mortuary gate, keep goin' until ye start seein' trash and rags piled up everywhere. Ye'd do best ta walk careful there... the Collectors there don't always wait for a body ta die before collectin' on the corpse, ye hear?"~ */
  IF ~~ THEN REPLY #11778 /* ~"I have some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11779 /* ~"Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.0
  SAY #11692 /* ~"Perhaps it's the sheer amount of riches and wealth that surrounds ye that distracted ye..." He snorts. "We have less than nothin', and I needed jink. Didn't seem ta matter too much at the time where it might come from, and sellin' me body ta the Dusties is a lot more honest than most work around here..."~ */
  IF ~~ THEN REPLY #11780 /* ~"What caused you to change your mind?"~ */ GOTO 23
  IF ~~ THEN REPLY #11781 /* ~"I see. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11782 /* ~"I was just curious. Farewell, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11693 /* ~"It's jest..." He sighs. "I saw one of them zombies on the streets a half-month ago... one of them zombies that work for the Dusties, and it stabbed me, in me heart. I knew I'd made a mistake... I didn't want ta be any part of that after death."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #11783 /* ~"Then you shouldn't have signed the contract."~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #11784 /* ~"Then you shouldn't have signed the contract."~ */ GOTO 24
  IF ~~ THEN REPLY #11785 /* ~"We've all had our share of mistakes." ~ */ GOTO 26
  IF ~~ THEN REPLY #11786 /* ~"I see. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11787 /* ~"I was just curious. Farewell, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1 25.0
  SAY #11694 /* ~Angyar turns red. "I don't need any of yer preachings! Damn ye, ye *dare* ta speak ta me on yer high horse in me own home? I didn't ask ye ta get that devil-paper back for me - I owe ye *nothin',* so get! Get out! I don't want ta lay eyes on ye again!"~ */
  IF ~~ THEN REPLY #11788 /* ~"Why don't you make me leave, if you think you have the strength..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11789 /* ~"Farewell, then."~ */ DO ~Enemy()
SetGlobal("Angyar","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #11695 /* ~A prickling sensation crawls along the back of your skull as you are about to speak... you suddenly know for a fact that Angyar isn't likely to accept your preaching peacefully.~ */
  IF ~~ THEN REPLY #11790 /* ~"Then you shouldn't have signed the contract, Angyar."~ */ GOTO 24
  IF ~~ THEN REPLY #11791 /* ~"We've all had our share of mistakes." ~ */ GOTO 26
  IF ~~ THEN REPLY #11792 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11793 /* ~"I was just curious. Farewell, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.1
  SAY #11696 /* ~Angyar grunts. "I suppose so..."~ */
  IF ~~ THEN REPLY #11794 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11795 /* ~"Well, I was just curious. Farewell, Angyar."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11697 /* ~You see Angyar - he looks much better than before; some color has returned to his face, and his eyes have lost their haunted look. As you approach him again, he turns slowly to face you, and he snorts. "Hmmmph... if it isn't the Hive's own saint of sods... sods like meself." He grunts. "What can I do for ye?"~ */
  IF ~~ THEN REPLY #11796 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11797 /* ~"I just wanted to see how you were doing, Angyar. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.3 30.1
  SAY #11698 /* ~Angyar nods. "That's the least I can do. I'll have me wife get some blankets out for ye..."~ */
  IF ~~ THEN REPLY #11798 /* ~"Thanks..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11799 /* ~"I didn't want to rest just yet. I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11800 /* ~"I didn't want to sleep just yet. I may return when I'm ready to rest, though. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY #11699 /* ~Angyar frowns, then shakes his head. "Haven't seen a thing such as that, cutter."~ */
  IF ~~ THEN REPLY #11801 /* ~"Maybe you can answer some other questions for me, then..."~ */ GOTO 15
  IF ~~ THEN REPLY #11802 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 12.1
  SAY #11700 /* ~"I ransomed me life ta one man already, and I'm not about ta do it again." He shakes his head. "We'll settle the debt now."~ */
  IF ~~ THEN REPLY #11803 /* ~"Very well. If you feel the need to pay me, then I could use some questions answered..."~ */ GOTO 15
  IF ~~ THEN REPLY #11804 /* ~"I could use a place to rest."~ */ GOTO 28
  IF ~~ THEN REPLY #11805 /* ~"There's no debt, Angyar - consider this one free. Farewell."~ */ EXIT
END
