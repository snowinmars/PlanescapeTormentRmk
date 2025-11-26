// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANDRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANDRI~

IF ~  Global("Ingress","GLOBAL",7)
!Dead("Ingress")
~ THEN BEGIN 0 // from:
  SAY #3068 /* ~Candrian se postavil, když ses přiblížil. "Zubatá žena chtěla, abys dostal tohle," řekl a podal ti ruku. "Chtěla vyjádřit své díky. A nejspíš se taky chtěla zbavit těhle zatracených věcí." Na dlani jeho ruky leží Ingressiny tančící zuby. Nasypal ti je do ruky. "Užij si je, hledači."~ */
  IF ~~ THEN REPLY #3364 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~Když jsem se vrátil ke Candrianovi poté, co osvobodil Ingress ze Sigilu, obdaroval mě dárkem, který mi tu zanechala: jejími tančícími zuby. Rozkošné!~ */ GOTO 5
  IF ~~ THEN REPLY #12009 /* ~"Sbohem."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~Když jsem se vrátil ke Candrianovi poté, co osvobodil Ingress ze Sigilu, obdaroval mě dárkem, který mi tu zanechala: jejími tančícími zuby. Rozkošné!~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",8)
~ THEN BEGIN 1 // from:
  SAY #12010 /* ~Zase jednou tě zarazila podivná povaha existence tohoto muže, a zase jednou se cítíš jako spoutaný, jakmile na tebe upřel pohled svých bledě modrých očí. "Přinesly ti tvé cesty to, co potřebuješ?"~ */
  IF ~~ THEN REPLY #12011 /* ~"Ještě ne.. Mám pro tebe nějaké otázky."~ */ GOTO 5
  IF ~~ THEN REPLY #12012 /* ~"Ještě ne.. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12013 /* ~Vidíš jemně vyhlížejícího muže s jemnýma očima, zahleděnýma do dálky. Je oblečený v elastickém koženém oblečení a má na sobě spoustu doplňků, použitelných k práci nebo destrukci, jako provazy, ostny, křesadla a prázdné flakóny. Vypadá, jako by byl napůl mimo. Doslova. V jeho existenci jako by byla nějaká nehmotnost, snad jako by někdo částečně odsál jeho esenci. Zaměřil na tebe své oči a ty jsi pocítil, jak tě jimi připoutává. "Zdravím tě, ó hledači."~ */
  IF ~~ THEN REPLY #12014 /* ~"Zdravím."~ */ GOTO 4
  IF ~~ THEN REPLY #12015 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #12016 /* ~Zase jednou tě zarazila podivná povaha existence tohoto muže, a opět se cítíš jako spoutaný, jakmile na tebe upřel pohled svých bledě modrých očí. "Přinesly ti tvé cesty to, co potřebuješ?"~ */
  IF ~~ THEN REPLY #12017 /* ~"Ještě ne.. Mám pro tebe nějaké otázky."~ */ GOTO 5
  IF ~~ THEN REPLY #12018 /* ~"Ještě ne.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12019 /* ~Opatrně položil na stůl svůj džbánek a soustředil se na tebe. "Viděl jsem vzdálené konce mnohovesmíru a vrátil jsem se, abych o nich mohl vyprávět. Šlapal jsem po tělech mrtvých bohů a točil se kolem měsíčních paprsků v Astrálu před tisícem řvoucích rytířů githyanki. Přešel jsem okraj existence a pozoroval, jak se ode mne má esence odpoutává. Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #12020 /* ~"Mám pro tebe nějaké otázky."~ */ GOTO 5
  IF ~~ THEN REPLY #12021 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0 3.0 4.0 6.0 7.1 8.5 9.5 10.2 11.6 12.2 13.1 14.1 15.1 16.3 17.2 18.5 19.5 20.5 21.2 22.2 23.2 24.6 25.4 26.3 27.3 28.2 29.2 30.2 31.2 32.2 33.1 34.2 35.2 36.3 37.1 38.1 39.1 40.1 41.2 42.0 43.0 44.0 45.0
  SAY #12022 /* ~"Možná pro tebe mám odpovědi. Ptej se a uvidíme."~ */
  IF ~  !Dead("Ingress")
Global("Ingress","GLOBAL",5)
~ THEN REPLY #12023 /* ~"Potkal jsem ženu jménem Ingress s *velmi* špatnými zuby. Řekla mi, že sem přišla portálem, který se otevřel broukáním písničky blízko dvou zkřížených stromů. Můžeš jí dostat domů?"~ */ DO ~SetGlobal("Ingress","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #12024 /* ~"Kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #12025 /* ~"Co děláš?"~ */ GOTO 40
  IF ~~ THEN REPLY #12026 /* ~"Co je to za místo?"~ */ GOTO 41
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12027 /* ~"Hledám ztracený deník."~ */ GOTO 44
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12028 /* ~"Znáš Sběrače jménem Pharod?"~ */ GOTO 45
  IF ~~ THEN REPLY #12029 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12030 /* ~Na chvíli se odmlčel a přemýšlí. "Znám portál, o kterém mluvíš, i když jsem jím procházel naposledy před třiceti lety. Vezmu ji domů, hledači. Řekni jí, ať očekává můj příchod a pak se se mnou setkej tady, ať ti mohu sdělit, zda jsem byl úspěšný, či ne."~ */
  IF ~~ THEN REPLY #12031 /* ~"Díky. Mám nějaké otázky..."~ */ JOURNAL #28754 /* ~Mluvil jsem s Candrianem o Ingress a on mi slíbil, že ji zavede zpět domů. Poslal mě, abych jí vyřídil, že na něj má čekat. Potom se mám vrátit za ním k Doutnajícímu nebožtíkovi.~ */ GOTO 5
  IF ~~ THEN REPLY #12032 /* ~"Díky. Sbohem."~ */ JOURNAL #28754 /* ~Mluvil jsem s Candrianem o Ingress a on mi slíbil, že ji zavede zpět domů. Poslal mě, abych jí vyřídil, že na něj má čekat. Potom se mám vrátit za ním k Doutnajícímu nebožtíkovi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12033 /* ~"Jsem Candrian Illborne, cestovatel, snílek, vypravěč a tak dále."~ */
  IF ~~ THEN REPLY #12034 /* ~"Jsi cestovatel? Řekni mi o sférách."~ */ GOTO 8
  IF ~~ THEN REPLY #12035 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12036 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #12037 /* ~"Jsem unavený, hledači... tak unavený. Právě jsem dorazil z negace. Odpovím ti, na co budu moci, ale nemohu zaručit, že tě mé odpovědi uspokojí. Co si přeješ vědět? Chceš slyšet o Vnějších sférách, o Základní sféře materiální, nebo o Vnitřních sférách?"~ */
  IF ~~ THEN REPLY #12038 /* ~"Jaký je v tom rozdíl?"~ */ GOTO 10
  IF ~~ THEN REPLY #12039 /* ~"Řekni mi o Vnějších sférách."~ */ GOTO 11
  IF ~~ THEN REPLY #12040 /* ~"Řekni mi o Vnitřních sférách."~ */ GOTO 35
  IF ~~ THEN REPLY #12041 /* ~"Řekni mi o Základní materiální sféře."~ */ GOTO 39
  IF ~~ THEN REPLY #12042 /* ~"Právě zpátky z negace? Co tím myslíš?"~ */ GOTO 36
  IF ~~ THEN REPLY #12043 /* ~"O žádné, ale mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12044 /* ~"Žádné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 13.0 17.1 18.4 19.3 20.4 34.0 35.1 36.2 37.0 38.0 39.0
  SAY #12045 /* ~"Chceš vědět více o sférách? Ptej se a já ti odpovím nejlépe, jak budu moci. Chceš slyšet o Vnějších sférách, o Základní sféře materiální, nebo o Vnitřních sférách?"~ */
  IF ~~ THEN REPLY #12046 /* ~"Jaký je v tom rozdíl?"~ */ GOTO 10
  IF ~~ THEN REPLY #12047 /* ~"Řekni mi o Vnějších sférách."~ */ GOTO 11
  IF ~~ THEN REPLY #12048 /* ~"Řekni mi o Vnitřních sférách."~ */ GOTO 35
  IF ~~ THEN REPLY #12049 /* ~"Řekni mi o Základní materiální sféře."~ */ GOTO 39
  IF ~~ THEN REPLY #12050 /* ~"Co jsi tím myslel, když jsi se předtím zmínil o nějaké negaci?"~ */ GOTO 36
  IF ~~ THEN REPLY #12051 /* ~"O žádné, ale mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12052 /* ~"Žádné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #12053 /* ~"Rozdíl je v pravé esenci, hledači. Vnitřní sféry jsou materiál, substance, pravá fyzičnost. Jsou to základní cihly mnohovesmíru, ze kterých vytryskává veškerá elementární víra. Vnitřní sféry pronikají skrze Ethereální sféru - sféru potenciálu, jak jí někteří říkají, která formuje elementy do světa smrtelníků. Jakmile přejdeš Ethereální sféru, dostaneš se do Základní materiální sféry, kde existují všechny druhy smrtelníků a monster a mýtů a strojů. Tam se rodí víra, a tam se rodí duchové, kteří tvoří Vnější sféry. Když smrtelníci zemřou, projdou do Astrální sféry, ne-místa, které tvoří samotné myšlenky a mentální energie. Je ve všech věcech a v žádné. Je to paradox, mezi dalšími věcmi, a roztrušuje duchy do Velkého prstence. Rozumíš mi?"~ */
  IF ~~ THEN REPLY #12054 /* ~"Ano. Pokračuj."~ */ GOTO 11
  IF ~~ THEN REPLY #12055 /* ~"Nejsem si jistý."~ */ GOTO 12
  IF ~~ THEN REPLY #12056 /* ~"Na tohle raději zapomeneme. Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12057 /* ~"Probereme si to později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #12058 /* ~"Tak... Vnější sféry... Kde bych měl začít? Znáš základní pravidla sfér, na kterých jsou založena všechna ostatní? Víš o složení Vnějších sfér? Znáš Velký prstenec a jeho rozdělení? Víš o jednotlivých sférách? Každá z nich vede k další, takže je nejlepší začít od začátku."~ */
  IF ~  Global("Know_Rule_Of_3","GLOBAL",1)
~ THEN REPLY #12059 /* ~"Řekni mi základní pravidla."~ */ GOTO 14
  IF ~~ THEN REPLY #12060 /* ~"Řekni mi o složení sfér."~ */ GOTO 15
  IF ~~ THEN REPLY #12061 /* ~"Řekni mi o Velkém Prstenci a jeho dělení."~ */ GOTO 17
  IF ~~ THEN REPLY #12062 /* ~"Řekni mi o jednotlivých sférách."~ */ GOTO 18
  IF ~~ THEN REPLY #12063 /* ~"Řekni mi místo toho o Vnitřních Sférách."~ */ GOTO 35
  IF ~~ THEN REPLY #12064 /* ~"Řekni mi místo toho o Základní Materiální Sféře."~ */ GOTO 39
  IF ~~ THEN REPLY #12065 /* ~"Zapomeň na to. Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12066 /* ~"Možná si to probereme později. Sbohem."~ */ EXIT
  IF ~  Global("Know_Rule_Of_3","GLOBAL",0)
~ THEN REPLY #28755 /* ~"Pověz mi o základních pravidlech."~ */ DO ~SetGlobal("Know_Rule_Of_3","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #12160 /* ~"Vnitřní sféry jsou substance. Vytvářejí hmotu. Vedou na Základní materiální sféru, kde je život, smrt a zrození myšlení. Základní vede na Vnější sféry, kde se víra stává pevnou, kde myšlenky získávají formu. Je to pro tebe tak jednodušší?"~ */
  IF ~~ THEN REPLY #12161 /* ~"Pořád nerozumím."~ */ GOTO 13
  IF ~~ THEN REPLY #12162 /* ~"Ano. Pokračuj."~ */ GOTO 11
  IF ~~ THEN REPLY #12163 /* ~"Jenom mi odpověz ještě na pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12164 /* ~"Raději bych měl jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #12165 /* ~"Bohužel, lépe to vysvětlit nedokážu. Zapamatuj si ale tohle: Místo, na kterém stojíš, není pravá hmota, ale je vytvořeno silou víry po celé Základní materiální sféře a všech Vnějších sférách. Může se změnit vírou. Je měnitelné samotnou mocí mysli."~ */
  IF ~~ THEN REPLY #12166 /* ~"Velmi dobře. Tak mi řekni o sférách."~ */ GOTO 9
  IF ~~ THEN REPLY #12167 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12168 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 11.8
  SAY #12169 /* ~"Existují tři pravidla, která si musíš zapamatoval. Za prvé je to pravidlo Tří: pokud vidíš dvě věci, dívej se po třetí. Druhé pravidlo je nazýváno Střed mnohovesmíru: kosmos je tak obrovský, hledači, že ať už stojíš kdekoli, můžeš to místo považovat za střed vesmíru. Někteří říkají, že středem je Sigil, a mají pravdu - ale stejně tak by měli pravdu, kdyby za střed považovali místo v nekonečné prázdnotě Džeheny. V mnohovesmíru není žádný okraj a tedy ani střed. Třetí pravidlo je jednota Prstence: všechny věci jsou v prstencích - prstence nemají začátek ani konec. Prstenec Vnějších sfér, prstenec formy Sigilu, prstenec elementálních mocí - dokonce i mocnosti myslí v prstencích - kružnice v kružnicích, které jsou v kružnicích."~ */
  IF ~~ THEN REPLY #12170 /* ~"Teď mi řekni o složení sfér."~ */ GOTO 15
  IF ~~ THEN REPLY #12171 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12172 /* ~"Vrátíme se k tomu později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 14.0
  SAY #12173 /* ~Vnější sféry jsou vytvářeny vírou a myšlenkami. Představy ze základní materiální sféry se utváří do forem, vlivem představivosti a akumulace víry. Víra tvoří sféry. Víra, to je moc. Změň víru a můžeš změnit realitu. Stvoření, která se zde rodí - sféraři, jako fiendové a celestialové, nebešťané - jsou doopravdy zrozeni z víry a konceptů smrtelníků. Každý vyjadřuje určitý ideál, představu a čím mocnější je představa, tím mocnější je bytost - takže bytost, která symbolizuje lásku je jedna z nejsilnějších."~ */
  IF ~~ THEN REPLY #12174 /* ~"Pokračuj."~ */ GOTO 16
  IF ~~ THEN REPLY #12175 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12176 /* ~"Probereme si to později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12177 /* ~Z toho důvodu tam žijí vyšší bytosti - bohové, jak jim někteří říkají. Směřuje tam všechna víra a proto jsou tam vyšší bytosti nejsilnější a nejmocnější. Hranice jejich říše jsou manifestací jejich božské esence, které vzniká z víry všech bytostí."~ */
  IF ~~ THEN REPLY #12178 /* ~"Takže složení sféry závisí na víře? Teď mi řekni o Velkém prstenci."~ */ GOTO 17
  IF ~~ THEN REPLY #12179 /* ~"Řekni mi o Vnitřních sférách."~ */ GOTO 35
  IF ~~ THEN REPLY #12180 /* ~"Řekni mi o Základní materiální sféře."~ */ GOTO 39
  IF ~~ THEN REPLY #12181 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12182 /* ~"Prozatím to stačí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.2 16.0
  SAY #12183 /* ~"Nekonečné Vnější sféry se mezi námi, sférickými cestovateli, popisují jako prstenec, který obklopuje sféru nejzazší neutrality - Pláně. Jehlan, na jehož vrcholku leží Sigil začíná v centru Plání. Čím dále cestuješ od jehlanu, tím méně neutrální se sféry stávají, dokud se nerozpadnou na další sféry. Každá z těchto sfér sousedí s Pláněmi a je rozdělena na zákon a chaos, dobro a zlo. Velká Cesta značí hraniční linii mezi Pláněmi a bránovými městy, které vyrůstají kolem bran do těchto sfér. Za bránovými městy leží Zázemí, nezmapovaná území, ve kterých číhá nebezpečí.~ */
  IF ~~ THEN REPLY #12184 /* ~"Pokračuj."~ */ GOTO 20
  IF ~~ THEN REPLY #12185 /* ~"Vraťme se o pár kroků na zpět, k přehledu. Řekni mí něco víc o sférách jako takových.  ~ */ GOTO 9
  IF ~~ THEN REPLY #12186 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12187 /* ~"Žádný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 19.4 21.1 22.1 23.1 24.5 25.3 26.2 27.2 28.1 29.1 30.1 31.1 32.1 33.0 34.1
  SAY #12188 /* ~"O kterých sférách chceš slyšet?"~ */
  IF ~~ THEN REPLY #12189 /* ~"Vyšší Sféry."~ */ GOTO 19
  IF ~~ THEN REPLY #12190 /* ~"Nižší Sféry."~ */ GOTO 24
  IF ~~ THEN REPLY #12191 /* ~"Hraniční Sféry."~ */ GOTO 32
  IF ~~ THEN REPLY #12192 /* ~"Pustiny."~ */ GOTO 34
  IF ~~ THEN REPLY #12193 /* ~"Vraťme se o pár kroků na zpět, k přehledu. Řekni mi něco víc o sférách jako takových.  ~ */ GOTO 9
  IF ~~ THEN REPLY #12194 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12195 /* ~"Žádný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0 22.0 23.0
  SAY #12196 /* ~"V Vyšších sférách jsou sféry neutrality, zákonnosti a chaosu. O kterých chceš vědět více?"~ */
  IF ~~ THEN REPLY #12197 /* ~"Neutrální sféry."~ */ GOTO 21
  IF ~~ THEN REPLY #12198 /* ~"Zákonné sféry."~ */ GOTO 22
  IF ~~ THEN REPLY #12199 /* ~"Chaotické sféry."~ */ GOTO 23
  IF ~~ THEN REPLY #12200 /* ~"Vraťme se o pár kroků na zpět, k přehledu. Řekni mí něco víc o sférách jako takových.  ~ */ GOTO 9
  IF ~~ THEN REPLY #12201 /* ~"Řekni mi více o sférách Velkého Prstence."~ */ GOTO 18
  IF ~~ THEN REPLY #12202 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12203 /* ~"Žádný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #12204 /* ~"Vnější sféry se liší morálkou, ne podstatou. Bude pro tebe nejjednodušší, když si je rozdělíme na tři složky sfér: Vyšší sféry Dobra, Nižší sféry Zla a Hraniční sféry Neutrality. Ty se dále dělí podle Řádu a Chaosu, s Pláněmi ve středu. Které sféry tě zajímají?"~ */
  IF ~~ THEN REPLY #12205 /* ~"Vyšší Sféry."~ */ GOTO 19
  IF ~~ THEN REPLY #12206 /* ~"Nižší Sféry."~ */ GOTO 24
  IF ~~ THEN REPLY #12207 /* ~"Hraniční Sféry."~ */ GOTO 32
  IF ~~ THEN REPLY #12208 /* ~"Pustiny."~ */ GOTO 34
  IF ~~ THEN REPLY #12209 /* ~"Vraťme se o pár kroků na zpět, k přehledu. Řekni mí něco víc o sférách jako takových.  ~ */ GOTO 9
  IF ~~ THEN REPLY #12210 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12211 /* ~"Žádný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #12212 /* ~"Neutrální Vyšší Sféry obsahují Zemi Zvěře, místo neutrality a dobra s lehkým nádechem chaosu, kde za nekonečného poledne vládnou zvířata. Zahrnují Bytopii, dvojí ráj průmyslu a práce, kde se pracuje pro dobro všech, a Elysium, nejsladší sféru dobra a klidu, na kterou jsem kdy při svých cestách narazil. Bohužel, právě teď mi není dost dobře na to, abych si užil některý z posilňujících divů Elysia. O čem chceš slyšet teď?"~ */
  IF ~~ THEN REPLY #12213 /* ~"Řekni mi o zbývajících Vyšších Sférách."~ */ GOTO 19
  IF ~~ THEN REPLY #12214 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12215 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12216 /* ~"O ničem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #12217 /* ~Candrian pokrčil rameny. "Nejsem zrovna ten nejlepší, s kým by sis měl promluvit o sférách řádu," řekl, "protože jejich přirozená struktura a konečné vzorce, které vnucují mě děsí. Vyhýbám se jim, protože si cením více své individuality, než si cením znalostí, které by mi mohly přinést. Zahrnují Arakádii, nejbližší z dobrých sfér k nesmírnému řádu Mechanu, a Mount Celestii, domov archonů, ostrov ve Stříbrném Moři."~ */
  IF ~~ THEN REPLY #12218 /* ~"Řekni mi o zbývajících Vyšších Sférách."~ */ GOTO 19
  IF ~~ THEN REPLY #12219 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12220 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12221 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #12222 /* ~"Tam se cítím doma, i když se většinou vyhýbám Ysgardu - nekonečné bitvy a zkoušky odvahy mezi poletujícími kusy země zrovna nevyhovují mé povaze. Ale Arborea..." Povzdychl si. "Hory jsou vyšší, vzduch stejně jako řeky čistší a zvěř větší než kdekoli jinde. Je to pravý ráj, místo velkých vášní, místo, kde víno stále teče. Až se dám dohromady - až skončíme s Vnějšími sférami, měl by ses mě zeptat na Vnitřní, a já ti popíšu svou cestu - tak poté se vrátím do lesů a mýtin Arborey a na chvíli si tam odpočinu."~ */
  IF ~~ THEN REPLY #12223 /* ~"Řekni mi o zbývajících Vyšších Sférách."~ */ GOTO 19
  IF ~~ THEN REPLY #12224 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12225 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12226 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1 20.1 25.2 26.1 27.1 28.0 29.0 30.0 31.0
  SAY #12227 /* ~"Stejně jako Vyšší sféry se dělí Nižší na zákonné, chaotické a neutrální. Každá z nich se liší v druhu hrůzy a v tom, co tyto hrůzy způsobí náhodnému cestovateli. Všem je lépe se vyhnout. O kterých bys chtěl slyšet více?"~ */
  IF ~~ THEN REPLY #12228 /* ~"Neutrální sféry."~ */ GOTO 25
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #12229 /* ~"Zákonné sféry."~ */ GOTO 28
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #12230 /* ~"Zákonné sféry."~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #12231 /* ~"Chaotické sféry."~ */ GOTO 30
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #12232 /* ~"Chaotické sféry."~ */ GOTO 31
  IF ~~ THEN REPLY #12233 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12234 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12235 /* ~"O žádné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12236 /* ~"Neutrální sféry, eh? Jsou odporné a těžko pochopitelné, a jsou zákeřnější, než by sis dokázal představit. Třeba Džehena: Čtyři dřímající vulkány, vznášející se v nekonečné prázdnotě, každý z nich je nějak *naživu*, a každý z nich chce tvou duši, ať to stojí co to stojí. Je to obydlené yugoloty - podle mého názoru jsou to ti nejhorší fiendové. Sféra konečného zla - alespoň jí tak někteří říkají - je Šedá Pustina, ne-místo, které z tvého těla a ducha vysává barvy, vysává dokonce i tvou apatii - a je to místo těch nejhorších bitev ve válce. Pak je tady Carceri, na chaotické straně..."~ */
  IF ~~ THEN REPLY #12237 /* ~"Řekni mi o válce."~ */ GOTO 26
  IF ~~ THEN REPLY #12238 /* ~"Řekni mi o Carceri."~ */ GOTO 27
  IF ~~ THEN REPLY #12239 /* ~"Řekni mi o zbývajících Nižších Sférách."~ */ GOTO 24
  IF ~~ THEN REPLY #12240 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12241 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12242 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #12243 /* ~"Jo, Válka Krve." Když to jméno vyslovil, jako by ti krev zamrzla v žilách. Illborne si toho nevšiml, je zavalený vlastními vzpomínkami. "Dvě armády fiendů, které se bezdůvodně třískají mezi sebou po celých Nižších Sférách, bezmyšlenkovitě se masakrují ve jménu řádu a chaosu. Pochopitelně to nafukují, ale nakonec je to o nenávisti a hloupém násilí, které nikomu nepomáhá a které ubližuje všem."~ */
  IF ~~ THEN REPLY #12244 /* ~"Řekni mi o Carceri."~ */ GOTO 27
  IF ~~ THEN REPLY #12245 /* ~"Řekni mi o zbývajících Nižších Sférách."~ */ GOTO 24
  IF ~~ THEN REPLY #12246 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12247 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12248 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #12249 /* ~"Ah, Carceri a její jedovaté džungle, kyselinové bažiny, ničivé vody, natažené jako šňůrka perel a omotané kolem sebe..." Odmlčel se a opatrně se na tebe podíval. "Zapamatuj si toto, hledači: Carceri je vězení, domov gehreletů, což je jeden z nejnebezpečnějších druhů fiendů, jaký existuje. Síla vězení je tam silou věznitele, ať už je vězeň silný jak chce. Znič věznitele a tělo může z Rudého Vězení uniknout. Není téměř žádné jiné cesty ven, ne, když se brány před tebou zavírají a sledují, jak odlétáváš do prostoru, obrovského, nekonečného nebezpečného prostoru... Dej si na Carceri pozor, cestovateli, protože jeho pouta jsou mocnější než tvé maso."~ */
  IF ~~ THEN REPLY #12250 /* ~"Řekni mi o válce."~ */ JOURNAL #28750 /* ~Candrian mi pověděl o sféře Carceri, Velké věznici všech sfér. Říkal, že jediná možnost k úniku z věznice je být silnější, než její strážce. Povídal, že pouta sfér přesahují pouhé lidské tělo a smysly.~ */ GOTO 26
  IF ~~ THEN REPLY #12251 /* ~"Řekni mi o zbývajících Nižších Sférách."~ */ JOURNAL #28750 /* ~Candrian mi pověděl o sféře Carceri, Velké věznici všech sfér. Říkal, že jediná možnost k úniku z věznice je být silnější, než její strážce. Povídal, že pouta sfér přesahují pouhé lidské tělo a smysly.~ */ GOTO 24
  IF ~~ THEN REPLY #12252 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ JOURNAL #28750 /* ~Candrian mi pověděl o sféře Carceri, Velké věznici všech sfér. Říkal, že jediná možnost k úniku z věznice je být silnější, než její strážce. Povídal, že pouta sfér přesahují pouhé lidské tělo a smysly.~ */ GOTO 18
  IF ~~ THEN REPLY #12253 /* ~"Mám pár dalších otázek."~ */ JOURNAL #28750 /* ~Candrian mi pověděl o sféře Carceri, Velké věznici všech sfér. Říkal, že jediná možnost k úniku z věznice je být silnější, než její strážce. Povídal, že pouta sfér přesahují pouhé lidské tělo a smysly.~ */ GOTO 5
  IF ~~ THEN REPLY #12254 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ JOURNAL #28750 /* ~Candrian mi pověděl o sféře Carceri, Velké věznici všech sfér. Říkal, že jediná možnost k úniku z věznice je být silnější, než její strážce. Povídal, že pouta sfér přesahují pouhé lidské tělo a smysly.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #12255 /* ~"I když nemám rád řád zákonných Vyšších sfér, alespoň představují tyto sféry dobro. Ale jejich protějšky v Nižších Sférách... Acheron je místo odrážejících se kostek, které bojují v nekonečných bitvách, zaplněné dušemi mrtvých humanoidů. Baator..." mimovolně se otřásl. "Baator je místo, kterému by ses měl vyhnout. Ti fiendové,které jsi támhle zabil, byli tou nejobyčejnější formou hrozivé zkaženosti, zosobněné v těle bezduchého stroje řádu. Vše, co je zlé na byrokracii a řádu pochází z Baatoru a rozšiřuje se jako skvrna v srdcích smrtelníků. I když se tam dají nalézt nějaké znalosti, málokdy mají takovou cenu, aby ti vynahradily znásilnění ducha, které ti ty sféry způsobí."~ */
  IF ~~ THEN REPLY #12256 /* ~"Řekni mi o zbývajících Nižších Sférách."~ */ GOTO 24
  IF ~~ THEN REPLY #12257 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12258 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12259 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.2
  SAY #12260 /* ~"I když nemám rád řád zákonných Vyšších sfér, alespoň představují tyto sféry dobro. Ale jejich protějšky v Nižších Sférách... Acheron je místo odrážejících se kostek, které bojují v nekonečných bitvách, zaplněné dušemi mrtvých humanoidů. Baator..." mimovolně se otřásl. "Baator je místo, kterému by ses měl vyhnout. Ti baatezu, fiendové támhle v rohu, jsou tou nejobyčejnější formou hrozivé zkaženosti, zosobněné v těle bezduchého stroje řádu. Jestli chceš vědět víc, promluv si s nimi, ale zapamatuj si: Vše, co je zlé na byrokracii a řádu pochází z Baatoru a rozšiřuje se jako skvrna v srdcích smrtelníků. I když se tam dají nalézt nějaké znalosti, málokdy mají takovou cenu, aby ti vynahradily znásilnění ducha, které ti ty sféry způsobí."~ */
  IF ~~ THEN REPLY #12261 /* ~"Řekni mi o zbývajících Nižších Sférách."~ */ GOTO 24
  IF ~~ THEN REPLY #12262 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12263 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12264 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.3
  SAY #12265 /* ~"Omlouvám se tvé společnici," kývl směrem k Fall-from-Grace, "ale Abyss není místo, které bys chtěl navštívit. Tam, kde je Baator organizovaný, je Abyss plný chaosu a změn, a žádná s nich není příjemná. Když se přiblíží k něčemu, co bys mohl považovat za normálnost, měl by sis dávat největší pozor. Je to domov tanar'ri, kterým většina říká 'fiendové', a kteří tohle jméno nemají bez důvodu. Jsou, s vaším svolením má paní," a Grace kývla hlavou, "nepředvídatelní a vražední a těch pár, kterým můžeš věřit, těch je méně a méně. Znovu se omlouvám, Lady Grace - ty jsi, jak jsem slyšel, jedna z toho mála."~ */
  IF ~~ THEN REPLY #12266 /* ~"Řekni mi o zbývajících Nižších Sférách."~ */ GOTO 24
  IF ~~ THEN REPLY #12267 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12268 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12269 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4
  SAY #12270 /* ~"Abyss není místo, které bys chtěl navštívit. Tam, kde je Baator organizovaný, je Abyss plný chaosu a změn, a žádná s nich není příjemná. Když se přiblíží k něčemu, co bys mohl považovat za normálnost, měl by sis dávat největší pozor. Je to domov tanar'ri, kterým většina říká 'fiendové', a kteří tohle jméno nemají bez důvodu. Jsou nepředvídatelní a vražední a těch pár, kterým můžeš věřit, těch je méně a méně. Těch pár, které jsem potkal a kterým věřím, si stále nezasloužili mou úplnou důvěru - jsou to stvoření chaosu a zla a pokud mají nasazenou přátelskou tvář, jak můžeš vědět, že to není součástí něčeho většího?"~ */
  IF ~~ THEN REPLY #12271 /* ~"Řekni mi o zbývajících Nižších Sférách."~ */ GOTO 24
  IF ~~ THEN REPLY #12272 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12273 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12274 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 18.2 20.2
  SAY #12275 /* ~"Vím o dvou Hraničních sférách a ty jsou úplně odlišné. Jedna z nich, Mechanus, je esencí řádu, místo, kde víra zapadá do sebe, otáčí se a pohybuje v obrovském stroji, který tvoří celou sféru. Někteří tvrdí, že stroje Mechanu jsou motory, které pohánějí sféry. Druhá Hraniční Sféra je Limbo, svíjející se bahnisko Chaosu, které nemá žádná pravidla. Žádná, a když už si někdo myslí, že si dokáže zařadit její chování, tak se změní - anebo ne. Nedá se to určit. Před nedávnem jsem v Limbu byl..."~ */
  IF ~~ THEN REPLY #12277 /* ~"Povyprávěj mi o své cestě..."~ */ GOTO 33
  IF ~~ THEN REPLY #12278 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12279 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12333 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #12280 /* ~Zavřel oči a vzpomíná. "Měl jsem sebou githzeraiského průvodce, anarcha, který dokázal nelogickou hmotu sféry tvarovat podle svého přání. Bojovali jsme se slaadi, chaotickými stvořeními, která v té sféře žijí. Vypadalo to, že je jich více než obvykle, ale v Limbu nikdy nemůžeš říct, co je 'obvyklé'. Ale odbočuju. Uprostřed toho veškerého chaosu jsme narazili na skupinu obrovských kovových propojených krychlí, jako by to byla nějaká součást hlavolamu. Nebylo to nic, co bychom vytvarovali my, ať už vědomě nebo nevědomě a cestu dovnitř jsme nedokázali najít. Bylo to jako... jako pevnost řádu na hranicích zmatku, semínko řádu, zákona. Lépe to vysvětlit nedokážu."~ */
  IF ~~ THEN REPLY #12281 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ JOURNAL #28751 /* ~Candrian mi pověděl o krabici hádanek v samotném srdci Limba. Je to něco, co se jeví jako zrnko spravedlnosti v bezmezných vodách oceánu chaosu.~ */ GOTO 18
  IF ~~ THEN REPLY #12282 /* ~"Mám pár dalších otázek."~ */ JOURNAL #28751 /* ~Candrian mi pověděl o krabici hádanek v samotném srdci Limba. Je to něco, co se jeví jako zrnko spravedlnosti v bezmezných vodách oceánu chaosu.~ */ GOTO 5
  IF ~~ THEN REPLY #12283 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ JOURNAL #28751 /* ~Candrian mi pověděl o krabici hádanek v samotném srdci Limba. Je to něco, co se jeví jako zrnko spravedlnosti v bezmezných vodách oceánu chaosu.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 18.3 20.3
  SAY #12284 /* ~"Pláně jsou absolutní neutralitou. Asi nejlepší místo na návštěvu ve Vnějších sférách, kromě Sigilu, pokud nechceš, aby ti sféra nutila do srdce svou morálku. V Pláních je vše vyváženo - jak by to mělo být, protože ta sféra sedí přímo uprostřed Vnějších sfér. Jsou tam rozsety světy Mocností a také několik 'bránových měst', která vedou do ostatních Vnějších Sfér. Bránová města většinou odrážejí filozofii sféry, kam vedou jejich brány - a pokud není ve městě udržována rovnováha víry, město sklouzne do blízké sféry. Je to pohroma pro všechny, protože jenom málo lidí ve městě doopravdy *chtějí* změnu. Ale dost o Pláních. Co chceš vědět dál?"~ */
  IF ~~ THEN REPLY #12285 /* ~"Vraťme se o pár kroků na zpět, k přehledu. Řekni mí něco víc o sférách jako takových.  ~ */ GOTO 9
  IF ~~ THEN REPLY #12286 /* ~"Řekni mi více o sférách Velkého Prstence. ~ */ GOTO 18
  IF ~~ THEN REPLY #12287 /* ~"Mám pár dalších otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #12288 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 8.2 9.2 11.4 16.1
  SAY #12289 /* ~Povzdychl si, jako by mu to připomnělo jeho únavu, proniklou až do morku kosti. "Představ si Vnitřní Sféry jako kouli. Na horním pólu je Kladně materiální sféra. Na dolním pólu najdeš Negativně materiální." Odmlčel se. "Připomeň mi, že ti mám říct o Negativní." Jeho oči se obrátily dovnitř, ve vzpomínce na nějakou jeho osobní hrůzu. "Ze vzájemného působení těch dvou vzniká veškeré naléhání pro existenci a ne-existenci, smrt a život, skutečnost a nicotu. Odtamtud vychází základní elementální sféry - jako je Oheň, Voda, Vzduch a Země - paraelemetální sféry, které leží mezi čtyřmi základními elementy a quasi-elementální sféry, vzniklé z interakce mezi elementy a Pozitivní nebo Negativní."~ */
  IF ~~ THEN REPLY #12290 /* ~"Řekni mi o Negativně Materiální Sféře."~ */ GOTO 36
  IF ~~ THEN REPLY #12291 /* ~"Řekni mi o zbytku sfér."~ */ GOTO 9
  IF ~~ THEN REPLY #12292 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12293 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 8.4 9.4 35.0 40.0
  SAY #12294 /* ~Jeho oči se zamlžily. "Vydal jsem se do Vnitřních sfér, abych objevil svou pravou esenci. Udělal jsem chybu, když jsem navštívil Negativně materiální sféru, kde jsem chtěl pochopit touhu mého těla po rozpadu a také cyklus smrti v životě. Myslel jsem si, že jsem se před účinky sféry dostatečně ochránil svou magií, ale mýlil jsem se. Černota nekonečné nicoty tlačila na mou duši a já byl obklíčen stíny, co mi chtěly vysát duši. Načas jsem ztratil cestu a téměř jsem ztratil i svou existenci. Cítil jsem, jak ze mne vyprchává má esence a dokonce i teď jsem napůl pryč. A už nikdy se nevrátím."~ */
  IF ~  Global("Ntoken_Give","GLOBAL",0)
~ THEN REPLY #12295 /* ~"Jak jsi přežil?"~ */ DO ~GiveItemCreate("NToken",Protagonist,20,0,0)
SetGlobal("Ntoken_Give","GLOBAL",1)
~ JOURNAL #28752 /* ~Candrian mi pověděl o svém výletu do Sféry záporné hmoty, místě, ve kterém existence spadává do nicoty. ~ */ GOTO 37
  IF ~  Global("Ntoken_Give","GLOBAL",1)
~ THEN REPLY #12296 /* ~"Jak jsi přežil?"~ */ JOURNAL #28752 /* ~Candrian mi pověděl o svém výletu do Sféry záporné hmoty, místě, ve kterém existence spadává do nicoty. ~ */ GOTO 38
  IF ~~ THEN REPLY #12297 /* ~"Tak mi řekni mi o dalších sférách."~ */ JOURNAL #28752 /* ~Candrian mi pověděl o svém výletu do Sféry záporné hmoty, místě, ve kterém existence spadává do nicoty. ~ */ GOTO 9
  IF ~~ THEN REPLY #12298 /* ~"Mám pár dalších otázek..."~ */ JOURNAL #28752 /* ~Candrian mi pověděl o svém výletu do Sféry záporné hmoty, místě, ve kterém existence spadává do nicoty. ~ */ GOTO 5
  IF ~~ THEN REPLY #12299 /* ~"Aha. Sbohem."~ */ JOURNAL #28752 /* ~Candrian mi pověděl o svém výletu do Sféry záporné hmoty, místě, ve kterém existence spadává do nicoty. ~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #12300 /* ~"Jak jsem přežil?" Trpce se usmál. "S kouskem nicoty, který ode mě držel nic. Nic může zastavit nic, víš, tak jsem v rukou nesl nic, abych se ochránil. Chceš se do negace podívat sám? Cítím z tebe zoufalství, a proto ti dám tenhle dar. Drž jej v ruce, když se na tebe budou tlačit stíny, a on alespoň z části ochrání tebe i tvé přátele, pokud ti budou nablízku. Heh." Podal ti malý černý žeton, který vypadá, jako by neměl vůbec žádný rozměr.~ */
  IF ~~ THEN REPLY #12301 /* ~"Děkuju. Řekni mi o sférách víc."~ */ GOTO 9
  IF ~~ THEN REPLY #12302 /* ~"Mám ještě další otázky."~ */ GOTO 5
  IF ~~ THEN REPLY #12303 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #12304 /* ~"Použil jsem žeton, který jsem ti dal a udržel se na živu. Bez něj bych nepřežil."~ */
  IF ~~ THEN REPLY #12305 /* ~"Řekni mi o sférách víc."~ */ GOTO 9
  IF ~~ THEN REPLY #12306 /* ~"Mám ještě další otázky."~ */ GOTO 5
  IF ~~ THEN REPLY #12307 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 8.3 9.3 11.5 16.2
  SAY #12308 /* ~"Jestli chceš vědět víc a Základní, tak ji navštiv. Spousty světů této sféry mají nekonečnou variabilitu, stejně jako sféry, ale já to nedokážu vyjádřit jedinou myšlenkou. Bude ti muset stačit, když řeknu, že je počátkem Vnějších Sfér, dítě Vnitřních Sfér a že ve svých hranicích obsahuje nekonečný potenciál."~ */
  IF ~~ THEN REPLY #12309 /* ~"Řekni mi o sférách víc."~ */ GOTO 9
  IF ~~ THEN REPLY #12310 /* ~"Mám ještě další otázky."~ */ GOTO 5
  IF ~~ THEN REPLY #12311 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 5.2
  SAY #12312 /* ~"Já? Právě jsem se vrátil z negace a snažím se obnovit zpět svou esenci, než ze mě unikne úplně."~ */
  IF ~~ THEN REPLY #12313 /* ~"Negace? Co tím myslíš?"~ */ GOTO 36
  IF ~~ THEN REPLY #12314 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12315 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.3
  SAY #12316 /* ~"Pokud se kosmos neposunul, nebo nás Paní neuvrhla do Bludiště, řekl bych, že jsme u Doutnajícího nebožtíka."~ */
  IF ~~ THEN REPLY #12317 /* ~"Co mi můžeš říct o místních návštěvnících?"~ */ GOTO 42
  IF ~~ THEN REPLY #12318 /* ~"Bludiště? Co tím myslíš?"~ */ GOTO 43
  IF ~~ THEN REPLY #12319 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12320 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #12321 /* ~"Starám se o vlastní věci, hledači, protože jsem strávil příliš času daleko odsud. Promluv si s barmanem, pokud chceš zjistit více o jeho zákaznících."~ */
  IF ~~ THEN REPLY #12322 /* ~"Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12323 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #12324 /* ~"Ano, Bludiště, kam Paní bolesti uvrhává ty, kdož se jí znelíbili." Když vyslovil jméno Paní, opsal si před srdcem rukou půlkruh. "Pokud chceš vědět více o Paní a o městě, najdi si turistického průvodce, nebo někoho takového."~ */
  IF ~~ THEN REPLY #12325 /* ~"Dobrá tedy. Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12326 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.4
  SAY #12327 /* ~"V poslední době jsem, kromě vlastního, žádné deníky neviděl -  a ten můj se rozpadl na prach. Je mi líto."~ */
  IF ~~ THEN REPLY #12328 /* ~"Na tom nezáleží. Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12329 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 5.5
  SAY #12330 /* ~"Z Pharoda se stal Sběrač? Jak je to dlouho? Když jsem se vydal pryč naposled, byl to dotěrný mladík z jedné z horních čtvrtí. Heh. Čas MĚNÍ lidi, alespoň některé. Ne, hledačí, už Pharoda neznám, na to jsem si ochotný vsadit."~ */
  IF ~~ THEN REPLY #12331 /* ~'Dobrá tedy. Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12332 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END
