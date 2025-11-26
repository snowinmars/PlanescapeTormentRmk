// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANTUOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANTUOK~

IF ~  Global("Current_Area","GLOBAL",1600)
Global("AR0508_Visited","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25632 /* ~You see a half-man/half-rat hybrid. Its red eyes gleam with a certain cunning, and the voice that issues from its mouth is oily and insinuating. "So a biped comes, willing, to the halls of Many-as-One. What do you want, man, and where do you intend to go? Step lightly, intruder, and speak the truth to Mantuok."~ */
  IF ~~ THEN REPLY #25665 /* ~"I was just leaving."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #25666 /* ~"I come from the Buried Village, and was exploring."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #25667 /* ~"I came to see you."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #25668 /* ~"Where I come from and where I go are my business alone."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #25669 /* ~"What *are* you?"~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25634 /* ~"No, biped, you were not. Now answer my question: What do you want, biped, and where are you going?"~ */
  IF ~~ THEN REPLY #25670 /* ~"I come from the Buried Village, and was exploring here."~ */ GOTO 2
  IF ~~ THEN REPLY #25671 /* ~"Where I come from and where I go are my business alone."~ */ GOTO 8
  IF ~~ THEN REPLY #25672 /* ~"What *are* you?"~ */ GOTO 9
  IF ~~ THEN REPLY #25673 /* ~"I said I was leaving. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #25637 /* ~"Ah, the village. Refresh my mind... the scavengers, yes? Have you come to scavenge?"~ */
  IF ~~ THEN REPLY #25674 /* ~"Yes, but there's nothing in this chamber pot worth scavenging."~ */ GOTO 3
  IF ~~ THEN REPLY #25675 /* ~"No, I have not."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25638 /* ~"Nothing worthwhile, biped? The only excrement I see in our fair home is YOU. Yet I fear we must learn to live with the stench - you will never see the light of day again."~ */
  IF ~~ THEN REPLY #25676 /* ~"What do you mean by that?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25677 /* ~"Are you threatening me?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25678 /* ~"I think I will."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #25639 /* ~"Then your answer forces Mantuok to inquire: why are you here? A wrong turn, a bad step, a succession of mistakes, yes? Have you come seeking me or Many-as-One? Or perhaps you simply do not know why you are here? You will explain this to me now."~ */
  IF ~~ THEN REPLY #25679 /* ~"It was a succession of mistakes."~ */ GOTO 5
  IF ~~ THEN REPLY #25680 /* ~"I seek Many-as-One."~ */ GOTO 6
  IF ~~ THEN REPLY #25681 /* ~"Who is Many-as-One?"~ */ GOTO 9
  IF ~~ THEN REPLY #25682 /* ~"I came to see you."~ */ GOTO 14
  IF ~~ THEN REPLY #25683 /* ~"I don't think I have any business here."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 17.0
  SAY #25640 /* ~"A succession of mistakes it is, yes? It would have been much better for you to have made one less mistake and not have found your way here."~ */
  IF ~~ THEN REPLY #25684 /* ~"What do you mean?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25685 /* ~"I'll rectify that by leaving..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 17.1
  SAY #25642 /* ~"Speak it to me, biped, and I shall convey your message to the many."~ */
  IF ~~ THEN REPLY #25686 /* ~"Very well."~ */ GOTO 7
  IF ~~ THEN REPLY #25687 /* ~"I don't think so."~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #25645 /* ~Mantuok leans forward, turning his ear toward you.~ */
  IF ~~ THEN REPLY #25688 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25689 /* ~"I have no business to speak of."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25690 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25691 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25692 /* ~"The Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.1 1.3 4.4 7.1 17.3 18.2 20.1
  SAY #25646 /* ~He sneers. "So you say. You shall have time to reconsider that answer - a long time." He raises his hands, and smoke pours from his fingers.~ */
  IF ~~ THEN REPLY #25693 /* ~"What the...?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.4 1.2 4.2 14.1 15.4 17.2
  SAY #25647 /* ~"You are truly ignorant, yes? Clear it is that you have come here in error. You shall not leave." He raises his hands, and smoke pours from his fingers.~ */
  IF ~~ THEN REPLY #25695 /* ~"We can talk this out..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25696 /* ~"What are you doing?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 15.0 15.1 20.2 20.3
  SAY #25650 /* ~He pauses. His tail lashes. He gazes at you for a moment. "Did my ears hear you tell me the Silent King is but a bluff of the deaders? Aye, they did." He glances away for a moment, and turns back, his eyes blazing victory. "The corpses shall truly lie still soon, and we shall gnaw their flesh for sustenance..." He suddenly looks suspiciously at you, "...if this is not a trick. You shall speak with Many-as-One, yes?"~ */
  IF ~~ THEN REPLY #25697 /* ~"Oh, now I can talk to Many-as-One?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #25652 /* ~"Aye. Remember: They know your words already. Farewell. We shall meet again."~ */
  IF ~~ THEN REPLY #25698 /* ~"Farewell, then."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4 15.2 20.4
  SAY #25654 /* ~Mantuok hisses. "Too strong, is he? You have seen a demonstration of his might? Bah! Many-as-One shall hear of this, then - as you tell the Many. You will speak this ill news yourself! Come with me."~ */
  IF ~~ THEN REPLY #25699 /* ~"I don't think so."~ */ GOTO 13
  IF ~~ THEN REPLY #25700 /* ~"Let's go."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25655 /* ~"It was not a request." He raises his hands, and smoke pours from his fingers. Everything goes black for a moment.~ */
  IF ~~ THEN REPLY #25701 /* ~"What the...?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 4.3
  SAY #25656 /* ~"Came to see *me?* And who has sent you on this fool's errand?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #25702 /* ~"Soego."~ */ DO ~SetGlobal("Know_Soego_Rats","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25703 /* ~"No one."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25704 /* ~"No one. I simply assumed you were the one of status."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #25657 /* ~He pauses, as if evaluating you. "And why did the priest of dust and ash not use the usual methods? Why did Soego Rat-kin not use the couriers? Bah. No matter. Speak the message and have done with it."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25705 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25706 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25707 /* ~"The Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
  IF ~~ THEN REPLY #25708 /* ~"He told me I should speak it only to Many-as-One."~ */ GOTO 16
  IF ~~ THEN REPLY #25709 /* ~"I actually had no message."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #25658 /* ~The wererat's tail lashes furiously. "Very well. Speak to Many-as-One you shall. Speak no lies, biped, for the Many can read your thoughts as easily as it hears your voice."~ */
  IF ~~ THEN REPLY #25710 /* ~"I'll keep that in mind."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #25659 /* ~"Your tongue suffers imbalances with lies and praise, the mark of a deceiver. Speak plainly, yes, or suffer. What is your business here, and what do you seek? A succession of mistakes, perhaps, has led you to my door? What is your business here?"~ */
  IF ~~ THEN REPLY #25711 /* ~"It was a succession of mistakes."~ */ GOTO 5
  IF ~~ THEN REPLY #25712 /* ~"I seek Many-as-One."~ */ GOTO 6
  IF ~~ THEN REPLY #25713 /* ~"Who is Many-as-One?"~ */ GOTO 9
  IF ~~ THEN REPLY #25714 /* ~"I don't think I have any business here."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 6.1
  SAY #25660 /* ~"And why? What business do you have with Many-as-One?"~ */
  IF ~~ THEN REPLY #25715 /* ~"I have news."~ */ GOTO 19
  IF ~~ THEN REPLY #25716 /* ~"My business is no concern of yours."~ */ GOTO 20
  IF ~~ THEN REPLY #25717 /* ~"None in particular."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #25661 /* ~He opens his mouth to unleash a stream of invective, but then his eyes go far-away and his head tilts to the side, as if he were listening to a message. When his eyes focus again on you, he spits: "Your news had better be worth hearing, biped, or your torment will be legendary."~ */
  IF ~~ THEN REPLY #25718 /* ~"Spare me the threats. Let's go."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #25662 /* ~"I am the voice of Many-as-One! You will tell me your business!" His voice drops, becoming oily. "You shall tell me, or you shall have... difficulties, yessss?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #25719 /* ~"Many-as-One will make you suffer if you try to harm me, Mantuok."~ */ GOTO 21
  IF ~~ THEN REPLY #25720 /* ~"I don't actually have any business."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25721 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25722 /* ~"The Silent King is merely a dead skeleton. He has no power."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25723 /* ~"The Silent King is too strong to attack. Stay away from the Dead Nations or the corpses will destroy you."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #25663 /* ~Mantuok jumps at this, then gives a hiss. "Nasty, nasty, human. Threatens Mantuok. Disrespects Mantuok. Spits upon his duty. Speaks barbed threats to Mantuok's ears. No friends have you made today, human. Go to Many-as-One, and speak your piece."~ */
  IF ~~ THEN REPLY #25724 /* ~"Thanks. You've been a real help."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #29320 /* ~You see a half-man/half-rat hybrid. Its red eyes gleam with a certain cunning, and the voice that issues from its mouth is oily and insinuating. "So... a biped comes slinking into the nest of Lothar's servants. What do you want, man, and where do you intend to go? Step lightly, intruder, and speak the truth to Mantuok."~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29351 /* ~"I'm on a quest for Lothar. I'm looking to retrieve a skull."~ */ GOTO 23
  IF ~~ THEN REPLY #29352 /* ~"Who are you?"~ */ GOTO 27
  IF ~~ THEN REPLY #29353 /* ~"I'm looking for the person in charge here."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29354 /* ~"I'm looking for my friend Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29355 /* ~"I'm just looking around."~ */ GOTO 33
END

IF ~~ THEN BEGIN 23 // from: 22.0 52.0
  SAY #29321 /* ~The rat-man ducks his head at the mention of Lothar, and hisses at you. "Send a hairless one to do the job of the Kin? Impossible!"~ */
  IF ~~ THEN REPLY #29356 /* ~"He said you were worthless and he needed someone he could trust. That was me."~ */ GOTO 24
  IF ~~ THEN REPLY #29357 /* ~"Nonetheless."~ */ GOTO 24
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29358 /* ~"Would you like some cheese, Mantuok?" Hand him the poisoned cheese.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29363 /* ~"Would you like some cheese, Mantuok?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #29322 /* ~Mantuok hisses at you again. "Begone, then, and return when the skull is in your hands." He pauses and looks at you suspiciously. "Have you a skull yet?"~ */
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29364 /* ~Hand him the poisoned cheese. "Would you like some cheese, Mantuok?" ~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29365 /* ~Hand him the cheese. "Would you like some cheese, Mantuok?" ~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
  IF ~~ THEN REPLY #29366 /* ~"In fact, I do."~ */ GOTO 36
  IF ~~ THEN REPLY #29367 /* ~"Not yet. But I'll be back with it."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.0 36.8 38.8 41.1 42.3
  SAY #29323 /* ~The rat-man snatches the poisoned cheese from your outstretched hand and sniffs it carefully, eyeing you suspiciously. He devours it, and spasms shake his body. He falls to the ground twitching, and a thin stream of bloody spittle drools from his mouth. "Ack..."~ */
  IF ~  NumTimesTalkedTo(0)
~ THEN REPLY #29368 /* ~"Farewell, rat-man."~ */ DO ~AddexperienceParty(2000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
  IF ~  NumTimesTalkedToGT(0)
~ THEN REPLY #29369 /* ~"Rot in hell, Mantuok."~ */ DO ~AddexperienceParty(5000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.1
  SAY #29324 /* ~Mantuok snatches the cheese from your outstretched hand and sniffs it suspiciously. He hunches over it and says, "Go, outlander. We will speak more when you return." He falls to nibbling the cheese.~ */
  IF ~~ THEN REPLY #29370 /* ~"Enjoy, Mantuok."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.1
  SAY #29325 /* ~"I am Mantuok. I am the voice of Many-as-One and the emissary of Lothar, Master of the Bones. I speak here and you answer. What do you want here?"~ */
  IF ~~ THEN REPLY #29371 /* ~"Who is Many-as-One?"~ */ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29372 /* ~"Who is Lothar?"~ */ GOTO 30
  IF ~~ THEN REPLY #29373 /* ~"You work for both of them? Doesn't that test your loyalty?"~ */ GOTO 37
  IF ~~ THEN REPLY #29374 /* ~"I'm just looking around."~ */ GOTO 33
  IF ~~ THEN REPLY #29375 /* ~"I seek the master of this place."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29376 /* ~"I'm looking for my friend Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29377 /* ~"None of your business."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.6 30.3 37.3
  SAY #29326 /* ~"All that transpires here is my business. Speak or my rat-kin shall feast on your flesh for eternity."~ */
  IF ~~ THEN REPLY #29378 /* ~"I'm just looking around."~ */ GOTO 33
  IF ~~ THEN REPLY #29379 /* ~"I seek the master of this place."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29380 /* ~"I'm looking for my friend Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29381 /* ~"And I said it was none of your business."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #29327 /* ~Mantuok's mouth tightens and he chitters to himself. "Well, then. I will taste your blood and learn the secrets of your flesh. Rats! To me!" He strikes.~ */
  IF ~~ THEN REPLY #29382 /* ~"Come on, Mantuok."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 27.1
  SAY #29328 /* ~"In this place, flesh, I ask the questions. I do not answer them. What... do... you... want?"~ */
  IF ~~ THEN REPLY #29383 /* ~"I'm just looking around."~ */ GOTO 33
  IF ~~ THEN REPLY #29385 /* ~"I seek the master of this place."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29386 /* ~"I'm looking for my friend Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29387 /* ~"None of your business."~ */ GOTO 28
END

IF ~~ THEN BEGIN 31 // from: 22.2 27.4 28.1 30.1 37.1 52.1
  SAY #29329 /* ~"You seek Lothar? Yet you have come from his sanctum. Go now, and I shall forget I have seen you."~ */
  IF ~~ THEN REPLY #29388 /* ~"Very well."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.3 27.5 28.2 30.2 37.2 52.2
  SAY #29330 /* ~"The chattering skull? Bah. A worthless waste of time. I should hope you made arrangements with the master to retrieve your friend, for there is no other way to gain him."~ */
  IF ~~ THEN REPLY #29389 /* ~"I'll keep that in mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 22.4 27.3 28.0 30.0 37.0 52.3
  SAY #29331 /* ~"That is unacceptable. You must have a purpose in the Kin's nest."~ */
  IF ~~ THEN REPLY #29390 /* ~"Then I'll leave."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #29332 /* ~"Yes. You will. Return not or you shall suffer."~ */
  IF ~~ THEN REPLY #29391 /* ~"Whatever. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #29333 /* ~Mantuok eyes you carefully and considers his words. "Do not think I will forget your words, human. Step in and see the master, if you will, and remember that there will be eyes on you until the end of your days." He steps aside.~ */
  IF ~~ THEN REPLY #29392 /* ~"I'll keep that in mind."~ */ EXIT
END

IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN BEGIN 36 // from: 24.2
  SAY #29334 /* ~"And have you retrieved the particular skull the master wants?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29393 /* ~"I have a skull."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29394 /* ~"Yes, from a skeleton."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29395 /* ~"Yes, from a zombie."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29396 /* ~"Yes, from a ghoul."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29397 /* ~"Yes, from a wererat."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29398 /* ~"Yes, from a long-dead skeleton."~ */ GOTO 41
  IF ~~ THEN REPLY #29399 /* ~"Not yet."~ */ GOTO 43
  IF ~~ THEN REPLY #29400 /* ~"Get out of my way, Mantuok, or I'll kill you where you stand."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29401 /* ~"Would you like some cheese, Mantuok?" Hand him the poisoned cheese.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29402 /* ~"Would you like some cheese, Mantuok?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 27.2
  SAY #29335 /* ~"And why should it, hm? The Master knows the secrets of power, and the Many know the secrets of the city. Perhaps someday I shall play them against each other and become the greater for it. Many-as-One sees many advantages in such an arrangement... and the conversion of the Buried Village dwellers can help to extend the reach of Lothar and Many-as-One. All benefit, yes? Now... what is your purpose here?"~ */
  IF ~~ THEN REPLY #29403 /* ~"I'm just looking around."~ */ GOTO 33
  IF ~~ THEN REPLY #29404 /* ~"I seek the master of this place."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29405 /* ~"I'm looking for my friend Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29406 /* ~"None of your business."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 36.9 41.2 42.4
  SAY #29336 /* ~He snatches the cheese from your hand and devours it in a single bite. "About that skull, human: Do you have it?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29407 /* ~"I have a skull."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29408 /* ~"Yes, from a skeleton."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29409 /* ~"Yes, from a zombie."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29410 /* ~"Yes, from a ghoul."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29411 /* ~"Yes, from a wererat."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29412 /* ~"Yes, from a long-dead skeleton."~ */ GOTO 41
  IF ~~ THEN REPLY #29413 /* ~"Not yet."~ */ GOTO 43
  IF ~~ THEN REPLY #29414 /* ~"Get out of my way, Mantuok, or I'll kill you where you stand."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29415 /* ~"Would you like some more cheese, Mantuok?" Hand him the poisoned cheese.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0 38.0
  SAY #29337 /* ~"Is it the one the master requested from you?"~ */
  IF ~~ THEN REPLY #29416 /* ~"Yes."~ */ GOTO 41
  IF ~~ THEN REPLY #29417 /* ~"No."~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #29338 /* ~Mantuok's lip curls. "Then by all means present it to the master. He will be most pleased to see you have returned."~ */
  IF ~~ THEN REPLY #29418 /* ~"Thanks, Mantuok."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1 36.2 36.3 36.4 36.5 38.1 38.2 38.3 38.4 38.5 39.0
  SAY #29339 /* ~"Give it to me, and I shall take it to the master. Your services are no longer required."~ */
  IF ~~ THEN REPLY #29419 /* ~"No, I think I'll take it to him myself."~ */ GOTO 42
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29420 /* ~"Would you like some cheese, Mantuok?" Hand him the poisoned cheese.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29421 /* ~"Would you like some cheese, Mantuok?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29422 /* ~Hand him the nameless skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29423 /* ~Hand him Hargrimm's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29424 /* ~Hand him Stale Mary's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29425 /* ~Hand him Acaste's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29426 /* ~Hand him Soego's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29427 /* ~Hand him the Silent King's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29340 /* ~"You misunderstand..." Mantuok's claws clench and unclench, and his tail begins to sway. "It was not a request. Give me the skull. We do not wish trouble... here of all places, biped. Such troubles even one such as you would be hard-pressed to deal with."~ */
  IF ~~ THEN REPLY #29428 /* ~"Perhaps your pathetic disease has affected your hearing. I said I will give Lothar the skull."~ */ GOTO 48
  IF ~~ THEN REPLY #29429 /* ~"I said I will give Lothar the skull."~ */ GOTO 47
  IF ~~ THEN REPLY #29430 /* ~"Let me by or I will kill you where you stand."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29431 /* ~"Would you like some cheese, Mantuok?" Hand him the poisoned cheese.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29432 /* ~"Would you like some cheese, Mantuok?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #29433 /* ~"Lothar promised me safe passage. If you stand in my way, he shall hear of it - either from me, or from my skull, should you somehow succeed in killing me."~ */ GOTO 45
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29434 /* ~Hand him the nameless skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29435 /* ~Hand him Hargrimm's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29436 /* ~Hand him Stale Mary's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29437 /* ~Hand him Acaste's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29438 /* ~Hand him Soego's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29439 /* ~Hand him the Silent King's skull: "Here, then. Take this skull."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 36.6 38.6
  SAY #29341 /* ~"Then *fetch* it, biped, and do not return until you have it. Do not keep the master waiting."~ */
  IF ~~ THEN REPLY #29440 /* ~"I won't keep him waiting much longer."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 38.7 42.2
  SAY #29342 /* ~"No, man-thing, I think I will not be the one dying today. I shall pry the skull the master desires from your cold, dead fingers."~ */
  IF ~~ THEN REPLY #29441 /* ~"Try it."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #29343 /* ~"Then I shall kill you and bury your skull and corpse in a place where they will never be found."~ */
  IF ~~ THEN REPLY #29442 /* ~"Try it, Mantuok."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 41.3 41.4 41.5 41.6 41.7 41.8 42.6 42.7 42.8 42.9 42.10 42.11
  SAY #29344 /* ~Mantuok takes the skull and sniffs at it critically. "Many, many places in catacombs, biped, no? Many places where one may be walled in for all eternity and screams are never heard. To one of those places shall you be taken and left to suffer." He turns to his fellow wererats. "Stab the biped until he falls. Take his corpse to the catacombs and bury him alive."~ */
  IF ~~ THEN REPLY #29443 /* ~"You son-of-a..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.1
  SAY #29345 /* ~"Then you leave me no choice." He turns to his fellow wererats. "Stab him until he falls. Take his body to the catacombs and wall him up someplace. Let him live forever entombed."~ */
  IF ~~ THEN REPLY #29444 /* ~"You son-of-a..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.0
  SAY #29346 /* ~"It is no disease! It is a blessing! I am far greater than you, a thing more a corpse than a man."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #29445 /* ~"As my betters, I suppose it is your privilege to squat in sewers, feast on filth and the occasional deader to stay alive, and dress in resplendent rags with your naked scaly tails dragging in the muck behind you? You're vermin, shadows of people, desperately wishing to be human. Pathetic."~ */ GOTO 49
  IF ~~ THEN REPLY #29446 /* ~"You are not my equal."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29347 /* ~As you speak, Mantuok's eyes glaze over in rage. Wordlessly, he hurls himself at you.~ */
  IF ~~ THEN REPLY #29447 /* ~"Better you alone than you and your friends..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #29348 /* ~"No, we are your superiors. We are predators. We hunt bipeds. You are food for us."~ */
  IF ~~ THEN REPLY #29448 /* ~"You're target practice for me."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29349 /* ~He turns to his fellow wererats. "Stab the biped until he falls. Take his body to the catacombs and wall him up. Let him live his eternity forever entombed."~ */
  IF ~~ THEN REPLY #29449 /* ~"I'd like to see you try..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedToGT(0)
~ THEN BEGIN 52 // from:
  SAY #29350 /* ~"You return, man-thing. What do you want?"~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29450 /* ~"I'm on a quest for Lothar. I'm looking to retrieve a skull."~ */ GOTO 23
  IF ~~ THEN REPLY #29451 /* ~"I'm looking for the person in charge here."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29452 /* ~"I'm looking for my friend Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29453 /* ~"I'm just looking around."~ */ GOTO 33
END
