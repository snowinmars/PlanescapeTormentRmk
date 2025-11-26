// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLAZLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLAZLO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3026 /* ~Vidíš mladého chlapce s bledou, nažloutlou kůží. Jeho oblečení by potřebovalo vyprat a na některých místech také zašít. Právě se stará o pec.~ */
  IF ~~ THEN REPLY #3027 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36385 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36348 /* ~Otočil se a napolo se usmál, než se vrátil ke své práci. "Zdar... potřebuješ pomoc?"~ */
  IF ~~ THEN REPLY #36386 /* ~"Ano, Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36387 /* ~"Ne, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.3 7.2 8.2 9.2 10.1 11.2 12.1 13.1 14.1 15.1 16.1 18.1 19.0 22.0 24.0 25.2 26.1 27.2 28.1 29.1 30.1 32.1 33.0 34.0
  SAY #36349 /* ~"Jo, jo, rád ti pomůžu, jestli budu moct..." Chlapec vypadá vděčně, že se nemusí alespoň na chvíli točit kolem pece. "Tak se ptej a já ti zkusím odpovědět."~ */
  IF ~~ THEN REPLY #36388 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~~ THEN REPLY #36389 /* ~"Můžeš mi říct o téhle čtvrti?"~ */ GOTO 10
  IF ~~ THEN REPLY #36391 /* ~"Co mi můžeš říct o Sigilu?"~ */ GOTO 20
  IF ~~ THEN REPLY #36392 /* ~"Proč tady mají všichni takovou nažloutlou kůži?"~ */ GOTO 23
  IF ~~ THEN REPLY #36393 /* ~"Je tady v okolí něco zajímavého?"~ */ GOTO 25
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36394 /* ~"Ztratil jsem lebku... nevíš o někom, kdo by v tom mohl mít prsty?"~ */ GOTO 31
  IF ~~ THEN REPLY #36395 /* ~"Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36350 /* ~"Tohle místo?" Rozhlédl se kolem. "Tohle je Trh pod širým nebem. Zákazníci a obchodníci tady přes den posedávají a kšeftujou. Už jsem tu nějakej čásek, dělám pro tatíka." Zahleděl se do dálky. "Jednou budu dělat místo něj u stánku."~ */
  IF ~~ THEN REPLY #36396 /* ~"Co tady děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #36398 /* ~"Mám nějaké otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36351 /* ~Pyšně ukázal na pec. "Pec, používá se na..." Pokrčil rameny. "Ani vlastně nevím na co, ale tatík tvrdí, že je důležitý, aby pořád hořela." Utřel si z čela pot a rozhlédl se kolem.~ */
  IF ~~ THEN REPLY #36399 /* ~"Tvůj otec je jeden z obchodníků?"~ */ GOTO 5
  IF ~~ THEN REPLY #36400 /* ~"Aha. Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #36401 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36352 /* ~Přikývnul. "Menuje se Anze, támhle má stánek." Ukázal na stánek po pravé straně pece. "Pokud nemá, co potřebuješ, ukážu ti, kde to najdeš."~ */
  IF ~~ THEN REPLY #36402 /* ~"Jaké zboží tady je?"~ */ GOTO 6
  IF ~~ THEN REPLY #61999 /* ~"Aha. Mám ještě další otázky...~ */ GOTO 2
  IF ~~ THEN REPLY #62001 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36353 /* ~Chvíli přemýšlí. "Je tu spousta věcí, jídlo, pití, magie, zbraně... chceš nakoupit nějaký zásoby?"~ */
  IF ~~ THEN REPLY #36411 /* ~"Kde můžu koupit nějaké magické předměty?"~ */ GOTO 7
  IF ~~ THEN REPLY #36412 /* ~"Kde si můžu koupit nějaké zbraně?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36413 /* ~"Kde můžu koupit polštář do rakve?"~ */ GOTO 9
  IF ~~ THEN REPLY #36414 /* ~"Mám pro tebe ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36415 /* ~" Už musím jít, sbohem." ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0 9.0
  SAY #36354 /* ~"Jé, magie by byla." Rozhlédl se a pak ukázal na vzdálený stánek. "Támdle Aalek by měl mít něco z toho, co potřebuješ."~ */
  IF ~~ THEN REPLY #36416 /* ~"Kde si můžu koupit nějaké zbraně?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36417 /* ~"Kde můžu koupit polštář do rakve?"~ */ GOTO 9
  IF ~~ THEN REPLY #36418 /* ~"Mám pro tebe ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36419 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0 9.1
  SAY #36355 /* ~"S tím ti píchne tatík, má stánek támdle." Ukázal na stánek napravo od pece. "Jmenuje se Anze."~ */
  IF ~~ THEN REPLY #36420 /* ~"Kde můžu koupit nějaké magické předměty?"~ */ GOTO 7
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36421 /* ~"Kde můžu koupit polštář do rakve?"~ */ GOTO 9
  IF ~~ THEN REPLY #36422 /* ~"Mám pro tebe ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36423 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.1 8.1
  SAY #36356 /* ~Divně se na tebe podíval, a pak pokrčil rameny. "To si potřebuješ promluvit s Hamrysem. Má kšeft jihovýchodně od trhu."~ */
  IF ~~ THEN REPLY #36424 /* ~"Kde můžu koupit magické předměty?"~ */ GOTO 7
  IF ~~ THEN REPLY #36425 /* ~"Kde můžu koupit zbraně?"~ */ GOTO 8
  IF ~~ THEN REPLY #36426 /* ~"Mám pro tebe ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36427 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #36357 /* ~Přikývl. "No, jo, todle je Dolní Čtvrť. Žijou tu obyčejný lidi, jako já a tatík." Oči se mu rozšířily, vypadá vzrušeně. "Víš, proč se tomu tady říká Dolní Čtvrť?"~ */
  IF ~~ THEN REPLY #36428 /* ~"Ne, proč se tomu říká Dolní Čtvrť?"~ */ GOTO 11
  IF ~~ THEN REPLY #36429 /* ~"Nezajímá mě to. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36430 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36358 /* ~"No, říká se, že odsaď vede spousta portálů do Nižších Sfér, je to tu děrovaný jako sejra, takže bych řek, že jméno sedí." Pyšně se usmál.~ */
  IF ~~ THEN REPLY #36431 /* ~"Proč je tady tolik portálů do Nižších Sfér?"~ */ GOTO 12
  IF ~~ THEN REPLY #36432 /* ~"Vychází z těch portálů nějaká stvoření?"~ */ GOTO 13
  IF ~~ THEN REPLY #36433 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #62003 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36359 /* ~Pokrčil rameny. "To je tajemství i pro mě, kámo. Nejsem si jistej, jestli to má nějakej důvod. Portály bejvaj většinou náhodný. Možná to tak chce Paní, možná je to prostě náhoda." Znovu pokrčil rameny.~ */
  IF ~~ THEN REPLY #62005 /* ~"Vycházejí z těch portálů někdy nějaká stvoření?"~ */ GOTO 13
  IF ~~ THEN REPLY #62007 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #62009 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0
  SAY #36360 /* ~Oči se mu ještě o kousek rozšířili. "Jo, to jo. Většina jenom proletí kolem..." Nervózně polknul, vypadá znepokojeně.~ */
  IF ~~ THEN REPLY #36435 /* ~"Vypadáš nervózně, viděl jsi sám něco takového?"~ */ GOTO 14
  IF ~~ THEN REPLY #62013 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #62014 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36361 /* ~"Jé, viděl sem to..." Odmlčel se a znovu polkl. "Bylo to tak před tejdnem, co sem viděl přijít portálem dva abishaie... chvíli spolu kecali, pak se jeden z nich vrátil, druhej tu ještě je..." Zamračil se.~ */
  IF ~~ THEN REPLY #62097 /* ~"O čem se bavili?"~ */ GOTO 15
  IF ~~ THEN REPLY #36437 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #62098 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36362 /* ~"Nejsem si jistej, znělo mi to jako syčení, ale mám pocit, že říkali něco o věži."Pokrčil rameny.~ */
  IF ~~ THEN REPLY #62099 /* ~"Věž?"~ */ JOURNAL #36020 /* ~Chlapec Lazlo mi řekl, že ví o portálu nedaleko dobývací věže. Je na padacím mostu nebo zařízení, které tak vypadá, nedokázal mi to pořádně popsat. Zajímalo by mně, kam portál vede?~ */ GOTO 16
  IF ~~ THEN REPLY #62100 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #62101 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36363 /* ~"Jo, to je jedna z nejdivnějších věcí ve Čtvrti. Nikdo neví, jak dlouho tady ta poničená věž je... nedá se do ní dostat, víš. Je zabezpečenější než pás cudnosti. Zajímalo by mně, co je uvnitř..." Chvíli přemýšlí. "Abishai ukazoval na Věž a portál. Vsadil bych se, že hledají klíč."~ */
  IF ~~ THEN REPLY #62102 /* ~"Jaký klíč?"~ */ GOTO 17
  IF ~~ THEN REPLY #36440 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36441 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #36364 /* ~"Klíč k portálu, který vede do věže. Každý portál má nějakej klíč, který ho otevře. Může to být gesto, předmět, nebo dokonce myšlenka. Spousta lidí se zkoušela dostat do věže. Ať se snažili, jak chtěli, nikomu se to nepovedlo."~ */
  IF ~~ THEN REPLY #62103 /* ~"Možná že tajemství tkví v tom, nechtít se dostat dovnitř..."~ */ DO ~SetGlobal("Know_Tower_Key","GLOBAL",1)
~ JOURNAL #66276 /* ~V Dolní Čtvrti je zapečetěná dobývací věž, do které se spousta lidí pokouší dostat. Nikomu se to ale nepodařilo, ať to zkouší, jak chtějí. Je to podivná myšlenka, ale nějak mě napadlo, že by tajemství mohlo být nechtít vstoupit dovnitř...~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36365 /* ~Pokrčil rameny. "Nevím, kámo. Možná."~ */
  IF ~~ THEN REPLY #62104 /* ~"Řekni mi, kde je ten portál."~ */ JOURNAL #66280 /* ~Chlapec Lazlo mi řekl, že blízko zařízení připomínající padací most na východ od tržnice je portál. Myslí si, že by portál mohl vést do dobývací věže. Asi bych se tam měl zajít podívat.~ */ GOTO 19
  IF ~~ THEN REPLY #36444 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36445 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #36366 /* ~Na chvíli se zamyslel. "Za věží, na východ od trhu, je něco jako padací most. Tam to je." Zadíval se do dálky.~ */
  IF ~~ THEN REPLY #36446 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36447 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36367 /* ~"Střed Sfér, město, kde se protíná skoro všechno. Nikdy není nudný, fakt. Zákonem je Paní Bolesti, a zbytek nás nějak přežívá pod jejím stínem." Zasmál se, ale hned se rozkašlal.~ */
  IF ~~ THEN REPLY #36448 /* ~"Co mi můžeš říct o Paní Bolesti?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #36449 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36368 /* ~"Moc o ní nevím... drží Mocnosti od Sigilu, stejně tak fiendy a s nikým nemluví ani nejedná... kromě dabusů, nejspíš. Zapíše tě do knihy mrtvejch, než stačíš mrknout, když ji zkusíš uctívat nebo ublížit Sigilu. Její tvář a ostří, který ji obklopujou, to bude tvůj poslední pohled..."~ */
  IF ~  Global("Evil_Rchasr_1","GLOBAL",0)
~ THEN REPLY #36450 /* ~"Zajímavé..."~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Evil_Rchasr_1","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Evil_Rchasr_1","GLOBAL",1)
~ THEN REPLY #68424 /* ~"Zajímavé..."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #36369 /* ~Zmínka o tváři obklopené čepelemi ti způsobila zatmění před očima, objevila se vzpomínka. Stojíš v temné uličce a ztěžka oddechuješ. Z temnoty vystoupila neuvěřitelně krásná žena, její tvář je obklopená čepelemi, má neuvěřitelně studené oči... najednou vzpomínka vybledla a ty jsi znovu na tržišti a bavíš se s chlapcem.~ */
  IF ~~ THEN REPLY #36451 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36452 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.3
  SAY #36370 /* ~"Je to nemoc. Dělá ji špatnej vzduch. Všechen ten kouř a smog z továrny, blbě se kvůli tomu dýchá." Pokrčil rameny. "Někdy jsou tak špatný dny, že není dobrý být venku moc dlouho. Smog tě úplně rozežírá, zvenčí i zevnitř."~ */
  IF ~~ THEN REPLY #36453 /* ~"Nedá se s tím něco udělat?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36371 /* ~"Nevím. Někdy jdou větry od Jehlanu a smog jde pryč, ale to není moc často." Mrknul, rozhlédl se kolem a pak pokrčil rameny. "Přání Paní, řek bych. Nedává to moc smyslu, ale to dává máloco, když se na to důkladněji podíváš."~ */
  IF ~~ THEN REPLY #36454 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36455 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.4
  SAY #36372 /* ~"Nic moc... Velká slévárna je docela pozoruhodná, možná by tě mohla zajímat... žijou tam Věřící." Odmlčel se a přemýšlí. "Většina zajímavostí je v Horní Čtvrti. Asi by ses měl kouknout tam. Prej je tam bordel, Hala a ještě pár zajímavých fleků. Nevím, nikdy jsem tam nebyl, celej život tvrdnu tady."~ */
  IF ~~ THEN REPLY #36456 /* ~"Pověz mi o slévárně."~ */ GOTO 26
  IF ~~ THEN REPLY #36457 /* ~"Pověz mi o Věřících."~ */ GOTO 27
  IF ~~ THEN REPLY #36458 /* ~"Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36459 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0 30.0
  SAY #36373 /* ~"Střed čtvrti. Zajímavej barák. Nemůžeš to minout, jdi rovnou na sever. Poznáš to podle velký brány." Označil ti to na mapě.~ */
  IF ~~ THEN REPLY #36460 /* ~"Pověz mi o  Věřících."~ */ GOTO 27
  IF ~~ THEN REPLY #36461 /* ~"Aha. Mám další otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #36462 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #36374 /* ~"Maj spoustu jmen: Věřící, Boží lidé, Věřící ve Zdroj... Většinou jim říkáme Boží lidi. Mají bejvák ve Velký slévárně a docela se jim tam daří. Je to docela slušná banda. Věřej, že každej může bejt tak mocnej jako Mocnosti, akorát se musí snažit. Trvá to spoustu životů, ale nakonec se tam dostanou."~ */
  IF ~~ THEN REPLY #36463 /* ~"Pověz mi o slévárně."~ */ GOTO 26
  IF ~~ THEN REPLY #36464 /* ~"Takže je tady víc společenství. Ke kterému patříš ty?"~ */ GOTO 28
  IF ~~ THEN REPLY #36465 /* ~"Zajímavé. Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36466 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #36375 /* ~Usmál se. "Oh, já... a můj tatík jsme Nezávislí. Vlastně to ani není společenství... věříme, že všichni sou volní a můžou si dělat co chtějí. Jsme fakt nezávislí, a dost neradi se bavíme nebo posloucháme ostatní společenství."~ */
  IF ~~ THEN REPLY #36467 /* ~"Jaký je účel těch společenství?"~ */ GOTO 29
  IF ~~ THEN REPLY #36468 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36469 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #36376 /* ~Pohlédl na tebe. "Sigilu vládnou společenství. Je jich hromada: Mrtví neboli Spalovači, kteří se staraj o mrtvoly na ulicích, Guvnéři, co dělaj zákony, Vnímaví... je jich fakt hodně. Tady v Dolní čtvrti většinou kšeftujeme s Věřícíma, Božíma lidma." Kývl do dálky. Mají bejvák ve Velký slévárně, je to docela fajn banda."~ */
  IF ~~ THEN REPLY #36470 /* ~"Co mi můžeš říct o  těch dalších společenstvích?"~ */ GOTO 30
  IF ~~ THEN REPLY #36471 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36472 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36377 /* ~Pokrčil rameny. "Vlastně nic. Nikdy mě to nezajímalo, když už jsem nezávislej... v centrech společností najdeš spoustu lidí, kteří ti o tom popovídaj."~ */
  IF ~~ THEN REPLY #36473 /* ~"Co mi můžeš říct o téhle slévárně?"~ */ GOTO 26
  IF ~~ THEN REPLY #36474 /* ~"Aha. Mám pro tebe jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36475 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5
  SAY #36378 /* ~Vypadá docela vzrušeně. "Chybí ti lebka! Vsadím se, že vím, co s ní je. Tady ve čtvrti je chlápek, mág nebo kněz nebo tak něco, kterej sbírá lebky a dává si je na poličky jako knížky. Sou mrtvý, ale má takovou magii, že je donutí, aby mu odpovídaly na otázky, i když už sou majitelé v Knize mrtvejch."~ */
  IF ~~ THEN REPLY #36476 /* ~"Kde můžu najít tu osobu?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36379 /* ~Zamračil se. "Nejsem si jistej. Slyšel sem něco o tom, že má bejvák v jedný zničený budově poblíž, ale nikdy jsem tam nebyl." Lusknul prsty. "Možná to ví jiní, zkus se zeptat  Sebastiona."~ */
  IF ~~ THEN REPLY #36477 /* ~"Kde můžu najít Sebastiona?"~ */ GOTO 33
  IF ~~ THEN REPLY #36478 /* ~"Aha. Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36479 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36380 /* ~Ukázal někam na západ. "Jdi zpátky na náměstí a jdi kousek severozápadně. Sebastion bejvá blízko padacího mostu."~ */
  IF ~~ THEN REPLY #36480 /* ~"Děkuju ti. Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36481 /* ~" Už musím jít, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 34 // from:
  SAY #36381 /* ~"No nazdar. Máš nějaký otázky, na který bych ti moh odpovědět?"~ */
  IF ~~ THEN REPLY #36482 /* ~"Ano..."~ */ GOTO 2
  IF ~~ THEN REPLY #36483 /* ~"Ne, sbohem."~ */ EXIT
END
