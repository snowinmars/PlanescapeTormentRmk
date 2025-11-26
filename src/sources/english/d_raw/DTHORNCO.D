// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORNCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORNCO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2943 /* ~This comely, middle-aged woman is wandering about dreamily, absent-mindedly chewing on her thumbnail; her eyes seem focused on nothing in particular. She is dressed in elegant, yet disheveled finery, and her hair is slightly tussled.~ */
  IF ~~ THEN REPLY #31262 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #31263 /* ~Leave the woman alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31261 /* ~"Hm?" She takes her thumb from her mouth, smoothing back a strand of hair that had fallen in front of her eyes.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31264 /* ~"Are you, by chance, Lady Thorncombe?"~ */ GOTO 2
  IF ~~ THEN REPLY #31265 /* ~"I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #31266 /* ~"Don't mind me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 19.0
  SAY #31267 /* ~Her eyes widen momentarily. She looks away from you. "No. No, I am not, sir."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31268 /* ~"But I think that you are, madam. I was told you are the mages' tutor of the Civic Festhall."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31269 /* ~"You're a terrible liar, you know."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31270 /* ~"Who are you, then, if I may ask?"~ */ GOTO 17
  IF ~~ THEN REPLY #31271 /* ~"Just the same, I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #31272 /* ~"I'll take my leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 17.0 18.0 18.1
  SAY #31273 /* ~Lady Thorncombe puts on a sullen look. "And if I was this woman? What of it?"~ */
  IF ~~ THEN REPLY #31274 /* ~"I had hoped to receive training in the magical arts."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31030 /* ~I met Lady Thorncombe, the mages' tutor of the Clerk's Ward, in one of the Festhall's many sensoriums. She refuses to train me... although I'm not sure why.~ */ GOTO 4
  IF ~~ THEN REPLY #31275 /* ~"Then I had some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #31276 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 14.1 16.0
  SAY #31277 /* ~"I shall dash your hopes to pieces, then. I no longer wish to teach magic... now go, leave me in peace."~ */
  IF ~~ THEN REPLY #31278 /* ~"But why not?"~ */ GOTO 5
  IF ~~ THEN REPLY #31279 /* ~"Before I leave you, I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #31280 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #31281 /* ~"As if it were any concern of yours!"~ */
  IF ~~ THEN REPLY #31282 /* ~"But it is... I seek to learn, and you can teach. I would know what I might do to convince you to train me."~ */ GOTO 8
  IF ~~ THEN REPLY #31283 /* ~"Fine, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.1
  SAY #31284 /* ~She shakes her head. "'Tis not always so... mages are physically deficient, our spells merely crutches against this deficiency. When one's sorcery is spent, the core of combat still remains."~ */
  IF ~~ THEN REPLY #31285 /* ~"I see. I had other questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #31286 /* ~"I understand. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.3 3.1 4.1 6.0 13.0 13.1 14.2 16.1 17.3 19.1 20.1
  SAY #31287 /* ~"Very well, ask what you wish." She sounds apathetic.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31288 /* ~"Are you, by chance, Lady Thorncombe?"~ */ GOTO 2
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31289 /* ~"Qui-Sai won't train me... he says spells are more effective than melee in combat. What do you think?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Qui-Sai had refused to train me as a warrior, expounding upon the benefits of mages. However, I spoke to Lady Thorncombe, mages' tutor of the Civic Festhall, and she explained how they are physically deficient, their spells merely crutches against that deficiency. This should provide a good counterpoint to Qui-Sai's argument.~ */ GOTO 6
  IF ~~ THEN REPLY #31290 /* ~"I had questions about you..."~ */ GOTO 13
  IF ~~ THEN REPLY #31291 /* ~"I had questions about this place..."~ */ GOTO 13
  IF ~~ THEN REPLY #31292 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #31293 /* ~She sighs loudly and resumes chewing on her thumbnail. "I doubt there's much you can offer me which I cannot find on my own. The sensory stones provide me with all things that my considerable wealth cannot buy."~ */
  IF ~~ THEN REPLY #31294 /* ~"The sensory stones?"~ */ GOTO 9
  IF ~~ THEN REPLY #31295 /* ~"Fine, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #31296 /* ~"Mmm, yes... each stone has recorded within it one experience or another. When I first came to these halls, I spent little time with them. Only now do I realize what I had been missing..."~ */
  IF ~~ THEN REPLY #31297 /* ~"What had you been missing?"~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",2)
~ JOURNAL #31299 /* ~Lady Thorncombe seems to be addicted to sensory stones, preferring to spend her days sampling other's experiences rather than resuming her duties as an instructor of magic. I wonder what I could do to convince her to teach once more...~ */ GOTO 10
  IF ~~ THEN REPLY #31298 /* ~"Fine, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31300 /* ~She nods, smiling. Her eyes take on a glassy sheen, and she holds herself tightly. "One could spend lifetimes, here, among the stones... experience after wondrous experience... mere words cannot express their magnificence. I can only suggest you see for yourself, sir."~ */
  IF ~~ THEN REPLY #31301 /* ~"You sound... addicted."~ */ GOTO 11
  IF ~~ THEN REPLY #31302 /* ~"Perhaps I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #31303 /* ~She snarls at you: "Nonsense! I could stop anytime I wished! I merely *choose* to bask in their wonder. Why waste time teaching dawdling, ungrateful magelings, when I could remain here among these precious stones, living one hundred new lives each day?"~ */
  IF ~~ THEN REPLY #31304 /* ~"I don't think the stones are there for that. Shouldn't you seek sensations of your own to share?"~ */ GOTO 12
  IF ~~ THEN REPLY #31305 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #31306 /* ~"Hpmh! What *you* think matters little to me. Farewell."~ */
  IF ~~ THEN REPLY #31307 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2 7.3
  SAY #31308 /* ~As you begin to ask your question, you realize she's not looking at you... let alone paying you any attention.~ */
  IF ~  GlobalLT("Thorncombe","GLOBAL",2)
~ THEN REPLY #31309 /* ~"Hello? I had a question..."~ */ GOTO 7
  IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN REPLY #31310 /* ~"Lady Thorncombe? My question..."~ */ GOTO 7
  IF ~~ THEN REPLY #31311 /* ~Leave her.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.1 17.1 18.2
  SAY #31312 /* ~Lady Thorncombe sneers. "And you're a horribly scarred ruin of a man, more a corpse given some sad semblance of life than anything else. Now go away."~ */
  IF ~~ THEN REPLY #31313 /* ~"Speak to me that way and *you'll* end up the corpse."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thorn_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #31314 /* ~"Wait... I had hoped to receive training in the magical arts."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31315 /* ~"Not yet. I had some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #31316 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #31317 /* ~She barks a mocking laugh at you. "Go beat your chest at one who might find you a bit intimidating. I myself shall begin to find it insulting - rather than amusing - soon... and I'm certain you won't wish to be around, then."~ */
  IF ~~ THEN REPLY #31318 /* ~"On the contrary: let's just cut to the chase and have it out, you haughty witch."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31319 /* ~"I... hadn't meant for things to go this way. Allow me to apologize..."~ */ GOTO 16
  IF ~~ THEN REPLY #31320 /* ~"I leave because I tire of you, and for no other reason. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #31321 /* ~Just walk away.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #31322 /* ~She shakes her head, sighing loudly. "I would gladly accept your apology, if only you'd leave me be."~ */
  IF ~~ THEN REPLY #31323 /* ~"But I had hoped to receive training in the magical arts."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31326 /* ~I met Lady Thorncombe, the mages' tutor of the Clerk's Ward, in one of the Festhall's many sensoriums. She refuses to train me... although I'm not sure why.~ */ GOTO 4
  IF ~~ THEN REPLY #31324 /* ~"In a moment; I had some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #31325 /* ~"I will, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2
  SAY #31327 /* ~She smiles nervously. "No one of consequence, I assure you."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31328 /* ~"But I think that you are, madam. You are Lady Thorncombe, mages' tutor of the Civic Festhall."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31329 /* ~"You're a terrible liar, you know."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31330 /* ~"Might I have your name?"~ */ GOTO 18
  IF ~~ THEN REPLY #31331 /* ~"Just the same, I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #31332 /* ~"I'll take my leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #31333 /* ~"Oh... I'm, eh... Adhana?"~ */
  IF ~  GlobalGT("Adahn","GLOBAL",0)
~ THEN REPLY #31334 /* ~"All right, that's enough of this. I think we *both* know who you are, Lady Thorncombe."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31335 /* ~"You are actually Lady Thorncombe, mages' tutor of the Civic Festhall. Am I correct?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31336 /* ~"You're a terrible liar, you know."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #31337 /* ~This woman is still meandering about the sensorium, travelling from stone to stone. She looks you over as you approach, but does not seem to recognize you.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31338 /* ~"Are you, by chance, Lady Thorncombe?"~ */ GOTO 2
  IF ~~ THEN REPLY #31339 /* ~"I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #31340 /* ~"Don't mind me. Farewell."~ */ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN BEGIN 20 // from:
  SAY #31341 /* ~Lady Thorncombe squints at you, as if trying to remember who you were. Suddenly, she frowns pointedly. "You! I hope you have not come here in an ill-fated attempt to drag me back to the training chamber... because I most certainly shall not go."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #31342 /* ~"I just wondered if you knew that Salabesh was happy to hear of your decision, and is requesting to be made the new mages' tutor."~ */ GOTO 21
  IF ~~ THEN REPLY #31343 /* ~"I just had some questions, actually..."~ */ GOTO 7
  IF ~~ THEN REPLY #31344 /* ~"No, I didn't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31345 /* ~"Salabesh?! That portly little oaf... the man couldn't magic his way out of a mildewed sack! Now what is this *decision* you speak of?"~ */
  IF ~~ THEN REPLY #31346 /* ~"Why, your decision to remain in the sensoriums, and to no longer train less experienced mages."~ */ JOURNAL #31349 /* ~I told Lady Thorncombe of Salabesh's intent to assume her position as the Civic Festhall's mages' tutor... apparently the two share little love for one another, and she was quick to return to the mages' training chamber so as to foil his plans.~ */ GOTO 22
  IF ~~ THEN REPLY #31347 /* ~"Nothing; forget I mentioned it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31350 /* ~"What?! But... I..."~ */
  IF ~~ THEN REPLY #31351 /* ~"Yes, Lady Thorncombe?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #31352 /* ~She glares at you. "Asinine. Wholly asinine. Should you see Salabesh again, tell him not to bother. I shall return to the training chambers at once."~ */
  IF ~~ THEN REPLY #31353 /* ~"Perhaps I'll see you there, Lady Thorncombe. Farewell."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",4)
SetGlobal("Thorncombe","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0603cut1",FALSE)
~ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31354 /* ~Lady Thorncombe frowns at you. "I've no time to talk, now... you may meet me in the mages' training chamber later, if you wish. Farewell."~ */
  IF ~~ THEN REPLY #31355 /* ~Leave.~ */ EXIT
END

IF ~  GlobalGT("Thorncombe","GLOBAL",3)
~ THEN BEGIN 25 // from:
  SAY #31356 /* ~Lady Thorncombe nods at you, but you're not clear as to whether she recognizes you or not. She's straightened her clothes and hair, and looks quite the aging but attractive noblewoman... but still seems far away and easily distracted. "Greetings... are you here to train in the magical arts?"~ */
  IF ~  Global("Thorncombe","GLOBAL",5)
Class(Protagonist,MAGE)
~ THEN REPLY #31357 /* ~"Yes... show me what spells you have to teach."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~  Global("Thorncombe","GLOBAL",5)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #64643 /* ~"Yes... I wish to walk the path of the mage once more. Can you show me the way?"~ */ GOTO 32
  IF ~  Global("Thorncombe","GLOBAL",4)
~ THEN REPLY #31358 /* ~"Yes, I am."~ */ GOTO 30
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #68458 /* ~"No, but I'd like to purchase some spells."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31359 /* ~"No, but I had some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #31360 /* ~"No, not now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4
  SAY #31364 /* ~"My time and attention is reserved for my students, sir. I suggest you speak to one of them... or better yet, someone less occupied."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31362 /* ~"Wait: Qui-Sai won't train me... he says spells are more effective than melee in combat. What do you think?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Qui-Sai had refused to train me as a warrior, expounding upon the benefits of mages. However, I spoke to Lady Thorncombe, mages' tutor of the Civic Festhall, and she explained how they are physically deficient, their spells merely crutches against that deficiency. This should provide a good counterpoint to Qui-Sai's argument.~ */ GOTO 27
  IF ~~ THEN REPLY #31363 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31365 /* ~She shakes her head. "'Tis not always so... mages are physically deficient, our spells merely crutches against this deficiency. When one's sorcery is spent, the core of combat still remains."~ */
  IF ~~ THEN REPLY #31366 /* ~"I understand. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #31367 /* ~You answer the last of her questions, and she nods, pleased. "You are a mage by trade then, I take it?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #31369 /* ~"That I am."~ */ GOTO 35
  IF ~  !Class(Protagonist,MAGE)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31370 /* ~"No... I am not."~ */ GOTO 29
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31371 /* ~"Not currently, no... though I've been trained."~ */ GOTO 29
  IF ~~ THEN REPLY #31372 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.2
  SAY #31373 /* ~She shuts her eyes and lets out a long, low sigh. "What do you expect me to teach you, then? Waste no more of my time, nor my students'! Farewell."~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31374 /* ~"Wait... could you *make* me a mage?"~ */ GOTO 32
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31375 /* ~"Wait... I wish to walk the path of the mage once more. Can you show me the way?"~ */ GOTO 32
  IF ~~ THEN REPLY #31376 /* ~"Farewell, Lady Thorncombe."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.2
  SAY #31377 /* ~"Very well. Answer me these questions, if you would..." She proceeds to test your intelligence and reasoning ability with a long series of logic and word puzzles...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #31378 /* ~Answer her questions as best you can.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Thorncombe","GLOBAL",5)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #31379 /* ~Answer her questions as best you can.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #31380 /* ~"I am sorry, but you simply do not possess the intellect to grasp the fundamental concepts of magery. I wish you well, though, on whatever other path you choose to take through life; farewell."~ */
  IF ~~ THEN REPLY #31381 /* ~"Uh... all right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1 29.0 29.1
  SAY #31382 /* ~"I could *try,* that much is certain. Would you truly give up your current profession?"~ */
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31383 /* ~"Yes, I wish to give up the sword in exchange for sorcery, taking up the Art once more."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31384 /* ~"Yes, I wish to leave thievery behind me and take up the Art once more."~ */ GOTO 33
  IF ~  Class(Protagonist,FIGHTER)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31385 /* ~"Yes, I wish to give up the sword in exchange for sorcery. Teach me the ways of the Art."~ */ GOTO 36
  IF ~  Class(Protagonist,THIEF)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31386 /* ~"Yes, I wish to leave thievery behind me and take up the ways of the Art."~ */ GOTO 36
  IF ~~ THEN REPLY #31387 /* ~"No, I had best not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #31388 /* ~"Very well. Together we shall review what you know of the Art... we shall soon set you on its path once more."~ */
  IF ~~ THEN REPLY #31389 /* ~Listen and learn.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31390 /* ~"I am most impressed! Had not the sensory stones already revealed to me the impossible so many times before, I would not have believed how quickly you recalled the ways of the Art. Are you ready to see what spells I can teach you, then?"~ */
  IF ~~ THEN REPLY #31391 /* ~"Yes, please show me."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31392 /* ~"Not right now, but I'll return later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.0
  SAY #31393 /* ~"Are you ready to see what spells I can teach you, then?"~ */
  IF ~~ THEN REPLY #31394 /* ~"Yes, please show me."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31395 /* ~"Not right now, but I'll return later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2 32.3
  SAY #31396 /* ~"Very well. I will teach you what I can." She pauses for a moment, lost in thought. "A talent for the Art alone is not enough. You require a means of giving it focus: spells. One's spells are, most often, stored in a book, though I've come across mages who kept theirs in papyrus scrolls, stone tablets... embroidered silk... animal hides..." Her eyes seem to glaze over, and she begins to chew her thumbnail.~ */
  IF ~~ THEN REPLY #31397 /* ~"Lady Thorncombe? You were saying?"~ */ JOURNAL #39474 /* ~I trained to become a mage under a woman named Lady Thorncombe, the mages' tutor in the Civic Festhall.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31398 /* ~"Hmm? Oh! Forgive me... as I was saying, the Art demands a book - or its like - before you cast spells. You can read, yes?"~ */
  IF ~~ THEN REPLY #31399 /* ~"I don't know."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
  IF ~~ THEN REPLY #31400 /* ~"Yes."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #31401 /* ~"We shall test you once more, then." She draws a scroll from a leather case hung at her side. "Might you read this for me?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #31402 /* ~Examine the scroll.~ */ GOTO 39
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #31403 /* ~Examine the scroll.~ */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #31404 /* ~The writing upon the scroll swims before your eyes, each symbol twisting out of focus whenever you try and read it. Almost instinctively, you relax your eyes, allowing them to take in the page all at once... and the symbols suddenly bleed together: the scroll lists arcane syllables, magical components and mystical hand motions used to control the flow of mana... it appears to be a minor charm spell.~ */
  IF ~~ THEN REPLY #31405 /* ~"This is a minor charm, isn't it? It looks like it's a spell to make yourself more appealing to others, more charismatic."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #31406 /* ~The writing upon the scroll swims before your eyes, each symbol twisting out of focus whenever you try and read it.~ */
  IF ~~ THEN REPLY #31407 /* ~Study the symbols, see if you can decipher them.~ */ GOTO 41
  IF ~~ THEN REPLY #31408 /* ~"I give up, Lady Thorncombe... what does this writing mean?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #31409 /* ~You study the symbols intently. No matter how hard you concentrate, however, the writing on the scroll seems to flow out of focus, bending and twisting like a nest of snakes. It makes your eyes hurt just trying to follow their movements. ~ */
  IF ~~ THEN REPLY #31410 /* ~Keep studying the symbols, try and puzzle out their meaning. ~ */ GOTO 42
  IF ~~ THEN REPLY #31411 /* ~"I give up, Lady Thorncombe... what does this writing mean?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0 42.0
  SAY #31412 /* ~You keep studying the symbols for a few more minutes, Lady Thorncombe silently watching you. Eventually, she loses interest and her eyes begin to wander around the chamber.~ */
  IF ~~ THEN REPLY #31413 /* ~Keep studying the symbols, try and puzzle out their meaning. ~ */ GOTO 42
  IF ~~ THEN REPLY #31414 /* ~"I give up, Lady Thorncombe... what does this writing mean?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.1 41.1 42.1
  SAY #31415 /* ~As you are about to give up and turn away, you relax your eyes and take in the page all at once... as you do, the symbols suddenly bleed together. The scroll lists arcane syllables, magical components and mystical hand motions used to control the flow of mana ... it appears to be a minor charm spell.~ */
  IF ~~ THEN REPLY #31416 /* ~"This is a minor charm, isn't it? It looks like it's a spell to make yourself more appealing to others, more charismatic."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.0 43.0
  SAY #31417 /* ~Lady Thorncombe's eyes widen. "Who are you to fool me so?!" She snatches the scroll from your grasp. "Did you lie to me? You are a mage after all? Or a fiend, perhaps? Answer me!"~ */
  IF ~~ THEN REPLY #31418 /* ~"What's wrong?"~ */ JOURNAL #31420 /* ~Lady Thorncombe gave me a test... a minor charm spell, written upon a scroll in the language of the Art. I was able to decipher its meaning with no training. I must have learned how to read magic at some point in the past.~ */ GOTO 45
  IF ~~ THEN REPLY #31419 /* ~"No, not to my knowledge. What's wrong?"~ */ JOURNAL #31420 /* ~Lady Thorncombe gave me a test... a minor charm spell, written upon a scroll in the language of the Art. I was able to decipher its meaning with no training. I must have learned how to read magic at some point in the past.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #31421 /* ~"I had not expected... hmm..." She gives you a long, careful look. "What you read, 'tis written in the language of the *Art.* Were you not a mage, it should have been nothing by garbled symbols, utterly meaningless to you. Yet, as if it were clear as the Amorian sky, you made sense of it. How is this?"~ */
  IF ~~ THEN REPLY #31422 /* ~"I don't really know... I just *knew* what it said."~ */ GOTO 46
  IF ~~ THEN REPLY #31423 /* ~"I think I may have known once, but forgot... seeing the symbols just jarred my memory."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0 45.1
  SAY #31424 /* ~"Or perhaps a natural gift... no matter, though." She smiles at you. "You have just shaved seasons, perhaps *years* of study off your training. Now... you can read spells well enough, but do you have a book for them?"~ */
  IF ~~ THEN REPLY #31425 /* ~"A spell book? No..."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #31426 /* ~"What is that, then?" She points to your journal.~ */
  IF ~~ THEN REPLY #31427 /* ~"This is my journal. I've been recording things of interest... people I've met and the like... within it."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31428 /* ~"You shall record your spells within it, then, as well." She frowns at the journal. "A tattered thing... but it will do." She stands silently for a time, regarding your journal. She appears to be lost in thought, and begins to chew on her thumbnail.~ */
  IF ~~ THEN REPLY #31430 /* ~"Lady Thorncombe...?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #31432 /* ~She focuses on you again: "Mm? Oh... yes. Now: so long as your spells sit in this book, they are without power - only words. The Art demands you study the spells - *memorize* them - before you can tap their power. This requires a clear mind, so it is best advised that you rest before doing so. Do you understand?"~ */
  IF ~~ THEN REPLY #31433 /* ~"Yes, go on."~ */ GOTO 50
  IF ~~ THEN REPLY #31434 /* ~"I think I understand these basics, Lady Thorncombe."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #31435 /* ~"Excellent. Now: choose the spells you wish to memorize *before* you sleep; this is of the utmost importance. When you arise, they shall be fresh in your mind, rich with mana and ready to be cast."~ */
  IF ~~ THEN REPLY #31436 /* ~"How many spells can I cast?"~ */ GOTO 51
  IF ~~ THEN REPLY #31437 /* ~"I think I understand these basics, Lady Thorncombe."~ */ GOTO 56
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #31438 /* ~"Only one, perhaps two spells before you'll need to rest once more... as a fledgling mage, there is little room in mind for more power than that. Use your spells wisely until you become more proficient in the Art... but I would advise you to use them wisely even then. As your experience grows, you'll find your ability to memorize spells grows, as well."~ */
  IF ~~ THEN REPLY #31439 /* ~"All right... go on..."~ */ GOTO 52
  IF ~~ THEN REPLY #31440 /* ~"I think I understand these basics, Lady Thorncombe."~ */ GOTO 56
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #31441 /* ~"You may only cast those spells you have memorized. So, if you wished to use the Art to say, identify two different enchanted objects, you would need to memorize the Identify spell... how many times?"~ */
  IF ~~ THEN REPLY #31442 /* ~"Once."~ */ GOTO 53
  IF ~~ THEN REPLY #31443 /* ~"Twice."~ */ GOTO 54
  IF ~~ THEN REPLY #31444 /* ~"Uh..."~ */ GOTO 53
  IF ~~ THEN REPLY #31445 /* ~"I think I understand these basics, Lady Thorncombe."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.2
  SAY #31446 /* ~"Twice! To cast a spell *twice,* you would need to memorize the spell *twice.*"~ */
  IF ~~ THEN REPLY #31447 /* ~"I understand. How do I get more spells?"~ */ JOURNAL #31449 /* ~Lady Thorncombe taught me the fundamentals of the Art. She says that before I rest, I'll need to pick what spells I want to memorize by going to my spell book and choosing them. If I want to be able to cast a spell multiple times, I'll have to memorize the spell multiple times. Whenever I rest, I'll awake the next morning with the spells in my memory, ready to be cast. She said I'll only be able to cast a small number of spells each day until I become more proficient in their use. I might be able to find other teachers around this city who can teach me to cast spells, as well.~ */ GOTO 55
  IF ~~ THEN REPLY #31448 /* ~"I think I understand these basics, Lady Thorncombe."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY #31450 /* ~Lady Thorncombe nods, smiling. "Yes, twice, correct."~ */
  IF ~~ THEN REPLY #31451 /* ~"How do I get more spells?"~ */ JOURNAL #31449 /* ~Lady Thorncombe taught me the fundamentals of the Art. She says that before I rest, I'll need to pick what spells I want to memorize by going to my spell book and choosing them. If I want to be able to cast a spell multiple times, I'll have to memorize the spell multiple times. Whenever I rest, I'll awake the next morning with the spells in my memory, ready to be cast. She said I'll only be able to cast a small number of spells each day until I become more proficient in their use. I might be able to find other teachers around this city who can teach me to cast spells, as well.~ */ GOTO 55
  IF ~~ THEN REPLY #31452 /* ~"I think I understand these basics, Lady Thorncombe."~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 53.0 54.0
  SAY #31453 /* ~"Always look for a chance to learn more - even common folk might have some minor magicks to teach. There are also recipes, books, and even stranger items that have spells inscribed upon them. Should you find one, simply examine it closely and copy the spell into your book if you desire it."~ */
  IF ~~ THEN REPLY #31454 /* ~"Got it."~ */ GOTO 56
  IF ~~ THEN REPLY #31455 /* ~"I think I understand these basics, Lady Thorncombe."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 49.1 50.1 51.1 52.3 53.1 54.1 55.0 55.1
  SAY #31456 /* ~"Take these scrolls, then... minor magicks, to whet your appetite for the Art." She smiles slyly. "Return here when you are more wise in the ways of the multiverse... no longer may you train here without cost, but I shall be able to sell you more powerful spells as you gain the ability to use them."~ */
  IF ~~ THEN REPLY #31457 /* ~"Thank you, Lady Thorncombe. Farewell."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
  IF ~~ THEN REPLY #31458 /* ~"I'll be back later, then. Farewell."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
END
