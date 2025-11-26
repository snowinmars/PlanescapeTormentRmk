// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTAI~

IF ~  Global("Mortai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1794 /* ~This tiny, wizened man is dwarfed by his huge Dustman robes; they look as if they were chosen to cloak his small stature. Although he looks to be in his late nineties, this man is extremely energetic... he fidgets continuously, and his eyes dart around the bar like a bird's. ~ */
  IF ~~ THEN REPLY #13417 /* ~"Greetings."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #13418 /* ~Ignore the man.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1795 /* ~The man's eyes gleam as he takes your measure, and he gives a slight nod in greeting. "Hail and well met, traveler. You look like one who is just getting their Sigil legs about them..." He trails off. "Pardon me, have we met before? Your face seems familiar somehow."~ */
  IF ~~ THEN REPLY #13419 /* ~"Possibly. Are you certain it was me?"~ */ GOTO 2
  IF ~~ THEN REPLY #13420 /* ~"No, at least... I don't recall you."~ */ GOTO 2
  IF ~~ THEN REPLY #13421 /* ~"Never mind. I must be going."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #13350 /* ~"Hmmmm... maybe I was mistaken." Mortai shakes his head. "Well, no matter, no matter. How is it that Mortai Gravesend may help you? Do you seek..." He clucks his tongue as he speaks. "...the *Contract* perhaps?" ~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13422 /* ~"Contract?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13423 /* ~"Contract?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
~ THEN REPLY #13424 /* ~"Mortai Gravesend? Are you the Dustman who signed the Contract with Angyar?"~ */ GOTO 42
  IF ~~ THEN REPLY #13425 /* ~"Not this day, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 10.0 61.0
  SAY #13351 /* ~"The Contract? Why, it is but a simple transaction." From the depths of his huge robe, Mortai pulls forth a dusty parchment and a quill pen. "I give you fifty commons. In return - after death - the Dustmen faction may claim your remains." He smiles, then clucks his tongue. "What use will you have for them at that point anyway?" ~ */
  IF ~~ THEN REPLY #13426 /* ~"What do the Dustmen do with the body?"~ */ GOTO 5
  IF ~~ THEN REPLY #13427 /* ~"Fifty coppers for my corpse? Very well, I'll sign."~ */ GOTO 12
  IF ~~ THEN REPLY #13428 /* ~"Not interested, thanks. I did have some questions, though..."~ */ GOTO 9
  IF ~~ THEN REPLY #13429 /* ~"I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.1 9.1 10.1 61.1
  SAY #13352 /* ~"The Contract? Why, it is but a simple transaction." From the depths of his huge robe, Mortai pulls forth a dusty parchment and a quill pen. "The usual sum paid is fifty... but for you, I will pay a hundred commons. In return - after death - the Dustmen faction may claim your remains." He smiles, then clucks his tongue. "What use will you have for them at that point anyway?"~ */
  IF ~~ THEN REPLY #13430 /* ~"What do the Dustmen do with the body?"~ */ GOTO 5
  IF ~~ THEN REPLY #13431 /* ~"A hundred coppers for my corpse? Very well, I'll sign."~ */ GOTO 12
  IF ~~ THEN REPLY #13432 /* ~"Not interested, thanks. I did have some questions, though..."~ */ GOTO 9
  IF ~~ THEN REPLY #13433 /* ~"I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #13353 /* ~Mortai holds up his hands, as if he doesn't know. "What does it matter? It is of no consequence when you pass on."~ */
  IF ~~ THEN REPLY #13434 /* ~"It matters to me."~ */ GOTO 6
  IF ~~ THEN REPLY #13435 /* ~"Very well, I'll sign."~ */ GOTO 12
  IF ~~ THEN REPLY #13436 /* ~"Not interested, thanks. I did have some questions, though..."~ */ GOTO 9
  IF ~~ THEN REPLY #13437 /* ~"I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13354 /* ~"Well, if you *must* know, oft times, *nothing* is done with the body, and it is we, the Dustmen, who have wasted all that money! More fools us!" Mortai gives a light smile, then looks apologetic. "But... *rarely,* there are times when the... workers in the Mortuary need to be replaced... and then, we may have a need for your body."~ */
  IF ~~ THEN REPLY #13438 /* ~"You mean, I'll be animated as a corpse and put to work in the Mortuary? That doesn't sound good."~ */ GOTO 7
  IF ~~ THEN REPLY #13439 /* ~"Very well, I'll sign."~ */ GOTO 12
  IF ~~ THEN REPLY #13440 /* ~"Not interested, thanks. I did have some questions, though..."~ */ GOTO 9
  IF ~~ THEN REPLY #13441 /* ~"I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #13355 /* ~"Ah, but no harm is done, no pain..." Mortai raises a finger, as if to emphasize the point. "And there is no danger. In exchange for money you can spend in *this* life, you merely have to give us something you will have no need of anyway once you have died." Mortai taps his chest. "I signed the contract myself, if you must know... I shall have no need of *my* body when I pass on."~ */
  IF ~~ THEN REPLY #13442 /* ~"Hmmmm... true. Very well, I'll sign."~ */ GOTO 12
  IF ~~ THEN REPLY #13443 /* ~"I'll consider it. For now, I have some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13444 /* ~"Well, I'd prefer to rest in peace, for a number of reasons. I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.2 12.5 13.5 20.3 21.4 32.3 34.2 35.2 40.2 61.5 63.4
  SAY #13356 /* ~"But I can help you! I can!" Mortai calls out as you leave, his voice pleading. "Return should you be in need of funds, and Mortai can help... all in exchange for your signature."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 4.2 5.2 6.2 7.1 10.2 11.2 12.4 13.4 20.2 21.3 22.0 23.0 24.3 25.2 26.1 27.5 27.6 27.7 27.8 27.9 28.1 29.2 30.0 31.1 32.2 33.1 34.1 35.1 36.3 37.2 38.1 40.1 41.3 42.3 43.5 44.5 45.4 46.5 49.4 52.4 55.3 60.0 61.4 62.0 63.3 66.2
  SAY #13357 /* ~"Of course, of course..." Mortai nods. "It would be my pleasure to answer any questions you may have..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13445 /* ~"Tell me about that Contract again."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13446 /* ~"Tell me about that Contract again."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13447 /* ~"I'd like to sign that Contract you mentioned."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13448 /* ~"I'd like to cancel that Contract I signed with you."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13449 /* ~"Are you the one who signed that Dead Contract with Angyar?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13450 /* ~"Can I see that Contract you signed with Angyar?"~ */ GOTO 54
  IF ~~ THEN REPLY #13451 /* ~"Can you tell me about some of the patrons here?"~ */ GOTO 27
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13452 /* ~"Have you seen a journal recently? I'm missing mine."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13453 /* ~"I am searching for a man named Pharod. Have you seen him?"~ */ GOTO 11
  IF ~~ THEN REPLY #13454 /* ~"No questions today. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 10 // from: 9.7
  SAY #13358 /* ~Mortai shakes his head. "I know nothing about a journal." He smiles. "I deal with documentation of a much *different* sort..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13455 /* ~"You mean that Contract you mentioned? What about it?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13456 /* ~"You mean that Contract you mentioned? What about it?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #13457 /* ~"So you mentioned before. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13458 /* ~"That's all I wished to know. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 11 // from: 9.8
  SAY #13359 /* ~Mortai frowns. "He's one of those Collectors, isn't he? I know little of him... I think Initiate Emoric mentioned him in passing." Mortai glances around. "Emoric should be around here in the bar somewhere... he can usually be found in the far corner at the head table, I believe."~ */
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13459 /* ~"Initiate Emoric?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13460 /* ~"Initiate Emoric?"~ */ GOTO 33
  IF ~~ THEN REPLY #13461 /* ~"Oh. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13462 /* ~"That's all I wished to know. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 12 // from: 3.1 4.1 5.1 6.1 7.0 9.2 35.0
  SAY #13360 /* ~"Excellent! Excellent!" Mortai looks overjoyed... with a thin smile, he places a dusty sheet of parchment and the quill pen in front of you. "You shall *not* regret it." He jabs his finger at three points on the page. "Sign here, here and here, and our transaction is concluded!"~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13463 /* ~Sign there, and there, and there.~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13464 /* ~Sign there, and there, and there.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #13465 /* ~"You know... you show more emotion than other Dustmen I've met."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13466 /* ~"You know... you show more emotion than other Dustmen I've met."~ */ GOTO 13
  IF ~~ THEN REPLY #13467 /* ~"Forget it. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13468 /* ~"Never mind. I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.2 12.3
  SAY #13361 /* ~Mortai's smile turns cold. "I trust you meant no offense, sir."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13469 /* ~"I did not. Let me sign the Contract."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13470 /* ~"I did not. Let me sign the Contract."~ */ GOTO 21
  IF ~~ THEN REPLY #13471 /* ~"Is there a problem?"~ */ GOTO 29
  IF ~~ THEN REPLY #13472 /* ~"I meant no offense... but you seem awfully eager to sign this Contract with me. And for a Dustman, eagerness strikes me as odd."~ */ GOTO 63
  IF ~~ THEN REPLY #13473 /* ~"My apologies. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13474 /* ~"No offense meant... but I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 21.2 63.0
  SAY #13362 /* ~You take the quill in your hand, and you begin to scratch your signature into the parchment... the quill pen makes a strange *skritching* noise as it touches the parchment, like a dagger writing on steel.~ */
  IF ~~ THEN REPLY #13475 /* ~Continue signing...~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13363 /* ~As you try to sign the parchment, however, you notice that it seems to be shifting beneath your pen... no matter how hard you try, you can't seem to sign your name. The contract seems to twist from being a dusty piece of parchment to something... alive? ~ */
  IF ~~ THEN REPLY #13476 /* ~"Uh... Mortai? What's with this Contract?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #13364 /* ~When you glance up to speak to Mortai, you see that his face has been replaced with that of a grinning skull. The rest of the bar seems to stop, the patrons falling silent, freezing like statues. Mortai opens his mouth, and a wisp of dust trails from inside the skull.~ */
  IF ~~ THEN REPLY #13477 /* ~"Mortai...?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13365 /* ~With a rasp, the death's head speaks, dust steaming from its teeth...

     *Sign*

     *But remember... everything has its price*

     *And what can change the nature of a man?*

The words are a ragged, dead chorus, as if being spoken by five, ten, twenty, a hundred voices - old, young, female, male, desperate, calm, hysterical...~ */
  IF ~~ THEN REPLY #13478 /* ~"Nature of a man...?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13366 /* ~As you speak the words, suddenly you feel faint, and the next thing you hear is Mortai's voice, normal, and his hand upon your shoulder. "Sir, are you all right?" He laughs uneasily. "I thought I'd lost you for a moment..." ~ */
  IF ~~ THEN REPLY #13479 /* ~Try and get your bearings...~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #13367 /* ~It is as if time has exhaled and resumed its natural breathing... the rest of the bar has returned to normal, and Mortai's face is no longer a death's head. You feel a strange pressure inside your skull, as if something desperately wishes to surface, but cannot. The experience with the death's head that spoke dust... it was as if you remembered a dozen splinters of memory at once, all stabbing into each other to create an image... and you know, somehow, that every voice the death's head spoke, belonged to *someone*... now long dead. ~ */
  IF ~~ THEN REPLY #13480 /* ~"Just give me a moment... I'll be fine."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13368 /* ~Mortai removes his hand from your shoulder... he looks uneasy, more at the prospect of losing a customer than any concern for your welfare. As you stare at the dusty parchment upon the table, you know for a fact that this is not the first time you have penned your name to a contract... and perhaps not the first time you have signed one such as this.~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13481 /* ~Finish signing the contract. ~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13482 /* ~Finish signing the contract. ~ */ GOTO 23
  IF ~~ THEN REPLY #13483 /* ~"Actually, Mortai... I think I will hold off before signing this. I had some other questions first..."~ */ GOTO 9
  IF ~~ THEN REPLY #13484 /* ~"I don't think you can help me... farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 12.1 13.1 63.1
  SAY #13369 /* ~As you touch the quill to the parchment again, you feel a faint stirring, and a rush of thought and memory wells up within your skull...~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13485 /* ~Suppress the memory, sign the contract...~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13486 /* ~Suppress the memory, sign the contract...~ */ GOTO 23
  IF ~~ THEN REPLY #13487 /* ~Surrender to the memory.~ */ GOTO 14
  IF ~~ THEN REPLY #13488 /* ~"Actually, Mortai... I think I will hold off before signing this. I had some other questions first..."~ */ GOTO 9
  IF ~~ THEN REPLY #13489 /* ~"I do not think you can help me... farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #13370 /* ~You scratch a 'X' across the contract in the three places Mortai indicated. As you finish making the last mark, Mortai's hands lash out like two whips: The left hand sprinkles dust across the parchment to help the ink dry, and his right hand flicks a stream of coppers into your hands... fifty in all. ~ */
  IF ~~ THEN REPLY #13490 /* ~"Now that that is out of the way, I had some other questions for you..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13491 /* ~"Our business is concluded... farewell."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 23 // from: 20.1 21.1
  SAY #13371 /* ~You scratch a 'X' across the contract in the three places Mortai indicated. As you finish making the last mark, Mortai's hands lash out like two whips: The left hand sprinkles dust across the parchment to help the ink dry, and his right hand flicks a stream of coppers into your hands... a hundred in all. ~ */
  IF ~~ THEN REPLY #13492 /* ~"Now that that is out of the way, I had some other questions for you..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13493 /* ~"Our business is concluded... farewell."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 24 // from: 9.3
  SAY #13372 /* ~Mortai looks wary. "I'm afraid that cannot be done. The contract is signed, settled, and binding."~ */
  IF ~~ THEN REPLY #13494 /* ~"Is there any way I might be able to settle the contract with you?"~ */ GOTO 25
  IF ~~ THEN REPLY #13495 /* ~Bluff: "I suggest you hand over my contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13496 /* ~Truth: "I suggest you hand over my contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13497 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13498 /* ~"I was just curious. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13373 /* ~Mortai shakes his head. "It is now a matter of law." He taps his chin and clucks his tongue. "For another man, I would be willing to part with such a contract, but yours... from the look of you, it will come due soon."~ */
  IF ~~ THEN REPLY #13499 /* ~Bluff: "How about this: Give me my contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13500 /* ~Truth: "How about this: Give me my contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13501 /* ~"Very well, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13502 /* ~"Farewell, then."~ */ GOTO 56
END

IF ~~ THEN BEGIN 26 // from: 24.1 24.2 25.0 25.1
  SAY #13374 /* ~Mortai freezes, his eyes gauging you. "If you draw weapons in here, you will not live to use them. There are guardians that you cannot even *see* hovering about this place. And even should you leave, the Dustmen shall see to it that you are punished. Do not make such foolish threats in my presence."~ */
  IF ~~ THEN REPLY #13503 /* ~"I'll risk it... prepare to die."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13504 /* ~"Forget it, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13505 /* ~"Never mind, then. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 27 // from: 9.6
  SAY #13375 /* ~"Of course. Which of the patrons did you wish to know about?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13506 /* ~"Can you tell me about Awaiting-Death?"~ */ GOTO 28
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13507 /* ~"Can you tell me about Sere?"~ */ GOTO 31
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13508 /* ~"Can you tell me about Initiate Emoric?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13509 /* ~"Can you tell me about Initiate Emoric?"~ */ GOTO 33
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13510 /* ~"Can you tell me about Old Copper-Eyes?"~ */ GOTO 36
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
~ THEN REPLY #13511 /* ~"Actually, never mind - I don't know any of their names. I had some other questions instead..."~ */ GOTO 9
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13512 /* ~"Actually, never mind. I had some other questions instead..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13513 /* ~"Actually, never mind. I had some other questions instead..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #13653 /* ~"Actually, never mind. I had some other questions instead..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13654 /* ~"Actually, never mind. I had some other questions instead..."~ */ GOTO 9
  IF ~~ THEN REPLY #13655 /* ~"Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13376 /* ~"A troubled, troubled initiate." Mortai clicks his tongue disapprovingly. "He seeks death with a passion that is *most* inappropriate for a Dustman."~ */
  IF ~~ THEN REPLY #13514 /* ~"Are Dustmen not allowed to feel passions?"~ */ GOTO 29
  IF ~~ THEN REPLY #13515 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13516 /* ~"Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 29 // from: 13.2 28.0 31.0 33.0 36.0 37.0 40.0 63.2
  SAY #13377 /* ~"Oh my, yes." Mortai frowns. "Too much passion, too much emotion prevents one from reaching the True Death. To be passionate runs contrary to the philosophy of our faction." ~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #13517 /* ~"True Death?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 30
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13518 /* ~"True Death?"~ */ GOTO 30
  IF ~~ THEN REPLY #13519 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13520 /* ~"Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #13378 /* ~"The True Death is the state of peaceful oblivion all Dustmen aspire to... and help all others reach." He clucks disapprovingly. "Anything that ties a soul to this life is shunned by our faction, whether these ties are possessions or emotions. You see... passions act as an anchor on the soul, preventing it from reaching the True Death..." He shakes his head. "Very bad, very bad."~ */
  IF ~~ THEN REPLY #13521 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13522 /* ~"I see. Very enlightening. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY #13379 /* ~"A troubled initiate. I heard she contracted a sickness not long ago, and it... changed her. Now she seems bitter and angry, and she does not speak the Dustman beliefs with the conviction she once did. I fear that bitterness is a passion that could jeopardize her position within the faction."~ */
  IF ~~ THEN REPLY #13523 /* ~"Are Dustmen not allowed to feel passions?"~ */ GOTO 29
  IF ~~ THEN REPLY #13524 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13525 /* ~"Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 32 // from: 11.0 27.2
  SAY #13380 /* ~"A respected Initiate of the Fourth Circle. A *very* wise man." Mortai studies you, slightly worried. "What is your business with him, may I ask? Perhaps I can help you instead."~ */
  IF ~~ THEN REPLY #13526 /* ~"Well, I was thinking about signing a contract with Emoric."~ */ GOTO 34
  IF ~~ THEN REPLY #13527 /* ~Lie: "Well, I was thinking about signing a contract with Emoric."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_2","GLOBALLaw",-1)
~ GOTO 34
  IF ~~ THEN REPLY #13528 /* ~"I don't think so. I had some more questions, though..."~ */ GOTO 9
  IF ~~ THEN REPLY #13529 /* ~"No, I don't think you can help me. Farewell, Mortai."~ */ GOTO 8
END

IF ~~ THEN BEGIN 33 // from: 11.1 27.3
  SAY #13381 /* ~"A respected Initiate of the Fourth Circle. A *very* wise man. He has divested himself of attachments and passions for this life..." He nods in approval. ~ */
  IF ~~ THEN REPLY #13530 /* ~"Are Dustmen not allowed to feel passions?"~ */ GOTO 29
  IF ~~ THEN REPLY #13531 /* ~"I see. I had some more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13532 /* ~"Thanks for the information. Farewell, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 34 // from: 32.0 32.1
  SAY #13382 /* ~Mortai looks visibly distressed. "No, no, good sir! He will not offer half the price I will for such a contract, it would be a... a... mere *pittance* compared to what I could give you! Consider this before you make a hasty decision!" ~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13533 /* ~"How much more will you offer?"~ */ DO ~SetGlobal("Mortai_Blackmail","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #13534 /* ~"I'll think about it. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13535 /* ~"I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #13383 /* ~"I..." Mortai clucks his tongue. "I will offer seventy-five... a hundred coppers, sir! Much, much more than any other Dustman will offer." ~ */
  IF ~~ THEN REPLY #13536 /* ~"Very well, I will sign with you."~ */ GOTO 12
  IF ~~ THEN REPLY #13537 /* ~"I'll think about it. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13538 /* ~"I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 27.4
  SAY #13384 /* ~Mortai's eyes go cold. "The one with eyes of copper? *His* eyes speak enough about his purpose here." He makes a semi-circle over his heart. "A member of the Dustmen he may be, but I would *never* sign a Dead Contract with him. Copper is his soul, and to me, that speaks of an excess of passion for money. He is a Dustman in name only."~ */
  IF ~~ THEN REPLY #13539 /* ~"Are Dustmen not allowed to feel passions?"~ */ GOTO 29
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13540 /* ~"Oh, he's offering contracts as well?"~ */ GOTO 37
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13541 /* ~"You mean I could sign a Dead Contract with him?"~ */ GOTO 40
  IF ~~ THEN REPLY #13542 /* ~"I see. I had some more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13545 /* ~"Thanks for the information. Farewell, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #13385 /* ~Mortai clucks disapprovingly. "Yes, but it is much better that you signed with me rather than that greedy monster. Greed is the passion that kills you know, and to a Dustman it is twice as deadly."~ */
  IF ~~ THEN REPLY #13543 /* ~"Are Dustmen not allowed to feel passions?"~ */ GOTO 29
  IF ~~ THEN REPLY #13546 /* ~"What would happen if I signed a contract with him?"~ */ GOTO 38
  IF ~~ THEN REPLY #13547 /* ~"I see. I had some more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13548 /* ~"Thanks for the information. Farewell, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #13386 /* ~Mortai affixes you with a cold stare. "Then you would be committing a criminal offense. I would see you arrested and then, the law permitting, the Dustmen would collect on your Dead Contract much *earlier* than you had intended."~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #13544 /* ~"Well, I already signed one with him. What are you going to do about it?"~ */ GOTO 39
  IF ~~ THEN REPLY #13549 /* ~"I see. I had some more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13550 /* ~"Thanks for the information. Farewell, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 39 // from: 38.0 50.0 52.0
  SAY #13387 /* ~Mortai's face turns pale... you didn't think that was possible for a Dustman. He sputters for a moment, as if uncertain what to do. "You..." He suddenly turns and claps his hands three times, and a great roaring of wind passes through the bar...~ */
  IF ~~ THEN REPLY #13551 /* ~"All right, then. Prepare to die..."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.2
  SAY #13388 /* ~"Yes, but it is much better that you sign with me rather than that greedy monster." Mortai clucks disapprovingly. "Greed is the passion that kills, you know, and to a Dustman it is twice as deadly. Do not trouble yourself speaking to Copper-Eyes, good sir... deal with me instead."~ */
  IF ~~ THEN REPLY #13552 /* ~"Are Dustmen not allowed to feel passions?"~ */ GOTO 29
  IF ~~ THEN REPLY #13553 /* ~"I see. I had some more questions, though..."~ */ GOTO 9
  IF ~~ THEN REPLY #13554 /* ~"I don't think you can help me. Farewell, Mortai."~ */ GOTO 8
END

IF ~~ THEN BEGIN 41 // from: 42.1 55.1
  SAY #13389 /* ~Mortai frowns, then looks into the folds of his robes. "I do not normally keep the documents with me, but it may be that..." Mortai pulls forth a sheaf of papers from within his robes and begins leafing through documents. "No, I don't have it on me. Would you like me to fetch it from one of the backrooms?"~ */
  IF ~~ THEN REPLY #13555 /* ~"If you could, I would like to see it."~ */ GOTO 64
  IF ~~ THEN REPLY #13556 /* ~"Not exactly. I would like to cancel that contract."~ */ GOTO 43
  IF ~~ THEN REPLY #13557 /* ~"You keep contracts here in the establishment?"~ */ GOTO 55
  IF ~~ THEN REPLY #13558 /* ~"No, not at the moment. I had some questions instead..."~ */ GOTO 9
  IF ~~ THEN REPLY #13559 /* ~"Just checking to see if you were the one he signed with. Never mind."~ */ GOTO 56
END

IF ~~ THEN BEGIN 42 // from: 2.2 9.4 61.2
  SAY #13390 /* ~Mortai frowns. He looks puzzled. "Mayhap..." He thinks for a moment. "I do not recall the name, however."~ */
  IF ~~ THEN REPLY #13560 /* ~"I would like to settle that contract."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13561 /* ~"Do you have that contract with you?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13562 /* ~"Can I see Angyar's contract again?"~ */ GOTO 54
  IF ~~ THEN REPLY #13563 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13564 /* ~"I was just curious. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 43 // from: 41.1 42.0 55.0 66.0
  SAY #13391 /* ~Mortai looks wary. "I'm afraid that is impossible. The contract is signed, settled, and binding."~ */
  IF ~~ THEN REPLY #13565 /* ~"The contract is tearing the man's life apart."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13566 /* ~"The contract is tearing the man's life apart. It is causing him distress... it is possible that he may not even be able to approach the True Death with such emotions churning in his mind."~ */ GOTO 45
  IF ~~ THEN REPLY #13567 /* ~"Is there any way I might be able to settle the contract with you?"~ */ GOTO 49
  IF ~~ THEN REPLY #13568 /* ~Bluff: "I suggest you hand over the contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13569 /* ~Truth: "I suggest you hand over the contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13570 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13571 /* ~"I was just curious. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 44 // from: 43.0 49.2 52.1
  SAY #13392 /* ~Mortai shakes his head. "That is indeed unfortunate... but it is now a matter of law, not a matter of the heart."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13572 /* ~"The contract is causing the man distress... it is possible that he may not even be able to approach the True Death with such emotions churning in his mind."~ */ GOTO 45
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13573 /* ~"Is there *any* way I might be able to settle the contract with you?"~ */ JOURNAL #64581 /* ~I spoke with Mortai Gravesend about Angyar's Dead Contract, and he was unwilling to settle it. I don't know how to persuade him otherwise, but there must be a way... one thing I noticed, however, is Mortai behaves differently than other Dustmen I've seen in Sigil. Maybe if I found out more about the Dustman beliefs from him or other people in the bar, maybe I can find some way to argue the contract out of Mortai's grasp by turning his philosophy against him.~ */ GOTO 49
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #64585 /* ~"Is there *any* way I might be able to settle the contract with you?"~ */ GOTO 49
  IF ~~ THEN REPLY #13574 /* ~Bluff: "I suggest you hand over the contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13575 /* ~Truth: "I suggest you hand over the contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13576 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13577 /* ~"I was just curious. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.0 49.3 52.2
  SAY #13393 /* ~Mortai chews it over for a moment - it looks like you've negotiated him into a corner. "I cannot. It is a matter of law, my friend... besides, the burden lies upon the signer to overcome his own feelings in order to reach the True Death. I cannot h-"~ */
  IF ~~ THEN REPLY #13578 /* ~"So what you're saying is that you'll deny him the True Death for the sake of a piece of parchment?"~ */ GOTO 46
  IF ~~ THEN REPLY #13579 /* ~"Is there any way I might be able to settle the contract with you?"~ */ GOTO 49
  IF ~~ THEN REPLY #13580 /* ~Bluff: "I suggest you hand over the contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13581 /* ~Truth: "I suggest you hand over the contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13582 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13583 /* ~"I was just curious. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #13394 /* ~Mortai sighs and holds up his hands as if to placate you. "Look, it is *not* how you are making it out to be..."~ */
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13584 /* ~"You obviously hold the philosophy of the Dustmen in contempt to damn a man's soul over a piece of paper. Do other members of your faction know of your conduct in this regard? If not, they soon will."~ */ GOTO 47
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13585 /* ~"You obviously hold the philosophy of the Dustmen in contempt to damn a man's soul over a piece of paper. Do other members of your faction know of your conduct in this regard? If not, they soon will."~ */ GOTO 51
  IF ~~ THEN REPLY #13586 /* ~"Is there any way I might be able to settle the contract with you?"~ */ GOTO 49
  IF ~~ THEN REPLY #13587 /* ~Bluff: "I suggest you hand over the contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13588 /* ~Truth: "I suggest you hand over the contract right now, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13589 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13590 /* ~"I was just curious. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #13395 /* ~Mortai glares at you for a moment, opens his mouth, closes it, then opens it. "By the nine hells... wait here." He drops his voice to a whisper. "And keep your bone-box latched." He gives an angry scowl and stomps off. ~ */
  IF ~~ THEN REPLY #13591 /* ~Wait...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #13396 /* ~A few seconds later, he returns. He is holding a dusty piece of parchment, which he gives to you. "Here!" He sniffs disdainfully. "All for a man's peace of mind... now begone and nettle me with your preachings no longer!"~ */
  IF ~~ THEN REPLY #13592 /* ~"I will leave... for now. Farewell, Mortai."~ */ DO ~GiveItemCreate("Acontrac",Protagonist,1,0,0)
SetGlobal("Mortai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 43.2 44.1 44.2 45.1 46.2 52.3
  SAY #13397 /* ~Mortai shakes his head. "It is now a matter of law, not a matter for discussion."~ */
  IF ~~ THEN REPLY #13593 /* ~Bluff: "How about this: Give me Angyar's contract, or I'll kill you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13594 /* ~Truth: "How about this: Give me Angyar's contract, or I'll butcher you where you stand."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13595 /* ~"But the contract is tearing the man's life apart."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13596 /* ~"But the contract is tearing the man's life apart. It is causing him distress... it is possible that he may not even be able to approach the True Death with such emotions churning in his mind."~ */ GOTO 45
  IF ~~ THEN REPLY #13597 /* ~"Very well, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13598 /* ~"Farewell, then."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from:
  SAY #13398 /* ~Mortai freezes, his eyes gauging you. "If you take that contract, you will not leave this place alive. There are guardians that you cannot even *see* hovering about this place. And even should you leave, the Dustmen shall see to it that you are punished. Do not make such foolish threats in my presence."~ */
  IF ~~ THEN REPLY #13599 /* ~"I'll risk it. Just try and stop me."~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 39
  IF ~~ THEN REPLY #13600 /* ~Hand the contract back to Mortai.~ */ GOTO 66
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY #13399 /* ~Mortai glares at you for a moment, opens his mouth, closes it, then opens it. "By the nine hells..." He reaches into his robes and throws the contract to you. "Here!" He sniffs disdainfully. "All for a man's peace of mind... now begone."~ */
  IF ~~ THEN REPLY #13601 /* ~"I will leave... for now. Farewell, Mortai."~ */ DO ~SetGlobal("Mortai","GLOBAL",2)
GiveItem("Acontrac",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.3 43.4 44.3 44.4 45.2 45.3 46.3 46.4 49.0 49.1
  SAY #13400 /* ~Mortai freezes, his eyes gauging you. "If you draw weapons in here, you will not live to use them. There are guardians that you cannot even *see* hovering about this place. And even should you leave, the Dustmen shall see to it that you are punished. Do not make such foolish threats in my presence."~ */
  IF ~~ THEN REPLY #13602 /* ~"I'll risk it... prepare to die."~ */ GOTO 39
  IF ~~ THEN REPLY #13603 /* ~"The contract is tearing the man's life apart."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13604 /* ~"The contract is tearing the man's life apart. It is causing him distress... it is possible that he may not even be able to approach the True Death with such emotions churning in his mind."~ */ GOTO 45
  IF ~~ THEN REPLY #13605 /* ~"Is there any other way this contract might be settled?"~ */ GOTO 49
  IF ~~ THEN REPLY #13606 /* ~"Forget it, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13607 /* ~"Never mind, then."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from:
  SAY #13401 /* ~(NULL NODE)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 9.5 42.2 55.2 61.3 66.1
  SAY #13402 /* ~Mortai reaches into the folds of his robes and holds up the contract for you to look at. "There it is, sir... Angyar was made very rich with a simple signature." You glance at the contract. It looks genuine... and very official.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13608 /* ~Pretend to examine it, switch the parchment with the false contract, then hand it back to Mortai.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13609 /* ~Pretend to examine it, switch the parchment with the false contract, then hand it back to Mortai.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13610 /* ~Pretend to examine it, switch the parchment with the false contract, then hand it back to Mortai.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13611 /* ~"Very well... it all looks in order."~ */ GOTO 66
END

IF ~~ THEN BEGIN 55 // from: 41.2
  SAY #13403 /* ~"Until they are shipped to the Mortuary, yes. I have signed many contracts in my life, many contracts... including my own. Such a trouble to haul them all to the Mortuary."~ */
  IF ~~ THEN REPLY #13613 /* ~"I would like to settle that contract you made with Angyar."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13614 /* ~"Do you have that contract you made with Angyar with you?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13615 /* ~"Can I see Angyar's contract again?"~ */ GOTO 54
  IF ~~ THEN REPLY #13616 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13617 /* ~"I was just curious. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 9.9 10.3 11.3 22.1 23.1 24.4 25.3 26.2 27.10 28.2 29.3 30.1 31.2 33.2 36.4 37.3 38.2 41.4 42.4 43.6 44.6 45.5 46.6 49.5 52.5 55.4 66.3
  SAY #13404 /* ~Mortai nods as you turn to leave. "Hmmmm..." He has a strange expression on his face.~ */
  IF ~~ THEN REPLY #13618 /* ~"Is there something wrong?"~ */ GOTO 57
  IF ~~ THEN REPLY #13619 /* ~"Farewell, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #13405 /* ~Mortai frowns. "Forgive me, I *must* ask again... are you sure we haven't met before?"~ */
  IF ~~ THEN REPLY #13620 /* ~"Possibly. I do not recall you."~ */ GOTO 58
  IF ~~ THEN REPLY #13621 /* ~"No, I don't believe so."~ */ GOTO 58
  IF ~~ THEN REPLY #13622 /* ~"Farewell, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #13406 /* ~"Hmmm." Mortai shakes his head. "Well, no matter." ~ */
  IF ~~ THEN REPLY #13623 /* ~"Farewell, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 56.1 57.2 58.0
  SAY #13407 /* ~"Yes, farewell, farewell..." Mortai studies you as you leave, and you hear him mutter under his breath. "Something about that one..."~ */
  IF ~~ THEN REPLY #13624 /* ~Leave.~ */ EXIT
END

IF ~  Global("Mortai","GLOBAL",2)
~ THEN BEGIN 60 // from:
  SAY #13408 /* ~"Ah..." Mortai frowns as you as you approach, clucking his tongue. "You again... have you come to make me surrender more contracts in the name of the Dustmen faction?" He frowns, then sighs. "Well, no matter, no matter, the past is past..." He regains his old smile and nods at you. "What is it I may do for you?"~ */
  IF ~~ THEN REPLY #13625 /* ~"I had some questions for you..."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #13626 /* ~"Never mind. I must be going."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ EXIT
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN BEGIN 61 // from:
  SAY #13409 /* ~"Ah, traveler!" Mortai smiles as he sees you. "We meet again... and how may I help you on this fine Sigilian day?" He looks hopeful. "Come to sign the Contract, perhaps?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13627 /* ~"Contract?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13628 /* ~"Contract?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13629 /* ~"Are you the one who signed that Dead Contract with Angyar?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13630 /* ~"Can I see that contract you signed with Angyar?"~ */ GOTO 54
  IF ~~ THEN REPLY #13631 /* ~"No, I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13632 /* ~"I don't think you can help me. I must be going."~ */ GOTO 8
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",1)
~ THEN BEGIN 62 // from:
  SAY #13410 /* ~"Ah, traveler!" Mortai smiles as he sees you. "We meet again... and how may I help you on this fine Sigilian day?" ~ */
  IF ~~ THEN REPLY #13633 /* ~"I had some questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #13634 /* ~"Never mind. I must be going."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 13.3
  SAY #13411 /* ~"Eager?! I..." Mortai's arches his eyebrows, then coughs politely. "Sir... do you wish to sign the Contract or not? If not..."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13635 /* ~"I wish to sign the contract."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",0)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13636 /* ~"I wish to sign the contract."~ */ GOTO 21
  IF ~~ THEN REPLY #13637 /* ~"Is there a problem with showing emotion?"~ */ GOTO 29
  IF ~~ THEN REPLY #13638 /* ~"My apologies, I do not wish to sign the contract. I had some other questions, though..."~ */ GOTO 9
  IF ~~ THEN REPLY #13639 /* ~"I meant no offense... but I don't think you can help me. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 64 // from: 41.0
  SAY #13412 /* ~"Hold on a moment..." He steps up from the table and departs. ~ */
  IF ~~ THEN REPLY #13640 /* ~Wait for him to return...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
GiveItemCreate("Acontrac",Myself,1,0,0)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #64582 /* ~Apparently, Mortai wasn't carrying Angyar's Contract on him. He had to go fetch it first... but he didn't put it back in the backroom when he was done. ~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 69.0
  SAY #13413 /* ~"There it is, sir... Angyar... very somber fellow, was quick to sign..." He clucks his tongue. "And now a *much* richer fellow." You glance over the Contract. It looks genuine... and very official. ~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13641 /* ~Pretend to examine it, switch the parchment with the false contract, then hand it back to Mortai.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13642 /* ~Pretend to examine it, switch the parchment with the false contract, then hand it back to Mortai.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13643 /* ~Pretend to examine it, switch the parchment with the false contract, then hand it back to Mortai.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13644 /* ~"Very well... it all looks in order."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 50.1 54.3 65.3 67.0 68.0
  SAY #13414 /* ~Mortai puts the Contract away, and you notice he tucks it into his robes instead of putting it in the backroom. Mortai clucks his tongue. "Does that answer your questions about the Contract?"~ */
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13646 /* ~"I would like to settle that contract."~ */ GOTO 43
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13647 /* ~"Can I see Angyar's contract again?"~ */ GOTO 54
  IF ~~ THEN REPLY #13648 /* ~"Yes, but I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #13649 /* ~"Yes, that is all I wished to know. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 54.0 65.0
  SAY #13415 /* ~While examining the document, you turn away from Mortai briefly... as you are about to switch the contracts, Mortai coughs. "Sir... I would be careful with that Contract. If I were to find it missing, I would be forced to take action." He clucks his tongue and snaps his fingers. "The Contract, if you please..."~ */
  IF ~~ THEN REPLY #13650 /* ~Hand it back to him.~ */ GOTO 66
END

IF ~~ THEN BEGIN 68 // from: 54.1 54.2 65.1 65.2
  SAY #13416 /* ~While examining the document, you turn away from Mortai briefly and switch the contracts. He doesn't appear to have noticed. ~ */
  IF ~~ THEN REPLY #13652 /* ~Hand the 'Angyar Contract' back to him.~ */ DO ~DestroyItemObject("FalseCon",Protagonist,FALSE)
AddexperienceParty(500)
~ GOTO 66
END

IF ~~ THEN BEGIN 69 // from: 64.0
  SAY #48404 /* ~After a while, Mortai returns, a dusty piece of parchment in his hands. He holds it up, allowing you to see it, but he does not allow it to leave his grip.~ */
  IF ~~ THEN REPLY #48405 /* ~Look over the parchment.~ */ GOTO 65
END
