// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19349 /* ~This rotting, male corpse at first seems completely unaware of you. As you approach, however, it turns and nods slowly, as if greeting you.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19397 /* ~"Greetings..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19398 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #19399 /* ~Leave the zombie alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1
  SAY #19350 /* ~The zombie moans softly in reply: "Ggnhuuu... fnnnnuuugh..." With each exhalation, the stench of rotting meat fills the air.~ */
  IF ~~ THEN REPLY #19400 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #19401 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19351 /* ~"Stuuuhhh... mmmaaa-uuhrrr." The zombie makes a series of unintelligible moans... you can't make out anything he's saying.~ */
  IF ~~ THEN REPLY #19402 /* ~"I can't understand you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0
  SAY #19352 /* ~The zombie moans softly in reply. Only your skills in conversing with the dead allow you to understand it: "Greeeet-ings."~ */
  IF ~~ THEN REPLY #19403 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #19404 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19353 /* ~The corpse stands there a moment, shifting his weight from one foot to the other, before replying. "Quest-shun?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19405 /* ~"Why have I been made a prisoner?"~ */ GOTO 6
  IF ~~ THEN REPLY #19407 /* ~"Where am I?"~ */ GOTO 7
  IF ~~ THEN REPLY #19408 /* ~"What are you doing here?"~ */ GOTO 8
  IF ~  !Dead("Soego2")
~ THEN REPLY #19410 /* ~"Who inhabits this place?"~ */ GOTO 9
  IF ~  Dead("Soego2")
~ THEN REPLY #19523 /* ~"Who inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19411 /* ~"Let me ask you about someone in particular..."~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19413 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 23
  IF ~~ THEN REPLY #19415 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 25.1
  SAY #19357 /* ~The corpse's head nods sleepily. "Quest... shuns."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19417 /* ~"Why have I been made a prisoner?"~ */ GOTO 6
  IF ~~ THEN REPLY #19418 /* ~"Where am I?"~ */ GOTO 7
  IF ~~ THEN REPLY #19419 /* ~"What are you doing here?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19420 /* ~"Who inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19421 /* ~"Who inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19422 /* ~"Let me ask you about someone in particular..."~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19423 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 23
  IF ~~ THEN REPLY #19424 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19358 /* ~There is a long pause. "Uuuuhhh?" The zombie shrugs, one of his shoulders not quite rising as high as the other. "Assssk Mmmary, Ssstale Mssaaaary."~ */
  IF ~~ THEN REPLY #19425 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19426 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19427 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19359 /* ~"Hhhome. Mmmy home." What's left of his facial muscles pull his mouth into what might be construed as a smile. "Lllaaand of the Sssilent Kiiing, Deeead Nay-shhhuns."~ */
  IF ~~ THEN REPLY #19428 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19429 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19430 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19375 /* ~The zombie stares at you for a moment. "Mmmy duuu-ty. Mmmy laaabor, fffor the SSSilent King. I ssserve mmmy hhhooome welll."~ */
  IF ~~ THEN REPLY #19431 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19432 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19433 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19377 /* ~"Mmmany. Wwweee, ssskeletonsss, ghoooouls." His arm slowly raises, pointing off to the east. "Rrratsss." His arm swings ponderously around to point at you. "Llliving."~ */
  IF ~~ THEN REPLY #19434 /* ~"Are more of the living here, besides myself?"~ */ GOTO 11
  IF ~~ THEN REPLY #19435 /* ~"Tell me about your own kind."~ */ GOTO 13
  IF ~~ THEN REPLY #19436 /* ~"Tell me about the other undead."~ */ GOTO 14
  IF ~~ THEN REPLY #19437 /* ~"Tell me about the rats."~ */ GOTO 17
  IF ~~ THEN REPLY #19438 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19439 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19380 /* ~"Mmmany. Wwweee, bonesss, ghooouls." His arm slowly raises, pointing off to the east. "Rrratsss."~ */
  IF ~~ THEN REPLY #19440 /* ~"Tell me about your own kind."~ */ GOTO 13
  IF ~~ THEN REPLY #19441 /* ~"Tell me about the other undead."~ */ GOTO 14
  IF ~~ THEN REPLY #19442 /* ~"Tell me about the rats."~ */ GOTO 17
  IF ~~ THEN REPLY #19443 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19444 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19382 /* ~The corpse's head rocks back and forth, back and forth. "Sssoooegoooo..."~ */
  IF ~~ THEN REPLY #19445 /* ~"Who is Soego?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19446 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19447 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19448 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19449 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19383 /* ~"Duuuhst-mmman. Assssk Mmmary, Ssstale Mmmaaaary."~ */
  IF ~~ THEN REPLY #19450 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19451 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19452 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19453 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19454 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19384 /* ~The zombie lays his rotting hands across a chest scarred with decay. "Ssstrong!" He points to his feet with one hand, then to his temple, where a chunk of flesh has sloughed off, revealing bare skull beneath. "Sssloooow. Hhhehhh..." The corpse makes a disturbing gurgling noise which somehow reminds you of chuckling. "Llled by Ssstale Mmmary..."~ */
  IF ~~ THEN REPLY #19455 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19456 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19457 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19458 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19459 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19385 /* ~"Whhooo? Booones? Ghooouls?"~ */
  IF ~~ THEN REPLY #19460 /* ~"Bones... skeletons?"~ */ GOTO 15
  IF ~~ THEN REPLY #19461 /* ~"The ghouls."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19462 /* ~"Never mind. Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19463 /* ~"Never mind. Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19464 /* ~"Never mind. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19465 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19386 /* ~"Booones!" He sounds somehow admiring. "Lllead usss, guiiide usss. Togeeether we buillld the Deeead Nay-shhhuns."~ */
  IF ~~ THEN REPLY #19466 /* ~"The skeletons lead you?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19467 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19468 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19469 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19470 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19387 /* ~"Hhhargrimmm llleads the booones. SssPeaksss to the Sssilent King, then ssspeaks to Ssstale Mmmary. Mmmary ssspeaks to usss, givesss us our lllabor." He nods.~ */
  IF ~~ THEN REPLY #19471 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19472 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19473 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19474 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19475 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19476 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19388 /* ~Again, his arms slowly rises and swings back to point eastwards. "Rrratsss..." The wet tatters of his upper lip pull back in a sneer; a black, gummy fluid runs down the brownish-yellow teeth. "Eatsss the dead... eatsss... baaad. Afraaaid, nnnow, of the ghooouls. Theeey stay awaaay."~ */
  IF ~~ THEN REPLY #19477 /* ~"The rats eat the corpses here?"~ */ GOTO 18
  IF ~~ THEN REPLY #19478 /* ~"You have a truce with the rats?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19479 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19480 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19481 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19482 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19389 /* ~"Uuuhn... asssk Mmmary. Ssstaaale Mmmary."~ */
  IF ~~ THEN REPLY #19483 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19484 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19485 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19486 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19487 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19390 /* ~The zombie points at his abdomen, where rotting holes in his flesh expose various internal organs. "Aaalwaaays hhhungryyy. Sssilent King's lllaws keeepsss them frommm eeeating the dead, hhhere. Ghooouls ssserve to pro-tect usss, guarrrd thessse halllsss."~ */
  IF ~~ THEN REPLY #19488 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19489 /* ~"Who do they guard these halls from?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19490 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19491 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19492 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19493 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19391 /* ~"Rrratsss. And..." He raises an arm, pointing straight upwards. "...the liiiving, from abooove. They cooome to sssteal the dead, dissstuuurb themmm."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19494 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19495 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19496 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19497 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 25.0
  SAY #19392 /* ~"Ssshhhee leeeads usss. Wwwaaatches uuusss. Passes to usss the wwwooord of the Sssilent King."~ */
  IF ~~ THEN REPLY #19498 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19499 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19500 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19393 /* ~"Lllooord of the Deeead Nay-shhhuns. Asssk Mmmary. Ssstaaale Mmmary."~ */
  IF ~~ THEN REPLY #19501 /* ~"Tell me about Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19502 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19503 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19394 /* ~The corpse stands motionless, staring at you. At last, he speaks. "Nnno. Asssk Mmmary. Ssstaaale Mmmary."~ */
  IF ~~ THEN REPLY #19504 /* ~"Tell me about Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19505 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19506 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19395 /* ~As the zombie faces you, a glint of recognition seems to flash in its dead eyes. "Uuuhhhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19507 /* ~"Greetings..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19508 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #19509 /* ~Leave the zombie alone.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.5 5.5
  SAY #19396 /* ~The corpse shakes its head. "Asssk Mmmary. Ssstaaale Mmmary."~ */
  IF ~~ THEN REPLY #19510 /* ~"Tell me about Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19511 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19512 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END
