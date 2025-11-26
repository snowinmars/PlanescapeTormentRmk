// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLAZLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLAZLO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3026 /* ~You see a young boy with pale, yellow skin. His clothes are dirty and in need of mending. Currently he is tending a furnace.~ */
  IF ~~ THEN REPLY #3027 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36385 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36348 /* ~He turns and gives a half-smile as he sets down his work. "Hail... do ya need some help?"~ */
  IF ~~ THEN REPLY #36386 /* ~"Yes, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36387 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.3 7.2 8.2 9.2 10.1 11.2 12.1 13.1 14.1 15.1 16.1 18.1 19.0 22.0 24.0 25.2 26.1 27.2 28.1 29.1 30.1 32.1 33.0 34.0
  SAY #36349 /* ~"Aye, aye, I'd be pleased ta help ya if I could..." The boy looks grateful not to be toiling over the furnace. "What is it I can answer fer ye?"~ */
  IF ~~ THEN REPLY #36388 /* ~"What is this place?"~ */ GOTO 3
  IF ~~ THEN REPLY #36389 /* ~"Can you tell me about this ward?"~ */ GOTO 10
  IF ~~ THEN REPLY #36391 /* ~"What can you tell me about the city of Sigil?"~ */ GOTO 20
  IF ~~ THEN REPLY #36392 /* ~"Why does everyone seem to have yellow skin around here?"~ */ GOTO 23
  IF ~~ THEN REPLY #36393 /* ~"Is there anything worth seeing around here?"~ */ GOTO 25
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36394 /* ~"I'm missing a skull... know anyone who'd want something like that?"~ */ GOTO 31
  IF ~~ THEN REPLY #36395 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36350 /* ~"This place?" He glances around. "It's the Open-Air Market. Lotta buyers and sellers come here ta set up their kip fer the day. I been here fer a good time, I been workin' here fer a while under the eye of me Da." He looks a little distant. "One day I could be runnin' his stall, I could."~ */
  IF ~~ THEN REPLY #36396 /* ~"What is it that you do here?"~ */ GOTO 4
  IF ~~ THEN REPLY #36398 /* ~"I have some questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36351 /* ~He points proudly at the furnace. "The furnace, it's used ta..." He shrugs his shoulders. "I dunno what it's used fer, but my Da says it's important ta keep it stoked and burnin' right." He wipes sweat from his brow and glances about.~ */
  IF ~~ THEN REPLY #36399 /* ~"Is your father one of the merchants here?"~ */ GOTO 5
  IF ~~ THEN REPLY #36400 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36401 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36352 /* ~He nods. "Anze is his name, that's my Da's stall over there." He gestures at a stall to the right of the furnace. "If he don't have what ya need, he may be able ta point ya to it."~ */
  IF ~~ THEN REPLY #36402 /* ~"What kinds of goods are available?"~ */ GOTO 6
  IF ~~ THEN REPLY #61999 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #62001 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36353 /* ~He thinks for a bit. "There's many things ta be had, food, drink, magic, weapons... are ya lookin' ta buy some supplies maybe?"~ */
  IF ~~ THEN REPLY #36411 /* ~"Where can I buy some magic items?"~ */ GOTO 7
  IF ~~ THEN REPLY #36412 /* ~"Where can I buy some weapons?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36413 /* ~"Where can I buy a coffin pillow?"~ */ GOTO 9
  IF ~~ THEN REPLY #36414 /* ~"I have some other questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #36415 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0 9.0
  SAY #36354 /* ~"Aye, magic can be had." He looks around the area, then points toward the far counter. "That's Aalek's stall o'er there an he might have some things."~ */
  IF ~~ THEN REPLY #36416 /* ~"Where can I buy some weapons?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36417 /* ~"Where can I buy a coffin pillow?"~ */ GOTO 9
  IF ~~ THEN REPLY #36418 /* ~"I have some other questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #36419 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0 9.1
  SAY #36355 /* ~"My Da can help ya, tha's his stall over there." He points to a stall just to the right of the furnace. "His name's Anze."~ */
  IF ~~ THEN REPLY #36420 /* ~"Where can I buy some magic items?"~ */ GOTO 7
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36421 /* ~"Where can I buy a coffin pillow?"~ */ GOTO 9
  IF ~~ THEN REPLY #36422 /* ~"I have some other questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #36423 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.1 8.1
  SAY #36356 /* ~He gives you a strange look and then shrugs. "Ya be wantin' ta go ta Hamrys then. I think his shop is south an east of here."~ */
  IF ~~ THEN REPLY #36424 /* ~"Where can I buy magic items?"~ */ GOTO 7
  IF ~~ THEN REPLY #36425 /* ~"Where can I buy weapons?"~ */ GOTO 8
  IF ~~ THEN REPLY #36426 /* ~"I have some other questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #36427 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #36357 /* ~He nods. "Oh, aye, this here's the Lower Ward. Common folk live here, like me an me Da." His eyes widen a bit and he looks excited. "Do ya know why it's called the Lower Ward?" ~ */
  IF ~~ THEN REPLY #36428 /* ~"No, why is it called the Lower Ward?"~ */ GOTO 11
  IF ~~ THEN REPLY #36429 /* ~"I don't care why. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36430 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36358 /* ~"Well, as it's reckoned, the ward's got a mess of portals ta the Lower Planes all riddled through it like cheese, so it does, so I s'pose that that's why the name stuck." He smiles proudly.~ */
  IF ~~ THEN REPLY #36431 /* ~"Why are there so many Lower Plane portals here?"~ */ GOTO 12
  IF ~~ THEN REPLY #36432 /* ~"Do any creatures come out of these portals?"~ */ GOTO 13
  IF ~~ THEN REPLY #36433 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #62003 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36359 /* ~He shrugs. "It's a mystery ta me as it is ta you, cutter. Not sure if there is a reason fer the Portals as much as just circumstances. Could be the Lady's will, could just be chance, s'pose." He shrugs again.~ */
  IF ~~ THEN REPLY #62005 /* ~"Do any creatures ever come out of these portals?"~ */ GOTO 13
  IF ~~ THEN REPLY #62007 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #62009 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0
  SAY #36360 /* ~His eyes grow a little wider. "Aye, they do. Most of 'em jest stoppin' through..." He swallows nervously and looks worried.~ */
  IF ~~ THEN REPLY #36435 /* ~"You look nervous, you've seen this yourself?"~ */ GOTO 14
  IF ~~ THEN REPLY #62013 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #62014 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36361 /* ~"Aye, I've seen it..." He pauses and swallows again. "T'was just last week or so, I saw a couple abishai come through a portal. They talked a good bit an' then one of em went back through. The one tha' stayed is still there..." He frowns.~ */
  IF ~~ THEN REPLY #62097 /* ~"What were they talking about?"~ */ GOTO 15
  IF ~~ THEN REPLY #36437 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #62098 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36362 /* ~"I dunno for sure, ta me it was just hissin' an' such, but I think they was talkin' about the Tower." He shrugs.~ */
  IF ~~ THEN REPLY #62099 /* ~"The Tower?"~ */ JOURNAL #36020 /* ~The boy, Lazlo, says that he knows of a portal near the siege tower. It's located on a drawbridge or a device resembling one, he wasn't too clear in his description. I wonder where the portal leads?~ */ GOTO 16
  IF ~~ THEN REPLY #62100 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #62101 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36363 /* ~"Aye, tha's one of the strangest sights ta be in the Ward. No one really knows how long that scarred old tower has been around... ye can't get into it, y'know. Bolted up tighter than a chastity belt. I'd be curious ta know what's in there..." He thinks for a moment. "The abishai was gesturin' at the Tower an' the portal. They was lookin' for the key, I bet."~ */
  IF ~~ THEN REPLY #62102 /* ~"What key?"~ */ GOTO 17
  IF ~~ THEN REPLY #36440 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36441 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #36364 /* ~"The key ta the portal tha' leads ta the Tower. Every portal has a key tha opens it ta somewhere. The key can be a gesture, an item, or even a thought... many 'ave tried hard ta get inta the Tower. No matter how hard ya try, ya fail."~ */
  IF ~~ THEN REPLY #62103 /* ~"Maybe the secret to getting in is to not want to get in..."~ */ DO ~SetGlobal("Know_Tower_Key","GLOBAL",1)
~ JOURNAL #66276 /* ~There is a sealed siege tower here in the Lower Ward that, so I'm told, a lot of people would like to gain entry to. Nobody has been able to gain access no matter how hard they've tried. It may be a strange idea on my part, but maybe the secret to getting in is to not want to get in...~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36365 /* ~He shrugs. "I dunno, cutter. May be..."~ */
  IF ~~ THEN REPLY #62104 /* ~"Tell me where this portal is located."~ */ JOURNAL #66280 /* ~The boy, Lazlo, says there is a portal located on a drawbridge-like device, east of the market. He thinks the portal may lead into the siege tower. Maybe I should check this out.~ */ GOTO 19
  IF ~~ THEN REPLY #36444 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36445 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #36366 /* ~He stops to think for a moment. "There's a drawbridge like contraption back o' the Tower, east o' the market. Tha's where it is..." He gets a far away look. ~ */
  IF ~~ THEN REPLY #36446 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36447 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36367 /* ~"The center of the planes, the city where almost everythin' intersects. Never borin', really. The Lady of Pain is the law, and the rest of us mostly try and bang out a livin' under her shadow." He barks a laugh, then coughs.~ */
  IF ~~ THEN REPLY #36448 /* ~"What can you tell me about the Lady of Pain?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #36449 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36368 /* ~"Don't know much about her... she keeps the powers out of Sigil, keeps the fiends out, and talks and deals with nobody... 'cept maybe the dabus. She'll pen ya in the dead-book damned quick if ye worship her or try and hurt Sigil. Her face n' the blades surroundin' it would be the last ye'd see..."~ */
  IF ~  Global("Evil_Rchasr_1","GLOBAL",0)
~ THEN REPLY #36450 /* ~"Interesting..."~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Evil_Rchasr_1","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Evil_Rchasr_1","GLOBAL",1)
~ THEN REPLY #68424 /* ~"Interesting..."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #36369 /* ~At the mention of a face surrounded by blades a memory forces itself into your consciousness. For a moment you are standing in a darkened alley, breathing heavily. Approaching you in the darkness is an uncannily beautiful woman, her face shrouded in blades and with cold eyes... suddenly, the memory fades and you are talking to the lad once more. ~ */
  IF ~~ THEN REPLY #36451 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36452 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.3
  SAY #36370 /* ~"It's the sickness, it is. Caused by the bad air. What with the smoke an' all the fact'ry smogs, it can get pretty hard ta breathe easily 'round here." He shrugs. "Somedays, it's not good ta be out when the smogs linger too long... they can scald your eyes right out of the skull, so it's said."~ */
  IF ~~ THEN REPLY #36453 /* ~"Can't something be done about it?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36371 /* ~"I dunno. At times, winds come from the Spire and blow the city clear o' smog, but that's not as often as would be liked." He blinks, glances around, then shrugs. "Lady's will, I guess. Don't make much sense, but then little does if ya look at it long enough."~ */
  IF ~~ THEN REPLY #36454 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36455 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.4
  SAY #36372 /* ~"Not much ta see... the Great Foundry's impressive, though, ya might check that out... home of the Believers, ya know." He stops to think. "Most of the more amazin' sights are in some of the Upper Wards. It might be better ta look around there... I hear there's a brothel there, the Festhall, and some other places that are more interestin'. I don't know fer sure, I been here all my life."~ */
  IF ~~ THEN REPLY #36456 /* ~"Tell me about the Foundry."~ */ GOTO 26
  IF ~~ THEN REPLY #36457 /* ~"Tell me about the Believers."~ */ GOTO 27
  IF ~~ THEN REPLY #36458 /* ~"I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36459 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0 30.0
  SAY #36373 /* ~"Centa o' the Ward, pretty much. An impressive structure, ta be sure. Ya can't miss it, just head north. You'll know it by the big gates." He marks it on your map.~ */
  IF ~~ THEN REPLY #36460 /* ~"Tell me about the Believers."~ */ GOTO 27
  IF ~~ THEN REPLY #36461 /* ~"I see. I have other questions."~ */ GOTO 2
  IF ~~ THEN REPLY #36462 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #36374 /* ~"They've got a bunch of names: Believers, Godsmen, Believers of the Source... we mostly just call them Godsmen. They have their kip in the Great Foundry, and they seem ta get by pretty well. They're a pleasant bunch. They believe that everybody can be great, as great as the powers even, if ye just strive ta reach it. It might mean ya have ta start life over a bunch of times, but ye'll eventually get there after a time."~ */
  IF ~~ THEN REPLY #36463 /* ~"Tell me about the Foundry."~ */ GOTO 26
  IF ~~ THEN REPLY #36464 /* ~"So they're another faction here. What faction are you?"~ */ GOTO 28
  IF ~~ THEN REPLY #36465 /* ~"Interesting. I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36466 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #36375 /* ~He smiles. "Oh, me... and me Da... are Indeps... we're a faction that's not really a faction... we're a faction that believes that people are free ta do as they will. We're a pretty loose bunch, and we don't take too kindly ta makin' or obeyin' other factions."~ */
  IF ~~ THEN REPLY #36467 /* ~"What is the purpose of all these factions?"~ */ GOTO 29
  IF ~~ THEN REPLY #36468 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36469 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #36376 /* ~He glances at you. "The factions are them's that govern most of Sigil and the day ta day business. There's a bunch: there's the Dead, the Dustmen, that take care of all the dead bodies on the streets, and then there's the Guvners that make the laws, and the Sensates... there's a number of factions. Here in the Lower Ward, we mostly deal with the Believers, the Godsmen." He nods in the distance. "They have their kip in the Great Foundry, and they're a pleasant enough bunch."~ */
  IF ~~ THEN REPLY #36470 /* ~"What can you tell me about these other factions?"~ */ GOTO 30
  IF ~~ THEN REPLY #36471 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36472 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36377 /* ~He shrugs. "Nothin' really. I never cared, bein' an Indep an' all. The faction houses have plenty of people who'll give ya the chant. Go ask em."~ */
  IF ~~ THEN REPLY #36473 /* ~"What can you tell me about this Foundry?"~ */ GOTO 26
  IF ~~ THEN REPLY #36474 /* ~"I see. I have other questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #36475 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5
  SAY #36378 /* ~He becomes rather excited. "Missin' a skull, are ye! I'll bet I know what happened ta it... in the Ward is a fella, a mage or priest ta hear tell, who collects heads and puts them on his shelves like books. They're dead, but his magicks are such he can make them answer questions fer him, even though they're in the dead-book."~ */
  IF ~~ THEN REPLY #36476 /* ~"Where can I find this person?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36379 /* ~He frowns. "Not sure, really. I heard tell he's got his kip in one of the ruined buildin's around here, but I've never been there." He snaps his fingers. "Others might know, though... might ask Sebastion 'bout it."~ */
  IF ~~ THEN REPLY #36477 /* ~"Where can I find Sebastion?"~ */ GOTO 33
  IF ~~ THEN REPLY #36478 /* ~"I see. I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36479 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36380 /* ~He points vaguely toward the west. "Go back ta the square and head a little north an' west. Sebastion sets his kip up at a drawbridge-like contraption."~ */
  IF ~~ THEN REPLY #36480 /* ~"Thank you. I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36481 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 34 // from:
  SAY #36381 /* ~"Well met, again. Do ya have some questions I could mayhap be helpin' ya with?"~ */
  IF ~~ THEN REPLY #36482 /* ~"Yes..."~ */ GOTO 2
  IF ~~ THEN REPLY #36483 /* ~"No, farewell."~ */ EXIT
END
