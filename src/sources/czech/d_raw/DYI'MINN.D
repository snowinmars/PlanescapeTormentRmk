// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYI'MINN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DYI'MINN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44367 /* ~Ten podivný mužík se žlutou kůží si tě chvíli prohlíží. Oči se mu rozšířily a vytáhl meč. "Pse! Prokletý milovníku Githzerai!" Sekl po tobě!~ */
  IF ~~ THEN REPLY #44368 /* ~Zaútoč.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44369 /* ~Uteč.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 1 // from:
  SAY #44372 /* ~Muž má hrubou, tuhou kůži s nádechem žluté a hubené rysy. Nos vysoko posazený v hranaté tváři a uši do špičky. Jeho tělo pokrývají linie tetování a jizev. Je oděn ve zvláštních okázalých kamaších, navržených spíš pro okrasu, než do boje. Když jsi k němu přistoupil, pevně tě sledoval očima jako dva malé černé kamínky. "Jsi člověk hledající vzpomínky," řekl rovnou. "Mohu ti pomoci."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44375 /* ~"Ty jsi githyanki, že?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44378 /* ~"Kdo a co jsi?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44380 /* ~"Zdravím tě, šermíři."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44385 /* ~"Jak to víš?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44388 /* ~"Jak mi můžeš pomoci?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44390 /* ~"Nemám zájem, díky. Sbohem."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 2 // from:
  SAY #44391 /* ~Muž má hrubou, tuhou kůži s nádechem žluté a hubené rysy.  Nos vysoko posazený v hranaté tváři a uši do špičky. Jeho tělo pokrývají linie tetování a jizev. Je oděn ve zvláštních okázalých kamaších, navržených spíš pro okrasu, než do boje. Když jsi k němu přistoupil, pevně tě sledoval očima jako dva malé černé kamínky. "Jsi člověk hledající vzpomínky," řekl rovnou. "Mohu ti pomoci."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Ty jsi githyanki, že?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Kdo a co jsi?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Zdravím tě, šermíři."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Jak to víš?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Jak mi můžeš pomoci?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44402 /* ~"Nemám zájem, díky. Sbohem."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 21.0 22.0
  SAY #44404 /* ~"Mám to potěšení pocházet z toho lidu." Jeho hlas je bez výrazu. "Přeješ si mou pomoc při oživení tvých vzpomínek?"~ */
  IF ~~ THEN REPLY #44405 /* ~"Kdo a co jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #44406 /* ~"Hmm. Dnes ne, díky."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 6.0 21.1 22.1
  SAY #44407 /* ~"Jsem Yi'minn. Jsem githyankiský rybář. Mí lidé jsou nesporní vládci Astrální sféry, kam bohové chodí umírat a kudy vzpomínky volně proplouvají jako v jezeře. Mou povinností je schraňovat jádra paměti mrtvých a uchovávat je pro informace v nich obsažené. Mohu vyhledat tvé vzpomínky. Jen musíš zaplatit cenu."~ */
  IF ~~ THEN REPLY #44408 /* ~"Jaká cena by to měla být?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44410 /* ~"Nemám zájem, díky. Sbohem."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 21.2 22.2
  SAY #44413 /* ~Tvář mu zkameněla a jeho svaly se napjaly, když mu ruka mimoděk vyletěla k jílci meče. "Oslovil jsi mě slovy githzeraiských psů. Má to být z nevědomosti, nebo urážka?"~ */
  IF ~~ THEN REPLY #44416 /* ~"Nevěděl jsem."~ */ GOTO 12
  IF ~~ THEN REPLY #44417 /* ~"Urážka."~ */ GOTO 11
  IF ~~ THEN REPLY #44419 /* ~"Ty nejsi githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44422 /* ~"To vůbec ne."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 21.3 22.3
  SAY #44425 /* ~"Vypadáš na to. Při tom, co dělám, jsem už viděl hodně takových."~ */
  IF ~~ THEN REPLY #44432 /* ~"Kdo a co jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #44434 /* ~"Nech mě být. Nemám zájem o tvé šarlatánství."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4 21.4 22.4
  SAY #44437 /* ~"Nejsem snad githyanki? Nežijeme snad na polích Astrálu? Jsem rybář mizících vzpomínek. Znám způsob, jak paměť upoutat. Vím, jak ji polapit." Zmlkl a spiklenecky se naklonil dopředu. "Dokážu ji *obnovit*. Vše, co musíš udělat, je zaplatit cenu."~ */
  IF ~~ THEN REPLY #44439 /* ~"Jaká je ta cena?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44441 /* ~"Co mi řekneš o Astrální sféře?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #44445 /* ~"Nemám zájem. Sbohem."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.5 2.5 3.1 4.1 6.1 7.2 9.1 10.1 16.1 18.1 20.1
  SAY #44447 /* ~"Nezapomeň na mou nabídku, člověče. Zatoužíš-li po svých vzpomínkách, najdeš mě tady. Pamatuj na má slova."~ */
  IF ~~ THEN REPLY #44450 /* ~"Udělám to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 16.0 18.0 20.0 21.5 22.5 23.0
  SAY #44455 /* ~"Je to pouze věc trochy mincí. Cena je rozumná. Žádám jedno sto. Ty určíš cenu vzpomínek, které najdu, a zaplatíš podle toho."~ */
  IF ~~ THEN REPLY #44457 /* ~"Zní to dobře. Co mám udělat?"~ */ GOTO 10
  IF ~~ THEN REPLY #44458 /* ~"Snad později. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 23.1
  SAY #44459 /* ~"Abych mohl tvým vzpomínkám nalíčit návnadu, budu potřebovat část tvé nynější paměti. Taktéž to vyžaduje tiché místo k soustředění. Když mě doprovodíš, odebereme se na takové místo a já tě učiním opět celistvým. Půjdeme sami, bez společníků."~ */
  IF ~~ THEN REPLY #44460 /* ~"Jsme dohodnuti. Jdeme."~ */ DO ~SetGlobal("Yiminn_Trap","AR0500",1)
StartCutSceneMode()
StartCutSceneEx("Yiminn",FALSE)
~ EXIT
  IF ~~ THEN REPLY #44461 /* ~"Teď hned asi ne."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #44462 /* ~"Tuším tvou past, githyankiský pse. Tví *illithidští* páni by tě měli držet na řetězu."~ */ DO ~AddexperienceParty(1000)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 5.1 10.2 12.3 13.2 19.1 25.2 26.1 27.0
  SAY #44463 /* ~Beze slova, lehce jako vánek, vytáhl rybář zbraň a prudce na tebe zaútočil!~ */
  IF ~~ THEN REPLY #44464 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44465 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 19.0
  SAY #44466 /* ~"Teď smíš žebrat o odpuštění." Stojí jako socha, jen po tobě šlehá očima.~ */
  IF ~~ THEN REPLY #44467 /* ~"Máš mou omluvu."~ */ GOTO 18
  IF ~~ THEN REPLY #44468 /* ~"Žebrat? U tebe?"~ */ GOTO 13
  IF ~~ THEN REPLY #44469 /* ~"Cože, nejsi rád, když tě nazývají githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44470 /* ~"Ani mě nenapadne."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #44471 /* ~"Ano." Vycenil zuby. "Vyslovil jsi neomluvitelnou urážku. Můžeš žebrat o odpuštění."~ */
  IF ~~ THEN REPLY #44472 /* ~"Máš mou omluvu."~ */ GOTO 18
  IF ~~ THEN REPLY #44473 /* ~"Cože, nejsi rád, když tě nazývají githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44474 /* ~"Ani mě nenapadne."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 5.2 12.2 13.1
  SAY #44475 /* ~"Já jsem *githyanki*. Nemám nic společného s githzeraiskými psy. Můžeš říct totéž o sobě?"~ */
  IF ~~ THEN REPLY #44476 /* ~Pravda: "Znal jsem nějaké githzeraie. Milí lidé."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #44477 /* ~Lež: "Znal jsem nějaké githzeraie. Milí lidé."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44478 /* ~Pravda: "Ne, githzeraiové jsou pro mě míň než nic."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44479 /* ~Lež: "Ne, githzeraiové jsou pro mě míň než nic."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44480 /* ~Pravda: "Ne, githzeraiové jsou pro mě míň než nic."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 17
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44481 /* ~Lež: "Ne, githzeraiové jsou pro mě míň než nic."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 17.0
  SAY #44483 /* ~"Takže tvá náklonnost náleží githzeraiským psům? Jsi mrtvola!" Tasil svou šavli a zaútočil!~ */
  IF ~~ THEN REPLY #44484 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44488 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3
  SAY #44490 /* ~"Pak na tom nezáleží. Je to jedno. Mluvme o jiných záležitostech. Máš vzpomínky, které chceš znovu získat. Já je dokážu obnovit. Musíme se jen dohodnout na ceně."~ */
  IF ~~ THEN REPLY #44491 /* ~"Jaká je ta cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44492 /* ~"Právě teď nemám zájem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 14.4 14.5
  SAY #44493 /* ~Jeho úšklebek nezmizel, ani napětí vyzařující z jeho těla. "Říkáš, že pro tebe nic neznamenají, ale oslovil jsi mě jejich pozdravem. Řekni pravdu."~ */
  IF ~~ THEN REPLY #44494 /* ~"Dostal jsi mě. Nejsou to špatní lidé."~ */ GOTO 15
  IF ~~ THEN REPLY #44495 /* ~"Jsou nic. Připouštím svou neznalost, připouštím, že jsem se přeřekl, a omlouvám se. Lepší?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 12.0 13.0 17.1
  SAY #44496 /* ~"To je dobře. Githzerai mají krev jako voda a jejich semeno je slabé. Mluvme o jiných záležitostech: Máš vzpomínky, které chceš znovu získat. Já je dokážu obnovit. Musíme se jen dohodnout na ceně."~ */
  IF ~~ THEN REPLY #44497 /* ~"Jaká je ta cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44498 /* ~"Dovol, abych se kvůli tomu k tobě vrátil později."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #44499 /* ~"Musíš být jedno nebo druhé - vypočítavý nebo neznalý. Takže?"~ */
  IF ~~ THEN REPLY #44500 /* ~"Bylo to z neznalosti."~ */ GOTO 12
  IF ~~ THEN REPLY #44501 /* ~"Byla to urážka."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 7.1
  SAY #44502 /* ~"Je to neprostor, mimoprostor, zcela tvořený jen myšlenkami. Je domovem mého lidu. Jakmile lidé zemřou, jejich duše odlétají do Vnějších sfér. Když procházejí Astrální sférou, svléknou své vzpomínky a nechají je se vznášet ve Stříbrném moři. "Vím, jak kráčet po březích toho moře. Mohu ti pomoci obnovit ztracené vzpomínky. Vše, co zbývá, je dohodnout se o ceně."~ */
  IF ~~ THEN REPLY #44503 /* ~"Jaká je ta cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44505 /* ~"Dovol, abych se kvůli tomu k tobě vrátil později."~ */ GOTO 8
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 21 // from:
  SAY #44504 /* ~"Pátráš po svých vzpomínkách, je to pravda, člověče? Mohu je pro tebe získat. Tvá ztráta se zdá stále větší. Zaplatíš jen malou cenu pro klid duše."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Ty jsi githyanki, že?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Kdo a co jsi?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Zdravím tě, šermíři."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Jak to víš?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Jak mi můžeš pomoci?"~ */ GOTO 7
  IF ~~ THEN REPLY #44506 /* ~"Jakou cenu?"~ */ GOTO 9
  IF ~~ THEN REPLY #44507 /* ~"Pověz mi víc o tvém národě."~ */ GOTO 23
  IF ~~ THEN REPLY #44508 /* ~"Dnes ne, díky. Sbohem."~ */ GOTO 24
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 22 // from:
  SAY #44509 /* ~"Pátráš po svých vzpomínkách, je to pravda, člověče? Mohu je pro tebe získat. Tvá ztráta se zdá stále větší. Zaplatíš jen malou cenu pro klid duše."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Ty jsi githyanki, že?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Kdo a co jsi?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Zdravím tě, šermíři."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Jak to víš?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Jak mi můžeš pomoci?"~ */ GOTO 7
  IF ~~ THEN REPLY #44510 /* ~"Jakou cenu?"~ */ GOTO 9
  IF ~~ THEN REPLY #44511 /* ~"Pověz mi víc o tvém národě."~ */ GOTO 23
  IF ~~ THEN REPLY #44512 /* ~"Dnes ne, díky. Sbohem."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.6 22.6
  SAY #44513 /* ~"Odpověď je skryta v tvé ztracené paměti. Dovol mi začít a dovíš se."~ */
  IF ~~ THEN REPLY #44514 /* ~"Jaká je ta cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44515 /* ~"V čem je háček?"~ */ GOTO 10
  IF ~~ THEN REPLY #44516 /* ~"Nemyslím, že mě to ještě zajímá."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 21.7 22.7 23.2
  SAY #44517 /* ~"Až změníš názor - a to přijde, člověče, to přijde - vrať se sem."~ */
  IF ~~ THEN REPLY #44518 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 25 // from:
  SAY #44519 /* ~Muž má hrubou, tuhou kůži s nádechem žluté a hubené rysy. Nos vysoko posazený v hranaté tváři a uši do špičky. Jeho tělo pokrývají linie tetování a jizev. Je oděn ve zvláštních okázalých kamaších, navržených spíš pro okrasu, než do boje. Když jsi k němu přistoupil, pevně tě sledoval očima jako dva malé černé kamínky. Jak jsi otevřel ústa, pohybem ruky tě zarazil: "Nevyslechnu tě, člověče. Nepromlouvej s jedním z Národa."~ */
  IF ~~ THEN REPLY #44520 /* ~"O čem to mluvíš?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~~ THEN REPLY #44521 /* ~"Mám jen pár otázek..."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44522 /* ~"Tvůj 'Národ' je smečka psů, kteří se nikdy neměli utrhnout z řemenu *illithidských* pánů."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44523 /* ~"Chtěl jsem se jen ctěného githyanki zeptat na pár věcí."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 28
  IF ~~ THEN REPLY #44524 /* ~"Vážně skvělé."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",1)
!NearbyDialog("DDakkon")
~ THEN BEGIN 26 // from:
  SAY #44525 /* ~"Řekl jsem ti, abys se mnou už nepromlouval. Jsou snad všichni lidé tak pomalí, jako ty?"~ */
  IF ~~ THEN REPLY #44526 /* ~"Jen jsem znát pár odpovědí..."~ */ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44527 /* ~"Tvůj 'Národ' je smečka psů, kteří se nikdy neměli utrhnout z řemenu *illithidských* pánů."~ */ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44528 /* ~"Chtěl jsem se jen ctěného githyanki zeptat na pár věcí."~ */ GOTO 28
  IF ~~ THEN REPLY #44529 /* ~"Tak to pusť z hlavy."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 26.0
  SAY #44530 /* ~Zpříma se na tebe dívá, rty stažené do úzké linky. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44531 /* ~"Tvůj 'Národ' je smečka psů, kteří se nikdy neměli utrhnout z řemenu *illithidských* pánů."~ */ GOTO 11
  IF ~~ THEN REPLY #44532 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3 26.2
  SAY #44533 /* ~Na chvíli zmlkl a jeho oči se pevně opřely do tvých. "Skláním se před tvou ctí, budiž jsou ti mé znalosti živou vodou."~ */
  IF ~~ THEN REPLY #44534 /* ~"Můžeš mi povědět něco o sobě?"~ */ GOTO 29
  IF ~~ THEN REPLY #44535 /* ~"Můžeš mi povědět něco o svém národě?"~ */ GOTO 30
  IF ~~ THEN REPLY #44536 /* ~"Můžeš mi povědět něco o githzeraiích?"~ */ GOTO 31
  IF ~~ THEN REPLY #44537 /* ~"No dobře. Sbohem."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #44538 /* ~"Jsem Yi'minn, rybář. Chytám do sítí vzpomínky mrtvých uvízlé v Astrální sféře."~ */
  IF ~~ THEN REPLY #44539 /* ~"Dokázal bys najít mou paměť?"~ */ GOTO 32
  IF ~~ THEN REPLY #44540 /* ~"Co mi můžeš povědět o Astrální sféře?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #44541 /* ~"Pokud ctíš náš lid, jakto, že o něm nic nevíš?" ~ */
  IF ~~ THEN REPLY #44542 /* ~"Chci vědět víc, než už znám."~ */ GOTO 38
  IF ~~ THEN REPLY #44543 /* ~"Jen jsem tě chtěl donutit, abys se mnou mluvil."~ */ GOTO 38
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #44544 /* ~"Ti jsou špinavý odpad. Žebrají o slitování. Jejich krev je řídká jako voda, stejně tak jejich mysl." Vycenil zuby. "Je mou povinností a mým potěšením hnát je a jejich poskoky do bolestné zkázy."~ */
  IF ~~ THEN REPLY #44545 /* ~"Pěkné. Můžeš mi odpovědět ještě na něco?"~ */ JOURNAL #38976 /* ~Zjistil jsem rivalitu mezi githyanki a githzerai. Zdánlivě byli stejnou rasou po celá tisíciletí a nyní jejich nenávist mezi sebou nemá hranic.~ */ GOTO 35
  IF ~~ THEN REPLY #44546 /* ~"Tak sbohem."~ */ JOURNAL #38976 /* ~Zjistil jsem rivalitu mezi githyanki a githzerai. Zdánlivě byli stejnou rasou po celá tisíciletí a nyní jejich nenávist mezi sebou nemá hranic.~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #44556 /* ~"Dokážu... za jistou cenu."~ */
  IF ~~ THEN REPLY #44558 /* ~"Jaká je cena?"~ */ GOTO 36
  IF ~~ THEN REPLY #44559 /* ~"Zaplatím cokoli."~ */ GOTO 36
  IF ~~ THEN REPLY #44560 /* ~"Šlo by uzavřít jiný obchod?"~ */ GOTO 36
  IF ~~ THEN REPLY #44561 /* ~"Zapomeň na to. Zodpověz mi pár otázek."~ */ GOTO 35
  IF ~~ THEN REPLY #44562 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #44563 /* ~"Je to neprostor, mimoprostor, zcela tvořený jen myšlenkami. Je domovem mého lidu. Jakmile lidé zemřou, jejich duše odlétají do Vnějších sfér. Když procházejí Astrální sférou, svléknou své vzpomínky a nechají je se vznášet ve Stříbrném moři."~ */
  IF ~~ THEN REPLY #44564 /* ~"Chápu. Můžeš mi odpovědět ještě na něco?"~ */ GOTO 35
  IF ~~ THEN REPLY #44565 /* ~"Díky. Sbohem."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 28.3 31.1 32.4 33.1 35.0
  SAY #44566 /* ~"Již jsem ti jednou odpověděl. Podruhé mě neslovuj."~ */
  IF ~~ THEN REPLY #44567 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.0 32.3 33.0 36.1 36.2
  SAY #44568 /* ~"Víc odpovědí ti neposkytnu. Vzdal jsi čest a já ti oplatil stejně."~ */
  IF ~~ THEN REPLY #44569 /* ~"Jestli to tak má být, sbohem."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 32.0 32.1 32.2
  SAY #44570 /* ~"Má cena je dvě stě mincí - mé poslední slovo v této chvíli ."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44571 /* ~"Tady. Vezmi si ty peníze."~ */ DO ~TakePartyGold(200)
~ GOTO 37
  IF ~~ THEN REPLY #44572 /* ~"To trochu mnoho. Třeba bys mi odpověděl na další otázky..."~ */ GOTO 35
  IF ~~ THEN REPLY #44573 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44574 /* ~Githyanki vsunul tvé peníze do kapsy a řekl, "Navrať se v jednom týdnu, získám pro tebe vzpomínky. Nezmeškej."~ */
  IF ~~ THEN REPLY #44577 /* ~"No dobře. Sbohem."~ */ DO ~EscapeArea()
DestroySelf()
~ JOURNAL #39452 /* ~Dohodnul jsem se z githiankim Yi'minnem, že pro mě získá mé vzpomínky z Astrální Sféry. Řekl mi, ať se s ním setkám v Dolní čtvrti za týden.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.0 30.1
  SAY #44579 /* ~"Domníváš se, že tvůj lehký trik spustil přes mé oči závoj? Jdi. Splatil jsem tvou poctu svými odpověďmi a víc už nepromluvím."~ */
  IF ~~ THEN REPLY #44580 /* ~"No dobře. Sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Yiminn_Trap","AR0500",1)
~ THEN BEGIN 39 // from:
  SAY #44583 /* ~Nálada githyankiho se změnila v něco ještě mnohem odpornějšího, než předchozí opovržení. "Nyní, člověče, odhoď svou barevnou masku a pověz nám, cos mezi zdmi Sigilu řekl a učinil pro githzeraiské psy."~ */
  IF ~~ THEN REPLY #44586 /* ~"Nepůjdeme se poohlédnout po mých vzpomínkách?"~ */ GOTO 40
  IF ~~ THEN REPLY #44588 /* ~"To ti nepovím."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44590 /* ~"Jen jsem ulevil bolesti githzeraiských žen."~ */ GOTO 42
  IF ~~ THEN REPLY #44594 /* ~"Jen jsem se chtěl na něco přeptat."~ */ GOTO 43
  IF ~~ THEN REPLY #44596 /* ~"Lhal jsem, abych je zmátl."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #44598 /* ~"Jediný způsob, jak bys mohl cestovat v Astrálních sférách, je v řetězech, člověče. Máš poslední šanci říct, cos uvnitř Sigilu pověděl a učinil pro githzeraie."~ */
  IF ~~ THEN REPLY #44601 /* ~"Neřeknu ti to."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44603 /* ~"Jenom jsem zbavil ženu githzerai bolesti."~ */ GOTO 42
  IF ~~ THEN REPLY #44605 /* ~"Jenom jsem se na něco ptal."~ */ GOTO 42
  IF ~~ THEN REPLY #44606 /* ~"Lhal jsem jim, abych je zmátl."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #44607 /* ~"V tom případě zemřeš." Vytáhl svou zbraň a útočí!"~ */
  IF ~~ THEN REPLY #44608 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44610 /* ~Nechej je, ať tě zabijí.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 39.2 40.1 40.2
  SAY #44611 /* ~"Lžeš jako githzeraiský pes, člověče. Jsi zrádná pijavice. Když tě zabijeme, prokážeme všem velkou službu." Vytáhl svou zbraň.~ */
  IF ~~ THEN REPLY #44612 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44613 /* ~Nechej je, ať tě zabijí.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 39.3 40.3
  SAY #44614 /* ~"Ne. Dívali jsme se a poslouchali. Tvá slova a tvé srdce tě zrazují, člověče. Připrav se na smrt."~ */
  IF ~~ THEN REPLY #44615 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44616 /* ~Nechej je, ať tě zabijí.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.4 41.1 42.1 43.1
  SAY #44617 /* ~Yi'minnova čepel projela tvým hrdlem. Padl jsi k zemi, krev stříká všude. Stojí nad tebou a baví se. "Vážně nic nevěděl, Al-midile?"~ */
  IF ~~ THEN DO ~IncrementGlobal("Death","GLOBAL",1)
~ EXTERN ~DALMIDIL~ 0
END

IF ~~ THEN BEGIN 45 // from:
  SAY #44618 /* ~"Pokud věříš, že jsou naše znalosti dostatečné, půjdeme. Posbírej naše válečníky, ať se můžeme přidat k naší bojové jednotce na Limbu."~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
StartCutSceneMode()
StartCutSceneEx("0500cut4",FALSE)
~ EXIT
END

IF WEIGHT #8 ~  NearbyDialog("DDakkon")
~ THEN BEGIN 46 // from:
  SAY #44619 /* ~Muž má hrubou, kožovitě vyhlížející, nažloutlou pokožku a vyhublý vzhled. Tvář má hranatou, nos malý a vysoko posazený, uši jsou zašpičatělé. Tělo mu pokrývá tetování a množství jizev. Je oblečen do podivné, křiklavě vyhlížející kůže, hodící se spíše na ozdobu, než na boj. Jeho oči jsou jako dva malé černé kamínky, které pozorně sledují tvůj příchod. Než ses k němu dostal dost blízko, Dak'kon se zarazil.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 149
END

IF ~~ THEN BEGIN 47 // from:
  SAY #44620 /* ~Githyanki sleduje tvůj příchod a úplně tě ignoruje. "Dak'kon-který-běduje-na-zdech-Shrak'at'loru... nečekané překvapení." Vytáhl svou zbraň.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 154
END

IF ~~ THEN BEGIN 48 // from:
  SAY #44621 /* ~Jak ses otočil, githyanki, který tě celou dobu sledoval, hlasitě vykřikl: "Obracíš se ke mně zády, Dak'kone-který-běduješ-na-zdech-Shrak'at'loru? Postavíš se mi s obnaženou ocelí, nebo dohlédnu, abys nosil na zádech znak své zbabělosti." Vytáhl svou zbraň.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 155
END

IF ~~ THEN BEGIN 49 // from: 50.1 51.1 52.2
  SAY #44622 /* ~Githyanki a Dak'kon se do sebe okamžitě pustili a buší do sebe jedna radost.~ */
  IF ~~ THEN REPLY #44623 /* ~Zaútoč na githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44624 /* ~Nechej je bojovat.~ */ DO ~ForceAttack("Dakkon",Myself)
Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #44625 /* ~Když Dak'kon přikývl, githyanki se štěkavě rozesmál. "Jsi zvířátko tohohle člověka, pse. Nejprve zrádce a potom otrok."~ */
  IF ~~ THEN REPLY #44626 /* ~"Budu mít tvé mlčení, nebo si vezmu tvůj jazyk."~ */ GOTO 51
  IF ~~ THEN REPLY #44627 /* ~"Dak'kone, zabij ho."~ */ GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #44628 /* ~Githyanki se uklonil a zašklebil se na Dak'kona. "V tom případě už teď není co říct. Oznámím svým lidem, že jsi složil přísahu otroka. Bude to pro ně velké potěšení."~ */
  IF ~~ THEN REPLY #44629 /* ~"Dost těch keců. Hledám vzpomínky."~ */ GOTO 52
  IF ~~ THEN REPLY #44630 /* ~"Dost. Dak'kone, zabij ho."~ */ GOTO 49
  IF ~~ THEN REPLY #44631 /* ~"Dost. Sbohem."~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #44632 /* ~"Vzpomínky? Nacházím vzpomínky poletující v Astrální sféře. Mohu je pro tebe získat... za rozumnou cenu."~ */
  IF ~~ THEN REPLY #44633 /* ~"Jaká je to cena?"~ */ GOTO 53
  IF ~~ THEN REPLY #44634 /* ~"Zapomeň na to. Jdeme."~ */ GOTO 55
  IF ~~ THEN REPLY #44635 /* ~"Dak'kone, zabij ho."~ */ GOTO 49
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #44636 /* ~"Má cena je dvě stě mincí - nic menšího nebude stačit."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44637 /* ~"Tady. Vezmi si ty peníze."~ */ DO ~TakePartyGold(200)
~ GOTO 56
  IF ~~ THEN REPLY #44638 /* ~"Obávám se, že nemám dost peněz. Asi půjdu."~ */ GOTO 55
  IF ~~ THEN REPLY #44639 /* ~"Zapomeň na to. Jdeme."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from:
  SAY #44640 /* ~"Celý mnohovesmír je naším bitevním polem, pse. Nejsou žádná bezpečná místa. Není žádný mír. Zemřeš." Githyanki útočí!~ */
  IF ~~ THEN REPLY #44641 /* ~Zaútoč na githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44642 /* ~Nechej je bojovat.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.2 52.1 53.1 53.2
  SAY #44643 /* ~"Odcházíš? Ne. Ne se srdcem zrádce z Shrak'at'loru." Githyanki útočí!~ */
  IF ~~ THEN REPLY #44644 /* ~Zaútoč na githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44645 /* ~Nechej je bojovat.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 53.0
  SAY #44646 /* ~"Tak pojď se mnou a nech za sebou své psí tělo."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 157
END

IF ~~ THEN BEGIN 57 // from:
  SAY #44647 /* ~"A ty budeš mít substanci jednoho, až s tebou skončím."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 158
END

IF ~~ THEN BEGIN 58 // from:
  SAY #44648 /* ~"To ještě uvidíme, ty githzeraiský pse!" Githyanki zuřivě zaútočil na Dak'kona.~ */
  IF ~~ THEN REPLY #44649 /* ~Zaútoč na githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44650 /* ~Nechej je bojovat.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
