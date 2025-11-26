// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3076 /* ~You see a leather-skinned man with just a hint of ashen color to his face. His teeth seem sharper than normal, and his eyes are filled with the boredom that comes with having seen too much. His voice is nasal and clipped. "You again, eh? Whaddya want this time?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #3077 /* ~"'You again'? What do you mean?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10238 /* ~"You've got my eye, right? I'd like to buy it back from you."~ */ GOTO 11
  IF ~~ THEN REPLY #10239 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #10240 /* ~"What is this place?"~ */ GOTO 13
  IF ~~ THEN REPLY #10241 /* ~"What can you tell me of the patrons here?"~ */ GOTO 15
  IF ~~ THEN REPLY #10242 /* ~"I want something to drink."~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10243 /* ~"I'm looking for a journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10244 /* ~"I'm looking for Pharod, the Collector."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur the auctioneer wanted you to post this handbill."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68055 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10245 /* ~"Back again? What now?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10246 /* ~"When I first spoke to you, you said 'you again?'. What did you mean by that?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10247 /* ~"You said you had my eye. I'd like it back now."~ */ GOTO 11
  IF ~~ THEN REPLY #10248 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #10249 /* ~"What is this place?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10250 /* ~"What can you tell me of the patrons here?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10251 /* ~"I want something to drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10252 /* ~"You won't be having trouble with Mochai again."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10253 /* ~"I want something to drink."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10254 /* ~"I'm looking for a journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10255 /* ~"I'm looking for Pharod, the Collector."~ */ GOTO 30
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10256 /* ~"What can you tell me of the patrons here?"~ */ GOTO 35
  IF ~  Global("Mochai_Dead_KAPUTZ","GLOBAL",1)
GlobalLT("Mochai","GLOBAL",3)
~ THEN REPLY #57941 /* ~"You won't be having trouble with Mochai again."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur the auctioneer wanted you to post this handbill."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68056 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.4 4.2 5.2 7.0 9.0 11.4 12.1 13.1 14.0 15.1 16.0 16.1 17.14 18.7 19.1 20.2 21.2 22.2 23.2 24.4 25.1 26.1 27.0 28.2 29.0 30.0 31.1 32.1 34.0 35.0
  SAY #10257 /* ~"Hurry it up, will you? I got paying customers."~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10258 /* ~"When I first spoke to you, you said 'you again?'. What did you mean by that?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10259 /* ~"You said you had my eye. I'd like to buy it back."~ */ GOTO 11
  IF ~~ THEN REPLY #10260 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #10261 /* ~"What is this place?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10262 /* ~"What can you tell me of the patrons here?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10263 /* ~"I want something to drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10264 /* ~"I took care of the tab-dodger."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10265 /* ~"I want something to drink."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10266 /* ~"I'm looking for a journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10267 /* ~"I'm looking for Pharod, the Collector."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Giltspur the auctioneer wanted you to post this handbill."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #45135 /* ~"What can you tell me of the patrons here?"~ */ GOTO 35
  IF ~~ THEN REPLY #57942 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0
  SAY #10269 /* ~"Yeah, 'you again'. You got a hearing problem or something now? You was in here 'bout fifteen years ago, got all bubbed up, smashed up the place, and left a pile o' coin that wasn't enough to pay for the damages. So you plucked out your own bleedin' eyeball and tells me you'll be back to reclaim it when you got two hundred coins together. With fifteen years of interest, you got about five hundred coins. You got the jink, pal, I got your eye."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10270 /* ~"Five hundred? That's ridiculous!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10271 /* ~"Five hundred? That's ridiculous!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10272 /* ~"Five hundred? All right. Here."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10273 /* ~"I don't have that much."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10274 /* ~"Not interested right now. Answer some other questions for me instead."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10275 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #10276 /* ~He pauses for a moment, considering. "That it is. Tell you what. Give me three hundred, and the eye's yours."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #10277 /* ~"It's a deal. Here's your money."~ */ DO ~TakePartyGold(300)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(300)
~ THEN REPLY #10278 /* ~"I still can't afford it."~ */ GOTO 7
  IF ~~ THEN REPLY #10279 /* ~"Forget it. Give me some answers to other questions, instead."~ */ GOTO 2
  IF ~~ THEN REPLY #10280 /* ~"Forget it. I'll be back later."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 11.1
  SAY #10281 /* ~"That's the price. Take it or pike it."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10282 /* ~"Fine, I'll take it."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10283 /* ~"I don't have that much."~ */ GOTO 7
  IF ~~ THEN REPLY #10284 /* ~"Forget it. Answer some other questions for me instead."~ */ GOTO 2
  IF ~~ THEN REPLY #10285 /* ~"I'll pike it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0 11.2
  SAY #10286 /* ~"It's a deal." He produces a darkened, wax-stoppered, wide-mouth bottle from his pocket. You hear the sound of liquid sloshing around inside it, along with a heavier, squishier noise. Opening it, the stench of some sort of preservative agent nearly makes you gag. Floating in the viscid muck is an eyeball. "You'd better figure out what you want to do with that... now you've exposed it to the air, you might as well put a pickled egg in the jar for all the good it'll do you. Make up your mind, cutter... pickled egg or not?" ~ */
  IF ~  HPGT(Protagonist,15)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10287 /* ~Tear out your eyeball and place this one in the socket.~ */ DO ~GiveExperience(Protagonist,1000)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPGT(Protagonist,15)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10288 /* ~Tear out your eyeball and place this one in the socket.~ */ DO ~GiveExperience(Protagonist,750)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #10289 /* ~Tear out your eyeball and place this one in the socket.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 10
  IF ~~ THEN REPLY #10290 /* ~Watch it rot.~ */ GOTO 25
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.1 5.1 11.3
  SAY #10291 /* ~"Then you're not getting your eye back. Make sense? Come talk to me when you've got the jink."~ */
  IF ~~ THEN REPLY #10292 /* ~"Very well. Answer some other questions for me, then."~ */ GOTO 2
  IF ~~ THEN REPLY #10293 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1
  SAY #10294 /* ~With a moment's hesitation, you reach into your socket and pop your eye into the palm of your hand. The bartender helpfully severs the optic nerve, and directs your hand to the jar of goo that sits on the bar. You deposit your eye in the preservative, wrap your fingers around the old one, and slide it into your empty socket. The pain of this entire operation is incredible. After a moment, though, you can feel the optic nerve reattaching itself to this new eye... and suddenly, you are hit by a flash of memory!~ */
  IF ~~ THEN REPLY #10295 /* ~Absorb it.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10296 /* ~Memory flash: A vast expanse of chaotic, ever-changing wasteland stretching before you, a group of humanoid vultures plummeting toward you, cruel weapons ready to strike, and your own shining blade clutched tight in your fist... 

Memory flash: Three toughs surround you, in the colors of an enemy you can't quite place. Long daggers glisten in their hands, and the light glints cruelly from their exposed teeth. You glance at your scarred hands, and know that soon they'll be covered in blood... 

Memory flash: An enormous frog-like creature comes bounding over/through/under chaos-stuff, headed for you with a mouth full of teeth. You hurl your javelin through the shifting matter and pin the creature to a sudden stone plinth... You have recalled some of your lost fighting skills.~ */
  IF ~~ THEN REPLY #10297 /* ~Ask more questions of Barkis.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ GOTO 2
  IF ~~ THEN REPLY #10298 /* ~Leave.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #10299 /* ~You dig in your eye socket. The pain is intense, incredible, and you are suddenly overwhelmed by it. You fall to the ground, bleeding from your freshly opened socket. You have died.~ */
  IF ~~ THEN REPLY #10300 /* ~Done.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1 1.1 2.1
  SAY #10301 /* ~"You want it back? Price is five hundreds coins. You don't got it, you don't get it."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10302 /* ~"Five hundred? That's ridiculous!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10303 /* ~"Five hundred? That's ridiculous!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10304 /* ~"Five hundred? All right. Here."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10305 /* ~"I don't have that much."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10306 /* ~"Not interested right now. Answer some other questions for me instead."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10307 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 1.2 2.2
  SAY #10308 /* ~"Me? I'm Barkis. Owner and keeper of this place."~ */
  IF ~~ THEN REPLY #10309 /* ~"What is this place?"~ */ GOTO 13
  IF ~~ THEN REPLY #10310 /* ~"Then you're the person to ask questions of."~ */ GOTO 2
  IF ~~ THEN REPLY #10311 /* ~"Nice place. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.3 1.3 2.3 12.0
  SAY #10312 /* ~"Didn't you see the sign out front? Didn't you see the berk burning over the furnace when you came in? It's the Smoldering Corpse, cutter, best damn bub-house in Sigil. At least, it's the best damn bub-house in this part o' the Hive, which makes it one of the best in Sigil. Hell, they got fancy places with plants and such in the Lady's Ward, and they got fiendish taverns salted around the rest o' the Hive, but none of 'em got the character of the Smoldering Corpse."~ */
  IF ~~ THEN REPLY #10313 /* ~"Who is the corpse, anyway?"~ */ GOTO 14
  IF ~~ THEN REPLY #10314 /* ~"I see. Tell me something else, will you?"~ */ GOTO 2
  IF ~~ THEN REPLY #10315 /* ~"True in more ways than one. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #10316 /* ~"Him? Ignus. He used to be a flame-wizard, burned down pieces of the Hive, and got himself scragged by a bunch of other mages. You want to know more about him, go talk to Drusilla down there by the door."~ */
  IF ~~ THEN REPLY #10317 /* ~"All right. I'd like to know more about something else, though."~ */ GOTO 2
  IF ~~ THEN REPLY #10318 /* ~"Very well, I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.4 1.4 2.4
  SAY #10319 /* ~"I don't make it a point to interfere with the lives of the people who give me their hard-earned jink unless they ask me to. So. Over there is Candrian. Planewalker. He's a good one to talk to about any planewalking questions you might have - he's been pretty much everywhere. Down there is Ebb Creakknees, an old Harmonium basher - don't hold that against him - and a tout. He's got a good heart in him, and he knows Sigil up and down. Them fiends over there are Aethelgrin and Tegar'in. Word of advice: Don't deal with 'em. They might be low-rankers in the fiend hierarchy, but they're still fiends. Then you got Ilquix over there - NOT trustworthy - and some Mercykillers looking for some poor sod. Dak'kon the githzerai is a mystery to me. Don't know much about him. He don't talk much. Finally - you interested in earning some free bub?"~ */
  IF ~~ THEN REPLY #10320 /* ~"Yes."~ */ GOTO 16
  IF ~~ THEN REPLY #10321 /* ~"Not really. Answer some other questions for me, will you?"~ */ GOTO 2
  IF ~~ THEN REPLY #10323 /* ~"No. I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10322 /* ~"There's a bubber over against the far wall, hanging about in the shadows, who's been trying to work up her courage to slip out without covering her tab. I want you to make sure she don't do that. You do it, you got free bub here for life."~ */
  IF ~~ THEN REPLY #10324 /* ~"I'll do it. Answer me some questions, first."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10325 /* ~"I'd rather not. Answer some questions for me, instead."~ */ GOTO 2
  IF ~~ THEN REPLY #10326 /* ~"I'll do it. I'll let you know when I'm done."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #10327 /* ~"No, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 0.5 1.5 2.5 19.0 20.0 21.0 22.0 23.0 24.1 24.2 28.0
  SAY #10328 /* ~"Whaddya want? We got your basic beer for a copper, bitters for two, mead for four. We got water straight from the Elemental Plane for eight copper, we got Arborean firewine and fireseeds for ten, Curst heartwine for eight, and Baator's own whiskey for twenty. What'll you have?"~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10329 /* ~"Beer."~ */ DO ~TakePartyGold(1)
~ GOTO 20
  IF ~  PartyGoldLT(1)
~ THEN REPLY #10330 /* ~"Beer."~ */ GOTO 19
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10331 /* ~"Bitters."~ */ DO ~TakePartyGold(2)
~ GOTO 20
  IF ~  PartyGoldLT(2)
~ THEN REPLY #10332 /* ~"Bitters."~ */ GOTO 19
  IF ~  PartyGoldGT(3)
~ THEN REPLY #10333 /* ~"Mead."~ */ DO ~TakePartyGold(4)
~ GOTO 20
  IF ~  PartyGoldLT(4)
~ THEN REPLY #10334 /* ~"Mead."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10335 /* ~"Water."~ */ DO ~TakePartyGold(8)
~ GOTO 21
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10336 /* ~"Water."~ */ GOTO 19
  IF ~  PartyGoldGT(9)
~ THEN REPLY #10337 /* ~"Firewine and fireseeds."~ */ DO ~TakePartyGold(10)
~ GOTO 22
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10338 /* ~"Firewine and fireseeds."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10340 /* ~"Heartwine."~ */ DO ~TakePartyGold(8)
~ GOTO 23
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10341 /* ~"Heartwine."~ */ GOTO 19
  IF ~  PartyGoldGT(19)
~ THEN REPLY #10342 /* ~"Whiskey."~ */ DO ~TakePartyGold(20)
~ GOTO 24
  IF ~  PartyGoldLT(20)
~ THEN REPLY #10343 /* ~"Whiskey."~ */ GOTO 19
  IF ~~ THEN REPLY #10344 /* ~"Information."~ */ GOTO 2
  IF ~~ THEN REPLY #10345 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.7 2.7 20.1 21.1 22.1 23.1 24.3 28.1 32.0
  SAY #10339 /* ~"You want a drink, you got a drink. This is what we got for you: Beer, bitters, mead, Elemental water, Arborean firewine and fireseeds, Curst heartwine, and Baatorian whiskey. What'll it be?"~ */
  IF ~~ THEN REPLY #10346 /* ~"Beer."~ */ GOTO 20
  IF ~~ THEN REPLY #10347 /* ~"Bitters."~ */ GOTO 20
  IF ~~ THEN REPLY #10348 /* ~"Mead."~ */ GOTO 20
  IF ~~ THEN REPLY #10349 /* ~"Water."~ */ GOTO 21
  IF ~~ THEN REPLY #10350 /* ~"Firewine and fireseeds."~ */ GOTO 22
  IF ~~ THEN REPLY #10351 /* ~"Heartwine."~ */ GOTO 23
  IF ~~ THEN REPLY #10352 /* ~"Whiskey."~ */ GOTO 24
  IF ~~ THEN REPLY #10353 /* ~"Information."~ */ GOTO 2
  IF ~~ THEN REPLY #10354 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.3 17.5 17.7 17.9 17.11 17.13
  SAY #10355 /* ~The barkeep scowls at you. "You ain't got the jink to pay for that. You don't get a tab, either. I been burned too many times recently. You want something else?"~ */
  IF ~~ THEN REPLY #10356 /* ~"What do you have to drink?"~ */ GOTO 17
  IF ~~ THEN REPLY #10357 /* ~"Yes. Information."~ */ GOTO 2
  IF ~~ THEN REPLY #10358 /* ~"No, sorry."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.2 17.4 18.0 18.1 18.2
  SAY #10359 /* ~You quaff the weak drink. The flavor isn't exactly bold, but it's filling, and it's alcoholic. It doesn't seem to do anything else for you. "What'll it be, cutter?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10360 /* ~"Give me another drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10361 /* ~"Give me another drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10362 /* ~"Answer some questions for me."~ */ GOTO 2
  IF ~~ THEN REPLY #10363 /* ~"Nothing."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.6 18.3
  SAY #10364 /* ~He moves back to a keg on the wall and turns the spigot. The clearest water you have ever seen pours from the nozzle into the glass he holds underneath it. He sets it down in front of you, and you take a deep draught. It is the purest thing you have ever tasted, a coldness inherent to the water itself, a feeling of air that passes over your tongue and into your stomach, where its coolness calms even the raging of your passions for a moment. "From the heart of the Elemental Plane of Water." Barkis snorts. "Any other water you ever drink's going to taste dirty by comparison."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10365 /* ~"Give me another drink!"~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10366 /* ~"That was great. Give me another drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10367 /* ~"In that case, I'd just like to ask some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10368 /* ~"Quite an experience. My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.8 18.4
  SAY #10369 /* ~He passes you a glass of deepest red wine and a handful of brightly-colored seeds. "Stick the seeds in your mouth," he advises, "and take a swig of the wine. Don't be surprised when the seeds catch fire; they won't do you any harm. It's a taste like no other." He's right. When you pop a seed into your mouth, it mingles with your saliva and bursts into a tiny flame. You quench it with a swallow of firewine, and the taste is indescribable. Barkis smiles. "You want another?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10370 /* ~"Hells, yes. Give me another drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10371 /* ~"Keep 'em coming."~ */ GOTO 18
  IF ~~ THEN REPLY #10372 /* ~"Not right now, thanks. I would like to ask some questions instead."~ */ GOTO 2
  IF ~~ THEN REPLY #10373 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.10 18.5
  SAY #10374 /* ~He passes you a glass of Curst's famous heartwine. The bouquet is breathtaking, and the wine itself is full-bodied and fruity. The aftertaste leaves nothing to be desired. "Made from real razorvine, that is. Wish I knew the secret." The barkeeper nods at the empty glass. "You want another?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10375 /* ~"I certainly do."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10376 /* ~"I certainly do."~ */ GOTO 18
  IF ~~ THEN REPLY #10377 /* ~"No, but I would like some answers."~ */ GOTO 2
  IF ~~ THEN REPLY #10378 /* ~"No, thank you."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.12 18.6
  SAY #10379 /* ~He places a shot of some steaming substance that looks like boiling urine in front of you. The fumes that waft your way, however, are exquisitely tempting. The taste, though nearly unbearably hot, is as smoky as the scent - the feel of the liquor burning its way to your gut is nearly painful, yet even this pain is sweet. The barkeep's eyes widen. "Still standing? Most folks can't even make it halfway through the first shot."~ */
  IF ~~ THEN REPLY #10380 /* ~"I feel fine. I don't even feel anything."~ */ GOTO 28
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10381 /* ~"Give me another drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10381 /* ~"Give me another drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10382 /* ~"Give me another drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10383 /* ~"I've got a good tolerance. Answer a question for me, will you?"~ */ GOTO 2
  IF ~~ THEN REPLY #10384 /* ~"Most folks can't do what I can. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.3
  SAY #10385 /* ~The eye decomposes before your very eyes, leaking a viscous ooze that raises a stink filling your nostrils and fouling the air around you. The barkeep waves his hand in front of his face to dispel the fumes and says, "That was a waste of money. You want anything else?"~ */
  IF ~~ THEN REPLY #10386 /* ~"My money back. Now."~ */ GOTO 26
  IF ~~ THEN REPLY #10387 /* ~"Just the answers to some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10388 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #10389 /* ~"Berk, just because you decided you didn't want to do anything with your purchase doesn't mean that it's my fault it's gone. You wanted to use the eye for something, you should've pulled that old eye trick like you did before. It ain't my problem."~ */
  IF ~~ THEN REPLY #10390 /* ~"It will be if I kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Barkis_One","GLOBALGood",-1)
~ GOTO 27
  IF ~~ THEN REPLY #10391 /* ~"No, I guess not. Answer some questions for me, then."~ */ GOTO 2
  IF ~~ THEN REPLY #10392 /* ~"Maybe it will be later. Good day."~ */ EXIT
  IF ~~ THEN REPLY #10393 /* ~"No, I suppose not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #10394 /* ~He smiles crookedly. "I dare you."~ */
  IF ~~ THEN REPLY #10395 /* ~"Forget it. Answer some questions instead."~ */ GOTO 2
  IF ~~ THEN REPLY #10396 /* ~"Forget it."~ */ EXIT
  IF ~~ THEN REPLY #10397 /* ~Attack him.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.0
  SAY #10398 /* ~The barkeep considers you carefully, resting his chin on his hand. "Y'know, cutter, there's some as have a natural immunity to poisons and such. Some folks call bub a poison. If that's the case, chances are good you got yourself a handy little defense against poisoners."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10399 /* ~"Well, how about that... Give me another drink anyway."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10400 /* ~"Well, how about that... Give me another drink anyway."~ */ GOTO 18
  IF ~~ THEN REPLY #10401 /* ~"That ought to come in handy. Answer a question for me, will you?"~ */ GOTO 2
  IF ~~ THEN REPLY #10402 /* ~"Good. My thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.6 1.8 2.8
  SAY #10403 /* ~"A journal? Paper and words? Friend, that sort of thing don't get much stock down here in the Hive. Folks here can barely read the sign above the door, much less an entire journal. If you're looking for a journal, you'd do better to have a system, instead of asking folks willy-nilly."~ */
  IF ~~ THEN REPLY #10404 /* ~"Thanks for the unasked-for advice. Answer a different question, then."~ */ GOTO 2
  IF ~~ THEN REPLY #10405 /* ~"Very well. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 0.7 1.9 2.9
  SAY #10406 /* ~He turns and spits on the floor. "Pharod? Pah. You may as well just turn your back and let him sink a dagger in it. Though from the looks of you, you already have. If you're dead set on finding Pharod - pardon the pun - talk to Ebb Creakknees over there. He should know something of value."~ */
  IF ~~ THEN REPLY #10407 /* ~"I'll do that, then, right after you answer some more questions for me."~ */ GOTO 2
  IF ~~ THEN REPLY #10408 /* ~"Ebb? The old man? My thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.6 1.11 2.6
  SAY #10409 /* ~"Then, friend, you have full bar privileges... for free. Anything you want, anytime."~ */
  IF ~~ THEN REPLY #10410 /* ~"That must have been a pretty big tab she ran up."~ */ GOTO 32
  IF ~~ THEN REPLY #10411 /* ~"Thanks. A few more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #10412 /* ~"I'll take you up on that later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #10413 /* ~"You don't know the half of it. You want a drink now?"~ */
  IF ~~ THEN REPLY #10414 /* ~"Set me up."~ */ GOTO 18
  IF ~~ THEN REPLY #10415 /* ~"Right now what I'm looking for is information."~ */ GOTO 2
  IF ~~ THEN REPLY #10416 /* ~"No. But I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #10417 /* ~"Fireseeds, coming up!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.8 1.12 2.10
  SAY #45136 /* ~"Giltspur, eh? Lemme take a look at that." He takes the handbill from you and looks it over. He frowns at it, and says, "All right. Tell him I'll put it up. Anything else you wanted?"~ */
  IF ~~ THEN REPLY #45137 /* ~"Just a few more answers..."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ GOTO 2
  IF ~~ THEN REPLY #45138 /* ~"Nothing more, thanks. Farewell."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.10 2.11
  SAY #57943 /* ~He gives you a quizzical look. "We already went over all that, didn't we? You want anything else that I haven't already told you?"~ */
  IF ~~ THEN REPLY #57944 /* ~"Just answer some questions for me."~ */ GOTO 2
  IF ~~ THEN REPLY #57945 /* ~"No. Farewell."~ */ EXIT
END
