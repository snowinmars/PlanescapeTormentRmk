// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTLE~

IF ~  Global("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 0 // from:
  SAY #2968 /* ~You see a wall-eyed fellow whose skin seems to writhe and ripple across his entire body. He is smacking his chapped lips with a blotched tongue. As you watch, his right eye moves independently of the left, focusing on you. A second later, the left one flicks to look your way, then reverts to its original position. The right eye blinks. A strange gurgling comes from his throat.~ */
  IF ~~ THEN REPLY #2969 /* ~"Greetings..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",1)
~ GOTO 1
  IF ~~ THEN REPLY #42001 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42002 /* ~The man gives a lop-sided grin and points at himself with his right thumb. "Pestle, I'm called, the - *gugh!* - alchemist." He points at himself again, this time with his left index finger. "Da name's Kilnn. *Hgrk!* Need ye somethin'?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42003 /* ~"Are you all right?"~ */ GOTO 4
  IF ~~ THEN REPLY #42004 /* ~"What are you selling?"~ */ GOTO 2
  IF ~~ THEN REPLY #42005 /* ~"Yes, I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #42006 /* ~"No, that's all right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #42007 /* ~"*Hugahk!*" His left hand darts out and jabs the surface of the counter, the hair of his forearm writhing and twisting about as he does so. There is a series of scrawls written on it - a list of prices written next to a number of items. You notice that a number of healing concoctions and charms seem to be available.~ */
  IF ~~ THEN REPLY #42008 /* ~"I'd like to purchase something..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42009 /* ~"Are you all right?"~ */ GOTO 4
  IF ~~ THEN REPLY #42010 /* ~"I had some questions, actually..."~ */ GOTO 3
  IF ~~ THEN REPLY #42011 /* ~"Nothing I need, really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.2 4.1 5.1 6.1 7.0 8.3
  SAY #42012 /* ~Half of his mouth curls downward into a frown; he shakes his head. "Work in da stock-room all day, I do. *Gaaaahk!*" He shudders violently; suddenly, a third eye pops open over the bridge of his nose... the left one shift sideways as the new eye takes its place. "I speak only of the - *fnahk!* - store, sir." That said, the skin of his face seems to 'eat' the new eye, and the left one returns to its old location.~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42013 /* ~"Are you all right?"~ */ GOTO 4
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42014 /* ~"The old engineer in the Foundry tells me I need to get a sample of my blood and skin for his machine to work. I need you to do that for me."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 12
  IF ~~ THEN REPLY #42015 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.0 8.1 12.0
  SAY #42016 /* ~"Aye, I am. *Hgak!*" His throat convulses for a moment, then relaxes. A large, green-glowing pustule suddenly bursts from the side of his neck. "Something ye needed then, sir? *Ghok!*" His throat clenches again, and a wave of quivering flesh swallows the blistering green pustule back beneath the skin of his throat. He coughs violently for a moment, then seems to relax. "Phew."~ */
  IF ~~ THEN REPLY #42017 /* ~"May I ask what happened to you?"~ */ GOTO 5
  IF ~~ THEN REPLY #42018 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #42019 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42020 /* ~The left eye rolls upward in exasperation. The right eye looks askance. "Too much ta drink."~ */
  IF ~~ THEN REPLY #42021 /* ~"Too much of *what,* though?"~ */ GOTO 6
  IF ~~ THEN REPLY #42022 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #42023 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42024 /* ~"Potions, I drank. Too many potions. *Fgaohg!*" His mouth slides down beneath his chin; his left nostril forms another one. "Da most *I* ever drank, dat's for certain! Of polymorphin', dey were, an' brewed... *Hgrk!* ... in Limbo."~ */
  IF ~~ THEN REPLY #42025 /* ~"Anything I could do to help?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_PK_1","GLOBALGood",1)
SetGlobal("Pestle_Kilnn","AR0612",2)
SetGlobal("PK_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #42026 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #42027 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42028 /* ~The man's eyes turn inwards to look at each other, then back to you. "Dunno. *Fng!*" He shudders; the mouth below his chin moves up to envelope the one his nostril formed. "This sort of thing happens quite often; we can't seem to - *Fnug!* - help but sample the stock. If ye find a way to help, the two of us would - *guhkahk!* - be grateful, sir."~ */
  IF ~~ THEN REPLY #42029 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #42030 /* ~"If I find a way, I'll let you know. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 8 // from:
  SAY #42031 /* ~You see Pestle Kilnn. He - or they - is as eerie to look upon as ever, as his flesh constantly changes and crawls across his face and body. "I welcome ye - *snrf!* - back, sir."~ */
  IF ~  PartyHasItem("ElixirS")
Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42032 /* ~"I've got this Elixir of Horrific Separation... do you think that'd help you?"~ */ GOTO 9
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42033 /* ~"Are you all right?"~ */ GOTO 4
  IF ~~ THEN REPLY #42034 /* ~"I wanted to purchase something..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42035 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #42036 /* ~"I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #42037 /* ~Both his eyes suddenly snap to the small bottle in your hands. He nods, smacking his lips.~ */
  IF ~~ THEN REPLY #42038 /* ~"Here you are, then..."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42039 /* ~"I'll expect a reward, you know."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_PK_1","GLOBALGood",-2)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #42040 /* ~Pestle Kilnn takes the bottle in both his hands and places it beneath the counter. His left eye focuses on you, while his right eye and hand concentrate on scribbling furiously on the countertop. "We can use dis ta make somethin' dat'll fix us - *hgrk!* - right on up. Now if you'll gives us a moment, when we got it all worked - *gak!* - out, we'll makes ya some healin' stuffs fer a reward." He turns to head to the back of the shop...~ */
  IF ~~ THEN REPLY #42042 /* ~"All right... farewell for now, then."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #42043 /* ~The left eye rolls back, but the right one stays focused on you. He nods. "Would some healing items - *fng!* - suffice, sir?"~ */
  IF ~~ THEN REPLY #42044 /* ~"Yes, it will. Here you are."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42045 /* ~"No... I'll just hold on to it, for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #42046 /* ~"A scraping? Very - *schnik!* - well." His right hand takes up a razor blade; his left, a wide-mouthed bottle. He removes a small section of skin from your forearm, placing it into the bottle along with a small quantity of your blood. He then places some gauze over your wound and hands you the bottle. "Ye need anything - *guh-gack!* - more, sir?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42047 /* ~"No, but... are you all right?"~ */ GOTO 4
  IF ~~ THEN REPLY #42048 /* ~"Yes... I wanted to purchase something."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42049 /* ~"No, that's all. Thanks, and farewell."~ */ EXIT
END
