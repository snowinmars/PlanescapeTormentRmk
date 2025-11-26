// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAXIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAXIS~

IF ~  Global("Vaxis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #453 /* ~Die elendige Leiche starrt dich mit leerem Blick an. Auf ihrer Stirn ist die Zahl "821" eingeritzt, und ihre Lippen sind zugenäht. Dem Körper entströmt ein leichter Formaldehydgeruch.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #454 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #455 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ GOTO 5
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #456 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #457 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 1
  IF ~~ THEN REPLY #458 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ GOTO 5
  IF ~~ THEN REPLY #459 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.3
  SAY #460 /* ~Merkwürdigerweise scheinen deine Fähigkeiten bei dieser Leiche wirkungslos zu bleiben.~ */
  IF ~~ THEN REPLY #461 /* ~Pieks ihr ins Auge.~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #462 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #463 /* ~Die Leiche stößt einen gedämpften Schrei aus, als du ihr ins Auge stichst, und blitzschnell legt sie ihre Hände vors Gesicht. Keuchend gibt sie irgendwelches Zeug von sich, das du für Obszönitäten hältst.~ */
  IF ~~ THEN REPLY #464 /* ~"Du bist kein Zombie! Wer bist du?"~ */ JOURNAL #64513 /* ~Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.~ */ GOTO 6
  IF ~~ THEN REPLY #465 /* ~"Warum spielst du hier eine Leiche?"~ */ JOURNAL #64513 /* ~Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.~ */ GOTO 6
  IF ~~ THEN REPLY #466 /* ~Geh. Und zwar schnell.~ */ JOURNAL #64513 /* ~Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 5.2
  SAY #467 /* ~Als du dich umdrehst und gehen willst, murmelt der 'Zombie' irgendetwas... als würde er versuchen, etwas zu sagen, was jedoch mit großen Schwierigkeiten verbunden ist, da seine Lippen zugenäht sind. "Mwer mbist DU? Mwas mwillst du?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #468 /* ~"Ich suche nach einem Weg hier raus. Kannst du mir helfen?"~ */ GOTO 7
  IF ~~ THEN REPLY #469 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #470 /* ~"Sag mir, wer du bist, oder ich rufe die Wache."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #472 /* ~Lüge: "Na... Ich habe nach dir gesucht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~~ THEN REPLY #473 /* ~"Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir, wer du bist, oder du brauchst dich nicht länger als Zombie zu VERKLEIDEN."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #474 /* ~"Tut mir leid, wollte nicht stören... wer immer du auch sein magst. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
  SAY #471 /* ~Als du dich umdrehst und gehen willst, vernimmst du einen kehligen Laut aus der Richtung des Zombies. "Mkein Mwort über MICH, zu niemndm. Mund hulten. Mkein WORT zu den Stubies." Er legt den Finger auf die Lippen. "Schhhhhh." Dann streicht er mit dem Finger über seine Kehle. "Oder ich muß mdir im Schluf die Mkehle durchschneiden. MKLAR?"~ */
  IF ~~ THEN REPLY #475 /* ~"Sollte das eine DROHUNG sein? Das war's dann... bereite dich schon mal auf den Tod vor."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #476 /* ~Lüge: "Ich würde nicht mal im Traum daran denken, den Staubmenschen von dir zu erzählen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #477 /* ~Wahrheit: "Ich verspreche, den Staubmenschen nichts von dir zu erzählen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_1","GLOBALGood",1)
~ EXIT
  IF ~~ THEN REPLY #478 /* ~"Was auch immer. Kümmer du dich um deine Angelegenheiten, dann kümmer ich mich um meine."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.4
  SAY #479 /* ~Als du den Zombie ansprichst, blinzelt er überrascht. "Jaaa? Mwas?"~ */
  IF ~~ THEN REPLY #480 /* ~"Du bist kein Zombie! Wer bist du?"~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.~ */ GOTO 6
  IF ~~ THEN REPLY #481 /* ~"Warum spielst du Leiche?"~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.~ */ GOTO 6
  IF ~~ THEN REPLY #482 /* ~Geh. Und zwar schnell.~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Einer der Zombies im ersten Stock war gar kein Zombie, sondern ein Mann in Verkleidung. Warum sich irgend jemand als Zombie verkleiden sollte, ist mir ein Rätsel.~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 5.0 5.1
  SAY #483 /* ~Der 'Zombie' versucht durch seine zugenähten Lippen hindurch zu antworten; seine Miene ist eine merkwürdige Mischung aus Angst und Wut. "Mwer mbist DU? Mwas mwillst du?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #484 /* ~"Ich suche nach einem Weg hier raus. Kannst du mir helfen?"~ */ GOTO 7
  IF ~~ THEN REPLY #485 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #486 /* ~"Sag mir, wer du bist, oder ich rufe die Wache."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #487 /* ~Lüge: "Na... Ich habe nach dir gesucht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~~ THEN REPLY #488 /* ~"Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir, wer du bist, oder du brauchst dich nicht länger als Zombie zu VERKLEIDEN."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #489 /* ~"Tut mir leid, wollte nicht stören... wer immer du auch sein magst. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
  SAY #490 /* ~Der Zombie scheint dich nicht gehört zu haben. Er mustert dich einen Augenblick lang von Kopf bis Fuß, dann runzelt er die Stirn. "Mwas mwillst du?" Argwöhnisch kneift er seine Augen zusammen. "Stubies usspionieren?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #491 /* ~"Nein. Ich versuche hier rauszukommen."~ */ GOTO 12
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #492 /* ~"Ich bin kein Spitzel. Ich wurde hier aus Versehen eingesperrt. Kannst du mir raushelfen?"~ */ GOTO 31
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #493 /* ~Lüge: "Ja, Ich bespitzele die... Staubies."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #494 /* ~Lüge: "Ja, Ich bespitzele die... Staubies."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_2","GLOBALLaw",-1)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #495 /* ~"Sag mir lieber, was DU hier tust, bevor ich die Wache rufe."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #496 /* ~"Sag mir lieber, was DU hier tust, bevor ich die Wache rufe."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #1306 /* ~"Moment mal: Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir was du hier machst, oder deine Verkleidung wird zur Realität."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #1348 /* ~"Moment mal: Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir was du hier machst, oder deine Verkleidung wird zur Realität."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #1349 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #1350 /* ~Jetzt schaut er dich noch prüfender an. "Mdu Spion? Mghörst zu Zelle?"~ */
  IF ~~ THEN REPLY #4671 /* ~"Hä?"~ */ GOTO 10
  IF ~~ THEN REPLY #1352 /* ~"Zelle?"
~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1359 /* ~Lüge: "Ja... Ich habe nach dir gesucht. Endlich hab' ich dich gefunden."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #1360 /* ~Lüge: "Ja... aber ich kann da jetzt nicht viel zu sagen, falls du mich verstehst. Und in was für einer Mission bist *du* hier?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1361 /* ~Lüge: "Ja... aber ich kann da jetzt nicht viel zu sagen. Und was machst du hier?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~~ THEN REPLY #1362 /* ~"Äh, ich hab' grad keine Zeit zum Schwatzen... vielleicht ein andermal."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #1363 /* ~Jetzt schaut er dich noch prüfender an. "Mdu Spion? Mghörst zu Zelle?"~ */
  IF ~~ THEN REPLY #4359 /* ~"Hä?"~ */ EXTERN ~DMORTE~ 85
  IF ~~ THEN REPLY #4360 /* ~"Zelle?"~ */ EXTERN ~DMORTE~ 85
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #4361 /* ~Er runzelt die Stirn, dann zischt er dich an. "Mdu kein Spion!" Er scheucht dich mit einer Geste fort. "Geh! Geh!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4362 /* ~"Erst mußt du mir sagen, was du hier tust, oder ich rufe die Wache."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4363 /* ~"Erst mußt du mir sagen, was du hier tust, oder ich rufe die Wache."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4364 /* ~"Verflucht, antworte auf meine Fragen, oder ich seh zu, daß deine Verkleidung zur Realität wird, bevor du auch nur drei Schritte weit kommst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4365 /* ~"Verflucht, antworte auf meine Fragen, oder ich seh zu, daß deine Verkleidung zur Realität wird, bevor du auch nur drei Schritte weit kommst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4367 /* ~"Schon gut, schon gut... Ich geh ja schon."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from:
  SAY #4366 /* ~Der Zombie nickt jetzt, und du glaubst zu bemerken, daß er sich unter seiner Zombie-Tarnung vor Stolz aufplustert.~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4368 /* ~"Kannst du mir helfen, hier rauszukommen?"~ */ GOTO 12
  IF ~~ THEN REPLY #4369 /* ~"Nun, und was machst du hier?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4370 /* ~Lüge: "Du bist also ein Spitzel für die Anarchisten? Nun, ich bespitzle auch die Staubies... aber ich kann da jetzt nicht mehr zu sagen, falls du mich verstehst. Und auf was für einer Mission bist *du* hier?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4371 /* ~Lüge: "Du bist also ein Spitzel für die Anarchisten? Ich bespitzle die Staubies... aber ich kann da jetzt nicht mehr zu sagen. Und was machst du hier?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~~ THEN REPLY #4372 /* ~"Äh, ich hab' grad keine Zeit zum Schwatzen... vielleicht ein andermal."~ */ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 7.0 11.0
  SAY #4373 /* ~Der Zombie scheint interessiert. "Mdu in Schwierigkitn? Mwas hust du mverbrochn?"~ */
  IF ~~ THEN REPLY #4374 /* ~"Ich bin auf einer der Totenbänke oben aufgewacht."~ */ GOTO 13
  IF ~~ THEN REPLY #4375 /* ~"Ich bin hier irgendwie... gefangen. Kannst du mir raushelfen?"~ */ GOTO 31
  IF ~~ THEN REPLY #4376 /* ~"Vielleicht erzähl ich dir später mal davon."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #4377 /* ~Der Zombie schaut dich an, als wärst du verrückt. "Mbist du übergeschnuppt?"~ */
  IF ~~ THEN REPLY #4378 /* ~"Ja, ich bin übergeschnappt. Total übergeschnappt."~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4379 /* ~"'Übergeschnappt'? Wie meinst'n das?"~ */ GOTO 16
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4380 /* ~"'Übergeschnappt'? Wie meinst'n das?"~ */ EXTERN ~DMORTE~ 87
  IF ~~ THEN REPLY #4381 /* ~"Ich weiß, daß es unglaublich klingt, aber ich werde dich nicht anlügen. Ich bin auf einer der Totenbänke oben aufgewacht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #4382 /* ~"Äh, nein... ehrlich gesagt bin ich hier irgendwie gefangen. Kannst du mir raushelfen?"~ */ GOTO 31
  IF ~~ THEN REPLY #4383 /* ~"Vergiß unsere Unterhaltung einfach. Ich muß jetzt gehen."~ */ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.3 15.0
  SAY #4384 /* ~Er schaut dich an, dann scheucht er dich mit einer Geste fort und zischt. "Mdu bescheuert! Luß mich in Ruhe!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4385 /* ~"Ich gehe nirgendwo hin. Sag mir, was du hier tust, oder ich rufe die Wache."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4386 /* ~"Ich gehe nirgendwo hin. Sag mir, was du hier tust, oder ich rufe die Wache."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4387 /* ~"Verflucht, wirst du wohl zuerst auf meine Fragen antworten, oder ich seh zu, daß deine Verkleidung zur Realität wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4388 /* ~"Verflucht, wirst du wohl zuerst auf meine Fragen antworten, oder ich seh zu, daß deine Verkleidung zur Realität wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4389 /* ~"Schon gut, schon gut... leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from:
  SAY #4390 /* ~Der falsche Zombie schaut euch beide mißtrauisch an.~ */
  IF ~~ THEN REPLY #4391 /* ~"Das ist die reine Wahrheit - ich bin auf einer der Totenbänke hier aufgewacht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #4392 /* ~"Ähh, tut mir leid." Ehrlich gesagt bin ich hier irgendwie gefangen. Kannst du mir raushelfen?"~ */ GOTO 31
  IF ~~ THEN REPLY #4393 /* ~"Vergiß es. Ich muß los."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #4394 /* ~Er schaut dich an, dann scheucht er dich mit einer Geste fort und zischt. "Hohlkopfh! Idiot! Mweg hier, mdu Mdussel! Geh!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4395 /* ~"Ich gehe nirgendwo hin. Sag mir, was du hier tust, oder ich rufe die Wache."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4396 /* ~"Ich gehe nirgendwo hin. Sag mir, was du hier tust, oder ich rufe die Wache."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4397 /* ~"Verflucht, wirst du wohl zuerst auf meine Fragen antworten, oder ich seh zu, daß deine Verkleidung zur Realität wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4398 /* ~"Verflucht, wirst du wohl zuerst auf meine Fragen antworten, oder ich seh zu, daß deine Verkleidung zur Realität wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4399 /* ~"Schon gut, schon gut... Ich geh ja schon."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.5 10.1 14.1 16.1 25.3 27.3
  SAY #4400 /* ~Einen Moment lang wirkt er ängstlich. Dann schaut er dich prüfend an und grinst spöttisch über das ganze Gesicht. "Mdu erzählst mir Mdunkel, ich erzähl *mdir* Mdunkel. Ich Freunde, hier versteckt, mdu *niemndn.* Mdu solltest nicht mhier sein. Mdich töten Stubies, ich mach mich us dem Stub."~ */
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4401 /* ~"Du wirst nicht entkommen, wenn ich dich TÖTE. Und jetzt antworte auf meine Fragen, oder ich seh zu, daß deine Verkleidung zur Realität wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4402 /* ~"Du wirst nicht entkommen, wenn ich dich TÖTE. Und jetzt antworte auf meine Fragen, oder ich seh zu, daß deine Verkleidung zur Realität wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4403 /* ~"Dann schmor doch in der Hölle. Ich gehe."~ */ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #4404 /* ~Der Zombie kneift die Augen zusammen und zischt dich an. "Mdu WILLST mich ins Totenbuch stecken? Ich Freunde, hier versteckt, mdu *niemndn.* Mwenn mdu mir ein Mhaar krümmst, mtöten DICH meine Mfreunde."~ */
  IF ~~ THEN REPLY #4405 /* ~"Ich werd's wagen. Bereite dich schon mal auf den Tod vor."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4406 /* ~"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht... *Zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 7.6 10.2 14.2 16.2 25.4 27.4
  SAY #4407 /* ~Einen Moment lang wirkt er ängstlich. Dann begutachtet er deine Statur und grinst spöttisch über das ganze Gesicht. "MDUUU MICH ins Totenbuch stecken? Ich Freunde, hier versteckt. Mdu *niemndn.* Mwenn mdu mir ein Mhaar krümmst, mtöten DICH meine Mfreunde."~ */
  IF ~~ THEN REPLY #4408 /* ~"Ich werd's wagen. Bereite dich schon mal auf den Tod vor."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4409 /* ~"Und wenn ich deine Verkleidung an die Wache verraten würde?"~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4410 /* ~"Und wenn ich deine Verkleidung an die Wache verraten würde?"~ */ GOTO 20
  IF ~~ THEN REPLY #4411 /* ~"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht... *Zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.2
  SAY #4412 /* ~Der Zombie kneift die Augen zusammen und zischt dich an. "Mdu erzählst mir Mdunkel, ich erzähl *mdir* Mdunkel. Ich Freunde, hier versteckt, mdu *niemndn.* Mdu solltest nicht hier sein. Mdich töten Stuubies, ich mach mich us dem Stub."~ */
  IF ~~ THEN REPLY #4413 /* ~"Das war deine letzte Chance, Leiche. Bereite dich schon mal auf den Tod vor."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4414 /* ~"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht, *Zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 7.4 10.0 14.0 16.0 19.1 25.2 27.2
  SAY #4415 /* ~Irgendetwas in deinem Blick scheint den Zombie stark zu verunsichern. "Nein-nein-nicht! Kkeine Mwachen rufn!" Er scheint sich zu fürchten. "Ich-ich-ich mspioniere Stubies aus; sssage, mwas ich sehe. Sonst nnnichts."~ */
  IF ~~ THEN REPLY #4416 /* ~"Spitzel? Für wen?"~ */ GOTO 23
  IF ~~ THEN REPLY #4417 /* ~"Hast du gesehen, was die Staubmenschen machen?"~ */ GOTO 29
  IF ~~ THEN REPLY #4418 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #4419 /* ~"Das ist alles, was ich wissen wollte. Leb wohl, *Zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.7 10.3 14.3 16.3 17.1 25.5 27.5
  SAY #4420 /* ~"Nein-nein-nicht! Nicht mweh tun!" Die Tatsache, daß du ein paar Kilo mehr Muskelmasse auf die Waage bringst, scheint die Entscheidung des Zombies zu beeinflussen. Er wirkt verunsichert. "Nicht mweh tun! Ich-ich-ich mspioniere Stubies us; sssage, mwus ich sehe. Sonst nnnichts."~ */
  IF ~~ THEN REPLY #4421 /* ~"Spitzel? Für wen?"~ */ GOTO 23
  IF ~~ THEN REPLY #4422 /* ~"Hast du gesehen, was die Staubmenschen machen?"~ */ GOTO 29
  IF ~~ THEN REPLY #4423 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #4424 /* ~"Das ist alles, was ich wissen wollte. Und nun aus dem Weg, *Zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0
  SAY #4425 /* ~Der Zombie verstummt vor Angst. Er sieht aus, als würde er überhaupt nichts mehr sagen wollen.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4426 /* ~"Nun komm schon. "Für wen sperrst du hier die Augen auf?"~ */ GOTO 70
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4427 /* ~"Nun komm schon. "Für wen sperrst du hier die Augen auf?"~ */ EXTERN ~DMORTE~ 89
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4428 /* ~"Es wird SEHR viel weniger schmerzvoll sein, wenn du mir jetzt sagst, für wen du hier spitzelst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 70
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4429 /* ~"Es wird SEHR viel weniger schmerzvoll sein, wenn du mir jetzt sagst, für wen du hier spitzelst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 89
  IF ~~ THEN REPLY #4430 /* ~"Ist ja schon gut. Hast du gesehen, was die Staubmenschen gemacht haben?"~ */ GOTO 29
  IF ~~ THEN REPLY #4431 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4432 /* ~"Dann vergiß es einfach. Leb wohl, *Zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.3 6.3 8.2
  SAY #4433 /* ~"Mdu hast mich gggesucht? Mweshalb?" Er schielt dich an. "Mdu hust eine Nuchricht für mmmich?"~ */
  IF ~~ THEN REPLY #4434 /* ~Lüge: "Ja, ich habe eine Nachricht für dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_5","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #4435 /* ~"Nachricht von wem?"~ */ GOTO 27
  IF ~~ THEN REPLY #4436 /* ~"Nein, ich habe keine Nachricht."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.2
  SAY #4437 /* ~Er zischt dich wütend an. "Mwas *mwillst* du mdunn, Dussel?!"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4438 /* ~"Ich suche nach einem Weg hier raus. Kannst du mir helfen?"~ */ GOTO 31
  IF ~~ THEN REPLY #4439 /* ~"Ich hätte gern ein paar Informationen..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4440 /* ~"Sag mir, was du hier tust, oder ich rufe die Wache."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4441 /* ~"Sag mir, was du hier tust, oder ich rufe die Wache."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4442 /* ~"Ich will, daß du mir auf meine Fragen antwortest, oder ich seh zu, daß deine Verkleidung zur Realität wird, bevor du auch nur drei Schritte weit kommst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4443 /* ~"Ich will, daß du mir auf meine Fragen antwortest, oder ich seh zu, daß deine Verkleidung zur Realität wird, bevor du auch nur drei Schritte weit kommst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4444 /* ~"Tut mir leid, wollte nicht stören... wer immer du auch sein magst. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY #4445 /* ~"Mwas für eine Nachricht?"~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4446 /* ~"Du sollst mir von deiner Mission erzählen."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4447 /* ~Lüge: "Ich habe die neuen Anweisungen für dich."~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",1)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4448 /* ~Lüge: "Ich... habe die neuen Anweisungen für dich."~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #4449 /* ~"Tut mir leid, ich habe keine Nachricht für dich."~ */ GOTO 27
  IF ~~ THEN REPLY #4450 /* ~"Vergiß es. Tut mir leid, daß ich dich gestört habe. Lebe wohl."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.3 26.4
  SAY #4451 /* ~Wütend kneift er die Augen zusammen. "Mdu mkein Bote. Mwer bist du?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4452 /* ~"Ich suche nach einem Weg hier raus. Kannst du mir helfen?"~ */ GOTO 31
  IF ~~ THEN REPLY #4453 /* ~"Ich hätte gern ein paar Informationen..."
~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4454 /* ~"Sag mir, was du hier tust, oder ich rufe die Wache."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4455 /* ~"Sag mir, was du hier tust, oder ich rufe die Wache."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4456 /* ~"Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir, wer du bist, oder du brauchst dich nicht länger als Zombie zu VERKLEIDEN."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4457 /* ~"Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir, wer du bist, oder du brauchst dich nicht länger als Zombie zu VERKLEIDEN."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4458 /* ~"Tut mir leid, wollte nicht stören... wer immer du auch sein magst. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 28 // from: 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
  SAY #4459 /* ~"Ich bespitzle Stubies. Sage, mwas ich sehe. Sssonst nichts."~ */
  IF ~~ THEN REPLY #4460 /* ~"Hast du gesehen, was die Staubmenschen machen?"~ */ GOTO 29
  IF ~~ THEN REPLY #4461 /* ~"Ich verstehe. Da war noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4462 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.1 22.1 23.4 28.0 70.1 71.2
  SAY #4463 /* ~"Nix. Sie tun nix. Ich habe nix gesehen. Nur Tote, tote Leute. Stubies tun *nix.*" Er kneift seine Augen zusammen und sagt voller Überzeugung "Uber ich mguck trotzdm hin."~ */
  IF ~~ THEN REPLY #4464 /* ~"Ich verstehe. Da war noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4465 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1 26.2
  SAY #4466 /* ~Er kneift seine Augen zusammen, um dich besser zu sehen. "Mwas für mwelche?"~ */
  IF ~~ THEN REPLY #4467 /* ~"Erzähl mir von deiner Mission."~ */ GOTO 28
  IF ~~ THEN REPLY #4468 /* ~"Ich muß einen Weg hier raus finden, so daß ich unbemerkt davonkomme."~ */ GOTO 49
  IF ~  Global("Vaxis_Leave","GLOBAL",0)
~ THEN REPLY #4469 /* ~"Ich bin hier, um dich abzulösen. Gib mir alle Informationen, die du gesammelt hast, alles was du besitzt, und dann geh."~ */ DO ~SetGlobal("Vaxis_Leave","GLOBAL",1)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Embalm",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Knife",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #64517 /* ~Ich habe dem verkleideten Mann gesagt, daß ich dasei, um ihn "abzulösen", und er hat mir alles gegeben, was er gesammelt hatte. Das waren vor allem Bandagen und Dinge zum Heilen, die er wahrscheinlich dazu benötigte, seine Verkleidung aufrechtzuerhalten.~ */ GOTO 72
  IF ~~ THEN REPLY #4470 /* ~"Ich bin hier, um dir in jeder Weise zu helfen."~ */ GOTO 35
  IF ~~ THEN REPLY #4471 /* ~"Deine Anweisungen werden wohl bis zum nächsten Mal warten müssen. Ich werde wiederkommen."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 7.1 12.1 13.4 15.1 25.0 27.0 50.0
  SAY #4472 /* ~Er ist kurz still, dann nickt er verständig. "Mweshalb sollte ich mdir hlfen?"~ */
  IF ~~ THEN REPLY #4473 /* ~"Weil ich deine Hilfe brauche."~ */ GOTO 32
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4474 /* ~"Vielleicht könnten wir uns gegenseitig helfen. Was willst du dafür?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vaxis_3","GLOBALGood",1)
~ GOTO 35
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4475 /* ~"Weil ich deine alberne Verkleidung nicht *verraten* werde... wenn du mir hilfst."~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4476 /* ~"Weil ich deine alberne Verkleidung nicht *verraten* werde... wenn du mir hilfst."~ */ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4477 /* ~"Du siehst aus wie jemand, der sich eher als Leiche verkleidet, als eine SEIN will. Ist das Grund genug?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4478 /* ~"Du siehst aus wie jemand, der sich eher als Leiche verkleidet, als eine SEIN will. Ist das Grund genug?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4479 /* ~"Vergiß einfach, daß wir uns begegnet sind. Ich muß mich verabschieden. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #4480 /* ~Der Zombie grinst leicht verächtlich. "Jeder *mbraucht* was - niemand *mgibt* was. Mwenn du mir mwas *gibst*, hlf ich dir *vielleicht*."
~ */
  IF ~~ THEN REPLY #4481 /* ~"Was brauchst du?"~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4482 /* ~"Wie wär's, wenn du mir hilfst, und ich rufe dafür nicht die Wache?"~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4483 /* ~"Wie wär's, wenn du mir hilfst, und ich rufe dafür nicht die Wache?"~ */ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4484 /* ~"Du siehst aus wie jemand, der lieber seine Fähigkeit zum Atmen behält, als mir einen Korb zu geben. Also... ich frage dich jetzt zum letzten Mal: Wie komme ich hier raus?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4485 /* ~"Du siehst aus wie jemand, der lieber seine Fähigkeit zum Atmen behält, als mir einen Korb zu geben. Also... ich frage dich jetzt zum letzten Mal: Wie komme ich hier raus?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4486 /* ~"Kein Interesse. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 33 // from: 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
  SAY #4487 /* ~Er mustert dich von Kopf bis Fuß, als frage er sich, ober er einen Angriff wagen sollte. Dann starrt er auf deine Narben und entscheidet sich dagegen. "Hmmm. Mdu kunnst durch Mportule entkommn."~ */
  IF ~~ THEN REPLY #4672 /* ~"Portale?"~ */ DO ~SetGlobal("Strong_Arm_Vaxis","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 34 // from: 31.3 32.2 35.3
  SAY #4491 /* ~Einen Moment lang wirkt er ängstlich. Dann schaut er dich prüfend an und grinst spöttisch über das ganze Gesicht. "Mdu erzählst mir Mdunkel, ich erzähl *mdir* Mdunkel. Ich Freunde, hier versteckt, mdu *niemndn.* Mdu solltest nicht mhier sein. Mdich töten Stubies, ich mach mich us dem Stub."~ */
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4489 /* ~"Du wirst nicht entkommen, wenn ich dich TÖTE. Und jetzt mach endlich den Mund auf, oder ich seh zu, daß deine Verkleidung zur Realität wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4490 /* ~"Du wirst nicht entkommen, wenn ich dich TÖTE. Und jetzt red' endlich, oder ich seh zu, daß deine Verkleidung zur Realität wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4492 /* ~"Dann schmor doch in der Hölle. Ich gehe."~ */ GOTO 4
END

IF ~~ THEN BEGIN 35 // from: 30.3 31.1 32.0
  SAY #4493 /* ~"Mhol mir dn *Schlüssel*. Eisnschlssel zum Bulsumierungsrum."~ */
  IF ~  PartyHasItem("KeyEm")
~ THEN REPLY #4494 /* ~"Sprichst du von diesem Schlüssel hier?"~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
~ GOTO 42
  IF ~~ THEN REPLY #4495 /* ~"Also gut. Und wo ist dieser Schlüssel?"~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4496 /* ~"Für so was hab' ich keine Zeit. Hilf mir zu entkommen, oder ich rufe die Wache!"~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4497 /* ~"Für so was hab' ich keine Zeit. Hilf mir zu entkommen, oder ich rufe die Wache!"~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4498 /* ~"Ich werde dir überhaupt nichts holen. Hilf mir zu entkommen, oder ich dreh dir hier und jetzt den Hals um."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4499 /* ~"Ich werde dir überhaupt nichts holen. Hilf mir zu entkommen, oder ich dreh dir hier und jetzt den Hals um."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 33
  IF ~~ THEN REPLY #4500 /* ~"Nein danke. Vielleicht ein andermal."~ */ GOTO 4
END

IF ~~ THEN BEGIN 36 // from: 35.1 58.2
  SAY #4501 /* ~"Ssstubie-Frau hut ihn." Er zeigt auf seine Augen. "Mgelbe Ugen..." Mit seinen Händen deutet er eine Schere an. "Mklingen un Mfingern."~ */
  IF ~  PartyHasItem("KeyEm")
~ THEN REPLY #4502 /* ~"Unsere Wege haben sich schon einmal gekreuzt. "Hier ist der Schlüssel."~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
~ GOTO 42
  IF ~  Global("EiVene","GLOBAL",1)
~ THEN REPLY #64520 /* ~"Eine Staubfrau... mit gelben Augen und Klingen an den Fingen? Ich habe sie schon im Balsamierungsraum getroffen. Warte - ich  bin gleich mit dem Schlüssel zurück."~ */ JOURNAL #64519 /* ~Im Tausch gegen die Hilfe des "Zombies" habe ich eingewilligt, einen Schlüssel zum Balsamierungsraum von dieser Staubmenschen-Balsamiererin zu holen, die ich im anderen Raum getroffen habe - Ich glaube, ihr Name war Ei-Vene. Wie sie überhaupt einen Schlüssel zum Balsamierungsraum mit diesen Klingen verwenden kann, die sie anstatt Händen hat, ist mir ein Rätsel.~ */ GOTO 38
  IF ~  Global("EiVene","GLOBAL",0)
~ THEN REPLY #4503 /* ~"Eine Staubmenschenfrau... mit gelben Augen und Klingen an ihren Fingern? Also gut. Ich bin gleich mit dem Schlüssel wieder da."~ */ JOURNAL #64518 /* ~Im Tausch gegen die Hilfe des "Zombies" habe ich eingewilligt, einen Schlüssel zum Balsamierungsraum von einer Staubmenschenfrau zu holen, die statt Hände Klingen sowie gelbe Augen hat.~ */ GOTO 38
  IF ~~ THEN REPLY #4504 /* ~"Diese Staubmenschenfrau muß wirklich attraktiv sein. Bist du sicher, daß ich euch einander nicht vorstellen soll?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_6","GLOBALLaw",-1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.3
  SAY #4505 /* ~Der Zombie blinzelt. Er scheint dich nicht verstanden zu haben.~ */
  IF ~  Global("EiVene","GLOBAL",1)
~ THEN REPLY #4506 /* ~"Hör mal, das sollte'n Witz sein, du Idiot... vergiß es, ich geh jetzt und hole deinen Schlüssel."~ */ JOURNAL #64519 /* ~Im Tausch gegen die Hilfe des "Zombies" habe ich eingewilligt, einen Schlüssel zum Balsamierungsraum von dieser Staubmenschen-Balsamiererin zu holen, die ich im anderen Raum getroffen habe - Ich glaube, ihr Name war Ei-Vene. Wie sie überhaupt einen Schlüssel zum Balsamierungsraum mit diesen Klingen verwenden kann, die sie anstatt Händen hat, ist mir ein Rätsel.~ */ GOTO 38
  IF ~  Global("EiVene","GLOBAL",0)
~ THEN REPLY #66150 /* ~"Das war ein Witz, Mensch! Du bist... Ach, vergiß es! Ich such jetzt deinen Schlüssel."~ */ JOURNAL #64518 /* ~Im Tausch gegen die Hilfe des "Zombies" habe ich eingewilligt, einen Schlüssel zum Balsamierungsraum von einer Staubmenschenfrau zu holen, die statt Hände Klingen sowie gelbe Augen hat.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2 37.0 37.1
  SAY #4507 /* ~Der Zombie schielt dich an. "Mwenn sssie dich kriegen, kein Mwort über mich, oder ich ssschneid mdir im Schluf mdie Mkehle durch."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4508 /* ~"Ich werd dir deinen verdammten Schlüssel holen... aber nimm dich in acht mit deinen Drohungen, verstanden?"~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",1)
~ EXIT
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4509 /* ~"Ich bin bald zurück."~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",1)
~ EXIT
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4510 /* ~"Ich werd dir deinen verdammten Schlüssel holen... aber nimm dich in acht mit deinen Drohungen, verstanden?"~ */ EXIT
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4511 /* ~"Ich bin bald zurück."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 43.12
  SAY #4512 /* ~"Ich mgut im Tarnen. Ich uch Nurben. Ich viel Mbulsumierungsöl. Muche GUUUTE Zombies." Der Zombie kichert durch die zugenähten Lippen. "Stubies sssind mblöd."
~ */
  IF ~~ THEN EXTERN ~DMORTE~ 93
END

IF ~~ THEN BEGIN 40 // from:
  SAY #4514 /* ~"Ich mwurte hier. Hol erst mden Schlssel." Der Zombie lächelt so breit, daß es dir den Magen umdreht "Mdunn helf ich dir."~ */
  IF ~~ THEN REPLY #4515 /* ~"Wenn ich ihn finde, bring ich ihn dir."~ */ EXIT
  IF ~~ THEN REPLY #4516 /* ~"Dann vergiß es einfach."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #4517 /* ~Der Zombie macht große Augen; dann streckt er die Hand aus und schnippst mit den Fingern. "Mgib her."~ */
  IF ~~ THEN REPLY #4518 /* ~"Einen Moment mal. Erst will ich hier noch was."~ */ EXIT
  IF ~~ THEN REPLY #4519 /* ~"Hier, bitte sehr."~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0 36.0 58.0 58.1
  SAY #4520 /* ~Der Zombie macht große Augen und entreißt dir den Schlüssel. Er dreht ihn um und nickt dabei. "Mguuut... mguuut."~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4521 /* ~"Also... wie komme ich hier raus?"~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ JOURNAL #64521 /* ~Ich habe Vaxis seinen wertvollen Schlüssel zum Balsamierungsraum geholt. Wenn man aus dem Geruch nach Balsamierungsöl, den er absondert, schließen kann, braucht er ihn, um neue Vorräte für seine Verkleidung zu holen.~ */ GOTO 49
  IF ~  Global("Escape_Mortuary","GLOBAL",1)
~ THEN REPLY #4522 /* ~"Nun... da war noch was, was ich wissen wollte..."~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ JOURNAL #64521 /* ~Ich habe Vaxis seinen wertvollen Schlüssel zum Balsamierungsraum geholt. Wenn man aus dem Geruch nach Balsamierungsöl, den er absondert, schließen kann, braucht er ihn, um neue Vorräte für seine Verkleidung zu holen.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
  SAY #4523 /* ~"Mwas mwillst du mwissn?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
!Global("Vaxis_Help","GLOBAL",1)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Strong_Arm_Vaxis","GLOBAL",1)
~ THEN REPLY #64508 /* ~"Wie komme ich hier raus?"~ */ GOTO 49
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
!Global("Vaxis_Help","GLOBAL",1)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Strong_Arm_Vaxis","GLOBAL",0)
~ THEN REPLY #4524 /* ~"Wie komme ich hier raus?"~ */ GOTO 49
  IF ~  Global("Vaxis_Help","GLOBAL",1)
~ THEN REPLY #4525 /* ~"Wo war doch gleich dieses Portal, von dem du gesprochen hast?"~ */ GOTO 52
  IF ~  Global("Vaxis_Zombie_Disguise","GLOBAL",1)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4526 /* ~"Kannst du mich als Zombie verkleiden?"~ */ GOTO 63
  IF ~  Global("Vaxis_Zombie_Disguise","GLOBAL",2)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4527 /* ~"Kannst du mich nochmal als Zombie verkleiden?"~ */ GOTO 63
  IF ~  Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #4528 /* ~"Was machst du hier?"~ */ GOTO 28
  IF ~  GlobalLT("Pharod","GLOBAL",1)
~ THEN REPLY #4673 /* ~"Kennst du jemanden namens Pharod?"~ */ GOTO 44
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #4530 /* ~"Ich vermisse ein Journal. Hast du es zufällig gesehen?"~ */ GOTO 47
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #4531 /* ~"Kannst du mir vielleicht was über Dhall erzählen?"~ */ GOTO 53
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #4532 /* ~"Kannst du mir vielleicht was über Deionarra erzählen?"~ */ GOTO 54
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #4533 /* ~"Kannst du mir was über Soego erzählen?"~ */ GOTO 55
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4534 /* ~"Wie kommt es denn, daß du so aussiehst?"~ */ GOTO 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4535 /* ~"Wie kommt es denn, daß du so aussiehst?"~ */ GOTO 39
  IF ~~ THEN REPLY #4536 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.6
  SAY #4537 /* ~"Fff-UROD?" Der Zombie runzelt nachdenklich die Stirn. "Er... er mlebt irgndwo im Stock." Er schüttelt den Kopf. "Mweiß nicht mwo." Er runzelt erneut die Stirn. "Stubies seeehr mböse, MMMÖGEN Mfff-arod nicht."~ */
  IF ~~ THEN REPLY #4538 /* ~"Stock?"~ */ GOTO 45
  IF ~~ THEN REPLY #4539 /* ~"Warum mögen die Staubmenschen Pharod nicht?"~ */ JOURNAL #64522 /* ~Es klingt so, als ob die Staubmenschen und Pharod nicht gerade die besten Freunde sind... Vaxis hat mir erzählt, daß Pharod eine Menge Leichen zur Leichenhalle bringt, und daß die Staubmenschen vermuten, daß er Leute tötet, bevor ihre Stunde geschlagen hat.~ */ GOTO 46
  IF ~~ THEN REPLY #4540 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4541 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #4542 /* ~"Slums da mdrußen."~ */
  IF ~~ THEN REPLY #4543 /* ~"Warum mögen die Staubmenschen Pharod nicht?"~ */ JOURNAL #64522 /* ~Es klingt so, als ob die Staubmenschen und Pharod nicht gerade die besten Freunde sind... Vaxis hat mir erzählt, daß Pharod eine Menge Leichen zur Leichenhalle bringt, und daß die Staubmenschen vermuten, daß er Leute tötet, bevor ihre Stunde geschlagen hat.~ */ GOTO 46
  IF ~~ THEN REPLY #4544 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4545 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0
  SAY #4546 /* ~"Ein Summler. Mbringt Tote in Leichenhulle und mverkuft sie an Ssstubies. Mbringt VIELE Tote. Stubies wissen nicht, woher. Gluben, er msteckt Mdussl in Totnbuch."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4547 /* ~"Äh... was?"~ */ GOTO 48
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4548 /* ~"Äh... was?"~ */ EXTERN ~DMORTE~ 91
  IF ~~ THEN REPLY #4549 /* ~"Oh. Da war noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4550 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.7
  SAY #4551 /* ~"Weiß nicht. Von nem Dussel geschält?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4552 /* ~"Äh... was?"~ */ GOTO 48
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4553 /* ~"Äh... was?"~ */ EXTERN ~DMORTE~ 92
  IF ~~ THEN REPLY #4554 /* ~"Oh. Da war noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4555 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #4556 /* ~Der Zombie versucht, etwas zu sagen; er wartet kurz, versucht erneut zu sprechen und zuckt dann mit den Achseln. Scheinbar findet er keine bessere Erklärung~ */
  IF ~~ THEN REPLY #4557 /* ~"Oh. Da war noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4558 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.1 42.0 43.0 43.1
  SAY #4559 /* ~Der Zombie brummt. "Mdu mkunnst durch die Mportule entkmmen." Er winkt mit der Hand. "So."~ */
  IF ~~ THEN REPLY #4560 /* ~"Portale? Was für Portale?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 33.0 49.0
  SAY #4563 /* ~"Mportule..." Der Zombie zeigt um sich. "Mportule überull."~ */
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",0)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #4564 /* ~"Kannst du mir so ein Portal zeigen?"~ */ GOTO 31
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",0)
GlobalGT("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #64509 /* ~"Kannst du mir so ein Portal zeigen?"~ */ GOTO 51
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",1)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #64510 /* ~"Kannst du mir so ein Portal zeigen?"~ */ GOTO 51
  IF ~  Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #64511 /* ~"Kannst du mir so ein Portal zeigen?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3 72.0
  SAY #4567 /* ~Der Zombie nickt. "Mwenn mdu rus mwillst, geh zum Mbugen im ersstn Stuck, nordwstlichr Rum... Mdu bruchst Fingerknuchen, Hakenform..." Er hält einen Zeigefinger hoch und biegt ihn wie einen Haken. "Wunn du Schlussel hast, geh zu Bugen, sprung in Mgeheimkryptu. Mvun durt kunnst du mfliehen. Geheimer Mfluchtweg." Er nickt eifrig. "Da kunnst du AUSRUHN."~ */
  IF ~  !PartyHasItem("BoneChrm")
~ THEN REPLY #64527 /* ~"Krummer Fingerknochen? Wo soll ich denn sowas finden?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64528 /* ~Vaxis hat mir erzählt, daß im nordwestlichen Raum im Erdgeschoß der Leichenhalle ein geheimes Portal ist. Wenn man einen verbogenen Fingerknochen dahin mitnimmt, wird es aktiviert, und ich kann dadurch zu einer geheimen Krypta gelangen, in der ich, wie Vaxis sagt, mich "ausruhen" kann. Er weiß aber nicht, wo man einen verbogenen Fingerknochen finden kann. Er hat allerdings gesagt, ich solle mal das obere Stockwerk der Leichenhalle versuchen.~ */ GOTO 77
  IF ~  PartyHasItem("BoneChrm")
~ THEN REPLY #4568 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64529 /* ~Vaxis hat mir erzählt, daß im nordwestlichen Raum im Erdgeschoß der Leichenhalle ein geheimes Portal ist. Wenn man einen verbogenen Fingerknochen dahin mitnimmt, wird es aktiviert, und ich kann dadurch zu einer geheimen Krypta gelangen, in der ich, wie Vaxis sagt, mich "ausruhen" kann.~ */ GOTO 43
  IF ~  PartyHasItem("BoneChrm")
~ THEN REPLY #4569 /* ~"Ein Bogen im Erdgeschoß, nordwestlicher Raum? Gut, ich werde mal nachsehen."~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64529 /* ~Vaxis hat mir erzählt, daß im nordwestlichen Raum im Erdgeschoß der Leichenhalle ein geheimes Portal ist. Wenn man einen verbogenen Fingerknochen dahin mitnimmt, wird es aktiviert, und ich kann dadurch zu einer geheimen Krypta gelangen, in der ich, wie Vaxis sagt, mich "ausruhen" kann.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.2
  SAY #4570 /* ~"Hör mr doch zu!" Der Zombie macht einen verärgerten Eindruck. "Bugen, ersstr Stuck, nordwstlichr Rum..." Er hält einen Zeigefinger hoch und beugt ihn. "Mdu bruchst Fingerknuchen, krumm. Mdu gehst in Geheimkryptu. Mfluchtweg Da kunnst du AUSRUHN." ~ */
  IF ~~ THEN REPLY #4571 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4572 /* ~"Bogen, Erdgeschoß, nordwestlicher Raum, öffnet sich mit einem krummen Fingerknochen? Gut, jetzt hab' ich's verstanden."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 43.8
  SAY #4573 /* ~"Schreiber." Zuckt mit den Achseln. "Ult. Gelb."~ */
  IF ~~ THEN REPLY #4574 /* ~"Weiter ist da nichts zu sagen, schätze ich. Ich wollte noch was anderes wissen..."~ */ GOTO 43
  IF ~~ THEN REPLY #4575 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 43.9
  SAY #4576 /* ~"Hmmm?" Er runzelt die Stirn. "Mwer ist dddus?"~ */
  IF ~~ THEN REPLY #4577 /* ~"Vergiß es einfach. Ich wollte noch was anderes wissen..."~ */ GOTO 43
  IF ~~ THEN REPLY #4578 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 43.10
  SAY #4579 /* ~"Führer, am Hupttur zur Leichnhulle. Mwus hust du mit ihm vor?"~ */
  IF ~~ THEN REPLY #4580 /* ~"Was weißt du über ihn?"~ */ DO ~SetGlobal("Vaxis_Exposes_Soego","GLOBAL",1)
~ JOURNAL #64530 /* ~Vaxis hat so etwas darüber gesagt, daß Soego seltsam sei - Er sagt, er möge "Ratten", was auch immer DAS jetzt wieder heißen soll. Es ist schon ironisch genug, wenn Vaxis irgend jemanden beschuldigt, seltsam zu sein.~ */ GOTO 56
  IF ~~ THEN REPLY #4581 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #4582 /* ~"Mmmerkwürdig, kein Stubie, kein Unurchist, Augen unders..." Mit den Achseln zuckend. "Mag Ratten. Merkwürdig."~ */
  IF ~~ THEN REPLY #4583 /* ~"Gut, daß er der Einzige hier ist, der merkwürdig ist. Da war noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4584 /* ~"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."~ */ EXIT
END

IF ~  GlobalGT("Vaxis","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #4585 /* ~Du erblickst den falschen Zombie. Du bist erstaunt, wie gut er getarnt ist... sein Atem ist so schwach, daß man ihn kaum wahrnimmt.~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
~ THEN REPLY #4586 /* ~"Sei gegrüßt."~ */ GOTO 58
  IF ~  Global("Embalm_Key_Quest","GLOBAL",2)
~ THEN REPLY #4587 /* ~"Sei gegrüßt."~ */ GOTO 58
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",1)
!Global("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #4588 /* ~"Sei gegrüßt."~ */ GOTO 59
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",1)
!Global("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #4589 /* ~"Sei gegrüßt."~ */ GOTO 58
  IF ~~ THEN REPLY #4590 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1 57.3
  SAY #4591 /* ~Der Zombie blickt rasch um sich. Er will sich überzeugen, daß niemand zusieht. Dann dreht er sich zu dir. "Mwus?"~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
PartyHasItem("KeyEm")
~ THEN REPLY #4592 /* ~"Hier hat du den Schlüssel für den Balsamierungsraum."~ */ DO ~AddexperienceParty(250)
TakePartyItemNum("KeyEm",1)
~ GOTO 42
  IF ~  Global("Embalm_Key_Quest","GLOBAL",2)
PartyHasItem("KeyEm")
~ THEN REPLY #4593 /* ~"Hier hat du den Schlüssel für den Balsamierungsraum."~ */ DO ~AddexperienceParty(250)
TakePartyItemNum("KeyEm",1)
~ GOTO 42
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!PartyHasItem("KeyEm")
~ THEN REPLY #4594 /* ~"Wo ist dieser Schlüssel, von dem du gesprochen hast, doch gleich zu finden?"~ */ GOTO 36
  IF ~~ THEN REPLY #4595 /* ~"Ich hätte ein paar Fragen an dich..."~ */ GOTO 43
  IF ~~ THEN REPLY #4596 /* ~"Ach, nichts."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.2
  SAY #4597 /* ~Der Zombie blickt um sich. Er will sich überzeugen, daß niemand zusieht. Dann scheucht er dich mit einer Geste fort und zischt dich an. "Geh mweg! Los!"~ */
  IF ~~ THEN REPLY #4598 /* ~"Nein. Ich hätte da erstmal ein paar Fragen an dich..."
~ */ GOTO 43
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4599 /* ~"Dann vergiß es."~ */ GOTO 4
  IF ~  GlobalGT("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4600 /* ~"Dann vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 43.11
  SAY #4601 /* ~"Ich mgut im Tarnen. Ich uch Nurben. Ich viel Mbulsumierungsöl. Muche GUUUTE Zombies." Der Zombie kichert durch die zugenähten Lippen. "Stubies sssind mblöd."~ */
  IF ~~ THEN REPLY #4602 /* ~"Ja klar, das sind die Dummen, was?"~ */ GOTO 61
  IF ~~ THEN REPLY #4603 /* ~"Tut das nicht weh?"~ */ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4604 /* ~"Diese Verkleidung ist gar nicht so schlecht. Sag... kannst du mich auch als Zombie verkleiden?"~ */ GOTO 63
  IF ~~ THEN REPLY #4605 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4606 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #4607 /* ~Der Sarkasmus geht an dem Zombie offensichtlich vorbei, denn er nickt eifrig. "Stubies ddumm. Ich muche MGUTE Zombies."~ */
  IF ~~ THEN REPLY #4608 /* ~"Tut das nicht weh?"~ */ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4609 /* ~"Diese Verkleidung ist nicht schlecht. Kannst du mich als Zombie verkleiden?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #4610 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 64
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #4611 /* ~"Ich muß gehen. Leb wohl."~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #4612 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #4613 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1 61.0
  SAY #4614 /* ~Er betrachtet deine Narben. "Ich gleiche Fruge. Mir nicht mwehgetun." Auf seine Brust klopfend: "Ich STRK."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4615 /* ~"Diese Verkleidung ist nicht schlecht. Kannst du mich als Zombie verkleiden?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4616 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 64
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4617 /* ~"Ich muß gehen. Leb wohl."~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4618 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4674 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 43.3 43.4 60.2 61.1 62.0 64.1 64.2
  SAY #4619 /* ~Er mustert dich kurz von Kopf bis Fuß, murmelt etwas vor sich hin und nickt. "U-huh. Ich mbruche Mbalsmierungsöl." Auf die Narben auf deiner Brust zeigend. "Und Nnnudel und Fffuden."~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #4620 /* ~"Hier, bitte sehr."
~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",2)
DestroyPartyItem("Embalm",FALSE)
DestroyPartyItem("Needle",FALSE)
~ GOTO 65
  IF ~~ THEN REPLY #4621 /* ~"Ich werd mal drüber nachdenken. Ich hätte aber noch ein paar Fragen..."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #4622 /* ~"Nein danke. Vielleicht ein andermal... leb wohl."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #4623 /* ~"Ein bißchen Balsamierungsöl und Faden? Ich werde mal sehen, ob sich so was auftreiben läßt."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2 61.3 62.1 62.2
  SAY #4624 /* ~Mit seltsamer Miene mustert er dich von Kopf bis Fuß. "Du GUUUTER Zombie. Ich Zombie us dir muchen? GUUUTE Turnung."~ */
  IF ~~ THEN REPLY #4625 /* ~"Trotzdem vielen Dank. Ich hätte da noch ein paar Fragen an dich..."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #4626 /* ~"Klar. Kannst du das tun?"~ */ GOTO 63
  IF ~~ THEN REPLY #4627 /* ~"Warum nicht? Ich fühl mich eh schon wie ein wandelnder Toter."~ */ GOTO 63
  IF ~~ THEN REPLY #4628 /* ~"Nein... nein... das ist schon in Ordnung. Leb wohl."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.0
  SAY #4629 /* ~Der Zombie nimmt dir die Sachen ab und macht sich an die Arbeit...~ */
  IF ~  !NearbyDialog("DMorte")
Global("Vaxis_Zombie_XP","GLOBAL",0)
~ THEN REPLY #4630 /* ~Versuche, ganz stillzuhalten.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
AddexperienceParty(500)
SetGlobal("Vaxis_Zombie_XP","GLOBAL",1)
~ GOTO 66
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_1","GLOBAL",0)
~ THEN REPLY #4631 /* ~Versuche, ganz stillzuhalten.~ */ DO ~SetGlobal("Morte_Vaxis_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 94
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_1","GLOBAL",1)
~ THEN REPLY #4632 /* ~Versuche, ganz stillzuhalten.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 66
  IF ~  !NearbyDialog("DMorte")
Global("Vaxis_Zombie_XP","GLOBAL",1)
~ THEN REPLY #64533 /* ~Versuche, still zu halten.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.2 65.3
  SAY #4633 /* ~Der Zombie bestreicht dich mit Balsamierungsöl. Dann näht er verschiedene Narben zu. Er arbeitet von den Füßen aufwärts und vollendet die Tarnung, indem er deine Lippen zusammennäht.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4634 /* ~"Mmm-hmmph-mmm... Danke fön."~ */ GOTO 67
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_2","GLOBAL",0)
~ THEN REPLY #4635 /* ~"Mmm-hmmph-mmm... Danke fön."~ */ DO ~SetGlobal("Morte_Vaxis_Quip_2","GLOBAL",1)
~ EXTERN ~DMORTE~ 95
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_2","GLOBAL",1)
~ THEN REPLY #4636 /* ~"Mmm-hmmph-mmm... Danke fön."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #4637 /* ~Der Zombie hält seine Hand hoch. "Vorsücht! Reden zieht Fäden raus, ruiniert Vör-kloidung. Zumbie nix reden. Duu müssen reden? Reden langsam, vorsüchtüg."

^NHINWEIS: Denk daran, daß niemand damit rechnet, daß ein Zombie spricht. Wenn du als Zombie jemanden ansprichst, riskierst du, daß man deine Verkleidung durchschaut.^-~ */
  IF ~~ THEN REPLY #4638 /* ~"Mmph... mmm. Ich... verstehe."~ */ JOURNAL #64531 /* ~Dafür, daß ich ihm Nadel, Faden und Balsamierungsöl gebracht habe, hat Vaxis mich als Zombie verkleidet. Er hat mich gewarnt, daß ich die Verkleidung verrate, wenn ich renne, und daß ich nicht mit anderen reden soll, während ich die Verkleidung trage, weil Zombies nicht "reden".~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #4639 /* ~Er runzelt die Stirn. "Mverkleigung mbald kaputt... Mbalsamieröl trocknet aus, Stiche gehen uf." Er zuckt die Achseln. "Mwuhrscheinlich hulten nicht ußerhalb Mleichenhulle. Uhnd nicht laufen! Duu laufen, du gunze Vör-kloidung ruinieren."

^NHINWEIS: Durch Laufen wird deine Zombie-Verkleidung sofort aufgehoben. Falls du "Immer rennen" eingeschaltet hast, denke unbedingt daran, es auszuschalten, wenn du deine Verkleidung beibehalten willst, nachdem du mit Vaxis geredet hast.^-~ */
  IF ~~ THEN REPLY #4640 /* ~Nicke noch einmal und geh dann.~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #4641 /* ~Der 'Zombie' runzelt die Stirn. "Mdu mkommst mir mbekannt vor. Mkennen wir uns?"~ */
  IF ~~ THEN REPLY #4642 /* ~"Kann schon sein. Wo willst du mich denn gesehen haben?"~ */ EXIT
  IF ~~ THEN REPLY #4643 /* ~X.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 23.0 23.2 71.0 71.1
  SAY #4644 /* ~Zu deiner Überraschung wendet sich der Zombie von dir ab... er beginnt, ängstlich um sich zu blicken.~ */
  IF ~~ THEN REPLY #4645 /* ~"Du willst nicht reden? Dann wirst du gleich schreien."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4646 /* ~"Ist ja schon gut. Hast du gesehen, was die Staubmenschen gemacht haben?"~ */ GOTO 29
  IF ~~ THEN REPLY #4647 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4648 /* ~"Dann vergiß es einfach. Leb wohl, *Zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #4649 /* ~Der Zombie schaut euch beide ängstlich an. Er ist noch immer stumm... aber irgendetwas in seinem Ausdruck scheint zu bestätigen, daß Morte recht hatte.~ */
  IF ~~ THEN REPLY #4650 /* ~"Soso, die Anarchisten. Für die sperrst du hier also die Augen auf?"~ */ GOTO 70
  IF ~~ THEN REPLY #4651 /* ~"Es wird SEHR viel weniger schmerzvoll sein, wenn du mir jetzt sagst, warum die Anarchisten dich hier zum Spitzeln hergeschickt haben."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #4652 /* ~"Ist ja schon gut. Hast du gesehen, was die Staubmenschen gemacht haben?"~ */ GOTO 29
  IF ~~ THEN REPLY #4653 /* ~"Da ist noch was, was ich wissen wollte..."~ */ GOTO 43
  IF ~~ THEN REPLY #4654 /* ~"Dann vergiß es einfach. Leb wohl, *Zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 30.2
  SAY #4655 /* ~Der Zombie macht einen enttäuschten Eindruck, aber er zuckt mit den Achseln und beginnt, in seinem fleckigen Umhang herumzukramen. "Mruhig, Stubies mruhig, nix Neues seit letztm Rupport." Kurz darauf überreicht er dir ein paar Sachen und brummt. "Hiiierr." Den Geruch nach muß er die Dinger so versteckt haben, daß sie bei einer Durchsuchung niemand gefunden hätte. "Ich mgehe bbbald."~ */
  IF ~  Global("Vaxis_Help","GLOBAL",0)
~ THEN REPLY #4656 /* ~"Gehen? Wie?"~ */ GOTO 51
  IF ~  Global("Vaxis_Help","GLOBAL",1)
~ THEN REPLY #64532 /* ~"Also gut. Leb wohl, Vaxis."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #4658 /* ~Der Zombie brummt. "Mportul istn Bugen - Urdgeschusss, mnordöstlichr Rum, mbruchst Fingerknochen von Skelett zum Ufmachen." Er nickt. "Mviel Glück."~ */
  IF ~~ THEN REPLY #4659 /* ~"Äh... na gut."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 34.0
  SAY #4660 /* ~Der Zombie kneift die Augen zusammen und zischt dich an. "Mdu WILLST mich ins Totenbuch stecken? Ich Freunde, hier versteckt, mdu *niemndn.* Mwenn mdu mir ein Mhaar krümmst, mtöten DICH meine Mfreunde."~ */
  IF ~~ THEN REPLY #4661 /* ~"Das war deine letzte Chance. Bereite dich schon mal auf den Tod vor."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4662 /* ~"Dann schmor in der Hölle. Ich gehe. Und du, nimm dich in acht... *Zombie*!"~ */ GOTO 4
END

IF ~~ THEN BEGIN 75 // from: 31.4 32.3 35.4
  SAY #4663 /* ~Einen Moment lang wirkt er ängstlich. Dann begutachtet er deine Statur und grinst spöttisch über das ganze Gesicht. "MDUUU MICH ins Totenbuch stecken? Ich Freunde, hier versteckt. Mdu *niemndn.* Mwenn mdu mir ein Mhaar krümmst, mtöten DICH meine Mfreunde."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4664 /* ~"Wie wär's, wenn ich deine Verkleidung an die Wache verraten würde?"~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4665 /* ~"Wie wär's, wenn ich deine Verkleidung an die Wache verraten würde?"~ */ GOTO 76
  IF ~~ THEN REPLY #4666 /* ~"Ich werd's wagen. Bereite dich schon mal auf den Tod vor."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4667 /* ~"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht... *Zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #4668 /* ~Der Zombie kneift die Augen zusammen und zischt dich an. "Mdu erzählst mir Mdunkel, ich erzähl *mdir* Mdunkel. Ich Freunde, hier versteckt, mdu *niemndn.* Mdu solltest nicht hier sein. Mdich töten Stuubies, ich mach mich us dem Stub."~ */
  IF ~~ THEN REPLY #4669 /* ~"Das war deine letzte Chance, Leiche. Bereite dich schon mal auf den Tod vor."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4670 /* ~"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht... *Zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 77 // from: 51.0
  SAY #64523 /* ~Er zuckt die Schultern. "Muß wohl einer in der Nähe sein, irgendwo. Sieh mal in den Lagerräumen im Obergeschoß nach. Vielleicht dort."~ */
  IF ~~ THEN REPLY #64524 /* ~"Okay. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 43
  IF ~~ THEN REPLY #64525 /* ~"In Ordnung. Ich werde oben nach diesem krummen Fingerknochen suchen, und dann gehe ich ins Erdgeschoß, zu einem der Bögen im nordwestlichen Zimmer. Verstanden."~ */ EXIT
END
