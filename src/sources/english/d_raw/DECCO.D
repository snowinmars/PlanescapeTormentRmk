// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DECCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DECCO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 25 26 37 45 46 even though they appear after this state */
~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN BEGIN 0 // from:
  SAY #38209 /* ~This striking young woman has skin the color of burnished copper. A translucent white dress, held precariously by golden clasps, is draped carefully over her shapely form.~ */
  IF ~  Global("Ecco","GLOBAL",0)
~ THEN REPLY #38269 /* ~"Greetings..."~ */ DO ~SetGlobal("Ecco","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Ecco","GLOBAL",1)
~ THEN REPLY #38270 /* ~"Greetings, again..."~ */ GOTO 1
  IF ~~ THEN REPLY #38271 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #2909 /* ~The woman nods and smiles briefly. The scent of her hair, sweetly perfumed, fills your nostrils.~ */
  IF ~~ THEN REPLY #38272 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38273 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 5.1 6.4 7.1 10.6 11.1 12.1 13.1 14.1 15.1 16.1 25.0 29.0 30.0 40.0 41.0 42.0 43.1 44.0 45.0 46.0 47.1 49.0 51.1 52.1 53.1 54.0 55.0
  SAY #2910 /* ~She nods.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38274 /* ~"Is your name 'Ecco'?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~I confirmed that the 'silent' prostitute's name is 'Ecco.'~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalLT("Ecco_Rumor_6","AR0605",2)
~ THEN REPLY #38276 /* ~"May I ask why you can't communicate?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38278 /* ~"Do you know of *any* way to return your voice?"~ */ GOTO 21
  IF ~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN REPLY #38279 /* ~"Who are you?"~ */ GOTO 3
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38283 /* ~"What are you doing here?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38284 /* ~"Can you tell me about this place?"~ */ GOTO 47
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38285 /* ~"Can you tell me about this place?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
Global("Know_Kesai_Ravel","AR0605",0)
~ THEN REPLY #38286 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 48
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #38287 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38290 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ JOURNAL #66727 /* ~One of the prostitutes suggested that I ask Nenny if she knows anything about who took Vivian's personal scent. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38291 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 29
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38292 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ JOURNAL #66728 /* ~One of the prostitutes suggested that I ask Nenny if she's seen Marissa's Crimson Veil anywhere. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38293 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 29
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38294 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 53
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38295 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 54
  IF ~~ THEN REPLY #38296 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3
  SAY #38210 /* ~She smiles and curtseys, but offers no response.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38280 /* ~"Is your name 'Ecco'?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~I confirmed that the 'silent' prostitute's name is 'Ecco.'~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38297 /* ~"Can you speak?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38281 /* ~"Hmm. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38298 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.0 6.3 9.0 53.0
  SAY #38211 /* ~She shakes her head and smiles sadly at you.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN JOURNAL #66704 /* ~One of the prostitutes I met at the Brothel has somehow lost her ability to communicate... she can't - or won't - even write or pantomime. Until she can speak again, I won't be able to question her...~ */ EXTERN ~DMORTE~ 402
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38299 /* ~"Can you write, then, or pantomime?"~ */ JOURNAL #66704 /* ~One of the prostitutes I met at the Brothel has somehow lost her ability to communicate... she can't - or won't - even write or pantomime. Until she can speak again, I won't be able to question her...~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 2.6
  SAY #38212 /* ~She looks at you, then raises an eyebrow.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38300 /* ~"Can you speak?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38301 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38302 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 21.1
  SAY #38213 /* ~She nods, smiling pleasantly.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38303 /* ~Vow: "I swear I'll look for a way to return your voice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38304 /* ~"I'll try to find a way to return your voice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38305 /* ~"I can try to return your voice... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38306 /* ~"Can you speak?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38307 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #52815 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #38214 /* ~She pouts, shaking her head.~ */
  IF ~~ THEN REPLY #38308 /* ~"May I ask why you can't communicate?"~ */ GOTO 10
  IF ~~ THEN REPLY #38309 /* ~"Just the same, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38310 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.8
  SAY #38215 /* ~Her eyes flash and she smiles. She nods at you.~ */
  IF ~~ THEN REPLY #38311 /* ~"What? What do you know of her?"~ */ JOURNAL #66724 /* ~The silent prostitute seems to know something of Ravel Puzzlewell... but as she cannot communicate, she cannot tell me what it is.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38216 /* ~She simply looks at you.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38312 /* ~"Can you speak?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #38313 /* ~"May I ask why you can't communicate?"~ */ GOTO 10
  IF ~~ THEN REPLY #38314 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 7.0 9.1 11.0 12.0 13.0 14.0 15.0
  SAY #38217 /* ~She sighs softly and nods.~ */
  IF ~  Global("Ecco_Rumor_1","AR0605",1)
~ THEN REPLY #38315 /* ~"Are you silent because of a broken heart?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",2)
~ GOTO 11
  IF ~  Global("Ecco_Rumor_2","AR0605",1)
~ THEN REPLY #38316 /* ~"Do you know the word that will undo the multiverse if it's spoken?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",2)
~ GOTO 12
  IF ~  Global("Ecco_Rumor_3","AR0605",1)
~ THEN REPLY #38317 /* ~"Are you emotionally wounded? Is that why you can't speak?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",2)
~ GOTO 13
  IF ~  Global("Ecco_Rumor_4","AR0605",1)
~ THEN REPLY #38318 /* ~"Did your voice cause someone's death or some other tragedy?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",2)
~ GOTO 14
  IF ~  Global("Ecco_Rumor_5","AR0605",1)
~ THEN REPLY #38319 /* ~"Have you sworn never to speak for one reason or another?"~ */ DO ~SetGlobal("Ecco_Rumor_5","AR0605",2)
~ GOTO 15
  IF ~  Global("Ecco_Rumor_6","AR0605",1)
~ THEN REPLY #38320 /* ~"Was your voice stolen?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",2)
SetGlobal("Ecco_Speak","GLOBAL",2)
~ JOURNAL #66725 /* ~It appears that what Dolora told me of Ecco was correct - she cannot speak because her voice was stolen.~ */ GOTO 16
  IF ~~ THEN REPLY #38321 /* ~"Actually, let me ask you about something else..."~ */ GOTO 2
  IF ~~ THEN REPLY #38322 /* ~"Never mind; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38218 /* ~She smiles pleasantly, then shakes her head.~ */
  IF ~~ THEN REPLY #38323 /* ~"May I ask if it was something else, then?"~ */ GOTO 10
  IF ~~ THEN REPLY #38324 /* ~"I had other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38325 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #38219 /* ~Her eyes widen in surprise... then she gives you a beaming smile, rolling her eyes and shaking her head.~ */
  IF ~~ THEN REPLY #38326 /* ~"May I ask if it was something else, then?"~ */ GOTO 10
  IF ~~ THEN REPLY #38327 /* ~"I had other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38328 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #38220 /* ~She looks at you strangely and shakes her head slowly...~ */
  IF ~~ THEN REPLY #38329 /* ~"May I ask if it was something else, then?"~ */ GOTO 10
  IF ~~ THEN REPLY #38330 /* ~"I had other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38331 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #38221 /* ~She pauses at this, opens her mouth, then frowns. After a moment, she shakes her head.~ */
  IF ~~ THEN REPLY #38332 /* ~"May I ask if it was something else, then?"~ */ GOTO 10
  IF ~~ THEN REPLY #38333 /* ~"I had other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38334 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #38222 /* ~She scowls and shakes her head.~ */
  IF ~~ THEN REPLY #38335 /* ~"May I ask if it was something else, then?"~ */ GOTO 10
  IF ~~ THEN REPLY #38336 /* ~"I had other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38337 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.5
  SAY #38223 /* ~She nods vigorously, clasping her hands together and smiling at you.~ */
  IF ~~ THEN REPLY #38338 /* ~"Do you know of *any* way to get your voice back?"~ */ GOTO 21
  IF ~~ THEN REPLY #38339 /* ~"I had other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38340 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #38224 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #38225 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #38226 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38227 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.2 16.0
  SAY #38228 /* ~She shakes her head, her face wrought with frustration. She suddenly looks at you pleadingly, as if expecting an answer.~ */
  IF ~  Global("Ecco_Name","AR0605",0)
~ THEN REPLY #38349 /* ~"I'll need to know your name to ask about your voice..."~ */ GOTO 22
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38350 /* ~"I'll need to know your name to ask about your voice. Is it 'Ecco'?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~I confirmed that the 'silent' prostitute's name is 'Ecco.'~ */ GOTO 6
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38351 /* ~Vow: "I swear I'll look for a way to return your voice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38352 /* ~"I'll try to find a way to return your voice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38353 /* ~"I can try to return your voice... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~~ THEN REPLY #38354 /* ~"I'd... best be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #38229 /* ~She shrugs, frowning.~ */
  IF ~~ THEN REPLY #38357 /* ~"I'd best ask someone else, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.0 6.1 21.2 21.3
  SAY #38230 /* ~Ecco nods to you slowly, smiling at you with eyes full of gratitude.~ */
  IF ~~ THEN REPLY #38358 /* ~"I'll look for something that would give you a voice, then. Farewell, Ecco."~ */ JOURNAL #66726 /* ~I told Ecco that I would try to find something that would give her a voice again.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 6.2 21.4
  SAY #38231 /* ~Ecco frowns, narrowing her eyes at you. She looks away for a moment, sighs, and then nods to you.~ */
  IF ~~ THEN REPLY #38359 /* ~"It's a deal, then - I'll look for something that would give you a voice. Farewell."~ */ JOURNAL #66726 /* ~I told Ecco that I would try to find something that would give her a voice again.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 37 45 46 even though they appear after this state */
~  Global("Ecco_Name","AR0605",2)
~ THEN BEGIN 25 // from:
  SAY #38232 /* ~Ecco curtseys as you approach, her carefully painted lips forming the slightest of smiles.~ */
  IF ~~ THEN REPLY #38360 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38361 /* ~"Just passing by, Ecco. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 37 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #38233 /* ~Ecco looks at you hopefully as you approach her, biting her lower lip.~ */
  IF ~  PartyHasItem("Ftongue")
~ THEN REPLY #38362 /* ~"I've gotten this Fiend's Tongue for you..."~ */ DO ~DestroyPartyItem("Ftongue",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",4)
~ GOTO 31
  IF ~~ THEN REPLY #38364 /* ~"I still haven't found a way to give you a voice again. I'll return when I do."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38235 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.10 2.12
  SAY #38236 /* ~She shakes her head, shrugging, and gives you an apologetic look.~ */
  IF ~~ THEN REPLY #38368 /* ~"Let me ask about something else, then..."~ */ GOTO 2
  IF ~~ THEN REPLY #38369 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.9 2.11
  SAY #38237 /* ~Ecco shakes her head. "No, I've no idea. Have you spoken to Nenny? She's always wandering about, taking in everything with those wide eyes of hers."~ */
  IF ~~ THEN REPLY #38370 /* ~"I had other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38371 /* ~"I'll take my leave, now; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.0
  SAY #38238 /* ~She raises her eyebrow and gives you a skeptical look.~ */
  IF ~~ THEN REPLY #38372 /* ~"I'm told that, should you place it in your mouth, you'll regain the ability to communicate."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38239 /* ~She nods and takes the bottle from you. She gingerly picks out the severed tongue from the briny solution and, after staring at it for a moment in disgust, places it into her mouth... suddenly, her eyes widen, and there is a burst of reddish light from between her lips!~ */
  IF ~~ THEN REPLY #38373 /* ~"Are you all right?"~ */ GOTO 33
  IF ~~ THEN REPLY #38374 /* ~Wait for her response.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38240 /* ~Ecco opens her mouth, closes it, then open it once more... and speaks! "I... I can speak again! Oh, joy! I than-DAMN THEE TO THE DARKEST OF PITS, THOU STENCH-RIDDEN WORM! KNEEL BEFORE ME IN SUPPLICATION, INSECT!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 403
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38375 /* ~"Eh?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #38241 /* ~Ecco yelps and covers her mouth with both hands... her eyes are wide with panic.~ */
  IF ~~ THEN REPLY #38376 /* ~"It must be... the Fiend's Tongue..."~ */ JOURNAL #66729 /* ~I gave Ecco a Fiend's Tongue, which Vrischika told me would give any creature the ability to speak. However, it had less than satisfactory results... the tongue seems to have a lot to say and Ecco's not happy about it. Now I'll have to find something *else* which will remove the effects of the Fiend's Tongue... perhaps another visit to Vrischika's shop is in order.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38242 /* ~She slowly takes her hands away from her mouth, nodding. "It seems I must DEVOUR THY FRAIL SHELL AND CONSIGN THY SOUL TO THE ABYSS FOR ALL ETERNITY! THOU SHALT SERVE IN MY BATTLE-THRALL TILL THE PLANES GRIND TO A HALT! THOU ART MINE, MINE, MI-" Ecco shuts her mouth again, and begins to softly, quietly weep.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #66730 /* ~"Wait... try using these Deva's Tears... they should soothe the tongue's cursing."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~I gave Ecco the Deva's Tears, which soothed the Fiend's Tongue's cursing and allowed her to speak normally again. Now she'll be able to answer any questions I might have for her...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #66731 /* ~"Wait... I think I saw a way to help you at Vrischika's curiosity shop: Deva's Tears. They're expensive, though..."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~I told Ecco about the Deva's Tears I saw in Vrischika's shop, and she gave me a promissory note so that I might purchase them for her.~ */ GOTO 39
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",1)
~ THEN REPLY #38377 /* ~"I'll try and find a way to make things right - perhaps Vrischika will have something else than can help you. Farewell."~ */ EXIT
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38378 /* ~"Well, you can speak again... sort of... so where's my reward?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ecco_1","GLOBALLaw",-1)
~ GOTO 36
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38379 /* ~"I imagine I won't get my reward until I make this right. I'll be back... perhaps Vrischika will have something else than can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.3
  SAY #38243 /* ~Ecco glares daggers at you, lips curling into a sneer.~ */
  IF ~~ THEN REPLY #38380 /* ~"I imagine I won't be getting my reward until I make this right. I'll be back... perhaps Vrischika will have something else than can help you. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",4)
~ THEN BEGIN 37 // from:
  SAY #38244 /* ~Ecco nods as you approach her, a hopeful look in her eyes.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #38381 /* ~"I've brought you these Deva's Tears... they should soothe the tongue's cursing."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~I gave Ecco the Deva's Tears, which soothed the Fiend's Tongue's cursing and allowed her to speak normally again. Now she'll be able to answer any questions I might have for her...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38382 /* ~"Ecco... I've found a way to help you... Deva's Tears, at Vrischika's curiosity shop. They're expensive, though..."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~I told Ecco about the Deva's Tears I saw in Vrischika's shop, and she gave me a promissory note so that I might purchase them for her.~ */ GOTO 39
  IF ~~ THEN REPLY #38383 /* ~"I haven't found a way to help you, yet... I'll return when I do."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0 37.0
  SAY #38245 /* ~She nods, smiling, and takes the vial from you. Ecco places a few of the sparkling blue drops onto her tongue: "I... I believe the Tears are working. Yes... they are! I can speak in my own voice once more - oh, how I thank you!" Ecco squeezes your hand and bows her head gratefully, her eyes welling with tears of joy.~ */
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38384 /* ~"It was my pleasure to help. Farewell, Ecco."~ */ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38385 /* ~"It was my pleasure to help. Farewell, Ecco."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_2","GLOBALGood",1)
~ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"I'm happy to help... but the Deva's Tears cost me quite a bit..."~ */ DO ~GivePartyGold(1000)
~ GOTO 40
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38387 /* ~"My pleasure... and forget about the reward, Ecco. I'm glad I could help."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
GivePartyGold(1000)
~ GOTO 41
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38388 /* ~"My pleasure... and forget about the reward, Ecco. I'm glad I could help."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
~ GOTO 42
  IF ~  Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38389 /* ~"Yes, you're welcome... now about my reward..."~ */ DO ~GivePartyGold(500)
~ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 35.1 37.1
  SAY #38246 /* ~Ecco nods and produces a slip of paper from her clothes... it appears to be a promissory note in the amount of one thousand commons, which the possessor can collect upon from the Brothel. She gives you a questioning glance.~ */
  IF ~~ THEN REPLY #38390 /* ~"Yes... this will be enough. I'll be back when I have the Tears, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #38247 /* ~"Oh... I hadn't thought of that! Yes, yes... here..." Ecco pulls several parchment-wrapped rolls of copper coins from her purse. "This should be more than enough. And again, I thank you!" She smiles warmly at you.~ */
  IF ~~ THEN REPLY #66735 /* ~"Of course. I had some questions, now..."~ */ GOTO 2
  IF ~~ THEN REPLY #38391 /* ~"Farewell, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY #38248 /* ~Ecco beams with happiness: "Again, I thank you!" She stands close to whisper in your ear, the smell of her perfumed hair intoxicating... "Your appearance belies your great kindness, sir." She kisses you on the cheek and steps away from you, reaching into her purse. "Here, my friend... this should more than pay for whatever the Tears cost you. I insist you take it."~ */
  IF ~~ THEN REPLY #66736 /* ~"Thanks. I had some questions, now..."~ */ GOTO 2
  IF ~~ THEN REPLY #38392 /* ~"Thanks, Ecco. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.4
  SAY #38249 /* ~Ecco beams with happiness: "Again, I thank you!" She stands close to whisper in your ear, the smell of her perfumed hair intoxicating... "Your appearance belies your great kindness, sir." She kisses you on the cheek and steps away from you, smiling.~ */
  IF ~~ THEN REPLY #66737 /* ~"Thanks. I had some questions, now..."~ */ GOTO 2
  IF ~~ THEN REPLY #38393 /* ~"Thanks, Ecco. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 38.5
  SAY #38250 /* ~Ecco nods, wiping the last of her tears away. She reaches into her purse and presents several rolls of parchment-wrapped copper coins to you. "Your reward, sir... and justly deserved."~ */
  IF ~  Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"I'm happy to help... but the Deva's Tears cost me quite a bit..."~ */ DO ~GivePartyGold(999)
SetGlobal("Ecco","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #66738 /* ~"Thanks. I had some questions, now..."~ */ GOTO 2
  IF ~~ THEN REPLY #38395 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #38251 /* ~She nods. "Of course." Her voice is entirely flat. "Here you are." She hands you several more rolls of coin.~ */
  IF ~~ THEN REPLY #66739 /* ~"Thanks. I had some questions, now..."~ */ GOTO 2
  IF ~~ THEN REPLY #38396 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",5)
GlobalLT("Ecco","GLOBAL",3)
~ THEN BEGIN 45 // from:
  SAY #38252 /* ~Ecco waves pleasantly to you as you approach her. "Greetings, sir, and well met once more!"~ */
  IF ~~ THEN REPLY #38397 /* ~"Hello, Ecco... I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38398 /* ~"Well met, Ecco. I was just passing by; farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ecco_Speak","GLOBAL",5)
Global("Ecco","GLOBAL",3)
~ THEN BEGIN 46 // from:
  SAY #38253 /* ~Ecco nods coolly to you as you approach.~ */
  IF ~~ THEN REPLY #38399 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38400 /* ~"Just passing by. Farewell, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.5
  SAY #38254 /* ~"The Brothel is a school of sorts, where young women... the 'prostitutes'..." She gives a wry smile. "...study the art of language and its subtleties, as our Mistress Grace might say, generally en route to becoming Sensates. The Brothel runs on the donations of its many patrons, who come here seeking something more than base, physical pleasure in the company of a woman."~ */
  IF ~~ THEN REPLY #38401 /* ~"Sensates?"~ */ GOTO 55
  IF ~~ THEN REPLY #38402 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #38403 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 2.7
  SAY #38255 /* ~Ecco nods, and lowers her voice: "In fact, I do... not only does she exist, she has *children!*"~ */
  IF ~~ THEN REPLY #38404 /* ~"She *what?*"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~Ecco told me that Ravel actually has living children... and that one of the Brothel's prostitutes, Kesai-Serris, is one of them. She also told me that Kesai refuses "to accept the fact," however, and isn't willing to admit to it.~ */ GOTO 49
  IF ~~ THEN REPLY #38405 /* ~"Where would I find them?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~Ecco told me that Ravel actually has living children... and that one of the Brothel's prostitutes, Kesai-Serris, is one of them. She also told me that Kesai refuses "to accept the fact," however, and isn't willing to admit to it.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #38256 /* ~"One of them is here, at times... Kesai-Serris. She is a child of Ravel's, though she is loathe to accept the fact. Who could blame her?" She pauses for a moment, thinking. "I have never gotten her to admit it, though I am sure 'tis true."~ */
  IF ~~ THEN REPLY #38406 /* ~"Interesting. I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #38407 /* ~"Fascinating. Thanks, Ecco; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #38257 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.4
  SAY #38258 /* ~"I am a student, here, as are all the 'prostitutes.' We seek to better learn the art of language in order to stimulate the minds... to heighten our awareness of ourselves and others, and to create new ways of experiencing another person." She pauses, lost in thought.~ */
  IF ~~ THEN REPLY #38411 /* ~"Go on..."~ */ GOTO 52
  IF ~~ THEN REPLY #38412 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #38413 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #38259 /* ~"Well... I've been without the ability to speak for so *long.* Most patrons came to me seeking someone to listen, someone attentive and capable of understanding them that they could speak to, free of interruption and the like. Now that I can speak once more, I wonder if the time has come for me to move on... leave the Brothel, and become a Sensate."~ */
  IF ~~ THEN REPLY #38414 /* ~"A Sensate?"~ */ GOTO 55
  IF ~~ THEN REPLY #38415 /* ~"Interesting. Let me ask you something else..."~ */ GOTO 2
  IF ~~ THEN REPLY #38416 /* ~"Perhaps. Farewell, Ecco."~ */ EXIT
  IF ~~ THEN REPLY #38417 /* ~"I wish you the best in whatever path you choose, Ecco. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.13
  SAY #38260 /* ~She looks at you, puzzled, before shaking her head.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38418 /* ~"Can you speak?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38419 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38420 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 2.14
  SAY #38261 /* ~Ecco looks puzzled. "I... know of no tenth student. Perhaps she is new? If there is another, I have not met her."~ */
  IF ~~ THEN REPLY #38421 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38422 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.0 52.0
  SAY #38262 /* ~"A member of the Society of Sensation. Ask Fall-from-Grace, or someone at the Civic Festhall, if you would know more of them."~ */
  IF ~~ THEN REPLY #38423 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #38424 /* ~"That's all I wished to know; farewell."~ */ EXIT
END
