// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMEBBETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMEBBETH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 2 87 88 123 even though they appear after this state */
~  Global("Mebbeth","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1801 /* ~This squat old woman looks like she has had all the color bled out of her - everything from her hair, to her shawl, to her robe - all are shades of gray. The only splotches of color on her come from several strange herbs, which are tied to her belt by their stalks. The herbs make a strange *swsshhh* when she moves, like a broom.~ */
  IF ~~ THEN REPLY #1802 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #23159 /* ~Ignore the woman, explore the room.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #23160 /* ~The elderly woman turns and stares at you... and you notice the gray shades blanketing her body extend to her features as well. Her hair is a wispy gray, and her eyes are like chips of granite. She frowns when she sees you. "And who might ye be, hmmmn?"~ */
  IF ~~ THEN REPLY #23161 /* ~"I am a traveler."~ */ GOTO 3
  IF ~~ THEN REPLY #23162 /* ~"I don't really know who I am."~ */ GOTO 8
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",0)
~ THEN REPLY #23163 /* ~Lie: "The name's Adahn. Who are you?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mebbeth_1","GLOBALLaw",-1)
~ GOTO 9
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",1)
~ THEN REPLY #23164 /* ~Lie: "The name's Adahn. Who are you?"~ */ GOTO 9
  IF ~~ THEN REPLY #23165 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 87 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #23166 /* ~Mebbeth turns as you enter and gives you a skeptical eye. "Yer path brings ye back here, does it, child...?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23167 /* ~"I found the fruit merchant in the market."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23168 /* ~"I returned with those herbs you wanted... now maybe you can get this damned bramble-patch off my wrist."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23169 /* ~"I brought your wash... I think Giscorl was a little heavy on the cleaning ritual, though."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23170 /* ~"Yes, I had some questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23171 /* ~"Yes, I am in need of healing."~ */ GOTO 12
  IF ~~ THEN REPLY #23172 /* ~"I came to purchase some cures and charms from you..."~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23173 /* ~"Could I rest here?"~ */ GOTO 41
  IF ~~ THEN REPLY #23174 /* ~"No, I just came back to check on you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #23175 /* ~"Is that so? An' where have ye traveled *from* then?"~ */
  IF ~~ THEN REPLY #23176 /* ~"To death's kingdom and back, I think."~ */ GOTO 4
  IF ~~ THEN REPLY #23177 /* ~"From the Mortuary through the Hive to here."~ */ GOTO 5
  IF ~~ THEN REPLY #23178 /* ~"Here and about... a number of places, really."~ */ GOTO 7
  IF ~~ THEN REPLY #23179 /* ~"It is of no importance. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23180 /* ~The woman spits once... twice... three times, then makes a semi-circle over her heart. "'Ware what ye say, child - and pray one of the dead powers don't take offense at yer words."~ */
  IF ~~ THEN REPLY #23181 /* ~"I... see. Who are you?"~ */ GOTO 9
  IF ~~ THEN REPLY #23182 /* ~"I'll keep that in mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #23183 /* ~"Hah! Mortuary pale-faces, all concerned with makin' sure th' deaders are all in the jest the right places! Pah! Dusties n' fools - two words, same meaning." The woman's features suddenly go blank, and her eyes roll to the back of her head. ~ */
  IF ~~ THEN REPLY #23184 /* ~"Are you all right?"~ */ GOTO 6
  IF ~~ THEN REPLY #23185 /* ~"Uh... sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23186 /* ~The woman starts mumbling, her tone mocking. "Me am Dustie. Me want ta Die cause this life fake." Her eyes snap back to front, and she snorts. "Dusties! No sense know-nothings!" She points her finger at you. "Ye run outta this life, child, there's little or no place ta go."~ */
  IF ~~ THEN REPLY #23187 /* ~"I... see. Who are you?"~ */ GOTO 9
  IF ~~ THEN REPLY #23188 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #23189 /* ~"Ahhh..." She nods to herself. "Yet in all yer wandering, ye've decided to come to my door, have ye?" She snorts. "Blessed, am I."~ */
  IF ~~ THEN REPLY #23190 /* ~"Who are you?"~ */ GOTO 9
  IF ~~ THEN REPLY #23191 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #23192 /* ~"So ye not know yerself, child?" She squints, then points at your chest. "Hard ta piece together the man beneath all that tracery and scrawling scars, is it?"~ */
  IF ~~ THEN REPLY #23193 /* ~"Maybe... who are you?"~ */ GOTO 9
  IF ~~ THEN REPLY #23194 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 4.0 6.0 7.0 8.0
  SAY #23195 /* ~With a sly cackle, she wags her eyebrows. "Have ye not heard of Ol' Mebbeth then, the midwife of the Square? Have ye not now?" She narrows her eyes, and her voice drops. "Well, now ye have, fer *I* be Mebbeth."~ */
  IF ~~ THEN REPLY #23196 /* ~"You're a midwife? What do you do?"~ */ DO ~SetGlobal("Mebbeth","GLOBAL",1)
~ JOURNAL #22703 /* ~I met an old woman, Mebbeth, a midwife in Ragpicker's Square. She seems a little addled... but so does everyone else in this berg.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23197 /* ~"I set bones right, drive the cough outta the sick, yank out squealing, stubborn babes, mend cloaks or a rag or two, make cures and herbs and other such." She squints at you, studying your scars. "Be needin' a cure or three, do ye then?"~ */
  IF ~~ THEN REPLY #23198 /* ~"Cures?"~ */ GOTO 11
  IF ~~ THEN REPLY #23199 /* ~"No thanks. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23200 /* ~"Aye, ye be needin' some cures ta lookatcha. D'ye want ta buy some, do ye...?" She glances at the scars covering your body again, then shrugs. "Too late ta be askin' for them, I think."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23201 /* ~"Actually, I *could* use some healing..."~ */ GOTO 12
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23202 /* ~"Actually, we *could* use some healing..."~ */ GOTO 12
  IF ~~ THEN REPLY #23203 /* ~"I don't need any cures now, but they might be useful later. Could I see what you have?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23204 /* ~"Actually, I could just use a place to rest. Would you mind if I slept here?"~ */ GOTO 41
  IF ~~ THEN REPLY #23205 /* ~"Not at the moment. I had a question for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23206 /* ~"I see. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 11.0 11.1 17.3 87.2 88.3
  SAY #23207 /* ~Mebbeth nods. "Very well, then." She reaches for one of the dried herbs at her belt, snaps it off at the stalk, then grinds it in her callused palms. Small wisps of dust and pollen rise from her hands. She then mumbles to herself, then blows the dust into the air...~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23208 /* ~Take a deep breath.~ */ DO ~FullHeal(Protagonist)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbeth offered to cure my wounds for free... it might be a good idea to return to her every once in a while if I need healing. ~ */ GOTO 13
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23209 /* ~Take a deep breath.~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbeth offered to cure my wounds for free... it might be a good idea to return to her every once in a while if I need healing. ~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #23210 /* ~The gray pollen swirls around the room, and you breathe deeply... and less than a moment later, you feel strangely refreshed. ~ */
  IF ~~ THEN REPLY #23211 /* ~"Thanks, Mebbeth. Before I go, I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23212 /* ~"Thank you, Mebbeth... I feel well again. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #23213 /* ~The gray pollen swirls around the room, blanketing you and your companions. You breathe deeply... and less than a moment later, you feel strangely refreshed.~ */
  IF ~~ THEN REPLY #23214 /* ~"Thanks, Mebbeth. Before I go, I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23215 /* ~"Thank you, Mebbeth... I feel well again. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #23216 /* ~"Ye be wantin' anythin' else, child?"~ */
  IF ~~ THEN REPLY #23217 /* ~"Actually, yes... could I take another look at what you have?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23218 /* ~"No, but I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23219 /* ~"Not this day, Mebbeth... thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 17.4 88.4
  SAY #23220 /* ~"I sell rags n' herbs n' cures n' charms n' mixes n' poultices n' all that wash..." She shrugs. "Also, if ye find a queer item ye can't figure out, bring it to Mebbeth... no promises, child, but mayhap I ken riddle out what it is."~ */
  IF ~~ THEN REPLY #23221 /* ~"I see. Can I see what you have to sell, then?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23222 /* ~"Very well. I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23223 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3 11.4 13.0 14.0 15.1 16.1 18.1 19.1 20.1 21.0 22.0 23.1 24.1 25.1 26.1 27.1 29.0 30.1 31.1 32.1 33.1 34.0 36.0 37.0 39.0 45.0 46.0 47.1 48.1 49.5 53.3 54.0 57.0 58.2 60.1 61.1 62.0 72.0 79.0 80.0 87.1 88.2
  SAY #23224 /* ~"Go on n' ask, then."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #23225 /* ~"Do you know someone named Pharod?"~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #23226 /* ~"I'm missing a journal. Do you know where one could be found?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #23227 /* ~"Have you ever heard of someone named 'Ravel,' Mebbeth?"~ */ GOTO 23
  IF ~~ THEN REPLY #23228 /* ~"I could use some healing..."~ */ GOTO 12
  IF ~~ THEN REPLY #23229 /* ~"What do you sell here, Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #23230 /* ~"Could I buy some cures from you?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23231 /* ~"Could I rest here?"~ */ GOTO 41
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23232 /* ~"I found the fruit merchant in the market."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23233 /* ~"I returned with those herbs you wanted... now maybe you can get this damned bramble-patch off my wrist."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23234 /* ~"I brought your wash... I think Giscorl was a little heavy on the cleaning ritual, though."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23235 /* ~"I found Kossah-Jai. She doesn't have any ink, but another fishwife does... thing is, I need something to hold the ink in."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23236 /* ~"Here's that ink you wanted."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
AddexperienceParty(1000)
DestroyPartyItem("TankardF",TRUE)
~ GOTO 81
  IF ~  Global("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
~ THEN REPLY #23237 /* ~"Are you a witch, Mebbeth?"~ */ GOTO 47
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23238 /* ~"I want to learn the Art, Mebbeth."~ */ GOTO 49
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #23239 /* ~"I'd like to switch my profession and concentrate on my mage studies, Mebbeth."~ */ GOTO 35
  IF ~~ THEN REPLY #23242 /* ~"No questions today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #23243 /* ~"Pharod?! That - that - pah!" You watch as Mebbeth spits once... twice... three times, then follows it by making a semi-circle over her heart. "That gull tird! Whatcha be wantin' with the likes of him?"~ */
  IF ~~ THEN REPLY #23244 /* ~"I need to find him. Do you know where he is?"~ */ GOTO 19
  IF ~~ THEN REPLY #23245 /* ~"Never mind. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23246 /* ~"Nothing, never mind. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #23247 /* ~"He's not *in* Ragpicker's Square, that much I ken tell ye... ye need ta find a way *under* the Square ta get ta that tird spider's kip." She spits again. "Even talkin' 'bout him leaves a foul taste, it does."~ */
  IF ~~ THEN REPLY #23248 /* ~"He's under the Square?"~ */ GOTO 20
  IF ~~ THEN REPLY #23249 /* ~"I see. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23250 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #23251 /* ~She jabs her finger at the floor. "Aye, he's buried beneath these piles of trash, him and his boys, and a tough time ye'd have diggin' him out of his nest." She shakes her head. "Let be, let be, child."~ */
  IF ~~ THEN REPLY #23252 /* ~"I need to find him. How do I get down there?"~ */ JOURNAL #22705 /* ~Mebbeth told me there's a gate that leads to Pharod's kip somewhere in the Square. She said I should ask one of the other Collectors how I could find it. ~ */ GOTO 21
  IF ~~ THEN REPLY #23253 /* ~"I see. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23254 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23256 /* ~Mebbeth frowns, then sighs. "Hear tell, Pharod's got a gate that leads to his nest somewhere here in the Square... it's jist a matter of findin' it. Ye might want to ask some of the others, some who travel a bit more than Ol' Mebbeth."~ */
  IF ~~ THEN REPLY #23257 /* ~"I see. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23258 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1
  SAY #23259 /* ~Mebbeth thinks. "Haven't seen one. If it's in the Square - which I doubt, since folks don't traffic much with books and the like - it's most likely been sold or stolen. Was it somethin' important ta ye, then? A magic thingee, all glowing and sparkling with magicks, eh? If so, ye might never see it again."~ */
  IF ~~ THEN REPLY #23260 /* ~"Maybe not. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23261 /* ~"I'm beginning to think I'll never see it again, either. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #23262 /* ~"Pah!" Mebbeth hisses and makes a semi-circle over her heart. "What no-sense-nothing ye goin' on about! Sayin' such a name in *me* presence!" She wags her finger at you. "Evil, evil, sayin' such a thing brings evil to one's door."~ */
  IF ~~ THEN REPLY #23263 /* ~"What do you know about her?"~ */ GOTO 24
  IF ~~ THEN REPLY #23264 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23265 /* ~"Sorry, I didn't mean to offend you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23266 /* ~"Ravel? Pah! Myths and scaredy-tales told ta childrens." Her voice drops, as if warning you. "Listen, child: NO Ravel was there, not at ALL... and iffen there *was,* ye got no needin' to be rattlin' that Cage."~ */
  IF ~~ THEN REPLY #23267 /* ~"I need to know all you can tell me about her, Mebbeth. It's important."~ */ GOTO 25
  IF ~~ THEN REPLY #23268 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23269 /* ~"Sorry, I didn't mean to offend you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23270 /* ~Mebbeth frowns... she doesn't seem to want to meet your gaze. "Bad things... bad things in a name..." She looks back at you. "In Ravel's queer hagheart, many shades of evil and badness, all a-crossin' and a-twistin' like snakes. No more need be said, let be, let be!"~ */
  IF ~~ THEN REPLY #23271 /* ~"Do you know where she is, Mebbeth? I have to find her."~ */ GOTO 26
  IF ~~ THEN REPLY #23272 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23273 /* ~"Sorry, I didn't mean to offend you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23274 /* ~"Where does one find a fairy's tale?! Mebbeth doesn't know!" She hisses. "And *iffen* I did know the knowin', would I tell ye? Nay, ye'd try and dig her up, and I can't have that on me mind, I can't..." She seems heartbroken. "But, child... if ye need to know, if ye're dead certain that it's near to eatin' ye up inside, then... aye, then, I'll tell ye."~ */
  IF ~~ THEN REPLY #23275 /* ~"Please... I have to find her, Mebbeth."~ */ JOURNAL #23278 /* ~Mebbeth suggested I go speak to one of the sages in the Civic Festhall in the Clerk's Ward about how I might go about finding the entrance to Ravel's maze.~ */ GOTO 27
  IF ~~ THEN REPLY #23276 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23277 /* ~"I don't need to know that badly. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #23279 /* ~"Ravel..." Mebbeth sighs. "Ravel, cruel Ravel, lies in the Lady's keepin', she does, in a prison, a maze... it's said she was put there so long ago, so very long ago... but findin' it? Mebbeth knows not the way." She sighs. "Ask in the Festhall, mayhap, in the Clerk's Ward. One of the graybeards there may have the dark of it..."~ */
  IF ~~ THEN REPLY #23280 /* ~"Do you know anything else about Ravel... something you can tell me before I seek her out?"~ */ GOTO 28
  IF ~~ THEN REPLY #23281 /* ~"Thanks... I'll go see what I can find out. I had some other questions, first..."~ */ GOTO 17
  IF ~~ THEN REPLY #23282 /* ~"I go speak to one of them then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #23283 /* ~"Child..." Mebbeth speaks, but her voice sounds tired and broken. "...if ye seek evil in the planes... ye need not travel far." She coughs. "Witch knows witch, power knows power, yet there is *none* who knows all Ravel's branchings and twistings. Learn yer skills well, and keep yer lids open when new sights don't be seeming right. Trust yerself, and do not be a-trustin' her, hear?"~ */
  IF ~~ THEN REPLY #23285 /* ~"I will. Thanks, Mebbeth."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #23286 /* ~Mebbeth sighs. "I wish no ills upon others 'cept that one. Glad she's gone, I am, and the Cage is better for it. Again, will I say this, child... let the past rot where it lays. Let lie, let lie."~ */
  IF ~~ THEN REPLY #23287 /* ~"I will take your warning to heart. I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23289 /* ~"I'm sorry, Mebbeth. I have to find Ravel. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23290 /* ~"Mayhap, if I were to begin a tale..." Mebbeth speaks slowly, choosing her words carefully. "Mayhap the tale would begin with a gray *sister* who lived upon the planes, upon the fields of the Gray Wastes. The wastes were such a quiet place, all quiet, and it was the silence that planted the seeds of discontent in Ravel's heart." ~ */
  IF ~~ THEN REPLY #23291 /* ~"Yes...?"~ */ GOTO 31
  IF ~~ THEN REPLY #23292 /* ~"I think I've heard enough. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23293 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #23294 /* ~"Always needin' the *why* and *how* and *what might be* of things, always needin' to take one foot farther down the paths one should not travel." Mebbeth sighs. "And mayhap..."~ */
  IF ~~ THEN REPLY #23295 /* ~"And mayhap...?"~ */ GOTO 32
  IF ~~ THEN REPLY #23296 /* ~"I think I've heard enough. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23297 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #23298 /* ~"And mayhap, Ravel, beautiful in her power and her cunning and her cruelty, mayhap she traveled to this city, this Cage, that burns with too much bustle and thought, because that was where people sought things just for the *knowing* of them."~ */
  IF ~~ THEN REPLY #23299 /* ~Listen.~ */ GOTO 33
  IF ~~ THEN REPLY #23300 /* ~"I think I've heard enough. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23301 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #23302 /* ~"Yet knowin' was not *enough* for one of Ravel's power, so many... many were hurt, and the Cage, this city, it rattled with her needs and wants. Such evils..." She makes a semi-circle over her heart. "Such were Ravel's evils... it steals my words to think of them. She was cast out, into a maze..."~ */
  IF ~~ THEN REPLY #23303 /* ~Listen.~ */ GOTO 34
  IF ~~ THEN REPLY #23304 /* ~"I think I've heard enough. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23305 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #23306 /* ~"And mayhap that maze was quiet, too, like her small hut on the Gray Wastes, and mayhap the silence and quiet had a chance to creep in to Ravel's mind, now that they were not unwelcome, and cruel Ravel, for all her branchings and twistings, was content again." Mebbeth sighs. "And mayhap that is how Ravel's tale ends. Who knows?"~ */
  IF ~~ THEN REPLY #23307 /* ~"Indeed. I had some other questions..."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbeth told me Ravel's tale... she said she was a night hag on the Gray Waste, but the dreariness of the place sowed discontent in Ravel's mind. Ravel packed up her kip and came to Sigil in search of knowledge - but what she learned she used against the city and the inhabitants themselves, acts of such evil that Mebbeth could not describe them. Ravel was punished by the Lady and sentenced to a maze, where the silence and quiet of the place may have calmed her greedy heart. ~ */ GOTO 17
  IF ~~ THEN REPLY #23308 /* ~"Thank you for the tale, Mebbeth. I must take my leave. Farewell."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbeth told me Ravel's tale... she said she was a night hag on the Gray Waste, but the dreariness of the place sowed discontent in Ravel's mind. Ravel packed up her kip and came to Sigil in search of knowledge - but what she learned she used against the city and the inhabitants themselves, acts of such evil that Mebbeth could not describe them. Ravel was punished by the Lady and sentenced to a maze, where the silence and quiet of the place may have calmed her greedy heart. ~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.14 49.0
  SAY #23311 /* ~"Oh, come back to th' fold, have ye?" Mebbeth chuckles dryly. "Very well, let's see what ye've forgotten and what ye've 'membered..."~ */
  IF ~~ THEN REPLY #23312 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ JOURNAL #23314 /* ~Mebbeth taught me the Art, so I'm now focused on learning magic... I'll need to find a thief or combat tutor if I want to switch back to one of the other professions.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #23316 /* ~Mebbeth frowns, then nods. "Ye've minded the teachings of the Art well enough, ye have. Ye're focused on the wizardly arts now, ye are - no more fightin' and thiefin' for ye unless ye talk to another who ken teach ye such a thing." ~ */
  IF ~~ THEN REPLY #23317 /* ~"Thanks, Mebbeth. I had some questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23318 /* ~"I'll keep that in mind. Farewell, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23319 /* ~Mebbeth shakes her head... a little sadly, it seems. "I've taught ye all I ken teach, child... the precious little I've left would not be of interest to one such as ye. I'm proud of ye, I am. Ye've got the makings of a mighty sorcerer, ye do."~ */
  IF ~~ THEN REPLY #23320 /* ~"Thanks, Mebbeth. I had some other questions for you..."~ */ JOURNAL #23322 /* ~It looks like there's nothing more that Mebbeth can teach me in the Art. I'll have to find some other tutors who have a wider range of magic.~ */ GOTO 17
  IF ~~ THEN REPLY #23321 /* ~"I've had a good teacher. Farewell, Mebbeth."~ */ JOURNAL #23322 /* ~It looks like there's nothing more that Mebbeth can teach me in the Art. I'll have to find some other tutors who have a wider range of magic.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23323 /* ~Mebbeth scrutinizes you. "Ye want to see what else I have to teach? Let's see if ye've learned what I've already taught ye... and if ye have any room in yer brain-box first, child..."~ */
  IF ~~ THEN REPLY #23324 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #23326 /* ~Mebbeth said I need to gain a little more experience before she can teach me anything more about the Art.~ */ GOTO 39
  IF ~~ THEN REPLY #23325 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #23327 /* ~Mebbeth shakes her head. "Ye need more time on th' forge, ye do, child. Come back to me when ye've a little more o' the experience o' world in ye, then we'll see about learnin' ye somethin' new."~ */
  IF ~~ THEN REPLY #23328 /* ~"All right then. I had some questions for you before I go..."~ */ GOTO 17
  IF ~~ THEN REPLY #23330 /* ~"I'll come back when I have more experience. Farewell, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #23332 /* ~Mebbeth nods her head. "Aye, ye've grown, ye've learned, seems to me. There's a bit more I ken teach ye, I can... another one o' me recipes..."~ */
  IF ~~ THEN REPLY #23333 /* ~Spell 1: Intimidate~ */ EXIT
  IF ~~ THEN REPLY #23334 /* ~Spell 2: Friends~ */ EXIT
  IF ~~ THEN REPLY #23336 /* ~Spell 3: Pacify~ */ EXIT
  IF ~~ THEN REPLY #23338 /* ~Spell 4: Seizure~ */ EXIT
  IF ~~ THEN REPLY #23339 /* ~Spell 5: Blood Bridge~ */ EXIT
  IF ~~ THEN REPLY #23341 /* ~Spell 6: Irritation~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.6 11.3 17.6 87.4 88.6
  SAY #23343 /* ~She nods. "Of course, child. I have a mess of blankets in the corner that would serve..."~ */
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",0)
~ THEN REPLY #23346 /* ~"That would be fine. Thank you."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",1)
~ THEN REPLY #23356 /* ~"That would be fine. Thank you."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",1)
~ THEN REPLY #23358 /* ~"That would be fine. Thank you."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23360 /* ~You awake, feeling refreshed. Mebbeth is puttering around the hut, but she turns when she hears you stir. "Awake, are ye? Ye slept like the dead..." She smiles. "Do no dreams stir ye head?"~ */
  IF ~~ THEN REPLY #23361 /* ~"Uh... you know, I didn't have any dreams at all."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #23362 /* ~Mebbeth shrugs. "Nothin' odd 'bout that. Most dreams are shy; they fly when the sleeper's lids open."~ */
  IF ~~ THEN REPLY #23363 /* ~"No, but it doesn't feel like I forgot them... I don't think I dreamed *anything.* It feels... wrong."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #23364 /* ~Mebbeth chews that over, then shrugs. "Dreams ken make men great, but they have laid low just as many. Mayhap ye're better off without them nettlin' ye."~ */
  IF ~~ THEN REPLY #23365 /* ~"Mayhap... but I don't think so."~ */ JOURNAL #23367 /* ~When I was at Mebbeth's hut, I suddenly realized that I don't dream. It doesn't feel like I'm forgetting my dreams... I don't think I'm dreaming at *all.* It feels... wrong. I better look into it when I get the chance.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #23369 /* ~Mebbeth snorts. "Well, dreams or no, I'm not one to change the nature of a man. Have ye slept enough?"~ */
  IF ~~ THEN REPLY #23413 /* ~"Yes, thanks... I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23414 /* ~"I think so. I better be on my way. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #23415 /* ~You awake, feeling refreshed. Mebbeth is puttering around the hut, but she turns when she hears you stir. "Awake, are ye? Did ye sleep well?"~ */
  IF ~~ THEN REPLY #23416 /* ~"Yes, thanks... I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23417 /* ~"I think so. I better be on my way. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 17.12
  SAY #23418 /* ~Mebbeth scrutinizes you. "I say naught as to what I am and isn't, but whatcha be wantin' ta know so fool bad for that ye hound an' ol' woman, barkin' and sniffin' fer a juicy bit of gossip?"~ */
  IF ~~ THEN REPLY #23419 /* ~"I want to learn about magic. Could you teach me?"~ */ GOTO 48
  IF ~~ THEN REPLY #23420 /* ~"No matter. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23421 /* ~"Never mind. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #23422 /* ~Mebbeth laughs. "Pah! I'm no teacher, no school-mistress all set up ta teach like them in the big Festhall! There's others somewhere I'm sure that'd spill the dark of it... ye'd be wastin' yer time with ol' Mebbeth, so ye would."~ */
  IF ~~ THEN REPLY #23423 /* ~"I don't agree. I think you'd have a lot to teach."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #23424 /* ~"No matter, then. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23425 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 17.13 48.0
  SAY #23426 /* ~Mebbeth looks at you intently. "Oh, aye? *Why* do ye want to learn such things?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #62022 /* ~"I was a mage, once, but have turned from the path of the Art. I'd like to become one again."~ */ GOTO 35
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23427 /* ~Truth: "Because I just want to know."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23428 /* ~Truth: "Because I may need it to solve the mystery of who I am."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23429 /* ~Truth: "Because I need power."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23431 /* ~"My reasons are my own."~ */ GOTO 53
  IF ~~ THEN REPLY #23432 /* ~"No matter. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23433 /* ~"Never mind... I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.1 53.0
  SAY #23430 /* ~Mebbeth scoffs. "Not a child's grammar book this is, not a Guvner's set of laws... it's the *Art,* child. I'll teach ye, but ye've got ta keep a clear head about ye."~ */
  IF ~~ THEN REPLY #23435 /* ~"I understand. Will you teach me?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 51 // from: 49.2 53.1
  SAY #23438 /* ~After a moment, Mebbeth nods. "The Art may help, it may not, and ye must not rely on it ta solve all o' yer problems." She sighs. "Child, it's most like only going to add another chip to yer pile o' questions..."~ */
  IF ~~ THEN REPLY #23439 /* ~"I understand. Will you teach me?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 49.3 53.2
  SAY #23442 /* ~"Pah! An ill-desire, fer the ladder of the Art will always remind ye that there's another rung jist above ye, and there's a bunch of people and things that'll be on it, too. There'll always be someone better, and they'll learn *ye* if ye crave too much."~ */
  IF ~~ THEN REPLY #23443 /* ~"I understand. Will you teach me anyway?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 49.4
  SAY #23446 /* ~"That so? Well, iffen yer reasons are yer own, then my *knowledge* is my own. I won't teach one who hides hisself from the teacher... only evil comes from such a path."~ */
  IF ~~ THEN REPLY #23447 /* ~Truth: "Very well, I want to learn the Art for the sake of knowing it."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #23448 /* ~Truth: "I want to learn the Art because I may need it to solve the mystery of who I am."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~~ THEN REPLY #23449 /* ~Truth: "I want to learn the Art because I need power."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #23450 /* ~"No matter. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23451 /* ~"Never mind then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 59.0
  SAY #23452 /* ~"Aye, well..." She sniffs. "If ye still want to learn, then I'll need another task from ye. I forgot to tell ye to fetch one thing when ye left last time, and it'll take ye back to the merchant square... look for the cloth-seller, Giscorl. He has some rags of mine he was supposed to wash, and long has it been since I first asked him to do it."~ */
  IF ~~ THEN REPLY #23453 /* ~"I... see. Look, I had some questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23454 /* ~"You could have *mentioned* that before I left... all right, I'll be back."~ */ EXIT
  IF ~~ THEN REPLY #23455 /* ~"I'll go get it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 51.0 52.0
  SAY #23456 /* ~"Pah!" Mebbeth shakes her head. "One should make songs rather than make magick. Songs have more beauty. Magick's been made dull, common-place, soiled by the mob of people that have tromped through it... hmpppph." She squints at you. "I'll teach ye... but first ye'll need to do some things for *me,* ye hear?"~ */
  IF ~~ THEN REPLY #23457 /* ~"Like what?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #23458 /* ~"My legs aren't good fer walkin' about Sigil, and there's errands I'd have ye *run.* I need ye to fetch me some herbs from the market... it's spireward - easterly and southerly from here - in the Hive market. Here's a sample..." She takes a black seed from her coat and flicks it to you. ~ */
  IF ~~ THEN REPLY #23459 /* ~Examine the seed.~ */ DO ~GiveItemCreate("BSeed1",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",1)
~ JOURNAL #22700 /* ~Mebbeth told me to take a strange black seed to one of the fruit merchants at the Hive market and get some herbs from him. She said the market is a few blocks south and east of her hut.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #23460 /* ~You twist the black seed in your hand... as you do, you feel a small bite, then a small drop of blood oozes from your thumb... there are tiny barbs on the seed, like teeth. Mebbeth snorts. "Careful with it... show it to one of the fruit merchants at the market, they will know what herbs ye seek."~ */
  IF ~~ THEN REPLY #23461 /* ~"All right. But I had some questions before I leave..."~ */ GOTO 17
  IF ~~ THEN REPLY #23462 /* ~"Very well, then. I'll return when I have the herbs."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 2.0 17.7
  SAY #23463 /* ~"Aye? Have ye gotten the herbs I wanted?"~ */
  IF ~  !Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23464 /* ~"Not yet, Mebbeth. He said he couldn't help me... that I'd have to find a gardener."~ */ GOTO 60
  IF ~  Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23465 /* ~"Not yet, Mebbeth. He said he couldn't help me... that I'd have to find a gardener."~ */ GOTO 59
  IF ~~ THEN REPLY #23466 /* ~"No, I had some other questions, actually..."~ */ GOTO 17
  IF ~~ THEN REPLY #23467 /* ~"I'm still working on it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #23468 /* ~Mebbeth sighs. "Nothin' to be done, I s'pose." She grunts. "Well, no matter, child, no matter. I'll see if I ken coax one of me old seeds to grow, though it'll take time. I think I still have one or two left..."~ */
  IF ~~ THEN REPLY #23469 /* ~"All right then..."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
SetGlobal("Mebbeth_Fail","GLOBAL",1)
~ JOURNAL #23471 /* ~Mebbeth wants me to fetch her wash from the cloth-seller in the market, a fellow named Giscorl. I wish she'd remembered it before I went looking for those herbs of hers...~ */ GOTO 54
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #23472 /* ~Mebbeth grunts. "Lay-abouts... in the olden days, people gave ingredients, not excuses..."~ */
  IF ~~ THEN REPLY #23473 /* ~"So what should be done?"~ */ GOTO 61
  IF ~~ THEN REPLY #23474 /* ~"I suppose so. Anyway, I had some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23475 /* ~"Well, I'll hunt around some more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #23476 /* ~Mebbeth sighs. "Look for a gardener, I s'pose." She chews her lip.~ */
  IF ~~ THEN REPLY #23477 /* ~"Where?"~ */ GOTO 62
  IF ~~ THEN REPLY #23478 /* ~"Very well then. Look, I had some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #23479 /* ~"I'll hunt around some more, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #23480 /* ~Mebbeth frowns. "I haven't been out of this hut in many cycles, child. I don't know where one might find a gardener... but if ye want to learn the Art, ye'll have to learn to be persistent, so *look.* There must be one somewhere in the Hive."~ */
  IF ~~ THEN REPLY #23481 /* ~"Very well... but before I go, I had some questions for you."~ */ GOTO 17
  IF ~  Global("Mourns","GLOBAL",0)
~ THEN REPLY #23482 /* ~"I'll go look for one, then."~ */ EXIT
  IF ~  GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #23483 /* ~"Maybe Mourns-for-Trees can help me... Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 2.1 17.8
  SAY #23484 /* ~"Is that so?" Mebbeth glances at the barbs that surround your wrist. "If so, *think* it off, then."~ */
  IF ~~ THEN REPLY #23485 /* ~Do so.~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
GiveExperience(Protagonist,500)
~ JOURNAL #23487 /* ~Mebbeth wants me to fetch her wash from the cloth-seller in the market, a fellow named Giscorl. I wish she'd remembered it before I went looking for those herbs of hers... ~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #23486 /* ~Creaking and snapping, the black-barbed branches unravel themselves from your wrist and form into a tangled ball of brush and twigs; it looks like a nest of dead black snakes. Mebbeth snorts. "Think it into a picture frame or somesuch, somethin' with more structure and less angles."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23488 /* ~Try and imagine the barbed-ball into a picture frame.~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23489 /* ~Imagine the barbed-ball into a picture frame.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23490 /* ~Concentrate on the barbed-ball, then imagine it as a picture frame.~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #23503 /* ~Imagine the barbed-ball into a picture frame.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #23505 /* ~Concentrate on the barbed-ball, then imagine it as a picture frame.~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #23535 /* ~You focus for a moment, and try to picture a frame in your mind... there is a creaking and snapping from the ball, and you open your eyes: it has warped itself into a bizarre cube with its barbs all facing outwards. Anyone who picked it up would slice their hands to ribbons.~ */
  IF ~~ THEN REPLY #23536 /* ~"Uh..."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #23538 /* ~Mebbeth snorts. "Maybe ye'd better try again."~ */
  IF ~~ THEN REPLY #23540 /* ~Take a breath, focus, then try again.~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #23541 /* ~The branched ball creaks, the twigs bending and twisting until the branches have bent themselves into a crude picture frame, two handspans on a side.~ */
  IF ~~ THEN REPLY #23542 /* ~"How's that?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #23544 /* ~Mebbeth stares at the frame critically for a moment, then nods. "Square enough." She picks up the frame and scrutinizes it. "It'll do... it'll do."~ */
  IF ~~ THEN REPLY #23546 /* ~"Is that all you wanted it for?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 69 // from: 64.1 64.3
  SAY #23548 /* ~The branched ball creaks, the twigs bending and twisting until the branches have bent themselves into a small picture frame, two handspans on a side. Almost unconsciously, you imagine-shape the barbs to the back of the frame so it can be hung from the wall easily.~ */
  IF ~~ THEN REPLY #23549 /* ~"How's that?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 70 // from: 64.2 64.4
  SAY #23550 /* ~The branched ball creaks, the twigs bending and twisting until the branches have bent themselves into a small picture frame, two handspans on a side. Almost unconsciously, you imagine-shape the barbs to the back of the frame so it can be hung from the wall easily... and, as an afterthought, you move the remaining barbs to the inside of the frame so it can be picked up by the edges.~ */
  IF ~~ THEN REPLY #23551 /* ~"How's that?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 69.0 70.0
  SAY #23552 /* ~Mebbeth stares at the frame for a moment, then cackles. "Ha! Square enough, it is! Good work, child, good work." She picks up the frame and scrutinizes it. "This'll do nicely."~ */
  IF ~~ THEN REPLY #23553 /* ~"Is that all you wanted it for?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 68.0 71.0
  SAY #23554 /* ~"Aye, well, this is enough..." She sniffs. "Aye, but there was one thing I forgot to tell ye to fetch when ye left last time, and it'll take ye back to the merchant square it will... look for the cloth-seller, Giscorl. He has some rags of mine that he was supposed to wash, and long has it been since I first asked him to do it."~ */
  IF ~~ THEN REPLY #23556 /* ~"I... see. Look, I had some questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23558 /* ~"You could have *mentioned* that before I left... all right, I'll be back."~ */ EXIT
  IF ~~ THEN REPLY #23559 /* ~"I'll go get it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 2.2 17.9 87.0
  SAY #23561 /* ~She takes the stacks of starched-green rags from you, and she examines them critically. "At least they won't tear." She sighs. "Or bend."~ */
  IF ~~ THEN REPLY #23562 /* ~"What was with that cloth-merchant, Giscorl? His hands were all scarred. And he seemed... slow."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #23563 /* ~Mebbeth is still turning the cloth over in her hands, tapping it with her finger. "Well, child, sometimes one burns with the Art, and other times, the Art burns ye."~ */
  IF ~~ THEN REPLY #23564 /* ~"Is that what happened to him?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #23565 /* ~Mebbeth clicks her tongue. "Mayhap. There's somes for who usin' the Art is like breathing. They strolls about with pointy hats and stinkweed pipes... then there's hedge-wizards n' plane-touched gypsies n' fortune-casters n' half-seers n' midwives who flicker with the Art... them have a harder time of it."~ */
  IF ~~ THEN REPLY #23567 /* ~"And Giscorl was one of them?"~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #23568 /* ~Mebbeth nods. "Aye... so to speak. In some ways, he's no different now than he was. Addicted to habit and ritual, he was." She sets down the stiff rags; they *clunk* as she places them on the floor. "Aye, now, there's one last thing I need from ye, child..."~ */
  IF ~~ THEN REPLY #23569 /* ~"This better not involve me going back to the market, Mebbeth."~ */ GOTO 77
  IF ~~ THEN REPLY #23570 /* ~"Of course. What do you need?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #23571 /* ~"Oh? And iffen it does, child?!" Mebbeth draws herself up, and she glares at you. Even at full height, her head barely crests your shoulders. ~ */
  IF ~~ THEN REPLY #23572 /* ~"Mebbeth, it's a waste of time to keep traveling to the market for all these things, especially when you could have taken a moment and thought about everything you needed instead of sending me on the same errand *three* times."~ */ GOTO 78
  IF ~~ THEN REPLY #23574 /* ~"All's I'm saying is that if you can't keep your head straight about what you need from the market, I doubt you can teach me much about magic."~ */ GOTO 78
  IF ~~ THEN REPLY #23575 /* ~"Never mind. What do you need?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #23577 /* ~Mebbeth puffs up, her face turning turnip-red. "Oh, aye? Is that yer feelin's on the matter, is it? If so, then leave! I'll tell ye, I won't be a-wastin' my time tryin' to shine light in that mule-head o' yers!"~ */
  IF ~~ THEN REPLY #23578 /* ~"No, I'll do the errands... just tell me: is there anything else you need me to pick up while I'm there?"~ */ GOTO 79
  IF ~~ THEN REPLY #23580 /* ~"All right, all right. I spoke in haste. What do you need?"~ */ GOTO 79
  IF ~~ THEN REPLY #23581 /* ~"Fine, I'm leaving. Farewell."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.1 77.2 78.0 78.1
  SAY #23583 /* ~"Only this: I need some inks fer scribin' some ingredients in one of me cookery books. I'll need ye to fetch some from one of the merchants - Kossah-Jai, be her name."~ */
  IF ~~ THEN REPLY #23584 /* ~"Very well. I'll go see if I can find her, but I had some questions first..."~ */ JOURNAL #23587 /* ~Mebbeth needs me to run yet *another* damnable errand for her... it's back to the market again to fetch some ink. She said to speak to a woman named Kossah-Jai in the market square. She's probably the only merchant I *haven't* spoken to yet.~ */ GOTO 17
  IF ~~ THEN REPLY #23585 /* ~"All right, then... I'm off. Farewell."~ */ JOURNAL #23587 /* ~Mebbeth needs me to run yet *another* damnable errand for her... it's back to the market again to fetch some ink. She said to speak to a woman named Kossah-Jai in the market square. She's probably the only merchant I *haven't* spoken to yet.~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 17.10 88.0
  SAY #23589 /* ~"Can't ye get a cup, or a bowl, or a tankard or something from one of the other merchants?"~ */
  IF ~~ THEN REPLY #23590 /* ~"I could. I'll ask one of the other merchants, but I had some other questions for you first..."~ */ GOTO 17
  IF ~~ THEN REPLY #23592 /* ~"I suppose I could... oh, well, I'm off. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 17.11 88.1
  SAY #23595 /* ~Mebbeth takes the tankard of ink from you, then sniffs it. "Prime ink, fresh it is, aye..." She nods at you. "Ye've done well, child. All I've asked. Now, I ask ye again: after all ye've seen, do ye still want to learn the Art?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23596 /* ~"After all I've seen? What do you mean?"~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23597 /* ~"Yes, I do."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23598 /* ~"Yes. After all, the guiding goal of your errands was to test my persistence, was it not?"~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23600 /* ~"Yes. After all, the guiding goal of your errands was to test my persistence, was it not?"~ */ GOTO 82
  IF ~~ THEN REPLY #23601 /* ~"No, I don't think the Art is for me. Farewell, Mebbeth."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.2 81.3
  SAY #23604 /* ~Mebbeth smiles, then nods. "Yes... mayhap, child, mayhap."~ */
  IF ~~ THEN REPLY #23605 /* ~"And that's not all; you knew who I had to see to accomplish each errand, didn't you?"~ */ GOTO 83
  IF ~~ THEN REPLY #23607 /* ~"Very well. I still want to learn the Art."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #23609 /* ~Mebbeth nods again, slower this time. "Mayhap, child, mayhap... iffen so, what did yer senses tell ye about them?"~ */
  IF ~~ THEN REPLY #23611 /* ~"Mourns-for-Trees showed me that my beliefs affect the world around me, Giscorl taught me that ritual is a wasted effort if the purpose of the ritual is ignored, Meir'am taught me that no matter how much I think I know, there is still much I can learn from another's eyes."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #23612 /* ~Mebbeth is silent for a moment, then she walks slowly over to you and touches you on the cheek. "Oh, child..." She sighs. "Ye will be a master sorcerer one day, ye will. Ye have the knowin' of it, yet... ye've come to Ol' Mebbeth for help, ye have. What could a midwife teach such a one?"~ */
  IF ~~ THEN REPLY #23613 /* ~"Much, Mebbeth. I want to learn all you have to teach."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 89
END

IF ~~ THEN BEGIN 85 // from: 81.0
  SAY #23614 /* ~"From all ye've seen... have ye learned anythin'?"~ */
  IF ~~ THEN REPLY #23615 /* ~"I learned I must be willing to put up with a lot of running around if I want to get anything out of you."~ */ GOTO 86
  IF ~~ THEN REPLY #23616 /* ~"Well, some things. Not anything I could really comment on... except that I want to learn the Art."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23619 /* ~Mebbeth laughs. "And so it is with the Art, child, so it is with the Art. Many errands will ye run in its name, some seemin' to have no sense about them. Knowin' that, do ye still want to learn?"~ */
  IF ~~ THEN REPLY #23621 /* ~"Yes."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF WEIGHT #2 /* Triggers after states #: 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",3)
GlobalLT("Mebbeth_Quest","GLOBAL",6)
Global("Mebbeth_Fail","GLOBAL",0)
~ THEN BEGIN 87 // from:
  SAY #23623 /* ~Mebbeth seems lost in twisting the black-branched picture frame you made for her... she is squaring the edges and snapping off some of the barbed seeds on the branches. She suddenly notices you and sets down the frame. "Aye, child?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23624 /* ~"I brought your wash... I think Giscorl was a little heavy on the cleaning ritual, though."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23626 /* ~"I had some questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23627 /* ~"I could use some healing..."~ */ GOTO 12
  IF ~~ THEN REPLY #23628 /* ~"Could I buy some cures from you?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23629 /* ~"Could I rest here?"~ */ GOTO 41
  IF ~~ THEN REPLY #23630 /* ~"No questions today. Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",5)
GlobalLT("Mebbeth_Quest","GLOBAL",11)
~ THEN BEGIN 88 // from:
  SAY #23632 /* ~Mebbeth is tugging at the mass of greenish-lime starched rags you brought from Giscorl... she seems to be purposely fraying the edges, as if to peel them apart somehow. When she hears you approach, she turns. "Aye, child?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23633 /* ~"I found Kossah-Jai. She doesn't have any ink, but another fishwife does... thing is, I need something to hold the ink in."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23635 /* ~"Here's that ink you wanted."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
DestroyPartyItem("TankardF",TRUE)
AddexperienceParty(1000)
~ GOTO 81
  IF ~~ THEN REPLY #23636 /* ~"I had some questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #23638 /* ~"I could use some healing..."~ */ GOTO 12
  IF ~~ THEN REPLY #23639 /* ~"What do you sell here, Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #23641 /* ~"Could I buy some cures from you?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23642 /* ~"Could I rest here?"~ */ GOTO 41
  IF ~~ THEN REPLY #23643 /* ~"Nothing. Just checking up on you."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 81.1 82.1 84.0 85.1 86.0
  SAY #23644 /* ~"So ye'll walk the path then..." Mebbeth pauses. "Well, first things firstly: jest havin' the knack for the Art isn't enough. Ye need some means of givin' it focus: usually 'spells.' The spells are usually in a book. So the Art demands ye have a spell book or its like a-fore ye ken cast spells. Ken ye read?"~ */
  IF ~~ THEN REPLY #23647 /* ~"I don't know."~ */ GOTO 90
  IF ~~ THEN REPLY #23648 /* ~"Yes."~ */ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #23649 /* ~"Then let's test it, ken ye read this?" Mebbeth draws forth a small tattered card... it looks like a recipe. ~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23651 /* ~Examine the recipe.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23652 /* ~Examine the recipe.~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #23654 /* ~The writing on the recipe swims before your eyes, each symbol twisting out of focus whenever you try and read it. Almost instinctively, you relax your eyes, allowing them to take in the page all at once... and the symbols suddenly bleed together: the recipe lists measurements, ingredients... it appears to be some minor divination.~ */
  IF ~~ THEN REPLY #23674 /* ~"This is a minor divination, isn't it? It looks like it's a spell that allows the user to see the 'nature' of an item... to see whether it's enchanted or not."~ */ GOTO 96
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #23675 /* ~"Here, ken ye read this?" Mebbeth draws forth a small tattered card... it looks like a recipe. Strangely enough, the writing on the recipe swims before your eyes, each symbol twisting out of focus whenever you try and read it. ~ */
  IF ~~ THEN REPLY #23676 /* ~Study the symbols, see if you can decipher them.~ */ GOTO 93
  IF ~~ THEN REPLY #23677 /* ~"I give up, Mebbeth... what does this writing mean?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #23678 /* ~You study the symbols intently. No matter how hard you concentrate, however, the writing on the recipe seems to flow out of focus, bending and twisting like a nest of snakes. It makes your eyes hurt just trying to follow their movements. ~ */
  IF ~~ THEN REPLY #23679 /* ~Keep studying the symbols, try and puzzle out their meaning. ~ */ GOTO 94
  IF ~~ THEN REPLY #23680 /* ~"I give up, Mebbeth... what does this writing mean?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 93.0 94.0
  SAY #23681 /* ~You keep studying the symbols for a few more minutes, Mebbeth silently watching you. ~ */
  IF ~~ THEN REPLY #23682 /* ~Keep studying the symbols, try and puzzle out their meaning. ~ */ GOTO 94
  IF ~~ THEN REPLY #23683 /* ~"I give up, Mebbeth... what does this writing mean?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 92.1 93.1 94.1
  SAY #23684 /* ~As you are about to give up and turn away, you relax your eyes and take in the page all at once... as you do, the symbols suddenly bleed together: the recipe lists measurements, ingredients: it appears to be some sort of minor divination.~ */
  IF ~~ THEN REPLY #23685 /* ~"This is a minor divination, isn't it? It looks like it's a spell that allows the user to see the 'nature' of an item... to see whether it's enchanted or not."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 91.0 95.0
  SAY #23686 /* ~Mebbeth's eyes widen. "Who are ye to test ol' Mebbeth so?! Are ye some fiend?"~ */
  IF ~~ THEN REPLY #23687 /* ~"What's wrong?"~ */ JOURNAL #23690 /* ~Mebbeth gave me a test... a small recipe, a minor illusion, written in the language of the Art. I was able to decipher its meaning with no training. I must have learned how to read magic at some point in the past.~ */ GOTO 97
  IF ~~ THEN REPLY #23688 /* ~"No... well, not to my knowledge. What's wrong?"~ */ JOURNAL #23690 /* ~Mebbeth gave me a test... a small recipe, a minor illusion, written in the language of the Art. I was able to decipher its meaning with no training. I must have learned how to read magic at some point in the past.~ */ GOTO 97
  IF ~~ THEN REPLY #23689 /* ~"Some have called me so, but not in my presence. Is there something wrong?"~ */ JOURNAL #23690 /* ~Mebbeth gave me a test... a small recipe, a minor illusion, written in the language of the Art. I was able to decipher its meaning with no training. I must have learned how to read magic at some point in the past.~ */ GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.0 96.1 96.2
  SAY #23691 /* ~"Well... not expectin' it, was I..." She nods at the recipe, then plucks it out of your hand. "What ye see, it's written in the language of the *Art.* If ye're not a mageling yet, it should be all-a-swirl-jumble of mish-mash." She snaps her finger. "Yet, clear as crystal, ye pluck the sense of it right up. Mayhap ye tell Ol' Mebbeth why that is?"~ */
  IF ~~ THEN REPLY #23692 /* ~"I don't really know... I just *knew* what it said."~ */ GOTO 98
  IF ~~ THEN REPLY #23693 /* ~"I think I may have known once, but forgot... seeing the symbols just jarred my memory."~ */ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.0 97.1
  SAY #23694 /* ~"Or else a natural gift, ye may have... no matter, no matter, ye've just shaved seasons off of yer learning, ye have." Mebbeth *harumphs.* "An' I'd been lookin' fer someone to handle the chores around here, I had..."~ */
  IF ~~ THEN REPLY #23695 /* ~"Maybe it's just as well, then."~ */ GOTO 99
  IF ~~ THEN REPLY #23696 /* ~"If you need help with anything around here, you can still ask... it's the least I can do in exchange for you teaching me."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mebbeth_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #23697 /* ~"Pah! And to think I took ye in..." She frowns. "Well, ye ken read spells well enough, but spells are no good to ye without a book to put them in..."~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23698 /* ~"Do you have one?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23699 /* ~"Do you have one?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #23700 /* ~"No, no, don't worry yerself about that..." She frowns. "Well, ye ken read spells well enough, but spells are no good to ye without a book to put them in..." ~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23701 /* ~"Do you have one?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23702 /* ~"Do you have one?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 99.1 100.1
  SAY #23703 /* ~Mebbeth glances around the hut, and then she catches sight of the black-barbed picture frame you made. She picks it up carefully and studies it. "This'll do."~ */
  IF ~~ THEN REPLY #23704 /* ~"That thing? It's just a frame."~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 99.0 100.0
  SAY #23705 /* ~Mebbeth glances around the hut, and then she catches sight of a black-barbed picture frame on one of the walls. She pulls it off the wall carefully and studies it. "This'll do."~ */
  IF ~~ THEN REPLY #23706 /* ~"That thing? It's just a frame."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 101.0 102.0
  SAY #23707 /* ~"Ah, but so are ye, child..." Still holding the frame, she picks up one of the starched rags you got from Giscorl. With a yank, she pulls off the greenish starched-surface film; it flutters in the air like a wispy bit of cloth. "Whatever Giscorl uses in the wash, it works better than curing, stretchin' and stonin' does on a normal rag. Can't afford parchment, I can't..."~ */
  IF ~~ THEN REPLY #23708 /* ~"Parchment...?"~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #23709 /* ~She takes the starchy film and pulls it over the black-barbed frame, latching the rag's edges onto the hooks around the frame until it looks like a small greenish-black painter's canvas. "It's missin' something..." ~ */
  IF ~~ THEN REPLY #23710 /* ~"Well, it needs something painted on it."~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #23711 /* ~She nods. "Aye, or written on it..." She takes the tankard of ink you've given her and sets it down next to her. She dips one of her fingernails into the tankard, then draws it out, mumbling to herself. She begins to scratch symbols onto the frame, one by one, still mumbling to herself.~ */
  IF ~~ THEN REPLY #23712 /* ~Wait...~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #23713 /* ~"All's done." Mebbeth stands, drying her ink-stained fingernail on her robe. She tilts her head, regarding the strange, framed page in front of her. "A page fer yer spell book, it is." She indicates you should pick it up.~ */
  IF ~~ THEN REPLY #23714 /* ~Take it...~ */ GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0 108.1
  SAY #23715 /* ~"Inside yer spell book are yer recipes... yer 'spells'... if you will. As long as they sit in the book, though, they're jist words." She taps her head. "The Art demands ye pluck the magick out of the book and put them in yer attic... yer head, a-fore ye ken tap their power."~ */
  IF ~~ THEN REPLY #23716 /* ~"Go on..."~ */ GOTO 108
  IF ~~ THEN REPLY #23717 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #23718 /* ~"Ye put them in yer attic by studyin' 'em, *memorizing* them. Ye usually need ta rest first a-fore ye ken do this, though. Any questions?"~ */
  IF ~~ THEN REPLY #23719 /* ~"No, Mebbeth."~ */ GOTO 109
  IF ~~ THEN REPLY #23720 /* ~"Yes... explain that again."~ */ GOTO 107
  IF ~~ THEN REPLY #23721 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #23722 /* ~"Oh, no questions, eh? Well now, ye *should* have questions! Ye know all's about how to memorize spells do ye? Ye're a sharp one! Ye sure don't need any more of Mebbeth's words all-a-gobblin' up yer precious time... ye're a master sorcerer already!"~ */
  IF ~~ THEN REPLY #23723 /* ~"Forgive me, Mebbeth. I *meant* no questions on what you'd said. Please explain how to memorize spells."~ */ GOTO 110
  IF ~~ THEN REPLY #23724 /* ~"Your attitude is trying my patience, Mebbeth..."~ */ GOTO 111
  IF ~~ THEN REPLY #23725 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 111.1
  SAY #23726 /* ~"Hmmph. All right then. Here's the dark of how ye memorize the spells: Pick the spells ye want to stick in yer head from yer spell book *a-fore* ye goes to sleep. When ye wake in the morn, they'll be buzzin' in yer head like flies, ready ta be let out."~ */
  IF ~~ THEN REPLY #23727 /* ~"How many spells can I cast?"~ */ GOTO 112
  IF ~~ THEN REPLY #23728 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #23729 /* ~"Aye, I'll be any way I like with ye, child, so's I will, and ye'll pay attention right quick if ye wish to know the dark of the Art!"~ */
  IF ~~ THEN REPLY #23730 /* ~"Forgive me, Mebbeth. Please explain how to memorize spells."~ */ GOTO 110
  IF ~~ THEN REPLY #23731 /* ~"If you're *done* with the lecture, then continue."~ */ GOTO 110
END

IF ~~ THEN BEGIN 112 // from: 110.0
  SAY #23732 /* ~"Ye ken cast only one, mayhap two spells a-fore needin' to rest again... as a tiny flitting mageling, there isn't much room in yer attic. So's use yer spells wisely until ye get wiser in the Art. As yer power increases, ye'll get more room in yer attic for spells."~ */
  IF ~~ THEN REPLY #23733 /* ~"All right... go on..."~ */ GOTO 113
  IF ~~ THEN REPLY #23734 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #23735 /* ~"Ye ken only cast spells ye've memorized. So if ye want to use the Art to say, Mend somethin' twice, ye need to memorize the spell... how many times?" ~ */
  IF ~~ THEN REPLY #23736 /* ~"Once."~ */ GOTO 114
  IF ~~ THEN REPLY #23737 /* ~"Twice."~ */ GOTO 115
  IF ~~ THEN REPLY #23738 /* ~"Uh..."~ */ GOTO 114
  IF ~~ THEN REPLY #23739 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.2
  SAY #23740 /* ~"Twice! To cast a spell *twice,* ye need to memorize the spell *twice.*"~ */
  IF ~~ THEN REPLY #23741 /* ~"Got it. How can I get more spells?"~ */ GOTO 116
  IF ~~ THEN REPLY #23742 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 115 // from: 113.1
  SAY #23743 /* ~Mebbeth nods. "Aye, twice, right enough."~ */
  IF ~~ THEN REPLY #23744 /* ~"How can I get more spells?"~ */ JOURNAL #23746 /* ~Mebbeth taught me the fundamentals of the Art. She says that before I rest, I'll need to pick what spells I want to memorize by going to my spell book and choosing them. If I want to be able to cast a spell multiple times, I'll have to memorize the spell multiple times. Whenever I rest, I'll awake the next morning with the spells in my memory, ready to be cast. She said I'll only be able to cast a small number of spells each day until I become more proficient in their use. I might be able to find other teachers around Sigil who can teach me to cast spells as well.~ */ GOTO 116
  IF ~~ THEN REPLY #23745 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 116 // from: 114.0 115.0
  SAY #23747 /* ~Mebbeth shrugs. "Keep yer eyes and ears out for learnin' - even common folks might have some minor magicks to teach. There's also scrolls, recipes, books and even some stranger items that have spells inscribed on 'em. If ye find one, just examine it close and copy it into yer book if ye want it."~ */
  IF ~~ THEN REPLY #23748 /* ~"Got it."~ */ GOTO 117
  IF ~~ THEN REPLY #23749 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #23750 /* ~"I ken also show ye more spells if ye return, especially when ye've a little more o' the planes in ye."~ */
  IF ~~ THEN REPLY #23751 /* ~"I'd appreciate it. Thanks." ~ */ GOTO 118
  IF ~~ THEN REPLY #23752 /* ~"I think I understand the basics, Mebbeth. Farewell."~ */ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 107.1 108.2 109.2 110.1 112.1 113.3 114.1 115.1 116.1 117.0 117.1
  SAY #23753 /* ~"A-fore ye go, child, ye'll need some magicks for ye to whet yer appetite..." Mebbeth rummages in her robe, then pulls forth three small recipes, which she passes to you. "Ye should copy these into yer book, so they ken go into yer attic as soon as possible..."~ */
  IF ~~ THEN REPLY #23754 /* ~"Thanks, Mebbeth."~ */ DO ~GiveItemCreate("Recipe01",Protagonist,1,1,0)
GiveItemCreate("Recipe02",Protagonist,1,1,0)
GiveItemCreate("Recipe03",Protagonist,1,1,0)
GiveExperience(Protagonist,5000)
~ JOURNAL #23759 /* ~Mebbeth gave me three 'recipes' which she said I should copy into my spell book. She told me I should examine them in my inventory, then 'copy' them into my spell book.~ */ GOTO 138
END

IF ~~ THEN BEGIN 119 // from: 138.0
  SAY #23755 /* ~"All right child - don't tarry here any longer. One such as ye has other ways to spend one's time rather than hang around Ol' Mebbeth."~ */
  IF ~~ THEN REPLY #23756 /* ~"Now, come on, Mebbeth, you're not old."~ */ GOTO 120
  IF ~~ THEN REPLY #23757 /* ~"You're not so old."~ */ GOTO 120
  IF ~~ THEN REPLY #23758 /* ~"Aye, that be the truth. I've spent too much time here already."~ */ GOTO 121
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #23760 /* ~"Pah, ye flatterer! Yer tongue is so lined with silver it'd shame a baatezu! Get ye hence!"~ */
  IF ~~ THEN REPLY #23761 /* ~"Thanks for everything, Mebbeth."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 122
  IF ~~ THEN REPLY #23762 /* ~"Farewell, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 119.2
  SAY #23763 /* ~"Ye've got the temperment ta be one of those high-saddled sorcerers." Mebbeth snorts. "Still... I wish ye well, child. I wish ye well."~ */
  IF ~~ THEN REPLY #23764 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 120.0
  SAY #23765 /* ~"Pah! Ye ken thank me by not playin' the addle-cove with what ye've learned. The Art's damned many a fool who sought to bend it in ways the Art weren't meant to bend. Now get along with ye!"~ */
  IF ~~ THEN REPLY #23766 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Ravel")
~ THEN BEGIN 123 // from:
  SAY #23767 /* ~As you enter, Mebbeth looks up, her face ashen... she looks ill. As you watch, creases spread across the folds of her face like cracks, and her gray eyes flicker, as if having trouble focusing on you.~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #64215 /* ~"Mebbeth, are you all right?"~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23768 /* ~"I thought you might still be here, Mebbeth."~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23769 /* ~"You aren't dead, yet, 'Mebbeth'?"~ */ GOTO 125
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23770 /* ~"Mebbeth... did you *know* you were Ravel?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 124 // from: 123.0 123.1
  SAY #23771 /* ~"Aye..." She smiles weakly, and her voice is scratchy, as if trying to force its way past layers of dust. When she speaks, it is like an echo. "I have... a little longer..."~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #23772 /* ~"Mebbeth... did you *know* you were Ravel?"~ */ GOTO 126
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #64216 /* ~"Mebbeth... your voice... you're speaking in *Ravel's* voice. Who *are* you?!"~ */ GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 123.2
  SAY #23773 /* ~"Nay..." She smiles weakly. "I have... a little longer..."~ */
  IF ~~ THEN REPLY #23774 /* ~"Mebbeth... did you *know* you were Ravel?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 123.3 124.0 124.1 125.0
  SAY #23775 /* ~She takes a deep breath... her words come slowly, her voice rattling in her throat. "Mayhap... Mebbeth has forgotten herself many times over... I have dreamed that I was someone else..." Each word is heavier than the last, as if centuries of weight are pressing down on them. Her body seems to shift slightly, as if wanting to *relax,* let go. ~ */
  IF ~~ THEN REPLY #23776 /* ~"How could you not know who you are?"~ */ GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #23777 /* ~"How is it *ye* do not know yerself?" Mebbeth licks her lips. "Many things... even bits of the self... they fall through memory's cracks, shadows of things forgotten, these memory thing-pieces, maybe bad... maybe good."~ */
  IF ~~ THEN REPLY #23778 /* ~"But why Mebbeth? Why the disguise when you could have been Ravel again?"~ */ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY #23779 /* ~"Here, in this place, all I did was the mendin' of things and bodies, settin' bones, deliverin' babes... in all these things, I was content." She sighs. "As for being that *other,* that Ravel..." She licks her lips again. "I think... ye take for granted what a comfort it would be, oft times, to misplace a memory or two."~ */
  IF ~~ THEN REPLY #23780 /* ~"I wasn't sure if you would be here, Mebbeth, after what happened..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY #23781 /* ~Mebbeth nods - every movement is pained. "Aye, my precious one..." She winces as she takes a breath. "Seeing ye here... it is like an echo. Little time remains... the threads, these Ravels... they are unraveling as we speak." ~ */
  IF ~~ THEN REPLY #23782 /* ~"Are you in pain?"~ */ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #23783 /* ~She nods. "Yes... yet it is the irony which hurts the most..." She gives a sickly smile. "An act of kindness, thrice repaid... it is the way of the planes that my few acts of kindness should be the death of me." She laughs softly. "Yet I have no regrets..."~ */
  IF ~~ THEN REPLY #23784 /* ~"I have questions, Mebbeth. I need to know who *did* this to you. Can you t-"~ */ GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #23785 /* ~She holds up her hand to silence you. "Precious man... I would have ye hear me, this last time..."~ */
  IF ~~ THEN REPLY #23786 /* ~"Mebbeth, there's not much *time*..."~ */ GOTO 132
  IF ~~ THEN REPLY #23788 /* ~"Very well..."~ */ GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0 131.1
  SAY #23792 /* ~"Precious man..." She sighs. "All's I wished to do was set the Lady free of her Cage... for ye, all's I wished for ye was to *live*... and for me daughter, I..." She sighs. "There is a saying on the planes... that a hag's kindness is crueler... than her hate, and poisons all it touches..."~ */
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23793 /* ~"I think we've seen the truth of that."~ */ GOTO 133
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23794 /* ~"I'm sorry things turned out as it did. If I could have saved you, I-"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 133
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23795 /* ~"I think we've seen the truth of that."~ */ GOTO 134
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23796 /* ~"I'm sorry things turned out as it did. If I could have saved you, I-"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #23797 /* ~She smiles slightly. "I do not regret what has happened, my precious..." Her smile fades. "Nor should ye." Her eyes film over, and her gaze loses focus. "Ah... I... ken stay here... no longer."~ */
  IF ~~ THEN REPLY #23798 /* ~"Good riddance, Ravel. May a darker place than this be your home."~ */ DO ~DestroySelf()
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #23799 /* ~"Farewell, Ravel."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 134 // from: 132.2 132.3
  SAY #23800 /* ~"I am dying now..." She blinks her rheumy eyes. "My end... it's traveling from all of time's directions, all of Ravel's threads are unraveling..." She coughs. "Yet..." Her gray eyes lock upon you. "Mayhap not all is lost... one of my black-barbed seeds from the maze... did ye bring one with ye?"~ */
  IF ~~ THEN REPLY #23801 /* ~"Yes. Here."~ */ DO ~AddexperienceParty(12000)
DestroyPartyItem("BBSeed",FALSE)
~ GOTO 135
  IF ~~ THEN REPLY #23802 /* ~"I have it, but I will not give it to you."~ */ GOTO 136
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #23803 /* ~"Ah..." She takes the seed gingerly, and she slips it into her graying locks. "So the Unity of Rings is served..." With a flickering glance, she raises her hand and beckons you to come closer.~ */
  IF ~~ THEN REPLY #23804 /* ~Step close to her, kneel down. ~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 137
  IF ~~ THEN REPLY #23805 /* ~"No... no matter what guise you wear, you are Ravel, and I do not trust you. Mebbeth I mourn. You I do not."~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 134.1 135.1
  SAY #23806 /* ~She nods, looks like she is about to say something, then smiles and closes her eyes. ~ */
  IF ~~ THEN REPLY #23807 /* ~"Farewell."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 137 // from: 135.0
  SAY #23809 /* ~She whispers something softly under her breath, then clasps your head in her hands and places a paper-thin kiss upon your forehead. You close your eyes as her lips touch your skin... ~ */
  IF ~~ THEN REPLY #23810 /* ~"May the planes receive you kindly, Mebbeth."~ */ DO ~SetGlobal("Ravel_Death_Kiss","GLOBAL",1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 118.0
  SAY #66278 /* ~"Wait... there's more..." Mebbeth fishes a tiny bundle of black cloth from her apron and unrolls it, producing a pair of amber earrings. "These'll protect ye on yer travels, child... I no longer wear them meself, so go ahead an' take them."~ */
  IF ~~ THEN REPLY #66279 /* ~"Thanks again..."~ */ DO ~GiveItemCreate("AmbEar",Protagonist,1,0,0)
~ GOTO 119
END
