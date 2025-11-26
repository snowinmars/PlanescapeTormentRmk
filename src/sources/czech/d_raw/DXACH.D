// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXACH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DXACH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #500 /* ~Vidíš mrtvolu muže s číslem "331" vyrytým do lebky. Jeho oči i rty jsou sešité a v jeho hrdle je rozestupující se otvor. Vypadá *špatně*.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #502 /* ~"Tak... viděl jsi, že by se tu stalo něco zajímavého?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #503 /* ~"Tak... viděl jsi, že by se tu stalo něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1354 /* ~"Vím, že nejsi zombie. Nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1355 /* ~Použij svoji schopnost Kosti-vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #1357 /* ~"Bylo to skvělý s tebou pokecat. Sbohem."~ */ GOTO 1
  IF ~~ THEN REPLY #1358 /* ~Nechej mrtvolu na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.4
  SAY #501 /* ~Mrtvola civí před sebe prázdným pohledem. ~ */
  IF ~~ THEN REPLY #505 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #504 /* ~"Kd-kdo..." Zombie se vrací jeho mrzutý hlas a vypadá vylekaně. "Kdo je tu?! Odpověz mi!"~ */
  IF ~~ THEN REPLY #507 /* ~"Nemůžeš mne vidět?"~ */ GOTO 3
  IF ~  CheckStatGT(Player1,16,INT)
CheckStatLT(Player1,17,CHR)
~ THEN REPLY #508 /* ~Improvizuj: "To jsem já. Nepoznáváš můj hlas?"~ */ GOTO 30
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #63307 /* ~Improvizuj: "To jsem já. Nepoznáváš můj hlas?"~ */ GOTO 30
  IF ~~ THEN REPLY #519 /* ~"Kdo jsi?"~ */ GOTO 31
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #506 /* ~"Xachariáš?"~ */ GOTO 4
  IF ~~ THEN REPLY #520 /* ~"Tenhle den bude pro tebe bez odpovědí mrtvolo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #509 /* ~"Jsem slepý, ve smrti jako jsem byl i v životě... a teď mi odpověz. Kdo jsi?"~ */
  IF ~  CheckStatGT(Player1,16,INT)
CheckStatLT(Player1,17,CHR)
~ THEN REPLY #510 /* ~Improvizuj: "To jsem já. Nepoznáváš můj hlas?"~ */ GOTO 30
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #63308 /* ~Improvizuj: "To jsem já. Nepoznáváš můj hlas?"~ */ GOTO 30
  IF ~~ THEN REPLY #511 /* ~"Kdo jsi?"~ */ GOTO 31
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #521 /* ~"Xachariáš?"~ */ GOTO 4
  IF ~~ THEN REPLY #522 /* ~"Tenhle den bude pro tebe bez odpovědí mrtvolo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 3.3 30.0 31.0
  SAY #512 /* ~"Kdo... jsi!" Zombie vypadá šokovaně, ale potěšeně. "U vočí Paní Bolesti..." jeho tón se změnil ve zvědavost. "Ty nejseš *mrtvej* kámo?"~ */
  IF ~~ THEN REPLY #515 /* ~"Kdo jsi?"~ */ GOTO 5
  IF ~~ THEN REPLY #516 /* ~"Co tu děláš?"~ */ GOTO 47
  IF ~~ THEN REPLY #517 /* ~"Co je tohle za místo?"~ */ GOTO 6
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #518 /* ~"Nemůžu se dlouho vybavovat. Musím už jít. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1394 /* ~"Nemůžu mluvit dlouho. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #514 /* ~"Bylo to těžký překvapení shodit tu starou špinavou pokrývku a uvidět za ní starýho blázna Xachariáše? To jsem já, kamaráde. Požehnáni buďte všechny Mocnosti, už jsem si myslel, že tě nikdy neuvidím... taky ses hodně změnil, jak můžou moje uši slyšet... už jsi zase dělal nějaká nešťastná rozhodnutí?" Xachariáš zavtipkoval. "Seš taky mrtvej?"~ */
  IF ~~ THEN REPLY #685 /* ~"Je to dlouhý příběh... ale ne, nejsem mrtvý."~ */ GOTO 46
  IF ~~ THEN REPLY #686 /* ~"Co tu děláš?"~ */ GOTO 47
  IF ~~ THEN REPLY #687 /* ~"Co je tohle za místo?"~ */ GOTO 6
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #688 /* ~"Už nemám čas se s tebou vybavovat, Xachariáši. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1393 /* ~"Už nemám víc času s tebou mluvit, Xachariáši. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 5.2
  SAY #513 /* ~"V Márnici, kámo. Ty to nevíš?"~ */
  IF ~~ THEN REPLY #523 /* ~"Co tě přivedlo do tohoto postavení?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,12,INT)
~ THEN REPLY #524 /* ~"Co mi můžeš říct o Márnici?"~ */ DO ~SetGlobal("Vaxis_Exposed","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #525 /* ~"Co mi můžeš říct o mém předchozím životě?"~ */ GOTO 16
  IF ~~ THEN REPLY #526 /* ~"Co mi můžeš říct o mých předchozích druzích?"~ */ GOTO 23
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #527 /* ~"Musím jít. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1392 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
  SAY #528 /* ~"Vždy?"~ */
  IF ~  Global("Xachariah_Ring","GLOBAL",1)
~ THEN REPLY #63484 /* ~"Chci ten předmět zpět, Xachariáši..."~ */ GOTO 34
  IF ~~ THEN REPLY #637 /* ~"Jak ses dostal do tohohle postavení?"~ */ GOTO 8
  IF ~~ THEN REPLY #638 /* ~"Co mi můžeš říct o Márnici?"~ */ GOTO 9
  IF ~~ THEN REPLY #639 /* ~"Co mi můžeš říct o mém předchozím životě?"~ */ GOTO 16
  IF ~~ THEN REPLY #640 /* ~"Co mi můžeš říct o mých dřívějších druzích?"~ */ GOTO 23
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1391 /* ~"Musím odejít. Sbohem, Xachariáši."~ */ EXIT
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #641 /* ~"Musím jít. Sbohem, Xachariáši."~ */ GOTO 41
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.1
  SAY #529 /* ~Jeho hlas zahanbeně poklesl. "Je velmi těžký jít ve tvejch stopách, kámo, viděl jsem spoustu hroznejch věcí. Dal jsem si jeden drink a pak jsem si dal další, začal jsem chlastat. Pak jednou, když jsem byl vožralej, upsal jsem svý tělo Spalovačům. Osud se rozhod postavit proti mně, když jsem byl na dně a já krátce na to umřel."~ */
  IF ~~ THEN REPLY #531 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #545 /* ~"Už jsem slyšel dost. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1390 /* ~"Už jsem slyšel dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.2
  SAY #533 /* ~"Místo bez života kde pobíhaj živí mrtví... něco tu není správně, i když..."~ */
  IF ~~ THEN REPLY #534 /* ~"Jako co?"~ */ GOTO 10
  IF ~~ THEN REPLY #536 /* ~"Měl bych pro tebe nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #537 /* ~"Už nemám víc času, povídat si s tebou. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1389 /* ~"Už nemám víc času s tebou mluvit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #535 /* ~"Řeknu ti tu tajemství jedný věci: Je tu zombie, kterej si hraje na zombie, ale nejni. Moc jsem se nestaral o důvod, proč to dělá, ale je to divný."~ */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY #538 /* ~"Ještě něco jiného?"~ */ GOTO 11
  IF ~~ THEN REPLY #539 /* ~"Která zombie to je?"~ */ GOTO 12
  IF ~~ THEN REPLY #540 /* ~"Zajímavé. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #546 /* ~"Už nemám víc času, povídat si s tebou. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1388 /* ~"Už nemám víc času s tebou mluvit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #541 /* ~"Nebo jiná věc, ten starej githzerai... jo ten, kterej má na starosti preparační místnost... Dhall. Zachránil tě před kremací už aspoň dvacetkrát. Můžeš bejt šťastnej, že máš takovýho kámoše."~ */
  IF ~  CheckStatGT(Player1,17,INT)
~ THEN REPLY #542 /* ~"Co přesně Dhall udělal, že mě zachránil?"~ */ GOTO 13
  IF ~~ THEN REPLY #543 /* ~"Já vím. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #544 /* ~"Už nemám víc času, povídat si s tebou. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1387 /* ~"Už nemám víc času s tebou mluvit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #547 /* ~"Co mi mé oči dovolili uvidět "ho", nemůžu si to dát porád do kupy. Tady sice funguje, jako vořezávač mrtvol: ale jeho hlas na zombie je vopravdu divnej... nekomunikuje stejně jako ostatní."~ */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY #548 /* ~"Zpozoroval si ještě něco jiného divného tady v Márnici?"~ */ GOTO 11
  IF ~~ THEN REPLY #554 /* ~"Hmmm. Zajímavé. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #549 /* ~"Podívám se po tom zombie. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1386 /* ~"Půjdu se po tom zombie podívat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #550 /* ~"Vodkládal tvou kremaci tak dlouho, dokud jsi nevstal z tý kamenné desky. Nevím proč, opravdu."~ */
  IF ~~ THEN REPLY #552 /* ~"Zajímavé. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #553 /* ~"Musím jít. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1385 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #555 /* ~"Myslel si, že je to nezbytně nutný k zabránění... toho... já... já si teď, sakra, nemůžu vzpomenout, proč to bylo nutný."~ */
  IF ~~ THEN REPLY #557 /* ~"Hmmm. Podezřelé... Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #556 /* ~"Aha. Rád bych věděl, jestli to *bylo* nutné. Měl bych si s Dhallem o tom popovídat... Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1384 /* ~"Aha. Rád bych věděl, jestli to *bylo* nutné. Dhall a já bychom si měli o tom promluvit... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #558 /* ~Jeho hlas se zahanbeně snížil. "Když se naše cesty rozdělily, kamaráde, nezbylo ve mně moc života. Je to těžký, následovat tvý kroky, zažil jsem moc hroznejch věcí. Začal jsem chlastat a začal být na pití závislej. A když sem byl jednou vožralej, upsal jsem svý tělo Spalovačům. Osud se rozhod postavit proti mně, když jsem byl na dně a já krátce na to umřel."~ */
  IF ~~ THEN REPLY #559 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #560 /* ~"Musím jít. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1383 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.2 7.3
  SAY #561 /* ~"Proč? Zapomněl jsi sám na sebe?"~ */
  IF ~~ THEN REPLY #562 /* ~"Řekněme. Jak se říká... ano."~ */ GOTO 17
  IF ~~ THEN REPLY #563 /* ~"Ne... chtěl jsem jenom vidět, jestli jsi opravdu byl tím, co říkáš."~ */ GOTO 20
  IF ~~ THEN REPLY #564 /* ~"Nevadí. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #565 /* ~"Musím jít. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1382 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 21.0 22.0
  SAY #566 /* ~"Dobře... byl jsi vopravdu zvláštní, vždycky podezíravavej a dával sis porád na něco pozor... vypořádat se s někým jako jsi to dělal ty se svými nepřáteli po celý život. A nedá se popřít, že kdo si s tebou něco začal, skončil na černejch stránkách Knihy mrtvejch."~ */
  IF ~~ THEN REPLY #569 /* ~"Ještě něco jiného? Něco určitého..."~ */ GOTO 18
  IF ~~ THEN REPLY #570 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #571 /* ~"Musím jít. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1381 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #567 /* ~"Měl bys bejt taky proklatě bezcitnej... jako když jsi podepsal tu smlouvu nebo opustil tu kňourající žábu v Avernusu. Stejně jsme měli málo času. Ani jeden z nás nikdy nezvážil možnost odtamtud včas zdrhnout, synu."~ */
  IF ~~ THEN REPLY #572 /* ~"A... aha. Co dalšího? Cokoliv co mi řekneš mi může pomoci."~ */ GOTO 19
  IF ~~ THEN REPLY #573 /* ~"Nevadí. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #574 /* ~"Musím jít. Sbohem."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1380 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #568 /* ~"A teď k jádru věci, ty vypadáš, jakoby se ti stalo to, žes zabral válečná území; všecko pro tebe bylo jako bitva a tys byl ten největší bezcitnej bastard jakýho jsem kdy potkal. Na ničem jiným ti nezáleželo krom vyřešení té věci. Chudák Deionarra se svojím brekotem a prošením, abys už nikoho neovládal, githové tě varovali kvůli tvýho válečnictví a chudák Xachariáš se pokoušel vytrvat, když jsme dorazili do Sfér. Tys byl houževnatej jako kdybys nemoh umřít, ale my jsme byli jen lidi. Teď si myslim, že jsme všichni v knize mrtvejch... nebo jsme v ní, ale nejsme v ní, takže mluv."~ */
  IF ~  GlobalLT("Xachariah_Ring","GLOBAL",2)
~ THEN REPLY #63234 /* ~"Něco jiného?"~ */ GOTO 32
  IF ~~ THEN REPLY #576 /* ~"Deionarra?"~ */ GOTO 26
  IF ~~ THEN REPLY #577 /* ~"'Githové?' Co tím máš na mysli?"~ */ GOTO 24
  IF ~~ THEN REPLY #578 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #579 /* ~"Aha... Musím teď už jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1379 /* ~"Aha... teď musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #580 /* ~"Dobrý, ale když ti řeknu, že ti to můžu dokázat... teď podívej, už si moc na to nevzpomínám takže: takhle... vzpomínáš si když jsme táhli ten vozejk z Avernusu a běželi přímo prostředkem tý tlupy abishaiů v tý červí díře?"~ */
  IF ~~ THEN REPLY #581 /* ~Lež: "Ano."~ */ GOTO 21
  IF ~~ THEN REPLY #582 /* ~"Ne."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #583 /* ~"Fajn, jsem rád, že si to aspoň jeden z nás pamatuje, protože já si na to, u Balora, nemůžu vzpomenout. Kdo jsi, kámo, a co čekáš od toho lapání vzpomínek od mrtvejch mužů?"~ */
  IF ~~ THEN REPLY #584 /* ~"Doufám, že se mi vrátí paměť. Vážně jsem zapomněl, kdo jsem, Xachariáši, a věřím, že mi pomůžeš vzpomenout si. Co mi můžeš říct o mém předchozím životě?"~ */ GOTO 17
  IF ~~ THEN REPLY #586 /* ~"Zapomeň na to. Měl bych nějaké otázky."~ */ EXIT
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #587 /* ~"No nic... musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1378 /* ~"Nic... Musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #588 /* ~"Hmmm. No, možná se ta událost nestala přesně tak, jak sem si vzpomněl. A jak bylo tohle: pamatuješ si jak se Deionarra téměř zapsala do Knihy mrtvejch, když se tě pokoušela zastavit před vkročením do Curstu?"~ */
  IF ~~ THEN REPLY #590 /* ~"Ne, ne ve skutečnosti... ale to je dobře; věřím, že jsi mne znal. Takže můžeš mi něco říci o mém předchozím životě?"~ */ GOTO 17
  IF ~~ THEN REPLY #591 /* ~"Nevadí... Měl bych nějaké další otázky."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #592 /* ~"Musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1377 /* ~"Musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.3 7.4
  SAY #589 /* ~"My jsme teda byli skvělá sebranka... napůl mrtvý muž, který nemoh sám sebe dostat do Knihy mrtvejch, i když se o to pokoušel -- tak ujetej, že by ho ani Mocnosti smrti nechtěli přijmout -- bědující advokátova dcera, githzeraiský vyhnanec, lítající lebka s jazykem šakala a napůl-tupý slepý lukostřelec jako jsem já."~ */
  IF ~~ THEN REPLY #593 /* ~"Githů?"~ */ GOTO 24
  IF ~~ THEN REPLY #594 /* ~"Naříkající advokátova dcera?"~ */ GOTO 26
  IF ~~ THEN REPLY #595 /* ~"Lítající lebka?"~ */ GOTO 28
  IF ~~ THEN REPLY #596 /* ~"Ty jsi byl slepý lukostřelec?"~ */ GOTO 49
  IF ~~ THEN REPLY #597 /* ~"Nevíš, co se stalo mému deníku?"~ */ GOTO 29
  IF ~~ THEN REPLY #598 /* ~"Nevadí. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #599 /* ~"Musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1376 /* ~"Musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2 23.0 27.0
  SAY #600 /* ~"'Děsivě-vypadající' githové... nepřátelští a tiší, ostatně to jsou všici z nich. Ani trošku githům nevěř, aspoň já jim nevěřím. Koukej, kamaráde, githům jde jen o dvě věci: nedostat se do votroctví a zabíjet illithidy. Všecko vostatní je pro ně nepodstatný a voni nepřijmou nikoho z nás, a to ani tebe ne."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #601 /* ~"Proč tomu tak bylo?"~ */ GOTO 25
  IF ~~ THEN REPLY #602 /* ~"O někom z mých druhů..."~ */ GOTO 27
  IF ~~ THEN REPLY #603 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #604 /* ~"Hmmm. Zajímavé. Díky, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1375 /* ~"Hmmm. Zajímavé. Díky, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0
  SAY #605 /* ~"Jedno z tajemství, na který sem nepřišel, kámo. Snad ty budeš vědět?"~ */
  IF ~~ THEN REPLY #606 /* ~"Nemůžu si vzpomenout. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #607 /* ~"Možná na to přijdu. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1374 /* ~"Možná bude lepší to zjistit. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.1 23.1 27.1
  SAY #608 /* ~"Ta žába-rádoby-vojanda přísahala, že s tebou půjde do Baatoru a nazpátek, a, u všech Mocností, byla tak posedlá strachem, aby o tebe nepřišla, že to udělala. Dávala si malý pozor na mne nebo na githy a bylo to fakt málo. Byla do tebe hrozně zamilovaná, důkazem byla její šílená oddanost tobě. Nerozumím tomu, co ti ty ženský řekli, zjizvenče, ale pravda je, že to v jejich krvi pěkně vře. Byla to totiž nějaká bohatá šťabajzna z Úřednický čtvrti a ty jsi od ní něco potřeboval a jediná cena byla ta, že šla s tebou."~ */
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #609 /* ~"Co jsem od ní chtěl?"~ */ GOTO 25
  IF ~~ THEN REPLY #610 /* ~"Něco o mých ostatních druzích..."~ */ GOTO 27
  IF ~~ THEN REPLY #614 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #611 /* ~"Už sem slyšel dost. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1373 /* ~"Už jsem slyšel dost. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.1 28.0 29.0 33.1 49.0
  SAY #612 /* ~"Jo, kdo z nich?"~ */
  IF ~~ THEN REPLY #613 /* ~"Githů."~ */ GOTO 24
  IF ~~ THEN REPLY #615 /* ~"Naříkající advokátova dcera.'"~ */ GOTO 26
  IF ~~ THEN REPLY #616 /* ~"Létající lebka."~ */ GOTO 28
  IF ~~ THEN REPLY #617 /* ~"Ty... jsi byl... kamaráde lukostřelec?"~ */ GOTO 49
  IF ~~ THEN REPLY #618 /* ~"Nevadí. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #619 /* ~"Už jsem slyšel dost. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1372 /* ~"Už jsem slyšel dost. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.2 27.2
  SAY #620 /* ~"Ta oplzlá ukecaná lebka toužila po mlácení a modřinách, tak to bylo! Vždycky byla čilá a dovedla mi fakt spravit náladu!"~ */
  IF ~~ THEN REPLY #622 /* ~"O někom z mých dalších druhů..."~ */ GOTO 27
  IF ~~ THEN REPLY #623 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #624 /* ~"Už jsem slyšel dost. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  GlobalGT("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #1371 /* ~"Už jsem slyšel dost. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.4
  SAY #625 /* ~"Ta kniha cárů, co jsi sešil dohromady, měla více stránek než já počet let ve svým životě?! Tomu říkám opravdový štěstí, jestli jsi ztratil tu ghúlskou knihu! Pořád jsi do ní něco čmáral a ta věc děsně smrděla. Vobčas to vypadalo, jako by ses bál, že ti ji někdo každou chvíli čmajzne... psal jsi do ní, dokud se ti nezačala loupat kůže na prstech ruky a rád bych věděl, jestli jsi z toho psaní nezačal magořit. Někdy jsme se na pár dní někde zastavili, když jsi psal. Nenáviděl jsem tu ďábelskou knihu. Vypadalo to, že tě ta věc držela u srdce a bral jsi ji hodně vážně. Naposledy jsem ji viděl u tebe, kámo. Pokud jsi ji někde nechal, nemám vůbec tuchu, kde po Sférách by se mohla povalovat."~ */
  IF ~~ THEN REPLY #626 /* ~"O těch mých druzích..."~ */ GOTO 27
  IF ~~ THEN REPLY #627 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #628 /* ~"Díky za informace. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1370 /* ~"Díky za informaci. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.1 2.2 3.0 3.1
  SAY #629 /* ~"To mi zní povědomě... jestli seš ten, kdo si myslím, že seš, pak tedy... kdo..." Zombie na chvíli utichl. "Kdo jsem já?"~ */
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #631 /* ~"Xachariáš?"~ */ GOTO 4
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #632 /* ~"Tvé jméno neznám. Můžu se vrátit jestli ho najdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.3 3.2
  SAY #630 /* ~"Já..." Zombie utichne. "...mé jméno... mi uteklo. Já... si nemůžu vzpomenout, kdo jsem."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #634 /* ~"Xachariáš?"~ */ GOTO 4
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #635 /* ~"Tvé jméno neznám. Můžu se vrátit jestli ho najdu. Sbohem."~ */ EXIT
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #636 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.0
  SAY #642 /* ~"Něco jsi ztratil, když jsi nám zdrhl, kámo... Dak'kona si nechal bez pána a lebku bez přítele. A mě? Něco jsi zabodnul hluboko do mne a nikdy to nevyšlo ven, dokud jsem byl naživu. Což mi způsobilo to, že mi v tepnách kolovala chladná krev, a že ta věc mě tlačí na prsou jako hrouda olova."~ */
  IF ~~ THEN REPLY #645 /* ~"Co je to?"~ */ DO ~SetGlobal("Xachariah_Ring","GLOBAL",1)
~ GOTO 33
  IF ~~ THEN REPLY #646 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #648 /* ~"Musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1369 /* ~"Musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #643 /* ~"Já... já nevím. Ale nějak mě to změnilo. Změnilo mě to uvnitř. Už jsem umíral, když jsi to do mne dal, takže jsem se o to v tu chvíli nezajímal."~ */
  IF ~~ THEN REPLY #649 /* ~"Můžu to dostat zpět?"~ */ GOTO 34
  IF ~~ THEN REPLY #650 /* ~"O mých ostatních druzích..."~ */ GOTO 27
  IF ~~ THEN REPLY #651 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #652 /* ~"Musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1368 /* ~"Musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 7.0 33.0
  SAY #644 /* ~"Je to někde pěkně hluboko, ale mám nápad, jak se k tomu dostat. Bez skalpelu a mého navigování ovšem nebudeš schopnej dostat to ven. Máš skalpel?"~ */
  IF ~  PartyHasItem("Scalpel")
~ THEN REPLY #647 /* ~"Ano."~ */ GOTO 36
  IF ~  !PartyHasItem("Scalpel")
~ THEN REPLY #653 /* ~"Ne... ale měl bych být schopen strhat ty stehy."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from:
  SAY #654 /* ~"Dobře, vrať se, kdyby ti překážel a pak uvidíme jak ho dostat ven."~ */
  IF ~~ THEN REPLY #655 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #656 /* ~"Podívám se po něm. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0 34.1
  SAY #657 /* ~"Tak mě tedy trochu otevři rukama v oblasti hrudníku a podívej se po tom."~ */
  IF ~~ THEN REPLY #658 /* ~Udělej to.~ */ GOTO 37
  IF ~~ THEN REPLY #659 /* ~"Nevadí, Xachariáši... Mimoto bych měl ještě nějaký otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #660 /* ~"Už nemůžu, musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1367 /* ~"Teď nemůžu, musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #661 /* ~"Trošku více doleva... a trošku více..." Tvé ruce se skoro dotýkají té věci.~ */
  IF ~~ THEN REPLY #663 /* ~Vytáhni to ven.~ */ DO ~GiveItemCreate("XacLiver",Protagonist,0,0,0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #662 /* ~Vytáhl jsi játra ze zombie. "U vočí Paní bolesti! Omlouvám se, kámo... Myslel jsem, že Spalovači z nás vytáhli všechny vorgány ještě předtím, než nás vyškrtli z Knihy mrtvejch. Tak to zkusíme znovu. Možná je to víc napravo."~ */
  IF ~~ THEN REPLY #664 /* ~Udělej to znovu.~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #665 /* ~"Jdi tamhle... teď trošku doprava a zpátky... ještě trošičku..." Cítíš něco tvrdého a studeného, trochu většího než jsi očekával. "Myslím, že to mám. Vytáhnu to ven."~ */
  IF ~~ THEN REPLY #666 /* ~Vytáhni to ven.~ */ DO ~SetGlobal("Xachariah_Ring","GLOBAL",2)
GiveItemCreate("XacHeart",Protagonist,1,0,0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #667 /* ~Držíš zčernalý objekt velikosti pěsti, který je na svou velikost opravdu hodně těžký. "Tak to je vono. Jooo. Je to větší než jsem si myslel. Je to... co to je? Vypadá to jako... srdce."~ */
  IF ~~ THEN REPLY #668 /* ~"Ano, to si myslím. Díky, Xachariáši. Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #669 /* ~"Jo, to vypadá. Musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1366 /* ~"To vypadá. Teď musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
  SAY #670 /* ~"Předtím než odejdeš: Potřebuju, abys mi udělal malou laskavost, kámo."~ */
  IF ~~ THEN REPLY #672 /* ~"Oč jde?"~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 42
  IF ~~ THEN REPLY #671 /* ~"Už mám plné zuby těch laskavostí a úkolů, které pořád pro někoho dělám... Musím jít, Xachariáši. Sbohem."~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 45
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #673 /* ~Jeho hlas zahanbeně poklesl. "Udělal jsem pár chyb, některý zatraceně špatný, to je jasný, ale tou největší chybou je, že jsem podepsal spalovačskou smlouvu. Kdybych nebyl tak vožralej, nikdy bych takovou hovadinu neudělal. Moc toho lituju a doufal jsem, že bys to moh dát do pořádku."~ */
  IF ~~ THEN REPLY #675 /* ~"Jak?"~ */ GOTO 43
  IF ~~ THEN REPLY #676 /* ~"Už mám plné zuby těch laskavostí a úkolů, které pořád pro někoho dělám... Musím jít, Xachariáši. Sbohem."~ */ GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #677 /* ~"Když si spočítám, že todle tělo už tolik vytrpělo... a každej den je pro mne tak dlouhej. Možná bys mě měl bodnout ještě jednou, kámo... za starý dobrý časy? Myšlenka, že bych strávil dalších pár let tady v Márnici s těmadle vobživlákama, mi působí mrazení v zádech. Byl bys tý lásky a poslal mě zpátky do Knihy mrtvejch kam patřím?"~ */
  IF ~~ THEN REPLY #679 /* ~"Jestli je to tvé přání..."~ */ DO ~Kill(Myself)
~ GOTO 44
  IF ~~ THEN REPLY #680 /* ~"Xachariáši, já tě nezabiju. Znovu. Sbohem."~ */ GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #678 /* ~Bodnul jsi ho a Xachariáš padá k zemi s těžkým žuchnutím. Slyšíš slabé zasyčení a vidíš, jak z něj vyprchává život, nakonec se v místnosti rozhostí ticho.~ */
  IF ~~ THEN REPLY #681 /* ~"Odpočívej v pokoji, Xachariáši."~ */ DO ~SetGlobal("Xachariah_Gutted","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1 43.1
  SAY #682 /* ~"Jo, dobře, na to nehleď. Doufám, že už mne na sebe nikdy nepoužiješ."~ */
  IF ~~ THEN REPLY #684 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 5.0
  SAY #683 /* ~"Dobře, kámo, domnívám se, že být mrtvý není nic, čeho by ses měl obávat, nicméně jak můžeš se mnou takhle mluvit? Tvůj hlas je ostrý jako nůž..."~ */
  IF ~~ THEN REPLY #689 /* ~"Co tu děláš?"~ */ GOTO 47
  IF ~~ THEN REPLY #690 /* ~"Měl bych nějaké otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #691 /* ~"Musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1365 /* ~"Musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 4.1 5.1 46.0
  SAY #692 /* ~"Jsem pevná ruka na většině míst bez života. Už aby to bylo, abych mohl projít za Nekonečnou hranici a nazval Sféru svým domovem, protože jsem promrhal celej svůj život a teď jsem tady."~ */
  IF ~~ THEN REPLY #693 /* ~"Jaký to je být zombie?"~ */ GOTO 48
  IF ~~ THEN REPLY #695 /* ~"Měl bych nějaké otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #696 /* ~"Musím jít. Sbohem, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1364 /* ~"Musím jít. Sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #694 /* ~"Je to čestná práce..." Vytahuješ stehy z Xachariášových úst a na jeho rtech se objevil úsměv. "...Budu si teď o ústa více pečovat."~ */
  IF ~~ THEN REPLY #697 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #698 /* ~"Pak tedy sbohem, Xachariáši."~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #633 /* ~"Pak tedy sbohem, Xachariáši."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.3 27.3
  SAY #63625 /* ~"Je to tak. Opravdu jsi na to všechno zapomněl, opravdu? Víš, kamaráde, všichni muži vidí i něčím jiným než jen očima... někteří lépe než jiní. Já cítím srdce svých soků - *tvých* soků - a mé šípy vždy přinášejí pravdu. Ach, to byly časy..."~ */
  IF ~~ THEN REPLY #63626 /* ~"Ještě o mých dalších společnících..."~ */ GOTO 27
  IF ~~ THEN REPLY #63627 /* ~"Měl bych ještě pár dalších otázeček..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #63628 /* ~"Hmmm. Zajímavé. Díky moc, Xachariáši."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #63629 /* ~"Hmmm. Zajímavé. Díky moc, Xachariáši."~ */ EXIT
END
