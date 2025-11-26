// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~BNORDOM~

IF ~  LastPersonTalkedTo("Morte")
Global("Nordom_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31490 /* ~"Pozor: Morte. Věděl jsi, že mám šest stran?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #63630 /* ~"Mám otázku, Morte... Jak vlastně dokážeš zůstat ve vzduchu?"~ [NOR286A] */
  IF ~~ THEN EXTERN ~DMORTE~ 624
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63631 /* ~"Ještě si to nechám projít hlavou."~ [NOR286B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",3)
InParty("Dakkon")
~ THEN BEGIN 3 // from:
  SAY #63632 /* ~"Dak'konovo mlčení může být mnohem výřečnější, než samotná slova."~ [NOR287] */
  IF ~~ THEN EXTERN ~DMORTE~ 625
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",4)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 4 // from:
  SAY #63633 /* ~"Morte, můžeš mi ještě jednou vysvětlit proč bys tu Annah 'nejradši pokousal'? Nemělo by to za následek boj?"~ [NOR288] */
  IF ~~ THEN EXTERN ~DMORTE~ 626
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",5)
InParty("Annah")
~ THEN BEGIN 5 // from:
  SAY #63634 /* ~"Pozor: Morte. Mám otázku. Máš nějaký osud? Nějaký cíl?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 627
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63635 /* ~"Potvrzeno."~ [NOR313B] */
  IF ~~ THEN EXTERN ~DMORTE~ 628
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 7 // from:
  SAY #63636 /* ~"Pozor: Morte. Věděl jsi, že mám osmnáct bodů artikulace?"~ [NOR312] */
  IF ~~ THEN EXTERN ~DMORTE~ 629
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 8 // from:
  SAY #63637 /* ~"Pozor: Morte. Mám otázku. Mám svobodnou vůli?"~ [NOR317A] */
  IF ~~ THEN EXTERN ~DMORTE~ 630
END

IF ~~ THEN BEGIN 9 // from:
  SAY #63638 /* ~"Svobodná vůle asi pro modrona nanabývá žádného významu."~ [NOR317B] */
  IF ~~ THEN EXTERN ~DMORTE~ 631
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 10 // from:
  SAY #63639 /* ~"Pozor: Morte. Mám otázku. Máš nějaký osud? Nějaký cíl?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 632
END

IF ~~ THEN BEGIN 11 // from:
  SAY #63640 /* ~"Zavrženo."~ [NOR310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 633
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",9)
InParty("Grace")
InParty("Annah")
~ THEN BEGIN 12 // from:
  SAY #63641 /* ~"Pozor: Morte. Mám otázku. Co je to pravidlo tří?"~ [NOR319A] */
  IF ~~ THEN EXTERN ~DMORTE~ 634
END

IF ~~ THEN BEGIN 13 // from:
  SAY #63642 /* ~"To odporuje několika předchozím definicím."~ [NOR319B] */
  IF ~~ THEN EXTERN ~DMORTE~ 635
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",10)
InParty("Annah")
~ THEN BEGIN 14 // from:
  SAY #63643 /* ~"Pozor: Morte. Má otázku. Co je to zkáza?"~ [NOR321A] */
  IF ~~ THEN EXTERN ~DMORTE~ 636
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63644 /* ~"Srozuměno."~ [NOR321B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",10)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",11)
~ THEN BEGIN 16 // from:
  SAY #63645 /* ~"Morte, je pravda, že-"~ [NOR289A] */
  IF ~~ THEN EXTERN ~DMORTE~ 637
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63646 /* ~"Shledal jsem tě napříjemným."~ [NOR289B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",11)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",12)
~ THEN BEGIN 18 // from:
  SAY #63647 /* ~"Pozor: Morte. Chci si promluvit o tvém tělě."~ [NOR324A] */
  IF ~~ THEN EXTERN ~DMORTE~ 638
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63648 /* ~"Mám otázku ohledně místa pobytu tvého těla. Kde je?"~ [NOR324B] */
  IF ~~ THEN EXTERN ~DMORTE~ 639
END

IF ~~ THEN BEGIN 20 // from:
  SAY #63649 /* ~"Jak se může hlava oddělit od těla, aniž by o tom věděla?"~ [NOR324C] */
  IF ~~ THEN EXTERN ~DMORTE~ 640
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
InParty("Grace")
NearbyDialog("DGRACE")
InParty("Annah")
~ THEN BEGIN 21 // from:
  SAY #63650 /* ~"Pozor: Morte. Už jsme dosáhli statutu mírumilovného přátelství?"~ [NOR323] */
  IF ~~ THEN EXTERN ~DMORTE~ 641
END

IF ~  LastPersonTalkedTo("Annah")
Global("Nordom_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #63651 /* ~"Annah, pomáhá ti ocas udržovat rovnováhu?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END

IF ~~ THEN BEGIN 23 // from:
  SAY #63652 /* ~"To je vcelku logické."~ [NOR291B] */
  IF ~~ THEN EXTERN ~DANNAH~ 311
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #63653 /* ~"Annah, slouží tvůj ocas k vyjádření momentálního stavu nepříčetnosti?"~ [NOR292A] */
  IF ~~ THEN EXTERN ~DANNAH~ 312
END

IF ~~ THEN BEGIN 25 // from:
  SAY #63654 /* ~"Mé analízy byly správné: Nebezpečí! Nepezpečí!"~ [NOR292B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMorte")
~ THEN BEGIN 26 // from:
  SAY #63655 /* ~"Annah, je pravda, že jsi nakopla Morteho?"~ [NOR293] */
  IF ~~ THEN EXTERN ~DANNAH~ 313
END

IF ~  LastPersonTalkedTo("Grace")
Global("Nordom_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 27 // from:
  SAY #63656 /* ~"Shledal jsem Fall-From-Grace atraktivní pro více než 321423 různých forem mužského života. Plus mínus pět."~ [NOR290A] */
  IF ~~ THEN EXTERN ~DGRACE~ 374
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63657 /* ~"Tuto otázku bohužel nedovedu zodpovědět. Nevím."~ [NOR290B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",2)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 29 // from:
  SAY #63658 /* ~"Fall-From-Grace, je pravda, že 'každá ženská ví, že lítací lebka je horký zboží?'"~ [NOR294] */
  IF ~~ THEN EXTERN ~DGRACE~ 375
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 30 // from:
  SAY #63659 /* ~"Pozor: Fall-From-Grace. Vyzařuješ optickou přitažlivost?"~ [NOR325A] */
  IF ~~ THEN EXTERN ~DGRACE~ 376
END

IF ~~ THEN BEGIN 31 // from:
  SAY #63660 /* ~"Mám teorii, že vyzařuješ statické pole, které přitahuje oči všech nablízku. Nedokáží se od tebe odtrhnout."~ [NOR325B] */
  IF ~~ THEN EXTERN ~DMORTE~ 645
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 32 // from:
  SAY #63661 /* ~"Pozor: Fall-From-Grace. Chci si popovídat o tvém těle."~ [NOR326A] */
  IF ~~ THEN EXTERN ~DGRACE~ 377
END

IF ~~ THEN BEGIN 33 // from:
  SAY #63662 /* ~"Tvém tělě. Tvou formou. Tvůj důvod, proč sis vybrala zrovna toto?"~ [NOR326B] */
  IF ~~ THEN EXTERN ~DGRACE~ 378
END

IF ~~ THEN BEGIN 34 // from:
  SAY #63663 /* ~"Pro tebe by bylo praktičtější zvolit formu modrona. Je o 13.27% efektivnější. Plus mínus 5.2%."~ [NOR326C] */
  IF ~~ THEN EXTERN ~DGRACE~ 379
END

IF ~~ THEN BEGIN 35 // from:
  SAY #63664 /* ~"Nic takového není mým záměrem."~ [NOR326D] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Vhail")
Global("Nordom_Talked_Vhail","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #63665 /* ~"Slyšel jsem, že Spravedlnost je slepá. Kvůli tomu existují Nemilosrdní?"~ [NOR295] */
  IF ~~ THEN EXTERN ~DVHAIL~ 157
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
~ THEN BEGIN 37 // from:
  SAY #64219 /* ~"Pozornost: Morte. Věděl jsi, že mám šest stran?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 38 // from:
  SAY #64220 /* ~"Annah, pomáhá ti tvůj ocas v udržování rovnováhy?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END
