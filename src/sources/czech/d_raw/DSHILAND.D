// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHILAND.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHILAND~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45742 /* ~"Zatraceně! Už jsem to skoro měla! TO nevíš, že je nebezpečné přerušovat mága během vyvolávání kouzla. Naštěstí pro tebe jsem jenom trénovala. No, co chceš?"~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45743 /* ~"Chtěl bych vědět víc o téhle skříňce."~ */ GOTO 5
  IF ~~ THEN REPLY #45744 /* ~"Omlouvám se za vyrušení. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45745 /* ~"A další přerušení! Dneska už se nedá najít soukromí ani ve vlastním dome! Prosím odejdi, než zavolám stráže... nebo co bude možná lepší, vyzkouším si na tobě nové kouzlo, se kterým si teď hraju."~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45748 /* ~"Chtěl bych vědět víc o téhle skříňce."~ */ GOTO 5
  IF ~~ THEN REPLY #45749 /* ~"Omlouvám se za vyrušení. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",3)
~ THEN BEGIN 2 // from:
  SAY #45750 /* ~"Už jsi mi zabral spoustu času. Prosím odejdi."~ */
  IF ~~ THEN REPLY #45751 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 16 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45752 /* ~"V Úlu se povídá, že jsi zabil fienda uzavřeného v Moridorově skřínce. Nepředpokládám, že se ti z něj podařilo něco uchránit?"~ */
  IF ~~ THEN REPLY #45753 /* ~"Co jsi za člověka, že sbíráš takové věci?"~ */ GOTO 15
  IF ~~ THEN REPLY #45754 /* ~"Uh... ne, nic."~ */ GOTO 15
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 4 // from:
  SAY #45755 /* ~"Povídá se, že se ti podařilo zničit Moridorovu skřínku. Gratuluju. Ale stejně je to velká škoda, že se mi nepodařilo rozkódovat všechna kouzla, která byla použitá na té skřínce."~ */
  IF ~~ THEN REPLY #45756 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0
  SAY #45757 /* ~Ukázal jsi Moridorovu skřínku Shilandře. "Ach ano! Dobře si na tu skřínku pamatuju, získala jsem jí před nějakým časem. Co o ní chceš vědět?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45758 /* ~"Od koho jsi ji získala?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45759 /* ~"Vypadá to, že víš něco o magii. Můžeš mi říct, jaká kouzla jsou na skřínce použita?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45760 /* ~"Víš něco o historii té skřínky?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 7.1 9.0 10.0 11.1 12.0 13.0
  SAY #45761 /* ~"Co ještě chceš vědět?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45762 /* ~"Od koho jsi ji získala?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45763 /* ~"Vypadá to, že víš něco o magii. Můžeš mi říct, jaká kouzla jsou na skřínce použita?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q3","Global",0)
Global("Q2","Global",1)
~ THEN REPLY #45764 /* ~"Můžeš bezpečně odstranit ze skřínky kouzla?"~ */ DO ~SetGlobal("Q3","Global",1)
~ GOTO 10
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45765 /* ~"Víš něco o historii té skřínky?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
  IF ~  Global("Q1","Global",1)
Global("Q2","Global",1)
Global("Q3","Global",1)
Global("Q4","Global",1)
~ THEN REPLY #45766 /* ~"Existuje nějaký bezpečný způsob, jak  se té skřínky zbavit bez toho, že by to někoho ohrozilo?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #45767 /* ~"Hmmm... Nech mě chvilku přemýšlet. Nepamatuju si od koho jsem ji koupila. Vzpomínám si, že jsem byla na trhu a hledala nějaké kouzelné komponenty, když mi nějaká osoba nabídla tu skřínku. Po otestování jsem zjistila, že je prokletá, ale zaujala mě kouzla, která byla do skřínky vetkaná, tak jsem ji stejně koupila."~ */
  IF ~~ THEN REPLY #45768 /* ~"Když tě ta skřínka tak zaujala, proč ses jí vzdala?"~ */ GOTO 11
  IF ~~ THEN REPLY #45769 /* ~"Mám ještě nějaké otázky, které bych ti rád položil..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #45770 /* ~"Mnoho let jsem tu skřínku studovala a snažila se odhalit její tajemství. Je do ní zapleteno kouzlo za kouzlem. K mému úžasu se ukázalo, že kouzla jsou toho typu, který se používá pro uvěznění fiendů."~ */
  IF ~~ THEN REPLY #45771 /* ~"Fiendů? Tím myslíš, že v té skřínce jsou uzavřeni fiendové..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45772 /* ~"Ne! Ne fiendové. Ale jeden fiend. A podle složitosti a síly kouzel bych to tipovala na nějakého s velkou mocí."~ */
  IF ~~ THEN REPLY #45773 /* ~"Mám ještě nějaké otázky, které bych ti rád položil..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #45774 /* ~"Chceš se jí zbavit, co? Tohle kouzlo je ze všech nejhorší. V základě tohle kouzlo vysává energii z momentálního vlastníka skřínky a používá ji k napájení uzamykacích kouzel. A to ještě není nejhorší. Fiend vevnitř tu energii cítí a pravděpodobně bude tu osobu pronásledovat, pokud by se mu podařilo uniknout. Opravdu to není žádná výhra, vlastnit tuhle skřínku. Buďto tě to úplně vysaje z energie, nebo tě fiend zabije."~ */
  IF ~~ THEN REPLY #45775 /* ~"Aha. Jestli ti to nebude vadit, měl bych ještě pár otázek..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #45776 /* ~"Byla jsem tenkrát mladá a nerozumná. V honbě za znalostmi jsem neopatrně odstranila jedno z kouzel. Podívej se na skřínku pozorně. Když jsem ji měla já, byla jako nová. Známky koroze ukazují, že kouzla slábnou. Uvědomila jsem si, že je pro mě nebezpečné skřínku dál vlastnit. Tak jsem vypsala soutěž, abych se jí zbavila."~ */
  IF ~~ THEN REPLY #45777 /* ~"Soutěž?"~ */ GOTO 12
  IF ~~ THEN REPLY #45778 /* ~"Mám ještě nějaké otázky, které bych ti rád položil..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45779 /* ~"Byl to nejjednodušší způsob, jak se jí zbavit. Jednoduše jsem sezvala všechny bouchače v Úlu, ať se porvou mezi sebou a zjistí, kdo je nejlepší. Bouchači jsou proslulí velkými svaly a tím, že to mají nahoře vykradené, jestli mi rozumíš. Slezli se sem jako švábi na pivo. Nabídla jsem jako první cenu nějaké peníze a skřínku. Myslím, že to vyhrál bouchač jménem Brasken."~ */
  IF ~~ THEN REPLY #45780 /* ~"Mám ještě nějaké otázky, které bych ti rád položil..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 5.2 6.3
  SAY #45781 /* ~"Jediná věc, kterou se mi podařilo zjistit je jméno. Říká se jí Moridorova skřínka. Kdo je ten Moridor, nebo odkud skřínka pochází, to nevím."~ */
  IF ~~ THEN REPLY #45782 /* ~"Mám ještě nějaké otázky, které bych ti rád položil..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 6.4
  SAY #45783 /* ~"Nejsem dost silná, abych bojovala nebo zahnala takové stvoření. Už jsou to věky, co jsem tam byla naposledy, ale ve středu Uličky nebezpečných zákoutí bývala katedrála. Kněz nebo někdo, kdo získává moc z vyššího zdroje by ti měl být schopný pomoci."~ */
  IF ~~ THEN REPLY #45784 /* ~"Moc jsi mi pomohla. Díky."~ */ DO ~SetGlobal("FedEx","Global",4)
SetGlobal("Delta","Global",2)
SetGlobal("Epsilon","Global",1)
AddexperienceParty(250)
~ JOURNAL #60388 /* ~Shilandra mi o Moridorově skříňce řekla opravdu hodně... a většinu jsem si nepřál slyšet. Ukázalo se, že skříňka hostí fienda, a to velmi silného. Horší je, že kouzla, která jej poutají, slábnou. Obávám se, že už brzy unikne a bude žádat za své uvěznění odplatu. Shilandra mi poradila navštívit chrám stojící přímo uprostřed Uličky nebezpečných zákoutí. Je naděje, že vyšší moc zasáhne a vyžene fienda dřív, než uprchne.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.1
  SAY #45785 /* ~"Myslím, že někdo necvičený v umění magie by to nepochopil. Některé části se používají jako cenné komponenty pro tvorbu kouzel. Jestli mě omluvíš, potřebuju si ještě procvičovat tohle kouzlo."~ */
  IF ~~ THEN REPLY #45786 /* ~"Sbohem."~ */ DO ~SetGlobal("Shil","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shil","Global",1)
~ THEN BEGIN 16 // from:
  SAY #45787 /* ~"Už ti nemám co říct."~ */
  IF ~~ THEN REPLY #45788 /* ~"Sbohem."~ */ EXIT
END
