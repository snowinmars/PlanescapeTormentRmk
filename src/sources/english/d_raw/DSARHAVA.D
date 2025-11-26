// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSARHAVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSARHAVA~

IF ~  Global("Sarhava","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #32064 /* ~The smell of alcohol wafts heavily from this young woman and, despite her dark skin, you can see that her face - beautiful, but cruel-looking - is flushed. She is slender but well-muscled, adorned in exotic jewelry and translucent silk clothing. Numerous scars crisscross her thighs and forearms; they look to be from battle-wounds.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #32065 /* ~"Greetings..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 24
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
NearbyDialog("DMorte")
~ THEN REPLY #32536 /* ~"Greetings..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #32537 /* ~"Greetings..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32538 /* ~"Greetings..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 29
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("DAnnah")
~ THEN REPLY #32539 /* ~"Greetings..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #32540 /* ~Stay away from the woman.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 30.2 31.1 33.2 36.1 37.1
  SAY #32491 /* ~"What foul thing gave birth to *you,* sirrah?" She grimaces in disgust, then laughs harshly. "And such a stench! Be you one of death's bastards?" You notice a curved long-knife hanging at her hip; her hand rests loosely upon its pommel.~ */
  IF ~~ THEN REPLY #32541 /* ~"*What* did you say, girl?"~ */ GOTO 23
  IF ~~ THEN REPLY #32542 /* ~Bluff: "Adhana? Is that you?"~ */ GOTO 4
  IF ~~ THEN REPLY #32543 /* ~"What's the matter with you?"~ */ GOTO 21
  IF ~~ THEN REPLY #32544 /* ~"I've no quarrel with you. Leave be and go your way."~ */ GOTO 10
  IF ~~ THEN REPLY #32545 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32546 /* ~Ignore her and walk away.~ */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 0.1 30.1 31.0 33.1 36.0 37.0
  SAY #32492 /* ~"What foul thing gave birth to *you,* sirrah?" She grimaces in disgust, then laughs harshly. "And such a stench! Be you one of death's bastards?" You notice a curved long-knife hanging at her hip; her hand rests loosely upon its pommel.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 310
END

IF ~~ THEN BEGIN 3 // from:
  SAY #32493 /* ~"Oh, *this* I've to see. So tell me, 'sirrah' - is it that you stink like the Hive's gutters? Or that its gutters stink like *you?*"~ */
  IF ~~ THEN REPLY #32547 /* ~"*What* did you say, girl?"~ */ GOTO 23
  IF ~~ THEN REPLY #32548 /* ~Bluff: "Adhana? Is that you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32549 /* ~"What's the matter with you?"~ */ GOTO 21
  IF ~~ THEN REPLY #32550 /* ~"I've no quarrel with you. Leave be and go your way."~ */ GOTO 10
  IF ~~ THEN REPLY #32551 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32552 /* ~Ignore her and walk away.~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 1.1 23.0
  SAY #32494 /* ~The woman blinks at you in surprise.~ */
  IF ~~ THEN REPLY #32553 /* ~"Adhana? Do you not remember me?"~ */ GOTO 5
  IF ~~ THEN REPLY #32554 /* ~"I've told you, Adhana: I never loved you and I never shall. What little pleasure you might have given me wasn't worth the agony of your presence. Now leave me be."~ */ GOTO 6
  IF ~~ THEN REPLY #32555 /* ~"Oh... my apologies. I had thought you to be Adhana, but you're twice as ugly and smell twice as bad as she."~ */ GOTO 6
  IF ~~ THEN REPLY #32556 /* ~"Never mind. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32495 /* ~She eyes you warily for a moment, then smiles. "Your deep wounds must have confused you, sirrah." The woman chuckles. "I am not your friend, nor would I ever associate myself with one such as you."~ */
  IF ~~ THEN REPLY #32557 /* ~"Oh... my apologies. I had thought you to be Adhana, but you're twice as ugly and smell twice as bad as she."~ */ GOTO 6
  IF ~~ THEN REPLY #32558 /* ~"Never mind. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 5.0
  SAY #32496 /* ~She listens to you for a moment, confused, then snarls and makes to draw her weapon.~ */
  IF ~~ THEN REPLY #32559 /* ~Fight her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32560 /* ~Call for the guards.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 11.1 13.1 17.1 20.1 31.2 38.1 42.1
  SAY #32497 /* ~She gasps in shock. "You fool... are you mad? The guards would never take your word over mine!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #32561 /* ~"You're obviously drunk, and those scars of yours mark you as the fighting sort... you probably have a reputation for this sort of thing already. I think they just might."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #32562 /* ~"You're obviously drunk, and those scars of yours mark you as the fighting sort. I think they just might."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #32498 /* ~She stares hard at you, grinding her teeth. "You had best hope we do not meet again in another place, *dog!*" She turns to storm off.~ */
  IF ~~ THEN REPLY #32563 /* ~"Oh, I'm hoping we *do*..."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32564 /* ~Yawn like you're bored as she walks away.~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32565 /* ~"Farewell."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #32499 /* ~She stares hard at you, grinding her teeth. "Let us drop the whole matter, then, and be on our separate ways."~ */
  IF ~~ THEN REPLY #32566 /* ~"Agreed - you've already wasted enough of my time. Farewell."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32567 /* ~"Agreed. Farewell."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.3 3.3 23.3
  SAY #32500 /* ~"Oh, certainly. But first..." She pauses, her lips curling up into a wicked smile. "...one question: Can anyone truly become as ugly as you in one lifetime?"~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32568 /* ~"Yes... look to yourself for the proof."~ */ GOTO 11
  IF ~~ THEN REPLY #32569 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32570 /* ~Leave.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0 22.0 22.1 25.0
  SAY #32501 /* ~She stares at you a moment, surprised, before snarling and reaching for her dagger...~ */
  IF ~~ THEN REPLY #32571 /* ~Fight her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32572 /* ~Call for the guards.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 1.5 3.5 4.3 5.1 10.2 21.3 22.3 23.5
  SAY #32502 /* ~"Do not turn your back on me, dog. Your presence here, on this street, offends me deeply. You must make amends." She puts one foot forward. "Lick my boot, remove yourself from my presence, and all shall be forgiven."~ */
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32573 /* ~Bend down and lick her boot.~ */ GOTO 14
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32574 /* ~Bend down and lick her boot.~ */ EXTERN ~DANNAH~ 174
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32575 /* ~Bend down and lick her boot.~ */ EXTERN ~DMORTE~ 312
  IF ~~ THEN REPLY #32576 /* ~Bend down to her boot, wait for an opportunity to hurt her.~ */ GOTO 16
  IF ~~ THEN REPLY #32577 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32578 /* ~Ignore her threats and leave.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.5
  SAY #32503 /* ~As you turn to go, she snarls and reaches for her dagger...~ */
  IF ~~ THEN REPLY #32579 /* ~Fight her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32580 /* ~Call for the guards.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.4
  SAY #32504 /* ~Her high-pitched laughter, gloating and derisive, echoes through the streets. "Now leave here, coward. Dare to speak to me again, and my blade shall pluck your heart out before your words reach my ears."~ */
  IF ~~ THEN REPLY #32581 /* ~"All right, that's enough of this. Let's see you use this little knife of yours, girl."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32582 /* ~Leave.~ */ DO ~SetGlobal("Sarhava","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32505 /* ~"Pigs!" she screeches. "I shall kill the both of you!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Myself,"Annah")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #32506 /* ~ As you kneel before the woman, she puts her hands on her hips and throws back her head. Her high-pitched laughter, gloating and derisive, echoes through the streets.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #32583 /* ~Bite a chunk out of her bare leg.~ */ DO ~Damage("Sarhava",LOWER,2)
SetGlobal("Sarhava","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 18
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32584 /* ~Bite a chunk out of her bare leg.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #32585 /* ~Pull her legs out from under her.~ */ DO ~Damage("Sarhava",LOWER,2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32586 /* ~Pull her legs out from under her.~ */ GOTO 17
  IF ~~ THEN REPLY #32587 /* ~Just lick her boot.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 16.1 16.3
  SAY #32507 /* ~You make your move... but she steps deftly out of your grasp. "You shall pay for that with your *life,* you dog!" She begins to draw her dagger...~ */
  IF ~~ THEN REPLY #32588 /* ~Fight her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32589 /* ~Call for the guards.~ */ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #32508 /* ~You grasp her lower leg and sink your teeth into the flesh of her calf. She screeches in pain, pulling away from you and drawing her dagger - your bite seems to have sobered her up quickly. "Powers that be, are you *MAD?!*"~ */
  IF ~~ THEN REPLY #32590 /* ~Smile at her, lick the blood off your lips.~ */ GOTO 19
  IF ~~ THEN REPLY #32591 /* ~"I'll be licking no boots this day, girl. Now go, before I start biting off bigger chunks."~ */ GOTO 19
  IF ~~ THEN REPLY #32592 /* ~Just walk away.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #32509 /* ~She shudders visibly, a mixture of disbelief and revulsion creeping over her face. "Ugh! May I never run across your like again! Beast..." She turns to walk away.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32593 /* ~Make biting noises at her as she walks away.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32594 /* ~Make biting noises at her as she walks away.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32595 /* ~"Farewell."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32596 /* ~"Farewell."~ */ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32597 /* ~Let her leave quietly.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32598 /* ~Let her leave quietly.~ */ EXTERN ~DMORTE~ 314
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY #32510 /* ~You grasp her ankles and pull her legs out from under her. For a moment she appears suspended in the air, her mouth a wide 'O' of surprise - then she comes crashing down onto the street with a painful *thud.* She springs to her feet, eyes wild with rage. "I'll *kill* you!" She draws her dagger...~ */
  IF ~~ THEN REPLY #32599 /* ~Fight her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32600 /* ~Call for the guards.~ */ GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 1.2 3.2 23.2
  SAY #32511 /* ~"The matter is a most *ugly* one, sirrah." She sneers distastefully. "Simply looking at you raises the bile in my throat."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32601 /* ~"Wasn't that what your mother said when you were birthed?"~ */ GOTO 11
  IF ~~ THEN REPLY #32602 /* ~"I'd leave, girl, before you end up like me."~ */ GOTO 22
  IF ~~ THEN REPLY #32603 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32604 /* ~Ignore her and walk away.~ */ GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #32512 /* ~"Oh, nay, nay... I could never be quite like you, sirrah. So *few* people dine on their own excrement."~ */
  IF ~~ THEN REPLY #32605 /* ~"Open your mouth again, girl, and I'll make sure you develop a taste for it."~ */ GOTO 11
  IF ~~ THEN REPLY #32606 /* ~"If I wanted excrement, I'd squeeze your head, girl."~ */ GOTO 11
  IF ~~ THEN REPLY #32607 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32608 /* ~Ignore her and walk away.~ */ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 1.0 3.0
  SAY #32513 /* ~"I think the proper question, sirrah, is what is that *smell?*" She sniffs the air, then wrinkles her nose in disgust. "Why, I think 'tis you! 'Tis you indeed, you flyblown carcass of a man!"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32609 /* ~Bluff: "Wait... I recognize you. Adhana!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32610 /* ~Bluff: "Wait... I recognize you. Adhana!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32611 /* ~"What's the matter with you?"~ */ GOTO 21
  IF ~~ THEN REPLY #32612 /* ~"I've no quarrel with you. Leave be and go your way."~ */ GOTO 10
  IF ~~ THEN REPLY #32613 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32614 /* ~Ignore her and walk away.~ */ GOTO 12
END

IF ~~ THEN BEGIN 24 // from: 0.0
  SAY #32514 /* ~"What foul thing gave birth to *you,* sirrah?" She grimaces in disgust, then laughs harshly. "And such a stench! Be you one of death's bastards?" You notice a curved long-knife hanging at her hip; her hand rests loosely upon its pommel...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 130
END

IF ~~ THEN BEGIN 25 // from:
  SAY #32515 /* ~The young woman appears confused for a moment, then recognizes Fall-from-Grace. She seems startled and abashed. "Mistress Grace! I had not noticed you... only shamefully do I admit this, for your noble appearance would be obvious to even a dullard."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32615 /* ~"Obviously you rank less than a dullard, girl."~ */ GOTO 11
  IF ~~ THEN REPLY #32616 /* ~Let Grace continue to speak.~ */ EXTERN ~DGRACE~ 131
END

IF ~~ THEN BEGIN 26 // from:
  SAY #32516 /* ~She seems shamed. "Yes, Mistress... I regret that such words were spoken in your presence."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 132
END

IF ~~ THEN BEGIN 27 // from:
  SAY #32517 /* ~"Eh..." She frowns, then regains her composure. "In any event, Mistress, what brings you out of the establishment? Some errand?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 133
END

IF ~~ THEN BEGIN 28 // from:
  SAY #32518 /* ~Sarhava bows low. "Then allow me to excuse myself with an apology, Mistress Grace, to you and your companions. My words were ill-chosen. 'Tis the drink that caused me to speak such rubbish, and I am filled with shame for having belittled myself so before my teacher of old." She bows, turns, and leaves.~ */
  IF ~~ THEN REPLY #32617 /* ~Leave.~ */ DO ~SetGlobal("Sarhava","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY #32519 /* ~"Well, well... what have we here? A little tiefling gutter-queen, come crawling out of the Hive?" The woman pouts, talking as one would to a small child. "Are you lost, little tiefling? Oh, look! It has a tail! How... cute!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 178
END

IF ~~ THEN BEGIN 30 // from:
  SAY #32520 /* ~"Now, fiend-kin, don't do that." The woman seems unconcerned as Annah draws her weapons, and clucks disapprovingly with her tongue. "Careful now, or I'll remove that tail of yours and feed it to my dogs."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32618 /* ~"Enough, girl. Apologize to her, or I'll be cutting bits of *you* off."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32619 /* ~"Enough, girl. Apologize to her, or I'll be cutting bits of *you* off."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32620 /* ~Let Annah handle it.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32621 /* ~"Let it go, Annah. She isn't worth the trouble."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
END

IF ~~ THEN BEGIN 31 // from:
  SAY #32521 /* ~"You filthy spawn of the Lower Planes, a bitch-bastard that not even a tanar'ri would keep in its pen!" She draws her blade.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32622 /* ~"Sheathe that blade, girl, or I'll sheathe it in your body."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32623 /* ~"Sheathe that blade, girl, or I'll sheathe it in your body."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #32624 /* ~Call for the guards.~ */ GOTO 7
  IF ~~ THEN REPLY #32625 /* ~Let things happen as they will.~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY #32522 /* ~"And what is *this?!* A gith? So *far* from the swirling cesspit of Limbo, privy of the planes?" She narrows her eyes, awaiting Dak'kon's response.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 114
END

IF ~~ THEN BEGIN 33 // from:
  SAY #32523 /* ~She frowns. "I thought your kind would be more at home amongst the carnivorous frogs that frolic in Limbo's soups, gith."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32626 /* ~"Perhaps *you'd* be more at home in the Mortuary, girl."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32627 /* ~"Perhaps *you'd* be more at home in the Mortuary, girl."~ */ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32628 /* ~Let Dak'kon handle it.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3
  SAY #32524 /* ~She waits a moment for a response, then continues to harangue Dak'kon: "Why do you not return to Limbo, gith?" She thinks a moment, stroking her chin. "Or is it the Astral Plane that your kind live on? I get your people so confused - githyanki, githzerai, who can tell the difference..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DDAKKON~ 115
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32629 /* ~Continue.~ */ EXTERN ~DDAKKON~ 115
END

IF ~~ THEN BEGIN 35 // from:
  SAY #32525 /* ~Suddenly, the woman smiles. "Oh! Tell me a joke, gith!" She claps her hands in delight. "Enlighten me with the famous humor of your race, *githyanki!*"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 116
END

IF ~~ THEN BEGIN 36 // from:
  SAY #32526 /* ~She sneers at Dak'kon. "And when I came upon you in Sigil's streets, gith, young Sarhava looked upon the gith filth and said, 'there is little there that is even worthy to be spat upon.' You are but a godless *githyanki* dog, who must incestuously worship bastards of your own race and spawn with frogs." She grasps the hilt of her dagger. "Draw your frail piece of steel, gith filth."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32630 /* ~"That's more than enough, girl. Silence yourself."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32631 /* ~"That's more than enough, girl. Silence yourself."~ */ GOTO 1
  IF ~~ THEN REPLY #32632 /* ~Attack her yourself.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32633 /* ~"Attack her, Dak'kon."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32634 /* ~Await Dak'kon's reaction.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.4
  SAY #32527 /* ~She waits, but Dak'kon still makes no response. "I wish the mind flayers still held you in thrall, gith, so that the multiverse might be spared from the danger of your race breeding."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32635 /* ~"That's more than enough, girl. Silence yourself."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32636 /* ~"That's more than enough, girl. Silence yourself."~ */ GOTO 1
  IF ~~ THEN REPLY #32637 /* ~Attack her yourself.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32638 /* ~"Attack her, Dak'kon."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32639 /* ~Await Dak'kon's reaction.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.4
  SAY #32528 /* ~Dak'kon stands as silent as stone. The woman snarls and prepares to lunge at him. "To Baator with you, then, coward!"~ */
  IF ~~ THEN REPLY #32640 /* ~Help Dak'kon fight her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32641 /* ~Call for the guards.~ */ GOTO 7
  IF ~~ THEN REPLY #32642 /* ~Let things happen as they will.~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #32529 /* ~The woman, caught off guard, does not reply. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 317
END

IF ~~ THEN BEGIN 40 // from:
  SAY #32530 /* ~"What... who... how dare-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 318
END

IF ~~ THEN BEGIN 41 // from:
  SAY #32531 /* ~"I... I..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 319
END

IF ~~ THEN BEGIN 42 // from:
  SAY #32532 /* ~The woman draws her blade and, snarling like an enraged animal, lunges at Morte.~ */
  IF ~~ THEN REPLY #32643 /* ~Help Morte fight her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32644 /* ~Call for the guards.~ */ GOTO 7
  IF ~~ THEN REPLY #32645 /* ~Let things happen as they will.~ */ DO ~Enemy()
Attack("Morte")
~ EXIT
END

IF ~  Global("Sarhava","GLOBAL",2)
~ THEN BEGIN 43 // from:
  SAY #32533 /* ~The young woman refuses to say another word to you.~ */
  IF ~~ THEN REPLY #32646 /* ~Leave.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #32534 /* ~The young woman sneers cruelly and proffers the toe of her boot. "Back for another taste of my boot, dog? Well you shan't have it! Did I not tell you to never speak with me again? Away with you, before I draw my blade."~ */
  IF ~~ THEN REPLY #32647 /* ~"I've had enough of you, girl... draw your blade."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32648 /* ~Stay and fight her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32649 /* ~Leave.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 45 // from:
  SAY #32535 /* ~Sarhava acknowledges you with a nod of her head, but will have no words with you.~ */
  IF ~~ THEN REPLY #32650 /* ~Leave.~ */ EXIT
END
