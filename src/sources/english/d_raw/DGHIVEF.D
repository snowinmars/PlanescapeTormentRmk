// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33304 /* ~The woman's eyes go wide with fear as you approach her. "Go away! Go! Leave me be or I'll start screamin', I swears it!"~ */
  IF ~~ THEN REPLY #33305 /* ~Let her go.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33306 /* ~As you approach the woman, she looks side to side as if trying to find someone to duck behind. "I... I don't know nothin', cutter - please just leave me alone!"~ */
  IF ~~ THEN REPLY #33307 /* ~Leave.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33308 /* ~"Go pester someone else, ye sod! I've no time fer the like o' ye..."~ */
  IF ~~ THEN REPLY #33309 /* ~Leave.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33310 /* ~The woman steadfastly refuses to say even a single word to you.~ */
  IF ~~ THEN REPLY #33311 /* ~Leave.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33312 /* ~The woman blanches and begins fumbling for her dagger as she realizes you're approaching her. "I'll have nothin' ta do with ye, I won't! Go away!"~ */
  IF ~~ THEN REPLY #33313 /* ~Leave.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33314 /* ~"Ye're the berk that was lookin' fer Pharod! Have ye found him, yet? If not, ye might try lookin' north o' here, in Ragpicker's Square."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33315 /* ~"I'll try there, then. Farewell."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33448 /* ~"I found him already, but thanks. Farewell."~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33316 /* ~"If ye're ever in th' Gatherin' Dust bar, berk, don't be surprised if someone expects ye ta wait on 'em!" The woman snorts and begins to snicker.~ */
  IF ~~ THEN REPLY #33317 /* ~Leave.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33318 /* ~The woman is taking small bites out of what looks to be a rat on a stick. Seeing you watching her, she narrows her eyes suspiciously. "Talk ta Creeden if ye'd like one, an' stop eyein' mine! He stands outside the Office fer Vermin an' Disease Control."~ */
  IF ~~ THEN REPLY #33319 /* ~Leave.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33320 /* ~"If ye see any howlin' madmen runnin' about, stay away! That Starved Dog bunch scares me, they do..."~ */
  IF ~~ THEN REPLY #33321 /* ~Leave.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33322 /* ~"I've nothin' ta say that'd be o' help to ye... so just leaves me alone."~ */
  IF ~~ THEN REPLY #33323 /* ~Leave.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33324 /* ~The woman raises her eyebrows as you approach her. "I keep to meself, berk... an' it looks like ye ought a be doin' the same - keep out o' trouble fer a bit, aye? Fare ye well."~ */
  IF ~~ THEN REPLY #33325 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33326 /* ~The woman scowls as you draw near her. "I've neither the time nor the want ta speak ta strangers in the Hive, berk... 'tis not safe, in any case. Farewell."~ */
  IF ~~ THEN REPLY #33327 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33328 /* ~The woman sighs miserably. "Not much worse than livin' in th' Hive. Ye can get penned in th' dead-book just fer lookin' at a berk sideways."~ */
  IF ~~ THEN REPLY #33329 /* ~Leave.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33330 /* ~"Looks like ye could use a bit o' rest at the Flophouse, cutter. If ye're interested, 'tis in the middle o' this part o' the Hive."~ */
  IF ~~ THEN REPLY #33331 /* ~Leave.~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33332 /* ~"If ye're ever in th' Gatherin' Dust bar, berk, don't be surprised if someone expects ye ta wait on 'em!" The woman snorts and begins to snicker.~ */
  IF ~~ THEN REPLY #33333 /* ~Leave.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33334 /* ~The woman is taking small bites out of what looks to be a rat on a stick. Seeing you watching her, she narrows her eyes suspiciously. "Talk ta Creeden if ye'd like one, an' stop eyein' mine! He stands outside the Office fer Vermin an' Disease Control."~ */
  IF ~~ THEN REPLY #33335 /* ~Leave.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #33336 /* ~"If ye see any howlin' madmen runnin' about, stay away! That Starved Dog bunch scares me, they do..."~ */
  IF ~~ THEN REPLY #33337 /* ~Leave.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #33338 /* ~"Ye're the berk that was lookin' fer Pharod! Have ye found him, yet? If not, ye might try lookin' north o' here, in Ragpicker's Square."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33339 /* ~"I'll try there, then. Farewell."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33340 /* ~"I found him already, but thanks. Farewell."~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33344 /* ~"Stay away from that burnt-out alley southwest o' here, if ye're not spoilin' fer trouble."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33345 /* ~"Yes, I've already been there. Farewell."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33346 /* ~Leave.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33347 /* ~"There's a poor soul name o' Reekwind 'round here... so long as ye hold yer breath an' have a copper or three fer him, he's spin ye some fine tales."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33348 /* ~"Maybe I'll go find him. Farewell."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33349 /* ~"Yes, I've met him. Farewell."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33351 /* ~"Been ta th' Smolderin' Corpse, yet? Nice enough tavern, but th' burnin' man unnerves me a tad."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33352 /* ~"He's gone from there, now. Farewell."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33449 /* ~"Yes, I've been there myself. Farewell."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33350 /* ~Leave.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33353 /* ~"Greetin's, blood." The woman gives you a coy half-smile. "Say... I was considerin' goin' fer some bub, later... fancy comin' along?"~ */
  IF ~~ THEN REPLY #33354 /* ~"Perhaps another time... but I've too much to do now. Sorry."~ */ EXIT
  IF ~~ THEN REPLY #33472 /* ~"No. Farewell."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33355 /* ~"I can't stand the thought o' raisin' me child 'ere. Maybe one day me family can leave this awful place."~ */
  IF ~~ THEN REPLY #33356 /* ~Leave.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33357 /* ~The woman smiles at you. "No, I can't help ye... wish I could, though, I do."~ */
  IF ~~ THEN REPLY #33358 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33359 /* ~"Looks like ye could use a bit o' rest at the Flophouse, cutter. If ye're interested, 'tis in the middle o' this part o' the Hive."~ */
  IF ~~ THEN REPLY #33360 /* ~Leave.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33362 /* ~"Ye're the berk that was lookin' fer Pharod! Have ye found him, yet? If not, ye might try lookin' north o' here, in Ragpicker's Square."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33363 /* ~"I'll try there, then. Farewell."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33364 /* ~"I found him already, but thanks. Farewell."~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33365 /* ~"I met a tattooed man named Porphiron here, th' other day. He's said ta be a monk o' some sort, an' a warrior... but he won't fight."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33366 /* ~"Perhaps I'll go find him, then. Farewell."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33361 /* ~"Yes, I've met him. Farewell."~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33367 /* ~"If ye're lookin' ta find yer way around, cutter, there's a Post outside th' Gatherin Dust bar."~ */
  IF ~~ THEN REPLY #33368 /* ~Leave.~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33370 /* ~"Stay away from that burnt-out alley southwest o' here, if ye're not spoilin' fer trouble."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33371 /* ~"Yes, I've already been there. Farewell."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33372 /* ~Leave.~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33373 /* ~"Many folk come ta remember their dead at th' Dustman Memorial... there's a Dustman there who can put someone's name on th' Memorial for ye, or tell ye if someone ye're lookin' for has died."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #33374 /* ~"Yes, he's called 'Death-of-Names.' Farewell."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #33369 /* ~Leave.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33375 /* ~"Dustmen stay out o' most o' the taverns in the Hive... except fer the Gatherin' Dust. There's hardly anyone *but* the Dead in there."~ */
  IF ~~ THEN REPLY #33376 /* ~Leave.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33377 /* ~The woman is taking small bites out of what looks to be a rat on a stick. Seeing you watching her, she narrows her eyes suspiciously. "Talk ta Creeden if ye'd like one, an' stop eyein' mine! He stands outside the Office fer Vermin an' Disease Control."~ */
  IF ~~ THEN REPLY #33378 /* ~Leave.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33380 /* ~"There's a poor soul name o' Reekwind 'round here... so long as ye hold yer breath an' have a copper or three fer him, he's spin ye some fine tales."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33381 /* ~"Maybe I'll go find him. Farewell."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33379 /* ~"Yes, I've met him. Farewell."~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33382 /* ~"Have ye spent much time at the market, cutter? They've got just about anythin' a body needs, there."~ */
  IF ~~ THEN REPLY #33383 /* ~Leave.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33384 /* ~"I hope Prophyra's wrong, I do... if ye haven't heard the woman's prophecies, she's usually cryin' 'em out in the Market..."~ */
  IF ~~ THEN REPLY #33386 /* ~Leave.~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33387 /* ~"Stay away from that burnt-out alley northeast o' here, if ye're not spoilin' fer trouble."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33388 /* ~"Yes, I've already been there. Farewell."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33385 /* ~Leave.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33389 /* ~"If ye see any howlin' madmen runnin' about, stay away! That Starved Dog bunch scares me, they do..."~ */
  IF ~~ THEN REPLY #33392 /* ~Leave.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33393 /* ~"Been ta th' Smolderin' Corpse, yet? Nice enough tavern, but th' burnin' man unnerves me a tad."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33394 /* ~"He's gone from there, now. Farewell."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33390 /* ~"Yes, I've been there myself. Farewell."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33391 /* ~Leave.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33395 /* ~"I met a man called 'Mourns-for-Trees' the other day... he seemed hells-bent on findin' folk ta help care for the trees, here. Mayhap he'd be better off spendin' time tryin' ta help the people here, instead."~ */
  IF ~~ THEN REPLY #33396 /* ~Leave.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33397 /* ~"All the help I can give is ta warn ye 'bout the thieves here, cutter... lots o' pickpockets in this part o' the Hive, I hear."~ */
  IF ~~ THEN REPLY #33398 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33401 /* ~"I saw some poor, barmy chit rantin' and scamperin' about the other day. It's wonder she hasn't starved or gotten herself killed, addled as she is."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33402 /* ~"Yes... she should be home or on her way there, shortly. Farewell."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33399 /* ~"I've met her; her name is Ingress. Farewell."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33400 /* ~Leave.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33403 /* ~"Stay away from Gaoha at th' Market! Me husband loses jink every time he makes bets with that thrice-blasted gith!"~ */
  IF ~~ THEN REPLY #33404 /* ~Leave.~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33407 /* ~"What strange tattoos! Some look a bit like the ones done at the parlor 'ere in the Hive. The one run by a dabus, ye know?"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33408 /* ~"Yes, I know; his name's Fell."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33409 /* ~"I know the place, yes."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33405 /* ~"No, I've never been there."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_D","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33410 /* ~"Lady strike me blind! I've seen ye before, cutter, but I never thought I'd see ye again! Sigil's smaller than ye thinks, I suppose."~ */
  IF ~~ THEN REPLY #33411 /* ~"You know me?"~ */ DO ~SetGlobal("Hive_OT_D","GLOBAL",1)
~ GOTO 44
  IF ~~ THEN REPLY #33406 /* ~"Perhaps so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #33413 /* ~She smiles nervously. "Know ye? Nay, but like I said, I've seen ye. T'was last year... late at night, near anti-peak... lookin' fer me sister, I was, when ye came tearin' past like mad. Stumbled an' dropped this, ye did, right at my feet, afore runnin' off. I kept it fer good luck, seein' as how fate saw fit ta drop it right in front o' me there." She holds up a wicked-looking dagger. "Here... seein' as I've run inta ye again, takes it back, cutter. Farewell."~ */
  IF ~~ THEN REPLY #33414 /* ~"Thanks... farewell."~ */ DO ~GiveItemCreate("GSDagger",Protagonist,1,0,0)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,2)
Global("Hive_OT_E","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33415 /* ~The woman seems to recognize you instantly; she steps back in horror. "After all this time... ye *bastard!* May all th' fiends in Baator take ye! One day ye'll be sorry fer what ye did ta Aerin... by all the powers I *swears* it!" She turns to flee.~ */
  IF ~~ THEN REPLY #33416 /* ~"Wait..."~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33417 /* ~Let her go.~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,3)
Global("Hive_OT_F","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #33420 /* ~"Well, if it ain't me very own dark savior. Took yer time in comin' around, ye did... I was startin' ta think ye wouldn't be comin' by at all, blood." She starts to rummage around in her belt pouch.~ */
  IF ~~ THEN REPLY #33421 /* ~"Wait... I think you're mistaken..."~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #33412 /* ~Wait patiently.~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
GiveItemCreate("SilRing",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #33424 /* ~"Good an' dead, just like ye said he'd be... an' that's how I like him. Here's yer blood money, cutter... that ring I promised ye. Fare ye well."~ */
  IF ~~ THEN REPLY #33425 /* ~"Wait one moment... I had some questions..."~ */ GOTO 48
  IF ~~ THEN REPLY #33418 /* ~Let her go.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #33426 /* ~"No, cutter... it's been a good long time, it has, but I'd still best not be seen talkin' to ye. He had friends, ye know, an' I think they've a feelin' about what happened. We won't speak again."~ */
  IF ~~ THEN REPLY #33427 /* ~"But..."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33479 /* ~"Farewell, then."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.0
  SAY #33431 /* ~She gives you an odd look, then squints at the tattoos wrapped around your upper arm. Finally, she shrugs. "Suit yerself, cutter. Fare ye well..."~ */
  IF ~~ THEN REPLY #33432 /* ~Let her go.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 50 // from:
  SAY #33434 /* ~This person has nothing more to tell you.~ */
  IF ~~ THEN REPLY #33428 /* ~Leave.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 51 // from:
  SAY #33436 /* ~This person has nothing of importance to say to you.~ */
  IF ~~ THEN REPLY #33451 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 52 // from:
  SAY #33469 /* ~This person has nothing more of interest to say.~ */
  IF ~~ THEN REPLY #33471 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 53 // from:
  SAY #33470 /* ~This person has nothing more to say to you.~ */
  IF ~~ THEN REPLY #33480 /* ~Leave.~ */ EXIT
END
