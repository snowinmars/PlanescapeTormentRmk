// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHAROD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHAROD~

IF ~  Global("Pharod","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2841 /* ~Před tebou je starší muž, který těžce kulhá s pomocí berle, jeho levá noha je zkroucená, jakoby se snažil jít najednou dvěma směry a zaplatil za to. Nažloutlá pokožka mu na lebce vytváří faldy, je pokrytá jaterními skvrnami. Něco si mumlá a pomlaskává si, zatímco jeho oči poletují po místnosti.~ */
  IF ~~ THEN REPLY #17912 /* ~"Zdravím."~ */ DO ~SetGlobal("Pharod","GLOBAL",1)
~ JOURNAL #17915 /* ~Tak jsem *konečně* našel Pharoda v pohřbené vesnici pod Hadrníkovým náměstím. Naneštěstí to tam nevoní ani o trochu líp než v Úlu... ale alespoň snad pro mě Pharod bude mít nějaké informace.~ */ GOTO 3
  IF ~~ THEN REPLY #17913 /* ~Nevšímej si ho a prozkoumej místnost.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2842 /* ~Vidíš Pharoda. Očima přejíždí místnost, mumlá si něco pro sebe a olizuje si rty. ~ */
  IF ~~ THEN REPLY #17916 /* ~"Zdravím."~ */ GOTO 3
  IF ~~ THEN REPLY #17917 /* ~Nevšímej si Pharoda a prozkoumej místnost.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #2843 /* ~"Ah, mrtvák..." Pharod se k tobě otočil, jeho berla ťuká do podlahy. "Vítej, vítej..."~ */
  IF ~~ THEN REPLY #17918 /* ~"Mám pro tebe pár otázek, Pharode."~ */ GOTO 17
  IF ~~ THEN REPLY #17919 /* ~"Nemám čas na rozhovor, Pharode. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #17834 /* ~"Ohó!" Mužovy oči se rozzářily, když uslyšel tvůj hlas. "Není to chodící hromada měďáků, jdoucí opět k Pharodovým čekajícím rukám? Zdravím tě, mrtvolo." Vycenil zuby v úšklebku. "Přišel jsi mne požádat o další výlet mezi zdi Márnice?"~ */
  IF ~~ THEN REPLY #17920 /* ~"Pharode, přišel jsem pro informace. Bylo mi řečeno, že o mně něco víš."~ */ GOTO 4
  IF ~~ THEN REPLY #17921 /* ~"Ne, jsem tu, abych ti položil pár otázek, na které jen ty znáš odpovědi."~ */ GOTO 6
  IF ~~ THEN REPLY #17922 /* ~"Ano, Pharode, vrátil jsem se. Jsou má opatření v pořádku?"~ */ GOTO 9
  IF ~~ THEN REPLY #17923 /* ~"Nemám čas s tebou hovořit, Pharode. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17835 /* ~"Vědět něco o tobě...?" Světlo ve Pharodových očích pohaslo. Studuje tě, potichu mumlajíc, jak jeho oči kmitají po tvém těle nahoru a dolů. "Mrtvolo...? Ne? Ano?" Jeho oči se setkaly s tvými. "Ach! Ne..."~ */
  IF ~~ THEN REPLY #17924 /* ~"Pharode? Co se děje?"~ */ GOTO 7
  IF ~~ THEN REPLY #17925 /* ~"Podívej se zblízka... víš kdo jsem?"~ */ GOTO 7
  IF ~~ THEN REPLY #17926 /* ~"Nemám čas s tebou hovořit, Pharode. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 9.0 9.2 9.4
  SAY #17836 /* ~Něco ve tvém tónu, možná lehounká slovní pauza, tě prozradilo... cokoliv to bylo, Pharod zmlknul, světlo v jeho očích pohaslo a začal tě studovat. "Mrtvolo...? Ne? Ano?" Jeho oči se setkaly s tvými. "Ach! Ne..."~ */
  IF ~~ THEN REPLY #17927 /* ~"Pharode...?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0
  SAY #17837 /* ~Studuje tě, potichu mumlá a jeho oči kmitají po tvém těle nahoru a dolů. "Tohle není maškarní ples, není čas her, není Pharodův čas, aby hádal... kdo jsi? K čemu se ptáš na takové věci?"~ */
  IF ~~ THEN REPLY #17928 /* ~Pravda: "Já jsem se zapomněl a bylo mi řečeno, abych tě vyhledal. Že o mně budeš něco vědět."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17929 /* ~"Potřebuji odpovědi, Pharode. Bylo mi řečeno, že ty je můžeš poskytnout."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #17838 /* ~Pharod tě studuje ledově klidným pohledem. "Tohle není maškarní ples, není čas her, není Pharodův čas, aby hádal... kdo jsi? K čemu se ptáš na takové věci?"~ */
  IF ~~ THEN REPLY #17930 /* ~Pravda: "Já jsem se zapomněl a bylo mi řečeno, abych tě vyhledal. Že o mně budeš něco vědět."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17931 /* ~"Potřebuji odpovědi, Pharode. Bylo mi řečeno, že ty je můžeš poskytnout."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1 7.0 7.1
  SAY #17839 /* ~"Eh..." Pharod si olíznul rty; vydaly skřípavý zvuk, jako suchý pergamen na písku. "Tak, kdo ti řekl takovou věc, mrtvolo?"~ */
  IF ~~ THEN REPLY #17932 /* ~Pravda: "No, ve skutečnosti mi to nikdo *neřekl*. Mám na zádech tetování... je tam napsáno, že pokud se někdy zapomenu tak tě mám vyhledat."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #17933 /* ~"Kdo by mi musel cokoliv říkat? Nejsi snad Pharod?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY #17840 /* ~"Spolehliví, jak jen to jde.. moji Sběrači učinili přesně tak, jak si řekl, doslova." Ztěžka se opřel do hole, až se ozval nebezpečný křupavý zvuk. "Eh.. škoda jenom, že nemáme tu cetku. *Víš* alespoň, kde tam dole je? Tak moc bys mi pomohl, opravdu..."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17934 /* ~"Osvěž mi paměť, Pharode... co jsem to chtěl, aby tví Sběrači udělali?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17935 /* ~"Osvěž mi paměť, Pharode... co jsem to chtěl, aby tví Sběrači udělali?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17936 /* ~"Ne... řekni mi, co jsi to říkal o výletu do Márnice?'"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17937 /* ~"Ne... řekni mi, co jsi to říkal o výletu do Márnice?'"~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17938 /* ~"Cetka?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17939 /* ~"Cetka?"~ */ GOTO 10
  IF ~~ THEN REPLY #17940 /* ~"To je jedno, Pharode. Musím už jít." ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.5 11.1 12.1 13.1
  SAY #17841 /* ~"*Koule,* mrtvolo, koule! Našel jsi..." Pharodův hlas je prosebný, zoufalý, jako hlas žebráka -- potom zmlknul a ovládl se. "Nezáleží na tom, já ji najdu... bezpochyby."~ */
  IF ~~ THEN REPLY #17941 /* ~"Osvěž mi paměť, Pharode... co jsem to chtěl aby tví Sběrači udělali?"~ */ GOTO 11
  IF ~~ THEN REPLY #17942 /* ~"Co jsi to předtím říkal o výletu do Márnice?'"~ */ GOTO 12
  IF ~~ THEN REPLY #17943 /* ~"To je jedno, Pharode. Musím už jít." ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 12.0 13.0
  SAY #17842 /* ~Pharod klepnul berlí o dlažbu, až se zapotácel v kolenou. "Zkrátka jsi řekl -" Olíznul si rty. "Abychom se ujistili, že budeš v bezpečí, až tě najdou, že tě dopraví do Márnice. Celé to byl nesmysl." Podíval se na tebe -- skoro s obavami. "Proč? Někdo neuposlechl mých slov? Odhodil tě někde, kde sis nepřál být?"~ */
  IF ~~ THEN REPLY #17944 /* ~"Ne, ale odpověz mi na toto: Jak jsem se měl dostat z Márnice potom, co jsem tam byl odvezen?"~ */ GOTO 13
  IF ~~ THEN REPLY #17945 /* ~"Ne... co byla ta cetka o které ses zmiňoval?"~ */ GOTO 10
  IF ~~ THEN REPLY #17946 /* ~"To je jedno, Pharode. Musím už jít." ~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.3 10.1
  SAY #17843 /* ~"Á... ano?" Pharod mrknul. "Márnice. Spalovači a tak." Ztišil hlas a jeho prsty začaly sebou neklidně škubat. "Jsme si kvit, mrtvolo? Ještě něco?"~ */
  IF ~~ THEN REPLY #17947 /* ~"Osvěž mi paměť, Pharode... co jsem to chtěl, aby tví Sběrači udělali?"~ */ GOTO 11
  IF ~~ THEN REPLY #17948 /* ~"Co byla ta cetka o které ses zmiňoval?"~ */ GOTO 10
  IF ~~ THEN REPLY #17949 /* ~"To je jedno, Pharode. Musím už jít." ~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #17844 /* ~Pharod se potichu zachechtal, pak se poškrábal. "Á, mrtvolo, neřekl jsi nic o cestě *z* té díry... tak moc se tam chtěl dostat, připadalo mi to, že až tam budeš, budeš mít pro Spalovače něco připraveného. Myslel jsem si, že na tom jsme se shodli"~ */
  IF ~~ THEN REPLY #17950 /* ~"Osvěž mi paměť, Pharode... co jsem to chtěl, aby tví Sběrači udělali?"~ */ GOTO 11
  IF ~~ THEN REPLY #17951 /* ~"Co byla ta cetka, o které ses zmiňoval?"~ */ GOTO 10
  IF ~~ THEN REPLY #17952 /* ~"To je jedno, Pharode. Musím už jít." ~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.0 8.1
  SAY #17845 /* ~"Á... tak málo vysloveno, tak mnoho řečeno..." Pharod zmlknul a náhle máš pocit jako by tě Pharod pitval, jako mrtvolu na stole v Márnici. "Vím toho mnoho, co bys chtěl vědět. Mnoho, ano. Mnoho, samozřejmě..." Pharod se pomalu usmál, záhyby na jeho kůži se zatáhly jako opona.~ */
  IF ~~ THEN REPLY #17953 /* ~"Co o mně víš?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #17846 /* ~Pharod si olíznul rty, potom se naklonil nad berlí jako sup. "Ne, ne... ne zdarma, ne otázky, na které se ptáš." Jeho těstově bílé ruce uchopily okraj berly. "Mnoho ti můžu povědět, ale povídání má svou cenu."~ */
  IF ~~ THEN REPLY #17954 /* ~"Pokračuj, Pharode..."~ */ GOTO 34
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17847 /* ~"Á, mrtvola..." Pharod se otočil, když jsi přišel, jeho berla *zaklepala* o dlažbu Dvora. Olíznul si rty a usmál se v očekávání. "Přinesl jsi mi to, co jsem ti řekl?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17955 /* ~"Tu bronzovou kouli? Tady je."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(15000)
~ GOTO 54
  IF ~~ THEN REPLY #17956 /* ~"Nejdřív mám pár otázek..."~ */ GOTO 17
  IF ~  !PartyHasItem("Bsphere")
~ THEN REPLY #17957 /* ~"Ještě ne. Vrátím se až ji budu mít."~ */ EXIT
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17958 /* ~"Já... ještě po ní pátrám. Vrátím se až ji budu mít"~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 16.1 18.1 19.0 20.1 21.1 22.3 23.1 24.1 25.0 26.1 27.1 28.1 29.2 30.1 31.0 44.0 45.3 46.2 47.1 48.1 49.1 50.1 51.1 52.1 53.0 54.1 55.1 56.3 57.2 58.1 59.2 60.1 61.2 62.4 63.2 64.2 65.3 66.1 67.1 68.1 69.1 71.2 73.1 74.1 76.1 79.0 80.0 85.1 86.2 87.0
  SAY #17848 /* ~"Tak se ptej!" Pharod udeřil berlou do dláždění. "No tak rychle, mrtvolo, mám málo času a stejně i trpělivosti."~ */
  IF ~~ THEN REPLY #17959 /* ~"Když jsi mě zdravil, říkal jsi něco o 'výletu do Márnice'. Co jsi tím myslel?"~ */ GOTO 18
  IF ~~ THEN REPLY #17960 /* ~"Co je tohle místo zač?"~ */ GOTO 20
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17961 /* ~"Když jsem se vzbudil v Márnici, tak mi chyběl deník. Víš kde je?"~ */ GOTO 79
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #17962 /* ~"Jednou jsem slyšel příběh o muži jménem Pharod. Králi hadrů."~ */ GOTO 26
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #17963 /* ~"Slyšel jsem, že jsi našel velké množství těl, Pharode. Odkud jsou?"~ */ GOTO 45
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17964 /* ~"Zeptám se ještě jednou, protože jsem ti přinesl, co jsi požadoval: Co o mně víš?"~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17965 /* ~"Ještě jednou: Vzal jsi něco z mého těla když jsi ho našel?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17966 /* ~"Kde Annah našla mé tělo?"~ */ GOTO 74
  IF ~~ THEN REPLY #17967 /* ~"Žádné otázky nemám -- sbohem, Pharode."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #17849 /* ~"To mi řekni ty, mrtvolo -- možná že Spalovači, co tam žijí, se ti líbí víc, nežli nějaké sladké děvče?" Pharod ťuknul svou berlou o podlahu, až se klepnutí ozývalo dvorem. "Nanejvýš šlechetné od Spalovačů, že tě nechají brouzdat dovnitř a ven, jak se ti zachce, s ohledem na to, že nemáš tu slušnost zůstat v Knize mrtvých."~ */
  IF ~~ THEN REPLY #17968 /* ~"Chtěl jsem se dostat do Márnice? Ale proč?"~ */ JOURNAL #17971 /* ~Pharod řekl, že jsem se chtěl z nějakého důvodu dostat *zpět* do Márnice... proč? Hledal jsem tam snad něco?~ */ GOTO 19
  IF ~~ THEN REPLY #17969 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #17970 /* ~"Musím se vzdálit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #17850 /* ~Pahrod se ušklíbl. "Tak moc ses chtěl dostat dovnitř, mrtvolo a teď z tebe vypadlo, že v první řadě ani nevíš, proč ses tam chtěl dostat. Občas se divím, že se Sféry ještě otáčejí..."~ */
  IF ~~ THEN REPLY #17972 /* ~"To je jedno. Mám jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #17973 /* ~"Slyšel jsem toho dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #17851 /* ~Pharodovy oči kmitají sem tam, zkoumají strop, stěny i podlahu. "Tady tohle je Dvůr Ill-Wind -- to jméno jsem nevybral já, děkuju pěkně - a místo tam venku je Pohřbená Vesnice, mrtvolo."~ */
  IF ~~ THEN REPLY #17974 /* ~"Co je Pohřbená vesnice?"~ */ GOTO 21
  IF ~~ THEN REPLY #17975 /* ~"To je jedno. Mám jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #17976 /* ~"Slyšel jsem toho dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #17852 /* ~"Je tu jeden příběh..." Pharod si znovu olíznul rty a pokrčil rameny. "Ale abych řekl pravdu, ten příběh mne nudí. Mám to zkrátit? Je to kousek Úlu, který byl jeden den pohřben pod kameny, část Sigilu byla zapsána do knihy mrtvých."~ */
  IF ~~ THEN REPLY #17977 /* ~"Co tím míníš?"~ */ GOTO 22
  IF ~~ THEN REPLY #17978 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #17979 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #17853 /* ~"Znáš je, ty létající kozlí hlavy sloužící Paní, Dabusy? No, je jedno jestli je znáš, nebo ne -- všichni stále chodí dokola a spravují, ničí, pohřbívají a zase stavějí. Pochopils?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17980 /* ~"Dabusové?"~ */ DO ~SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17981 /* ~"Dabusové?"~ */ GOTO 23
  IF ~~ THEN REPLY #17982 /* ~"Ano, pokračuj."~ */ GOTO 24
  IF ~~ THEN REPLY #17983 /* ~"Zapomeň na to. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #17984 /* ~"To je jedno. Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #17854 /* ~"Kozlí hlavy? Co je s tebou, zbláznil ses?! Ti létavci s kladivy, co spolu mluví v symbolech? Ti, kteří plní vůli Paní?" Pharod praštil holí do země, až se ozvalo ostré ťuknutí. "No tak, nedělej tu ze mne šaška, času je málo a stejně tak mé trpělivosti."~ */
  IF ~~ THEN REPLY #17985 /* ~"No dobře, pokračuj."~ */ GOTO 24
  IF ~~ THEN REPLY #17986 /* ~"Zapomeň na to. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #17987 /* ~"To je jedno. Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0
  SAY #17855 /* ~"Takže, říká se... a je to starej příběh... že ti dabusové jednou prostě zazdili část Úlu a všichni na to zapomněli. Začali tam vyhazovat bordel a za chvíli nikdo ani nevěděl, co tady bylo před tím." Pharod se usmál. "Šílené, což? Část Sigilu úplně zapomenuta?"~ */
  IF ~~ THEN REPLY #17988 /* ~"Jak jsi ji našel?"~ */ GOTO 25
  IF ~~ THEN REPLY #17989 /* ~"Aha. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #17990 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17856 /* ~Pharod *syknul.* "Stále mám své oči, mrtvolo, a stále mám své uši, a pokud máš dost rozumu, abys použil oboje, tak odhalit jakékoliv tajemství není tak těžké, jak si někteří myslí." Pharod si poškrabal jeho špinavý plášť. "Tak, je tu ještě něco jiného, čím bys chtěl zaměstnat můj mozek? Nepřišel jsi sem, abys poslouchal o této díře, nebo ano?"~ */
  IF ~~ THEN REPLY #17991 /* ~"Mám ještě pár jiných otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #17992 /* ~"Ne, to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #17857 /* ~Pharodovo levé oko se rozšířilo, ale nemůžeš říct jestli to dělá on sám, nebo jestli se jen kolem odlupují kousky jeho vrásčité kůže. "Tak? Sigil je plný příběhů, to ano, ale žádný z příběhů, ve kterém se vyskytuje Pharod, nemůže patřit mezi ty, co by něčí uši chtěly slyšet." Dívá se na tebe s hranou podezřívavostí, potom se ušklíbne. "Stal ses vypravěčem příběhů, mrtvolo?"~ */
  IF ~~ THEN REPLY #17993 /* ~"Je to podivný příběh. Vypráví o muži s postavením a bohatstvím, který měl všechno a pak zjistil, že nemá nic."~ */ GOTO 27
  IF ~~ THEN REPLY #17994 /* ~"Ne nestal. Mám pro tebe jiné otázky"~ */ GOTO 17
  IF ~~ THEN REPLY #17995 /* ~"Ne, to je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #17858 /* ~Pharodův úšklebek zmrzl na tváři a jeho oči se divně ohnivě rozzářily. "Víš jistě, že chceš povědět tento příběh, mrtvolo? Možná se ti nebude líbit, jak končí, no?"~ */
  IF ~~ THEN REPLY #17996 /* ~"Ten muž byl takový lhář a podvodník, že se stočil do rohu. Zjistil, že až si pro něj přijde smrt, odnese ho na strašné místo."~ */ GOTO 28
  IF ~~ THEN REPLY #17997 /* ~"V tom případě mám místo toho nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #17998 /* ~"V tom případě už nebudu vyprávět dál. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #17859 /* ~Pharodův úšklebek se vytratil a on si olíznul rty. Vypadá... vystrašeně.~ */
  IF ~~ THEN REPLY #17999 /* ~"Byl odhodlán vyhnout se takovému osudu a tak zoufale hledal způsob jak z toho ven. Podvede osud tak, jako podváděl ostatní."~ */ GOTO 29
  IF ~~ THEN REPLY #18000 /* ~"A tady příběh končí. "Místo toho mám pro tebe pár otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #18001 /* ~"Už jsem řekl dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #17860 /* ~Pharodův obličej se zkroutil, jako by spolknul něco nepříjemného.~ */
  IF ~  GlobalLT("Pharod","GLOBAL",3)
~ THEN REPLY #18002 /* ~"Našel řešení... nebo alespoň místo, kde to řešení hledat. Bylo mu řečeno, aby to, co mu pomůže uniknout jeho osudu hledal v Sigilském odpadu. A teď, Pharode... možná mi můžeš říct jak ten příběh končí."~ */ GOTO 32
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18003 /* ~"Našel řešení... nebo alespoň místo, kde to řešení hledat. Bylo mu řečeno, aby to, co mu pomůže uniknout jeho osudu hledal v Sigilském odpadu. To je to, co ta koule je, Pharode? Něco co ti umožní vysmát se osudu?"~ */ GOTO 30
  IF ~~ THEN REPLY #18004 /* ~"A tady příběh končí. "Místo toho mám pro tebe pár otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #18005 /* ~"Už jsem řekl dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #17861 /* ~Pharod tě sleduje, prsty klepe na berlu. "Uvidíme, my dva, je to tak mrtvolo?" Ušklíbl se. "A co *ti* dovolí vysmát se osudu, no? Žádna cetka, žádná drobnůstka pro tebe, jaká ostuda."~ */
  IF ~~ THEN REPLY #18006 /* ~"Ty nevíš co ta koule je, že ne?~ */ GOTO 31
  IF ~~ THEN REPLY #18007 /* ~"Já na to přijdu. Mám pro tebe pár jiných otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #18008 /* ~"Uvidíme, Pharode. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17862 /* ~Pharod na tebe syknul. "Najít ji stačí, mrtvolo. Zbytek přijde s tím, že ji budeš mít."~ */
  IF ~~ THEN REPLY #18009 /* ~"No dobře. Mám pro tebe pár jiných otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #18010 /* ~"Uvidíme, Pharode. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #17863 /* ~Pharod začal vrčet. "NEMÁ to konec! Ne pro mne!" Vidíš jak krev vyplňuje jeho obličej. "A teď ten příběh, který mám pro TEBE, mrtvolo!"~ */
  IF ~~ THEN REPLY #18011 /* ~"No dob-"~ */ GOTO 33
  IF ~~ THEN REPLY #18012 /* ~"Já nech-"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #17864 /* ~Pharodův prst, křivý jako žebrákova berla, na tebe ukázal. "Mrtvola přišla na můj dvůr, nasycena pachem a přísahami, slibující NALEZENÍ toho, co jsem potřeboval, ale co přinesl? *NIC!* Sliby porušeny, mrtvolo! Popíráš to ?! Řekni že ano, protože to znamená, že jsi mi lhal a já kvůli tomu *zemřu!*"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #18013 /* ~"Pátrám po ní, Pharode. Až ji najdu, tak ji přinesu. Žádný slib jsem neporušil."~ */ GOTO 80
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #18014 /* ~"Máš na mysli tu bronzovou kouli? Uklidni se... tady je."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(4000)
~ GOTO 54
END

IF ~~ THEN BEGIN 34 // from: 15.0
  SAY #17865 /* ~Pharod klepnul do kamenů berlou a ušklíbl se. "Tato vesnice není vše, co leží pohřbeno pod Hadrníkovým náměstím."~ */
  IF ~~ THEN REPLY #18041 /* ~"Ano...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #17866 /* ~"Komnaty, hrobky, chodby... plné mrtvých, všichni spí ve svých rakvích. Někde v těch chodbách, někde tam, leží něco, co tam nepatří. Něco mého."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18042 /* ~"Co je to?"~ */ GOTO 36
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18043 /* ~"Co je to?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #17867 /* ~"Taková malá věcička, cetka, taková maličkost..." Jak Pharod mluvil, jeho slova se začala opakovat, jako by mluvili dva lidé... víš, že jsi ta slova už předtím slyšel... ze svých vlastních úst.~ */
  IF ~~ THEN REPLY #18044 /* ~"...je to koule. Vyrobená z bronzu. Ošklivá. Na omak jako vejce a taky páchne jako zkažená vejce. Mám pravdu?"~ */ GOTO 38
  IF ~~ THEN REPLY #18045 /* ~Zůstaň zticha a poslouchej.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.1
  SAY #17868 /* ~"Taková malá věcička, cetka, taková maličkost..." Pharod se otočil, jako by byl v rozpacích, ale jeho hlas byl ostrý jako nůž. "Koule. Bronzová. Odpudivá. Vypadá jako vejce, ale není, a také zapáchá po vejcích. Najdi ji pro mne - taková malá laskavost - potom prokážu laskavost já tobě, mrtvolo."~ */
  IF ~~ THEN REPLY #18046 /* ~"Víš, kde ta koule je?"~ */ GOTO 40
  IF ~~ THEN REPLY #18047 /* ~"Proč neřekneš jednomu z tvých Sběračů, aby ji šli hledat?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 36.0
  SAY #17869 /* ~Pharod na chvíli úplně ztichl, potom mrknul. "Ano... co všechno přede mnou schováváš, mrtvolo?" Zachechtal se. "Vrátil ses, aby ses podíval, zda si pamatuji, co jsem po tobě chtěl?"~ */
  IF ~~ THEN REPLY #18048 /* ~"Víš, kde ta koule je?"~ */ GOTO 40
  IF ~~ THEN REPLY #18049 /* ~"Proč neřekneš jednomu z tvých Sběračů, aby ji šli hledat?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.1 40.0
  SAY #17870 /* ~"Protože ty chodby nepotřebují více mrtvých z této vesnice." Pharod sykl. "Síla, rychlost, chytrost... to jsou kvality, které moji vesničané nemají. Jdou dolů - nevrátí se. "Pharod na tebe pohlédl. "Možná mrtví přivítají jednoho z nich, hmmm? To si myslím *já*, mrtvolo."~ */
  IF ~~ THEN REPLY #18050 /* ~"Víš, kde ta koule je?"~ */ GOTO 40
  IF ~~ THEN REPLY #18051 /* ~"Tak dobrá... udělám to. Ale chci vědět, o co jde s tou cetkou."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.0 38.0 39.0
  SAY #17871 /* ~"Ah..." Pharodův povzdech je jak pohyblivý písek. "A proč si myslíš, že chci abys ji našel, mrtvolo? Já nevím *kde* je. Vím, že je pohřbená hluboko, mnohem hlouběji, než kam se kdy kdo z vesnice dostal." Pharod mlaskne "Mohla by být v katakombách, tam kde vody tečou hluboko, hluboko..."~ */
  IF ~~ THEN REPLY #18052 /* ~"Proč neřekneš jednomu z tvých Sběračů, aby ji šli hledat?"~ */ GOTO 39
  IF ~~ THEN REPLY #18053 /* ~"Tak dobrá... udělám to. Ale chci vědět o co jde s tou cetkou."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.1
  SAY #17872 /* ~"V mojí hlavě chrastí hodně vědění, mrtvolo." Zvedne vrásčitý prst. "Jedním z toho je tato moudrost: každý něco *chce*, ať už to ví nebo ne. Je toho hodně, co o tobě vím... hodně toho, co bys *chtěl* vědět"~ */
  IF ~~ THEN REPLY #18054 /* ~"Pochybuji, že mi můžeš říct něco významného, Pharode."~ */ GOTO 43
  IF ~~ THEN REPLY #18055 /* ~"No dobře, popřemýšlím o tom, že bych ji pro tebe našel... výměnou za to, co víš."~ */ GOTO 44
  IF ~~ THEN REPLY #18056 /* ~Pravda: "Možná bys mi měl říct co víš, Pharode, nebo napíšu tvé jméno do knihy mrtvých tvou vlastní krví."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18057 /* ~Bluf: "Možná bys mi měl říct co víš, Pharode, nebo napíšu tvé jméno do knihy mrtvých tvou vlastní krví."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2 41.3 43.0 43.1
  SAY #17873 /* ~Pharodova další slova jsou pronesena tak, abych měl možnost si je zapamatovat. "Pak to, co vím, zemře se mnou, mrtvolo... obrátí se to v popel, zemřu-li. Nic, nic pro tebe..."~ */
  IF ~~ THEN REPLY #18058 /* ~"Pochybuji, že mi můžeš říct něco významného, Pharode."~ */ GOTO 43
  IF ~~ THEN REPLY #18059 /* ~"No dobře, popřemýšlím o tom, že bych ji pro tebe našel... výměnou za to, co víš."~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 41.0 42.0
  SAY #17874 /* ~"Naučil jsem se další neocenitelnou moudrost... že jsi to ty, máš ji zadarmo:  Člověk je mnohdy na omylu v mnoha věcech a mrtvý člověk je ten, kdo byl na omylu až příliš mnohokrát." Pharod si olízne rty. "Je toho hodně, co ti mohu říct a co by někdo považoval za cenné" ~ */
  IF ~~ THEN REPLY #18060 /* ~Pravda: "Možná bys mi měl říct co víš, Pharode, nebo napíšu tvé jméno do knihy mrtvých tvou vlastní krví."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18061 /* ~Bluf: "Možná bys mi měl říct co víš, Pharode, nebo napíšu tvé jméno do knihy mrtvých tvou vlastní krví."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18062 /* ~"No dobře, popřemýšlím o tom, že bych ji pro tebe našel... výměnou za to, co víš."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 41.1 42.1 43.2
  SAY #17875 /* ~"No dobrá, dohoda je uzavřena..." Pharod ostře klepne berlou o dlažební kámen. "Kouli za nahlédnutí do mojí hlavy. A teď, mrtvolo -- není času nazbyt. Jdi k bráně na jihovýchodě a řekni těm ospalým pitomcům, aby ti ji otevřeli -- spěchej, spěchej."~ */
  IF ~~ THEN REPLY #18063 /* ~"Počkej chvilku... Mám pro tebe ještě pár jiných otázek, než odejdu..."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~Souhlasil jsem s tím, že kvůli Pharodovi zajdu do katakomb a přinesu mu zpět bronzovou kouli. Myslí si, že se koule nachází v nejhlubší části katakomb... kde voda zatopila průchody. Vchod do první části katakomb je v jihovýchodní části vesnice, za branou... Pharod řekl, ať řeknu o svém úkolu strážím, které mi pak bránu otevřou a pustí mě dovnitř.~ */ GOTO 17
  IF ~~ THEN REPLY #18064 /* ~"Tak dobře. Půjdu k bráně a vstoupím do katakomb hned."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~Souhlasil jsem s tím, že kvůli Pharodovi zajdu do katakomb a přinesu mu zpět bronzovou kouli. Myslí si, že se koule nachází v nejhlubší části katakomb... kde voda zatopila průchody. Vchod do první části katakomb je v jihovýchodní části vesnice, za branou... Pharod řekl, ať řeknu o svém úkolu strážím, které mi pak bránu otevřou a pustí mě dovnitř.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 17.4
  SAY #17876 /* ~"Prozrazuje snad kouzelník tajemství svého řemesla? Stejně je to i se Sběrači..." Pharod se mračí a zkoumá tě. "Možná, že ti to řeknu... ale musíš slíbit že si to necháš pro sebe."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18066 /* ~"Srovnáváš se snad s *mágem*, Pharode? Mám pocit, že to řemeslo urážíš."~ */ GOTO 46
  IF ~~ THEN REPLY #18067 /* ~Přísaha: "Co uslyším si nechám pro sebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_3","GLOBALLaw",1)
~ JOURNAL #18071 /* ~Přísahal jsem Pharodovi, že neprozradím odkud bere těla.~ */ GOTO 48
  IF ~~ THEN REPLY #18068 /* ~Lež: "Co uslyším si nechám pro sebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_2","GLOBALLaw",-1)
~ JOURNAL #18072 /* ~Lhal jsem a 'přísahal', že nikomu neřeknu odkud Pharod bere těla. Ten starej hnusák mi fakt uvěřil... myslím, že se potřeboval někomu svěřit s tím, jak je chytrej.~ */ GOTO 48
  IF ~~ THEN REPLY #18069 /* ~"Nemusím toho vědět tak moc. Mám jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18070 /* ~"Zapomeň na to. Musím už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #17877 /* ~Pharod zrudne a klepne svou berlí o zem. "Sběračství je stejně tak umění, jako cokoliv jinýho."~ */
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",0)
~ THEN REPLY #18073 /* ~"Pharode, najít hromadu mrtvých těl a prodat je, můžeš těžko srovnávat se studiem magie."~ */ DO ~AddexperienceParty(500)
SetGlobal("Pharod_Extortion_Bodies","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",1)
~ THEN REPLY #18074 /* ~"Jak jsem řekl už předtím, Pharode: Najít hromadu mrtvých těl a prodat je můžeš těžko srovnávat se studiem magie."~ */ GOTO 47
  IF ~~ THEN REPLY #18075 /* ~"Nechci se o tom s tebou hádat. Mám jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18076 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #17878 /* ~"Nebyla to snad dovednost, že jsem našel tohle místo?!" Pharodův hlas přejde do řevu a jeho prsty se semknou pevněji kolem jeho berle. "Chtělo to rozum k nalezení tohoto místa a chtělo to důvtip abych z toho vytřískal co nejvíc!"~ */
  IF ~~ THEN REPLY #18077 /* ~"Pohřbená vesnice? Ale no tak, co je na ní tajného?"~ */ JOURNAL #18080 /* ~Obelstil jsem Pharoda tak, že mi řekl, kde bere ta těla, aniž bych mu musel přísahat, že nic neřeknu. Mám pocit, že si toho ani nevšiml... jeho hloupost.~ */ GOTO 48
  IF ~~ THEN REPLY #18078 /* ~"Nechci se o tom s tebou hádat. Mám jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18079 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2 47.0
  SAY #17879 /* ~"No dobře..." Pharod poklepe svou berlí na dlaždice a zaškebí se. "Tahle vesnice není vše, co leží pohřbeno pod Hadrníkovým náměstím."~ */
  IF ~~ THEN REPLY #18081 /* ~"Pokračuj..."~ */ GOTO 49
  IF ~~ THEN REPLY #18082 /* ~"Nemusím toho vědět tak moc. Mám jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18083 /* ~"Už jsem slyšel dost... Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #17880 /* ~"Komnaty, hrobky, chodby..." Pharod se slabě usměje a jeho oči se třpytí jako zlato. "Místa, černá jako uhel, plná truchlících kamenů a vzácných mrtvých, všichni spící v jejich rakvích. Spící..."~ */
  IF ~~ THEN REPLY #18084 /* ~"Odkud jsou všichni ti mrtví?"~ */ GOTO 50
  IF ~~ THEN REPLY #18085 /* ~"To je jedno. Mám jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18086 /* ~"Už jsem slyšel dost... Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #17881 /* ~Pharod tě pozoruje s nakloněným pohledem. "Mrtvolo, mrtvolo... vše umírá. Život je krátký, ale smrt vydrží tak velmi, velmi dlouho. Mnoho lidí, mnoho smrtí..." Jeho pohled putuje mimo tebe. "Takové mrhání jejich smrtí, být k ničemu v rukou Spalovačů, ne?"~ */
  IF ~~ THEN REPLY #18087 /* ~"Co máš na mysli?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ JOURNAL #18090 /* ~Zjistil jsem, odkud ten starej hnusák Pharod získává tolik mrtvých těl: našel pod Pohřbenou vesnicí úsek katakomb, který je z Pohřbené vesnice přístupný. Spalovači tam pohřbili mnoho těl, takže Pharod vykrádá hroby a těla prodává zpět Spalovačům. Pak si počká, než je Spalovači opět pohřbí a znovu je vykope. Nonstop zdroj prachů ... morbidní, nicméně efektivní.~ */ GOTO 51
  IF ~~ THEN REPLY #18088 /* ~"To je jedno. Mám pár jiných otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #18089 /* ~"Už jsem slyšel dost... Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #17882 /* ~Pharod se chamtivě usmívá. "Ne všichni mrtví, kteří projdou branou Márnice, končí v peci, mrtvolo. Spalovači některé mrtvé pohřbívají v útrobách města. Pod vesnicí... tak blízko, tak těsně blízko... je jedno takové místo. Byl bych blázen, kdybych neviděl ty možnosti..."~ */
  IF ~~ THEN REPLY #18091 /* ~"Takže olupuješ katakomby o mrtvé, které tam dali Spalovači, prodáš jim je zpátky a oni je tam zase pohřbí?"~ */ GOTO 52
  IF ~~ THEN REPLY #18092 /* ~"To je jedno. Mám pár jiných otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #18093 /* ~"Už jsem slyšel dost... Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #17883 /* ~Pharod přikývne, pak se lehce uchechtne -- ten zvuk zní jak sypoucí se písek. "Tyhle katakomby jsou hluboký jak spalovačovy kapsy."~ */
  IF ~~ THEN REPLY #18094 /* ~"A hluboké jako lidská chamtivost."~ */ GOTO 53
  IF ~~ THEN REPLY #18095 /* ~"Velmi chytré, Pharode. Mám ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18096 /* ~"Už jsem slyšel dost... Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #17884 /* ~"Ó, ano..." Pharod se zašklebí. "A lidská chamtivost je něco, na co se musí spoléhat, když už nic jiného nezbývá, ne?"~ */
  IF ~~ THEN REPLY #18097 /* ~"Velmi chytré, Pharode. Mám ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18098 /* ~"Už jsem slyšel dost... Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 16.0 33.1
  SAY #17885 /* ~Pharodovy oči se lesknou, když mu podáváš bronzovou kouli -- dotýká se jí opatrně, skoro uctivě. "Ty..." Pochechtává se. "Ach, mrtvolo, taková spekulace jsi byl a slušně ses vyplatil, to tedy ano..." Pharod pozoruje jeho odraz v kouli a mlaskne "Jak vidím, léta ke mně byla krutá..."~ */
  IF ~~ THEN REPLY #18099 /* ~"Splnil jsem, co jsi chtěl, Pharode. Teď chci nějaké odpovědi."~ */ GOTO 55
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18100 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18101 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #17886 /* ~Pharod se na tebe ani nedívá, když mluvíš... jeho pozornost je pohlcena koulí, kterou drží. "Ano, ano, pokládej své otázky..." Pharod obrací kouli v rukou. "Velmi důležité, tvoje otázky..." ~ */
  IF ~~ THEN REPLY #18102 /* ~"Co o mně víš? Proč mi bylo řečeno, abych tě vyhledal?"~ */ GOTO 56
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18103 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18104 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #17887 /* ~Pharod tě zkoumá kritickým okem. "Zadrž své zbraně, protože to, co se chystám říct, mrtvolo, by v tvých uších mohlo znít jako urážka..." Pharod se šibalsky usmívá. "Mým uším už je to jedno, ale vypadá to, že tvé uši jsou stále citlivé."~ */
  IF ~~ THEN REPLY #18105 /* ~"Řekni mi to, Pharode. Ztrácím trpělivost."~ */ GOTO 57
  IF ~~ THEN REPLY #18106 /* ~Přísaha: "Máš mé slovo, že se ti nic nestane, Pharode. Ale potřebuji se dozvědět, co víš."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_4","GLOBALLaw",1)
~ GOTO 57
  IF ~~ THEN REPLY #18107 /* ~Lež: "Máš mé slovo, že se ti nic nestane, Pharode. Ale potřebuji se dozvědět, co víš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_2","GLOBALGood",-1)
~ GOTO 57
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18108 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18109 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 56.2
  SAY #17888 /* ~"Pravda..." Pharodův tón se zmírnil, jako kdyby tě chtěl přemlouvat. "Když jsme spolu předtím mluvili, pravda se mi po cestě z hlavy na jazyk kapku překroutila, mrtvolo -- při vší mizerný čestnosti, já o tobě moc nevím." Zvedne vrásčitý prst. "Nicméně, vyslechni mě..."~ */
  IF ~~ THEN REPLY #18110 /* ~"Ano...?"~ */ GOTO 58
  IF ~~ THEN REPLY #18111 /* ~"Tohle ať radši *stojí* za poslech Pharode."~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18112 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18113 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 17.5 57.0 57.1
  SAY #17889 /* ~"Jak to vidím já, jsi chlápek, co si hraje na mrtvýho." Pharod na tebe mhouří oči. "Před nějakou dobou jsi za mnou přišel, tak jako teď, ale jinak, prostě jsi napochodoval do dvora Ill-Windu a požadoval u mne 'audienci'." ~ */
  IF ~~ THEN REPLY #18114 /* ~"Audienci?"~ */ GOTO 59
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18115 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18116 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #17890 /* ~"Jo, 'audienci'.'" Pharod se pochechtává, jako šeptající písek. "Jako kdybych byl nějakej šlechtic..." Vypadá pobaveně, ale v jeho hlase je podráždění. "Věděl jsi, jak správně mluvit, ó ano. Mluvil jsi jako někdo urozenej. A já naslouchal."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #18117 /* ~"Ale ty jsi byl šlechtic... nebo alespoň člověk s postavením, dříve, nebo ne?"~ */ GOTO 60
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #18118 /* ~"Co od tebe ten... já... chtěl?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18119 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18120 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #17891 /* ~"Dříve." Pharod zasyčí. "*Dříve.* Tituly, jsou to jen slova, nakonec z nich není NIC..." Upadne do mlčenlivosti, pak mlaskne "Tos' věděl taky, o mé minulosti, myslím že věděl..."~ */
  IF ~~ THEN REPLY #18121 /* ~"Co od tebe ten... já... chtěl?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18122 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18123 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.1 60.0
  SAY #17892 /* ~Pharod udělá posměšnou poklonu, jeho berle zavrže jak se o ni opře. "'Ach, Pharode, velký králi Sběračů,' řekl jsi. 'Předstupuji před tebe s prosbou o laskavost.' 'O laskavost?' Řekl jsem. 'Co bych mohl nabídnout muži takové očividné síly?'"~ */
  IF ~~ THEN REPLY #18124 /* ~"Pokračuj..."~ */ GOTO 62
  IF ~~ THEN REPLY #18125 /* ~"Přestaň s těmi legráckami, Pharode. Co jsem chtěl?"~ */ GOTO 62
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18126 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18127 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1
  SAY #17893 /* ~Pharod zamává svým pokřiveným prstem. "A ty jsi požadoval divnou věc: Řekl jsi, 'Lorde Pharode, žádám o *laskavost.* Tví Sběrači procházejí celým Úlem. 
Najdou-li mé tělo, chci aby bylo uchováno v bezpečí. To je vše oč žádám.'" Pharod pokrčí rameny. "Jednoduchá laskavost."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18128 /* ~"Aha. A to je všechno co víš?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18129 /* ~"Aha. A to je všechno co víš?"~ */ GOTO 68
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18130 /* ~"Až na to, že v tom pro tebe nic není. Proč jsi s tím vůbec souhlasil?"~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18131 /* ~"Až na to, že v tom pro tebe nic není. Proč jsi s tím vůbec souhlasil?"~ */ GOTO 64
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18132 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18133 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #17894 /* ~Než stihneš promluvit, náhle cítíš ve své lebce mravenčení, když Pharod říká slovo 'laskavost' a pach krve a strachu se hrne tvými nozdrami... Pharod něco skrývá, něco co se stalo v minulosti, týkající se tebe -- a jeho to děsí. Ta laskavost, kterou ti poskytl, nebyla jednoduchá záležitost.~ */
  IF ~~ THEN REPLY #18134 /* ~"Takže jsi mi prokázal mou laskavost jen tak? To mi na tebe nesedí, vždyť v tom pro tebe nic není. Proč jsi s tím vůbec souhlasil?"~ */ GOTO 64
  IF ~~ THEN REPLY #18135 /* ~"Ó... aha. A to je všechno, co víš?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18136 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18137 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 62.2 62.3 63.0
  SAY #17895 /* ~Pharod se na moment odmlčí. "Mrtvola nemůže dodržet žádné sliby a sliby mrtvole se dávají dost snadno, mrtvolo." ~ */
  IF ~~ THEN REPLY #18138 /* ~"Jsi obchodník, Pharode, ne samaritán. Musel jsi pro to mít jiný důvod..."~ */ DO ~SetGlobal("Pharod_Sphere_Truth","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #18139 /* ~"No dobře. Je to vše co víš?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18140 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18141 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #17896 /* ~"Samozřejmě..." Pharodova tvář náhle zrudne vztekem. "Po tom, cos' rozmáznul po zdech Úlu dost mejch lidí, jsem měl dost důvodů slíbit ti klidně samy SFÉRY. Pak si řezník sám přijde ke mně DOMŮ, sem do mého DOMOVA, a požaduje ode mne 'laskavost'..." Pharod se uklidní, i když jeho tvář je stále rudá. "Samozřejmě, že jsem souhlasil..."~ */
  IF ~~ THEN REPLY #18142 /* ~Pravda: "Je mi líto tvých lidí, Pharode. To jsem nebyl já... ale jestli to mohu nějak odčinit, učiním tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Pharod_5","GLOBALLaw",1)
~ GOTO 66
  IF ~~ THEN REPLY #18143 /* ~Pravda: "Je mi líto tvých lidí, Pharode, víc ode mne nečekej."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
~ GOTO 66
  IF ~~ THEN REPLY #18144 /* ~"Pokračuj... co dál?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18145 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18146 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.1
  SAY #17897 /* ~Pharod mlaskne "Bez ohledu na to, ta těla mi posloužila dostatečně. Spalovači platí stejně jak za čerstvé, tak za staré mrtváky..."~ */
  IF ~~ THEN REPLY #18147 /* ~"To byl jediný důvod proč jsi souhlasil s mým požadavkem?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18148 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18149 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.2 66.0
  SAY #17898 /* ~"Věděl jsi o mně věci... věci, které jsem znal jen já sám. Věděl jsi, že jsem toužil po něčem pod Sigilem a dal jsi tomu jméno a tvar: bronzová koule, řekl jsi. Nemyslel jsem, že mi pro ni dojdeš..." Pochechtává se. "Nicméně stalo se tak. Ano. Sféry se ubírají divnými cestami..."~ */
  IF ~~ THEN REPLY #18150 /* ~"A to je *vše* co víš?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18151 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18152 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 62.1 63.1 64.1 67.0
  SAY #17899 /* ~"Vše co vím? Ale kdež... je to ale vše co vím o tobě, mrtvolo."~ */
  IF ~~ THEN REPLY #18153 /* ~"Dobře. Další otázka... co jsi sebral z mého těla poté, co jsem zemřel?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18154 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18155 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 17.6 68.0
  SAY #17900 /* ~"Já?" Pharod si olízne rty. "Ale *JÁ* přece nevzal nic, mrtvolo." Jeho tvář se roztáhne do širokého úsměvu. "Koneckonců já nebyl ten, kdo našel tvé tělo..."~ */
  IF ~~ THEN REPLY #18156 /* ~"A kdo ho našel?"~ */ GOTO 70
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18157 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18158 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 75.4
  SAY #17901 /* ~Pharodův úsměv se rozšíří rozhrnujíc bledé ohyby tváří z jeho obličeje jako oponu. "Má dcera, světlo mého života, nejmilejší a nejchytřejší z mé rodiny..." Olízne si suché rty a povzdechne si v předstíraném smutku. "Takový ostrý jazyk má..."~ */
  IF ~  !Dead("Annah")
~ THEN REPLY #18159 /* ~"Tvá *dcera?* Kdo?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18161 /* ~Donesl jsem tu bronzovou kouli Pharodovi. Nic moc užitečného mi neřekl: Prý jsem k němu přišel a požádal ho o 'pomoc' při zajištění toho, aby členové jeho gangu Sběračů, když zemřu, doručili moje tělo v bezpečí a neporušené do Márnice. Sdělil mi, že mé tělo našla jeho dcera Annah.~ */ GOTO 71
  IF ~  Dead("Annah")
~ THEN REPLY #18160 /* ~"Tvá *dcera?* Kdo?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18162 /* ~Donesl jsem tu bronzovou kouli Pharodovi. Nic moc užitečného mi neřekl: Prý jsem k němu přišel a požádal ho o 'pomoc' při zajištění toho, aby členové jeho gangu Sběračů, když zemřu, doručili moje tělo v bezpečí a neporušené do Márnice. Sdělil mi, že mé tělo našla jeho dcera Annah ... mám pocit, že to je jméno jedné z tieflingů, které jsem v Úlu zabil. Nevadí, za předpokladu, že Pharod ví, kde bylo mé tělo nalezeno ...~ */ GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 70.0 78.0 78.1 78.2
  SAY #17902 /* ~"Mé drahé dítě, Annah. Našla tě, mrtvýho jak jen mrtvák může být, na místě, kam by většina Sběračů nešla ani za *horu* měďáků. Třeba tě o něco oškubala, možná...?" Předkloní se a zavrtí hlavou. "Na to se musíš zeptat jí, protože já ti o tom těžko něco řeknu."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Pharod_Extortion","GLOBAL",0)
~ THEN REPLY #18163 /* ~"Nelži mi, Pharode. Jsi obchodník a vždy si bereš podíl od svých pracovníků. Co dala Annah *tobě* z mého těla?"~ */ GOTO 75
  IF ~  Global("Annah","GLOBAL",0)
~ THEN REPLY #18164 /* ~"Annah? Tak dobře, zeptám se jí. Kde je?"~ */ GOTO 73
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18166 /* ~"Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18167 /* ~"No dobře, to je vše co jsem chtěl vědět."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 70.1
  SAY #17903 /* ~"Mé drahé dítě, Annah. Našla tě, mrtvýho jak jen mrtvák může být, na místě kam by většina Sběračů nešla ani za *horu* měďáků. Třeba když tam půjdeš, najdeš ty vzácný věci který postrádáš..."~ */
  IF ~~ THEN REPLY #18168 /* ~"Kde mě našla?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 71.1
  SAY #17904 /* ~"Kde je Annah?" Pharod pokrčí rameny. "Skrývá se tu ve stínech, předpokládám a poslouchá o čem si tu povídáme. Nechal jsem ji zavolat, když jsi odešel dolů... potřeboval jsem se jí zeptat jestli jsi byl *opravdu* v knize mrtvých, když tě našla, nebo ne..." Pochechtává se suše, pak se zhluboka nadechne a zavolá do temnoty. "Annah! Přestaň se ukrývat v těch stínech a pojď pozdravit našeho hosta!"~ */
  IF ~~ THEN REPLY #18169 /* ~"Ona je tady...?"~ */ DO ~SetGlobal("0110_Cut_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("0110cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18170 /* ~"Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18171 /* ~"No dobře, to je vše co jsem chtěl vědět. Půjdu za ní"~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 17.7 72.0
  SAY #17905 /* ~"Říká, že tě našla v Úlu. Ve strašidelný uličce, severovýchodně od Doutnajícího nebožtíka..." Pharod přemýšlí a klepá prsty o jeho berlu. "Samozřejmě nejdřív se musíš dostat přes ty Chaotiky co jsou tady v Úlu..."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #18172 /* ~"O čem to mluvíš?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #18173 /* ~"Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47828 /* ~"No dobře, to je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 71.0
  SAY #17906 /* ~"Ó... ano... můj poplatek..." Pharod skoro až ochranářsky obtočí ruce kolem své berle. "Nedá se určit, co bylo *tvoje* nebo od někoho jiného, mrtvolo. Nejspíš nebylo nic."~ */
  IF ~~ THEN REPLY #18175 /* ~Pravda: "Pharode, má trpělivost je u konce. Z tebe ani z tvé vesnice nic nezbude, jestli mi nevydáš ten 'poplatek'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_3","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18176 /* ~Bluf: "Pharode, má trpělivost je u konce. Z tebe ani z tvé vesnice nic nezbude, jestli mi nevydáš ten 'poplatek'."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_4","GLOBALLaw",-1)
~ GOTO 76
  IF ~  !Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18177 /* ~Pravda: "Pharode, má trpělivost je u konce. Jestli mi nevydáš, co mi bylo odcizeno, tak dohlédnu na to, aby se Spalovači dozvěděli, kde tě najít."~ */ GOTO 76
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18178 /* ~Pravda: "Pharode, má trpělivost je u konce. Jestli mi nevydáš, co mi bylo odcizeno, tak dohlédnu na to, aby se Spalovači dozvěděli, kde tě najít."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_4","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18179 /* ~"Tak dobře... kdo mě to teda našel?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1 75.2 75.3
  SAY #17907 /* ~Pharod je chvíli zticha. Poklepává pomalu svými prsty o berlu.~ */
  IF ~~ THEN REPLY #18180 /* ~"Tak co bude?"~ */ DO ~SetGlobal("Pharod_Extortion","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 77
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18181 /* ~"To je jedno. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18182 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #17908 /* ~"Kam se poděla lidská slušnost..." Pharod reptá a kroutí hlavou. "Prokazuju ti laskavost, mrtvolo... takovou laskavost. Pharod *zříkající* se něčeho... byla by to pro mě kniha mrtvých, kdyby to někdo slyšel... počkej tu a ani se nehni. Já se vrátím."~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #18183 /* ~Čekej...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18185 /* ~Pharod přinesl poplatek, který mu dala jeho dcera z mého těla. S poplatkem byl divný kus papíru... mám takový pocit, že jsem ho napsal sám sobě.~ */ GOTO 78
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18184 /* ~"Hmmm. Zajímalo by mě kam to šel..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18186 /* ~Pharod přinesl poplatek, který mu dala jeho dcera z mého těla. S poplatkem byl divný kus papíru... mám takový pocit, že jsem ho napsal sám sobě. Ale jsem ještě zvědavější, kam Pharod šel pro ten poplatek... neodešel hlavními dveřmi a nemyslím, že z jeho skrýše jsou jiné východy. ~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #17909 /* ~Po dlouhé době se Pharod vrací, jeho berla klepe o dlaždice. V rukou drží několik předmětů, které ti podává. "Budeš o tomhle *mlčet* a budeš rád, že jsem si vůbec vzpomněl..." ~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18187 /* ~"Pár stovek měďáků a kus papíru? Skvělý. Kdože mě to našel?"~ */ DO ~GiveGoldForce(200)
GiveItemCreate("Npharod",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #18188 /* ~"Pár stovek měďáků, kus papíru a prsten? No dobře... kdože mě to našel?"~ */ DO ~GiveGoldForce(250)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #18189 /* ~"Pár stovek měďáků, kus papíru, obvazy a prsten? No dobře... kdože mě to našel?"~ */ DO ~GiveGoldForce(350)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 79 // from: 17.2
  SAY #17910 /* ~Pharod na tebe mhouří očima, kůže z jeho čela mu skoro překrývá oči. "Ano, měl jsi deník když jsme spolu naposled  mluvili... ztratil se ti?" Pharod se suše pochechtává "Tyhle oči ho neviděly... ale budu je mít na stopkách. Strašně rád bych si přečetl takové *velkolepé* dílo..."~ */
  IF ~~ THEN REPLY #18190 /* ~"Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18191 /* ~"Musím se vzdálit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 33.0
  SAY #17911 /* ~"Lži, které způsobí smrt někoho jiného, jsou ta nejhorší věc..." Pharod klepe svou berlou a nepatrně sípá. "Radši dodrž své slovo, mrtvolo, jinak tě Sféry rozemelou jako mlynářovo kolo."~ */
  IF ~~ THEN REPLY #18192 /* ~"Budu si to pamatovat. Mám pro tebe jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #18193 /* ~"Uvidíme, Pharode. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #47307 /* ~"Annah, růže mých očí - neučil jsem tě *vážit si* mrtvých?" Po tváři mu přelétl mírný úsměv a složil ti mírnou poklonu. "Tato schopná mrtvola potřebuje vědět, kde jsi ji našla."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 220
END

IF ~~ THEN BEGIN 82 // from:
  SAY #47308 /* ~"Ach! Ano, moje chyba..." Pharod přikývl, jeho hlas zvážněl. "Jenže, má drahá Annah, je to stejně i TVÁ chyba... protože když jsi ho přinesla ke mně, byl v knize mrtvých jen jednou nohou." Lehce udeřil berlou do dlaždic. "Probudil se, vyhledal mě - VELMI trapné."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 221
END

IF ~~ THEN BEGIN 83 // from:
  SAY #47309 /* ~"Ukaž mu, kde jsi nalezla jeho tělo, Annah." Pharod ťukl berlou znova, aby podtrhl svá slova. "Vezmi ho do té strašidelné ulice." Pharod Annah chvilku sledoval, pak se široce usmál a obrátil se k tobě. "Když se ti náhodou podaří ztratit mou drahou Annah cestou k ulici, mrtvolo, vrať se za Pharodem. Doprovodím tě..."~ */
  IF ~~ THEN JOURNAL #59007 /* ~Nevím, jestli se mám cítit poctěn nebo uražen... Pharod právě řekl své 'dceři', ať mě odvede na místo, kde našla mé tělo. Nějaká prokletá ulička. Řekl mi, že kdyby se po cestě někde ztratila, ať přijdu zpátky a on mě tam odvede sám...~ */ EXTERN ~DANNAH~ 224
END

IF ~~ THEN BEGIN 84 // from:
  SAY #47310 /* ~"Annah..." Pharodův hlas je tichý, ale dívčinu řeč přerušil jako nůž. "Postarej se o něj. Hleď, aby se mu ve městě nic nestalo. Pak ho doprovoď, kam si bude přát."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 226
END

IF ~~ THEN BEGIN 85 // from: 74.0
  SAY #47829 /* ~"Má milá Annah se musela proplížit jednou z jejich nocleháren, aby se dostala do ulice, kde tě našla... mezi ní a ulicí, kde našla tvé tělo, leží jejich obydlí."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47832 /* ~"Takže... musím *nejdřív* projít domem, abych se dostal do 'příšerné ulice'?"~ */ GOTO 86
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47833 /* ~"Chtěl bych se tě na něco zeptat..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47834 /* ~"No dobře, to je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #47830 /* ~"Ano... říkala něco o tom, že Chaotici mají zvláštní bránu." Pharod se na chvíli zamyslel. "Byly to dveře, jež šly otevřít jen, když ses nedíval - jinak neuvidíš nic jiného než malbu dveří."~ */
  IF ~  Global("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47835 /* ~"Vzpomínám si na ty dveře... jsou severovýchodně od krčmy U doutnajícího nebožtíka. A já jsem si myslel, že je to jen obraz. Jenže se z nich stanou SKUTEČNÉ dveře, když je zkusíš otevřít se zavřenýma očima?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Pharod mi pověděl, kde bylo nalezeno moje tělo... v 'příšerné ulici', v Úlu, nedaleko baru U doutnajícího nebožtíka. Snad tam najdu nějaké informace o tom, jak jsem zemřel. Řekl mi, že když se mám dostat do té ulice, musím projít skrz budovu hemžící se Chaotiky. Vchod do domu je obraz dveří severovýchodně od Doutnajícího nebožtíka; když zavřeš oči, jsou z nich skutečné dveře. Tohle město je čím dál divnější... ~ */ GOTO 87
  IF ~  Global("Know_Painted_Door","GLOBAL",0)
~ THEN REPLY #47836 /* ~"Takže ty... namalované dveře... jsou severovýchodně od Doutnajícho nebožtíka? A promění se v něco VÍC než obraz, když se je pokusíš otevřít se zavřenýma očima?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Pharod mi pověděl, kde bylo nalezeno moje tělo... v 'příšerné ulici', v Úlu, nedaleko baru U doutnajícího nebožtíka. Snad tam najdu nějaké informace o tom, jak jsem zemřel. Řekl mi, že když se mám dostat do té ulice, musím projít skrz budovu hemžící se Chaotiky. Vchod do domu je obraz dveří severovýchodně od Doutnajícího nebožtíka; když zavřeš oči, jsou z nich skutečné dveře. Tohle město je čím dál divnější... ~ */ GOTO 87
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47837 /* ~"Chtěl bych se tě ještě na něco zeptat..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47838 /* ~"No dobře, to je všechno, co jsem chtěl vědět. Půjdu najít ty namalované dveře."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0 86.1
  SAY #47831 /* ~"Ano..." Usmál se Pharod. "Podivné jsou cesty Sigilské, mrtvolo. Podivné jsou cesty Sigilské." ~ */
  IF ~~ THEN REPLY #47839 /* ~"Chtěl bych se tě ještě na něco zeptat..."~ */ GOTO 17
  IF ~~ THEN REPLY #47840 /* ~"No dobře, to je všechno, co jsem chtěl vědět. Půjdu najít ty namalované dveře."~ */ EXIT
END
