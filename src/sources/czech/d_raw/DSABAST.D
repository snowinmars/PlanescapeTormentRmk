// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSABAST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSABAST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #6 /* Triggers after states #: 37 38 39 40 60 43 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37465 /* ~Vidíš staršího muže v elegantní róbě. Má jasné oči a vřelý úsměv. Jak se přiblížíš, složí ti malou poklonu. "Zdravím, kámo. Já jsem Sebastion, jak mohu pomoci?"~ */
  IF ~~ THEN REPLY #37466 /* ~"Pěkný den!"~ */ GOTO 1
  IF ~~ THEN REPLY #37467 /* ~Ignorovat ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 60.0
  SAY #37468 /* ~"Zdravím tě, kámo..." Zastaví uprostřed věty, jakmile si všimne tvých jizev. Vidíš, jak jeho oči bloudí po tvém těle a překvapením nadzvedne obočí. Jeho upřímný pohled se vrátí k tobě. "Právě jsem se chtěl zeptat, co bys rád, ale myslím, že to nebude potřeba. Myslím že vím, proč jste mě chtěli vidět, kámo."  ~ */
  IF ~~ THEN REPLY #37469 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37470 /* ~"Ve skutečnosti bych si s tebou rád povykládal o Kalnostromu."~ */ GOTO 20
  IF ~  Global("Snuff_Grosuk","GLOBAL",0)
~ THEN REPLY #37471 /* ~"Co... ty se mi tu pokoušíš namluvit, že bys mi mohl pomoct s těmi jizvami?"~ */ GOTO 28
  IF ~~ THEN REPLY #37472 /* ~"No nevadí. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 5.1 6.2 7.1 8.2 9.1 11.1 14.1 15.0 16.0 18.1 19.1 28.1 29.1 30.1 35.1 36.0 45.0 50.1 51.1 52.0 53.0 55.0 56.1 58.0
  SAY #37473 /* ~Jeho úsměv se rozšiřuje a podává ti malou poklonu. "Ptej se, kámo."~ */
  IF ~~ THEN REPLY #37474 /* ~"Kdo vlastně jsi?~ */ GOTO 3
  IF ~~ THEN REPLY #37475 /* ~"Co je to tady za místo?"~ */ GOTO 6
  IF ~~ THEN REPLY #37476 /* ~"Jak to tady vlastně funguje?"~ */ GOTO 16
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37477 /* ~"Měl jsem mluvící lebku, která byla ukradena. Můžeš mi pomoci?~ */ GOTO 17
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37478 /* ~"Vlastně, rád bych s tebou mluvil o Kalnostromu."~ */ GOTO 20
  IF ~  GlobalLT("Snuff_Grosuk","GLOBAL",1)
~ THEN REPLY #37479 /* ~"Myslím, že bys mi mohl pomoci s těmi šrámy."~ */ GOTO 28
  IF ~~ THEN REPLY #37480 /* ~"Už musím jít. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37481 /* ~"Já jsem Sebastion a... jeden z mágů. Pracuji pro ty, jenž si mohou dovolit cenu mých služeb."~ */
  IF ~~ THEN REPLY #37482 /* ~"Jaký druh služeb?"~ */ GOTO 4
  IF ~~ THEN REPLY #37483 /* ~"Váháš použít slovo *mág*. Proč?"~ */ GOTO 5
  IF ~~ THEN REPLY #37484 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37485 /* ~"Budu muset jít. Nuže, ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37486 /* ~Lehce se pousměje a pokrčí rameny. "Tajná práce, kámo. Já jsem známý pro svoji obezřetnost a dobrou práci. Lidé ke mně přicházejí s různými úkoly. Pokud mohu, udělám to. Pokud ne, nikoliv. V jednom ze dvou případů dodržuji mlčenlivost."~ */
  IF ~~ THEN REPLY #37487 /* ~"Váháš při vyslovení slova *mág*. Proč?"~ */ GOTO 5
  IF ~~ THEN REPLY #37488 /* ~"Mám víc otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37489 /* ~"Musím jít. Loučím se."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37490 /* ~Počne potřásati hlavou. "No... Já nejsem žádný mág, kámo, ale mohu používat magii k mému prospěchu. Nemám za sebou studia magie, ale pochytil jsem mnoho na mých cestách." Udělá pauzu, aby mohl pokrčit rameny. "Je lepší nazývat se mágem, než každému tuto definici jednotlivě vysvětlovat."~ */
  IF ~~ THEN REPLY #37491 /* ~"Jaký je to druh práce?"~ */ GOTO 4
  IF ~~ THEN REPLY #37492 /* ~"Mám více otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37493 /* ~"Musím jít. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #37494 /* ~Zatváří se legračním pohledem. "Tím tady míníš jako tržiště, nebo čtvrť Sigilu?"~ */
  IF ~~ THEN REPLY #37495 /* ~"Tržiště."~ */ GOTO 7
  IF ~~ THEN REPLY #37496 /* ~"Tato čtvrť."~ */ GOTO 8
  IF ~~ THEN REPLY #37497 /* ~"No nic. Jinak bych se chtěl zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37498 /* ~"Budu muset jít. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37499 /* ~"Toto je veřejné tržiště, kámo. Tady je plno věcí na prodej. Kouzla, elixíry, informace, ženy, muži... Všechno, pokud si můžeš dovolit vysokou cenu."~ */
  IF ~~ THEN REPLY #37500 /* ~"Pověz mi o této čtvrti."~ */ GOTO 8
  IF ~~ THEN REPLY #37501 /* ~"Mám víc otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37502 /* ~"Musím jít. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #37503 /* ~"Toto je Dolní čtvrť, kámo, domov množství různých lidí a průmyslová metropole Sigilu. Není to takový brloh jako je Úl, ale na druhou stranu zase není tak velkolepý jako Čtvrť Paní bolesti."~ */
  IF ~~ THEN REPLY #37504 /* ~"Řekni mi o tržišti."~ */ GOTO 7
  IF ~~ THEN REPLY #37506 /* ~"Proč se to jmenuje Čtvrť Paní Bolesti?"~ */ GOTO 9
  IF ~~ THEN REPLY #37507 /* ~"Mám víc otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37508 /* ~"Budu muset vyrazit. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #37509 /* ~Zasměje se a mírně pokrčí rameny. "To závisí na tvém pohledu na věc, kámo. Bohatí to říkají, jelikož toto je společný domov nebo majetek *Paní Bolesti*. Jestliže se budeš ptát těch, kteří zde žijí, dozvíš se vždy něco o portálech... a incidentu."~ */
  IF ~~ THEN REPLY #37510 /* ~"Incidentu?"~ */ GOTO 10
  IF ~~ THEN REPLY #37511 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37512 /* ~"Musím jít. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #37513 /* ~"No..." Zamračí a odmlčí se pro chvilku přemýšlení. "Dlouhý čas to bylo jmenováno Hlavní čtvrť. Noví lidé v Sigilu byli umístěni zde a jiné čtvrti jim byly odepřeny. Bylo zde mnoho omezení a zákonů... nějaký idiot se rozhodl zorganizovat povstání. Nikde jinde by to nešlo, ale on udělal kouzelný objev..."~ */
  IF ~~ THEN REPLY #37514 /* ~"Pokračuj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37515 /* ~"Víš, existuje spousta portálů tady v této části města a většina z nich se otevírá v Nižších Sférách. No, jeden přitroublý magor kdysi objevil způsob otevření všech portálů najednou. On *něco* udělal a pak prošel skrz portály dovnitř města. Následek byl opravdu krvavý; následovala strašná válka. V každém případě, podle toho je to pojmenováno jako *Dolní* čtvrť. Kvůli těm portálům."~ */
  IF ~~ THEN REPLY #37516 /* ~"Sebastione, jak ten člověk všechny ty brány otevřel?"~ */ GOTO 12
  IF ~~ THEN REPLY #37517 /* ~"Aha. Mám pár jiných otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37518 /* ~"Musím jít. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #37519 /* ~"On kdysi použil takový předmět, ke svým účelům. Jmenovalo se to..." Na moment se odmlčí a začne přemýšlet. "Jo, vzpomněl jsem si, Klíč Stínů..." V momentu vyslovení slova "klíč" začneš trpět závratí, svět kolem tebe mrzne, a vše nabírá mrtvou šeď. Cítíš, jak minulá pamět ožívá a zkouší proniknout do tvého vědomí.~ */
  IF ~  Global("Shadow_Key_Mem","GLOBAL",0)
~ THEN REPLY #37520 /* ~Odpočívat a vyčkávat.~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Shadow_Key_Mem","GLOBAL",1)
GiveExperience(Protagonist,500)
~ JOURNAL #37522 /* ~Pamatuji si něco o povstání ve Čtvrti Paní bolesti. Byl tam takový člověk, který tam hrál opravdu významnou roli. Bohužel nevím který.~ */ GOTO 46
  IF ~  Global("Shadow_Key_Mem","GLOBAL",1)
~ THEN REPLY #37521 /* ~Odpočívat a vyčkávat.~ */ GOTO 46
  IF ~~ THEN REPLY #65508 /* ~Soustřeď se na své vzpomínky.~ */ GOTO 56
END

IF ~~ THEN BEGIN 13 // from: 50.0 56.0
  SAY #37523 /* ~Pokrčí rameny. "Nikdo neví. Klíč je nezvěstný teprve krátkou dobu. Mnoho lidí věří, že Paní Bolesti ten klíč vzala, aby zabránila jeho dalšímu používání."~ */
  IF ~~ THEN REPLY #37524 /* ~"Tak, jaký měla vzpoura výsledek?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37525 /* ~V zamyšlení odpoví: "Hmm... každý, vyjma vůdce, byl zapsán do Knihy mrtvých. Vůdce a kreatury stoupaly nahoru - práce naší Paní. Někteří ze čtvrti utíkali. Výpary Nižších sfér znečišťovaly ovzduší, víš? Čtvrť byla do té doby, než se přestavěla, liduprázdná."~ */
  IF ~~ THEN REPLY #37526 /* ~"Co mi můžeš říct o Slévárně?"~ */ GOTO 15
  IF ~~ THEN REPLY #37527 /* ~"Mám pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37528 /* ~"Musím jít. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #37529 /* ~Zamračí se. "To je dům Božích lidí, kámo. Pokud na tohle máš nějaké otázky, radím ti, abys šel do slévárny." ~ */
  IF ~~ THEN REPLY #37530 /* ~"Aha... No, ještě bych se rád zeptal..."~ */ GOTO 2
  IF ~~ THEN REPLY #37531 /* ~"Vypadá to, že už bych měl jít. Tak čau."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #37532 /* ~Podezřívavě na tebe pohlédne. "Co tím míníš, kámo?" Pozvedne svou hůl a poukáže jí na celou čtvrť. "Život, kámo. Život jako obvykle, nic víc."~ */
  IF ~~ THEN REPLY #37533 /* ~"Nu dobrá, Mám pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37534 /* ~"Ještě mám něco na práci. Tak se měj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #37535 /* ~Před odpovědí se na chviličku zamyslí. "Lebka... nu, hádal bych, že v tom je hazard, řekl bych, že tvoje lebka je teď majetkem Pána Kostí. Což znamená, že by sis měl pořídit novou, kámo."~ */
  IF ~~ THEN REPLY #37536 /* ~"Co mi můžeš říct o Pánu Kostí?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37537 /* ~"Kde bych mohl najít tohoto Pána Kostí?"~ */ GOTO 19
  IF ~~ THEN REPLY #37538 /* ~"Aha. Musím ještě zařídít pár věcí, tak ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.0
  SAY #37539 /* ~Zamračí se a na moment popřemýšlí. "Jeho jméno je Lothar, a je bezohledný vůči ostatním. Nevím o něm zhola nic a nemůžu odpovídat na tvoje otázky." V jeho očích se blýská náznak strachu. "Mluvme o něčem jiném, kámo."~ */
  IF ~~ THEN REPLY #37540 /* ~"Kde ho můžu najít?"~ */ GOTO 19
  IF ~~ THEN REPLY #37541 /* ~"No výborně, ale... mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37542 /* ~"Loučím se."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #37543 /* ~Po tváři se mu mihne nervózní výraz. "Takový zničený domek někde tady v této čtvrti je v jeho vlastnictví. Nic víc nevím." Teď jsi v jeho očích skutečně uviděl strach. "Mluvme o něčem jiném, kámo."~ */
  IF ~~ THEN REPLY #37544 /* ~"Co mi můžeš říct o Pánu Kostí?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37545 /* ~"Dobře, Ještě bych se chtěl zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37546 /* ~"Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.4 37.0 38.0 39.0 43.0
  SAY #37547 /* ~Na chvilku se zamyslí a povzdychne si. "CO o Kalnostromu, kámo?"~ */
  IF ~~ THEN REPLY #37548 /* ~"Chce zrušit prokletí."~ */ GOTO 21
  IF ~~ THEN REPLY #37549 /* ~"Chci přijmout tu práci."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_2","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #37550 /* ~"Tak nic. Ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #37551 /* ~Překvapeně na tebe pohlédne. "Já vím, že je těžké tomu uvěřit, kámo. Ale Kalnostrom je... prostě nemá duševní sílu mít nějaké přání." Na moment se zamračí. "Řekl ti o tom ten idiot Hamris?"~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #37552 /* ~"Ne."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #37554 /* ~"Přemýšlej o tom, Sebastione. Hamrys neví, že Kalnostrom je zombie, natož kdo ho vytvořil. Jo?"~ */ GOTO 23
  IF ~~ THEN REPLY #37555 /* ~"A co tam vůbec dělá?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #37556 /* ~V zamyšlení na tebe civí. "Hmmm. Hamrys má málo vtipu. Pochybuji, že by mohl uhádnout, kdo to udělal." Mírně se pousměje a pokrčí rameny. "Kdo ví, že Kalnostrom je tak zbědovaný, je více informován, než se dá očekávat." Pohledem se odvrátí pryč a zdá se být v hlubokém zamyšlení.~ */
  IF ~~ THEN REPLY #37557 /* ~"Tak propustíš ho?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #37558 /* ~Velmi hluboce se zamyslí. "Ano... máš pravdu, samozřejmě. Hamrys tě nemohl poslat. Hádám, že ubohý Kalnostrom je víc informován, než jsem si myslel. Měl bych být potrestán za svou hloupost!"~ */
  IF ~~ THEN REPLY #37559 /* ~"Tak, můžeš ho uvolnit?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0 54.0
  SAY #37560 /* ~Když na tebe pohlédne, v jeho tváři se zračí protichůdné emoce. Směje se a přitom vztekem šermuje svýma rukama. "Promiň, nemůžu." Nasadí smutný pohled. "Chtěl bych, ale nejde to. Já vyplním úmluvu o Kalnostromu, ať už je to dobré či ne. Já jsem člověk podle svého, moje pověst to vyžaduje."~ */
  IF ~~ THEN REPLY #37561 /* ~Pravda: "Plně chápu tvoje rozpaky a souhlasím s tebou. Mohu ho uvolnit?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37562 /* ~Pravda: "Já opravdu nemám vědomosti o smlouvách. Co jsi udělal, je špatné, a on potřebuje mít čas."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37563 /* ~"Kdo stručně jsi? Možná mohu dostat jejich souhlas pro jeho vysvobození."~ */ GOTO 27
  IF ~~ THEN REPLY #37564 /* ~"Já ale nespoléhám pouze na jeden způsob. Právě jsem se rozhodl zkusit pomoct mu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 27.0 27.1
  SAY #37565 /* ~"To je těžké..." Podívá se skrz blízko ležící bednu. Vytáhne starou knihu a položí ji před tebe. "Za prvé, musíš získat nějaké magické schopnosti. Za druhé, musíš se pořádně naučit používat slova, která najdeš na straně dvacet tři v této knize."~ */
  IF ~~ THEN REPLY #37566 /* ~"Hmm."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37567 /* ~"Jako poslední věc, musíš se dotknout Kalnostroma a ucítíš vyvrcholení síly." Otočí se od tebe a hledí skrz jinou krabici. "Avšak nechci, abys četl tu knihu. Bude to brzdit můj svět a ostatní činnosti." Začne prohledávat krabice a ignoruje tě.~ */
  IF ~~ THEN REPLY #37569 /* ~Přečíst si knihu a odejít.~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",4)
AddexperienceParty(4000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #37571 /* ~Učím se zaklínat a potřebuji osvobodit Kalnostroma - zombii. Sebastion mi dovolil učit se ze své knihy, ačkoli se snažil nevšímat si, co jsem dělal.~ */ EXIT
  IF ~~ THEN REPLY #37570 /* ~Ignorovat nějakou blbou knihu a odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #37572 /* ~Usměje se. "Nemůžu ti poodhalit takovou informaci, kámo. Proto mě taky lidé najímají. Oni ví že když přijmu práci, udělám ji rozumně."~ */
  IF ~~ THEN REPLY #37573 /* ~Pravda: "Rozumím, to je cesta obchodu, po které bych se měl vydat. Mohu ho raději osvobodit?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37574 /* ~Pravda: "Já opravdu nemám zkušenosti se smlouvami. Co jsi udělal je špatné a on potřebuje čas."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37575 /* ~"Nevadí. Nepotřebuji to udělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.2 2.5
  SAY #37576 /* ~S úsměvem pokrčí rameny. "Snad, kámo, snad." Předkloní se a starostlivě si prohlíží tvoje šrámy. Po několika z nich přejede prstem a začne si cosi mumlat. Pak se konečně otočí zpět k tobě. "Jo, kámo, mohu pomoci. Nemůžu vás přímo vyléčit, ale mohu napravit to nejhorší ve tvé... kondici."~ */
  IF ~~ THEN REPLY #37577 /* ~"A cena?"~ */ GOTO 29
  IF ~~ THEN REPLY #37578 /* ~"Jo, skvělý. Mám na tebe pár otázek..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37580 /* ~"Ach ano... cena." Počne si mnout bradu a přemýšlet. Dostáváš pocit, že tě podrobuje nenápadné prohlídce. Zdá se, že se rozhodl. "Jako plat pro mě můžeš odvést práci."~ */
  IF ~~ THEN REPLY #37581 /* ~"Pokračuj."~ */ GOTO 30
  IF ~~ THEN REPLY #37582 /* ~"Zapoměň na to. Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37583 /* ~"Momentálně nemám zájem pracovat. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #37584 /* ~"S jistým tvorem jsem uzavřel jednu smlouvu. Již nejsem schopný smlouvu dodržet; je to... za hranicemi mých sil. Ať budu dělat cokoli, ten tvor mě z toho úkolu nepropustí. Dokonce mi vyhrožoval smrtí, pokud úmluvu nesplním."~ */
  IF ~~ THEN REPLY #37585 /* ~"Nechej mě hádat: Ty chceš, abych za tebe tento problém vyřešil."~ */ GOTO 31
  IF ~~ THEN REPLY #37587 /* ~"To mě nezajímá. Ještě bych se chtěl zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37589 /* ~"Nemám rád tuto cestu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #37591 /* ~Směje se. "Ano. Nemohu to udělat sám. Moje reputace vyžaduje, abych smlouvu splnil, anebo počítal s následky. Jsem tedy odkázán na tvoji milost. Pomůžeš mi?"~ */
  IF ~~ THEN REPLY #37593 /* ~"O jakém druhu tvora hovoříme?"~ */ GOTO 32
  IF ~~ THEN REPLY #37595 /* ~"Co máš podle té smlouvy udělat?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 33.0
  SAY #37597 /* ~"Abishai jménem Grosuk, kámo." Malá pauza s pohledem namířeným na tebe. "Je to těžký úkol, ale myslím, že by to nemělo nějak ovlivnit tvoji reputaci. A navíc, odměna, kterou nabizím, je více než skvostná." Prohlíží si ty tvoje šrámy.~ */
  IF ~~ THEN REPLY #37599 /* ~"Co máš podle té smlouvy udělat?"~ */ GOTO 33
  IF ~~ THEN REPLY #37600 /* ~"Aha, zajímavý návrh."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #37601 /* ~Zavrtí hlavou. "Nemůžu ti poodhalit víc, kámo. Nejde to. Proto mě lidé najímají. Ví, že když přijmu job, provedu ho s největší opatrností."~ */
  IF ~~ THEN REPLY #37602 /* ~"O jakém druhu tvora hovoříme?"~ */ GOTO 32
  IF ~~ THEN REPLY #37603 /* ~"Aha, zajímavý nápad."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 32.1 33.1
  SAY #37604 /* ~Výraz v jeho tváři se změní na dosti naléhavý. "Opravdu to uděláš, kámo?"~ */
  IF ~  Global("Grosuk_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #37605 /* ~"Už jsem ho zabil."~ */ JOURNAL #37609 /* ~Mág jménem Sebastion chtěl, abys zabil jednoho abishaie. Za to ti pomůže s mými jizvami. Naštěstí jsem to měl už dávno hotovo a Sebastion mi velmi pomohl.~ */ GOTO 57
  IF ~~ THEN REPLY #37606 /* ~"Jo, řekni mi detaily."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ JOURNAL #37610 /* ~Mág jménem Sebastion chce, abych zabil jednoho abishaie. Pokud to udělám, uzdraví moje šrámy. Chci to udělat.~ */ GOTO 35
  IF ~~ THEN REPLY #37607 /* ~"Ne, díky, nechci se do ničeho zamotat."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",2)
~ GOTO 36
  IF ~~ THEN REPLY #37608 /* ~"Ano, budu o tom uvažovat."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY #37611 /* ~Usměje se a jsou na něm patrné známky úlevy. "Děkuji ti, kámo. To stvoření je abishai zvaný Grosuk. Budeš potřebovat magickou zbraň, pokud žádnou nemáš, sežeň si ji někde tady na trhu. Kouzelník by to měl zvládnout. Grosuk se nachází na východě, u obléhací věže."~ */
  IF ~~ THEN REPLY #37612 /* ~"Obléhací věž?"~ */ GOTO 55
  IF ~~ THEN REPLY #37613 /* ~"Dobře, ale ještě bych chtěl vědět..."~ */ GOTO 2
  IF ~~ THEN REPLY #37614 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2 34.3
  SAY #37615 /* ~Zkouší zkombinovat zklamání z úsměvem. "Je tady ještě něco s čím ti mohu pomoci?"~ */
  IF ~~ THEN REPLY #37616 /* ~"Jo, Mám pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37617 /* ~"Ne, sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 38 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #37618 /* ~Jakmile tě Sebastion pozná, usměje se. "Rád tě vidím, kámo. Rozhodl ses přjmout můj návrh?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37619 /* ~"Vlastně, chci si s tebou promluvit o Kalnostromu."~ */ GOTO 20
  IF ~~ THEN REPLY #37620 /* ~"Jo, Řekni mi detaily."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37621 /* ~"Stále o tom přemýšlím. Měj se."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #37622 /* ~Sebastion se začíná usmívat, jak se přibližuješ. "Zdar, kámo. Prosím, řekni že sis to rozmyslel a pomůžeš mi!"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37623 /* ~"Hmm, radši bych si s tebou popovídal o Dimtree."~ */ GOTO 20
  IF ~~ THEN REPLY #37624 /* ~"Jo, řekni mi detaily."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37625 /* ~"Ne. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN BEGIN 39 // from:
  SAY #37626 /* ~Sebastion se začíná usmívat, jak se přibližuješ. "Zdravím, kámo. Je úkol hotov?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37627 /* ~"Vlastně, chtěl bych si promluvit o Kalnostromu."~ */ GOTO 20
  IF ~~ THEN REPLY #37628 /* ~"Ne, pracuji na tom."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 60 43 even though they appear after this state */
~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #37629 /* ~Sebastion se začíná usmívat, když se přibližuješ. "Ahoj, kamaráde. Už jsi vyřešil ten úkol, co jsem ti zadal?"~ */
  IF ~~ THEN REPLY #37630 /* ~"Ano, a jdu si pro to, co mi náleží."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #37631 /* ~"Momentíček, kámo." Sebastion zaloví rukou v hloubi své róby a vytahuje kulatý krystal. Trvá chvilku, než se z hlubokého transu spojeného s upřeným pohledem na kouli vrátí k tobě. "Nemohu ti dostatečně poděkovat, kámo. Budu se to snažit učinit alespoň tímto způsobem. Jsi připraven?"~ */
  IF ~~ THEN REPLY #37632 /* ~"Ano."~ */ DO ~AddexperienceParty(4000)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #37633 /* ~"Je to OK, kámo. Ještě jednou děkuji." Následuje hluboká poklona.~ */
  IF ~~ THEN REPLY #37634 /* ~"Děkuji a... já půjdu, Sebastione."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66544 /* ~Zabil jsem pro Sebastiana abishaie Grosuka. Přesně podle naší dohody mi pomohl s jizvami. Vypadám teď o dost lepe.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Snuff_Grosuk","GLOBAL",4)
~ THEN BEGIN 43 // from:
  SAY #37635 /* ~Když tě Sebastion uvidí, usměje se. "Zdar, kámo. Jak mohu pomoci?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37636 /* ~"Vlastně, chci si s tebou promluvit o Kalnostromu."~ */ GOTO 20
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #64548 /* ~"Můžeš mě vycvičit v Umění, Sebastione?"~ */ GOTO 59
  IF ~~ THEN REPLY #64549 /* ~"Nevadí, Sebastione. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.1 38.1
  SAY #37638 /* ~Usměje se a povdechbne si úlevou. "Děkuji, kámo. To stvoření je abishai jménem Grosuk. Sídlí na východ, za obléhací věží."~ */
  IF ~~ THEN REPLY #37639 /* ~"Jo, dobře. Měj se."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 45 // from:
  SAY #37640 /* ~Když připochoduješ, Sebastion se usměje. "Zdravím, kámo. Pěkné tě znovu vidět."~ */
  IF ~~ THEN REPLY #37641 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #37642 /* ~"Nemohl bys mě trošičku procvičit, Sebastione?"~ */ GOTO 59
  IF ~~ THEN REPLY #37643 /* ~"No nevadí. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 12.0 12.1
  SAY #37644 /* ~Svět kolem tebe se zblázní a mlhavě vnímáš, že stojíš v potemnělých ulicích Sigilu. Tvoje srdce je těžké, zkoušíš zabrzdit let; trhaně lapáš po dechu. Rozjel ses velikou rychlostí a teď nemůžeš zastavit...~ */
  IF ~~ THEN REPLY #37645 /* ~Pokračovat.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #37646 /* ~Pomalu se otáčíš v prostoru, až se to konečně promění v let. Cítíš, jak tvoje síla slábne, jak se snažíš zachytit za zdi okolo. Ucítíš objekt hrubě namačkaný do kuličky ve tvé dlani. Otevřeš svou pěst a podíváš se do obalu. K svému úžasu uvidíš pravý drahokam.~ */
  IF ~~ THEN REPLY #37647 /* ~Pokračovat.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #37648 /* ~Letíš k jedné ze stěn. Jak se jí dotkneš čelem, ucítíš vlhký, studený povrch. Zavřeš oči a přinutíš se k pomalému, hlubokému dechu. Konečně ucítíš tvoji sílu vracet se, když uslyšíš podivny šramot, který si plně uvědomuješ. Dále se vydáš jinačím otvorem - chodbou.~ */
  IF ~~ THEN REPLY #37649 /* ~Pokračovat.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #37650 /* ~Z počátku nevidíš nic, jako by všude kolem byly rozsety stíny noci. Mezi nekonečnou černotou registruješ nejistý pohyb. Pomalu ženský obličej klouže kolem rohu, s přestávkami, pak se k tobě přiblíží. Tvoje oči cestují od jejího štíhlého pasu k velikým ňadrům a pak k jejímu obličeji. Trochu také vynikají její studené oči...~ */
  IF ~~ THEN REPLY #37651 /* ~Pokračovat.~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #37652 /* ~Paměť se pozvolna vrácí a zrak s ní. Uvědomuješ si, že stojíš před Sebastionem na tržišti. Tváří se vážně, ale z tváře čte, že všechno dopadlo výborně. "Myslím, že jsem tě tam na chviličku ztratil, kámo."~ */
  IF ~~ THEN REPLY #37653 /* ~"Co se stalo s tím Klíčem Stínů?"~ */ GOTO 13
  IF ~~ THEN REPLY #37654 /* ~"Zajímavé, Mám další otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 51 // from: 20.1
  SAY #37655 /* ~Podívá se na tebe zářivým pohledem. "Nač děkovat, kámo. Je vždycky fajn najít někoho, kdo ocení humor takovéto situace."~ */
  IF ~~ THEN REPLY #37656 /* ~"V prvé řadě mi řekni, proč to děláš?"~ */ GOTO 52
  IF ~~ THEN REPLY #37657 /* ~"Jo... Chtěl bych se ještě zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37658 /* ~"Hmm, Musím jít. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 21.2 51.0
  SAY #37659 /* ~"Oh..." Počne se smát a kroutit hlavou, stěží se snaží uklidnit se. "Hamrys miluje zvuk svého vlastního hlasu, kámo. Putuje trhem celé hodiny, aby lidé naslouchali jeho nekonečnému žvatlání. Absolutně selhal. Kalnostrom mu bude dobrým společníkem a bude naslouchat jeho historkám a co je důležité, bude ho držet u sebe v krámu."~ */
  IF ~~ THEN REPLY #37660 /* ~"Aha. Mám na tebe pár otázek..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 53 // from:
  SAY #37661 /* ~"Oh..." Počne se smát a kroutit hlavou, stěží se snaží uklidnit se. "Hamrys miluje zvuk svého vlastního hlasu, kámo. Putuje trhem celé hodiny, aby lidé naslouchali jeho nekonečnému žvatlání. Zákazníci prchali z jeho obchodu! Kalnostrom mu bude dobrým společníkem a bude naslouchat jeho historkám, a co je důležité, bude ho držet u sebe v krámu."~ */
  IF ~~ THEN REPLY #37662 /* ~"Aha. Nu, tu nevadí. Mám ještě jednu otázečku..."~ */ GOTO 2
  IF ~~ THEN REPLY #37663 /* ~"No... vypadá to, že všechny dosavadní pokusy byly marné. Potřebuješ ze svých úmyslů vypustit Kalnostroma."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #37664 /* ~V hlubokém zamyšlení si tiše povzdechne. "Ano... ty jsi ten správný a jediný, samozřejmě. Měl bych být potrestán za mou hloupost!"~ */
  IF ~~ THEN REPLY #37665 /* ~"Pak ho uvolníš?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 55 // from: 35.0
  SAY #37666 /* ~"Ano, daleko za tržištěm. Prokletá věc, která se zničehonic objevila před několika lety. Nikdo neví, proč vznikla, a nikdo se nezdá být dostatečně schopný, aby se dostal dovnitř a vypátral to."~ */
  IF ~~ THEN REPLY #37667 /* ~"Aha. Ještě bych se chtěl zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #37668 /* ~"Hmm. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.2
  SAY #37669 /* ~Zameříš na to svoji pozornost a soustředíš se. Až po nějaké chvilce svět znovu získá barvu a vrátí se do normálu. Na nic si najednou nepamatuješ...~ */
  IF ~~ THEN REPLY #37670 /* ~"Co se stalo s tím Klíčem Stínů?"~ */ GOTO 13
  IF ~~ THEN REPLY #37671 /* ~"Zajímavé, Mám na tebe ale další otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 57 // from: 34.0
  SAY #37672 /* ~"Prosím momentíček, kámo." Ponoří ruku do svého hávu a vytahuje malou krystalickou kouli. Upřeně se na to podívá a vrací s tobě, už teď velmi rozrušenému. "Nemohu ti poděkovat, kámo. Ale ať už to stojí cokoli, pomůžu ti. Jsi připraven?"~ */
  IF ~~ THEN REPLY #37673 /* ~"Jo, díky."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
PermanentStatChange(Protagonist,CHR,RAISE,2)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66545 /* ~Zabil jsem abishaie jménem Grosuk. Ukázalo se, že Sebastion chtěl z nějakého důvodu jeho smrt. Za odměnu mi  Sebastion pomohl s jizvami. Vypadám teď o dost lepe.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #37674 /* ~Směje se na tebe. "Je to OK, kámo. Ještě jednou, děkuji."~ */
  IF ~~ THEN REPLY #37676 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37677 /* ~"Budu muset jít, měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 43.1 45.1
  SAY #37678 /* ~"Seš si jistý, že chceš pozvednout svoji nynější profesi a vylepšit své umění na mága?"~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #52386 /* ~"Ano..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",3)
~ GOTO 61
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #52387 /* ~"Ano..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 63
  IF ~~ THEN REPLY #58936 /* ~"Ne, nech mě, ať si to promyslím. Sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 60 // from:
  SAY #50446 /* ~Vidíš staršího muže v elegantních šatech. Má světlé oči a laskavý úsměv. Když ses přiblížil, mírně se uklonil. "Dobrý den, pane. Jsem Sebastion, jak ti můžu posloužit?"~ */
  IF ~~ THEN REPLY #50447 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #50448 /* ~Ignoruj toho muže.~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #52388 /* ~"Todle není něco, co bych normálně dělal. No, ukaž mi, co umíš, a já ti dám pár rad." Pozorně tě sleduje, zatímco předvádíš, co umíš. Na několika místech tě zastavil a ukázal ti, jak vylepšit své schopnosti. Po několika hodinách si myslíš, že se svými dovednostmi mága se cítíš pohodlněji.~ */
  IF ~~ THEN REPLY #62180 /* ~"Děkuju ti, Sebastione."~ */ DO ~GiveExperience(Protagonist,5000)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #62174 /* ~"Nemáš zač, příteli. Vezmi si taky tato dvě kouzla, mohou se ti hodit. A teď mě omluv, já mám nějakou práci."~ */
  IF ~~ THEN REPLY #62177 /* ~"Sbohem."~ */ DO ~GiveItemCreate("Spwi101",Protagonist,1,1,0)
GiveItemCreate("Spwi102",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1
  SAY #64650 /* ~"Tohle normálně nedělám. Ale, ukaž mi co víš a já ti dám nějaké rady." Pozorně tě sleduje, jak předvádíš své dovednosti. Někdy tě zastaví a ukáže ti jak zlepšit účinek, některých kouzel. Po pár hodinách cítíš, že ze svými schopnostmi jako kouzelník, ses významně zlepšil.~ */
  IF ~~ THEN REPLY #64651 /* ~"Děkuji ti Sebastione."~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #64652 /* ~"Jsi vítán příteli. Když mi odpustíš, mohl bych pro tě dělat."~ */
  IF ~~ THEN REPLY #64653 /* ~"Sbohem."~ */ EXIT
END
