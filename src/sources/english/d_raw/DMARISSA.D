// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARISSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARISSA~

IF ~  Global("Marissa","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2957 /* ~Squinting at the figure behind the partition, you can barely make out a shapely female form in the darkness. She turns to you, but you can see nothing of her face.~ */
  IF ~~ THEN REPLY #2959 /* ~"Greetings..."~ */ DO ~SetGlobal("Marissa","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2958 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40451 /* ~The figure answers in a voice that is slow and deadly, like a steel dagger drawn across stone: "Yes? Come to speak with Marissa, have you? Quite rude of you to enter a darkened room, storming behind my partition like so... rude, and foolhardy." You can hear a faint whispering sound, like a slight breeze... or the hissing of serpents.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 428
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40452 /* ~"My apologies... I wasn't sure if someone was here."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40453 /* ~"I had some questions..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40454 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #40455 /* ~The woman give a slight *hmph.* "But it would seem there *is* someone in this room, wouldn't it? Shall you be on your way, then?"~ */
  IF ~~ THEN REPLY #40456 /* ~"Not just yet... I had some questions."~ */ GOTO 4
  IF ~~ THEN REPLY #40457 /* ~"Yes... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #40458 /* ~"*Do* you, then?" There is a faint hissing sound; when the woman next speaks her voice drips with sarcasm. "Ooo, I cannot wait..."~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.1 6.1 7.1 8.0 9.1 10.2 11.1 12.2 13.1 14.1 15.2 16.2 17.2 18.1 20.3 21.1 24.3 26.6 27.1 28.2 29.0 31.1 32.0 35.6 37.2 38.1 39.1 40.0 41.0 42.0 43.0 44.0 45.0 46.2 47.0 48.0 50.0 51.1 52.0 53.1 54.0 55.2 57.0 58.0
  SAY #40459 /* ~"Ask."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40460 /* ~"I found your Crimson Veil..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40461 /* ~"I found your Crimson Veil..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40462 /* ~"Why do you remain behind this screen?"~ */ GOTO 12
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40463 /* ~"Why do you remain behind this screen?"~ */ GOTO 50
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40464 /* ~"Why is it so dark in here?"~ */ GOTO 9
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40465 /* ~"Why is it so dark in here?"~ */ GOTO 50
  IF ~~ THEN REPLY #40466 /* ~"What are you doing here?"~ */ GOTO 10
  IF ~~ THEN REPLY #40467 /* ~"Can you tell me about this place?"~ */ GOTO 38
  IF ~  Global("Veil_Quest","AR0605",0)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40469 /* ~"Could you turn, say, a Lim-Lim into a statue?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40470 /* ~"Could you turn, say, a Lim-Lim into a statue?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40471 /* ~"Could you turn, say, a Lim-Lim into a statue?"~ */ GOTO 55
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40472 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 52
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67846 /* ~"What can you tell me about the silent prostitute?"~ */ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 52
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40473 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ JOURNAL #66743 /* ~I asked one of the prostitutes if she knew whether or not Kesai-Serris was truly Ravel's daughter, and she suggested I ask Juliette about it. Apparently, they were good friends before Juliette met Montague.~ */ GOTO 41
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40474 /* ~"I was told you were seen sneaking away from Vivian's chambers, recently... is that connected with her missing scent, somehow?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~I asked Marissa about her being seen sneaking out of Vivian's chamber, but she wouldn't tell me anything.~ */ GOTO 51
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40475 /* ~"I was told you were seen sneaking away from Vivian's chambers, recently... is that connected with her missing scent, somehow?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~I asked Marissa about her being seen sneaking out of Vivian's chamber, but she wouldn't tell me anything.~ */ GOTO 45
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40476 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 44
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40477 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~I asked one of the Brothel's prostitutes about Ravel, and she suggested I speak to Yves about it. I'm told that Yves collects all sorts of tales, and will likely have one about Ravel in her repertoire.~ */ GOTO 43
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40478 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 42
  IF ~~ THEN REPLY #40479 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 10.0 11.0
  SAY #40468 /* ~You hear a faint hissing sound. "Because something of mine is missing, and something unwanted has arrived on my doorstep in its place."~ */
  IF ~~ THEN REPLY #40480 /* ~"What's gone missing?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, one of the prostitutes in the Brothel of Slating Intellectual Lusts, has lost her Crimson Veil. She didn't ask me to find it, but perhaps I'll ask around for it and see if turns up somewhere.~ */ GOTO 6
  IF ~~ THEN REPLY #40481 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40482 /* ~"I'll leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 51.0
  SAY #40483 /* ~"My veil... my Crimson Veil. Have you seen it, perchance?"~ */
  IF ~~ THEN REPLY #40484 /* ~"No... what's it for? Is it just a normal veil?"~ */ GOTO 7
  IF ~~ THEN REPLY #40485 /* ~"No. I've got some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #40486 /* ~"I haven't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 27.0 53.0
  SAY #40487 /* ~Marissa sighs quietly. "Not, not quite. It aids me in communication... face to face communication, that is."~ */
  IF ~~ THEN REPLY #40488 /* ~"Why do you need to hide your face?"~ */ GOTO 8
  IF ~~ THEN REPLY #40489 /* ~"I have another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40490 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40491 /* ~"Enough with these asinine questions! How tiresomely annoying you are! Now what do you *want?*"~ */
  IF ~~ THEN REPLY #40492 /* ~"Just some questions answered..."~ */ GOTO 4
  IF ~~ THEN REPLY #40493 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 12.0
  SAY #40494 /* ~"To prevent any unwanted... and embarrassing... casualties. Now what is it that you want?"~ */
  IF ~~ THEN REPLY #40495 /* ~"I want you to come into the light."~ */ GOTO 13
  IF ~~ THEN REPLY #40496 /* ~"Just some questions answered..."~ */ GOTO 4
  IF ~~ THEN REPLY #40497 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY #40498 /* ~"Sitting here with my thoughts. Listening to you voice yours. The silence of both of them - literal, then figurative - is deafening."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40499 /* ~"Why do you have such a terrible disposition?"~ */ GOTO 5
  IF ~~ THEN REPLY #40500 /* ~"I'm curious to hear your thoughts..."~ */ GOTO 11
  IF ~~ THEN REPLY #40501 /* ~"I have another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40502 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40503 /* ~"Oh, I think not. You would find them most unflattering at this moment. What is it you *want?*"~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40504 /* ~"Why do you have such a terrible disposition?"~ */ GOTO 5
  IF ~~ THEN REPLY #40505 /* ~"Just some questions answered..."~ */ GOTO 4
  IF ~~ THEN REPLY #40506 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY #40507 /* ~"Is it your wish that I step away from this partition, into some patch of light, and speak to you face to face?" Marissa laughs, and there is the sound of scales sliding on scales. "Nay, I think not. The darkness suits me, and doubtless suits you as well."~ */
  IF ~~ THEN REPLY #40508 /* ~"Why is it so dark in here?"~ */ GOTO 9
  IF ~~ THEN REPLY #40509 /* ~"Please come into the light..."~ */ GOTO 13
  IF ~~ THEN REPLY #40510 /* ~"I have another question, then..."~ */ GOTO 4
  IF ~~ THEN REPLY #40511 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 12.1
  SAY #40512 /* ~"Nay, and the addition of 'please' will not serve to persuade me. Now what do you *want?* Surely you did not come all this way to *see* me."~ */
  IF ~~ THEN REPLY #40513 /* ~"I *do* want to see what you look like..."~ */ GOTO 14
  IF ~~ THEN REPLY #40514 /* ~"I have another question, then..."~ */ GOTO 4
  IF ~~ THEN REPLY #40515 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40516 /* ~"You have no such want."~ */
  IF ~~ THEN REPLY #40517 /* ~"Oh, I do."~ */ GOTO 15
  IF ~~ THEN REPLY #40518 /* ~"I have another question, then..."~ */ GOTO 4
  IF ~~ THEN REPLY #40519 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40520 /* ~"What do *you* look like? The darkness hides us both. Let's make it a game? I'm frightfully bored. Let me guess... are you a human male?"~ */
  IF ~~ THEN REPLY #40521 /* ~"Yes."~ */ GOTO 16
  IF ~~ THEN REPLY #40522 /* ~"I think so..."~ */ GOTO 17
  IF ~~ THEN REPLY #40523 /* ~"No games. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40524 /* ~"I don't feel like a game, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #40525 /* ~"Are you... wounded in the throat?"~ */
  IF ~~ THEN REPLY #40526 /* ~"Yes."~ */ GOTO 20
  IF ~~ THEN REPLY #40527 /* ~"I can't see but I believe so, yes."~ */ GOTO 20
  IF ~~ THEN REPLY #40528 /* ~"No more games. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40529 /* ~"I don't feel like a game, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #40530 /* ~"You 'think so'? How could it not know?"~ */
  IF ~~ THEN REPLY #40531 /* ~"It's kind of complicated."~ */ GOTO 18
  IF ~~ THEN REPLY #40532 /* ~"I really have no sure idea of what I am."~ */ GOTO 19
  IF ~~ THEN REPLY #40533 /* ~"Forget it. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40534 /* ~"Never mind. Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #40535 /* ~"Indeed? It must be too great for a mere mind such as mine to grasp."~ */
  IF ~~ THEN REPLY #40536 /* ~"I really have no sure idea of what I am."~ */ GOTO 19
  IF ~~ THEN REPLY #40537 /* ~"Forget it. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40538 /* ~"Never mind. Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #40539 /* ~"Truly? That's almost... interesting..." There is the sound of hissing in the darkness.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 19.0
  SAY #40540 /* ~"Hmm... describe yourself for me."~ */
  IF ~~ THEN REPLY #40541 /* ~Truth: "I'm tall, muscular, and horribly scarred."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marissa_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #40542 /* ~Lie: "I'm tall, with an athletic build... very handsome..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marissa_1","GLOBALLaw",-1)
~ GOTO 22
  IF ~~ THEN REPLY #40543 /* ~"You first, Marissa."~ */ GOTO 24
  IF ~~ THEN REPLY #40544 /* ~"No thanks. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40545 /* ~"Not in the mood. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 37.1
  SAY #40546 /* ~"Indeed? Hmmm..." She pauses for a moment. "How were you so horribly scarred? Wait... never mind. I do not wish to know."~ */
  IF ~~ THEN REPLY #40547 /* ~"Now describe yourself, for me."~ */ GOTO 36
  IF ~~ THEN REPLY #40548 /* ~"Very well. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40549 /* ~"Fine. Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #40550 /* ~"Oh, really? Come forward - *very* close to me, so that we can see one another..." The sound of faint hissing seems to issue from her...~ */
  IF ~~ THEN REPLY #40551 /* ~Move closer to her.~ */ GOTO 23
  IF ~~ THEN REPLY #40552 /* ~Hold back.~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 22.0 37.0
  SAY #40553 /* ~You step forward so that your face nearly touches Marissa's, squinting so that you can make out her face. Her features are beautiful, her skin pale and unblemished, but her hair is a mass of writhing, hissing asps. Marissa's eyes - a brilliant shade of blue - seem somehow odd to you, until you realize they're actually tattoos upon her closed eyelids. "Are you ready for a surprise?" Her lips curl into a wicked smile...~ */
  IF ~~ THEN REPLY #40554 /* ~Turn away.~ */ GOTO 48
  IF ~~ THEN REPLY #40555 /* ~"Sure, surprise me."~ */ GOTO 49
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY #40556 /* ~"Shall we trade adjective for adjective? Then, I start with 'shapely.' You must surrender the next adjective."~ */
  IF ~~ THEN REPLY #40557 /* ~"Tall."~ */ GOTO 25
  IF ~~ THEN REPLY #40558 /* ~"Well-muscled."~ */ GOTO 25
  IF ~~ THEN REPLY #40559 /* ~"Scarred."~ */ GOTO 25
  IF ~~ THEN REPLY #40560 /* ~"No... no games. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40561 /* ~"I don't feel like a game, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #40562 /* ~"Mmm-hmm. I shall say... pale-skinned."

The two of you banter adjectives back and forth in this manner until she's finally described herself as a shapely, pale-skinned, beautiful woman with a forked tongue, hair made up of writhing asps, and glowing eyes... which you assume she must be keeping shut.~ */
  IF ~~ THEN REPLY #40563 /* ~"Are you a fiend?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - one of the prostitutes in the Clerk's Ward Brothel - claims she has the power to turn living things to stone with a glance.~ */ GOTO 26
  IF ~~ THEN REPLY #40564 /* ~"You sound... very exotic-looking, Marissa."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - one of the prostitutes in the Clerk's Ward Brothel - claims she has the power to turn living things to stone with a glance.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0 36.0
  SAY #40565 /* ~Marissa laughs lightly, the sound accompanied by a slight hissing. "No, hardly... though I've powers some might *call* fiendish. My glance turns living things to stone, for instance. From beings of flesh to statuary with the bat of an eyelash..."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40566 /* ~"Living things to stone? Could you turn, say, a Lim-Lim into a statue?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, one of the prostitutes in the Brothel of Slating Intellectual Lusts, has lost her Crimson Veil. She didn't ask me to find it, but perhaps I'll ask around for it and see if turns up somewhere.~ */ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40567 /* ~"Living things to stone? Could you turn, say, a Lim-Lim into a statue?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40568 /* ~"Living things to stone? Could you turn, say, a Lim-Lim into a statue?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40569 /* ~"That must be inconvenient at times."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, one of the prostitutes in the Brothel of Slating Intellectual Lusts, has lost her Crimson Veil. She didn't ask me to find it, but perhaps I'll ask around for it and see if turns up somewhere.~ */ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40570 /* ~"That must be inconvenient at times."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40571 /* ~"That must be inconvenient at times."~ */ GOTO 29
  IF ~~ THEN REPLY #40572 /* ~"Interesting. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40573 /* ~"I see. I'll take my leave, now. Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.3 35.3
  SAY #40574 /* ~"You think so? That must be why I sit here alone, in the dark, hiding behind a partition." Though you can't see Marissa, you're certain she's sneering. She suddenly sighs. "If only I knew where my Crimson Veil had gone. Have you seen it, perchance?"~ */
  IF ~~ THEN REPLY #40575 /* ~"No... what's it for? Is it just a normal veil?"~ */ GOTO 7
  IF ~~ THEN REPLY #40576 /* ~"No. I've got some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #40577 /* ~"I haven't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 35.4
  SAY #40578 /* ~"You think so? That must be why I sit here alone, in the dark, hiding behind a partition." Though you can't see Marissa, you're certain she's sneering. She suddenly sighs. "If only I knew where my Crimson Veil had gone."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40579 /* ~"I have your veil right here, Marissa..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40580 /* ~"I have your veil right here, Marissa..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40581 /* ~"I have a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40582 /* ~"Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.5 35.5
  SAY #40583 /* ~"My Crimson Veil allows me to travel with little risk of that happening, so it's not so terrible."~ */
  IF ~~ THEN REPLY #40584 /* ~"I have a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40585 /* ~"Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 4.0 4.1 28.0 28.1 46.0 46.1
  SAY #40586 /* ~"Then would you please hand it over?"~ */
  IF ~~ THEN REPLY #40587 /* ~"Of course. Here you are..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~I returned Marissa's Crimson Veil to her, for all the good it did me.~ */ GOTO 31
  IF ~~ THEN REPLY #40588 /* ~"I'll need something in return, first..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marissa_1","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0 33.0 34.0
  SAY #40589 /* ~You hold the Crimson Veil before you, and feel her take it from your hands. "Ah. Yes, much better." Two shining points of red light appear before you as she opens her eyes. "So that's what you look like... perhaps I would have been better off with my eyes shut."~ */
  IF ~~ THEN REPLY #40590 /* ~"Watch that forked tongue of yours, Marissa."~ */ GOTO 32
  IF ~~ THEN REPLY #40591 /* ~"I have a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40592 /* ~"Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #40593 /* ~"Do not get me even started."~ */
  IF ~~ THEN REPLY #40594 /* ~"I have a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40595 /* ~"Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #40596 /* ~"Of course... how perfectly *mercenary* of you. Here... reach out, grasp my wrist... you'll find a golden bracelet, there. Take it, it's yours. It's of more use to you than my Veil is, I assure you."~ */
  IF ~~ THEN REPLY #40597 /* ~"Actually... never mind. Here, just take your Veil."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~I returned Marissa's Crimson Veil to her, for all the good it did me.~ */ GOTO 31
  IF ~~ THEN REPLY #40598 /* ~Take the bracelet.~ */ DO ~GiveItemCreate("GolBra",Protagonist,1,0,0)
~ JOURNAL #39520 /* ~I returned Marissa's Crimson Veil to her, but only after requesting that I be rewarded for doing so.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #40599 /* ~You remove the bracelet from Marissa's delicate wrist...~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 35 // from: 25.1 36.1
  SAY #40600 /* ~Marissa laughs lightly, the sound accompanied by a slight hissing. "Oh, I am, I am. And my merest glance turns living things to stone... from beings of flesh to statuary, with only the bat of an eyelash."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40601 /* ~"Living things to stone? Could you turn, say, a Lim-Lim into a statue?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40602 /* ~"Living things to stone? Could you turn, say, a Lim-Lim into a statue?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40603 /* ~"Living things to stone? Could you turn, say, a Lim-Lim into a statue?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40604 /* ~"That must be inconvenient at times."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40605 /* ~"That must be inconvenient at times."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40606 /* ~"That must be inconvenient at times."~ */ GOTO 29
  IF ~~ THEN REPLY #40607 /* ~"Interesting. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40608 /* ~"I see. I'll take my leave, now. Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 21.0
  SAY #40609 /* ~Marissa describes herself as a shapely, pale-skinned, beautiful woman with a forked tongue, hair made up of writhing asps, and glowing eyes... which you assume she must be keeping shut.~ */
  IF ~~ THEN REPLY #40610 /* ~"Are you a fiend?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - one of the prostitutes in the Clerk's Ward Brothel - claims she has the power to turn living things to stone with a glance.~ */ GOTO 26
  IF ~~ THEN REPLY #40611 /* ~"You sound... very exotic-looking, Marissa."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa - one of the prostitutes in the Clerk's Ward Brothel - claims she has the power to turn living things to stone with a glance.~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #40612 /* ~"Do you doubt my appraisal of you? Could it be that you are not what you seem?"~ */
  IF ~~ THEN REPLY #40613 /* ~Move closer to her.~ */ GOTO 23
  IF ~~ THEN REPLY #40614 /* ~"Very well... I'm tall, muscular, and horribly scarred."~ */ GOTO 21
  IF ~~ THEN REPLY #40615 /* ~"Just forget it. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40616 /* ~"Never mind that, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.7
  SAY #40617 /* ~"No, I'm not in the mood. I'm sure one of the girls here would be happy to tell you all about Mistress Grace's little school for aspiring Sensates... go find one of them."~ */
  IF ~~ THEN REPLY #40618 /* ~"Sensates?"~ */ GOTO 39
  IF ~~ THEN REPLY #40619 /* ~"Not just yet - I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40620 /* ~"Maybe I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40621 /* ~"Yes, yes... a silly little group devoted to experience and the like. I certainly need not be a Sensate to *be* a Sensate... and once I've gotten access to the Festhall and grown tired of its sensoriums, I'll simply move on."~ */
  IF ~~ THEN REPLY #40622 /* ~"Tell me about the sensoriums."~ */ GOTO 40
  IF ~~ THEN REPLY #40623 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40624 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40625 /* ~"They are halls where sensations are stored in objects called sensory stones. There are two: a public sensorium in the Civic Festhall open to everyone, and a Sensate sensorium open only to members of the Society of Sensation - Sensates."~ */
  IF ~~ THEN REPLY #40626 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40627 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.13
  SAY #40628 /* ~"I do not know... but I, for one, would not be surprised. For Hera's sake, *look* at the girl! Ask Juliette, though - the two of of them were once friends... before Montague came along."~ */
  IF ~~ THEN REPLY #40629 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40630 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.18
  SAY #40631 /* ~"I spend much time here in my chambers, but I think that even *I* would know had a tenth student arrived. There is none, currently."~ */
  IF ~~ THEN REPLY #40632 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40633 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 4.17
  SAY #40634 /* ~"No. Do you?" You hear an annoyed sigh from out of the darkness. "Go ask Yves. She collects many tales, and can probably tell you something of use."~ */
  IF ~~ THEN REPLY #40635 /* ~"Never mind. I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40636 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 4.16
  SAY #40637 /* ~"No, I've not a clue."~ */
  IF ~~ THEN REPLY #40638 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40639 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 4.15
  SAY #40640 /* ~Marissa says nothing, though an angry hissing issue from the darkness around her. "Yes, I've been known to creep into Vivian's chamber for some of her perfumes... though I doubt you'll meet another here who hasn't. If you're implying that I've got her *personal* scent, well... feel free to sniff around. You'll not find it on me or in my chambers, I assure you."~ */
  IF ~~ THEN REPLY #40641 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40642 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",1)
~ THEN BEGIN 46 // from:
  SAY #40643 /* ~Marissa's cold, cruel voice hisses from out of the darkness. "It returns! You have a reason for coming this time, I trust? Or just more of your pointless questions?"~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40644 /* ~"Actually, I've brought your Crimson Veil..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40645 /* ~"Actually, I've brought your Crimson Veil..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40646 /* ~"More 'pointless' questions, Marissa."~ */ GOTO 4
  IF ~~ THEN REPLY #40647 /* ~"Just passing by. Farewell."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #40648 /* ~Marissa's red eyes gleam at you from the blackness. "Yes?" A faint hissing accompanies her query.~ */
  IF ~~ THEN REPLY #40649 /* ~"I had some questions, Marissa..."~ */ GOTO 4
  IF ~~ THEN REPLY #40650 /* ~"Nothing, just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 23.0
  SAY #40651 /* ~You avert your eyes just as Marissa opens hers; you're aware of the cold, red light they shed in the corner of your vision. "Oh..." She sighs, disappointed. "You turned away! And you really look *nothing* like you said you would... such a shame. Go ahead, face me; I've shut my eyes again."~ */
  IF ~~ THEN REPLY #40652 /* ~"I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40653 /* ~"That's all right... I'll just leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.1
  SAY #40654 /* ~Marissa's eyes suddenly spring open, bathing you in their cold, red light... it's the last thing your eyes ever take in as they - and the rest of you - turns forever to stone.~ */
  IF ~~ THEN REPLY #40655 /* ~"Gaaah..."~ */ DO ~UseItem("M_Gaze",Protagonist)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 4.3 4.5
  SAY #40656 /* ~Marissa is silent for a time before answering. "At first it was because I had lost my Crimson Veil... but now... I do not know. Perhaps I have grown accustomed to dealing with my patrons in this manner, and have grown to enjoy it. In time I imagine I will tire of it and venture out into Sigil once more, but for now... I am comfortable, here."~ */
  IF ~~ THEN REPLY #40657 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40658 /* ~"That's all I wished to know. Farewell, Marissa."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 4.14
  SAY #40659 /* ~Marissa says nothing, though an angry hissing issue from the darkness around her. "Yes, I've been known to creep into Vivian's chamber for some of her perfumes... though I doubt you'll meet another here who hasn't. If you're implying that I've got her *personal* scent, well... feel free to sniff around. You'll not find it on me or in my chambers, I assure you. Perhaps whoever took my Crimson Veil took Vivian's scent, as well."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40660 /* ~"Your veil has been stolen?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, one of the prostitutes in the Brothel of Slating Intellectual Lusts, has lost her Crimson Veil. She didn't ask me to find it, but perhaps I'll ask around for it and see if turns up somewhere.~ */ GOTO 6
  IF ~~ THEN REPLY #40661 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40662 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 4.11 4.12
  SAY #40663 /* ~"Yes... 'Ecco.' I knew another Ecco, once, though her name was written differently. I know nothing of this girl, though. Ask Dolora of her. She made friends of an old lover of Ecco's, I have heard."~ */
  IF ~~ THEN REPLY #40664 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40665 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 4.8 26.0 35.0
  SAY #40666 /* ~"I suppose I could... had you a Lim-Lim, and were I inclined to do so. And I *might* be so inclined, had I my Crimson veil... but I do not know where it has gone. Have you seen it, perchance?"~ */
  IF ~~ THEN REPLY #40667 /* ~"No... what's it for? Is it just a normal veil?"~ */ GOTO 7
  IF ~~ THEN REPLY #40668 /* ~"No. I've got some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #40669 /* ~"I haven't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.9 26.1 35.1
  SAY #40670 /* ~"I suppose I could... had you a Lim-Lim, and were I inclined to do so. And I *might* be so inclined, had I my Crimson veil."~ */
  IF ~~ THEN REPLY #40671 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40672 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 4.10 26.2 35.2
  SAY #40673 /* ~"I suppose I could... why? Do you happen to be carrying a Lim-Lim?"~ */
  IF ~  PartyHasItem("LimLim")
~ THEN REPLY #40674 /* ~"Yes, I am."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
GiveItemCreate("S_LimLim",Protagonist,1,0,0)
~ GOTO 56
  IF ~  !PartyHasItem("LimLim")
~ THEN REPLY #40675 /* ~"No, not at the moment."~ */ GOTO 58
  IF ~~ THEN REPLY #40676 /* ~"Never mind, actually. I had a question."~ */ GOTO 4
  IF ~~ THEN REPLY #40677 /* ~"Forget I asked, Marissa... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #40678 /* ~"Hand it here, then..." Marissa takes the happy little creature from your hands... it chirps happily - 'Piyo! Piyo!' - unaware of its impending fate. ~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #40679 /* ~With an eerie flash of sickly red light, the gleeful Lim-Lim's chirping come to an abrupt and disquieting stop. Marissa places the Lim-Lim - now a thing of cold and heavy stone - into your hands.~ */
  IF ~~ THEN REPLY #40680 /* ~"Thanks, Marissa. I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40681 /* ~"My thanks, Marissa. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #40682 /* ~"Well, then, it's a moot point in any case." She sighs loudly. "I'm not quite sure why you even bothered me about it."~ */
  IF ~~ THEN REPLY #40683 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #40684 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
