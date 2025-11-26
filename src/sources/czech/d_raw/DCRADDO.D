// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRADDO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRADDO~

IF ~  Global("Craddock","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22870 /* ~Vidíš rozložitého muže, pozorujícího okolí tvrdým ostrým pohledem skrz zúžená oční víčka. Je mírně shrben, jako by na ramenech nesl velkou zátěž. Z jeho šatů jde nepříjemný zápach potu a špíny. ~ */
  IF ~~ THEN REPLY #22893 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #22894 /* ~Ignoruj toho muže, potuluj se po tržišti.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22871 /* ~Mužovy oči se zaměří na vás a jeho zamračený pohled se prohloubí. "Hej? Co tu vokolo čmucháte?"~ */
  IF ~~ THEN REPLY #22895 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22896 /* ~"Ty si Craddock?"~ */ GOTO 3
  IF ~~ THEN REPLY #22897 /* ~"Nevadí. Promiň, že jsem rušil."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #22872 /* ~Zaremcá. "Nemám čas na žebráky a na psy. A teď vysmrď!"~ */
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22898 /* ~ "Ty jsi Craddock?"~ */ GOTO 3
  IF ~~ THEN REPLY #22900 /* ~"Tak nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #22873 /* ~"Možná..." Studuje tvoji tvář, jako když si tě zkouší připomenout. "Jestli jsem, kdo jsem, kdo si ty?"~ */
  IF ~~ THEN REPLY #22901 /* ~"Přišel jsem se vzkazem od Baena Posla. Vzkaz zní: 'Dodávka musí být v Curstu do tří dnů, jinak budete potrestáni.'~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",2)
SetGlobal("Craddock","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #22902 /* ~"Nevadí. S někým jsem si tě spletl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22874 /* ~"K *čertu!* Copak tam můžou bejt tak *blbý* a myslet si, že dělám zázraky?! No dobrá - tvoje zpráva si našla cestu ke správným uším, a teď už je na mně s tím něco udělat!"~ */
  IF ~~ THEN REPLY #22903 /* ~"Co je za problém?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #22875 /* ~"Podívej se kolem, hele!" Craddock kývne hlavou směrem k dělníkům na tržišti, pak se zamračí. "Tyhle lenoši a hlupáci se sotva udržej stojícího nákladu, a teď to potřebujem zvládnut za polovinu času!"~ */
  IF ~~ THEN REPLY #22906 /* ~"Potřebuješ nějak pomoci?"~ */ GOTO 6
  IF ~~ THEN REPLY #22907 /* ~"Je mi líto, že jsem to poslouchal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #22876 /* ~"Já ti povim, co potřebuju - aby se všichni moji chlapi pustili do práce! Jhelai dneska ráno zdrhnul a já ho potřebuju tady."~ */
  IF ~~ THEN REPLY #22908 /* ~"Jhelai? Kam šel?"~ */ GOTO 7
  IF ~~ THEN REPLY #22909 /* ~"Je mi líto, že jsem to poslouchal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #22877 /* ~"Ten Úlskej kozlí zadek se teď courá někde poblíž Doutnajícího nebožtíka, místo toho, aby nám tady teď pomáhal. Hajzl drahej..."~ */
  IF ~~ THEN REPLY #22910 /* ~"Můžu ho pro tebe jít hledat."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #22911 /* ~"Můžu ho pro tebe jít hledat.. za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22912 /* ~"Je mi líto, že jsem to poslouchal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #22878 /* ~"Och, moh´ bys, vážně?" Craddock na tebe zašilhá. "A proč bys to dělal, co?"~ */
  IF ~~ THEN REPLY #22914 /* ~"Potřebuješ pomoci, viď? Nezní to jako by si měl čas ho jít hledat, když musíš udělat tolik práce."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #22916 /* ~"Dobře, najdu ho, ale neudělám to zadarmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22915 /* ~"Tak nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 8.1
  SAY #22879 /* ~Craddock na chvíli ztichne, pak přikývne. "Hele... najdi Jhelaie, řekni mu, že mu přetáhnu záda bičem, když se nevrátí. Zaplatím ti za to..." Zamračí se. "...*když* ho najdeš. Teď jdi!"~ */
  IF ~~ THEN REPLY #22917 /* ~"Říkáš, že je pravděpodobně u Doutnajícího nebožtíka? Kde to je?"~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~Craddockovi chybí jeden dělník, opilec jménem Jhelai. Řekl mi, že se nejspíš potuluje po ulici U Doutnajícího nebožtíka.~ */ GOTO 10
  IF ~~ THEN REPLY #22918 /* ~"Fajn, jdu se po něm podívat. Sbohem."~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~Craddockovi chybí jeden dělník, opilec jménem Jhelai. Řekl mi, že se nejspíš potuluje po ulici U Doutnajícího nebožtíka.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22880 /* ~Je to jihovýchodně odsud - přímo skrz jihovýchodní bránu, pak pár bloků směrem východně. Je tam dost nepořádek od opilců, nemůžeš to minout. Jhelai je většinou tam někde kolem."~ */
  IF ~~ THEN REPLY #22919 /* ~"Fajn, jdu se po něm podívat. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Craddock","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #22881 /* ~Vidíš Craddocka. Jeho pohled se zakaboní, jak tě zahlédne... vypadá to, jako by mu tvář měla puknout ve dví.~ */
  IF ~  Global("Craddock_Quest","GLOBAL",0)
~ THEN REPLY #22920 /* ~"Vypadáš Baenovou zprávou rozrušen. Je s tím nějaký problém?"~ */ GOTO 5
  IF ~  Global("Craddock_Quest","GLOBAL",2)
~ THEN REPLY #22921 /* ~"Našel jsem Jhelaie."~ */ GOTO 12
  IF ~  Global("Craddock_Quest","GLOBAL",3)
~ THEN REPLY #22922 /* ~"Můžu ti pomoct, jestli teď máš volno, když je Jhelai pryč."~ */ GOTO 16
  IF ~~ THEN REPLY #22923 /* ~Odejdi od Craddocka v míru.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #22882 /* ~"Je to dobrý?" Craddock se letmo rozhlédne kolem. "Kde pak *je*?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22924 /* ~Pravda: "Řekl 'di se vysrat,' taky že jseš 'špin-avej čokl, tý nejšpi-navější rasy,' a že pro tebe už 'nikdy makat nebude.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ JOURNAL #22699 /* ~Doručil jsem Jhelaiův vzkaz Craddockovi, slovo od slova... Craddock se na zprávu netvářil příliš šťastně. Jhelai bude svých slov litovat, až vystřízliví.~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22946 /* ~Pravda: "Řekl 'di se vysrat,' taky že jseš 'špinavej čokl, tý nejšpinavější rasy,' a že pro tebe už 'nikdy makat nebude.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22701 /* ~Doručil jsem Jhelaiův vzkaz Craddockovi, slovo od slova...  Craddock nebyl tím vzkazem příliš nadšený - v podstatě byl tak "nešťastný," až Morte vypadal, že do svého repertoáru zařadí nový soubor urážek. ~ */ GOTO 13
  IF ~~ THEN REPLY #22947 /* ~Lež: "Říkal...  uff, že bych ho mohl zastoupit."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Craddock_1","GLOBALLaw",-1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22702 /* ~Našel jsem Jhelaie, pak jsem řekl Craddockovi, že bych ho zastoupil...  Craddock se nejdříve tvářil skepticky, ale pak souhlasil.~ */ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #22883 /* ~Craddockova tvář zrudne a jeho ústa zavrčí. "Zatrať se jeho jméno! Ať všichni fiendové Sfér pronásledují jeho kroky..." Z Craddockových úst vytéká ohnivý proud nadávek, hrozeb a úvah o Jhelaiově rodinných kořenech... je to až zvráceně inspirující.~ */
  IF ~~ THEN REPLY #22950 /* ~"Víš, mohl bych ho zastoupit, jestli potřebuješ pomoci."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22951 /* ~"Potřebuju na den práci. Na čas bych vybíral Jhelaiova cla, výměnou za jeho plat."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22948 /* ~"Fajn, to byl ten vzkaz. Jestli už nic víc, tak bych si teď vzal své peníze..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22952 /* ~"Oh... nestarej se o peníze za jeho nalezení. Už musím jít. Sbohem."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22953 /* ~"Už musím jít, hned. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #22884 /* ~Craddockova tvář zrudne a jeho ústa zavrčí. "Zatrať se jeho jméno! Ať všichni fiendové Sfér pronásledují jeho kroky..." Z Craddockových úst vytéká ohnivý proud nadávek, hrozeb a úvah o Jhelaiově rodinných kořenech... ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 227
END

IF ~~ THEN BEGIN 15 // from:
  SAY #22885 /* ~Craddock dokončí tirádu a zavrčí. "Zatraceně... ten Jhelai..."~ */
  IF ~~ THEN REPLY #22954 /* ~"Víš, mohl bych ho zastoupit, jestli potřebuješ pomoci."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22955 /* ~"Potřebuju na den práci. Na čas bych vybíral Jhelaiova cla, výměnou za jeho plat."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22956 /* ~"Fajn, to byl ten vzkaz. Jestli už nic víc, tak bych si teď vzal své peníze..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22958 /* ~"Oh... nestarej se o peníze za jeho nalezení. Už musím jít. Sbohem."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22960 /* ~"Už musím jít, hned. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.2 12.2 13.0 13.1 15.0 15.1 20.0 20.1
  SAY #22886 /* ~Craddock si tě na chvíli prohlíží. "Ty? Ha! Ty nemůžeš..." Na moment upadne v ticho. "Dobrá... možná bys mohl. Je to těžká práce a při práci nesmíš nasávat..."~ */
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #22962 /* ~"Rozumím... můžeme začít."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(10)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,STR)
CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #22963 /* ~"Rozumím... můžeme začít."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(20)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #22964 /* ~"Rozumím... můžeme začít."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(30)
~ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #22887 /* ~Práce je dlouhá, ale na konci šichty nejsi ani trochu unavený. Craddock na tebe zamumlá. "Jsi dost dobrej... tady je plat." Hodí ti hrst mincí. "Teď jdi. Už pro tebe nemám využití."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22965 /* ~"Co bude s platbou za doručení Jhelaiova vzkazu?"~ */ GOTO 21
  IF ~~ THEN REPLY #22966 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #22888 /* ~Práce je dlouhá, ale na konci šichty nejsi ani trochu unavený... ostatní dělníci jsou ohromeni, jak rychle jsi schopen pracovat a kolik váhy uneseš. Craddock na tebe zamumlá. "Máš záda jak bariaur, víš to? Udělal jsi dvakrát tolik, co Jhelai... tady je tvůj plat." Hodí ti hrst mincí; celkem 20 měďáků. "Teď jdi. Už pro tebe nemám využití."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22967 /* ~"Co bude s platbou za doručení Jhelaiova vzkazu?~ */ GOTO 21
  IF ~~ THEN REPLY #22968 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #22889 /* ~Práce je dlouhá, ale na konci šichty nejsi ani trochu unavený... ostatní dělníci jsou ohromeni, jak rychle jsi schopen pracovat a kolik váhy uneseš. Craddock na tebe zamumlá. "Máš záda jak thokola, víš to? Udělal jsi třikrát tolik, co Jhelai... tady je tvůj plat." Hodí ti hrst mincí; celkem 30 měďáků. "Teď jdi. Už pro tebe nemám využití."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22969 /* ~"Co bude s platbou za doručení Jhelaiova vzkazu?~ */ GOTO 21
  IF ~~ THEN REPLY #22970 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.2 15.2
  SAY #22890 /* ~Craddock zavrčí, pak sáhne do měšce a hodí ti hrst mincí. "Teď jdi! Jestli zas uvidíš Jhelaie, řekni mu, že je mrtvej muž!"~ */
  IF ~~ THEN REPLY #22971 /* ~"Víš, mohl bych ho zastoupit, jestli potřebuješ pomoci."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22972 /* ~"Potřebuju na den práci. Na čas bych vybíral Jhelaiova cla, výměnou za jeho plat."~ */ GOTO 16
  IF ~~ THEN REPLY #22973 /* ~"Zapamatuji si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0 18.0 19.0
  SAY #22891 /* ~Craddock zavrčí, pak sáhne do měšce a odpočítá deset měďáků, které ti hodí. "Tady je tvůj plat! Teď jdi!"~ */
  IF ~~ THEN REPLY #22974 /* ~"Tak sbohem."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ EXIT
END
