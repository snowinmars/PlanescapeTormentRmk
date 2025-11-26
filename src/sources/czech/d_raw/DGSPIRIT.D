// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGSPIRIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGSPIRIT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32434 /* ~Spektrální postava se před tebou zmaterializovala ze tmy a rychle se pohnula tak, aby ti zablokovala cestu. Vznáší se před tebou a její kdysi lidské rysy jsou zkrouceny v masce bezmezné zuřivosti. "Znesvětitelé! Okamžitě opusťte toto místo!"~ */
  IF ~~ THEN REPLY #32444 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #32445 /* ~Rychle odejdi.~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #32435 /* ~Vzduch kolem tebe náhle prudce ochladnul, jak se před tebou objevuje Strážný Duch. Zase se jednou vznáší před tebou, jeho příznačná róba se třepetá, jako by na ní foukal nějaký věčný vánek.~ */
  IF ~  Global("Spirit_Quest","GLOBAL",0)
~ THEN REPLY #32446 /* ~"Počkej, duchu. Mám nějaké otázky..."~ */ GOTO 4
  IF ~  Global("Spirit_Quest","GLOBAL",1)
~ THEN REPLY #32447 /* ~"Počkej duchu. Chci ti pomoct s tím narušitelem, o kterém jsi mluvil."~ */ GOTO 8
  IF ~~ THEN REPLY #32448 /* ~"To nic. Sbohem."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #32436 /* ~"Odejdi!" Dunivý hlas se odráží chodbou. "Toto místo  je pro živé zapovězeno. Odejdi, dokud můžeš."~ */
  IF ~~ THEN REPLY #32449 /* ~"Nejdřív bych měl nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #32450 /* ~"Půjdu tam, kam se mi zlíbí... odstup, duchu."~ */ GOTO 3
  IF ~~ THEN REPLY #32451 /* ~"Jak si přeješ. Sbohem."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.1
  SAY #32437 /* ~"Drzost!" Pouhá hlasitost duchova řevu tě donutila zakrýt si uši dlaněmi. "Byl jsi varován... nemohu dovolit, aby bylo toto svaté místo odpočinku dále narušováno."~ */
  IF ~~ THEN REPLY #32452 /* ~"Byl už tady někdo jiný?"~ */ GOTO 5
  IF ~~ THEN REPLY #32453 /* ~"Jo, jo. Hele, jdi si najít nějaký malý děcko a dělej bububu na něj."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32454 /* ~"Když se nad tím tak zamyslím... asi půjdu. Sbohem."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #32438 /* ~"Hledej své odpovědi někde jinde. Toto místo je útočiště mrtvých. Nemohu dovolit narušení jejich odpočinku dotěrností dalšího nestoudného smrtelníka!"~ */
  IF ~~ THEN REPLY #32455 /* ~"Byl už tady někdo jiný?"~ */ GOTO 5
  IF ~~ THEN REPLY #32456 /* ~"Půjdu tam, kam se mi zlíbí... odstup, duchu."~ */ GOTO 3
  IF ~~ THEN REPLY #32457 /* ~"Jak si přeješ. Sbohem."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #32439 /* ~"Pokud to musíš vědět... ano, byl tady jiný narušitel, který dokonce i teď narušuje svatost těchto posvěcených prostor." Zlost v duchově hlasu opadá. Vypadá to, že ho toto přiznání rozesmutnilo. "Duše mých bratrů a sester pláčou, touží po míru."~ */
  IF ~~ THEN REPLY #32458 /* ~"Kdo je ten další narušitel?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #32459 /* ~"Proč ho nezaženeš?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #32460 /* ~"Když se nad tím tak zamyslím... asi půjdu. Sbohem."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32440 /* ~"Je to zlý zbabělec, který má velkou moc nad mrtvými. Něco v těchto síních hledá... co by to mohlo být, nebo proč to hledá, nevím."~ */
  IF ~~ THEN REPLY #32461 /* ~"Proč ho nezaženeš?"~ */ GOTO 7
  IF ~~ THEN REPLY #32462 /* ~"Když se nad tím tak zamyslím... asi půjdu. Sbohem."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #32441 /* ~"Nemohu. Zbabělec se zapečetil ve vnitřní komnatě Mauzolea. Vztyčil tam mocné ochrany, které mi brání v přístupu dovnitř. Odtamtud vyvolává svá temná umění, aby probudil mé příbuzné a přinutil je sloužit jeho zlovůli."~ */
  IF ~~ THEN REPLY #32463 /* ~"Možná bych ti mohl nějak pomoct.."~ */ GOTO 8
  IF ~~ THEN REPLY #32464 /* ~"Mám takový pocit, že potřebuješ pomoc jednoho narušitele, aby ses zbavil druhého."~ */ GOTO 8
  IF ~~ THEN REPLY #32465 /* ~"Když se nad tím tak zamyslím... asi půjdu. Sbohem."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 7.0 7.1
  SAY #32442 /* ~Duch zůstal několik okamžiků zticha. Téměř cítíš váhu jeho neživého pohledu. "Ano... ty bys mohl uspět tam, kde já zklamal. Pokud odpřísáhneš, že mě zbavíš toho zlovolníka, propustím tě. Co ty na to?"~ */
  IF ~~ THEN REPLY #32466 /* ~"Udělám to."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",2)
~ JOURNAL #31881 /* ~Slíbil jsem, že pomůžu duchovi, který hlídá Mauzoleum. Vypadá to, že se nějaký Nekromancer zapečetil ve vnitřních komnatách s mocnými ochranami, které ho brání před duchem. Musí to být ten, který je zodpovědný za "chodící mrtvé", kvůli kterým se tak stará Norochj. ~ */ GOTO 9
  IF ~~ THEN REPLY #32467 /* ~"Když se nad tím tak zamyslím... asi půjdu. Sbohem."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #32443 /* ~"Budiž." Duch pomalu mizí, dokud nezůstane pouze jeho beztělesný hlas. "Ale dej si pozor... Kráčej těmito síněmi opatrně, nebo se připojíš k ostatním v nekonečném odpočinku."~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Dead("Strahan")
~ THEN BEGIN 10 // from:
  SAY #32468 /* ~Jakmile vstoupíš do chodby, strážný duch se před tebou zmaterializoval. Tváří se laskavě. "Děkuji ti. Prokázal jsi mi velkou službu. Duchové mých společníků odpočívají v pokoji. Odejdi v míru... příteli." Přízrak se začíná ztrácet a zanechal tě samotného v opuštěných halách Mauzolea.~ */
  IF ~~ THEN REPLY #32469 /* ~Odejdi.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Spirit_Quest","GLOBAL",4)
SetGlobal("Mausoleum_Quest","GLOBAL",2)
~ JOURNAL #37705 /* ~Zabil jsem nekromancera, o kterém strážný duch mluvil. Jeho moc byla zlomena, žádní mrtví již nebudou procházet mauzoleem. Norochj bude rád. ~ */ EXIT
END
