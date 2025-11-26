// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCREED.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCREED~

IF ~  Global("Creeden","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #10080 /* ~This foul-looking man is quick to notice he's caught your attention; in moments he's upon you, hawking his 'wares.' He carries a long wooden pole; dozens of skinned and cooked rats dangle from it. As he speaks, he gestures to them with a broad, filth-encrusted hand, smiling a yellowed, snaggle-toothed grin all the while. "Oye, cutter, 'ow ye doin' there? Wot sorta deeee-licious ratsies is ye interested in this fine day?"~ */
  IF ~~ THEN REPLY #12628 /* ~Examine the 'ratsies.'~ */ GOTO 2
  IF ~~ THEN REPLY #12629 /* ~"I'd rather eat offal."~ */ GOTO 4
  IF ~~ THEN REPLY #12630 /* ~"What sort of... 'ratsies' did you have for sale?"~ */ GOTO 5
  IF ~~ THEN REPLY #12631 /* ~"None, today... I did have a question for you, though..."~ */ GOTO 15
  IF ~~ THEN REPLY #12632 /* ~"None of them interest me, thanks. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",1)
~ THEN BEGIN 1 // from:
  SAY #12560 /* ~"Oye, there, cutter; well met again. 'Ungry for some a' Creeden's tasty ratsies, ey?"~ */
  IF ~~ THEN REPLY #12633 /* ~"Why not... what kinds do you have?"~ */ GOTO 5
  IF ~~ THEN REPLY #12634 /* ~"I'd sooner eat my own flesh than such filth!"~ */ GOTO 4
  IF ~~ THEN REPLY #12635 /* ~"No, not today. I had some questions, however..."~ */ GOTO 15
  IF ~~ THEN REPLY #12636 /* ~"No thanks. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #12561 /* ~Each rat has been skinned and gutted, their feet and tails removed; they dangle from the pole by hooks punched though their necks. As you examine the various manners in which they've been prepared, you realize their heads are slightly misshapen - a bulbous knot of bone protrudes from each cranium, covered in whorls that give it the appearance of brain tissue.~ */
  IF ~~ THEN REPLY #12637 /* ~"Those are strange-looking rats."~ */ GOTO 3
  IF ~~ THEN REPLY #12638 /* ~"I'll take one."~ */ GOTO 5
  IF ~~ THEN REPLY #12639 /* ~"I'm not eating any of this garbage."~ */ GOTO 4
  IF ~~ THEN REPLY #12640 /* ~"Nothing for me, thanks. A question for you, though..."~ */ GOTO 15
  IF ~~ THEN REPLY #12641 /* ~"No rat for me, thanks. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9344 /* ~"Ah, ye've got a keen eye there, cutter! All I sell is brain vermin, I do... I'm sure ye'll find they've got a much richer flavor than yer usual rat. Quite nice, really!" He proffers them to you once more, waving the pole before your face enticingly... the rats sway to and fro, hooked like tiny sides of beef.~ */
  IF ~~ THEN REPLY #12642 /* ~"Brain vermin?"~ */ GOTO 22
  IF ~~ THEN REPLY #12643 /* ~"I'll try one."~ */ GOTO 5
  IF ~~ THEN REPLY #12644 /* ~"Disgusting. I'd sooner eat offal than any of that filth."~ */ GOTO 4
  IF ~~ THEN REPLY #12645 /* ~"Interesting. I had a question for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #12646 /* ~"That's all I needed to hear. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.2 3.2 5.4 6.1 7.1 8.1 9.1 59.1 60.1
  SAY #12562 /* ~The man doesn't seem the least bit perturbed; in fact, he winks at you, smiling merrily. "Let me tell ye, cutter - ye don't know wot ye're missin'! I'll be 'ere if ye reconsider..." The man returns to hawking his rats to passersby.~ */
  IF ~~ THEN DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 2.1 3.1 10.1 11.1 12.1 13.1 15.11 59.0 60.0 61.0
  SAY #12563 /* ~"Good, cutter, good! Wot sort wouldst ye like?" He points to each in turn with a grimy fingernail. "I got them baked, spiced, boiled, an' charred! All fresh, all scrumptious... and only three coppers for two!"~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12647 /* ~"Baked."~ */ DO ~TakePartyGold(3)
~ GOTO 6
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12648 /* ~"Spiced."~ */ DO ~TakePartyGold(3)
~ GOTO 7
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12649 /* ~"Boiled."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12650 /* ~"Charred."~ */ DO ~TakePartyGold(3)
~ GOTO 9
  IF ~~ THEN REPLY #12651 /* ~"Scrumptious? Doubtful. Who'd eat such refuse?"~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12652 /* ~"I don't have enough... but I do have some questions..."~ */ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12653 /* ~"I don't have enough... Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12654 /* ~"On second thought, none for me. I had a question, though..."~ */ GOTO 15
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12655 /* ~"Come to think of it, I'm not all that hungry. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12564 /* ~You hand over your coppers and, in one swift motion, he runs a pair of baked rats through with a wooden skewer, unhooks them, and places them in your hand. He winks at you: "Enjoy, cutter!"~ */
  IF ~~ THEN REPLY #12656 /* ~Eat the 'ratsie.'~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #12657 /* ~Toss it down in disgust.~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12565 /* ~You hand over your coppers and, in one swift motion, he runs a pair of spiced rats through with a wooden skewer, unhooks them, and places them in your hand. He winks at you: "Enjoy, cutter!"~ */
  IF ~~ THEN REPLY #12658 /* ~Eat the 'ratsie.'~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #12659 /* ~Toss it down in disgust.~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #12566 /* ~You hand over your coppers and, in one swift motion, he runs a pair of boiled rats through with a wooden skewer, unhooks them, and places them in your hand. He winks at you: "Enjoy, cutter!"~ */
  IF ~~ THEN REPLY #12660 /* ~Eat the 'ratsie.'~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #12661 /* ~Toss it down in disgust.~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #12567 /* ~You hand over your coppers and, in one swift motion, he runs a pair of charred rats through with a wooden skewer, unhooks them, and places them in your hand. He winks at you: "Enjoy, cutter!"~ */
  IF ~~ THEN REPLY #12662 /* ~Eat the 'ratsie.'~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #12663 /* ~Toss it down in disgust.~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #12568 /* ~The rat's flesh is tender and moist; it comes off the bone easily and melts in your mouth. It is slightly greasy and rather rich, tasting of some... other... sort of meat you're sure you've had before. The man looks at you expectantly. "Did ye like? Wouldst ye like another?"~ */
  IF ~~ THEN REPLY #12664 /* ~"It was good, but I had a question for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #12665 /* ~"All right, I'll have another."~ */ GOTO 5
  IF ~~ THEN REPLY #12666 /* ~"No, it was foul."~ */ GOTO 14
  IF ~~ THEN REPLY #12667 /* ~"No more for me. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #12569 /* ~The rat-meat is aromatic and quite spicy, apparently marinated in some sort of herbal mixture before being cooked. It is a bit greasy and rather rich, tasting of some... other... meat you're sure you've had before. The man looks at you expectantly. "Did ye like? Wouldst ye like another?"~ */
  IF ~~ THEN REPLY #12668 /* ~"It was good, but I had a question for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #12669 /* ~"All right, I'll have another."~ */ GOTO 5
  IF ~~ THEN REPLY #12670 /* ~"No, it was foul."~ */ GOTO 14
  IF ~~ THEN REPLY #12671 /* ~"No more for me. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #12570 /* ~The rat-meat, prepared this way, is rather bland and rubbery. It tastes faintly of some... other... meat you're sure you've had before. You're certain it would taste better prepared in a different manner; you can't imagine why *anyone* would boil meat to eat it. The man looks at you expectantly. "Did ye like? Wouldst ye like another?"~ */
  IF ~~ THEN REPLY #12672 /* ~"It was good, but I had a question for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #12673 /* ~"All right, I'll have another."~ */ GOTO 5
  IF ~~ THEN REPLY #12674 /* ~"No, it was foul."~ */ GOTO 14
  IF ~~ THEN REPLY #12675 /* ~"No more for me. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #12571 /* ~The rat is burnt and crispy outside, but tender and juicy within. It is a bit greasy and rather rich, tasting of some... other... meat you're sure you've had before. The man looks at you expectantly. "Did ye like? Wouldst ye like another?"~ */
  IF ~~ THEN REPLY #12676 /* ~"It was good, but I had a question for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #12677 /* ~"All right, I'll have another."~ */ GOTO 5
  IF ~~ THEN REPLY #12678 /* ~"No, it was foul."~ */ GOTO 14
  IF ~~ THEN REPLY #12679 /* ~"No more for me. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 12.2 13.2 61.1
  SAY #12572 /* ~He looks genuinely surprised. "Pity to 'ear that, cutter. 'Ave a good day." He seems ready to turn away.~ */
  IF ~~ THEN REPLY #12680 /* ~"Wait - I had a question for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #12681 /* ~Let him go.~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.3 1.2 2.3 3.3 5.5 5.7 10.0 11.0 12.0 13.0 14.0 16.1 17.1 18.2 19.2 20.0 21.1 22.1 23.3 24.1 25.2 26.2 27.2 28.2 29.2 30.2 33.1 34.1 35.2 36.2 37.2 38.1 39.5 40.2 41.3 42.1 43.2 44.1 45.0 46.1 47.3 48.3 49.0 50.0 51.2 52.2 53.1 54.0 55.1 56.1 57.1 58.1 60.2 61.2 62.1 63.0
  SAY #12573 /* ~He shoulders his rat-pole casually. "Wot's yer question, cutter?"~ */
  IF ~  Global("RP_Portal","GLOBAL",2)
~ THEN REPLY #48399 /* ~"I was told to ask a man named Creeden, in front the Office of Vermin and Disease Control, about the trash-filled archway in Ragpicker's Square. Can you help me?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",3)
~ JOURNAL #47844 /* ~A man named Creeden told me that, if I wanted to make my way through the rubbish-filled archway in Ragpicker's Square, I ought to ask a woman named Nalls about it. He said that Nalls should be north east of the Office of Vermin and Disease Control, rooting around in a pile of lumber.~ */ GOTO 63
  IF ~~ THEN REPLY #12682 /* ~"Who are you?"~ */ GOTO 21
  IF ~~ THEN REPLY #12683 /* ~"I wanted to speak with you about rats..."~ */ GOTO 23
  IF ~~ THEN REPLY #12684 /* ~"What is that building there, behind you?"~ */ GOTO 17
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12685 /* ~"Can you tell me about this... city?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12686 /* ~"Can you tell me about Sigil?"~ */ GOTO 28
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #12687 /* ~"Can you tell me about these slums?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 35
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #12688 /* ~"Can you tell me about the Hive?"~ */ GOTO 36
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12689 /* ~"Can you tell me about the Lady of Pain?"~ */ GOTO 50
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12690 /* ~"Do you know someone named Pharod?"~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12691 /* ~"I'm missing a journal. Have you seen one?"~ */ GOTO 54
  IF ~~ THEN REPLY #12692 /* ~"I would like one of those rats you have there."~ */ GOTO 5
  IF ~~ THEN REPLY #12693 /* ~"Nothing. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 16 // from: 23.0
  SAY #12574 /* ~"Wot? These?" He jiggles the pole, causing the skinned rats to bounce about in a macabre little jig. "I catch 'em myself, I do... in cellars an' alleyways about the 'Ive."~ */
  IF ~~ THEN REPLY #12694 /* ~"I see. Tell me about this 'Hive.'"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #12695 /* ~"I had another question for you."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12696 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 17 // from: 15.3
  SAY #12575 /* ~He tosses a glance over his shoulder. "That's the Office of Vermin an' Disease Control, cutter. I sell my rat-tails there fer jink, then cook the lil' blighters up an' sell 'em."~ */
  IF ~~ THEN REPLY #12697 /* ~"Someone pays for the tails of those rats?"~ */ GOTO 18
  IF ~~ THEN REPLY #12698 /* ~"I had another question..."~ */ GOTO 15
  IF ~~ THEN REPLY #12699 /* ~"That is all I wanted to know. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 18 // from: 17.0 26.1 47.1 48.2 57.0
  SAY #12576 /* ~"That's right, cutter! There's a berk in the Office of Vermin an' Disease Control, name a' Lort, who pays a bounty on 'em. A copper a 'ead - er, tail - it is, ey. But they gotta be brain vermin, they do... not just ordinary rats."~ */
  IF ~~ THEN REPLY #12700 /* ~"Tell me more about this Lort fellow."~ */ GOTO 19
  IF ~~ THEN REPLY #12701 /* ~"Brain vermin?"~ */ GOTO 22
  IF ~~ THEN REPLY #12702 /* ~"Interesting. Answer me something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12703 /* ~"I see. That is all for now - farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #12577 /* ~"'Is name's Phineas. Phineas Lort. Think 'e was some sorta 'ighup, he was, put down by 'is rivals an' stuck 'ere in the arse-end a' Sigil. The berk sits in there alone all the night an' day, it seems, waitin' fer folk to bring in tails an' payin' them the bounty. Ye know the best part? Poor sod must be allergic to rats, 'cause he's always got a 'uge rash goin'! Ho ho! Powers be praised I ain't that fella."~ */
  IF ~~ THEN REPLY #12704 /* ~"'Put down'? Any idea why that would happen?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #12705 /* ~"Sigil?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12706 /* ~"All right. I had another question..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12707 /* ~"Perhaps I'll pay him a visit sometime. Farewell."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12578 /* ~"Well, 'e's right chatty, 'e is - 'e'll rattle 'is bone-box fer hours on just 'ow smart 'e is an' the like. Mayhap that's got somthin' to do with it." He shrugs.~ */
  IF ~~ THEN REPLY #12708 /* ~"I understand. Another question..."~ */ GOTO 15
  IF ~~ THEN REPLY #12709 /* ~"Perhaps I'll go speak with him. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY #12579 /* ~"Wot, me? Why, I'm Creeden, sometimes called Creed - the Butcherer-of-Rats!" He smiles grandiosely, exposing ill-matched rows of yellowed, broken and crooked teeth.~ */
  IF ~~ THEN REPLY #12710 /* ~"You certainly seem... friendlier... than most around here."~ */ GOTO 49
  IF ~~ THEN REPLY #12711 /* ~"Well met, Creeden. I had another question for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #12712 /* ~"Perhaps we'll speak again, Creeden. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 3.0 18.1 23.2 47.2
  SAY #12580 /* ~"Aye, cutter, brain vermin. Foul creatures, they are. Now, yer normal rats, they just eat stored goods an' multiply, spread disease an' all that... a nuisance, really, no more. Yer *cranium* rat, though - brain vermin, wot *I* go after - they're just trouble. When ye get more than a 'andful a' the little pikers together, they start to get smart on ye... sometimes *real* smart."~ */
  IF ~~ THEN REPLY #12713 /* ~"They become more intelligent?"~ */ GOTO 24
  IF ~~ THEN REPLY #12714 /* ~"I see. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12715 /* ~"That's all I needed to know. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 23 // from: 15.2
  SAY #12581 /* ~He guffaws loudly; his breath is stale and reeks of onions. "Bit of an expert in that field, I am! Wot's yer question, cutter?"~ */
  IF ~~ THEN REPLY #12716 /* ~"Where do you get all those rats?"~ */ GOTO 16
  IF ~~ THEN REPLY #12717 /* ~"Where are the best places to catch rats?"~ */ GOTO 62
  IF ~~ THEN REPLY #12718 /* ~"Tell me about these rats you catch."~ */ GOTO 22
  IF ~~ THEN REPLY #12719 /* ~"Nothing. Let me ask you about nothing else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12720 /* ~"Never mind. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #12582 /* ~"Sure as I'm standin' here before ye, they do! If I ran across any more than two score of 'em, I'd flee for me case like *that*..." He snaps, to emphasize the point. "...I would! Ye get that many of 'em in a pack, why... why, they gets smart as a man, they do!"~ */
  IF ~~ THEN REPLY #12721 /* ~"Go on..."~ */ GOTO 25
  IF ~~ THEN REPLY #12722 /* ~"Interesting. Let me ask about something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12723 /* ~"I see... that's all I need right now. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12583 /* ~"Here's my best advice for ye, cutter... if ye're bent on catchin' brain vermin, stick to small packs. A dozen or so, at most. But I'll tell ye..." He steps close, his breath fetid in your face, and speaks in a hushed tone: "Ye run into more than that... more than a couple dozen... ye run like ye're in the shadow of the Lady!" He backs away from you again.~ */
  IF ~~ THEN REPLY #12724 /* ~"Why? What is there to fear?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #12725 /* ~"The Lady?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #12726 /* ~"I'll be wary of them, then. I had another question..."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12727 /* ~"I'll take that to mind. Farewell."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12584 /* ~"Sorcery, cutter... sorcery! Ye gets enough of those lil' fiends in a space, they gain all sorts a' odd powers! Make a basher's brain pour out 'is ears, they will! Downright frightenin'... it's just wrong, I tell ye. That's why Sigil's so eager to be rid of 'em... the bounty, an' all."~ */
  IF ~~ THEN REPLY #12728 /* ~"Sigil?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12729 /* ~"Bounty? Someone pays for rat's tails?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #12730 /* ~"I understand. Let me ask you something..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12731 /* ~"I see. That is all I wanted to know for now. Farewell."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 27 // from: 15.4
  SAY #12585 /* ~"Sigil, ye mean? Wot wouldst ye be wantin' to know about the old Cage, cutter?"~ */
  IF ~~ THEN REPLY #12732 /* ~"Why do you call it the Cage?"~ */ GOTO 29
  IF ~~ THEN REPLY #12733 /* ~"Where is this place, exactly?"~ */ GOTO 42
  IF ~~ THEN REPLY #12734 /* ~"Nothing, actually. But I had other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12735 /* ~"Nothing... never mind. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 28 // from: 15.5 19.1 26.0
  SAY #12586 /* ~"Aye, Sigil... the Cage... wot were ye lookin' to know, cutter?"~ */
  IF ~~ THEN REPLY #12736 /* ~"Why do you call it the Cage?"~ */ GOTO 29
  IF ~~ THEN REPLY #12737 /* ~"Where is this place, exactly?"~ */ GOTO 42
  IF ~~ THEN REPLY #12738 /* ~"Nothing, actually. But I had other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12739 /* ~"Nothing... never mind. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #12587 /* ~He shakes his head and laughs, causing the dead vermin on his rat-pole to wiggle about. "Ye see, cutter, it's on account a' all the doors. Some folk call Sigil the 'City of Doors'... magical doors, they are, an' everywhere, too... they lead to anywhere. An' I mean *anywhere!* But 'ere's the trick of it all... they're all locked! So it's more a Cage than anythin' else... ye can only come an' go if ye have the right key."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12740 /* ~"Tell me about these doors and keys."~ */ GOTO 30
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12741 /* ~"Tell me about these doors and keys."~ */ GOTO 31
  IF ~~ THEN REPLY #12742 /* ~"I see. Let me ask you another question..."~ */ GOTO 15
  IF ~~ THEN REPLY #12743 /* ~"That's all I wanted to know for now. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #12588 /* ~"Heh-hooo! Ye wants all sorts a' chant, ye do! Well, I'll give ye the short of it all: the Cage is full a' doors. These doors are everywhere, all throughout the city a' Sigil... but ye can't see 'em, not unless ye have the right key. Each door has its own key, an' each key is different. One key might be a real key, brass an' all, right? But another could be... say... a cooked rat! Or a lil' jig ye does in front a' the door. Once ye have the right key, ye step on through an' go to wherever the door takes ye."~ */
  IF ~~ THEN REPLY #12744 /* ~"How would you know where a door leads?"~ */ GOTO 33
  IF ~~ THEN REPLY #12745 /* ~"How do you find out what key opens what door?"~ */ GOTO 34
  IF ~~ THEN REPLY #12746 /* ~"Interesting. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12747 /* ~"Thanks for the information. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #12589 /* ~The rat-catcher peers quizzically at Morte, who floats beside you. "A cutter'd think ye'd just ask yer mimir for dark like that, he would..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 155
END

IF ~~ THEN BEGIN 32 // from:
  SAY #12590 /* ~The rat-catcher, staring at you both in confusion and scratching his head, suddenly realizes he's the focus of attention once more. He shakes off the puzzled expression and recomposes himself.~ */
  IF ~~ THEN REPLY #12748 /* ~Let him speak.~ */ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 30.0 34.0
  SAY #12591 /* ~He frowns, mulling the answer over in his head. "Chances are, if ye knew the key, ye'd know where the door leads already. If ye opened one accidentally, say, ye'd just 'ave to be careful, ye would. Ye could try stickin' yer head in an' takin' a peek... but some doors'll just suck ye right in! Ye could end up an all manner a' foul places, cutter, mark my words."~ */
  IF ~~ THEN REPLY #12749 /* ~"How do you know what key opens what door?"~ */ GOTO 34
  IF ~~ THEN REPLY #12750 /* ~"Interesting. Let me ask you about something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12751 /* ~"I understand. Thanks for your answers - farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 34 // from: 30.1 33.0
  SAY #12592 /* ~He shrugs, bobbing the rat-pole and setting the cooked vermin jangling about once more. "Ye'd just 'ave to ask the right people. People who know the dark about that sort a' thing, I suppose. See, some doors stay still, an' some move... it'd drive a blood barmy tryin' to keep track of 'em all. I don't use the doors much, myself, so I won't be a' much help to ye."~ */
  IF ~~ THEN REPLY #12752 /* ~"How would you know where a door leads?"~ */ GOTO 33
  IF ~~ THEN REPLY #12753 /* ~"Interesting. Let me ask you about something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12754 /* ~"I understand. Thanks for your answers - farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 35 // from: 15.6
  SAY #12593 /* ~He seems puzzled for a moment. "Wot, the Hive, 'ere? Wot were ye lookin' to find out, cutter?"~ */
  IF ~~ THEN REPLY #12755 /* ~"Do you know why it's called the Hive?"~ */ GOTO 37
  IF ~~ THEN REPLY #12756 /* ~"What is of interest here?"~ */ GOTO 39
  IF ~~ THEN REPLY #12757 /* ~"Nothing, never mind. I have something else to ask..."~ */ GOTO 15
  IF ~~ THEN REPLY #12758 /* ~"Never mind - that's all. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 36 // from: 15.7 16.0
  SAY #12594 /* ~"My very own 'ome an' place a' business! Wot were ye lookin' to find out, cutter?"~ */
  IF ~~ THEN REPLY #12759 /* ~"Do you know why it's called the Hive?"~ */ GOTO 37
  IF ~~ THEN REPLY #12760 /* ~"What's of interest here?"~ */ GOTO 39
  IF ~~ THEN REPLY #12761 /* ~"Nothing, never mind. I have something else to ask..."~ */ GOTO 15
  IF ~~ THEN REPLY #12762 /* ~"Never mind - that's all. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #12595 /* ~"Hrm..." the rat-catcher scratches at his chin, his fingers leaving oily smudges behind. "Number a' stories about that, there are... as I understand it, there's a cluster a' buildin's somewhere, a tangled mess a' shacks an' ruins, that serves as a gatherin' ground a' sorts. It was called the 'Ive, an' so that's where these slums... this 'ole ward... takes their name from."~ */
  IF ~~ THEN REPLY #12763 /* ~"A gathering ground? For whom?"~ */ GOTO 38
  IF ~~ THEN REPLY #12764 /* ~"I see. What's of interest here?"~ */ GOTO 39
  IF ~~ THEN REPLY #12765 /* ~"Hmmm. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12766 /* ~"Thanks for the information. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #12596 /* ~The man's friendly demeanor turns into a scowl: "Troublemakers, cutter. Even if ye could find the place, I'd recommend ye stay away from there, I would. That's all I'll say about it." He wipes his nose with a sense of finality, the scowl now gone.~ */
  IF ~~ THEN REPLY #12767 /* ~"I understand. What's of interest around here?"~ */ GOTO 39
  IF ~~ THEN REPLY #12768 /* ~"I see. Let me ask you about something else, then..."~ */ GOTO 15
  IF ~~ THEN REPLY #12769 /* ~"Very well. Farewell, then."~ */ GOTO 59
END

IF ~~ THEN BEGIN 39 // from: 35.1 36.1 37.1 38.0
  SAY #12597 /* ~"I'm not sure wot ye're interested in, cutter. Lemme know, an' mayhap old Creeden can point ye in the right direction."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12770 /* ~"I'm looking for a good time."~ */ EXTERN ~DMORTE~ 159
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12771 /* ~"I'm looking for a good time."~ */ GOTO 40
  IF ~~ THEN REPLY #12772 /* ~"I'm looking for work."~ */ GOTO 47
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12773 /* ~"I'm searching for a man named Pharod."~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12774 /* ~"I am looking for a journal. Have you seen one?"~ */ GOTO 54
  IF ~~ THEN REPLY #12775 /* ~"Forget it. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12776 /* ~"Never mind. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #12598 /* ~"Couple a' the less dangerous places to get bubbed up... the Gathering Dust bar, an' the Smolderin' Corpse. Couldn't really recommend anywhere else to ye, cutter."~ */
  IF ~~ THEN REPLY #12777 /* ~"Could you show me where these places are?"~ */ GOTO 55
  IF ~~ THEN REPLY #12778 /* ~"Dangerous?"~ */ GOTO 41
  IF ~~ THEN REPLY #12779 /* ~"Thanks. I had another question."~ */ GOTO 15
  IF ~~ THEN REPLY #12780 /* ~"Perhaps I'll stop by one those places. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 41 // from: 40.1 55.0
  SAY #12599 /* ~He thinks for a moment before giving his answer. "Well, cutter, ye see... things aren't so good 'ere. Life is 'ard, it is. It's a desperate place, full a' desperate people. I'll just say that some folk'll do wotever it takes to get by, they will, without much regard to the berks around 'em. Easy to get lost in the 'Ive, it is."~ */
  IF ~~ THEN REPLY #12781 /* ~"You seem friendly enough, though..."~ */ GOTO 49
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12782 /* ~"Lost?"~ */ EXTERN ~DMORTE~ 160
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12783 /* ~"Lost?"~ */ GOTO 56
  IF ~~ THEN REPLY #12784 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12785 /* ~"Thanks for the information. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 42 // from: 27.1 28.1
  SAY #12600 /* ~"Heh... where isn't it, cutter? Since Sigil touches everywhere... an' I mean that, I do... there's really no place it ain't. Not sure if it really does exist somewhere in the typical sense a' the word... in one place, I mean. Most bloods'll tell ye it lies in the Outlands, though."~ */
  IF ~~ THEN REPLY #12786 /* ~"The Outlands?"~ */ GOTO 43
  IF ~~ THEN REPLY #12787 /* ~"Strange. Let me ask you about something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12788 /* ~"I think I understand. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #12601 /* ~"Aye, cutter, that's right. It's the so-called 'Center a' the Planes', where Sigil lies. 'Ere's my trouble with that, now: if ye're in Sigil, ye can't get out without usin' a magical door. There's no 'normal' way to get outta the place and into the Outlands."~ */
  IF ~~ THEN REPLY #12789 /* ~"Go on..."~ */ GOTO 44
  IF ~~ THEN REPLY #12790 /* ~"Doors?"~ */ GOTO 46
  IF ~~ THEN REPLY #12791 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12792 /* ~"I'll hear the rest another time, perhaps. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 44 // from: 43.0 46.0
  SAY #12602 /* ~"Right. An' if ye're outside a' Sigil... in the Outlands, now... ye can't walk into Sigil. There's just this endless spire a' rock, pokin' up through the clouds from the center a' the Outlands, that Sigil's supposed to spin around on top of!"~ */
  IF ~~ THEN REPLY #12793 /* ~"Yes... continue..."~ */ GOTO 45
  IF ~~ THEN REPLY #12794 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12795 /* ~"I'll hear the rest another time, perhaps. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #12603 /* ~He nods. "Now tell me, cutter: if ye can't just walk outta Sigil into the Outlands, or outta the Outlands and into Sigil, who's to say it physically exists anywhere, really?" He nods sagely, pleased with his little quandary. "I think Sigil's spread out across all the planes, both everywhere an' nowhere at once."~ */
  IF ~~ THEN REPLY #12796 /* ~"Perhaps. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12797 /* ~"Interesting theory. I'll think about it. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY #12604 /* ~"Aye, cutter, doors. I'll give ye the short of it: the Cage is full a' doors. These doors are everywhere, all throughout the city a' Sigil... but ye can't see 'em, not unless ye have the right key. Each door has its own key, an' each key is different. Once ye have the right key, ye step on through an' go to wherever the door takes ye."~ */
  IF ~~ THEN REPLY #12798 /* ~"All right, go on."~ */ GOTO 44
  IF ~~ THEN REPLY #12799 /* ~"Before you go on, let me ask you something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12800 /* ~"I'll hear the rest another time, perhaps. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 47 // from: 39.2
  SAY #12605 /* ~"Not much work in the 'Ive, really... most folks just busy themselves with gettin' food an' stayin' alive. Ye could gather deaders, like the Collectors... or ye could 'unt brain vermin for a bounty."~ */
  IF ~~ THEN REPLY #12801 /* ~"Collectors?"~ */ GOTO 48
  IF ~~ THEN REPLY #12802 /* ~"People pay for dead rats?"~ */ GOTO 18
  IF ~~ THEN REPLY #12803 /* ~"Brain vermin?"~ */ GOTO 22
  IF ~~ THEN REPLY #12804 /* ~"I see. I had a question about something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12805 /* ~"Very well. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 48 // from: 47.0 52.0 58.0
  SAY #12606 /* ~He nods. "A berk can gather corpses an' haul 'em to the Mortuary; the Dustmen'll pay 'em a copper a deader, I believe. Collectors do this for a livin', usually lootin' the newly-dead as well as sellin' their corpses. I hear..." He lowers his voice, and scans his surroundings quickly. "...that some a' them 'elp a berk get lost, if ye know wot I means. Wicked folk, they are."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12806 /* ~"Lost?"~ */ EXTERN ~DMORTE~ 161
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12807 /* ~"Lost?"~ */ GOTO 57
  IF ~~ THEN REPLY #12808 /* ~"What did you say about people paying for dead rats?"~ */ GOTO 18
  IF ~~ THEN REPLY #12809 /* ~"Interesting. I had a question about something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12810 /* ~"Very well. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 49 // from: 21.0 41.0 56.0
  SAY #12607 /* ~"Well, cutter, I try. Result a' my business, I thinks... most folks around 'ere are a peery an' downright unfriendly lot, but I want every cutter to know that Creeden's always got a warm smile an' a pipin' 'ot, fresh-cooked ratsie for 'em!" He winks at you.~ */
  IF ~~ THEN REPLY #12811 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12812 /* ~"Understandable. Farewell, Creeden."~ */ GOTO 59
END

IF ~~ THEN BEGIN 50 // from: 15.8 25.1
  SAY #12608 /* ~"Aye, the Mistress a' Sigil. I don't talk about the Lady, cutter... an' ye shouldn't go askin' about 'er, neither. It'll bring ill luck on ye, it will." He makes a semi-circular sign over his chest.~ */
  IF ~~ THEN REPLY #12813 /* ~"Let me ask you about something else, then."~ */ GOTO 15
  IF ~~ THEN REPLY #12814 /* ~"I'll take my leave, then. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 15.9 39.3
  SAY #12609 /* ~He looks a bit surprised. "Pharod? Why'd a cutter be lookin' for a man like that?"~ */
  IF ~~ THEN REPLY #12815 /* ~"It's a long story - I just need to find him."~ */ GOTO 52
  IF ~~ THEN REPLY #12816 /* ~"It is no concern of yours, rat-catcher."~ */ GOTO 53
  IF ~~ THEN REPLY #12817 /* ~"Forget I asked. Answer me something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12818 /* ~"Forget it - never mind. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 51.0 53.0
  SAY #12610 /* ~"He's the head of a pack a' Collectors, he is... moves about all the time, probably to avoid trouble. Calls someplace in Ragpicker's Square 'is case, most likely. 'E's a right crafty fellow, the Pharod. A cutter'd best watch 'imself around that fellow." ~ */
  IF ~~ THEN REPLY #12819 /* ~"Collectors?"~ */ GOTO 48
  IF ~~ THEN REPLY #12820 /* ~"Where is this 'Ragpicker's Square'?"~ */ GOTO 58
  IF ~~ THEN REPLY #12821 /* ~"All right. I have more questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12822 /* ~"Thanks for the information. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #12611 /* ~Creeden frowns. "Well then, cutter, it's no concern a' mine where a man like that'd be."~ */
  IF ~~ THEN REPLY #12823 /* ~"It's important that I find him... I apologize for my harsh words. Could you help me?"~ */ GOTO 52
  IF ~~ THEN REPLY #12824 /* ~"Fine, then. Maybe you can answer me something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12825 /* ~"So be it. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 54 // from: 15.10 39.4
  SAY #12612 /* ~"Sorry, cutter - can't say that I've seen one a' those about."~ */
  IF ~~ THEN REPLY #12826 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12827 /* ~"I'll have to keep looking, then. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 55 // from: 40.0
  SAY #12613 /* ~"Surely, cutter. The Gatherin' Dust Bar is just across from the Mortuary, an' the Smolderin' Corpse is east a' here."~ */
  IF ~~ THEN REPLY #12828 /* ~"Thanks. You had said something about somewhere being dangerous?"~ */ GOTO 41
  IF ~~ THEN REPLY #12829 /* ~"My thanks. I had another question, though..."~ */ GOTO 15
  IF ~~ THEN REPLY #12830 /* ~"Perhaps I'll stop by one those places. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 41.2
  SAY #12614 /* ~"Aye, cutter... lost. In the dead-book."~ */
  IF ~~ THEN REPLY #12831 /* ~"I see... but you seem friendly enough, though..."~ */ GOTO 49
  IF ~~ THEN REPLY #12832 /* ~"I understand. Another question..."~ */ GOTO 15
  IF ~~ THEN REPLY #12833 /* ~"I see. That's all I needed to know. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY #12615 /* ~"That's right, cutter... lost. In the dead-book."~ */
  IF ~~ THEN REPLY #12834 /* ~"I see. What was it you were saying about people paying for dead rats?"~ */ GOTO 18
  IF ~~ THEN REPLY #12835 /* ~"I understand. I had a question about something else..."~ */ GOTO 15
  IF ~~ THEN REPLY #12836 /* ~"Very well. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 52.1 62.0
  SAY #12616 /* ~"I'll show ye, cutter - just 'and me yer map." The man points it out for you, leaving a large, greasy fingerprint in the process.~ */
  IF ~~ THEN REPLY #12837 /* ~"Thanks. You had mentioned Collectors?"~ */ GOTO 48
  IF ~~ THEN REPLY #12838 /* ~"My thanks. I have more questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #12839 /* ~"Thanks for the information. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 3.4 15.12 16.2 17.2 18.3 19.3 20.1 21.2 22.2 23.4 24.2 25.3 26.3 27.3 28.3 29.3 30.3 33.2 34.2 35.3 36.3 37.3 38.2 39.6 40.3 41.4 42.2 43.3 44.2 45.1 46.2 47.4 48.4 49.1 50.1 51.3 52.3 53.2 54.1 55.2 56.2 57.2 58.2 62.2 63.1
  SAY #12617 /* ~He touches your arm: "I see ye're leavin', cutter, but a'fore ye go, wouldst ye like a nice, deee-liscious ratsie? One for the road, ye might say?"~ */
  IF ~~ THEN REPLY #12840 /* ~"Why not..."~ */ GOTO 5
  IF ~~ THEN REPLY #12841 /* ~"I'd sooner eat my own tongue."~ */ GOTO 4
  IF ~~ THEN REPLY #12842 /* ~"No thanks. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",2)
~ THEN BEGIN 60 // from:
  SAY #12618 /* ~"Oye there, cutter; well met again. Have ye changed yer mind? Come back for one a' Creeden's deeee-liscious ratsies?" He jangles his rat-pole enticingly.~ */
  IF ~~ THEN REPLY #12843 /* ~"Why not... what kinds do you have?"~ */ GOTO 5
  IF ~~ THEN REPLY #12844 /* ~"I'd sooner eat my own tongue."~ */ GOTO 4
  IF ~~ THEN REPLY #12845 /* ~"No, not today. I had some questions, however..."~ */ GOTO 15
  IF ~~ THEN REPLY #12846 /* ~"No thanks. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~  Global("Creeden","AR0300",3)
~ THEN BEGIN 61 // from:
  SAY #12619 /* ~"Oye there, cutter; well met again. Could I get ye to consider tryin' one a' me deeee-liscious ratsies again? I know ye didn't enjoy a'fore, but mayhap Creeden's got another flavor more to yer likin'..."~ */
  IF ~~ THEN REPLY #12847 /* ~"Why not... what kinds do you have?"~ */ GOTO 5
  IF ~~ THEN REPLY #12848 /* ~"I just don't care for them, rat-catcher."~ */ GOTO 14
  IF ~~ THEN REPLY #12849 /* ~"No, not today. I had some questions, however..."~ */ GOTO 15
  IF ~~ THEN REPLY #12850 /* ~"No thanks. Farewell."~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 23.1
  SAY #12620 /* ~"That's not as easy to answer as it once was, cutter... ye see, the buggers 'ave been gettin' scarce these days. I used to trap 'em easy in the darker streets an' cellars, but I may 'ave 'unted 'em a tad too much. Ye may wants to try Ragpicker's Square; all them trash piles make a good place for rats to run around."~ */
  IF ~~ THEN REPLY #12851 /* ~"Where is this 'Ragpicker's Square'?"~ */ GOTO 58
  IF ~~ THEN REPLY #12852 /* ~"Thanks. I had another question..."~ */ GOTO 15
  IF ~~ THEN REPLY #12853 /* ~"That is all I wished to know. Farewell."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 15.0
  SAY #48396 /* ~He thinks for a moment. "Aye, I know wot ye're speakin' of. There was a lass, name o' Nalls, who I saw walk through there, once, while I was lookin' fer rats. Don't know how she did it, though. Ye can prob'ly find her northeast a' here, rootin' around a pile o' lumber for nails an' the like."~ */
  IF ~~ THEN REPLY #48397 /* ~"Thanks. I had another question..."~ */ GOTO 15
  IF ~~ THEN REPLY #48398 /* ~"That is all I wished to know. Farewell."~ */ GOTO 59
END
