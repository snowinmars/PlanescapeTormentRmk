// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNODD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DNODD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 38 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2810 /* ~Když ses přiblížil k muži v hnědé kápi, všiml sis, že si pro sebe něco tiše mumlá a občas zakývá hlavou.~ */
  IF ~~ THEN REPLY #22473 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #22475 /* ~Nechej ho být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 38 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #21938 /* ~"Někdo si přišel povídat s Noddem, povídat s Noddem, hmm..." Náhle se zlomí v záchvatech suchého kašle, pak si přikyvuje.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",4)
~ THEN REPLY #22477 /* ~"Mluvil jsem s tvojí sestrou, Amarysse..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22489 /* ~"Mluvil jsem s tvojí sestrou, Amarysse..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22490 /* ~"Mluvil jsem s tvojí sestrou, Amarysse..."~ */ GOTO 29
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22491 /* ~"Mluvil jsem s tvojí sestrou, Amarysse..."~ */ GOTO 29
  IF ~~ THEN REPLY #22492 /* ~"Co děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #22493 /* ~"Co je to za místo?"~ */ GOTO 6
  IF ~~ THEN REPLY #22494 /* ~"Měl bych nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #22495 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.4 6.0
  SAY #21939 /* ~"Nic'. Jen hledám mrtvé. Nic' víc." popotahuje nosem, potom zase zakašle. Chvíli mumlá, a znovu promluví. "Nic' víc. 'třebuju' prachy. Prachy-prachy."~ */
  IF ~~ THEN REPLY #22496 /* ~"Mrtvé?"~ */ GOTO 3
  IF ~~ THEN REPLY #22497 /* ~"Proč vyhledáváš mrtvoly?"~ */ GOTO 4
  IF ~~ THEN REPLY #22498 /* ~"Co je to za místo?"~ */ GOTO 6
  IF ~~ THEN REPLY #22499 /* ~"Měl bych nějaké otázky..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22500 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22501 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #21940 /* ~Přikyvuje. "Mrtvé. Můžu 'je prodávat Spalovačům."~ */
  IF ~~ THEN REPLY #22502 /* ~"To se může, takhle prodávat mrtvoly?"~ */ GOTO 4
  IF ~~ THEN REPLY #22503 /* ~"Co je to za místo?"~ */ GOTO 6
  IF ~~ THEN REPLY #22504 /* ~"Měl bych nějaké otázky..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22505 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22506 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #21941 /* ~Přikyvuje, aniž by se na tebe díval. "Tahám 'je na černé místo, 'o Már-ni-ce." Naklání hlavu dozadu a dopředu, pak zase přikyvuje. "Tady Spalovači, smlouvají a dávají prachy, 'ezmou mrtváka dovnitř, a Nodd s nima nemluví 'okud nepřinese další tělo." Popotáhne a utře si nos do hřbetu ruky.~ */
  IF ~~ THEN REPLY #22507 /* ~"To ti nevadí, že ti platí za mrtvoly?"~ */ GOTO 5
  IF ~~ THEN REPLY #22508 /* ~"Co je to za místo?"~ */ GOTO 6
  IF ~~ THEN REPLY #22509 /* ~"Měl bych nějaké otázky..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22510 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22511 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21942 /* ~Pokrčí rameny. "Nevadí, nevadí." Zasměje se, pak moudře pokývne hlavou. "Prachy pro mě, prachy-prachy."~ */
  IF ~~ THEN REPLY #22512 /* ~"Co je to za místo?"~ */ GOTO 6
  IF ~~ THEN REPLY #22514 /* ~"Měl bych nějaké otázky..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22515 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22516 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.2 3.1 4.1 5.0
  SAY #21950 /* ~Zamračí se a olízne si rty. "Hadrníkovo náměstí, náměstí, všude špína, jó, všude." Zakašle.~ */
  IF ~~ THEN REPLY #22517 /* ~"Co děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #22518 /* ~"Měl bych nějaké otázky..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22519 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22520 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.3 3.2 4.2 5.1 6.1
  SAY #21952 /* ~Přikývne. "Co?" Začichá, potom na tebe zašilhá. "Prachy." Zatřese hlavou a ukáže na tebe, pak ukáže na svou ruku. "Ty chceš něfo vědět-- Prachy. Jó, prachy-prachy."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #22521 /* ~Podej mu pár mincí.~ */ DO ~TakePartyGold(2)
~ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #22522 /* ~Hoď mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 8
  IF ~  PartyGoldGT(9)
~ THEN REPLY #22523 /* ~Slož mu do dlaně deset měďáků.~ */ DO ~TakePartyGold(10)
~ GOTO 8
  IF ~~ THEN REPLY #22524 /* ~"Nedostaneš nic a odpovíš mi na mé otázky."~ */ GOTO 15
  IF ~~ THEN REPLY #22525 /* ~"Tak nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1 7.2
  SAY #21953 /* ~"Prachy pro Nodda, prachy-prachy." Chvíli něco mumlá a schová měděné mince do záhybů své róby. "Ptej se, Nodd ti zkusí odpovědět, jó." Odkašle si a odplivne.~ */
  IF ~~ THEN REPLY #22526 /* ~"Pověz mi o Sběračích."~ */ GOTO 9
  IF ~~ THEN REPLY #22527 /* ~"Pověz mi o této oblasti."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22528 /* ~"Znáš muže jménem Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22529 /* ~"Hledám deník, co jsem ztratil."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22530 /* ~"Pověz mi o Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22531 /* ~"Nevadí. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22532 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.1 12.0 13.0 14.0 15.0 16.0
  SAY #21955 /* ~"Já. Já?" Chvíli se zdá být nejistý, pak souhlasně přikývne. "Já. Nosím mrrrtvoláky, beru je ke Spalovačům... Spalovači platí, prachy za mrtvé, mrtví na jejich místo. Mrtví šťastní. Spalovači šťastní. Nodd šťastný, jó, s Noddovým lesklým měďákem."~ */
  IF ~~ THEN REPLY #22533 /* ~"Pověz mi o této oblasti."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22534 /* ~"Znáš muže jménem Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22535 /* ~"Hledám deník, co jsem ztratil."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22536 /* ~"Pověz mi o Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22537 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22538 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.2 12.1 13.1 14.1 15.1
  SAY #21957 /* ~Ukáže na zem a přkyvuje. "'městí, Hadrníkovo náměstí, samá špína, jó, Sharegravevo náměstí." Chvíli si pro sebe mumlá.~ */
  IF ~~ THEN REPLY #22539 /* ~"Pověz mi o Sharegraveovi."~ */ GOTO 16
  IF ~~ THEN REPLY #22540 /* ~"Pověz mi o Sběračích."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22579 /* ~"Znáš muže jménem Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22581 /* ~"Hledám deník, co jsem ztratil."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22582 /* ~"Pověz mi o Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22584 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22586 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.2 13.2 14.2 15.2 16.1
  SAY #22381 /* ~Vypadá vystrašeně a začíná pokývávat hlavou. "Pharod, Pharod, Pharod..." Poškrábe se na temeni. "Co? Co s ním?" Zamračí se, pak potřese hlavou, jako by si nebyl jistý, jestli s vámi může mluvit.~ */
  IF ~~ THEN REPLY #22588 /* ~"Víš, kde bych ho mohl najít?"~ */ GOTO 12
  IF ~~ THEN REPLY #22589 /* ~"Pověz mi o Sběračích."~ */ GOTO 9
  IF ~~ THEN REPLY #22590 /* ~"Pověz mi o této oblasti."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22592 /* ~"Hledám deník, co jsem ztratil."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22593 /* ~"Pověz mi o Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22594 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22595 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22384 /* ~Pokývá hlavou, pak zamumlá. Letmo se na vás podívá, pak si zase začne brblat sám k sobě. Zní to, jako když zahání modlitbou zlo. "N-n-ne *tady.* Na náměstí..." Mračí se, jako by nevěděl, jak to vysvětlit. "...ale ne v náměstí." Opět zavrtí hlavou, pak zakašle.~ */
  IF ~~ THEN REPLY #22596 /* ~"Pověz mi o Sběračích."~ */ GOTO 9
  IF ~~ THEN REPLY #22597 /* ~"Pověz mi o této oblasti."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22598 /* ~"Hledám deník, co jsem ztratil."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22599 /* ~"Pověz mi o Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22600 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22601 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2 10.3 11.3 12.2 14.3 15.3 16.2
  SAY #22387 /* ~"Ne, ne, ne." Rázně zatřese hlavou. "Žádný de-ník." Popotáhne a utře si rukávem nos.~ */
  IF ~~ THEN REPLY #22602 /* ~"Pověz mi o Sběračích."~ */ GOTO 9
  IF ~~ THEN REPLY #22603 /* ~"Pověz mi o této oblasti."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22604 /* ~"Znáš muže jménem Pharod?"~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22605 /* ~"Pověz mi o Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22606 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22607 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.3 10.4 11.4 12.3 13.3 15.4 16.3
  SAY #22389 /* ~"Porodní bába... vykurýruje šrámy, ona... pomůže vám trochu, jasně." Svraští nos. "Její místo - nahoře na těch´ ploši-nách -- špatný vzduch."~ */
  IF ~~ THEN REPLY #22608 /* ~"Pověz mi o Sběračích."~ */ GOTO 9
  IF ~~ THEN REPLY #22609 /* ~"Pověz mi o této oblasti."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22610 /* ~"Znáš muže jménem Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22611 /* ~"Hledám deník, co jsem ztratil."~ */ GOTO 13
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22612 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22613 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #22392 /* ~Začíná pokyvovat hlavou, pak sám k sobě zamumlá. Vypadá ustrašeně, nejistý v tom, co dělat.~ */
  IF ~~ THEN REPLY #22614 /* ~"Pověz mi o Sběračích."~ */ GOTO 9
  IF ~~ THEN REPLY #22615 /* ~"Pověz mi o této oblasti."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22616 /* ~"Znáš muže jménem Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22617 /* ~"Hledám deník, co jsem ztratil."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22618 /* ~"Pověz mi o Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22619 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22620 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0
  SAY #22394 /* ~"Sharegravův stín dlouhý, padá na Nodda, to dělá, víš. Nodd dává Sharegravovi na pitky, Sharegrave řekne ostatním v jeho stínu: zapomeňte na Nodda,' víš." Popotáhne, pomalu pokývá hlavou.~ */
  IF ~~ THEN REPLY #22621 /* ~"Pověz mi o Sběračích."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22622 /* ~"Znáš muže jménem Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22623 /* ~"Hledám deník, co jsem ztratil."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22624 /* ~"Pověz mi o Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22625 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22626 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.3 4.3 5.2 6.2 8.5 9.4 10.5 11.5 12.4 13.4 14.4 15.5 16.4
  SAY #22396 /* ~"Eh... eh..." Zatřese hlavou, zakašle, pak znovu začne kývat hlavou. "Ty ptáš se Nodda, víš, Nodd ptát se ty... otázky pro já, víš..."~ */
  IF ~~ THEN REPLY #22627 /* ~"Jdi na to, ptej se."~ */ GOTO 18
  IF ~~ THEN REPLY #22628 /* ~Ignoruj ho, otoč se a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #22398 /* ~"Nodd měl sestru, víš, Amarysse. Ah-mahr-eece... žije v Úlu, daleko odtud, daleko od náměstí. Tak dlouhou, dlouhou dobu byl Nodd oddělený od své sestry, daleko od ní..."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22629 /* ~"Ty jsi od ní byl oddělený a chceš po mně, abych ji našel?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~Sběrač jménem Nodd mně požádal, abych našel jeho sestru, Amarysse, a promluvil s ní o něm. Popsal ji jako atraktivní mladou ženu žijící někde v Úlu.~ */ GOTO 19
  IF ~~ THEN REPLY #22630 /* ~"Takže tvoje otázka zní...?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~Sběrač jménem Nodd mně požádal, abych našel jeho sestru, Amarysse, a promluvil s ní o něm. Popsal ji jako atraktivní mladou ženu žijící někde v Úlu.~ */ GOTO 19
  IF ~~ THEN REPLY #22631 /* ~"Zajímavé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #22415 /* ~"Ty ji neznáš?" Na chvíli smutně pokývá hlavou, žužlá si dolní ret. "Dyž ji uvidíš, jesli ji uvidíš, řekni ji, že Nodd, její bratr, má o ni starosti, víš, jasně že jo, má starosti."~ */
  IF ~~ THEN REPLY #22637 /* ~"Proč ji nejdeš najít sám?"~ */ GOTO 20
  IF ~~ THEN REPLY #22638 /* ~"Dobrá. Udělám to pro tebe."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22639 /* ~"Najdu ji... za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22640 /* ~"Uvážím to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #22417 /* ~"NE!" Nodd si rukama zakryje hlavu, mumlá si sám pro sebe. "Nodd... Nodd už nemůže nic víc říkat, jasně, nemůže, víš, cítí mrtvoly z toho špinavýho náměstí, Hadrníkova náměstí... NE!" Zachvátí ho výbuch sípavého kašle.~ */
  IF ~~ THEN REPLY #22641 /* ~"Co se ti stalo Nodde?"~ */ GOTO 21
  IF ~~ THEN REPLY #22642 /* ~"Dobrá. Najdu ti ji."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22643 /* ~"Najdu ji... za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22644 /* ~"Uvážím to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #22421 /* ~Nodd popotáhne, rychle se okolo sebe rozhlédne. Nakonec, kývaje hlavou, sám k sobě něžně hovoří: "Nodd byl malý, víš, to byl, začal slyšel hlasy, říkali Noddovi 'udělej to! udělej ono!' Špatné věci, špatné, jako hryzání Noddových prstů..." Pozvedne své ruce k tváři a pod zaschlou špínou zahlédneš staré jizvy po zubech.~ */
  IF ~~ THEN REPLY #22645 /* ~"Pokračuj..."~ */ GOTO 23
  IF ~~ THEN REPLY #22647 /* ~"Dobře. Najdu ti tvoji sestru."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22648 /* ~"Najdu ti tvoji sestru... za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22649 /* ~"Zajímavé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.0
  SAY #22425 /* ~"Víš, víš. Špatný místo, špatný!" Prudce zatřepe hlavou, chytí se za spánky, pokračuje ve svém obvyklém kývání hlavou.~ */
  IF ~~ THEN REPLY #22650 /* ~"Pokračuj ve svém příběhu..."~ */ GOTO 24
  IF ~~ THEN REPLY #22669 /* ~"Dobrá. Najdu ti tvoji sestru."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22671 /* ~"Najdu ti sestru... za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22674 /* ~"Zajímavé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #22427 /* ~"Takže rodiče vzali Nodda pryč, to udělali, dovedli ho na temné místo, Okřídlená věž, kde nastrkali do Noddovi hlavy jehly a háky... hlasy přestaly, víš, to udělali, ale Nodd neumí správně myslet, neumí správně mluvit. Nodd z toho místa utekl, jó utekl, vzbudil se v Úlu, víš."~ */
  IF ~~ THEN REPLY #22675 /* ~"Kde je ta Okřídlená věž?"~ */ GOTO 22
  IF ~~ THEN REPLY #22676 /* ~"Pokračuj ve vypravování..."~ */ GOTO 24
  IF ~~ THEN REPLY #22677 /* ~"Dobrá. Najdu ti tvoji sestru."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22678 /* ~"Najdu ti tvou sestru... za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22679 /* ~"Zajímavé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.1
  SAY #22431 /* ~"Nodd se vzbudil, byli tu Sběrači, víš, Sběrači strkali do Nodda, říkali 'Hele! Není mrtvej, to není mrtvola! Odneste ho zpátky, odneste ho!' A tak vzali Nodda zpátky, to udělali, zpátky na náměstí. Je to dlouho... roky, před dlouhými roky."~ */
  IF ~~ THEN REPLY #22680 /* ~"Dobrá. Najdu ti tvoji sestru."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22681 /* ~"Najdu ti tvou sestru... za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22682 /* ~"Zajímavé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.1 20.1 21.1 22.1 23.2 24.0 26.1
  SAY #22433 /* ~"Nodd ti děkuje, to dělá, Nodd ti děkuje.  Amarysse byla krásná, tak krásná, žije v Úlu, teď. Světle opálená, to byla, vlasy jako černý jantar a vždycky v modrém, modrém... vždycky byla v modrém..."~ */
  IF ~~ THEN REPLY #22683 /* ~"Sbohem, Nodde."~ */ JOURNAL #22636 /* ~Souhlasil jsem, že Noddovi pomůžu najít jeho sestru, Amarysse. Říkal, že měla světlou pleť a černé vlasy, a vždycky se oblékala do modré.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.2 20.2 21.2 22.2 23.3 24.1
  SAY #22435 /* ~Zatřese hlavou, kašle. "Nodd nic nemá, nic, takže jen něco málo dá..."~ */
  IF ~~ THEN REPLY #22684 /* ~"Bude stačit cokoliv."~ */ GOTO 27
  IF ~~ THEN REPLY #22685 /* ~"Udělám to teda zadarmo."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
~ GOTO 25
  IF ~~ THEN REPLY #22686 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #22437 /* ~Nodd se na tebe smutně podívá. "Nodd ti dá všechno, co má, to udělá, víš. Cokoli Nodd má, když s ní promluvíš. Dokaž Noddovi, že si mluvil s Amarysse, Noddovou sestrou, víš." Popotáhne, pak zakašle. "Světle opálená, to byla, vlasy jako černý jantar a vždycky v modrém, modrém... vždycky byla v modrém..."~ */
  IF ~~ THEN REPLY #22687 /* ~"Dohodnuto. Vrátím se hned, co si s ní promluvím. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",3)
~ JOURNAL #22635 /* ~Souhlasil jsem, že Noddovi pomůžu najít jeho sestru, Amarysse... za nějaký poplatek. Říkal, že měla světlou pleť a černé vlasy, a vždycky se oblékala do modré.~ */ EXIT
  IF ~~ THEN REPLY #22688 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.0 1.1
  SAY #22441 /* ~"Udělal si to? Nodd je tak šťastný, to je! Jak se má Noddova sestra? Pověz mu o Amarysse, pověz Noddovi, prosím!" Jeho vzrušení způsobí sérii sípavých zakašlání. Jen co může opět promluvit, ptá se: "Je Noddova sestra stále krásná, tak krásná?"~ */
  IF ~~ THEN REPLY #22689 /* ~"Jo, je. Ona je... zrovna... prostitutkou v Úlu. Daří se jí dobře a dělá si o tebe starosti."~ */ GOTO 31
  IF ~~ THEN REPLY #22690 /* ~Lež: "Jo, je. Ona je... zrovna... servírkou v hospodě v Úlu. Daří se jí dobře a dělá si o tebe starosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22691 /* ~Lež: "Jo, to si piš. Je to kurva a je tak odporná, že bych s ní nešel ani zadara."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 1.2 1.3
  SAY #22444 /* ~"Dokaž! Dokaž! Dokaž Noddovi..."~ */
  IF ~~ THEN REPLY #22692 /* ~"Řekla mi, že ses dřív jmenoval Thodus."~ */ DO ~GiveGoldForce(11)
~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 32.4 33.2 34.2
  SAY #22446 /* ~"Ajjjííí!" Vyskakuje, aby na tebe zaútočil.~ */
  IF ~~ THEN REPLY #22693 /* ~"Huppps..."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ JOURNAL #22634 /* ~Nalhal jsem Noddovi, že jeho sestra byla hnusná děvka a on zešílel a zaútočil na mě.~ */ EXIT
  IF ~~ THEN REPLY #63621 /* ~Vyhov jeho útoku.~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0 28.1 32.2 32.3 33.0 33.1 34.0 34.1
  SAY #22448 /* ~"Nodda těší, že je jeho sestra v pořádku!" Vypadá, že se každou chvíli rozpláče, pak ztěžka polkne. "Nic jiného, nic jiného Noddovi nevzkázala?"~ */
  IF ~  GlobalLT("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22695 /* ~"Jenom řekla, že jakmile si najde trochu času, přijde tě navštívit."~ */ JOURNAL #22710 /* ~Promluvil jsem si s Noddovou sestrou, Amarysse, a vrátil se k němu. Byl přešťastný, že o ní slyší.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldGT(99)
~ THEN REPLY #22696 /* ~"Ano, chtěla, abys dostal tyhle měďáky. Taky tě přijde navštívit, jen co si najde trochu času."~ */ DO ~TakePartyGold(100)
~ JOURNAL #22709 /* ~Promluvil jsem si s Noddovou sestrou, Amarysse, a vrátil se k němu. Byl přešťastný, že o ní slyší a taky si vzal měďáky, které jsem slíbil mu doručit.~ */ GOTO 36
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22697 /* ~Lež: "Jenom řekla, že jakmile si najde trochu času, přijde tě navštívit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_4","GLOBALLaw",-3)
~ JOURNAL #22708 /* ~Promluvil jsem si s Noddovou sestrou Amarysse a vrátil se k němu. Byl přešťastný, že o ní slyší, ale já jsem porušil slib, co jsem dal Amarysse, a lhal jsem mu o měďácích, které jsem mu měl doručit.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldLT(100)
~ THEN REPLY #22698 /* ~"Ano. Dala pro tebe nějaké peníze, ale... jsou pryč. Omlouvám se. Přijde tě navštívit, jen co si najde trochu času."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nodd_3","GLOBALLaw",-1)
~ JOURNAL #22707 /* ~Promluvil jsem si nejdříve s Noddovou sestrou, Amaryssou a pak se k němu vrátil. Byl přešťastný, že o ní slyší, ale já už jsem neměl měďáky, které jsem mu slíbil doručit. Nicméně mi odpustil a já se cítím mnohem lépe, když jsem mu o tom řekl.~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #22450 /* ~"Udělal si to? Nodd je tak šťastný, to je!" Sáhne si pod šaty a vytáhne klubko mastných hadrů. Rozbalí je a jejich obsah - jedenáct obyčejných měďáků - vám podává. "To je všechno, co Nodd má. Jak je Noddově sestře? Pověz mu o Amarysse, pověz Noddovi, prosím!" Jeho vzrušení způsobí sérii sípavých zakašlání. Jen co může opět promlivit, ptá se: "Je Noddova sestra stále krásná, tak krásná?~ */
  IF ~~ THEN REPLY #22711 /* ~"Jsi si *jistý*, že je to všechno, co máš, Nodde?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_3","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #22712 /* ~"Nodde, já si ty peníze nemůžu vzít - tady. Vezmi si je zpátky."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_3","GLOBALGood",1)
TakePartyGold(11)
~ GOTO 34
  IF ~~ THEN REPLY #22713 /* ~"Jo, je. Ona je... zrovna... prostitutka, v Úlu. Daří se jí dobře a dělá si o tebe starosti."~ */ GOTO 31
  IF ~~ THEN REPLY #22714 /* ~Lež: "Jo, je. Ona je... zrovna... servírka, v hospodě v Úlu. Daří se jí dobře a dělá si o tebe starosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22715 /* ~Lež: "Jo, to si piš. Je to kurva a je tak odporná, že bych s ní nešel ani zadara."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22452 /* ~Prudce přikývne. "Víš, víš, všechno co Nodd má! Podívej kde žije, ubohý Nodd... podívej se..." Prudce kolem sebe gestikuluje, mumlá si sám k sobě.~ */
  IF ~~ THEN REPLY #22716 /* ~"Výborně. Pořád je krásná a je... zrovna... prostitutka, v Úlu. Daří se jí dobře a dělá si o tebe starosti."~ */ GOTO 31
  IF ~~ THEN REPLY #22717 /* ~Lež: "Výborně. Pořád je krásná a je... zrovna... servírka, v hospodě v Úlu. Daří se jí dobře a dělá si o tebe starosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22718 /* ~Lež: "Výborně. Je to kurva a je tak odporná, že bych s ní nešel ani zadara."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #22456 /* ~Na chvilku přestane pokyvovat hlavou, užasne, a vezme si mince zpět. "Nodd děkuje, to dělá. Víš, děkuje ti..."~ */
  IF ~~ THEN REPLY #22719 /* ~"Samozřejmě. Tvá sestra je pořád krásná a je... zrovna... prostitutka, v Úlu. Daří se jí dobře a dělá si o tebe starosti."~ */ GOTO 31
  IF ~~ THEN REPLY #22720 /* ~"Samozřejmě. Tvá sestra je pořád krásná a je... zrovna... servírka, v hospodě v Úlu. Daří se jí dobře a dělá si o tebe starosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22721 /* ~Lež: "Samozřejmě. Tvá sestra je kurva a je tak odporná, že bych s ní nešel ani zadara."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 31.0 31.2
  SAY #22458 /* ~Pod špinavě hnědou kapucí svítí Noddovy radostné oči. "Takové radostné zprávy, to jo, dobré, nádherné zprávy, víš! Nodd ti děkuje a děkuje ti zase a děkuje ti tisíckrát víc, víš!"~ */
  IF ~~ THEN REPLY #22722 /* ~"Jsem rád, že jsem mohl pomoci. Sbohem, Nodde."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22723 /* ~"Neobtěžuj se s děkováním - byl to placenej džob, i když tak uboze, že šlo spíš o laskavost. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22724 /* ~"Neobtěžuj se s děkováním - byl to placenej džob, i když tak uboze, že šlo spíš o laskavost. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.1
  SAY #22461 /* ~Noddova hlava se náhle přestane kývat a čelist mu spadne, jak mu do ruky vkládáš jedno sto měďáků. Pod špinavě hnědou kapucí svítí Noddovy radostné oči. "Takové radostné zprávy, to jo, dobré, nádherné zprávy, víš! Nodd ti děkuje a děkuje ti zase a děkuje ti tisíckrát víc, víš!"~ */
  IF ~~ THEN REPLY #22725 /* ~"Jsem rád, že jsem mohl pomoci. Sbohem, Nodde."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22726 /* ~"Neobtěžuj se s děkováním - byl to placenej džob, i když tak uboze, že šlo spíš o laskavost. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22727 /* ~"Neobtěžuj se s děkováním - byl to placenej džob, i když tak uboze, že šlo spíš o laskavost. Sbohem."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.3
  SAY #22463 /* ~Na chvíli Nodd sklopí hlavu, něžně mumlá. Nakonec se ti zahledí do očí: "Nodd odpouští, to dělá, víš, je dobré, že jsi o tom Noddovi řekl, to je, ukázal jsi Noddovy, že jsi dobrý člověk, ale nemůže, jako Nodd... jako Nodd. Nodd ti děkuje stejně jako za dobré zprávy, víš."~ */
  IF ~~ THEN REPLY #22728 /* ~"Sbohem, Nodde."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nodd_Quest","GLOBAL",8)
~ THEN BEGIN 38 // from:
  SAY #22466 /* ~Vidíš chodit Nodda kolem dokola, pokývávat hlavou a mumlat si sám pro sebe.~ */
  IF ~~ THEN REPLY #22729 /* ~"Zdravím, Nodde."~ */ GOTO 39
  IF ~~ THEN REPLY #22730 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #22470 /* ~"Víš, tam je muž, který Noddovi pomohl najít jeho sestru, víš, krásnou Amarysse. Nodd ti děkuje, ještě jednou."~ */
  IF ~~ THEN REPLY #22731 /* ~"Sbohem, Nodde."~ */ EXIT
END
