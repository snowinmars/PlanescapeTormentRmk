// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKITLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKITLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #49453 /* ~Vidíš vysokou a okouzlující ženu. Stojí a civí na zdi taverny, aniž by je vnímala, střídavě pomalu svírá a znovu otevírá pěsti. Když tě uvidí, její oči letmo přehlédnou tvé šaty a výbavu, a pak přeletí zpět k tvým očím; na tváři se jí objeví sarkastický úsměv a opět se otočí pryč.~ */
  IF ~~ THEN REPLY #49454 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #49455 /* ~Jdi dál.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49456 /* ~Ohlédne se na tebe a zakaboní se. "To je tvým normálním zvykem promlouvat k cizincům?"~ */
  IF ~~ THEN REPLY #49457 /* ~"Pokud se potřebuji na něco zeptat, pak ano."~ */ GOTO 2
  IF ~~ THEN REPLY #49458 /* ~"Obvykle ne, ale myslel jsem, že s tebou bych si promluvit mohl."~ */ GOTO 2
  IF ~~ THEN REPLY #49459 /* ~"Ne. Sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #49460 /* ~"Jaký to vzrušující život musíš vést, že děláš takové věci. Bohužel pro tebe jsem zaneprázdněná. Ocenila bych být sama."~ */
  IF ~~ THEN REPLY #49461 /* ~"Jen jsem měl pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #49462 /* ~"Tak tě prostě nechám o samotě. Sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 3 // from: 2.0
  SAY #49463 /* ~"Kterou část z 'jsem zaneprázdněná' jsi nepochopil? Nechej... mě... být. Děkuji." Opět se zahloubala do sebe a ztratila se ve vlastních myšlenkách. Začala se kousat do horního rtu, až z něj vyrazily krůpěje krve.~ */
  IF ~~ THEN REPLY #49464 /* ~"Tak sbohem."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mediate","GLOBAL",0)
NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #49465 /* ~Vidíš vysokou a okouzlující ženu. Stojí a civí na zdi taverny, aniž by je vnímala, střídavě pomalu svírá a znovu otevírá pěsti. Když tě uvidí, její oči letmo přehlédnou tvé šaty a výbavu, a pak přeletí zpět k tvým očím; na tváři se jí objeví sarkastický úsměv a opět se obrátí pryč. "Hledáš něco, kámo?" řekla, aniž by se na tebe podívala.~ */
  IF ~~ THEN REPLY #49466 /* ~"Pochopil jsem, že jsi další osoba, s kterou si mám promluvit o klíči."~ */ GOTO 5
  IF ~~ THEN REPLY #49467 /* ~"Měl bych na tebe pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #49468 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #49469 /* ~"O klíči, hm?" Pozvedla na tebe obočí. "Ty chceš vědět, co pro to máš udělat, že? To je jednoduché, příteli. Máš zájem? Jistěže máš; přišel sis o tom promluvit. Jestli jsi připraven naslouchat, to bude správná otázka, řekla bych."~ */
  IF ~~ THEN REPLY #49471 /* ~"Řekni mi, co musím udělat."~ */ JOURNAL #49473 /* ~Kitla mě pověřila, abych jí obstaral závěti od dvou mužů - Pěstidrtě a Kestera - nebo abych vyřešil hádky, které mezi sebou mají. Na oplátku mi dá druhou část klíče, abych se mohl setkat s dévou.~ */ GOTO 6
  IF ~~ THEN REPLY #49472 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 10.7
  SAY #49474 /* ~"Jsou zde dva muži, jménem Pěstidrť a Kester. Pěstidrť je kovář, Kester je lihovarník. Oba dva mi dluží *spoustu* peněz. Jenomže jeden z nich také dluží tomu druhému a tak ani jeden z nich mi nechce zaplatit. Oba argumentují nějakým dědictvím; obstarej mi ty závěti, kterých se drží. Pak to s nimi vyjednám *velice* efektivně. Kdyby se to nepovedlo, pak to mezi nimi urovnej - nebo je zabij - a já ti dám druhou část toho Klíče."~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"Mám tady obě jejich závěti."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"Mám Pěstidrťovu závěť."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"Mám Kesterovu závěť."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Pěstidrť je mrtev."~ */ GOTO 21
  IF ~  !Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester je mrtev."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"Jsou oba mrtví."~ */ GOTO 23
  IF ~~ THEN REPLY #3787 /* ~"To neudělám."~ */ GOTO 8
  IF ~  Global("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"Jasně. Sbohem."~ */ DO ~SetGlobal("Mediate","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 10.6
  SAY #49478 /* ~Povýšeně se na tebe podívá. "Možná si promluvíme až dokončíš svou malou misi, hm? Teď hybaj." Otočila se zpět ke svému pití.~ */
  IF ~~ THEN REPLY #49479 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.6
  SAY #49480 /* ~Sladce se usměje. "Takže ten Klíč nechceš dostat. Jdi dál."~ */
  IF ~~ THEN REPLY #49481 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",2)
Global("Mediate","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49482 /* ~"Takže jsi zpět, hm? Koneckonců se zdá, že pro tebe budu mít využití. Ty pomůžeš mně, já pomůžu tobě a oba dva budeme šťastní."~ */
  IF ~~ THEN REPLY #49483 /* ~"Cože to mám udělat?"~ */ JOURNAL #49485 /* ~Kitla mě pověřila, abych jí obstaral závěti od dvou mužů - Pěstidrtě a Kestera - nebo abych vyřešil hádky, které mezi sebou mají. Na oplátku mi dá druhou část klíče, abych se mohl setkat s dévou.~ */ GOTO 6
  IF ~~ THEN REPLY #49484 /* ~"Možná později. Sbohem."~ */ JOURNAL #49485 /* ~Kitla mě pověřila, abych jí obstaral závěti od dvou mužů - Pěstidrtě a Kestera - nebo abych vyřešil hádky, které mezi sebou mají. Na oplátku mi dá druhou část klíče, abych se mohl setkat s dévou.~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Mediate","GLOBAL",0)
!Global("Mediate","GLOBAL",6)
!Global("Mediate","GLOBAL",7)
!Global("Mediate","GLOBAL",8)
!Global("Mediate","GLOBAL",10)
~ THEN BEGIN 10 // from:
  SAY #49486 /* ~Její oči se v příšeří taverny zatřpytily. "Máš pro mě něco, zjizvenče?"~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"Mám tady obě jejich závěti."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"Mám Pěstidrťovu závěť."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"Mám Kesterovu závěť."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Pěstidrť je mrtev."~ */ GOTO 21
  IF ~  Global("Kester_Dead_KAPUTZ","GLOBAL",1)
!Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester je mrtev."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"Jsou oba mrtví."~ */ GOTO 23
  IF ~~ THEN REPLY #66359 /* ~"Teď zrovna nic. Pracuju na tom. Mám pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #50063 /* ~"Cože jsem to měl udělat?"~ */ GOTO 6
  IF ~~ THEN REPLY #49499 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 10.0
  SAY #49492 /* ~"Skutečně? Dej mi je a já ti dám tu druhou část Klíče."~ */
  IF ~~ THEN REPLY #49493 /* ~"Tady jsou."~ */ DO ~TakePartyItemNum("CrumLeg",1)
TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",10)
AddexperienceParty(150000)
~ GOTO 12
  IF ~~ THEN REPLY #49494 /* ~"Ještě se snažím vyřešit nějaké nedodělky. Dej mi šanci."~ */ GOTO 13
  IF ~~ THEN REPLY #49495 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49496 /* ~Vzala si je od tebe a ďábelsky se směje. "TEĎ je chci vidět tvrdit, že mi nemají jak zaplatit." Zastrčila oba odkazy do mošny na jejím opasku. "Jsi připraven na druhou část klíče?"~ */
  IF ~~ THEN REPLY #49497 /* ~"Ano. Pověz."~ */ GOTO 14
  IF ~~ THEN REPLY #49498 /* ~"Ještě ne. Nejdřív mi na něco odpověz."~ */ GOTO 16
  IF ~~ THEN REPLY #49499 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 17.1 18.1
  SAY #49500 /* ~Vzdychla. "Peníze, co mi dluží, ke mně nepřispěchají tím, že se mnou budeš mluvit. Tak dál... vyřiď to."~ */
  IF ~~ THEN REPLY #49501 /* ~"Tedy dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.0 19.0 20.0 21.0 22.0 23.0
  SAY #49502 /* ~Chvilku se soustředila a pak její hlas nabral jiný, hlubší tón, jak zanotovala tato slova: "Zde v naprosté temnotě Vězení jejich ustanoveno bylo..." Přestala a opět promluvila normálním hlasem. "Pro třetí část Klíče si jdi promluvit támhle s Nabatem." Hlasitě zívla. "Jsem vyčerpaná. Ber, a pak mě nech na chvíli osamotě. Musím popřemýšlet o dalším postupu. Sbohem."~ */
  IF ~~ THEN REPLY #49503 /* ~"Jen jsem se chtěl zeptat na pár otázek..."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Obdržel jsem od Kitly druhou část Klíče. Zní "Zde v naprosté temnotě Vězení jejich ustanoveno bylo..." Jako s dalším si mám jít promluvit s Nabatem.~ */ GOTO 15
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49504 /* ~"Chtěl bych kurs v magii."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Obdržel jsem od Kitly druhou část Klíče. Zní "Zde v naprosté temnotě Vězení jejich ustanoveno bylo..." Jako s dalším si mám jít promluvit s Nabatem.~ */ GOTO 24
  IF ~~ THEN REPLY #67753 /* ~"Sbohem."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Obdržel jsem od Kitly druhou část Klíče. Zní "Zde v naprosté temnotě Vězení jejich ustanoveno bylo..." Jako s dalším si mám jít promluvit s Nabatem.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 15 // from: 14.0 24.2 25.1
  SAY #49506 /* ~"Přijď ke mně někdy později. Zrovna teď toho mám v hlavě trochu moc..."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49507 /* ~"Můžeš mě vyškolit jako mága?"~ */ GOTO 24
  IF ~~ THEN REPLY #67754 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY #49508 /* ~Vzdychla. "Podívej, teď musím hodně plánovat ohledně mé budoucnosti... jen mě prostě nechej říct ti ten Klíč a budeme to považovat za urovnané, ano?"~ */
  IF ~~ THEN REPLY #49509 /* ~"Dobrá. Dej mi ji."~ */ GOTO 14
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49510 /* ~"Chtěl bych vyškolit v mága."~ */ GOTO 24
  IF ~~ THEN REPLY #67755 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1 10.1
  SAY #49511 /* ~"Dáš mi ji?" Natáhla ruku. "Tohle už jistě Pěstidrtě donutí najít způsob, jak mi zaplatit."~ */
  IF ~~ THEN REPLY #49512 /* ~"Ano. Tady je."~ */ DO ~TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49513 /* ~"Ještě se snažím vyřešit nějaké nedodělky. Dej mi šanci."~ */ GOTO 13
  IF ~~ THEN REPLY #49514 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 10.2
  SAY #49515 /* ~"Dáš mi ho?" Natáhla ruku. "Tohle už jistě Kestera donutí najít způsob, jak mi zaplatit."~ */
  IF ~~ THEN REPLY #49516 /* ~"Ano. Tady je."~ */ DO ~TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49517 /* ~"Ještě se snažím vyřešit nějaké nedodělky. Dej mi šanci."~ */ GOTO 13
  IF ~~ THEN REPLY #49518 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #49519 /* ~Zastrčila odkaz do mošny na jejím opasku a zle se zašklebila. "Chceš teď tu druhou část Klíče?"~ */
  IF ~~ THEN REPLY #49520 /* ~"Ano. Pověz."~ */ GOTO 14
  IF ~~ THEN REPLY #49521 /* ~"Ještě ne. Nejdřív odpověz na pár otázek."~ */ GOTO 20
  IF ~~ THEN REPLY #49522 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Mediate","GLOBAL",5)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 20 // from: 19.1
  SAY #49523 /* ~Vzdychla. "Díky za vyřešení té věci, ale... podívej, mám toho hodně k naplánování. Jen mě prostě nechej říct ti ten Klíč a budeme to považovat za urovnané, ano?"~ */
  IF ~~ THEN REPLY #49524 /* ~"Dobrá. Dej mi ho."~ */ GOTO 14
  IF ~~ THEN REPLY #49525 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3 10.3
  SAY #66361 /* ~"Tys ho zabil? Nevadí... ten starý kozel mě pořád otravoval. Jsi připravený na druhou část Klíče?"~ */
  IF ~~ THEN REPLY #66362 /* ~"Dej mi to..."~ */ DO ~SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 22 // from: 6.4 10.4
  SAY #66363 /* ~"Dobře, nemohla jsem ho vystát. Jsi připravený na druhou část Klíče?"~ */
  IF ~~ THEN REPLY #66364 /* ~"Dej mi to..."~ */ DO ~SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 6.5 10.5
  SAY #66365 /* ~"No nazdar vrahoune! Tohle jsem zrovna nečekala, ale moc mě to nezklamalo. Jsi připravený na druhou část Klíče?"~ */
  IF ~~ THEN REPLY #66366 /* ~"Dej mi to..."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 24 // from: 14.1 15.0 16.1
  SAY #67738 /* ~Oči se jí rozzářily. "Oh? Už jsi někdy předtím studoval Umění?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #67756 /* ~"Ano. Jenom si potřebuju oprášit své vědomosti."~ */ GOTO 25
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #67757 /* ~"Ne. Potřebuju se naučit vše."~ */ GOTO 27
  IF ~~ THEN REPLY #67758 /* ~"Zapomeň na to. Jenom mi odpověz na pár otázek."~ */ GOTO 15
  IF ~~ THEN REPLY #67759 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #67739 /* ~"A chceš vzdát to, co děláš momentálně, aby ses mohl věnovat Umění?"~ */
  IF ~~ THEN REPLY #67760 /* ~"Ano."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 26
  IF ~~ THEN REPLY #67761 /* ~"Ne, vlastně ne. Jenom mi místo toho odpověz na pár otázek."~ */ GOTO 15
  IF ~~ THEN REPLY #67762 /* ~"Ne, vlastně ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #67740 /* ~Po chvíli rozmlouvání o Umění přikývla a usmála se. "Jsi opravdu nadaný. Máš vše co potřebuješ k cestování po mystické stezce."~ */
  IF ~~ THEN REPLY #67763 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY #67741 /* ~"Nejdříve si ověříme, jestli na to vůbec máš." Otestovala si tvou inteligenci a logiku dlouhou sérií hlavolamů a hádanek...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #67764 /* ~Odpověz na její otázky, jak jenom dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Mage_Training","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #67765 /* ~Odpověz na její otázky, jak jenom dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67742 /* ~"No, vypadá to, že máš docela funkční mysl." Prohlíží si tě. "A máš i knížku. Dobře. Budeš ji potřebovat, abys měl kam zapisovat kouzla. Všechna kouzla musí být někde uskladněná. Je jich mnoho tvarů a druhů, ale nakonec musí být všechny někde zapsané, aby si je mohl mág prostudovat. Rozumíš mi zatím?"~ */
  IF ~~ THEN REPLY #67766 /* ~"Ano. Potřebuju knihu, od které si budu zapisovat kouzla, abych si je mohl později prostudovat."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #67743 /* ~Podařilo se jí zadržet smích, ale v jejích očích vidíš náznak opovržení. "Nemáš dostatečnou hlavu na to, abys mohl být mágem. Všechna kouzla by ti v hlavě plavala jako voda, vytekla by ti ven ušima dřív, než bys je dokázal vyvolat. Drž se meče nebo zlodějny. Na kouzla nikdy nebudeš mít."~ */
  IF ~~ THEN REPLY #67767 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #67744 /* ~"Tak si tě otestujeme. Podívej se na tohle." Podala ti svitek. "Přečti to a řekni mi, co tam je." Nápis na svitku se ti před očima kroutí, nedokážeš z něj dostat žádný smysl.~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #67768 /* ~Prozkoumej svitek.~ */ GOTO 31
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #67769 /* ~Prozkoumej svitek.~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67745 /* ~Instinktivně jsi uvolnil oči a téměř podvědomě jsi do své mysli převzal smysl svitku, jakoby se zapojila jiná část tvého mozku, o které jsi za tím nevěděl. Na svitku jsou arkánní slabiky, komponenty, gesta a rituály, potřebné k dokončení kouzla.~ */
  IF ~~ THEN REPLY #67770 /* ~"Tohle je nižší věštění, že? Něco, co dokáže identifikovat předměty."~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #67746 /* ~Ať se pokoušíš, jak chceš, nedokážeš donutit písmena na svitku, aby ti dávaly nějaký smysl. Pokaždé, když si myslíš, že už jsi písmena udržel ve své mysli, vyklouznou ti ven a nechají za sebou jenom tepající bolest hlavy. Po několika minutách intenzivní snahy jsi pergamen odložil, oči tě pálí... a náhle je ti smysl svitku jasný. Na svitku jsou arkánní slabiky, komponenty, gesta a rituály, potřebné k dokončení kouzla.~ */
  IF ~~ THEN REPLY #67771 /* ~"Tohle je nižší věštění, že? Něco, co dokáže identifikovat předměty."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 31.0 32.0
  SAY #67747 /* ~Kitla se uculila. "Takže se svitkem si už tykáš, jo? To znamená, že už jsi někdy dřív cvičil, i když jsi to už zapomněl. Protože jenom mág dokáže rozluštit symboly na tom svitku. Znovu jsi tomu otevřel svou mysl. Právě sis ušetřil roky studia. Gratuluju."~ */
  IF ~~ THEN REPLY #67772 /* ~"Děkuju. Jaký je další krok?"~ */ JOURNAL #67774 /* ~Kitla, mágyně u Zrádcovy Brány v Curstu, mi ukázala magický svitek a řekla mi, že má schopnost přečíst ho znamená, že už jsem někdy dříve ve svém životě byl mágem. ~ */ GOTO 34
  IF ~~ THEN REPLY #67773 /* ~"Myslím, že základy chápu. Pojďme trénovat."~ */ JOURNAL #67774 /* ~Kitla, mágyně u Zrádcovy Brány v Curstu, mi ukázala magický svitek a řekla mi, že má schopnost přečíst ho znamená, že už jsem někdy dříve ve svém životě byl mágem. ~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #67748 /* ~"Už máš knížku, takže teď už jenom potřebuješ vědět, jak memorizovat a vyvolávat kouzla. Za prvé potřebuješ jasnou hlavu a spoustu odpočinku, než budeš moci kouzla memorizovat. Než půjdeš spát, a to je důležité, musíš si vybrat kouzla, které chceš namemorizovat, pak jdi odpočívat. Když se probudíš, prostuduj si texty kouzel a ony vejdou do tvé mysli."~ */
  IF ~~ THEN REPLY #67775 /* ~"Kolik kouzel můžu zakouzlit?"~ */ GOTO 35
  IF ~~ THEN REPLY #67776 /* ~"Myslím, že základy chápu. Pojďme trénovat."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67749 /* ~"Když začínáš, počet tvých kouzel je omezený. Dokážeš zakouzlit jedno kouzlo, maximálně tak tři. Použij je dobře, protože až budou pryč, budeš si muset znovu odpočinout, než si je budeš moci znovu namemorizovat. Jak budeš ale stoupat po příčkách Umění výš, zjistíš, že tvá paměť dokáže udržet víc a více kouzel."~ */
  IF ~~ THEN REPLY #67777 /* ~"Dobrá. Pokračuj."~ */ GOTO 36
  IF ~~ THEN REPLY #67778 /* ~"Myslím, že základy chápu. Pojďme trénovat."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #67750 /* ~"Jakmile kouzlo zakouzlíš, vymaže se ti z paměti. Pokud ho budeš potřebovat zakouzlit dvakrát, budeš si ho muset dvakrát namemorizovat." Odmlčela se a přemýšlí. "Pozorně sleduj okolí, hledej další kouzla. Najdeš je v mnoha různých místech a formách, od různých lidí. Když je najdeš, přepiš si je do knihy kouzel, pokud to bude možné. Zkrátka je pozorně prostuduj a zapiš si je."~ */
  IF ~~ THEN REPLY #67779 /* ~"Dobrá. To je vše?"~ */ JOURNAL #67781 /* ~Kitla mě naučila základy magie. Než půjdu spát, musím si vybrat kouzla, která si chci namemorizovat tak, že si je označím ve své knize kouzel. Jestli chci dokázat zakouzlit kouzlo vícekrát, musím si ho namemorizovat vícekrát. Kdykoli budu odpočívat, probudím se s kouzly ve své paměti, mohu je kdykoli vyvolat. Ze začátku dokážu zakouzlit pouze několik kouzel denně, než se stanu v používaní magie zkušenější.~ */ GOTO 37
  IF ~~ THEN REPLY #67780 /* ~"Myslím, že základy chápu. Pojďme trénovat."~ */ JOURNAL #67781 /* ~Kitla mě naučila základy magie. Než půjdu spát, musím si vybrat kouzla, která si chci namemorizovat tak, že si je označím ve své knize kouzel. Jestli chci dokázat zakouzlit kouzlo vícekrát, musím si ho namemorizovat vícekrát. Kdykoli budu odpočívat, probudím se s kouzly ve své paměti, mohu je kdykoli vyvolat. Ze začátku dokážu zakouzlit pouze několik kouzel denně, než se stanu v používaní magie zkušenější.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.1 34.1 35.1 36.0 36.1
  SAY #67751 /* ~"Máš to. Dobře. Tady. Vezmi si tyhle svitky a dej si ta kouzla do své knihy kouzel. Hodně štěstí."~ */
  IF ~~ THEN REPLY #67752 /* ~"Díky. Sbohem."~ */ DO ~SetNamelessClass(MAGE)
GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,0,0,0)
GiveItemCreate("SPWI502",Protagonist,0,0,0)
GiveItemCreate("SPWI207",Protagonist,0,0,0)
~ EXIT
END
