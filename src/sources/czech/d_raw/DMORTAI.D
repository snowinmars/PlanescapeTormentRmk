// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTAI~

IF ~  Global("Mortai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1794 /* ~Maličký seschlý muž je oblečen ve velkých spalovačských šatech; vypadají, jako kdyby byly vybrány proto, aby skryly jeho malou postavu. Ačkoliv se zdá, jako by mu bylo devadesát, je tento muž hodně energický... je neklidný a jeho oči poletují kolem jako pták. ~ */
  IF ~~ THEN REPLY #13417 /* ~"Zdravím."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #13418 /* ~Ignoruj jej.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1795 /* ~Oči muže zajiskřily, když tě přeměřil svým pohledem a lehce kývl hlavou na znamení pozdravu. "Zdar a vítej, poutníče. Vypadáš jako někdo, kdo přišel po svých nohou do Sigilu..." Usmívá se. "Promiň mi, nesetkali my jsme se už spolu? Tvůj obličej se mi zdá nějak povědomý."~ */
  IF ~~ THEN REPLY #13419 /* ~"Možná. Jsi si jist, že jsem to byl já?"~ */ GOTO 2
  IF ~~ THEN REPLY #13420 /* ~"Ne, přinejmenším... nevybavuji si tě."~ */ GOTO 2
  IF ~~ THEN REPLY #13421 /* ~"Nevadí. Musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #13350 /* ~"Hmmmm... možná jsem se spletl." Mortai zatřepal hlavou. "Dobrá, na tom nezáleží, opravdu na tom nezáleží. Jak ti může Mortai Hrobkop pomoci? Hledáš něco..." Pomlaskává jazykem a pokračuje. "...možná nějakou smlouvu?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13422 /* ~"Smlouvu?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13423 /* ~"Smlouvu?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
~ THEN REPLY #13424 /* ~"Mortai Hrobkop? Ty jsi ten Spalovač, co podepisoval smlouvu s Angyarem?"~ */ GOTO 42
  IF ~~ THEN REPLY #13425 /* ~"Dnes ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 10.0 61.0
  SAY #13351 /* ~"Smlouvu? Proč, je to jenom jednoduchá transakce." Z hloubi jeho ohromného roucha, Mortai vytahuje pergamen a bere do ruky pero. "Dám ti 50 měďáků. Na oplátku -- po smrti -- obdrží Spalovači tvé tělo." Usmívá se, a pak si začne pomlaskávat. "Máš proti tomu nějaké připomínky?" ~ */
  IF ~~ THEN REPLY #13426 /* ~"Co dělají Spalovači s těly?"~ */ GOTO 5
  IF ~~ THEN REPLY #13427 /* ~"Padesát měďáků za moje tělo? Výborně, podepíšu."~ */ GOTO 12
  IF ~~ THEN REPLY #13428 /* ~"Nemám zájem, díky. Ale měl bych pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13429 /* ~"Nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.1 9.1 10.1 61.1
  SAY #13352 /* ~"Smlouvu? Proč, je to jenom jednoduchá transakce." Z hloubi jeho ohromného roucha, Mortai vytahuje pergamen a bere do ruky pero. "Dám ti 50 měďáků. Na oplátku -- po smrti -- obdrží Spalovači tvé tělo." Usmívá se, a pak si začne pomlaskávat. "Máš proti tomu nějaké připomínky?"~ */
  IF ~~ THEN REPLY #13430 /* ~"Co dělají Spalovači s těly?"~ */ GOTO 5
  IF ~~ THEN REPLY #13431 /* ~"Sto měďáků za moje tělo? Výborně, podepíšu."~ */ GOTO 12
  IF ~~ THEN REPLY #13432 /* ~"Nemám zájem, díky. Ale měl bych pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13433 /* ~"Nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #13353 /* ~Mortai zvedá své ruce, jak nejvíc dovede. "Co na tom záleží? Nebude to mít žádné následky."~ */
  IF ~~ THEN REPLY #13434 /* ~"Mně na tom záleží."~ */ GOTO 6
  IF ~~ THEN REPLY #13435 /* ~"Výborně, podepíšu."~ */ GOTO 12
  IF ~~ THEN REPLY #13436 /* ~"Nemám zájem, díky. Ale měl bych pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13437 /* ~"Nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13354 /* ~"Dobře, když to MUSÍŠ vědět, s tím tělem se nic nestane. Jsme to my Spalovači, kteří mrháme penězi! Je nás hodně a jsme pošetilí blázni!" Mortai se se zalíbením usměje, pak se ale omluvně podívá. "Ale... jsou také chvíle, kdy... dělníci v Márnici potřebují vyměnit... a pak tvé tělo můžeme potřebovat."~ */
  IF ~~ THEN REPLY #13438 /* ~"Tím myslíš, že budu jako tělo oživen a poslán na práce v Márnici? To nezní moc dobře."~ */ GOTO 7
  IF ~~ THEN REPLY #13439 /* ~"Výborně, podepíšu."~ */ GOTO 12
  IF ~~ THEN REPLY #13440 /* ~"Nemám zájem, díky. Ale měl bych pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13441 /* ~"Nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #13355 /* ~"Ale neboj, neublížíme ti a ani neucítíš žádnou bolest..." Mortai zvedá prst, jako kdyby tento bod zdůrazňoval. "A žádné nebezpečí. Výměnou za peníze můžeš strávit *tento* život normálně, musíš nám dát pouze k dispozici to, co už po smrti nebudeš potřebovat." Mortai poklepává na svou bednu. "Já jsem smlouvu již podepsal, takže jestli chceš... Já své tělo po smrti nepotřebuji."~ */
  IF ~~ THEN REPLY #13442 /* ~"Hmmmm... pravda. Dobrá, podepíšu."~ */ GOTO 12
  IF ~~ THEN REPLY #13443 /* ~"Zvážím to. Ale teď bych měl na tebe pár otázek."~ */ GOTO 9
  IF ~~ THEN REPLY #13444 /* ~"Tedy, raději bych z vícero důvodů odpočíval v pokoji. Nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.2 12.5 13.5 20.3 21.4 32.3 34.2 35.2 40.2 61.5 63.4
  SAY #13356 /* ~"Ale já ti můžu pomoci! Můžu!" Mortai křičí a jeho hlas zní jako obhajoba. "K návratu budete potřebovat peníze a Mortai může pomoci... všechno výměnou za váš podpis."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 4.2 5.2 6.2 7.1 10.2 11.2 12.4 13.4 20.2 21.3 22.0 23.0 24.3 25.2 26.1 27.5 27.6 27.7 27.8 27.9 28.1 29.2 30.0 31.1 32.2 33.1 34.1 35.1 36.3 37.2 38.1 40.1 41.3 42.3 43.5 44.5 45.4 46.5 49.4 52.4 55.3 60.0 61.4 62.0 63.3 66.2
  SAY #13357 /* ~"Samozřejmě, samozřejmě..." Mortai přikývne. "Bude mi potěšením odpovědět na jakoukoli otázku..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13445 /* ~"Pověz mi ještě o té smlouvě."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13446 /* ~"Pověz mi ještě o té smlouvě."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13447 /* ~"Chtěl bych uzavřít tu smlouvu, co jsi vzpomínal."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13448 /* ~"Chtěl bych zrušit tu smlouvu, kterou jsem s tebou uzavřel."~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13449 /* ~"Ty jsi ten, co uzavřel Smrtelnou smlouvu s Angyarem?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13450 /* ~"Mohl bych vidět tu smlouvu, kterou jsi uzavřel s Angyarem?"~ */ GOTO 54
  IF ~~ THEN REPLY #13451 /* ~"Co mi můžeš říct o zdejších štamgastech?"~ */ GOTO 27
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13452 /* ~"Neviděl jsi v poslední době nějaký deník? Já jsem svůj ztratil."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13453 /* ~"Hledám muže jménem Pharod. Neviděl jsi ho?"~ */ GOTO 11
  IF ~~ THEN REPLY #13454 /* ~"Dnes žádné otázky. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 10 // from: 9.7
  SAY #13358 /* ~Mortai kýve hlavou. "Nevím nic o deníku." Usmívá se. "Obchoduji s úplně jinými dokumenty..."~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13455 /* ~"Myslíš tu smlouvu, kterou jsi zmínil? Co s ní?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13456 /* ~"Myslíš tu smlouvu, kterou jsi zmínil? Co s ní?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #13457 /* ~"Mám nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #13458 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 11 // from: 9.8
  SAY #13359 /* ~Mortai se mračí. "Je to jeden z těch Sběračů, ne? Moc o něm nevím... Myslím, že Emoric ho před tím znal." Mortai obchází kolem. "Emorica bys měl najít někde tady u baru... věřím, že bys ho moh najít přímo u pultu."~ */
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13459 /* ~"Zasvěcenec Emoric?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13460 /* ~"Zasvěcenec Emoric?"~ */ GOTO 33
  IF ~~ THEN REPLY #13461 /* ~"Oh. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13462 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 12 // from: 3.1 4.1 5.1 6.1 7.0 9.2 35.0
  SAY #13360 /* ~"Skvělé! Skvělé!" Mortai vypadá šťastně...  hříšným úsměvem, vytahuje zaprášený pergamen a podává ti ostré pero. "Nebudeš litovat." Ukazuje prstem na tři místa na papíře. "Podepiš tady, tady a tady a náš obchod je uzavřen!"~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13463 /* ~Podepiš tady, tady a tady.~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13464 /* ~Podepiš tady, tady a tady.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #13465 /* ~"Víš... projevuješ mnohem víc emocí než všichni Spalovači, které jsem potkal."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13466 /* ~"Víš... projevuješ mnohem víc emocí než všichni Spalovači, které jsem potkal."~ */ GOTO 13
  IF ~~ THEN REPLY #13467 /* ~"Zapomeň na to. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13468 /* ~"Nevadí. Nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.2 12.3
  SAY #13361 /* ~Mortai se chladně usmívá. "Doufám, že to nic neznamená, pane."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13469 /* ~"Ne. Dej mi podepsat tu smlouvu."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13470 /* ~"Ne. Dej mi podepsat tu smlouvu."~ */ GOTO 21
  IF ~~ THEN REPLY #13471 /* ~"Je nějaký problém?"~ */ GOTO 29
  IF ~~ THEN REPLY #13472 /* ~"Bez urážky... ale vypadáš ohromně nedočkavý uzavřít se mnou tuto smlouvu. A to se mi na Spalovači zdá podivné."~ */ GOTO 63
  IF ~~ THEN REPLY #13473 /* ~"Omlouvám se. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13474 /* ~"Bez urážky... ale nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 21.2 63.0
  SAY #13362 /* ~Bereš pero do své ruky a začínáš podepisovat pergamen... jakmile se pero dotýká pergamenu zní jeho šílený skřípot, jako bys dýkou jezdil po železe.~ */
  IF ~~ THEN REPLY #13475 /* ~Pokračuj v podepisování...~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13363 /* ~Jak se pokoušíš podepsat pergamen, všímáš si, že se pod perem pohybuje... nezáleží jak moc se snažíš, prostě se nemůžeš podepsat. Smlouva vypadá, jako živá bytost? ~ */
  IF ~~ THEN REPLY #13476 /* ~"Uh... Mortai? Co je s tou smlouvou?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #13364 /* ~Když se otočíš zpět k Mortaiovi, vidíš, že jeho obličej se změnil v rozšklebenou lebku. Zdá se, že zbytek návštěvníků baru se zastavil a mlčí a vypadají jako ledové sochy. Mortai otvírá tlamu ze které se řine proud prachu.~ */
  IF ~~ THEN REPLY #13477 /* ~"Mortai...?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13365 /* ~Se skřípěním, hlava mrtvého promluví, prach se řine z jeho zubů...

     *Znamení*

     *Ale pamatuj... všechno má svou cenu*

     *A co může změnit lidskou podstatu?*

Slova jsou trhaná, mrtvý sbor, mluví jako pěti, deseti, dvaceti, stovkami hlasů - mladými, starými, mužskými, ženskými, zoufalými, klidnými, hysterickými...~ */
  IF ~~ THEN REPLY #13478 /* ~"Povahu člověka...?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13366 /* ~Jakmile jsi promluvil, cítíš mdlobu, a další věc, kterou slyšíš je Mortaiův hlas, normální, a jeho paži cítíš na svém ramenu. "Pane, jste v pořádku?" Znepokojeně se usmívá. "Myslel jsem, že jste na chvíli mimo..." ~ */
  IF ~~ THEN REPLY #13479 /* ~Zkus se zorientovat...~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #13367 /* ~To je jako kdyby čas zmizel a obnovil znovu svůj přirozený chod... zbytek baru se vrací k normálu a Mortaiův obličej už nevypadá jako mrtvý. Cítíš nějaký cizí tlak uvnitř své hlavy, jako kdyby se něco chtělo zoufale z ní vynořit, ale nemůže. Zkušenost s mrtvou hlavou, která foukala prach... je to, jakoby sis vzpomněl najednou na desítky myšlenek, které dohromady tvoří jeden obraz... a ty víš, že každý hlas mrtvé hlavy, něco znamená... dlouhou smrt. ~ */
  IF ~~ THEN REPLY #13480 /* ~"Dej mi chvilku... Budu v pořádku."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13368 /* ~Mortai stahuje své ruce s tvých ramen... vypadá nešťastně, spíše ho trápí ztráta zákazníka, než tvůj stav. Když upřeš svůj pohled na pergamen ležící na stole, vycítíš, že to není poprvé co jsi podepsal smlouvu... pravděpodobně jsi to už někdy udělal.~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13481 /* ~Dokonči podepsání smlouvy.~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13482 /* ~Dokonči podepsání smlouvy.~ */ GOTO 23
  IF ~~ THEN REPLY #13483 /* ~"Totiž, Mortaii... Myslím, že s podpisem ještě posečkám. Nejdřív bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13484 /* ~"Nemyslím, že bys mi mohl pomoci... sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 12.1 13.1 63.1
  SAY #13369 /* ~Jakmile se znovu dotkneš pera a pergamenu, cítíš opět slabé chvění ve své hlavě...~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13485 /* ~Potlač vzpomínky, podepiš smlouvu...~ */ GOTO 22
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13486 /* ~Potlač vzpomínky, podepiš smlouvu...~ */ GOTO 23
  IF ~~ THEN REPLY #13487 /* ~Podlehni vzpomínkám.~ */ GOTO 14
  IF ~~ THEN REPLY #13488 /* ~"Totiž, Mortai... Myslím, že s podpisem ještě posečkám. Nejdřív bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13489 /* ~"Nemyslím, že bys mi mohl pomoci... sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #13370 /* ~Naškrábeš 'X' na všechna tři místa, která ti Mortai označil. Jakmile dokončíš poslední, Mortaiovy ruce vyšlehnou jako dva biče: levá ruky se rychle sápe po pergamenu a pravou ti podává dohodnutou částku... padesát měďáků. ~ */
  IF ~~ THEN REPLY #13490 /* ~"Teď, když to máme z krku, tak bych měl na tebe pár otázek..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13491 /* ~"Náš obchod je uzavřen... sbohem."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 23 // from: 20.1 21.1
  SAY #13371 /* ~Naškrábeš 'X' na všechna tři místa, která ti Mortai označil. Jakmile dokončíš poslední, Mortaiovy ruce vyšlehnou jako dva biče: levá ruky se rychle sápe po pergamenu a pravou ti podává dohodnutou částku... sto měďáků. ~ */
  IF ~~ THEN REPLY #13492 /* ~"Teď, když to máme z krku, tak bych měl na tebe pár otázek..."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 9
  IF ~~ THEN REPLY #13493 /* ~"Náš obchod je uzavřen... sbohem."~ */ DO ~SetGlobal("Mortai_Contract","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(250)
~ GOTO 56
END

IF ~~ THEN BEGIN 24 // from: 9.3
  SAY #13372 /* ~Mortai obezřetně vyhlíží. "Obávám se, že to není možné udělat. Smlouva je podepsaná, pevná a závazná."~ */
  IF ~~ THEN REPLY #13494 /* ~"Je nějaký způsob, kterým bychom mohli ukončit tu smlouvu?"~ */ GOTO 25
  IF ~~ THEN REPLY #13495 /* ~Bluf: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13496 /* ~Pravda: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13497 /* ~"Tedy nevadí. Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13498 /* ~"Jen mě to zajímalo. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13373 /* ~Mortai kýve hlavou. "To je už záležitostí práva." Klepe bradou a mlaská jazykem. "Pro někoho jiného bych to klidně udělal, ale pro vás... s tvým vzhledem, myslím, že odměna přijde brzy."~ */
  IF ~~ THEN REPLY #13499 /* ~Bluf: "A co tohle: Dej mi tu smlouvu, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13500 /* ~Pravda: "A co tohle: Dej mi tu smlouvu, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #13501 /* ~"Tedy dobrá. Měl bych ještě pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13502 /* ~"Tedy sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 26 // from: 24.1 24.2 25.0 25.1
  SAY #13374 /* ~Mortai úsměv zamrzá a oči mu lezou z důlků. "Jestliže tady vytáhnete zbraně, nebudete mít žádnou šanci je použít. Nad tímhle místem se vznášejí strážci, které není dobré si rozčílit. A jestli se ti je podaří porazit, Spalovači to uvidí a budeš potrestán. Takovou pošetilou hrozbu v mé přítomnosti vůbec nevynášej."~ */
  IF ~~ THEN REPLY #13503 /* ~"Risknu to... připrav se zemřít."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13504 /* ~"Tak na to zapomeň. Ještě mám pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13505 /* ~"Tak nevadí. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 27 // from: 9.6
  SAY #13375 /* ~"Samozřejmě. O kterém návštěvníkovi chcete něco vědět?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13506 /* ~"Můžeš mi vyprávět o Smrtichtivém?~ */ GOTO 28
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13507 /* ~"Můžeš mi vyprávět o Serem?"~ */ GOTO 31
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13508 /* ~"Můžeš mi říct něco o Zasvěcenci Emoricovi?"~ */ GOTO 32
  IF ~  GlobalGT("Emoric","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13509 /* ~"Můžeš mi říct něco o Zasvěcenci Emoricovi?"~ */ GOTO 33
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13510 /* ~"Můžeš mi říct něco o Starém Mědioku?"~ */ GOTO 36
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
~ THEN REPLY #13511 /* ~"Vlastně, zapomeň na to -- Neznám jejich jména. Místo toho bych se ještě na něco zeptal..."~ */ GOTO 9
  IF ~  GlobalGT("Sere","GLOBAL",0)
~ THEN REPLY #13512 /* ~"Vlastně nevadí. Místo toho bych se ještě na něco zeptal..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #13513 /* ~"Vlastně nevadí. Místo toho bych se ještě na něco zeptal..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #13653 /* ~"Vlastně nevadí. Místo toho bych se ještě na něco zeptal..."~ */ GOTO 9
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #13654 /* ~"Vlastně nevadí. Místo toho bych se ještě na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13655 /* ~"Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13376 /* ~"Ubohý, ubohý Zasvěcenec." Mortai si pomlaskává. "Vyhledává mrtvoly s hněvem a to je pro Spalovače maximálně nevhodné."~ */
  IF ~~ THEN REPLY #13514 /* ~"Spalovačům není dovoleno mít touhy?"~ */ GOTO 29
  IF ~~ THEN REPLY #13515 /* ~"Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13516 /* ~"Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 29 // from: 13.2 28.0 31.0 33.0 36.0 37.0 40.0 63.2
  SAY #13377 /* ~"Ah, ano." Mortai se mračí. "Příliš mnoho hněvu, příliš mnoho emocí předchází Pravé smrti. Vypadá to na opačnou filozofii, než jakou zastáváš." ~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #13517 /* ~"Pravá smrt?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 30
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13518 /* ~"Pravá smrt?"~ */ GOTO 30
  IF ~~ THEN REPLY #13519 /* ~"Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13520 /* ~"Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #13378 /* ~"Pravá smrt je stav pokojného zapomenutí, vše, co Spalovači hledají... a snaží se každému pomoci." Odmítavě mumlá. "Existuje něco, co váže naše duše k tomuto životu, otázkou zůstává, zda nás svazuje bohatství a nebo emoce. Vidíš... Hněv je jako kotva na duši, zamezuje možnosti dosažení Pravé smrti..." Kýve hlavou. "To je špatné, opravdu špatné."~ */
  IF ~~ THEN REPLY #13521 /* ~"Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13522 /* ~"Aha. Velmi poučné. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY #13379 /* ~"Chudák Zasvěcenec. Slyšel jsem, že uzavřela smlouvu teprve nedávno, ... a celou ji to změnilo. Teď se zdá být plná hořkosti a hněvu, a už nevěří ve spalovačskou myšlenku. Bojím se, že tato hořkost by mohla ohrozit její postavení ve společnosti."~ */
  IF ~~ THEN REPLY #13523 /* ~"Spalovačům není dovoleno mít touhy?"~ */ GOTO 29
  IF ~~ THEN REPLY #13524 /* ~"Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13525 /* ~"Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 32 // from: 11.0 27.2
  SAY #13380 /* ~"Respektovaný Zasvěcenec Čtvrtého kruhu? Velmi kouzelný muž." Mortai tě pozoruje, plný úzkosti. "Co s ním máš za problémy, jestli se můžu zeptat? Možná ti budu umět pomoci."~ */
  IF ~~ THEN REPLY #13526 /* ~"Tedy, přemýšlel jsem, že bych uzavřel smlouvu s Emoricem."~ */ GOTO 34
  IF ~~ THEN REPLY #13527 /* ~Lež: "Tedy, přemýšlel jsem, že bych uzavřel smlouvu s Emoricem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_2","GLOBALLaw",-1)
~ GOTO 34
  IF ~~ THEN REPLY #13528 /* ~"Nemyslím. Ale ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13529 /* ~"Ne, nemyslím, že bys mi mohl pomoci. Sbohem, Mortai."~ */ GOTO 8
END

IF ~~ THEN BEGIN 33 // from: 11.1 27.3
  SAY #13381 /* ~"Respektovaný Zasvěcenec Čtvrtého kruhu? Velmi kouzelný muž. V tomto životě se zřekl se veškerého hněvu." Souhlasně přikyvuje. ~ */
  IF ~~ THEN REPLY #13530 /* ~"Spalovačům není dovoleno mít touhy?"~ */ GOTO 29
  IF ~~ THEN REPLY #13531 /* ~"Aha. Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13532 /* ~"Díky za informaci. Sbohem, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 34 // from: 32.0 32.1
  SAY #13382 /* ~Mortai viditelně znervózní. "Ne, ne, dobrý pane! Nebude ti moci nabídnout ani poloviční cenu, já ti nabídnu takovou smlouvu, která bude no... no... mnohem výhodnější, než ta jeho! Uvaž to před tím, než uděláš nějaké rozhodnutí!" ~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13533 /* ~"O kolik víc mi nabídneš?"~ */ DO ~SetGlobal("Mortai_Blackmail","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #13534 /* ~"Popřemýšlím o tom. Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13535 /* ~"Nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #13383 /* ~"Já..." Mortai si mumlá pod fousy. "nabízím sedmdesát pět... ne, sto měďáků, pane! Mnohem, mnohem více, než ti nabídne jakýkoli jiný Spalovač." ~ */
  IF ~~ THEN REPLY #13536 /* ~"Dobře, podepíšu s tebou."~ */ GOTO 12
  IF ~~ THEN REPLY #13537 /* ~"Popřemýšlím o tom. Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13538 /* ~"Nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 27.4
  SAY #13384 /* ~Mortaiův pohled zchladl. "Ten s měděnýma očima? *Jeho* oči prozrazují dost o jeho zdejších záměrech." Rukou udělal půlkruh nad srdcem. "Snad je to člen Spalovačů, ale já bych mu *nikdy* Smrtelnou Smlouvu nepodepsal. Jeho duše je měděná a pro mě to znamená přemíru touhy po penězích. On je Spalovač jenom podle jména."~ */
  IF ~~ THEN REPLY #13539 /* ~"Spalovačům není dovoleno mít touhy?"~ */ GOTO 29
  IF ~  Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #13540 /* ~"Oh, on taky nabízí smlouvy?"~ */ GOTO 37
  IF ~  Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #13541 /* ~"Myslíš, že bych s ním mohl uzavřít Smrtelnou smlouvu?"~ */ GOTO 40
  IF ~~ THEN REPLY #13542 /* ~"Aha. Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13545 /* ~"Díky za informaci. Sbohem, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #13385 /* ~Mortai nesouhlasně zamlaskal. "Ano, ale je mnohem lepší, žes podepsal mně, než tomu chamtivému monstru. Jistě víš, že chamtivost je touha, která zabíjí a pro Spalovače je dvakrát tak smrtelná."~ */
  IF ~~ THEN REPLY #13543 /* ~"Spalovačům není dovoleno mít touhy?"~ */ GOTO 29
  IF ~~ THEN REPLY #13546 /* ~"Co by se stalo, kdybych s ním uzavřel smlouvu?"~ */ GOTO 38
  IF ~~ THEN REPLY #13547 /* ~"Aha. Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13548 /* ~"Díky za informaci. Sbohem, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #13386 /* ~Mortai na tebe pohlédl chladným pohledem. "Pak bys ses dopouštěl trestného činu. Nechal bych tě zatknout a potom - s požehnáním práva - by Spalovači profitovali z tvé Smrtelné smlouvy mnohem *dříve*, než jsi zamýšlel."~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #13544 /* ~"No, už jsem s ním jednu uzavřel. Co s tím naděláš?"~ */ GOTO 39
  IF ~~ THEN REPLY #13549 /* ~"Aha. Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13550 /* ~"Díky za informaci. Sbohem, Mortai."~ */ GOTO 56
END

IF ~~ THEN BEGIN 39 // from: 38.0 50.0 52.0
  SAY #13387 /* ~Mortaiův obličej zbledl... ani sis nemyslel, že je to u Spalovače možné. Chvilku něco drmolil, jako by si nebyl jist, co udělat. "Ty ..." Najednou se otočil, třikrát zatleskal a barem zazněl mohutný hřmot větru...~ */
  IF ~~ THEN REPLY #13551 /* ~"Tak dobře. Připrav se zemřít..."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.2
  SAY #13388 /* ~"Ano, ale je mnohem lepší, abys uzavřel smlouvu se mnou, než s tím chamtivým monstrem." Mortai nesouhlasně zamlaská. "Jistě víš, že chamtivost je touha, která zabíjí a pro Spalovače je dvakrát tak smrtelná. Nenamáhej se bavit s Mědiokem, dobrý muži... obchoduj raději se mnou."~ */
  IF ~~ THEN REPLY #13552 /* ~"Spalovačům není dovoleno mít touhy?"~ */ GOTO 29
  IF ~~ THEN REPLY #13553 /* ~"Aha. Ještě bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13554 /* ~"Nemyslím, že bys mi mohl pomoci. Sbohem, Mortai."~ */ GOTO 8
END

IF ~~ THEN BEGIN 41 // from: 42.1 55.1
  SAY #13389 /* ~Mortai se zamračil a podíval se do záhybů svého hávu. "Obyčejně s sebou dokumenty nenosím, ale je možné, že..." Odněkud z hábitu vytáhl svazek papírů a začíná jimi listovat. "Ne, nemám to tady. Chtěl bys, abych to donesl z komory?"~ */
  IF ~~ THEN REPLY #13555 /* ~"Kdybys mohl, rád bych se na ni podíval."~ */ GOTO 64
  IF ~~ THEN REPLY #13556 /* ~"To zrovna ne. Chtěl bych odstoupit od smlouvy."~ */ GOTO 43
  IF ~~ THEN REPLY #13557 /* ~"Smlouvy skladujete tady v úřadě?"~ */ GOTO 55
  IF ~~ THEN REPLY #13558 /* ~"Ne, teď zrovna ne. Místo toho bych se ještě na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13559 /* ~"Jen prověřuji, abych věděl, že jsi ten, s kým smlouvu uzavřel. Zapomeň na to."~ */ GOTO 56
END

IF ~~ THEN BEGIN 42 // from: 2.2 9.4 61.2
  SAY #13390 /* ~Mortai se zamračil. Vypadá zmateně. "Možná..." Na chvilku se zamyslí. "Nicméně si to jméno nevybavuji."~ */
  IF ~~ THEN REPLY #13560 /* ~"Chtěl bych tu smlouvu zrušit."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13561 /* ~"Máš tu smlouvu u sebe?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13562 /* ~"Mohl bych ještě jednou vidět Angyarovu smlouvu?"~ */ GOTO 54
  IF ~~ THEN REPLY #13563 /* ~"Tedy nevadí. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13564 /* ~"Jen jsem byl zvědavý. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 43 // from: 41.1 42.0 55.0 66.0
  SAY #13391 /* ~Mortai vypadá ostražitě. "Obávám se, že je to nemožné. Smlouva je podepsána, dojednána a uzavřena."~ */
  IF ~~ THEN REPLY #13565 /* ~"Smlouva tomu člověku drásá život."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13566 /* ~"Smlouva tomu člověku drásá život. Působí mu utrpení... je možné, že by s takovými emocemi vířícími jeho myslí ani nemusel dojít Pravé smrti."~ */ GOTO 45
  IF ~~ THEN REPLY #13567 /* ~"Je nějaký způsob, kterým bychom mohli ukončit tu smlouvu?"~ */ GOTO 49
  IF ~~ THEN REPLY #13568 /* ~Bluf: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13569 /* ~Pravda: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13570 /* ~"Tedy nevadí. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13571 /* ~"Jen jsem byl zvědavý. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 44 // from: 43.0 49.2 52.1
  SAY #13392 /* ~Mortai vrtí hlavou. "To je vskutku nešťastné... ale teď je to záležitost práva, nikoli srdce."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13572 /* ~"Smlouva tomu člověku působí utrpení... je možné, že by s takovými emocemi vířícími jeho myslí ani nemusel dojít Pravé smrti."~ */ GOTO 45
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13573 /* ~"Je *nějaký* způsob, kterým bychom mohli ukončit tu smlouvu?"~ */ JOURNAL #64581 /* ~Mluvil jsem s Mortaiem Hrobkopem o Angyarově Smrtelné smlouvě a on nebyl ochotný to urovnat. Nevím, jak ho přesvědčit, ale nějaká cesa být musí... jedna věc, které jsem si všiml, je, že se Mortai chová jinak než ostatní Spalovači, které jsem v Sigilu viděl. Možná když se dozvím víc o tom, čemu Spalovači a ostatní lidé v baru věří, možná najdu nějakou cestu, jak se o kontraktu dohodnout, třeba tím, že se pokusím obrátit jeho filosofii proti němu samotnému.~ */ GOTO 49
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #64585 /* ~"Je tu ještě *nějaká* jiná cesta, jak bych mohl vyrovnat ten kontrakt?"~ */ GOTO 49
  IF ~~ THEN REPLY #13574 /* ~Bluf: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13575 /* ~Pravda: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13576 /* ~"Tedy nevadí. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13577 /* ~"Jen jsem byl zvědavý. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.0 49.3 52.2
  SAY #13393 /* ~Mortai nad tím chvíli uvažuje, vypadá to, jako bys ho zahnal do kouta. "Nemohu. Je to záležitost práva, můj příteli... kromě toho, na signatáři leží to břemeno překonat své pocity, aby došel Pravé Smrti. Nemůžu vy..."~ */
  IF ~~ THEN REPLY #13578 /* ~"Takže mi říkáš, že jsi mu odepřel Pravou smrt kvůli kusu pergamenu?"~ */ GOTO 46
  IF ~~ THEN REPLY #13579 /* ~"Je nějaký způsob, kterým bychom mohli ukončit tu smlouvu?"~ */ GOTO 49
  IF ~~ THEN REPLY #13580 /* ~Bluf: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13581 /* ~Pravda: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13582 /* ~"Tedy nevadí. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13583 /* ~"Jen jsem byl zvědavý. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #13394 /* ~Mortai povzdechl a pozvedl ruce, jakoby tě chtěl uklidnit. "Podívej, to *není* tak, jak si myslíš..."~ */
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13584 /* ~"Evidentně opovrhuješ filosofií Spalovačů a zatracuješ lidskou duši jen pro kus papíru. Ví ostatní členové tvé frakce o tvém chování v tomto ohledu? Jestli ne, tak brzy budou."~ */ GOTO 47
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13585 /* ~"Evidentně opovrhuješ filosofií Spalovačů a zatracuješ lidskou duši jen pro kus papíru. Ví ostatní členové tvé frakce o tvém chování v tomto ohledu? Jestli ne, tak brzy budou."~ */ GOTO 51
  IF ~~ THEN REPLY #13586 /* ~"Je nějaký způsob, kterým bychom mohli ukončit tu smlouvu?"~ */ GOTO 49
  IF ~~ THEN REPLY #13587 /* ~Bluf: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13588 /* ~Pravda: "Teď mi tu smlouvu dáš, nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13589 /* ~"Tedy nevadí. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13590 /* ~"Jen jsem byl zvědavý. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #13395 /* ~Mortai na tebe chvíli zíral, pootevřel ústa, zavřel je a pak promluvil. "Ke všem čertům... počkej tady." Ztišil svůj hlas v šepot. "A drž jazyk za zuby." Zakabonil se na tebe a oddusal.~ */
  IF ~~ THEN REPLY #13591 /* ~Počkej...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #13396 /* ~O několik sekund později se vrátil. Drží zaprášený kus pergamenu s podává ti ho. "Tady!" Pronesl pohrdavě. "Všechno pro klid duše... teď vypadni a už mě nikdy neotravuj!"~ */
  IF ~~ THEN REPLY #13592 /* ~"Půjdu... pro tentokrát. Sbohem, Mortai."~ */ DO ~GiveItemCreate("Acontrac",Protagonist,1,0,0)
SetGlobal("Mortai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 43.2 44.1 44.2 45.1 46.2 52.3
  SAY #13397 /* ~Mortai vrtí hlavou. "To je teď záležitost práva, nelze o tom diskutovat."~ */
  IF ~~ THEN REPLY #13593 /* ~Bluf: "A co tohle: Vydej mi Angyarovu smlouvu nebo tě na místě zabiji."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mortai_1","GLOBALLaw",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13594 /* ~Pravda: "A co tohle: Vydej mi Angyarovu smlouvu nebo tě na místě podříznu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mortai_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #13595 /* ~"Ale smlouva tomu člověku drásá život."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13596 /* ~"Ale smlouva tomu člověku působí utrpení... je možné, že by s takovými emocemi vířícími jeho myslí ani nemusel dojít Pravé smrti."~ */ GOTO 45
  IF ~~ THEN REPLY #13597 /* ~"Tedy dobrá. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13598 /* ~"Tedy sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from:
  SAY #13398 /* ~Mortai ztuhl, jeho oči tě hodnotí. "Pokud tu smlouvu vezmeš, nedostaneš se odtud živý. Toto místo obchází strážní, které nejsi schopen ani *vidět*. A i kdybys unikl, Spalovači se postarají o to, abys došel trestu. Nedělej přede mnou takové stupidní výhrůžky."~ */
  IF ~~ THEN REPLY #13599 /* ~"Risknu to. Zkus mě zastavit."~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 39
  IF ~~ THEN REPLY #13600 /* ~Vrať smlouvu Mortaiovi.~ */ GOTO 66
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY #13399 /* ~Mortai na tebe chvíli zíral s pootevřenými ústy, pak je zavřel a znovu otevřel. "Ke všem čertům..." Sáhl do svého hábitu a hodil ti smlouvu. "Tady!" Pronesl pohrdavě. "Všechno pro klid duše... vypadni!"~ */
  IF ~~ THEN REPLY #13601 /* ~"Půjdu... pro tentokrát. Sbohem, Mortai."~ */ DO ~SetGlobal("Mortai","GLOBAL",2)
GiveItem("Acontrac",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.3 43.4 44.3 44.4 45.2 45.3 46.3 46.4 49.0 49.1
  SAY #13400 /* ~Mortai ztuhl, jeho oči tě hodnotí. "Jestli na mne vytáhneš zbraň, nezůstaneš naživu tak dlouho, abys ji stihl použít. Toto místo obchází strážní, které nejsi schopen ani *vidět*. A i kdybys unikl, Spalovači se postarají o to, abys došel odplaty. Nedělej přede mnou takové hloupé výhrůžky ."~ */
  IF ~~ THEN REPLY #13602 /* ~"Risknu to... připrav se zemřít."~ */ GOTO 39
  IF ~~ THEN REPLY #13603 /* ~"Smlouva tomu člověku drásá život."~ */ GOTO 44
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #13604 /* ~"Smlouva tomu člověku působí utrpení... je možné, že by s takovými emocemi vířícími jeho myslí ani nemusel dojít Pravé smrti."
~ */ GOTO 45
  IF ~~ THEN REPLY #13605 /* ~"Je ještě jiná možnost, jakou by bylo možno smlouvu ukončit?"~ */ GOTO 49
  IF ~~ THEN REPLY #13606 /* ~"Tak na to zapomeň. Mám ještě pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13607 /* ~"Tedy nevadí."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from:
  SAY #13401 /* ~(NULL NODE)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 9.5 42.2 55.2 61.3 66.1
  SAY #13402 /* ~Mortai sáhl do záhybů svého hávu a drží smlouvu tak, aby ses na ni podíval. "Tady to je, pane... Angyar se stal velmi bohatý jenom pouhým podpisem." Díváš se na smlouvu; vypadá pravě... a velice úředně.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13608 /* ~Předstírej, že si ji prohlížíš, vyměň pergamen za falešnou smlouvu a podej ji zpátky Mortaiovi. ~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13609 /* ~Předstírej, že si ji prohlížíš, vyměň pergamen za falešnou smlouvu a podej ji zpátky Mortaiovi.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13610 /* ~Předstírej, že si ji prohlížíš, vyměň pergamen za falešnou smlouvu a podej ji zpátky Mortaiovi.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13611 /* ~"Výborně... všechno se zdá být v pořádku."~ */ GOTO 66
END

IF ~~ THEN BEGIN 55 // from: 41.2
  SAY #13403 /* ~"Dokud nejsou dodány do Márnice, ano. Podepsal jsem ve svém životě mnoho smluv, mnoho smluv... včetně mé vlastní. Kolik starostí bylo natahat je všechny do Márnice."~ */
  IF ~~ THEN REPLY #13613 /* ~"Chtěl bych ukončit tu smlouvu, kterou jsi uzavřel s Angyarem."~ */ GOTO 43
  IF ~  Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13614 /* ~"Máš u sebe tu smlouvu, kterou jsi uzavřel s Angyarem?"~ */ GOTO 41
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13615 /* ~"Mohl bych ještě jednou vidět Angyarovu smlouvu?"~ */ GOTO 54
  IF ~~ THEN REPLY #13616 /* ~"Tedy nevadí. Ještě bych se na něco zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13617 /* ~"Jen jsem byl zvědavý. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 9.9 10.3 11.3 22.1 23.1 24.4 25.3 26.2 27.10 28.2 29.3 30.1 31.2 33.2 36.4 37.3 38.2 41.4 42.4 43.6 44.6 45.5 46.6 49.5 52.5 55.4 66.3
  SAY #13404 /* ~Jak ses otočil k odchodu, Mortai přikývl. "Hmmmm..." Má v tváři podivný výraz.~ */
  IF ~~ THEN REPLY #13618 /* ~"Něco není v pořádku?"~ */ GOTO 57
  IF ~~ THEN REPLY #13619 /* ~"Sbohem, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #13405 /* ~Mortai se zamračil. "Promiň, *musím* se zeptat ještě jednou... jsi si zcela jist, že jsme se už nepotkali?"~ */
  IF ~~ THEN REPLY #13620 /* ~"Možná. Nepamatuji si tě."~ */ GOTO 58
  IF ~~ THEN REPLY #13621 /* ~"Ne, nemyslím."~ */ GOTO 58
  IF ~~ THEN REPLY #13622 /* ~"Sbohem, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #13406 /* ~"Hmmm." Mortai vrtí hlavou. "Nuže, nevadí."
~ */
  IF ~~ THEN REPLY #13623 /* ~"Sbohem, Mortai."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 56.1 57.2 58.0
  SAY #13407 /* ~"Ano, sbohem, sbohem..." Jak odcházíš, Mortai tě zkoumá a slyšíš, jak si mumlá pod vousy. "Něco na něm je..."~ */
  IF ~~ THEN REPLY #13624 /* ~Odejít.~ */ EXIT
END

IF ~  Global("Mortai","GLOBAL",2)
~ THEN BEGIN 60 // from:
  SAY #13408 /* ~"Ah..." Mortai se na tebe zamračil, jen ses přiblížil. "Zase ty... přišel jsi mě donutit odstoupit od dalších smluv ve jménu společenstva Spalovačů?" Mračí se a pak vzdechne. "Dobrá, nevadí, nevadí, co bylo, bylo..." Nahodil svůj starý usměv a kývne na tebe. "Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #13625 /* ~"Měl bych pro tebe pár otázek..."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #13626 /* ~"Nevadí. Musím jít."~ */ DO ~SetGlobal("Mortai","GLOBAL",1)
~ EXIT
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",0)
~ THEN BEGIN 61 // from:
  SAY #13409 /* ~"Á, cestovatel!" Jak tě uviděl, Mortai se usmívá. "Znovu se setkáváme... a jak ti můžu být nápomocen v tento nádherný Sigilský den?" Vypadá nadšeně. "Možná jsi přišel podepsat smlouvu?"~ */
  IF ~  Global("Mortai_Blackmail","GLOBAL",0)
~ THEN REPLY #13627 /* ~"Smlouva?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Mortai_Blackmail","GLOBAL",1)
~ THEN REPLY #13628 /* ~"Smlouva?"~ */ DO ~SetGlobal("Know_Contract","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Angyar_Quest","GLOBAL",2)
Global("Mortai_Fetch","GLOBAL",0)
~ THEN REPLY #13629 /* ~"Ty jsi ten, co uzavřel Smrtelnou smlouvu s Angyarem?"~ */ GOTO 42
  IF ~  Global("Mortai_Fetch","GLOBAL",1)
HasItem("Acontrac","Mortai")
~ THEN REPLY #13630 /* ~"Mohl bych vidět tu smlouvu, kterou jsi uzavřel s Angyarem?"~ */ GOTO 54
  IF ~~ THEN REPLY #13631 /* ~"Ne, chtěl jsem se na něco zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #13632 /* ~"Nemyslím, že bys mi mohl pomoci. Musím jít."~ */ GOTO 8
END

IF ~  Global("Mortai","GLOBAL",1)
Global("Mortai_Contract","GLOBAL",1)
~ THEN BEGIN 62 // from:
  SAY #13410 /* ~"Á, cestovatel!" Jak tě uviděl, Mortai se usmívá. "Znovu se setkáváme... a jak ti můžu být nápomocen v tento nádherný Sigilský den?"~ */
  IF ~~ THEN REPLY #13633 /* ~"Chtěl bych se tě na něco zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #13634 /* ~"Nevadí. Musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 13.3
  SAY #13411 /* ~"Dychtivý?! Já..." Mortai pozvedl obočí a pak zdvořile zakašlal. "Pane... chceš podepsat tu smlouvu nebo ne? Jestli ne..."~ */
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",0)
~ THEN REPLY #13635 /* ~"Chtěl bych podepsat tu smlouvu."~ */ DO ~SetGlobal("Memory_Dustman_Contract","GLOBAL",0)
GiveExperience(Protagonist,500)
~ GOTO 14
  IF ~  Global("Memory_Dustman_Contract","GLOBAL",1)
~ THEN REPLY #13636 /* ~"Chtěl bych podepsat tu smlouvu."~ */ GOTO 21
  IF ~~ THEN REPLY #13637 /* ~"Je něco špatného na projevování emocí?"~ */ GOTO 29
  IF ~~ THEN REPLY #13638 /* ~"Omlouvám se, nechci tu smlouvu podepsat. Spíš bych se na něco rád zeptal..."~ */ GOTO 9
  IF ~~ THEN REPLY #13639 /* ~"Bez urážky... ale nemyslím, že bys mi mohl pomoci. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 64 // from: 41.0
  SAY #13412 /* ~"Počkej chvilku..." Poodstoupil od stolu a odešel.~ */
  IF ~~ THEN REPLY #13640 /* ~Počkej, než se vrátí...~ */ DO ~SetGlobal("Mortai_Fetch","GLOBAL",1)
GiveItemCreate("Acontrac",Myself,1,0,0)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #64582 /* ~Zdá se, že Mortai nenosil Angyarův kontrakt u sebe. Měl pro něj nejdřív dojít... ale když byl hotový, nevrátil ho zpátky na místo v pokoji. ~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 69.0
  SAY #13413 /* ~"Tady to je, pane... Angyar... takový zasmušilý chlapík, podepsal velice rychle..." Zamlaskal. "A teď je to *mnohem* bohatší chlapík." Prohlížíš si smlouvu; vypadá pravě... a velice úředně.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,36,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13641 /* ~Předstírej, že si ji prohlížíš, vyměň pergamen za falešnou smlouvu a podej ji zpátky Mortaiovi.~ */ GOTO 67
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #13642 /* ~Předstírej, že si ji prohlížíš, vyměň pergamen za falešnou smlouvu a podej ji zpátky Mortaiovi.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,35,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #13643 /* ~Předstírej, že si ji prohlížíš, vyměň pergamen za falešnou smlouvu a podej ji zpátky Mortaiovi.~ */ DO ~GiveItem("Acontrac",Protagonist)
~ GOTO 68
  IF ~~ THEN REPLY #13644 /* ~"Výborně... všechno se zdá být v pořádku."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 50.1 54.3 65.3 67.0 68.0
  SAY #13414 /* ~Mortai smlouvu odložil a ty sis všiml, že ji dal do svého hábitu místo uložení do komory. Zamlaskal. "Stačilo ti to jako odpověď na tvou otázku ohledně smlouvy?"~ */
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13646 /* ~"Chci vypovědět tu smlouvu."~ */ GOTO 43
  IF ~  HasItem("Acontrac","Mortai")
~ THEN REPLY #13647 /* ~"Mohl bych ještě jednou vidět Angyarovu smlouvu?"~ */ GOTO 54
  IF ~~ THEN REPLY #13648 /* ~"Ano, ale ještě jsem měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #13649 /* ~"Ano, to je všem co jsem chtěl vědět. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 54.0 65.0
  SAY #13415 /* ~Během prohlížení smlouvy ses na moment od Mortaie odvrátil... zrovna když jsi chtěl smlouvy prohodit, zakašlal. "Pane... dával bych si na tu smlouvu pozor. Kdybych zjistil, že chybí, musel bych přijmout rázná opatření." Zamlaskal a lusknul prsty. "Tu smlouvu, když dovolíš..."~ */
  IF ~~ THEN REPLY #13650 /* ~Dej mu ji zpátky.~ */ GOTO 66
END

IF ~~ THEN BEGIN 68 // from: 54.1 54.2 65.1 65.2
  SAY #13416 /* ~Během prohlížení smlouvy ses na moment od Mortaie odvrátil a smlouvy prohodil. Zdá se, že si toho nevšiml.~ */
  IF ~~ THEN REPLY #13652 /* ~Vrať mu 'Angyarovu smlouvu'.~ */ DO ~DestroyItemObject("FalseCon",Protagonist,FALSE)
AddexperienceParty(500)
~ GOTO 66
END

IF ~~ THEN BEGIN 69 // from: 64.0
  SAY #48404 /* ~Po chvíli se Mortai vrátil se zaprášeným pergamenem v ruce. Ukázal ti ho, aby sis ho mohl prohlédnout, ale nedá si ho vzít z ruky.~ */
  IF ~~ THEN REPLY #48405 /* ~Prohlédni si pergamen.~ */ GOTO 65
END
