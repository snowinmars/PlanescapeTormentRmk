// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROSSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROSSA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from: 1.1 2.0 3.0 7.0 11.0 12.0 16.0
  SAY #8415 /* ~"Myslíš, že mi můžeš vyhrožovat, aniž bys sám sebe ohrozil? Šašku!" Pronáší tři tajemná slůvka a ty máš pocit, jako by se tvé srdce tříštilo na kusy. Pak volá ven. "Stráže! STRÁŽE!"~ */
  IF ~~ THEN REPLY #8416 /* ~Zaútoč na ni.~ */ DO ~Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8417 /* ~Odejdi.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #8418 /* ~"Doporučuji ti, abys odešel. Nenajdeš tu žádné zkoušky, které by stály za boj s naší stráží. Odejít ty bys měl."~ */
  IF ~~ THEN REPLY #8419 /* ~"Chtěl bych, abys mi odpověděla na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #8420 /* ~"Odpovíš mi na otázku nebo ti uštědřím trest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8421 /* ~"Výborně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #8422 /* ~"Na tvé otázky neodpovím, jelikož strážci po tobě vyžadují splnění dalšího úkolu. Toť vše."~ */
  IF ~~ THEN REPLY #8423 /* ~"Odpovíš mi na otázky nebo za to draze zaplatíš, děvče."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8424 /* ~"Výborně. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  GlobalGT("SarossaStatChange","GLOBAL",3)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN BEGIN 3 // from:
  SAY #8425 /* ~"Takže. Vrátil ses žebrat o odpuštění, nebo ses rozhodl pokračovat po svých ohavných cestách?"~ */
  IF ~~ THEN REPLY #8426 /* ~"Přišel jsem tě zabít."~ */ GOTO 0
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8427 /* ~"Přišel jsem se ti omluvit, Sarosso."~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8428 /* ~"Přišel jsem se ti omluvit, Sarosso."~ */ GOTO 13
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN REPLY #8429 /* ~"Přišel jsem se ti omluvit, Sarosso."~ */ GOTO 14
  IF ~~ THEN REPLY #8430 /* ~"Nic z toho. Sbohem... pro teď."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 25 22 even though they appear after this state */
~  Global("Sarossa_Saros_Anger","AR0503",0)
GlobalGT("G_Test2","GLOBAL",8)
GlobalLT("G_Test2","GLOBAL",12)
!Global("G_Test2","GLOBAL",10)
~ THEN BEGIN 4 // from:
  SAY #8431 /* ~"Jak se odvažuješ ke mně promluvit, když jsi mého bratra poslal čekat na ostří kata? Chtěla bych vyrvat vůli tvé duše, za tu bolest, kterou jsi naší rodině způsobil."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8432 /* ~"Saros byl tvůj bratr?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8433 /* ~"Je mi líto, Sarosso. Byl vinen a jakékoliv pokrevní příbuzenství to nemůže změnit."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8434 /* ~"Saros byl tvůj bratr?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8435 /* ~"Je mi líto, Sarosso. Byl vinen a jakékoliv pokrevní příbuzenství to nemůže změnit."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8437 /* ~"Oba, on a Thildon, byli vinni, byť různými zločiny. Oba dva se musí podívat do tváře zákonu."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~~ THEN REPLY #8438 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.4 42.0 42.4
  SAY #8436 /* ~"On byl můj bratr. Chceš se chovat jinak, když víš, kým byl?"~ */
  IF ~~ THEN REPLY #8439 /* ~Pravda: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8440 /* ~Lež: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8440 /* ~Lež: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Lež: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Lež: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8441 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_1","GLOBALLaw",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 9.0 9.1 9.2 9.3 42.1
  SAY #8442 /* ~"Ty tomu opravdu věříš, že? Miluji svého bratra, ale vy jste věrni sobě a to já kritizovat nemohu."~ */
  IF ~~ THEN REPLY #8443 /* ~"Dobrá. Pak mi tedy odpověz na pár otázek, odpovíš?"~ */ GOTO 18
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8444 /* ~"Pak tedy vrať zpátky tu část mne, kterou jsi ukradla."~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8445 /* ~"Pak tedy vrať zpátky tu část mne, kterou jsi ukradla."~ */ GOTO 13
  IF ~  Global("SarossaStatChange","GLOBAL",6)
~ THEN REPLY #8446 /* ~"Pak tedy vrať zpátky tu část mne, kterou jsi ukradla."~ */ GOTO 14
  IF ~~ THEN REPLY #8447 /* ~Pravda: "Omlouvám se za při s tebou a za tvou bolest, paní."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 8
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8448 /* ~Lež: "Omlouvám se za při s tebou a za tvou bolest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8448 /* ~Lež: "Omlouvám se za při s tebou a za tvou bolest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Lež: "Omlouvám se za při s tebou a za tvou bolest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Lež: "Omlouvám se za při s tebou a za tvou bolest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8449 /* ~"Potom sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.5 30.1
  SAY #8450 /* ~"Opravdu si myslíš, že oklameš někoho, kdo dokáže číst v srdcích lidí? Šašku." Pronáší jednoduchá slůvka a zdá se, jako by se kolem tebe zkřivil vzduch, pak se zatočí směrem od tebe a rozplyne se v éteru. "Odejdi, zjizvenče a už mne více neoslovuj."~ */
  IF ~~ THEN REPLY #8451 /* ~"Vrátím se. A ty za to zaplatíš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ GOTO 0
  IF ~~ THEN REPLY #8452 /* ~"Sbohem, Sarosso. Nezapomenu na to."~ */ DO ~PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5 6.4
  SAY #8453 /* ~Její oči se dívají do dále, jako by viděly více než jen tvých pět smyslů. "Máš mé odpuštění, pokud si zapamatuješ, že všechno to, co uděláš, má své následky, a ať už je vidíš nebo ne, tak i přes svou nevědomost můžeš způsobit bolest. Nechť ti tato slova slouží."~ */
  IF ~~ THEN REPLY #8454 /* ~"Děkuji. Můžeš mi odpovědět na pár otázek?"~ */ GOTO 18
  IF ~~ THEN REPLY #8455 /* ~"Děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 4.3 42.2 42.3
  SAY #8456 /* ~"Byl mým bratrem a nyní tu, připraven zemřít, stojí i můj otec. Doufám, že tvé srdce dokáže unést to, kolik bolesti to světu přinese."~ */
  IF ~~ THEN REPLY #8457 /* ~"Já nemohu odložit svou víru v právo pro výhodu jednotlivce."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_2","GLOBALLaw",1)
~ GOTO 6
  IF ~~ THEN REPLY #8458 /* ~"To jistě může. Udělal jsem to dříve, a mohu to udělat znovu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_4","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8459 /* ~"Kdybych byl věděl, že je tvým bratrem, nezapletl bych se s ním."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8460 /* ~"Mé srdce se tou myšlenkou netěší - ale věřím, že taková bolest je často cesta k lepším věcem. Ačkoliv užitek není vidět okamžitě, učíme se vidět to dobré, co bolest přinesla."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 3.1 6.1
  SAY #8461 /* ~"Pak promiň."~ */
  IF ~~ THEN REPLY #8462 /* ~Pravda: "Neměl jsem právo mluvit k tobě takovým způsobem. Moje slova a činy byly překotné a neuvážené. V budoucnu si budu dávat víc pozor."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8463 /* ~Lež: "Neměl jsem právo mluvit k tobě takovým způsobem. Moje slova a činy byly překotné a neuvážené. V budoucnu si budu dávat víc pozor."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8464 /* ~"Ne."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.2 5.3 6.6 6.7 10.1 13.1 30.2 30.3
  SAY #8465 /* ~"Nelži mi, polo-člověče, nebo vyrvu život z tvého těla." Vyplivne další zkroucené slůvko a ty sebou křečovitě trhneš, jak je další kousek tvé duše vyrván z tvého těla ven. "Teď jdi. Nepřeji si s tebou mluvit."~ */
  IF ~~ THEN REPLY #8466 /* ~Zaútoč na ni.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8467 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 13.2 14.2
  SAY #8468 /* ~"Jestliže v sobě necítíš žádný žal, pak ho necítím ani já. Jdi. Hned."~ */
  IF ~~ THEN REPLY #8469 /* ~Zaútoč na ni.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8470 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.2
  SAY #8471 /* ~"Pak se omlouvám."~ */
  IF ~~ THEN REPLY #8472 /* ~Pravda: "Neměl jsem právo mluvit k tobě takovým způsobem. Moje slova a činy byly překotné a neuvážené. V budoucnu si budu dávat víc pozor."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8473 /* ~Lež: "Neměl jsem právo mluvit k tobě takovým způsobem. Moje slova a činy byly překotné a neuvážené. V budoucnu si budu dávat víc pozor."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8474 /* ~"Ne."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 3.3 6.3
  SAY #8475 /* ~"Pak se omlouvám."~ */
  IF ~~ THEN REPLY #8476 /* ~Pravda: "Neměl jsem právo mluvit k tobě takovým způsobem. Moje slova a činy byly překotné a neuvážené. V budoucnu si budu dávat víc pozor."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8477 /* ~Lež: "Neměl jsem právo mluvit k tobě takovým způsobem. Moje slova a činy byly překotné a neuvážené. V budoucnu si budu dávat víc pozor."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8478 /* ~"Ne."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 10.0 13.0 14.0
  SAY #8479 /* ~Její ústa znovu vytváří slabiky a ty se cítíš jako roztočená káča - jako by někdo přidal další elementy k tvému základnímu bytí. " Jsi volný, polo-člověče. Co chceš?"~ */
  IF ~~ THEN REPLY #8480 /* ~"Proč mě nazýváš polo-člověk?"~ */ JOURNAL #67281 /* ~Čarodějnice Sarossa z Velké slévárny mi řekla,  že mě bude nazývat polo-mužem, protože nevidí mého ducha. Neví, jestli to znamená, že nemám duši, nebo jestli je to proto, že jsem transcendoval, povýšil do vyššího stavu. Stejně mi ale bude říkat polo-muž.~ */ GOTO 17
  IF ~~ THEN REPLY #8481 /* ~"Jen chci odpověď na pár otázek."~ */ GOTO 18
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8482 /* ~"Řekni mi o své rodině."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8483 /* ~"Řekni mi o své rodině."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8484 /* ~"Řekni mi o své rodině."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8485 /* ~"Řekni mi o své rodině."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8487 /* ~"Tvůj bratr mi řekl, že máš zvláštní talent."~ */ GOTO 22
  IF ~~ THEN REPLY #8488 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.4 6.8 14.1 30.4
  SAY #8486 /* ~"Nerespektuješ nikoho kromě sebe, že? To nemíním snášet u nikoho a je mi jedno, jakým nadáním oplývá. Sbohem, polo-člověče. STRÁŽE!"~ */
  IF ~~ THEN REPLY #8489 /* ~Zaútoč na ni.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8490 /* ~Odejdi.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 18.0
  SAY #8491 /* ~"Nazývám tě polo-člověkem, protože nevidím tvou duši. U ostatních smrtelníků, kteří projdou mým životem, se mi jejich duše zobrazí, jako zářící jiskra nebo doutnající žhavý uhel. A u tebe vůbec nic. Nazývám tě polo-člověkem, protože nevidím tvou duši, tak jak mohu u jiných. Zda-li to je proto, že žádnou duši nemáš, nebo protože máš duši, jež tě přesahuje, nevím. Ať tak, nebo tak, jsi pouze polovinou člověka. Co je druhou polovinou, nemohu říct." ~ */
  IF ~~ THEN REPLY #8492 /* ~"Jasně. Tak mi odpověz na pár otázek."~ */ GOTO 18
  IF ~~ THEN REPLY #8493 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.0 8.0 15.1 17.0 19.4 20.4 21.4 22.2 23.4 24.0 24.1 25.0 26.0 28.2 29.0 31.0 32.1 35.0 36.0 37.0 38.0 41.0 43.0
  SAY #8494 /* ~"Jaké odpovědi hledáš, polo-člověče?"~ */
  IF ~~ THEN REPLY #8495 /* ~"Proč mě nazýváš polo-člověk?"~ */ JOURNAL #67281 /* ~Čarodějnice Sarossa z Velké slévárny mi řekla,  že mě bude nazývat polo-mužem, protože nevidí mého ducha. Neví, jestli to znamená, že nemám duši, nebo jestli je to proto, že jsem transcendoval, povýšil do vyššího stavu. Stejně mi ale bude říkat polo-muž.~ */ GOTO 17
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8496 /* ~"Nepotřebuji s tebou mluvit o svém otci."~ */ GOTO 39
  IF ~~ THEN REPLY #8497 /* ~"Kdo jsi?"~ */ GOTO 38
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8498 /* ~"Řekni mi o své rodině."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8499 /* ~"Řekni mi o své rodině."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8500 /* ~"Řekni mi o své rodině."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8501 /* ~"Řekni mi o své rodině."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8502 /* ~"Někdo má zvláštní talent. Pověz mi o tom svém."~ */ GOTO 22
  IF ~~ THEN REPLY #8503 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 18.3
  SAY #8504 /* ~"Můj bratr Saros je dítě Slévárny, přesto se obávám, že jaktěživ nepojal filozofii Věřících v pramen za svou. Můj otec je zde faktorem - a jeho cesty jej vedly daleko od Slévárny a do oblastí, o kterých se většině smrtelníku ani nesní."~ */
  IF ~~ THEN REPLY #8505 /* ~"Řekni mi víc o svém bratrovi."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8506 /* ~"Řekni mi víc o svém otci."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8507 /* ~"Řekni mi víc o svém otci."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8508 /* ~"Řekni mi víc o svém otci."~ */ GOTO 26
  IF ~~ THEN REPLY #8509 /* ~"Jasně. Můžeš mi odpovědět na pár otázek?"~ */ GOTO 18
  IF ~~ THEN REPLY #8510 /* ~"Děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 15.5 18.4 18.6
  SAY #8511 /* ~Do jejího hlasu se vplíží stín nepřátelství. "Můj bratr - jak víš - čeká jen na rozmar kata. Můj otec, což můžeš ale nemusíš vědět, putuje daleko široko přes mnohovesmír, hledajíc smysl, jenž většina smrtelníků musí nejprve pochopit."~ */
  IF ~~ THEN REPLY #8512 /* ~"Řekni mi víc o svém bratrovi."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8513 /* ~"Řekni mi víc o svém otci."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8514 /* ~"Řekni mi víc o svém otci."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8515 /* ~"Řekni mi víc o svém otci."~ */ GOTO 26
  IF ~~ THEN REPLY #8516 /* ~"Jasně. Můžeš mi odpovědět na pár otázek?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 15.4 18.5
  SAY #8517 /* ~"Můj bratr Saros je, doufejme, díky svým zkušenostem moudrý mládenec, zatímco můj otec je zde faktorem, člověkem, jehož cesty ho zavedly daleko od Velké Slévárny až do říší, o nichž se většině smrtelníků ani nesní."~ */
  IF ~~ THEN REPLY #8518 /* ~"Řekni mi víc o svém bratrovi."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8519 /* ~"Řekni mi víc o svém otci."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8520 /* ~"Řekni mi víc o svém otci."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8521 /* ~"Řekni mi víc o svém otci."~ */ GOTO 26
  IF ~~ THEN REPLY #8522 /* ~"Jasně. Můžeš mi odpovědět na pár otázek?"~ */ GOTO 18
  IF ~~ THEN REPLY #8523 /* ~"Děkuji. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 22 // from: 15.6 18.7 32.0
  SAY #8524 /* ~"Nevím, jak jsem na to přišla. Mám dojem, že je to něco, co bylo vždy mou součástí. Mohu se jen dohadovat, že mé předešlé životy a mé víry v toto mi daly zvláštní schopnost nahlédnout v nitro přírody. Jsem obdarována nadaním vidět část Potenciálu v každém bytí. Čtením pravého jména vrytého v mysli smrtelníků a drobnou odlišností v jeho vyslovení, jsem schopna změnit povahu tohoto Potenciálu, tedy změnit povahu jeho nositele."~ */
  IF ~~ THEN REPLY #8525 /* ~"Můžeš mě tuhle dovednost naučit?"~ */ GOTO 28
  IF ~~ THEN REPLY #8526 /* ~"Můžeš mě změnit?"~ */ GOTO 28
  IF ~~ THEN REPLY #8527 /* ~"Zajímavé. Odpověz mi na další otázky."~ */ GOTO 18
  IF ~~ THEN REPLY #8528 /* ~"Vesmír působí ve zvláštních drahách. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 21.0
  SAY #8529 /* ~"Saros je drzý, impulsivní mladík, snadno se odevzdávající své dospělosti. Je plný průbojného mládí, dychtivý dokázat sám sobě, že se vyrovná všemu ve sférách. Jsem přesvědčená, že on sám se cítí být více Vnímavým než Božím člověkem. Mou víru ospravedlňuje, že Vnímaví jsou nejméně zralým společenstvím Sigilu."~ */
  IF ~~ THEN REPLY #8530 /* ~"Proč jsou nejméně zralí?"~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8531 /* ~"Pověz mi o svém otci."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8532 /* ~"Pověz mi o svém otci."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8533 /* ~"Pověz mi o svém otci."~ */ GOTO 26
  IF ~~ THEN REPLY #8534 /* ~"Odpověz mi na další otázky, ano?"~ */ GOTO 18
  IF ~~ THEN REPLY #8535 /* ~"Díky... a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 23.1
  SAY #8536 /* ~"Můj otec je jeden z vůdců Věřících v pramen a po celý svůj život se pevně držel víry, že jsme tu za určitým úmyslem. Mohu jen doufat, že stále lpí na své víře a věří, že jeho děti jej milují."~ */
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8537 /* ~"Vyřídím mu tedy, jak vám na něm záleží. Můžeš mi odpovědět na nějaké další otázky?"~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",2)
~ THEN REPLY #8538 /* ~"Vypadá jako fajn chlap. Odpověz mi na pár dalších otázek, ano?"~ */ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",1)
~ THEN REPLY #8539 /* ~"Vypadá jako fajn chlap. Sbohem."~ */ EXIT
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8540 /* ~"Vyřídím mu tedy, jak vám na něm zaleží. Sbohem."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
!Dead("Sandoz")
~ THEN BEGIN 25 // from: 19.2 20.2 21.2 23.2
  SAY #8541 /* ~"Děkuji ti za tvá slova, můj otec Sandoz je živ a zdráv. Doufám jen, že cokoliv ho na tuto cestu přivedlo - nevěřím, že by to chtěl ze své vlastní vůle - zaplatí za svůj zločin. Co dalšího pro tebe mohu udělat?"
~ */
  IF ~~ THEN REPLY #8542 /* ~"Odpověz mi na pár otázek."~ */ GOTO 18
  IF ~~ THEN REPLY #8543 /* ~"Nic. Sbohem."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
Dead("Sandoz")
~ THEN BEGIN 26 // from: 19.3 20.3 21.3 23.3
  SAY #8544 /* ~"Můj otec je mrtvý."~ */
  IF ~~ THEN REPLY #8545 /* ~"Je mi líto. Můžeš mi odpovědět na pár otázek?"~ */ GOTO 18
  IF ~~ THEN REPLY #8546 /* ~"Err... dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0
  SAY #8547 /* ~"Nechci. On byl vždycky impulsivní, chtěl dokázat svoji udatnost proti tomuto krutému vesmíru - a teď nemůže. Nechci tu metat vinou a nechci o tom ani mluvit. Chceš-li vědět víc, zeptej se mne později. Sbohem."~ */
  IF ~~ THEN REPLY #8548 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.0 22.1
  SAY #8549 /* ~"Mohu tě změnit, ale nemohu tě učit - je to jako učit slepce rozpoznávat barvy, nebo hluchého rozpoznat zvuk. A já tě *chci* změnit, dohodneme-li se na ceně."~ */
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",0)
~ THEN REPLY #8550 /* ~"Jaká je cena?"~ */ GOTO 30
  IF ~~ THEN REPLY #8551 /* ~"Nemyslím, že by to bylo až tak fér."~ */ GOTO 31
  IF ~~ THEN REPLY #8552 /* ~"Zapomeň na to. Odpověz mi na jiné otázky."~ */ GOTO 18
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",1)
~ THEN REPLY #8553 /* ~"Jaká je cena?"~ */ GOTO 43
  IF ~~ THEN REPLY #61301 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0
  SAY #8554 /* ~"Proč jsou tak nezralí? Protože, stejně jako děti, nerozumí, že je něco víc za světem smyslů, za tím, co člověk může vidět, slyšet, ochutnat, dotknout se, přivonět. Rozhlédni se kolem sebe. Jsi ve Vnějších sférách. Toto je víra tvořící hmotu - ale neznamená to, že tato zdánlivě pevná látka může být pochopena smysly. Toto je víra - nic fyzického tomu nemůže odpovídat."~ */
  IF ~~ THEN REPLY #8555 /* ~"Jasně. Promluvme si o něčem jiném."~ */ GOTO 18
  IF ~~ THEN REPLY #8556 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #8557 /* ~"Řekni. Souhlasíš s filosofií Božích lidí?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #8558 /* ~Pravda: "Ano."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
SetGlobal("Sarossa_ChangeUp","GLOBAL",1)
~ JOURNAL #67283 /* ~Řekl jsem čarodějnici Sarosse o mé víře v Boží Lidi a ona mě obdarovala moudrostí. Z nějakého důvodu se opravdu cítím... moudřejší.~ */ GOTO 32
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8559 /* ~Lež: "Ano."~ */ JOURNAL #67282 /* ~Lhal jsem čarodějnici Sarosse o mé víře v Boží Lidí a ta bestie ze mne jediným slovem vysála mou sílu.~ */ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8559 /* ~Lež: "Ano."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Lež: "Ano."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Lež: "Ano."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8560 /* ~"Ne."~ */ GOTO 33
  IF ~~ THEN REPLY #8561 /* ~"Už nevím, co bych ti řekl víc."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY #8562 /* ~"Ne. To není fér. Ale je to můj dar a toto jsou mé zkoušky, a já si zvolím, jak se svým darem naložím. A teď. Jak ti mohu pomoci?"~ */
  IF ~~ THEN REPLY #8563 /* ~"Odpověz mi na otázky."~ */ GOTO 18
  IF ~~ THEN REPLY #8564 /* ~"Nemůžeš, rozhodně ne teď. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #8565 /* ~"Pak necítím obavy z toho, že ty budeš sdílet můj dar." Pronáší tajemnou slabiku, slabiku, jež tě roztřese až k úplným základům, a tvé maso se cítí nějak silnější.~ */
  IF ~~ THEN REPLY #8566 /* ~"Jak si to udělala?"~ */ GOTO 22
  IF ~~ THEN REPLY #8567 /* ~"Díky ti! Odpověz mi na nějaké otázky, ano?"~ */ GOTO 18
  IF ~~ THEN REPLY #8568 /* ~"Díky ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #8569 /* ~"Nemáš rád filozofii? Proč ne?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #8570 /* ~"Protože už jsem se přidal ke Spalovačům."~ */ GOTO 35
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #8571 /* ~"Protože už jsem se přidal k Vnímavým."~ */ GOTO 35
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #8572 /* ~"Protože už jsem se přidal k Anarchistům."~ */ GOTO 35
  IF ~~ THEN REPLY #8573 /* ~"Myslím, že je horší než Spalovači. Přinejmenším nekáží - přijmou a jdou dál."~ */ GOTO 35
  IF ~~ THEN REPLY #8574 /* ~"Ještě o tom přemýšlím. Přesvědči mě."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.6 33.4
  SAY #8575 /* ~"Nauč se o nás víc. Připoj se ke společenství úplně. Nejsi-li ještě připraven, jdi si promluvit s Keldorem z Durianu. On je faktorem, co se stará o nábor nových členů. Najdeš ho tady ve Velké Hale. Sbohem."~ */
  IF ~~ THEN REPLY #8576 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 33.2 33.3
  SAY #8577 /* ~"Pak se nebudu pokoušet vyvracet ti něco, v co věříš. Co dalšího pro tebe mohu udělat?"~ */
  IF ~~ THEN REPLY #8578 /* ~"Můžeš mi odpovědět na pár otázek."~ */ GOTO 18
  IF ~~ THEN REPLY #8579 /* ~"Nic. Sbohem."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 36 // from:
  SAY #8580 /* ~Vidíš mladou ženu. Jak se k ní blížíš, její oči se upřeně zadívají do tvých. Máš nepříjemný pocit, že se nezajímá jen o jejich barvu - zdá se, že její upřený pohled proniká mnohem hlouběji. "Zdravím, cizinče. Jak plynou tvé dny?"~ */
  IF ~~ THEN REPLY #8581 /* ~"Dost dobře. Mohla bys mi odpovědět na pár otázek."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8582 /* ~"Ty jsi Sarossa? Potřebuji s tebou mluvit o tvém otci."~ */ GOTO 39
  IF ~~ THEN REPLY #8583 /* ~"Dost dobře. Sbohem."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 37 // from:
  SAY #8584 /* ~"Zdravím, zraněný. Co ode mě chceš?"~ */
  IF ~~ THEN REPLY #8585 /* ~"Odpovědi."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8586 /* ~"Potřebuji s tebou mluvit o tvém otci."~ */ GOTO 39
  IF ~~ THEN REPLY #8587 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 18.2
  SAY #8588 /* ~"Já jsem Sarossa, dcera Sandozova, jednoho z faktorů Božích lidí."~ */
  IF ~~ THEN REPLY #8589 /* ~"Můžeš mi odpovědět na pár otázek?"~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8590 /* ~"Potřebuji s tebou mluvit o tvém otci."~ */ GOTO 39
  IF ~~ THEN REPLY #8591 /* ~"Jasně. Děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.1 36.1 37.1 38.1
  SAY #8592 /* ~"Co je s ním?"~ */
  IF ~~ THEN REPLY #8593 /* ~"Zamkl se ve své věži a vyhrožuje, že se zabije. Můžeš mi o něm říct něco, co mi umožní mu v tom zabránit?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8594 /* ~"Lžeš! Můj otec je na cestách! Ještě pár dní, přinejmenším, by se neměl vrátit!"~ */
  IF ~~ THEN REPLY #8595 /* ~"Jasně. Promluv si s Keldorem, když mi nevěříš. Žádám tě o pomoc, dokud je tvůj otec naživu."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 41
  IF ~~ THEN REPLY #8596 /* ~"Ty mi nevěříš? Tak fajn. Padne to na tvou hlavu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #8597 /* ~"Já jen, možná to tak mohlo být." Zastaví se a upřeně se na tebe dívá. "Ty mluvíš pravdu, že? Nevidím v tvém srdci žádný klam. V pořádku. Tohle je to, co bych si přála říct svému otci: Celý život je jen zkouškou. Nikdo se nesmí domnívat, že může skočit přímo k jeho konci. To není odpověď. Jen Strážci zkázy a Spalovači věří v úplný rozklad - a ty bys je v tom neměl utvrdit. Pamatuj si to."~ */
  IF ~~ THEN REPLY #8598 /* ~"Doručím ten vzkaz. Ale nejprve bych se tě chtěl zeptat na pár otázek."~ */ GOTO 18
  IF ~~ THEN REPLY #8599 /* ~"Doručím ten vzkaz. Sbohem."~ */ EXIT
END

IF WEIGHT #7 ~  False()
Global("G_Test2","GLOBAL",11)
~ THEN BEGIN 42 // from:
  SAY #8600 /* ~"Jak se odvažuješ ke mně promluvit, když mého bratra poslals čekat na ostří kata? Chtěla bych vyrvat vůli tvé duše, za tu bolest, kterou jsi naší rodině způsobil."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8601 /* ~"Saros byl tvůj bratr?"~ */ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8602 /* ~"Je mi líto, Sarosso. Byl vinen a jakékoliv pokrevní příbuzenství to nemůže změnit."~ */ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8603 /* ~"Saros byl tvůj bratr?"~ */ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8604 /* ~"Je mi líto, Sarosso. Byl vinen a jakékoliv pokrevní příbuzenství to nemůže změnit."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8605 /* ~"Oba, on a Thildon, byli vinni, byť různými zločiny. Oba dva se musí podívat do tváře zákonu."~ */ GOTO 5
  IF ~~ THEN REPLY #8606 /* ~"Nemohu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 28.3
  SAY #61302 /* ~"Již jsem vyřkla slova, která ti změní srdce. Zbytek jej pak bude následovat."~ */
  IF ~~ THEN REPLY #61303 /* ~"Dobrá. Pak mi tedy odpověz na pár otázek."~ */ GOTO 18
  IF ~~ THEN REPLY #61304 /* ~"Sbohem."~ */ EXIT
END
