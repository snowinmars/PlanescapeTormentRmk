// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCREED.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCREED~

IF ~  Global("Creeden","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #10080 /* ~Odporně vyhlížející muž rychle postřehl, že tě nějak zaujal. Během chvilinky je u tebe a nabízí ti své 'zboží'. Má dlouhou dřevěnou hůl, ze které visí tucet vařených krys stažených z kůže. Když mluví, ukazuje na ně širokou rukou pokrytou špínou a v úsměvu na tebe cení zažloutlé polámané zuby. "Hoj, kámo, copak tady děláš? Kterej chycenej krysánek zaujal tvoje oko a mlsnej jazejček dneska, hm?"~ */
  IF ~~ THEN REPLY #12628 /* ~Prozkoumej ty 'krysičky.'~ */ GOTO 2
  IF ~~ THEN REPLY #12629 /* ~"Raději bych si dal vnitřnosti."~ */ GOTO 4
  IF ~~ THEN REPLY #12630 /* ~"Jaký typ... 'krysiček' jsi říkal, že prodáváš?"~ */ GOTO 5
  IF ~~ THEN REPLY #12631 /* ~"Dnes žádný... Ačkoli, položím ti otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12632 /* ~"Žadný z nich mě nezajímá, díky. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",1)
~ THEN BEGIN 1 // from:
  SAY #12560 /* ~"Zdravím, kámo; zase se setkáváme. 'Dychtíš po nějakejch' Creedenovo chutnejch krysičkách, co?"~ */
  IF ~~ THEN REPLY #12633 /* ~"Proč ne... jaké druhy máš?"~ */ GOTO 5
  IF ~~ THEN REPLY #12634 /* ~"To sním dřív kus sebe, než tohle svinstvo!"~ */ GOTO 4
  IF ~~ THEN REPLY #12635 /* ~"Ne, ne dnes. Avšak pro tebe mám jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12636 /* ~"Ne děkuji. Měj se."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #12561 /* ~Každá krysa je stažená z kůže a zbavená vnitřností, jejich nohy a ocasy odstraněny; mírně se houpou na háčcích, kterými jsou za krk pověšeny na tyči. Když jsi prozkoumal různé způsoby, kterými byly připraveny, zjistil jsi, že jejich hlavy jsou mírně zdeformovány -- z každé lebky čouhá do spirál stočený baňatý uzel kostí, připomíná to mozkovou tkáň.~ */
  IF ~~ THEN REPLY #12637 /* ~"Jsou to divně vypadající krysy."~ */ GOTO 3
  IF ~~ THEN REPLY #12638 /* ~"Jednu si vezmu."~ */ GOTO 5
  IF ~~ THEN REPLY #12639 /* ~"Takový odpad nejím."~ */ GOTO 4
  IF ~~ THEN REPLY #12640 /* ~"Nic pro mě, díky. I když na tebe mám nějakou otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12641 /* ~"Krysa, to není pro mě. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9344 /* ~"Hele, kámo, vážně máš bystrý voči! Ale já prodávám jenom tu kraniovou havěť... zaručuju ti, že nic tak dobrýho si ještě neměl. Vážně sou skvělý!" Ještě jednou ti je nabídnul, lákavě ti zamával tyčí před obličejem... krysy se houpaly sem a tam, napíchnuté na háčkách jako malé kousky hovězího.~ */
  IF ~~ THEN REPLY #12642 /* ~"Inteligentní havěť?"~ */ GOTO 22
  IF ~~ THEN REPLY #12643 /* ~"Zkusím jednu."~ */ GOTO 5
  IF ~~ THEN REPLY #12644 /* ~"Nechutné. To sním dřív kus sebe, než tohle svinstvo."~ */ GOTO 4
  IF ~~ THEN REPLY #12645 /* ~"Zajímavé. Mám na tebe otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12646 /* ~"To je všechno, co jsem potřeboval slyšet. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.2 3.2 5.4 6.1 7.1 8.1 9.1 59.1 60.1
  SAY #12562 /* ~Muž nevypadá ani trochu zneklidněně; vlastně na tebe zvesela pomrkává. "Poslouchej, příteli -- ty nevíš, vo co přicházíš'! Budu tu, jesli si to rozmyslíš..." Muž se vrátil k nabízení svých krys kolemjdoucím.~ */
  IF ~~ THEN DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 2.1 3.1 10.1 11.1 12.1 13.1 15.11 59.0 60.0 61.0
  SAY #12563 /* ~"Dobrá, kámo, dobrá! Kerou bys rád?" Ukázal na každou zvlášť zašpiněným nehtem. "Mám je pečené, vařené, kořeněné i mírně připálené! Všechny čerstvé, vynikající chuti... a jenom tři měďáky za dva kousky!"~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12647 /* ~"Pečenou."~ */ DO ~TakePartyGold(3)
~ GOTO 6
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12648 /* ~"Kořeněnou."~ */ DO ~TakePartyGold(3)
~ GOTO 7
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12649 /* ~"Vařenou."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12650 /* ~"Mírně připálenou."~ */ DO ~TakePartyGold(3)
~ GOTO 9
  IF ~~ THEN REPLY #12651 /* ~"Báječné? To jistě. Kdo jen by to mohl odmítnout?"~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12652 /* ~"Nemám na to... ale mám nějaké otázky..."~ */ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12653 /* ~"Nemám na to... Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12654 /* ~"Na druhou stranu, nic pro mě. Ale mám otázku..."~ */ GOTO 15
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12655 /* ~"Popřemýšlím o tom, ale takový hlad nemám. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12564 /* ~Odevzdal jsi měďáky a on v okamžiku provlékl skrz pár pečených krys dřevěnou špejli, sundal je z háčku a položil ti je do rukou. Mrká na tebe: "Nech si chutnat, kámo!"~ */
  IF ~~ THEN REPLY #12656 /* ~Sněz 'krysičku.'~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #12657 /* ~S odporem to zahoď.~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12565 /* ~Odevzdal jsi měďáky a on v okamžiku provlékl skrz pár kořeněných krys dřevěnou špejli, sundal je z háčku a položil ti je do rukou. Mrká na tebe: "Nech si chutnat, kámo!"~ */
  IF ~~ THEN REPLY #12658 /* ~Sněz 'krysičku.'~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #12659 /* ~S odporem to zahoď.~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #12566 /* ~Odevzdal jsi měďáky a on v okamžiku provlékl skrz pár vařených krys dřevěnou špejli, sundal je z háčku a položil ti je do rukou. Mrká na tebe: "Nech si chutnat, kámo!"~ */
  IF ~~ THEN REPLY #12660 /* ~Sněz 'krysičku.'~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #12661 /* ~S odporem to zahoď.~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #12567 /* ~Odevzdal jsi měďáky a on v okamžiku provlékl skrz pár mírně připálených krys dřevěnou špejli, sundal je z háčku a položil ti je do rukou. Mrká na tebe: "Nech si chutnat, kámo!"~ */
  IF ~~ THEN REPLY #12662 /* ~Sněz 'krysičku.'~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #12663 /* ~S odporem to zahoď.~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #12568 /* ~Krysí maso je jemné a šťavnaté; jde snadno od kosti a rozpadá se ti na jazyku. Je mírně omaštěné a dosti vydatné, chutná jako nějaký... jiný... druh masa, o kterém víš, že už jsi ho měl někdy předtím. Muž na tebe s očekáváním hledí. "Zachutnalo? Chceš eště další?"~ */
  IF ~~ THEN REPLY #12664 /* ~"Bylo to dobré, ale mám otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12665 /* ~"V pořádku, dám si ještě."~ */ GOTO 5
  IF ~~ THEN REPLY #12666 /* ~"Ne, smrdělo to."~ */ GOTO 14
  IF ~~ THEN REPLY #12667 /* ~"Už víc nechci. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #12569 /* ~Krysí maso je aromatické a dosti pikantní, zřejmě bylo před vařením marinované v nějakém druhu bylinné směsi. Je mírně omaštěné a dosti vydatné, chutná jako nějaký... jiný... druh masa, o kterém víš, že už jsi ho měl někdy předtím. Muž na tebe s očekáváním hledí. "Zachutnalo? Dáš si eště?"~ */
  IF ~~ THEN REPLY #12668 /* ~"Bylo to dobré, ale mám otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12669 /* ~"V pořádku, dám si ještě."~ */ GOTO 5
  IF ~~ THEN REPLY #12670 /* ~"Ne, páchlo to."~ */ GOTO 14
  IF ~~ THEN REPLY #12671 /* ~"Už víc nechci. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #12570 /* ~Krysí maso připravené tímto způsobem je bez chuti a navíc gumové. Chutná matně jako nějaké... jiné... maso, o kterém víš, že už jsi ho měl někdy předtím. Jsi přesvědčen, že by připravené jiným způsobem mohlo chutnat lépe; nedokážeš si představit, proč by měl *kdokoli* maso vařit, aby ho jedl. Muž na tebe s očekáváním hledí. "Zachutnalo? Chceš eště další?"~ */
  IF ~~ THEN REPLY #12672 /* ~"Bylo to dobré, ale mám otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12673 /* ~"V pořádku, dám si ještě."~ */ GOTO 5
  IF ~~ THEN REPLY #12674 /* ~"Ne, páchlo to."~ */ GOTO 14
  IF ~~ THEN REPLY #12675 /* ~"Už víc nechci. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #12571 /* ~Krysa je na povrchu připálená a křupavá, ale jemná a šťavnatá uvnitř. Je mírně omaštěná a dosti vydatná, chutná jako nějaký... jiný... druh masa, o kterém víš, že už jsi ho jedl někdy předtím. Muž na tebe s očekáváním hledí. "Zachutnalo? Chceš eště další?"~ */
  IF ~~ THEN REPLY #12676 /* ~"Bylo to dobré, ale mám otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12677 /* ~"V pořádku, dám si ještě."~ */ GOTO 5
  IF ~~ THEN REPLY #12678 /* ~"Ne, smrdělo to."~ */ GOTO 14
  IF ~~ THEN REPLY #12679 /* ~"Už víc nechci. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 12.2 13.2 61.1
  SAY #12572 /* ~Vypadá skutečně překvapeně. "To je mi líto, že to slyšim kámo. Přeju dobrej den." Vypadá, že se chce odvrátit.~ */
  IF ~~ THEN REPLY #12680 /* ~"Počkej; mám otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12681 /* ~Nechej ho jít.~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.3 1.2 2.3 3.3 5.5 5.7 10.0 11.0 12.0 13.0 14.0 16.1 17.1 18.2 19.2 20.0 21.1 22.1 23.3 24.1 25.2 26.2 27.2 28.2 29.2 30.2 33.1 34.1 35.2 36.2 37.2 38.1 39.5 40.2 41.3 42.1 43.2 44.1 45.0 46.1 47.3 48.3 49.0 50.0 51.2 52.2 53.1 54.0 55.1 56.1 57.1 58.1 60.2 61.2 62.1 63.0
  SAY #12573 /* ~Ležérně si na rameni pohazuje tyčí s krysami. "Co máš za votázku, brachu?"~ */
  IF ~  Global("RP_Portal","GLOBAL",2)
~ THEN REPLY #48399 /* ~"Měl jsem se zeptat muže jménem Creeden před Úřadem pro sledování škůdců a nemocí na zasypaný průchod na Hadrníkově náměstí. Můžeš mi pomoct?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",3)
~ JOURNAL #47844 /* ~Muž jménem Creeden mi pověděl, že pokud se chci dostat skrz neřádstvem zamořené Hadrníkovo náměstí, mám se vyptat ženy, co se jmenuje Nalls. Řekl, že Nalls snad najdu severovýchodně od Úřadu pro sledování škůdců a nemocí, jak se potuluje kolem hromady veteše.~ */ GOTO 63
  IF ~~ THEN REPLY #12682 /* ~"Kdo jsi?"~ */ GOTO 21
  IF ~~ THEN REPLY #12683 /* ~"Chtěl jsem si s tebou promluvit o krysách..."~ */ GOTO 23
  IF ~~ THEN REPLY #12684 /* ~"Co je to za budovu, tu za tebou?"~ */ GOTO 17
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12685 /* ~"Můžeš mi říci něco o tomto... městě?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12686 /* ~"Můžeš mi říci něco o Sigilu?"~ */ GOTO 28
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #12687 /* ~"Můžeš mi povědět o těchto chudinských místech?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 35
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #12688 /* ~"Můžeš mi říci něco o Úlu?"~ */ GOTO 36
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12689 /* ~"Můžeš mi říci o Paní Bolesti?"~ */ GOTO 50
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12690 /* ~"Znáš někoho jménem Pharod?"~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12691 /* ~"Postrádám deník. Neviděl jsi nějaký?"~ */ GOTO 54
  IF ~~ THEN REPLY #12692 /* ~"Rád bych jednu z těch krys, které máš."~ */ GOTO 5
  IF ~~ THEN REPLY #12693 /* ~"Nic. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 16 // from: 23.0
  SAY #12574 /* ~"Co? Tyhle?" Pohupuje tyčí, což způsobuje, že z kůže stažené krysy poskakují v malém strašidelném rytmu. "Chyt sem je sám, chyt sem je... ve sklepích a průchodech Úlu."~ */
  IF ~~ THEN REPLY #12694 /* ~"Aha. Řekni mi to o tom 'Úlu.'"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #12695 /* ~"Mám jiný dotaz."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12696 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 17 // from: 15.3
  SAY #12575 /* ~Letmo pohlédl přes rameno. "To je Úřad pro sledování škůdců a nemocí, kámo. Prodávám tam krysí ocasy za penízky, tam ty malý neřády navařej a prodaj."~ */
  IF ~~ THEN REPLY #12697 /* ~"Někdo platí za ocasy tamtěch krys?"~ */ GOTO 18
  IF ~~ THEN REPLY #12698 /* ~"Mám jiný dotaz..."~ */ GOTO 15
  IF ~~ THEN REPLY #12699 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 18 // from: 17.0 26.1 47.1 48.2 57.0
  SAY #12576 /* ~"Přesně tak, kámo! V Úřadu pro sledování škůdců a nemocí je trouba jménem Lort, kerej za ně štědře platí. Měďák za hlavu -- ee, za vocas -- jo, tak je to správně, eh. Ale musí to bejt ta inteligentní havěť, ne jen... vobyčejný krysy."~ */
  IF ~~ THEN REPLY #12700 /* ~"Řekni mi víc o tom chlápkovi jménem Lort."~ */ GOTO 19
  IF ~~ THEN REPLY #12701 /* ~"Inteligentní havěť?"~ */ GOTO 22
  IF ~~ THEN REPLY #12702 /* ~"Zajímavé. Odpověz mi na něco jiného..."~ */ GOTO 15
  IF ~~ THEN REPLY #12703 /* ~"Aha. To je prozatím vše; sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #12577 /* ~"Jmenuje se Phineas. Phineas Lort. Myslim, že to byl ňákej šlechtic, byl zapuzenej svejma rivalama a uchytil se až tady v prdeli světa, v Sigilu. Ten hlupák tady sedí sám dnem i nocí, jako kdyby čekal jenom na to, až mu někdo přinese vocasy, aby za ně moh zaplatit majlant. A víš co je na tom to nejlepší? Ten ubohej vůl musí bejt na krysy alergickej, páč vždycky dostane ohromnou vyrážku! Ho ho! Dobrej Bože, nechápu toho chlápka."~ */
  IF ~~ THEN REPLY #12704 /* ~"'Zapuzený?' Ty víš, proč byl zapuzený?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #12705 /* ~"Sigil?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12706 /* ~"V pořádku. Mám jiný dotaz..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12707 /* ~"Třeba mu někdy oplatím návštěvu. Sbohem."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12578 /* ~"No, víš, von je šíleně upindanej, on je -- hodiny bude natřásat tu svojí chlupatou prdel, jenom aby ukázal, jak je uhlazenej a podobně. Možná kvůli tomu, nebo tak něco." Krčí rameny.~ */
  IF ~~ THEN REPLY #12708 /* ~"Chápu. Jiná otázka..."~ */ GOTO 15
  IF ~~ THEN REPLY #12709 /* ~"Třeba si s ním zajdu popovídat. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY #12579 /* ~"Co, já? Proč, já jsem Creeden, někdy nazývaný Creed -- Řezník Krys!" Majestátně se usmívá, vystavujíc tak zanícenou řadu zažloutlých, polámaných a zohýbaných zubů.~ */
  IF ~~ THEN REPLY #12710 /* ~"Určitě vypadáš... přátelštěji... něž většina kolem."~ */ GOTO 49
  IF ~~ THEN REPLY #12711 /* ~"Nazdar, Creedene. Mám jinou otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12712 /* ~"Možná si opět promluvíme, Creedene. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 3.0 18.1 23.2 47.2
  SAY #12580 /* ~"Jo, kámo, inteligentní havěť. Páchnoucí stvoření, jasný. Víš, takový normální krysy žerou zásoby a množí se, roznáší nemoci a tak... votrava, vopravdu, ale nic víc. Taková *kraniokrysa*, ačkoliv -- *Já* pasu zrovna po týdle inteligentní havěti -- ta je skutečnej problém. Pokud jich potkáš víc pohromadě (a samotné se většinou bojí), začnou se chovat bystře, víš... někdy *opravdu* bystře."~ */
  IF ~~ THEN REPLY #12713 /* ~"Stávají se víc inteligentní?"~ */ GOTO 24
  IF ~~ THEN REPLY #12714 /* ~"Aha. Mám nějaké jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12715 /* ~"To je všechno, co jsem potřeboval vědět. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 23 // from: 15.2
  SAY #12581 /* ~Hlasitě se řehtá; jeho dech je zatuchlý a páchne po česneku. "Tak na tohle jsem tak trochu expert! Co máš za votázku, kámo?"~ */
  IF ~~ THEN REPLY #12716 /* ~"Kde získáváš všechny ty krysy?"~ */ GOTO 16
  IF ~~ THEN REPLY #12717 /* ~"Kde je nejlepší místo na lovení krys?"~ */ GOTO 62
  IF ~~ THEN REPLY #12718 /* ~"Pověz mi o krysách, které chytáš."~ */ GOTO 22
  IF ~~ THEN REPLY #12719 /* ~"Nic. Dovolíš, abych se tě ještě na něco zeptal..."~ */ GOTO 15
  IF ~~ THEN REPLY #12720 /* ~"Nevadí. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #12582 /* ~"No to se vsaď, tak jak před tebou stojím, stávají! Kdybych se náhodou s větším počtem potkal, tak bych utíkal jakoo *o život*..." Přerušil svoje slova, aby poslední z nich zdůraznil. "...to bych udělal! Jakmile se spolčí do velký grupy, no tak... no tak se stanou chytrý jako kterejkoliv člověk, to mi věř!"~ */
  IF ~~ THEN REPLY #12721 /* ~"Pokračuj..."~ */ GOTO 25
  IF ~~ THEN REPLY #12722 /* ~"Zajímavé. Dovolíš, abych se tě ještě na něco zeptal..."~ */ GOTO 15
  IF ~~ THEN REPLY #12723 /* ~"Aha... to je vše, co právě teď potřebuji vědět. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12583 /* ~"Tady je moje nejlepší rada, příteli... když se rozhodneš dostat tu inteligentní havěť, drž se malých skupinek. Přibližně deseti, nebo tak nějak, maximálně. Ale řeknu ti..." Přišel až k tobě, jeho dech ti zasmrděl do tváře, a ztišeným tónem říká: "Pokud jich potkáš víc než... víc než dvakrát tolik... utíkej, jako kdybys měl Paní v patách!" Zase se od tebe odvrátil.~ */
  IF ~~ THEN REPLY #12724 /* ~"Proč? Čeho je se tam bát?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #12725 /* ~"Paní?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #12726 /* ~"Pak si na ně tedy dám pozor. Mám jinou otázku..."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12727 /* ~"Vezmu to v potaz. Sbohem."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12584 /* ~"Kouzla, příteli... kouzla! Pokud jich je víc pohromadě, vzrostou jim všechny druhy jejich zvláštních sil! I největšim tvrďákům vymačkaj mozek ušima, to oni dokážou! Je to naprosto úděsný... řikam ti, je to dost zlý. To je důvod, proč se jich Sigilané tak dychtí zbavit... dychtí moc a všichni."~ */
  IF ~~ THEN REPLY #12728 /* ~"Sigil?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12729 /* ~"Mimořádná odměna? Někdo platí za krysí ocasy?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #12730 /* ~"Rozumím. Dovol, abych se tě na něco zeptal..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12731 /* ~"Aha. To je vše, co jsem chtěl prozatím vědět. Sbohem."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 27 // from: 15.4
  SAY #12585 /* ~"Myslíš Sigil? Copak bys chtěl o tý starý Kleci vědět, příteli?"~ */
  IF ~~ THEN REPLY #12732 /* ~"Proč to nazýváš Klecí?"~ */ GOTO 29
  IF ~~ THEN REPLY #12733 /* ~"Kde to přesně je?"~ */ GOTO 42
  IF ~~ THEN REPLY #12734 /* ~"Ve skutečnosti nic. Ale mám jiné dotazy..."~ */ GOTO 15
  IF ~~ THEN REPLY #12735 /* ~"Nic... nevadí. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 28 // from: 15.5 19.1 26.0
  SAY #12586 /* ~"Ano, Sigil... Klec... co sháníš za informace, kámo?"~ */
  IF ~~ THEN REPLY #12736 /* ~"Proč to nazýváš Klecí?"~ */ GOTO 29
  IF ~~ THEN REPLY #12737 /* ~"Kde to přesně je?"~ */ GOTO 42
  IF ~~ THEN REPLY #12738 /* ~"Ve skutečnosti nic. Ale mám jiné dotazy..."~ */ GOTO 15
  IF ~~ THEN REPLY #12739 /* ~"Nic... nevadí. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #12587 /* ~Potřásá hlavou a směje se, což způsobuje, že mrtvá havěť na jeho tyči poskakuje sem a tam. "Víš, kámo, důvodem jsou všechny ty dveře. Někteří lidé nazývají Sigil 'Městem bran'... magické brány jsou všude a... vedou kamkoliv. Tím myslím *kamkoliv*! Ale má to jeden háček... všechny jsou zamčené! A tak je Sigil Klecí víc, než cokoliv jiného... můžeš přicházet a odcházet jenom, když máš ten správnej klíč."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12740 /* ~"Řekni mi o těch branách a klíčích"~ */ GOTO 30
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12741 /* ~"Řekni mi o těch branách a klíčích"~ */ GOTO 31
  IF ~~ THEN REPLY #12742 /* ~"Aha. Dovol, abych se tě zeptal na další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #12743 /* ~"To je vše, co jsem chtěl zatím vědět. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #12588 /* ~"He-he! Chceš vědět všechno možné, a nevíš přesně co! Dobře, ve zkratce je všechno takhle: Klec je plná bran. Tyto brány jsou všude, po celém Sigilu... ale nemůžeš je zahlídnout, ne dokud nemáš ten správnej klíč. Každá brána má svůj vlastní klíč, a každej klíč je jinej. Jeden může bejt skutečnej klíč, třeba mosaznej, jasný? Ale jinej by mohl bejt... řekněme... vařená krysa! Nebo třeba malej napínáček, kterej byl vpředu na dveřích. Jakmile ten správnej klíč máš, můžeš jima proběhnout a jít kamkoliv tě zanesou."~ */
  IF ~~ THEN REPLY #12744 /* ~"Jak bys mohl poznat, kam dveře vedou?"~ */ GOTO 33
  IF ~~ THEN REPLY #12745 /* ~"Jak zjistíš, jaký klíč otevírá jakou bránu?"~ */ GOTO 34
  IF ~~ THEN REPLY #12746 /* ~"Zajímavé. Mám ještě jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12747 /* ~"Díky za informace. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #12589 /* ~Krysař zmateně zírá na Morteho, který se vznáší za tebou. "Kdekdo si myslí, že tvůj mimir o tom něco ví, měl by..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 155
END

IF ~~ THEN BEGIN 32 // from:
  SAY #12590 /* ~Krysař na vás oba zmateně zírá, nerozumí, náhle pochopí, že je pořád středem pozornosti. Přestane mít zmatený výraz a uvede se do pořádku.~ */
  IF ~~ THEN REPLY #12748 /* ~Nechej ho mluvit.~ */ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 30.0 34.0
  SAY #12591 /* ~Mračí se, jak v hlavě přemílá odpověď. "Pokud znáš klíč, měl bys už vědět, kam brána vede. Když jsi nějakou otevřel náhodně, musel bys pak být opatrný, řekněme, že by jsi měl být. Mohl bys zkusit vsunout hlavu kousek  dovnitř a nakouknout... ale některé brány tě pak vtáhnou! Mohl by ses dostat do všelijakých ošklivých míst, příteli, zvaž moje slova.~ */
  IF ~~ THEN REPLY #12749 /* ~"Jak zjistíš, jaký klíč otevírá jakou bránu?"~ */ GOTO 34
  IF ~~ THEN REPLY #12750 /* ~"Zajímavé. Dovol, abych se tě zeptal na něco jiného..."~ */ GOTO 15
  IF ~~ THEN REPLY #12751 /* ~"Rozumím. Díky za tvé odpovědi; sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 34 // from: 30.1 33.0
  SAY #12592 /* ~Krčí rameny, navíc pohupuje tyčí s krysami, čímž vařená havěť chrastí dvakrát tolik. "Musel by ses zeptat těch správnejch lidí. Lidí, který znaj pozadí těchhle věcí, předpokládám. Podívej, některé brány jsou pořád na jednom místě a některé se pohybují... bylo by nekonečně pitomě úmorný všechny sledovat. Sám brány moc nepoužívám, takže pro tebe nebudu velká pomoc."~ */
  IF ~~ THEN REPLY #12752 /* ~"Jak bys mohl poznat, kam brána vede?"~ */ GOTO 33
  IF ~~ THEN REPLY #12753 /* ~"Zajímavé. Dovol, abych se tě zeptal na něco jiného..."~ */ GOTO 15
  IF ~~ THEN REPLY #12754 /* ~"Rozumím. Díky za tvé odpovědi; sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 35 // from: 15.6
  SAY #12593 /* ~Na chvíli vypadá zmateně. "Co tady těch v Úlu? Po čem pátráš, příteli?"~ */
  IF ~~ THEN REPLY #12755 /* ~"Víš, proč se tomu říká Úl?"~ */ GOTO 37
  IF ~~ THEN REPLY #12756 /* ~"Co je tu zajímavého?"~ */ GOTO 39
  IF ~~ THEN REPLY #12757 /* ~"Nic, nevadí. Mám něco jiného, na co bych se zeptal..."~ */ GOTO 15
  IF ~~ THEN REPLY #12758 /* ~"Nevadí; to je všechno. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 36 // from: 15.7 16.0
  SAY #12594 /* ~"Můj vlastní domov a zároveň místo obchodu! Po čem si to pátral, příteli?"~ */
  IF ~~ THEN REPLY #12759 /* ~"Víš, proč se tomu říká Úl?"~ */ GOTO 37
  IF ~~ THEN REPLY #12760 /* ~"Co je tu zajímavého?"~ */ GOTO 39
  IF ~~ THEN REPLY #12761 /* ~"Nic, nevadí. Mám něco jiného, na co bych se zeptal..."~ */ GOTO 15
  IF ~~ THEN REPLY #12762 /* ~"Nevadí; to je všechno. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #12595 /* ~"Hmmm..." krysař se škrábe na bradě, je vidět, jak za jeho prsty zůstavají mastné skvrny. "Existuje o tom spousta příběhů... jak to chápu já, někde je skupina budov, nějaká změť špíny, trosek a chatrčí, která slouží jako útočiště vodpadlíků. Říkalo se tomu Úl, a tak odtud tyhle místa... tyhle zapadákovy... maj svoje jméno."~ */
  IF ~~ THEN REPLY #12763 /* ~"Útočiště odpadlíků? Jakých?"~ */ GOTO 38
  IF ~~ THEN REPLY #12764 /* ~"Aha. Co je tady zajímavého?"~ */ GOTO 39
  IF ~~ THEN REPLY #12765 /* ~"Hmmm. Mám nějaké jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12766 /* ~"Díky za informace. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #12596 /* ~Mužův přátelský výraz mizí: "Těch, co dělaj problémy, kámo. Jestli to místo najdeš, doporučil bych ti tam nechodit, vážně. To je všechno, co ti o tom řeknu." Utřel si nos, což tomu dodalo význam definitivní platnosti a jeho zakaboněný výraz zmizel.~ */
  IF ~~ THEN REPLY #12767 /* ~"Rozumím. Co je tady poblíž zajímavého?"~ */ GOTO 39
  IF ~~ THEN REPLY #12768 /* ~"Aha. Pak tedy dovol, abych se zeptal na něco jiného..."~ */ GOTO 15
  IF ~~ THEN REPLY #12769 /* ~"Velmi dobře. Pak tedy sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 39 // from: 35.1 36.1 37.1 38.0
  SAY #12597 /* ~"Nejsem si jistej vo co ti de, kámo. Vysvětli mi to, a snad ti starej Creeden může ukázat správnej směr."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12770 /* ~"Chci se pobavit."~ */ EXTERN ~DMORTE~ 159
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12771 /* ~"Chci se pobavit."~ */ GOTO 40
  IF ~~ THEN REPLY #12772 /* ~"Hledám práci."~ */ GOTO 47
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12773 /* ~"Pátrám po muži jménem Pharod."~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12774 /* ~"Hledám deník. Neviděl jsi nějaký?"~ */ GOTO 54
  IF ~~ THEN REPLY #12775 /* ~"Zapomeň na to. Mám nějaké jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12776 /* ~"Nevadí. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #12598 /* ~"Pár míň nebezpečnejch míst k pochlapení... Bar Zapomnění a krčma U doutnajícího nebožtíka. Nelze ti opravdu doporučit jiný místa, kámo."~ */
  IF ~~ THEN REPLY #12777 /* ~"Mohl bys mi ukázat, kde ty místa jsou?"~ */ GOTO 55
  IF ~~ THEN REPLY #12778 /* ~"Nebezpečné?"~ */ GOTO 41
  IF ~~ THEN REPLY #12779 /* ~"Díky. Mám další otázku."~ */ GOTO 15
  IF ~~ THEN REPLY #12780 /* ~"Třeba se na jednom z těch míst zastavím. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 41 // from: 40.1 55.0
  SAY #12599 /* ~Na chvíli se zamyslí, než odpoví. "Dobrá, kámo, podívej... věci tu nejsou tak dobrý. Život je těžkej, a dost. Je to zoufalý místo, plný zoufalejch lidí. Jediný co řeknu je, že některý lidi udělaj cokoliv, aby přežili, bez ohledu na to, co hlupáci okolo námítaj. Je snadný se v Úlu ztratit, velice snadný."~ */
  IF ~~ THEN REPLY #12781 /* ~"Ty vypadáš docela přátelsky..."~ */ GOTO 49
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12782 /* ~"Ztracen?"~ */ EXTERN ~DMORTE~ 160
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12783 /* ~"Ztracen?"~ */ GOTO 56
  IF ~~ THEN REPLY #12784 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12785 /* ~"Díky za informace. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 42 // from: 27.1 28.1
  SAY #12600 /* ~"Heh... a kde není, kámo? Od doby, co se Sigil dotýká každého místa... a myslím tím skutečně každýho... opravdu neexistuje místo, kterýho se nedotýká. Nejsem si jistej, jestli to skutečně někde "existuje"... na jednom místě, myslim. Myslim, že spousta rodáků ti poví, že to leží v Pustině."~ */
  IF ~~ THEN REPLY #12786 /* ~"Pustina?"~ */ GOTO 43
  IF ~~ THEN REPLY #12787 /* ~"Zvláštní. Dovol, abych se tě zeptal na něco jiného..."~ */ GOTO 15
  IF ~~ THEN REPLY #12788 /* ~"Myslím, že rozumím. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #12601 /* ~"Jo, kámo, přesně tak. Je to "takzvaný" 'Střed sfér,' kde spočívá Sigil. Co ale přesně nechápu: Pokud jsi v Sigilu, nemůžeš uniknout, aniž bys používal magický brány. Neexistuje žádný 'normální' způsob, jak se z něj dostat pryč."~ */
  IF ~~ THEN REPLY #12789 /* ~"Pokračuj..."~ */ GOTO 44
  IF ~~ THEN REPLY #12790 /* ~"Brány?"~ */ GOTO 46
  IF ~~ THEN REPLY #12791 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12792 /* ~"Zbytek si možná poslechnu jindy Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 44 // from: 43.0 46.0
  SAY #12602 /* ~"Tak. A když seš ven ze Sigilu... v Pustině, tak... nemůžeš jít do Sigilu. Představuju si to tak, že existuje nekonečně úzká kamenná špička věže, která vykukuje vzhůru nad mraky ze středu Pustiny a že se Sigil točí okolo jejího vršku!"~ */
  IF ~~ THEN REPLY #12793 /* ~"Ano... pokračuj..."~ */ GOTO 45
  IF ~~ THEN REPLY #12794 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12795 /* ~"Zbytek si možná poslechnu jindy. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #12603 /* ~Přikyvuje. "A teď pověz příteli: Když se nemůžeš dostat ze Sigilu do Pustiny, nebo z Pustiny do Sigilu, kdo říká, že fyzicky někde neexistuje?" Moudře pokyvuje, spokojen se svým malým dilematem. "Myslím. že se Sigil rozprostírá přes obě sféry, přes Všechno a Nicotu najednou."~ */
  IF ~~ THEN REPLY #12796 /* ~"Snad. Mám nějaké jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12797 /* ~"Zajímavá teorie; popřemýšlím o tom. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY #12604 /* ~"Ano, kámo, brány. Dobře, ve zkratce je všechno takhle: Klec je plná bran. Tyto brány jsou všude, po celém Sigilu... ale nemůžeš je zahlídnout, ne dokud nemáš ten správnej klíč. Každá brána maj svůj vlastní klíč, a každej klíč je jinej. Jakmile ten správnej klíč máš, můžeš jima proběhnout a jít kamkoliv tě zanesou."~ */
  IF ~~ THEN REPLY #12798 /* ~"V pořádku, pokračuj."~ */ GOTO 44
  IF ~~ THEN REPLY #12799 /* ~"Než budeš pokračovat, dovol, abych se tě zeptal na něco jiného..."~ */ GOTO 15
  IF ~~ THEN REPLY #12800 /* ~"Zbytek si možná poslechnu jindy. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 47 // from: 39.2
  SAY #12605 /* ~"V Úlu není moc práce, opravdu... většina lidí je dost zaneprázdněna získáváním obživy a samotným přežitím. Mohl bys sbírat mrtvoly, jako Sběrači... nebo bys mohl lovit inteligentní havěť, za kterou dostaneš odměnu."~ */
  IF ~~ THEN REPLY #12801 /* ~"Sběrači?"~ */ GOTO 48
  IF ~~ THEN REPLY #12802 /* ~"Lidé platí za mrtvé krysy?"~ */ GOTO 18
  IF ~~ THEN REPLY #12803 /* ~"Inteligentní havěť?"~ */ GOTO 22
  IF ~~ THEN REPLY #12804 /* ~"Aha. Mám otázku o něčem jiném..."~ */ GOTO 15
  IF ~~ THEN REPLY #12805 /* ~"Velmi dobře. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 48 // from: 47.0 52.0 58.0
  SAY #12606 /* ~Přikývnul. "Kdejakej trouba může sbírat mrtvoly a přitahnout je do Márnice; Spalovači mu zaplatí měďák za tělo, aspoň myslim. Sběrači si tim vydělávaj na živobytí, stejně jako tím, že mrtvý voberou, než jejich těla prodají. Slyšel jsem..." Snížil hlas a rychle přelétl pohledem okolí. "...že pár z nich dopomáhá některejm troubům zmizet, jestli víš, co tim myslim. Jsou to podlý lidi."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12806 /* ~"Zmizet?"~ */ EXTERN ~DMORTE~ 161
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12807 /* ~"Zmizet?"~ */ GOTO 57
  IF ~~ THEN REPLY #12808 /* ~"Říkal jsi něco o lidech platících za mrtvé krysy?"~ */ GOTO 18
  IF ~~ THEN REPLY #12809 /* ~"Zajímavé. Mám otázku o něčem jiném..."~ */ GOTO 15
  IF ~~ THEN REPLY #12810 /* ~"Velmi dobře. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 49 // from: 21.0 41.0 56.0
  SAY #12607 /* ~"Jo, kámo, zkoušim to. Taky kvůli mýmu podnikání, víš... většina lidí tady vokolo jsou jen vobyčejný čumilové a nepřátelská pakáž, ale já chci, aby každej brach věděl, že Creeden pro ně má dycinky hřejivej úsměv a v horkym kotli čerstvě uvařený krysičky!" Pomrkává na tebe.~ */
  IF ~~ THEN REPLY #12811 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12812 /* ~"Pochopitelné. Sbohem, Creedene."~ */ GOTO 59
END

IF ~~ THEN BEGIN 50 // from: 15.8 25.1
  SAY #12608 /* ~"Jo, Paní Sigilu. Nemluvím o Paní, kámo... a ty by ses na ní neměl ptát, nikoho. Přinese ti to smůlu, určitě." Udělal přes svojí hruď půlkruhové znamení.~ */
  IF ~~ THEN REPLY #12813 /* ~"Pak tedy dovol, abych se tě zeptal na něco jiného"~ */ GOTO 15
  IF ~~ THEN REPLY #12814 /* ~"Pak tedy odejdu. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 15.9 39.3
  SAY #12609 /* ~Vypadá trochu překvapeně. "Pharod? Proč by někdo hledal takovýho člověka?"~ */
  IF ~~ THEN REPLY #12815 /* ~"To je dlouhý příběh -- jenom ho potřebuju najít."~ */ GOTO 52
  IF ~~ THEN REPLY #12816 /* ~"To tě nemusí zajímat, krysaři."~ */ GOTO 53
  IF ~~ THEN REPLY #12817 /* ~"Zapomeň na co jsem se ptal. Odpověz mi na něco jiného..."~ */ GOTO 15
  IF ~~ THEN REPLY #12818 /* ~"Nevadí; zapomeň na to. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 51.0 53.0
  SAY #12610 /* ~"Je velitel bandy Sběračů, on je... pořád se stěhuje, asi, aby se vyhnul problémům. Na něj se ptej někde na Hadrníkově náměstí, tam máš větší šanci. Pharod je správně vychytralej chlápek. Kámo, dávej pozor, až se kolem něj budeš motat."~ */
  IF ~~ THEN REPLY #12819 /* ~"Sběrači?"~ */ GOTO 48
  IF ~~ THEN REPLY #12820 /* ~"Kde je to 'Hadrníkovo náměstí?'"~ */ GOTO 58
  IF ~~ THEN REPLY #12821 /* ~"V pořádku. Mám jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12822 /* ~"Díky za informace. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #12611 /* ~Creeden se mračí. "Dobře brachu, neni moje starost, kde by takovejhle člověk měl bejt."~ */
  IF ~~ THEN REPLY #12823 /* ~"Je důležité, abych ho našel... Omlouvám se za svá tvrdá slova. Mohl bys mi pomoci?"~ */ GOTO 52
  IF ~~ THEN REPLY #12824 /* ~"Tak tedy dobrá. Snad mi můžeš odpovědět na něco jiného..."~ */ GOTO 15
  IF ~~ THEN REPLY #12825 /* ~"Budiž. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 54 // from: 15.10 39.4
  SAY #12612 /* ~"Promiň kámo -- nemůžu říct, že jsem doteď nějakej viděl."~ */
  IF ~~ THEN REPLY #12826 /* ~"Mám nějaké jiné otázky"~ */ GOTO 15
  IF ~~ THEN REPLY #12827 /* ~"Pak tedy budu muset vytrvat v hledání. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 55 // from: 40.0
  SAY #12613 /* ~"Jistě kámo. Bar Zapomnění je přímo naproti Márnici a krčma U doutnajícícího nebožtíka je odtud na východ.~ */
  IF ~~ THEN REPLY #12828 /* ~"Díky. Říkal jsi něco o nebezpečných místech?"~ */ GOTO 41
  IF ~~ THEN REPLY #12829 /* ~"Mé poděkování. I když mám jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12830 /* ~"Třeba se na nějakém z těch míst zastavím. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 41.2
  SAY #12614 /* ~"Tak tak příteli... ztracen. V mrtvé knize."~ */
  IF ~~ THEN REPLY #12831 /* ~"Aha... i když ty ale vypadáš dosti přátelsky..."~ */ GOTO 49
  IF ~~ THEN REPLY #12832 /* ~"Rozumím. Jiná otázka..."~ */ GOTO 15
  IF ~~ THEN REPLY #12833 /* ~"Aha. To je vše co jsem potřeboval vědět; sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY #12615 /* ~"Správně, kámo... zmizet. Do Knihy mrtvejch."~ */
  IF ~~ THEN REPLY #12834 /* ~"Aha. Co, že jsi to povídal o lidech platících za mrtvé krysy?"~ */ GOTO 18
  IF ~~ THEN REPLY #12835 /* ~"Rozumím. Mám otázku o něčem jiném..."~ */ GOTO 15
  IF ~~ THEN REPLY #12836 /* ~"Velmi dobře. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 52.1 62.0
  SAY #12616 /* ~"Ukážu ti, kamaráde -- jenom mi podej tvojí mapu." Muž ti to ukazuje, během čehož zanechává na mapě velký, mastný otisk prstu.~ */
  IF ~~ THEN REPLY #12837 /* ~"Díky. Zmiňoval ses o Sběračích?"~ */ GOTO 48
  IF ~~ THEN REPLY #12838 /* ~"Mé díky. Mám víc otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #12839 /* ~"Díky za informace. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 3.4 15.12 16.2 17.2 18.3 19.3 20.1 21.2 22.2 23.4 24.2 25.3 26.3 27.3 28.3 29.3 30.3 33.2 34.2 35.3 36.3 37.3 38.2 39.6 40.3 41.4 42.2 43.3 44.2 45.1 46.2 47.4 48.4 49.1 50.1 51.3 52.3 53.2 54.1 55.2 56.2 57.2 58.2 62.2 63.1
  SAY #12617 /* ~Dotýká se tvé paže: "Vidím, že odcházíš, kámo, ale než půjdeš, nedal by sis nějakou pěknou, lááá-hodnou krysičku? Možná jednu na cestu, co říkáš?"~ */
  IF ~~ THEN REPLY #12840 /* ~"Proč ne..."~ */ GOTO 5
  IF ~~ THEN REPLY #12841 /* ~"To bych dříve snědl svůj vlastní jazyk."~ */ GOTO 4
  IF ~~ THEN REPLY #12842 /* ~"Ne díky. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",2)
~ THEN BEGIN 60 // from:
  SAY #12618 /* ~"Zdravim tě, příteli; tak jsme se zase potkali. Změnils názor? Vrátil ses pro jednu z Creedenovo láááá-hodných krysiček?" Lákavě zachrastil svojí tyčí s krysami.~ */
  IF ~~ THEN REPLY #12843 /* ~"Proč ne... jaké máš druhy?"~ */ GOTO 5
  IF ~~ THEN REPLY #12844 /* ~"To bych dříve snědl svůj vlastní jazyk."~ */ GOTO 4
  IF ~~ THEN REPLY #12845 /* ~"Ne, ne dnes. I když mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12846 /* ~"Ne díky. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~  Global("Creeden","AR0300",3)
~ THEN BEGIN 61 // from:
  SAY #12619 /* ~"Zdravíčko, příteli; tak se zase setkáváme. Že bys měl opět v úmyslu vyzkoušet jednu z mých láááá-hodných krysiček? Vím, že předtím sis nepochutnal, ale snad má Creeden i jinak ochucené, více se blížící tvejm přáním..."~ */
  IF ~~ THEN REPLY #12847 /* ~"Proč ne... jaké máš druhy?"~ */ GOTO 5
  IF ~~ THEN REPLY #12848 /* ~"Vůbec mě nezajímají, krysaři."~ */ GOTO 14
  IF ~~ THEN REPLY #12849 /* ~"Ne, ne dnes. I když mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12850 /* ~"Ne díky. Sbohem."~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 23.1
  SAY #12620 /* ~"Není tak lehké odpovědět, jako dřív příteli... víš, mizerové se až do těchto dní vyskytovali zřídka. Snadno jsem je chytával v tmavších uličkách a slepých, ale snad na ně jenom musim špetku přitlačit. Možná bys chtěl zkusit Hadrníkovo náměstí; všechny jejich hromady odpadků se okolo určitě hemží krysami."~ */
  IF ~~ THEN REPLY #12851 /* ~"Kde je to 'Hadrníkovo náměstí?'"~ */ GOTO 58
  IF ~~ THEN REPLY #12852 /* ~"Díky. Mám jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #12853 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 15.0
  SAY #48396 /* ~Na chvíli se zamyslí. "Jó, vim, vo čem mluvíš. Dyž sem jednou čmuchal po těch děvkách krysáckejch chlupatejch, viděl jsem holku, Nalls se menuje, jak tamtudy jednou prolezla. Ale nemám nejmenšího tušáka, jak to udělala. Mam dojem, že bys ji moh najít severovýchodne vocaď, jak vybírá ze dřeva hřebiky a tak."~ */
  IF ~~ THEN REPLY #48397 /* ~"Díky. Mám další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #48398 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ GOTO 59
END
