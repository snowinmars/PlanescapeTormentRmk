// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEIVENE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DEIVENE~

IF ~  Global("EiVene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3404 /* ~You see a slight young woman with pale features. The sunken flesh around her cheeks and neck makes her appear as if she is starving. She seems intent on dissecting the corpse in front of her, prodding the chest with a finger.~ */
  IF ~~ THEN REPLY #3406 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #3407 /* ~Leave her alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #3410 /* ~The woman does not respond... she seems too intent on the body in front of her. As you watch her work, you suddenly notice her hands... her fingers are talons. They are darting in and out of the corpse's chest cavity like knives, removing organs.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3412 /* ~"I said, Greetings."~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3413 /* ~"I said, Greetings."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3414 /* ~"What's wrong with your hands?"~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3415 /* ~"What's wrong with your hands?"~ */ GOTO 19
  IF ~~ THEN REPLY #3416 /* ~Leave her alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2
  SAY #3417 /* ~The woman makes no response.~ */
  IF ~~ THEN REPLY #3418 /* ~Tap the woman, get her attention.~ */ DO ~FaceObject(Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #3419 /* ~Leave her alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #3420 /* ~The woman makes no response.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 55
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #3421 /* ~The woman jumps and whips around to face you... her eyes are a rotting yellow, with small orange dots for pupils. As she sees you, her expression changes from surprise to irritation, and she frowns at you.~ */
  IF ~~ THEN REPLY #3422 /* ~"Uh... greetings."~ */ DO ~SetGlobal("EiVene","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #3423 /* ~She doesn't seem to have heard you. She leans forward, squinting, as if she can't quite make you out... whatever is wrong with her eyes must make her terribly near-sighted. "You -" She clacks her taloned fingers together, then makes a strange motion with her hands. "Find THREAD and EM-balming juice, bring HERE, to Ei-Vene. Go - Go - Go." 

^NNOTE: You have been assigned a quest. Quests are displayed in your diary and in the "Quests" portion of your journal. To see all the quests you've been assigned (and their status), simply select "quests" from the journal menu.^-~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3424 /* ~Give her the thread and embalming fluid.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #37701 /* ~I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. It turns out I'd already found both, so I gave them to her. ~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3425 /* ~"I had some questions first..."~ */ JOURNAL #37702 /* ~I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms. ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3426 /* ~"I had some questions first..."~ */ JOURNAL #37702 /* ~I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms. ~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3427 /* ~"What's wrong with your hands?"~ */ JOURNAL #37702 /* ~I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms. ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3428 /* ~"What's wrong with your hands?"~ */ JOURNAL #37702 /* ~I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms. ~ */ GOTO 20
  IF ~~ THEN REPLY #3429 /* ~Leave.~ */ JOURNAL #37702 /* ~I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.3
  SAY #3430 /* ~She turns away... she makes no sign that she heard you. Her hearing must be as poor as her eyesight.~ */
  IF ~~ THEN REPLY #3431 /* ~Tap her on the shoulder, get her attention.~ */ GOTO 17
  IF ~~ THEN REPLY #3432 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 17.0
  SAY #3433 /* ~Without missing a beat, Ei-Vene snaps the thread from your hands and hooks it around one of her talons, then begins sewing up the corpse's chest. She then takes the embalming fluid, and begins to apply a layer to the corpse.~ */
  IF ~~ THEN REPLY #3434 /* ~Wait.~ */ GOTO 9
  IF ~~ THEN REPLY #3435 /* ~Leave.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #3436 /* ~As you are about to leave, Ei-Vene speaks: "Stay. You - next."~ */
  IF ~~ THEN REPLY #3437 /* ~Wait.~ */ GOTO 9
  IF ~~ THEN REPLY #3438 /* ~Leave. Quickly.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #3439 /* ~Within minutes, she is finished. She clicks her talons, then turns to face you. To your surprise, she extends her hand and drags her talons along your arms and chest.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3440 /* ~"Uh, it's not that I'm not flattered, but..."~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3441 /* ~"Uh, it's not that I'm not flattered, but..."~ */ EXTERN ~DMORTE~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3442 /* ~Keep playing zombie.~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3443 /* ~Keep playing zombie.~ */ EXTERN ~DMORTE~ 59
  IF ~~ THEN REPLY #3444 /* ~Push her away, leave.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.4 12.1
  SAY #3445 /* ~She looks shocked as you push her away. "Zomfie? You no zomfie!" She takes a step back, then before you can react, she claps her hands three times. In response, the tolling of a huge bell echoes throughout the Mortuary. ~ */
  IF ~~ THEN REPLY #3491 /* ~"All right then..."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.2
  SAY #3446 /* ~As she traces your arms and chest, you suddenly notice she seems to be examining your scars. She withdraws her talons, clicks them twice, then bends forward and examines some of the tattoos on your chest. "Hmmph. Who write on you? Hivers do that? No respect for zomfies. Zomfies, not paintings." She sniffs, then pokes one of your scars. "This one bad shape, many scars, no preserfs."~ */
  IF ~~ THEN REPLY #3447 /* ~Wait.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #3448 /* ~Her talons suddenly hook into the thread you brought her, and lightning-like, she jabs another talon into the skin near one of your scars. It feels barely more than a pin-prick, but it looks like she's about to start stitching you up.~ */
  IF ~~ THEN REPLY #3449 /* ~Let her work.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,1)
FullHeal(Protagonist)
SetGlobal("Ravel_EiVene","GLOBAL",1)
~ JOURNAL #38199 /* ~After I delivered the embalming fluid and thread to Ei-Vene, she stitched up my scars and applied the embalming fluid on my body. Strangely enough, it made me feel... healthier.~ */ GOTO 13
  IF ~~ THEN REPLY #3450 /* ~Push her away, leave.~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #3451 /* ~The sensation is curiously painless as Ei-Vene begins to stitch up your scars. 

When she is done, she sniffs you, frowns, then stabs her fingers into the embalming fluid. Within minutes, she has dabbed your body with the fluid... and strangely enough, it makes you feel *better.*~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3452 /* ~Let her work.~ */ GOTO 14
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3453 /* ~Let her work.~ */ EXTERN ~DMORTE~ 60
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3454 /* ~Ei-Vene puts the last touches on your body, gives you another sniff, nods, then makes a shooing motion with her talons. "Done. Go - go."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3456 /* ~"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3457 /* ~"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"~ */ GOTO 24
  IF ~~ THEN REPLY #4350 /* ~Leave.~ */ EXIT
END

IF ~  Global("EiVene","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #3458 /* ~You see Ei-Vene. She is still dissecting the corpse's chest with her talons. The rhythm of the talons reminds you of something, but you can't quite recall what.~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #3459 /* ~Watch her, study the motions of her hands.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ JOURNAL #61612 /* ~Watching Ei-Vene stitch up the corpse with her talons triggered a strange memory... I recall performing a similar operation on a corpse, long ago, except that I think I was placing something *inside* its chest rather than taking something out. It felt like I was putting whatever it was in there so I could retrieve it later. In the memory, when I crossed my arms, the corpse itself crossed its arms as well... it had the number "42" written on its scalp. ~ */ GOTO 16
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #3463 /* ~Tap her, get her attention.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4351 /* ~Tap her, get her attention.~ */ GOTO 22
  IF ~~ THEN REPLY #4352 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #3464 /* ~As you study the motion of Ei-Vene's hands, you feel a prickling along your scalp, and then suddenly, you find your vision swimming, blurring, until...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 6.0 15.1 25.0 27.0
  SAY #3468 /* ~She turns, sees you, then frowns. "Dum zomfies." She clacks her taloned fingers together impatiently, then makes a stitching motion with her fingers. "Find thread and embalming fluid, bring here, to Ei-Vene. Go - Go - Go." ~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3469 /* ~Give her the thread and embalming fluid.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #38202 /* ~I delivered the embalming fluid and thread to Ei-Vene. She didn't seem terribly grateful. ~ */ GOTO 7
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3470 /* ~"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3497 /* ~"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"~ */ GOTO 24
  IF ~~ THEN REPLY #4357 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.0 17.1 22.0
  SAY #3471 /* ~She leans forward, looks at your hand motions, then sniffs. Her hand darts into her robe, then emerges, a key hanging from her wickedly sharp index finger. She flicks it into your hand. "Bring back when done. Go - go."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3494 /* ~"What's wrong with your hands?"~ */ JOURNAL #38203 /* ~I convinced Ei-Vene to give me the embalming key. ~ */ GOTO 23
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3495 /* ~"What's wrong with your hands?"~ */ JOURNAL #38203 /* ~I convinced Ei-Vene to give me the embalming key. ~ */ GOTO 21
  IF ~~ THEN REPLY #3496 /* ~Leave.~ */ JOURNAL #38203 /* ~I convinced Ei-Vene to give me the embalming key. ~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.3
  SAY #3472 /* ~The woman makes no response.~ */
  IF ~~ THEN JOURNAL #38205 /* ~Apparently, the Dustwoman embalmer I encountered is a "tiefling," someone with fiendish blood in their veins. Apparently, the fiendish blood warps their bodies and in some cases, their minds as well. From what Morte said, it sounds like there are a number of tieflings about... which would imply a fair number of fiends as well.~ */ EXTERN ~DMORTE~ 56
END

IF ~~ THEN BEGIN 20 // from: 5.2 5.4
  SAY #3485 /* ~She turns away... she makes no sign that she heard you. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 57
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY #3486 /* ~She turns away... she makes no sign that she heard you. Her hearing must be as poor as her eyesight.~ */
  IF ~~ THEN JOURNAL #38205 /* ~Apparently, the Dustwoman embalmer I encountered is a "tiefling," someone with fiendish blood in their veins. Apparently, the fiendish blood warps their bodies and in some cases, their minds as well. From what Morte said, it sounds like there are a number of tieflings about... which would imply a fair number of fiends as well.~ */ EXTERN ~DMORTE~ 58
END

IF ~~ THEN BEGIN 22 // from: 15.2 25.1 27.1
  SAY #3493 /* ~She turns, sees you, then frowns. "Dum zomfies." She clacks her taloned fingers together impatiently, then makes a stitching motion with her fingers. "You done. All stich up. Go - Go - Go." ~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3501 /* ~"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3502 /* ~"Wait a minute." (You make the motion of a key turning with your hand.) "I need an embalming key. Do you have one?"~ */ GOTO 24
  IF ~~ THEN REPLY #4358 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.0
  SAY #3498 /* ~She turns away... she makes no sign that she heard you. Her hearing must be as poor as her eyesight.~ */
  IF ~~ THEN REPLY #3499 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.1 17.2 22.1
  SAY #4200 /* ~She leans forward, looks at your hand motions, then sniffs. Her hand darts into her robe, rummages around for a moment, then she shrugs. "No key." She makes a shooing motion. "Go - go - go."~ */
  IF ~~ THEN REPLY #4201 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #4353 /* ~You watch her for a while, and the rhythm of her hands causes two memories to surface - one of you playing some sort of stringed instrument, perhaps a harp. The other memory is that of stealing a purse... to your surprise, this last memory gives you a sudden temptation to pick Ei-Vene's pocket. 

^NNOTE: You have regained a memory. Memories can give you additional experience points, skills, and may even lead to you gaining more memories later on.^-~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #4354 /* ~Tap her, get her attention.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4355 /* ~Tap her, get her attention.~ */ GOTO 22
  IF ~~ THEN REPLY #4356 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.0
  SAY #63477 /* ~...you are standing in front of a freshly-slain corpse, rigor mortis making a mockery of its smile; the number '42' has been stitched onto its scalp. The zombie is lying on a slab, and you have just finished stitching up its chest. You have placed something inside, something that may prove useful if you come this way again...~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #63478 /* ~Echo: "Keep these things safe and wait for my return."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("42_Secret","GLOBAL",1)
~ GOTO 27
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #63479 /* ~Echo: "Keep these things safe and wait for my return."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #63480 /* ~The memory of your voice is an echo, strange and hollow to your ears. You cross your arms in front of your chest, and to your surprise, the corpse does, too. After a moment, its hands fall back to its sides, and as it does, the vision fades... until you are watching Ei-Vene's hands make their stitching motions once more.

^NNOTE: You have regained a memory. Memories can give you additional experience points, skills, and may even lead to you gaining something else of value later on.^-~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #63482 /* ~Tap her, get her attention.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #63481 /* ~Tap her, get her attention.~ */ GOTO 22
  IF ~~ THEN REPLY #63483 /* ~Leave.~ */ EXIT
END
