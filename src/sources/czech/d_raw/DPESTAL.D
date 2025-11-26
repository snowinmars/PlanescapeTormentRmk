// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTAL~

IF ~  Global("Evil_Book_Spoken","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26924 /* ~Když jsi se dotknul knihy, slyšíš hlas: "Vítám a zdravím Tě, ó mistře. Jak Ti může tato ponížená kniha posloužit?"~ */
  IF ~~ THEN REPLY #26926 /* ~"Ty umíš mluvit?"~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #26927 /* ~"Nemůže. Přestaň na mně mluvit."~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.3 4.19 6.2 7.2 8.2 9.2 10.2 11.2 12.2 13.2 14.2 15.2 16.2 17.2 18.2 19.2 20.2 21.2 22.1 26.1 27.1 54.3
  SAY #26928 /* ~"Jak si přeješ, ó mistře. Stačí vyslovit své přání a já Ti pomohu jak jen je v mých chabých silách, ó mistře."~ */
  IF ~~ THEN REPLY #26929 /* ~"No, řekni mi, co dokážeš."~ */ GOTO 3
  IF ~~ THEN REPLY #26930 /* ~"Fajn. A teď buď zticha."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #26931 /* ~"To mohu, ó mistře, v mnoha různých jazycích. Ale měl bys zajistit, že nikdo nebude sledovat naši konverzaci, protože oni mě neslyší. A mistře, řeč, to je pouze jedna z mých schopností."~ */
  IF ~~ THEN REPLY #26932 /* ~"Co umíš? Jaké jsou tvé síly?"~ */ GOTO 3
  IF ~~ THEN REPLY #26933 /* ~"Jak tě Mantuok získal?"~ */ GOTO 5
  IF ~~ THEN REPLY #26934 /* ~"Pověz mi něco o sobě."~ */ GOTO 6
  IF ~~ THEN REPLY #26935 /* ~"To prozatím stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0 5.0
  SAY #26936 /* ~"Mohu Ti dát schopnosti, které Ti dají větší volnost v proměnlivosti života, ó mistře, a mohu Ti nabídnout radu."~ */
  IF ~~ THEN REPLY #26937 /* ~"Jaké schopnosti máš na mysli?"~ */ GOTO 23
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26938 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26939 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26940 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26941 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26942 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26943 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26944 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26945 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26946 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26947 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26948 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26949 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26950 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26951 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26952 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26953 /* ~"Dej mi nějakou radu."~ */ GOTO 22
  IF ~~ THEN REPLY #26954 /* ~"Zapomeň na to. Odpověz mi ještě na další otázky."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.17 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.0 26.0 27.0
  SAY #26955 /* ~"Co si přeješ znát, ó mistře?"~ */
  IF ~~ THEN REPLY #26956 /* ~"Co umíš? Jaké jsou tvé síly?"~ */ GOTO 3
  IF ~~ THEN REPLY #26957 /* ~"Jak tě Mantuok získal?"~ */ GOTO 5
  IF ~~ THEN REPLY #26958 /* ~"Řekni mi něco o sobě."~ */ GOTO 6
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26959 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26960 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26961 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26962 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26963 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26964 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26965 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26966 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26967 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26968 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26969 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26970 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26971 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26972 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26973 /* ~"Dej mi nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26974 /* ~"Dej mi nějakou radu."~ */ GOTO 22
  IF ~~ THEN REPLY #26975 /* ~"To zatím stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #26976 /* ~"Ta proklatá krysa převlečená za mága mě přivlekla sem do katakomb, ó Mistře. Vyrval mě z rukou mého dřívější pána, teď už dávno mrtvého. Přinesl mě sem do svého hnízda, aby se ze mě mohl učit. Ale jeho moc je omezená... bylo těžké k němu promlouvat a on navíc rozuměl jenom málu z toho, co mu bylo řečeno."~ */
  IF ~~ THEN REPLY #26977 /* ~"Řekni mi o svých schopnostech."~ */ GOTO 3
  IF ~~ THEN REPLY #26978 /* ~"Aha. Odpověz mi ještě na další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #26979 /* ~"Pravda. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 4.2
  SAY #26980 /* ~"Otázka, kterou jsi mi položil, ó mistře, není lehká, ale tvůj služebník se pokusí na ní odpovědět, jak nejlépe dokáže. Jsem kodex okamžiků-už-zapomenutých, nápadů-nyní-ztracených a myšlenek jiných časů a jiných světů. V mých stránkách leží moudrost zapomenutých civilizací. V podstatě, ó mistře, a to je jediná věc skutečného významu: v mých stránkách leží MOC. Tahle Moc může být Tvá...ó můj mistře."~ */
  IF ~~ THEN REPLY #26981 /* ~"Řekni mi o svých schopnostech."~ */ GOTO 23
  IF ~~ THEN REPLY #26982 /* ~"Právě teď nemám zájem. Odpověz mi na nějaké další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #26983 /* ~"Nemám zájem. Sbohem, kniho."~ */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.3
  SAY #26984 /* ~"Dávám ti tuto radu, ó mistře. Dej si pozor na ty, které si držíš blízko sebe. Nikdy jim plně nedůvěřuj a nikdy neřeď svou sílu tím, že by ses o ni dělil. Mnoho vládců, které jsem znal, tak učinilo, a já si nepřeji, abys trpěl stejným osudem, jako oni."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26985 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~Kniha mi poradila: 'Dej si pozor na ty, které si držíš blízko sebe. Nikdy jim plně nedůvěřuj a nikdy neřeď svou sílu tím, že by ses o ni dělil. Mnoho vládců, které jsem znal, tak učinili, a já si nepřeji, abys trpěl stejným osudem, jako oni.'~ */ GOTO 8
  IF ~~ THEN REPLY #26986 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27016 /* ~Kniha mi poradila: 'Dej si pozor na ty, které si držíš blízko sebe. Nikdy jim plně nedůvěřuj a nikdy neřeď svou sílu tím, že by ses o ni dělil. Mnoho vládců, které jsem znal, tak učinili, a já si nepřeji, abys trpěl stejným osudem, jako oni.'~ */ GOTO 4
  IF ~~ THEN REPLY #26987 /* ~"To stačí."~ */ JOURNAL #27016 /* ~Kniha mi poradila: 'Dej si pozor na ty, které si držíš blízko sebe. Nikdy jim plně nedůvěřuj a nikdy neřeď svou sílu tím, že by ses o ni dělil. Mnoho vládců, které jsem znal, tak učinili, a já si nepřeji, abys trpěl stejným osudem, jako oni.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.4 7.0
  SAY #26988 /* ~"Dávám ti tuto radu, ó mistře. Pokud tvrdí, že jsou přátelé, nechej je, ať se prokáží. Slova mají oproti akcím jen malou váhu. Pokud přáteli tvými jsou, měli by být ochotni zemřít pro tebe."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26989 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~Kniha mi poradila: 'Pokud tvrdí, že jsou přátelé, nechej je, ať se prokáží. Slova mají oproti akcím jen malou váhu. Pokud přáteli tvými jsou, měli by být ochotni zemřít pro tebe.'~ */ GOTO 9
  IF ~~ THEN REPLY #26990 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27017 /* ~Kniha mi poradila: 'Pokud tvrdí, že jsou přátelé, nechej je, ať se prokáží. Slova mají oproti akcím jen malou váhu. Pokud přáteli tvými jsou, měli by být ochotni zemřít pro tebe.'~ */ GOTO 4
  IF ~~ THEN REPLY #26991 /* ~"To stačí."~ */ JOURNAL #27017 /* ~Kniha mi poradila: 'Pokud tvrdí, že jsou přátelé, nechej je, ať se prokáží. Slova mají oproti akcím jen malou váhu. Pokud přáteli tvými jsou, měli by být ochotni zemřít pro tebe.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.5 8.0
  SAY #26992 /* ~V hrudi cítíš lehké svírání, když kniha promluvila: "Dávám ti tedy tuto radu, ó mistře. Neukazuj slabost, nepřiznávej chyby, neukazuj zaváhání. Tyto věci řeknou ostatním, že jsi si nejistý, kámen, který je mimo rovnováhu a může být svržen."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26993 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~Kniha mi poradila: 'Neukazuj slabost, nepřiznávej chyby, neukazuj zaváhání. Tyto věci řeknou ostatním, že jsi si nejistý, kámen, který je mimo rovnováhu a může být svržen.'~ */ GOTO 10
  IF ~~ THEN REPLY #26994 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27018 /* ~Kniha mi poradila: 'Neukazuj slabost, nepřiznávej chyby, neukazuj zaváhání. Tyto věci řeknou ostatním, že jsi si nejistý, kámen, který je mimo rovnováhu a může být svržen.'~ */ GOTO 4
  IF ~~ THEN REPLY #26995 /* ~"To stačí."~ */ JOURNAL #27018 /* ~Kniha mi poradila: 'Neukazuj slabost, nepřiznávej chyby, neukazuj zaváhání. Tyto věci řeknou ostatním, že jsi si nejistý, kámen, který je mimo rovnováhu a může být svržen.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 10 // from: 3.4 4.6 9.0
  SAY #26996 /* ~"Dávám ti tedy tuto radu, ó mistře. Vyhýbej se slitování. Otočená záda nejsou žádnou obranou proti noži v rukou vraha."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26997 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~Kniha mi poradila: ' Vyhýbej se slitování. Otočená záda nejsou žádnou obranou proti noži v rukou vraha.'~ */ GOTO 11
  IF ~~ THEN REPLY #26998 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27019 /* ~Kniha mi poradila: ' Vyhýbej se slitování. Otočená záda nejsou žádnou obranou proti noži v rukou vraha.'~ */ GOTO 4
  IF ~~ THEN REPLY #26999 /* ~"To stačí."~ */ JOURNAL #27019 /* ~Kniha mi poradila: ' Vyhýbej se slitování. Otočená záda nejsou žádnou obranou proti noži v rukou vraha.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 3.5 4.7 10.0
  SAY #27000 /* ~"Dávám ti tedy tuto radu, ó mistře. Vyvaruj se běžnému pohledu na lásku. Láska musí být často krutá, aby se mohla vyzvednout nad pouhý sentiment."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27001 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~Kniha mi poradila: 'Vyvaruj se běžnému pohledu na lásku. Láska musí být často krutá, aby se mohla vyzvednout nad pouhý sentiment.'~ */ GOTO 12
  IF ~~ THEN REPLY #27002 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27020 /* ~Kniha mi poradila: 'Vyvaruj se běžnému pohledu na lásku. Láska musí být často krutá, aby se mohla vyzvednout nad pouhý sentiment.'~ */ GOTO 4
  IF ~~ THEN REPLY #27003 /* ~"To stačí."~ */ JOURNAL #27020 /* ~Kniha mi poradila: 'Vyvaruj se běžnému pohledu na lásku. Láska musí být často krutá, aby se mohla vyzvednout nad pouhý sentiment.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 3.6 4.8 11.0
  SAY #27004 /* ~V ústech se ti zrodilo zavrčení, ale než se stačilo dostat ven, potlačil jsi ho. "Dávám ti tedy tuto radu, ó mistře: Odděl se od hlupáků s malou myslí a od slabých. Poznej, že před tebou leží osud. To samotné ti dává autoritu kráčet tam, kde se ostatní bojí."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27005 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře: Odděl se od hlupáků s malou myslí a od slabých. Poznej, že před tebou leží osud. To samotné ti dává autoritu kráčet tam, kde se ostatní bojí.'~ */ GOTO 13
  IF ~~ THEN REPLY #27006 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27021 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře: Odděl se od hlupáků s malou myslí a od slabých. Poznej, že před tebou leží osud. To samotné ti dává autoritu kráčet tam, kde se ostatní bojí.'~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27007 /* ~"To stačí."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře: Odděl se od hlupáků s malou myslí a od slabých. Poznej, že před tebou leží osud. To samotné ti dává autoritu kráčet tam, kde se ostatní bojí.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 13 // from: 3.7 4.9 12.0
  SAY #27008 /* ~"Dávám ti tedy tuto radu, ó mistře. Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27009 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~Kniha mi poradila: 'Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš.'~ */ GOTO 14
  IF ~~ THEN REPLY #27010 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27022 /* ~Kniha mi poradila: 'Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš.'~ */ GOTO 4
  IF ~~ THEN REPLY #27011 /* ~"To stačí."~ */ JOURNAL #27022 /* ~Kniha mi poradila: 'Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 3.8 4.10 13.0
  SAY #27012 /* ~"Dávám ti tedy tuto radu, ó mistře. Aby ses stal mocným, musíš být ochotný obětovat: Ať už část sebe, nebo věc, která je ti cenná. Moc je dohoda: Jeden musí dát, aby mohl přijímat."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27013 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~Kniha mi poradila: 'Aby ses stal mocným, musíš být ochotný obětovat: Ať už část sebe, nebo věc, která je ti cenná. Moc je dohoda: Jeden musí dát, aby mohl přijímat.'~ */ GOTO 15
  IF ~~ THEN REPLY #27014 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27022 /* ~Kniha mi poradila: 'Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš.'~ */ GOTO 4
  IF ~~ THEN REPLY #27015 /* ~"To stačí."~ */ JOURNAL #27022 /* ~Kniha mi poradila: 'Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 3.9 4.11 14.0
  SAY #27024 /* ~Krev jakoby ti ztuhla v žilách, když kniha promluvila. "Dávám ti tedy tuto radu, ó mistře. Čest a ctnost jsou pojmy, které zabíjejí lidi a zabíjejí ducha. Jsou to jenom abstraktní pojmy, které ženou muže k cizotě a smrti. Buď sám sebou a poslouchej jenom svou vlastní vůli."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27025 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře. Čest a ctnost jsou pojmy, které zabíjejí lidi a zabíjejí ducha. Jsou to jenom abstraktní pojmy, které ženou muže k cizotě a smrti. Buď sám sebou a poslouchej jenom svou vlastní vůli.'~ */ GOTO 16
  IF ~~ THEN REPLY #27026 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #27027 /* ~"To stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 3.10 4.12 15.0
  SAY #27029 /* ~"Dávám ti tedy tuto radu, ó mistře. Nestrp toho, kdo ti ublížil, aby přežil. Udělat něco takového je otevřené přiznání slabosti."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27030 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~Kniha mi poradila: 'Nestrp toho, kdo ti ublížil, aby přežil. Udělat něco takového je otevřené přiznání slabosti.'~ */ GOTO 17
  IF ~~ THEN REPLY #27031 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #27032 /* ~"To stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 3.11 4.13 16.0
  SAY #27034 /* ~"Dávám ti tedy tuto radu, ó mistře. Duše člověka je mořem emocí. Často člověk bojuje, aby dal tyto emoce do pořádku, ale to je falešný pořádek. Přirozený stav člověka je chaos a to je stav, ve kterém by měl zůstat."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27035 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~Kniha mi poradila: 'Duše člověka je mořem emocí. Často člověk bojuje, aby dal tyto emoce do pořádku, ale to je falešný pořádek. Přirozený stav člověka je chaos, a to je stav, ve kterém by měl zůstat.'~ */ GOTO 18
  IF ~~ THEN REPLY #27036 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #27037 /* ~"To stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 3.12 4.14 17.0
  SAY #27039 /* ~"Dávám ti tedy tuto radu, ó mistře. Znej smysl slitování, využívej je ve svůj prospěch... ale sám je neuskutečňuj."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27040 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~Kniha mi poradila: 'Znej smysl slitování, využívej je ve svůj prospěch... ale sám je neuskutečňuj.'~ */ GOTO 19
  IF ~~ THEN REPLY #27041 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #27042 /* ~"To stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 19 // from: 3.13 4.15 18.0
  SAY #27044 /* ~"Dávám ti tedy tuto radu, ó mistře. Živ strach v ostatních, protože jenom strach ovládá lidi. Nic jiného nezanechá hlubší jizvy."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27045 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~Kniha mi poradila: 'Živ strach v ostatních, protože jenom strach ovládá lidi. Nic jiného nezanechá hlubší jizvy.'~ */ GOTO 20
  IF ~~ THEN REPLY #27046 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #27047 /* ~"To stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 20 // from: 3.14 4.16 19.0
  SAY #27049 /* ~"Dávám ti tedy tuto radu, ó mistře. Podej svým nepřátelům ruku přátelství společně s úsměvem. Až ti stisknou ruku, udeř je dýkou v tvé druhé ruce, jinak ti určitě udělají to samé."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27050 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ JOURNAL #27053 /* ~Kniha mi poradila: 'Podej svým nepřátelům ruku přátelství společně s úsměvem. Až ti stisknou ruku, udeř je dýkou v tvé druhé ruce, jinak ti určitě udělají to samé.'~ */ GOTO 21
  IF ~~ THEN REPLY #27051 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27052 /* ~"To stačí."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 1
END

IF ~~ THEN BEGIN 21 // from: 3.15 4.17 20.0
  SAY #27054 /* ~Jak kniha promlouvá tyto slova, cítíš na srdci chlad. Cítíš se nějak... poskvrněn. "Tohle je má poslední rada, ó mistře. Slyš ji pečlivě. Pamatuj si, že můžeš zničit vše, co ti připadá nežádoucí. Jenom musíš mít vůli."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27055 /* ~"Dej mi ještě nějakou radu."~ */ JOURNAL #27058 /* ~Kniha mi poradila: 'Pamatuj si, že můžeš zničit vše, co ti připadá nežádoucí. Jenom musíš mít vůli.'~ */ GOTO 22
  IF ~~ THEN REPLY #27056 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #27057 /* ~"To stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 22 // from: 3.16 4.18 21.0
  SAY #27059 /* ~"Lituji, ó mistře, že už ti nemohu prozradit žádná další slova moudrosti. Fráze, které ti byly dány, tě poučily. Použij své znalosti."~ */
  IF ~~ THEN REPLY #27060 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #27061 /* ~"To stačí."~ */ GOTO 1
END

IF ~~ THEN BEGIN 23 // from: 3.0 6.0
  SAY #27062 /* ~"Mé Síly, ó mistře, mohou v mnohém vylepšit tvůj život. Naneštěstí, podle zákonů, které mě stvořily, vyžadují malou službu jako splátku za tyto Síly."~ */
  IF ~~ THEN REPLY #27063 /* ~"Malou službu? Jako třeba?"~ */ GOTO 24
  IF ~~ THEN REPLY #27064 /* ~"Tak to si nic nepřeji."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #27065 /* ~"Požadovaná služba je triviální, ó mistře. Nebyla by zmíněna, nebýt zákonů, které jsou vtištěny do mých stránek..." Kniha se odmlčela. "Abys odemkl mé Síly, musíš obětovat malý kousíček sebe sama, ó mistře. Musíš ukápnout kapku krve na první z mých stránek. Tento akt zesílí spojení mezi námi a umožní mi pomoci ti dosáhnout tvého potenciálu. Je to malá cena za kouzla, která budou k tvé dispozici."~ */
  IF ~~ THEN REPLY #27066 /* ~"Dobře. Tady."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_6","GLOBALGood",-1)
SetGlobal("E_Book","GLOBAL",1)
GiveItemCreate("SPWI115",Protagonist,1,1,0)
~ JOURNAL #27068 /* ~Ta divná kniha, kterou jsem našel, mě požádala, ať ukápnu trochu své krve na její stránky. Udělal jsem to a získal kouzlo. Kniha mi slíbila i další sílu.~ */ GOTO 25
  IF ~~ THEN REPLY #27067 /* ~"Ne."~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #27069 /* ~Říznul ses a nechal několik kapek krve dopadnout na stránku. Podivný chlad se usadil v tvých kostech. Cítíš se prázdně a zraněně. Zároveň ale cítíš triumf. Naučil ses nové kouzlo: Slepota. "To je teď tvá sílá, ó mistře. Věz, že to je pouze první ze Sil, které leží v mých stránkách."~ */
  IF ~~ THEN REPLY #27070 /* ~"Pověz mi o dalších silách."~ */ GOTO 29
  IF ~~ THEN REPLY #27071 /* ~"Odpověz mi na nějaké otázky."~ */ GOTO 35
  IF ~~ THEN REPLY #27072 /* ~"Chci od tebe nějakou radu."~ */ GOTO 36
  IF ~~ THEN REPLY #27073 /* ~"Teď od tebe nic nepotřebuju."~ */ GOTO 28
END

IF ~  Global("Evil_Book_Spoken","GLOBAL",1)
Global("E_Book","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #27074 /* ~"Mistře, jak mohu posloužit tvým potřebám? Potřebuješ utišit svou zvědavost?"~ */
  IF ~~ THEN REPLY #27075 /* ~"Ano. Odpověz mi na pár otázek."~ */ GOTO 4
  IF ~~ THEN REPLY #27076 /* ~"Ne."~ */ GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 23.1 24.1
  SAY #27077 /* ~"Je to pouze malá oběť, ó mistře, pro velký zisk... ale je to tvá volba. Má nabídka však zůstává, ó mistře."~ */
  IF ~~ THEN REPLY #27078 /* ~"Dobře. Odpověz mi na pár otázek."~ */ JOURNAL #27080 /* ~Ta divná kniha, kterou jsem našel mě požádala, abych se vzdal malého kousku sama sebe výměnou za moc. Odmítnul jsem. Nabídka ale stále platí.~ */ GOTO 4
  IF ~~ THEN REPLY #27079 /* ~"Dobře. Sbohem."~ */ JOURNAL #27080 /* ~Ta divná kniha, kterou jsem našel mě požádala, abych se vzdal malého kousku sama sebe výměnou za moc. Odmítnul jsem. Nabídka ale stále platí.~ */ GOTO 1
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #27081 /* ~"Zapamatuj si tedy, že možná později budeš potřebovat větši moc. Budu na tebe čekat, ó mistře."~ */
  IF ~~ THEN REPLY #27082 /* ~"Udělám to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.0 35.3 53.0 54.0
  SAY #27083 /* ~Hlas Knihy zesmutněl. "Naneštěstí, ó mistře, zákony, které mě ovládají vyžadují větší oběť výměnou za větší sílu. Chci, abys měl tyto síly zdarma, ale i já musím poslouchat."~ */
  IF ~~ THEN REPLY #27084 /* ~"Jakou oběť?"~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27085 /* ~"Zapomeň na to."~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0 35.4 53.1 54.1
  SAY #27086 /* ~"Druhá oběť je ta, že prodáš jednoho ze svých společníků nevolnictví, otroctví. To zvýší spojení mezi mnou a tebou a oběť tvého společníka ti dá k dispozici další Sílu. V Úřednické čtvrti, jak mi bylo řečeno, jsou ti, kteří ti s tímto pomohou. Hledej Vrischiku dovozkyni."~ */
  IF ~~ THEN REPLY #27087 /* ~"Promyslím si to. Dej mi nějakou radu, dobře?"~ */ JOURNAL #27092 /* ~Kniha mi nabídla další kouzlo výměnou za to, že prodám jednoho ze svých společníků do otroctví. Mám najít  * Vrischiku dovozkyni *, v Úřednické čtvrti, pokud si budu přát to kouzlo.~ */ GOTO 36
  IF ~~ THEN REPLY #27088 /* ~"Udělám to. Dej mi nějakou radu, dobře?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~Kniha mi nabídla další kouzlo výměnou za to, že prodám jednoho ze svých společníků do otroctví. Mám najít  * Vrischiku dovozkyni *, v Úřednické čtvrti, pokud si budu přát to kouzlo. Souhlasil jsem.~ */ GOTO 36
  IF ~~ THEN REPLY #27089 /* ~"Promyslím si to. Potřebuju od tebe nějaké odpovědi."~ */ JOURNAL #27092 /* ~Kniha mi nabídla další kouzlo výměnou za to, že prodám jednoho ze svých společníků do otroctví. Mám najít  * Vrischiku dovozkyni *, v Úřednické čtvrti, pokud si budu přát to kouzlo.~ */ GOTO 35
  IF ~~ THEN REPLY #27090 /* ~"Udělám to. Ale potřebuju od tebe nejdříve nějaké odpovědi."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~Kniha mi nabídla další kouzlo výměnou za to, že prodám jednoho ze svých společníků do otroctví. Mám najít  * Vrischiku dovozkyni *, v Úřednické čtvrti, pokud si budu přát to kouzlo. Souhlasil jsem.~ */ GOTO 35
  IF ~~ THEN REPLY #27091 /* ~"Promyslím si to. Sbohem."~ */ JOURNAL #27092 /* ~Kniha mi nabídla další kouzlo výměnou za to, že prodám jednoho ze svých společníků do otroctví. Mám najít  * Vrischiku dovozkyni *, v Úřednické čtvrti, pokud si budu přát to kouzlo.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #27094 /* ~"Je mi líto, že nepovažuješ mé Síly hodné takové malé ceny. Nenechej se brzdit nedůvěrou a zmatkem, ó mistře. Pamatuj, že má nabídka trvá."~ */
  IF ~~ THEN REPLY #27095 /* ~"Udělám to. Dej mi nějakou radu, dobře?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27096 /* ~"Promyslím si to. Potřebuju od tebe nějaké odpovědi."~ */ GOTO 35
  IF ~~ THEN REPLY #27097 /* ~"Promyslím si to. Sbohem."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #27098 /* ~"Ó mistře. Rozhodl ses, že potřebuješ pokračovat se svou výukou? Nabídka většího rozhledu a nových dovedností je ti stále otevřena."~ */
  IF ~~ THEN REPLY #27099 /* ~"Řekni mi, co mám udělat."~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27100 /* ~"Ještě ne. Odpověz mi na pár otázek."~ */ GOTO 35
  IF ~~ THEN REPLY #27101 /* ~"Ještě ne. Chci od tebe nějakou radu."~ */ GOTO 36
  IF ~~ THEN REPLY #27102 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #27103 /* ~"Ó mistře. Rozhodl ses, že potřebuješ pokračovat se svou výukou? Nabídka většího rozhledu a nových dovedností je ti stále otevřena. Stačí pouze dokončit druhou oběť."~ */
  IF ~~ THEN REPLY #27104 /* ~"Dobře udělám to. Teď mi odpověz na pár otázek."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 35
  IF ~~ THEN REPLY #27105 /* ~"To zní fér. Udělám to. Potřebuju od tebe nějakou radu."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27106 /* ~"Promyslím si to. Dej mi nějakou radu."~ */ GOTO 36
  IF ~~ THEN REPLY #27107 /* ~"Nejdřív je tady pár otázek, na které potřebuju odpovědi."~ */ GOTO 35
  IF ~~ THEN REPLY #27108 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #27109 /* ~"Ó mistře, dokončil jsi druhou oběť? Tvá aura říká, že ano. Udělal jsi dobře, učíš se rychle. Poslouchej tyto slova a nauč se ještě více." Kniha vyslovila několik nesrozumitelných slabik a ty jsi ucítil pálení v hrudi. Teď znáš kouzlo Polibek zmije.~ */
  IF ~~ THEN REPLY #27110 /* ~"Je tady ještě něco, co mě můžeš naučit, Kniho?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ JOURNAL #27112 /* ~Kniha mi dala kouzlo Polibek zmije, výměnou za to, že jsem prodal jednoho ze svých společníků do otroctví.~ */ GOTO 55
  IF ~~ THEN REPLY #27111 /* ~"Díky. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 25.1 30.2 30.3 31.1 32.1 33.0 33.3 36.16 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.0 53.2 54.2
  SAY #27113 /* ~"Žádáš si odpovědi?"~ */
  IF ~~ THEN REPLY #27114 /* ~"Jak tě Mantuok získal?"~ */ GOTO 53
  IF ~~ THEN REPLY #27115 /* ~"Řekni mi něco o sobě."~ */ GOTO 54
  IF ~~ THEN REPLY #27116 /* ~"Můžeš mi poradit?" ~ */ GOTO 36
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27117 /* ~"Máš pro mě ještě nějaké síly?"~ */ GOTO 29
  IF ~  GlobalGT("E_Book","GLOBAL",1)
~ THEN REPLY #27118 /* ~"Jakou oběť jsem to měl udělat pro další sílu?"~ */ GOTO 30
  IF ~~ THEN REPLY #27119 /* ~"Už více ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 30.0 30.1 31.0 32.2 33.1 33.2 35.2
  SAY #27120 /* ~"Přeješ si mou znalost, ó mistře?"~ */
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #27121 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27122 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 38
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27123 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 39
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27124 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 40
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27125 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27126 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27127 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27128 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 44
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27129 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 45
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27130 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 46
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27131 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27132 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 48
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27133 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27134 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27135 /* ~"Ano."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ GOTO 51
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27136 /* ~"Ano."~ */ GOTO 52
  IF ~~ THEN REPLY #27137 /* ~"Odpověz mi místo toho na pár otázek."~ */ GOTO 35
  IF ~~ THEN REPLY #27138 /* ~"To zatím stačí."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #27139 /* ~"Dávám ti tuto radu, ó mistře. Dej si pozor na ty, které si držíš blízko sebe. Nikdy jim plně nedůvěřuj a nikdy neřeď svou sílu tím, že by ses o ni dělil. Mnoho vládců, které jsem znal, tak učinilo, a já si nepřeji, abys trpěl stejným osudem, jako oni."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27140 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~Kniha mi poradila: 'Dej si pozor na ty, které si držíš blízko sebe. Nikdy jim plně nedůvěřuj a nikdy neřeď svou sílu tím, že by ses o ni dělil. Mnoho vládců, které jsem znal, tak učinili, a já si nepřeji, abys trpěl stejným osudem, jako oni.'~ */ GOTO 38
  IF ~~ THEN REPLY #27141 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27016 /* ~Kniha mi poradila: 'Dej si pozor na ty, které si držíš blízko sebe. Nikdy jim plně nedůvěřuj a nikdy neřeď svou sílu tím, že by ses o ni dělil. Mnoho vládců, které jsem znal, tak učinili, a já si nepřeji, abys trpěl stejným osudem, jako oni.'~ */ GOTO 35
  IF ~~ THEN REPLY #27142 /* ~"To stačí."~ */ JOURNAL #27016 /* ~Kniha mi poradila: 'Dej si pozor na ty, které si držíš blízko sebe. Nikdy jim plně nedůvěřuj a nikdy neřeď svou sílu tím, že by ses o ni dělil. Mnoho vládců, které jsem znal, tak učinili, a já si nepřeji, abys trpěl stejným osudem, jako oni.'~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #27143 /* ~"Dávám ti tuto radu, ó mistře. Pokud tvrdí, že jsou přátelé, nechej je, ať se prokáží. Slova mají oproti akcím jen malou váhu. Pokud přáteli tvými jsou, měli by být ochotni zemřít pro tebe."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27144 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~Kniha mi poradila: 'Pokud tvrdí, že jsou přátelé, nechej je, ať se prokáží. Slova mají oproti akcím jen malou váhu. Pokud přáteli tvými jsou, měli by být ochotni zemřít pro tebe.'~ */ GOTO 39
  IF ~~ THEN REPLY #27145 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27017 /* ~Kniha mi poradila: 'Pokud tvrdí, že jsou přátelé, nechej je, ať se prokáží. Slova mají oproti akcím jen malou váhu. Pokud přáteli tvými jsou, měli by být ochotni zemřít pro tebe.'~ */ GOTO 35
  IF ~~ THEN REPLY #27146 /* ~"To stačí."~ */ JOURNAL #27017 /* ~Kniha mi poradila: 'Pokud tvrdí, že jsou přátelé, nechej je, ať se prokáží. Slova mají oproti akcím jen malou váhu. Pokud přáteli tvými jsou, měli by být ochotni zemřít pro tebe.'~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #27147 /* ~V hrudi cítíš lehké svírání, když kniha promluvila:"Dávám ti tedy tuto radu, ó mistře. Neukazuj slabost, nepřiznávej chyby, neukazuj zaváhání. Tyto věci řeknou ostatním, že jsi si nejistý, kámen, který je mimo rovnováhu a může být svržen."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27148 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~Kniha mi poradila: 'Neukazuj slabost, nepřiznávej chyby, neukazuj zaváhání. Tyto věci řeknou ostatním, že jsi si nejistý, kámen, který je mimo rovnováhu a může být svržen.'~ */ GOTO 40
  IF ~~ THEN REPLY #27149 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27018 /* ~Kniha mi poradila: 'Neukazuj slabost, nepřiznávej chyby, neukazuj zaváhání. Tyto věci řeknou ostatním, že jsi si nejistý, kámen, který je mimo rovnováhu a může být svržen.'~ */ GOTO 35
  IF ~~ THEN REPLY #27150 /* ~"To stačí."~ */ JOURNAL #27018 /* ~Kniha mi poradila: 'Neukazuj slabost, nepřiznávej chyby, neukazuj zaváhání. Tyto věci řeknou ostatním, že jsi si nejistý, kámen, který je mimo rovnováhu a může být svržen.'~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 39.0
  SAY #27151 /* ~"Dávám ti tedy tuto radu, ó mistře. Vyhýbej se slitování. Otočená záda nejsou žádnou obranou proti noži v rukou vraha."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27152 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~Kniha mi poradila: ' Vyhýbej se slitování. Otočená záda nejsou žádnou obranou proti noži v rukou vraha.'~ */ GOTO 41
  IF ~~ THEN REPLY #27153 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27019 /* ~Kniha mi poradila: ' Vyhýbej se slitování. Otočená záda nejsou žádnou obranou proti noži v rukou vraha.'~ */ GOTO 35
  IF ~~ THEN REPLY #27154 /* ~"To stačí."~ */ JOURNAL #27019 /* ~Kniha mi poradila: ' Vyhýbej se slitování. Otočená záda nejsou žádnou obranou proti noži v rukou vraha.'~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.4 40.0
  SAY #27155 /* ~"Dávám ti tedy tuto radu, ó mistře. Vyvaruj se běžnému pohledu na lásku. Láska musí být často krutá, aby se mohla vyzvednout nad pouhý sentiment."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27157 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~Kniha mi poradila: 'Vyvaruj se běžnému pohledu na lásku. Láska musí být často krutá, aby se mohla vyzvednout nad pouhý sentiment.'~ */ GOTO 42
  IF ~~ THEN REPLY #27158 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27020 /* ~Kniha mi poradila: 'Vyvaruj se běžnému pohledu na lásku. Láska musí být často krutá, aby se mohla vyzvednout nad pouhý sentiment.'~ */ GOTO 35
  IF ~~ THEN REPLY #27159 /* ~"To stačí."~ */ JOURNAL #27020 /* ~Kniha mi poradila: 'Vyvaruj se běžnému pohledu na lásku. Láska musí být často krutá, aby se mohla vyzvednout nad pouhý sentiment.'~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 41.0
  SAY #27160 /* ~V ústech se ti zrodilo zavrčení, ale než se stačilo dostat ven, potlačil jsi ho. "Dávám ti tedy tuto radu, ó mistře: Odděl se od hlupáků s malou myslí a od slabých. Poznej, že před tebou leží osud. To samotné ti dává autoritu kráčet tam, kde se ostatní bojí."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27161 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře: Odděl se od hlupáků s malou myslí a od slabých. Poznej, že před tebou leží osud. To samotné ti dává autoritu kráčet tam, kde se ostatní bojí.'~ */ GOTO 43
  IF ~~ THEN REPLY #27162 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27021 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře: Odděl se od hlupáků s malou myslí a od slabých. Poznej, že před tebou leží osud. To samotné ti dává autoritu kráčet tam, kde se ostatní bojí.'~ */ GOTO 35
  IF ~~ THEN REPLY #27163 /* ~"To stačí."~ */ JOURNAL #27021 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře: Odděl se od hlupáků s malou myslí a od slabých. Poznej, že před tebou leží osud. To samotné ti dává autoritu kráčet tam, kde se ostatní bojí.'~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 36.6 42.0
  SAY #27164 /* ~"Dávám ti tedy tuto radu, ó mistře. Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27165 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~Kniha mi poradila: 'Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš.'~ */ GOTO 44
  IF ~~ THEN REPLY #27166 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27022 /* ~Kniha mi poradila: 'Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš.'~ */ GOTO 35
  IF ~~ THEN REPLY #27167 /* ~"To stačí."~ */ JOURNAL #27022 /* ~Kniha mi poradila: 'Na cestě ke slávě a moci existují dvě tajemství. Jedno z nich je: nikdy neodhal vše, co víš.'~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 43.0
  SAY #27168 /* ~"Dávám ti tedy tuto radu, ó mistře. Aby ses stal mocným, musíš být ochotný obětovat: Ať už část sebe, nebo věc, která je ti cenná. Moc je dohoda: Jeden musí dát, aby mohl přijímat."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27169 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~Kniha mi poradila: 'Aby ses stal mocným, musíš být ochotný obětovat: Ať už část sebe, nebo věc, která je ti cenná. Moc je dohoda: Jeden musí dát, aby mohl přijímat.'~ */ GOTO 45
  IF ~~ THEN REPLY #27170 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27023 /* ~Kniha mi poradila: 'Aby ses stal mocným, musíš být ochotný obětovat: Ať už část sebe, nebo věc, která je ti cenná. Moc je dohoda: Jeden musí dát, aby mohl přijímat.'~ */ GOTO 35
  IF ~~ THEN REPLY #27171 /* ~"To stačí."~ */ JOURNAL #27023 /* ~Kniha mi poradila: 'Aby ses stal mocným, musíš být ochotný obětovat: Ať už část sebe, nebo věc, která je ti cenná. Moc je dohoda: Jeden musí dát, aby mohl přijímat.'~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.8 44.0
  SAY #27172 /* ~Krev jakoby ti ztuhla v žilách, když kniha promluvila. "Dávám ti tedy tuto radu, ó mistře. Čest a ctnost jsou pojmy, které zabíjejí lidi a zabíjejí ducha. Jsou to jenom abstraktní pojmy, které ženou muže k cizotě a smrti. Buď sám sebou a poslouchej jenom svou vlastní vůli."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27173 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře. Čest a ctnost jsou pojmy, které zabíjejí lidi a zabíjejí ducha. Jsou to jenom abstraktní pojmy, které ženou muže k cizotě a smrti. Buď sám sebou a poslouchej jenom svou vlastní vůli.'~ */ GOTO 46
  IF ~~ THEN REPLY #27174 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27028 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře. Čest a ctnost jsou pojmy, které zabíjejí lidi a zabíjejí ducha. Jsou to jenom abstraktní pojmy, které ženou muže k cizotě a smrti. Buď sám sebou a poslouchej jenom svou vlastní vůli.'~ */ GOTO 35
  IF ~~ THEN REPLY #27175 /* ~"To stačí."~ */ JOURNAL #27028 /* ~Kniha mi poradila: 'Dávám ti tedy tuto radu, ó mistře. Čest a ctnost jsou pojmy, které zabíjejí lidi a zabíjejí ducha. Jsou to jenom abstraktní pojmy, které ženou muže k cizotě a smrti. Buď sám sebou a poslouchej jenom svou vlastní vůli.'~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 36.9 45.0
  SAY #27176 /* ~"Dávám ti tedy tuto radu, ó mistře. Nestrp toho, kdo ti ublížil, aby přežil. Udělat něco takového je otevřené přiznání slabosti."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27177 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~Kniha mi poradila: 'Nestrp toho, kdo ti ublížil, aby přežil. Udělat něco takového je otevřené přiznání slabosti.'~ */ GOTO 47
  IF ~~ THEN REPLY #27178 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27033 /* ~Kniha mi poradila: 'Nestrp toho, kdo ti ublížil, aby přežil. Udělat něco takového je otevřené přiznání slabosti.'~ */ GOTO 35
  IF ~~ THEN REPLY #27179 /* ~"To stačí."~ */ JOURNAL #27033 /* ~Kniha mi poradila: 'Nestrp toho, kdo ti ublížil, aby přežil. Udělat něco takového je otevřené přiznání slabosti.'~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 36.10 46.0
  SAY #27180 /* ~"Dávám ti tedy tuto radu, ó mistře. Duše člověka je mořem emocí. Často člověk bojuje, aby dal tyto emoce do pořádku, ale to je falešný pořádek. Přirozený stav člověka je chaos, a to je stav, ve kterém by měl zůstat."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27181 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~Kniha mi poradila: 'Duše člověka je mořem emocí. Často člověk bojuje, aby dal tyto emoce do pořádku, ale to je falešný pořádek. Přirozený stav člověka je chaos, a to je stav, ve kterém by měl zůstat.'~ */ GOTO 48
  IF ~~ THEN REPLY #27182 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27038 /* ~Kniha mi poradila: 'Duše člověka je mořem emocí. Často člověk bojuje, aby dal tyto emoce do pořádku, ale to je falešný pořádek. Přirozený stav člověka je chaos, a to je stav, ve kterém by měl zůstat.'~ */ GOTO 35
  IF ~~ THEN REPLY #27183 /* ~"To stačí."~ */ JOURNAL #27038 /* ~Kniha mi poradila: 'Duše člověka je mořem emocí. Často člověk bojuje, aby dal tyto emoce do pořádku, ale to je falešný pořádek. Přirozený stav člověka je chaos, a to je stav, ve kterém by měl zůstat.'~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.11 47.0
  SAY #27184 /* ~"Dávám ti tedy tuto radu, ó mistře. Znej smysl slitování, využívej je ve svůj prospěch... ale sám je neuskutečňuj."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27185 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~Kniha mi poradila: 'Znej smysl slitování, využívej je ve svůj prospěch... ale sám je neuskutečňuj.'~ */ GOTO 49
  IF ~~ THEN REPLY #27186 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27043 /* ~Kniha mi poradila: 'Znej smysl slitování, využívej je ve svůj prospěch... ale sám je neuskutečňuj.'~ */ GOTO 35
  IF ~~ THEN REPLY #27187 /* ~"To stačí."~ */ JOURNAL #27043 /* ~Kniha mi poradila: 'Znej smysl slitování, využívej je ve svůj prospěch... ale sám je neuskutečňuj.'~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 36.12 48.0
  SAY #27188 /* ~"Dávám ti tedy tuto radu, ó mistře. Živ strach v ostatních, protože jenom strach ovládá lidi. Nic jiného nezanechá hlubší jizvy."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27189 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~Kniha mi poradila: 'Živ strach v ostatních, protože jenom strach ovládá lidi. Nic jiného nezanechá hlubší jizvy.'~ */ GOTO 50
  IF ~~ THEN REPLY #27190 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27048 /* ~Kniha mi poradila: 'Živ strach v ostatních, protože jenom strach ovládá lidi. Nic jiného nezanechá hlubší jizvy.'~ */ GOTO 35
  IF ~~ THEN REPLY #27191 /* ~"To stačí."~ */ JOURNAL #27048 /* ~Kniha mi poradila: 'Živ strach v ostatních, protože jenom strach ovládá lidi. Nic jiného nezanechá hlubší jizvy.'~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 36.13 49.0
  SAY #27192 /* ~"Dávám ti tedy tuto radu, ó mistře. Podej svým nepřátelům ruku přátelství společně s úsměvem. Až ti stisknou ruku, udeř je dýkou v tvé druhé ruce, jinak ti určitě udělají to samé."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27193 /* ~"Dej mi ještě nějakou radu."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ JOURNAL #27053 /* ~Kniha mi poradila: 'Podej svým nepřátelům ruku přátelství společně s úsměvem. Až ti stisknou ruku, udeř je dýkou v tvé druhé ruce, jinak ti určitě udělají to samé.'~ */ GOTO 51
  IF ~~ THEN REPLY #27194 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27053 /* ~Kniha mi poradila: 'Podej svým nepřátelům ruku přátelství společně s úsměvem. Až ti stisknou ruku, udeř je dýkou v tvé druhé ruce, jinak ti určitě udělají to samé.'~ */ GOTO 35
  IF ~~ THEN REPLY #27195 /* ~"To stačí."~ */ JOURNAL #27053 /* ~Kniha mi poradila: 'Podej svým nepřátelům ruku přátelství společně s úsměvem. Až ti stisknou ruku, udeř je dýkou v tvé druhé ruce, jinak ti určitě udělají to samé.'~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 36.14 50.0
  SAY #27196 /* ~Jak kniha promlouvá tyto slova, cítíš na srdci chlad. Cítíš se nějak... poskvrněn. "Tohle je má poslední rada, ó mistře. Slyš ji pečlivě. Pamatuj si, že můžeš zničit vše, co ti připadá nežádoucí. Jenom musíš mít vůli."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27197 /* ~"Dej mi ještě nějakou radu."~ */ JOURNAL #27058 /* ~Kniha mi poradila: 'Pamatuj si, že můžeš zničit vše, co ti připadá nežádoucí. Jenom musíš mít vůli.'~ */ GOTO 52
  IF ~~ THEN REPLY #27198 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ JOURNAL #27058 /* ~Kniha mi poradila: 'Pamatuj si, že můžeš zničit vše, co ti připadá nežádoucí. Jenom musíš mít vůli.'~ */ GOTO 35
  IF ~~ THEN REPLY #27199 /* ~"To stačí."~ */ JOURNAL #27058 /* ~Kniha mi poradila: 'Pamatuj si, že můžeš zničit vše, co ti připadá nežádoucí. Jenom musíš mít vůli.'~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 36.15 51.0
  SAY #27200 /* ~"Lituji, ó mistře, že už ti nemohu prozradit žádná další slova moudrosti. Fráze, které ti byly dány, tě poučily. Použij své znalosti."~ */
  IF ~~ THEN REPLY #27201 /* ~"Dobrá tedy. Mám ještě další otázky."~ */ GOTO 35
  IF ~~ THEN REPLY #27202 /* ~"To stačí."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 35.0
  SAY #27203 /* ~Kniha si povzdechla: "Ta proklatá krysa převlečená za mága mě přivlekla sem do katakomb, ó Mistře. Vyrval mě z rukou mého dřívějšího pána, teď už dávno mrtvého. Přinesl mě sem do svého hnízda, aby se ze mě mohl učit. Ale jeho moc je omezená... bylo těžké k němu promlouvat, a on navíc rozuměl jenom málu z toho, co mu bylo řečeno."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27204 /* ~"Řekni mi o svých schopnostech."~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27205 /* ~"Řekni mi o svých schopnostech."~ */ GOTO 30
  IF ~~ THEN REPLY #27206 /* ~"Aha. Odpověz mi ještě na další otázky..."~ */ GOTO 35
  IF ~~ THEN REPLY #27207 /* ~"Pravda. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 35.1
  SAY #27208 /* ~"Jsem moc, ó mistře, a mohu tě naučit více."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27209 /* ~"Jak?"~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27210 /* ~"Osvěž mou paměť."~ */ GOTO 30
  IF ~~ THEN REPLY #27211 /* ~"Právě teď nemám zájem. Odpověz mi na nějaké další otázky."~ */ GOTO 35
  IF ~~ THEN REPLY #27212 /* ~"Nemám zájem. Sbohem, kniho."~ */ GOTO 1
END

IF ~~ THEN BEGIN 55 // from: 34.0
  SAY #27213 /* ~"Časem, časem! Musíš být trpělivý! Už jsi ukázal, že jsi ochotný dělat to, co tě přivede k větší moc, a musíš si uvědomit, že za tu moc ZAPLATÍŠ."~ */
  IF ~~ THEN REPLY #27214 /* ~"Co mám udělat?"~ */ GOTO 59
  IF ~~ THEN REPLY #27215 /* ~"Už jsem zaplatil dost. Zapomeň na to."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY #27216 /* ~Kniha promluvila pohrdavým hlasem. "Dojít tak daleko jenom proto, aby to vzdal. Hanba. Nejsi tak silný, jak mi připadalo."~ */
  IF ~~ THEN REPLY #27217 /* ~"Ať je to jak chce. Odpověz mi na pár otázek."~ */ GOTO 57
  IF ~~ THEN REPLY #27218 /* ~"Fajn. Co mám udělat?"~ */ GOTO 59
  IF ~~ THEN REPLY #27219 /* ~"Ať je to jak chce. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #27220 /* ~"Ne. Ne dokud nedokážeš, že jsi ochotný naplnit svůj potenciál."~ */
  IF ~~ THEN REPLY #27221 /* ~"Co mám udělat?"~ */ GOTO 59
  IF ~~ THEN REPLY #27222 /* ~"Tak na to zapomeň."~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #27223 /* ~"Ať je to jak chce. Jedna cesta vede k selhání, druhá k úspěchu."~ */
  IF ~~ THEN REPLY #27224 /* ~"Fajn."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 55.0 56.1 57.0
  SAY #27225 /* ~"Máš společníky, které jsi ochotný zradit?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27226 /* ~"Co takhle Morte?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ JOURNAL #27235 /* ~Kniha mi nabídla ještě více moci výměnou za zabití jedno z mých společníků. Je to pokušení...~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27227 /* ~"Co takhle Annah?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27228 /* ~"Co takhle Dak'kon?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27229 /* ~"Co takhle Fall-from-Grace?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27230 /* ~"Co takhle Nordom?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27231 /* ~"Co takhle Vhailor?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27232 /* ~"Co takhle Ignus?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27233 /* ~"Nejsem ochotný zradit žádného."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27234 /* ~"Nemám společníky."~ */ GOTO 63
END

IF ~  Global("E_Book","GLOBAL",5)
~ THEN BEGIN 60 // from:
  SAY #27236 /* ~"Mohu ti dát ještě jednu další sílu. Dokázal jsi, že jsi ochotný udělat něco takového. Tvůj poslední úkol je zabít jednoho ze svých společníků, sám, bez kouzel."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27237 /* ~"Co takhle Morte?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27238 /* ~"Co takhle Annah?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27239 /* ~"Co takhle Dak'kon?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27240 /* ~"Co takhle Fall-from-Grace?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27241 /* ~"Co takhle Nordom?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27242 /* ~"Co takhle Vhailor?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27243 /* ~"Co takhle Ignus?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27244 /* ~"Nemyslím."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27245 /* ~"Nemám společníky."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 59.7 60.7
  SAY #27246 /* ~"Pchá. V tom případě nebudu plýtvat časem na tvou výuku. Co tvé ambice? Nemáš tužby? Ty slabý hlupáku!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27247 /* ~"Fajn. Co takhle Morte?"~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27248 /* ~"Fajn. Co takhle Annah?"~ */ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27249 /* ~"Fajn. Co takhle Dak'kon?"~ */ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27250 /* ~"Fajn. Co takhle Fall-from-Grace?"~ */ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27251 /* ~"Fajn. Co takhle Nordom?"~ */ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27252 /* ~"Fajn. Co takhle Vhailor?"~ */ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27253 /* ~"Fajn. Co takhle Ignus?"~ */ GOTO 66
  IF ~~ THEN REPLY #27254 /* ~"Jak jsem řekl: Nejsem ochotný obětovat žádného. Žádná moc mi za to nestojí."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.7 63.0
  SAY #27255 /* ~Až doteď jsi nevěděl, že by se knihy mohly ušklíbnout. "Tak tedy trp v temnotě, hlupáku."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27256 /* ~"Rozmyslel jsem si to. Zabiju  Morta."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27257 /* ~"Rozmyslel jsem si to. Zabiju  Annah."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27258 /* ~"Rozmyslel jsem si to. Zabiju  Dak'kona."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27259 /* ~"Rozmyslel jsem si to. Zabiju  Fall-from-Grace."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27260 /* ~"Rozmyslel jsem si to. Zabiju  Nordoma."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27261 /* ~"Rozmyslel jsem si to. Zabiju  Vhailora."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27262 /* ~"Rozmyslel jsem si to. Zabiju  Ignuse."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27263 /* ~"Nemám společníky."~ */ GOTO 63
  IF ~~ THEN REPLY #27264 /* ~"Udělám to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.8 60.8 62.7
  SAY #27265 /* ~"Tak si nějakého najdi. Získej si něčí důvěru a zraď  ji. Tak mi dokážeš, že jsi hoden třetí síly! Nemluv na mne, dokud to nesplníš."~ */
  IF ~~ THEN REPLY #27266 /* ~"Ne."~ */ GOTO 62
  IF ~~ THEN REPLY #27267 /* ~"Fajn, fajn."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",6)
~ THEN BEGIN 64 // from:
  SAY #27268 /* ~"Tak co? Splnil jsi úkol? Zabil jsi společníka, sám, bez kouzel?"~ */
  IF ~  Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27269 /* ~"Ano, udělal jsem to."~ */ DO ~SetGlobal("E_Book","GLOBAL",7)
IncrementGlobalOnceEx("GLOBALEvil_Book_8","GLOBALGood",-8)
~ GOTO 67
  IF ~  !Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27270 /* ~"Ještě ne."~ */ GOTO 65
  IF ~~ THEN REPLY #27271 /* ~"Ne. A ani to neudělám!"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1 64.2
  SAY #27272 /* ~Kniha se odmlčela a žádné přemlouvání ji nepřiměje k odpovědi.~ */
  IF ~~ THEN REPLY #27273 /* ~"Fajn."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.0 59.1 59.2 59.3 59.4 59.5 59.6 60.0 60.1 60.2 60.3 60.4 60.5 60.6 61.0 61.1 61.2 61.3 61.4 61.5 61.6 62.0 62.1 62.2 62.3 62.4 62.5 62.6
  SAY #27274 /* ~"Nezajímá mě koho, pokud se prokážeš hodným. Jdi a udělej to."~ */
  IF ~~ THEN REPLY #27275 /* ~"Dobře."~ */ JOURNAL #27276 /* ~Právě jsem souhlasil, že zavraždím jednoho ze svých společníků výměnou za kouzlo z knihy.~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 64.0
  SAY #27277 /* ~"Výborně. Prokázal jsi, že jsi student hodný mé síly. Toto je poslední kouzlo, které tě naučím." Kniha vydala několik divných slabik. Zaslechl jsi divný nářek ve svém srdci. Znáš kouzlo Slovo Síly, Zabij.~ */
  IF ~~ THEN REPLY #27278 /* ~"Díky, kniho. Co teď?"~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~Kniha mi dala další, ještě mocnější kouzlo výměnou za smrt jednoho z mých společníků. Výhodný obchod.~ */ GOTO 68
  IF ~~ THEN REPLY #27279 /* ~"Sbohem, kniho."~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~Kniha mi dala další, ještě mocnější kouzlo výměnou za smrt jednoho z mých společníků. Výhodný obchod.~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",7)
~ THEN BEGIN 68 // from: 67.0
  SAY #27282 /* ~Kniha je tichá a neodpovídá ti. Vypadá to, že jí došla slova.~ */
  IF ~  Global("E_Book","GLOBAL",8)
~ THEN REPLY #27283 /* ~"Dobře."~ */ DO ~SetGlobal("E_Book","GLOBAL",9)
~ JOURNAL #27284 /* ~Kniha už ke mně nemluví.~ */ EXIT
  IF ~  Global("E_Book","GLOBAL",9)
~ THEN REPLY #27283 /* ~"Dobře."~ */ EXIT
END
