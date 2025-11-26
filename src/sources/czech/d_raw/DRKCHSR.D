// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR~

IF ~  Global("RChaser","AR0400",0)
!Dead("Adyzoel")
~ THEN BEGIN 0 // from:
  SAY #15496 /* ~Špinavý muž v kápi se kolem sebe ostražitě rozhlíží. Všímáš si, že se neustále drží v blízkosti mladého šlechtice. Když si všimne, že jej pozorujete, rychle se snaží odejít.~ */
  IF ~~ THEN REPLY #15520 /* ~"Zdravím..."~ */ DO ~SetGlobal("Rchaser","AR0400",1)
~ GOTO 1
  IF ~~ THEN REPLY #15521 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15497 /* ~Vyděšeně se k tobě otočí. Vidíš, že jeho obličej je plný mokvajících boláků; tučné, černé mouchy oblétávají jeho obličej. "Neubližujte mi, pane... Já nic nevím. Nic jsem nevzal!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15522 /* ~"Nesnaž se. Vím, kdo jsi, fiende."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15523 /* ~"Slyšel jsem, že jsi víc než se zdáš."~ */ GOTO 20
  IF ~~ THEN REPLY #15524 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #15525 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #15498 /* ~Popochází o krok zpět, zakopává a vyprskne: "Ale... ale já jsem vám říkal, pane... Já nic nevím! Opravdu!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15526 /* ~"Nesnaž se. Vím, kdo jsi, fiende."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15527 /* ~"Slyšel jsem, že jsi víc než se zdáš."~ */ GOTO 20
  IF ~~ THEN REPLY #15528 /* ~"Slyšeli jsme o tom. Budeš mluvit?"~ */ GOTO 3
  IF ~~ THEN REPLY #15529 /* ~"Dobrá tedy, jdi, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #15499 /* ~"Ach... Já... Já vám to řeknu, pane..." Nervózně si tře ruce a přestane vždy jen když se pokusí zabít jednu z much.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15530 /* ~"Nesnaž se. Vím, kdo jsi, fiende."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15531 /* ~"Slyšel jsem, že jsi víc než se zdáš."~ */ GOTO 20
  IF ~~ THEN REPLY #15532 /* ~"Kdo jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #15533 /* ~"Co tady děláš?"~ */ GOTO 9
  IF ~~ THEN REPLY #15534 /* ~"Řekni mi něco o téhle části."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15535 /* ~"Hledám někoho se jménem Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15536 /* ~"Hledám deník, který jsem ztratil. Viděls nějaký?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 5.0 6.1 7.0 8.1 9.2 10.1 11.2 12.2 13.1 14.1 15.0 16.2 20.2 21.0
  SAY #15500 /* ~Vypadá vystrašeně. "Cokoliv, pane... prostě se ptejte..."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15537 /* ~"Nesnaž se. Vím, kdo jsi, fiende."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15538 /* ~"Slyšel jsem, že jsi víc než se zdáš."~ */ GOTO 20
  IF ~~ THEN REPLY #15539 /* ~"Kdo jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #15540 /* ~"Co tady děláš?"~ */ GOTO 9
  IF ~~ THEN REPLY #15541 /* ~"Řekni mi něco o téhle části."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15542 /* ~"Hledám někoho se jménem Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15543 /* ~"Hledám zapisník, který jsem ztratil, neviděls nějaký?"~ */ GOTO 5
  IF ~~ THEN REPLY #15544 /* ~"Nic, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.6
  SAY #15501 /* ~"Nic takového, pane, nic. Přísahám!" Ukazuje ti ruce.~ */
  IF ~~ THEN REPLY #15545 /* ~"Měl bych další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15546 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.5 4.5
  SAY #15502 /* ~Kroutí hlavou. "Kdepak, neznám ho, pane."~ */
  IF ~~ THEN REPLY #15547 /* ~"Jsi si jist? Rozumím, že on je Sběrač."~ */ GOTO 7
  IF ~~ THEN REPLY #15548 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15549 /* ~"Tak na to zapomeň, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #15503 /* ~"Eh? Oh! Jsem sám, pane. Bez přátel, bez partnerů..."~ */
  IF ~~ THEN REPLY #15550 /* ~"Vidím. Mám nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15551 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.2
  SAY #15504 /* ~"Já? Malric, pane. Ale, errr... ale říkají mi Rake-Chaser."~ */
  IF ~~ THEN REPLY #15552 /* ~"Proč tohle?"~ */ GOTO 9
  IF ~~ THEN REPLY #15553 /* ~"Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15554 /* ~"To je všechno, co jsem potřeboval vědět."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.3 8.0
  SAY #15505 /* ~"Ha? Ó... Chodím za tímto člověkem." Ukazujíc na mladého šlechtice stojícího opodál, který se opovržlivě mračí a poté odvrací svůj pohled opět jinam. "Uklidit po něm, jestli mi trochu rozumíte. Těla."~ */
  IF ~~ THEN REPLY #15555 /* ~"Proč tohle děláš?"~ */ GOTO 10
  IF ~~ THEN REPLY #15556 /* ~"Kdo to je?"~ */ GOTO 11
  IF ~~ THEN REPLY #15557 /* ~"Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15558 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1
  SAY #15506 /* ~"Já, eh, prodávám je do Márnice, Spalovačům. Za škváru, to je jasný. Prodám vše, co mají, pokud zemřeli osamocení, bez přátel."~ */
  IF ~~ THEN REPLY #15559 /* ~"Kdo je to?"~ */ GOTO 11
  IF ~~ THEN REPLY #15560 /* ~"Mám další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #15561 /* ~"To je vše, co jsem chtěl vědět."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #15507 /* ~"Kdo, on? Nevím, pane. Jednou takhle přišel a začal se bít s ostatními... Říká tomu 'duely'. Já s ním nemluvím, víte, pane? Jen uklízím mrtvé. Možná se ho zkus zeptat..."~ */
  IF ~~ THEN REPLY #15562 /* ~"Tak to je tedy dobrý bojovník?"~ */ GOTO 12
  IF ~~ THEN REPLY #15563 /* ~"Proč taháš ta těla pryč?"~ */ GOTO 10
  IF ~~ THEN REPLY #15564 /* ~"Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15565 /* ~"Pravděpodobně to zkusím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15566 /* ~Pokývne hlavou. "Ó, jo... Víte, nejsem žádnej znalec pane, ale vypadá smrtelně nebezpečnej, pane, to teda jo. Neútočil bych na něj, jestli to je to, na co myslíte..."~ */
  IF ~~ THEN REPLY #15567 /* ~"Myslíš si, že je lepší, než já?"~ */ GOTO 14
  IF ~~ THEN REPLY #15568 /* ~"Jak bojuje? Mečem? Magií?"~ */ GOTO 13
  IF ~~ THEN REPLY #15569 /* ~"Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15570 /* ~"To je vše, co jsem chtěl vědět."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.0
  SAY #15509 /* ~"Eh... se zahnutým mečem, pane, mečem. Je to opravdu pěkná věc a on s ní navíc umí spoustu triků. Je rychlý a bojuje jak kdyby tancoval..." Muž vyskočí, neobratně napodobí šermířův postoj a rozvíří oblak much. "Sek, švih, sek-švih! A ste tuhej!" Pokýve hlavou.~ */
  IF ~~ THEN REPLY #15571 /* ~"Myslíš si, že je lepší, než já?"~ */ GOTO 14
  IF ~~ THEN REPLY #15572 /* ~"Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15573 /* ~"To je vše, co jsem chtěl vědět."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #15510 /* ~Najednou se zdá ustaraný. "É, ne! To jsem neřek, pane! Vás jsem bojovat neviděl. Možná byste to mohl, eh, zkusit. Ale esli nejste dobrej, tak vás zabije, víte? Esli chcete, tak bych moh předat Spalovačům vaše poslední přání. V případě, že... ehm... prohrajete."~ */
  IF ~~ THEN REPLY #15574 /* ~"Jak bojuje? Mečem? Magií?"~ */ GOTO 13
  IF ~~ THEN REPLY #15575 /* ~"Tím se netrap. Měl bych další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15576 /* ~"Ne. díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4 4.4
  SAY #15511 /* ~"Úl, pane?" Poškrábe se skrz kápi. "Je to přesně to, jak to vypadá... holý brloh od jednoho konce k druhému. Fakt nemůžu říct nic jiného."~ */
  IF ~~ THEN REPLY #15577 /* ~"Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15578 /* ~"To je vše, co jsem chtěl vědět."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",1)
!Dead("Adyzoel")
~ THEN BEGIN 16 // from:
  SAY #15512 /* ~Jak se blížíš, muž se vyděsí, ale pak se jeho boláky posetý obličej rozjasní poznáním. "Zdravím, pane."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15579 /* ~"Nesnaž se. Vím, kdo jsi, fiende."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15580 /* ~"Zdravím, Rake-Chasere. Slyšel jsem, že jsi víc, než se zdáš."~ */ GOTO 20
  IF ~~ THEN REPLY #15581 /* ~"Zdravím, Rake-Chasere. Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15582 /* ~"Zdravím a sbohem."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",0)
Dead("Adyzoel")
~ THEN BEGIN 17 // from:
  SAY #15513 /* ~Špinavý chlap v kápi se potuluje kolem a vypadá velice ostražitě. Když si všimne, že ho pozoruješ, kvapem se snaží zmizet.~ */
  IF ~~ THEN REPLY #15583 /* ~"Zdravím..."~ */ GOTO 18
  IF ~~ THEN REPLY #15584 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.2
  SAY #15514 /* ~Muž najednou začne prchat za víření hnědých hadrů a velkých masařek.~ */
  IF ~~ THEN REPLY #15585 /* ~"Ksakru..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Dead("Adyzoel")
~ THEN BEGIN 19 // from:
  SAY #15515 /* ~Jak se blížíš, mužův boláky posetý obličej zvrásní strach. Snaží se zmizet.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15586 /* ~"Nesnaž se. Vím, kdo jsi, fiende."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15589 /* ~"Slyšel jsem, že jsi víc, než se zdáš."~ */ GOTO 20
  IF ~~ THEN REPLY #15590 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 18
  IF ~~ THEN REPLY #15591 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.1 3.1 4.1 16.1 19.1
  SAY #15516 /* ~"Eh? Co tím myslíte, pane?" Zdá se opravdu zmatený.~ */
  IF ~~ THEN REPLY #15592 /* ~"Proč jsi mi to neřekl, 'Rake-Chasere.'"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15593 /* ~"Víš, co tím myslím. Kdo jsi, ale opravdu?"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15594 /* ~"Zapomeň na to. Mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15595 /* ~"Nevadí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15517 /* ~"Já... Já nechápu, co od mne chcete, pane... Skutečně nevím! Možná jste si mě s někým spletl?"~ */
  IF ~~ THEN REPLY #15596 /* ~"Fajn. Tak to mám další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #15597 /* ~Pravda: "Mluv, nebo z tebe tu odpověď vytluču!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rchasr_1","GLOBALGood",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15598 /* ~Blaf: "Mluv, nebo z tebe tu odpověď vytluču!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rchasr_1","GLOBALLaw",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15599 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",3)
~ THEN BEGIN 22 // from:
  SAY #15518 /* ~Jak se blížíš, mužův boláky posetý obličej zvrásní hrůza. Vykřikne a snaží se zmizet.~ */
  IF ~~ THEN REPLY #15600 /* ~"Počkej, mám další otázky..."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15601 /* ~Nechej ho jít.~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.0 2.0 3.0 4.0 16.0 19.0
  SAY #15519 /* ~S hrůzou na tebe zírá.~ */
  IF ~~ THEN REPLY #15602 /* ~"Opravdu?"~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("RChaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15603 /* ~"Neměj strach. Nejsem tady, abych ti ublížil."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("Rchaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15604 /* ~"Jak jsem si myslel. Sbohem."~ */ DO ~SetGlobal("RChaser","AR0400",3)
~ EXIT
END
