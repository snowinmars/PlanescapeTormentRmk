// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEBB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DEBB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",0)
Global("Current_Area","GLOBAL",402)
~ THEN BEGIN 0 // from:
  SAY #3011 /* ~Vidíš trochu nahrbeného starého muže s dlouhou šedou bradou a lví hřívou šedých vlasů. Má na sobě velké chrániče ramen a vedle leží jeho helma. Kouří dýmku a u pasu mu visí velký váček zjevně plný tabáku. Vypadá docela silně, ale už se začal trochu obalovat sádlem a podle hlasitého chrčivého dechu bys tipoval, že má nějaké dýchací problémy. "No, *ty* seš teda zajímavej na pohled, chlapče! Nikdy sem neviděl na jednom chlápkovi tolik jizev - vypadá to, jako bys na sobě měl jizvovej oblek! Kde jsi byl -- dostal ses do mlýnku na maso?!" Zasmál se. "Jenom si s tebe dělám srandu, kluku, nemyslím tím žádnou urážku a doufám žes to jako urážku ani nevzal. Jsem Ebb." Napřáhl ruku.~ */
  IF ~~ THEN REPLY #3012 /* ~"Zdravím, Ebbe."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11001 /* ~Odmítnout potřepat.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11002 /* ~Jeho stisk je pevný. "A nyní se tímto co nejsrdečněji omlouvám za mé neslušné žerty, hochu. Doufám, že nejsi nazlobený; mohu ti koupit džbánek nebo dva něčeho co zaručeně uhladí všechna tvá rozčepýřená pírka?" ~ */
  IF ~~ THEN REPLY #11003 /* ~"Proč ne?"~ */ GOTO 3
  IF ~~ THEN REPLY #11004 /* ~"Ne." ~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #11005 /* ~Stáhl ruku zpět. "To je fér, to je fér. Proto se omlouvám za své nespravedlivé žertování, chlapče. Doufám, že jsem tě nerozzlobil. Můžu ti koupit džbánek nebo dva něčeho, co ti uhladí načepýřená pírka?"~ */
  IF ~~ THEN REPLY #11006 /* ~"Proč ne?"~ */ GOTO 3
  IF ~~ THEN REPLY #11007 /* ~"Ne."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #11008 /* ~"Tak je to správný, chlapče. Vydrž chvíli." Zvedl se na nohy a zamířil k baru. Po chvíli se vrátil se dvěma korbely. "Tady máš, chlapče. Na zdraví!" Bohatýrsky si přihnul, strčil si do pusy fajfku, zadýmal a zeptal se: "Co pro tebe může starej Ebb v tenhle krásnej Sigilskej den udělat?"~ */
  IF ~~ THEN REPLY #11009 /* ~"Mám pár otázek ohledně tohohle místa."~ */ GOTO 5
  IF ~~ THEN REPLY #11010 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #11011 /* ~"To je fér, to je fér." Nasál kouř ze své dýmky a po chvíli se zeptal: "Co pro tebe může starej Ebb v tenhle krásnej Sigilskej den udělat?"~ */
  IF ~~ THEN REPLY #11012 /* ~"Mám pár otázek ohledně tohohle místa."~ */ GOTO 5
  IF ~~ THEN REPLY #11013 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #11014 /* ~"Oh, no to mi došlo, když jsem se na tebe poprvé kouknul. Tím myslím, že nevypadáš, jako bys byl odněkud zblízka, chlapče... vypadáš trochu mimo na místního domorodce!" Ebb se zasmál a znovu se napil. "Tak s čím ti můžu pomoct, chlapče? Potřebuješ vědět, kde co je?" Ebb zamrkal.~ */
  IF ~~ THEN REPLY #11015 /* ~"Kdo jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #11016 /* ~"Co děláš?"~ */ GOTO 18
  IF ~~ THEN REPLY #11017 /* ~"Co je tohle za místo?"~ */ GOTO 19
  IF ~~ THEN REPLY #11018 /* ~"Ano. Řekni mi něco o tomhle městě a jak to tady chodí."~ */ GOTO 33
  IF ~~ THEN REPLY #11019 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 25.2
  SAY #11020 /* ~"Ebb Kolenovrz, Třetí Stupeň Harmonia, momentálně v důchodu a fungující jako průvodce a informátor. V posledních dvou nebo třech desetiletích mi to moc chodit nechce a tak většinou sedím tady." Zašklebil se. "Tak, chlapče, kdopak jsi ty a jaký problém máš?"~ */
  IF ~~ THEN REPLY #11021 /* ~"Třetí stupeň Harmonia?"~ */ GOTO 7
  IF ~~ THEN REPLY #11022 /* ~"Co je to informátor?"~ */ GOTO 13
  IF ~~ THEN REPLY #11023 /* ~"Proč si myslíš, že mám nějaký problém?"~ */ GOTO 17
  IF ~~ THEN REPLY #11024 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #11025 /* ~Ebb pyšně zadýmal z fajfky a pak nasadil rádoby vážný výraz. "Jo, Třetí stupeň Harmonia..." Trochu se uvolnil. "I když jsem nebyl ve službě pár desetiletí. Posunovat papíry, to pro mě po všech těch bitkách a rvačkách nebylo a tak jsem se rozhodl, že zůstanu tady v Úlu a budu pomáhat, jak to jenom jde. A ty vypadáš jako někdo, kdo potřebuje pomocnou ruku... máš nějaký problém, chlapče?"~ */
  IF ~~ THEN REPLY #11026 /* ~"V jakých bitkách a rvačkách jsi byl?"~ */ GOTO 8
  IF ~~ THEN REPLY #11027 /* ~"Pár problémů mám."~ */ GOTO 11
  IF ~~ THEN REPLY #11028 /* ~"Mám pár problémů. Probral jsem se v Márnici a vypadá to, že jsem zapomněl, kdo vlastně jsem."~ */ GOTO 12
  IF ~~ THEN REPLY #11029 /* ~"To není tvoje věc, vážně. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11030 /* ~"Po tom ti nic není. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11031 /* ~Ebb zakoulel očima. "Víc, než si dokážu pamatovat, chlapče! No... *skoro* víc, než si dokážu zapamatovat. Měl jsem jedno dlouhý, až moc dlouhý tažení ve Válce Krve, jednu pekelnou bitvu ve Válce Lží na Terrasu, až moc roků ve Válce Černých staletí..." Ebb odpočítává jednotlivé války na prstech a tiše si mumlá. "...eh, pak to byla Válka Tří Sfér, a spousta dalších. Dokonce jsem se zúčastnil Války Osvobození Harmonia. No a ke konci jsem byl v Sigilský hlídce... a někdo by klidně mohl tvrdit, že to byly ty nejnebezpečnější roky!!!" Hlasitě se zasmál. Když se zmínil o Válce Krve, měl jsi pocit, jako by ti do těla někdo vrazil ledový nůž a zakroutil s ním v ráně.~ */
  IF ~~ THEN REPLY #11032 /* ~"Řekni mi víc o té Válce Krve."~ */ GOTO 9
  IF ~~ THEN REPLY #11033 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11034 /* ~"Díky, Ebbe.  Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11035 /* ~Ebb si povzdychl. Nevšiml si tvé reakce. "Jo... Válka Krve. Nejhorší krevní msta na týhle straně mnohovesmíru. Banda vzteklých fiendů na jedný straně, hromada krvežíznivejch fiendů na druhé. Je to válka, kterou začalo samotné stvoření a už od tý doby se mlátí a mlátí."~ */
  IF ~~ THEN REPLY #11036 /* ~"Takže dvě bandy fiendů bojujících mezi sebou?"~ */ GOTO 10
  IF ~~ THEN REPLY #11037 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11038 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #11039 /* ~"Jo. Tanar'ri, zlomyslní zabijáci, který se staraj akorát o sebe, a válečný stroje baatezu, co chtěj řád a pořádek podle pekelnejch zákonů. Celá ta mela se občas přenese do dalších sfér a díky tomu je takový místo nejhorší flek pro život v celým mnohovesmíru."~ */
  IF ~~ THEN REPLY #11040 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11041 /* ~"Aha. Sbohem, Ebbe."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 17.1
  SAY #11042 /* ~"Oh, no, doufám, že to nebylo moc vážný, ale... ale nechám to na tobě, co si o tom myslíš, až na to budeš mít náladu. Nechci na to tlačit, ne... to by tě dostalo do více problémů, než cokoli jinýho."~ */
  IF ~~ THEN REPLY #11043 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11044 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2 17.2
  SAY #11045 /* ~"Eh?" Ebb zamrkal a pak se zamračil. "Cos to povídal, chlapče? Že ses probral v Márnici..." Ebb si tě pozorněji prohlíží. "No, teda. Nespletli si tě se zdechlinou kvůlivá těm tvejm jizvám?" Ebb se zašklebil. "No, já se jim nedivím..." Potáhl z dýmky. "Ti Spalováci..." Zarazil se. "Teda, ti *Spalovači*... Spalováci, to je škaredý označení pro ty bledý chlápky a já proti nim nic nemám... ale někdy maj v sobě vnímavost a přátelství náhrobního kamene, co? Ne, chlapče, nedá se říct, že se jim divím. ¨Fakt vypadáš dost jako mrtvej."~ */
  IF ~~ THEN REPLY #11046 /* ~"To už jsem slyšel. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11047 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11048 /* ~"No, to je dobře, že se ptáš, protože teď jsi mi řekl, že jsi zelenáč a informátor je pro Bezradnýho důležitá věc, jinak bys na ulici dlouho nepřežil. A já jsem takovej člověk, jakýho potřebuješ." Napil se. "Je to přátelskej chlápek, kterej zná město, ukáže ti, co potřebuješ, kde co je, co je co a tak. Průvodce. Prostě takovej průvodce. Akorát, že já ve svým věku z židle moc slízat nemůžu takže většinou akorát říkám, kde co je a co je tady v tomhle městě zajímavýho k vidění. A nestojí tě to ani halíř."~ */
  IF ~~ THEN REPLY #11049 /* ~"Proč je to zadarmo?"~ */ GOTO 14
  IF ~~ THEN REPLY #11050 /* ~"Jak jsi starý?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #11051 /* ~"Průvodce, kterej se nemůže hejbat nemá moc velkou cenu, chlapče. U Mocností, bylo by to nespravedlivý, chtít prachy jen za hromádku keců!"~ */
  IF ~~ THEN REPLY #11052 /* ~"Jak jsi starý?"~ */ GOTO 15
  IF ~~ THEN REPLY #11053 /* ~"Tak to mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11054 /* ~"To je pravda. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #11055 /* ~"Dost starej, abych toho dost věděl, a moc starej, abych chodil!" Zadýmal z fajfky. "Řekněme, že svý nejlepší roky už mám za sebou a že už je akorát pár věcí, co držej todle starý srdce v práci."~ */
  IF ~~ THEN REPLY #11056 /* ~"Jaké věci?"~ */ GOTO 16
  IF ~~ THEN REPLY #11057 /* ~"Hm. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11058 /* ~"Hm. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #11059 /* ~"No, chlapče, nechci nějak nabourávat konverzaci, ale doufám, že se sem k Doutnajícímu nebožtíkovi dostane nějakej svatej chlápek a vyzpovídá mě z nějakejch mejch starejch hříchů, ať můžu z týhle sféry vypadnout na dobro."~ */
  IF ~~ THEN REPLY #11060 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11061 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.2
  SAY #11062 /* ~"Chlapče, nikdo nemá tolik jizev jako ty, aby nebyl v nějakým průšvihu, ať už kvůlivá sobě nebo jinejm!" Ebb se na tebe káravě dívá. "Za co starýho Ebba máš? Myslíš si, že jsem slepej? Ha! Možná vypadám trochu seschle, ale ještě pořád mám oči jako orel a nějakej rozum v lebce! Tak, co ti dejchá na paty, že máš takovej problém? Bych ti možná moh pomoct?"~ */
  IF ~~ THEN REPLY #11063 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11064 /* ~"Pár problémů mám. To je všechno."~ */ GOTO 11
  IF ~~ THEN REPLY #11065 /* ~"Mám pár problémů. Probral jsem se v Márnici a vypadá to, že jsem zapomněl, kdo vlastně jsem."~ */ GOTO 12
  IF ~~ THEN REPLY #11066 /* ~"Asi ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.1
  SAY #11067 /* ~"Co dělám? Zvláštní otázka, chlapče. Jak ti asi připadá to, co dělám... Trávím svůj čas v příjemným prostředí, popíjím pivo, pokuřuju tabák a snažím se bejt v zajímavý společnosti. Skvělej způsob, jak trávit den, aspoň já si to myslím! Eh? Eh?" Ebb tě poplácal po rameni a zasmál se."~ */
  IF ~~ THEN REPLY #11068 /* ~"'Eh', určitě. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11069 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2 25.3
  SAY #11070 /* ~"Seš u Doutnajícího nebožtíka, chlapče. Není to tak hezký místo jako jiný, ale má svůj určitej půvab."~ */
  IF ~~ THEN REPLY #11071 /* ~"Řekni mi něco o místních štamgastech."~ */ GOTO 20
  IF ~~ THEN REPLY #11072 /* ~"Kdo je ta čoudící mrtvola támhle?"~ */ GOTO 21
  IF ~~ THEN REPLY #11073 /* ~"Co tu mají dobrého k pití?"~ */ GOTO 22
  IF ~~ THEN REPLY #11074 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11075 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 22.0
  SAY #11076 /* ~"No, máš tady O, kerej tvrdí že je písmeno a ne chlap, ňáký Nemilosrdný, kerý čekaj na kriminálníky, párek abishai na opušťáku z Války Krve, githzeraie, kerej si tě celou dobu prohlíží - ale to není nic nenormálního, oni sou takový, Alais támhle dole a Bezradnýho kluka. No a pokud si chceš pokecat o Sférách, hoď řeč támhle s Candriánem Špatnorodem - ví toho mnohem víc než já."~ */
  IF ~~ THEN REPLY #11077 /* ~"Kdo je ta čoudící mrtvola támhle?"~ */ GOTO 21
  IF ~~ THEN REPLY #11078 /* ~"Co tu mají dobrého k pití?"~ */ GOTO 22
  IF ~~ THEN REPLY #11079 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11080 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 22.1
  SAY #11081 /* ~"On? Kdepak, chlapče, to není mrtvola. Pokud víme, tak je starej Ignus uvnitř furt naživu a vesele se peče. Aspoň co my víme." Ebb se poškrábal na nose. "Někdy příšerně smrdí. Eštěže mám fajfku, tak se mi ten smrad do nosu nedostane." Zašklebil se.~ */
  IF ~~ THEN REPLY #11082 /* ~"Jak se tam dostal?"~ */ GOTO 23
  IF ~~ THEN REPLY #11083 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 19.2 20.1
  SAY #11084 /* ~"No, nedá se zrovna říct, že bych se nějakýmu pití vyhýbal, ale jsou drinky, který mám radši a takový, který už zase moc ne. Jedna z mejch oblíbenejch věciček jsou Arboreánský ohnivý semena... prskneš si je do pusy, přidáš trochu luftu, trochu slin a trochu alkoholu a můžeš dejchat oheň, když bude třeba. Aspoň takovej to je pocit."~ */
  IF ~~ THEN REPLY #11085 /* ~"Řekni mi něco o místních štamgastech."~ */ GOTO 20
  IF ~~ THEN REPLY #11086 /* ~"Kdo je ta čoudící mrtvola támhle?"~ */ GOTO 21
  IF ~~ THEN REPLY #11087 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11088 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #11089 /* ~Ebb zadýmal a uvažuje, jak to okomentovat. "No víš, chlapče, Ignus měl kupu problémů a taky slušnou magii. No a tydle dvě věci se většinou moc dobře nemíchaj, aspoň podle mýho názoru, esli mi rozumíš. On totiž rád..." Ebb zadýmal. "... no, on rád pálil věci. No a pak začal zapalovat místa a lidi a nadělal spoustu problémů."~ */
  IF ~~ THEN REPLY #11090 /* ~"A?"~ */ GOTO 24
  IF ~~ THEN REPLY #11091 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11092 /* ~"Smůla. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11093 /* ~"No, většina z toho probíhala tady v Úlu a já jsem první, kdo uzná, že Úl není zrovna místo, kam chodí Harmonium udržovat pořádek podle zákonů Sigilu..." Ebb se tváří trochu zahanbeně. "Naše chyba, páč je to místo, kde bychom bejt měli. No a tak nějak tady proběhla taková pouliční spravedlnost, esli mi rozumíš. Zorganizovali to kouzelníci - banda co čte z čajovejch lístků, pokoutní čárovači, nějaký ty čarodějky a tak. Dali se dohromady a udělali kouzlo, který v sobě má docela poetickou spravedlnost." Ebb ukázal fajfkou na doutnající figuru. "No a tak tam teď sedí a hoří. Je pořád živej. Myslím, že s tím nepočítali."~ */
  IF ~~ THEN REPLY #11094 /* ~"Hm. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11095 /* ~"Zajímavé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 7.3 8.1 9.1 10.0 11.0 12.0 14.1 15.1 16.0 17.0 18.0 19.3 20.2 21.1 22.2 23.1 24.0 26.3 29.1 30.0 31.0 32.1 33.0 34.0 35.3 36.3 37.3 38.1 39.2 40.1 41.3 42.2 44.1 45.1 46.2 47.0 48.0
  SAY #11096 /* ~"Jo, chlapče? Co bys chtěl vědět?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11097 /* ~"Znáš někoho jménem Pharod?"~ */ GOTO 26
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11098 /* ~"Ztratil se mi deník."~ */ GOTO 32
  IF ~~ THEN REPLY #11099 /* ~"Kdo jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #11100 /* ~"Co je tohle za místo?"~ */ GOTO 19
  IF ~~ THEN REPLY #11101 /* ~"Pověz mi o Sigilu a jak to v něm chodí."~ */ GOTO 33
  IF ~~ THEN REPLY #11102 /* ~"Jaká další místa bys mi doporučil?"~ */ GOTO 47
  IF ~~ THEN REPLY #11103 /* ~"Řekl bych, že nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11104 /* ~"Pharod?" Ebb se zamračil a vytáhl si fajfku z pusy. "A teď mi řekni, chlapče, co chceš po takovým parchantovi, jako je Pharod?"~ */
  IF ~~ THEN REPLY #11105 /* ~"Myslím, že jsem ho dřív znal."~ */ GOTO 27
  IF ~~ THEN REPLY #11106 /* ~"Myslím, že mi něco ukradl."~ */ GOTO 28
  IF ~~ THEN REPLY #11107 /* ~"Po tom ti nic není. Znáš ho?"~ */ GOTO 29
  IF ~~ THEN REPLY #11108 /* ~"Nic. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11109 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11110 /* ~"Jo, no tak to je smůla. Možná je lepší, že jsi zapomněl." Ebb si strčil fajfku do pusy a silně zadýmal.~ */
  IF ~~ THEN REPLY #11111 /* ~"Co o něm víš?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #11112 /* ~"No, to se nedivím, chlapče." Ebb sevřel dýmku v zubech. "Všechno musíš před tím hnusným malým hadem přivazovat. "Moh by bejt klidně jeden z Osudovejch, páč všechno, co není zamčený skončí v jeho kapse. Podáš mu prst a on ti vezme celou ruku."~ */
  IF ~~ THEN REPLY #11113 /* ~"Co o něm víš?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.0 28.0 32.0
  SAY #11114 /* ~"Nevím o Pharodovi úplně všechno, co se dá, ale něco o jeho tajemstvích vím. Pokud ho chceš najít a přibít ho na zeď, tak bych ti mohl pár věcí prásknout." Odmlčel se a mohutně zadýmal. "Pharod si vyhrabal hnízdo na Hadrníkově náměstí ne zas tak dávno. Pobral bandu sběračů, udělal z nich gang a je jich tolik, že by ho někdo moh dokonce považovat za společenstvo."~ */
  IF ~~ THEN REPLY #11115 /* ~"Kde ho najdu?"~ */ GOTO 30
  IF ~~ THEN REPLY #11116 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11117 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11118 /* ~"No, chlapče, jestli hledáš Pharoda, což je podle mě pěkná blbost, budeš muset jít na Hadrníkovo náměstí. Povídá se, že Pharod tam někde má svůj bejvák. Dokonce ani starej chlápek jako já, co to tady zná, neví přesně kde. Řek bych, že Pharod chce, aby tajemství jeho místa zůstalo tajemství. Takže pokud deš po Pharodovi, jdi na Hadrníkovo náměstí a zkus to vypáčit z nějakýho místního. Ale dej si bacha, páč jich je tam docela dost takovejch, co by ti na prvním rande nejradši prohnali kus rezavý ocele ledvinama."~ */
  IF ~~ THEN REPLY #11120 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11121 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #11122 /* ~NULOVÝ MÓD - NOTIFY COLIN IF YOU HIT~ */
  IF ~~ THEN REPLY #11123 /* ~"Dobrá tedy. Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11124 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY #11125 /* ~"Ztratils deník? Bylo v tom deníku něco víc než pár stránek s písmenkama? Protože jinak si nedokážu představit moc lidí, který by se otravovali s písmenkama, pokud by to nebylo fakt horký. Knížky tady v okolí moc oblíbený nejsou. Nevím, kde bys mohl najít něco takovýho..." Ebb zadýmal a pak najednou luskl prsty. "Ale víš co, chlapče? Pokud tě Pharod zvednul z ulice Sigilu a dal Spalovákům, moh by o tom něco málo vědět, kam se tvý věci ztratily... a já bych řek, že k němu domů. Mrtvýmu chlapovi málokdy zůstane nějakej majetek, pokud ho najdou Sběrači."~ */
  IF ~~ THEN REPLY #11126 /* ~"Řekni mi o Pharodovi."~ */ GOTO 29
  IF ~~ THEN REPLY #11127 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11128 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 5.3 25.4
  SAY #11129 /* ~Ebb se hlasitě zasmál. "Myslíš ve velkým co? Jestli chceš vědět, co je za městem, promluv si támhle s Candrianem Illbornem - je to cestovatel. A co týče zbytku... můžu ti povyprávět o Paní Bolesti, o dabusech, klíčích a portálech, o tom, jak tady měříme čas, jak je město rozdělený... Co bys rád věděl?"~ */
  IF ~~ THEN REPLY #11130 /* ~"Vlastně bych chtěl vědět něco úplně jiného."~ */ GOTO 25
  IF ~~ THEN REPLY #11131 /* ~"Pověz mi o Paní."~ */ GOTO 35
  IF ~~ THEN REPLY #11132 /* ~"Pověz mi o dabusech."~ */ GOTO 39
  IF ~~ THEN REPLY #11133 /* ~"Pověz mi o Sigilském čase."~ */ GOTO 40
  IF ~~ THEN REPLY #11134 /* ~"Pověz mi o tom, jak je město rozdělené."~ */ GOTO 41
  IF ~~ THEN REPLY #11135 /* ~"Pověz mi o klíčích a portálech."~ */ GOTO 43
  IF ~~ THEN REPLY #11136 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2 36.2 37.2 38.0 39.1 40.0 41.2 42.1 44.0 45.0 46.1
  SAY #11137 /* ~"Co ještě chceš vědět o Kleci?"~ */
  IF ~~ THEN REPLY #11660 /* ~"Odpověz mi pravdivě na mé další otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11661 /* ~"Řekni mi o Paní."~ */ GOTO 35
  IF ~~ THEN REPLY #11662 /* ~"Řekni mi o dabusovi."~ */ GOTO 39
  IF ~~ THEN REPLY #11663 /* ~"Řekni mi o sigilském čase."~ */ GOTO 40
  IF ~~ THEN REPLY #11664 /* ~"Řekni mi o rozvržení města."~ */ GOTO 41
  IF ~~ THEN REPLY #11665 /* ~"Řekni mi o klíčích a portálech."~ */ GOTO 43
  IF ~~ THEN REPLY #11666 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.1 39.0
  SAY #11138 /* ~"No, málokdo o ní něco ví, chlapče a řekl bych, že dokonce i ti, co vědí víc než trochu vědí málo. Je to záhada a, i kdybys na ni náhodou narazil... Mocnosti chraňte... je tichá a smrtící. Není zlá, alespoň mě to tak nepřipadá, ale drží tajemství kolem sebe a Sigilu pěkně tvrdě. Nikdo na ně zatím nepřišel. Pokud ano, skončil v bludišti."~ */
  IF ~~ THEN REPLY #11139 /* ~"Pokračuj."~ */ GOTO 36
  IF ~~ THEN REPLY #11140 /* ~"Bludiště? Co tím myslíš?"~ */ GOTO 38
  IF ~~ THEN REPLY #11141 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11142 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11143 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11144 /* ~"Je pravděpodobný, že na ni nenarazíš, pokud neuděláš něco fakt zlýho. Pobiješ spoustu lidí, zabiješ dabuse, pokusíš se přebrat jí její vládu, budeš ji uctívat... tohle nenávidí, aspoň jsme na to přišli. Anebo pokud budeš překážet v práci dabusům... Když budeš mít štěstí, příjdou si pro tebe Nemilosrdní, ale pokud přijde ona osobně, budeš mrtvej, jakmile na tebe padne její stín."~ */
  IF ~~ THEN REPLY #11145 /* ~"Co jsi to říkal o bludišti?"~ */ GOTO 38
  IF ~~ THEN REPLY #11146 /* ~"Prosím, pokračuj."~ */ GOTO 37
  IF ~~ THEN REPLY #11147 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11148 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11149 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #11150 /* ~"Paní může v Sigilu skoro cokoli, chlapče. Může to zvětšit, zmenšit, udělat nový portály, zapečetit ty starý, zabránit, aby na ulicích řádila Válka Krve, zabránit lidem v teleportování do města, drží Mocnosti venku."~ */
  IF ~~ THEN REPLY #11151 /* ~"Co jsi to myslel tím bludištěm?"~ */ GOTO 38
  IF ~~ THEN REPLY #11152 /* ~"Co jsou to mocnosti?"~ */ GOTO 46
  IF ~~ THEN REPLY #11153 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11154 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11155 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.1 36.0 37.0 46.0
  SAY #11156 /* ~"Jó. Někdy prostě lidi zavře do místa, kde nemůžou nic napáchat. Paní vezme kus Sigilu a udělá z něj malou dimenzionální kapsu, bludiště. A tam strká ty, co jí zkříží cestu a nechá je tam shnít." Ebb nasál dým z fajfky a s potěšením ho vyfouknul. "No... a jak jednou připoutáš její pozornost, skončíš v bludišti, chlapče. Nakonec tě dostane, ať se budeš snažit jak chceš a vyhejbat se jí co to de. Pudeš po ulici, nebo projdeš portálem nebo třeba zahneš na ulici, kterou si šel už tisíckrát a najednou seš někde, kde to nepoznáváš. Z bludiště se ale dá utéct. Z každýho je nějaká cesta ven... portál, který tam Paní nechala. Jenom musíš přijít na to, kde je a jak ho použít."~ */
  IF ~~ THEN REPLY #11157 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11158 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11159 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.2 34.2
  SAY #11160 /* ~"Jo, ti srandovní chlápkové, co poletujou vzduchem a mluví v symbolech?" Ebb se zasmál. "Slušná práce, ne? Dabusové jsou něco jako správci a dělníci Paní, dělají přesně to, co ona chce, udržujou Sigil v chodu, opravujou zdi, strhávají starý budovy, budujou nový, otvíraj portály, zavíraj starý a tak dál. Jsou to neutrálové. Neměl bys do nějakýho rejt a už vůbec se nepokoušej nějakého zabít. To se na tebe Paní hodně rychle naštve a navštíví tě."~ */
  IF ~~ THEN REPLY #11161 /* ~"Pověz mi o Paní."~ */ GOTO 35
  IF ~~ THEN REPLY #11162 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11163 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11164 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 33.3 34.3
  SAY #11165 /* ~"Čas se v Sigilu měří podle jasnosti oblohy. Hele, nemáme slunce nebo měsíc, jako většina světů. Máme akorát tu mlhu, která pravidelně tmavne a zesvětluje. Většina lidí tomu říká půlnoc, my tomu říkáme protivrchol. To čemu oni říkaj poledne tomu my říkáme vrchol. Myslíme tím nejvyšší a nejnižší úroveň světla. Takže když někdo řekne něco jako pět hodin po vrcholku, tak tohleto myslí."~ */
  IF ~~ THEN REPLY #11166 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11167 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11168 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 33.4 34.4
  SAY #11169 /* ~"Fjů. Počkej, namočím si jazyk." Zhluboka se napil ze svého korbele. "Město se vznáší na nekonečně vysokým jehlanu - Jehlanu. Leží na straně jako zahozený kolo od vozu, ale nejsou žádný příčky, který by ho držely u jehlanu. Je rozdělený do šesti čtvrtí, každý má vlastní význam. Teďka seš v Úlu. Myslím, že Úl je flek, kam se odkládá špína ze zbytku města!" Zasmál se. "Společenstva - filozofický kluby nebo gangy, co se ti líbí víc - si rozdělily mezi sebou zbytek města."~ */
  IF ~~ THEN REPLY #11170 /* ~"Ty jsi byl v nějakém společenstvu?"~ */ GOTO 45
  IF ~~ THEN REPLY #11171 /* ~"Pokračuj."~ */ GOTO 42
  IF ~~ THEN REPLY #11172 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11173 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11174 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #11175 /* ~"Městu se říká křižovatka sfér, Město Dveří či Klec. Vedou odtud portály do všech světů, aspoň se to říká, a chodí sem kdekdo z celýho mnohovesmíru kšeftovat, žít nebo přejít zase jinam. To je jenom rychlá a krátká verze, chlapče. Budeš si muset tohle místo zažít na vlastní kůži."~ */
  IF ~~ THEN REPLY #11176 /* ~"Říkal jsi něco o portálech?"~ */ GOTO 43
  IF ~~ THEN REPLY #11177 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11178 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11179 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 33.5 34.5 42.0
  SAY #11180 /* ~"Sigilu se říká Město Dveří  z dobrýho důvodu, chlapče... všude jsou portály. Portály jsou... no, jako dveře, které vedou přes celý mnohovesmír, jenom nevypadají jako dveře. Může to být jakýkoli ohraničený místo... okno, dveře, díra, rám obrazu, skříň... cokoli z toho může být portál, který jenom čeká na správný klíč, který ho otevře a přenese tě někam do mnohovesmíru. No a klíče..."~ */
  IF ~~ THEN REPLY #11181 /* ~"Pokračuj."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11182 /* ~"Jo, každej portál má nějakej klíč, kterej potřebuješ. I když portál může bejt jakýkoli ohraničený místo, klíče jsou různý... Může to bejt cokoli od písničky, kterou si musíš zapískat, přes šílený taneček, správnou náladu, kousek místa, kam chceš jít po rukách... a tak dál. Jako mladej jsem jednou přesvědčil jednu holku, že když na jednom místě políbí chlapa.. otevře se portál do Arkádie. A měl jsem pravdu, byli jsme tam několikrát. Spoustu portálů nejspíš nikdy nikdo neobjevil. Některý můžeš odhalit jenom tak, že se budeš vyptávat lidí a shánět ten správnej klíč. Najít tajemství portálu je to nejhorší. Ale varuju tě, chlapče. Prolízání portálů není zrovna bezpečný... stejně jako procházky po Sigilu, když se setmí. Radši se drž hlavních cest na otevřeným prostranství a dávej si na sebe bacha."~ */
  IF ~~ THEN REPLY #11183 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11184 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11185 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.0
  SAY #11186 /* ~Ebb zvedl ruku, aby tě zastavil a zasmál se. "Oh, ne, vydrž, chlapče. Ne že jsem byl členem společenstva... říká se  a je to pravda, že jakmile jednou patříš k Harmoniu, patříš k němu celej život. Jsme chlápci, co se snažej udržovat Sigil v pohodě. Žádný velký bitky, držíme město v klidu a míru, chlapče.  A většinou odvádíme docela dobrou práci."~ */
  IF ~~ THEN REPLY #11187 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11188 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11189 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.1
  SAY #11190 /* ~"Jinej způsob říct Bohové, chlapče. A je jich po Sférách celá banda." Ebb zabafal. "Ale do Sigilu přijít nemůžou... Paní má nějakej způsob, jak je drží mimo a zatím nikomu neřekla jak. Ať je to jak chce, Sigil díky tomu není přebranej někým cizím."~ */
  IF ~~ THEN REPLY #11191 /* ~"Co jsi to říkal o bludišti?"~ */ GOTO 38
  IF ~~ THEN REPLY #11192 /* ~"Mám ještě nějaké otázky ohledně Sigilu."~ */ GOTO 34
  IF ~~ THEN REPLY #11193 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11194 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 25.5
  SAY #11195 /* ~"No..." Ebb zabafal a prohlíží si tě. "Tohle je asi nejlepší flek, kde můžeš začít... podle tvých tetování by sem si tipnul, že se necháváš rád zdobit, takže kousek na východ vocaď je tetovací salón. Od uličky nebezpečnejch zákoutí si drž odstup... Ignus to tam nedávno vypálil a od tý doby se tam usadila banda špatnejch parchantů."~ */
  IF ~~ THEN REPLY #11196 /* ~"Mám ještě jiné otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #11197 /* ~"Díky. Sbohem, Ebbe."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11198 /* ~"Zase zpátky, co?" Ebb se pohodlně rozvalil. "Rád tě zase vidím, chlapče."~ */
  IF ~~ THEN REPLY #11199 /* ~"Zdravím, Ebbe. Chci se tě na něco zeptat."~ */ GOTO 25
  IF ~~ THEN REPLY #11200 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 50 even though they appear after this state */
~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 49 // from:
  SAY #56844 /* ~Ebb ti kývl na pozdrav. "V Curstu to byla dobrá práce, příteli."~ */
  IF ~  Global("AR0902_Visited","GLOBAL",1)
~ THEN REPLY #56845 /* ~"Díky, Ebbe. Bez tvé pomoci by to nešlo. Sbohem."~ */ EXIT
  IF ~  Global("AR0902_Visited","GLOBAL",0)
~ THEN REPLY #56846 /* ~"Díky, Ebbe. Byl to ale tvrdej výlet. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  NearbyDialog("DMorte")
Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #56847 /* ~Ebb ti kývl na pozdrav. "V Curstu to byla dobrá práce, příteli."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 597
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #56848 /* ~Ebb ti kývl na pozdrav. "To byla dobrá práce, příteli." Vrátil se ke svému drinku.~ */
  IF ~~ THEN REPLY #56850 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #56849 /* ~Ebb na tebe mrknul a pak se dál věnuje svému drinku.~ */
  IF ~~ THEN REPLY #56851 /* ~"Taky tě rád zase vidím."~ */ EXIT
END

IF WEIGHT #4 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 53 // from:
  SAY #56852 /* ~Vidíš trochu nahrbeného staříka s šedivou bradou a lví hřívou šedých vlasů. Má na sobě velké nárameníky a drží helmu. Kouří dýmku, u pasu mu visí pytlík plný tabáku. Vypadá dost silně, ale spíš trochu obtloustle. A zřejmě má také nějaké dýchací problémy. Nejspíš je to šéf skupinky kolem. "Nazdárek, chlapče. Asi bys nám měl povědět, copak tady děláš."~ */
  IF ~~ THEN REPLY #56853 /* ~"Jenom jsem se díval, co je tady uvnitř."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #56854 /* ~"Co tady děláš *ty*?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56855 /* ~"Ve městě řádí chaos a já hledám spojence, kteří mi ho pomůžou zlikvidovat."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56856 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #56857 /* ~"Už jsem na odchodu..."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 63
END

IF WEIGHT #5 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 54 // from:
  SAY #56858 /* ~Vidíš Ebba Kolenovrze. Jeho úsměv zahaluje oblak dýmu. "Rád tě poznávám, chlapče. Copak tě sem přivádí?"~ */
  IF ~~ THEN REPLY #56859 /* ~"Jenom jsem se díval, co je tady uvnitř."~ */ GOTO 59
  IF ~~ THEN REPLY #56860 /* ~"Co tady děláš *ty*?"~ */ GOTO 60
  IF ~~ THEN REPLY #56861 /* ~"Ve městě řádí chaos a já hledám spojence, kteří mi ho pomůžou zlikvidovat."~ */ GOTO 61
  IF ~~ THEN REPLY #56862 /* ~"Už jsem na odchodu..."~ */ GOTO 63
END

IF WEIGHT #6 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 55 // from:
  SAY #56863 /* ~Vidíš trochu nahrbeného staříka s šedivou bradou a lví hřívou šedých vlasů. Má na sobě velké nárameníky a drží helmu. Kouří dýmku, u pasu mu visí pytlík plný tabáku. Vypadá dost silně, ale spíš trochu obtloustle. A zřejmě má také nějaké dýchací problémy. Nejspíš je to šéf skupinky kolem. "Vítám tě, soudruhu. Setkáváme se pod znakem Anarchie."~ */
  IF ~~ THEN REPLY #56864 /* ~"Co tady děláš?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56865 /* ~"Ve městě řádí chaos a já hledám spojence, kteří mi ho pomůžou zlikvidovat."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56866 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
END

IF WEIGHT #7 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 56 // from:
  SAY #56867 /* ~"Rád tě vidím!" Zasmál se Ebb. "Zase se potkáváme, tentokrát pod znakem Anarchie!"~ */
  IF ~~ THEN REPLY #56868 /* ~"Co sem přivádí *tebe*? A proč mluvíš o anarchii?"~ */ GOTO 60
  IF ~~ THEN REPLY #56869 /* ~"Potřebuju pomoc, Ebbe."~ */ GOTO 61
END

IF WEIGHT #8 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #56870 /* ~Vidíš trochu nahrbeného staříka s šedivou bradou a lví hřívou šedých vlasů. Má na sobě velké nárameníky a drží helmu. Kouří dýmku, u pasu mu visí pytlík plný tabáku. Vypadá dost silně, ale také trochu obtloustle. A zřejmě má také nějaké dýchací problémy. Nejspíš je to šéf skupinky kolem. Mávl na tebe, ať přistoupíš blíž.~ */
  IF ~~ THEN REPLY #56871 /* ~Jdi k němu.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #56872 /* ~Odmítni.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 69
END

IF WEIGHT #9 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #56873 /* ~Ebb na tebe mrkl a pokynul, ať jdeš blíž. "Kámo, prošel jsi dlouhou a těžkou cestu, ale já jsem tady, abych ti ji ulehčil. Jsi se mnou?"~ */
  IF ~~ THEN REPLY #56874 /* ~"Co děláš ve společnosti Anarchistů, Ebbe? Myslel jsem, že patříš k Harmoniu."~ */ GOTO 76
  IF ~~ THEN REPLY #56875 /* ~"Povídej."~ */ GOTO 72
  IF ~~ THEN REPLY #56876 /* ~"Ne. Jdi se vycpat."~ */ GOTO 75
END

IF ~~ THEN BEGIN 59 // from: 53.0 54.0 63.0
  SAY #56877 /* ~Sklonil se tak nízko, jak mu to jenom jeho záda dovolila. "Jak vidíš... sklad plný pletichářů a intrikářů. S tím, jak se starý řád rozpadá, si myslíme, že bychom měli zajistit, ať se rozpadne dokonale a lidé si mohou užít konečně svobody. Jsme nebezpečná parta, jak sis určitě všiml."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #56878 /* ~"Lidé nebudou mít moc svobody, pokud je pobijí monstra, která plundrují město."~ */ GOTO 64
  IF ~~ THEN REPLY #56879 /* ~"Domníváš se, že je na to ten nejlepší čas?"~ */ GOTO 67
  IF ~~ THEN REPLY #56880 /* ~"Ne tak nebezpeční, jako jsem já. Podívej." Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #56881 /* ~"V tomhle městě už nebude žádný další chaos."~ */ GOTO 68
END

IF ~~ THEN BEGIN 60 // from: 53.1 54.1 55.0 56.0
  SAY #56882 /* ~"No, kujeme pikle, příteli. Když se zhroutil pořádek ve městě, máme... unikátní... pozici, ze které můžeme zajistit vyslyšení našich názorů. A já velím této malé skupince dobrodruhů - pochopitelně pouze vojensky!"~ */
  IF ~~ THEN REPLY #56884 /* ~"Jaké pikle tady kujete?"~ */ GOTO 66
  IF ~~ THEN REPLY #56885 /* ~"Co tím myslíš?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 53.2 54.2 55.1 56.1
  SAY #56886 /* ~"Hledáš spojence proti chaosu? Ale my se snažíme chaos zvýšit, zvrhnout starý pořádek, abychom zajistili, že už se staré intriky neobjeví. Je to nakonec naše práce..."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #56887 /* ~"Možná to tak děláme, ale my nepodporujeme destrukci jenom kvůli ní samotné. Ničíme, aby ostatní mohli znovu budovat. Z Curstu nic nezbude, jestli se to tak udrží."~ */ GOTO 64
  IF ~~ THEN REPLY #56888 /* ~"Proč byste chtěli zvýšit chaos? Město už je v Carceri. A monstra vesele požírají obyvatelstvo."~ */ GOTO 66
  IF ~~ THEN REPLY #56889 /* ~"Tak mou prácí je zastavit tě. Připrav se na smrt."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 53.3 55.2 60.1
  SAY #56890 /* ~"Můj příteli, jsem Ebb Kolenovrz, dříve Harmonium, Třetí Míra, momentálně vůdce této buňky Revoluční Ligy. Přišel jsem je dostat do formy a připravit je na strhnutí starého řádu ve městě."~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #56891 /* ~"Starý řád už mi připadá docela strhaný."~ */ GOTO 64
  IF ~~ THEN REPLY #56893 /* ~"Jste Anarchisti? Tak to vás musím zastavit."~ */ GOTO 69
  IF ~~ THEN REPLY #56896 /* ~"A co chcete dělat s městem?"~ */ GOTO 66
  IF ~~ THEN REPLY #56897 /* ~"V tom případě odcházím."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 53.4 54.3 62.3
  SAY #56898 /* ~"Odcházíš? Ah, ale můj příteli, to nemůžeš. Víš, my ti nemůžeme dovolit odejít, když jsi viděl naše tváře."~ */
  IF ~~ THEN REPLY #56899 /* ~"Co tím myslíš?"~ */ GOTO 59
  IF ~~ THEN REPLY #56900 /* ~"Chci vidět, jak mě zastavíte."~ */ GOTO 69
END

IF ~~ THEN BEGIN 64 // from: 59.0 61.0 62.0 66.0 68.0 69.0 70.0
  SAY #56901 /* ~Jeho sebevědomí na moment zakolísalo. "Co tím myslíš?"~ */
  IF ~~ THEN REPLY #56902 /* ~"Co tím myslím je to, že zatímco si vy tady plánujete svržení městské vlády, zlo přišlo do Curstu a teď ničí, co ještě z města zbývá!"~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 67.0
  SAY #56903 /* ~"Ale... pak musíme něco udělat! Všechna naše práce přijde vniveč, jestli všichni zemřou! Tady. Vezmi si to." Otočil se ke svým mužům. "Musíme jít, jinak všechna naše práce přijde nazmar! Pojďte!" Běží ke dveřím.~ */
  IF ~~ THEN REPLY #61567 /* ~"Hodně štestí..."~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 60.0 61.1 62.2
  SAY #56905 /* ~"Když lidé uvidí, že je jejich vůdci zklamali, je docela dobrá naděje, že rozdrtí mocenské struktury, které je utlačovaly, a pak vytvoří něco nového, něco krásného. A my jim pomůžeme."~ */
  IF ~~ THEN REPLY #56906 /* ~"Oh, takže mi pomůžete s bojem proti fiendům?"~ */ GOTO 64
  IF ~~ THEN REPLY #56907 /* ~"Jak chcete získat něco krásného z tohohle?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 67 // from: 59.1
  SAY #56908 /* ~"Co tím přesně myslíš?"~ */
  IF ~~ THEN REPLY #56909 /* ~"Co tím myslím je to, že zatímco si vy tady plánujete svržení městské vlády, zlo přišlo do Curstu a teď ničí, co ještě z města zbývá!"~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
  IF ~~ THEN REPLY #56910 /* ~"Načasování je kapku nešikovné."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 59.3 67.1
  SAY #56911 /* ~"Příteli, chaos je spásný rys tohohle města. Sklouznutím do Carceri, je jasné, že je to nejčastější víra ve městě."~ */
  IF ~~ THEN REPLY #56912 /* ~"Ano, a zlo je toho taky součástí. Musíme dostat město ven, nebo zemřeme všichni."~ */ GOTO 64
  IF ~~ THEN REPLY #56913 /* ~"Takže vy podporujete to, co se děje?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 57.1 62.1 63.1 71.0 71.1
  SAY #56914 /* ~"Příteli, nijak mě netěší, co musíme dělat... ale musíme zajistit, že si město neuchová zkaženost minulé administrativy." Mávl rukou na své spoluspiklence. "Berte je."~ */
  IF ~~ THEN REPLY #56915 /* ~"Proč to děláš? Copak nevidíš, že se město rozpadá?"~ */ GOTO 64
  IF ~~ THEN REPLY #56916 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 66.1
  SAY #56917 /* ~Netrpělivě vzdychl. "Jde o to, že když z města vyženeme korupci, jako hnilobu z jablka, může z destrukce povstat něco nového. Považuj to za požár v městské správě. Heh heh."~ */
  IF ~~ THEN REPLY #56918 /* ~"Požár se rozhodně šíří."~ */ GOTO 64
  IF ~~ THEN REPLY #56919 /* ~"Takže vy podporujete to, co se tady děje?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 68.1 70.1
  SAY #56920 /* ~"Nepochybně, příteli. Nepochybně."~ */
  IF ~~ THEN REPLY #56921 /* ~"Tak to si už nemáme co víc říct. Sbohem."~ */ GOTO 69
  IF ~~ THEN REPLY #56922 /* ~"Takže tě budu muset zabít, abych vrátil Curst na jeho původní místo."~ */ GOTO 69
END

IF ~~ THEN BEGIN 72 // from: 57.0 58.1
  SAY #56923 /* ~Naklonil se, aby ti mohl zašeptat do ucha. "Vím, kdo ji pro Revoluční Ligu. Vím, že jsi zradil Anarchisty. Infiltroval jsem je pro Harmonium, a ničím je zevnitř. Musíme dostat město zpět do Pustin. Jsi se mnou?"~ */
  IF ~~ THEN REPLY #56924 /* ~"Ano."~ */ GOTO 73
  IF ~~ THEN REPLY #56925 /* ~"Ne. Nikdy."~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0 76.0
  SAY #56926 /* ~"Tak mě následuj. Použijeme ty Anarchistické bastardy, eh? Řekni mi, jak město ničí fiendi. Nahlas, ať to všichni slyší."~ */
  IF ~~ THEN REPLY #56928 /* ~"Velmi dobře." Promluvil jsi nahlas. "Město zasypávají fiendi, zatímco vy tady sedíte a plánujete, jak obstarat lidem ve městě lepší život. Jestli opravdu chcete získat jejich srdce, ukažte jim, že se o ně staráte, to bude dobrý začátek. Běžte je zachránit."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56929 /* ~Ebb na tebe mrkl, nenápadně ti podstrčil svitek a pak ustoupil, aby ostatní Anarchisti viděli na jeho tvář. "Ale... pak musíme něco udělat! Všechna naše práce přijde vniveč, jestli všichni zemřou!" Otočil se ke svým mužům. "Musíme jít, jinak všechna naše práce přijde nazmar! Pojďte!" Běží ke dveřím.~ */
  IF ~~ THEN REPLY #56930 /* ~"Hodně štěstí..."~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 58.2 72.1 76.1
  SAY #56931 /* ~"Tak to mi nedáváš na výběr. Když nejsi částí řešení, jsi částí problému." Otočil se ke svým společníkům. "Zradí nás, jestli dostane šanci. Berte ho."~ */
  IF ~~ THEN REPLY #56932 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 58.0
  SAY #56933 /* ~Naklonil se k tobě, pach z jeho dýmky zesílil. Zašeptal: "Tohle je tajná operace. Jsem trojitý agent. Agent Harmona, infiltrující Anarchisty, předstírající, že je dvojitý agent Harmonia. Musíš myslet ještě úchylněji než tady tihle... a já si pořád nejsem jistý, jestli už náhodou moje krytí neprasklo. Takže... pomůžeš mi, ať můžu pomoct já tobě?"~ */
  IF ~~ THEN REPLY #56934 /* ~"Co mám udělat?"~ */ GOTO 73
  IF ~~ THEN REPLY #56935 /* ~"To nemůžu udělat."~ */ GOTO 75
END
