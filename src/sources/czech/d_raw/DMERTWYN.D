// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERTWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERTWYN~

IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2960 /* ~Je jasné, že s tímhle mužem je něco velice *špatně*... způsob, jakým se potácí, naráží do věcí a prázdně zírá do prostoru. Když ses přiblížil, poznal jsi, v čem tkví jeho vážný stav... je bezhlavý. Věc na jeho ramenech je velice dobře vyřezaná dřevěná protéza... falešná hlava.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #2961 /* ~"Zdravím...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42316 /* ~"Zdravím...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42317 /* ~"Tohle je určitě Mertwynovo tělo..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42318 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 17.0 17.1
  SAY #42320 /* ~Bezhlavé tělo přestalo na chvíli tápat a zastavilo se. Vztáhlo ruku a snaží se nahmatat, kde přesně se nacházíš.~ */
  IF ~~ THEN REPLY #42321 /* ~Nechej ho se tě dotknout.~ */ GOTO 2
  IF ~~ THEN REPLY #42322 /* ~Chyť ho za ruku.~ */ GOTO 3
  IF ~~ THEN REPLY #42323 /* ~Ustup od něj stranou.~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42324 /* ~Po chvíli se jeho prsty dotkly tvého předloktí. Uchopil tě za ruku a následoval ji k rameni a od něj k hlavě. Když ti ohmatal obličej a hlavu, jeho paže se ti otřela o krk, jako by se v čemsi ujišťovala. Nakonec tě chytil za ruku a prudce ti s ní na znamení pozdravu zatřásl. Zjistil jsi, že jeho kůže je chladná a trošku lepkavá.~ */
  IF ~~ THEN REPLY #42325 /* ~"Dokážeš mi porozumět?"~ */ GOTO 4
  IF ~~ THEN REPLY #42326 /* ~"Teď musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #42327 /* ~Bezhlavá postava náhle vyskočila, pevně ti stiskla ruku a potřásla s ní... zdá se, že je bezhlavec celkem přátelský. Má silný stisk, ale jeho kůže je chladná a trošku lepkavá.~ */
  IF ~~ THEN REPLY #42328 /* ~"Kde máš hlavu? Rozumíš mi bez ní?"~ */ GOTO 4
  IF ~~ THEN REPLY #42329 /* ~"Teď už ale budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #42330 /* ~Postava udělala pár pohybů rukou a čeká na odpověď. Zdá se, že se na cosi ptá.~ */
  IF ~~ THEN REPLY #42331 /* ~"Cože? Nerozumím..."~ */ GOTO 5
  IF ~~ THEN REPLY #42332 /* ~"Teď už ale budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42333 /* ~Bezhlavec na chvíli ťapal nohou a pak se poškrábal na povrchu své náhradní hlavy. Náhle pozvedl prst, jako by dostal nějaký nápad. Napřed ukázal na tebe, pak na oči své dřevěné hlavy a poté opět na tebe. Nakonec si ukázal na hlavu oběma rukama, pokrčil ramena a zírá na tebe.~ */
  IF ~~ THEN REPLY #42334 /* ~"Ech, ne... Nikde jsem tvou hlavu neviděl."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.2 5.0
  SAY #42335 /* ~Bezhlavec opět pokrčil rameny a sklesle se šoural pryč.~ */
  IF ~~ THEN REPLY #42336 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #42337 /* ~Tělo se před tebe šourá, vztahujíce ruce po ocelové krabici, jež obsahuje Mertwynovu hlavu.~ */
  IF ~~ THEN REPLY #42338 /* ~Nechej Mertwynovo tělo vzít si jeho hlavu.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GivePartyGold(200)
~ JOURNAL #56738 /* ~Dal jsem dohromady Mertwynovu hlavu a tělo. Oba kusy byli docela šťastné, když se konečně setkaly.~ */ GOTO 8
  IF ~~ THEN REPLY #42339 /* ~Odstup od něj.~ */ EXTERN ~DMHEAD~ 13
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #42340 /* ~"Ach, to je mnohem lepší; Děkuji ti dobrý muži! Myslím, že beze mě mé tělo nemělo chvíli klidu." Postava si přimáčkla krabici silněji k hrudi. "Ano, taky jsi mi scházel..." Tělo si vzalo krabici pod paži a pokynulo ti. "A pro tebe dobrý muži... zajisté si zasloužíš nějakou odměnu za problémy, co jsem ti způsobil. Podívejme se, co zrovna mám..." Tělo chvíli prošmátrávalo kapsy u tuniky, ale tam nic nebylo. Nakonec tě odměnil několika hrstmi mědáků.~ */
  IF ~~ THEN REPLY #42341 /* ~"Dík Mertwyne. Mám nějaký otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #42342 /* ~"Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.0 12.1 13.0 14.2 15.1 16.0 18.0
  SAY #42343 /* ~"Samozřejmě; Ptej se na co chceš!"~ */
  IF ~~ THEN REPLY #42344 /* ~"Jak se stalo, že jsi skončil... tak jak si skončil?"~ */ GOTO 10
  IF ~~ THEN REPLY #42345 /* ~"Co tady děláš?"~ */ GOTO 12
  IF ~~ THEN REPLY #42346 /* ~"Můžeš mi něco říct o tomhle místě?"~ */ GOTO 14
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42347 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 16
  IF ~~ THEN REPLY #42348 /* ~"Nevadí Mertwyne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42349 /* ~"To si opravdu nejsem moc jistý... tělo mě odneslo do jedné z přednáškových hal a tam mě někdo sebral a odnesl! Další, co si pamatuju je, žes mě sebral ty..."~ */
  IF ~~ THEN REPLY #42350 /* ~"Jo, ale já spíš myslel, jak jsi přišel o *hlavu?*"~ */ GOTO 11
  IF ~~ THEN REPLY #42351 /* ~"Mám jinou otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #42352 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #42353 /* ~Tělo očividně ztuhlo. Och, neradi o tom mluvíme. Je to otřesné, opravdu... Co je minulost, má zůstat minulostí; není potřeba to vytahovat na povrch. Myslím že řeknu, že má hlava je v bedně proto, že není tak pěkná jako moje tělo: Aspoň dle mého názoru."~ */
  IF ~~ THEN REPLY #42354 /* ~"Mám jinou otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #42355 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #42356 /* ~"Většinou se procházím kolem Haly. To víš: jen se courám tu a támdle. Nepatřím k Vnímavým, ale rád pozoruju ty různý druhy lidí co se tu nachomýtnou."~ */
  IF ~~ THEN REPLY #42357 /* ~"Vnímaví?"~ */ GOTO 13
  IF ~~ THEN REPLY #42358 /* ~"Mám jinou otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #42359 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.1 15.0
  SAY #42360 /* ~Tělo lehce zakývalo krabicí na znamení souhlasu. "Ano... tohle je Společenstvo Vjemu. Jeho členové se snaží pojmout věškeré zkušenosti, které může mnohovesmír nabídnout a udržet si je po co možná nejdelší dobu." Tělo pokrčilo rameny.~ */
  IF ~~ THEN REPLY #42361 /* ~"Mám jinou otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #42362 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY #42363 /* ~Mertwyn vypadá zmateně. "Copak je někdo, kdo nezná Městkou Halu? Hmmm... no, je to sídlo Vnímavých, a co je možná důležitější, obsahuje naše sensoria."~ */
  IF ~~ THEN REPLY #42364 /* ~"Řekni mi něco o těchhle sensoriích..."~ */ GOTO 15
  IF ~~ THEN REPLY #42365 /* ~"Vnímaví?"~ */ GOTO 13
  IF ~~ THEN REPLY #42366 /* ~"Mám jinou otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #42367 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42368 /* ~"Vrátný ti to určitě vysvětlí lépe než já, pane... ale jsou to místnosti, ve kterých jsou očarované kameny, které udržují zkušenosti a vjemy, které do nich byly uloženy. Veřejné sensorium je otevřené pro všechny, ačkoli jsou téměř nepodstatné. Soukromá sensoria jsou pouze pro členy Společenstva Vjemu."~ */
  IF ~~ THEN REPLY #42369 /* ~"Vnímavé?"~ */ GOTO 13
  IF ~~ THEN REPLY #42370 /* ~"Mám jinou otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #42371 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY #42372 /* ~"Ravel? Nevím, nevzpomínám si na někoho takového..."~ */
  IF ~~ THEN REPLY #42373 /* ~"Mám jinou otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #42374 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #42375 /* ~Bezhlavý muž se stále prochází kolem, naráží do stěn, sloupů a všeho co stojí v cestě. Jeho falešná hlava se mu při nárazech ošidně kolébá na ramenou.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #42376 /* ~"Zdravím...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42377 /* ~"Zdravím...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42378 /* ~"To musí být Mertwynovo tělo..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42379 /* ~Nechej ho být.~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #42381 /* ~Mertwynovo tělo tu stojí před tebou, lehce poklepávajíc prsty na ocelovou krabici, ve které má svoji hlavu. Když jsi přistoupil blíž, nahnul krabici tvým směrem. "Znovu tě zdravím, dobrý muži!"~ */
  IF ~~ THEN REPLY #42382 /* ~"I ty buď pozdraven, Mertwyne. Mám pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #42383 /* ~"Pouze procházím. Sbohem Mertwyne."~ */ EXIT
END
