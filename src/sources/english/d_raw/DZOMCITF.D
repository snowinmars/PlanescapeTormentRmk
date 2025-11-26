// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19524 /* ~This rotting, female corpse at first seems completely unaware of you. As you approach, however, it turns and nods slowly, as if greeting you.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19554 /* ~"Greetings..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19555 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #19556 /* ~Leave the zombie alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1 27.1
  SAY #19525 /* ~The zombie moans softly in reply: "Ggnhuuu... fnnnnuuugh..." With each exhalation, the stench of rotting meat fills the air.~ */
  IF ~~ THEN REPLY #19557 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #19558 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19526 /* ~"Stuuuhhh... mmmaaa-uuhrrr." The zombie makes a series of unintelligible moans... you can't make out anything she's saying.~ */
  IF ~~ THEN REPLY #19559 /* ~"I can't understand you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0 27.0
  SAY #19527 /* ~The zombie moans softly in reply. Only your skills in conversing with the dead allow you to understand it: "Greeeet-ings."~ */
  IF ~~ THEN REPLY #19560 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #19561 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19528 /* ~The corpse stands there a moment, shifting her weight from one foot to the other, before replying. "Quest-shun?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19562 /* ~"Why have I been made a prisoner?"~ */ GOTO 6
  IF ~~ THEN REPLY #19563 /* ~"Where am I?"~ */ GOTO 7
  IF ~~ THEN REPLY #19564 /* ~"What are you doing here?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19565 /* ~"Who inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19566 /* ~"Who inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19567 /* ~"Let me ask you about someone in particular..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19568 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 23
  IF ~~ THEN REPLY #19569 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 26.1
  SAY #19529 /* ~The corpse's head nods sleepily. "Quest... shuns."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19570 /* ~"Why have I been made a prisoner?"~ */ GOTO 6
  IF ~~ THEN REPLY #19571 /* ~"Where am I?"~ */ GOTO 7
  IF ~~ THEN REPLY #19572 /* ~"What are you doing here?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19573 /* ~"Who inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19574 /* ~"Who inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19575 /* ~"Let me ask you about someone in particular..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19576 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 23
  IF ~~ THEN REPLY #19577 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19530 /* ~There is a long pause. "Uuuuhhh?" The zombie shrugs, one of her shoulders not quite rising as high as the other. "Assssk Mmmary, Ssstale Mssaaaary."~ */
  IF ~~ THEN REPLY #19578 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19579 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19580 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19531 /* ~"Hhhome. Mmmy home." What's left of her facial muscles pull her mouth into what might be construed as a smile. "Lllaaand of the Sssilent Kiiing, Deeead Nay-shhhuns."~ */
  IF ~~ THEN REPLY #19581 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19582 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19583 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19532 /* ~The zombie stares at you for a moment. "Mmmy duuu-ty. Mmmy laaabor, fffor the SSSilent King. I ssserve mmmy hhhooome welll."~ */
  IF ~~ THEN REPLY #19584 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19585 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19586 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19533 /* ~"Mmmany. Wwweee, ssskeletonsss, ghoooouls." Her arm slowly raises, pointing off to the east. "Rrratsss." Her arm swings ponderously around to point at you. "Llliving."~ */
  IF ~~ THEN REPLY #19587 /* ~"Are more of the living here, besides myself?"~ */ GOTO 11
  IF ~~ THEN REPLY #19588 /* ~"Tell me about your own kind."~ */ GOTO 13
  IF ~~ THEN REPLY #19589 /* ~"Tell me about the other undead."~ */ GOTO 14
  IF ~~ THEN REPLY #19590 /* ~"Tell me about the rats."~ */ GOTO 17
  IF ~~ THEN REPLY #19591 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19592 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19534 /* ~"Mmmany. Wwweee, bonesss, ghooouls." Her arm slowly raises, pointing off to the east. "Rrratsss."~ */
  IF ~~ THEN REPLY #19593 /* ~"Tell me about your own kind."~ */ GOTO 13
  IF ~~ THEN REPLY #19594 /* ~"Tell me about the other undead."~ */ GOTO 14
  IF ~~ THEN REPLY #19595 /* ~"Tell me about the rats."~ */ GOTO 17
  IF ~~ THEN REPLY #19596 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19597 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19535 /* ~The corpse's head rocks back and forth, back and forth. "Sssoooegoooo..."~ */
  IF ~~ THEN REPLY #19598 /* ~"Who is Soego?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19599 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19600 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19601 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19602 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19536 /* ~"Duuuhst-mmman. Assssk Mmmary, Ssstale Mmmaaaary."~ */
  IF ~~ THEN REPLY #19603 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19604 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19605 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19606 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19607 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19537 /* ~The zombie lays her rotting hands across a chest scarred with decay. "Ssstrong!" She points to her feet with one hand, then to her temple. "Sssloooow. Hhhehhh..." The corpse makes a disturbing gurgling noise which somehow reminds you of chuckling. "Llled by Ssstale Mmmary..."~ */
  IF ~~ THEN REPLY #19608 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19609 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19610 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19611 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19612 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19538 /* ~"Whhooo? Booones? Ghooouls?"~ */
  IF ~~ THEN REPLY #19613 /* ~"Bones... skeletons?"~ */ GOTO 15
  IF ~~ THEN REPLY #19614 /* ~"The ghouls."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19615 /* ~"Never mind. Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19616 /* ~"Never mind. Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19617 /* ~"Never mind. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19618 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19539 /* ~"Booones!" She sounds somehow admiring. "Lllead usss, guiiide usss. Togeeether we buillld the Deeead Nay-shhhuns."~ */
  IF ~~ THEN REPLY #19619 /* ~"The skeletons lead you?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19620 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19621 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19622 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19623 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19540 /* ~"Hhhargrimmm llleads the booones. SssPeaksss to the Sssilent King, then ssspeaks to Ssstale Mmmary. Mmmary ssspeaks to usss, givesss us our lllabor." She nods.~ */
  IF ~~ THEN REPLY #19624 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19625 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19626 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19627 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19628 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19629 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19541 /* ~Again, her arm slowly rises and swings back to point eastwards. "Rrratsss..." The wet tatters of her upper lip pull back in a sneer; a black, gummy fluid runs down the brownish-yellow teeth. "Eatsss the dead... eatsss... baaad. Afraaaid, nnnow, of the ghooouls. Theeey stay awaaay."~ */
  IF ~~ THEN REPLY #19630 /* ~"The rats eat the corpses here?"~ */ GOTO 18
  IF ~~ THEN REPLY #19631 /* ~"You have a truce with the rats?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19632 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19633 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19634 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19635 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19542 /* ~"Uuuhn... asssk Mmmary. Ssstaaale Mmmary."~ */
  IF ~~ THEN REPLY #19636 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19637 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19638 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19639 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19640 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19543 /* ~The zombie points at her abdomen, where rotting holes in her flesh expose various internal organs. "Aaalwaaays hhhungryyy. Sssilent King's lllaws keeepsss them frommm eeeating the dead, hhhere. Ghooouls ssserve to pro-tect usss, guarrrd thessse halllsss."~ */
  IF ~~ THEN REPLY #19641 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19642 /* ~"Who do they guard these halls from?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19643 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19644 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19645 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19646 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19544 /* ~"Rrratsss. And..." She raises an arm, pointing straight upwards. "...the liiiving, from abooove. They cooome to sssteal the dead, dissstuuurb themmm."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19647 /* ~"Who else inhabits this place?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19648 /* ~"Who else inhabits this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #19649 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19650 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 26.0
  SAY #19545 /* ~"Ssshhhee leeeads usss. Wwwaaatches uuusss. Passes to usss the wwwooord of the Sssilent King."~ */
  IF ~~ THEN REPLY #19651 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19652 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19653 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19546 /* ~"Lllooord of the Deeead Nay-shhhuns. Asssk Mmmary. Ssstaaale Mmmary."~ */
  IF ~~ THEN REPLY #19654 /* ~"Tell me about Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19655 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19656 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19547 /* ~The corpse stands motionless, staring at you. At last, she speaks. "Nnno. Asssk Mmmary. Ssstaaale Mmmary."~ */
  IF ~~ THEN REPLY #19657 /* ~"Tell me about Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19658 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19659 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19548 /* ~As the zombie faces you, a glint of recognition seems to flash in its dead eyes. "Uuuhhhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19660 /* ~"Greetings..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19661 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #19662 /* ~Leave the zombie alone.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",0)
~ THEN BEGIN 25 // from:
  SAY #19549 /* ~This rotting, female corpse at first seems completely unaware of you. As you approach, however, it turns and nods slowly, as if greeting you.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Zom","AR1500",1)
~ EXTERN ~DMORTE~ 199
END

IF ~~ THEN BEGIN 26 // from: 4.5 5.5
  SAY #19550 /* ~The corpse shakes its head. "Asssk Mmmary. Ssstaaale Mmmary."~ */
  IF ~~ THEN REPLY #19663 /* ~"Tell me about Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19664 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19665 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",1)
~ THEN BEGIN 27 // from:
  SAY #50426 /* ~This rotting, female corpse at first seems completely unaware of you. As you approach, however, it turns and nods slowly, as if greeting you.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #50427 /* ~"Greetings..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #50428 /* ~"Greetings..."~ */ GOTO 1
END
