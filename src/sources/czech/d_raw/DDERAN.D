// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #35792 /* ~Vidíš hlučného vyvolavače. Hodně se pohybuje a vydává spoustu křiku, nadávání a zřejmě rád dupe nohama. Asi má rád drama a dělá spoustu zvláštních výrazů, jak kolem sebe divoce mává rukama...~ */
  IF ~~ THEN REPLY #35834 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #35835 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #35793 /* ~Podíval se na tebe a mávl na dav kolem, že si dává pauzu. "Tisíceré pozdravy, pane, jak ti mohu posloužit?" Na chvíli se zarazil, když si všiml tvých jizev. "Víš, když se na tebe podívám svým bystrým zrakem, vidím muže, který by potřeboval nakoupit pár léčících amuletů."~ */
  IF ~~ THEN REPLY #35836 /* ~"Nemáš nějaké amulety?"~ */ GOTO 2
  IF ~~ THEN REPLY #35837 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #35838 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35794 /* ~Šokovaně se na tebe podíval a zamával rukama. "Jestli já, Deran, mám nějaké amulety?" Pro efekt se odmlčel. "Ne, pane, nemám... ale nenechej se tímto faktem zastrašit. Mám na prodej spoustu dalších předmětů." Ukázuje na zadní část aukčního bloku, kde stojí skupina lidí v řetězech.~ */
  IF ~~ THEN REPLY #35839 /* ~"Prodáváš otroky?"~ */ GOTO 3
  IF ~~ THEN REPLY #35840 /* ~"Mám na tebe nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #35841 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 22.0
  SAY #35795 /* ~Zavrtěl hlavou. "Ne, pane! Jsou to smluvní služebníci, ne otroci. Většinou mají za vinu menší zločiny. Prostředky z jejich prodeje jsou na uhrazení jejich dluhu městu. Po odsloužení jejich trestu jsou opět volní občané."~ */
  IF ~~ THEN REPLY #35842 /* ~Pravdivě: "Stejně mi to připadá jako otroctví."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Deran_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #35843 /* ~Pravdivě: "Připadá mi to jako dobrý způsob, jak zaplatit dluh společnosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deran_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #35844 /* ~Pravdivě: "No jo, já se o to nestarám."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #35796 /* ~Usmál se na tebe. " Takovými myšlenkami se nezatěžuji. Mým úkolem je prodávat jejich kontrakty tak, jak mi je soudy Sigilu dávají." Jeho hlas zeslábl a on se naklonil blíže k tobě. "A získávat za svou snahu procenta, jestli mi rozumíš." Narovnal se.~ */
  IF ~~ THEN REPLY #35845 /* ~"Říkal jsi, že jsou vinni zločiny. Jaké zločiny spáchali?"~ */ GOTO 6
  IF ~~ THEN REPLY #35846 /* ~"Mám na tebe nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #35847 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #35803 /* ~Prázdný uzel.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #35801 /* ~Přehnaně pokrčil rameny. "Nejsem si tím jist, ale tipnul bych si krádež, přepadení nebo neschopnost zaplatit dluhy. To jsou nejběžnější přestupky."~ */
  IF ~~ THEN REPLY #35848 /* ~"Aha... Mám na tebe nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #35849 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1 4.1 6.0 8.1 14.3 15.3 16.2 17.2 18.2 19.0 20.0 22.1
  SAY #35802 /* ~Zavrtěl hlavou. "Mám málo času na takové řečičky, příteli. Mám tady běžící obchod. Mluv rychle!"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #35850 /* ~"Hledám někoho jménem Lothar, nebo taky Pán Kostí..."~ */ GOTO 8
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #35851 /* ~"Měl jsem lebku a někdo mi ji ukradnul. Nevíš, kdo by to mohl udělat?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35852 /* ~"Chci se tě zeptat na Trist."~ */ GOTO 23
  IF ~~ THEN REPLY #35853 /* ~"Kdo jsi?"~ */ GOTO 22
  IF ~~ THEN REPLY #35854 /* ~"Můžeš mi říct o této čtvrti?"~ */ GOTO 14
  IF ~~ THEN REPLY #35855 /* ~"Můžeš mi říct o Sigilu?"~ */ GOTO 19
  IF ~~ THEN REPLY #35856 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 13.0
  SAY #35804 /* ~Dívá se na tebe s falešným zaujetím "Bylo by nebezpečné říci ti něco takového, příteli... nechci tě nijak ohrozit."~ */
  IF ~~ THEN REPLY #35857 /* ~"Mám rád nebezpečí. Ohroz mě."~ */ GOTO 9
  IF ~~ THEN REPLY #35858 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #35859 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35805 /* ~Hlasitě se zasmál. "Dobrá tedy, příteli. Lothar je Pán, lord nebo taky slavné Kosti Noci. Knihovna, kde sami mrtví fungují jako jeho schránky arkánních znalostí. Všichni mrtví ze Sigilu a Sfér mu v jeho Salónu Lebek šeptají svá tajemství."~ */
  IF ~~ THEN REPLY #35860 /* ~"Kde můžu najít to místo?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35806 /* ~"Zkus to na jihovýchod od tržiště... měla by tam být zničená budova, mohl bys tam najít kostěný žebřík, který vede dolů - mohl by to být ten žebřík, který vede do Salónu Lebek."~ */
  IF ~~ THEN REPLY #35861 /* ~"Děkuju ti. Mám ještě nějaké další otázky..."~ */ GOTO 11
  IF ~~ THEN REPLY #35862 /* ~


"Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #35807 /* ~Usmál se. "Ne, příteli, už pro tebe nemám další odpovědi. Už jsem ti o některých věcech řekl až příliš. Musím se vrátit k potřebám svých zákazníků." Odvrátil se od tebe.~ */
  IF ~~ THEN REPLY #35863 /* ~"Aha. Sbohem."~ */ DO ~SetGlobal("Deran_Questions","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #35808 /* ~"Lebka?" Vypadá zmateně. "Na ty tady není zrovna trh, alespoň na ty oddělené od těla..."Zamračil se a otočil se k tobě. Dramaticky ztišil hlas. "Pokud pochopitelně..."~ */
  IF ~~ THEN REPLY #35864 /* ~"Pokračuj..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #35809 /* ~"No, záležitost s chybějícími lebkami může být docela vážná, dokonce velice nebezpečná. Víš, pokud chce někdo obchodovat s lebkami, mohou být pouze pro několik lidí v Sigilu..." Odmlčel se. "A je skoro jistá sázka, že nejpravděpodobnější zákazník bude..." Podíval se nalevo i napravo a pak ti spiklenecky šeptá. "...Lothar,  samotný Pán Kostí!"~ */
  IF ~~ THEN REPLY #36237 /* ~"Pověz mi o tom Lotharovi."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 7.4
  SAY #35810 /* ~Rozmáchnul se rukama kolem. "Tohle, pane, je Dolní čtvrť. Domov běžných lidí a jinak máloco zajímavého. Jediná místa, na která si tě dovolím upozornit, jsou slévárna, tržiště pod otevřeným nebem a dobývací věž."~ */
  IF ~~ THEN REPLY #35865 /* ~"Pověz mi o slévárně."~ */ GOTO 15
  IF ~~ THEN REPLY #35866 /* ~"Pověz mi o dobývací věži."~ */ GOTO 17
  IF ~~ THEN REPLY #35867 /* ~"Pověz mi o Tržišti pod otevřeným nebem."~ */ GOTO 18
  IF ~~ THEN REPLY #35868 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #35869 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0 18.0
  SAY #35811 /* ~Rozevřel ruce a podíval se vzhůru. "Dílna veškerého stvoření, kde se ocel a duše osoby tvarují do uměleckých výrobků, samotné stvoření může být mezi těmi zdmi změněno..." Vrátil pohled k tobě. "Tak to říkají Boží lidé."~ */
  IF ~~ THEN REPLY #35870 /* ~" Boží lidé?"~ */ GOTO 16
  IF ~~ THEN REPLY #35871 /* ~"Pověz mi o dobývací věži."~ */ GOTO 17
  IF ~~ THEN REPLY #35872 /* ~"Pověz mi o Tržišti pod otevřeným nebem."~ */ GOTO 18
  IF ~~ THEN REPLY #35873 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #35874 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #35812 /* ~Usmál se. "Ušlechtilé společenství - vše se může stát bohem, pokud se během životů naučí dost, aby rostlo, zlepšovalo se a získalo lepšího ducha! Napadá tě ušlechtilejší společnost?"~ */
  IF ~~ THEN REPLY #35875 /* ~"Pověz mi o dobývací věži."~ */ GOTO 17
  IF ~~ THEN REPLY #35876 /* ~"Pověz mi o Tržišti pod otevřeným nebem."~ */ GOTO 18
  IF ~~ THEN REPLY #35877 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #35878 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1 16.0 18.1
  SAY #35813 /* ~"Opravdové mystérium, dokonce i pro mne. Zkrátka se jednoho dne objevila. Nikdo do ní nemůže vstoupit a nic z ní nikdy nevyšlo."~ */
  IF ~~ THEN REPLY #35879 /* ~"Pověz mi o slévárně."~ */ GOTO 15
  IF ~~ THEN REPLY #35880 /* ~"Pověz mi o Tržišti pod otevřeným nebem."~ */ GOTO 18
  IF ~~ THEN REPLY #35881 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #35882 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2 15.2 16.1 17.1
  SAY #35814 /* ~"Trh leží na jih odsud a najdeš tam téměř vše, co potřebuješ. Doporučuju ti návštěvu toho místa."~ */
  IF ~~ THEN REPLY #35883 /* ~"Pověz mi o slévárně."~ */ GOTO 15
  IF ~~ THEN REPLY #35884 /* ~"Pověz mi o dobývací věži."~ */ GOTO 17
  IF ~~ THEN REPLY #35885 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #35886 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #35815 /* ~Zasmál se a roztáhl ruce, jako by chtěl obejmout celé město. "Slavné město zlata, město, odkud vedou všechny dveře..." Usmál se. "...a kam všechny dveře směřují. O Sigilu ti nemůže nikdo nic říct, musíš si ho zažít sám!"~ */
  IF ~~ THEN REPLY #35887 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #35888 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #35816 /* ~Vidíš Derana vyvolávače. Usmál se na tebe. "Znovu tě vítám! Co pro tebe můžu udělat tento nádherný den?"~ */
  IF ~  !Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35889 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~  Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35890 /* ~"Mám nějaké otázky..."~ */ GOTO 21
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35891 /* ~"Chci se tě zeptat na Trist."~ */ GOTO 23
  IF ~~ THEN REPLY #35892 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #35817 /* ~Smutně se na tebe usmál. "Už ti neodpovím na žádnou otázku, pane. Už jsem ohrozil nás oba a nevidím důvod, proč bych v tom měl pokračovat."~ */
  IF ~~ THEN REPLY #35893 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.3
  SAY #35818 /* ~"Jmenuju se Deran, příteli! Copak jsi o mně ještě neslyšel? Jsem raněn, opravdu!" Usmál se ještě více. "Nikdo v Sigilu není známější, pokud hledáš někoho, kdo přivádí lidi k jiným lidem." Ukázal dozadu, kde stojí skupina lidí v řetězech. "Chtěl bys někoho, příteli?"~ */
  IF ~~ THEN REPLY #35894 /* ~"Prodáváš otroky?"~ */ GOTO 3
  IF ~~ THEN REPLY #35895 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #35896 /* ~"Ne díky, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.2 20.2
  SAY #35819 /* ~Zamračil se na chvíli, pak pokrčil rameny. "Dobrá tedy, pane. Co s Trist?"~ */
  IF ~~ THEN REPLY #35897 /* ~"Můžu koupit její kontrakt?"~ */ GOTO 24
  IF ~~ THEN REPLY #35898 /* ~"Říká, že na blok nepatří."~ */ GOTO 31
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35899 /* ~"Mám důkaz, že je nevinná."~ */ GOTO 33
  IF ~~ THEN REPLY #35900 /* ~"To nic. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #35820 /* ~Zamračil se. "Jistě, pane... pokud splňuješ požadavky, které jsou určeny soudy Sigilu a můžeš si dovolit zaplatit." Usmívá se na tebe.~ */
  IF ~~ THEN REPLY #35901 /* ~"Jaké jsou požadavky?"~ */ GOTO 25
  IF ~~ THEN REPLY #35902 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 27.0
  SAY #35821 /* ~Začíná ukazovat na prstech. "Za prvé, musíš být občan Sigilu. Za druhé, musíš dodat důkaz trvalého pobytu a že můžeš dodat ubytování a stravu pro služebníka. Nakonec, nesmíš mít sám kriminální záznam."~ */
  IF ~~ THEN REPLY #35903 /* ~"Aha... Kolik stojí její kontrakt?"~ */ GOTO 26
  IF ~~ THEN REPLY #35904 /* ~"Co když dokážu, že je nevinná?"~ */ GOTO 28
  IF ~~ THEN REPLY #35905 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #35822 /* ~Široce se na tebe usmál a pak ukázal na dav. "Začnu s nabídkou pětiset měďáku,pane."~ */
  IF ~~ THEN REPLY #35906 /* ~"Co kdybych koupil její kontrakt přímo?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #35823 /* ~Smutně se na tebe podíval a zavrtěl hlavou. "Bude prodána nejvyšší nabídce, pane. To je zákon."~ */
  IF ~~ THEN REPLY #35907 /* ~"Aha... Jaké jsou ty požadavky na zakoupení služebníka?"~ */ GOTO 25
  IF ~~ THEN REPLY #35908 /* ~"Co když dokážu, že je nevinná?"~ */ GOTO 28
  IF ~~ THEN REPLY #35909 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.1 27.1 31.0
  SAY #35824 /* ~Zasmál se. "Jako agent soudů bych před ně mohl předstoupit s novými důkazy a nechat všechny obvinění proti Trist stáhnout. Máš takový důkaz?"~ */
  IF ~~ THEN REPLY #35910 /* ~"Tentokrát ne."~ */ GOTO 29
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35911 /* ~"Ano."~ */ GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #35825 /* ~Přikývl. "Chceš pro paní Trist najít takový důkaz?"~ */
  IF ~~ THEN REPLY #35912 /* ~"Ano."~ */ GOTO 30
  IF ~~ THEN REPLY #35913 /* ~"Nevím..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #35826 /* ~Chvíli na tebe zírá a snaží se odhadnout tvou spolehlivost. "Dobrá tedy. Nebudu prozatím Trist prodávat, pane. Hodně štěstí ve tvém hledání. A teď mě nech být a dej se do práce."~ */
  IF ~~ THEN REPLY #35914 /* ~"Děkuju ti, sbohem."~ */ JOURNAL #66524 /* ~Mluvil jsem s vyvolávačem Deranem o Trist. Řekl jsem mu, že hodlám najít důkaz její neviny. Souhlasil, že jí prozatím nebude do aukce dávat.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY #35827 /* ~Povzdechl si a pak se na tebe zamračil. "Řekl bys něco jiného, kdybys byl na jejím místě?" Zavrtěl hlavou. "Slyšel jsem její příběh, pane. I když s tou paní sympatizuji, bez důkazu pro ni nemohu nic udělat."~ */
  IF ~~ THEN REPLY #35915 /* ~"Co když dokážu, že je nevinná?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY #35797 /* ~Zavrtěl hlavou. "V tom případě plýtváš touto konverzací časem tvým i mým."~ */
  IF ~~ THEN REPLY #35916 /* ~"Dobře, chtěl bych jí pomoct."~ */ GOTO 30
  IF ~~ THEN REPLY #35917 /* ~"Máš pravdu, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.2 28.1
  SAY #35798 /* ~Široce se usmál a pak se rozesmál. "Dobrá tedy, ukaž mi ten důkaz." Natáhnul ruku.~ */
  IF ~~ THEN REPLY #35918 /* ~Dej mu dokument.~ */ DO ~DestroyItemObject("loandoc",Protagonist,FALSE)
SetGlobal("Trist_Quest","GLOBAL",4)
AddexperienceParty(4000)
~ GOTO 34
  IF ~~ THEN REPLY #35919 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #35799 /* ~Otevřel dokument a rychle si jej prohlédl. Po chvíli si povzdechl, zavřel listinu a strčil si ji do košile. "Vypadá to, že soud dluží paní Trist omluvu, pane. Od tohoto okamžiku je volná a já zařídím, aby jí bylo vráceno její postavení a majetek."~ */
  IF ~~ THEN REPLY #35920 /* ~"Děkuju ti, Derane."~ */ JOURNAL #66525 /* ~Dal jsem Deranovi Tristiny dlužní listiny. Propustil Trist a zařídil jí vrácení všech práv.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #35800 /* ~"Ne, díky. Je to vzácnost, když někdo udělá něco, jako ty." Uklonil se ti. "Omluv mě, musím si promluvit s paní Trist." Jde směrem k Trist.~ */
  IF ~~ THEN REPLY #35921 /* ~"Sbohem."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ EXIT
END
