// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANIZIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANIZIUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #59314 /* ~Githyanki se na tebe krutě zadívá a nic neříká. Když se pokusíš k němu hovořit, plivne na zem a odvrátí se od tebe.~ */
  IF ~~ THEN REPLY #59317 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("Ddakkon")
~ THEN BEGIN 1 // from:
  SAY #59321 /* ~Vidíš Githyankiho s nažloutlou kůží, úzkou tváří a ostrým pohledem, jdoucího rozvážným krokem. Skoro cítíš jeho hněv. Když ses přiblížil, vzhlédl k tobě. "Co chceš?" zavrčel.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59323 /* ~"Přítel mi řekl, že jsi potřeboval pomoc."~ */ GOTO 11
  IF ~~ THEN REPLY #59327 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #59328 /* ~"Co mi můžeš povědět o Curstu?"~ */ GOTO 3
  IF ~~ THEN REPLY #59329 /* ~"Slyšel jsi něco o dévovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #59331 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.2 18.1 25.1
  SAY #59334 /* ~"Jsem An'izius, a ty bys mne měl nazývat Vaše Ctihodnosti. Jsem jeden z městských představitelů a tu ctihodnost jsem si zasloužil." Podívá se na tebe z blízka. "Sem nepatříš. Co chceš?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59335 /* ~"Přítel mi řekl, že bys potřeboval pomoc."~ */ GOTO 11
  IF ~~ THEN REPLY #59338 /* ~"Hledám dévu."~ */ GOTO 4
  IF ~~ THEN REPLY #59339 /* ~"Hledám něco, co jsem ztratil."~ */ GOTO 5
  IF ~~ THEN REPLY #59341 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 18.2 25.2
  SAY #59345 /* ~Ironicky se zasměje. "Zeptej se někoho, kdo má čas. Mám na starosti důležitější věci."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59346 /* ~"Přítel mi řekl, že bys potřeboval pomoc."~ */ GOTO 11
  IF ~~ THEN REPLY #59350 /* ~"Jiné věci na starosti?"~ */ GOTO 6
  IF ~~ THEN REPLY #59352 /* ~"Kdo vlastně jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #59354 /* ~"Hledám dévu."~ */ GOTO 4
  IF ~~ THEN REPLY #59356 /* ~"Budu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.1 3.3 18.3 25.3
  SAY #59401 /* ~Jeho oči se zúží. "Dévu? Co bys s ním dělal a proč jej hledáš v Curstu?"~ */
  IF ~~ THEN REPLY #59410 /* ~"Věřím, že obsahuje tajemství mé smrtelnosti."~ */ GOTO 7
  IF ~~ THEN REPLY #59411 /* ~"Slyšel jsem, že jedno je tady. Nevíš o tom něco?"~ */ GOTO 8
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59413 /* ~"Zapomeň na to. Přítel mi řekl, že potřebuješ pomoc."~ */ GOTO 11
  IF ~~ THEN REPLY #59415 /* ~"Zapomeň na to. Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #59417 /* ~"Co by to mělo být? Jako předák města ti možná pomůžu."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59418 /* ~"Jsi předák města, možná potřebuješ *mne*. Přítel mi řekl, že potřebuješ pomoc."~ */ GOTO 11
  IF ~~ THEN REPLY #59419 /* ~"Ztratil jsem svou smrtelnost. Potřebuji ji zpět."~ */ GOTO 7
  IF ~~ THEN REPLY #59420 /* ~"Nic důležitého. To zvládnu sám."~ */ GOTO 9
  IF ~~ THEN REPLY #59421 /* ~"Nic důležitého. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 8.0
  SAY #59422 /* ~Pozorně si tě prohlíží; zdá se, že tě ve své mysli pečlivě zkoumá a soudí: "Nic, k čemu bys mohl přispět. Nyní odstup. Musím uvažovat."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59423 /* ~"Přítel mi řekl, že potřebuješ pomoc."~ */ GOTO 11
  IF ~~ THEN REPLY #59424 /* ~"Tedy dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.1
  SAY #59427 /* ~Dívá se na tebe, jako bys překročil hranici šílenství. "Spíš ty bys potřeboval pomoc. Sbohem." Pomalu se odvrátí.~ */
  IF ~~ THEN REPLY #59431 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #59434 /* ~"Ne to, co bych myslel." Stále se na tebe dívá. "Když mne omluvíš, mám ještě nějaké vyřizování."~ */
  IF ~~ THEN REPLY #59436 /* ~"Nějaké vyřizování?"~ */ GOTO 6
  IF ~~ THEN REPLY #59438 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #59441 /* ~"Tak proč rušíš mé myšlenky? Měl bych ti nechat nasadit klepeta! Běž!" Odvrátí se od tebe.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59444 /* ~"Přítel mi řekl, že bys potřeboval pomoc."~ */ GOTO 11
  IF ~~ THEN REPLY #59448 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #59451 /* ~"Výborně. Měl bys najít to, co hledáš, když budeš za katrem pod hluboko pod Curstem. Stráže!" Okolo tebe se zhmotní stráže a do hlavy ti břinkne ostrý úder zezadu. Vše upadá do temnoty...~ */
  IF ~~ THEN REPLY #59454 /* ~"Prokletí..."~ */ DO ~FadeToColor([20.0],0)
SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 4.2 5.0 6.0 9.0 18.0 25.0
  SAY #59460 /* ~Jeho horlivost se zdvojnásobí. "Co jsi slyšel?"~ */
  IF ~~ THEN REPLY #59462 /* ~"Jen to, že máš problémy s politickým nepřítelem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #59464 /* ~Jeho oči se rozšíří na zlomek sekundy a zase se stáhnou. "Rozumím. A ty mi chceš pomoci?"~ */
  IF ~~ THEN REPLY #59468 /* ~"Záleží na tom, co po mně chceš."~ */ GOTO 14
  IF ~~ THEN REPLY #59471 /* ~"Ano."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59473 /* ~"Ne."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.1
  SAY #59485 /* ~"Pak už tě k ničemu nemůžu potřebovat. Ztrať se!" Pošle tě pryč mávnutím zápěstí a nadále tě ignoruje.~ */
  IF ~~ THEN REPLY #59486 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #59490 /* ~"Je to delikátní záležitost. Rival potřebuje vzdělání. Nemusíš ji zabít, pokud se ti z toho dělá zle."~ */
  IF ~~ THEN REPLY #59493 /* ~"Já to tedy udělám."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59496 /* ~"Zapomeň."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0 19.0
  SAY #59499 /* ~"Tohle musíš udělat: Jistá žena, Siabha.. podrývala mou autoritu s Burgherem z tohoto města. Přeji si, abys ji pokořil. Vše co musíš udělat, je říci kapitánovi stráží, že se tě pokusila najmout, abys na mne zaútočil, a budeš dobře odměněn. Jestli do toho jdeš, můžeš ji najít blízko budovy administrace."~ */
  IF ~~ THEN REPLY #59502 /* ~"No, vrátím se."~ */ JOURNAL #59505 /* ~An'Izius, úředník města Curstu, mě požádal, abych ponížil jeho politického nepřítele tím, že budu lhát kapitánu stráží. Tím nepřítelem je Siabha. Může se nacházet někde poblíž správních budov Vnitřního Curstu.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("Ddakkon")
~ THEN BEGIN 16 // from:
  SAY #59515 /* ~Je to githyanki žluté kůže, tenké tváře a oči střední velikosti, pochoduje velmi rozvážně. Můžeš takřka cítit jeho hněv. Jak se přiblížíš, zvedne oči. Zavrčí na tebe "Co chceš?"~ */
  IF ~~ THEN REPLY #59516 /* ~"Mám na tebe několik málo otázek..."~ */ EXTERN ~DDAKKON~ 357
END

IF ~~ THEN BEGIN 17 // from:
  SAY #59519 /* ~Zúží své oči. "Odhodím všechnu nenávist, kterou jsem měl proti tvým lidem. Budu tolerantní vůči našim dvěma rasám. Chtějí mě poslat do vyhnanství - a v mém srdci jsem prostě sužovaný. Cítíš to taky tak?"~ */
  IF ~~ THEN REPLY #59526 /* ~"No dobře - hele, nechte to plavat. Já mám pár otázek."~ */ GOTO 18
  IF ~~ THEN REPLY #59527 /* ~"Zapomeň na to. My odcházíme."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #59530 /* ~"Co jsou vlastně zač?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59533 /* ~"Přítel mi řekl, že potřebujete pomoc."~ */ GOTO 11
  IF ~~ THEN REPLY #59537 /* ~"Kdo vlastně jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #59540 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 3
  IF ~~ THEN REPLY #59542 /* ~"Slyšeli jste tady něco o dévovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #59544 /* ~"Ale nic. Zapomeň na to."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("C_Off","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #59547 /* ~"Co chceš, pse?"~ */
  IF ~~ THEN REPLY #59549 /* ~"Změnil jsem názor. Mohu pomoci. Copak potřebuješ?"~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59553 /* ~"Ale nic. Musím jít."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",9)
~ THEN BEGIN 20 // from:
  SAY #59558 /* ~"Fakt? A co tvůj postup?"~ */
  IF ~  Global("C_Off","GLOBAL",4)
~ THEN REPLY #59560 /* ~"Tvůj soupeř mi zaplatil pěknou sumičku, abych tě podvedl."~ */ GOTO 21
  IF ~  Global("C_Off","GLOBAL",7)
~ THEN REPLY #59562 /* ~"Mluvil jsem s kapitánem stráží, a povídal, že ji doprovodí do vězení."~ */ DO ~SetGlobal("C_Off","GLOBAL",9)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #59578 /* ~An'Izius mi pěkně zaplatil za otočení Siabhy proti strážím Curstu - víc než dost tady pomůže malá lež.~ */ GOTO 22
  IF ~~ THEN REPLY #59568 /* ~"Pracuji na tom. Mám ale nějaké otázky..."~ */ GOTO 23
  IF ~~ THEN REPLY #59574 /* ~"Pracuju na tom. ještě se vrátím."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #59582 /* ~"Co? Já dám dvakrát tolik!"~ */
  IF ~~ THEN REPLY #59585 /* ~"Máš část."~ */ DO ~SetGlobal("C_Off","GLOBAL",5)
~ GOTO 23
  IF ~~ THEN REPLY #59588 /* ~"Jo, jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #59590 /* ~"Pak ti dlužím tohle." Podá ti veliký váček plný měďáků. "A teď zmiz!" ~ */
  IF ~~ THEN REPLY #59592 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0
  SAY #59595 /* ~"Jo? Tak běž! Vypadni! Nebo ti stáhnu kůži z těla!"~ */
  IF ~~ THEN REPLY #59599 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #59601 /* ~"Nemáme si už víc co říct. Naše společná práce skončila. Nic se nestane. Teď běž."~ */
  IF ~~ THEN REPLY #59603 /* ~"Sqělý. Sbohem."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 25 // from:
  SAY #59605 /* ~"proč mě tak překážíš?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59606 /* ~"Kamarád mi říkal, že potřebuješ pomoct."~ */ GOTO 11
  IF ~~ THEN REPLY #59609 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #59610 /* ~"Co mi můžeš říct o Zlu?"~ */ GOTO 3
  IF ~~ THEN REPLY #59611 /* ~"Nesyšels tady nic o dévě?"~ */ GOTO 4
  IF ~~ THEN REPLY #59612 /* ~"Ále nic. Zapomeň na to."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 26 // from:
  SAY #66922 /* ~Představitel vypadá zoufale. "Prosím, cizinče! Musíš mi pomoct! Musíš přesvědčit soudce, že mé uvedené zločiny vůbec nejsou zločiny!"~ */
  IF ~~ THEN REPLY #66923 /* ~"Zkusím to..."~ */ EXIT
  IF ~~ THEN REPLY #66924 /* ~"To ještě uvidíme..."~ */ EXIT
END
