// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANDER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6657 /* ~The old man gazes up at you without fear, and says, "So you're the one they're making all the fuss about, eh? Get along, then. I have nothing to say to you."~ */
  IF ~~ THEN REPLY #6668 /* ~Leave.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6669 /* ~The old man blinks at you a time or two, and says, "I can't help you here. You'll have to go with the guards." He turns back to the device he holds in his hands.~ */
  IF ~~ THEN REPLY #6670 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Evil_Xander_1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #6671 /* ~"And do you really think that I'm going to want to help you after you've threatened me? You're a bigger leatherhead than I thought. I want an apology. Now."~ */
  IF ~~ THEN REPLY #6672 /* ~"To the Nine Hells with you, old man."~ */ GOTO 15
  IF ~~ THEN REPLY #6673 /* ~Lie: "I apologize. My temper got the better of me. It won't happen again."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #6674 /* ~"I apologize. My temper got the better of me. It won't happen again."~ */ GOTO 16
  IF ~~ THEN REPLY #6675 /* ~"No. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 15 even though they appear after this state */
~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #6676 /* ~"The gears are out of true, friend. I suppose since that Bedai-Lihn berk is dead that I'll have to give you the hints you need to fix it. Now, here's how you do it..." He begins to spill information. You're not sure if you caught it all.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #6677 /* ~"I think I got that. In other words, I just remove the primary cog, clean it with grease, sharpen the dull teeth, and replace it?"~ */ DO ~SetGlobal("GearRepair","GLOBAL",4)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #6678 /* ~"I think I got that... what was the part about the primary motivational unit's ...no, wait. I didn't get that at all."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #6679 /* ~"Sure enough. Now can I continue with my design, or are you going to pester me with other questions?"~ */
  IF ~~ THEN REPLY #6680 /* ~"Well, actually, I'm going to ask you some more questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6681 /* ~"No, that was all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #6682 /* ~"It's clear you're not going to be able to fix this thing. I suppose I'll have to go ahead and do it myself." He grunts and heaves himself to his feet. "Some berks make it too hard on us greybeards," he mutters.~ */
  IF ~~ THEN REPLY #6683 /* ~"Before you go, I wanted to ask you some more questions."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 27
  IF ~~ THEN REPLY #6684 /* ~"Yeah, well, some of us have other skills. Berk."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",4)
~ THEN BEGIN 6 // from: 12.2
  SAY #6685 /* ~"Any time you're ready for the dream key, scarred man, give the word and I'll pass it to you."~ */
  IF ~~ THEN REPLY #6686 /* ~"Give me the key."~ */ GOTO 7
  IF ~~ THEN REPLY #6687 /* ~"No. Not yet. Answer some other questions for me."~ */ GOTO 27
  IF ~~ THEN REPLY #6688 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6689 /* ~He pauses, as if gathering errant thoughts. "Close your eyes and stretch out your hand," he says. "You have to feel this key before you see it or it won't function."~ */
  IF ~~ THEN REPLY #6690 /* ~Do as he says.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6691 /* ~Peek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 11.0
  SAY #6692 /* ~You feel a touch in the palm of your calloused hand. At first you can barely feel it, but it rapidly grows in solidity in moments, until you finally hear Xander's voice. "Open your eyes." When you do, you see a simple black feather in the palm of your hand. "My work is finished." Xander nods. "Use that key on the leftmost door of the Foundry and the Dreambuilder will open to you. I must go now... I have work to attend to."~ */
  IF ~~ THEN REPLY #6693 /* ~"A feather? All that work for a feather?"~ */ JOURNAL #68034 /* ~I finally finished that damnable Dreambuilder quest. What I received for it was... a feather. This is supposed to be the key that unlocks the door to the dreams. I hope that it'll be worth the trouble.~ */ GOTO 10
  IF ~~ THEN REPLY #6695 /* ~"My thanks, Xander. Farewell."~ */ DO ~EscapeArea()
~ JOURNAL #68034 /* ~I finally finished that damnable Dreambuilder quest. What I received for it was... a feather. This is supposed to be the key that unlocks the door to the dreams. I hope that it'll be worth the trouble.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #6696 /* ~You peer through a slit in your eyes as Xander concentrates for a moment and holds his hand in the air above yours. Nothing happens. Xander opens his eyes, gazes upon your empty hand, and explodes. "I said to close your eyes, berk! This ain't a game! Do you think I've enjoyed wasting my life for your stupid contraption? Do you think I want to feel your doubt in my work? Close your eyes, berk, and keep them closed, or you'll not be getting the key!"~ */
  IF ~~ THEN REPLY #6697 /* ~"Give me the key, old man. Now."~ */ GOTO 11
  IF ~~ THEN REPLY #6698 /* ~Do as he says.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6699 /* ~"Forget it. I have better things to do than wait on a barmy's ravings." Leave.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #6700 /* ~"It's the final safeguard on the Dreambuilder, sod. D'ya think I'd want just anyone waltzing in? I ain't stupid. Do you want something else or can I get back to work now?"~ */
  IF ~~ THEN REPLY #6702 /* ~"Go back to work."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #6703 /* ~"Go back to work, with my thanks."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #6704 /* ~He turns bright red as he contains a flood of expletives. He releases a breath and says, in a tone of controlled fury, "Berk, the key is locked away in belief. Either you trust me and close your eyes, or you don't, and never find your dreams. Your choice. Friend."~ */
  IF ~~ THEN REPLY #6705 /* ~Do as he says.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
~ GOTO 8
  IF ~~ THEN REPLY #6706 /* ~"Forget it. I have better things to do than wait on a barmy's ravings."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",3)
~ THEN BEGIN 12 // from: 19.2
  SAY #6707 /* ~"I need just one more item from you, and we can begin the final process of the Dreambuilder. I need a pillow that has lain inside a coffin - it will stimulate a sleep so profound that you may as well be dead. It opens your mind to the emanations of the Dreambuilder. It is, if I say so myself, a touch of inspiration on my part."~ */
  IF ~  !PartyHasItem("DrmPllw")
~ THEN REPLY #6708 /* ~"A coffin pillow, eh? You'll have it. First, answer a few more questions for me."~ */ GOTO 27
  IF ~~ THEN REPLY #6709 /* ~"I don't think I really want to continue fetching these items for you."~ */ GOTO 13
  IF ~  PartyHasItem("DrmPllw")
~ THEN REPLY #6710 /* ~"I have the pillow for you. Let's get on with it."~ */ DO ~TakePartyItemNum("DrmPllw",1)
SetGlobal("Dream","GLOBAL",4)
~ JOURNAL #68035 /* ~I retrieved the coffin pillow from Hamrys for Xander. I wonder what errand he'll have me run next.~ */ GOTO 6
  IF ~~ THEN REPLY #6711 /* ~"I'll get it."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 19.1 21.1
  SAY #6712 /* ~"You don't, eh? Then maybe you ought to remember that you're fetching these items for a design YOU funded, for a project YOU wanted created in the first place, for a device so impractical that the solution to it consumed the lives of four generations of my family, all for YOU. If you want to see this project complete, you'll finish the final stages and stop your endless whining."~ */
  IF ~~ THEN REPLY #6713 /* ~"Old man, don't take that tone of voice with me or you'll find they're the last words you utter."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Xander_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #6714 /* ~"Fine. All right. I'll do it. Just stop yelling at me."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6715 /* ~"You'd throw away all that time and effort? You'd lose your dreams because you don't like it when someone calls you stupid? You're a leatherhead, all right, if you think you could finish this project without my knowledge. And you're an even bigger leatherhead to think that a pert tongue is worth a death sentence. Do you really think that you can solve your problems by threatening everything that gets in your way? The planes don't work that way, my scarrish friend."~ */
  IF ~~ THEN REPLY #6716 /* ~"I've killed for less."~ */ GOTO 16
  IF ~~ THEN REPLY #6717 /* ~"I am going to leave now. Before I make a mistake we'll both regret."~ */ EXIT
END

IF WEIGHT #2 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 15 // from: 2.0
  SAY #6718 /* ~"Pike it, sod. You will never recover your dreams. Your precious Dreambuilder is defunct."~ */
  IF ~~ THEN REPLY #6719 /* ~Done.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.1 2.2 14.0
  SAY #6720 /* ~"I'm sure you have, you brainless sod. Your stupid tough-basher pose is the final straw. You and your Dreambuilder both can go straight to the Abyss." He looks as though he is ready to summon the guards.~ */
  IF ~  CheckStatGT(Protagonist,13,DEX)
~ THEN REPLY #6721 /* ~Snap his neck before he can finish.~ */ DO ~Kill(Myself)
PlaySoundNotRanged("SPE_11")
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #6722 /* ~Snap his neck before he can finish.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #6723 /* ~Flee.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #6724 /* ~Your hands blur as you wrap them around the old engineer's neck. You snap it like a twig, and he dies, gape-eyed, at your feet. You've certainly shown him. Unfortunately, you've also shown all the other people present in the Hall. The alarm is raised.~ */
  IF ~~ THEN REPLY #6725 /* ~"All right, then."~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #6726 /* ~He nimbly dodges your outstretched hands and bellows for the guards.~ */
  IF ~~ THEN REPLY #6727 /* ~"Damn."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #7 ~  Global("Dream","GLOBAL",2)
~ THEN BEGIN 19 // from: 21.0
  SAY #6728 /* ~"The machine requires a birdcage, adorned with razors, fine-wrought, to mimic the destructive power of dreams, and their ability to capture our hearts and imaginations. Search in the Siege Tower for a cage I have commissioned."~ */
  IF ~~ THEN REPLY #6729 /* ~"How do I get in there?"~ */ GOTO 20
  IF ~~ THEN REPLY #6749 /* ~"I don't know that I want to fetch these items for you."~ */ GOTO 13
  IF ~  PartyHasItem("DrmCage")
~ THEN REPLY #6865 /* ~"I've got it right here. Now give me my dreams."~ */ DO ~TakePartyItemNum("DrmCage",1)
SetGlobal("Dream","GLOBAL",3)
~ JOURNAL #68036 /* ~After I fetched the razor-crusted birdcage, Xander told me to get a pillow from a coffin, to mimic the sleep of the dead.~ */ GOTO 12
  IF ~~ THEN REPLY #6866 /* ~"A cage. How prosaic. Very well. Answer me some questions, first."~ */ GOTO 27
  IF ~~ THEN REPLY #6868 /* ~"A cage with razors. I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #6751 /* ~"You have proven yourself to be resourceful. Find a way."~ */
  IF ~~ THEN REPLY #6752 /* ~"Fine. Then answer me some other questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6753 /* ~"I will. You'll see me again."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Dream","GLOBAL",1)
~ THEN BEGIN 21 // from: 24.0 26.0 28.1 29.1 30.0
  SAY #6754 /* ~"What I need to begin the final stages of the Dreambuilder is a piece of your skin immersed in your blood, so the machine can familiarize itself with your physical essence. It must be in a blue-green bottle, to symbolize the dream sea on which you will float."~ */
  IF ~  PartyHasItem("DrmVial")
~ THEN REPLY #6755 /* ~"I've got it right here. Take it. Show me my dreams."~ */ DO ~TakePartyItemNum("DrmVial",1)
SetGlobal("Dream","GLOBAL",2)
~ JOURNAL #68037 /* ~I brought back a vial of flesh and blood for Xander and his... my... Dreambuilder. He next demanded a birdcage crusted with razors.~ */ GOTO 19
  IF ~~ THEN REPLY #6756 /* ~"I don't know that I want to fetch that for you."~ */ GOTO 13
  IF ~~ THEN REPLY #6757 /* ~"Flesh and blood, hm? I've given enough of that lately. Answer a question for me, first."~ */ GOTO 27
  IF ~~ THEN REPLY #6758 /* ~"Just answer me a question or two, will you? I'm not interested in your Dreambuilder."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 22
  IF ~~ THEN REPLY #6759 /* ~"Flesh, blood, bottle. Right. I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.3 33.1
  SAY #6760 /* ~Xander looks as if you have struck him in the gut... hard. "You are not interested? But... it has taken four generations of my family... my great-grandfather said you seemed so anxious... he had this scroll..."~ */
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #6761 /* ~"Your great-grandfather? What? Tell me what you know about me."~ */ GOTO 23
  IF ~~ THEN REPLY #6762 /* ~"No. I'm not interested. Just answer some questions for me."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,0,0)
~ GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #6763 /* ~"You came to my great-grandfather Xero and told him that you could not dream. You said you wished to dream again. You offered him a tremendous sum of money to build a machine that'd recover the dreams you'd lost. You said you'd come back within a few years to speak to him again, but never did."

You can feel a memory coming on.~ */
  IF ~~ THEN REPLY #6764 /* ~Repress it.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #6765 /* ~Accept it.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #6766 /* ~Accept it.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #6767 /* ~By force of will, you keep the memory from filling your head.

"The work on the machine continued when Xero died. My grandmother Nula took the studies in a more esoteric vein, using herbs and mosaic stones to create magical patterns that would summon fragments of dream from the Astral and Ethereal Planes. My uncle went a step further, obtaining both fiendish and celestial aid in constructing the device. As for me... I have created the rituals that will unlock its potential... and then you can have your dreams back."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6768 /* ~"All right. You've convinced me. What do I need to do to regain my dreams?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6769 /* ~"It's not something I want now. Just answer some other questions for me."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6770 /* ~"Interesting. Perhaps I'll speak to you about this again. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.2
  SAY #6772 /* ~The memory of the young artificer Xeno Xander overwhelms the words of his descendant, and you recall the brash young wizard showing off a spell of his own creation. "I call it 'Pacify'." The young Xeno smiles as the two of you watch magical particles settle gently around you - and you feel a great peace in your heart. "Effective." You hear your voice in your mind. "Let's just hope you can work as well with this dream constructor."

Nihl Xander pauses in his telling. "Are you listening to me?"~ */
  IF ~~ THEN REPLY #6773 /* ~"What? Of course. Could you repeat that?"~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ GOTO 26
  IF ~~ THEN REPLY #6774 /* ~"No, I'm not. Farewell."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #6775 /* ~He looks a little irritated, but swallows it. "The work on the machine continued when Xero died. My grandmother Nula took the studies in a more esoteric vein, using herbs and mosaic stones to create magical patterns that would summon fragments of dream from the Astral and Ethereal Planes. My uncle went a step further, obtaining both fiendish and celestial aid in constructing the device. As for me... I have created the rituals that will unlock its potential... and then you can have your dreams back."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6776 /* ~"All right. You've convinced me. What do I need to do to regain my dreams?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6777 /* ~"It's not something I want now. Just answer some other questions for me."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6778 /* ~"Interesting. Perhaps I'll speak to you about this again. Farewell."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 4.0 5.0 6.1 12.0 19.3 20.0 21.2 22.1 24.1 26.1 28.2 29.2 30.1 31.0 32.0 33.2 34.0 35.1 36.0 38.0
  SAY #6779 /* ~A small frown of concentration creases his already-wrinkled forehead. "What would you like to know?"~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6780 /* ~"You mentioned a Dreambuilder before. Tell me more about that now."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6781 /* ~"Tell me what you know about the murder of the smith."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
~ THEN REPLY #6782 /* ~"I've been asked to fix those gears in the Foundry. Can you tell me how?"~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6785 /* ~"Who are you?"~ */ GOTO 33
  IF ~~ THEN REPLY #6787 /* ~"What can you tell me about the Godsmen?"~ */ GOTO 35
  IF ~~ THEN REPLY #6788 /* ~"Tell me about your coworkers."~ */ GOTO 34
  IF ~~ THEN REPLY #6789 /* ~"What do you do here?"~ */ GOTO 39
  IF ~  GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #8742 /* ~"Nothing right now. Farewell."~ */ EXIT
  IF ~  Global("Dream","GLOBAL",5)
~ THEN REPLY #66567 /* ~"Nothing right now. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 33.0
  SAY #6791 /* ~"It is both machine and ritual. It is a state of mind and a construct of steam and blood. It grants dreams to those who enter its confines. It was built for you, and it's waiting for you. Are you ready to finish it off? It has been waiting for you for decades."~ */
  IF ~~ THEN REPLY #6792 /* ~"How do you know it was built for me?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6793 /* ~"Yes."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6795 /* ~"No. Maybe I'll get back to it. Answer some other questions."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6796 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #6798 /* ~"Because my great-grandfather, Xeno Xander, set your face in stone so that we would know you when you returned for the work you commissioned. He always thought you'd return, but no one else truly believed you would. Our family completed it because we said we would... and now, here you are."~ */
  IF ~~ THEN REPLY #6799 /* ~"Do you still have this stone?"~ */ GOTO 30
  IF ~~ THEN REPLY #6801 /* ~"I must have had a reason for it, then. Let's finish it."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6802 /* ~"I'm not interested. Answer me a different question."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #6803 /* ~"No. It was stolen from me a year ago. I saw only a shadow flitting away. It was the only item taken from my home. I have no idea who'd take it, but I'd memorized the features."~ */
  IF ~~ THEN REPLY #6804 /* ~"All right. Let's finish the Dreambuilder."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6805 /* ~"I'm not interested in this right now. I'd like to ask some other questions, though."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6806 /* ~"I'm not interested in the Dreambuilder. Maybe later. Farewell."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 37.1 37.2
  SAY #6808 /* ~"Go talk to Bedai-Lihn. She'll know. She concerns herself with the trivialities of this place. She's not a real dreamer. She pays attention to what makes this place tick. She doesn't design."~ */
  IF ~~ THEN REPLY #6809 /* ~"All right, I will. I had some more questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6810 /* ~"All right, I'll do that right now."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.1 37.0
  SAY #6812 /* ~"What I know is nothing. I've been here working on my construct and concentrating on my work. I haven't paid attention to what the workers do - they do their job and I do mine."~ */
  IF ~~ THEN REPLY #6816 /* ~"I... see. Answer some other questions, then."~ */ GOTO 27
  IF ~~ THEN REPLY #6817 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 27.3 37.3
  SAY #6819 /* ~"I am Nihl Xander, great-grandson of the artificer Xero Xander, engineer, dreamer, creator. And I have finished his work - the work that you commissioned - the Dreambuilder! Are you ready to claim the use of it now?" ~ */
  IF ~~ THEN REPLY #6820 /* ~"A Dreambuilder? What's that?"~ */ GOTO 28
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6821 /* ~"No. I have other questions for you."~ */ GOTO 22
  IF ~  GlobalGT("Dream","GLOBAL",0)
~ THEN REPLY #6823 /* ~"No. I have other questions for you."~ */ GOTO 27
  IF ~~ THEN REPLY #6824 /* ~"No."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.5 37.5 40.0
  SAY #6827 /* ~"Bah. They do not possess a true fire. They speak of creation, and they boast of their potentials, but they do not create anything beyond the mundane. Their imaginations are poor, limited, obsessed with the small details. A true dreamer, I say, creates a grand scheme and then concentrates on the details. Starting with details is for the ants of the imagination... the small insects who aspire only to be fed."~ */
  IF ~~ THEN REPLY #6829 /* ~"That's very charitable of you. Answer some other questions for me, if you would."~ */ GOTO 27
  IF ~~ THEN REPLY #6830 /* ~"I see... With that insight, I must be off. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.4 37.4
  SAY #6831 /* ~He sighs, and collects himself. "That's a long subject. Let's get started on it. Now, all creatures want something, don't they? They create, they build, they tear down, they dream, they fight, they fornicate... they do all these things because they want something beyond what they have. Even on the basest level of existence, every iota strives to be something greater. Some achieve this. Some fall by the wayside." ~ */
  IF ~~ THEN REPLY #6832 /* ~"Go on."~ */ GOTO 41
  IF ~~ THEN REPLY #6833 /* ~"Forget it. I'd rather ask you some other questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6834 /* ~"On the other hand, forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 41.0
  SAY #6836 /* ~"Factor Keldor's right up there on the dais. Talk to him. Or else find that suicidal berk Sandoz and talk to him. Are you done pestering me yet?"~ */
  IF ~~ THEN REPLY #6837 /* ~"Not yet."~ */ GOTO 27
  IF ~~ THEN REPLY #6838 /* ~"Yes. Farewell."~ */ EXIT
END

IF WEIGHT #10 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from: 39.1 40.1 41.1
  SAY #6839 /* ~You see a bushy-haired man, clad in the height of fashion - if you consider fashion to have died fifty years ago. His clothing seems to consist of tattered street urchin rags, and he seem to affect a disdainful manner toward those around him - or that might be his actual manner. He doesn't even glance at you until you speak to him, and then his eyes begin searching your face carefully. "D'ya want something?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6841 /* ~"Tell me what you know about the murder of the smith."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
~ THEN REPLY #6842 /* ~"I've been asked to fix those gears in the Foundry. Can you tell me how?"~ */ GOTO 31
  IF ~  Global("GearRepair","GLOBAL",2)
!Dead("Bedai")
~ THEN REPLY #6843 /* ~"I've been asked to fix those gears in the Foundry. Can you tell me how?"~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6846 /* ~"Who are you?"~ */ GOTO 33
  IF ~~ THEN REPLY #6847 /* ~"What can you tell me about the Godsmen?"~ */ GOTO 35
  IF ~~ THEN REPLY #6849 /* ~"Tell me about your coworkers."~ */ GOTO 34
  IF ~~ THEN REPLY #6850 /* ~"What do you do here?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6852 /* ~He explodes: "I can help her by steering her clear! Immortality is one of the greatest curses of the human imagination - every berk thinks they want it, and none of them bargain for what they get. It's a fool's gift, and only a fool'd take it!" He resumes in a calmer tone. "And besides, I still haven't found a way to do it with my machines yet."~ */
  IF ~~ THEN REPLY #6853 /* ~"I see. Answer some other questions, then."~ */ GOTO 27
  IF ~~ THEN REPLY #6854 /* ~"I see. That's no help to me, however. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.6 37.6
  SAY #8743 /* ~"What do I do? I am the engineer of all engineers. I studied under the tanar'ri smith Kazan, who tempered words on a forge of hate, quenched them in a trough of despair, and sent them forth to slaughter stupidity. Elements of phrases, caustic words, were brought to him, and he created weapons of terrifying magnitudes - weapons that would lay an enemy low and destroy the malformed ideas of others. I'm sure you've seen his work."~ */
  IF ~~ THEN REPLY #8756 /* ~"So you create evil weapons here?"~ */ GOTO 40
  IF ~~ THEN REPLY #8758 /* ~"I'm sure I have. Answer some other questions for me."~ */ GOTO 37
  IF ~~ THEN REPLY #8759 /* ~"Yes, I must have. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8747 /* ~"Not at all! My forge is not built on hate, but on understanding. I have also studied under the archon artisan Terasaphirea, who created the healing touch of a gentle thought, ideas that would still any fiendish, spitting heart. He worked his will with love and devotion. My work blends theirs, as all mortal psyches blend elements of the demonic and the sublime."~ */
  IF ~~ THEN REPLY #8761 /* ~"Are your co-workers as well trained as you?"~ */ GOTO 34
  IF ~~ THEN REPLY #8762 /* ~"Fascinating! Can I ask you some other questions?"~ */ GOTO 37
  IF ~~ THEN REPLY #8764 /* ~"I'll have to think on this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.0
  SAY #8748 /* ~"Every decision, every action, every reaction, these all create a base on which something else builds. Seems obvious, then, that our current exalted state of being is building a base for ourselves for something greater. What is that, if not godhood? That's the way I've always justified it, and frankly, I ain't in the mood for philosophical discussion. You want that, find a factor or something."~ */
  IF ~~ THEN REPLY #8765 /* ~"Where can I find a factor?"~ */ GOTO 36
  IF ~~ THEN REPLY #8766 /* ~"I see. Answer some other questions for me, will you?"~ */ GOTO 37
  IF ~~ THEN REPLY #8767 /* ~"I see. Farewell."~ */ EXIT
END
