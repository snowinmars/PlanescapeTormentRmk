// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKORUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKORUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36238 /* ~You see a middle-aged man wearing dusty clothes. He does not appear to be in the best of health. His skin is pale yellow and you see an occasional pustule along his arms.~ */
  IF ~~ THEN REPLY #36265 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36266 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36239 /* ~He turns and glances at you from behind hollow eyes. His eyes narrow in suspicion as he continues to glance around. "What d'ye want?" His voice is raspy.~ */
  IF ~~ THEN REPLY #36267 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36268 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36240 /* ~He turns his attention to you. "Why ye botherin' me for? I look the part of a tout?"~ */
  IF ~~ THEN REPLY #36269 /* ~"You're available."~ */ GOTO 3
  IF ~~ THEN REPLY #36270 /* ~"You seem to be a knowledgeable individual that I can learn from."~ */ GOTO 4
  IF ~~ THEN REPLY #36271 /* ~"What's a tout?"~ */ GOTO 23
  IF ~~ THEN REPLY #36272 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36241 /* ~He looks at you and snorts. "Lucky me... now get. I don't gots the time fer this." He turns away.~ */
  IF ~~ THEN REPLY #36273 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.3 6.1 7.2 8.3 9.2 10.2 11.1 12.3 13.2 14.1 15.1 16.0 17.2 18.1 19.0 21.0 23.0 24.0 25.1
  SAY #36242 /* ~He sighs. "What ye be wantin' to know?"~ */
  IF ~~ THEN REPLY #36274 /* ~"Who are you?"~ */ GOTO 25
  IF ~~ THEN REPLY #36275 /* ~"Are you feeling all right?"~ */ GOTO 5
  IF ~~ THEN REPLY #36276 /* ~"What can you tell me about this ward?"~ */ GOTO 11
  IF ~~ THEN REPLY #36277 /* ~"Is there anything interesting to see around here?"~ */ GOTO 17
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36278 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 20
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36279 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54106 /* ~"I want to be a warrior. Can you train me in the way?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54107 /* ~"I want to be a better warrior. Can you help me better my skills?"~ */ GOTO 27
  IF ~~ THEN REPLY #64627 /* ~"Thank you. I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #36243 /* ~"Nothin' a few years o' death won't cure." He coughs and looks up. "Air's been getting worse in th' Ward o' late. By my reckon, it should level out once th' Great Foundry settles... or a wind blows through from the Spire."~ */
  IF ~~ THEN REPLY #36281 /* ~"What is with the air here?"~ */ GOTO 6
  IF ~~ THEN REPLY #36282 /* ~"Tell me about the Foundry."~ */ GOTO 8
  IF ~~ THEN REPLY #36283 /* ~"What was that about the winds?"~ */ GOTO 10
  IF ~~ THEN REPLY #36284 /* ~"I see. I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36285 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1 9.0 10.0
  SAY #36244 /* ~"It's mostly 'cause of all the portals." He has a coughing fit and then returns his attention to you. ~ */
  IF ~~ THEN REPLY #36286 /* ~"What do you mean?"~ */ GOTO 7
  IF ~~ THEN REPLY #36287 /* ~"I see. I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36288 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36245 /* ~"Lots of doors to the Lower Planes here let'n in bad air an' fumes an' such from who knows what layer of the Abyss. That's why this here's the *Lower* Ward." He laughs. "A jaunt through this area is like breathin' in a meal. Salt, smoke, pipeweed... it's all yellow-blankets of smoke and stinging sulfurous gas that this Ward spits out." He gives you a gap-toothed smile. "Pretty-pretty, hey?"~ */
  IF ~~ THEN REPLY #36289 /* ~"Uh, yes... you mentioned the Foundry."~ */ GOTO 8
  IF ~~ THEN REPLY #36290 /* ~"What was that you said about the winds?"~ */ GOTO 10
  IF ~~ THEN REPLY #36291 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36292 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0 10.1
  SAY #36246 /* ~"Centa o' the Ward, pretty much. Look for the stacks. Them Godsmen make a buncha' things out o' iron; nothing fancy, but they work. Add to the bad air, too."~ */
  IF ~~ THEN REPLY #36293 /* ~"Godsmen?"~ */ GOTO 9
  IF ~~ THEN REPLY #36294 /* ~"What is with the air here?"~ */ GOTO 6
  IF ~~ THEN REPLY #36295 /* ~"You said something about the winds earlier."~ */ GOTO 10
  IF ~~ THEN REPLY #36296 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36297 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36247 /* ~"The Believers. Have their kip in the Great Foundry, banging and singing and chantin' their barmy silliness on being powers in the next ten upon ten and a buncha other ten lifetimes." He rolls his eyes, then spits a brown mass from his mouth. "All's they do is suffer and slave and work... I slave twice as hard, and no way am I going to be any sort of power, you understand me, berk?" He laughs hollowly.~ */
  IF ~~ THEN REPLY #36298 /* ~"What is with the air here?"~ */ GOTO 6
  IF ~~ THEN REPLY #36299 /* ~"You said something about the winds earlier."~ */ GOTO 10
  IF ~~ THEN REPLY #36300 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36301 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.1 8.2 9.1
  SAY #36248 /* ~"At times winds blow in from Sigil's spire, drive the smog out..." He glances up and coughs. "...fer a while."~ */
  IF ~~ THEN REPLY #36302 /* ~"What is with the air here?"~ */ GOTO 6
  IF ~~ THEN REPLY #36303 /* ~"Tell me about this Foundry."~ */ GOTO 8
  IF ~~ THEN REPLY #36304 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36305 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY #36249 /* ~"Eh..." He looks at you like you're crazy. "You Clueless? Craftsmen, shops, warehouses, all have their kip here." He squints at you, his eyes somewhat bleary. "Ye lookin' for something in particular?"~ */
  IF ~~ THEN REPLY #36306 /* ~"What's there to do around here?"~ */ GOTO 12
  IF ~~ THEN REPLY #36307 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36308 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36250 /* ~He studies you for a moment, then looks at you knowingly. "Ye lookin' ta get yer iron tempered, maybe?" He laughs, which breaks into coughing. "None o' them places near; might try some o' the kips in the other Wards. If'n that's what ye be after."~ */
  IF ~~ THEN REPLY #36309 /* ~"Excuse me?"~ */ GOTO 13
  IF ~~ THEN REPLY #36310 /* ~"I could use some jink."~ */ GOTO 14
  IF ~~ THEN REPLY #36311 /* ~"I'd like to buy some things."~ */ GOTO 15
  IF ~~ THEN REPLY #36312 /* ~"I have some more questions."~ */ GOTO 4
  IF ~~ THEN REPLY #36313 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36251 /* ~He laughs again, which breaks into an even greater fit of coughing. "Sorry, cutter. Never ye mind. Ye lookin' for something in particular?"~ */
  IF ~~ THEN REPLY #36314 /* ~"I could use some jink."~ */ GOTO 14
  IF ~~ THEN REPLY #36315 /* ~"I'd like to buy some things."~ */ GOTO 15
  IF ~~ THEN REPLY #36316 /* ~"I have some more questions."~ */ GOTO 4
  IF ~~ THEN REPLY #36317 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #36252 /* ~"If ye be looking for work then ye luck's run dry. Little enough ta go around fer those who live here."~ */
  IF ~~ THEN REPLY #36318 /* ~"I'd like to buy some things."~ */ GOTO 15
  IF ~~ THEN REPLY #36319 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36320 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.1 14.0
  SAY #36253 /* ~"If you're looking to buy an item or two, or peddle some higher merchandise, then I would make one's way to the open-air market." He starts coughing again.~ */
  IF ~~ THEN REPLY #36321 /* ~"What can you tell me about the market?"~ */ GOTO 16
  IF ~~ THEN REPLY #36323 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36324 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36254 /* ~He gives you a wicked smile. "Ye can buy an' sell there, berk. It be a market - what else is there ta say about it?"~ */
  IF ~~ THEN REPLY #36325 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36326 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.3
  SAY #36255 /* ~"Eh..." He concentrates for a moment. "Well, there's the tower. It seems ta come up in the chant a lot."~ */
  IF ~~ THEN REPLY #36327 /* ~"Tell me about the tower."~ */ GOTO 18
  IF ~~ THEN REPLY #36328 /* ~"Anything else come to mind?"~ */ GOTO 19
  IF ~~ THEN REPLY #36329 /* ~"I have some other questions for you..."~ */ GOTO 4
  IF ~~ THEN REPLY #36330 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36256 /* ~"Ha!" He laughs, but it soon breaks into coughing. "One of the more damnable mysteries of this Ward... hear tell it simply dumped itself in Sigil one day many, many years ago, no idea where it came from, how it got there, or how to get in the damned thing. Takes up space, and looks like a sight... all them acid burns, weapon scars... looks like it's seen a few hundred wars, it does."~ */
  IF ~~ THEN REPLY #36331 /* ~"Anything else come to mind?"~ */ GOTO 19
  IF ~~ THEN REPLY #36332 /* ~"I have some other questions for you..."~ */ GOTO 4
  IF ~~ THEN REPLY #36333 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #36257 /* ~He thinks for a moment then shrugs. "Can't think of anything of interest."~ */
  IF ~~ THEN REPLY #36334 /* ~"I have some other questions for you..."~ */ GOTO 4
  IF ~~ THEN REPLY #36335 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.4
  SAY #36258 /* ~He looks nervous and glances about. "Ya... I've heard of 'em. Ya don't mess 'em, let me tell ya. His kip is a place what's called *Bones of the Night* or some such nonsense."~ */
  IF ~~ THEN REPLY #36336 /* ~"Where can I find this place?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #36259 /* ~He frowns. "Now, that's dangerous wig-wag... if I *were* ta say anything, which I'm not, I would say ta keep an eye out fer a gutted building here in the Ward. Mayhap ye would find something there, eh?" He glares at you. "But you never heard such from me, eh?"~ */
  IF ~~ THEN REPLY #36337 /* ~"Thank you. I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36338 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 4.5
  SAY #36260 /* ~He looks a little uncomfortable. "Missing a skull, are ye? Well, now, ye never heard such from me, but there's people in these parts that..." He glances around. "Make a living by collectin' heads of the dead. Work for a basher named Lothar. They call 'em the *Master of the Bones.*"~ */
  IF ~~ THEN REPLY #36339 /* ~"Where can I find this Lothar?"~ */ GOTO 21
  IF ~~ THEN REPLY #36340 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2
  SAY #36261 /* ~He frowns at you. "Someone ya go to fer askin' a bunch of damn fool questions..." He stares at you.~ */
  IF ~~ THEN REPLY #36341 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #36342 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #36262 /* ~You see a middle-aged man wearing dusty clothes. "Back again, huh?" He frowns at you. "What now?"~ */
  IF ~~ THEN REPLY #36343 /* ~"I have some questions..."~ */ GOTO 4
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54108 /* ~"I want to be a warrior. Can you train me in the way?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54109 /* ~"I want to be a better warrior. Can you help me better my skills?"~ */ GOTO 27
  IF ~~ THEN REPLY #54110 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.0
  SAY #36263 /* ~He gives you a slight bow. "Name's Korur. In ma day I was a purty good warrior..." He pauses and sighs. "Well, them days is o'er but I still know a trick or two."~ */
  IF ~~ THEN REPLY #36345 /* ~"Can you teach me the warrior's way?"~ */ GOTO 26
  IF ~~ THEN REPLY #36346 /* ~"I see. I have some questions..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 4.6 24.1 25.0
  SAY #36264 /* ~"Well... why not. Ya sure ye want ta give up ye current profession?"~ */
  IF ~~ THEN REPLY #36347 /* ~"Yes, I'm sure."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 27
  IF ~~ THEN REPLY #52333 /* ~"No, let me think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.7 24.2 26.0
  SAY #52334 /* ~"Well... What exactly do ye want training in?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52335 /* ~"Can you tell me if I am ready for more instruction?"~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52336 /* ~"Can you tell me if I am ready for more instruction?"~ */ GOTO 29
  IF ~~ THEN REPLY #52338 /* ~"Nothing right now. I'll come back later."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 38.1 40.1
  SAY #52339 /* ~"Ya know all that I can teach ya for now... come back after ye've experienced the world a bit more."~ */
  IF ~~ THEN REPLY #52340 /* ~"Very well, thank you."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #52341 /* ~"I think I could teach ya a bit more."~ */
  IF ~~ THEN REPLY #52342 /* ~"I'm ready, what can you teach me?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.6 33.6 34.6 35.6 36.6 38.0 39.0 40.0
  SAY #52343 /* ~"What ya be wantin' ta learn?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52344 /* ~"Teach me to fight with my fists."~ */ GOTO 32
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52345 /* ~"Teach me how to use daggers."~ */ GOTO 33
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52346 /* ~"Teach me how to use clubs."~ */ GOTO 34
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52347 /* ~"Teach me how to use axes."~ */ GOTO 35
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52348 /* ~"Teach me how to use hammers."~ */ GOTO 36
  IF ~~ THEN REPLY #52349 /* ~"I'm not up to training today. I'll come back later." ~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #52350 /* ~"Ye've exceeded my abilities. Ye're the best fighter I've ever seen... perhaps one of the best ever to walk the planes."~ */
  IF ~~ THEN REPLY #52351 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52352 /* ~"Fists, eh? Well... I can teach ye if ye want."~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52353 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52354 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52355 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52356 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66935 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66936 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66937 /* ~"No... what other weapons can you train me in?"~ */ GOTO 30
  IF ~~ THEN REPLY #66938 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #52357 /* ~"Daggers, eh? Well... I can teach ye if ye want."~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52358 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52359 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52361 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66939 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66940 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66941 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66948 /* ~"No... what other weapons can you train me in?"~ */ GOTO 30
  IF ~~ THEN REPLY #66952 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY #52362 /* ~"Clubs, eh? Well... I can teach ye if ye want."~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52363 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52364 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52365 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52366 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66942 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66943 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66949 /* ~"No... what other weapons can you train me in?"~ */ GOTO 30
  IF ~~ THEN REPLY #66953 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY #52367 /* ~"Axes, eh? Well... I can teach ye if ye want."~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52368 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52369 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52370 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52371 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66944 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66945 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66950 /* ~"No... what other weapons can you train me in?"~ */ GOTO 30
  IF ~~ THEN REPLY #66954 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.4
  SAY #52372 /* ~"Hammers, eh? Well... I can teach ye if ye want."~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52373 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52374 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52375 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52376 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66946 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66947 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66951 /* ~"No... what other weapons can you train me in?"~ */ GOTO 30
  IF ~~ THEN REPLY #66955 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.0 32.2 32.4 33.0 33.2 33.4 34.0 34.2 34.4 35.0 35.2 35.4 36.0 36.2 36.4
  SAY #52377 /* ~"Well, here we go... ye ready?"~ */
  IF ~~ THEN REPLY #52378 /* ~"Yes..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #52379 /* ~"Heh... well, that's it I guess. Now what?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52380 /* ~"Thank you. I'd like to learn other weapons, if you would teach me."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #52381 /* ~"Thank you. I'd like to learn other weapons, if you would teach me."~ */ GOTO 28
  IF ~~ THEN REPLY #52382 /* ~"Thank you. That's all I want to know today."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.1 32.3 33.1 33.3 34.1 34.3 35.1 35.3 36.1 36.3
  SAY #52383 /* ~"Well... nothing more I can teach ye right now. Not unless ye've devoted yer whole life to bein' a warrior. Ye've got to *specialize* in bein' a warrior if ye want to get better. Ye've not got that devotion t' the fightin' craft. Only when ye've turned yer body into a weapon can ye learn more from me."~ */
  IF ~~ THEN REPLY #52384 /* ~"All right. What other weapons can you teach me?"~ */ JOURNAL #68288 /* ~I was told I couldn't learn more about weapons unless I specialize in the path of the warrior. A more rigorous devotion to the fighting arts, never forsaking them for thievery or magecraft, should grant me the specialization my tutor speaks of.~ */ GOTO 30
  IF ~~ THEN REPLY #52385 /* ~"Thank you. Farewell."~ */ JOURNAL #68288 /* ~I was told I couldn't learn more about weapons unless I specialize in the path of the warrior. A more rigorous devotion to the fighting arts, never forsaking them for thievery or magecraft, should grant me the specialization my tutor speaks of.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 32.5 33.5 34.5 35.5 36.5
  SAY #66931 /* ~He looks at you in amazement. "Ye're wanting to learn more? Friend, there's no more for ye to learn about that weapon. No one in all the planes can teach ye more about it."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66932 /* ~"Thank you. I'd like to learn other weapons, if you would teach me."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66933 /* ~"Thank you. I'd like to learn other weapons, if you would teach me."~ */ GOTO 28
  IF ~~ THEN REPLY #66934 /* ~"Thank you. That's all I want to know today."~ */ EXIT
END
