// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~BANNAH~

IF ~  LastPersonTalkedTo("Morte")
Global("Annah_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31484 /* ~"Stand away from me, Morte."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63424 /* ~"FIND a way, skull."~ [ANA575BD] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #63425 /* ~"What are yeh looking at, skull?"~ [ANA576B] */
  IF ~~ THEN EXTERN ~DMORTE~ 614
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63426 /* ~"That tongue of yers is gonna get yer nose broken."~ [ANA576BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #63428 /* ~"How do you even get a chance to take a breath when ye're talking so much?"~ [ANA593A] */
  IF ~~ THEN EXTERN ~DMORTE~ 615
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #63429 /* ~"If yeh need to go somewhere, skull, don't let us keep yeh."~ [ANA595A] */
  IF ~~ THEN EXTERN ~DMORTE~ 616
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63430 /* ~"I've *several* names for you. None of them fit fer polite company."~ [ANA595BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 7 // from:
  SAY #63431 /* ~"Huh. I wonder how much copper ye'd be worth to the Dusties, skull."~ [ANA597D] */
  IF ~~ THEN EXTERN ~DMORTE~ 617
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63432 /* ~"Death's too good for you, skull."~ [ANA599A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #63433 /* ~"Those eyes rest on me one more time, skull, and they'll be resting on the ground."~ [ANA600A] */
  IF ~~ THEN EXTERN ~DMORTE~ 618
END

IF ~~ THEN BEGIN 10 // from:
  SAY #63434 /* ~"Oh, well *ye're* one to talk."~ [ANA600BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",6)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 11 // from:
  SAY #63435 /* ~"Skull, if you don't keep yer eyes to yerself, I'm takin' 'em."~ [ANA601A] */
  IF ~~ THEN EXTERN ~DMORTE~ 619
END

IF ~~ THEN BEGIN 12 // from:
  SAY #63436 /* ~"You're a right wee skunner."~ [ANA601BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",7)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 13 // from:
  SAY #63439 /* ~"Donnae be fooled by that succubus... she's interested in ya 'cause of the shape of yer neck... it's just right for her to sink her teeth into."~ [ANA594A] */
  IF ~~ THEN EXTERN ~DMORTE~ 620
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
InParty("Grace")
~ THEN BEGIN 14 // from:
  SAY #63440 /* ~"I donnae *trust* that succubus. She's a fiend, so she is! They're all a-like, waiting for yeh tae drop yer guard before sinking her teeth into yer neck. Don't yeh be takin' yer eye off that fat slat, or she'll turn on ya faster than yeh can blink. All fiends are like that, so they are."~ [ANA602A] */
  IF ~~ THEN EXTERN ~DMORTE~ 621
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63441 /* ~"Oh aye, but the good part. She looks like she's got all the bad parts, she does."~ [ANA602BA] */
  IF ~~ THEN EXTERN ~DMORTE~ 622
END

IF ~  LastPersonTalkedTo("Grace")
Global("Annah_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #63442 /* ~"So, how long will you be traveling with us, succubus?"~ [ANA604A] */
  IF ~~ THEN EXTERN ~DGRACE~ 366
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63443 /* ~"Well, ye're not permitted. I don't trust yeh."~ [ANA604BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #63444 /* ~"So uh... when are yeh heading back to yer knocking shop, succubus?"~ [ANA605A] */
  IF ~~ THEN EXTERN ~DGRACE~ 367
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63445 /* ~"Well, it's where yeh BELONG, so maybe yeh should."~ [ANA605BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #63446 /* ~"Yeh better watch yerself, succubus. Yeh step outta line and start hunting for souls, yeh'll catch my blades."~ [ANA606A] */
  IF ~~ THEN EXTERN ~DGRACE~ 368
END

IF ~~ THEN BEGIN 21 // from:
  SAY #63448 /* ~"Well, I *would* take yeh at yer word, but since ye succubi are all perfumed lying harlots, I won't."~ [ANA606BA] */
  IF ~~ THEN EXTERN ~DGRACE~ 369
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63449 /* ~"You just keep away from me. In fact, maybe you should keep away from all of us."~ [ANA606CA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #63450 /* ~"How much longer are yeh going to be dragging yerself with us, succubus?"~ [ANA608A] */
  IF ~~ THEN EXTERN ~DGRACE~ 370
END

IF ~~ THEN BEGIN 24 // from:
  SAY #63451 /* ~"Jealous? I'm not jealous! I don't even know how to spell jealous! I just don't trust yeh... and none of us do!"~ [ANA608BB] */
  IF ~~ THEN EXTERN ~DGRACE~ 371
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",5)
~ THEN BEGIN 25 // from:
  SAY #63452 /* ~"I've had enough of yeh and her! Go on and travel with her then, if yeh like her company! I'll have nothing more to do with yeh!"~ [ANA609A] */
  IF ~~ THEN EXTERN ~DGRACE~ 372
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63453 /* ~"Oh, don't you 'Annah, look' me, yeh black-hearted harlot, I'll carve yeh, so I will! Always puttin' on yer airs with yer fine clothes and yer nose up in the air - I've had enough of yeh! Yeh can burn for all I care!"~ [ANA609BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",5)
LeaveParty()
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
~ THEN BEGIN 27 // from:
  SAY #64201 /* ~"Stand away from me, Morte."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END
