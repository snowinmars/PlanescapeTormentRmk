// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1857 /* ~Die Frau rempelt dich an, geht dann einen Schritt zurück und schaut mit einem halben Lächeln zu dir auf. Sie riecht wie eine Schnapsbrennerei.~ */
  IF ~~ THEN REPLY #1893 /* ~"Ähh... Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #1894 /* ~"Paß auf, wo du hintrittst, Frau!"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1895 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1896 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1897 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #1898 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61582 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1858 /* ~"Hall-*oooo*..." Sie winkt dir zu und beginnt dann zu kichern. "Hall-ooo, großer Schleifer..." Sie fängt wieder an zu lachen.~ */
  IF ~~ THEN REPLY #7486 /* ~"Alles in Ordnung?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7487 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7488 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7489 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7490 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61583 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1859 /* ~Sie blinzelt dich an, stemmt ihre Hände in die Hüften und beugt sich soweit nach vorn, daß dir ihre weiblichen Reize geradezu ins Auge springen. "Das *gefällt* dir, nicht wahr, Schleifer?! Na?" Sie versucht erfolglos ein Kichern zu unterdrücken und fängt wieder an zu lachen. "Du siehst aus, wie einer, der ein paar Streicheleinheiten vertragen könnte!" Zur Bekräftigung stupst sie dir mit dem Finger auf die Brust.~ */
  IF ~~ THEN REPLY #7491 /* ~"Soll das 'ne Einladung sein?"~ */ GOTO 3
  IF ~~ THEN REPLY #7492 /* ~"Ja klar. Sieh mal, vielleicht kannst du mir helfen... Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7493 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7494 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7495 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7496 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61584 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1860 /* ~Sie wirft dir einen gespielt strengen Blick zu. "Das läßt sich einrichten, wenn du mir das richtige Angebot machst." Sie schmiegt sich an dich. "Was hast du zu bieten?"~ */
  IF ~~ THEN REPLY #7497 /* ~"Nein danke. Ich hätte da aber noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #7498 /* ~"Nein danke."~ */ GOTO 4
  IF ~~ THEN REPLY #7499 /* ~"Keine Ursache."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7500 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7501 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7502 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7503 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61585 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #1861 /* ~Sie zieht einen Flunsch. "Ich wünsch dir die Pocken an den Hals! Ne bessere als mich findest du doch nicht, so wie du aussiehst."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7504 /* ~"Auf bald."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7505 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7506 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7507 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61586 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #1862 /* ~"Also gut." Sie schaut dich von oben bis unten an und scheint ein wenig nüchterner zu werden. "Äh... nein, nein... ich glaube, du bist mir eine Nummer zu groß."~ */
  IF ~~ THEN REPLY #7508 /* ~"Also gut. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7509 /* ~"Ich verstehe... Na dann leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7510 /* ~"Ich verstehe... Na dann leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7511 /* ~"Ich verstehe... Na dann leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7512 /* ~"Ich verstehe... Na dann leb wohl."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61587 /* ~"Ich verstehe... Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.0 5.0
  SAY #1863 /* ~"Oh, du glaubst also, daß *ich* *dir* helfen kann?! Tja, du verlangst ja ganz schön viel! Soviel Schmeichelei haut mich glatt um!" Sie lächelt.~ */
  IF ~~ THEN REPLY #7513 /* ~"Kannst du mir was über diese Stadt erzählen?"~ */ GOTO 7
  IF ~~ THEN REPLY #7514 /* ~"Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7515 /* ~"Ich suche nach einem Journal. Hast du es zufällig gesehen?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7516 /* ~"Ich suche jemanden namens Pharod. Weißt du, wo ich ihn finden könnte?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7517 /* ~"Egal. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7518 /* ~"Egal. Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7519 /* ~"Egal. Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7520 /* ~"Egal. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61588 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3 9.0 9.3
  SAY #1864 /* ~"Ja!" Ihr entfährt ein trunkenes Lachen.~ */
  IF ~~ THEN REPLY #7521 /* ~"Ja, was?"~ */ GOTO 9
  IF ~~ THEN REPLY #7522 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7523 /* ~"Vergiß es. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7524 /* ~"Vergiß es. Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7525 /* ~"Vergiß es. Leb wohl."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7526 /* ~"Vergiß es. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61589 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 9.1 9.2
  SAY #1865 /* ~"Neiiin!" Das Wort scheint sie zu erheitern, und sie stupst dir zur Bekräftigung mit dem Finger auf die Brust. "Nein! Nein!"~ */
  IF ~~ THEN REPLY #7527 /* ~"Ähh... Ich hätte noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7528 /* ~"Vergiß es."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7529 /* ~"Na, vergiß es."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7530 /* ~"Vergiß es."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7531 /* ~"Na, egal. Vergiß es."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61590 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 8.0
  SAY #1866 /* ~"Jaaaa?" Sie blinzelt dich an. "Was ist?"~ */
  IF ~~ THEN REPLY #7532 /* ~"Kannst du mir was über diese Stadt erzählen?"~ */ GOTO 7
  IF ~~ THEN REPLY #7533 /* ~"Kannst du mir etwas über diese Gegend erzählen?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7534 /* ~"Ich suche nach einem Journal. Hast du es zufällig gesehen?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7535 /* ~"Ich suche jemanden namens Pharod. Weißt du, wo ich ihn finden könnte?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7536 /* ~"Macht nichts. Auf bald."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7537 /* ~"Macht nichts. Auf bald."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7538 /* ~"Macht nichts. Auf bald."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7539 /* ~"Macht nichts. Auf bald."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61591 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.3 1.2 2.3 3.4 4.1 5.2 6.5 7.3 8.2 9.5
  SAY #1867 /* ~Du bist schon im Begriff zu gehen, als du plötzlich innehältst. Du hast auf einmal das Gefühl, daß hier irgend etwas *faul* ist... dir dämmert langsam, daß diese Frau ihre Trunkenheit nur vortäuscht. Du schaust sie dir genauer an und siehst, wie die Hure etwas in ihren Ärmelaufschlag steckt... es sieht aus wie etwas, das dir gehört.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7540 /* ~Greif nach ihrer Hand.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7541 /* ~Greif nach ihrer Hand.~ */ GOTO 11
  IF ~~ THEN REPLY #7542 /* ~"Hey! Was machst du denn da?"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7543 /* ~Gib der Frau noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie sie dabei vorgeht.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7545 /* ~Gib der Frau noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie sie dabei vorgeht.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7546 /* ~Gib der Frau noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie sie dabei vorgeht.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7547 /* ~Greif sie an.~ */ DO ~Help()
~ EXIT
  IF ~~ THEN REPLY #7548 /* ~Ignoriere den Zwischenfall, geh einfach.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 16.1 17.1
  SAY #1868 /* ~Deine Hand schnellt nach vorn und greift mit aller Kraft ihr Handgelenk. Sie ist plötzlich wieder nüchtern, versucht verzweifelt, sich loszuwinden und fängt an, lauthals zu schreien.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7549 /* ~Ruhig: "Hör auf zu schreien, oder ich nehm dir die Lungen raus."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7550 /* ~"Sei still! Verdammt, Frau, halt' die Klappe!"
~ */ GOTO 14
  IF ~~ THEN REPLY #7551 /* ~Dreh ihr mit deiner freien Hand den Hals um.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7552 /* ~Laß sie los.~ */ DO ~Help()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 16.0 17.0
  SAY #1869 /* ~Bevor du zupacken kannst, zieht sie ihre Hand zurück. Sie ist plötzlich wieder nüchtern und fängt, an lauthals zu schreien.~ */
  IF ~~ THEN REPLY #7553 /* ~"In Ordnung..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 16.2 17.2
  SAY #1870 /* ~Sie ist plötzlich wieder nüchtern und fängt an, lauthals zu schreien.~ */
  IF ~~ THEN REPLY #7554 /* ~"In Ordnung..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #1871 /* ~Sie versucht noch immer, sich loszuwinden und schreit dabei um Hilfe. Du kannst kaum glauben, wie laut diese Frau schreien kann... deine Ohren klingen schon.~ */
  IF ~~ THEN REPLY #7555 /* ~Greif sie an.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7556 /* ~Dreh ihr mit deiner freien Hand den Hals um.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7557 /* ~Laß sie los.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #1872 /* ~Sie versucht noch immer, sich loszuwinden und schreit dabei um Hilfe. Du kannst kaum glauben, wie laut diese Frau schreien kann... deine Ohren sind schon fast taub.~ */
  IF ~~ THEN REPLY #7558 /* ~Greif sie an.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7559 /* ~Dreh ihr mit deiner freien Hand den Hals um.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7560 /* ~Laß sie los.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.4 1.3 2.4 3.5 4.2 5.3 6.6 7.4 8.3 9.6
  SAY #1873 /* ~Vielleicht ist es dein eigenes Talent zum Taschendieb, das dich wachsam sein läßt, denn als du gehen willst, prüfst du instinktiv deine Geldbörse... und bemerkst, wie die Hure ihre Hand von ihr zurückzieht. Sie scheint allerdings nicht bemerkt zu haben, daß du sie beobachtet hast.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7561 /* ~Greif nach ihrer Hand.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7562 /* ~Greif nach ihrer Hand.~ */ GOTO 11
  IF ~~ THEN REPLY #7563 /* ~"Hey! Was machst du denn da?"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7564 /* ~Gib der Frau noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie sie dabei vorgeht.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7566 /* ~Gib der Frau noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie sie dabei vorgeht.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7567 /* ~Gib der Frau noch einmal Gelegenheit, dir etwas zu stehlen, und beobachte, wie sie dabei vorgeht.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7568 /* ~Greif sie an.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7569 /* ~Ignoriere den Zwischenfall und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.3 10.4 10.5 16.3 16.4 16.5
  SAY #1874 /* ~Du lehnst dich an sie, lachst mit ihr und beobachtest, wie ihre Hand sich wieder deiner Geldbörse nähert... ihre Technik scheint darin zu bestehen, ihr Opfer mit ihrem betrunkenen Geplapper (und ihrer Oberweite) abzulenken, während sie ihm die Münzen aus der Geldbörse fingert. Die Ärmelaufschläge scheinen absichtlich lang und geräumig zu sein, damit sie die gestohlenen Gegenstände schnell darin verstecken kann. Du prägst dir ihre Technik ein... als ihre Hand erneut nach deiner Geldbörse greift.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7571 /* ~Greif nach ihrer Hand.
~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7572 /* ~Greif nach ihrer Hand.~ */ GOTO 11
  IF ~~ THEN REPLY #7573 /* ~"Hey! Was machst du denn da?"~ */ GOTO 13
  IF ~~ THEN REPLY #7574 /* ~Greif sie an.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7575 /* ~Ignoriere den Zwischenfall, geh einfach.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #1875 /* ~In deiner Stimme muß *irgend etwas* mitschwingen, denn sie hält plötzlich inne und schaut dich mit großen, verängstigten Augen an.
~ */
  IF ~~ THEN REPLY #7576 /* ~"Gib zurück, was du mir gestohlen hast. Sofort."~ */ DO ~GivePartyGold(100)
~ GOTO 19
  IF ~~ THEN REPLY #7577 /* ~Dreh ihr mit deiner freien Hand den Hals um.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7578 /* ~Laß sie los und geh dann.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1876 /* ~Sie nickt. Sie schiebt ihre langen, weiten Ärmelaufschläge zurück und es kommt ein kleiner, gepolsterter Beutel zum Vorschein, der an ihrem Handgelenk hängt. Es scheint, als könne sie Münzen in ihrer Hand verschwinden lassen und dann in den Beutel befördern, dessen Polsterung das Klimpern der Münzen dämpft. Wortlos gibt sie dir den Beutel... er ist mit einigen Dutzend einfacher Kupfermünzen gefüllt.~ */
  IF ~~ THEN REPLY #7579 /* ~"Wir sind quitt. Und jetzt will ich dich nie wiedersehen. Verstanden?"
~ */ GOTO 22
  IF ~~ THEN REPLY #7580 /* ~Täuschung: "Gib mir alles, was du sonst noch hast, und ich lasse dich am Leben."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_1","GLOBALLaw",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7581 /* ~Wahrheit: "Gib mir alles, was du sonst noch hast, und ich lasse dich am Leben."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7582 /* ~Nicke ihr zum Dank zu, und dreh ihr dann mit deiner freien Hand den Hals um.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7583 /* ~Laß sie los und geh dann.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #1877 /* ~Sie greift nach ihrem Strumpfband und holt einen weiteren Beutel hervor, den sie dir gibt. Er ist mit einfachen Kupfermünzen gefüllt, die du in deine Geldbörse schüttest.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7584 /* ~"Ich meinte *alles*, also gib mir auch *alles*."~ */ DO ~GiveItemCreate("Ear01",Protagonist,1,0,0)
GiveItem("Knife",Protagonist)
GiveItem("Stiletto",Protagonist)
~ GOTO 21
  IF ~~ THEN REPLY #7585 /* ~"Komm mir nie wieder unter die Augen. Verstanden?"~ */ GOTO 22
  IF ~~ THEN REPLY #7586 /* ~Nicke ihr zum Dank zu, und dreh ihr dann mit deiner freien Hand den Hals um.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7587 /* ~Laß sie los und geh dann.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1878 /* ~Sie langt nach unten in einen ihrer Stiefel und holt einen seltsamen, schlanken Dolch hervor, den sie dir mit dem Griff zuerst reicht. Dann langt sie in ihren anderen Stiefel und holt *noch einen* Dolch hervor (der mit seiner breiten Klinge noch gefährlicher aussieht) und reicht ihn dir ebenfalls mit dem Griff zuerst. Anschließend wirft sie ihren Kopf nach hinten, so daß ein kleiner Ohrring sichtbar wird, der vorher von ihrem Haar verdeckt wurde. Sie nimmt ihn ab und gibt ihn dir. ~ */
  IF ~~ THEN REPLY #7588 /* ~"Okay, okay. Und jetzt will ich dich nie wiedersehen. Verstanden?"~ */ GOTO 22
  IF ~~ THEN REPLY #7589 /* ~Nicke ihr zum Dank zu, und dreh ihr dann mit deiner freien Hand den Hals um.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7590 /* ~Laß sie los und geh dann.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 20.1 21.0
  SAY #1879 /* ~Sie nickt.~ */
  IF ~~ THEN REPLY #7591 /* ~Dreh ihr mit deiner freien Hand den Hals um.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7592 /* ~Laß sie los und geh dann.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 11.2 14.1 15.1 18.1 19.3 20.2 21.1 22.0
  SAY #1880 /* ~Ihre Augen weiten sich, als du deine Hand um ihren Hals legst, und sie versucht verzweifelt, deine Finger zu lösen... bevor sie sich befreien kann, ertönt ein *Knacken* und ihre Gegenwehr erlischt.~ */
  IF ~  Global("Choke_Dustman","GLOBAL",0)
Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #7593 /* ~Laß sie fallen.~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 25
  IF ~  GlobalGT("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #7594 /* ~Laß sie fallen.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 24
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #32766 /* ~Laß sie fallen.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #1881 /* ~Du läßt sie los und sie fällt zu Boden. Sie war viel leichter umzubringen als die Staubmenschen. Ein seltsames Schaudern überkommt dich, als du ihre Leiche betrachtest... du *weißt*, daß du schon andere auf diese Weise getötet hast. Du versuchst verzweifelt, diese Erinnerung wachzurufen, aber sie bleibt in deinem Unterbewußtsein verborgen.~ */
  IF ~~ THEN REPLY #7595 /* ~Verschwinde.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #1882 /* ~Du läßt sie los, und sie sinkt zu Boden. Du verspürst ein seltsames Zittern, als du ihren gebrochenen Körper betrachtest... Du *weißt*, daß du so schon andere getötet hast. Mit diesem Gedanken regt sich eine vage Erinnerung, aber sie ist nicht stark genug, um an die Oberfläche zu gelangen.~ */
  IF ~~ THEN REPLY #7596 /* ~Verschwinde.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #106497 /* ~Die Frau nickt und rennt eilig weg. Du erwartest nicht, dass du sie wiedersehen wirst.~ */
  IF ~~ THEN REPLY #7596 /* ~Verschwinde.~ */ DO ~Enemy()
GivePartyGold(100)
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #106497 /* ~Die Frau nickt und rennt eilig weg. Du erwartest nicht, dass du sie wiedersehen wirst.~ */
  IF ~~ THEN REPLY #7596 /* ~Verschwinde.~ */ DO ~Enemy()
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END
