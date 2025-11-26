// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSSKULL~

IF ~  Global("SSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31579 /* ~Lebka unaveně vydechla a promluvila těžkým hlasem: "Proč rušíš můj odpočinek?  V poslední době se toho děje tolik, a i když mám ráda vjemy, musím se přiznat, že si alespoň chvíli přeji vnímat klid a ticho."~ */
  IF ~~ THEN REPLY #31581 /* ~"Pověz mi o sobě."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 1
  IF ~~ THEN REPLY #31582 /* ~"Co tady děláš?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31583 /* ~"Co mi můžeš říct o Lotharovi?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31584 /* ~"Co ty ostatní lebky na poličce?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31585 /* ~"Tak tedy pokračuj. Sbohem."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.3 3.1 6.0 10.2 12.0 17.0
  SAY #31586 /* ~"Jsem... Byl jsem... Oceán-před-Bouří, Vnímavý. Ale teď už jsem jenom dekorace."~ */
  IF ~  Global("Know_Sensates","GLOBAL",0)
~ THEN REPLY #31587 /* ~"Vnímavý? Co je to?"~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Sensates","GLOBAL",1)
~ THEN REPLY #31588 /* ~"To musí být těžké... není tady v okolí moc vjemů, viď?"~ */ GOTO 9
  IF ~~ THEN REPLY #31589 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 3
  IF ~~ THEN REPLY #31590 /* ~"Co tě sem přivedlo?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31591 /* ~"Co víš o těch ostatních lebkách?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31592 /* ~"Co víš o těch ostatních lebkách na poličce?"~ */ GOTO 12
  IF ~~ THEN REPLY #31593 /* ~"Aha. Nechám tě být. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 3.2 6.1 7.1 8.0 17.1
  SAY #31594 /* ~"No, sedím na poličce a nechám se pokrývat prachem, dokud se do hlavičky některého z Lotharových krysáků nevkrade myšlenka, že bych potřebovala oprášit. Odpovídám Lotharovi na otázky a... no, to je vše z mé ubohé existence."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #31595 /* ~"Ne, myslel jsem tím, jak ses sem dostal?"~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #31596 /* ~"Ne, myslel jsem tím, jak ses sem dostal?"~ */ GOTO 11
  IF ~~ THEN REPLY #31597 /* ~"Jaké otázky?"~ */ GOTO 14
  IF ~~ THEN REPLY #31598 /* ~"Pověz mi o sobě."~ */ GOTO 1
  IF ~~ THEN REPLY #31599 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31600 /* ~"Co ty ostatní lebky na poličce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31601 /* ~"Co víš o těch ostatních lebkách na poličce?"~ */ GOTO 12
  IF ~~ THEN REPLY #31602 /* ~"Tak to tě nebudu vyrušovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.4 6.2 7.2 8.1 10.3 12.1 17.2
  SAY #31603 /* ~"Nic, co by ti neřekl sám. Jelikož nevěřím ostatním lebkám, že by mě nepráskly, kdybych ti pověděl něco víc, budu radši zticha. A než se zeptáš - ano, mám z něj strach."~ */
  IF ~~ THEN REPLY #31604 /* ~"Co by ti mohl udělat?"~ */ GOTO 13
  IF ~~ THEN REPLY #31605 /* ~"Pověz mi o sobě."~ */ GOTO 1
  IF ~~ THEN REPLY #31606 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31607 /* ~"Co ty ostatní lebky na poličce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31608 /* ~"Co víš o těch ostatních lebkách na poličce?"~ */ GOTO 12
  IF ~~ THEN REPLY #31609 /* ~"Tak si tedy pokračuj. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.4 2.5 3.3 7.3 8.2 10.4 17.3
  SAY #31610 /* ~"Oh, nijak zvlášť nudu nenaruší. Máme tady krysodlaka Kozločesa, anarchistu Pochmurného Skalpa a starého kouzelnického vraha Sterna. Nevím, co Stern dělá, ale je od základu zlý."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from:
  SAY #31611 /* ~"Pragmatik? To proto, že bodnout někoho do zad je nejčastější odpověď, kterou odpovídáš na problémy?"~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 1
END

IF ~~ THEN BEGIN 6 // from:
  SAY #31612 /* ~Oceán-před-Bouří se opět věnuje tobě. "Vidíš? Od základu zlý," řekla.~ */
  IF ~~ THEN REPLY #31613 /* ~"Pověz mi o sobě."~ */ GOTO 1
  IF ~~ THEN REPLY #31614 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #31615 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 3
  IF ~~ THEN REPLY #31616 /* ~"Ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #31617 /* ~"Vnímavý je člen Společenství Vjemu - jedné z frakcí Sigilu, kterou najdeš v Městské hale v Úřednické Čtvrti - která tvrdí, že mnohovesmíru můžeš porozumět a ovládat ho pouze prostřednictvím svých smyslu a tedy bys měl získat co nejvíce nejrůznějších zážitků. Myslím, že já už jsem kvótu přesáhl vysedáváním na téhle zaprášené poličce - můj práh znuděnosti je nízký."~ */
  IF ~~ THEN REPLY #31618 /* ~"Můžu pro tebe něco udělat?"~ */ GOTO 8
  IF ~~ THEN REPLY #31619 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #31620 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31621 /* ~"Co ty ostatní lebky na poličce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31622 /* ~"Co víš o těch ostatních lebkách na poličce?"~ */ GOTO 12
  IF ~~ THEN REPLY #31623 /* ~"To je mi líto. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31624 /* ~"Ne, ale je to od tebe hezké, že se ptáš. Jednou jsem se shodila z poličky a roztříštila. Další věc, kterou jsem cítila bylo, že sedím na poličce a jsem slepená dohromady. Až Lothara omrzím, zbaví se mě."~ */
  IF ~~ THEN REPLY #31625 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #31626 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31627 /* ~"Co ty ostatní lebky na poličce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31628 /* ~"Co víš o těch ostatních lebkách na poličce?"~ */ GOTO 12
  IF ~~ THEN REPLY #31629 /* ~"Tak tedy hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #31630 /* ~Lebka na tebe zírá. "Tak je to správné. Jen se do toho vrtej." Na chvíli se odmlčela. "Jdi pryč."~ */
  IF ~~ THEN REPLY #31631 /* ~"Hej, počkej, já si jenom dělal srandu..."~ */ GOTO 15
  IF ~~ THEN REPLY #31632 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.0
  SAY #31633 /* ~"To je dlouhá historie, o které nesmí být nic řečeno, dokud nesplníš pro Lothara úkol."~ */
  IF ~~ THEN REPLY #31634 /* ~"Co by ti mohl udělat?"~ */ GOTO 13
  IF ~~ THEN REPLY #31635 /* ~"To mi řekni ty."~ */ GOTO 13
  IF ~~ THEN REPLY #31636 /* ~"Tak mi tedy pověz o sobě."~ */ GOTO 1
  IF ~~ THEN REPLY #31637 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31638 /* ~"Tak dobře. Co víš o těch ostatních lebkách na poličce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31639 /* ~"Tak dobře. Co víš o těch ostatních lebkách na poličce?"~ */ GOTO 12
  IF ~~ THEN REPLY #31640 /* ~"Tak to tě nebudu vyrušovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #31641 /* ~"Je to dlouhá historie, která má co do činění s noční čarodějnicí Ravel Puzzlewell. Chceš slyšet celou historii?"~ */
  IF ~~ THEN REPLY #31642 /* ~"Ano."~ */ GOTO 18
  IF ~~ THEN REPLY #31643 /* ~"Ani ne."~ */ GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 1.5 2.6 3.4 7.4 8.3 10.5 17.4
  SAY #31644 /* ~Kdyby mohla lebka pokrčit rameny, tahle by to udělala. "Nic, co už bych ti neřekla dřív."~ */
  IF ~~ THEN REPLY #31645 /* ~"Tak mi tedy pověz o sobě."~ */ GOTO 1
  IF ~~ THEN REPLY #31646 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 3
  IF ~~ THEN REPLY #31647 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 10.0 10.1
  SAY #31649 /* ~Lebka na tebe zírá. Máš pocit, jako by se otřásla. "Existuje neuvěřitelné množství bolesti, kterou můžeš zakusit i bez nervových zakončení. Ne všechna bolest je fyzická a ne všechny emoce jsou mentální. To jsou vjemy, o které se raději nedělím." Odmlčela se. "Interview je u konce. Sbohem."~ */
  IF ~~ THEN REPLY #31650 /* ~"Odpověz mi ještě na pár otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #31660 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #31661 /* ~"Oh, všechno možné... zkušenosti, které jsem prožil, politika Vnímavých - i když už trochu zastaralá - mé dojmy a názory na lidi, kteří tudy projdou a slova, slova, slova. Otázky jsou různé, což oceňuji víc, než si dokážeš představit. Pokud už na mě nemáš žádnou otázku, budu pokračovat ve svém klidu. Sbohem."~ */
  IF ~~ THEN REPLY #31662 /* ~"Ne, počkej, ještě pár otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #31663 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.0 13.0 14.0 16.0 21.1 22.0
  SAY #31664 /* ~Lebka má prázdný pohled a nic neříká.~ */
  IF ~~ THEN REPLY #31665 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY #31666 /* ~"Tak tedy pokračuj ve svém klidu. Sbohem."~ */
  IF ~~ THEN REPLY #31667 /* ~"Ne, počkej, ještě pár otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #31668 /* ~"Sbohem."~ */ EXIT
END

IF ~  Global("SSkull_Talk","AR0508",1)
~ THEN BEGIN 17 // from:
  SAY #31669 /* ~"Copak si od tebe neodpočinu?"~ */
  IF ~~ THEN REPLY #31670 /* ~"Pověz mi o sobě."~ */ GOTO 1
  IF ~~ THEN REPLY #31671 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #31672 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31673 /* ~"Co ty ostatní lebky na poličce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31674 /* ~"Co víš o těch ostatních lebkách na poličce?"~ */ GOTO 12
  IF ~~ THEN REPLY #31675 /* ~"Řekl bych, že můžeš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #31676 /* ~"Dobrá tedy. Pracoval jsem v Městské hale - centrum Vnímavých - v senzoriu. Ravel Puzzlewell, ať mocnosti proklejí její černou duši, tam přicházela, aby našla odpovědi na hádanky, které nalezla. Byla mistr v řešení hádanek - takových, ze kterých se pletla hlava i těm nejlepším, ale které síla její inteligence rozlouskala jako oříšky - ale stejně měla občas problémy, které vyžadovaly odpovědi odjinud. Slyšel jsem, že se snažila rozluštit tajemství samotného Sigilu."~ */
  IF ~~ THEN REPLY #31677 /* ~"Pokračuj."~ */ GOTO 19
  IF ~~ THEN REPLY #31678 /* ~"Už mě to nudí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #31679 /* ~"Byla příšerně odporná, ani nepoužívala svou magii na zakrytí svého vzhledu - slyšel jsem, že to někdy dělá, nebo lépe řečeno DĚLALA - a ten její fiendský vzhled odstrašoval spoustu potenciálních přívrženců. Stejně jsem se jí musel zeptat, co si přeje, a zda mě může naučit, co zná."~ */
  IF ~~ THEN REPLY #31680 /* ~"To mi připadá jako pořádná chyba."~ */ GOTO 20
  IF ~~ THEN REPLY #31681 /* ~"Myslím, že jsem pochopil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #31682 /* ~"Byla. Nabídla mi obchod, jelikož žila a dýchala hádankami. Pokud mi měla odpovědět na mou otázku, musím já odpovědět na jednu její. Pokud nedokážu já odpovědět na její, můj život bude patřit jí. Souhlasil jsem. Řekla mi, že chce rozluštit tajemství Klece, Sigilu a otevřít ho všem, kdo budou chtít vejít - mocnostem, fiendům, andělům, modronům a Slaadi, nemluvě o bytostech z Vnitřních sfér, které by chtěly vstoupit. Pro ni bylo nejdůležitější, aby se všichni dozvěděli, kdo rozluštil to tajemství, které nikdo nedokázal rozlousknout, že to byla ona, Ravel."~ */
  IF ~~ THEN REPLY #31683 /* ~"Co se stalo pak?"~ */ GOTO 21
  IF ~~ THEN REPLY #31684 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31685 /* ~"Položila mi svou otázku. Nedokázal jsem na ni odpovědět, i když mě ujišťovala, že odpověď je jasná jako nos na její tváři. Ostatní Vnímaví mě našli další ráno v senzoriu vřeštícího. Prosil jsem, ať mě zabijí, a oni poslechli. Nikdo z nich ani nenavrhl, že bych se měl podělit o nový zážitek, tak hrozné to bylo. A... teď jsem tady. Momentálně si musím odpočinout."~ */
  IF ~  Global("Sensate_Skull_Memory","GLOBAL",0)
~ THEN REPLY #31686 /* ~"Jaká byla otázka?"~ */ DO ~SetGlobal("Sensate_Skull_Memory","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #31348 /* ~Oceán-před-Bouří, lebka Vnímavého v Lotharově sbírce lebek, mi řekla příběh o Ravel Puzzlewell a nechvalně proslulém plánu té noční čarodějnice.~ */ GOTO 22
  IF ~~ THEN REPLY #31687 /* ~

"Odpovíš mi ještě na pár otázek?"~ */ JOURNAL #31348 /* ~Oceán-před-Bouří, lebka Vnímavého v Lotharově sbírce lebek, mi řekla příběh o Ravel Puzzlewell a nechvalně proslulém plánu té noční čarodějnice.~ */ GOTO 15
  IF ~~ THEN REPLY #31688 /* ~"Dobrá tedy. Díky za příběh. Sbohem."~ */ JOURNAL #31348 /* ~Oceán-před-Bouří, lebka Vnímavého v Lotharově sbírce lebek, mi řekla příběh o Ravel Puzzlewell a nechvalně proslulém plánu té noční čarodějnice.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31689 /* ~"Bylo to: Jak můžeš změnit charakter člověka? Hodně jsem přemýšlel a odpověděl 'Láskou'. Řekla mi, že lidé milují sami sebe příliš na to, aby se mohli změnit něčím tak jednoduchým, jako je láska. A potom... ona... Musím si odpočinout."
Ve své mysli vidíš postavu s křivým nosem a ebenovou kůží, která se ti pokládá stejnou otázku... ale nemůžeš si vzpomenout na svou odpověď.~ */
  IF ~~ THEN REPLY #31690 /* ~"Odpovíš mi ještě na pár otázek?"~ */ GOTO 15
  IF ~~ THEN REPLY #31691 /* ~"Máš mé sympatie. Sbohem."~ */ EXIT
END
