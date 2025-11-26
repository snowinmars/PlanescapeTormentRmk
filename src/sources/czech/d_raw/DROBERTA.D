// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROBERTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DROBERTA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",0)
~ THEN BEGIN 0 // from:
  SAY #58513 /* ~Vidíš dobře oblečenou ženu středního věku. Je zamračená, vypadá to, že něco nebo někoho hledá.~ */
  IF ~~ THEN REPLY #58514 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58515 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58516 /* ~Zastavila se a než odpověděla, chvíli tě pozorovala. "Kdo jsi a co po mně chceš?"~ */
  IF ~~ THEN REPLY #58517 /* ~Lži: "Jsem Adahn a mám nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Roberta_1","GLOBALLAW",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58518 /* ~"Nepamatuju si své jméno."~ */ GOTO 17
  IF ~~ THEN REPLY #58519 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #58520 /* ~Podala ti ruku. "Buď pozdraven. Jsem Roberta."~ */
  IF ~~ THEN REPLY #58521 /* ~Stiskni jí ruku a ukloň se: "Rád tě poznávám, Lady Roberto."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ GOTO 3
  IF ~~ THEN REPLY #58522 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58523 /* ~"Věřím, že máš pro mě nějaké otázky?"~ */
  IF ~~ THEN REPLY #58524 /* ~"Ano, Lady."~ */ GOTO 4
  IF ~~ THEN REPLY #58525 /* ~"To nic, Lady. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.1 7.1 8.1 9.1 12.0 13.0 14.0 15.1 16.0 20.3 21.1
  SAY #58526 /* ~"Jsem ti k službám. Prosím, ptej se."~ */
  IF ~~ THEN REPLY #58527 /* ~"Hledám devu. Řekli mi, že je v Curstu."~ */ GOTO 5
  IF ~  Global("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #58528 /* ~"Vypadáš zneklidněně. Děje se něco?"~ */ GOTO 6
  IF ~~ THEN REPLY #58529 /* ~"Děje se tady něco zajímavého?"~ */ GOTO 13
  IF ~~ THEN REPLY #58530 /* ~"Můžeš mi říct o Curstu?"~ */ GOTO 14
  IF ~~ THEN REPLY #58531 /* ~"Kdo tomu tady šéfuje?"~ */ GOTO 15
  IF ~~ THEN REPLY #58532 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58533 /* ~Odmlčela se a přemýšlí. "Taky jsem to slyšela. Bohužel ti ale nemůžu pomoct. Nevím o takovém stvoření nic. Zkus se zeptat v administrativním úřadě na náměstí."~ */
  IF ~~ THEN REPLY #58534 /* ~"Aha. Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58536 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58538 /* ~Zamračila se. "Ano... můj manžel, Carl Parfidor, není tam, kde říkal, že bude. Není to poprvé, co mi lže. Začínám si myslet, že..." Na chvíli se odmlčela. "Začínám si myslet, že je s jinou ženou. S nějakou prostitutkou."~ */
  IF ~~ THEN REPLY #58539 /* ~"Proč si to myslíš?"~ */ GOTO 7
  IF ~~ THEN REPLY #58541 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58544 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58545 /* ~Povzdychla si. "Než jsme se vzali, byl dost na ženské, zvlášť na ty lehčí typy, a já slyšela pomluvy..." Vypadá vztekle. "A pokud zjistím, že jsou ty drby pravdivé, mám pro něj překvapení."~ */
  IF ~~ THEN REPLY #58546 /* ~"Překvapení?"~ */ GOTO 8
  IF ~~ THEN REPLY #58548 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58550 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58552 /* ~"Ano." Nadzvedla svou sukni a odhalila stehno. Vidíš pouzdro s dýkou, kterou má připevněné k noze. Vytáhla dýku a krutě se usmála. "Myslím, že když tohle najde ve svých zádech, docela ho to překvapí, nemyslíš?" Schovala dýku zpět do pouzdra.~ */
  IF ~~ THEN REPLY #58555 /* ~"Takže ho plánuješ zabít?"~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",1)
~ JOURNAL #58565 /* ~Žena jménem Roberta Parfidor si přeje smrt svého manžela Carla. Vypadá to, že Carl má choutky na jiné ženy a Robertě se to nelíbí. Zajímavé.~ */ GOTO 9
  IF ~~ THEN REPLY #58558 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58561 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58570 /* ~Její úsměv zvadnul, když zauvažovala nad tvými slovy. Nakonec si povzdychla. "Udělala bych to, kdybych mohla... ale ne, nejsem blbá. Carl a já už se dál... nestýkáme. Nikdy se nedostanu dost blízko, abych mohla udeřit." Na chvíli se dívá stranou." Jenom jedna z jeho *žen* by mohla..."~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58582 /* ~"Znám prostitutku jménem Kiri, která potřebuje peníze. Možná by se mohla dostat dost blízko..."~ */ GOTO 10
  IF ~~ THEN REPLY #58583 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58584 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.0
  SAY #58585 /* ~Chvíli na tebe jenom zírá. "Aha..." Rozhlédla se kolem a pak se k tobě naklonila a zašeptala. "Byl bys ochotný zajít za ní a nabídnout jí... zaměstnání? Platím pět set minci po dokončení úkolu."~ */
  IF ~~ THEN REPLY #58586 /* ~"To není moc peněz."~ */ GOTO 11
  IF ~~ THEN REPLY #58587 /* ~"Nemyslím. Sbohem."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~Odmítl jsem pomoct Robertě Parfidorové zabít jejího manžela Carla.~ */ EXIT
  IF ~~ THEN REPLY #58588 /* ~"Hodily by se mi peníze. Promluvím si s Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~Souhlasil jsem, že pomůžu Robertě Parfidorové s vraždou jejího manžela Carla. Musím si promluvit s prostitutkou Kiri, jestli tu práci vezme.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58591 /* ~Zamračila se. "Hmmm. Možná, ale tolik jsem ochotná zaplatit. Vy dva můžete být o pět stovek bohatší... anebo ne. Výběr je na tobě."~ */
  IF ~~ THEN REPLY #58592 /* ~"Obejdu se. Sbohem."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~Odmítl jsem pomoct Robertě Parfidorové zabít jejího manžela Carla.~ */ EXIT
  IF ~~ THEN REPLY #58593 /* ~"Peníze se hodí. Promluvím si s Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~Souhlasil jsem, že pomůžu Robertě Parfidorové s vraždou jejího manžela Carla. Musím si promluvit s prostitutkou Kiri, jestli tu práci vezme.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.1 22.1
  SAY #58594 /* ~Usmála se. "Výborně. Jestli bude souhlasit, ať to udělá jak chce, ale co nejrychleji. Po splnění úkolu mě zkontaktuj a já ti zaplatím."~ */
  IF ~~ THEN REPLY #58595 /* ~"Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58596 /* ~"Teď budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #58597 /* ~Chvíli přemýšlí. "Slyšela jsem, že se ztratila nějaká mladá žena. Dcera nějakého barmana. Detaily ale neznám. Jinak mě nic zvláštního nenapadá."~ */
  IF ~~ THEN REPLY #58598 /* ~"Aha. Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58599 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.3
  SAY #58600 /* ~Rozesmála se. "Curst je hnojiště a my jsme exkrementy, které ho zaplňují." Pokrčila rameny. "Nic víc se k tomu říct nedá."~ */
  IF ~~ THEN REPLY #58601 /* ~"Aha. Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58602 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.4
  SAY #58603 /* ~"Tovus Giljaf. Najdeš ho v administrativním úřadě na náměstí."~ */
  IF ~~ THEN REPLY #58604 /* ~"Co mi můžeš říct o Tovusovi?"~ */ GOTO 16
  IF ~~ THEN REPLY #58605 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58606 /* ~"Teď budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58607 /* ~"Tovus může být docela... nepříjemný." Odmlčela se a přemýšlí. "Vím o něm málo, pouze že je to githzerai a čaroděj."~ */
  IF ~~ THEN REPLY #58608 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58609 /* ~"Teď budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.1
  SAY #58610 /* ~Překvapeně se na tebe podívala. "Vážně. Nejsi náhodou žadatel? Pokud jsem to pochopila, ti prý ztrácejí paměť."~ */
  IF ~~ THEN REPLY #58611 /* ~"Co je to žadatel?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58612 /* ~Na chvíli se odmlčela a přemýšlí. "Žadatelé... jsou ti, kteří zemřeli a jejichž těla se objevila na sféře, která co nejblíže vyjadřuje jejich životní přesvědčení. Většinou si nic nepamatují ze své předchozí existence. Možná, že je tohle tvůj případ."~ */
  IF ~~ THEN REPLY #58613 /* ~"Možná... To znovuzrození. Jak často se to může stát?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58614 /* ~"No... Nejsem na to zrovna expert, ale pokud jsem pochopila, stává se to pořád, dokud se po smrti duch nevrátí do samotné sféry, kde zemřel. Pokud jsi pochopitelně nepřešel do jiné sféry. V tom případě tě čeká nekonečné zapomnění."~ */
  IF ~~ THEN REPLY #58615 /* ~"Aha. V tom případě nemám jméno,které bych ti mohl říct."~ */ GOTO 2
  IF ~~ THEN REPLY #58616 /* ~"Děkuju ti. Budu se s tebou muset rozloučit. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",1)
~ THEN BEGIN 20 // from:
  SAY #58617 /* ~Vidíš Robertu. Usmála se na tebe. "Zdravím tě, příteli. Jak ti můžu pomoct?"~ */
  IF ~  Global("Snuff_Carl","GLOBAL",1)
~ THEN REPLY #58618 /* ~"Ještě stále to chceš se svým manželem... vyřešit?"~ */ GOTO 21
  IF ~  Global("Snuff_Carl","GLOBAL",2)
~ THEN REPLY #58619 /* ~"Ještě stále to chceš se svým manželem... vyřešit?"~ */ GOTO 22
  IF ~  Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #58620 /* ~"Ještě stále to chceš se svým manželem... vyřešit?"~ */ GOTO 23
  IF ~~ THEN REPLY #58621 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58622 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58623 /* ~Usmála se na tebe. "Ano, rozhodně ano. Proč se ptáš?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58624 /* ~"Znám prostitutku jménem Kiri, která potřebuje peníze. Možná by se mohla dostat dost blízko..."~ */ GOTO 10
  IF ~~ THEN REPLY #58625 /* ~"Jenom ze zvědavosti. Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #58626 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #58627 /* ~Zamračila se na tebe. "Ano, rozhodně ano. Ale ty jsi mou nabídku pěti stovek pro tebe a tvého komplice odmítl. Znamená to, že sis mou nabídku promyslel a přijímáš ji?"~ */
  IF ~~ THEN REPLY #58628 /* ~"Ne, ani ne. Sbohem."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #58629 /* ~"Hodily by se mi peníze. Promluvím s Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
~ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #58637 /* ~Zamračila se na tebe. "Ano, rozhodně. Můj kontrakt jsi přijal. Je práce vykonána?"~ */
  IF ~~ THEN REPLY #58638 /* ~"Ne, ještě ne. Pracuju na tom. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  !Dead("BDKIRI")
Global("Carl_Snuffed","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #58639 /* ~Vidíš Robertu. Pro jednou vypadá docela šťastně. Rozhlédla se kolem, pozorně zkoumajíc okolí. "Ahoj. Předpokládám, žes přišel pro peníze?" Usmála se na tebe.~ */
  IF ~~ THEN REPLY #58640 /* ~"Ano, práce, na kterou jsi mě najala, je hotová."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58641 /* ~Než odpověděla, ještě jednou se rozhlédla. "Velmi dobře. Tady jsou peníze, které jsem ti slíbila." Po tváři jí na chvíli přelétl zaujatý výraz. "Uh... tvá přítelkyně Carla zpracovala *důkladně*. Děkuju vám oběma." Podala ti těžký měšec. "Tady je tvůj podíl, Kiri už jsem vyplatila."~ */
  IF ~~ THEN REPLY #58642 /* ~"Děkuju ti. Bylo mi potěšením obchodovat s tebou."~ */ DO ~GivePartyGold(500)
AddexperienceParty(2000)
SetGlobal("Carl_Snuffed","GLOBAL",2)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 32
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Carl_Snuffed","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #58643 /* ~Vidíš Robertu. "Ahoj, zdravím tě. Můžu ti nějak pomoct?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58644 /* ~"Ano, chtěl bych se setkat s Tovusem Giljafem. Myslíš, že bys to mohla zařídit?"~ */ GOTO 33
  IF ~~ THEN REPLY #4773 /* ~"No, tak takhle. Nashle."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #58645 /* ~Vidíš Robertu. Když si tě všimla, rozzuřila se. "Ty! Ty hromado hnoje prolezlá červama! Podívej se, co se ze mě stalo! Kvůli tobě!" Její tvář je tak rudá, že máš obavy, aby nepraskla.~ */
  IF ~~ THEN REPLY #58646 /* ~"Kvůli mně? Já jsem neplánoval smrt tvého manžela."~ */ GOTO 28
  IF ~~ THEN REPLY #58647 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #58648 /* ~Její oči se zúžily na dvě uzounké štěrbinky. Slova na tebe prakticky plive. "Zradil jsi mou důvěru! Carl mi o tvé zradě řekl, než mě sem poslal! Ty synu děvky!"~ */
  IF ~~ THEN REPLY #58649 /* ~"Když už mluvíme o děvkách, skončila tady Kiri?"~ */ GOTO 29
  IF ~~ THEN REPLY #58650 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #58651 /* ~Zařvala na tebe. "Arrrrrrhhh! Už znáš odpověď, ty kozofile! Chceš mě dál mučit touhle hrou na neviňátko?!"~ */
  IF ~~ THEN REPLY #58652 /* ~"Předstírej, že ne a řekni mi, co se s ní stalo."~ */ GOTO 30
  IF ~~ THEN REPLY #58653 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #58654 /* ~"Zrádná mrcha. Stala se Carlovou milenkou a vyhnula se vězení!"~ */
  IF ~~ THEN REPLY #58655 /* ~"Chytrá holka... No, teď budu muset jít. Sbohem."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #58656 /* ~Spaluje tě pohledem, z očí jí odkapává nenávist. "Ano... jdi, ale věz tohle. Nebudu v téhle díře do nekonečna. A na tebe a tu prostitutku nezapomenu!"~ */
  IF ~~ THEN REPLY #58657 /* ~Ignoruj ji a jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.0
  SAY #58658 /* ~Lehce se ti uklonila. "Je tady něco, co bych pro tebe mohla udělat?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58659 /* ~"Ano, chtěl bych se setkat s Tovusem Giljafem. Myslíš, že bys to mohla zařídit?"~ */ GOTO 33
  IF ~~ THEN REPLY #58660 /* ~"Ne, to si nemyslím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.0 32.0
  SAY #58661 /* ~Usmála se na tebe. "Tovus... Je mi líto. V poslední době je strašně zaměstnaný a ani mě samotné se nepodařilo ho zkontaktovat."~ */
  IF ~~ THEN REPLY #58662 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END
