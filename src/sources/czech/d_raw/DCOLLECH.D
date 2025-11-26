// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25492 /* ~Tento muž je zabalen ve špinavém, hnědém, roztrhaném rouchu a dlouhá kukla mu skrývá většinu tváře.~ */
  IF ~~ THEN REPLY #25493 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #25596 /* ~Nechej ho být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25494 /* ~Spatřil jsi jeho oči těsně pod okrajem kukly. Ihned udělal krok zpět. "Co chceš?"~ */
  IF ~~ THEN REPLY #25495 /* ~"Co děláte?"~ */ GOTO 2
  IF ~~ THEN REPLY #25593 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #25594 /* ~"Mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #25595 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 20.0
  SAY #25496 /* ~"Hledám nějaký prokletý těla, to je to, co se snažím dělat, ale myslím, že Síla Mrtvých to zabalila a odešla ze Sfér, všichni lidi jsou pořád zdraví." Najednou vidíš lesk v jeho očích. "Před měsícem jsme tu měli neštovice, to byly časy, bylo to... těla až do nebes, bylo z nich spoustu prachů."~ */
  IF ~~ THEN REPLY #25497 /* ~"Proč ksakru hledáte těla?"~ */ GOTO 3
  IF ~~ THEN REPLY #25590 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #25591 /* ~"Mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #25592 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #25498 /* ~Vypadá překvapeně. "Dobře, ty taháš mrtvý do Márnice. Tady si promluvíš se Spalovači, trochu se s nima hádáš a vyděláš nějaký prachy."~ */
  IF ~~ THEN REPLY #25499 /* ~"Proč to Spalovači dělaj, proč kupujou těla?"~ */ GOTO 4
  IF ~~ THEN REPLY #25587 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #25588 /* ~"Mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #25589 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25500 /* ~"Shromažďujou mrtvý... je to jejich práce. Platěj nás za pokrytí větších prostor a přinesení všech těl, co pro ně najdeme. Pak se přesvědčí, zda se jim těla pro jejich vlastní věc hodí nebo je daj spálit. Jsou skutečně přesvědčeni o správnosti své filosofie, ale pro mě to znamená jen nějaký prachy." Zamrkal.~ */
  IF ~~ THEN REPLY #25501 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #25585 /* ~"Mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #25586 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 20.1
  SAY #25502 /* ~Zamračil se na tebe. "Jó v Úlu, jasně. Trochu špinavější než celej Sigil. Vodkud jsi kámo? Z prvopočátku, nebo co?"~ */
  IF ~~ THEN REPLY #25503 /* ~"Ne. Proč hledáte těla?"~ */ GOTO 3
  IF ~~ THEN REPLY #25504 /* ~"Ne. Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #25584 /* ~"Ne. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 20.2
  SAY #25505 /* ~Pozvedl obočí. "Tím pádem pro tebe něco mám, jde jen o to, co chceš vědět a jak nutně to chceš vědět?"~ */
  IF ~~ THEN REPLY #25506 /* ~"Co myslíš?"~ */ GOTO 7
  IF ~~ THEN REPLY #25579 /* ~"Pověz mi o sběračích."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25580 /* ~"Hledám muže jménem Pharod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25581 /* ~"Hledám svůj ztracený deník."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25582 /* ~"Co víš o Mebbeth?"~ */ GOTO 7
  IF ~~ THEN REPLY #25583 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #25507 /* ~"Podívej se kolem, kámo... Nevydělám žádný prachy tím, že se ze mě najednou stane hodnej člověk. Jestli si chceš promluvit, bude tě to něco stát."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25508 /* ~Podej mu pár mincí.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25575 /* ~Hoď mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25576 /* ~Hoď mu do dlaní deset měďáků.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25577 /* ~"Nic nedostaneš a odpovíš mi na otázku!."~ */ GOTO 19
  IF ~~ THEN REPLY #25578 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 19.1
  SAY #25509 /* ~"Každej Spalovač platí líp než ty, kámo. Asi nic tak nutně vědět nepotřebuješ."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25510 /* ~Hoď mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25560 /* ~


Hoď mu deset měďáků.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25567 /* ~"Nic nedostaneš a odpovíš mi na otázku!."~ */ GOTO 19
  IF ~~ THEN REPLY #25574 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 19.2
  SAY #25511 /* ~Chvilku mince zkoumá a nechává je v dlaních. "Ech." Pak je rychle dá do kapes. "Ptej se."~ */
  IF ~~ THEN REPLY #25512 /* ~"Pověz mi o sběračích."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25556 /* ~"Hledám muže jménem Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25557 /* ~"Hledám svůj ztracený deník."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25558 /* ~"Co víš o Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25559 /* ~"Nevadí. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.2 12.2 13.1 14.1 15.0 16.0 18.0
  SAY #25513 /* ~"Já... my... odklízíme mrtvoly pryč ze špinavejch ulic Sigilu a taháme jejich smradlavý prdele do Márnice. Není to nejlepší způsob, jak žít život, ale je to začátek. To je všechno, cos chtěl vědět, kámo?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25514 /* ~"Hledám muže jménem Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25553 /* ~"Hledám svůj ztracený deník."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25554 /* ~"Co víš o Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25555 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 15.1 16.1 18.1
  SAY #25515 /* ~Náhle přivřel oči. "Pharod... co je s ním?"~ */
  IF ~~ THEN REPLY #25516 /* ~"Najednou vypadáš ostražitě... proč?"~ */ GOTO 12
  IF ~~ THEN REPLY #25548 /* ~"Víš kde je?"~ */ GOTO 14
  IF ~~ THEN REPLY #25549 /* ~"Pověz mi o sběračích."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25550 /* ~"Pořád hledám svůj ztracený deník."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25551 /* ~"Co víš o Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25552 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 11.0 14.0
  SAY #25517 /* ~"Pharod, hmm!" S opovržlivým úšklebkem si odplivl. "Hadrníkovo náměstí je Sharegravejovo teritorium -- teritorium mýho šéfa -- víš. Pharod a jeho psi se jednou vrátili a pokusili se nás vyhnat. Bojovali sme s nima a vyhnali je pryč, takže se teď všichni někde skovávaj. Pořád chytáme jednoho jejich hocha, kterej běhá okolo náměstí. Všechnu tuhle sebranku pošleme rychle do Márnice, zasraný ubožáky.~ */
  IF ~~ THEN REPLY #25518 /* ~"Pověz mi o Sharegravovi."~ */ GOTO 13
  IF ~~ THEN REPLY #25543 /* ~"Víš, kde je  Pharod?"~ */ GOTO 14
  IF ~~ THEN REPLY #25544 /* ~"Pověz mi o sběračích."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25545 /* ~"Pořád hledám svůj ztracený deník."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25546 /* ~"Co víš o Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25547 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25519 /* ~"Je to můj šéf... vrhá svůj stín nad celým tím zmatkem sběračů. Bejt tebou, tak pokud nemáš opravdu ten "pravej" důvod s ním mluvit, tak se s ním nebav... Já jsem s ním nikdy osobně nemluvil."~ */
  IF ~~ THEN REPLY #25520 /* ~"Víš kde je Pharod?"~ */ GOTO 14
  IF ~~ THEN REPLY #25539 /* ~"Pověz mi o sběračích."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25540 /* ~"Pořád hledám svůj ztracený deník."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25541 /* ~"Co víš o Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25542 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.1 12.1 13.0
  SAY #25521 /* ~"Já vím, kde ten krysí bastard není... není tam, kde většina Sběračů přespává, na Hadrníkově náměstí, ale vždycky je někde blízko místa, kde se něco děje."~ */
  IF ~~ THEN REPLY #25522 /* ~"Všichni sběrači mají na Pharoda stejný názor?"~ */ GOTO 12
  IF ~~ THEN REPLY #25523 /* ~"Pověz mi o sběračích."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25524 /* ~"Pořád hledám svůj ztracený deník."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25537 /* ~"Co víš o Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25538 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.1 11.3 12.3 13.2 14.2 16.2 18.2
  SAY #25525 /* ~Zmateně zavrtěl hlavou.~ */
  IF ~~ THEN REPLY #25526 /* ~"Pověz mi o sběračích."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25527 /* ~"Pořád hledám muže jménem Pharod."~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25528 /* ~"Co víš o Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25536 /* ~"Tedy sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 9.3 10.2 11.4 12.4 13.3 14.3 15.2 18.3
  SAY #25529 /* ~"Porodní bába? Moc milá, vychází pomáhat, když jsi nemocnej nebo něco podobného. Pokud ji potřebuješ vidět, žije v boudě nahoře u plošiny na Hadrníkově náměstí."~ */
  IF ~~ THEN REPLY #25530 /* ~"Pověz mi o sběračích."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25531 /* ~"Pořád hledám muže jménem Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25532 /* ~"Hledám svůj ztracený deník."~ */ GOTO 15
  IF ~~ THEN REPLY #25533 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 9.4 10.3 11.5 12.5 13.4 14.4 15.3 16.3 18.4
  SAY #25534 /* ~"Dobře. Dávej na sebe pozor, kámo. Pokavaď tě najdu na ulici, budu k tvýmu tělu šetrnej."~ */
  IF ~~ THEN REPLY #25535 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2 8.1 19.3
  SAY #25561 /* ~"Tak se ptej. Nemůžu říct, že pomůžu, ale pokusím se."~ */
  IF ~~ THEN REPLY #25562 /* ~"Pověz mi o sběračích."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25563 /* ~"Hledám muže jménem Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25564 /* ~"Hledám svůj ztracený deník."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25565 /* ~"Co víš o Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25566 /* ~"Nevadí. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 7.3 8.2
  SAY #25568 /* ~"Nic nevím, bude lepší když se zeptáš někoho jinýho."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #25569 /* ~Chyť ho, zvedni a trochu s ním zatřes.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25570 /* ~Dej mu pár mincí.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25571 /* ~Hoď mu do dlaní pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25572 /* ~Hoď mu deset měďáků.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25573 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #25597 /* ~Muž udělal krok zpět a podezíravě na tebe zírá zpod své kukly. "Zase, ech? Co chceš?"~ */
  IF ~~ THEN REPLY #25598 /* ~"Co děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #25599 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #25600 /* ~"Mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #25601 /* ~"Nic. Sbohem."~ */ EXIT
END
