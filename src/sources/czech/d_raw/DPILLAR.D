// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPILLAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPILLAR~

IF ~  Global("Pillar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #51733 /* ~Pohled na tuto věc - tu hnusnou, obrovskou, pulzující *věc* - tě naplnil pocitem hnusu, nenávisti, ale také slabým pocitem známosti. Nespočet hnijících hlav, které tvoří tuto obrovskou hromadu, se neustále vrtí a posunuje, nadává, pláče, mluví, křičí a šeptá. Hlavy neustále probublávají na povrch, zatímco jiné se ponořují do odporného pilíře.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #51734 /* ~Přilákej pozornost Pilíře.~ */ EXTERN ~DMORTE~ 512
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53326 /* ~Přilákej pozornost Pilíře.~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #53327 /* ~Odejdi od Pilíře, než si tě všimne.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 53.1 53.2
  SAY #53328 /* ~Udělal jsi další opatrný krok směrem k pilíři, veškerá konverzace se náhle *zastavila*. Tucty hlav, které tvoří povrch pilíře, se k tobě pomalu natočily, všechny najednou. Tiše si tě prohlížejí, jejich dech tě zavaluje jako vlna koncentrovaného pachu.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53329 /* ~"Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53330 /* ~"Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53331 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53332 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53333 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53334 /* ~"Jenom procházím. Sbohem."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #68082 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 56.0 56.1 61.0 61.1 63.0 63.1
  SAY #53335 /* ~Všechny hlavy na povrchu pilíře promluvily najednou a vytvořily jeden hlas - příšerný, bublavý zvuk, který ničí tvé uši, zatímco dech vycházející z úst hlav otravuje tvé čichové buňky. "PACH, JE SILNÝ. BRZY PROJDE PŘES SFÉRY, BRZY, A PAK BEL PŘIJDE."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53336 /* ~"Zápach? Co tím myslíš?"~ */ GOTO 3
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #53337 /* ~"Zápach? Co tím myslíš?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53338 /* ~Oči hlav se natočily k Fall-From-Grace. "PACH... JEJÍ PACH... *PACH* TANAR'RI. HOŘKOSLADKÁ VŮNĚ DOSÁHNE DALEKO A BRZY PŘIVOLÁ BAATEZU, BRZY. JEJICH PÁN, BEL, ON BUDE VELMI ZLÝ."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53339 /* ~"Aha..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53340 /* ~"Aha..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #53341 /* ~Oči hlav se natočily k Annh. "PACH... JEJÍ PACH... *PACH* ZPLOZENCE TANAR'RI. HOŘKOSLADKÁ VŮNĚ DOSÁHNE DALEKO A BRZY PŘIVOLÁ BAATEZU, BRZY. JEJICH PÁN, BEL, ON BUDE VELMI ZLÝ."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53342 /* ~"Aha..."~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53343 /* ~"Aha..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #53344 /* ~Hlavy natočily svůj pohled na tebe, ale několik z nich stále hlasitě nasává vzduch. "POKUD MÁŠ PRO NÁS *OTÁZKY*, MĚL BY SIS *POSPÍŠIT*." Několik hlav zabublalo, máš pocit, že se ti smějí.~ */
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",0)
~ THEN REPLY #53345 /* ~"Jak jsem řekl předtím: Mám-"~ */ DO ~SetGlobal("Pillar_Pharod","AR1001",1)
~ GOTO 6
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",1)
~ THEN REPLY #53346 /* ~"Jak jsem řekl předtím: Mám nějaké otázky..."~ */ GOTO 12
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #68075 /* ~"Tak jak už jsem řekl: Mám pár otázek..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #53347 /* ~Než stačíš domluvit, část pilíře se otřásla, jak se jedna z hlav prodírá na povrch. Poté, co ze sebe setřela trochu odporného slizu, poznal jsi, že je to hlava Pharoda. Vyplivl chuchvalec krvavého slizu a zaskřípal: "Annah, mé drahé dítě! Jsi to ty?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 263
END

IF ~~ THEN BEGIN 7 // from:
  SAY #53348 /* ~Ostatní hlavy zůstaly většinou zticha, zatímco mluví Pharod... pouze několik z nich si tiše šeptá a vrhá zlé pohledy na Annah a jejího otce. "Spletl jsem se, má drahá holčičko, s tou Sférou. Nebylo to dost, ne, jen se podívej, kde jsem skončil... Prosím tě, milovaná Annah! Zachraň svého ubohého otce! Zachraň mě! Oh, prosím, zachraň mě! Zachraň..." Pharodova naříkající hlava se začíná ponořovat zpět do Pilíře...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 264
END

IF ~~ THEN BEGIN 8 // from:
  SAY #53352 /* ~"DOST," zařvaly páchnoucí hlavy. "UŽ NÁS NUDÍ TVÉ NEDŮLEŽITÉ DRBY, CHCEME VĚDĚT, CO PO NÁS CHCEŠ TY."~ */
  IF ~~ THEN REPLY #53353 /* ~"Otázky. Mám otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #53354 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #53355 /* ~Udělal jsi další opatrný krok směrem k pilíři, veškerá konverzace se náhle *zastavila*. Tucty hlav, které tvoří povrch pilíře, se k tobě pomalu natočily, všechny najednou. Tiše si tě prohlížejí, jejich dech tě zavaluje jako vlna koncentrovaného pachu... dokud si nevšimli Morteho.~ */
  IF ~~ THEN DO ~SetGlobal("Pillar","GLOBAL",1)
SetGlobal("Pillar_Morte","AR1001",1)
~ EXTERN ~DMORTE~ 525
END

IF ~~ THEN BEGIN 10 // from:
  SAY #53356 /* ~Každá hlava na povrchu promluvila najednou, společně vytvořily hlas Pilíře - hrozivý bublavý zvuk, který ničí tvé uši stejně, jako pach z jejích úst ničí tvé čichové buňky. "ZASE *TY*... UŽ JE TO OPRAVDU DLOUHO." Mnoho z hlav začalo drmolit a slintat, odříkávají: "...lebka, lebka, lebka..." Olizují si rty a upřeně se dívají na Morteho.~ */
  IF ~~ THEN REPLY #53357 /* ~"Co tím myslíš?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53358 /* ~"TICHO! NEMLUVÍME K TOBĚ, ALE K LEBCE. VÍTEJ ZPĚT, MALIČKÝ. KONEČNĚ SES ROZHODL VRÁTIT SE DOMŮ, PŘIJMOUT SVŮJ KONEČNÝ OSUD, ZNOVU SE VĚNOVAT SVÉ SVATÉ POVINNOST?" Několik hlav se rozkývalo, začaly cvakat polámanými zuby a řvát: "Ano, pojď zpátky! Vrať se k nám, lebko!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 526
END

IF ~~ THEN BEGIN 12 // from: 1.2 1.3 1.4 5.1 5.2 8.0 14.0 30.0 37.3 38.2 39.1 40.1 43.1 44.1 45.1 46.1 47.0 48.0 49.0 56.2 56.3 56.4 61.2 61.3 61.4 63.2 63.3 63.4
  SAY #53359 /* ~Hlavy po celém Pilíři se přesouvají, kývají se a mumlají, než znovu promluvily a vytvořily strašidelný hlas: "DEJ NÁM TEDY OTÁZKY, A PAK BUĎ PŘIPRAVEN VYSLECHNOUT NAŠE POŽADAVKY - ZA NAŠI ODPOVĚĎ NÁM MUSÍŠ PROKÁZAT SLUŽBU."~ */
  IF ~~ THEN REPLY #53360 /* ~"Co jsi zač?"~ */ GOTO 13
  IF ~~ THEN REPLY #53361 /* ~"Jak se dostanu do Pevnosti Lítosti?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",2)
~ GOTO 15
  IF ~~ THEN REPLY #53362 /* ~"Kdo jsem?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",3)
~ GOTO 15
  IF ~~ THEN REPLY #53363 /* ~"Kdo je můj vrah?"~ */ GOTO 49
  IF ~  Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #53364 /* ~"Jak se dostanu z tohohle místa?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",4)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53365 /* ~"To nic. Sbohem."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53366 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53367 /* ~Hlavy bublají a skřípají, odpověď vychází z tisíců shnilých rtů: "ZODPOVÍME TI TUTU OTÁZKU, VÝMĚNOU ZA SLUŽBU..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53368 /* ~"Dobrá; jaký je tedy tvůj požadavek?"~ */ EXTERN ~DMORTE~ 527
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #53369 /* ~"Dobrá; jaký je tedy tvůj požadavek?"~ */ EXTERN ~DGRACE~ 172
  IF ~  NearbyDialog("Dnordom")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
~ THEN REPLY #53370 /* ~"Dobrá; jaký je tedy tvůj požadavek?"~ */ EXTERN ~DNORDOM~ 131
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
~ THEN REPLY #53371 /* ~"Dobrá; jaký je tedy tvůj požadavek?"~ */ EXTERN ~DANNAH~ 270
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
~ THEN REPLY #53372 /* ~"Dobrá; jaký je tedy tvůj požadavek?"~ */ EXTERN ~DDAKKON~ 184
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53373 /* ~"Dobrá; jaký je tedy tvůj požadavek?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53374 /* ~"Dobrá; jaký je tedy tvůj požadavek?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
~ THEN REPLY #53375 /* ~"Dobrá; jaký je tedy tvůj požadavek?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53376 /* ~"To nic. Sbohem."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53377 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #53378 /* ~Hlavy tě přerušily: "TICHO! OBTĚŽUJEŠ NÁS TAKOVÝMI PITOMÝMI OTÁZKAMI!" A jedna z hlav zařvala: "A říkat *všem* z nás lháři je-" než stačí dopovědět, je vcucnuta do nitra Pilíře.~ */
  IF ~~ THEN REPLY #53379 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53380 /* ~"V tom případě tedy odejdu. Sbohem."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53381 /* ~"V tom případě tedy odejdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 12.2 12.4
  SAY #53382 /* ~Hlavy bublají a skřípají, odpověď vychází z tisíců shnilých rtů: "ZODPOVÍME TI TUTU OTÁZKU, VÝMĚNOU ZA SLUŽBU..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53383 /* ~"Jaký je tvůj požadavek, Pilíři?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53384 /* ~"Jaký je tvůj požadavek, Pilíři?"~ */ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53385 /* ~"Jaký je tvůj požadavek, Pilíři?"~ */ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53386 /* ~"Jaký je tvůj požadavek, Pilíři?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53387 /* ~"Jaký je tvůj požadavek, Pilíři?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53388 /* ~"Jaký je tvůj požadavek, Pilíři?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53389 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53390 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #53391 /* ~Hlavy Pilíře se natočily k Mortemu. "LEBKA... POŽADUJEME LEBKU JAKO PLATBU. VRAŤ HO K NÁM, A BUDEŠ MÍT SVOU ODPOVĚĎ."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 528
END

IF ~~ THEN BEGIN 17 // from:
  SAY #53392 /* ~"NECHEJ SVÝCH CHABÝCH PROTESTŮ, LEBKO! ROZHODNUTÍ NENÍ NA TOBĚ!" Hlavy Pilíře se otočily k tobě, oči zúžené. "PŘÍLIŠ DLOUHO PODVÁDĚL SVŮJ OSUD, JE *NÁŠ*. POKUD NÁM HO VRÁTÍŠ, OCENÍME TVŮJ DAR... VELICE SE TĚŠÍME NA JEHO VÝKŘIKY..."~ */
  IF ~  Global("Where_Fhjull","AR1001",1)
~ THEN REPLY #53393 /* ~"Dobrá... můžeš ho mít."~ */ GOTO 18
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53394 /* ~"Dobrá... můžeš ho mít."~ */ EXTERN ~DMORTE~ 532
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53395 /* ~"Dar? Jaké *jiné* dary přijmeš?"~ */ GOTO 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53396 /* ~"Dar? Jaké *jiné* dary přijmeš?"~ */ GOTO 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53397 /* ~"Dar? Jaké *jiné* dary přijmeš?"~ */ GOTO 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53398 /* ~"Dar? Jaké *jiné* dary přijmeš?"~ */ GOTO 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53399 /* ~"Dar? Jaké *jiné* dary přijmeš?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53400 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53401 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #53402 /* ~"ANO..." Hromada hlav se začíná kroutit, hlavy vystrkují obličeje ven a řvou a ječí, než se zase ponoří dolů. "Nemůžu se dočkat jeho výkřiků!" Další: "Kašlu na výkřiky! *Mučení* je nejlepší pro někoho tak otravného jako je on! Vyrazím mu zuby, plivnu mu je do mozkovny a pak s ním budu chřestit jako s dětským chrastítkem!" A další: "Oo! Oo! Sežeru mu oči!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 529
END

IF ~~ THEN BEGIN 19 // from: 13.5 15.1 17.2
  SAY #53403 /* ~Pilíř se k tobě naklonil, oči hlav se zužují. "JE TADY *ZNALOST* KTEROU MÁŠ A KTEROU CHCEME PRO SEBE. KDE SÍDLÍ FIEND, FHJULL JEDOVATÝ JAZYK? ŘEKNI NÁM TO, A MY TI ODPOVÍME NA TVOU OTÁZKU." Zápach, vycházející z hlav, tě obklopil, zatímco jeho majitelé čekají na tvou odpověď...~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53404 /* ~"V Pustinách, tam kde Ul-Goris, otec všech goristro zemřel, ve válce Kráteru. Fhjull žije v jeho kostře."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53405 /* ~"V Pustinách, tam kde Ul-Goris, otec všech goristro zemřel, ve válce Kráteru. Fhjull žije v jeho kostře."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  CheckStatLT(Protagonist,18,CHR)
~ THEN REPLY #53406 /* ~Lži: "Je... někde schovaný, v Pustinách. Pod velkou horou."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,17,CHR)
~ THEN REPLY #53407 /* ~Lži: "Fhjull se dobře ukryl v polosféře, vytvořenou dávno mrtvým kouzelníkem. Jenom občas se vydává do Sigilu, kde jsem se s nám setkal."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53408 /* ~"To neřeknu. Jaké *jiné* dary přijmeš?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53409 /* ~"To neřeknu. Jaké *jiné* dary přijmeš?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53410 /* ~"To neřeknu. Jaké *jiné* dary přijmeš?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53411 /* ~"To neřeknu. Jaké *jiné* dary přijmeš?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53412 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53413 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.6 15.2 17.3 19.4 24.2
  SAY #53414 /* ~Hlavy pilíře - kromě syčení hnilobných plynů - jsou chvíli zticha. Nakonec promluvily: "V TVÉM VLASTNICTVÍ JE PŘEDMĚT, KTERÝ CHCEME PRO SEBE. MODRONSKÁ KOSTKA: DEJ NÁM JI, A MY TI ZODPOVÍME TVOU OTÁZKU."~ */
  IF ~~ THEN REPLY #53415 /* ~"Tady... vezmi si to."~ */ DO ~DestroyPartyItem("cube",FALSE)
~ GOTO 25
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53416 /* ~"To nemůžu udělat. Jaké *jiné* dary přijmeš?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53417 /* ~"To nemůžu udělat. Jaké *jiné* dary přijmeš?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53418 /* ~"To nemůžu udělat. Jaké *jiné* dary přijmeš?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53419 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53420 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.3 17.4 19.5 20.1 24.3
  SAY #53421 /* ~Hlavy Pilíře se zamračily, jejich oči zmateně poletují kolem. Náhle se všechny soustředily na Fall-From-Grace. "ONA BUDE STAČIT.. ANO. TANAR'RI. DEJ NÁM JI... SNÍME JI ZAŽIVA, VYKOUPEME SE V JEJÍ SLADKÉ KRVI... A PAK TI ODPOVÍME NA TVOU OTÁZKU." Spousta hlav začíná úpět toužebnými hlasy, volajíc na Grace: "Ano, Tanar'ri, sladká sukubo, vzdej se nám, pojď k nám..."~ */
  IF ~~ THEN REPLY #53422 /* ~"Dobře. Můžeš ji mít."~ */ EXTERN ~DGRACE~ 173
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #53423 /* ~"To nemůžu udělat. Jaké *jiné* dary přijmeš?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #53424 /* ~"To nemůžu udělat. Jaké *jiné* dary přijmeš?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53425 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53426 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.4 17.5 19.6 20.2 21.1 24.4
  SAY #53427 /* ~Hlavy Pilíře se zamračily, jejich oči zmateně poletují kolem. Náhle se všechny soustředily na Annah. "FIENDKA! DEJ NÁM TU DÍVKU, ANO... ROZTRHÁME JI NA KUSY, OSVĚŽÍME SE V JEJÍ SLADKÉ ŽHAVÉ KRVI... PAK TI ODPOVÍME NA OTÁZKU."~ */
  IF ~~ THEN REPLY #53428 /* ~"Velmi dobře. Můžeš ji mít."~ */ EXTERN ~DANNAH~ 271
  IF ~~ THEN REPLY #53429 /* ~"To nemůžu udělat. Jaké *jiné* dary přijmeš?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53430 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53431 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.7 15.5 17.6 19.7 20.3 21.2 22.1 24.5
  SAY #53432 /* ~Ústa všech hlav se zkroutila v odporných šklebech. Bublají, mumlají, smějí se ti. "NEMÁŠ PRO NÁS *NIC*... KROMĚ SEBE. POJĎ NESMRTELNÝ... DEJ NÁM OCHUTNAT SVOU NESMRTELNOU KREV. PAK TI ODPOVÍME NA OTÁZKU." Hlavy cvakají zuby, slintají, plivají, kroutí rty v očekávaní hostiny.~ */
  IF ~~ THEN REPLY #53433 /* ~"Velmi dobře. Souhlasím s tvými požadavky."~ */ GOTO 26
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53434 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53435 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY #53436 /* ~Pilíř Lebek zařval, každá hlava se na tebe zuřivě dívá. Vyplivly na tebe zuřivá slova: "NEPOKOUŠEJ SE NÁM LHÁT, HLUPÁKU. KDE - JE - *FHJULL?* ŘEKNI NÁM TO A MY TI ODPUSTÍME TVŮJ PODVOD A ZODPOVÍME TVOU OTÁZKU."~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53437 /* ~"V Pustinách, tam kde Ul-Goris, otec všech goristro zemřel, ve válce Kráteru. Fhjull žije v jeho kostře."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53438 /* ~"V Pustinách, tam kde Ul-Goris, otec všech goristro zemřel, ve válce Kráteru. Fhjull žije v jeho kostře."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53439 /* ~"To neřeknu. Jaké *jiné* dary přijmeš?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53440 /* ~"To neřeknu. Jaké *jiné* dary přijmeš?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53441 /* ~"To neřeknu. Jaké *jiné* dary přijmeš?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53442 /* ~"To neřeknu. Jaké *jiné* dary přijmeš?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53443 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53444 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.0
  SAY #53445 /* ~Hodil jsi kostku do Pilíř Lebek, ve kterém se otevřela velká díra. Jakmile kostka proletěla, díra se zacelila a kostka je pryč - a ty nějak víš, že navždy. Hlavy šťastně bublají.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #53446 /* ~"TAK POJĎ BLÍŽ... ANO, POJĎ BLÍŽ..." Hlavy ustupují do vnitra Pilíře, jak se blížíš...~ */
  IF ~~ THEN REPLY #53447 /* ~Jdi blíž.~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53448 /* ~"Vlastně jsem si to rozmyslel. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53449 /* ~"Vlastně jsem si to rozmyslel. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #53450 /* ~I když jsi pokročil jenom o jediný krůček, jsi náhle Pilíři mnohem blíž, než jsi očekával. Než stačíš zareagovat, švihnul sebou dopředu jako vlna polámaných kostí a shnilého masa prolezlého červy. Jak tě hrozivá temnota obklopuje, hlavy pilíře tě začínají požírat zaživa...~ */
  IF ~~ THEN REPLY #53451 /* ~Upadni do temnoty...~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,15)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #53452 /* ~Stojíš před Pilířem Lebek, vše tě bolí, není ti jasné, co se přesně stalo. Čím sis ale jistý je to, že je tvé tělo teď nějak *slabší*, ať už jsi zažil cokoli. Hlavy na tebe zírají, šklebí se a olizují si rty...~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 19.0 19.1 19.3 24.0 24.1 25.0 28.0
  SAY #53453 /* ~Pilíř si vychutnává tvůj dar, hlavy se kroutí a něco si mezi sebou šeptají.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53454 /* ~"A má odpověď...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ JOURNAL #53458 /* ~Pilíř Lebek mi řekl, že je vytvořený z lebek těch, kteří zavedli jiné na smrt pomocí svých lží. Dokáže zodpovědět mnoho otázek, ale za svou znalost očekává velkou cenu.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53455 /* ~"A má odpověď...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53456 /* ~"A má odpověď...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53457 /* ~"A má odpověď...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Leave_Baator","GLOBAL",1)
~ GOTO 48
END

IF ~~ THEN BEGIN 30 // from: 29.0 52.0
  SAY #53460 /* ~"JSME TI, KDOŽ VE SMRTELNÉM ŽIVOTĚ, DÁVNO ZAPOMENUTÉM, ŘEKLI VĚCI, KTERÉ VEDLY K SMRTI JINÝCH. NĚKTEŘÍ NÁM ŘÍKAJÍ 'LHÁŘI' - ALE CO JE TO 'PRAVDA', NEŽ JINÉ JMÉNO PRO LEŽ? PRAVDA TAK ČASTO ZAHALUJE PODVOD..." Hlavy si mumlají a přikyvují, pak se otočily zpět k tobě. "ZNÁME MNOHO... ALE OD TĚCH, KDO SE NÁS PTAJÍ, ŽÁDÁME MNOHO."~ */
  IF ~~ THEN REPLY #53461 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53462 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53463 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 52.1
  SAY #53464 /* ~"KLÍČ UŽ MÁŠ, TEĎ POTŘEBUJEŠ POUZE MÍSTO, KDE LEŽÍ PORTÁL. NEVÍME, KDE LEŽÍ PORTÁL, ALE MŮŽEME TI ŘÍCI KLÍČ: 'LÍTOST'." Hlavy se začínají vrtět a sténat: "Ano, lítost... lítost!"~ */
  IF ~~ THEN REPLY #53465 /* ~"Lítost?"~ */ DO ~SetGlobal("Chaotic_Adyzoel_1","GLOBAL",1)
~ JOURNAL #53459 /* ~Pilíř Lebek mi řekl, že klíčem k portálu, vedoucímu do Pevnosti Lítosti je 'lítost'. Vhodné. Ale Pilíř bohužel nezná cestu k portálu.~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #53469 /* ~"ANO... MUSÍŠ PROŽÍT LÍTOST, SMUTEK, ABYS DORAZIL DO PEVNOSTI. ZAPIŠ HO NA KOUSEK TVÉHO MASA A TVÁ CESTA PORTÁLEM BUDE ZAJIŠTĚNA."~ */
  IF ~~ THEN REPLY #53470 /* ~"A portál... ty *nevíš*, kde je?"~ */ DO ~SetGlobal("Know_Fortress_Location_Forgot","GLOBAL",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #53473 /* ~"ANO... POUZE TŘI ZNAJÍ CESTU. PRVNÍ JSI TY... ALE TY JSI UŽ DÁVNO ZAPOMNĚL. DRUHÝ JE ZA PORTÁLEM A NEVYJDE VEN. TŘETÍ..."~ */
  IF ~~ THEN REPLY #53474 /* ~"Třetí...?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #53478 /* ~"...TŘETÍHO UŽ JSI POTKAL. VÍ O TVÉM STAVU, O PEVNOSTI A TVÉ POTŘEBĚ DORAZIT TAM... ALE NEPOMŮŽE TI. JEHO ŠTÍT JE UKOVÁN Z CHLADNÝCH KOVŮ LŽÍ A PODVODŮ, VĚC, KTEROU NEMŮŽEŠ PRORAZIT POUHÝMI SLOVY. MUSÍŠ BOJOVAT."~ */
  IF ~~ THEN REPLY #53479 /* ~"Kdo je to?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #53483 /* ~Hlavy jsou chvíli zticha, jenom se na tebe odporně usmívají. nakonec promluvily: "UŽ JSI LHÁŘE *POTKAL* - A NE POPRVÉ. LHÁŘ VÍ... ALE NEŘEKL TI. HEZKÁ ZRADA MEZI NESMRTELNÝMI..." Některé z nahnilých hlav kroutí očima a šklebí se na tebe.~ */
  IF ~~ THEN REPLY #53484 /* ~"Fhjull Jedovatý Jazyk?"~ */ GOTO 36
  IF ~~ THEN REPLY #53485 /* ~"Lothar?"~ */ GOTO 36
  IF ~~ THEN REPLY #53486 /* ~"Ravel?"~ */ GOTO 36
  IF ~~ THEN REPLY #53487 /* ~"Trias?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53491 /* ~Pilíř Lebek mi řekl, že Trias -- kterého nazývá 'Trias Zrádce' -- ví, kde je portál do Pevnosti Lítosti.~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 35.2 36.0 36.1 36.2
  SAY #53492 /* ~Hlavy zabrblaly. "URČITĚ NE, URČITĚ NE. HÁDEJ ZNOVU..."~ */
  IF ~~ THEN REPLY #53493 /* ~"Fhjull Jedovatý Jazyk?"~ */ GOTO 36
  IF ~~ THEN REPLY #53494 /* ~"Lothar?"~ */ GOTO 36
  IF ~~ THEN REPLY #53495 /* ~"Ravel?"~ */ GOTO 36
  IF ~~ THEN REPLY #53496 /* ~"Trias?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53500 /* ~Pilíř Lebek mi řekl, že Trias -- kterého nazývá 'Trias Zrádce' -- ví, kde je portál do Pevnosti Lítosti.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.3 36.3
  SAY #53501 /* ~"OH, ANO... ALE MY HO ZNÁME JEHO *CELÝM* JMÉNEM: TRIAS, ZRÁDCE!" Pilíř se otřásl, hromada shnilých hlav sebou škube, jak se ti smějí. Několik z nich skanduje: "Zrádce... zrádce... Trias Zrádce..."~ */
  IF ~~ THEN REPLY #53502 /* ~"Ale... on řekl, že to neví..."~ */ GOTO 38
  IF ~~ THEN REPLY #53503 /* ~"Proč by mi lhal?"~ */ GOTO 39
  IF ~~ THEN REPLY #53504 /* ~"Jak se to dozvěděl?"~ */ GOTO 40
  IF ~~ THEN REPLY #53505 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53506 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53507 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #53508 /* ~"*LHAL* TI." Některé z hlav se šklebí a tiše se ti smějí. "DEJ SI POZOR NA SLOVA NAMOČENÁ V MEDU. PŘITAHUJÍ VŠECHNY MOŽNÉ DRUHY VOS."~ */
  IF ~~ THEN REPLY #53509 /* ~"Proč by mi lhal?"~ */ GOTO 39
  IF ~~ THEN REPLY #53510 /* ~"Jak se to dozvěděl?"~ */ GOTO 40
  IF ~~ THEN REPLY #53511 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53512 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53513 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.0 40.0
  SAY #53514 /* ~"TA ODPOVĚĎ NENÍ NAŠÍM VLASTNICTVÍM, ABYCHOM TI JI MOHLI DÁT. MUSÍŠ NAJÍT JEHO A ZÍSKAT JI OD NĚJ."~ */
  IF ~~ THEN REPLY #53515 /* ~"Jak se to dozvěděl?"~ */ GOTO 40
  IF ~~ THEN REPLY #53516 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53517 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53518 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2 38.1 39.0
  SAY #53519 /* ~"TRIAS S TEBOU VYMĚNIL SLOVA JEDNOU, PŘED DLOUHOU DOBOU, KDY JSI ZNAL CESTU. PROMLUVIL JSI ZE SRDCE A TRIAS -- JAKO VŠICHNI VELCÍ ZRÁDCI -- POZORNĚ NASLOUCHAL, ABY SI ZÍSKAL TVOU DŮVĚRU. KRÁTKÁ ALE KONVERZACE BYLA, I KDYŽ PLNÁ *SMYSLU*. SMYSL A SMRT, TO JE TO, CO HLEDÁŠ... DVĚ RŮZNÉ VĚCI PRO NORMÁLNÍHO ČLOVĚKA. ALE PRO TEBE... JEDNA A TA SAMÁ."~ */
  IF ~~ THEN REPLY #53520 /* ~"Proč by mi lhal?"~ */ GOTO 39
  IF ~~ THEN REPLY #53521 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53522 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53523 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.2 52.2
  SAY #53524 /* ~"NE *KDO* -- CO. BYL JSI ROZDĚLEN. JSI JEDEN Z MNOHA MUŽŮ - JEDEN V MNOHA MUŽÍCH. KAŽDÝ - AŤ DOBRÝ ČI ZLÝ - JE MONSTRUM, KTERÉ VRHÁ STÍN EXISTENCE."~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN REPLY #53525 /* ~"Stín existence?"~ */ JOURNAL #53527 /* ~Pilíř Lebek mi řekl, že vrhám 'stíny existence' - pokaždé, když zemřu, zemře někdo místo mně. TI, kdo takto zemřou, se stávají stvořením stínů, které se shromažďují a čekají na mneě v Pevnosti Lítosti.~ */ GOTO 42
  IF ~  !NearbyDialog("Dvhail")
~ THEN REPLY #53526 /* ~"Stín existence?"~ */ JOURNAL #53527 /* ~Pilíř Lebek mi řekl, že vrhám 'stíny existence' - pokaždé, když zemřu, zemře někdo místo mně. TI, kdo takto zemřou, se stávají stvořením stínů, které se shromažďují a čekají na mneě v Pevnosti Lítosti.~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #53528 /* ~"OH, ANO." Oči hlav se zúžily. "POKAŽDÉ, KDYŽ ZEMŘEŠ, 'NESMRTELNÝ', VRHNEŠ STÍN... POKAŽDÉ, KDYŽ ZEMŘEŠ, *NĚKDO JINÝ* SKONÁ MÍSTO TEBE. TYHLE STÍNY... SBÍRAJÍ SE, HLADOVÍ PO TOBĚ, V PEVNOSTI LÍTOSTI. KOLIKRÁT JSI ZEMŘEL, BEZEJMENNÝ? KOLIK STOVEK... TISÍCŮ...  ZHYNULO KVŮLI TOBĚ?" Pilíř se otřásá, hlavy se na tebe šklebí. Náhle se ti na zátylku zježily vlasy... otočil ses a vidíš, jak na tebe Vhailor upřeně zírá, jeho oči září více, než jsi kdy viděl...~ */
  IF ~~ THEN REPLY #53529 /* ~"Vhailore...?"~ */ EXTERN ~DVHAIL~ 11
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #53530 /* ~"OH, ANO." Oči hlav se zúžily. "POKAŽDÉ, KDYŽ ZEMŘEŠ, 'NESMRTELNÝ', VRHNEŠ STÍN... POKAŽDÉ, KDYŽ ZEMŘEŠ, *NĚKDO JINÝ* SKONÁ MÍSTO TEBE. TYHLE STÍNY... SBÍRAJÍ SE, HLADOVÍ PO TOBĚ, V PEVNOSTI LÍTOSTI. KOLIKRÁT JSI ZEMŘEL, BEZEJMENNÝ? KOLIK STOVEK... TISÍCŮ...  ZHYNULO KVŮLI TOBĚ?" Pilíř se otřásá, hlavy se na tebe šklebí.~ */
  IF ~~ THEN REPLY #53531 /* ~"To je vše, co můžeš říct, Pilíři?"~ */ GOTO 44
  IF ~~ THEN REPLY #53532 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53533 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53534 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #53535 /* ~Hlavy se okamžitě přestaly smát. "NE. MÁŠ MNOHO JMEN, KAŽDÉ NA TVÉM MASE ZANECHALO JIZVU:"~ */
  IF ~~ THEN REPLY #53536 /* ~"Pokračuj..."~ */ GOTO 45
  IF ~~ THEN REPLY #53537 /* ~"Počkej... Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53538 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53539 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #53540 /* ~"ZTRACENÝ... NESMRTELNÝ... KONEC INKARNACE... MUŽ TISÍCE SMRTÍ... TEN, ODSOUZEN K ŽIVOTU... NEKLIDNÝ... JEDEN Z MNOHA... TEN, KTERÉHO UVĚZNIL ŽIVOT... NOSIČ STÍNŮ... ZRANĚNÝ... PŘINÁŠEČ UTRPENÍ... YEMETH..."~ */
  IF ~~ THEN REPLY #53541 /* ~Poslouchej dál.~ */ GOTO 46
  IF ~~ THEN REPLY #53542 /* ~"Počkej... Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53543 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53544 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #53545 /* ~"JSI SKLO, KTERÉ PRASKLO... BYLO ROZTŘÍŠTĚNO A TVÉ ÚLOMKY SE ROZLETĚLY HISTORIÍ." "POUZE JEDEN KOUSEK JE DŮLEŽITÝ. ZÍSKEJ HO ZPĚT A TVŮJ ŽIVOT BUDE OPĚT JEN TVŮJ. BUDE TADY ALE CENA. ZAPLACENÍ TÉ CENY TI KOUPÍ ŠANCI. BEZ TÉ ŠANCE JSI ZTRACEN..."~ */
  IF ~~ THEN REPLY #53546 /* ~"Pokračuj..."~ */ GOTO 47
  IF ~~ THEN REPLY #53547 /* ~"Počkej... Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53548 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53549 /* ~"To nic. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #53550 /* ~"ZTRATIL JSI TO, CO SE NIKDY OD ČLOVĚKA NEMĚLO ODDĚLIT. TVÁ SMRTELNOST TI BYLA ODEBRÁNA... ZTRACENA. EXISTUJE, ALE MUSÍŠ JI NAJÍT, NEŽ PRO TEBE BUDE ZTRACENA I TVÁ MYSL."~ */
  IF ~~ THEN REPLY #53551 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53552 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53553 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 52.3
  SAY #53554 /* ~"OPUSŤ TOTO MÍSTO A ZAMIŘ PŘÍMO NA ZÁPAD PODÉL BALVANŮ, KTERÉ LEMUJÍ SPÁLENÉ ÚDOLÍ. NAKONEC NARAZÍŠ NA VZDÁLENÝ OKRAJ ÚDOLÍ. TAM NAJDI MÍSTO MEZI KAMENY, KTERÉ TVOŘÍ PORTÁL. KLÍČEM JE OBSIDIÁN, SPÁLENÝ OHNĚM AVERNU - NAJDEŠ HO KOLEM PORTÁLU DOST. UMÍSTI SI ÚLOMEK OBSIDIÁNU DO ÚST A KOUSNI, AŤ TI PROŘÍZNE JAZYK. TAK ZÍSKÁŠ KLÍČ."~ */
  IF ~~ THEN REPLY #53555 /* ~"Mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53556 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53557 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 12.3
  SAY #53558 /* ~Pilíř je chvíli podivně zticha. Některé hlavy se dívají mimo, jiné se s bolestivými výrazy otřásají. Nakonec se daly dohromady a znovu promluvily: "MY... NEVÍME. HLAVY, KTERÉ DŘÍVE VLASTNILY TUTO ZNALOST. BYLY ZNIČENY - BYLY Z NÁS ODSTRANĚNY. NEMŮŽEME TI ODPOVĚDĚT NA TUTO OTÁZKU."~ */
  IF ~~ THEN REPLY #53559 /* ~"V tom případě, mám další otázku..."~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53560 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53561 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.5 12.5 13.8 14.1 15.6 17.7 19.8 20.4 21.3 22.2 23.1 24.6 26.1 30.1 37.4 38.3 39.2 40.2 43.2 44.2 45.2 46.2 47.1 48.1 49.1
  SAY #53562 /* ~Sloup zadržel tvůj odchod náhlým požadavkem: "STŮJ - DEJ NÁM LEBKU. *NEMŮŽEME* HO NECHAT JÍT. JE *NÁŠ*. *NEOPUSTÍ* AVERNUS." Hlavy se začaly šklebit a popichovat Morteho: "Ano, lebko, nestyď se... pojď zpátky, lebko... je to tady pohodlné... pojď, pojď zpátky... nebude to bolet, lebko... je to skvělá zábava, být bez těla a hnít v pilíři s tisícem dalších hlav..."~ */
  IF ~~ THEN REPLY #53563 /* ~Popadni Morteho a vraž ho do Pilíře lebek.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_2","GLOBALGood",-1)
SetGlobal("Pillar ","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1001Cut1",FALSE)
~ EXIT
  IF ~~ THEN REPLY #53564 /* ~"Zapomeň na to, Pilíři. Sbohem."~ */ DO ~SetGlobal("Pillar_Warning","GLOBAL",1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #53566 /* ~Rozzuřené hlavy pilíře začaly výt a ječet, že je to slyšet snad ve všech sférách. Země pod tebou se otřásá, hromová kakofonie tě ohlušuje...~ */
  IF ~~ THEN REPLY #53567 /* ~Odejdi... rychle.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #53568 /* ~Hlavy na sloupu se smějí a prskají, jak stahují Morteho do nitra hrozivého pilíře, kde bude bezpochyby nekonečně trpět v 'rukou' ostatních usekaných hlav. Když pohyb téměř zmizel, hlavy se uklidnily a začaly si něco šeptat. Náhle na povrch vyletěl Morte a ječí: "Íííííííí! Vytáhni mě odtud, šéfe! Prosím! Prosím! Přísahám, že už nikdy nebudu lhát-!" ...a stejně rychle, jako se objevil, zmizel zpátky pod povrchem.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53569 /* ~"A má odpověď...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Vrazil jsem Morteho zpátky do Pilíře lebek... není třeba dodávat, že z toho neměl radost.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53570 /* ~"A má odpověď...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Vrazil jsem Morteho zpátky do Pilíře lebek... není třeba dodávat, že z toho neměl radost.~ */ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53571 /* ~"A má odpověď...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~Vrazil jsem Morteho zpátky do Pilíře lebek... není třeba dodávat, že z toho neměl radost.~ */ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53572 /* ~"A má odpověď...?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
SetGlobal("Leave_Baator","GLOBAL",1)
~ JOURNAL #53574 /* ~Vrazil jsem Morteho zpátky do Pilíře lebek... není třeba dodávat, že z toho neměl radost.~ */ GOTO 48
  IF ~  Global("Pillar_Question","AR1001",0)
~ THEN REPLY #53573 /* ~"Sbohem, Pilíři."~ */ DO ~SetGlobal("Pillar","GLOBAL",3)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",1)
~ THEN BEGIN 53 // from:
  SAY #53575 /* ~Zase jednou stojíš před Pilířem lebek. Nespočetné hnijící hlavy, tvořící tuto hrozivou hromadu, se neustále pohybují, střídavě nadávají, sténají, šeptají, křičí a mluví mezi sebou. Hlavy neustále probublávají na povrch z obrovské zásoby uvnitř pilíře, zatímco ostatní se ponořují zpět.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #53576 /* ~Přilákej pozornost Pilíře.~ */ EXTERN ~DMORTE~ 512
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",1)
~ THEN REPLY #53577 /* ~Přilákej pozornost Pilíře.~ */ GOTO 1
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53578 /* ~Přilákej pozornost Pilíře.~ */ GOTO 1
  IF ~~ THEN REPLY #53579 /* ~Odejdi od Pilíře, než si tě všimne.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",3)
~ THEN BEGIN 54 // from:
  SAY #53580 /* ~Zase jednou stojíš před Pilířem lebek. Nespočetné hnijící hlavy, tvořící tuto hrozivou hromadu, se neustále pohybují, střídavě nadávají, sténají, šeptají, křičí a mluví mezi sebou. Hlavy neustále probublávají na povrch z obrovské zásoby uvnitř pilíře, zatímco ostatní se ponořují zpět.~ */
  IF ~~ THEN REPLY #53581 /* ~Přilákej pozornost Pilíře.~ */ GOTO 55
  IF ~~ THEN REPLY #53582 /* ~Odejdi od Pilíře, než si tě všimne.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #53583 /* ~Udělal jsi další opatrný krok směrem k Pilíři, když se náhle veškerá konverzace hlav *zastavila*. Tucty hlav, vytvářející povrch pilíře, se k tobě pomalu, ale všechny najednou otočily. Tiše si tě prohlížejí, když se na povrch náhle prodral Morte, s výkřikem hrůzy na rtech. "ÁAAAAhhhh! Šéfe! Prosím! Vytáhni mě! Prosím! Prosím!"~ */
  IF ~~ THEN REPLY #53584 /* ~Ignoruj Morteho, počkej, až se zase ponoří.~ */ GOTO 56
  IF ~~ THEN REPLY #53585 /* ~Pokus se vytáhnout Morteho ven.~ */ GOTO 57
  IF ~~ THEN REPLY #53586 /* ~Otoč se a jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 57.5
  SAY #53587 /* ~Morte, kterému po tváři pokryté krví a zapáchajícím slizem stékají slzy, žebrá o pomoc. "Šéfe, prosím, prosím, prosím tě! Musíš mě odsud dostat! Přísahám, že už nikdy nebudu lhát-!" ...a stejně rychle, jako se objevil, zmizel zpátky pod povrchem.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53588 /* ~"Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53589 /* ~"Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53590 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53591 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53592 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~~ THEN REPLY #53593 /* ~"Jenom procházím kolem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #53594 /* ~Tvé ruce vyletěly a popadly Morteho dřív, než ho ostatní lebky stačily stáhnout dovnitř pilíře. Hlavy řvou zuřivostí: "NE! NE! STŮJ! NESMÍŠ SI HO ZNOVU VZÍT!" Hlavy se po tobě začaly sápat, koušou tě do rukou a zápěstí krutými, polámanými zuby...~ */
  IF ~  Global("Specialist","GLOBAL",4)
~ THEN REPLY #53595 /* ~Bojuj dál, vyrvi Morteho ven z pilíře.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 58
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #53596 /* ~Použij své mistrovství v Umění a soustřeď surovou magickou sílu na uvolnění Morteho.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Specialist","GLOBAL",5)
~ THEN REPLY #53597 /* ~Stáhni se zpátky, jako bys ustupoval a pak vyškubni Morteho ven, než si Pilíř uvědomí, co chceš udělat.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 60
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPGT(Protagonist,10)
~ THEN REPLY #53598 /* ~Bojuj dál, vyrvi Morteho z pilíře.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 61
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPLT(Protagonist,11)
~ THEN REPLY #53599 /* ~Bojuj dál, vyrvi Morteho z pilíře.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 62
  IF ~~ THEN REPLY #53600 /* ~Vzdej to, nechej Morteho být.~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #53601 /* ~Pilíř lebek bojuje ze všech sil, ale ty jsi pro něj příliš mocný bojovník. Odrážíš útočící hlavy, mlátíš je, kopeš do nich, biješ je svou vlastní hlavou, dokonce koušeš, když se ti konečně podařilo Morteho vytáhnout ven za zvuku trhaného masa a praskajících kostí. Bitva tě ale vyčerpala... nějak víš, že jsi teď slabší, než dříve.~ */
  IF ~~ THEN REPLY #53602 /* ~"Vidíš, Morte? Nic... čeho by se... bylo třeba... bát..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1
  SAY #53603 /* ~Pilíř lebek bojuje ze všech sil, ale tvá magie je na něj příliš silná. Uvolnil jsi čirou, nesoustředěnou manu skrze své dlaně do Pilíře, rozerval jsi jeho strukturu, ničíš jeho spoje, dokud se ti nepodaří uvolnit Morteho. Bitva tě ale vyčerpala... nějak víš, že jsi teď slabší, než dříve.~ */
  IF ~~ THEN REPLY #53604 /* ~"Vidíš, Morte? Nic... čeho by se... bylo třeba... bát..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.2
  SAY #53605 /* ~Když vidíš, jak se pilíř chystá k bitvě, předstíráš, že ustupuješ. Jakmile se Morte začíná ponořovat do nitra pilíře a hlavy otvírají ústa, aby promluvily, vrhl ses vpřed a popadl Morteho. Jedna jediná hlava uspěla a podařilo se jí zarýt ti zuby do předloktí... bodl jsi ji do oka palcem a škubnutím jsi uvolnil svého starého společníka. Hrozivé kousnutí té jediné hlavy tě ale zranilo, vyčerpalo... nějak víš, že jsi teď slabší, než dříve.~ */
  IF ~~ THEN REPLY #53606 /* ~"Vidíš, Morte? Nic... čeho by se... bylo nutno... obávat..."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.3
  SAY #53607 /* ~Pilíř lebek, který ti nechce Morteho vydat, bojuje ze všech sil. Nakonec jsi povolil. Jak se Morte ponořuje do nitra Pilíře, ustoupil jsi o krok zpátky, předloktí máš pokryté šrámy a kousnutími, které ti způsobily zuřící hlavy pilíře. Ještě teď se ti smějí a šklebí se na tebe, olizují si tvou krev ze svých shnilých rtů.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53608 /* ~"Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53609 /* ~"Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53610 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53611 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53612 /* ~"Mám nějaké otázky, Pilíři."~ */ GOTO 12
  IF ~~ THEN REPLY #53613 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.4
  SAY #53614 /* ~Pilíř lebek, který ti nechce Morteho vydat, bojuje ze všech sil. Nakonec jsi povolil. Jak se Morte ponořuje do nitra Pilíře, ustoupil jsi o krok zpátky, předloktí máš pokryté šrámy a kousnutími, které ti způsobily zuřící hlavy pilíře. Ještě teď se ti smějí a šklebí se na tebe, olizují si tvou krev ze svých shnilých rtů.~ */
  IF ~~ THEN REPLY #53615 /* ~Zemři.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",4)
~ THEN BEGIN 63 // from:
  SAY #53616 /* ~Hlavy cvakají zuby a plivou po tobě krvavé sliny, vyjí zuřivostí a nenávistí. "JE NÁŠ! NÁŠ! NÁŠ!" Náhle se uklidnily. "DOBRÁ. UŽIJ SI SVÉ VÍTĚZSTVÍ, 'NESMRTELNÝ'. NAKONEC HO STEJNĚ ZÍSKÁME ZPĚT, TAK ČI TAK."~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53617 /* ~"Správně. Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53618 /* ~"Správně. Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53619 /* ~"Správně. Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53620 /* ~"Správně. Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53621 /* ~"Správně. Mám nějaké otázky, Pilíři."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #53622 /* ~"Jistě, jistě. Sbohem."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ EXIT
END
