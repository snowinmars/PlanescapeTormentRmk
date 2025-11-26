// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARTA~

IF ~  Global("Marta","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2831 /* ~You see a blockish woman dressed in a heavy burlap robe. She lumbers about the room, her joints popping as she bends over to pick up objects from the various tables. Her hair is bound back from her head with a bone hairpin, and she has a sour, curd-faced expression. She is mumbling to herself in a sing-song voice.~ */
  IF ~~ THEN REPLY #20473 /* ~"Greetings."~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #20474 /* ~Leave.~ */ EXIT
END

IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2832 /* ~You see Marta. She lumbers about the room, her joints popping as she bends over to pick up objects from the various tables. She is mumbling to herself in a strange sing-song voice.~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20475 /* ~"Greetings, Marta."~ */ GOTO 2
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20476 /* ~"I had some questions for you, Marta..."~ */ GOTO 30
  IF ~~ THEN REPLY #20477 /* ~Ignore Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #20432 /* ~The woman doesn't appear to hear you - instead, she stumbles back to one of the long tables and begins picking at one of the corpses. "C'mon, now..." She clicks her teeth. "Don't be all-difficult on Marta... he's bein' difficult isn't he, Marta...? Yes, yes he is..."~ */
  IF ~~ THEN REPLY #20478 /* ~"Uh... greetings?"~ */ GOTO 4
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20479 /* ~Watch what she's doing.~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20480 /* ~Watch what she's doing.~ */ GOTO 3
  IF ~~ THEN REPLY #20481 /* ~Ignore Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2
  SAY #20433 /* ~From what you can see, it looks like she's digging teeth out of the corpse's mouth... with only her hands and fingernails. When that doesn't work, she pulls out a splintered wooden chisel and a mallet and *thwacks* at the gums until the tooth snaps free, then puts it into a bag at her waist.~ */
  IF ~~ THEN REPLY #20482 /* ~"Uh... what are you doing?"~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #20483 /* ~Ignore Marta, explore the room.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #20434 /* ~Marta leaps away from the corpse, startled, and gives a piercing shriek. "Aighh!" She catches her breath, then hisses angrily - at the corpse on the table. "If dead you were not, ye mights have said somethin' earlier, false corpse, nasty corpse, yes! Haves you no *shame?*"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20484 /* ~Throw Voice: "*You* are the one who should be shamed. Knocking out my teeth like that... have you no respect for the dead?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20485 /* ~Throw Voice: "*You* are the one who should be shamed. Pulling out my stitches and teeth... have you no respect for the dead?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20486 /* ~"I am the one who spoke, not the corpse."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20487 /* ~"I am the one who spoke, not the corpse."~ */ GOTO 10
  IF ~~ THEN REPLY #20488 /* ~Ignore Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #20435 /* ~"Hah!" Marta puts her hands on her hips and puffs up indignantly. "Likes you *cared* for yer teeth! All rotted and scored and syrup brown - wonder theys hadn't plopped out of your bone-box!" She scratches her head. "Isn't that right, Marta? Aye, all rot and gone they are..."~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20489 /* ~Throw Voice: "Ooooooh... you will be *punished* for your evil teeth-taking, Marta. I shall *haunt* you until the end of your days..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20490 /* ~"I am the one who spoke, not the corpse."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20491 /* ~"I am the one who spoke, not the corpse."~ */ GOTO 10
  IF ~~ THEN REPLY #20492 /* ~Ignore Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20436 /* ~"Hah! Yous hear this, Marta? Do yous?" Marta's face scrunches up like a wrung rag. "I hears it, Marta! I hears it!" With a grunt, she starts pounding the corpse with her fists, making meaty *thwacks* with every hit. "Haunt *me,* will you! Take this! And this!"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20493 /* ~Throw Voice: "Ooooooh... stop... stop... I will haunt you no longer... forgive me..." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20494 /* ~"I am the one who spoke, not the corpse."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20495 /* ~"I am the one who spoke, not the corpse."~ */ GOTO 10
  IF ~~ THEN REPLY #20496 /* ~Ignore Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20437 /* ~"Dammable deaders..." Marta takes a deep breath and lets the chisel fall to her side. "That's more likes it, eh, Marta? Yes, yes... corpse quiet... yes."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20497 /* ~"I am the one who spoke, not the corpse."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20498 /* ~"I am the one who spoke, not the corpse."~ */ GOTO 10
  IF ~~ THEN REPLY #20499 /* ~Ignore Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.1 7.0
  SAY #20438 /* ~Marta squints and turns. "Eh? How's you get over there so fastus?" She mumbles to herself. "Marta, how dids he do that? No glimmer, no glimmer."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 207
END

IF ~~ THEN BEGIN 9 // from:
  SAY #20439 /* ~Marta is still mumbling to herself, something about *corpses* and *gratitude,* which you don't quite catch.~ */
  IF ~~ THEN REPLY #20500 /* ~"Who are you?"~ */ JOURNAL #18470 /* ~I met an addled seamstress in the Buried Village by the name of Marta. She keeps talking to herself as if there are two of her... for all I know, there may be.~ */ GOTO 11
  IF ~~ THEN REPLY #20501 /* ~"Uh... very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3 5.2 6.2 7.1
  SAY #20440 /* ~Marta squints and turns. "Eh? How's you get over there so fastus?" She mumbles to herself. "Marta, how dids he do that? No glimmer, no glimmer."~ */
  IF ~~ THEN REPLY #20502 /* ~"Who are you?"~ */ JOURNAL #18470 /* ~I met an addled seamstress in the Buried Village by the name of Marta. She keeps talking to herself as if there are two of her... for all I know, there may be.~ */ GOTO 11
  IF ~~ THEN REPLY #20503 /* ~"Uh... very well. I must take my leave. Farewell."~ */ JOURNAL #18470 /* ~I met an addled seamstress in the Buried Village by the name of Marta. She keeps talking to herself as if there are two of her... for all I know, there may be.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0 13.0 30.0
  SAY #20441 /* ~"Marta, dids this one asks whose I was? Aye, he did, he did..." She starts humming. "Nobody but mine, I am Marta, Marta the Seamstress... hmnnnn... Mar-ta - the - Seam - Stress... Mar-ta - the - Seam - Stress..." She turns away, back to the corpse, singing her name to herself.~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20504 /* ~"What are you doing?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",2)
~ GOTO 12
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20505 /* ~"What are you doing?"~ */ GOTO 12
  IF ~~ THEN REPLY #20506 /* ~"Uh... very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 13.1 30.1
  SAY #20442 /* ~Marta turns back to the corpse with a huff. "I'm trying ta gets this berk to give up his stitchies and his teethies, and he isn't recoop-erating, no, no..." She wags her finger, as if lecturing a small child. "Stubborn as stone, isn't he, Marta?" She pouts. "Yes, yes, he is..."~ */
  IF ~~ THEN REPLY #20507 /* ~"Stitchies... and teethies? What are you talking about?"~ */ GOTO 14
  IF ~~ THEN REPLY #20508 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20509 /* ~"Uh... very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.4 16.9 17.1 18.1 19.2 20.1 21.0 23.4 24.4 25.4 26.2 26.3 27.0 28.1 29.1 31.2 37.0 39.4
  SAY #20443 /* ~"Did the one say questions, Marta...?" Marta blinks, then frowns. "Aye, Marta, he said such, for he wears the 'asking' look on him, he does..."~ */
  IF ~~ THEN REPLY #20510 /* ~"Who are you?"~ */ JOURNAL #18470 /* ~I met an addled seamstress in the Buried Village by the name of Marta. She keeps talking to herself as if there are two of her... for all I know, there may be.~ */ GOTO 11
  IF ~~ THEN REPLY #20511 /* ~"What are you doing?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20512 /* ~"Why are you pulling out the corpse's teeth and stitches?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta the Seamstress seems to have the job of taking corpses given to her, ripping out their teeth, undoing their stitches, looking for any valuables she can find on or in the body, then stitching them back up again.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20513 /* ~"Why are you pulling out the corpse's teeth and stitches?"~ */ JOURNAL #20538 /* ~Marta the Seamstress seems to have the job of taking corpses given to her, ripping out their teeth, undoing their stitches, looking for any valuables she can find on or in the body, then stitching them back up again.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20514 /* ~"Can you dig in my body to find anything?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20515 /* ~"Can you dig in my body to find anything?"~ */ GOTO 23
  IF ~~ THEN REPLY #20516 /* ~"Can I rest here?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20517 /* ~"You pull stitches out of corpses... can I buy some needle and thread from you?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20518 /* ~"Have you got anything else you've pulled from corpses that I can have?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20519 /* ~"Can I see what you've pulled from corpses recently?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20520 /* ~"No questions. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #20444 /* ~"Gotta pulls the stitchies out, the teethies... eh, Marta, perhaps you could gives me a hand... I *have* beens giving you a hand, old battie... no needs to take that tone with me... pulling out the stitchies and teethies, yes. And the thingies inside."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20521 /* ~"Thingies inside?"~ */ EXTERN ~DMORTE~ 208
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20522 /* ~"Thingies inside?"~ */ GOTO 31
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20523 /* ~"Why are you pulling out the corpse's teeth and stitches?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta the Seamstress seems to have the job of taking corpses given to her, ripping out their teeth, undoing their stitches, looking for any valuables she can find on or in the body, then stitching them back up again.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20524 /* ~"Why are you pulling out the corpse's teeth and stitches?"~ */ JOURNAL #20538 /* ~Marta the Seamstress seems to have the job of taking corpses given to her, ripping out their teeth, undoing their stitches, looking for any valuables she can find on or in the body, then stitching them back up again.~ */ GOTO 16
  IF ~~ THEN REPLY #20525 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20526 /* ~"Uh... very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #20445 /* ~"Thingies."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 209
END

IF ~~ THEN BEGIN 16 // from: 13.2 13.3 14.2 14.3 30.2 30.3 31.0 31.1
  SAY #20446 /* ~"Put 'em aside, Marta, that's what I does here." She scratches her head. "Aye, Marta, we do... stitchy-thread and teethies are precious, can be turned into jink-jink. 'Strip the corpses we bring ya,' they tell Marta: 'Pull out teethies, stitchies, thingies inside the corpse, strip 'em cold and then we'll sell 'em to the Dusties."~ */
  IF ~~ THEN REPLY #20527 /* ~"Sell the corpses to the Dusties...?"~ */ GOTO 17
  IF ~~ THEN REPLY #20528 /* ~"Who tells you to do this?"~ */ GOTO 19
  IF ~~ THEN REPLY #20529 /* ~"What do you find in the bodies?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20530 /* ~"You look for things inside the corpse? Can you dig around in my body for anything?"~ */ GOTO 22
  IF ~  !NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20531 /* ~"You look for things inside the corpse? Can you dig around in my body for anything?"~ */ GOTO 23
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20532 /* ~"You pull stitches out of corpses... can I buy some needle and thread from you?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20533 /* ~"Have you got anything else you've pulled from corpses that I can have?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20534 /* ~"Can I see what you've pulled from corpses recently?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20535 /* ~"Do you mind if I rest here?"~ */ GOTO 29
  IF ~~ THEN REPLY #20536 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20537 /* ~"Uh... very well. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20447 /* ~Marta frowns. "Dids we not say we'd be selling them, Marta?" Her frown deepens, and she shakes her head. "Aye, Marta we did. Dusties buy bodies, but we takes all we can at first."~ */
  IF ~~ THEN REPLY #20539 /* ~"Who tells you to strip the corpses?"~ */ GOTO 19
  IF ~~ THEN REPLY #20540 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20541 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY #20448 /* ~"Thingies, thingies..." She gives a lop-sided shrug. "The others takes them."~ */
  IF ~~ THEN REPLY #20542 /* ~"Who?"~ */ GOTO 19
  IF ~~ THEN REPLY #20543 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20544 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1 17.0 18.0
  SAY #20449 /* ~"Fat-faced gimme-pig Quint, n' the other crutch-hobble, hobble-crutch Fair-odd Pharod, innit that right, Marta?" She gives a queer smile, and nods. "Aye, it is, Marta..."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #20545 /* ~"Pharod? Where is he?"~ */ GOTO 20
  IF ~~ THEN REPLY #20546 /* ~"What do they do with the things you dig out of the corpses?"~ */ GOTO 21
  IF ~~ THEN REPLY #20547 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20548 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20450 /* ~Marta shrugs. "Where's Pharod, this one asks? He's heres, Marta, isn't he...?" She nods. "Aye, Pharod is heres, Marta. One of the buildings here, he is..."~ */
  IF ~~ THEN REPLY #20549 /* ~"What do they do with the things you dig out of the corpses?"~ */ GOTO 21
  IF ~~ THEN REPLY #20550 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20551 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #20451 /* ~"Sell. Sell for shinies."~ */
  IF ~~ THEN REPLY #20552 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20553 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.4 16.3 30.4
  SAY #20452 /* ~Marta squints at you. "Hmnnn." Then nods. "Marta can do that, cancha Marta? Yes, you can."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 210
END

IF ~~ THEN BEGIN 23 // from: 13.5 16.4 30.5
  SAY #20453 /* ~Marta squints at you. "Hmnnn." Then nods. "Marta can do that, cancha Marta? Yes, you can..." She pulls forth a splintered chisel. "Where? Where..." Marta is studying you, as if looking for the best place to crack you open.~ */
  IF ~~ THEN REPLY #20554 /* ~"Let's try the stomach, shall we..."~ */ GOTO 38
  IF ~~ THEN REPLY #20555 /* ~"How about my rib cage...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20556 /* ~"Check the intestines... anything could be lodged in there."~ */ GOTO 34
  IF ~~ THEN REPLY #20557 /* ~"Crack open my skull, if you would."~ */ GOTO 32
  IF ~~ THEN REPLY #20558 /* ~"Never mind. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #20559 /* ~"Uh... never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #20454 /* ~"Where? Where..." Marta is studying you, as if looking for the best place to crack you open. ~ */
  IF ~~ THEN REPLY #20560 /* ~"Let's try the stomach, shall we..."~ */ GOTO 38
  IF ~~ THEN REPLY #20561 /* ~"How about my rib cage...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20562 /* ~"Check the intestines... anything could be lodged in there."~ */ GOTO 34
  IF ~~ THEN REPLY #20563 /* ~"Crack open my skull, if you would."~ */ GOTO 32
  IF ~~ THEN REPLY #20564 /* ~"Never mind. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #20565 /* ~"Uh... never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 32.0 33.0 34.1 38.0
  SAY #20455 /* ~Your vision slowly returns... to see Marta standing over you, shaking her head. "Nothing, nothing, found, eh, Marta?" She shakes her head. "No, nothing, Marta, no luck... should we try again?"~ */
  IF ~~ THEN REPLY #20566 /* ~"L... L... Let's try the stomach, shall we..."~ */ GOTO 38
  IF ~~ THEN REPLY #20567 /* ~"Huh... huh... How about my rib cage...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20568 /* ~"Chu... chu... check the intestines... anything could be lodged in there."~ */ GOTO 34
  IF ~~ THEN REPLY #20569 /* ~"Cr... cr... Crack open my skull, if you would."~ */ GOTO 32
  IF ~~ THEN REPLY #20570 /* ~"Nuh - nuh - no, I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #20571 /* ~"Nuh... nuh... yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.7 16.5 30.7
  SAY #20456 /* ~She seems confused. "Buy? Jink-jink? Ain't you here to pick some up... that's what ye're here for, aincha? Ta pick up the thread, bones, rattling teethies?"~ */
  IF ~~ THEN REPLY #20572 /* ~Lie: "Yeah, I'm here to pick them up."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_4","GLOBALLaw",-1)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Teeth",Protagonist,1,0,0)
~ GOTO 27
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20573 /* ~"No, I'm not here to pick them up, but I'll buy some from you."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 28
  IF ~  PartyGold(0)
~ THEN REPLY #20574 /* ~"No, I'm not here to pick them up, but I'll buy some from you... when I have some money to spend. For now, I had some questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 13
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20575 /* ~"Never mind. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #20576 /* ~"Uh... never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20457 /* ~"Here's whatcha came for..." She passes the items over to you. "All I have, all I have..."~ */
  IF ~~ THEN REPLY #20577 /* ~"Thanks. I had some other questions..."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #20578 /* ~"Thanks... these should be helpful. Farewell."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #20458 /* ~She stares at the coins in your hand, as if not sure what to make of them. "Shiny-shinies. Shine..." She frowns. "What did they wants again, Marta?" She mumbles. "Marta... Marta, what did they want?"~ */
  IF ~~ THEN REPLY #20579 /* ~"Can I see what you have?"~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20580 /* ~"Never mind. I had some other questions..."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #20581 /* ~"Uh... never mind. Farewell."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 13.6 16.8 30.6
  SAY #20459 /* ~Marta nods. "Marta home, Marta sleep here; you can sleep if'n you wants, yes. I don't thinks Marta have a problem... does you, Marta?" She shakes her head. "No, no, Marta, I doesn't if you doesn't..."~ */
  IF ~~ THEN REPLY #20583 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #20584 /* ~"I don't want to rest just yet. I had some other questions first..."~ */ GOTO 13
  IF ~~ THEN REPLY #20585 /* ~"Maybe I'll return when I need to sleep. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 1.1
  SAY #20460 /* ~Marta glances up as you speak. "Did the one say questions, Marta...?" Marta blinks, then frowns. "Aye, Marta, he said such, for he wears the 'asking' look on him, he does..."~ */
  IF ~~ THEN REPLY #20586 /* ~"Who are you?"~ */ GOTO 11
  IF ~~ THEN REPLY #20587 /* ~"What are you doing?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20588 /* ~"Why are you pulling out the corpse's teeth and stitches?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta the Seamstress seems to have the job of taking corpses given to her, ripping out their teeth, undoing their stitches, looking for any valuables she can find on or in the body, then stitching them back up again.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20589 /* ~"Why are you pulling out the corpse's teeth and stitches?"~ */ JOURNAL #20538 /* ~Marta the Seamstress seems to have the job of taking corpses given to her, ripping out their teeth, undoing their stitches, looking for any valuables she can find on or in the body, then stitching them back up again.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20590 /* ~"Can you dig in my body to find anything?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20591 /* ~"Can you dig in my body to find anything?"~ */ GOTO 23
  IF ~~ THEN REPLY #20592 /* ~"Can I rest here?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20593 /* ~"You pull stitches out of corpses... can I buy some needle and thread from you?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20594 /* ~"Have you got anything else you've pulled from corpses that I can have?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20595 /* ~"Can I see what you've pulled from corpses recently?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20596 /* ~"No questions. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.1
  SAY #20461 /* ~"Thingies inside, thingies inside... yes, Marta?" She nods, then shakes her head. "When they haves them, Marta, when they haves them..." ~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20597 /* ~"Why are you pulling out the corpse's teeth and stitches?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta the Seamstress seems to have the job of taking corpses given to her, ripping out their teeth, undoing their stitches, looking for any valuables she can find on or in the body, then stitching them back up again.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20598 /* ~"Why are you pulling out the corpse's teeth and stitches?"~ */ JOURNAL #20538 /* ~Marta the Seamstress seems to have the job of taking corpses given to her, ripping out their teeth, undoing their stitches, looking for any valuables she can find on or in the body, then stitching them back up again.~ */ GOTO 16
  IF ~~ THEN REPLY #20599 /* ~"I... see. Can I ask you some other questions?"~ */ GOTO 13
  IF ~~ THEN REPLY #20600 /* ~"Uh... very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.3 24.3 25.3 39.3
  SAY #20462 /* ~You lie upon the table, and the last thing you see is Marta standing over you, chisel and mallet at the ready. There is a sharp *crack,* and you scream as everything goes black. ~ */
  IF ~~ THEN REPLY #20601 /* ~Fall into darkness...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #20602 /* ~I asked Marta... the addled Seamstress in the Buried Village... to look in my skull to see if anything was there. There wasn't.~ */ GOTO 25
END

IF ~~ THEN BEGIN 33 // from: 23.1 24.1 25.1 39.1
  SAY #20463 /* ~You lie upon the table, and Marta stands over you, a chisel and mallet at the ready. There is a sharp *crack,* as she splits your rib cage open, and you choke back your screams as she begins to fish in your lungs... as you try and gasp for air, you go numb, then black out from the pain.~ */
  IF ~~ THEN REPLY #20603 /* ~Fall into darkness...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 23.2 24.2 25.2 39.2
  SAY #20464 /* ~You lie upon the table, and Marta stands over you, a rusty knife at the ready. There is a stabbing pain as she slices into your abdomen, then cuts brutally downwards in a saw-like motion, exposing your innards. Despite the pain, you watch in silent, morbid fascination as she plunders your organs, humming to herself...~ */
  IF ~  Global("Marta_Ring","GLOBAL",0)
~ THEN REPLY #20604 /* ~Watch...~ */ GOTO 35
  IF ~  Global("Marta_Ring","GLOBAL",1)
~ THEN REPLY #20605 /* ~Fall into darkness...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #20465 /* ~"Ah!" There is a wrenching pain as Marta lifts up the ropy mass of your intestines, blood and other fluids streaming from it. "Look at this, Marta... look at this... I see, I see, cut there, cut there..." Marta makes a small, deft incision in the side of one of the intestines, and you hear a *tnnng* as something small and metallic strikes the floor. ~ */
  IF ~~ THEN REPLY #20606 /* ~"Urhhhkk..."~ */ DO ~SetGlobal("Marta_Ring","GLOBAL",1)
GiveItemCreate("Ring02",Protagonist,1,0,0)
GiveItemCreate("Intest",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #20607 /* ~I asked Marta... the addled Seamstress in the Buried Village... to search my intestines to see if she could find anything lodged there. She found a ring... and left me an extra set of my intestines as well.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #20466 /* ~Marta then dumps the soupy mass back into your torso, then reaches down, picks up the object... a ring, it appears, and she flicks it to you. "Pretty, pretty, eh, Marta?" She nods. "Yes, Marta, one shouldn't swallow such a thing, no, no..."~ */
  IF ~~ THEN REPLY #20608 /* ~"Th- thanks... was... there... anything... else...?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 13.8 16.6 30.8
  SAY #20467 /* ~"Nothing more do I have, do I, Marta?" She nods. "Takes it all last time, this one did, no more, no more..." ~ */
  IF ~~ THEN REPLY #20609 /* ~"Very well. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #20610 /* ~"Never mind then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.0 24.0 25.0 39.0
  SAY #20468 /* ~You lie upon the table, and Marta stands over you, a rusty knife at the ready. There is a stabbing pain as she slices into your abdomen, then cuts brutally downwards in a saw-like motion, exposing your innards. Despite the pain, you watch in morbid fascination as she lifts up your stomach...~ */
  IF ~~ THEN REPLY #20611 /* ~Watch...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0
  SAY #45007 /* ~Marta shakes her head. "Nothing more, more nothing, eh, Marta? Should we try someplace else, Marta?"~ */
  IF ~~ THEN REPLY #45009 /* ~"L... L... Let's try the stomach, shall we..."~ */ GOTO 38
  IF ~~ THEN REPLY #45010 /* ~"Huh... huh... How about my rib cage...?"~ */ GOTO 33
  IF ~~ THEN REPLY #45011 /* ~"Chu... chu... check the intestines... just... one... more... time..."~ */ GOTO 34
  IF ~~ THEN REPLY #45012 /* ~"Cr... cr... Crack open my skull, if you would."~ */ GOTO 32
  IF ~~ THEN REPLY #45013 /* ~"Nuh - nuh - no, I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #45014 /* ~"Nuh... nuh... yet. Farewell."~ */ EXIT
END
