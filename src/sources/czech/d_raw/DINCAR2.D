// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR2~

IF ~~ THEN BEGIN 0 // from:
  SAY #52685 /* ~"Možná... možná STEJNĚ zemřeš. NIKDY nezapomínejte, že VÁS SLEDUJU, vy ZLODĚJI, vy VRAHOVÉ, VRAHOVÉ, vy všichni TŘI..."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59901 /* ~"Všichni jste ZLODĚJI... máte MÉ tělo... MÉ tělo, a to mi vrátíte ZPĚT!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 3
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63713 /* ~Muž před tebou se ti podobá, avšak má shrbená záda, jako kdyby se neustále kryl před nečekaným úderem. Nenávistně tě pozoruje a jakmile ses k němu přiblížil, zasyčel a sepjal ruce, jako by tě chtěl zardousit. Jeho ruce jsou příšerně zjizvené a drsné a vytvářejí dojem, že byly namáčeny do kyseliny. Náhle si všímaš zablýsknutí od jeho levé ruky - drží v ní vlasec.~ */
  IF ~~ THEN REPLY #63714 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Paranoid_Incarnation","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #63715 /* ~Nech muže na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63716 /* ~"VĚZ, že na tomto místě nevydržíš dlouho, ZLODĚJI!" Z mužových rtů odkápla slina a jeho tvář se zkroutila do šílené grimasy. "BLUDIŠTĚ, SMRT A ZKLAMÁNÍ jsou jedine věci, které zde najdeš..."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 55
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63717 /* ~"Co jsi tím myslel?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63718 /* ~"ZLODĚJI!" Ruka zjevení se zkroutila, jako by škrtila tu druhou. "Ucítím tvé obratle PRASKAT mezi mými prsty... Vrať mi mé TĚLO." Otočil se na tebe. "ZLODĚJI! Nosíš MÉ tělo jako plášt a ZAHANBUJEŠ mě..."~ */
  IF ~~ THEN REPLY #63719 /* ~"Nejsem zloděj! Nic sem ti nevzal!"~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #63720 /* ~"JSI zloděj!" Ruka zjevení se opět zkroutila - jako by obtáčela tvou šíji. "Ucítím tvé obratle PRASKAT mezi mými prsty... Vrať mi mé TĚLO." Otočil se na tebe. "ZLODĚJI! Nosíš MÉ tělo jako plášt a ZAHANBUJEŠ mě..."~ */
  IF ~~ THEN REPLY #63721 /* ~"Nejsem zloděj! Nic sem ti neukradl!"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #63722 /* ~"UKRADL JSI VŠECHNO! PROBOUZEL JSEM SE NA ULICÍCH PRSTENCOVÉHO MĚSTA A KAŽDÝ, KDO MĚ VIDĚL, MĚ ZNAL!" ~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63723 /* ~Sípavě vydechl. "Všichni, které sis znepřátelil, všichni, kterým jsi ublížil - ti všichni mě hledají, obviňují a chytají mě. Dokud to všechno nepřestanu snášet..." Proťal prsty vzduch. "A utiším je."~ */
  IF ~  Global("Pstone","GLOBAL",0)
~ THEN REPLY #63724 /* ~"Ty jsi ten, kdo napsal dvanáctistěnný deník - ten Uvězněný. Je to tak?"~ */ GOTO 9
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63725 /* ~"To ty jsi na mne u Smyslového kamene nastražil past, že ano? A dvanáctistěnný deník s pastmi?"~ */ GOTO 9
  IF ~  Global("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63726 /* ~"Nepletu-li se, pak zrovna tebe Paní uvěznila? Našel jsem deník... a další - dvanáctistěnný - plný pastí."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63727 /* ~"Nebyl jsi to náhodou ty... ty, kdo zaškrtil všechny tyto nebohé lidi? Našel jsem tvůj deník v Bludišti Paní... a také jsem našel další deník - dvanáctistěnný - plný pastí."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",0)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63729 /* ~"To ty jsi ten... ten, kdo uškrtil všechny tyto lidi? A ten, kdo pro mě nechal zapasťovaný deník, ten dvanáctistěnný?"~ */ GOTO 9
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63730 /* ~"To ty jsi ten... ten, kdo zabil Linguista, Fina, je to tak? A potom jsi napsal dvanáctistěnný deník v jazyku národa Uyo."~ */ GOTO 9
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #63731 /* ~Šílené zjevení tě smrtichtivě pozoruje a v okamžiku tvého přiblížení zaťalo své ruce, jako by tě chtělo zardousit. Jeho paže jsou příšerně drsné a zjizvené, skoro jako by je pravdidelně namáčel do proudu kyseliny - navíc, zdá se ti, že ve své levé ruce drží vlasec.~ */
  IF ~~ THEN REPLY #63732 /* ~"Je tu něco, co chci vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63733 /* ~Ignoruj stvoření hrůzy.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 7.2 7.3 7.4 7.5 8.0 10.0 11.1 12.1 14.0 15.0 16.0 17.0 18.3 19.2 20.0 21.1 22.0 26.0
  SAY #63734 /* ~Opatrným pohledem se k tobě přisál - a zdá se, že pouhý pohled na tvé tělo mu nedělá dobře.~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63735 /* ~"Abych se mohl dostat z tohoto bezútěšného místa, musíš se znovu stát součástí mě samého. Učiníš tak?"~ */ GOTO 18
  IF ~  GlobalGT("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #63736 /* ~"To ty jsi zažehl jiskru ohně mezi Ianniinými dědici, že ano? Snažíš se zničit mé dědictví?"~ */ GOTO 10
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63737 /* ~"Past u Senzorického kamene - tu jsi tam na mne nastražil ty, ano?"~ */ GOTO 11
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #63738 /* ~"Byl jsi to ty, kdo zardousil všechny ty lidi v Sigilu?"~ */ GOTO 14
  IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN REPLY #63739 /* ~"Ty jsi ten vězeň Paní, je to tak? Našel jsem tvůj deník v Bludišti."~ */ GOTO 15
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63740 /* ~"Tobě se dává za vinu vražda Linguista Fina?~ */ GOTO 16
  IF ~~ THEN REPLY #63741 /* ~"Co se stalo s tvojí rukou?"~ */ GOTO 17
  IF ~~ THEN REPLY #63742 /* ~"Víš, jak bych se mohl dostat z tohoto místa?"~ */ GOTO 20
  IF ~~ THEN REPLY #63743 /* ~"Co všechno víš o dalších stvořeních?"~ */ GOTO 21
  IF ~  OR(2)
CheckStatGT(Protagonist,15,INT)
GlobalGT("P_Journal","GLOBAL",3)
Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63744 /* ~Jazyk národa Uyo: (Můžeme si promluvit mezi čtyřma očima?)~ */ GOTO 23
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63745 /* ~Jazyk národa Uyo: (Můžeme so promluvit mezi čtyřma očima.)~ */ GOTO 25
  IF ~  GlobalGT("Choke","GLOBAL",0)
GlobalLT("Choke","GLOBAL",6)
~ THEN REPLY #63746 /* ~Obejmi jeho krk rukama a uškrť ho.~ */ GOTO 30
  IF ~  GlobalGT("Choke","GLOBAL",5)
~ THEN REPLY #63747 /* ~Obejmi jeho krk rukama a uškrť ho.~ */ GOTO 38
  IF ~~ THEN REPLY #63748 /* ~"Zapomeň na to. Promluvíme si ještě později."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #63749 /* ~"SPÁLIL jsem ty lejstra lží. SAMÉ lži, lži o mém FALEŠNÉM ŽIVOTĚ..." ~ */
  IF ~~ THEN REPLY #63750 /* ~"Ještě něco bych chtěl vědět."~ */ GOTO 9
  IF ~~ THEN REPLY #63751 /* ~"Ještě si promluvíme později... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #63752 /* ~"Ano..." Zasmál se sklíčeným úsměvem plným zla. "Prostá past. Past na někoho, kdo nemůže zemřít - past MYSLI."~ */
  IF ~~ THEN REPLY #63753 /* ~"Víš, nebyl problém té pasti uniknout."~ */ GOTO 12
  IF ~~ THEN REPLY #63754 /* ~"Ještě na něco bych se tě chtěl zeptat."~ */ GOTO 9
  IF ~~ THEN REPLY #63755 /* ~"Ještě se uvidíme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #63756 /* ~Úsměv ztuhl zjevení na tváři. "LŽEŠ!"~ */
  IF ~~ THEN REPLY #63757 /* ~"Nelžu, bylo to neskutečně jednoduché. Nestálo mě to vůbec žádnou námahu."~ */ GOTO 13
  IF ~~ THEN REPLY #63758 /* ~"Jak myslíš. Mám ještě další otázky."~ */ GOTO 9
  IF ~~ THEN REPLY #63759 /* ~"Ještě se tu objevím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63760 /* ~"PROLHANÝ ZLODĚJI!" V jeho očích jako by vzplály plameny a v ten okamžik zaťal svou levou pěst... a potom *škubnul*, stehy na jeho rameni se začli pomalu párat, rozplétat...~ */
  IF ~~ THEN REPLY #63761 /* ~"Co to - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SmallWait(1)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63762 /* ~V jeho očích se náhle zatmělo, tma pokryla zorničku, jako by si na něco vzpomněl - na něco opravdu nemilého. Začal se nepatrně třást. "Tvdili, že mě znají. UTIŠIT je, zastavit jejich hlas. Vyčítám si to, vyčítám..."~ */
  IF ~~ THEN REPLY #63763 /* ~"Chápu, ještě na něco bych se tě chtěl zeptat."~ */ GOTO 9
  IF ~~ THEN REPLY #63764 /* ~"Promluvíme si ještě později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.4
  SAY #63765 /* ~"Prostý únik, prostá past, s klidem zničit její bludiště, to jsem chtěl. Chtěl jsem to udělat přesnější, smrtelnější." Usmál se. "Nevěděla co to obnáší - uvěznit MĚ."~ */
  IF ~~ THEN REPLY #63766 /* ~"Nejspíš máš pravdu. Ještě na něco bych se zeptal, pokud dovolíš"~ */ GOTO 9
  IF ~~ THEN REPLY #63767 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63768 /* ~"Mnoho..." Na chvilku se v jeho tváři značilo zmatení. "MNOHO jich bylo. Těch, které jsem zabil. Mnozí museli být utišeni."~ */
  IF ~~ THEN REPLY #63769 /* ~"Ach tak. Potřeboval bych vědět ještě něco."~ */ GOTO 9
  IF ~~ THEN REPLY #63770 /* ~"Ještě se uvidíme, později."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.6
  SAY #63771 /* ~Na moment přejel zrakem přes svou ruku, pak opět vzhlédl a usmál se. "Nechtěla držet... takže jsem ji znovu přišil."~ */
  IF ~~ THEN REPLY #63772 /* ~"Jsou tu ještě další nezodpovězené otázky."~ */ GOTO 9
  IF ~~ THEN REPLY #63773 /* ~"Ještě si promluvíme později."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0
  SAY #63774 /* ~"To radši ZEMŘU."~ */
  IF ~~ THEN REPLY #63775 /* ~"Smrt taky poslouží dobře. Ale já ti dávám šanci žít."~ */ GOTO 19
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63776 /* ~"Pak se tedy připrav na smrt."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63777 /* ~"Pak se tedy připrav na smrt."~ */ GOTO 34
  IF ~~ THEN REPLY #63778 /* ~"Mám pro tebe pár otázek."~ */ GOTO 9
  IF ~~ THEN REPLY #63779 /* ~"Později si o tom ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63780 /* ~"NIKDY." Poslední slovo doslova vyplivl: "ZLODĚJI."~ */
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63781 /* ~"Pak se tedy připrav na smrt."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63782 /* ~"Pak se tedy připrav na smrt."~ */ GOTO 34
  IF ~~ THEN REPLY #63783 /* ~"Mám pro tebe pár otázek."~ */ GOTO 9
  IF ~~ THEN REPLY #63784 /* ~"Později si o tom ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.7
  SAY #63785 /* ~"NIKDY ti to nepovím. A ty se odtud NIKDY nedostaneš..." Usmál se. "Tady je KLID. KLID a MÍR."~ */
  IF ~~ THEN REPLY #63786 /* ~"Jak myslíš... ještě mám další otázky."~ */ GOTO 9
  IF ~~ THEN REPLY #63787 /* ~"Ještě si to někdy vyjasníme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.8
  SAY #63788 /* ~"ZLODĚJI. Jsou to ZLODĚJI - každý jeden z nich. A ZLODĚJI umírají."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 56
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63789 /* ~"Ještě pár věcí bych chtěl vědět."~ */ GOTO 9
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63790 /* ~"Ještě si o tom promluvíme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63791 /* ~"Jsi ZLODĚJ! Ukradl jsi mi tělo a celý život! A ZLODĚJI UMÍRAJÍ!"~ */
  IF ~~ THEN REPLY #63792 /* ~"Mám pro tebe ještě několik dalších otázek."~ */ GOTO 9
  IF ~~ THEN REPLY #63793 /* ~"Uvidíme se ještě někdy jindy. Zatím sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.9
  SAY #63794 /* ~Jak mluvíš jazykem národa Uyo, oči muže se rozšířily a ten na tebe strnule civěl. Po chvíli ticha ti muž odpověděl v té samé řeči. (Pouze já znám řeč národa Uyo. Jakto, že jí ovládáš i ty?)~ */
  IF ~~ THEN REPLY #63795 /* ~(Máš pravdu: pouze ty jediný ovládáš řeč národa Uyo. Takže pokud jí vládnu i já, pak musím být ty.)~ */ DO ~SetAnimState("Incar2",ANIM_MIMESTAND)
~ GOTO 24
  IF ~~ THEN REPLY #63796 /* ~(Nelam si s tím hlavu, později ti to vysvětlím. Vyčkej tu do mého návratu.)~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63797 /* ~Muž stále mlčí a upřeně se na tebe dívá. ~ */
  IF ~~ THEN REPLY #63798 /* ~(To protože ti *ostatní*, kteří nejsou tebou, nevládnou darem řeči národa Uyo.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 9.10 24.0
  SAY #63799 /* ~Přikývl... pomalu. (Já tě slyšel.)~ */
  IF ~  Global("Know_Merge","GLOBAL",0)
~ THEN REPLY #63800 /* ~(Až udeřím, stůj při mém boku. Společně zabijeme zloděje, teprve pak poznáme mír.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63801 /* ~(Toto místo ale dokáže člověka zmást - oba dva jsme ty a teď nadešel čas, kdy se musíme stát jedním.)~ */ GOTO 27
  IF ~~ THEN REPLY #63802 /* ~(Ještě si promluvíme znovu, ty a já. Počkej tu na mě.)~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63803 /* ~(Já udeřím až ty udeříš.)~ */
  IF ~~ THEN REPLY #63804 /* ~"Ještě jiné věci mi leží na srdci..."~ */ GOTO 9
  IF ~~ THEN REPLY #63805 /* ~(Měli bychom si o tom ještě někdy promluvit. Vyčkej tady.)~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63806 /* ~Do tváře se mu vedral překvapený výraz. "Já..." K tvému nemalému překvapení začal mluvit normálním hlasem... všechny kudrlinky se z jeho mluvy vytratily. Mluví tiše, vzdělaně a podobně jako ty. "Já... už si nepřeji žít takto déle."~ */
  IF ~~ THEN REPLY #63807 /* ~(Už dlouho nebudeš. Všechna muka, trápení a bolest tvé existence; to vše teď zmizí.)~ */ GOTO 28
  IF ~~ THEN REPLY #63808 /* ~(Mnoho jsem si vytrpěl. Narodili jsme se ve světě, ve kterém nic nedávalo smysl, kde cizinci tvrdili, že tě znají, obviňovali tě z věcí, o kterých jsi nikdy ani neslyšel a pokoušeli se tě dostat.)~ */ GOTO 28
  IF ~~ THEN REPLY #63809 /* ~(Měli bychom si o tom ještě někdy promluvit. Vyčkej tady.)~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #63810 /* ~Upjal na tebe svůj zrak - a ty nyní sleduješ, jak zjevení ztrácí svůj šílený výraz a jeho oči se stávají tvými. "Ano..."~ */
  IF ~~ THEN REPLY #63811 /* ~(Teď už tě ochráním. Poznáš míru. To sis vždycky tajně přál, že ano?)~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #63812 /* ~Na tvá slova se uvolnil a jeho oči ztmavly při pohledu na tebe. Něco nesrozumitelně zašeptal a náhle se zhroutil na černé kameny - spolu s tímto zkolapsováním cítíš šimravý zvuk ve svém týlu...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 30 // from: 9.11
  SAY #63813 /* ~S oslepující rychlostí tvé ruve obepjaly jeho krk - zjevení ti darovalo pohled plný překvapení, jakmile jsi zesílil sevření. Zavrčel a potom s ďábelským pohledem objal svýma rukama tvůj krk a začal kroutit. ~ */
  IF ~  CheckStatGT(Protagonist,20,STR)
~ THEN REPLY #63814 /* ~"Skon... cu... ji... s... te... bou..."~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatLT(Protagonist,21,STR)
~ THEN REPLY #63815 /* ~"Skon... cu... ji... s... te... bou..."~ */ GOTO 32
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #63816 /* ~"Skon... cu... ji... s... te... bou..."~ */ GOTO 33
  IF ~~ THEN REPLY #63817 /* ~Vzdej to, nech jeho ruku obejmout tvůj krk.~ */ GOTO 42
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63818 /* ~Jak tvé sevření ještě více zesílilo, muž znenadání vyvalil oči a stáhl své ruce z tvého krku. Pak chňapl po tvých rukou a snažil se je silou sonutit k ústupu. Avšak jeho boj byl marný, příliš slabý. ~ */
  IF ~~ THEN REPLY #63819 /* ~"Dám ti na vybranou. Buď zhyň mou rukou, nebo se mnou splyň v jedno a modli se, že budeš mít v mé mysli šanci na přežití."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63820 /* ~Jazyk národa Uyo: (Tohle máš za Finovu smrt.)~ */ GOTO 39
  IF ~~ THEN REPLY #63821 /* ~"Teď už můžeme učinit přítrž tvé bídné exstenci..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #63822 /* ~Jak tvé sevření znovu sesílilo, mužovi oči se náhle zúžily a jeho prsty ti opět sevřely hrdlo - vaše síly se zdají být vyrovnané a nezdá se, že by jeden byl silnější než druhý... vypadá to, že bude záležet na tom, kdo vyrží déle... ~ */
  IF ~  CheckStatGT(Protagonist,20,CON)
~ THEN REPLY #63823 /* ~Vytrvej...~ */ GOTO 35
  IF ~  CheckStatLT(Protagonist,21,CON)
~ THEN REPLY #63824 /* ~Vytrvej...~ */ GOTO 36
  IF ~~ THEN REPLY #63825 /* ~Pokus se uvolnit z jeho sevření.~ */ GOTO 37
  IF ~~ THEN REPLY #63826 /* ~Vzdej to, nech ho uchopit tvůj krk.~ */ GOTO 42
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #63827 /* ~Jak tvé sevření znovu sesílilo, vydalo ze sebe zjevení ďábeldký smích a zarylo své prsty do tvého krku - teprv teď ti došlo, jak je muž silný - víš, že běhěm pár sekund z tebe dokáže vysát tvůj život.~ */
  IF ~~ THEN REPLY #63828 /* ~Pokus se uvolnit z jeho sevření.~ */ GOTO 37
  IF ~~ THEN REPLY #63829 /* ~Vzdej to, nech ho uchopit tvůj krk.~ */ GOTO 42
END

IF ~~ THEN BEGIN 34 // from: 18.1 18.2 19.0 19.1
  SAY #63830 /* ~V jeho očích jako by se rozhořel oheň a ty pozoruješ, jak sevřal svou levou ruku... pak škubl a stehy na jeho rameni se začaly pomalu trhat, oddělovat...~ */
  IF ~~ THEN REPLY #63831 /* ~"Co to - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #63832 /* ~Po chvíli, která se sdála být věčností, si ucítil ruce stvoření na tvém krku, jak ho prohmatávají, jako by hledaly nějakou slabinu... a jak selhávají. V jeho očích se zračí obavy, muž chňapl po tvých rukou a snažil se je silou sonutit k ústupu. Avšak jeho boj byl marný, příliš slabý. ~ */
  IF ~~ THEN REPLY #63833 /* ~"Dám ti na vybranou. Buď zhyň mou rukou, nebo se mnou splyň v jedno a modli se, že budeš mít v mé mysli šanci na přežití."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63834 /* ~Jazyk národa Uyo: (Tohle máš za Finovu smrt.)~ */ GOTO 39
  IF ~~ THEN REPLY #63835 /* ~"Teď už můžeme učinit přítrž tvé bídné exstenci..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #63836 /* ~Pořád se ještě snažíš bojovatm, vydržet jeho náporu, když si náhle uvědomuješ, že ať toto stvoření podlehlo jakémukoliv šílenství, neztratilo tím svou sílu a odolnost... pokud se budeš dále snažit vzdorovat, brzy vyhraje on. ~ */
  IF ~~ THEN REPLY #63837 /* ~Pokus se uvolnit z jeho sevření.~ */ GOTO 37
  IF ~~ THEN REPLY #63838 /* ~Vzdej to, nech ho uchopit tvůj krk.~ */ GOTO 42
END

IF ~~ THEN BEGIN 37 // from: 32.2 33.0 36.0
  SAY #63839 /* ~Provedl jsi náhlý výpad na pravou stranu, vyvedl jsi ho tak z rovnováhy a uvolnil ses tak jeho sevření. Jeho oči jsou teď jako plápolající ohně, muž svírá svou levou ruku v pěst...  pak náhle škubne a ty pozoruješ, jak se ztehy na jeho rameni pomalu pářou...~ */
  IF ~~ THEN REPLY #63840 /* ~"Co jseš zač - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.12
  SAY #63841 /* ~S oslepující rychlostí jsi obepjal svými dlaněmi jesho krk - muž překvapeně vyštěkl a náhle zmkl, jak jsi zesílil své sevření. Pak chňapl po tvých rukou a snažil se je silou sonutit k ústupu. Avšak jeho boj byl marný, příliš slabý. ~ */
  IF ~~ THEN REPLY #63842 /* ~"Máš ještě šanci. Buď zhyň mou rukou, nebo se mnou splyň v jedno a modli se, že budeš mít v mé mysli šanci na přežití."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63843 /* ~Jazyk národa Uyo: (Tohle máš za Finovu smrt.)~ */ GOTO 39
  IF ~~ THEN REPLY #63844 /* ~"Teď už můžeme učinit přítrž tvé bídné exstenci..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 31.1 31.2 35.1 35.2 38.1 38.2
  SAY #63845 /* ~Prudce si jeho krkem škubl doleva - ozvalo se dunivé křupnutím, jako by se lámaly tisíce vazů, a zjevení se ti zkroutilo do náruče. Odstrčil jsi ho a ono dopadlo na tmavé kameny - s jeho smrtí si v týlu ucítil škrábavý pocit, roztřásl ses a nyní už víš, že tento muž už není.~ */
  IF ~~ THEN REPLY #63846 /* ~"Sbohem..."~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.0 35.0 38.0
  SAY #63847 /* ~Strnule na tebe civěl, zaťal své zuby, ale po chvíli se z jeho tváře napětí vytratilo a on se uvolnil. Něco nesrozumitelně zašeptal a náhle se zhroutil na černé kameny - spolu s tímto zkolapsováním cítíš šimravý zvuk ve svém týlu...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 29.0 40.0
  SAY #63848 /* ~Náhle tě zaplavily vzpomínky, síla, emoce, a - uklidnil ses, na chvíli se ti zatočila hlava, pak se ale tvé vidění vyjasnilo, a ty sám si ještě jednou.~ */
  IF ~~ THEN REPLY #63849 /* ~"Sbohem..."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.3 32.3 33.1 36.1
  SAY #63850 /* ~Jak se tvé myšlenky zatemnily kvůli mužově sevření, bolest odpadla - a byla nahrazena jemným, chladivým pocitem zapomňení. Nyní můžeš cítit, jak se tvá osobnost rozpadá, kousek po kousku, a náhle - přestáváš být.~ */
  IF ~~ THEN REPLY #63851 /* ~Propadnout se v temnotu...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #63852 /* ~"Ta ŽENA - ten DUCH?!" Z přimouřených očí muže tryská hněv a od jeho úst odlétají sliny. "Ona mě celé roky TRÁPILA, pronásledovala mě, nenáviděla mě a TY BY SI MĚL BÝT TEN, KDO JI ZABIL?!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 30
END

IF ~~ THEN BEGIN 44 // from:
  SAY #63853 /* ~"Bezcenný!" Druhá inkarnace se hýkavě rozesměje, zní to ale spíš radostně než šíleně. "Bylo SNADNÝ přerušit tu dětskou past. Našel jsem... a ZMĚNIL. Udělal to TĚŽŠÍ. Změnil PÍSMO."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 58
END
