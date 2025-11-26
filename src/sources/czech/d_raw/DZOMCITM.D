// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19349 /* ~Na první pohled se zdá, že si tě tato hnijící mužská mrtvola vůbec nevšímá. Nicméně, jak ses přiblížil, otočilo se to a pomalu přikývlo, jako kdyby tě to zdravilo.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19397 /* ~"Zdravíčko..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19398 /* ~"Zdravíčko..."~ */ GOTO 1
  IF ~~ THEN REPLY #19399 /* ~Nech zombie o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1
  SAY #19350 /* ~Zombie zlehka zasténal odpověď: "Ggnhuuu... fnnnnuuugh..." S každým výdechem se vzduch ještě více naplnil zápachem hnijícího masa.~ */
  IF ~~ THEN REPLY #19400 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #19401 /* ~"Teď se již musím rozloučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19351 /* ~"Stuuuhhh... mmmaaa-uuhrrr." Zombie vydal sérii nesrozumitelných zaúpění... nemůžeš rozpoznat nic, z toho, co říká.~ */
  IF ~~ THEN REPLY #19402 /* ~"Nerozumím ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0
  SAY #19352 /* ~Zombie zlehka zasténal odpověď. Jen díky tvé schopnosti konverzace s mrtvými jsi  schopen mu porozumět: "Zdraaaa-íčko."~ */
  IF ~~ THEN REPLY #19403 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #19404 /* ~"Teď se již musím rozloučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19353 /* ~Mrtvola tam chvíli stojí, přenášejíc váhu z nohy na nohu, než odpoví. "Otá-ku?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19405 /* ~"Proč se ze mě stal vězeň?"~ */ GOTO 6
  IF ~~ THEN REPLY #19407 /* ~"Kde jsem?"~ */ GOTO 7
  IF ~~ THEN REPLY #19408 /* ~"Co tu děláš?"~ */ GOTO 8
  IF ~  !Dead("Soego2")
~ THEN REPLY #19410 /* ~"Kdo obývá toto místo?"~ */ GOTO 9
  IF ~  Dead("Soego2")
~ THEN REPLY #19523 /* ~"Kdo obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19411 /* ~"Dovol mi zeptat se na něco konkrétního ..."~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19413 /* ~"Neviděl jsi tu někde nějakou malou bronzovou kouli?"~ */ GOTO 23
  IF ~~ THEN REPLY #19415 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 25.1
  SAY #19357 /* ~Hlava mrtvoly se ospale pokyvuje. "Otá... zky."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19417 /* ~"Proč se ze mě stal vězeň?"~ */ GOTO 6
  IF ~~ THEN REPLY #19418 /* ~"Kde jsem?"~ */ GOTO 7
  IF ~~ THEN REPLY #19419 /* ~"Co tu děláš?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19420 /* ~"Kdo obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19421 /* ~"Kdo obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19422 /* ~"Dovol mi zeptat se na něco konkrétního ..."~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19423 /* ~"Neviděl jsi tu někde nějakou malou bronzovou kouli?"~ */ GOTO 23
  IF ~~ THEN REPLY #19424 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19358 /* ~Po dlouhé odmlce zazní. "Uuuuhhh?" Zombie krčí rameny, jedno z nich se ale nezvedá tak vysoko, jako to druhé. "Zzzzzeptej se Mmmary, Ošššuntělé Mmmaaaary."~ */
  IF ~~ THEN REPLY #19425 /* ~"Pověz mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19426 /* ~"Mám nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #19427 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19359 /* ~"Dddomov. Mmmůj domov." To, co mu zbylo ze svalů na tváři zkroutilo jeho ústa do něčeho, co by mohlo být chápáno jako úsměv. "Zzzeeemě Tttichého krááále, Mrrrtvé ná-rrrody."~ */
  IF ~~ THEN REPLY #19428 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19429 /* ~"Mám nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #19430 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19375 /* ~Zombie na tebe chvíli civí. "Mmmoje pppovin-nost. Mmmoje ssslužba, pppro TTTichého krále. SSSloužím dddobře sssvému dddomovu."~ */
  IF ~~ THEN REPLY #19431 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19432 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #19433 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19377 /* ~"Hhhodně. Mmmyyy, kkkostlllivci, ghooooulové." Jeho paže se pomalu zvedla, ukazujíc k východu. "Krrrysssy." Jeho paže se těžkopádně kýve dokola, ukáže na tebe. "Živý."~ */
  IF ~~ THEN REPLY #19434 /* ~"Je tu více živých kromě mne?"~ */ GOTO 11
  IF ~~ THEN REPLY #19435 /* ~"Pověz mi o tvém vlastním druhu."~ */ GOTO 13
  IF ~~ THEN REPLY #19436 /* ~"Pověz mi o dalších nemrtvých."~ */ GOTO 14
  IF ~~ THEN REPLY #19437 /* ~"Řekni mi o krysách."~ */ GOTO 17
  IF ~~ THEN REPLY #19438 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #19439 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19380 /* ~"Mmmnoho. Mmmmy, kkkosti, ghoooulové." Jeho paže se pomalu zvedá, ukazujíc k východu. "Krrrysssy."~ */
  IF ~~ THEN REPLY #19440 /* ~"Pověz mi o tvém vlastním druhu."~ */ GOTO 13
  IF ~~ THEN REPLY #19441 /* ~"Pověz mi o dalších nemrtvých."~ */ GOTO 14
  IF ~~ THEN REPLY #19442 /* ~"Řekni mi o krysách."~ */ GOTO 17
  IF ~~ THEN REPLY #19443 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #19444 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19382 /* ~Hlava mrtvoly se kymácí sem a tam, tam a sem. "Sssoooegoooo..."~ */
  IF ~~ THEN REPLY #19445 /* ~"Kdo je Soego?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19446 /* ~"Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19447 /* ~"Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19448 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19449 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19383 /* ~"Ssspal-uvvvač. Zzzzzeptej se Mmmary, Ošššuntělé Mmmaaaary."~ */
  IF ~~ THEN REPLY #19450 /* ~"Pověz mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19451 /* ~"Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19452 /* ~"Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19453 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19454 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19384 /* ~Zombie zkřížil hnijící ruce na hrudi poznamenané rozpadem. "Sssilný!" Jednou rukou ukázal na svou nohu, pak na svůj spánek, kde byl odloupnutý velký kus masa, odkrývající tak holou lebku. "Pomaaalu. Hhhehhh..." Mrtvola vydala vzrušený bublající zvuk, který ti trošku připomíná pochichtávání. "Vykonáno Ošššuntělou Mmmary..."~ */
  IF ~~ THEN REPLY #19455 /* ~"Pověz mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19456 /* ~"Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19457 /* ~"Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19458 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19459 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19385 /* ~"Kddooo? Kooosťáci? Ghoooulové?"~ */
  IF ~~ THEN REPLY #19460 /* ~"Kosťáci... kostlivci?"~ */ GOTO 15
  IF ~~ THEN REPLY #19461 /* ~"Ghúlové."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19462 /* ~"Nevadí. Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19463 /* ~"Nevadí. Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19464 /* ~"Nevadí. Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19465 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19386 /* ~"Kooosťáci!" Jeho hlas je naplněn obdivem. "Vvveeď násss. Spolu vybudujeme Mrrrtvé ná-uuudy."~ */
  IF ~~ THEN REPLY #19466 /* ~"Kostlivci vám velí?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19467 /* ~"Nevadí. Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19468 /* ~"Nevadí. Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19469 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19470 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19387 /* ~"Hhhargrimmm vvvede kooosťáky. Mmmluvvví sss Tttichým Králem, pak mmmluví sss Ošššuntělllouu Mmmary. Mmmary mmmluví s námmmi, dávvvá nám práccci." Přikyvuje.~ */
  IF ~~ THEN REPLY #19471 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19472 /* ~"Pověz mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19473 /* ~"Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19474 /* ~"Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19475 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19476 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19388 /* ~Znovu,... jeho paže se pomalu zvedla a zhoupla se zpět východním směrem. "Kkkrysssy..." Uslintaný kousek jeho horního rtu se opět jízlivě usmívá; jakási tmavá, lepkavá kapalina mu stéká po žlutohnědých zubech. "Jíst mrtvé... s jídlem... je to zlé. Pppolekaný, tteď, z ghoooulů. Drží se zpátky."~ */
  IF ~~ THEN REPLY #19477 /* ~"Ty mrtvoly tady žerou krysy?"~ */ GOTO 18
  IF ~~ THEN REPLY #19478 /* ~"Vy žijete s krysami v příměří?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19479 /* ~"Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19480 /* ~"Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19481 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19482 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19389 /* ~"Uuuhn... zzzeptej ssse Mmmary. Ošššuntělé Mmmary."~ */
  IF ~~ THEN REPLY #19483 /* ~"Pověz mi o... Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19484 /* ~"Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19485 /* ~"Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19486 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19487 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19390 /* ~Zombie si ukázal na břicho, kde hnijící díry v jeho mase odkrývají různé vnitřní orgány. "Pořřřád hhhladddový. Zákony Tttichého krále jim zzzakkkazují jjjíst zzzdejší mrtvé. Ghoooulové nnnás chrrrání, hlídddají tato místa."~ */
  IF ~~ THEN REPLY #19488 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19489 /* ~"Před kým chrání tyto chodby?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19490 /* ~"Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19491 /* ~"Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19492 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19493 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19391 /* ~"Krrrysssy. A..." Zvedl paži a ukázal kolmo vzhůru. "...živí, ze shora. Přicházejí krást mrtvé a ruší je v posmrtném spánku."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19494 /* ~"Kdo další obývá toto místo?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19495 /* ~"Kdo další obývá toto místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #19496 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19497 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 25.0
  SAY #19392 /* ~"Onnna nnnás vvvede. Sssleeeduje nááás. Předává nám ssslova Tttichého krále."~ */
  IF ~~ THEN REPLY #19498 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19499 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19500 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19393 /* ~"Pppán Mmmrtvých nnnár-dddů. Zzzeptej se Mmmary. Ošššuntělé Mmmary."~ */
  IF ~~ THEN REPLY #19501 /* ~"Pověz mi o Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19502 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19503 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19394 /* ~Mrtvola zůstává bez pohybu, civíc na tebe. Nakonec říká. "Nnne. Zzzeptej ssse Mmmary. Ošššuntělé Mmmary."~ */
  IF ~~ THEN REPLY #19504 /* ~"Pověz mi o Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19505 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19506 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19395 /* ~Jak se zombie otočil k tobě zdá se, že se mu v mrtvých očích objevil záblesk poznání. "Uuuhhhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19507 /* ~"Zdravíčko..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19508 /* ~"Nazdárek..."~ */ GOTO 1
  IF ~~ THEN REPLY #19509 /* ~Nech zombie o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.5 5.5
  SAY #19396 /* ~Mrtvola potřásá hlavou. "Zzzeptej ssse Mmmary. Ošššuntělé Mmmary."~ */
  IF ~~ THEN REPLY #19510 /* ~"Pověz mi o Ošuntělé Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19511 /* ~"Chci se ještě na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #19512 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END
