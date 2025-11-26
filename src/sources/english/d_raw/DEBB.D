// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEBB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DEBB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",0)
Global("Current_Area","GLOBAL",402)
~ THEN BEGIN 0 // from:
  SAY #3011 /* ~You see a slightly stooped old man with a full grey beard and a lion's mane of grey hair. He wears a couple of shoulder guards as armor, and he keeps a helmet nearby. He smokes a pipe and carries a pouch of tobacco around his waist. He looks pretty strong, but he's a little plump and also appears to have some sort of breathing trouble. "Well, now, aren't *you* a sight, lad! Never have I seen so many scars blanketing a fella - like a scar cloak ye're wearing! Where you been - hanging out in a grain thresher?!" He laughs. "Oh, I'm just jesting with ye, lad, no offense meant and I hope no offense taken. I'm Ebb." He extends his hand.~ */
  IF ~~ THEN REPLY #3012 /* ~"Greetings, Ebb."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11001 /* ~Refuse to shake.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11002 /* ~His handshake is firm. "Now, I hereby tender my apologies for the unfair jesting, lad. Hope no hard feelings; can I buy you a tankard or two of something to smooth any ruffled feathers?" ~ */
  IF ~~ THEN REPLY #11003 /* ~"Why not?"~ */ GOTO 3
  IF ~~ THEN REPLY #11004 /* ~"No."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #11005 /* ~He withdraws his hand. "Fair enough, fair enough. I hereby tender my apologies for the unfair jesting, lad. Hope no hard feelings; can I buy you a tankard or two of something to smooth any ruffled feathers?"~ */
  IF ~~ THEN REPLY #11006 /* ~"Why not?"~ */ GOTO 3
  IF ~~ THEN REPLY #11007 /* ~"No."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #11008 /* ~"That's the spirit, lad! Bide a moment." He rises to his feet and heads to the bar. After a moment, he returns to his seat with a pair of tankards. "Here you go, lad. Drink up!" He takes a massive swallow from his own tankard, puffs on his pipe, and says, "What can ol' Ebb do for you on this fine Sigil day?"~ */
  IF ~~ THEN REPLY #11009 /* ~"I had some questions about this place."~ */ GOTO 5
  IF ~~ THEN REPLY #11010 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #11011 /* ~"Fair enough, lad, fair enough." He puffs on his pipe, pauses a moment or two, and says, "So, what can ol' Ebb do for you on this fine Sigil day?"~ */
  IF ~~ THEN REPLY #11012 /* ~"I had some questions about this place."~ */ GOTO 5
  IF ~~ THEN REPLY #11013 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #11014 /* ~"Oh, well I gathered that, jest to look at you. I mean, you don't look like you're from around these parts, lad... you look a little too out of sorts to be a seasoned native!" Ebb chuckles, then takes another drink. "So what can I help you with, lad? You need to know the lay of the land?" Ebb winks.~ */
  IF ~~ THEN REPLY #11015 /* ~"Who are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #11016 /* ~"What are you doing?"~ */ GOTO 18
  IF ~~ THEN REPLY #11017 /* ~"What is this place?"~ */ GOTO 19
  IF ~~ THEN REPLY #11018 /* ~"Yes. Tell me how this city and its environs work."~ */ GOTO 33
  IF ~~ THEN REPLY #11019 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 25.2
  SAY #11020 /* ~"Ebb Creakknees, Third Measure of the Harmonium, now retired and being a tout with one's voice since I don't step as lightly as I might these past two or three decades!" He chuckles. "Now, lad, who be you and what trouble might you be in?"~ */
  IF ~~ THEN REPLY #11021 /* ~"Third Measure of the Harmonium?"~ */ GOTO 7
  IF ~~ THEN REPLY #11022 /* ~"What's a tout?"~ */ GOTO 13
  IF ~~ THEN REPLY #11023 /* ~"What makes you think I'm in trouble?"~ */ GOTO 17
  IF ~~ THEN REPLY #11024 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #11025 /* ~Ebb puffs up slightly in pride and gets a semi-stern look on his face. "Aye, Third Measure of the Harmonium..." He relaxes a little. "Though I haven't served a tour of duty in many a decade. Pushing a quill wasn't quite up my alley after all the fights and skirmishes I been in, so I just bide my time keeping tabs on things down here in the Hive and helping out a little where I can. An' you look like someone who might need a hand... are you in some kind of trouble, lad?"~ */
  IF ~~ THEN REPLY #11026 /* ~"What fights and skirmishes have you been in?"~ */ GOTO 8
  IF ~~ THEN REPLY #11027 /* ~"A few troubles."~ */ GOTO 11
  IF ~~ THEN REPLY #11028 /* ~"A few troubles: I woke up in the Mortuary and seem to have forgotten who I am."~ */ GOTO 12
  IF ~~ THEN REPLY #11029 /* ~"None of your business, really. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11030 /* ~"Not as far as you're concerned. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11031 /* ~Ebb rolls his eyes. "More than I can remember, lad! Well... *almost* more than I can remember, leastwhys. I did an all too-long tour in the Blood War, that infernal muck-up War of Lies on Terras, far too many years in the Black Centuries War..." Ebb begins to tick off the wars on his fingers and counts silently to himself. "...eh, then there was the Three-Planes War, and many others, I even took part in the Harmonium War of Liberation. Oh, towards the end there, I was also in the Sigil City Watch... some could argue that was the most dangerous of them all!" He laughs loudly. The mention of the Blood War feels like a cold dagger slipping into your heart.~ */
  IF ~~ THEN REPLY #11032 /* ~"Tell me more of the Blood War."~ */ GOTO 9
  IF ~~ THEN REPLY #11033 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11034 /* ~"Thanks, Ebb. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11035 /* ~Ebb sighs, oblivious to your reaction. "Aye... the Blood War: The most dangerous family feud this side of the primordial soup. A mean-spirited mob of fiends on one side, a batch of war-monger fiends on the other. It's the war that creation sparked, and they've been digging into each other ever since."~ */
  IF ~~ THEN REPLY #11036 /* ~"Two sets of fiends warring against each other, eh?"~ */ GOTO 10
  IF ~~ THEN REPLY #11037 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11038 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #11039 /* ~"Aye. The tanar'ri, vicious killers who care for none but themselves, and the baatezu war machine, all for law and order under their infernal rules. The whole mess spills out into other planes from time to time, and it's made the multiverse a less-pleasant place to live."~ */
  IF ~~ THEN REPLY #11040 /* ~"I see. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11041 /* ~"I see. Farewell, Ebb."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 17.1
  SAY #11042 /* ~"Oh, now, well, I hope it wasn't nothing too serious, now... but I'll leave that for yourself to say if and when you feel like talking about it. Don't mean to press the point, no... that'll get you in more trouble around here than anything else."~ */
  IF ~~ THEN REPLY #11043 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11044 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2 17.2
  SAY #11045 /* ~"Eh?" Ebb blinks, then frowns. "What was that you said, lad? That you woke up in the Mortuary..." Ebb studies you closely. "Oh now, did they mistake you for dead under all them scars mayhap?" Ebb chuckles. "Can't say I would have been any smarter..." He puffs his pipe. "Them Dusties..." He catches himself. "I mean, them *Dustmen*... Dusties being a rude term to refer to them pale-faced fellas, and I don't mean them too much disrespect... they have all the perceptions and friendliness of a gravestone sometimes, eh? Can't say I couldn't see them screwing that up, no, lad."~ */
  IF ~~ THEN REPLY #11046 /* ~"That's what I've heard. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11047 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11048 /* ~"Well, now, it's a good thing you asked that, because now you've told me that you're green and a tout about's the best person a Clueless could have run into on the streets of Sigil, and I'm jest the man someone like you is in need of." He takes a drink. "A tout's a friendly city guide, shows you what's what, gives you a little jaunt around town... a guide - aye, a guide is the best way to look at it. 'Cept I don't really leave this chair on account of my age, so mostly I suggest directions and places you might want to see in your travels in our fair city. Don't cost you a cent."~ */
  IF ~~ THEN REPLY #11049 /* ~"Why is it free?"~ */ GOTO 14
  IF ~~ THEN REPLY #11050 /* ~"How old are you?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #11051 /* ~"A tout who can't move can't command much of a price, lad. By the powers, 'twould be unfair ta charge for just a bag of words!"~ */
  IF ~~ THEN REPLY #11052 /* ~"How old are you?"~ */ GOTO 15
  IF ~~ THEN REPLY #11053 /* ~"Then I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11054 /* ~"True enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #11055 /* ~"Old enough to know better, lad, and too old to walk much!" He puffs on his pipe. "Let's just say my best years are behind me, and there's only a few irons that keep this heart beating."~ */
  IF ~~ THEN REPLY #11056 /* ~"What irons?"~ */ GOTO 16
  IF ~~ THEN REPLY #11057 /* ~"Fair enough. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11058 /* ~"Fair enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #11059 /* ~"Well, lad, not ta bring down the conversation, but I'm hoping that one day a holy fella will be making his way to the ol' Smoldering Corpse Bar and hopefully he'll shrive me of some of my private sins so I can go on and step off this plane for good."~ */
  IF ~~ THEN REPLY #11060 /* ~"I see. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11061 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.2
  SAY #11062 /* ~"Lad, no one has as many scars as you have and isn't in some sort of trouble, either from himself or from others!" Ebb looks at you in mock reproach. "What do you take old Ebb for? Blind?! Ha! Look, I'm a little weathered around the edges but I've still got some sight and sense! Now, what's dogging your heels to be causing such trouble? Mayhap I can help you, eh?"~ */
  IF ~~ THEN REPLY #11063 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11064 /* ~"A few troubles. That's all."~ */ GOTO 11
  IF ~~ THEN REPLY #11065 /* ~"A few troubles: I woke up in the Mortuary and seem to have forgotten who I am."~ */ GOTO 12
  IF ~~ THEN REPLY #11066 /* ~"Probably not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.1
  SAY #11067 /* ~"'What am I doing?' Peculiar question, lad. What does it look like I'm doing... I'm whittling away my time among pleasant surroundings, nursing a tankard of ale, set with nice pouch of pipeweed, and interesting company. A perfect way to spend one's day, I think! Eh? Eh?" Ebb claps you on the shoulder and laughs.~ */
  IF ~~ THEN REPLY #11068 /* ~"'Eh', indeed. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11069 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2 25.3
  SAY #11070 /* ~"Ye're in the Smoldering Corpse Bar, lad. Not a pretty place as some, but it's got its own homespun kind of charm."~ */
  IF ~~ THEN REPLY #11071 /* ~"Tell me about the patrons here."~ */ GOTO 20
  IF ~~ THEN REPLY #11072 /* ~"Who's the smoldering corpse there?"~ */ GOTO 21
  IF ~~ THEN REPLY #11073 /* ~"What's good to drink here?"~ */ GOTO 22
  IF ~~ THEN REPLY #11074 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11075 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 22.0
  SAY #11076 /* ~"Well, you got O, who claims to be a letter 'stead of a person, some Mercykillers waitin' around for a criminal, pair o' abishai on furlough from the Blood War; a githzerai over there who's been watching you from afar - not too unusual, mind you, they're peery cutters; and Alais down there, a Clueless kid whose britches seem to be jest a bit too tight, if you get my meaning. If you're wanting information on the planes, talk to Candrian Illborne over there - he knows more'n most I know."~ */
  IF ~~ THEN REPLY #11077 /* ~"Who's the smoldering corpse there?"~ */ GOTO 21
  IF ~~ THEN REPLY #11078 /* ~"What's good to drink here?"~ */ GOTO 22
  IF ~~ THEN REPLY #11079 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11080 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 22.1
  SAY #11081 /* ~"Him? Oh, no corpse, lad - no deader him. Near as we can tell, ol' Ignus is still alive inside that little roastspit. Near as we can figure, anyway." Ebb wrinkles his nose. "He can smell damnably awful sometimes, too. Keeps me on the pipe to make sure it don't worm its way into my nose it does." He chuckles.~ */
  IF ~~ THEN REPLY #11082 /* ~"How did he get there?"~ */ GOTO 23
  IF ~~ THEN REPLY #11083 /* ~"I had some other questions..."~ */ GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 19.2 20.1
  SAY #11084 /* ~"Well, not some say I've got Baator-all discrimination when it comes ta drink, but I've got drinks I'm partial to, and some vintages to which I'm not. Actually, one of my favorite little things ta get here is some Arborean fire seeds... you swill them in your mouth, add a little air and some spit and some alcohol, and you can breathe a little fire when you need to. Leastways, that's how it feels."~ */
  IF ~~ THEN REPLY #11085 /* ~"Tell me about the patrons here."~ */ GOTO 20
  IF ~~ THEN REPLY #11086 /* ~"Who's the smoldering corpse there?"~ */ GOTO 21
  IF ~~ THEN REPLY #11087 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11088 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #11089 /* ~Ebb takes a smoke from his pipe for a moment, as if deciding how to phrase his comment. "Well, now lad, Ignus had a smattering of problems and some not-slight wizardly magicks ta boot, and seldom do the two mix well, if you understand me. He liked to..." Ebb puffs on his pipes, and smoke trails up. "...well, he liked ta burn things, and he started torching places and people, and generally making a bunch of trouble."~ */
  IF ~~ THEN REPLY #11090 /* ~"And?"~ */ GOTO 24
  IF ~~ THEN REPLY #11091 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11092 /* ~"Too bad. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11093 /* ~"Well, now most of this was going on in the Hive, and I'll be the first to admit that the Hive is not the first place the Harmonium goes to keep Sigil's law..." Ebb looks a little shame-faced. "A failing on our part, since it may be the place where our presence is most needed. So, by the Lady's reckoning, there was a little streetside justice in the wizardly community... a bunch of tea leaf readers, hedge wizards, and midwife witches got together and managed to weave a spell that was kind of poetic justice." Ebb gestures with his pipe at the figure. "So now he sits there and burns. He's still alive, which I don't think they counted on."~ */
  IF ~~ THEN REPLY #11094 /* ~"Hm. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11095 /* ~"Interesting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 7.3 8.1 9.1 10.0 11.0 12.0 14.1 15.1 16.0 17.0 18.0 19.3 20.2 21.1 22.2 23.1 24.0 26.3 29.1 30.0 31.0 32.1 33.0 34.0 35.3 36.3 37.3 38.1 39.2 40.1 41.3 42.2 44.1 45.1 46.2 47.0 48.0
  SAY #11096 /* ~"Aye, lad? What do you want to know?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11097 /* ~"Do you know someone named Pharod?"~ */ GOTO 26
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11098 /* ~"I am missing a journal."~ */ GOTO 32
  IF ~~ THEN REPLY #11099 /* ~"Who are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #11100 /* ~"What is this place?"~ */ GOTO 19
  IF ~~ THEN REPLY #11101 /* ~"Tell me of Sigil and its environs."~ */ GOTO 33
  IF ~~ THEN REPLY #11102 /* ~"What other places can you recommend?"~ */ GOTO 47
  IF ~~ THEN REPLY #11103 /* ~"Nothing, I suppose. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11104 /* ~"Pharod?" Ebb frowns, takes the pipe from his mouth. "Now, lad, what you be wanting with a berk like Pharod?"~ */
  IF ~~ THEN REPLY #11105 /* ~"I think I used to know him."~ */ GOTO 27
  IF ~~ THEN REPLY #11106 /* ~"I think he stole some of my belongings."~ */ GOTO 28
  IF ~~ THEN REPLY #11107 /* ~"None of your business. What do you know of him?"~ */ GOTO 29
  IF ~~ THEN REPLY #11108 /* ~"Nothing. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11109 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11110 /* ~"Aye, well the more's your misfortune, then. Mayhap forgetting some things is better for you, then." Ebb puffs heavily on his pipe.~ */
  IF ~~ THEN REPLY #11111 /* ~"What do you know of him?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #11112 /* ~"Oh, no doubt, lad, no doubt." Ebb grumbles, chewing on his pipe. "You have to chain up everything around that grasping little spider. He should have been one of the Fated the way anything not chained down slips into his parlor. Don't give him a yard or he'll take a league, eh?"~ */
  IF ~~ THEN REPLY #11113 /* ~"What do you know about him?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.0 28.0 32.0
  SAY #11114 /* ~"Well, now I don't know everything there is to know about ol' Pharod, but I know some of the dark surrounding him. If you're determined to track down that spider and nail him to a wall, then I suppose I could spill some of the chant so you know what you're tangling with." He pauses to tamp his pipe. "Pharod dug his nest deep into Ragpicker's Square not too long ago, got a bunch of Collectors and gangs together and started what one could almost consider a collecting faction... be that as it may be..."~ */
  IF ~~ THEN REPLY #11115 /* ~"Where can I find him?"~ */ GOTO 30
  IF ~~ THEN REPLY #11116 /* ~"I see. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11117 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11118 /* ~"Well, lad, if you're looking for Pharod, which I would say is pretty barmy of you, you're a little off the beaten path. You want to be finding Ragpicker's Square. Chant is that Pharod's set up his kip somewhere in the Square. Even an ol' fella like me who's been around the ring a few times don't know exactly where. I figure that Pharod wants to keep the dark on his location dark. If you're all bound and determined to find Pharod, go to Ragpicker's Square, and try and dig up Pharod's location from some of the locals. Try and be careful about it, since there's plenty in the Square that would make a gut-harp outta you as soon as look atcha."~ */
  IF ~~ THEN REPLY #11120 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11121 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #11122 /* ~NULL NODE~ */
  IF ~~ THEN REPLY #11123 /* ~"Very well. I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11124 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY #11125 /* ~"You're missing a journal? Was there more to the journal than just pages and words? Otherwise, I can't imagine too many bloods who would bother themselves with letters unless it was really hot and spicy. Not much use for books of learning around here. I don't know where you might find such a thing..." Ebb puffs on his pipe, then he snaps his fingers. "But you know, lad, if Pharod is the one who scraped you off the Sigil street, then he might know the dark of where your stuff is... it's most likely in his larder, if you ask me. A dead man is usually in no position to keep his possessions when the Collectors tumble cross his body."~ */
  IF ~~ THEN REPLY #11126 /* ~"Tell me about Pharod."~ */ GOTO 29
  IF ~~ THEN REPLY #11127 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11128 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 5.3 25.4
  SAY #11129 /* ~Ebb laughs loudly. "You don't think small, do ye? If you want to know what's outside the city, go talk to Candrian Illborne over there - he's the traveler of this place. As for the rest of it, well... I can tell you of the Lady, the dabus, keys and portals, the way we keep track of time, the way the city's laid out... What was it y'wanted to know?"~ */
  IF ~~ THEN REPLY #11130 /* ~"Actually, just answer some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11131 /* ~"Tell me of the Lady."~ */ GOTO 35
  IF ~~ THEN REPLY #11132 /* ~"Tell me of the dabus."~ */ GOTO 39
  IF ~~ THEN REPLY #11133 /* ~"Tell me of Sigil's time."~ */ GOTO 40
  IF ~~ THEN REPLY #11134 /* ~"Tell me of the city's layout."~ */ GOTO 41
  IF ~~ THEN REPLY #11135 /* ~"Tell me of keys and portals."~ */ GOTO 43
  IF ~~ THEN REPLY #11136 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2 36.2 37.2 38.0 39.1 40.0 41.2 42.1 44.0 45.0 46.1
  SAY #11137 /* ~"What else did you want to know of the Cage?"~ */
  IF ~~ THEN REPLY #11660 /* ~"Actually, just answer some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11661 /* ~"Tell me of the Lady."~ */ GOTO 35
  IF ~~ THEN REPLY #11662 /* ~"Tell me of the dabus."~ */ GOTO 39
  IF ~~ THEN REPLY #11663 /* ~"Tell me of Sigil's time."~ */ GOTO 40
  IF ~~ THEN REPLY #11664 /* ~"Tell me of the city's layout."~ */ GOTO 41
  IF ~~ THEN REPLY #11665 /* ~"Tell me of keys and portals."~ */ GOTO 43
  IF ~~ THEN REPLY #11666 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.1 39.0
  SAY #11138 /* ~"Well, now, not many know much about her, lad, and I'm figuring even those that know more than a little don't know too much more. She's a mystery, she is, and even should you run across her... powers forbid... she's silent and deadly. She's not evil, far's I can tell, but she keeps the dark about herself and Sigil pretty tight. None's been able to penetrate it, and if they have, they've been mazed."~ */
  IF ~~ THEN REPLY #11139 /* ~"Go on."~ */ GOTO 36
  IF ~~ THEN REPLY #11140 /* ~"Mazed? What do you mean?"~ */ GOTO 38
  IF ~~ THEN REPLY #11141 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11142 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11143 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11144 /* ~"Chances are you won't meet her unless ya do something really bad... Hurting a lot of people, killing a dabus, challenging her rule, worshipping her... She hates that, we figure, or interfering with a dabus' work (which may as well be the Lady's work)... If you're lucky, just the Mercykillers will come for you, but if she comes, you'll be dead as soon as her shadow falls on you."~ */
  IF ~~ THEN REPLY #11145 /* ~"What did you mean when you said 'mazed'?"~ */ GOTO 38
  IF ~~ THEN REPLY #11146 /* ~"Please continue."~ */ GOTO 37
  IF ~~ THEN REPLY #11147 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11148 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11149 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #11150 /* ~"Now, the Lady can do almost anything in Sigil, lad, near as we can figure. Make it bigger or smaller, make new portals, seal off old ones, make sure the Blood War don't break out in the streets, keep folks from teleporting into the city, keeping the powers out."~ */
  IF ~~ THEN REPLY #11151 /* ~"What did you mean when you said 'mazed'?"~ */ GOTO 38
  IF ~~ THEN REPLY #11152 /* ~"Who are the powers?"~ */ GOTO 46
  IF ~~ THEN REPLY #11153 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11154 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11155 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.1 36.0 37.0 46.0
  SAY #11156 /* ~"Aye. Sometimes bloods will be packed off to a place where they can't do no harm. The Lady, see, she'll take a bit of Sigil, and make a little dimensional pocket out of it, a maze. She places those that have crossed her in there and lets 'em rot." Ebb puffs his pipe. "Now... you can't escape getting mazed once the Lady sets her gaze on you, lad. She'll get you eventually, no matter how hard you try and dodge her. You'll be walking down an alley, or about to step through a portal, or take a left turn down a street you've gone manyfold times before, and suddenly you're someplace you don't recognize. Now, mazes aren't escape-proof. There's always a way out of each one... a portal the Lady places there. You just have ta figure out where it is and how to use it."~ */
  IF ~~ THEN REPLY #11157 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11158 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11159 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.2 34.2
  SAY #11160 /* ~"Aye, those funny floating bloods that speak in symbols?" Ebb laughs. "Quite a piece of work, eh? The dabus are kind of the Lady's janitors and workmen, doing exactly what she wants, make sure Sigil's running up to snuff, patching walls, tearing down old buildings, building new ones, setting up portals, sealing off others, and on and on. They're a pretty neutral-faring bunch, and you don't want to interfere with one or kill one, or you'll bring the Lady's wrath down on you right quick."~ */
  IF ~~ THEN REPLY #11161 /* ~"Tell me of the Lady."~ */ GOTO 35
  IF ~~ THEN REPLY #11162 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11163 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11164 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 33.3 34.3
  SAY #11165 /* ~"The way we measure time in Sigil's by the brightness of the sky. See, we haven't got a sun and moon like most worlds - we just got this everlasting haze that brightens and darkens at regular cycles. What most folks call midnight, we call anti-peak. What they call noon, we call peak. See, it's based on the peak and anti-peak of the brightness. So when someone says something about 'five hours past peak,' that's what they mean."~ */
  IF ~~ THEN REPLY #11166 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11167 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11168 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 33.4 34.4
  SAY #11169 /* ~"Whew. Let me wet my tongue." He takes a pull from his tankard. "The city floats above an infinitely tall spire - the Spire. It lies on its side like a discarded wagon wheel, but there's no spokes that connect it to the Spire. It's divided into six wards, each of them with its own function. Right now, you're in the Hive. I think the purpose of the Hive is to be squalor to the rest of the city's grandeur!" He laughs. "Factions - philosophical clubs, or gangs if you prefer - divide up the running of the city between 'em."~ */
  IF ~~ THEN REPLY #11170 /* ~"Were you in a faction?"~ */ GOTO 45
  IF ~~ THEN REPLY #11171 /* ~"Go on."~ */ GOTO 42
  IF ~~ THEN REPLY #11172 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11173 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11174 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #11175 /* ~"The city's called the crossroads of the planes and the City of Doors and the Cage. It's got portals to all o' creation, they say, and all manner of beasties come through here to trade, call kip, or hop from one place to another. Now, that's just the quick version, lad; you'll have to experience the place for yourself."~ */
  IF ~~ THEN REPLY #11176 /* ~"You mentioned something about portals?"~ */ GOTO 43
  IF ~~ THEN REPLY #11177 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11178 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11179 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 33.5 34.5 42.0
  SAY #11180 /* ~"Sigil's called the City of Doors for a reason, lad... there's portals everywhere. Portals are... well, like doors that lead across the multiverse, 'cept they don't look like doors... Instead they can be any bounded space... window, door, pothole, picture frame, barrel hoop, the spaces inside scaffolding, a wardrobe... each could be a portal, waiting for just the right key to open it and take you someplace in the multiverse. Now, keys..."~ */
  IF ~~ THEN REPLY #11181 /* ~"Go on."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11182 /* ~"Aye, each portal has a key you need to open it. Now, while portals can be any bounded space, keys have more variety... They can be anything from a little tune you hum when next to the portal, to dancing a jig, to being in the right mood, to having a piece of the place you want to go in your hand... and on an' on. In my youth, I once convinced a girl that kissing a man beside it... could open a portal to Arcadia. Turned out I was right, and many trips to Arcadia did we have. Many portals probably have never been found. There's some you can uncover just by asking people and getting the right key. Finding out the dark of a portal is the toughest part. But I warn you, lad. Portal-hoppin' shouldn't be a pasttime for a fella in your way... nor should you be wandering Sigil after dark, neither. You'd do best to stick to the main ways, in open peak and watch yourself."~ */
  IF ~~ THEN REPLY #11183 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11184 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11185 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.0
  SAY #11186 /* ~Ebb raises his hand as if to stop you and laughs slightly. "Oh, now, hold on, lad - I'm no has-been faction member... they say, and they're right, that once ye're one of the Harmonium, ye're a Harmonium for life. We're the bloods that try and make sure Sigil stays outta trouble. No rocking the spire, no folks getting too over-enthusiastic about hurting each other, keeping the city down to a low roar. We try and keep the peace, lad, and mosttimes, we do a decent job."~ */
  IF ~~ THEN REPLY #11187 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11188 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11189 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.1
  SAY #11190 /* ~"It's another way of saying gods, lad. And there's a great horde of them across the planes." Ebb takes a puff from his pipe. "They can't come to Sigil, though... the Lady has a way of keeping them out that she hasn't spilled the chant to yet. Be that as it may, it's kept Sigil from being seized by outside interests."~ */
  IF ~~ THEN REPLY #11191 /* ~"What was that you said about being mazed?"~ */ GOTO 38
  IF ~~ THEN REPLY #11192 /* ~"I had some other questions about Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11193 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11194 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 25.5
  SAY #11195 /* ~"Well..." Ebb puffs on his pipe and studies you. "This is perhaps the best kip you could have wandered into from the start... judging by your tattoos, you might be partial to having designs on yer body, in which case, there's a tattoo salon a little spireward from here. You want to stay away from the Alley of Dangerous Angles if ya can... Ignus torched that place not long ago, and ever since, a bunch of bad bloods have set up their kip in that stretch of desert."~ */
  IF ~~ THEN REPLY #11196 /* ~"I had some other questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11197 /* ~"Thanks. Farewell, Ebb."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11198 /* ~"Back for more, eh?" Ebb leans back in his chair. "Good t'see ye again, lad."~ */
  IF ~~ THEN REPLY #11199 /* ~"Greetings, Ebb. I had some questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #11200 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 50 even though they appear after this state */
~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 49 // from:
  SAY #56844 /* ~Ebb nods to you. "Nice work in Curst, friend."~ */
  IF ~  Global("AR0902_Visited","GLOBAL",1)
~ THEN REPLY #56845 /* ~"Thanks, Ebb. Couldn't have done it without your help. Farewell."~ */ EXIT
  IF ~  Global("AR0902_Visited","GLOBAL",0)
~ THEN REPLY #56846 /* ~"Thanks, Ebb. Tough trip, though. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  NearbyDialog("DMorte")
Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #56847 /* ~Ebb nods to you. "Nice work in Curst, friend."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 597
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #56848 /* ~Ebb nods to you. "Nice work back there, friend." He turns back to his drink.~ */
  IF ~~ THEN REPLY #56850 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #56849 /* ~Ebb tips you a wink as you come back in, and turns back to his drink.~ */
  IF ~~ THEN REPLY #56851 /* ~"Good to see you again, too."~ */ EXIT
END

IF WEIGHT #4 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 53 // from:
  SAY #56852 /* ~You see a slightly stooped old man with a full grey beard and a lion's mane of grey hair. He wears a couple of shoulder guards as armor, and he's holding a helmet. He smokes a pipe and carries a pouch of tobacco around his waist. He looks pretty strong, but he's a little plump and also appears to have some sort of breathing trouble. He appears to be the leader of the group gathered here. "Greetings, cutter, and maybe you'd better explain what you're doing in here."~ */
  IF ~~ THEN REPLY #56853 /* ~"I was just checking out what's in here."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #56854 /* ~"What are *you* doing in here?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56855 /* ~"There's a lot of chaos going around in this town, and I'm seeking allies in stamping it out."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56856 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #56857 /* ~"I was just leaving..."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 63
END

IF WEIGHT #5 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 54 // from:
  SAY #56858 /* ~You see Ebb Creakknees. A halo of smoke wreathes his smile as he says, "Well met by chaos, traveler. What brings you to these parts?"~ */
  IF ~~ THEN REPLY #56859 /* ~"I was just checking out what's in here."~ */ GOTO 59
  IF ~~ THEN REPLY #56860 /* ~"What are *you* doing in here?"~ */ GOTO 60
  IF ~~ THEN REPLY #56861 /* ~"There's a lot of chaos going around in this town, and I'm seeking allies in stamping it out."~ */ GOTO 61
  IF ~~ THEN REPLY #56862 /* ~"I was just leaving..."~ */ GOTO 63
END

IF WEIGHT #6 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 55 // from:
  SAY #56863 /* ~You see a slightly stooped old man with a full grey beard and a lion's mane of grey hair. He wears a couple of shoulder guards as armor, and he's holding a helmet. He smokes a pipe and carries a pouch of tobacco around his waist. He looks pretty strong, but he's a little plump and also appears to have some sort of breathing trouble. He appears to be the leader of the group gathered here. "Well met, comrade. We meet under the sign of Anarchy."~ */
  IF ~~ THEN REPLY #56864 /* ~"What are you doing in here?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56865 /* ~"There's a lot of chaos going around in this town, and I'm seeking allies in stamping it out."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56866 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
END

IF WEIGHT #7 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 56 // from:
  SAY #56867 /* ~"Well met!" Ebb laughs. "We meet again, under the sign of Anarchy!"~ */
  IF ~~ THEN REPLY #56868 /* ~"What brings *you* here? And why are you talking about anarchy?"~ */ GOTO 60
  IF ~~ THEN REPLY #56869 /* ~"I need some help, Ebb."~ */ GOTO 61
END

IF WEIGHT #8 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #56870 /* ~You see a slightly stooped old man with a full grey beard and a lion's mane of grey hair. He wears a couple of shoulder guards as armor, and he's holding a helmet. He smokes a pipe and carries a pouch of tobacco around his waist. He looks pretty strong, but he's a little plump and also appears to have some sort of breathing trouble. He appears to be the leader of the group gathered here. He motions you toward him.~ */
  IF ~~ THEN REPLY #56871 /* ~Move toward him.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #56872 /* ~Refuse.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 69
END

IF WEIGHT #9 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #56873 /* ~Ebb tips you a wink, and motions you closer. "Cutter, you've traveled a long and hard path, but I'm here to ease it. Are you with me?"~ */
  IF ~~ THEN REPLY #56874 /* ~"What are you doing in the company of Anarchists, Ebb? I thought you were Harmonium."~ */ GOTO 76
  IF ~~ THEN REPLY #56875 /* ~"Tell me."~ */ GOTO 72
  IF ~~ THEN REPLY #56876 /* ~"No. Go pike yourself."~ */ GOTO 75
END

IF ~~ THEN BEGIN 59 // from: 53.0 54.0 63.0
  SAY #56877 /* ~He bows as low as his paunch will allow. "As you can see... a warehouse full of plotters and schemers. With the old order falling apart here, we think it's best to make sure its pieces are swept away and the people introduced to a new freedom. We're a dangerous bunch, you see."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #56878 /* ~"The people won't have much freedom when they're killed by the monsters that are ravaging the city."~ */ GOTO 64
  IF ~~ THEN REPLY #56879 /* ~"Are you sure that now is the best time to do that?"~ */ GOTO 67
  IF ~~ THEN REPLY #56880 /* ~"Not as dangerous as I am. Let me show you." Attack them.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #56881 /* ~"We'll have no more chaos in this town."~ */ GOTO 68
END

IF ~~ THEN BEGIN 60 // from: 53.1 54.1 55.0 56.0
  SAY #56882 /* ~"Why, we plot and scheme, my friend. With the order of the town toppled, we're in a... unique... position to ensure that our views are heard. And I'm in charge of this little band of adventurers - only for command purposes, of course!"~ */
  IF ~~ THEN REPLY #56884 /* ~"What exactly are you scheming?"~ */ GOTO 66
  IF ~~ THEN REPLY #56885 /* ~"What do you mean?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 53.2 54.2 55.1 56.1
  SAY #56886 /* ~"You seek allies against the chaos? Yet we seek to increase the chaos, to overthrow the old order, to ensure that the old schemes do not rise again. It's our job, after all..."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #56887 /* ~"It might be what we do, but we don't support destruction for its own sake. We destroy so that others may rebuild. There'll be nothing left of Curst if this keeps up."~ */ GOTO 64
  IF ~~ THEN REPLY #56888 /* ~"Why would you want to increase the chaos? The town's already in Carceri, and now the citizens are being devoured."~ */ GOTO 66
  IF ~~ THEN REPLY #56889 /* ~"Then it's my job to stop you. Prepare to die."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 53.3 55.2 60.1
  SAY #56890 /* ~"My friend, I am Ebb Creakknees, formerly Harmonium Third Measure and currently leader pro tem for this cell of the Revolutionary League. I'm here to whip them into shape and set the town up for stripping itself of the old order."~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #56891 /* ~"The old order's pretty well stripped away."~ */ GOTO 64
  IF ~~ THEN REPLY #56893 /* ~"You're Anarchists? Then you must be stopped."~ */ GOTO 69
  IF ~~ THEN REPLY #56896 /* ~"And what are you going to do with the town?"~ */ GOTO 66
  IF ~~ THEN REPLY #56897 /* ~"In that case, I'll just be leaving."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 53.4 54.3 62.3
  SAY #56898 /* ~"Leaving? Ah, but my friend, you can't. You see, we can't allow you to leave here now that you've seen our faces."~ */
  IF ~~ THEN REPLY #56899 /* ~"What do you mean?"~ */ GOTO 59
  IF ~~ THEN REPLY #56900 /* ~"I'd like to see you try to stop me."~ */ GOTO 69
END

IF ~~ THEN BEGIN 64 // from: 59.0 61.0 62.0 66.0 68.0 69.0 70.0
  SAY #56901 /* ~His self-assured exterior slips for a moment. "What do you mean?"~ */
  IF ~~ THEN REPLY #56902 /* ~"What I mean is that while you've been plotting the overthrow of the city government, evil has come to Curst and is currently destroying what's left of the city."~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 67.0
  SAY #56903 /* ~"But... we must do something! All our work will be for naught if they're all dead! Here. Take this." He turns to his brethren. "We must go, or all our work will be for naught! Come on!" He races for the door.~ */
  IF ~~ THEN REPLY #61567 /* ~"Good luck..."~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 60.0 61.1 62.2
  SAY #56905 /* ~"When the people see that their leaders've failed them, chances are good they'll crush the power structures that've repressed them and make something new, something beautiful. We're going to help them."~ */
  IF ~~ THEN REPLY #56906 /* ~"Oh, so you're going to help fight the fiends, then?"~ */ GOTO 64
  IF ~~ THEN REPLY #56907 /* ~"How are you going to make something beautiful from this?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 67 // from: 59.1
  SAY #56908 /* ~"What do you mean, exactly?"~ */
  IF ~~ THEN REPLY #56909 /* ~"What I mean is that while you've been plotting the overthrow of the city government, evil has come to Curst and is currently destroying what's left of the city."~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
  IF ~~ THEN REPLY #56910 /* ~"The timing seems a little awkward."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 59.3 67.1
  SAY #56911 /* ~"Friend, chaos is the redeeming feature of this town. With the slide into Carceri, it's apparent it's one of the town's most basically held beliefs."~ */
  IF ~~ THEN REPLY #56912 /* ~"Yes, and evil seems to be a part of it too. We need to get the town out of here before we're all dead."~ */ GOTO 64
  IF ~~ THEN REPLY #56913 /* ~"Then you support what's happening here?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 57.1 62.1 63.1 71.0 71.1
  SAY #56914 /* ~"Friend, it gives me no pleasure to do this... but if I must, we need to ensure that this town doesn't retain the corruption of the past administration." He waves his hands at his co-conspirators. "Take them."~ */
  IF ~~ THEN REPLY #56915 /* ~"Why are you doing this? Can't you see the town is falling apart? I don't mean that in a good way, either."~ */ GOTO 64
  IF ~~ THEN REPLY #56916 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 66.1
  SAY #56917 /* ~He sighs impatiently. "The point is that when the corruption is cut out of this city, like rot from an apple, something new can rise from its destruction. Consider it a wildfire in the city's administration. Heh heh."~ */
  IF ~~ THEN REPLY #56918 /* ~"The wildfire is certainly spreading."~ */ GOTO 64
  IF ~~ THEN REPLY #56919 /* ~"So you support what's happening here?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 68.1 70.1
  SAY #56920 /* ~"Indubitably, friend. Indubitably."~ */
  IF ~~ THEN REPLY #56921 /* ~"Then we have nothing more to say to each other. Farewell."~ */ GOTO 69
  IF ~~ THEN REPLY #56922 /* ~"Then I'll have to kill you in order to return Curst to its natural place."~ */ GOTO 69
END

IF ~~ THEN BEGIN 72 // from: 57.0 58.1
  SAY #56923 /* ~He leans forward to whisper into your ear. "I know who you are to the Revolutionary League. I know you've turned stag on the Anarchists. I've infiltrated them for the Harmonium, and I'm betraying them from the inside. We need to get this town back to the Outlands. Are you with me?"~ */
  IF ~~ THEN REPLY #56924 /* ~"Yes."~ */ GOTO 73
  IF ~~ THEN REPLY #56925 /* ~"Not on your life."~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0 76.0
  SAY #56926 /* ~"Then follow my lead. We'll put these Anarchist bastards through their paces, eh? Tell me the town's being overrun by fiends. But do it loudly, so they can hear it."~ */
  IF ~~ THEN REPLY #56928 /* ~"Very well." You speak more loudly. "The town is being overrun by fiends while you sit in here plotting about how to bring a better life to the people of the city. If you truly wish to win their hearts, showing you care about them would be a good start. Go save them."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56929 /* ~Ebb tips you a wink, slides a scroll into your hand, and then opens his stance a little so the other Anarchists can see his face. "But... we must do something! All our work will be for naught if they're all dead!" He turns to his brethren. "We must go, or all our work will be for naught! Come on!" He races for the door.~ */
  IF ~~ THEN REPLY #56930 /* ~"Good luck..."~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 58.2 72.1 76.1
  SAY #56931 /* ~"Then you leave me no choice. If you're not part of the solution, you're part of the problem." He turns toward his compatriots. "He'll betray us if given half a chance. Take him."~ */
  IF ~~ THEN REPLY #56932 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 58.0
  SAY #56933 /* ~He leans in even closer, the stink from his smoking pipe overpowering, and whispers, "I'm undercover. Triple agent. Harmonium agent, infiltrating the Anarchists, pretending to be a Harmonium double agent. You've got to think even more deviously than these berks to get in... and I'm still not sure if my cover's blown or not. So... are you going to help me help you?"~ */
  IF ~~ THEN REPLY #56934 /* ~"What do I have to do?"~ */ GOTO 73
  IF ~~ THEN REPLY #56935 /* ~"I can't do that."~ */ GOTO 75
END
