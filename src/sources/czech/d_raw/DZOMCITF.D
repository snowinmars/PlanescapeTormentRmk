// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19524 /* ~Na první pohled se zdá, že si tě tato hnijící ženská mrtvola vůbec nevšímá. Nicméně, jak ses přiblížil, otočilo se to a pomalu přikývlo, jako kdyby tě to zdravilo.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19554 /* ~"Zdravíčko..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19555 /* ~"Zdravíčko..."~ */ GOTO 1
  IF ~~ THEN REPLY #19556 /* ~Nech zombie o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1 27.1
  SAY #19525 /* ~Zombice zlehka zasténala odpověď: "Ggnhuuu... fnnnnuuugh..." S každým výdechem se vzduch ještě více naplnil zápachem hnijícího masa.~ */
  IF ~~ THEN REPLY #19557 /* ~"Chci se na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #19558 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19526 /* ~"Stuuuhhh... mmmaaa-uuhrrr." Zombice vydala sérii nesrozumitelných zaúpění... nemůžeš rozpoznat nic, z toho, co říká.~ */
  IF ~~ THEN REPLY #19559 /* ~"Nerozumím ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0 27.0
  SAY #19527 /* ~Zombice zlehka zasténala odpověď. Jen díky tvé schopnosti konverzace s mrtvými jsi byl schopen jí porozumět: "Zdraaaa-íčko."~ */
  IF ~~ THEN REPLY #19560 /* ~"Chci se na něco zeptat..."~ */ GOTO 4
  IF ~~ THEN REPLY #19561 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19528 /* ~Mrtvola tam chvíli stojí, přenášejíc váhu z nohy na nohu, než odpoví. "Otá-ku?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19562 /* ~"Proč se ze mě stal vězeň?"~ */ GOTO 6
  IF ~~ THEN REPLY #19563 /* ~"Kde jsem?"~ */ GOTO 7
  IF ~~ THEN REPLY #19564 /* ~"Co tu děláš?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19565 /* ~"Kdo obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19566 /* ~"Kdo obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19567 /* ~"Chci se zeptat na někoho konkrétního..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19568 /* ~"Neviděl jsi tu někde nějakou malou bronzovou kouli?"~ */ GOTO 23
  IF ~~ THEN REPLY #19569 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 26.1
  SAY #19529 /* ~Hlava mrtvoly se ospale pokyvuje. "Otá... ky."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19570 /* ~"Proč se ze mě stal vězeň?"~ */ GOTO 6
  IF ~~ THEN REPLY #19571 /* ~"Kde jsem?"~ */ GOTO 7
  IF ~~ THEN REPLY #19572 /* ~"Co tu děláš?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19573 /* ~"Kdo obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19574 /* ~"Kdo obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19575 /* ~"Chci se zeptat na někoho konkrétního..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19576 /* ~"Neviděl jsi tu někde nějakou malou bronzovou kouli?"~ */ GOTO 23
  IF ~~ THEN REPLY #19577 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19530 /* ~Po dlouhé odmlce zazní. "Uuuuhhh?" Zombice krčí rameny, jedno z nich se ale nezvedá tak vysoko, jako to druhé. "Zzzzzeptej se Mmmary, Ošššuntělé Mmmaaaary."~ */
  IF ~~ THEN REPLY #19578 /* ~"Pověz mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19579 /* ~"Chci se na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19580 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19531 /* ~"Dddomov. Mmmůj domov." To, co jí zbylo ze svalů na tváři zkroutilo její ústa do něčeho, co by mohlo být chápáno jako nějaký úsměv. "Zzzeeemě Tttichého krááále, Mrrrtvé ná-rrrudy."~ */
  IF ~~ THEN REPLY #19581 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19582 /* ~"Chci se na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19583 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19532 /* ~Zombice na tebe chvíli civí. "Mmmoje pppovin-nost. Mmmoje ssslužba, pppro TTTichého krále. SSSloužím dddobře sssvému dddomovu."~ */
  IF ~~ THEN REPLY #19584 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19585 /* ~"Chci se na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19586 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19533 /* ~"Hhhodně. Mmmyyy, kkkostlllivci, ghooooulové." Její paže se pomalu zvedla, ukazujíc k východu. "Krrrysssy." Její paže se těžkopádně kývá dokola, ukáže na tebe. "Živý."~ */
  IF ~~ THEN REPLY #19587 /* ~"Je tu více živých kromě mne?"~ */ GOTO 11
  IF ~~ THEN REPLY #19588 /* ~"Pověz mi o tvém vlastním druhu."~ */ GOTO 13
  IF ~~ THEN REPLY #19589 /* ~"Pověz mi o dalších nemrtvých."~ */ GOTO 14
  IF ~~ THEN REPLY #19590 /* ~"Pověz mi o krysách."~ */ GOTO 17
  IF ~~ THEN REPLY #19591 /* ~"Chci se na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19592 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19534 /* ~"Mmmnoho. Mmmmy, kkkosti, ghoooulové." Její paže se pomalu zvedá, ukazujíc k východu. "Krrrysssy."~ */
  IF ~~ THEN REPLY #19593 /* ~"Pověz mi o tvém vlastním druhu."~ */ GOTO 13
  IF ~~ THEN REPLY #19594 /* ~"Pověz mi o dalších nemrtvých."~ */ GOTO 14
  IF ~~ THEN REPLY #19595 /* ~"Pověz mi o krysách."~ */ GOTO 17
  IF ~~ THEN REPLY #19596 /* ~"Chci se na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19597 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19535 /* ~Hlava mrtvoly se kymácí sem a tam, tam a sem. "Sssoooegoooo..."~ */
  IF ~~ THEN REPLY #19598 /* ~"Kdo je Soego?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19599 /* ~"Kdo obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19600 /* ~"Kdo obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19601 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19602 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19536 /* ~"Ssspal-uvvvač. Zzzzzeptej se Mmmary, Ošššuntělé Mmmaaaary."~ */
  IF ~~ THEN REPLY #19603 /* ~"Řekni mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19604 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19605 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19606 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19607 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19537 /* ~Zombie zkřížila hnijící ruce na hrudi poznamenané rozpadem. "Sssilný!" Jednou rukou ukázala na svou nohu, pak na svůj spánek, kde byl odloupnutý velký kus masa, odkrývající tak holou lebku. "Pomaaalu. Hhhehhh..." Mrtvola vydala vzrušený bublající zvuk, který ti trošku připomíná pochichtávání. "Vykonáno Ošššuntělou Mmmary..."~ */
  IF ~~ THEN REPLY #19608 /* ~"Řekni mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19609 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19610 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19611 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19612 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19538 /* ~"Kddooo? Kooosťáci? Ghoooulové?"~ */
  IF ~~ THEN REPLY #19613 /* ~"Kosti... kostlivci?"~ */ GOTO 15
  IF ~~ THEN REPLY #19614 /* ~"Ghúlové."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19615 /* ~"No tak nic. Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19616 /* ~"No tak nic. Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19617 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19618 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19539 /* ~"Kooosťáci!" Její hlas je naplněn obdivem. "Vvveeď násss. Spolu vybudujeme Mrrrtvé ná-uuudy."~ */
  IF ~~ THEN REPLY #19619 /* ~"Kostlivci vás vedou?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19620 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19621 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19622 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19623 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19540 /* ~"Hhhargrimmm vvvede kooosťáky. Mmmluvvví sss Tttichým Králem, pak mmmluví sss Ošššuntělllouu Mmmary. Mmmary mmmluví s námmmi, dávvvá nám práccci." Přikyvuje.~ */
  IF ~~ THEN REPLY #19624 /* ~"Řekni mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19625 /* ~"Řekni mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19626 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19627 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19628 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19629 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19541 /* ~Znovu,... její paže se pomalu zvedla a zhoupla se zpět východním směrem. "Kkkrysssy..." Uslintaný kousek jejího horního rtu se opět jízlivě usmívá; jakási tmavá, lepkavá kapalina jí stéká po žlutohnědých zubech. "Jíst mrtvé... s jídlem... je to zlé. Pppolekaný, tteď, z ghoooulů. Drží se zpátky."~ */
  IF ~~ THEN REPLY #19630 /* ~"Krysy požírají těla?"~ */ GOTO 18
  IF ~~ THEN REPLY #19631 /* ~"Máte dohodu s krysama?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19632 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19633 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19634 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19635 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19542 /* ~"Uuuhn... zzzeptej se Mmmary. Ošššuntělé Mmmary."~ */
  IF ~~ THEN REPLY #19636 /* ~"Řekni mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19637 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19638 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19639 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19640 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19543 /* ~Zombie si ukázala na břicho, kde hnijící díry v jejím mase odkrývají různé vnitřní orgány. "Pořřřád hhhladddová. Zákony Tttichého krále jim zzzakkkazují jjjíst zzzdejší mrtvé. Ghoooulové nnnás chrrrání, hlídddají tato místa."~ */
  IF ~~ THEN REPLY #19641 /* ~"Řekni mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19642 /* ~"Před kým střeží tyhle haly?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19643 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19644 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19645 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19646 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19544 /* ~"Krrrysssy. A..." Zvedla paži a ukázala kolmo vzhůru. "...živí, ze shora. Přicházejí krást mrtvé a ruší je v posmrtném spánku."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19647 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19648 /* ~"Kdo ještě obývá tohle místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19649 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19650 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 26.0
  SAY #19545 /* ~"Onnna nnnás vvvede. Sssleeeduje nááás. Předává nám ssslova Tttichého krále."~ */
  IF ~~ THEN REPLY #19651 /* ~"Řekni mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19652 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19653 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19546 /* ~"Pppán Mmmrtvých nnnár-dddů. Zzzeptej se Mmmary. Ošššuntělé Mmmary."~ */
  IF ~~ THEN REPLY #19654 /* ~"Řekni mi o Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19655 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19656 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19547 /* ~Mrtvola zůstává bez pohybu, civíc na tebe. Nakonec říká. "Nnne. Zzzeptej ssse Mmmary. Ošššuntělé Mmmary."~ */
  IF ~~ THEN REPLY #19657 /* ~"Řekni mi o Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19658 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19659 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19548 /* ~Jak se zombie otočila k tobě, zdá se, že se jí v mrvých očích objevil záblesk poznání. "Uuuhhhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19660 /* ~"Zdravím..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19661 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #19662 /* ~Nechej zombii na pokoji.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",0)
~ THEN BEGIN 25 // from:
  SAY #19549 /* ~Na první pohled se zdá, že si tě tato hnijící ženská mrtvola vůbec nevšímá. Nicméně, jak ses přiblížil, otočilo se to a pomalu přikývlo, jako, kdyby tě to zdravilo.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Zom","AR1500",1)
~ EXTERN ~DMORTE~ 199
END

IF ~~ THEN BEGIN 26 // from: 4.5 5.5
  SAY #19550 /* ~Mrtvola potřásá hlavou. "Zzzeptej ssse Mmmary. Ošššuntělé Mmmary."~ */
  IF ~~ THEN REPLY #19663 /* ~"Řekni mi o Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19664 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #19665 /* ~"To je vše, co jsem chtěl vědět.. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",1)
~ THEN BEGIN 27 // from:
  SAY #50426 /* ~Zprvu se zdálo, že si tě toto hnijící ženské tělo vůbec nevšimlo. Nicméně jakmile ses přiblížil, otočilo se a pomalu kývlo, jako by tě zdravilo.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #50427 /* ~"Zdravím..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #50428 /* ~"Zdravím..."~ */ GOTO 1
END
