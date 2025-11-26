// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSERE~

IF ~  Global("Sere","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1796 /* ~Když ses přiblížil, postarší žena se otočila a prohlíží si tě. "Hm, podívejme se kdo přišel obtěžovat dneska Sere... nejdražší smrti syn." Prohlíží si tě odshora dolů, pak nevěřícně zakroutí hlavou. "U všech Mocností a tvojí matky, chlapče... ze který hrobky *jsi* to vylezl?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #1797 /* ~"Nevylezl jsem z žádný hrobky."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14338 /* ~"Z žádné krypty jsem nevylezl."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14339 /* ~"Vlastně jsem právě vyšel z Márnice."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14340 /* ~Žert: "No, ta krypta už ztrácela své kouzlo, tak se teď poohlížím po správném místě na umření. Víš o něčem?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14341 /* ~"Promiň, s někým jsem si tě spletl. Sbohem."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ EXIT
END

IF ~  Global("Sere","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14342 /* ~Jak tě uvidí, Sere se ušklíbne. "Ha, jestlipak to není náš kryptolezec. Co tě tentokrát přivádí k Seriným dveřím?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14343 /* ~"*Nevylezl* jsem z žádné krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14344 /* ~"*Nevylezl* jsem z žádné krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14345 /* ~Žert: "No, ta krypta už ztrácela své kouzlo, tak se teď poohlížím po správném místě na umření. Víš o něčem?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14346 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14347 /* ~"Nic, jen jsem se zastavil, abych tě viděl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.1 4.4 5.3 6.1 7.2 8.0 9.1 10.3 11.1 12.1 13.1 14.4 15.3 16.1 17.4 18.2 19.2 21.2 22.2 23.2 24.1 25.3 26.1 27.4 28.3 29.2 30.1 31.1 32.0 34.1 35.2 37.2 39.0 42.0 43.1 44.0 45.1 46.0 47.8 48.4 49.2 50.1 51.2 52.1 53.1 54.1 55.2 56.2 57.3 58.1 59.2 60.1 61.1 62.2 63.2 64.0 65.3
  SAY #14348 /* ~"Otázky, ha? No, tak se ptej..." Sere se na tebe zatvrzele podívá a pak se zasměje. "...Kryptolezče."~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14349 /* ~"*Nevylezl* jsem z žádné krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14350 /* ~"*Nevylezl* jsem z žádné krypty."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14351 /* ~"Chtěl jsem se tě zeptat na jisté Spalovače..."~ */ GOTO 47
  IF ~  Global("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14352 /* ~"Jsi Spalovač?"~ */ GOTO 13
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14353 /* ~"Co mi můžeš říct o Hamrysovi?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14354 /* ~"Chtěl bych se s tebou pobavit o tvé víře. Co se stalo, že jsi přestala věřit ve filosofii Spalovačů?"~ */ GOTO 16
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Recruit_Sere","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #14355 /* ~"Sere, už nejsi Spalovač. Chceš nějakou alternativu?"~ */ GOTO 34
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14356 /* ~"Neviděla jsi nedávno deník? Jeden jsem ztratil."~ */ GOTO 43
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #14357 /* ~"Hledám muže jménem Pharod. Neviděla jsi ho?"~ */ GOTO 45
  IF ~~ THEN REPLY #14358 /* ~"Už bych měl jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2 5.1
  SAY #14359 /* ~"Tak?" Sere pozvedla obočí. "Hřeje mě na srdci, že jsi přežil nástrahy takového místa. Není úlevy pro ty, co se nedokáží nad nic povznést." Zavětří. "Tssss. Příliš mnoho pavučin a starých myslí."~ */
  IF ~~ THEN REPLY #14360 /* ~"Nemáš ráda Márnici? Ty nejsi Spalovač?"~ */ GOTO 13
  IF ~~ THEN REPLY #14361 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14362 /* ~"Už bych měl jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1 1.0 1.1 2.0 2.1
  SAY #14363 /* ~Zamračí se, její obličej se zvrásní jako pomačkaný pergamen. "Tedy dobrá. Z jaké *rakve* jsi vylezl?" Mumlá. "Asi z některé z těch fušersky sbitých rakví od Hamryse. Slyšela jsem, že si o ně mrtvoly zadírají třísky." Popotáhne. "Ten chlap nestojí za zlámanou grešli od doby, co zemřel jeho otec."~ */
  IF ~~ THEN REPLY #14364 /* ~"Nevylezl jsem ani z žádné *rakve*."~ */ GOTO 5
  IF ~~ THEN REPLY #14365 /* ~"Kdo je Hamrys?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14366 /* ~"Nevylezl jsem z rakve... Vlastně jdu právě z Márnice."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14367 /* ~Žert: "No, tou rakví, co udělal, táhlo, tak se teď poohlížím po správném místě na umření. Víš o něčem?"~ */ GOTO 9
  IF ~~ THEN REPLY #14368 /* ~"Hledám nějaké informace. Můžu se tě zeptat na pár otázek?"~ */ GOTO 2
  IF ~~ THEN REPLY #14369 /* ~"Promiň, že jsem rušil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #14370 /* ~Usměje se odhalujíce řadu křivých zubů. "Tak dobře, chlapče. Z kterého *sarkofágu* jsi vylezl?" Pozastaví se a mumlá si pro sebe. "Jen tě škádlím, chlapče. Nic ve zlém. Ale vypadáš jako bys patřil smrti."~ */
  IF ~~ THEN REPLY #14371 /* ~"Kdo je ten Hamrys, o němž ses zmínila?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14372 /* ~"Měl bych... Právě jsem vyšel z Márnice."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14373 /* ~Žert: "Nic se nestalo. Po pravdě, ten sarkofág byl trochu velký, tak se teď poohlížím po správném místě na umření. Víš o něčem?"~ */ GOTO 9
  IF ~~ THEN REPLY #14375 /* ~"Hledám nějaké informace. Můžu se tě zeptat na pár otázek?"~ */ GOTO 2
  IF ~~ THEN REPLY #14376 /* ~"Promiň, že jsem rušil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 4.1 5.0
  SAY #14374 /* ~"Hamrys je brakvář... pardon, 'rakvář'... v Dolní čtvrti. Zdědil živnost, když jeho otec zemřel, ke smůle všech mrtvol v Sigilu potřebujících rakev, hrobku nebo náhrobek."~ */
  IF ~~ THEN REPLY #14377 /* ~"Co se jeho otci stalo?"~ */ GOTO 7
  IF ~~ THEN REPLY #14378 /* ~"Aha. Můžu se tě zeptat ještě na pár otázek?"~ */ GOTO 2
  IF ~~ THEN REPLY #14379 /* ~"Díky za informaci... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14380 /* ~"Máš uši jen pro okrasu, chlapče? *Umřel*." Mumlá. "Dost možná ho jeho syn umluvil k smrti. Ten mládenec má jazyk k nezastavení. Divím se, že si ještě nevyviklal hlavu z ramen."~ */
  IF ~~ THEN REPLY #14381 /* ~"Pak to vypadá, že máte hodně společného."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14382 /* ~Žert: "No, to bych pak asi nechtěl být pohřben v jedné z jeho rakví. Můžeš mi doporučit nějaké jiné místo, kde bych mohl spočinout a umřít?"~ */ GOTO 9
  IF ~~ THEN REPLY #14383 /* ~"Hledám nějaké informace. Můžu se tě zeptat na pár otázek?"~ */ GOTO 2
  IF ~~ THEN REPLY #14384 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14385 /* ~Přimhouří oči. "Udělej nám oběma laskavost a zavři svou klapačku, chlapče. Netahej mezi mě a to utlachané štěně žádné podobnosti."~ */
  IF ~~ THEN REPLY #14386 /* ~"Dobrá. Měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14387 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3 1.2 4.3 5.2 7.1
  SAY #14388 /* ~Vyprskne smíchy až ti zalehne v uších. "Cha! Tady ne... leda bys chtěl umřít nudou."~ */
  IF ~~ THEN REPLY #14389 /* ~"Co je tady špatného?"~ */ GOTO 10
  IF ~~ THEN REPLY #14390 /* ~"To si zapamatuji. Ještě bych se na něco zeptal..."~ */ GOTO 2
  IF ~~ THEN REPLY #14391 /* ~"Už musím jít. Sbohem, Sere."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14392 /* ~"Tssss. Někdo ti štípnul rozum *a* zrak, chlapče?" Pokyne hlavou k baru. "Rozhlédni se. Co vidí tvé oči?"~ */
  IF ~~ THEN REPLY #14393 /* ~"Spalovače."~ */ GOTO 11
  IF ~~ THEN REPLY #14394 /* ~"Bar Spalovačů."~ */ GOTO 11
  IF ~~ THEN REPLY #14395 /* ~"Partu zábavymilovných Spalovačů, jak šťastně popíjejí, vesele diskutují a oslavují život, co to jde."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #14396 /* ~"Ještě bych se na něco zeptal..."~ */ GOTO 2
  IF ~~ THEN REPLY #14397 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #14398 /* ~"*Správně*!" Sere se suše zasměje, ale nezdá se, že by se smála tobě. "S rizikem, že se odhalím, Spalovači jsou ta nejnudnější rasa troubů, co se kdy v Sigilu uhnízdila... vždy mluví o smrti v úctě, jako by to byl nějaký svatý svazek, o který by mělo usilovat každé stvoření v mnohovesmíru. Pch."~ */
  IF ~~ THEN REPLY #14399 /* ~"Ale ty jsi Spalovač."~ */ GOTO 13
  IF ~~ THEN REPLY #14400 /* ~"Aha. Ještě bych měl pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14401 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #14402 /* ~"Máš velice chytrý jazyk, chlapče... možná je tvůj jazyk chytřejší než jsi ty sám?" Sere po tobě pošilhává a odfrkne. "To by vysvětlovalo ty jizvy."~ */
  IF ~~ THEN REPLY #14403 /* ~"Ale nevysvětluje to, proč tady stojí jeden Spalovač a vysmívá se ostatním Spalovačům. Nechceš to vysvětlit? *Jsi* Spalovač?"~ */ GOTO 13
  IF ~~ THEN REPLY #14404 /* ~"Velice moudré. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14405 /* ~"Myslím, že jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3 3.0 11.0 12.0
  SAY #14406 /* ~"Spalovač? To bych řekla." Sere popotáhne. "Tssss. Viděla jsem hodně písku propadnout skrz přesýpací hodiny za tu dobu, co nosím tento háv. Toto tělo je téměř připraveno zaplatit převozníkovi." Uchichtne se, ale nezní to příliš vesele.~ */
  IF ~~ THEN REPLY #14407 /* ~"Bojíš se smrti?"~ */ GOTO 14
  IF ~~ THEN REPLY #14408 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14409 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #14410 /* ~"Jistě, že ano, chlapče! Kdo ne?" Zamračí se a rozhlédne se. "No, kromě Spalovačů. Nebojí se, protože za dlouhá desetiletí spolykali tolik svých vlastních nesmyslů, až jsou zaslepení pocitem, že smrt je nějaký druh 'vysvobození'. Tssss."~ */
  IF ~~ THEN REPLY #14411 /* ~"Ale ono to je něco jako *vysvobození*."~ */ GOTO 15
  IF ~~ THEN REPLY #14412 /* ~"Nemluvíš zrovna jako Spalovač."~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14413 /* ~"Tak co vyvolalo tuto krizi tvé víry?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14414 /* ~"Tak co vyvolalo tuto krizi tvé víry?"~ */ GOTO 16
  IF ~~ THEN REPLY #14415 /* ~"Aha. Ještě bych měl pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14416 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #14417 /* ~"Jestli si, chlapče, myslíš, že je život břemeno, pak možná. Ale já si tím nejsem jistá."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14418 /* ~"Tak co vyvolalo tuto krizi tvé víry?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14419 /* ~"Tak co vyvolalo tuto krizi tvé víry?"~ */ GOTO 16
  IF ~~ THEN REPLY #14420 /* ~"Takže ty nevěříš tomu, co Spalovači říkají? Nejsi Spalovač?"~ */ GOTO 65
  IF ~~ THEN REPLY #14421 /* ~"Aha. Měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14422 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 14.2 14.3 15.0 15.1 65.0 65.1 65.2
  SAY #14423 /* ~Pokrčí rameny. "Život, řekla bych. Je... no..." Zamračí se. "Cha! Zapomeň na to. Nebudu tě nudit malichernostmi."~ */
  IF ~~ THEN REPLY #14424 /* ~"Vlastně bych to rád věděl."~ */ GOTO 17
  IF ~~ THEN REPLY #14425 /* ~"Dobrá. Měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14426 /* ~"Nuže, díky Mocnostem za to. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #14427 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #14428 /* ~"Oh, *chtěl bys*?" Dívá se na tebe skepticky. "Tssss. Jak stará podle tebe jsem, chlapče?"~ */
  IF ~~ THEN REPLY #14429 /* ~Pravda: "Stará."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sere_1","GLOBALLaw",1)
~ GOTO 18
  IF ~~ THEN REPLY #14430 /* ~Gentlemanský kompliment: "Ne příliš."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sere_1","GLOBALGood",1)
~ GOTO 18
  IF ~~ THEN REPLY #14431 /* ~Laskavá lež: "Poměrně mladá."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALGood_Sere_2","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #14432 /* ~"Nevím, je mi to jedno."~ */ GOTO 20
  IF ~~ THEN REPLY #14433 /* ~"Měl bych nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14434 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #14435 /* ~Odfrkne. "Nuže, nemáš pravdu. Jsem *opravdu* stará. Takže, strávila jsem většinu svého života výukou Spalovačů. Viděla jsem mnoho spalovačských štěňat vyrůstat v našem řádu, učila jsem je způsobům společenstva, udržovala jejich víru, hlásala dogmata společenstva..." Zamračila se. "...a tak dál, a tak dál. Žádné otázky. Žádné pochybnosti. Takový život byl prostě jen předpokoj vedoucí ke Skutečné smrti."~ */
  IF ~~ THEN REPLY #14436 /* ~"Co se stalo?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14437 /* ~"Víš, začíná mě to nudit. Sbohem."~ */ GOTO 20
  IF ~~ THEN REPLY #14438 /* ~"Aha. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14439 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY #14440 /* ~Sere zamrká, pak se usměje. "No nejsi *sladký*?" Zasměje se pro sebe, pak zakašle. "Nuže, jsem starší, než vypadám. Mnohem starší." Vzdychne. "Takže, strávila jsem většinu svého života výukou Spalovačů. Viděla jsem mnoho spalovačských štěňat vyrůstat v našem řádu, učila jsem je způsobům společenstva, udržovala jejich víru, hlásala dogmata společenstva..." Zamračila se. "...a tak dál, a tak dál. Žádné otázky. Žádné pochybnosti. Takový život byl prostě jen předpokoj vedoucí ke Skutečné smrti."~ */
  IF ~~ THEN REPLY #14441 /* ~"Co se stalo?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14442 /* ~"Víš, začíná mě to nudit. Sbohem."~ */ GOTO 20
  IF ~~ THEN REPLY #14443 /* ~"Aha. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14444 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.1 22.1
  SAY #14445 /* ~Sere se zamračí. "Tssss. To *ty* jsi chtěl, abych brebentila, chlapče. Být tebou, dávala bych si příště pozor na to, co chci.~ */
  IF ~~ THEN REPLY #14446 /* ~"Jistě. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Sere_1","GLOBALGood",-1)
SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0 19.0
  SAY #14447 /* ~"Nuže... před dvěma týdny jsem onemocněla horečkou." Vzdychne. "Myslela jsem, že je konec. A... eh, lezlo mi to na nervy."~ */
  IF ~~ THEN REPLY #14448 /* ~"Jakže?"~ */ GOTO 22
  IF ~~ THEN REPLY #14449 /* ~"Víš, začíná mě to nudit. Sbohem."~ */ GOTO 20
  IF ~~ THEN REPLY #14450 /* ~"Aha. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14451 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #14452 /* ~Její tvář zkameněla. "Má to něco společného s tím, jak členové vlastního společenstva obcházeli kolem smrtelného lože jako smečka pobledlých mrchožroutů, pokyvovali a shodovali se, že moje utrpení a umírání je pro mě to nejlepší. 'Och, Sere je tak šťastlivá! Brzy bude osvobozena od tíhy života!' *Tíhy života?* A pak mi to došlo..."~ */
  IF ~~ THEN REPLY #14453 /* ~"Že...?"~ */ GOTO 23
  IF ~~ THEN REPLY #14454 /* ~"Víš, začíná mě to nudit. Sbohem."~ */ GOTO 20
  IF ~~ THEN REPLY #14455 /* ~"Aha. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14456 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14457 /* ~"Že je něco..." Do obličeje se jí vkrádá podivný výraz. "...podivného na tom, nevážit si svého *života*. Spalovači stále tvrdí, že život je mizérie a strádání... ale je? Že bychom měli být šťastní skonat do zapomnění... ale měli bychom?" Zavrtěla hlavou. "Otázky, otázky... a žalostně málo odpovědí."~ */
  IF ~~ THEN REPLY #14458 /* ~"Zdá se, že už ve filosofii Spalovačů nevěříš."~ */ GOTO 24
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14459 /* ~"Co budeš dělat?"~ */ GOTO 25
  IF ~~ THEN REPLY #14460 /* ~"Aha. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14461 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14462 /* ~"Dejme tomu, že mi v lebce poletuje hejno pochybností." Promne si skráně. "Někdy je těžké všechny je utišit. Potřebují být nakrmeny nějakými odpověďmi a já jsem je dosud nenašla."~ */
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14463 /* ~"Co budeš dělat?"~ */ GOTO 25
  IF ~~ THEN REPLY #14464 /* ~"Aha. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14465 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #14466 /* ~"Na rovinu, chlapče, nevím." Sere vzdychne. "To je právě na pochybách problematické. Nejsem si jistá, co bych měla dělat, nemůžu dokonce ani věřit tomu, že to, co cítím je pravda nebo že můj strach ze smrti je jen kvůli mému setkání s horečkou. Je to jen přechodné? Nevím."~ */
  IF ~~ THEN REPLY #14467 /* ~"Sere, pokud jsi skutečně věřila ve filosofii Spalovačů, pak v tobě to setkání s horečkou nemohlo zanechat tolik pochybností."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14468 /* ~"Sere, považoval bych to za test tvé víry. Zdá se mi, že ty pocity jsou jen dočasné. Všechny ty roky oddanosti Spalovačům nemohly být omylem."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",2)
AddexperienceParty(500)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14469 /* ~"Základem filosofie Spalovačů je, že tento život je jen bolest. Ta je zbraní, kterou život používá proti duši, aby ji udržel zakotvenou v této existenci. Nenechej tu zkušenost s horečkou narušit tvou spalovačskou víru. Čas ty pochybnosti vyléčí."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",3)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14470 /* ~"Na to je složité najít odpověď. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14471 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2
  SAY #14472 /* ~Sere na tebe zírá a pak pomalu přikývne. "Možná ano... možná ano." Zamračí se a její obličej se zvrásní v soustředění. "Musím si to ještě nechat projít hlavou."~ */
  IF ~  Global("Sere_Death_Answer","GLOBAL",0)
~ THEN REPLY #14473 /* ~"To bys měla. Není to malichernost."~ */ GOTO 27
  IF ~~ THEN REPLY #14474 /* ~"To jsem chtěl. Podívej, měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14475 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14476 /* ~"No a teď... dost tlachání o mých potížích!" Sere zírá na tvé jizvy. "Vypadáš, jako že sis se smrtí už několikrát podal ruku. Nezměnilo to nějak tvůj pohled? Nevážíš si díky tomu života o něco více?"~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14477 /* ~"Nuže, můj stav je jedinečný... Vzbudil jsem se v Márnici. Myslím, že si mě spletli s mrtvolou a chystali se mě pohřbít. Podivné na tom je, že si myslím, že jsem vlastně umřel... a zotavil se."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",1)
~ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14478 /* ~"Nuže, má setkání se smrtí jsou mnohem bližší než u jiných lidí. Vypadá to, že nemůžu zemřít... přinejmenším aspoň co vím."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",2)
~ GOTO 28
  IF ~~ THEN REPLY #14479 /* ~Pravda: "Ano."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",3)
~ GOTO 62
  IF ~~ THEN REPLY #14480 /* ~Pravda: "Ani ne."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",4)
~ GOTO 63
  IF ~~ THEN REPLY #14481 /* ~"Opravdu bych o tom nerad mluvil. Ale měl bych ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14482 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 62.0 62.1 63.0 63.1
  SAY #14483 /* ~Sere zamrká. "Vodíš mě za nos."~ */
  IF ~~ THEN REPLY #14484 /* ~"Je to pravda."~ */ GOTO 29
  IF ~~ THEN REPLY #14485 /* ~"Jo, jenom žertuji."~ */ GOTO 33
  IF ~~ THEN REPLY #14486 /* ~"Ne tak docela."~ */ GOTO 29
  IF ~~ THEN REPLY #14487 /* ~"Opravdu bych o tom nerad mluvil. Ale měl bych ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14488 /* ~"Myslím, že jsem řekl dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #14489 /* ~"Podivné jsou cesty Sfér a já už jsem viděla příliš mnoho na to, abych jen tak odmítla *jakoukoliv* povídačku." Studuje tvou tvář. "Pokud je to pravda, proč se tak děje?"~ */
  IF ~~ THEN REPLY #14490 /* ~"Nevím."~ */ GOTO 30
  IF ~~ THEN REPLY #14491 /* ~"Vše co vím je, že jsem se probudil v Márnici bez vzpomínek a pokryt šrámy, které by mě mohly zabít natřikrát."~ */ GOTO 31
  IF ~~ THEN REPLY #14492 /* ~"Opravdu nevím. Podívej, měl bych ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14493 /* ~"Myslím, že už jsem řekl dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14494 /* ~Zdá se, že chvíli přemýšlí a pak pokrčí rameny. "Tak to jsme dva. Velice zvláštní. Nikdy jsem o ničem podobném neslyšela. Škoda těch vzpomínek."~ */
  IF ~~ THEN REPLY #14495 /* ~"Máš nějakou představu, proč se tak děje?"~ */ GOTO 32
  IF ~~ THEN REPLY #14496 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14497 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #14498 /* ~"Neříkej to tak nahlas." Rozhlíží se. "Velice zvláštní. Velice zvláštní. Nikdy jsem o ničem podobném neslyšela. Škoda těch vzpomínek."~ */
  IF ~~ THEN REPLY #14499 /* ~"Máš nějakou představu, proč se tak děje?"~ */ GOTO 32
  IF ~~ THEN REPLY #14500 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14501 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0 31.0
  SAY #14502 /* ~"Ne, žádnou. Nikdy jsem nepotkala někoho, koho si smrt odmítla vzít... až doteď."~ */
  IF ~~ THEN REPLY #14503 /* ~"No, možná bych se tě mohl zeptat na něco jiného..."~ */ GOTO 2
  IF ~~ THEN REPLY #14504 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY #14505 /* ~Zamračí se. "Měl by sis hlídat svoji vtipnost. Je dost ostrá na to, aby tě zabila." Otočila se a udělala rukou pohrdavý posunek. "Nech mě být."~ */
  IF ~~ THEN REPLY #14506 /* ~"Sbohem."~ */ DO ~SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 2.6
  SAY #14507 /* ~"He? Mluv přímo."~ */
  IF ~~ THEN REPLY #14508 /* ~"Mám pár přátel, co si myslí, že by se měly instituce jako jsou Spalovači opustit."~ */ GOTO 35
  IF ~~ THEN REPLY #14509 /* ~"Vlastně jsem se přeřekl. Ještě bych se rád na něco zeptal..."~ */ GOTO 2
  IF ~~ THEN REPLY #14510 /* ~"Zapomeň na to. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14511 /* ~"Ach?" Ušklíbne se. "Máš na mysli *Ligu*?"~ */
  IF ~~ THEN REPLY #14512 /* ~"Ano."~ */ GOTO 36
  IF ~~ THEN REPLY #14513 /* ~"Možná..."~ */ GOTO 36
  IF ~~ THEN REPLY #14514 /* ~"Vlastně jsem se přeřekl. Ještě bych se rád na něco zeptal..."~ */ GOTO 2
  IF ~~ THEN REPLY #14515 /* ~"Zapomeň na to. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1
  SAY #14516 /* ~"Tssss! Ta otravná, žlučí hýbající, sebranka je ještě pitomější než Spalovači, chlapče. Nejsou nic pro tak starou ženu, jako já." ~ */
  IF ~~ THEN REPLY #14517 /* ~"Nejsou? Řekl bych, že bys byla vítaným členem."~ */ GOTO 37
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14518 /* ~"Než řekneš ne, rozvaž tohle: Tvé setkání se smrtí tě přesvědčilo, že život nakonec stojí za to žít. Spalovači kazí nové rekruty přesvědčením, že smrt má před životem přednost. Myslíš, že je to správné?" ~ */ GOTO 40
  IF ~~ THEN REPLY #14519 /* ~"Zdálo se, že potřebuješ změnu."~ */ GOTO 37
  IF ~~ THEN REPLY #14520 /* ~"Dobrá. Už půjdu... dej mi vědět, jestli si to rozmyslíš."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.2
  SAY #14521 /* ~"Myslím, že jsi na omylu." Sere se nepatrně usmívá; vypadá pobaveně. "Možná mám pochybnosti, ale *tak* daleko mě nedohnaly."~ */
  IF ~~ THEN REPLY #14522 /* ~"Pak si rozvaž toto: Tvé setkání se smrtí tě přesvědčilo, že život nakonec stojí za to žít. Spalovači kazí nové rekruty přesvědčením, že smrt je smrt má před životem přednost. Myslíš, že je to správné?" ~ */ GOTO 40
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14523 /* ~"Dobrá, poslední otázka: Co si myslíš o Smrtelné smlouvě?"~ */ GOTO 38
  IF ~~ THEN REPLY #14524 /* ~"Tak na to zapomeň. Měl jsem ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14525 /* ~"Dobrá. Už půjdu... dej mi vědět, jestli si to rozmyslíš."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #14526 /* ~"Smrtelná smlouva?" Vypadá překvapeně. "Co s ní?"~ */
  IF ~~ THEN REPLY #14527 /* ~"Myslíš si snad, že kupování lidských těl pro otrockou dřinu je *správná* věc? Zneužívání momentální slabosti lidské duše k posmrtnému zotročení jejich těla? Je to snad něco, na co by měli být Spalovači hrdí?"~ */ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #14528 /* ~"Stěží, chlapče."~ */
  IF ~~ THEN REPLY #14529 /* ~"Můžu se tě ještě na něco zeptat..?"~ */ GOTO 2
  IF ~~ THEN REPLY #14530 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.1 37.0
  SAY #14531 /* ~"Nuže, ne... ale..."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14532 /* ~"A co Smrtelná smlouva? Myslíš si snad, že kupování lidských těl pro otrockou dřinu je *správná* věc? Zneužívání momentální slabosti lidské duše k posmrtnému zotročení jejich těla? Je to snad něco, na co by měli být Spalovači hrdí?"~ */ GOTO 41
  IF ~~ THEN REPLY #14533 /* ~"Poslouchej se, Sere. Dokonce i tvá odpověď prozrazuje tvé pochybnosti. Nevěříš ve filosofii Spalovačů. Víš, že je špatná."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 38.0 40.0 40.1
  SAY #14534 /* ~"Eh... teď..." Sere se zamračí. "Hmmmm. Teď nemůžu říct *souhlasím* na všechny spalovačské praktiky, ale co by s tím tví přátelé nadělali?"~ */
  IF ~~ THEN REPLY #14535 /* ~"Strhli bychom všechny zdi. Začneme nanovo. A všichni budou osvobozeni od těchto přetvářek, kterým říkají filosofie."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Recruit_Sere","GLOBAL",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #14536 /* ~"Dobře, budu ouškem pro tvé přátele." Sere jako by byla překvapená sama sebou. "A možná víc." Směje se. "Už teď se cítím víc naživu... to musí být vzrušením z toho všeho."~ */
  IF ~~ THEN REPLY #14537 /* ~"Nebudeš toho litovat. Měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14538 /* ~"Děkuji, Sere. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 2.7
  SAY #14539 /* ~"Jak vypadá?"~ */
  IF ~~ THEN REPLY #14540 /* ~"Nemám představu."~ */ GOTO 44
  IF ~~ THEN REPLY #14541 /* ~"Zapomeň na to. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14542 /* ~"To není důležité. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #14543 /* ~"Jak čekáš, že ho najdeš, když ani nevíš, jak vypadá?"~ */
  IF ~~ THEN REPLY #14544 /* ~"Mě samého to začíná udivovat. Měl jsem ještě pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #14545 /* ~"To není důležité. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 2.8
  SAY #14546 /* ~Sereina tvář se zvrásnila zamračením. "Ten *pes*... je ten nejhorší ze všech Sběračů. Slyšela jsem, že má doupě někde na Hadrníkově náměstí, mnoho ulic západně od bran Márnice. Nebezpečné místo. Někteří ze Sběračů nejsou dost trpěliví s čekáním na smrt člověka, aby jej mohli pro peníze prodat."~ */
  IF ~~ THEN REPLY #14547 /* ~"Sběrači?"~ */ GOTO 46
  IF ~~ THEN REPLY #14548 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14549 /* ~"Díky za varování. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14550 /* ~"Je to havěť, co odklízí ulice Úlu od těl, aby je prodali Spalovačům. Jsou ze smrti živi. Nesourodá rasa. Nutí tě stydět se za to, že s nimi sdílíš stejné město." Vzdychla. "Tssss. Ale aspoň udržují ulice v čistotě."~ */
  IF ~~ THEN REPLY #14551 /* ~"Och. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14552 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.2 48.3 49.1 50.0 51.1 52.0 53.0 54.0 55.1 56.1 57.2 58.0 59.1 60.0 61.0
  SAY #14553 /* ~"Nic proti tomu. Koho máš na mysli?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #14554 /* ~"Můžeš mi něco říct o Smrtichtivém?"~ */ GOTO 53
  IF ~  GlobalGT("Mortai","GLOBAL",0)
~ THEN REPLY #14555 /* ~"Můžeš mi říct něco o Mortaiovi?"~ */ GOTO 55
  IF ~  GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #14556 /* ~"Můžeš mi říct něco o Emoricovi?"~ */ GOTO 54
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #14557 /* ~"Můžeš mi říct něco o Starém Mědiokovi?"~ */ GOTO 61
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #14558 /* ~"No, potkal jsem v Márnici písaře jménem Dhall. Znáš ho?"~ */ GOTO 51
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #14559 /* ~"Potkal jsem v Márnici průvodce, Soega. Znáš ho?"~ */ GOTO 48
  IF ~  GlobalGT("Eivene","GLOBAL",0)
~ THEN REPLY #14560 /* ~"Jedna z balzamovačů v Márnici... Ei-Vene. Znáš ji?"~ */ GOTO 59
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
Global("Soego","GLOBAL",0)
Global("Dhall","GLOBAL",0)
Global("Eivene","GLOBAL",0)
~ THEN REPLY #14561 /* ~"Vlastně, zapomeň na to - neznám jejich jména."~ */ GOTO 64
  IF ~~ THEN REPLY #14562 /* ~"Zapomeň na to. Měl jsem ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14563 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.5
  SAY #14564 /* ~"Ten chlapec tu býval štamgastem. Nevím, co se s ním stalo. Je možné, že byl otřesen smrtí svého přítele."~ */
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",0)
~ THEN REPLY #14565 /* ~"To mi vysvětli."~ */ DO ~SetGlobal("Know_Soego_Friend_Death","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",1)
~ THEN REPLY #14566 /* ~"To mi vysvětli."~ */ GOTO 49
  IF ~~ THEN REPLY #14567 /* ~"Býval Soego vždycky průvodcem v Márnici?"~ */ GOTO 50
  IF ~~ THEN REPLY #14568 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14569 /* ~"Měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14570 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #14571 /* ~"Jeden jeho přítel byl před několika týdny zabit v Úlu, roztrhaly jej krysy." Zakroutila hlavou. "Špinavá záležitost."~ */
  IF ~~ THEN REPLY #14572 /* ~"Býval Soego vždycky průvodcem v Márnici?"~ */ GOTO 50
  IF ~~ THEN REPLY #14573 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14574 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14575 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.2 49.0
  SAY #14576 /* ~"Ne, jenom posledních pár měsíců... a naposled, jak jsem slyšela, byl poslán na nějakou misionářskou službu, ale nevím kam."~ */
  IF ~~ THEN REPLY #14577 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14578 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14579 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.4
  SAY #14580 /* ~"Tsss. Dhall? Během mého počátečního výcviku v Márnici byl mým instruktorem ve filozofických uměních a je navíc mrzoutským bláznem. Je nemocný, co se ke mně doneslo. Vsadila bych se, že svým vystupováním nudí i smrt."~ */
  IF ~~ THEN REPLY #14581 /* ~"Umírá?"~ */ GOTO 52
  IF ~~ THEN REPLY #14582 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14583 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14584 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14585 /* ~"Tsss. Je mu hůř než prašivému psu. Už pro něj v přesýpacích hodinách mnoho písku nezbývá."~ */
  IF ~~ THEN REPLY #14586 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14587 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14588 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 47.0
  SAY #14593 /* ~"Smrtichtivý? Tssss! Ten hoch nemá ani *polovinu* rozumu osla. On skutečně *chce* zemřít a přitom je tak mladý. Přála bych si, *kdyby* jej smrt trochu postrašila. To by ho pár věcí naučilo..."~ */
  IF ~~ THEN REPLY #14594 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14595 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14596 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 47.2
  SAY #14597 /* ~"Ten starý zapšklý blázen. Víš, učila jsem ho, měla jsem o něm velké mínění a pak jsem procitla. Je to nevrlý starý morbiďák, který tu ve své volné době sedí, aby se ujistil, že mají mladší Spalovači i v baru symbol autority." Zamumlá. "Starý sup."~ */
  IF ~~ THEN REPLY #14598 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14599 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14600 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.1
  SAY #14601 /* ~"Mortai? Ha! Myslela jsem, že se chceš zeptat na Spalovače." Odplivne si. "Není tu žádný Spalovač, který by byl míň Spalovač než ten lakotný otravný omezenec!"~ */
  IF ~~ THEN REPLY #14602 /* ~"Co tím myslíš?"~ */ GOTO 56
  IF ~~ THEN REPLY #14603 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14604 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14605 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #14606 /* ~"Mortai je tak dychtivý oslnit své nadřízené uzavřením co nejvíce Smrtelných smluv, že bych se divila, kdyby se vůbec kdy stal Spalovačem."~ */
  IF ~~ THEN REPLY #14607 /* ~"Nerozumím."~ */ GOTO 57
  IF ~~ THEN REPLY #14608 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14609 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14610 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #14611 /* ~"Je *chtivý* získat podpis pod smlouvu, chlapče. Je upřený na svou pověst. Přemýšlí o své *kariéře* mezi Spalovači. To samo o sobě říká vše."~ */
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14612 /* ~"Pořád nerozumím."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 58
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14613 /* ~"Pořád nerozumím."~ */ GOTO 58
  IF ~~ THEN REPLY #14614 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14615 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14616 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #14617 /* ~Říká se, že touhy zabíjí." Sere si odfrkne. "Tssss. U Spalovačů je tomu naopak. Touhy tě drží naživu. A jestli se nedokážeš oprostit od tužeb, ať už chtivosti, chamtivosti nebo ambicí, pak jsi odsouzen nikdy skutečně nezemřít, protože si život vždycky z tebe něco ponechá."~ */
  IF ~~ THEN REPLY #14618 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14619 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14620 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 47.6
  SAY #14621 /* ~"Kdo?"~ */
  IF ~~ THEN REPLY #14622 /* ~"Zvláštní dívka... se špatným zrakem, skoro hluchá, drápy místo rukou?"~ */ GOTO 60
  IF ~~ THEN REPLY #14623 /* ~"To je jedno. Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14624 /* ~"Tak nic. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14625 /* ~"Zapomeň na to. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #14626 /* ~Sere kroutí hlavou. "Možná je to nějaká novicka. Nikdy jsem o ni neslyšela."~ */
  IF ~~ THEN REPLY #14627 /* ~"Dobře. Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14628 /* ~"Tak nic. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14629 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 47.3
  SAY #14630 /* ~"O něm moc nevím... Je to zvláštní týpek. Nikdy se nehne z místa, nikdy nejí, nepije, jen čeká." Trochu se zachvěje. "Znepokojuje mě."~ */
  IF ~~ THEN REPLY #14631 /* ~"Můžu se tě zeptat na nějaké jiné Spalovače?"~ */ GOTO 47
  IF ~~ THEN REPLY #14632 /* ~"Aha. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14633 /* ~"To je vše, co jsem se chtěl dozvědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 27.2
  SAY #14634 /* ~"No to by mělo. Na smrti není nic povzbudivého."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14635 /* ~"Nuže, můj stav je jedinečný... Vzbudil jsem se v Márnici. Myslím, že si mě spletli s mrtvolou a chystali se mě pohřbít. Podivné na tom je, že si myslím, že jsem vlastně umřel... a zotavil se."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14636 /* ~"Nuže, má setkání se smrtí jsou mnohem bližší než u jiných lidí. Vypadá to, že nemůžu zemřít... přinejmenším aspoň co vím."~ */ GOTO 28
  IF ~~ THEN REPLY #14637 /* ~"Nemyslím. Ale měl bych ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14638 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 27.3
  SAY #14639 /* ~"Jó, tedy, to je škoda, chlapče." Sere *odkašlává*. "Jestli ani rozšklebená hlava smrti tě nepřinutila, aby ses držel života, pak pravděpodobně není ve Sférách síly, která by tě naučila vidět smysl."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14640 /* ~"Nuže, můj stav je jedinečný... Vzbudil jsem se v Márnici. Myslím, že si mě spletli s mrtvolou a chystali se mě pohřbít. Podivné na tom je, že si myslím, že jsem vlastně umřel... a zotavil se."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14641 /* ~"Nuže, má setkání se smrtí jsou mnohem bližší než u jiných lidí. Vypadá to, že nemůžu zemřít... přinejmenším aspoň co vím."~ */ GOTO 28
  IF ~~ THEN REPLY #14642 /* ~"To je tvůj názor. Měl jsem ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #14643 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 47.7
  SAY #14644 /* ~"Mno, ušetřím dlouhých představování." Sere popotáhne. "Je jich hrozně moc. Jestli chceš o některém z nich něco vědět, zjisti si nejdřív jeho jméno a pak přijď zase ke mně."~ */
  IF ~~ THEN REPLY #14645 /* ~"Dobrá. Měl jsem ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14646 /* ~"Tak myslím, že si zajdu s některými promluvit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 14.1 15.2
  SAY #14647 /* ~Pokrčí rameny. "Řekla bych, že mi spalovačské roucho nesedí tak jako dřív."~ */
  IF ~~ THEN REPLY #14648 /* ~"Co se stalo?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14649 /* ~"Tak co vyvolalo tuto krizi tvé víry?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14650 /* ~"Tak co vyvolalo tuto krizi tvé víry?"~ */ GOTO 16
  IF ~~ THEN REPLY #14651 /* ~"Měl bych nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #14652 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~  Global("Sere","GLOBAL",2)
~ THEN BEGIN 66 // from:
  SAY #14653 /* ~Jak tě uvidí, Sere se zamračí. "Líp uděláš, když skočíš zpátky do své krypty, hochu. Na tlachání s tebou už mi v tomto životě mnoho času nezbývá."~ */
  IF ~~ THEN EXIT
END
