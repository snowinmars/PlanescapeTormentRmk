// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPILLAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPILLAR~

IF ~  Global("Pillar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #51733 /* ~The sight of this thing - this horrible, towering, pulsating *thing* - fills you with nausea, unfounded loathing, and a faint sense of familiarity. The innumerable rotting heads which make up the vast pile seems to constantly shift and throb, alternately bickering, weeping, conversing, shouting, and whispering to one another. Heads constantly bubble to the surface of the stack from somewhere within its foul core, while others sink back into the grisly pillar.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #51734 /* ~Get the Pillar's attention.~ */ EXTERN ~DMORTE~ 512
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53326 /* ~Get the Pillar's attention.~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #53327 /* ~Leave the Pillar before you're noticed.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 53.1 53.2
  SAY #53328 /* ~You take another cautious step towards the pillar, and all their conversation abruptly *stops.* The dozens of heads that line the pillar's surface slowly turn to face you in unison. They regard you silently, their breath fetid and moist upon you.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53329 /* ~"I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53330 /* ~"I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53331 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53332 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53333 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53334 /* ~"I was merely passing by. Farewell."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #68082 /* ~"I was merely passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 56.0 56.1 61.0 61.1 63.0 63.1
  SAY #53335 /* ~Every head on the pillar's surface speaks at once to make the thing's voice - a terrible, burbling sound that bubbles forth while foul, stinging vapors and putrid corruption stream from their mouths. "THE SMELL, 'TIS STRONG. IT SHALL CROSS THE PLANES, SOON, AND BEL WILL COME."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53336 /* ~"The... smell? What do you mean?"~ */ GOTO 3
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #53337 /* ~"The... smell? What do you mean?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53338 /* ~The heads' eyes turn wetly in their sockets to stare at Fall-from-Grace. "THE SMELL... HER MUSK... THE TANAR'RI *MUSK.* THE BITTERSWEET SCENT *CARRIES,* AND WILL ATTRACT BAATEZU, SOON. THEIR LORD, BEL, WILL BE ANGRY."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53339 /* ~"I see..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53340 /* ~"I see..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #53341 /* ~The heads' eyes turn wetly in their sockets to stare at Annah. "THE SMELL... HER MUSK... THE FIENDLING'S TANAR'RI *MUSK.* THE BITTERSWEET SCENT *CARRIES,* AND WILL ATTRACT BAATEZU, SOON. THEIR LORD, BEL, WILL BE *ANGRY.*"~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53342 /* ~"I see..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53343 /* ~"I see..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #53344 /* ~The heads turn their gazes back to you, though a few still snuffle noisily. "IF HAVE YOU *QUESTIONS* FOR US, YOU HAD BEST BE *QUICK.*" A few of the heads squint and gurgle softly; you think they might be laughing at you.~ */
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",0)
~ THEN REPLY #53345 /* ~"As I said before, then: I had-"~ */ DO ~SetGlobal("Pillar_Pharod","AR1001",1)
~ GOTO 6
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",1)
~ THEN REPLY #53346 /* ~"As I said before, then: I had some questions..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #68075 /* ~"As I said before, then: I had some questions..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #53347 /* ~Before you can finish, a portion of the pillar trembles as yet another head oozes its way to the surface. After some of the noisome slime has sloughed off, you recognize it as Pharod's. It spits out a mouthful of bloody cysts and croaks: "Annah, me darling child! Is that you?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 263
END

IF ~~ THEN BEGIN 7 // from:
  SAY #53348 /* ~The other heads remain mostly silent for a time as Pharod's speaks... only a few whisper quietly to themselves, making wicked sidelong glances at Annah and her foster father's head. "I was wrong, my dear girl, about the Sphere. It wasn't enough, no, and now look where I've ended... I beg of you, lovely Annah! Save your poor father! Save me! Oh, please, save me! Save m-" But even as it speaks, Pharod's mewling head begins to sink back into the Pillar's core...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 264
END

IF ~~ THEN BEGIN 8 // from:
  SAY #53352 /* ~"ENOUGH," bellow the pillar's stinking heads. "WE TIRE OF YOUR INSIGNIFICANT PRATTLE, AND WOULD KNOW YOUR BUSINESS WITH US."~ */
  IF ~~ THEN REPLY #53353 /* ~"Questions. I had questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #53354 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #53355 /* ~You take another cautious step towards the pillar, and all their conversation abruptly *stops.* The dozens of heads that lines the pillar's surface slowly turn to face you in unison. They regard you silently, their breath fetid and moist upon you... until they notice Morte cowering behind you.~ */
  IF ~~ THEN DO ~SetGlobal("Pillar","GLOBAL",1)
SetGlobal("Pillar_Morte","AR1001",1)
~ EXTERN ~DMORTE~ 525
END

IF ~~ THEN BEGIN 10 // from:
  SAY #53356 /* ~Every head on the pillar's surface speaks at once to make the thing's voice - a terrible, burbling sound that bubbles forth while foul, stinging vapors and putrid corruption stream from their mouths. "*YOU* AGAIN... 'TIS BEEN A LONG TIME, INDEED." Many of the heads begin to gibber and drool, chanting "...skull, skull, skull..." gleefully, licking their lips, their eyes fixated upon Morte.~ */
  IF ~~ THEN REPLY #53357 /* ~"What do you mean?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53358 /* ~"SILENCE! WE SPEAK NOT TO YOU, BUT TO THE SKULL. WELCOME BACK, LITTLE ONE. HAVE YOU AT LAST DECIDED TO RETURN TO THE FOLD, TO ACCEPT YOUR FINAL FATE, TO TAKE UP ONCE MORE YOUR SACRED DUTY?" Several heads burst forth from the Pillar's core, gnashing their broken teeth and wailing: "Yes, come back! Come back to us, skull! Skull..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 526
END

IF ~~ THEN BEGIN 12 // from: 1.2 1.3 1.4 5.1 5.2 8.0 14.0 30.0 37.3 38.2 39.1 40.1 43.1 44.1 45.1 46.1 47.0 48.0 49.0 56.2 56.3 56.4 61.2 61.3 61.4 63.2 63.3 63.4
  SAY #53359 /* ~The heads shift sluggishly across the face of the pillar, nodding and murmuring before speaking in its ghastly voice: "ASK A QUESTION OF US, THEN, AND BE PREPARED TO HEAR OUR DEMANDS - YOU SHALL RENDER UNTO US A SERVICE FOR YOUR ANSWER."~ */
  IF ~~ THEN REPLY #53360 /* ~"What are you?"~ */ GOTO 13
  IF ~~ THEN REPLY #53361 /* ~"How do I reach the Fortress of Regrets?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",2)
~ GOTO 15
  IF ~~ THEN REPLY #53362 /* ~"Who am I?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",3)
~ GOTO 15
  IF ~~ THEN REPLY #53363 /* ~"Who is my killer?"~ */ GOTO 49
  IF ~  Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #53364 /* ~"How might I leave this place?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",4)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53365 /* ~"Never mind. Farewell."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53366 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53367 /* ~The heads gurgle and croak their reply through rotted lips: "WE WOULD ANSWER THAT QUESTION FOR A SERVICE..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53368 /* ~"Very well; what's your demand?"~ */ EXTERN ~DMORTE~ 527
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #53369 /* ~"Very well; what's your demand?"~ */ EXTERN ~DGRACE~ 172
  IF ~  NearbyDialog("Dnordom")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
~ THEN REPLY #53370 /* ~"Very well; what's your demand?"~ */ EXTERN ~DNORDOM~ 131
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
~ THEN REPLY #53371 /* ~"Very well; what's your demand?"~ */ EXTERN ~DANNAH~ 270
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
~ THEN REPLY #53372 /* ~"Very well; what's your demand?"~ */ EXTERN ~DDAKKON~ 184
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53373 /* ~"Very well; what's your demand?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53374 /* ~"Very well; what's your demand?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
~ THEN REPLY #53375 /* ~"Very well; what's your demand?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53376 /* ~"Never mind. Farewell."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53377 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #53378 /* ~The heads interrupt with their one voice: "SILENCE! YOU DEMEAN OUR NOBLE STATION WITH SUCH CASUAL TALK!" A particularly hideous head cries out: "And to call *all* of us liars is-" before being sucked back into the pillar's sickly heart.~ */
  IF ~~ THEN REPLY #53379 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53380 /* ~"I'll leave, then. Farewell."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53381 /* ~"I'll leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 12.2 12.4
  SAY #53382 /* ~The heads gurgle and croak their reply through rotted lips: "WE WOULD ANSWER THAT QUESTION FOR A SERVICE..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53383 /* ~"What's your demand, Pillar?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53384 /* ~"What's your demand, Pillar?"~ */ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53385 /* ~"What's your demand, Pillar?"~ */ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53386 /* ~"What's your demand, Pillar?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53387 /* ~"What's your demand, Pillar?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53388 /* ~"What's your demand, Pillar?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53389 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53390 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #53391 /* ~The pillar's head all turn to leer at Morte. "THE SKULL... WE DEMAND THE SKULL AS TRIBUTE. RETURN HIM TO US, AND YOU SHALL HAVE YOUR ANSWER."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 528
END

IF ~~ THEN BEGIN 17 // from:
  SAY #53392 /* ~"CEASE YOUR FEEBLE PROTESTATIONS, SKULL! THE DECISION IS NOT YOURS!" The pillar's many heads swivel slowly to face you, their eyes narrowed. "TOO LONG HAS HE CHEATED HIS FATE; HE IS *OURS.* WERE YOU TO RETURN HIM, WE WOULD BE MOST WELL-DISPOSED TOWARD SUCH A GIFT... WE WISH TO SAVOR HIS SCREAMS..."~ */
  IF ~  Global("Where_Fhjull","AR1001",1)
~ THEN REPLY #53393 /* ~"All right... you may have him."~ */ GOTO 18
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53394 /* ~"All right... you may have him."~ */ EXTERN ~DMORTE~ 532
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53395 /* ~"A gift? What *other* gifts would you accept?"~ */ GOTO 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53396 /* ~"A gift? What *other* gifts would you accept?"~ */ GOTO 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53397 /* ~"A gift? What *other* gifts would you accept?"~ */ GOTO 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53398 /* ~"A gift? What *other* gifts would you accept?"~ */ GOTO 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53399 /* ~"A gift? What *other* gifts would you accept?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53400 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53401 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #53402 /* ~"YESSSSS..." The stack of heads begins to writhe and boil, heads thrusting to the surface to howl and babble before sinking back down. They drool and chatter: "I cannot wait to savor his screams!" Another: "Screams be damned! The *torment* is what's best for one so annoying as he! I shall yank his teeth out, spit them into his brain pan and shake him like a babe's rattle!" And another: "Oo! Oo! I'll eat his eyes out!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 529
END

IF ~~ THEN BEGIN 19 // from: 13.5 15.1 17.2
  SAY #53403 /* ~The pillar leans towards you, the eyes of its heads narrowing. "THERE IS *KNOWLEDGE* YOU POSSESS THAT WE WISH FOR OURSELVES. WHERE DOES THE FIEND, FHJULL FORKED-TONGUE, RESIDE? TELL US, AND WE SHALL ANSWER YOUR QUESTION." The stench of the pillar's hot breath surrounds you as it awaits your reply...~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53404 /* ~"In the Outlands, where Ul-Goris, father of all goristro was laid low in the Crater War. Fhjull lives within its skeleton."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53405 /* ~"In the Outlands, where Ul-Goris, father of all goristro was laid low in the Crater War. Fhjull lives within its skeleton."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  CheckStatLT(Protagonist,18,CHR)
~ THEN REPLY #53406 /* ~Lie: "He is... hidden somewhere, in the Outlands. Beneath a large mountain."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,17,CHR)
~ THEN REPLY #53407 /* ~Lie: "Fhjull has hidden himself well in a demi-plane of a long-dead sorcerer's devising. He appears only occasionally within Sigil, and it's there that I met him."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53408 /* ~"I won't say. What *other* gifts would you accept?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53409 /* ~"I won't say. What *other* gifts would you accept?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53410 /* ~"I won't say. What *other* gifts would you accept?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53411 /* ~"I won't say. What *other* gifts would you accept?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53412 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53413 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.6 15.2 17.3 19.4 24.2
  SAY #53414 /* ~The pillar's heads - save for the hissing of foul vapors issuing from rents in its rancid surface - remain silent for a time. Finally, it answers: "THERE IS AN OBJECT IN YOUR POSSESSION THAT WE WISH FOR OURSELVES. THE MODRON CUBE: GIVE IT TO US, AND WE SHALL ANSWER YOUR QUESTION."~ */
  IF ~~ THEN REPLY #53415 /* ~"Here... take it."~ */ DO ~DestroyPartyItem("cube",FALSE)
~ GOTO 25
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53416 /* ~"I can't do that. What *other* gifts would you accept?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53417 /* ~"I can't do that. What *other* gifts would you accept?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53418 /* ~"I can't do that. What *other* gifts would you accept?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53419 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53420 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.3 17.4 19.5 20.1 24.3
  SAY #53421 /* ~The pillar's heads frown, their eyes flickering this way and that. Suddenly, they all come to rest on Fall-from-Grace. "SHE WILL DO... YES. THE TANAR'RI. GIVE HER TO US... WE WILL CONSUME HER ALIVE, BATHE OURSELVES IN HER SWEET BLOOD... THEN, WE SHALL ANSWER YOUR QUESTION." A number of the heads begin to moan with longing, calling to Grace: "Yes, tanar'ri, sweet succubus, wicked thing, surrender yourself to us..."~ */
  IF ~~ THEN REPLY #53422 /* ~"Very well. You may have her."~ */ EXTERN ~DGRACE~ 173
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #53423 /* ~"I can't do that. What *other* gifts would you accept?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #53424 /* ~"I can't do that. What *other* gifts would you accept?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53425 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53426 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.4 17.5 19.6 20.2 21.1 24.4
  SAY #53427 /* ~A deep rumbling issues from within the pillar; more heads worm their way to its roiling surface, dissecting you with their scarlet eyes. At last, their gaze finds Annah. "THE FIENDLING! GIVE US THE TIEFLING GIRL, YES... WE SHALL TEAR HER APART WITHIN US, REVEL IN THE BASKING OF HER SWEET, FIERY BLOOD... THEN, WE SHALL ANSWER YOUR QUESTION."~ */
  IF ~~ THEN REPLY #53428 /* ~"Very well. You may have her."~ */ EXTERN ~DANNAH~ 271
  IF ~~ THEN REPLY #53429 /* ~"I can't do that. What *other* gifts would you accept?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53430 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53431 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.7 15.5 17.6 19.7 20.3 21.2 22.1 24.5
  SAY #53432 /* ~The mouths of every head on the pillar's face split in depraved, sickly grins; they chortle and burble, laughing at you. "YOU HAVE *NOTHING* FOR US... SAVE YOURSELF. COME, IMMORTAL... GIVE US A TASTE OF YOUR UNDYING BLOOD. THEN, WE SHALL ANSWER YOUR QUESTION." The heads clack their teeth together, drooling and smacking their split, pus-covered lips in anticipation...~ */
  IF ~~ THEN REPLY #53433 /* ~"Very well. I agree to your demands."~ */ GOTO 26
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53434 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53435 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY #53436 /* ~The Pillar of Skulls rears back, its every head sneering down at you. They spit their words at you: "DO NOT PRESUME TO LIE TO US, FOOLISH ONE. WHERE - IS - *FHJULL?* TELL US, AND WE SHALL FORGIVE YOUR DECEIT AND ANSWER YOUR QUESTION."~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53437 /* ~"In the Outlands, where Ul-Goris, father of all goristro was laid low in the Crater War. Fhjull lives within its skeleton."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53438 /* ~"In the Outlands, where Ul-Goris, father of all goristro was laid low in the Crater War. Fhjull lives within its skeleton."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53439 /* ~"I won't say. What *other* gifts would you accept?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53440 /* ~"I won't say. What *other* gifts would you accept?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53441 /* ~"I won't say. What *other* gifts would you accept?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53442 /* ~"I won't say. What *other* gifts would you accept?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53443 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53444 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.0
  SAY #53445 /* ~You toss the cube towards the Pillar of Skulls, and a great, stinking gash opens within its side to receive it. In moments, the gash is sealed and the cube is gone - somehow, you know - forever. The heads gurgle happily, shifting slowly across the pillar's face.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #53446 /* ~"APPROACH US, THEN... YES, COME CLOSER..." The heads seem to draw back within the Pillar as you approach it...~ */
  IF ~~ THEN REPLY #53447 /* ~Step closer.~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53448 /* ~"I've reconsidered, actually. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53449 /* ~"I've reconsidered, actually. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #53450 /* ~Though you draw only a single step nearer, you suddenly find yourself much closer to the pillar's writhing surface than you had imagined. Before you can react, it presses forward into you like a wave of broken bone and rotten, worm-infested meat. As the rancid darkness envelopes you, the pillar's heads begin to consume you alive...~ */
  IF ~~ THEN REPLY #53451 /* ~Fall into darkness...~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,15)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #53452 /* ~You find yourself standing before the Pillar of Skulls, aching and unsure of what, exactly, has just happened. What you are certain of, though, is that your body is somehow *weaker* for whatever ordeal it just suffered through. The grotesque heads leer down at you, grinning and smacking their lips...~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 19.0 19.1 19.3 24.0 24.1 25.0 28.0
  SAY #53453 /* ~The pillar savors your gift for a time, its heads cooing and whispering to one another.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53454 /* ~"And my answer...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ JOURNAL #53458 /* ~The Pillar of Skulls told me it was made up of the heads of those whose lies led others to their deaths. It can answer many questions, but expects much in terms of payment for its knowledge~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53455 /* ~"And my answer...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53456 /* ~"And my answer...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53457 /* ~"And my answer...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Leave_Baator","GLOBAL",1)
~ GOTO 48
END

IF ~~ THEN BEGIN 30 // from: 29.0 52.0
  SAY #53460 /* ~"WE ARE THOSE WHO, IN MORTAL LIVES LONG SINCE FORGOTTEN, MADE SUGGESTIONS WHICH LED TO THE DEATH OF ANOTHER. SOME CALL US 'LIARS' - YET WHAT IS 'TRUTH' BUT ANOTHER NAME FOR A LIE? TRUTH SO OFTEN CLOAKS DECEIT..." The heads mutter and nod to one another in affirmation, then turn back to you. "WE KNOW MUCH... BUT ASK MUCH OF THOSE WHO WOULD QUESTION US."~ */
  IF ~~ THEN REPLY #53461 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53462 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53463 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 52.1
  SAY #53464 /* ~"ALREADY YOU POSSESS THE KEY, AND NEED ONLY THE LOCATION OF THE PORTAL THAT SHALL LEAD YOU THERE. WE KNOW NOT WHERE THE PORTAL LIES, BUT MIGHT TELL YOU ITS KEY: 'REGRET.'" Many of the pillar's heads begin to weep and moan: "Yes, regret! Regret!"~ */
  IF ~~ THEN REPLY #53465 /* ~"Regret?"~ */ DO ~SetGlobal("Chaotic_Adyzoel_1","GLOBAL",1)
~ JOURNAL #53459 /* ~The Pillar of Skulls told me that 'regret' was key to the portal that leads to the Fortress of Regrets. Seems appropriate. It did not, however, know the way to the portal. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #53469 /* ~"YES... YOU MUST HAVE EXPERIENCED REGRET TO BREACH THE FORTRESS. WRITE IT UPON A PIECE OF YOUR FLESH AND YOUR PASSAGE THROUGH THE PORTAL IS ASSURED."~ */
  IF ~~ THEN REPLY #53470 /* ~"And the portal... you say you *don't* know where it is?"~ */ DO ~SetGlobal("Know_Fortress_Location_Forgot","GLOBAL",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #53473 /* ~"YES... ONLY THREE HAVE KNOWN THE WAY. THE FIRST ONE WAS YOU... THOUGH YOU HAVE FORGOTTEN, NOW. THE SECOND LIES BEYOND THE PORTAL, AND SHALL NOT EMERGE. THE THIRD..."~ */
  IF ~~ THEN REPLY #53474 /* ~"The third...?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #53478 /* ~"...THE THIRD ONE YOU HAVE ALREADY MET. THEY KNOW OF YOUR CONDITION, THE FORTRESS AND YOUR NEED TO REACH THERE... BUT THEY SHALL NOT HELP YOU. THEIR SHIELD IS ONE FORGED FROM THE COLD METALS OF LIES AND DECEPTION, A THING YOU CANNOT HOPE TO BREAK WITH MERE WORDS. YOU MUST DO BATTLE WITH THEM."~ */
  IF ~~ THEN REPLY #53479 /* ~"Who is it?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #53483 /* ~The heads remain silent for a time, giving you naught but smug smiles. Finally, it speaks: "YOU HAVE *MET* THE LIAR - AND NOT FOR THE FIRST TIME. THE LIAR KNOWS... BUT DID NOT TELL YOU. A *PETTY* BETRAYAL BETWEEN IMMORTALS..." Some of the decomposing heads roll their eyes and snicker at you.~ */
  IF ~~ THEN REPLY #53484 /* ~"Fhjull Forked-Tongue?"~ */ GOTO 36
  IF ~~ THEN REPLY #53485 /* ~"Lothar?"~ */ GOTO 36
  IF ~~ THEN REPLY #53486 /* ~"Ravel?"~ */ GOTO 36
  IF ~~ THEN REPLY #53487 /* ~"Trias?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53491 /* ~The Pillar of Skulls told me that Trias - who it called "Trias the Betrayer" - would know where the portal to the Fortress of Regrets was.~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 35.2 36.0 36.1 36.2
  SAY #53492 /* ~The heads chortle with sickly glee. "NOT THAT ONE, TO BE SURE. GUESS AGAIN..."~ */
  IF ~~ THEN REPLY #53493 /* ~"Fhjull Forked-Tongue?"~ */ GOTO 36
  IF ~~ THEN REPLY #53494 /* ~"Lothar?"~ */ GOTO 36
  IF ~~ THEN REPLY #53495 /* ~"Ravel?"~ */ GOTO 36
  IF ~~ THEN REPLY #53496 /* ~"Trias?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53500 /* ~The Pillar of Skulls told me that Trias - who it called 'Trias the Betrayer' - would know where the portal to the Fortress of Regrets was.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.3 36.3
  SAY #53501 /* ~"OH, YES... THOUGH WE KNOW HIM BY HIS *FULL* NAME: TRIAS, THE BETRAYER!" The pillar shakes with mirth, the pile of rotting heads tottering back and forth as it laughs at your distress. A few of the heads chant mockingly: "Betrayer... Betrayer... Trias, the Betrayer..."~ */
  IF ~~ THEN REPLY #53502 /* ~"But... he said he didn't know..."~ */ GOTO 38
  IF ~~ THEN REPLY #53503 /* ~"Why would he lie to me?"~ */ GOTO 39
  IF ~~ THEN REPLY #53504 /* ~"How did he come to know of this?"~ */ GOTO 40
  IF ~~ THEN REPLY #53505 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53506 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53507 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #53508 /* ~"HE *LIED* TO YOU." Some of the heads squint, gurgling and chortling softly - laughing at you. "BEWARE WORDS SOAKED IN HONEY; THEY ATTRACT ALL MANNER OF WASPS."~ */
  IF ~~ THEN REPLY #53509 /* ~"Why would he lie to me?"~ */ GOTO 39
  IF ~~ THEN REPLY #53510 /* ~"How did he come to know of this?"~ */ GOTO 40
  IF ~~ THEN REPLY #53511 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53512 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53513 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.0 40.0
  SAY #53514 /* ~"THE ANSWER IS NOT OURS TO GIVE. YOU MUST SEEK HIM OUT YOURSELF, AND ASK HIM."~ */
  IF ~~ THEN REPLY #53515 /* ~"How did he come to know of this?"~ */ GOTO 40
  IF ~~ THEN REPLY #53516 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53517 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53518 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2 38.1 39.0
  SAY #53519 /* ~"TRIAS EXCHANGED WORDS WITH YOU ONCE, LONG AGO, WHEN YOU KNEW THE WAY. YOU SPOKE YOUR HEART, AND TRIAS - IN THE WAY OF ALL GREAT BETRAYERS - LISTENED WELL TO BUILD YOUR TRUST. SHORT THE CONVERSATION WAS, THOUGH FILLED WITH *MEANING.* MEANING AND DEATH IS WHAT YOU SEEK... TWO SEPARATE THINGS THEY ARE FOR A NORMAL MAN. BUT FOR YOU... ONE AND THE SAME."~ */
  IF ~~ THEN REPLY #53520 /* ~"Why would he lie to me?"~ */ GOTO 39
  IF ~~ THEN REPLY #53521 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53522 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53523 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.2 52.2
  SAY #53524 /* ~"NOT *WHO* - WHAT. YOU HAVE BEEN DIVIDED. YOU ARE ONE OF MANY MEN - ONE IN MANY MEN. EACH ONE - WHETHER GOOD OR EVIL - A MONSTER, WHO CASTS A SHADOW UPON EXISTENCE."~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN REPLY #53525 /* ~"A... shadow upon existence?"~ */ JOURNAL #53527 /* ~The Pillar of Skulls told me that I cast 'shadows on existence' - that each time I die, another dies in my stead. Those who die in such a manner then become creatures of shadow, and apparently gather and wait for me at the Fortress of Regrets.~ */ GOTO 42
  IF ~  !NearbyDialog("Dvhail")
~ THEN REPLY #53526 /* ~"A... shadow upon existence?"~ */ JOURNAL #53527 /* ~The Pillar of Skulls told me that I cast 'shadows on existence' - that each time I die, another dies in my stead. Those who die in such a manner then become creatures of shadow, and apparently gather and wait for me at the Fortress of Regrets.~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #53528 /* ~"OH, YES." The pillar's heads narrow their eyes and smile grotesquely. "EACH TIME YOU DIE, 'IMMORTAL,' YOU CAST A SHADOW... EACH TIME YOU DIE, *ANOTHER* DIES IN YOUR STEAD. THESE SHADOWS... THEY GATHER, HUNGERING FOR YOU, WITHIN THE FORTRESS OF REGRETS. HOW MANY TIMES *HAVE* YOU PERISHED, NAMELESS ONE? HOW MANY HUNDREDS... THOUSANDS... HAVE DIED, BECAUSE OF *YOU?*" The pillar trembles with wicked glee; its heads pull faces and gurgle mockingly at you. Suddenly, the hair on the back of your neck rises... you turn to see Vhailor staring at you, his eyes burning brighter than you've ever seen them...~ */
  IF ~~ THEN REPLY #53529 /* ~"Vhailor...?"~ */ EXTERN ~DVHAIL~ 11
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #53530 /* ~"OH, YES." The pillar's heads narrow their eyes and smile grotesquely. "EACH TIME YOU DIE, 'IMMORTAL,' YOU CAST A SHADOW... EACH TIME YOU DIE, *ANOTHER* DIES IN YOUR STEAD. THESE SHADOWS... THEY GATHER, HUNGERING FOR YOU, WITHIN THE FORTRESS OF REGRETS. HOW MANY TIMES *HAVE* YOU PERISHED, NAMELESS ONE? HOW MANY HUNDREDS... THOUSANDS... HAVE DIED, BECAUSE OF *YOU?*" The pillar trembles with wicked glee; its heads pull faces and gurgle mockingly at you.~ */
  IF ~~ THEN REPLY #53531 /* ~"Is that all you have to say, Pillar?"~ */ GOTO 44
  IF ~~ THEN REPLY #53532 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53533 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53534 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #53535 /* ~The heads abruptly cease their laughter. "NO. YOU BEAR MANY NAMES; EACH HAS LEFT THEIR SCARS ON YOUR FLESH:"~ */
  IF ~~ THEN REPLY #53536 /* ~"Go on..."~ */ GOTO 45
  IF ~~ THEN REPLY #53537 /* ~"Wait... I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53538 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53539 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #53540 /* ~"LOST ONE... IMMORTAL ONE... INCARNATION'S END... MAN OF A THOUSAND DEATHS... THE ONE DOOMED TO LIFE... RESTLESS ONE... ONE OF MANY... THE ONE WHOM LIFE HOLDS PRISONER... THE BRINGER OF SHADOWS... THE WOUNDED ONE... MISERY-BRINGER... YEMETH..."~ */
  IF ~~ THEN REPLY #53541 /* ~Keep listening.~ */ GOTO 46
  IF ~~ THEN REPLY #53542 /* ~"Wait... I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53543 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53544 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #53545 /* ~"YOU ARE AS SILVERED GLASS THAT HAS CRACKED... SHATTERED, AND THE PIECES SCATTERED ACROSS HISTORY." "ONLY ONE PIECE IS OF IMPORT. REGAIN THAT, AND YOUR LIFE SHALL BE YOURS ONCE MORE. THERE WILL BE A PRICE. THIS PRICE WILL BUY YOU A CHANCE. WITHOUT THE CHANCE, YOU ARE DOOMED..."~ */
  IF ~~ THEN REPLY #53546 /* ~"Go on..."~ */ GOTO 47
  IF ~~ THEN REPLY #53547 /* ~"Wait... I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53548 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53549 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #53550 /* ~"YOU HAVE LOST THAT WHICH IS NEVER MEANT TO BE SEPARATED FROM MAN. YOUR MORTALITY HAS BEEN STRIPPED FROM YOU... LOST. IT EXISTS, BUT YOU MUST FIND IT BEFORE YOUR MIND IS LOST TO YOU AS WELL."~ */
  IF ~~ THEN REPLY #53551 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53552 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53553 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 52.3
  SAY #53554 /* ~"LEAVE THIS PLACE, AND STRIKE OUT DIRECTLY WESTWARDS ALONG THE BOULDERS THAT LINE THE BLASTED VALE. YOU SHALL EVENTUALLY REACH THE VALE'S FAR EDGE; THERE, SEEK A PLACE BETWEEN THE STONES THAT MAKES UP THE PORTAL. ITS KEY IS OBSIDIAN, RECENTLY BURNT BY AVERNUS' FIRES - YOU SHALL FIND MUCH OF IT AROUND THE PORTAL. PLACE A SHARD OF IT IN YOUR MOUTH AND BITE DOWN SO THAT IT CUTS YOUR TONGUE; THIS SHALL MAKE YOUR KEY."~ */
  IF ~~ THEN REPLY #53555 /* ~"I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53556 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53557 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 12.3
  SAY #53558 /* ~The pillar remains strangely silent; some of its heads simply look away, while others shudder with pained expressions. Eventually, they gather themselves and speak once more: "WE... DO NOT KNOW. THOSE HEADS THAT ONCE CONTAINED SUCH KNOWLEDGE HAVE BEEN DESTROYED - REMOVED FROM US. WE CANNOT ANSWER YOU THIS QUESTION."~ */
  IF ~~ THEN REPLY #53559 /* ~"In that case, I had another question..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53560 /* ~"Farewell, then."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53561 /* ~"Farewell, then."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.5 12.5 13.8 14.1 15.6 17.7 19.8 20.4 21.3 22.2 23.1 24.6 26.1 30.1 37.4 38.3 39.2 40.2 43.2 44.2 45.2 46.2 47.1 48.1 49.1
  SAY #53562 /* ~The pillar halts your departure with a sudden demand: "STOP - GIVE US THE SKULL. WE SHALL *NOT* ALLOW HIM TO GO. HE IS *OURS.* HE SHALL *NOT* LEAVE AVERNUS." The heads begin cooing at and taunting Morte: "Yes, Skull, don't be shy... come back, Skull... it's comfortable in here, Skull... come, come back... it doesn't hurt, Skull... 'tis great fun to be without a body, living in a pillar of rot with one thousand other, lying heads..."~ */
  IF ~~ THEN REPLY #53563 /* ~Grab Morte, thrust him into the Pillar of Skulls.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_2","GLOBALGood",-1)
SetGlobal("Pillar ","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1001Cut1",FALSE)
~ EXIT
  IF ~~ THEN REPLY #53564 /* ~"Forget it, Pillar. Farewell."~ */ DO ~SetGlobal("Pillar_Warning","GLOBAL",1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #53566 /* ~The pillar's furious heads begin to howl and bellow out across the planes. The very ground beneath you shakes as the thundering cacophony threatens to deafen you...~ */
  IF ~~ THEN REPLY #53567 /* ~Leave... quickly.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #53568 /* ~The pillar heads cackle and sputter with unholy glee as Morte is sucked screaming into the thing's awful core, doubtless to suffer endless torment at the 'hands' of the other severed heads. As the commotion begins to die down, its heads begin cooing and whispering to one another. Suddenly, Morte bursts howling to the surface: "Aiieeee! Get me out! Please! Please! I swear I'll never lie ag-!" ...and just as quickly as he arose, he is pulled back beneath the pillar's surface.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53569 /* ~"And my answer...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~I thrust Morte back into the Pillar of Skulls... needless to say, he wasn't pleased.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53570 /* ~"And my answer...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~I thrust Morte back into the Pillar of Skulls... needless to say, he wasn't pleased.~ */ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53571 /* ~"And my answer...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~I thrust Morte back into the Pillar of Skulls... needless to say, he wasn't pleased.~ */ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53572 /* ~"And my answer...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
SetGlobal("Leave_Baator","GLOBAL",1)
~ JOURNAL #53574 /* ~I thrust Morte back into the Pillar of Skulls... needless to say, he wasn't pleased.~ */ GOTO 48
  IF ~  Global("Pillar_Question","AR1001",0)
~ THEN REPLY #53573 /* ~"Farewell, Pillar."~ */ DO ~SetGlobal("Pillar","GLOBAL",3)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",1)
~ THEN BEGIN 53 // from:
  SAY #53575 /* ~Once more you stand before the Pillar of Skulls. The innumerable rotting heads which make up the vast pile seems to constantly shift and throb, alternately bickering, weeping, conversing, shouting, and whispering to one another. Heads constantly bubble to the surface of the stack from somewhere within its foul core, while others sink back into the grisly pillar.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #53576 /* ~Get the Pillar's attention.~ */ EXTERN ~DMORTE~ 512
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",1)
~ THEN REPLY #53577 /* ~Get the Pillar's attention.~ */ GOTO 1
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53578 /* ~Get the Pillar's attention.~ */ GOTO 1
  IF ~~ THEN REPLY #53579 /* ~Leave the Pillar before you're noticed.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",3)
~ THEN BEGIN 54 // from:
  SAY #53580 /* ~Once more you stand before the Pillar of Skulls. The innumerable rotting heads which make up the vast pile seems to constantly shift and throb, alternately bickering, weeping, conversing, shouting, and whispering to one another. Heads constantly bubble to the surface of the stack from somewhere within its foul core, while others sink back into the grisly pillar.~ */
  IF ~~ THEN REPLY #53581 /* ~Get the Pillar's attention.~ */ GOTO 55
  IF ~~ THEN REPLY #53582 /* ~Leave the Pillar before you're noticed.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #53583 /* ~You take another cautious step towards the pillar, and all their conversation abruptly *stops.* The dozens of heads that lines the pillar's surface slowly turn to face you in unison. They regard you silently then, with a horrid scream, Morte bursts howling to the surface: "Gaaaah! Chief! Get me out! Please! Please!"~ */
  IF ~~ THEN REPLY #53584 /* ~Ignore Morte, wait for him to sink again.~ */ GOTO 56
  IF ~~ THEN REPLY #53585 /* ~Try and pull Morte out.~ */ GOTO 57
  IF ~~ THEN REPLY #53586 /* ~Turn away and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 57.5
  SAY #53587 /* ~Morte, tears streaming through the blood and stinking slime which coats him, begs for release. "Chief, please, I'm begging you! You've got to get me out, please, I swear I'll never lie ag-!" ...and just as quickly as he arose, he is pulled back beneath the pillar's surface.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53588 /* ~"I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53589 /* ~"I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53590 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53591 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53592 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~~ THEN REPLY #53593 /* ~"I was merely passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #53594 /* ~Your hands shoot out and grab Morte before he can be sucked back into the pillar's core. The heads cry out in rage: "NO! NO! STOP! YOU SHALL NOT TAKE HIM AGAIN!" The heads begin to lash out at you, biting at your hands and wrists with cruel, jagged teeth...~ */
  IF ~  Global("Specialist","GLOBAL",4)
~ THEN REPLY #53595 /* ~Keep fighting, tear Morte free of the pillar.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 58
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #53596 /* ~Use your mastery of the Art to channel raw power into freeing Morte. ~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Specialist","GLOBAL",5)
~ THEN REPLY #53597 /* ~Pull back as if you would relent, feint in one direction, and then wrench Morte free before the Pillar knows what's hit it.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 60
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPGT(Protagonist,10)
~ THEN REPLY #53598 /* ~Keep fighting, tear Morte free of the pillar.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 61
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPLT(Protagonist,11)
~ THEN REPLY #53599 /* ~Keep fighting, tear Morte free of the pillar.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 62
  IF ~~ THEN REPLY #53600 /* ~Give up, let Morte sink.~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #53601 /* ~The Pillar of Skulls puts up a tremendous battle, yet you prove too mighty a warrior for it to best. Hammering away at the attacking heads, you strike them, kick them, butt them with your own head, even biting them until you've managed to pull Morte free with the sound of tearing flesh. The battle, however, leaves you drained, exhausted... somehow, you know you're now weaker than before.~ */
  IF ~~ THEN REPLY #53602 /* ~"See, Morte? Nothing... to worry... about..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1
  SAY #53603 /* ~The Pillar of Skulls puts up a tremendous battle, yet your magic proves too powerful for it to best. You channel pure, unfocused mana through your hands and into the Pillar, battering it away until you've managed to pull Morte free. The battle, however, leaves you drained, exhausted... somehow, you know you're now weaker than before.~ */
  IF ~~ THEN REPLY #53604 /* ~"See, Morte? Nothing... to worry... about..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.2
  SAY #53605 /* ~Seeing the pillar prepare to put up a tremendous battle, you pretend to back off. Just as Morte starts to sink and the pillar begins to speak again, you leap forwards and grasp Morte. Only a single head manages to strike before you pull Morte away, biting deep into your forearm... you jab it in the eye with your thumb and pull your old companion free at last. The foul head's bite, however, leaves you drained, exhausted... somehow, you know you're now weaker than before.~ */
  IF ~~ THEN REPLY #53606 /* ~"See, Morte? Nothing... to worry... about..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.3
  SAY #53607 /* ~The Pillar of Skulls, unwilling to lose Morte to you, puts up a tremendous battle. In the end, you finally relent. As Morte sinks back screaming into its surface, you step away, forearms covered in bleeding wounds where the pillar's heads tore away chunks of flesh with every bite. Even now they leer and laugh at you, licking your blood off their rotten lips.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53608 /* ~"I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53609 /* ~"I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53610 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53611 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53612 /* ~"I had some questions, Pillar..."~ */ GOTO 12
  IF ~~ THEN REPLY #53613 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.4
  SAY #53614 /* ~The Pillar of Skulls, unwilling to lose Morte to you, puts up a tremendous battle. In the end, you finally relent. As Morte sinks back screaming into its surface, you step away, forearms covered in bleeding wounds where the pillar's heads tore away chunks of flesh with every bite. Even as you collapse and begin to die, they leer and laugh at you, licking your blood off their rotten lips...~ */
  IF ~~ THEN REPLY #53615 /* ~Die.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",4)
~ THEN BEGIN 63 // from:
  SAY #53616 /* ~The pillar's heads gnash their teeth and spit bile at you, bellowing with rage. "HE IS OURS! OURS! OURS!" Abruptly, they calm themselves. "FINE. REVEL IN YOUR VICTORY, 'IMMORTAL.' WE SHALL HAVE HIM AGAIN, ONE WAY OR ANOTHER."~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53617 /* ~"Right. I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53618 /* ~"Right. I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53619 /* ~"Right. I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53620 /* ~"Right. I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53621 /* ~"Right. I had some questions, Pillar..."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #53622 /* ~"Sure, sure. Farewell."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ EXIT
END
