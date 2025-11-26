// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR1~

IF ~~ THEN BEGIN 0 // from:
  SAY #52677 /* ~"*Konečně.* Myslel jsem, že se do smrti nedočkám."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59897 /* ~"Dávej si pozor *jak* se mnou mluvíš, ty ubohá trosko. Měl štěstí že se dostal až sem, přes všechny ty nástrahy a pasti, které jsi po Pláních rozesel. Přísahám, že kdybych mohl vrátit čas a zbavit tě tvého utrpení, tak b-"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #62914 /* ~"U všech čertů, on ztratil komplet celou paměť! Kurva fagot! Teď je k ničemu!"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 2
END

IF ~~ THEN BEGIN 3 // from:
  SAY #62915 /* ~"Už si mě dohnal až k hranicím mojí trpělivosti! Buď ticho, nebo -"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY #62916 /* ~"Ani pro nás není čas delší. Nebudu tu jen tak postávat a marnit ho, když nás naši protivníci nepochybně chytají. Už jsme čekali dost dlouho, aby se probudil - promluvím s ním hned teď."~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("1203cut2",FALSE)
~ EXIT
END

IF ~  Global("Practical_Incarnation","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #62917 /* ~Muž před tebou se ti podobá, ale jeho držení těla je na člověka příliš nezvyklé. Jeho oči tě obezřetně pozorují a jak si ho prohlížíš, cítíš, že on si prohlíží tebe. "Tak... zašlo to až sem." ~ */
  IF ~~ THEN REPLY #62918 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Practical_Incarnation","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #62919 /* ~"Své jméno nevydám ani tobě ani jinému člověku." Mužův hlas je hrubý, stejně jako ten tvůj, a v tvých uších zní hrozivě. "Otázku 'kdo jsi' radši polož sám sobě - jsi totiž jedno z mých vtělení. Dostal ses až jsem a já jsem tě vedl."~ */
  IF ~~ THEN REPLY #62920 /* ~"Počkej - my že jsme oddělené vtělení? Jak je to možné?"~ */ DO ~SetAnimState("Incar1",ANIM_MIMESTAND)
~ GOTO 8
END

IF ~  Global("Practical_Incarnation","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #62921 /* ~Tvůj příchod obdarovalo toto zjevení kamenným pohledem. Vypadá, jako by odhadovalo tvé slabosti. ~ */
  IF ~~ THEN REPLY #62922 /* ~"Kdo jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #62923 /* ~"Jestli jseš součást mě, tak bych teda rád věděl pár věcí."~ */ GOTO 20
  IF ~~ THEN REPLY #62924 /* ~Nech zjevení na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #62925 /* ~Muž je najednou zcela tiše a po chvíli se jeho výraz změnil na pohrdavý. ~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #62926 /* ~"Jestli je něco, co na tobě nenávidím, tak jsou to tvoje nesčetné otázky - tvé zoufalé šátrání po myšlenkách a odpovědích." Mužův hlas zní krutě a ostře a jeho tváří každou chvíli probleskne zloba. "Čas otázek právě skončil. Teď budeš naslouchat ty mě. Jako první jsem se dostal do Pevnosti, ale ať už tu čekalo cokoliv, tak mě to dostalo. Podruhý mě to už neporazí."~ */
  IF ~~ THEN REPLY #62927 /* ~"Zníš... Zní to, jako bys chtěl bojovat s čímkoliv, co tu čeká."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #62928 /* ~Muž tě obštědřil chladným pohledem a poté si tě prohlédl. "¨Zajisté. To je jediný důvod, proč spolu teď mluvíme. Potřebuju tě jako schránku - ale tvá mysl musí být má mysl. Rozumíš?"~ */
  IF ~~ THEN REPLY #62929 /* ~"To jako, že mě budeš ovládat?"~ */ JOURNAL #68253 /* ~Probral jsem se poté, co jsem se dotknul krystalu. Objevil jsem se zavřený v místnosti, obklopený svými vlastními inkarnacemi - jedna z nich, ta praktická, mi řekla, že tohle místo může opustit jenom *jeden* z nás. Řekl mi, že buď se musíme spojit tak, že odevzdáme svou vůli jednomu z nás, nebo bude muset jeden z nás zabít ostatní tři. Musím se dát dohromady a vyřešit. Nejdřív bych si měl asi promluvit i s ostatními inkarnacemi.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 20.24
  SAY #62930 /* ~"Ano." Rozhlédl se kolem po bodcích na zdech a pak se opět obrátil na tebe. "Nemůžeme odtud odejít po částech. Může odejít jen jeden."~ */
  IF ~  !Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62931 /* ~"Jak se staneme jedním?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68457 /* ~"O čem to mluvíš?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Deionarra","GLOBAL",0)
~ THEN REPLY #68504 /* ~"O čem to mluvíš?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68505 /* ~"A jak navrhuješ, že bychom něco takového udělali?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2 11.3 20.23
  SAY #62932 /* ~"Musíš svou vůli odevzdat mě - tvé vědomosti a dovednosti: cokoliv, co se ti v životě podařilo získat, se teď může hodit." Opět si tě přeměřil. "Sice by to byl jenom zlomek té mé síly, ale dokázal bych to nějak využít."~ */
  IF ~~ THEN REPLY #62933 /* ~"A co když ti nechci odevzdat svojí vůli?"~ */ GOTO 13
  IF ~~ THEN REPLY #62934 /* ~"Jak se ti mám poddat?"~ */ GOTO 16
  IF ~~ THEN REPLY #62935 /* ~"Už jsi sem přišel dřív... a byl jsi poražen."~ */ GOTO 17
  IF ~~ THEN REPLY #62936 /* ~"Jestli si jedno z mých vtělení, tak bych se tě teda chtěl na něco zeptat..."~ */ GOTO 20
  IF ~~ THEN REPLY #62937 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 18.2
  SAY #62938 /* ~"Nejspíš nemáš na vybranou. Nevíš přece, jak uprchnout z tohoto místa. Já ale ano. Jestli ty odmítneš poddat se mě, tak já odmítnu poddat se tobě - a ani jeden z nás už tohle místo nikdy neopustí. Jen jeden může odejít a ty to nebudeš."~ */
  IF ~~ THEN REPLY #62939 /* ~"Mohl bych tě zabít."~ */ GOTO 14
  IF ~~ THEN REPLY #62940 /* ~"Jak se ti mám poddat?"~ */ GOTO 16
  IF ~~ THEN REPLY #62941 /* ~"Už jsi sem přišel dřív... a byl jsi poražen."~ */ GOTO 17
  IF ~~ THEN REPLY #62942 /* ~"Jestli si jedno z mých vtělení, tak bych se tě teda chtěl na něco zeptat..."~ */ GOTO 20
  IF ~~ THEN REPLY #62943 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #62944 /* ~"Můžeš to zkusit." Muž vypadá pobaveně. "Nemáš ale sílu na to, abys mě přemohl, stejně jako nemáš sílu na to, aby sis mě podmanil. Nerad bych tě zabíjel kvůli útěku z tohoto místa, přesto by to byla malá cena za svobodu. Nemá ale smysl aby, jeden z nás tady umíral. Přesto, kdyby ses mi podal, posílilo by mě to."~ */
  IF ~~ THEN REPLY #62945 /* ~"Takže já se mám poddat tobě? A proč se ty nepoddáš mě?"~ */ GOTO 15
  IF ~~ THEN REPLY #62946 /* ~"Jak se ti mám poddat?"~ */ GOTO 16
  IF ~~ THEN REPLY #62947 /* ~"Už jsi sem přišel dřív... a byl jsi poražen."~ */ GOTO 17
  IF ~~ THEN REPLY #62948 /* ~"Jestli si jedno z mých vtělení, tak bych se tě teda chtěl na něco zeptat..."~ */ GOTO 20
  IF ~~ THEN REPLY #62949 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #62950 /* ~"Tobě?" Vydal ze sebe krátký smích, skoro jako štěkot. "Protože to by nijak nepomohlo. Žil jsi jenom zlomek doby, co já. Nesvěřím svojí vůli takovému amatérovi jako jseš ty."~ */
  IF ~~ THEN REPLY #62951 /* ~"Dobrá, jak se ti tedy mám odevzdat?"~ */ GOTO 16
  IF ~~ THEN REPLY #62952 /* ~"Už jsi sem přišel dřív... a byl jsi poražen."~ */ GOTO 17
  IF ~~ THEN REPLY #62953 /* ~"Jestli si jedno z mých vtělení, tak bych se tě teda chtěl na něco zeptat..."~ */ GOTO 20
  IF ~~ THEN REPLY #62954 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 13.1 14.1 15.0
  SAY #62955 /* ~"Jednoduše řečeno, začneme na sebe upřeně zírat a ty se mi odevzdáš. Sločíš se tak se mnou a staneme se jedním. Přitom bude dominovat moje vůle."~ */
  IF ~~ THEN REPLY #62956 /* ~Pravda: "Tak dobrá... poddám se ti."~ */ GOTO 47
  IF ~~ THEN REPLY #62957 /* ~Bluf: "Tak dobrá... poddám se ti."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62958 /* ~"Už jsi sem přišel dřív... a byl jsi poražen."~ */ GOTO 17
  IF ~~ THEN REPLY #62959 /* ~"Jestli si jedno z mých vtělení, tak bych se tě teda chtěl na něco zeptat..."~ */ GOTO 20
  IF ~~ THEN REPLY #62960 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 13.2 14.2 15.1 16.2 18.1
  SAY #62961 /* ~Muž se zamračil. "Všechno se to odehrálo nečekaně. Navíc jsem netušil, že po mém příchodu ode mě budou odděleni moji společníci... co se stalo potom... je matoucí."~ */
  IF ~~ THEN REPLY #62962 /* ~"Takže i když se ti podám, pořád ještě můžeme selhat?"~ */ GOTO 18
  IF ~~ THEN REPLY #62963 /* ~"Jestli jsi jedno z mých vtělení, tak bych se tě teda chtěl na něco zeptat..."~ */ GOTO 20
  IF ~~ THEN REPLY #62964 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #62965 /* ~"Je to nepravděpodobné. Jsem jediný, kdo ovládá vědomosti nutné k úspěchu - tento okamžik je vyvrcholením mnohých staletí strávených plánováním. Mnoho lidí trpělo a zemřelo, jen abychom dnes mohli stát zde... a jejich obět nesmí přijít nazmar." Ta poslední věta tě vynervovala - byla řečena jako by nic, s žádným náznakem jakékoliv emoce v hlase.~ */
  IF ~~ THEN REPLY #62966 /* ~"Tak co uděláme? Já nevěřím tobě a ty se nechceš poddat mě."~ */ GOTO 19
  IF ~~ THEN REPLY #62967 /* ~"Už jsi sem přišel dřív... a byl jsi poražen."~ */ GOTO 17
  IF ~~ THEN REPLY #62968 /* ~"A proč bych tě měl nechat ovládnout mě?"~ */ GOTO 13
  IF ~~ THEN REPLY #62969 /* ~"Jestli si jedno z mých vtělení, tak bych se tě teda chtěl na něco zeptat..."~ */ GOTO 20
  IF ~~ THEN REPLY #62970 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #62971 /* ~"Tak to tu máme problém. Já ti nesvěřím své vědomosti. To znamená, že z tohoto vězení nikdy neuprchneme a nikdy nenajdeme onoho zabijáka a neosvobodíme se od něj." Mužův hlas zní náhle vznešeně. "Jestli se mi ale odevzdáš, pak nejenom že utečeme z tohoto místa, ale budeme navíc ozbrojeni všemi mými vědomostmi. Příjdeme za tím nepřítelem, porazíme ho a konečně poznáme mír."~ */
  IF ~~ THEN REPLY #62972 /* ~Pravda: "Tak tedy dobrá, souhlasím."~ */ GOTO 47
  IF ~~ THEN REPLY #62973 /* ~Pravda: "Tak tedy dobrá, souhlasím."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62974 /* ~"Ještě to zvážím. Ale pár věcí bych stejně ještě chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #62975 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.1 12.3 13.3 14.3 15.2 16.3 17.1 18.3 19.2 22.1 23.1 24.0 25.3 26.1 27.1 28.0 29.2 31.2 32.2 33.2 34.0 35.1 36.0 37.0 38.1 39.1 40.0 41.0 42.0 43.0 44.1 45.1 51.1 58.0 59.0 60.0 61.3 62.3 63.2 66.2 69.2 70.4 72.3 73.2 74.3
  SAY #62976 /* ~"Vyhovím ti  - ale pouze na okamžik."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62977 /* ~"Ty jsi ten, kdo zachránil Dak'kona na Shra'kt'loru. Ten, kdo uvěznil Vhailora. A ten, kdo přivedl Deionarru na smrt."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62978 /* ~"To ty jsi zachránil Dak'kona na Shra'kt'loru. A ty jsi uvěznil Vhailora."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #62982 /* ~"Ty jsi ten, kdo zachránil Dak'kona na Shra'kt'loru. A ten, kdo přivedl Deionarru na smrt."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62983 /* ~"To ty jsi uvěznil Vhailora. A ty jsi přivedl Deionarru na smrt."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
!Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62984 /* ~"Ty jsi ten, kdo zachránil Dak'kona na Shra'kt'loru.~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  !Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62985 /* ~"To ty jsi uvěznil Vhailora pod Curstem.~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #62986 /* ~"Ty jsi ten, kdo přivedl Deionarru na smrt."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62987 /* ~"Dal jsi Dak'konovi Nerozluštěný kruh Zerthimonův. Proč?"~ */ GOTO 22
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62988 /* ~"Jaký měla účel záchrana Dak'kona na Shra'kt'loru?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62989 /* ~"Zachránil jsi Dak'kona na Shra'kt'loru kvůli jeho čepeli. Proč?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62990 /* ~"Jaký jsi měl důvod k uvěznění Vhailora?"~ */ GOTO 25
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62991 /* ~"Čím si Deionarra zasloužila smrt?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62992 /* ~"Čím si Deionarra zasloužila smrt?"~ */ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #62993 /* ~"Pověz mi o Xachariášovi."~ */ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Old_Companions","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #62994 /* ~"Co se stalo s tím střelcem, který cestoval do této Pevnosti?"~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62995 /* ~"To ty jsi naučil Ignuse Umění?"~ */ GOTO 41
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
~ THEN REPLY #62996 /* ~"Postavil jsi tu hrobku pod Sigilem, nebo ne? Tu s těmi pastmi?"~ */ GOTO 57
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
~ THEN REPLY #62997 /* ~"Postavil jsi tu hrobku pod Sigilem, nebo ne? Tu s těmi pastmi?"~ */ GOTO 37
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62998 /* ~"To ty jsi dostal Morteho ven z Pilíře lebek?"~ */ GOTO 38
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #62999 /* ~"Kdo jsou ti další?"~ */ GOTO 42
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63000 /* ~"Kdo jsou další naše vtělení?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #63001 /* ~"Kdo jsou další naše vtělení?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63002 /* ~"Kdo byli další naše vtělení?"~ */ GOTO 59
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63003 /* ~"Jak odsud utečeš?"~ */ GOTO 12
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63004 /* ~"Pořád ještě bojovat s tím, co tu číhá?"~ */ GOTO 11
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63005 /* ~Pravda: "Chci se s tebou sloučit."~ */ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63006 /* ~Bluf: "Chci se s tebou sloučit."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63007 /* ~"Já se ti nepoddám - poddej se ty mě."~ */ GOTO 44
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63008 /* ~"Jsi zodpovědný za ta tetování na mých zádech? Ty, která jsem četl, když jsem se problal v Márnici."~ */ GOTO 61
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63009 /* ~"To ty jsi požádal Pharoda, aby získal Bronzovou kouli z katakomb?"~ */ GOTO 63
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63010 /* ~"Teď ti nemám co říct. Promluvíme si... později."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6
  SAY #63029 /* ~Mužovy oči se zúžily. "Co z toho? Všechno mělo nějaký účel."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #63030 /* ~"Dal jsi Dak'konovi Nerozluštěný kruh Zerthimonův. Proč?"~ */ GOTO 22
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63031 /* ~"Jaký měla účel záchrana Dak'kona na Shra'kt'loru?"~ */ GOTO 24
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63032 /* ~"Zachránil jsi Dak'kon na Shra'kt'loru kvůli jeho čepeli. Proč?"~ */ GOTO 24
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #63033 /* ~"Jaký si měl důvod k uvěznění Vhailora?"~ */ GOTO 25
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63034 /* ~"Čím si Deionarra zasloužila smrt?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63035 /* ~"Čím si Deionarra zasloužila smrt?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 20.7 21.0
  SAY #63036 /* ~"Nerozluštěný kruh? Tu sbírku lží? Ano, dalo to týden práce v kovárně, udělat takovou věc - bylo ale nutné to udělat, aby o sobě mohl přestat pochybovat."~ */
  IF ~~ THEN REPLY #63037 /* ~"Tys to vyrobil? Ale jemu si řekl -"~ */ GOTO 23
  IF ~~ THEN REPLY #63038 /* ~"Ještě něco bych rád věděl."~ */ GOTO 20
  IF ~~ THEN REPLY #63039 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #63040 /* ~"Možná, že v tom trochu pravdy je - já nevím. Vím jenom, že to psaní bylo na dlouho, ale slova postačila a dala mu víru."~ */
  IF ~~ THEN REPLY #63041 /* ~"Proč?"~ */ GOTO 24
  IF ~~ THEN REPLY #63042 /* ~"Ještě něco bych rád věděl."~ */ GOTO 20
  IF ~~ THEN REPLY #63043 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.8 20.9 21.1 21.2 23.0
  SAY #63044 /* ~"Tvá neznalost mě udivuje." Muž vypadá opravdu ohromeně. "Cožpak ty nevíš, co nosí v ruce? Ta jeho čepel má tvar *myšlenky*. Když se podobná věcička použije správně, dokáže zničit samotný mnohovesmír..." Muž se očividně utápí v myšlenkách, náhle se však ušklíbl a jeho tvář se zošklivila. "Bohužel, když se githzerai dostal do Pevnosti, byl oddělen od ostatních a já nedokázal tu jeho čepel využít." Muž se zamračil. "Škoda."~ */
  IF ~~ THEN REPLY #63045 /* ~"Ještě něco bych rád věděl."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #63046 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.10 21.3
  SAY #63047 /* ~Muž zatřásl hlavou, jako by byl unavený. "Vhailor se stával poněkud... únavným." Ušklíbl se. "Tihleti štvací psi Nemilosrdných jsou schopní tě honit přes celé sféry jenom kvůli té jejich potrehlé spravedlnosti - a Vhailor byl neobyčejně vytrvalý pes." Hlas zjevení se mírně zjemnil. "A na mou chuť byl už příliš blízko spravedlnosti."~ */
  IF ~  !Dead("Incar2")
~ THEN REPLY #63048 /* ~"Proč nás chytal?"~ */ GOTO 26
  IF ~  Dead("Incar2")
~ THEN REPLY #63049 /* ~"Proč nás chytal?"~ */ GOTO 27
  IF ~~ THEN REPLY #63050 /* ~"Mohl představovat nějaké nebezpečí?"~ */ GOTO 28
  IF ~~ THEN REPLY #63051 /* ~"Ještě něco bych rád věděl."~ */ GOTO 20
  IF ~~ THEN REPLY #63052 /* ~"Počkej, srovnám si to v hlavě a pak si zase můžem promluvit."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63053 /* ~"Byla spousta důvodů, které jsem měl na svědomí já - a ještě víc, které měla na svědomí další vtělení." Hodil pohledem po stvoření, které skuhralo při tvém příchodu. "Mnoho životů bylo začerněno vtěleními s poškozenou myslí. Někteří z nás také vyvolávali... potíže. Já věřím v řešení."~ */
  IF ~~ THEN REPLY #63054 /* ~"Byl Vhailor nějakou hrozbou?"~ */ GOTO 28
  IF ~~ THEN REPLY #63055 /* ~"Fajn. Ještě něco bych rád věděl."~ */ GOTO 20
  IF ~~ THEN REPLY #63056 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63057 /* ~"Byla spousta důvodů, které jsem měl na svědomí já - a ještě víc, které měla na svědomí další vtělení. Jak jsi pravděpodobně viděl na té ubohé trosce, co tu byla s námi - mnoho životů bylo začerněno vtěleními s poškozenou myslí. Někteří z nás také vyvolávali... potíže. Já věřím v řešení."~ */
  IF ~~ THEN REPLY #63058 /* ~"Byl Vhailor nějakou hrozbou?"~ */ GOTO 28
  IF ~~ THEN REPLY #63059 /* ~"Fajn. Ještě něco bych rád věděl."~ */ GOTO 20
  IF ~~ THEN REPLY #63060 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.0 27.0
  SAY #63061 /* ~"Ach ano - jinak bych ho prostě zabil." Přikývl. "Je tu totiž jistá spojitost mezi ním a samotnou spravedlností a to mu dává moc dokonce i nad nesmrtelnými jako jsme my." Muž se mírně pousmál. "A to hlavně, když jsou tvé prohřešky ohromné... a naše jsou ty nejčernější."~ */
  IF ~~ THEN REPLY #63062 /* ~"Aha... ještě na pár věcí bych se rád zeptal."~ */ GOTO 20
  IF ~~ THEN REPLY #63063 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 20.11 20.12 21.4 21.5
  SAY #63064 /* ~"Deionarra? To děvče mělo v sobě málo cítění sfér a to bylo přesně to, proč jsem ji potřeboval. Vidíš, Spalovači měli pravdu - někdy, když cítíš příliš nadšení, lpíš tak těsně na svém životě, že ho ani nenecháš odejít. A to byl případ Deionarry."~ */
  IF ~  NearbyDialog("Dincar2")
~ THEN EXTERN ~DINCAR2~ 43
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63065 /* ~"Čím si Deionarra zasloužila smrt?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63066 /* ~"Aha... ještě na pár věcí bych se rád zeptal."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63068 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #63070 /* ~Stvoření se letmo podívalo na skučícího a ušklíblo se. ~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63071 /* ~"Tvé obviňování mě z čehokoliv je k smíchu." Otočil se k tobě zády. "Nebylo to ze zlomyslnosti - ačkoliv už se začínala stávat únavnou. Je to jen tím, že když jsem dorazil do Pevnosti, nezamýšlel jsem zůstat. Jenom jsem se chtěl dostat dovnitř, obětovat jí a zase vypadnout ven." ~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 26
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63076 /* ~"Proč si jí zabil?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63077 /* ~"Aha... ještě na pár věcí bych se rád zeptal."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63078 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 31.1
  SAY #63079 /* ~"Potřeboval jsem někoho, kdo by mi dělal oči v Negativní materiální sféře, někoho, kdo by sloužil jako špión a snažil se zjistit, kdo nebo co ten zabiják je. Pouze mrtví zde mohou přežít po delší dobu - takže Deionarra měla být obětována, aby se stala něčím jiným, než byla. Úskočná činnost, ale vyšla - pomohla ti snad, nebo ne?"~ */
  IF ~~ THEN REPLY #63081 /* ~"Neměl si jí zabíjet."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Practical_1","GLOBALGood",1)
~ GOTO 33
  IF ~~ THEN REPLY #63082 /* ~"To ano. Možná, že to nakonec přece jen byla správná věc."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Practical_1","GLOBALGood",-2)
~ GOTO 60
  IF ~~ THEN REPLY #63083 /* ~"Už se o tom nechci bavit. Radši bych si povídal o něčem jiném."~ */ GOTO 20
  IF ~~ THEN REPLY #63084 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63085 /* ~Na chvíli se na tebe tiše díval a pak se mu pošklebek vrátil na rty. "A proto bys byl poražen tváří v tvář nepříteli. To protože jsi SLABÝ. A nechápeš, že některé věci jsou NUTNÉ."~ */
  IF ~~ THEN REPLY #63086 /* ~"Tohle nebylo nutné. Jenom se ti to hodilo. Měl ses poohlédnout po jiném řešení."~ */ GOTO 34
  IF ~~ THEN REPLY #63087 /* ~"Ty si troufáš navat mě slabým?! Pro zničení nepřítele jsi zničil tyto velké sféry, i když on si tě stejně podal, a kvůli týhle hovadině umřela nebohá holka! Možná, že kdybys svojí práci udělal už napoprvý, tak by se nic z tohodle nemuselo stát!"~ */ GOTO 34
  IF ~~ THEN REPLY #63088 /* ~"Už se o tom nechci bavit. Radši bych si povídal o něčem jiném."~ */ GOTO 20
  IF ~~ THEN REPLY #63089 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #63090 /* ~"Ty mě tady budeš poučovat?! Ženský šli po naší cestě vždycky s náma - jak Deionarra, tak Ravel, tak i spousta dalších - a přitom trpěly, ale vždycky to byla jejich VOLBA. Deionarra pro mě zemřela, když jsem jí o to požádal. Nebyl to žádnej ZLOČIN."~ */
  IF ~~ THEN REPLY #63091 /* ~"Už se o tom nechci bavit. Radši bych si povídal o něčem jiném."~ */ GOTO 20
  IF ~~ THEN REPLY #63092 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 20.13 20.14
  SAY #63093 /* ~"Střelci? No, starej Xachariáš mohl svýma 'očima' vidět věci, který já ne - a mohl do nich taky střílet svýma šípama."~ */
  IF ~~ THEN REPLY #63094 /* ~"Takže?"~ */ GOTO 36
  IF ~~ THEN REPLY #63095 /* ~"Fajn. Ještě něco bych rád věděl."~ */ GOTO 20
  IF ~~ THEN REPLY #63096 /* ~"Už se o tom nechci bavit. Radši bych si povídal o něčem jiném."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63097 /* ~"No, do této Pevnosti jsem šel vlastně naslepo - Nevěděl jsem, co bylo tím mým zabijákem, takže jsem potřeboval mít s sebou někoho, kdo vidí to, co já ne, v případě, že by nepřítel byl mimo můj vizuální postřeh." Povzdechl si. "Xachariáš ale umřel moc rychle, takže nakonec nebyl k ničemu."~ */
  IF ~~ THEN REPLY #63098 /* ~"Aha... ještě na pár věcí bych se rád zeptal."~ */ GOTO 20
  IF ~~ THEN REPLY #63099 /* ~"Už jsem slyšel dost. Promluvíme si o tom zase později."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 20.17
  SAY #63100 /* ~"Téměř jsem zapomněl - ano, jaká to byla spoušť. "Zjevení vypadá popuzeně. "Samozřejmě, že to nefungovalo. A stálo to moc peněz a krve taky. "Zamračil se. "Bylo to krátce po mém selhání a krátce po mém rozhodnutí, že povedu proti nepříteli válku, namísto toho, abych na něj čekal ještě déle."~ */
  IF ~~ THEN REPLY #63101 /* ~"Já... rozumím. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63102 /* ~"Už jsem slyšel dost. Měli bychom si více pohovořit... později."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 20.18 61.1 62.1
  SAY #63103 /* ~"Morte je ještě *naživu?*" Vtělení chvíli nevěřícně zíralo, pak se začalo smát. "Cha! Ta špičatá lebka nemohla být schovaná dále, než jsem ji hodil - prohlašujíc, že mám informaci, kterou jsem neměl, *pak* jsem ho mučil zvědavostí o Sloupu Lebek, pak on *předstíral neznalost* jak z toho byl mimo." Vtělení se ušklíblo. "Vyhovím mu, od té doby co mi řekl vše co jsem od něj potřeboval."~ */
  IF ~~ THEN REPLY #63104 /* ~"Předstíranou neznalost?"~ */ DO ~SetGlobal("Know_Morte_Lie","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #63105 /* ~"Hmmm. Jsou ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63106 /* ~"Už jsem slyšel dost. Měli bychom si více pohovořit... později."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #63107 /* ~"Ah, ano." Muž se usmál. "Jednou lhář, vždycky lhář. Ačkoliv to vyžaduje silného ducha poté co se mi smála lebka."~ */
  IF ~~ THEN REPLY #63108 /* ~"Jaká byla ta jeho hra? O čem ještě lhal?"~ */ GOTO 40
  IF ~~ THEN REPLY #63109 /* ~"Hmmm. Jsou ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63110 /* ~"Už jsem slyšel dost. Měli bychom si více pohovořit... později."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #63111 /* ~Vtělení se samolibě usmálo. "Na tom nezáleží. Nechme lebce její tajemství - jsou pro nás bezcenná."~ */
  IF ~~ THEN REPLY #63112 /* ~"Výborně. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63113 /* ~"Už jsem slyšel dost. Měli bychom si více pohovořit... později."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.15
  SAY #63114 /* ~"Ignus?" Muž na tebe zírá, pak se zamračil. "To je jméno? O kom to k čertu mluvíš?"~ */
  IF ~~ THEN REPLY #63115 /* ~"Už jsi mi odpověděl. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63116 /* ~"Už jsem slyšel dost. Měli bychom si více pohovořit... později."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 20.19
  SAY #63117 /* ~"Další vtělení - odrazy jich samotných. Poté, co to s tebou vyřídím, splynu sám se sebou." Pohlédl na shrbené vtělení, které zakvílelo, když jsi poprvé přišel. "Nebo je zabiju pokud odmítnou; na tom nezáleží. Nejsou zapotřebí."~ */
  IF ~~ THEN REPLY #63118 /* ~"Chápu. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63119 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.20 20.21
  SAY #63120 /* ~"Je jedním z dalších vtělení - odrazů mne samotného. Nechám ho, aby se mnou splynul, jakmile to s tebou vyřídím. Nebo ho zabiju, pokud to odmítne; na tom nezáleží."~ */
  IF ~~ THEN REPLY #63121 /* ~"Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63122 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 20.27
  SAY #63123 /* ~Muž se na tebe podíval, pak se nedůvěřivě usmál. "Nikomu se nevzdám. Jsi to ty, kdo bude pohlcen mnou."~ */
  IF ~~ THEN REPLY #63124 /* ~"Pochybuji."~ */ GOTO 45
  IF ~~ THEN REPLY #63125 /* ~"Pak tedy s tebou dnes bojovat nebudu. Ještě jsou tady další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63126 /* ~"Pak to nevadí. Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 70.1 72.1 74.0
  SAY #63127 /* ~"Chceš se mnou kvůli tomu bojovat?" Muž vypadá spíše pobaveně než cokoliv jiného. "Na mne jsi krátký. Máš malou odolnost."~ */
  IF ~~ THEN REPLY #63128 /* ~"Vyzkoušej mne."~ */ GOTO 47
  IF ~~ THEN REPLY #63129 /* ~"Pak tedy s tebou dnes bojovat nebudu. Ještě jsou tady další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63130 /* ~"Pak to nevadí. Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 47.0
  SAY #63131 /* ~Spojil jsi s ním pohled... jeho oči jsou jako kameny, a začínají tě vyčerpávat...~ */
  IF ~  CheckStatGT(Protagonist,20,WIS)
~ THEN REPLY #63132 /* ~Spojili jste pohledy, zkoušíš a tlačíš ho k tomu, aby se s tebou spojil.~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,INT)
CheckStatLT(Protagonist,21,WIS)
~ THEN REPLY #63133 /* ~Spojili jste pohledy, zkoušíš a tlačíš ho k tomu, aby se s tebou spojil.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,21,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #63134 /* ~Spojili jste pohledy, zkoušíš a tlačíš ho k tomu, aby se s tebou spojil.~ */ GOTO 49
  IF ~~ THEN REPLY #63135 /* ~Vzdej se své vůle a nech se pohltit.~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 16.0 16.1 19.0 19.1 20.25 20.26 45.0 70.2 70.3 72.2 74.1 74.2
  SAY #63136 /* ~"Pak tedy budiž." Jeho oči zešedly jako mlha, a lehce se usmál, jakoby v očekávání. "Podíváme se, co má tvá mysl na skladě..."~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 48 // from: 46.3
  SAY #63137 /* ~Cítíš, jak se tvá mysl loupe pod upřeným pohledem zjevení. Neexistuje bolest, jen chladné mrazení zapomenutí, jak je tvá osobnost odvlékána pryč, kousek po kousku, a temnota vyplňuje tvé představy. A náhle, už nejsi.~ */
  IF ~~ THEN REPLY #63138 /* ~Pád to temnoty...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2
  SAY #63139 /* ~Cítíš jak se tvá mysl začíná oloupávat, jakmile jsi s ním spojil pohled, a *víš*, že jeho mysl je silnější než tvoje. Pokud budeš pokračovat, pohltí tě a už více nebudeš -~ */
  IF ~~ THEN REPLY #63140 /* ~Nechej zjevení, aby tě pohltilo.~ */ GOTO 50
  IF ~~ THEN REPLY #63141 /* ~Odtrhni od něj oči, odvrať se.~ */ GOTO 51
  IF ~~ THEN REPLY #63142 /* ~Odtrhni se od jeho upřeného pohledu a zaútoč na něj. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #63143 /* ~Jak se tvá mysl rozplétá, neexistuje bolest, jen chladné mrazení zapomenutí, jak je tvá osobnost odvlékána pryč, kousek po kousku, a temnota vyplňuje tvé představy. A náhle, už nejsi.~ */
  IF ~~ THEN REPLY #63144 /* ~Pád to temnoty...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY #63145 /* ~Odtrhuješ svůj pohled od jeho, a vidíš, jak se jeho tvář zkroutila vzteky. "Co to *děláš?!* Jsi tak slabý, že se nemůžeš postavit své budoucnosti?! K čertu, jakou dutou skořápkou jsi se stal!"~ */
  IF ~~ THEN REPLY #63146 /* ~"Snad... tak... ale já dosud... mám sílu tě ZABÍT... připrav se na SMRT."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63147 /* ~"Jsou ještě... jiné věci... které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63148 /* ~"Nech mne, abych si to... ujasnil... pak se vrátím."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 46.0 46.1
  SAY #63149 /* ~Jak proplouváš koridory jeho mysli, první emoce, kterou cítíš je překvapení - a jeho oči se rozšiřují. Nepohlcuje tě; tvá mysl je silnější, a ty stravuješ *jeho.* Cítíš, jak se to zoufale snaží zastavit, ale nemůže - je příliš slabý, a tvoje vůle blokuje jeho ústup, zatímco ho vtahuješ hlouběji do svého podvědomí.~ */
  IF ~~ THEN REPLY #63150 /* ~"To je naposledy, kdy spolu mluvíme. Vrať se ke smrti, kam *patříš.*"~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #63151 /* ~Chvíli vypadá nedůvěřivě a pak se rozpadá, a ty cítíš PŘÍVAL vědomostí, které se na tebe valí, deroucí se k povrchu... je toho skoro příliš mnoho na to, abys to vše najednou přijal, a cítíš se dezorientován. Tolik znalostí - tolik zkušeností, že -~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,96000)
PermanentStatChange(Protagonist,INT,RAISE,1)
PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #63152 /* ~...a tak rychle, jak se vyskytl, příval ustoupil, a stáváš se sám sebou. Útržky informací víří ve tvé mysli a porozumíš jim později. Prozatím je důležitý jen kousek znalostí - zjevení NEVÍ, jak se odtud dostat. Lhalo, aby tě donutilo se vzdát.~ */
  IF ~~ THEN REPLY #63153 /* ~"Hrome..."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #63154 /* ~"Plýtval jsi časem na rozhovor s tamtím. Jeho myšlenky jsou celé pokřivené a plné zášti a nic víc. Přestaň ztrácet čas - je nás více, se kterými musíš mluvit."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 4
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63155 /* ~"*Nevyhrožuj* mi, ty blázne - varuji tě. Jestli je tady někdo zloděj, jsi to ty - ty jsi chtěl ukrást naše šance urovnat tuto věc, sabotáží celé mé práce!"~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 22
END

IF ~~ THEN BEGIN 57 // from: 20.16
  SAY #63156 /* ~"Už jsem skoro zapomněl - ano, jaké to bylo mrhání." Vtělení vypadá popuzeně. "Samozřejmě, *to* nefunguje. A stálo to spoustu krve a peněz."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 44
END

IF ~~ THEN BEGIN 58 // from:
  SAY #63157 /* ~První vtělení se zamračilo na druhé; vypadá, že se tak tak drží, aby nenapadlo ostatní. "Ještě na *další* věc mi odpověz..." Otočil se zpět k tobě. "Ačkoliv předpokládám, že na tom nezáleží. Bylo to krátce potom co neuspěla past v hrobce, když jsem se rozhodl, že raději přenesu boj k našemu vrahovi, než abych déle čekal."~ */
  IF ~~ THEN REPLY #63158 /* ~"Já... chápu. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63159 /* ~"Už jsem slyšel dost. Měli bychom si více pohovořit... později."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 20.22
  SAY #63160 /* ~"Oni byli další vtělení - odrazy nás samotných. Chtěl jsem, aby se mnou splynuly, ale nezáleží na tom. Jsou nepotřební."~ */
  IF ~~ THEN REPLY #63161 /* ~"Chápu. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63162 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 32.1
  SAY #63163 /* ~"*Samozřejmě* by byla správná věc to udělat. Už se na to chystám desetiletí, promýšlím nejmenší detaily." Jeho oči se upřely do dálky. "Dokonce tak, že už je to uzavřená věc." ~ */
  IF ~~ THEN REPLY #63164 /* ~"To si dovedu představit. Jsou ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63165 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 20.28
  SAY #63166 /* ~"Varování?" Přikývl, popuzeně. "*Samozřejmě* byl jsem zodpovědný - já vím, že byla *šance* že bych zde mohl neuspět a ztratit svou paměť. Chtěl jsem aby budoucí vtělení měly prospěch z nějakého... poučení. Tak jsem měl na zádech přišité varování, z takových věcí - jako *noviny*..." Zavrčel, jako kdyby se zlobil sám na sebe. "Inklinoval k tomu se ztratit tak *snadno.*"~ */
  IF ~~ THEN REPLY #63167 /* ~"Ačkoliv varování bylo poněkud nejasné..."~ */ GOTO 62
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63168 /* ~"Proč jsi si dal varování o Mortovi na záda?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63169 /* ~"Byl jsi to ty, kdo požádal Pharoda, aby vzal Bronzovou kouli z katakomb?"~ */ GOTO 63
  IF ~~ THEN REPLY #63170 /* ~"Chápu. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63171 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #63172 /* ~"Jsi *blázen?*" Vtělení vypadá podrážděně. "Varování *muselo* být nejasné - nemohl jsem *říci* přesně co se nám stalo, takže jsem nechal znamení. Co si myslíš, že by se stalo, kdyby si to přečetl Spalovač? Nebo někdo ještě víc ztřeštěný? Jak *rychle* myslíš, že bysme byli pohřbeni zaživa, nebo podrobeni kremaci?"~ */
  IF ~~ THEN REPLY #63173 /* ~"Dobrá. Ale k tomu, abych hledal Pharoda? Proč ho?"~ */ GOTO 63
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63174 /* ~"Proč jsi si dal na záda varování před Mortem?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63175 /* ~"Byl jsi to ty, kdo požádal Pharoda, aby vzal Bronzovou kouli z katakomb?"~ */ GOTO 63
  IF ~~ THEN REPLY #63176 /* ~"Chápu. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63177 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 20.29 61.2 62.0 62.2
  SAY #63178 /* ~"Pharod?" Vtělení se na chvíli zamyslelo. "Ach, ano - vládce odpadků s celou tou svojí 'tvrdostí', který si myslel, že jsem byl snadná kořist..." Lehce se usmál, jak si vyvolal příjemnou vzpomínku. "Po malém odebrání krve, uzavřel jsem s ním dohodu - on se postará o to, že pokud mne najdou jeho lidé, vezmou mne bezpečně do Márnice - a, samozřejmě, já jsem potřeboval oči a ruce jeho lidí, aby pro mne prohledali katakomby pod Sigilem." ~ */
  IF ~~ THEN REPLY #63179 /* ~"K čemu?"~ */ GOTO 64
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63180 /* ~"Pro Bronzovou kouli?"~ */ GOTO 65
  IF ~~ THEN REPLY #63181 /* ~"Chápu. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63182 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #63183 /* ~"Koule..."~ */
  IF ~~ THEN REPLY #63184 /* ~"...vyrobená z bronzu. Šeredná. Na dotyk jako vejce a páchla po zkažených vejcích. Správně?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 63.1 64.0
  SAY #63185 /* ~"Ano. Řekl jsem Pharodovi, že to je jediná věc, která by mohla zachránit jeho bídný život... jaký to byl ukňouraný malý pletichář." Vtělení se na tebe usmálo. "Víš, tomu bastardovi bylo souzeno skončit na Sloupu Lebek, až zemře, a on se zoufale pokoušel z toho vykroutit. Tak jsem mu řekl, že pod Sigilem je předmět, který by ho mohl 'zachránit' před jeho osudem, jen pokud bude schopen ho najít."~ */
  IF ~~ THEN REPLY #63186 /* ~"Ale to ho *nemohlo* zachránit - bylo to jen něco, co jsi chtěl, aby našel."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #63187 /* ~"*Samozřejmě*, že to pro něho bylo na nic. Osudu se nedá tak snadno uniknout." Podíval se na tebe podrážděně. "Ale nic nemotivuje člověka rychleji, než když mu řekneš, že to, co hledá, dokáže zachránit jeho duši před věčným zatracením. Zamýšlel jsem si to od něj vzít hned jak to najde. To jenom, že kdybych to hledal sám, trvalo by to... příliš dlouho." Zase se usmál. "A proč bych to měl dělat, když mohu mít někoho jiného, kdo pro mne může po tom pátrat?"~ */
  IF ~~ THEN REPLY #63188 /* ~"Vlastně, přestal *mne* podvádět, že to hledám pro něj. Proč to bylo tak důležité?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_1","GLOBALLaw",1)
~ GOTO 67
  IF ~~ THEN REPLY #63189 /* ~"Ach, jistě... to je pravda. Jsem si jistý, že jeden z Pharodových lidí to pro něj našel. Proč to bylo tak důležité?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_1","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #63190 /* ~"Já... chápu. Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63192 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #63195 /* ~"Důležité? Nevíš?" Vtělení na chvíli ztichlo. "Máš to s sebou?"~ */
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63196 /* ~"Ne, zemřelo to s Pharodem. Co se předpokládalo, že to udělá?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 68
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63197 /* ~"Ne, zemřelo to s Pharodem. Co se předpokládalo, že to udělá?"~ */ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63198 /* ~Lež: "Ne, zemřelo to s Pharodem. Jen tak ze zvědavosti, co to mělo dělat?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
AddexperienceParty(96000)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63199 /* ~Lež: "Ne, zemřelo to s Pharodem. Jen tak ze zvědavosti, co to mělo dělat?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #63200 /* ~"Ano, mám. Vzal jsem to s sebou."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_2","GLOBALLaw",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0 67.1 67.2 67.3
  SAY #63201 /* ~"Byl to mrtvý smyslový kámen." Vtělení strnule hledí skrz tebe, jako kdyby v dálce něco vidělo. "Víš co to obsahovalo?" Žalostně se usmál. "Drželo to v sobě poslední zážitky *prvního* z nás. Když jsme byli jeden muž, a ne jen řetězec vtělení." Jeho hlas klesl. "Jestli byl nějaký způsob jak to uvolnit, byl bych schopen vidět dovnitř jeho *mysli*..."~ */
  IF ~~ THEN REPLY #63202 /* ~"A vidět proč se to všechno stalo?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #63203 /* ~"Ano..." Tvář vtělení potemněla. "Je to odpověď, kterou jsem vždycky hledal. Proč se to stalo. Proč jsme se stali nesmrtelní." Povzdechl si. "A já se bojím, že se to nikdy nedozvíme."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 27
  IF ~  PartyHasItem("Bsphere")
!NearbyDialog("Dincar3")
~ THEN REPLY #63204 /* ~"Vzal jsem to s sebou, víš."~ */ GOTO 70
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63205 /* ~"Jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63206 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.4 69.1 73.0 73.1
  SAY #63207 /* ~"Ty to *máš*?!" Oči zjevení se rozzářily. "Pak měl přece jen tvůj život nějaký smysl!" Vidíš, jak jeho oči neklidně zahořely, jak přemýšlel, počítal. "Když splyneme, uvidím, jak najít prostředek, abych to odemkl. Snad ještě není všechno ztraceno..."~ */
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63208 /* ~"Co je koule? Proč je to tak důležité?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 71
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63209 /* ~"Nemám v úmyslu splynout s *tebou.*"~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63210 /* ~Pravda: "Dobrá, jsem připraven s tebou splynout."~ */ GOTO 47
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63211 /* ~Bluf: "Dobrá, jsem připraven s tebou splynout."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63212 /* ~"Uvidíme... ale nejdřív, jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63213 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #63214 /* ~"Je to mrtvý smyslový kámen. Víš, co to obsahuje?" Nedočkavě se usmál. "Drží to v sobě poslední zážitky *prvního* z nás. Když jsme byli jeden muž a ne jen řetězec vtělení." Jeho hlas klesl. "Jestli byl nějaký způsob, jak to uvolnit, byl bych schopen vidět dovnitř jeho *mysli*..."~ */
  IF ~~ THEN REPLY #63215 /* ~"A vidět, proč se to všechno stalo?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #63216 /* ~"Ano..." Tvář vtělení potemněla. "Je to odpověď, kterou jsem vždycky hledal. Proč se to stalo. Proč jsme se stali nesmrtelní." Prohlíží si tě. "Když splyneme, uvidím jak najít prostředek, abych to odemkl. Snad ještě není všechno ztraceno..."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 28
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63217 /* ~"Nemám v úmyslu splynout s *tebou.*"~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63218 /* ~Pravda: "Dobrá, jsem připraven s tebou splynout."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63219 /* ~"Uvidíme... ale nejdřív, jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63220 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #63221 /* ~"*Já* se nezabývám sférou snad a možná." První zjevení se ušklíblo. "Hledám odpovědi. To je to, co nám dovolilo se dostat tak daleko." Podíval se pohrdavě na třetí vtělení. "Pokud bysme nechali život ve *tvých* rukou, neměli bychom ani zlomek pravdy, kterou víme nyní. A v pravdě je *síla.*" Otočil se k tobě. "Uvědomíš si to, až splyneme."~ */
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63222 /* ~"Vzal jsem kouli s sebou, víš."~ */ DO ~AddexperienceParty(96000)
~ GOTO 70
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63223 /* ~"Vzal jsem kouli s sebou, víš."~ */ GOTO 70
  IF ~~ THEN REPLY #63224 /* ~"Uvidíme... ale nejdřív, jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63225 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #63226 /* ~"*Já* se nezabývám sférou snad a možná." První zjevení se ušklíblo. "Hledám odpovědi. To je to, co nám dovolilo se dostat tak daleko." Podíval se pohrdavě na třetí vtělení. "Pokud bysme nechali život ve *tvých* rukou, neměli bychom ani zlomek pravdy, kterou víme nyní. A v pravdě je *síla.*" Otočil se k tobě. "Uvědomíš si to, až splyneme."~ */
  IF ~~ THEN REPLY #63227 /* ~"Nemám v úmyslu splynout s *tebou.*"~ */ GOTO 45
  IF ~~ THEN REPLY #63228 /* ~Pravda: "Dobrá, jsem připraven s tebou splynout."~ */ GOTO 47
  IF ~~ THEN REPLY #63229 /* ~Bluf: "Dobrá, jsem připraven s tebou splynout."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63230 /* ~"Uvidíme... ale nejdřív, jsou tady ještě další věci, které bych chtěl vědět."~ */ GOTO 20
  IF ~~ THEN REPLY #63231 /* ~"Nech mne, aby si to ujasnil, a pak si znovu promluvíme."~ */ EXIT
END
