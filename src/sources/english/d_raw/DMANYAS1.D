// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANYAS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANYAS1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 15 14 12 11 9 25 24 8 7 13 even though they appear after this state */
~  Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2955 /* ~You are staggered by the sound of hundreds of voices speaking as one into your mind- there is a depth and insistence to the communication that beggars speech. "SPEAK YOUR PURPOSE HERE, BIPED, AND SPEAK SWIFTLY AND TRUE. YOU ARE IN THE HALLS OF MANY-AS-ONE. YOU WILL NOT LEAVE BUT BY OUR GRACE. KNOW THAT WE CAN READ YOUR MIND AND SMELL YOUR LIES."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #2956 /* ~"Who are you?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38655 /* ~"Who are you?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38656 /* ~"Who are you?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38657 /* ~"Who are you?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38658 /* ~"What is this place?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38659 /* ~"What is this place?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38660 /* ~"What is this place?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38661 /* ~"What is this place?"~ */ GOTO 4
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38662 /* ~"I thought you might like to know this: The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38663 /* ~"I thought you might like to know this: The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38664 /* ~Bluff: "I thought you might like to know this: The Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38665 /* ~"I came to see you, Many-as-One."~ */ GOTO 27
  IF ~~ THEN REPLY #38666 /* ~"I came here by accident."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38667 /* ~"If you can read my mind, why do I have to speak my purpose?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.4
  SAY #38668 /* ~"WE ARE THE EYES IN THE DARK PLACES. WE ARE THE MANY WHO THINK AS ONE. WE DO NOT ANSWER YOUR QUESTIONS. YOU WILL ANSWER OURS. WHAT ARE YOU DOING IN THIS PLACE, SO FAR FROM THE LIGHTED CORRIDORS OF HUMANKIND?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 188
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.5
  SAY #38669 /* ~"WE ARE THE EYES IN THE DARK PLACES. WE ARE THE MANY WHO THINK AS ONE. WE DO NOT ANSWER YOUR QUESTIONS. YOU WILL ANSWER OURS. WHAT ARE YOU DOING IN THIS PLACE, SO FAR FROM THE LIGHTED CORRIDORS OF HUMANKIND?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 3 // from: 0.2 0.6
  SAY #38670 /* ~"WE ARE THE EYES IN THE DARK PLACES. WE ARE THE MANY WHO THINK AS ONE. WE DO NOT ANSWER YOUR QUESTIONS. YOU WILL ANSWER OURS. WHAT ARE YOU DOING IN THIS PLACE, SO FAR FROM THE LIGHTED CORRIDORS OF HUMANKIND?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 189
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.7
  SAY #38671 /* ~"WE ARE THE EYES IN THE DARK PLACES. WE ARE THE MANY WHO THINK AS ONE. WE DO NOT ANSWER YOUR QUESTIONS. YOU WILL ANSWER OURS. SPEAK YOUR MIND AND REMEMBER THAT WE CAN HEAR YOUR LIES. WHAT ARE YOU DOING IN THIS PLACE, SO FAR FROM THE LIGHTED CORRIDORS OF HUMANKIND?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38672 /* ~"I thought you might like to know this: The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38673 /* ~"I thought you might like to know this: The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38674 /* ~Bluff: "I thought you might like to know that the Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38675 /* ~"I came to see you, Many-as-One."~ */ GOTO 27
  IF ~~ THEN REPLY #38676 /* ~"I came here by accident."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38677 /* ~"If you can read my mind, why do I have to speak my purpose?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 5 // from:
  SAY #38678 /* ~The voices in your head, though they possess no sound, are nearly deafening. "WE COMMAND THOSE WITH YOU TO SILENCE. YOU ARE IN THE WARRENS OF THOUGHT. MANY-AS-ONE REIGNS SUPREME. SPEAK YOUR MIND AND REMEMBER THAT WE CAN HEAR YOUR LIES. WHAT DO YOU WANT IN THE LIGHTLESS TUNNELS?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38679 /* ~"I thought you might like to know that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38680 /* ~"I thought you might like to know this: The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38681 /* ~Bluff: "I thought you might like to know that the Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38682 /* ~"I came to see you, Many-as-One."~ */ GOTO 27
  IF ~~ THEN REPLY #38683 /* ~"I came here by accident."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38684 /* ~"If you can read my mind, why do I have to speak my purpose?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 6 // from: 0.8 0.9 4.0 4.1 5.0 5.1 8.0 8.1
  SAY #38685 /* ~"CONSIDER THE DEAD TO BE DEAD. THEIR IMPOTENT KING CAN NO LONGER STAND IN OUR WAY. YOU HAVE SHOWN YOURSELF USEFUL. FOR THIS INFORMATION, WE BREAK DOWN THE BARRIER OF YOUR MIND AND REVEAL YOU TO YOURSELF. PREPARE YOURSELF FOR REVELATION."~ */
  IF ~~ THEN REPLY #38686 /* ~"Wait! Not yet!"~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~I have informed Many-as-One that the Silent King is merely a dead skeleton without power. The rats have promised to take over the catacombs under Sigil now.~ */ GOTO 16
  IF ~~ THEN REPLY #38687 /* ~"I'm ready."~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~I have informed Many-as-One that the Silent King is merely a dead skeleton without power. The rats have promised to take over the catacombs under Sigil now.~ */ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #38690 /* ~"YOU DARE SHOW YOUR FACE HERE AGAIN? BIPED, YOU ARE RASH. PREPARE YOURSELF."~ */
  IF ~~ THEN REPLY #38691 /* ~Fight.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("CR_Vic","GLOBAL",0)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 8 // from: 35.9 36.7 37.7 40.2
  SAY #38692 /* ~"TELL US WHAT YOU KNOW, BIPED."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38693 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38694 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38695 /* ~Bluff: "The Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38696 /* ~"I have nothing yet."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66547 /* ~"The ghouls have gone wild and swept across the Dead Nations."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #5 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Ghoul_Attack","GLOBAL",1)
Global("Ghoul_Attack","GLOBAL",1)
GlobalGT("CR_Vic","GLOBAL",0)
!Global("CR_Vic","GLOBAL",2)
GlobalLT("CR_Vic","GLOBAL",5)
~ THEN BEGIN 9 // from: 8.4 24.4 25.4
  SAY #38697 /* ~"THE GHOULS ARE TOO POWERFUL EVEN FOR MY WERERAT MINIONS. YOUR MISSION HAS FAILED. WE NEED YOUR SERVICES NO LONGER. LEAVE NOW, OR SUFFER THE CONSEQUENCES."~ */
  IF ~~ THEN REPLY #38698 /* ~"What, you're just going to discard me like that?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #38699 /* ~"Farewell, then."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("Mao_warn","GLOBAL",1)
~ JOURNAL #38207 /* ~The ghouls have swept across the Dead Nations, and that makes it difficult for the cranium rats to establish a foothold there. They have banished me from their presence, warning of dire consequences should I return.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 12.0 14.0 26.0
  SAY #38789 /* ~"YES. IF WE DO NOT HAVE TO EXPEND OUR MIGHT ON THE SILENT KING, WE HAVE MORE THAN ENOUGH TO SPARE TO CRUSH YOUR FRAGILE EGO. GO. DO NOT RETURN."~ */
  IF ~~ THEN REPLY #38859 /* ~"No."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38860 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #38790 /* ~"YOU HAVE BEEN WARNED, BIPED. PREPARE YOUR MIND FOR THE ETERNAL BOUNDARY."~ */
  IF ~~ THEN REPLY #38861 /* ~"We can work this out!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38862 /* ~Fight.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",5)
~ THEN BEGIN 12 // from:
  SAY #38791 /* ~"THE VOICE OF MANY HAS GIVEN WORDS TO YOUR ERRAND. THE SILENT KING IS TOO POWERFUL, YOU SAY. WE SEE NO LIE IN YOUR HEART. LEAVE THE WARRENS OF THOUGHT WITH YOUR LIFE AS A GIFT FROM US. YOU HAVE SERVED YOUR PURPOSE."~ */
  IF ~~ THEN REPLY #38863 /* ~"Are you just going to discard me like that?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~I have told Many-as-One that the Silent King is too powerful for him to approach. The cranium rat hive-mind did not see falsehood in my words, but it forbade me from returning to the Warrens of Thought on pain of death. We'll see about that.~ */ GOTO 10
  IF ~~ THEN REPLY #38864 /* ~"Very well. Farewell."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~I have told Many-as-One that the Silent King is too powerful for him to approach. The cranium rat hive-mind did not see falsehood in my words, but it forbade me from returning to the Warrens of Thought on pain of death. We'll see about that.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("MAO_Warn","GLOBAL",0)
GlobalLT("MAO_Warn","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #38792 /* ~"YOU HAVE BEEN WARNED, BIPED. PREPARE YOUR MIND FOR THE ETERNAL BOUNDARY."~ */
  IF ~~ THEN REPLY #38865 /* ~"We can work this out!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38866 /* ~Fight.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 14 // from:
  SAY #38793 /* ~"THE MIND OF VOICE-OF-MANY REVEALS YOUR SECRETS. WE KNOW THE TRUTH OF THE SILENT KING NOW. WE ARE GRATEFUL FOR THIS INFORMATION..." The voice in your head becomes more ominous, and continues, "... AND SO WE SHALL NOT AVENGE THOSE OF US YOU HAVE SLAIN. YOU WILL LEAVE NOW, AND NEVER RETURN TO THE WARRENS OF THOUGHT. GO, BIPED. YOUR USEFULNESS IS AT AN END."~ */
  IF ~~ THEN REPLY #38867 /* ~"You're just going to discard me like that? After all I've done for you?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~I have told Many-as-One that the Silent King is not a threat, and because I have killed a cranium rat or two, was rewarded with my life and no more. Rats. I hate rats.~ */ GOTO 10
  IF ~~ THEN REPLY #38868 /* ~"Very well. Farewell."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~I have told Many-as-One that the Silent King is not a threat, and because I have killed a cranium rat or two, was rewarded with my life and no more. Rats. I hate rats.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #38794 /* ~"THE MIND OF VOICE-OF-MANY REVEALS YOUR SECRETS. WE KNOW THE TRUTH OF THE SILENT KING NOW. YOU HAVE PROVEN YOURSELF USEFUL. WE SHALL BREAK THE BARRIERS OF YOUR MIND AND REVEAL YOU TO YOURSELF."~ */
  IF ~~ THEN REPLY #38875 /* ~"Wait! Not yet!"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
  IF ~~ THEN REPLY #38876 /* ~"I'm ready."~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.1 15.0 15.1 59.0
  SAY #38795 /* ~You feel a pressure building in your head, as if thousands of tiny, squirming bodies were pushing against a wall in your mind. Instinctively you resist, but after an eternity, the pressure grows too great and a wave of black memory crashes through your defenses.~ */
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #67715 /* ~Give in.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #67718 /* ~Give in.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,2000)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38796 /* ~You are sprinting through a city made entirely of chains - buildings, streets, sewers and plumbing are all linked metal strands. The blood-dark sky above you shimmers evilly as you jingle your way across a tightly-woven web of blackened silver. You glance over your shoulder, hoping you've thrown off your pursuit, and spy nothing. You face forward...~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #38880 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 18
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #38881 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 20
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #38882 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #38797 /* ~...and standing silently in front of you is a creature wrapped in chains from head to toe, grinning maniacally under its mask. A chain snakes out from its outstretched hand and wraps around your ankle. Another bursts from the wall to your left, scarring your wrist. You snatch it from the air, and with a practiced loop, throw it around the neck of your enemy. You yank the chain tight and hear the sharp snap of the creature's spine... moments before a cackling horde of similar monsters pour a jangling web of chains over your body. You jerk yourself free of the memory.~ */
  IF ~~ THEN REPLY #38883 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0
  SAY #38798 /* ~"YOU HAVE HAD YOUR ANSWERS." The massive voice seems oddly strained from its effort. "OUR BUSINESS HAS CONCLUDED. WE NEED HAVE NO FURTHER CONTACT. IF YOU RETURN HERE, WE WILL DESTROY YOU."~ */
  IF ~~ THEN REPLY #38884 /* ~"Farewell, then."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #38799 /* ~...and standing silently in front of you is a creature wrapped in chains from head to toe, grinning maniacally under its mask. A chain snakes out from its outstretched hand and wraps around your ankle. Another bursts from the wall to your left, scarring your wrist. You twist yourself free of the chain around your leg, and duck another, your movement seemingly without pattern but avoiding a host of chains the creature sends at you. In less time than it takes to recall it, you have twisted your way to the monster and driven your thumbs into its eyes, piercing its brain. The body hangs from your hands... and a cackling horde of its fellows pour a jangling web of chains over your body. You jerk yourself free of the memory.~ */
  IF ~~ THEN REPLY #38886 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY #38800 /* ~...and standing silently in front of you is a creature wrapped in chains from head to toe, grinning maniacally under its mask. A chain dances from its outstretched hand, coming for your throat - you stop it in its tracks with a wave of fire that turns it to slag and sends its owner melting, screaming, and burning into the night. You stare after it for a moment, and then hear a crowd of its fellows tittering behind you. They cast a jangling web of chains across your body, and all goes black. You tear yourself out of the memory.~ */
  IF ~~ THEN REPLY #38887 /* ~(continue)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF WEIGHT #11 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #38801 /* ~A voice that sounds like thousands speaking at once, like squirming and scales, resounds in your head. Incredible anger - and a sense of bare restraint - throbs under the surface, a current of rage. "MURDERER. SPEAK YOUR PURPOSE HERE." ~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38890 /* ~"Who are you?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38891 /* ~"Who are you?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38892 /* ~"Who are you?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38893 /* ~"Who are you?"~ */ GOTO 56
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38894 /* ~"What is this place?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38895 /* ~"What is this place?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38896 /* ~"What is this place?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38897 /* ~"What is this place?"~ */ GOTO 57
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38898 /* ~"I thought you might like to know this: The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38899 /* ~"I thought you might like to know this: The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #38900 /* ~"Why do you call me 'murderer'?"~ */ GOTO 60
  IF ~~ THEN REPLY #38901 /* ~"I have no purpose here. I was just leaving."~ */ GOTO 28
END

IF WEIGHT #12 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #38802 /* ~A voice that sounds like the anguished pain of thousands echoes through your skull. The voice sounds curiously subdued with an undercurrent of incredible anger. "MURDERER... WE ASK THAT YOU LEAVE OUR HALLS. WE DO NOT WISH MORE BATTLE WITH YOU. IF YOU WILL PERFORM A FAVOR FOR US, WE CAN PERFORM A SERVICE FOR YOU, AND WE CAN GO OUR WAYS IN PEACE."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38902 /* ~"Who are you?"~ */ GOTO 70
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38903 /* ~"Who are you?"~ */ GOTO 71
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38904 /* ~"Who are you?"~ */ GOTO 72
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38905 /* ~"Who are you?"~ */ GOTO 73
  IF ~~ THEN REPLY #38906 /* ~"Why do you call me 'murderer'?"~ */ GOTO 35
  IF ~~ THEN REPLY #38907 /* ~"What do you want me to do?"~ */ GOTO 35
  IF ~~ THEN REPLY #38908 /* ~"Actually, I'm here to wipe you out."~ */ GOTO 75
  IF ~~ THEN REPLY #38909 /* ~"I'll think about it."~ */ GOTO 76
END

IF WEIGHT #3 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 24 // from: 35.7 36.5 37.5 40.0
  SAY #38803 /* ~"TELL US WHAT YOU KNOW, MURDERER."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38910 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38911 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38912 /* ~Bluff: "The Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38913 /* ~"Nothing, yet."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66548 /* ~"The ghouls have gone wild and swept across the Dead Nations."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #4 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 25 // from: 35.8 36.6 37.6 40.1
  SAY #38804 /* ~"TELL US WHAT YOU KNOW, GENOCIDE."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38914 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38915 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38916 /* ~Bluff: "The Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38917 /* ~"Nothing, yet."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66549 /* ~"The ghouls have gone wild and swept across the Dead Nations."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 0.10 4.2 5.2 8.2 24.2 25.2
  SAY #38805 /* ~"THE DEAD KING STANDS READY TO OPPOSE US?" The rats' mind-voice pauses for a moment. "WE SEE NO LIE IN YOUR MIND. OUR GRATITUDE IS THIS: WE SHALL NOT CONSIGN YOUR LIVING CORPSE TO THE FLOORS BELOW OUR WARREN, TO BE AN ENDLESS REPAST FOR OUR YOUNG. LEAVE OUR TUNNELS AND DO NOT RETURN."~ */
  IF ~~ THEN REPLY #38918 /* ~"Are you just going to discard me like that?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~I have told Many-as-One that the Silent King is too powerful for him to approach. The cranium rat hive-mind did not see falsehood in my words, but it forbade me from returning to the Warrens of Thought on pain of death. We'll see about that.~ */ GOTO 10
  IF ~~ THEN REPLY #38919 /* ~"Very well. Farewell."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~I have told Many-as-One that the Silent King is too powerful for him to approach. The cranium rat hive-mind did not see falsehood in my words, but it forbade me from returning to the Warrens of Thought on pain of death. We'll see about that.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.11 4.3 5.3
  SAY #38806 /* ~"YOU LIE, BIPED. 
WE HAVE NO TRAFFIC WITH YOUR KIND.
NO NEED. NO DESIRE.
YOU WERE SEEN IN THE SCAVENGER VILLAGE, TALKING TO THE CRIPPLE KING. YOU ARE A SPY. YOU ARE AN ASSASSIN."~ */
  IF ~~ THEN REPLY #38920 /* ~"Well, yes. And I'm open to the highest bidder."~ */ GOTO 32
  IF ~~ THEN REPLY #38921 /* ~"No, I am not."~ */ GOTO 45
END

IF ~~ THEN BEGIN 28 // from: 0.12 4.4 5.4 22.11 57.3 58.3
  SAY #38807 /* ~"THIS IS THE DOMAIN OF MANY-AS-ONE.
YOU ARE AN INTRUDER.
OUR KINGDOM IS SECRET.
YOUR VOICE MUST BE SILENCED."~ */
  IF ~~ THEN REPLY #38922 /* ~"I will keep it secret."~ */ GOTO 31
  IF ~~ THEN REPLY #38923 /* ~"I'd like to see you try it."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.13 4.5 5.5 45.0 46.2
  SAY #38808 /* ~"WE CAN READ YOUR MIND, BIPED. DO NOT TEST US."~ */
  IF ~~ THEN REPLY #38924 /* ~"No. I'm thinking a name. Tell me what it is." Think: Pharod~ */ GOTO 47
  IF ~  Global("AR0302_Visited","GLOBAL",1)
~ THEN REPLY #38925 /* ~"No. I'm thinking a name. Tell me what it is." Think: House of Vermin and Disease Control~ */ GOTO 47
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38926 /* ~"No. I'm thinking a name. Tell me what it is." Think: Silent King~ */ GOTO 47
  IF ~~ THEN REPLY #38927 /* ~"No. I'm thinking a name. Tell me what it is." Think: Walking Dead~ */ GOTO 47
  IF ~~ THEN REPLY #64641 /* ~"No. I'm thinking a name. Tell me what it is." Think: Barr, the gate guard~ */ GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 8.3 24.3 25.3
  SAY #38809 /* ~"THEN BEGONE. WE HAVE NO USE FOR YOU - NOR ANSWERS - UNTIL YOU HAVE BROUGHT US THE ANSWERS WE SEEK."~ */
  IF ~~ THEN REPLY #38928 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0
  SAY #38810 /* ~"YES.
YOU WILL."~ */
  IF ~~ THEN REPLY #38929 /* ~"What's that supposed to mean?"~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38930 /* ~"Only if you make me..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 51.0
  SAY #38811 /* ~There is a pause as the mind digests this information.
"EXPLAIN."~ */
  IF ~~ THEN REPLY #38931 /* ~"What I mean is that we could help each other."~ */ GOTO 33
  IF ~~ THEN REPLY #38932 /* ~"You know what I mean. I have skills you can use. You have powers that can help me." ~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38812 /* ~"SUCH BARGAINS HAVE A PRICE. 
SUCH BARGAINS REQUIRE TRUST.
WE DO NOT TRUST YOU.
CONVINCE US, BIPED."~ */
  IF ~~ THEN REPLY #38933 /* ~"How can I convince you?"~ */ GOTO 35
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38934 /* ~"Convince you? I don't need to convince you. Either you trust me, or you don't."~ */ GOTO 38
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38935 /* ~"What could you possibly offer me?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38936 /* ~"What could you possibly offer me?"~ */ GOTO 39
  IF ~~ THEN REPLY #38937 /* ~"Forget I offered. I'm leaving."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.4 35.4 36.2 37.3 39.1 41.0 51.1 56.3 73.4
  SAY #38813 /* ~"WE, LET YOU LEAVE? WE THINK NOT."~ */
  IF ~~ THEN REPLY #38938 /* ~"I could kill all of you right now, and you couldn't stop me. I cannot die."~ */ GOTO 42
  IF ~~ THEN REPLY #38939 /* ~"Try to stop me."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("CR_Vic","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4 23.5 33.0 45.1 65.0 66.0 67.0 68.0
  SAY #38814 /* ~"PROVE YOURSELF WORTHY OF TRUST. 
GO TO THE HALLS OF THE WALKING DEAD.
KILL THE SILENT KING.
KILL HIM."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38941 /* ~Bluff: "Who?"~ */ GOTO 36
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38942 /* ~"Who?"~ */ GOTO 36
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38943 /* ~"What could you possibly offer me?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38944 /* ~"What could you possibly offer me?"~ */ GOTO 39
  IF ~~ THEN REPLY #38945 /* ~"I don't think so. I'm leaving."~ */ GOTO 34
  IF ~~ THEN REPLY #38946 /* ~"Why don't you do it?"~ */ GOTO 52
  IF ~~ THEN REPLY #38947 /* ~"Very well. I'll do it."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38871 /* ~Many-as-One, the hive mind of the cranium rats, has asked me to kill the Silent King in the Dead Nations. I have agreed. I am to report back to Many-as-One when the deed is done.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64635 /* ~"I have already been there."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64636 /* ~"I have already been there."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64642 /* ~"I have already been there."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 48.0
  SAY #38815 /* ~"THE WALKING DEAD ARE RULED BY A KING WHO DWELLS IN A PLACE WE CANNOT SEE.
WE MUST DESTROY HIM TO DESTROY THEM.
HE IS A MYSTERY TO US.
WE HAVE NEVER SEEN HIM.
HE MUST DIE."~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38948 /* ~"What could you possibly offer me?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38949 /* ~"What could you possibly offer me?"~ */ GOTO 39
  IF ~~ THEN REPLY #38950 /* ~"I don't think so. I'm leaving."~ */ GOTO 34
  IF ~~ THEN REPLY #38953 /* ~"Why don't you do it?"~ */ GOTO 52
  IF ~~ THEN REPLY #38954 /* ~"Very well. I'll do it."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38872 /* ~Many-as-One, the hive mind of the cranium rats, has asked me to kill the Silent King in the Dead Nations. I have agreed. I am to report back to Many-as-One when the deed is done.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64637 /* ~"I have already been there."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64638 /* ~"I have already been there."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64670 /* ~"I have already been there."~ */ GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 33.2 35.2 36.0 38.0
  SAY #38816 /* ~"WE HAVE MUCH TO OFFER.
SAFE PASSAGE.
THE LIVES OF YOUR FRIENDS."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #38955 /* ~"That's motivation? You'll have to offer something more."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #38956 /* ~"Very well. If that is what you can give me, that is what I will take. What do I have to do?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #38957 /* ~"That would work... if I cared about these people."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_MaO_1","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #38958 /* ~"I'm afraid I can't accept. I'm leaving."~ */ GOTO 34
  IF ~~ THEN REPLY #38959 /* ~"All right. What do I have to do?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38873 /* ~Many-as-One, the hive mind of the cranium rats, has asked me to kill the Silent King in the Dead Nations. I have agreed. I am to report back to Many-as-One when the deed is done.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64639 /* ~"I know the secret of the Silent King."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64640 /* ~"I know the secret of the Silent King."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64671 /* ~"I know the secret of the Silent King."~ */ GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY #38817 /* ~"YOU CANNOT BE TRUSTED.
IF YOUR WORDS ARE TRUE, THEN YOU BETRAY THOSE WHO EMPLOY YOU."~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38960 /* ~"That may be. Yet you still have not told me what you could offer me for my services."~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38961 /* ~"That may be. Yet you still have not told me what you could offer me for my services."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 33.3 35.3 36.1 38.1
  SAY #38818 /* ~"WE CAN OFFER SAFE PASSAGE. 
FREEDOM.
PERHAPS MORE."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #38962 /* ~"Yes, perhaps more. Keep talking."~ */ GOTO 41
  IF ~~ THEN REPLY #38963 /* ~"I'm afraid I can't accept. I'm leaving."~ */ GOTO 34
  IF ~~ THEN REPLY #38964 /* ~"Why don't you do it?"~ */ GOTO 52
  IF ~~ THEN REPLY #38965 /* ~"All right. What do I have to do?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38874 /* ~Many-as-One, the hive mind of the cranium rats, has asked me to kill the Silent King in the Dead Nations. I have agreed. I am to report back to Many-as-One when the deed is done.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 35.6 36.4 37.1 37.4 39.3 41.2 43.0 52.0
  SAY #38819 /* ~"YOU ARE WISE TO ACCEPT OUR DICTATES.
JOURNEY TO THE HALLS OF THE DEAD.
STRIKE DOWN THEIR SILENT RULER.
RETURN HERE, AND WE SHALL DISCUSS REWARD."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #38966 /* ~"I have already been there."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64672 /* ~"I have already been there."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64673 /* ~"I have already been there."~ */ GOTO 8
  IF ~~ THEN REPLY #64674 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.0 37.2 39.0
  SAY #38820 /* ~"WE HAVE MUCH ELSE TO OFFER.
SECRETS.
WEALTH.
MAGIC.
THE DEAD WITHIN THESE TOMBS HAD MUCH WITH THEM WHEN THEY DIED."~ */
  IF ~~ THEN REPLY #38967 /* ~"I don't think so. I'm leaving."~ */ GOTO 34
  IF ~~ THEN REPLY #38968 /* ~"Why don't you do it?"~ */ GOTO 52
  IF ~~ THEN REPLY #38969 /* ~"Very well. What do I have to do?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38970 /* ~Many-as-One, the hive mind of the cranium rats, has asked me to kill the Silent King in the Dead Nations. I have agreed. I am to report back to Many-as-One when the deed is done.~ */ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 34.0 50.0
  SAY #38821 /* ~"YOU ARE WRONG. YOU LIVE AT OUR INDULGENCE.
PERHAPS WE CANNOT KILL YOU OUTRIGHT.
WE CAN MAKE YOU SCREAM FOR DEATH'S RELEASE.
WE CAN BURY YOU IN ENDLESS EARTH.
WE CAN BANISH YOU TO ETERNAL FIRE.
WE CAN DESTROY ALL YOU CARE ABOUT.
WE ARE EVERYWHERE.
YOU CANNOT STOP US ALL."~ */
  IF ~~ THEN REPLY #38971 /* ~"Then perhaps we can come to some sort of deal."~ */ GOTO 43
  IF ~~ THEN REPLY #38972 /* ~"I'm willing to give it a try. Die, vermin!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 74.1 76.0 78.1 79.0
  SAY #38822 /* ~"YOU WILL JOURNEY TO THE HALLS OF THE DEAD.
YOU WILL STRIKE DOWN THEIR SILENT RULER.
YOU WILL RETURN HERE WHEN YOU HAVE COMPLETED YOUR MISSION."~ */
  IF ~~ THEN REPLY #38973 /* ~"I accept."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Many-as-One, the hive mind of the cranium rats, has asked me to kill the Silent King in the Dead Nations. I have agreed. I am to report back to Many-as-One when the deed is done.~ */ GOTO 40
  IF ~~ THEN REPLY #38974 /* ~"Why don't you do it?"~ */ GOTO 52
  IF ~~ THEN REPLY #38975 /* ~"I will not."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.2 48.1 52.1
  SAY #38823 /* ~"THEN, BIPED, YOU WILL DIE."~ */
  IF ~~ THEN REPLY #38978 /* ~"Try to kill me."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 27.1
  SAY #38824 /* ~"YOU LIE!"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38979 /* ~"Look into my mind and tell me that I'm lying. Or can't you look into my mind?"~ */ GOTO 29
  IF ~~ THEN REPLY #38980 /* ~"How can I prove that I'm not lying?"~ */ GOTO 35
  IF ~~ THEN REPLY #38981 /* ~"No, I'm not."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #38825 /* ~"YOU ARE. YOU CANNOT HIDE FROM ME. I KNOW WHY YOU ARE HERE. DEFEND YOURSELF, BIPED, BECAUSE YOU ARE ABOUT TO DIE."~ */
  IF ~~ THEN REPLY #38982 /* ~"Wait! We can work this out!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38983 /* ~"I'm ready whenever you are..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38984 /* ~"Look into my mind and tell me that I'm lying. Or can't you look into my mind?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 47 // from: 29.0 29.1 29.2 29.3 29.4
  SAY #38826 /* ~There is a pause, and then: "THE SILENT KING SENT YOU."~ */
  IF ~~ THEN REPLY #38985 /* ~"You are correct. I see I cannot hide from you."~ */ GOTO 48
  IF ~~ THEN REPLY #38986 /* ~"You're wrong."~ */ GOTO 49
  IF ~~ THEN REPLY #38987 /* ~"You can't read my mind. Why not?"~ */ GOTO 50
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38988 /* ~"The Silent King? Who?"~ */ GOTO 49
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38989 /* ~Bluff: "The Silent King? Who?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #38827 /* ~"IT IS AS WE SAID, BIPED. THE WALLS OF YOUR MIND MAY BE HIGH, BUT WE CAN SCALE ANY BARRIER. NOW: WE HAVE A USE FOR YOU."~ */
  IF ~~ THEN REPLY #38990 /* ~"What is it?"~ */ GOTO 36
  IF ~~ THEN REPLY #38991 /* ~"I will not."~ */ GOTO 44
END

IF ~~ THEN BEGIN 49 // from: 47.1 47.3 47.4
  SAY #38828 /* ~"YOU PRETEND YOU KNOW NOTHING OF YOUR MASTER? YOU SHALL DIE, BIPED."~ */
  IF ~~ THEN REPLY #38992 /* ~"You can't read my mind, can you?"~ */ GOTO 50
  IF ~~ THEN REPLY #38993 /* ~"Bring it on."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 49.0
  SAY #38829 /* ~The voices sound scared: "YOUR MIND MAY BE WALLED TO US, BUT YOU CAN DIE LIKE ANY OTHER CREATURE."~ */
  IF ~~ THEN REPLY #38994 /* ~"No, I cannot. I could kill you all and you can't stop me."~ */ GOTO 42
  IF ~~ THEN REPLY #38995 /* ~"Why can't you read my mind?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #38830 /* ~"WE DO NOT KNOW.
THIS MAKES YOU DANGEROUS TO US.
THREAT/DANGER/ASSASSIN... INVISIBLE."~ */
  IF ~~ THEN REPLY #38996 /* ~"Then perhaps we can come to some sort of arrangement."~ */ GOTO 32
  IF ~~ THEN REPLY #38997 /* ~"Let me go and I shall trouble you no more."~ */ GOTO 34
END

IF ~~ THEN BEGIN 52 // from: 35.5 36.3 39.2 41.1 43.1
  SAY #38831 /* ~"THE DEAD... ENTRENCHED ARE THEY. DIFFICULT TO HARM. THEIR SILENT KING: A MYSTERY HE IS. WE DO NOT LIKE SUCH MYSTERIES. WE STRIKE WHEN WE CAN SUCCEED WITHOUT DOUBT. THE SILENT KING MAKES US DOUBT."~ */
  IF ~~ THEN REPLY #38998 /* ~"I accept."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Many-as-One, the hive mind of the cranium rats, has asked me to kill the Silent King in the Dead Nations. I have agreed. I am to report back to Many-as-One when the deed is done.~ */ GOTO 40
  IF ~~ THEN REPLY #38999 /* ~"I will not."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 53 // from: 22.0 22.4
  SAY #38832 /* ~"WE HAVE ALREADY MET IN THE DARK HALLS.
WE HAVE SEEN YOUR FACE AS YOU SHED OUR BLOOD. SPEAK YOUR PURPOSE HERE, MURDERER. IF YOU HAVE COME TO KILL US ALL, YOU CANNOT SUCCEED." ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 190
END

IF ~~ THEN BEGIN 54 // from: 22.1 22.5
  SAY #38833 /* ~"WE HAVE ALREADY MET IN THE DARK HALLS.
WE HAVE SEEN YOUR FACE AS YOU SHED OUR BLOOD. SPEAK YOUR PURPOSE HERE, MURDERER. IF YOU HAVE COME TO KILL US ALL, YOU CANNOT SUCCEED."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 55 // from: 22.2 22.6
  SAY #38834 /* ~"WE HAVE ALREADY MET IN THE DARK HALLS.
WE HAVE SEEN YOUR FACE AS YOU SHED OUR BLOOD. SPEAK YOUR PURPOSE HERE, MURDERER. IF YOU HAVE COME TO KILL US ALL, YOU CANNOT SUCCEED."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 56 // from: 22.3
  SAY #38835 /* ~"WE HAVE ALREADY MET IN THE DARK HALLS.
WE HAVE SEEN YOUR FACE AS YOU SHED OUR BLOOD. SPEAK YOUR PURPOSE HERE, MURDERER. IF YOU HAVE COME TO KILL US ALL, YOU CANNOT SUCCEED."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39009 /* ~"I have come to tell you that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39010 /* ~"I have come to tell you that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39011 /* ~"Why do you call me 'murderer'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39012 /* ~"I have no purpose here. I was just leaving."~ */ GOTO 34
END

IF ~~ THEN BEGIN 57 // from: 22.7
  SAY #38836 /* ~"YOU ARE IN THE WARRENS OF THOUGHT. YOU ARE IN THE HOME OF MANY-AS-ONE. YOU ARE ABOUT TO DIE, MURDERER."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39013 /* ~"But I have come to tell you that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39014 /* ~"But I have come to tell you that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39015 /* ~"Why? And why do you call me 'murderer'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39017 /* ~"But I came by accident."~ */ GOTO 28
END

IF ~~ THEN BEGIN 58 // from:
  SAY #38837 /* ~"SILENCE! WE SPEAK TO THE SCARRED ONE.
WE *WILL* ELIMINATE YOU IF YOU UTTER ONE MORE WORD. KNOW YOU THAT YOU ARE IN THE WARRENS OF THOUGHT... AND KNOW THAT YOU HAVE INCURRED OUR DISPLEASURE. SPEAK YOUR PURPOSE, MURDERER."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39018 /* ~"I came to tell you that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39019 /* ~"I came to tell you that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39020 /* ~"Why do you call me 'murderer'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39021 /* ~"I have no purpose here. I entered by accident."~ */ GOTO 28
END

IF ~~ THEN BEGIN 59 // from: 22.8 22.9 24.0 24.1 56.0 56.1 57.0 57.1 58.0 58.1
  SAY #38838 /* ~"THE SILENT KING LIES QUIETLY? YOU HAVE PERFORMED WELL, MURDERER." The voices pause for a moment. "LET IT NOT BE SAID THAT MANY-AS-ONE IS WITHOUT GRATITUDE."~ */
  IF ~~ THEN REPLY #39022 /* ~"What do you mean?"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 60 // from: 22.10 56.2 57.2 58.2
  SAY #38839 /* ~"THE STENCH OF LIES CLUSTERS THICKLY AROUND YOU. KNOW THAT WE HAVE SEEN YOUR FACE AS YOU HAVE SLAUGHTERED US. KNOW THAT WE HAVE FELT THE PAIN OF OUR MIND BEING EXTINGUISHED. KNOW THAT THE PASSING OF EACH SPARK DIMINISHES THE GLORY OF THE BLAZE. YOU HAVE MURDERED MANY OF US. DO YOU DENY THIS?"~ */
  IF ~~ THEN REPLY #39024 /* ~"I certainly do."~ */ GOTO 62
  IF ~~ THEN REPLY #39025 /* ~"Not at all."~ */ GOTO 61
  IF ~~ THEN REPLY #39026 /* ~"I didn't know they were part of you."~ */ GOTO 62
  IF ~~ THEN REPLY #39027 /* ~"They attacked me first."~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #38840 /* ~"SO BE IT. YOU ADMIT YOUR CRIME.
YOU SHALL SUFFER
AS WE HAVE SUFFERED."~ */
  IF ~~ THEN REPLY #39028 /* ~"Why don't you *make* me suffer, you flea-bitten carpet of shared stupidity?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 60.2 60.3
  SAY #38841 /* ~"LIES!
KNOW THAT YOU SHALL SUFFER AS WE HAVE SUFFERED."~ */
  IF ~~ THEN REPLY #39029 /* ~"Why don't you *make* me suffer, you flea-bitten carpet of shared stupidity?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39030 /* ~"I ask for mercy."~ */ GOTO 63
  IF ~~ THEN REPLY #39031 /* ~"Is there any way I can make it up to you?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY #38842 /* ~"YOU SHALL FIND NO MERCY, MURDERER. YOU MUST PAY FOR YOUR CRIME."~ */
  IF ~~ THEN REPLY #39032 /* ~"Why don't you *make* me suffer, you flea-bitten carpet of shared stupidity?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39033 /* ~"How can I make it up to you?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 62.2 63.1
  SAY #38843 /* ~"WHAT USE ARE YOU?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #39034 /* ~"I am hard to kill and I know spells."~ */ GOTO 65
  IF ~~ THEN REPLY #39035 /* ~"I am hard to kill."~ */ GOTO 66
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #39036 /* ~"I am stealthy and hard to spot."~ */ GOTO 67
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #39037 /* ~"I am hard to kill and a fierce warrior."~ */ GOTO 68
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #38844 /* ~"WE CARE NOT ABOUT SPELLS. MAGERY IS NOT UNCOMMON... YET..."~ */
  IF ~~ THEN REPLY #39038 /* ~"Yet?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY #38845 /* ~"THIS MAY PROVE TO BE OF USE... YES..."~ */
  IF ~~ THEN REPLY #39039 /* ~"Yes?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 67 // from: 64.2
  SAY #38846 /* ~"THESE SKILLS MAY PROVE TO BE OF USE... YES..."~ */
  IF ~~ THEN REPLY #39040 /* ~"Yes?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 68 // from: 64.3
  SAY #38847 /* ~"THESE SKILLS MAY PROVE TO BE OF USE... YES..."~ */
  IF ~~ THEN REPLY #39041 /* ~"Yes?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 69 // from: 25.0 25.1 73.0 73.1
  SAY #38848 /* ~"THE SILENT KING POSES NO THREAT TO US? ARE YOU CERTAIN OF THIS? HAVE YOU SEEN ITS CORPSE?"~ */
  IF ~~ THEN REPLY #39042 /* ~"Yes."~ */ GOTO 77
END

IF ~~ THEN BEGIN 70 // from: 23.0
  SAY #38849 /* ~"WE HAVE ALREADY MET IN THE DARK HALLS.
WE HAVE SEEN YOUR FACE AS YOU SHED OUR BLOOD. SPEAK YOUR PURPOSE HERE, MURDERER. IF YOU HAVE COME TO KILL US ALL, YOU CANNOT SUCCEED. WE HAVE NO WISH TO FIGHT, BUT IF YOU INSIST, FIGHT WE WILL." ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 192
END

IF ~~ THEN BEGIN 71 // from: 23.1
  SAY #38850 /* ~"WE HAVE ALREADY MET IN THE DARK HALLS.
WE HAVE SEEN YOUR FACE AS YOU SHED OUR BLOOD. SPEAK YOUR PURPOSE HERE, MURDERER. IF YOU HAVE COME TO KILL US ALL, YOU CANNOT SUCCEED. WE HAVE NO WISH TO FIGHT, BUT IF YOU INSIST, FIGHT WE WILL."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 72 // from: 23.2
  SAY #38851 /* ~"WE HAVE ALREADY MET IN THE DARK HALLS.
WE HAVE SEEN YOUR FACE AS YOU SHED OUR BLOOD. SPEAK YOUR PURPOSE HERE, MURDERER. IF YOU HAVE COME TO KILL US ALL, YOU CANNOT SUCCEED. WE HAVE NO WISH TO FIGHT, BUT IF YOU INSIST, FIGHT WE WILL."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 73 // from: 23.3
  SAY #38852 /* ~"WE HAVE ALREADY MET IN THE DARK HALLS.
WE HAVE SEEN YOUR FACE AS YOU SHED OUR BLOOD. SPEAK YOUR PURPOSE HERE, MURDERER. IF YOU HAVE COME TO KILL US ALL, YOU CANNOT SUCCEED. WE HAVE NO WISH TO FIGHT, BUT IF YOU INSIST, FIGHT WE WILL."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39043 /* ~"I have come to tell you that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39044 /* ~"I have come to tell you that the Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~~ THEN REPLY #39045 /* ~"Why do you call me 'murderer'?"~ */ GOTO 74
  IF ~~ THEN REPLY #39046 /* ~"Actually, I'm here to wipe you out."~ */ GOTO 75
  IF ~~ THEN REPLY #39047 /* ~"I have no purpose here. I was just leaving."~ */ GOTO 34
END

IF ~~ THEN BEGIN 74 // from: 73.2
  SAY #38853 /* ~"BIPED, YOU HAVE SLAUGHTERED MANY OF OUR KIND. WE HAVE FELT THE LIGHTS OF OURSELVES DISAPPEAR IN A FLASH OF PAIN. YOU HAVE BROUGHT SUFFERING TO THE WARRENS OF THOUGHT, AND FOR THIS YOU MUST MAKE AMENDS. YOU WILL MAKE AMENDS OR WE SHALL ELIMINATE YOU."~ */
  IF ~~ THEN REPLY #39048 /* ~"I will not."~ */ GOTO 76
  IF ~~ THEN REPLY #39049 /* ~"What do I have to do?"~ */ GOTO 43
  IF ~~ THEN REPLY #39050 /* ~"I did not know they were of your kind."~ */ GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 23.6 73.3 78.0
  SAY #38854 /* ~"HAVE YOU NOT STRUCK AT US ENOUGH, PRIMATE? HAVE NOT YOUR KILLINGS SATED YOU? WE SEE NO ASSENT IN YOUR MIND. WE SHALL KILL YOU FIRST, BIPED."~ */
  IF ~~ THEN REPLY #39051 /* ~"I'm ready for you..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 23.7 74.0 78.2 79.1
  SAY #38855 /* ~"YOU SHALL DO THIS FOR US OR WE SHALL EXPEND OUR LAST LIFE, DEVOTING OURSELF TO EXPUNGING YOU FROM THE MULTIVERSE. YOU *OWE* US FOR THE PAIN YOU HAVE WROUGHT."~ */
  IF ~~ THEN REPLY #39052 /* ~"What do you want me to do?"~ */ GOTO 43
  IF ~~ THEN REPLY #39053 /* ~"I would like to see you try it."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 69.0
  SAY #38857 /* ~"THEN OUR USE FOR YOU HAS ENDED.
IT IS TIME NOW FOR YOU TO SUFFER AS YOU HAVE CAUSED US TO SUFFER.
IT IS TIME TO SNUFF OUT YOUR BRIEF SPARK.
YOU WILL DIE, HUMANOID.
YOU WILL DIE *PAINFULLY.*"~ */
  IF ~~ THEN REPLY #39054 /* ~"Is this the thanks I get?"~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39055 /* ~"I dare you to try."~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39323 /* ~"WE ASK THAT YOUR COMPANIONS REMAIN SILENT. YOU HAVE BROUGHT PAIN TO US, MUCH PAIN, AND WE DEMAND AMENDS FROM YOU."~ */
  IF ~~ THEN REPLY #39056 /* ~"I'm here to wipe you out."~ */ GOTO 75
  IF ~~ THEN REPLY #39057 /* ~"What do you want me to do?"~ */ GOTO 43
  IF ~~ THEN REPLY #39058 /* ~"I won't give you the satisfaction."~ */ GOTO 76
END

IF ~~ THEN BEGIN 79 // from: 74.2
  SAY #56039 /* ~"THE HARM HAS BEEN DONE. THE PAST WILL NOT BE ALTERED BY YOUR MERE APOLOGIES. PERFORM THIS SERVICE FOR US OR WE SHALL ELIMINATE YOU."~ */
  IF ~~ THEN REPLY #56040 /* ~"What do I have to do?"~ */ GOTO 43
  IF ~~ THEN REPLY #56041 /* ~"I will not do it."~ */ GOTO 76
END
