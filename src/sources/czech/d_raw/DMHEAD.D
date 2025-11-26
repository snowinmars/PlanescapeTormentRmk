// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHEAD~

IF ~  Global("Mertwyn_Head","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #42384 /* ~Tahle pevná ocelová krabice má nahoře silné kožené držadlo, ale není vidět žádná možnost jak tuhle věc otevřít - víko je zřejmě přivařené. Po stranách je pár úzkých štěrbin, nicméně přes ně není do krabice vidět. Ze štěrbin uniká nepříjemný hnilobný puch. Když krabici blíže prohlížíš, krapet se ti pohne v rukou. Něco se uvnitř hýbe! Poté zevnitř slyšíš mužský hlas: "Ahoj tam... je nějaká naděje že tam někdo je? Ty tam venku... jmenuji se Mertwyn. Haló?"~ */
  IF ~~ THEN REPLY #42385 /* ~"Ano, ehmm... Zdravím..."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42386 /* ~Ignoruj hlas a odlož tu věc bokem.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42387 /* ~"Díky bohům! Neviděl jsi náhodou moje tělo? Je tězké je minout... producíruje se s pitomou dřevěnou hlavou na ramenou... Muselo si už uchodit nohy po kolena, jak po mně pořád pátrá!"~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #42388 /* ~"Ano... v Městské hale."~ */ GOTO 2
  IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN REPLY #42389 /* ~"Ne... to si nemyslím..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42390 /* ~"Pak budiž pochválena má štastná hvězda! Mohl bych tě dobrý člověče požádat, zdali bys mě k němu nedopravil?"~ */
  IF ~~ THEN REPLY #42391 /* ~"Ano. Udělám to pro tebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Souhlasil jsem, že vrátím Mertwynovu hlavu jeho tělu, které najdu v Městské hale.~ */ GOTO 3
  IF ~~ THEN REPLY #42392 /* ~"A co z toho budu mít?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42393 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0 8.0 9.0 10.0
  SAY #42394 /* ~"Jak šlechetné! Nuže ti děkuji dobrý muži. Pokud by ti to nevadilo, mohli bychom přestat s mluvením, dokud nebudu mít opět zpátky svoje tělo."~ */
  IF ~~ THEN REPLY #42395 /* ~"Ale mám pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #42396 /* ~"Dobrá... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #42397 /* ~"Jsem si jist že máš pane, třeba proč jsem utnutá mluvící hlava zamčená v železné bedně... ale to bude muset počkat. Je velice únavné být oddělen od těla... poníženě se omouvám."~ */
  IF ~~ THEN REPLY #42398 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 9.1 10.1
  SAY #42399 /* ~"Ech... můj vděk?"~ */
  IF ~~ THEN REPLY #42400 /* ~"Udělám to. Vezmu tě zpět."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Souhlasil jsem, že vrátím Mertwynovu hlavu jeho tělu, které najdu v Městské hale.~ */ GOTO 3
  IF ~~ THEN REPLY #42401 /* ~"Mohl bych použít trochu něco více než tohle."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #42402 /* ~"Dobrá, mezi tělem a mnou, jsem si jistý, že bychom mohli sehnat něco, co by se vám líbilo, pane. Mohl byste mne nejdřív vrátit?"~ */
  IF ~~ THEN REPLY #42403 /* ~"V pořádku, udělám to."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Souhlasil jsem, že vrátím Mertwynovu hlavu jeho tělu, které najdu v Městské hale.~ */ GOTO 3
  IF ~~ THEN REPLY #42404 /* ~"Dej mi teď něco."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #42405 /* ~"Ah... dobrá, podívejte, skutečně *nemám* nic právě teď. *Mám* právě hlavu v zamčené železné krabici, chápete."~ */
  IF ~~ THEN REPLY #42406 /* ~"V pořádku, udělám to."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Souhlasil jsem, že vrátím Mertwynovu hlavu jeho tělu, které najdu v Městské hale.~ */ GOTO 3
  IF ~~ THEN REPLY #42407 /* ~"Dobrá... tak si teda shnij ve své krabici, Mertywne."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #42408 /* ~"Počkat! Počkat, dobrý pane! Podívejte, zrovna teď; mohl bych od vás *něco* dostat, právě teď ze všeho nejdřív potřebuji dostat zpět své tělo!"~ */
  IF ~~ THEN REPLY #42409 /* ~"V pořádku, udělám to."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42410 /* ~"Promluvíme si o tom později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #42411 /* ~"Oh, božíčku. Dobrá, asi by to bylo trošku příliš, kdybych teď začal doufat, co? V každém případě, se pravděpodobně motá v okolí Městské haly, v severovýchodním rohu Úřednické čtvrti. Mohl bych, vás nějakým způsobem přesvědčit, abyste mne tam vzal, dobrý pane?"~ */
  IF ~~ THEN REPLY #42412 /* ~"Ano, udělám to pro tebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Souhlasil jsem, že vrátím Mertwynovu hlavu jeho tělu, které najdu v Městské hale.~ */ GOTO 3
  IF ~~ THEN REPLY #42413 /* ~"Co z toho budu mít?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42414 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #42415 /* ~Mertwynova hlava v krabici se pohnula, jak jsi zvedl krabici. "Oh, zase zdravím... poslyšte, je nějaká možnost, že byste mne vzal teď k mému tělu? Ujišťuji vás, budu vám *velmi* zavázán..."~ */
  IF ~~ THEN REPLY #42416 /* ~"Ano, udělám to pro tebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42417 /* ~"Co z toho budu mít?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42418 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #42419 /* ~Mertwynova hlava v krabici se pohnula, jak jsi zvedl krabici. "Už tam jsme, dobrý pane? Hmmm... já *nevidím* své tělo..."~ */
  IF ~~ THEN REPLY #42420 /* ~"Ještě tam nejsme, ale mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #42421 /* ~"Ještě tam nejsme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #42422 /* ~Mertwynův hlas se náhle ozval zevnitř kovové krabice. "Ó! Ó! Tam je to! To je moje tělo! Říkám tamhle, člověče... tuhle..."~ */
  IF ~~ THEN EXTERN ~DMERTWYN~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #42423 /* ~"Oh, pojďme teď... to od vás není moc pěkné, pane. A jaké použití budete mít pro moji hlavu potom?"~ */
  IF ~~ THEN REPLY #42424 /* ~Umožni Mertwynovu tělu, aby si vzalo svoji hlavu.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GiveGoldForce(200)
~ JOURNAL #56738 /* ~Dal jsem dohromady Mertwynovu hlavu a tělo. Oba kusy byli docela šťastné, když se konečně setkaly.~ */ EXTERN ~DMERTWYN~ 8
  IF ~~ THEN REPLY #42425 /* ~"Je mi líto, že jsme spolu nemohli zůstat déle. Sbohem."~ */ EXIT
END
