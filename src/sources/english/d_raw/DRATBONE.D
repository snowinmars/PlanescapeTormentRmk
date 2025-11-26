// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRATBONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRATBONE~

IF ~  Global("Ratbone","AR0101",0)
~ THEN BEGIN 0 // from:
  SAY #16225 /* ~This tall, spindly man keeps his eyes on the ground at his feet; he occasionally pauses and kneels, as if searching for some object or clue hidden in the rubbish. Despite his odd, lanky proportions, he appears quite quick and lithe.~ */
  IF ~~ THEN REPLY #16305 /* ~"Greetings..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 1
  IF ~~ THEN REPLY #16306 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16226 /* ~As you speak, he whirls and drops into a half-crouch... though whether he's ready to spring at you or in some other direction, you cannot tell. "What? Speak quick, now..."~ */
  IF ~~ THEN REPLY #16307 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #16308 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16227 /* ~"Well I don't got answers. Pike off!" You hadn't noticed it before, but he's got a long, curved dagger in his hand.~ */
  IF ~~ THEN REPLY #16309 /* ~"It won't do you any harm to speak with me..."~ */ GOTO 3
  IF ~~ THEN REPLY #16310 /* ~"Are you threatening me?"~ */ GOTO 6
  IF ~~ THEN REPLY #16311 /* ~"Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #16228 /* ~"That so?" He squints at you for a moment, then spits on the ground beside him. "How's I supposed ta know that, eh?"~ */
  IF ~~ THEN REPLY #16312 /* ~"I don't understand."~ */ GOTO 4
  IF ~~ THEN REPLY #16313 /* ~"You'll just have to trust me."~ */ GOTO 5
  IF ~~ THEN REPLY #16314 /* ~"Never mind. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16229 /* ~"What part doncha' get, berk? Hmph! Pay close: how's I supposed ta know ye're here to just 'ask questions.' An' what if they're questions I don't wanna answer, eh? Ya gonna hold me down, torture me? Hmm?"~ */
  IF ~~ THEN REPLY #16315 /* ~"Just talk to me. I had only a few questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #16316 /* ~Vow: "I won't try to harm you; you have my word."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #16317 /* ~Lie: "I won't try to harm you; you have my word."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #16318 /* ~"Forget I asked. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 4.1 4.2
  SAY #16230 /* ~"Nay. Not a chance. Go pester someone else."~ */
  IF ~~ THEN REPLY #16319 /* ~Leave.~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #16231 /* ~"Why? Does Ratbone scare ya? Ya feelin' threatened, berk?"~ */
  IF ~~ THEN REPLY #16320 /* ~"No, I'm not."~ */ GOTO 7
  IF ~~ THEN REPLY #16321 /* ~"Yes, I do."~ */ GOTO 8
  IF ~~ THEN REPLY #16322 /* ~"Forget it. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16232 /* ~"Heh heh! Figures, lookin' the way ya do. All right, whatcha' want from me?"~ */
  IF ~~ THEN REPLY #16323 /* ~"Like I said, I had some questions..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16324 /* ~"Nothing, never mind. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #16233 /* ~"Well, it's yer own fault, then. Back off and leave me be."~ */
  IF ~~ THEN REPLY #16325 /* ~Leave.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 2.2 3.2 4.3 5.0 6.2 7.1 8.0
  SAY #16234 /* ~He calls as you turn to leave: "Oye! Hold a moment, there..."~ */
  IF ~~ THEN REPLY #16326 /* ~"Yes?"~ */ GOTO 10
  IF ~~ THEN REPLY #16327 /* ~Ignore him, walk away.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16235 /* ~He straightens up and puts his weapon away. "Who sent ya? Why're ya here?"~ */
  IF ~~ THEN REPLY #16328 /* ~"No one sent me. I'm here of my own accord."~ */ GOTO 12
  IF ~~ THEN REPLY #16329 /* ~"What makes you think someone sent me?"~ */ GOTO 12
  IF ~~ THEN REPLY #16330 /* ~"What are you *talking* about?"~ */ GOTO 12
  IF ~~ THEN REPLY #16331 /* ~"It's no concern of yours."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #16236 /* ~He spits again. "Hmph. Off with ya, then."~ */
  IF ~~ THEN REPLY #16332 /* ~Leave.~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2
  SAY #16237 /* ~"Hmm..." He squints at you, long and hard; after an awkward silence, he speaks: "Fine. What did ya want from me?"~ */
  IF ~~ THEN REPLY #16333 /* ~"Like I said, I had some questions..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16334 /* ~"Nothing, never mind. Farewell."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0 12.0 15.0 17.0 20.0 21.1 22.3 23.1 24.2 25.1 27.2 28.0 29.1 33.0 34.0 35.7 36.0 37.4 39.0 40.4 41.0 42.4 43.3 44.2 45.2 46.1 47.2 48.4 49.3 50.3 51.2 52.3 55.1 58.2 59.2 62.0 64.1 65.1 76.0 77.0 79.0
  SAY #16238 /* ~"Go on, then. Ask yer questions."~ */
  IF ~  Global("RB_Name","AR0101",0)
~ THEN REPLY #16335 /* ~"Who are you?"~ */ GOTO 14
  IF ~  Global("RB_Name","AR0101",1)
~ THEN REPLY #16336 /* ~"Who are you again?"~ */ GOTO 20
  IF ~~ THEN REPLY #16337 /* ~"What are you doing here?"~ */ GOTO 21
  IF ~~ THEN REPLY #16338 /* ~"Can you tell me about this area?"~ */ GOTO 42
  IF ~  Global("RB_Quest","AR0101",3)
~ THEN REPLY #16339 /* ~"Tell me about the Collector and the rake again."~ */ GOTO 67
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",0)
~ THEN REPLY #16340 /* ~"I'm looking for someone named Pharod."~ */ GOTO 32
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",1)
~ THEN REPLY #16341 /* ~"I'm looking for someone named Pharod."~ */ GOTO 39
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",2)
~ THEN REPLY #16342 /* ~"I'm looking for someone named Pharod."~ */ GOTO 40
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16343 /* ~"I'm looking for a lost journal."~ */ GOTO 41
  IF ~~ THEN REPLY #16344 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #16239 /* ~"Ratbone, I am. Who are you?"~ */
  IF ~~ THEN REPLY #16345 /* ~Lie: "I'm, uh... Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16346 /* ~"I don't have a name."~ */ GOTO 16
  IF ~~ THEN REPLY #16347 /* ~"I... don't know."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16348 /* ~"It's no concern of yours."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #16240 /* ~He frowns at you. "Aye, sure ya are."~ */
  IF ~~ THEN REPLY #16349 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16350 /* ~"Yes, that's me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #16241 /* ~Ratbone smirks. "Sure ya don't; I'd a' guessed as much. So why not, eh?"~ */
  IF ~~ THEN REPLY #16351 /* ~Lie: "All right... I'm, uh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16352 /* ~"Because I can't remember it."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16353 /* ~"It's no concern of yours."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.2 16.1
  SAY #16242 /* ~Ratbone's eyebrows shoot up. "Really, now? That's odd enough ta be true... heh. What happened? Someone cuff ya on that scarred-up noggin a' yours?"~ */
  IF ~~ THEN REPLY #16354 /* ~"Something like that. I had other questions..."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16355 /* ~"It's a long story; maybe another time. Farewell."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3 16.2 30.3 31.2 32.3 35.3 35.5 37.0 37.2 40.0 40.2
  SAY #16243 /* ~"Oh? Hmph. Talkin' to ya in the first place was a bad idea. Pike off; I'll have nothin' more ta do with ya."~ */
  IF ~~ THEN REPLY #16356 /* ~"I had some other questions..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16357 /* ~"Farewell, then."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 38.0 60.0
  SAY #16244 /* ~He interrupts you mid-sentence: "Nay! I don't want ta hear it. Away with ya." He turns away from you and resumes his searching about.~ */
  IF ~~ THEN REPLY #16358 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #16245 /* ~"Heh! Did ya forget it already, berk? Ratbone!"~ */
  IF ~~ THEN REPLY #16359 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16360 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #16246 /* ~"Nothin' you'd care ta know about."~ */
  IF ~~ THEN REPLY #16361 /* ~"It seems like you're searching for something."~ */ GOTO 22
  IF ~~ THEN REPLY #16362 /* ~"Let me ask you something else..."~ */ GOTO 13
  IF ~~ THEN REPLY #16363 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #16247 /* ~"Nay, I'm actually hunt-" he suddenly stops speaking, squinting at you suspiciously. "What do *you* care, eh?"~ */
  IF ~~ THEN REPLY #16364 /* ~"I'm just curious."~ */ GOTO 30
  IF ~~ THEN REPLY #16365 /* ~Truth: "I'm wondering if I could help."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Rbone_1","GLOBALGood",1)
~ GOTO 30
  IF ~~ THEN REPLY #16366 /* ~Lie: "I'm wondering if I could help."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_3","GLOBALLaw",-1)
~ GOTO 30
  IF ~~ THEN REPLY #16367 /* ~"I don't. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16368 /* ~"I don't, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 30.0 30.1 31.0 31.1 31.3
  SAY #16248 /* ~"Hmm. Well, I'm huntin' cranium rats."~ */
  IF ~~ THEN REPLY #16369 /* ~"Why are you hunting rats?"~ */ GOTO 24
  IF ~~ THEN REPLY #16370 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16371 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #16249 /* ~"Not just rats, mind ya - cranium rats. There's a bounty on 'em. Didn't ya know? A copper for each tail ya bring in."~ */
  IF ~~ THEN REPLY #16372 /* ~"Why is there a bounty on them?"~ */ GOTO 25
  IF ~~ THEN REPLY #16373 /* ~"Where do you bring the tails?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16374 /* ~"Interesting. I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16375 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #16250 /* ~"Eh? 'Cause they're not like yer normal rat; they're far more dangerous to a berk. The more a' them that gather together, the smarter they get... smart enough ta cast spells, even, like a mage. The Hive - heh, all a' Sigil, really - is dangerous enough without packs a' brilliant, spell-castin' rats squeakin' about!"~ */
  IF ~~ THEN REPLY #16376 /* ~"Where do you bring the tails?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16377 /* ~"I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16378 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #16251 /* ~"Why? Plannin' on doin' some rat-catchin' yerself?"~ */
  IF ~~ THEN REPLY #16379 /* ~"Yes, I am."~ */ GOTO 27
  IF ~~ THEN REPLY #16380 /* ~"Perhaps."~ */ GOTO 27
  IF ~~ THEN REPLY #16381 /* ~"No, just curious."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #16252 /* ~"Well don't be doin' it here, berk! They're rare enough lately without another sod comin' in and pickin' around my huntin' ground."~ */
  IF ~~ THEN REPLY #16382 /* ~"They've been rare lately? Do you know why?"~ */ GOTO 28
  IF ~~ THEN REPLY #16383 /* ~"I'd like to know, just the same."~ */ GOTO 29
  IF ~~ THEN REPLY #16384 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16385 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #16253 /* ~"Nay, I don't. Maybe they've been hunted too much; I'm not the only rat-catcher in Sigil, ya know. Just the only rat-catcher here in Ragpicker's Square."~ */
  IF ~~ THEN REPLY #16386 /* ~"Interesting. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16387 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.1
  SAY #16254 /* ~"Hmm." He squints at you for a moment, then sighs. "Don't know why I'm givin' you the dark of it, but it's east, outta the Square, then south. Ye'll come across it south of the Marketplace. Just don't go huntin' rats around here; there ain't hardly enough of 'em for one rat-catcher!"~ */
  IF ~~ THEN REPLY #16388 /* ~"There's not? Have any idea why?"~ */ GOTO 28
  IF ~~ THEN REPLY #16389 /* ~"Thanks. I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16390 /* ~"Thanks, I'll stop by there sometime. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 22.0 22.1 22.2
  SAY #16255 /* ~"Hmm. Well, I don't go about spillin' chant and gettin' none back. Tell me what ye're doin' here, first."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16391 /* ~"I'm looking for a man named Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16392 /* ~"I'm looking for a journal I've lost."~ */ GOTO 23
  IF ~~ THEN REPLY #16393 /* ~"I don't know, myself. Just wandering."~ */ GOTO 31
  IF ~~ THEN REPLY #16394 /* ~"I don't think it's any concern of yours."~ */ GOTO 18
  IF ~~ THEN REPLY #16395 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY #16256 /* ~"Eh? Aw, c'mon now, berk, ya can do better than that. Lie, if ya have ta... and ye're not already!" He rolls his eyes, chuckling bitterly.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16396 /* ~"I'm looking for a man named Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16397 /* ~"I'm looking for a journal I've lost."~ */ GOTO 23
  IF ~~ THEN REPLY #16398 /* ~"I am just wandering, as I said."~ */ GOTO 18
  IF ~~ THEN REPLY #16399 /* ~Make something up.~ */ GOTO 23
  IF ~~ THEN REPLY #16400 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 13.5
  SAY #16257 /* ~"Ya are, are ya? Hmm..." He leans in and lowers his voice. "He's close, ya know. Why ya lookin' for him, eh? He a friend? Enemy?"~ */
  IF ~~ THEN REPLY #16401 /* ~"He's got some information for me."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 33
  IF ~~ THEN REPLY #16402 /* ~Lie: "He's a friend of mine."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 34
  IF ~~ THEN REPLY #16403 /* ~Lie: "An enemy."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~~ THEN REPLY #16404 /* ~"I don't think it's any concern of yours."~ */ DO ~SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~~ THEN REPLY #16405 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #16258 /* ~"Does he? Well, you're in the right, place. What ye're gonna want ta do is keep lookin' around here. The man's pretty well hidden, but ye're definitely gonna find him here in Ragpicker's Square. You'll come across the man soon enough."~ */
  IF ~~ THEN REPLY #16406 /* ~"Thanks. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16407 /* ~"I'll go find him, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #16259 /* ~"Is he?" Ratbone looks at you carefully. "Hmm. Ya lookin' for work from him, then? Ya don't seem the sort. Well, never mind that... you're in the right place. What ye're gonna want ta do is keep lookin' around here. The man's pretty well hidden, but ye're definitely gonna find him here in Ragpicker's Square. You'll come across the man soon enough."~ */
  IF ~~ THEN REPLY #16408 /* ~"Thanks. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16409 /* ~"I'll go find him, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #16260 /* ~He winces, then shakes his head, chuckling. "Heh! Wouldn't want a cutter with yer looks ta come lookin' for me! I'm not sure old Pharod would appreciate me tellin' a basher like you where he's at. Could be trouble for Ratbone..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16410 /* ~Vow: "I swear I won't mention your name."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
~ GOTO 36
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16411 /* ~Vow: "I swear I won't mention your name."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~~ THEN REPLY #16412 /* ~Lie: "I swear I won't mention your name."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_5","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16413 /* ~True: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16414 /* ~True: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16415 /* ~Bluff: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16416 /* ~Bluff: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~~ THEN REPLY #16417 /* ~"Never mind, then. Let me ask you about something else..."~ */ GOTO 13
  IF ~~ THEN REPLY #16418 /* ~"Forget I asked, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #16261 /* ~"Damn it all! Heh... don't ask why, but I'll trust ya." He pauses to spit over his shoulder. "Don't make me regret it later, berk! What ye're gonna want ta do is keep lookin' around here. The man's pretty well hidden, but ye're definitely gonna find him here in Ragpicker's Square. You'll come across the man soon enough."~ */
  IF ~~ THEN REPLY #16419 /* ~"Thanks. I had some other questions..."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16420 /* ~"I'll go find him, then. Farewell."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 35.2
  SAY #16262 /* ~He shakes his head sadly. "Sorry, ain't gonna happen. He's close, though. You'll find him soon enough on yer own."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16421 /* ~True: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16422 /* ~True: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16423 /* ~Bluff: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16424 /* ~Bluff: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16425 /* ~"I had some other questions, then..."~ */ GOTO 13
  IF ~~ THEN REPLY #16426 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.4 35.6 37.1 37.3 40.1 40.3
  SAY #16263 /* ~He sneers at you, and spits at your feet. "Hmph. And after givin' yer word not ta harm me, too. Talkin' to ya in the first place was a bad idea. Pike off; I'll have nothin' more ta do with ya."~ */
  IF ~~ THEN REPLY #16427 /* ~"I had some other questions..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16428 /* ~"Farewell, then."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 13.6
  SAY #16264 /* ~He shakes his head, annoyed. "Didn't we go over this before? What ye're gonna want ta do is keep lookin' around here. The man's pretty well hidden, but yer definitely gonna find him here in Ragpicker's Square. Go find the sod, before ya forget again and have to bother me about it all over!"~ */
  IF ~~ THEN REPLY #16429 /* ~"Thanks. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16430 /* ~"I'll go find him, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7
  SAY #16265 /* ~Ratbone's face turns sour. "I said it before: I ain't tellin' ya. He's close enough. Find him yerself."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16431 /* ~True: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16432 /* ~True: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16433 /* ~Bluff: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16434 /* ~Bluff: "Tell me what you know, or you'll share his fate."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16435 /* ~"I had some other questions, then..."~ */ GOTO 13
  IF ~~ THEN REPLY #16436 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 13.8
  SAY #16266 /* ~"If ya lost it here, good luck findin' it in all this mess. I certainly can't help ya."~ */
  IF ~~ THEN REPLY #16437 /* ~"I had some other questions, then..."~ */ GOTO 13
  IF ~~ THEN REPLY #16438 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 13.3
  SAY #16267 /* ~"What're ya lookin' ta know? Ratbone might have an answer or two for ya."~ */
  IF ~~ THEN REPLY #16439 /* ~"Where could I find work?"~ */ GOTO 43
  IF ~~ THEN REPLY #16440 /* ~"Where would I go to enjoy myself?"~ */ GOTO 48
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16441 /* ~"Anything to look out for here?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16442 /* ~"Anything to look out for here?"~ */ GOTO 50
  IF ~~ THEN REPLY #16443 /* ~"Never mind. I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16444 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 48.1 49.0 50.1 51.0 52.1 58.0 59.0
  SAY #16268 /* ~"Work, eh? Not much a' that ta be found in the Hive. Not of the honest sort, anyway. If ya were desperate, ya could work as a Collector... I'd just look in another ward, personally. The Lower'd be the best bet."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16445 /* ~"What about hunting rats?"~ */ GOTO 47
  IF ~~ THEN REPLY #16446 /* ~"A Collector?"~ */ GOTO 45
  IF ~~ THEN REPLY #16447 /* ~"How do I get to the Lower Ward?"~ */ GOTO 44
  IF ~~ THEN REPLY #16448 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16449 /* ~"Maybe I'll look there, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2 45.1 47.1
  SAY #16269 /* ~"That's easy. Ya just... hmm, no. Tell ya the truth, the way I used ta go is all muddled up, now... those dabus went an' rearranged the whole lot of it. Not sure how a cutter'd get there, now."~ */
  IF ~~ THEN REPLY #16450 /* ~"Dabus?"~ */ GOTO 46
  IF ~~ THEN REPLY #16451 /* ~"What did you say about being a Collector?"~ */ GOTO 45
  IF ~~ THEN REPLY #16452 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16453 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.1 46.0 47.0
  SAY #16270 /* ~"Aye. Collectors bring the deaders a' Sigil... mostly the Hive... ta the Mortuary. The Dead - the Dustmen - pay for the corpses. Keeps the place from gettin' any worse."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16454 /* ~"What about hunting rats?"~ */ GOTO 47
  IF ~~ THEN REPLY #16455 /* ~"How do I get to the Lower Ward?"~ */ GOTO 44
  IF ~~ THEN REPLY #16456 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16457 /* ~"That's all I needed to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0
  SAY #16271 /* ~"Are ya really so clueless? Woo! Dabus are the servants a' the Lady a' Pain, the Mistress a' Sigil. Don't even think a' askin' me about her, 'cause it's ill luck just ta speak of her."~ */
  IF ~~ THEN REPLY #16458 /* ~"What did you say about being a Collector?"~ */ GOTO 45
  IF ~~ THEN REPLY #16459 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16460 /* ~"That's all I needed to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.0 45.0
  SAY #16272 /* ~Ratbone holds up his hands, as if to stop you: "Oh, no! Don't ya even think about that... not here, at least! There's hardly enough left around for me; I think they're nearly hunted out. Now go somewhere else if ye're gonna be takin' up the trade."~ */
  IF ~~ THEN REPLY #16461 /* ~"What did you say about being a Collector?"~ */ GOTO 45
  IF ~~ THEN REPLY #16462 /* ~"How do I get to the Lower Ward?"~ */ GOTO 44
  IF ~~ THEN REPLY #16463 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16464 /* ~"We'll see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.1 50.2 51.1 52.2 58.1 59.1
  SAY #16273 /* ~"I don't know what ye're lookin' for, exactly, but I'd say anywhere but here. Even the 'ladies' can be trouble in this part a' Sigil, if ya know what I mean."~ */
  IF ~~ THEN REPLY #16465 /* ~"No, I don't."~ */ GOTO 49
  IF ~~ THEN REPLY #16466 /* ~"Where could I find work here?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16467 /* ~"Anything to look out for here?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16468 /* ~"Anything to look out for here?"~ */ GOTO 50
  IF ~~ THEN REPLY #16469 /* ~"I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16470 /* ~"That's all I needed to hear. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #16274 /* ~"Eh... never mind, then."~ */
  IF ~~ THEN REPLY #16471 /* ~"Where could I find work here?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
!Dead("Adyzoel")
~ THEN REPLY #16472 /* ~"Anything to look out for here?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16473 /* ~"Anything to look out for here?"~ */ GOTO 50
  IF ~~ THEN REPLY #16474 /* ~"I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16475 /* ~"That's all I needed to hear. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 42.3 48.3 49.2
  SAY #16275 /* ~"Nothin' in particular... ya just never know what direction trouble's gonna hit ya from, here. Just watch yer back, and take care with what ya tell people. Rattlin' yer bone-box ta the wrong cutter could get a berk in the dead-book - or worse - fast."~ */
  IF ~~ THEN REPLY #16476 /* ~"Worse?"~ */ GOTO 51
  IF ~~ THEN REPLY #16477 /* ~"Where could I find work?"~ */ GOTO 43
  IF ~~ THEN REPLY #16478 /* ~"Where would I go to enjoy myself?"~ */ GOTO 48
  IF ~~ THEN REPLY #16479 /* ~"I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16480 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #16276 /* ~He nods gravely. "Sure. Don't tell me ya can't think a' anythin' worse than death..."~ */
  IF ~~ THEN REPLY #16481 /* ~"Where could I find work?"~ */ GOTO 43
  IF ~~ THEN REPLY #16482 /* ~"Where would I go to enjoy myself?"~ */ GOTO 48
  IF ~~ THEN REPLY #16483 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16484 /* ~"That's all I needed to hear. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.2 48.2 49.1
  SAY #16277 /* ~"Plenty. I'll tell, though, one ya really ought ta watch out for... there's a rake wanderin' about the Hive. Doesn't look the basher, but the man's a born fighter sure as Sigil's round."~ */
  IF ~~ THEN REPLY #16485 /* ~"Who is he?"~ */ GOTO 53
  IF ~~ THEN REPLY #16486 /* ~"Where could I find work?"~ */ GOTO 43
  IF ~~ THEN REPLY #16487 /* ~"Where would I go to enjoy myself?"~ */ GOTO 48
  IF ~~ THEN REPLY #16488 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16489 /* ~"I'll watch for him, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #16278 /* ~"Hold there, berk, I ain't done yet. I was gonna tell ya: it's not the rake so much as the grubby Collector that's always chasin' him about, see? I'm tellin' ya, that Collector's got more ta do with the rake's killin' than just draggin' the deaders off."~ */
  IF ~~ THEN REPLY #16490 /* ~"Collector?"~ */ GOTO 54
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16491 /* ~"What do you mean?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16492 /* ~"How do you know this?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16493 /* ~"What do you mean?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16494 /* ~"How do you know this?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #16279 /* ~"Aye, those that bring the dead a' Sigil - the Hive, mostly - to the Mortuary, for jink."~ */
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16495 /* ~"What did you mean about 'more to do with'?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16496 /* ~"How do you know about this Collector?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16497 /* ~"What did you mean about 'more to do with'?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16498 /* ~"How do you know this Collector?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 55 // from: 53.1 53.2 54.0 54.1
  SAY #16280 /* ~"Hmm... look, I can see ye're interested, and this ain't yer normal chant, if ya get me - it's dead dark. I'll be askin' a favor of ya before I spill anythin' more."~ */
  IF ~~ THEN REPLY #16499 /* ~"Ask your favor."~ */ GOTO 56
  IF ~~ THEN REPLY #16500 /* ~"Never mind, then. I had other questions."~ */ GOTO 13
  IF ~~ THEN REPLY #16501 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #16281 /* ~"Good, good. I got a standin' bet with a friend a' mine... bit of a competition, really. All ya need ta know is I want rat tails, as many as I can get my hands on. Not yer normal rats, mind ya, but those off a' cranium rats... brain vermin. Get me five tails, an' I'll give ya the whole dark on that grubby Collector and the bloody rake."~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16502 /* ~"I've got your five rat tails right here."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16503 /* ~"Cranium rats?"~ */ GOTO 57
  IF ~~ THEN REPLY #16504 /* ~"I understand."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16505 /* ~"I don't think it's worth my time."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY #16282 /* ~"That's right. They're not like yer normal rat; they're far more dangerous to a berk. The more a' them that gather together, the smarter they get... smart enough lay ambushes an' cast spells, like a mage. Just watch yerself when ye're gettin' them tails!"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16506 /* ~"I've got your five rat tails right here."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16507 /* ~"I understand."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16508 /* ~"I don't think it's worth my time."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 56.2 57.1 78.0
  SAY #16283 /* ~"Right. Anythin' else?"~ */
  IF ~~ THEN REPLY #16509 /* ~"Yes. Where could I find work?"~ */ GOTO 43
  IF ~~ THEN REPLY #16510 /* ~"Yes. Where would I go to enjoy myself?"~ */ GOTO 48
  IF ~~ THEN REPLY #16511 /* ~"Yes, I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16512 /* ~"No, nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 56.3 57.2 78.1
  SAY #16284 /* ~"Suit yerself, then. You know what ya need ta bring me if ya ever want the dark a' that pair. Anythin' else from me?"~ */
  IF ~~ THEN REPLY #16513 /* ~"Yes. Where could I find work?"~ */ GOTO 43
  IF ~~ THEN REPLY #16514 /* ~"Yes. Where would I go to enjoy myself?"~ */ GOTO 48
  IF ~~ THEN REPLY #16515 /* ~"Yes, I had other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16516 /* ~"No, nothing. Farewell."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",1)
~ THEN BEGIN 60 // from:
  SAY #16285 /* ~"I don't what ye're back for; I ain't sayin' another word to ya."~ */
  IF ~~ THEN REPLY #16517 /* ~"I had some questions..."~ */ GOTO 19
  IF ~  !Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16518 /* ~"I wanted to apologize."~ */ GOTO 62
  IF ~  Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16519 /* ~"I wanted to apologize."~ */ GOTO 61
  IF ~  Global("RB_Sorry","AR0101",1)
~ THEN REPLY #16520 /* ~"I wanted to apologize."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 60.2
  SAY #16286 /* ~"Nay, berk; ya went too far. Ya lied an' ya threatened me on top of it all... pike off."~ */
  IF ~~ THEN REPLY #16521 /* ~Leave.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1
  SAY #16287 /* ~"Hmph." He thinks for a moment, then spits over his shoulder. "Can't say I don't wish I got more second chances; I won't deny ya yers. Just watch yer mouth this time, berk..."~ */
  IF ~~ THEN REPLY #16522 /* ~"Thanks. I had some questions..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16523 /* ~"I will. Farewell."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.3
  SAY #16288 /* ~"Nay, berk; I gave ya yer second chance. Pike off."~ */
  IF ~~ THEN REPLY #16524 /* ~Leave.~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
GlobalLT("RB_Quest","AR0101",2)
~ THEN BEGIN 64 // from:
  SAY #16289 /* ~Ratbone looks up as you approach. "Hmm?"~ */
  IF ~  GlobalGT("RB_Quest","AR0101",0)
NumItemsPartyGT("Tail",4)
~ THEN REPLY #16525 /* ~"I had those rat tails for you."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16526 /* ~"I had some questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16527 /* ~"Just passing by. Farewell."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",2)
~ THEN BEGIN 65 // from:
  SAY #16290 /* ~Ratbone looks up as you approach. "Well met again. Got those tails for me, yet?"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16528 /* ~"Yes."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16529 /* ~"Not yet. I had some questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16530 /* ~"No, not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 56.0 57.0 64.0 65.0
  SAY #16291 /* ~He takes the tails and drops them into a leather pouch, chuckling to himself all the while. "These'll certainly do! Much obliged to ya."~ */
  IF ~~ THEN REPLY #16531 /* ~"I'll have that secret of yours, now."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 13.4 66.0
  SAY #16292 /* ~"Of course, of course. I thought something odd was goin' on when I first laid eyes on that rake. It's one thing to duel in the Hive to avoid the attention, but he's been here for days... is even stayin' in the Hive, rather than takin' a carriage or what-not back to his case."~ */
  IF ~~ THEN REPLY #16532 /* ~"The attention?"~ */ GOTO 68
  IF ~~ THEN REPLY #16533 /* ~"Go on..."~ */ GOTO 69
  IF ~~ THEN REPLY #16534 /* ~"I'll have to hear the rest later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #16293 /* ~"Aye, of the law. Mercykillers an' the like. They patrol the streets a' Sigil - parts of it, at least - enforcing 'order.'" He grimaces. "They stay outta' the poorer sections a' the city, like the Hive."~ */
  IF ~~ THEN REPLY #16535 /* ~"I see. Go on, then..."~ */ GOTO 69
  IF ~~ THEN REPLY #16536 /* ~"I'll have to hear the rest later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0
  SAY #16294 /* ~"Well, I swore off thievin' long ago - don't ask why - but it was just too much, too easy. Late one night, 'round anti-peak, I snuck up ta the back a' the flea-pit inn he was callin' kip at, and guess who's at his room's window? That Collector!"~ */
  IF ~~ THEN REPLY #16537 /* ~"Please continue..."~ */ GOTO 70
  IF ~~ THEN REPLY #16538 /* ~"I'll have to hear the rest later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #16295 /* ~"So I'm doubly suspicious now. The ol' Ratbone curiosity took a hold a' me, an' I starts followin' that Collector around. He never sleeps, never eats... when the rake ain't out-an'-about, he just sits in the darkest alley he can find an' stares inta space."~ */
  IF ~~ THEN REPLY #16539 /* ~"Interesting. Go on..."~ */ GOTO 71
  IF ~~ THEN REPLY #16540 /* ~"I'll have to hear the rest later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #16296 /* ~"Here's the best part. One dark night, as I'm layin' on a roof over the alley the Collector's sittin' in, who shows up ta talk to him?"~ */
  IF ~~ THEN REPLY #16541 /* ~"The rake?"~ */ GOTO 72
  IF ~~ THEN REPLY #16542 /* ~"Tell me."~ */ GOTO 73
  IF ~~ THEN REPLY #16543 /* ~"Tell me another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #16297 /* ~"No! A *fiend!*"~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.1 72.0
  SAY #16298 /* ~"A fiend, sure enough. Lovely, she was, with wings like an angel, an' lips like... like... well, she was gorgeous. But a fiend she was, surely - a temptress, a baatezu, the kind we called erinyes, where I hail from."~ */
  IF ~~ THEN REPLY #16544 /* ~"Continue, then..."~ */ GOTO 74
  IF ~~ THEN REPLY #16545 /* ~"I'll have to hear the rest later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #16299 /* ~"I'd a' given just about anythin' ta hear what they was speakin' about, but I've seen too much trouble ta go catchin' a fiend's attention. All I know is they talked for a bit, then the fiend laughed - a cruel, mockin' laugh, it was - and faded away, the Collector snarlin' an' hissin' at her as she went!"~ */
  IF ~~ THEN REPLY #16546 /* ~"Are you certain of all this?"~ */ GOTO 75
  IF ~~ THEN REPLY #16547 /* ~"Why would a fiend talk to a Collector?"~ */ GOTO 76
  IF ~~ THEN REPLY #16548 /* ~"An interesting tale. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #16300 /* ~"Heh! Just go watch 'em yerself if ya don't believe me! Don't press yer luck, though - that rake's a mean basher, an' anyone who duels him or pesters that Collector finds themselves in the dead-book, quick."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #16549 /* ~"Why would a fiend talk to a Collector?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #16550 /* ~"Why would a fiend talk to a Collector?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #16551 /* ~"An interesting tale. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 74.1 75.0
  SAY #16301 /* ~"Ya missed the whole point, ya addle-coved sod! He's not a Collector! Heh... if ya ever find yerself talkin' to a fiend... a baatezu, mind ya', an' not one a' them barmy tanar'ri... why doncha' ask about it? Ya never know whatcha' might find out."~ */
  IF ~~ THEN REPLY #16552 /* ~"Thanks for the information. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16553 /* ~"Perhaps I will, should I meet one. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #16302 /* ~"Ya missed the whole point, ya addle-coved sod! He's not a Collector! Heh... if ya ever find yerself talkin' to a fiend... a baatezu, mind ya', an' not one a' them barmy..." He stops, noticing Fall-from-Grace. "Eh, 'more free-willed,' I mean, tanar'ri... why doncha' ask about it? Ya never know whatcha' might find out."~ */
  IF ~~ THEN REPLY #16554 /* ~"Thanks for the information. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16555 /* ~"Perhaps I will, should I meet one. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 53.3 53.4 54.2 54.3
  SAY #16303 /* ~"I told ya what I want for that dark, already: five rat tails. Not from yer normal rats, mind ya, but those off a' cranium rats... brain vermin. Get me five tails, an' I'll give ya the whole dark on that grubby Collector and the bloody rake."~ */
  IF ~~ THEN REPLY #16556 /* ~"I understand."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16557 /* ~"I don't think it's worth my time."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",3)
~ THEN BEGIN 79 // from:
  SAY #16304 /* ~Ratbone looks up as you approach. "Hmm?"~ */
  IF ~~ THEN REPLY #16558 /* ~"I had some questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #16559 /* ~"Just passing by. Farewell."~ */ EXIT
END
