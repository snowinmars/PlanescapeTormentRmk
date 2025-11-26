// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43405 /* ~"Hele, nedotýkej se mně. Nech mě bejt!"~ */
  IF ~~ THEN REPLY #43406 /* ~"Ale já chtěl jenom... ale nic. Zapomeň na to."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #43407 /* ~"Oni tě chytli, co? To je špatný."~ */
  IF ~~ THEN REPLY #43408 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
!Dead("Sandoz")
~ THEN BEGIN 2 // from:
  SAY #43409 /* ~"Dík za tvý milosrdenství. Od teďka už budu slušnej hoch. OK?"~ */
  IF ~~ THEN REPLY #43410 /* ~"Samozřejmě, Sarosi. Nechceš mi ještě odpovědět na pár otázek?"~ */ GOTO 4
  IF ~~ THEN REPLY #43411 /* ~"Jak myslíš. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 6 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",3)
GlobalLT("G_Test2","GLOBAL",12)
~ THEN BEGIN 3 // from:
  SAY #43412 /* ~"Na co si přišel? Hodláš mě očistit?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43413 /* ~"Thildon mi řekl, že to šídlo jsi tam nastražil ty a že se to snažíš svést na něj, protože jste se nepohodli."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43414 /* ~"Thildon mi řekl, že ty a Bedai-Lihn jste Anarchisti a že se to snažíte svést na něj, protože se k vám odmítl přidat."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43415 /* ~"Mám už dostatek stop k vyvození závěru."~ */ GOTO 18
  IF ~~ THEN REPLY #43416 /* ~"Ne, ještě ne. Zatím pro tebe mám pár otázek."~ */ GOTO 15
  IF ~~ THEN REPLY #43417 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.2 8.0 10.2 11.0 13.0
  SAY #43418 /* ~"Jistě. Co chceš vědět?"~ */
  IF ~~ THEN REPLY #43419 /* ~"Pověz mi něco o sobě."~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43420 /* ~"Pověz mi o Velké slévárně."~ */ GOTO 9
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43421 /* ~"Pověz mi o Velké slévárně."~ */ GOTO 8
  IF ~~ THEN REPLY #43422 /* ~"Co mi můžeš říct o Anarchistech?"~ */ GOTO 10
  IF ~~ THEN REPLY #43423 /* ~"Co takhle lidi tady kolem?"~ */ GOTO 11
  IF ~~ THEN REPLY #43424 /* ~"Právě teď nic. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43425 /* ~"Hele, podívej se... Vyrost sem ve Slévárně po boku svý sestry Sarossy. Můj táta Sandoz je přestavitel frakce, takže tráví hodně času venku a snaží se o nový rekruty a zvýšení našeho vlivu. Moje setra Sarossa je tak trochu čarodějka, ale dokáže divy. Dokáže z lidí udělat víc, než jsou teď."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43426 /* ~"Co tím myslíš?"~ */ GOTO 13
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43427 /* ~"Co tím myslíš?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 13
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43428 /* ~"To už jsem slyšel. Můžeš mi říct ještě o něčem jiném?"~ */ GOTO 4
  IF ~~ THEN REPLY #43429 /* ~"Díky, že sis na mě udělal čas. Sbohem."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
Dead("Sandoz")
~ THEN BEGIN 6 // from:
  SAY #43430 /* ~"Nech mě bejt. Ztratil sem otce."~ */
  IF ~~ THEN REPLY #43431 /* ~"Měl bych pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #43432 /* ~"Jak chceš. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #43433 /* ~"Řek sem, abys mě nechal bejt!"~ */
  IF ~~ THEN REPLY #43434 /* ~"Dobře, dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #43435 /* ~"Vyrost sem tady. Vždycky sem si hrál v celé Slévárně a běhal přes kasárny. Dost to tam smrdí a ty lidi jsou jako, jako... lidi... no ale prostě je to můj domov a basta."~ */
  IF ~~ THEN REPLY #43436 /* ~"To bylo výstižný. Odpověz mi ještě na pár otázeček..."~ */ GOTO 4
  IF ~~ THEN REPLY #43437 /* ~"Dík Sarosi. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY #43438 /* ~"Všichni sou mrtvý. Všichni ti lidi, co si se mnou hráli, když sem byl ještě malej... všichni umřeli při výbuchu. Slévárna pro mě vždycky byla domov, ale teď mi v srdci udělala díru. Mohl bys mě nechat o samotě?"~ */
  IF ~~ THEN REPLY #43439 /* ~"Nemohl, chlapče. Ale mohl bys mi odpovědět na pár otázek?"~ */ GOTO 7
  IF ~~ THEN REPLY #43440 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3
  SAY #43441 /* ~"O tom bych radši nemluvil. Vždycky sem myslel, že mi pomůžou a že můj život bude lepší, ale nakonec mi nastavili záda. Měli by na sebe ale dávat pozor, když je každej proti nim... No, prostě sem chtěl bejt jeden z nich."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",0)
~ THEN REPLY #43442 /* ~"Takhle nemluví Anarchista. Od něj se očekává, že bude mít vlastní hrdost."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Saros_1","GLOBALLaw",-1)
AddexperienceParty(200)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",1)
~ THEN REPLY #43443 /* ~"Takhle nemluví Anarchista. Od něj se očekává, že bude mít vlastní hrdost."~ */ GOTO 14
  IF ~~ THEN REPLY #43444 /* ~"Jak myslíš, jsi prostě pořád dítě. Ale z toho vyrosteš. Nechceš mi ještě odpovědět na pár otázek?"~ */ GOTO 4
  IF ~~ THEN REPLY #43445 /* ~"Chápu tě, dostaneš se z toho. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.4
  SAY #43446 /* ~Pokrčil rameny. "Lidi, lidi. Obyčejný lidi."~ */
  IF ~~ THEN REPLY #43447 /* ~"Dík za pomoc. Můžeš mi odpovědět ještě na něco?"~ */ GOTO 4
  IF ~~ THEN REPLY #43448 /* ~"Díky moc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #43449 /* ~"To chceš říct, že abych se stal jedním z nich, bych neměl chtít bejt jedním z nich?"~ */
  IF ~~ THEN REPLY #43450 /* ~"Jednoduše řečeno. Protože s vlastní hrdostí nebudeš pouze loutkou. Popřemýšlej o tom."~ */ JOURNAL #39515 /* ~Vysvětlil jsem Sarsovi jak se stát Anarchistou.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1
  SAY #43451 /* ~"Prostě jí stačí, aby se na někoho podívala, a hned ví, co mu chybí a čeho má až až. Netuším jak to dělá. Táta vždycky říkal, že to bylo tim, jak dosahovala v životě větší úrovně. Podle něj byla Sarossa rozený Boží člověk."~ */
  IF ~~ THEN REPLY #43452 /* ~"Díky. Mám ještě pár otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #43453 /* ~"Díky a měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #43454 /* ~"To už si mi jednou říkal! Nemůžeš si vymyslet něco originálnějšího? Proč furt říkaš ty samý věci pořád dokola? Copak ze mě chceš dostat ještě něco jinýho?"~ */
  IF ~~ THEN REPLY #43455 /* ~"Ani ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 16.0 19.0 20.0 21.0 23.1 28.2 29.0
  SAY #43456 /* ~"Copak si chtěl vědět?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43457 /* ~"Thildon řekl, že to šídlo jsi tam nastražil ty a že se to snažíš svalit na něj, protože jste se nepohodli."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43458 /* ~"Thildon mi řekl, že ty a Bedai-Lihn jste Anarchisti a že se  snažíte svalit vinu na něj, protože se k vám nechtěl přidat."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43459 /* ~"Už toho vím dost k vyvození závěru."~ */ GOTO 18
  IF ~~ THEN REPLY #43460 /* ~"Pověz mi něco o sobě."~ */ GOTO 19
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43461 /* ~"Co mi můžeš říct o Velké slévárně?"~ */ GOTO 20
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43462 /* ~"Co mi můžeš říct o Velké slévárně?"~ */ GOTO 21
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
~ THEN REPLY #43463 /* ~"Povyprávěj mi o Anarchistech."~ */ GOTO 22
  IF ~~ THEN REPLY #43464 /* ~"Co takhle lidi tady kolem."~ */ GOTO 23
  IF ~~ THEN REPLY #43465 /* ~"Protentokrát nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.0 15.0
  SAY #43466 /* ~"Mně je jasný, že to řekl! To protože za to může on a chce, aby sis myslel, že to tak neni! Viděl jsem ho, když zrovna vraždil! Opravdu jsme se nepohodli, ale to taky neznamená, že ho chci vidět mrtvýho. Jenom to, že je nehoráznej idiot neznamená, že by měl jít za mříže. Za mříže byl měl jít kvůli zavraždění Avildona! Jo a řekni mu, že proti mně nemá důkazy!"~ */
  IF ~~ THEN REPLY #43468 /* ~"Dobrá, dobrá. Měl bych pro tebe ještě pár otázek."~ */ JOURNAL #39514 /* ~Saros popřel, že by křivě obvinil Thildona. Podle něj by měl být Thildon zatčen za vraždu. Jako kdybych nevěděl, že viník se má zatknout.~ */ GOTO 15
  IF ~~ THEN REPLY #43469 /* ~"To taky udělám. Prozatím sbohem."~ */ JOURNAL #39514 /* ~Saros popřel, že by křivě obvinil Thildona. Podle něj by měl být Thildon zatčen za vraždu. Jako kdybych nevěděl, že viník se má zatknout.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.1 15.1 22.0 22.1
  SAY #43470 /* ~Saros zbledl. "Ona s tim nemá nic společnýho, udělal jsem to jenom já sám. Pravda je taková, že do těch kol strčil Avildona Thildon. To šídlo je opravdu moje dílo, protože jsem moc mladej a nikdo by mi neuvěřil moji výpověď. Už to chápeš? Přiznávám se, že to šídlo jsem nastražil já, ale udělal jsem to jenom proto, aby Thildon zaplatil za svůj čin."~ */
  IF ~~ THEN REPLY #43471 /* ~"Výborně, hned teď jdu oznámit své rozhodnutí Keldorovi."~ */ JOURNAL #39513 /* ~Saros mi otevřeně přiznal, že ono šídlo narafičil k mrtvému tělu on. Prý se pouze chtěl ujistit, že Thildon neunikne trestu.~ */ GOTO 18
  IF ~~ THEN REPLY #43472 /* ~"Řekni mi proč. Proč si nemám myslet, že to všechno děláš jenom proto, aby ses z toho dostal?"~ */ JOURNAL #39513 /* ~Saros mi otevřeně přiznal, že ono šídlo narafičil k mrtvému tělu on. Prý se pouze chtěl ujistit, že Thildon neunikne trestu.~ */ GOTO 27
  IF ~~ THEN REPLY #43473 /* ~"No, ještě uvidíme. Sbohem."~ */ JOURNAL #39513 /* ~Saros mi otevřeně přiznal, že ono šídlo narafičil k mrtvému tělu on. Prý se pouze chtěl ujistit, že Thildon neunikne trestu.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.2 15.2 17.0
  SAY #43474 /* ~"Jak ses teda rozhodl?" Zdá se, že se snaží potlačit slzy.~ */
  IF ~~ THEN REPLY #43475 /* ~"To poznáš, až mu to řeknu."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #43476 /* ~"Bojím se. Bojím se, že mě máš za vraha, i když já jsem nevinnej!"~ */
  IF ~~ THEN REPLY #43477 /* ~"No, ještě se uvidí. Zatím mi ještě odpověz na pár otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #43478 /* ~"Ještě se pozná, jestli za to náhodou nemůžeš ty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #43479 /* ~"Poslední dobou je všechno špatně, úplně všechno... říkají mi, že to je jenom další životní zkouška, ale... mě se to nezdá..."~ */
  IF ~~ THEN REPLY #43480 /* ~"Pověz mi ještě o něčem jiném..."~ */ GOTO 15
  IF ~~ THEN REPLY #43481 /* ~"Vždycky je něco špatně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY #43482 /* ~"Vyrostl jsem tady. Hrával jsem si v celý Slévárně a běhal přes kasárna. Pěkně to tam smrdí a všichni lidi jsou tam stejný jako Thildon... ale pořád je to můj domov."~ */
  IF ~~ THEN REPLY #43483 /* ~"Ach tak. Odpovíš mi ještě na pár otázek?"~ */ GOTO 15
  IF ~~ THEN REPLY #43484 /* ~"Hmmm, měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY #43485 /* ~"Oni... no, jednou za mnou přišlo pár lidí a povídaj mi, že jsem ten typ člověka, kterýho hledaj, protože mám přístup, kam se mi zachce a nikdo mě nepodezírá... Nikdy mi neřekli, že se chystá něčí vražda. Prostě jsem akorát měl mít oči na stopkách. Jenže pak Thildon strčil Avildona do těch kol a svalil to na mě... Doteďka vlastně nevím, kdo byli ti, co se mnou mluvili!"~ */
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #43486 /* ~"Hele, je pravda, že ty a Bedai-Lihn jste to shodili na Thildona? Podle něj jo. A vypadal dost sebejistě, když mi to povídal."~ */ GOTO 17
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43487 /* ~"Hele, je pravda, že ty a Bedai-Lihn jste to shodili na Thildona? Podle něj jo. A vypadal dost sebejistě, když mi to povídal."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
END

IF ~~ THEN BEGIN 23 // from: 15.7
  SAY #43488 /* ~"Jsou to úplně obyčejný kováři a řemeslníci. Nejspíš tady znamenají hodně, ale všichni jsou tak vážný a *nudný*. Jak říkaj Vnímaví, potřebovali by trošku obveselit."~ */
  IF ~~ THEN REPLY #43489 /* ~"Máš rád Vnímavé, co?"~ */ GOTO 28
  IF ~~ THEN REPLY #43490 /* ~"Už začínám chápat tvé myšlenky. Co takhle ještě pár otázek a odpovědí?"~ */ GOTO 15
  IF ~~ THEN REPLY #43491 /* ~"Mockrát dík za tvůj čas. Měj se."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalLT("G_Test2","GLOBAL",4)
GlobalGT("G_Test2","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #43492 /* ~"Chudák kovář... pořád ještě nemůžu uvěřit tomu, co se mu stalo..."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
~ THEN REPLY #43493 /* ~"Nemáš nějaké ponětí, co se mu mohlo stát? Nebo snad nějaké stopy?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #43494 /* ~"Je to hrozné. Takový úděsný konec. Mám ještě pár otázeček..."~ */ GOTO 26
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43495 /* ~"Nemáš nějaké ponětí, co se mu mohlo stát? Nebo snad nějaké stopy?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #64942 /* ~"Ani já. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.2 26.0 26.1
  SAY #43496 /* ~"Koho myslíš? Správkyni? Ta je čistá. Byl jsem tady v noci, když tu nebyla ani noha." Lišácky se porozhlédl kolem a naklonil se přímo k tobě. "Viděl jsem Thildona, jak tady slídil. A můj důvod, proč vím, že to byl on je, že něco odhodil na zem." Podal to šídlo se jménem "Thildon" vyrytým na rukojeti.~ */
  IF ~~ THEN REPLY #43497 /* ~"Díky. Ještě se vrátím a popovídáme si. Sbohem."~ */ JOURNAL #39512 /* ~Saros mi dal šídlo, do kterého bylo vyryto Thildonovo jméno. Prý že ho onu osudnou noc našel ležet poblíž mrtvého těla.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 30.0 31.0 32.0 33.1 34.2 35.0 36.0 37.0
  SAY #43498 /* ~"Zeptej se na co chceš."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"Nemáš nějaké ponětí, co se mu mohlo stát? Nebo snad nějaké stopy?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"Nemáš nějaké ponětí, co se mu mohlo stát? Nebo snad nějaké stopy?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #43500 /* ~"Pověz mi něco o sobě."~ */ GOTO 30
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43501 /* ~"Co mi můžeš říct o Velké slévárně?"~ */ GOTO 31
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43502 /* ~"Co mi můžeš říct o Velké slévárně?"~ */ GOTO 32
  IF ~~ THEN REPLY #43503 /* ~"Řekni mi o lidech tady kolem."~ */ GOTO 33
  IF ~~ THEN REPLY #43504 /* ~"Právě na nic nemůžu přijít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #43505 /* ~"Protože... protože... nevím, proč by sis to měl myslet. Snad ti stačí mé slovo... Běž si s ním popovídat a pověz mu, co jsem řek a pak si můžeš vyvozovat závěry sám."~ */
  IF ~~ THEN REPLY #43506 /* ~"Jdu na to. Počkej tady."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.0
  SAY #43507 /* ~"Oni věděj, jak si užívat života. Věděj, v čom to spočívá. Nejsou jako tyhle lidi. Podle nich má všechno svůj vznešený cíl, ale nevim, co to jako má bejt. Moje sestra říkala, že život je víc, než jenom to, co nám řekne naše vědomí. Absolutně netušim, jak na to přišla, protože všechno, co člověk ví, je z jeho vědomí. A taky nechápu, proč tomu ty lidi věřej."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43508 /* ~"Kdo je tvá sestra?"~ */ GOTO 29
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43509 /* ~"Kdo je tvá sestra?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 29
  IF ~~ THEN REPLY #43510 /* ~"Hmm. Aha. Měl bych ještě pár otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #43511 /* ~"Dík za tvůj čas. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #43512 /* ~"Sarossa? Úžasná nátura. Stačí ji, aby se na někoho jenom podívala, a hned ví, co mu schází a co mu přebejvá. Já jsem nikdy netušil, jak to dělá, ale můj otec vždycky říkal, že to má něco společnýho s jejím postupem na vyšší úroveň bytí. Prej se narodila jako hotovej Boží člověk."~ */
  IF ~~ THEN REPLY #43513 /* ~"Zajímavé. Můžu se tě zeptat ještě na něco?"~ */ GOTO 15
  IF ~~ THEN REPLY #43514 /* ~"Dík za vysvětlení. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY #43515 /* ~"O mě? Jmenuju se Saros. Vyrost jsem tady. Běhal jsem po Slévárně, hrál jsem si tu... každýho tady mám vlastně rád. Teda kromě Thildona. Tluče mi do hlavy, že jsem nevychovanej fracek a že můj táta byl špatnej rodič. Jóó, Thildon je ten největší vůl, jakýho jsem kdy potkal."~ */
  IF ~~ THEN REPLY #43516 /* ~"Určitě máš pravdu. Zeptal bych se tě ještě na něco..."~ */ GOTO 26
  IF ~~ THEN REPLY #43517 /* ~"Výstižný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY #43518 /* ~"Poslední dobou jde všechno nějak špatně... prej že je to další životní zkouška, ale... já tomu nevěřím..." ~ */
  IF ~~ THEN REPLY #43519 /* ~"Odpověz mi, prosím tě, ještě na pár otázek..."~ */ GOTO 26
  IF ~~ THEN REPLY #43520 /* ~"Vždycky je něco špatně, nedělej si z toho hlavu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.4
  SAY #43521 /* ~"Vyrostl jsem tady. Hrával jsem si v celý Slévárně a běhal přes kasárna. Pěkně to tam smrdí a všichni lidi jsou tam stejný jako Thildon... ale pořád je to můj domov."~ */
  IF ~~ THEN REPLY #43522 /* ~"Ach tak. Měl bych ještě pár otázeček..."~ */ GOTO 26
  IF ~~ THEN REPLY #43523 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.5
  SAY #43524 /* ~"Jsou to úplně obyčejný kováři a řemeslníci. Nejspíš tady znamenají hodně, ale všichni jsou tak vážný a *nudný*. Jak říkaj Vnímaví, potřebovali by trošku obveselit."~ */
  IF ~~ THEN REPLY #43525 /* ~"Ty máš rád Vnímavé, co?"~ */ GOTO 34
  IF ~~ THEN REPLY #43526 /* ~"Mno, errr... mohl bys mi odpovědět ještě na pár otázek?"~ */ GOTO 26
  IF ~~ THEN REPLY #43527 /* ~"Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #43528 /* ~"Oni věděj, jak si užívat života. Věděj, v čem to spočívá. Nejsou jako tyhle lidi. Podle nich má všechno svůj vznešený cíl, ale nevim, co to jako má bejt. Moje sestra říkala, že život je víc, než jenom to, co nám řekne naše vědomí. Absolutně netušim, jak na to přišla, protože všechno, co člověk ví, je z jeho vědomí. A taky nechápu, proč tomu ty lidi věřej."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43529 /* ~"Kdo je tvá sestra?"~ */ GOTO 35
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43530 /* ~"Kdo je tvá sestra?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 35
  IF ~~ THEN REPLY #43531 /* ~"Hmm. Aha. Měl bych ještě pár otázek..."~ */ GOTO 26
  IF ~~ THEN REPLY #43532 /* ~"Dík za tvůj čas. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #43534 /* ~"Sarossa? Úžasná nátura. Stačí ji aby se na někoho jenom podívala a hned ví, co mu schází a co mu přebejvá. Já jsem nikdy netušil, jak to dělá, ale můj otec vždycky říkal, že to má něco společnýho s jejím postupem na vyšší úroveň bytí. Prej se narodila jako hotovej Boží člověk."~ */
  IF ~~ THEN REPLY #43535 /* ~"Zajímavé. Můžu se tě zeptat ještě na něco?"~ */ GOTO 26
  IF ~~ THEN REPLY #43536 /* ~"Dík za vysvětlení. Sbohem."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 36 // from:
  SAY #43537 /* ~"Zase ty? Co pořád chceš?"~ */
  IF ~~ THEN REPLY #43538 /* ~"Jenom jsem se chtěl zeptat na pár otázek..."~ */ GOTO 26
  IF ~~ THEN REPLY #43539 /* ~"Ale nic. Sbohem."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from:
  SAY #43540 /* ~Vidíš světlovlasého mladíka. Nejspíš se nachází na přelomu adolescence a dospělosti a jeho oči říkají, že se snaží být dospělým, i když absolutně netuší jak - jinými slovy, vypadá jak neviňátko. "Hej, cizinče. Můžu pro tebe něco udělat?"~ */
  IF ~~ THEN REPLY #43541 /* ~"Mohl bys mi odpovědět na pár otázek..."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #43542 /* ~"Ale nic, díky. Sbohem."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ EXIT
END
