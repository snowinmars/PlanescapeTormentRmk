// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGCORV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGCORV~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 22 20 21 33 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37282 /* ~Vidíš vysokého muže v plátové zbroji. Ta je neobvyklé konstrukce s hroty čnějícími z ramen, loktů a předloktí. Kývne na tebe, ale jeho oči stále bloudí po tržišti. "Pěkný den, občane. Já jsem strážný Corvus."~ */
  IF ~~ THEN REPLY #37283 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #37284 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37285 /* ~"S čím ti mohu pomoci, občane?" Přátelsky se na tebe podívá, ale mrkne ti přes rameno.~ */
  IF ~~ THEN REPLY #37286 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37287 /* ~"Nemyslím, že bys mohl. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.2 8.1 9.0 11.0 12.0 13.1 14.2 16.0 17.0 18.0 19.0 22.0 23.0 25.1 26.0 28.2 29.1 30.0 31.2 33.0 34.0 35.4 36.0 42.0 43.1 44.0
  SAY #37288 /* ~Kývne ne tebe. "Pomůžu ti, pokud to bude v mé moci, občane." Dívá se na trh a čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #37289 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37290 /* ~"Hledám muže, kterému říkají Lothar, nebo také Pán kostí..."~ */ GOTO 6
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37291 /* ~"Měl jsem lebku a někdo mi ji ukradl. Nevíš, prosím tě, kdo?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Know_Lenny","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37292 /* ~"Znáš muže jménem Lenny?"~ */ GOTO 24
  IF ~  Global("Know_Byron","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37293 /* ~"Znáš člověka, jenž se jmenuje Byron Pikit?"~ */ GOTO 27
  IF ~  Global("Know_Anarchists","GLOBAL",1)
~ THEN REPLY #37294 /* ~"Víš, že ve skladišti jsou nějací anarchisté?"~ */ GOTO 35
  IF ~~ THEN REPLY #37295 /* ~"Potřebuji nakoupit nějaké zbraně."~ */ GOTO 11
  IF ~~ THEN REPLY #37296 /* ~"Potřebuji nakoupit nějaké kouzelné předměty."~ */ GOTO 12
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37297 /* ~Zkus zjistit, na co se dívá.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37298 /* ~Zkus zjistit, na co se dívá.~ */ GOTO 19
  IF ~  !Global("Byron_Arrested","GLOBAL",1)
Global("Corvus_Zac","GLOBAL",1)
~ THEN REPLY #24718 /* ~"Chtěl jsem si s tebou promluvit o kupci se jménem Zac."~ */ JOURNAL #66255 /* ~Corvus, hlídač Harmonia, hledá důkazy, které by usvědčily vraha obchodníka jménem Zac. Možná bych se po tom mohl podívat...~ */ GOTO 42
  IF ~~ THEN REPLY #66254 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37299 /* ~Složil ti malou poklonu. "Jsem strážce Corvus ze společenstva Harmonických, občane. Napomáhám tady v trhu udržovat mír." Na chvilku zabloudí pohledem jinam, pak znovu na tebe.~ */
  IF ~~ THEN REPLY #37300 /* ~"Řekni mi o Harmonických."~ */ GOTO 4
  IF ~~ THEN REPLY #37301 /* ~"Mám další otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37302 /* ~"Naše víra je velmi jednoduchá: Jsme světlo. Jsme cesta. Jsme řád. Jsme pravda. My tady v Sigilu udržujeme pořádek. Jsme strážci tohoto místa." Opět se rozhlíží kolem.~ */
  IF ~~ THEN REPLY #37303 /* ~"Co mi můžeš říct o dalších skutečnostech?"~ */ GOTO 5
  IF ~~ THEN REPLY #37304 /* ~"Aha, mám další otázku..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37305 /* ~"Vím moc málo, občane. Omlouvám se, ale abych mohl odpovědět, musíš svoje otázky poněkud konkretizovat." Usměje se, pak se rozhlédne kolem.~ */
  IF ~~ THEN REPLY #37306 /* ~"Mám další otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 2.1 10.0
  SAY #37307 /* ~Otočí se k tobě a zamračí se. "Radím ti, aby ses Lotharovi nezprotivil, občane. Pochybuji, že jej opravdu potřebuješ najít."~ */
  IF ~~ THEN REPLY #37308 /* ~"Proč?"~ */ JOURNAL #66533 /* ~Mluvil jsem s Corvusem, strážcem Harmonia o Lotharovi. Varoval mě, že Lothar je velice mocný a není radno zahrávat si s ním. Ať je to jak chce, stejně ho musím najít.~ */ GOTO 7
  IF ~~ THEN REPLY #37309 /* ~"Stále jej potřebuji najít.~ */ JOURNAL #66534 /* ~Corvus mi řekl, že Lothara najdu ve zničeném domě v Dolní Čtvrti.~ */ GOTO 9
  IF ~~ THEN REPLY #37310 /* ~"Aha... Mám nějaké další dotazy..."~ */ GOTO 2
  IF ~~ THEN REPLY #37311 /* ~"Tak se měj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37312 /* ~Podívá se někam do dáli a zamračí se. "Já jsem realista, občane, taktéž úředník Harmonických. Jako realista vím, že jsou tací, kteří úplně vládnou nad zákonem. To je skutečnost." Zmlkne.~ */
  IF ~~ THEN REPLY #37313 /* ~"Pokračuj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37314 /* ~"Někteří lidé se nebojí zákona, protože jsou příbuzní vlivných osobností, ostatní se jich bojí kvůli jejich neomezené síle a chrání je. Lothar je taky tak mocný, s tím počítej, občane. On je nedotknutelný, jestli víš, co tím myslím."~ */
  IF ~~ THEN REPLY #37315 /* ~"Stále ho potřebuji najít."~ */ JOURNAL #66534 /* ~Corvus mi řekl, že Lothara najdu ve zničeném domě v Dolní Čtvrti.~ */ GOTO 9
  IF ~~ THEN REPLY #37316 /* ~"Aha... Mám pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37317 /* ~"Pak se tedy loučím."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #37318 /* ~Povzdechne si a rozhlédne se kolem. "Podívej, občane. Jeho síla je soustředěna někde na jih odsud, v rozbitém domku. Hodně štěstí."~ */
  IF ~~ THEN REPLY #37319 /* ~"Mám víc otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37320 /* ~"Tak děkuji. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37321 /* ~Něž odpoví, na chvilku se zamyslí. "Vypadá to, že Lothar je tím Pánem Kostí."~ */
  IF ~~ THEN REPLY #37322 /* ~"Kde mohu najít tohoto 'Lothara?'"~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 2.6
  SAY #37323 /* ~"Pak si potřebuješ promluvit s Anzem, občane. On ti pomůže. Je někde okolo výhně."~ */
  IF ~~ THEN REPLY #37324 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37325 /* ~"Děkuji ti. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.7
  SAY #37326 /* ~"Asi by sis měl promluvit s Aalekem, občane. On bude ten pravý. Je na druhé straně trhu."~ */
  IF ~~ THEN REPLY #37327 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37328 /* ~"Děkuji. Musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 18.1
  SAY #37329 /* ~Pohlédneš přes rameno a zhlédneš Karinu, jak putuje okolo. Corvusovy oči jsou na ní jako přilepené a chtivě po ní bloudí.~ */
  IF ~~ THEN REPLY #37330 /* ~"Jmenuje se Karina."~ */ GOTO 14
  IF ~~ THEN REPLY #37331 /* ~Ignorovat situaci.~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37332 /* ~Zabrousí pohledem zpět k tobě. "Promiň, ty ji znáš, občane?" Znovu se podívá na Karinu. "Hlas anděla a takový krásný, mladý vzhled..." ~ */
  IF ~~ THEN REPLY #37333 /* ~"Ano, a ona je taktéž osamělá... Jsem si jistý, že ráda přivítá společnost gentlemanů..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~Strážce Harmonia, Corvus, je poblázněný mladou ženou jménem Karina. Řekl jsem mu, že je osamělá a potřebuje přítele.~ */ GOTO 15
  IF ~~ THEN REPLY #37334 /* ~"Zajisté. Všem jejím nápadníkům o ní řeknu to samé..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Corvus_1","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #37335 /* ~"Mám na tebe víc otázek..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 14.0 18.3
  SAY #37336 /* ~Podívá se na tebe, pak zpět na Karinu. "Počkej chvilku, občane." Popojde okolo tebe a hlavu nakloní ke Karině.~ */
  IF ~~ THEN REPLY #37342 /* ~"Nu dobrá."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #37343 /* ~Corvus se k tobě otočí a jasně se usměje. "Děkuji, kamaráde. Pěkná mladá dáma..." Vyhlíží poněkud tupým pohledem.~ */
  IF ~~ THEN REPLY #37344 /* ~"S potěšením, mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37345 /* ~"Loučím se, Corvusi."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #37346 /* ~Usměje se a vrátí svou pozornost k tobě. Na druhou stranu ale v teno okamžik není příliž šťastný. "Co jsi řekl, občane?"~ */
  IF ~~ THEN REPLY #37347 /* ~"Mám na tebe pár otázek..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 22 20 21 33 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37348 /* ~Vidíš Corvuse, stráž Harmonických. "Vítej zpět, občane. Čím posloužím?" Dívá se někam za tebe a vypadá to, že někoho hledá.~ */
  IF ~~ THEN REPLY #37349 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37350 /* ~Zkusit zjistit, na co se pořád dívá.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37351 /* ~Zkusit zjistit, na co se pořád dívá.~ */ GOTO 19
  IF ~  Global("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37352 /* ~"Zjistil jsem, že Karina se hledá opravdu těžko. Myslím, že uvítá společnost gentlemanů..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~Strážce Harmonia, Corvus, je poblázněný mladou ženou jménem Karina. Řekl jsem mu, že je osamělá a potřebuje přítele.~ */ GOTO 15
  IF ~~ THEN REPLY #37353 /* ~"Myslím že ne. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.9 18.2
  SAY #37354 /* ~Pohlédneš přes rameno dozadu a uvidíš mladou dívku, jak putuje tržištěm. Corvus na ní má svoje oči jako přilepené.~ */
  IF ~~ THEN REPLY #37355 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37356 /* ~"Vypadáš poněkud zahloubaně. Co hledáš?"~ */ GOTO 43
  IF ~~ THEN REPLY #66273 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 33 even though they appear after this state */
~  Dead("Karina")
~ THEN BEGIN 20 // from:
  SAY #37357 /* ~Vidíš stráž Harmonických. Vypadá velmi zmateně a jen s těží má sám sebe pod kontrolou. "Odpusť, občane. Teď s tebou neůžu mluvit... Utrpěl jsem velkou ztrátu a chtěl bych být sám."~ */
  IF ~~ THEN REPLY #37358 /* ~Odejít.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 33 even though they appear after this state */
~  Dead("Karina")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #37359 /* ~Vídíš Corvuse, je to stráž Harmonických. Vypadá velmi zmateně a jen s těží má sám sebe pod kontrolou. "Odpusť, občane. Teď s tebou nemůžu mluvit... Utrpěl jsem velkou ztrátu a chtěl bych být sám."~ */
  IF ~~ THEN REPLY #37360 /* ~Odejít.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 even though they appear after this state */
~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #37361 /* ~Vidíš Corvuse - stráž Harmonických. Když se přiblížíš, usměje se a složí ti malou poklonu. "Ahoj, kamaráde. Doufám, že podnikáš něco správného."~ */
  IF ~~ THEN REPLY #37362 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37363 /* ~"Co ty a Karina děláte?"~ */ GOTO 23
  IF ~~ THEN REPLY #37364 /* ~"Už musím jít, ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #37365 /* ~Znuděně si povzdychne. "Děláme co můžeme, děkuji ti. Jsem ti vděčný za tvou přízeň, kamaráde."~ */
  IF ~~ THEN REPLY #37366 /* ~"Mám nějaké dotazy..."~ */ GOTO 2
  IF ~~ THEN REPLY #37367 /* ~"Rád jsem to udělal. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3
  SAY #37368 /* ~V zamyšlení se zamračí. "Lenny... ano, znám jednoho zloděje, jenž se honosí tímto jménem. Obvykle je možné ho najít u obléhací věže."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37369 /* ~"Co mi o něm můžeš říct?"~ */ JOURNAL #36025 /* ~Corvus řekl, že Lenny je mistr zloděj, který už mnohokrát unikl dopadení. Také říkal, že Lenny vypadá na morálního člověka, který by nikomu neublížil.~ */ GOTO 25
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37370 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 30
  IF ~~ THEN REPLY #37371 /* ~"Děkuji. Už budu muset jít, tak se měj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #37373 /* ~"Oficiálně nic." Před odpovědí se na chvilku odmlčí. "Neoficiálně je to zloděj, velmi dobrý zloděj - mistr svého oboru, řekl bych. Ačkoli je zloděj, má v sobě ale trochu morálky, nikdy nebývá podezřelý z napadení či vraždy. Při četných příležitostech se musí skrývat před zákonem..." Pauza.~ */
  IF ~~ THEN REPLY #37374 /* ~"Všechno?"~ */ JOURNAL #36024 /* ~Corvus mi řekl, že Lennymu věří dost na to, aby se k němu dokázal beze strachu obrátit zády.~ */ GOTO 26
  IF ~~ THEN REPLY #37375 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37376 /* ~"Díky. Asi budu muset jít, ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37377 /* ~"Ano... Nebál bych se na Lennyho obrátit. Je málo lidí, kteří o tom něco ví, a Lenny je jeden z nich." Pokrčí rameny. "To je vše, kamaráde."~ */
  IF ~~ THEN REPLY #37378 /* ~"Chtěl bych se zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37379 /* ~"Tak dík. Budu muset jít, měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.4
  SAY #37380 /* ~Jeho úsměv pohasne, ale přikývne. "Ano, jsem spolčen s Byronem."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37381 /* ~"Co mi o něm můžeš říct?"~ */ JOURNAL #36023 /* ~Corvus řekl, že Byron Pikit je pravděpodobně zločinec. Údajně je za většinou zločinů na tržišti v Dolní čtvrti.~ */ GOTO 28
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37382 /* ~"Co mi o něm můžeš povědět?"~ */ GOTO 30
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37383 /* ~"Mám důkaz, že je zapleten do zločinů tady v Sigilu."~ */ GOTO 31
  IF ~~ THEN REPLY #37384 /* ~"Díky. Už musím jít, měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #37385 /* ~"Oficiálně nic." Před odpovědí se na chvilku odmlčí. "Neoficiálně je podezřelý z mnoha kriminálních aktivit tady v tržišti. Myslíme si, že má na svědomí vraždu obchodníka jménem Zac. Jeho seznam nekalých aktivit je pěkně dlouhý." Pauza.~ */
  IF ~~ THEN REPLY #37386 /* ~"Všechno?"~ */ JOURNAL #37391 /* ~Corvus říká, že by nikdy neotočil zpět na Byrona Pikita nebo byl někde s ním o samotě.~ */ GOTO 29
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37387 /* ~"Mám důkaz, že je zapleten do zločinů tady v Sigilu."~ */ GOTO 31
  IF ~~ THEN REPLY #37388 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37389 /* ~"Díky. Asi už půjdu, tak se měj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37392 /* ~"Ano... Znovu bych se na něho nobrátil a neustále myslím na stvořením, se kterým pořád někde je." Pokrčí rameny. "To je všechno, příteli."~ */
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37393 /* ~"Mám důkaz, že je zapleten do zločinů tady v Sigilu."~ */ GOTO 31
  IF ~~ THEN REPLY #37394 /* ~"Potřebuji se zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37395 /* ~"Díky moc. Musím jít, ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.1 27.1
  SAY #37396 /* ~Jeho výraz se okamžitě mění na vážný. "Něco málo vím o tom, že Harmoničtí dělají obchody sami, občane. Ale nemohu něco takového projednávat s cizincem jako ty. Snad až v budoucnu..."~ */
  IF ~~ THEN REPLY #37397 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37398 /* ~"Díky. Budu muset jít, tak ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 28.1 29.0
  SAY #37399 /* ~Se zájmem na tebe pohlédne. "Oh! Mohu vidět důkazy?"~ */
  IF ~  !Dead("Byron")
~ THEN REPLY #37400 /* ~Dát mu ty papíry.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~Dal jsem Corvusovi, strážci Harmonických, důkaz o kriminální aktivitě, aby to donesl Byronu Pikitovi. Zatknul Byron a u Dvru si ho značně pochvalovali.~ */ GOTO 32
  IF ~  Dead("Byron")
~ THEN REPLY #37401 /* ~Dát mu ty papíry.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~Dal jsem Corvusovi, strážci Harmonických, důkaz o kriminální aktivitě, aby to donesl Byronu Pikitovi. Zatknul Byron a u Dvru si ho značně pochvalovali.~ */ GOTO 34
  IF ~~ THEN REPLY #37402 /* ~"Nech mě popřemýšlet o tom. Chci se ještě zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #39441 /* ~"Myslím, že bych měl jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #37404 /* ~Pečlivě zkoumá obsah papírů. Pak to složí a vrátí ti to zpět. S úsměvem pokývá hlavou. "Excellentní práce, občane. Tyto dokumenty mají opravdu detainlní obsah. Osobně o tom informuji Byrona Pikita - před radou." Zasalutuje a otočí se k odchodu. "Za chvilku se vrátím."~ */
  IF ~~ THEN REPLY #37405 /* ~"No jo."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Byron_Arrested","GLOBAL",1)
~ GOTO 33
END

IF WEIGHT #1 ~  Global("Byron_Arrested","GLOBAL",3)
~ THEN BEGIN 33 // from: 32.0
  SAY #37406 /* ~Za nedlouho se vrátí s rozzářeným úsměvem ve tváři. "Hotovo. Pikit byl odejmut z ulic, důkaz byl představený na dvorech, a brzo bude podroben zkoušce." Pokloní se. "Ještě jednou děkuji."~ */
  IF ~~ THEN REPLY #37407 /* ~"S potěšením. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37408 /* ~"Díky. Musím jít, ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #39442 /* ~Prozkoumal papíry, pak je sbalil a odložil. Kývl na tebe, s úsměvem. "Skvělá práce, občane. Dohlédnu, aby byly tyto dokumenty doručeny k soudu, aby každý věděl o Byronově hanebnosti." Zamračil se. "Byron Pikit je ale mrtvý a teď stojí před vyšším soudem."~ */
  IF ~~ THEN REPLY #39443 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #39444 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.5
  SAY #43033 /* ~Zamračil se, jak se na chvíli hluboce zamyslel. "Nu, po celém městě jsou roztroušeni anarchisti, občane. Pokud neporuší zákon, tak se s tím dá dělat jen málo."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",0)
~ THEN REPLY #43034 /* ~"Myslel jsem, že byli považováni za nebezpečné elementy, se kterými se musí něco udělat dřív, než způsobí potíže?"~ */ GOTO 36
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #43035 /* ~"Jejich vůdce mne požádal, abych zabil Harmonického důstojníka jménem Measure 3 Vorten."~ */ GOTO 37
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #43036 /* ~"Dobrá, mám dobrý důvod se domnívat, že jsou zodpovědní za smrt Measure 3 Vortena."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",5)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 40
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #43037 /* ~"Dobrá, mám dobrý důvod se domnívat, že jsou zodpovědní za smrt Measure 3 Vortena."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",6)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 41
  IF ~~ THEN REPLY #43038 /* ~"Chápu. Měl bych ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #43039 /* ~"Teď už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #43040 /* ~Povzdechl si. "Souhlasím s tímto pohledem, občane. Nicméně, já osobně nevěřím v pobíhání kolem a mlácení do hlav bez důkazů. Pokud mi dáš nějaký důkaz, uvidím, co se s těmito anarchisty dá dělat. Jinak oni mají právo se shromažďovat a povídat si."~ */
  IF ~~ THEN REPLY #43041 /* ~"Chápu. Měl bych ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #43042 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #43043 /* ~Věnoval ti znepokojený pohled. "To je velmi vážné obvinění, občane. Jste si jistý, že chcete vznést takové obvinění?"~ */
  IF ~~ THEN REPLY #43044 /* ~"Ano."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",4)
AddexperienceParty(2000)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #66535 /* ~Řekl jsem Corvusovi, že mě anarchisti požádali o vraždu důstojníka Vortena. Řekl mi, že zařídí, aby si to s nimi někdo vyřídil.~ */ GOTO 38
  IF ~~ THEN REPLY #43045 /* ~"Ne, myslím že ne."~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #43046 /* ~"Velmi dobře. Podívám se o co se jedná. Výborná práce občane." Usmál se na tebe.~ */
  IF ~~ THEN REPLY #43047 /* ~"Děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #43048 /* ~Pokrčil rameny. "Pak o tom již dále nemusíme diskutovat."~ */
  IF ~~ THEN REPLY #43049 /* ~"Výborně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #43050 /* ~"Jak to vůbec můžete vědět... pokud byste do toho nebyl nějak zapletený?" Než pokračuje, chvíli na tebe civí. "Protože jsi přítel, zapomenu od koho jsem to slyšel. Zatím se půjdu na ty anarchisty podívat. Přeji vám pěkný den, občane."~ */
  IF ~~ THEN REPLY #43052 /* ~"Sbohem."~ */ JOURNAL #66536 /* ~Řekl jsem Corvusovi, že jsou anarchisti odpovědní za smrt důstojníka Vortena. Okamžitě mě začal podezřívat, ale nijak se na mě nepokoušel tlačit. Jsem si jist, že jenom kvůli našemu přátelství toho nechal.  Řekl mi, že zařídí, aby si to s nimi někdo vyřídil.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.3
  SAY #43053 /* ~" Jak to vůbec můžete vědět... pokud byste do toho nebyl nějak zapletený?" Než pokračuje, chvíli na tebe civí. "Půjdu se na ty anarchisty podívat, občane. Přeji vám pěkný den."~ */
  IF ~~ THEN REPLY #43054 /* ~"Sbohem."~ */ DO ~Enemy()
~ JOURNAL #66537 /* ~Řekl jsem Corvusovi, že jsou anarchisti odpovědní za smrt důstojníka Vortena. Okamžitě mě začal podezřívat, ale nijak se na mě nepokoušel tlačit. Už se se mnou ale odmítá bavit.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.10
  SAY #66251 /* ~"Vše, co o tom vím, je věcí Harmonia, občane. Nemohu o takových věcech mluvit..." Odmlčel se. "Vše, co mohu říct je, že Zac byl zavražděn a že se záležitost prošetřuje. Pokud bys objevil cokoli, co by mohlo vyšetřování napomoci, upozorni mě na to prosím."~ */
  IF ~~ THEN REPLY #66252 /* ~"Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #66253 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.1
  SAY #66266 /* ~Odvrátil pozornost od dívky a zadíval se na tebe. "Omlouvám se, občane. Odpusť..." Jeho oči se vrátily zpět na mladou ženu, jeho hlas ztichl, až téměř šeptá. "Má hlas anděla a je tak mladičká..." Povzdychl si.~ */
  IF ~~ THEN REPLY #66267 /* ~"Proč si s ní nejdeš promluvit. Pořádně tě okouzlila, mám takový dojem..."~ */ JOURNAL #66539 /* ~Corvus je zřejmě poblázněný mladou ženou, která se prochází často v tržnici. Řekl jsem mu, ať si s ní promluví... ale ten pitomec si myslí, že pro ní není dost dobrý. Měl bych si s ní promluvit a zjistit, co je vlastně zač.~ */ GOTO 44
  IF ~~ THEN REPLY #66268 /* ~"Aha. Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #66269 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #66270 /* ~Ve vzduchu je nepříjemné ticho. Nakonec se k tobě otočil. "Já... já zkrátka nemůžu. Taková žena... no, ta musí být..." Povzdychl si a na chvíli se odmlčel. "Je tady něco, s čím ti mohu pomoci, občane?"~ */
  IF ~~ THEN REPLY #66271 /* ~"Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #66272 /* ~"Budu muset jít, sbohem."~ */ EXIT
END
