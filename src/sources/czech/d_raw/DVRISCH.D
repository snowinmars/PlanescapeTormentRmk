// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVRISCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVRISCH~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3001 /* ~Vzhled ženy s ostrými rysy je atraktivní, ale poněkud znepokojivý, díky její modročerné pokožce a bledožlutým očím. Když si tě prohlíží, z jejích zad se rozvinul pár křídel připomínajících netopýří.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 52.0
  SAY #50480 /* ~"Tak, tak... poletující těla prostá překrucující lebka..."~ */
  IF ~~ THEN GOTO 4
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",0)
~ THEN BEGIN 2 // from: 53.0
  SAY #50481 /* ~"Tak, tak... Fall-from-Grace... nebo jak si teď necháváš říkat. Je mi opravdu potěšením tě tu vidět. Proč se mi dostalo cti tvé návštěvy? Myslela jsem, že už k našemu druhu zavítáš jen zřídkakdy." Chvíli se na vás dívá s tím samým lehkým úšklebkem. "Nebo je tu už tvůj úkol téměř hotov?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 3 // from: 54.0
  SAY #50482 /* ~"Tak, tak... poletující těla prostá překrucující lebka a Fall-from-Grace... nebo jak si teď necháváš říkat. Je mi opravdu potěšením tě tu vidět. Proč se mi dostalo cti tvé návštěvy? Myslela jsem, že už k našemu druhu zavítáš jen zřídkakdy." Chvíli se na vás dívá s tím samým lehkým úšklebkem. "Nebo je tu už tvůj úkol téměř hotov?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0 6.0
  SAY #50483 /* ~Přimhouřila oči. "Ty... ty jsi ten zjizvený muž, co se kolem vyptává na všechny možné věci?" Prohlíží si tě odshora dolů. "Opravdu vypadáš ztraceně. Chtěl jsi skutečně vstoupit nebo si to tu jen tak prohlížíš, protože nemáš nic lepšího na práci?"

"Protože Vrischika..." Ukázala na sebe "...ti může pomoct."
~ */
  IF ~~ THEN REPLY #50485 /* ~"Jak mi můžeš pomoci?"~ */ GOTO 19
  IF ~~ THEN REPLY #50486 /* ~"Co je toto místo?"~ */ GOTO 8
  IF ~~ THEN REPLY #50487 /* ~"Měl jsem pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #50488 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #50484 /* ~Stroze odpověděla a zpět jako šíp vystřelila otázku. "Dobrovolně. A ty? Kam tě příště zavedou tvé rozkazy?" Najednou se otočila k tobě. "Víš, *človíčku*..." Vrischika se usmívá, jako by si ta slova vychutnávala. "...nejlepší svůdkyně je ta, která tě přinutí uvěřit iluzi, že je promiskuitní a počestná zároveň; prostituující kněžka, tak řečeno. Madam Grace patří mezi nejlepší..." Obrátila se k Fall-from-Grace. "...nebo ne? Přece by sis nemyslela, že skoro tisíc let otroctví nezanechalo své šrámy, že ne?"~ */
  IF ~~ THEN DO ~SetGlobal("Vris_vs_Grace","GLOBAL",1)
~ EXTERN ~DGRACE~ 152
END

IF ~~ THEN BEGIN 6 // from:
  SAY #50489 /* ~"Dobrá. Nicméně jste ti, co zavítali do *mého* obchodu." Vrischika se podívala na tebe.~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN GOTO 4
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #50717 /* ~"Ano?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.0 9.0 10.2 17.1 18.0 19.0 44.5 50.0 55.0
  SAY #50490 /* ~"Uvítám jakékoliv otázky ohledně mého zboží, ale nenechám se zatáhnout do některých ze tvých známých dvaceti-otázek-o-všem-možném-pod-věží, *rozuměls?*"~ */
  IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN REPLY #50491 /* ~"Máš zájem o koupi otroka nebo sluhy, Vrischiko?"~ */ GOTO 44
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66961 /* ~"Dal jsem někomu fiendský jazyk a mělo to nějaké... nepříjemné vedlejší účinky. Nemáš nějaký nápad, co s tím?"~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #50492 /* ~"Co jsi, Vrischiko?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50493 /* ~"Co jsi myslela tím, když jsi nazvala Morteho 'překrucujícím?'"~ */ GOTO 9
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50494 /* ~"Vypadá to, že ty a Fall-from-Grace se nemáte moc rády..."~ */ GOTO 10
  IF ~~ THEN REPLY #50495 /* ~"Alespoň mi pověz o tomto místě."~ */ GOTO 8
  IF ~~ THEN REPLY #50496 /* ~"Tak se tedy podívejme na tvé zboží."~ */ GOTO 20
  IF ~~ THEN REPLY #50497 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 7.5
  SAY #50498 /* ~"To, co vidíš v tomto krámu, je výsledkem mnoha obchodování a cest po Sférách." Udělala k obchodu široké gesto. "Zbraně, kouzla... a jiné *speciální* věci tu jsou ke koupi,... vše, co vyplňuje tento obchod, je vzácné a och-tak-vytříbené. Tvé potřeby - ukojím je."~ */
  IF ~~ THEN REPLY #50499 /* ~"Měl bych jinou otázku..."~ */ GOTO 7
  IF ~~ THEN REPLY #50500 /* ~"Tak se tedy podívejme na tvé zboží."~ */ GOTO 20
  IF ~~ THEN REPLY #50501 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #50502 /* ~"Překrucující... vykrucující, křivopřísežná, přetvařující se, *lživá*... och, to že jsem řekla? Myslela jsem poletující, těla prostá *poučující* lebka. Jako dogmatická - vždycky pronášející svůj názor takovým nadutým způsobem." Vrischika se nevinně usmívá.~ */
  IF ~~ THEN REPLY #50503 /* ~"Hmm. Měl bych jinou otázku..."~ */ GOTO 7
  IF ~~ THEN REPLY #50504 /* ~"Dobrá, podívejme se na tvé zboží..."~ */ GOTO 20
  IF ~~ THEN REPLY #50505 /* ~"A... ha. To je vše, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.4
  SAY #50507 /* ~"Och, ta přívrženkyně spolku baatezů, co si našla domov v Sigilu? Kuriózní, ne? Ale na druhou stranu, jaké by našla lepší místo k tréninku svých agentů než ten její 'nevěstinec'..."~ */
  IF ~~ THEN REPLY #50508 /* ~"Přívrženkyně spolku baatezů?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50509 /* ~"Tréninku svých agentů?"~ */ GOTO 14
  IF ~~ THEN REPLY #50510 /* ~"Hmm. Měl bych jinou otázku..."~ */ GOTO 7
  IF ~~ THEN REPLY #50511 /* ~"Chtěl bych se podívat na tvé zboží..."~ */ GOTO 20
  IF ~~ THEN REPLY #50512 /* ~"To je vše, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 17.0
  SAY #50513 /* ~"Od té doby, co ji matka prodala do otroctví, se stala na mnoho staletí hračkou Sfér. Prohlašuje, že se jí podařilo osvobodit se z otrockých otěží, ale v její slova můžeš vkládat stejnou důvěru jako ve slova jakékoliv jiné tanar'rijské děvky." Jemně se usmála. "Kromě mě, samozřejmě."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 153
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50514 /* ~"Pravda?! *Pravda?!* Nikdo 'nedosáhne osvobození' od smluv baatezů, mrcho v lidské kůži. Mluvíš lži a všechny tanar'rijské hordy to ví, od nejnižších legií po jiné komfortem odkojené sukuby, co skotačí po sférách. 'Fall-from-Grace byla pouhým otrokem baatezů od chvíle, co se narodila a *vždycky* jím bude.' Pořád jsi ještě hračka upsaná baatezům, týraná a ovládaná, jak se jim zlíbí." Vrischika se pohrdavě ušklíbla. "Ty se dokonce *chováš* jako oni."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 154
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50515 /* ~"Dost! Nemám zájem slyšet tě vyprávět své lži v mé přítomnosti!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 155
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #50516 /* ~"Ano... jsou to její oči a uši ve městě Sigilu a ve všech Sférách. Co sami nevidí nebo neslyší, to vytáhnou z někoho jiného, který viděl a slyšel. A kdo by očekával od lidské bytosti schopnost takových klamů a podlostí? Och, Grace je vskutku chytrák. Možná ne tak chytrá jako její matka, ale přesto chytrá..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 156
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50517 /* ~"Och, ale *samozřejmě* není! Jak jsem si mohla dovolit myslet si takovou věc? Ale snad bys mohla nechat toho muže, ať to posoudí sám." Vrischika se žhnoucíma očima se otočila k tobě. "Neuvažuješ, človíčku? Zavítá někdy v této věci do tvé mysli závan rozumu a zvídavosti? Copak se ti nezdá jednání nevěstince *podivné*?"~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #50518 /* ~Vrischika pokračuje, aniž by tě nechala odpovědět. "Occamova břitva může zanechat rány, ale umí odstranit rakovinu, tak často způsobenou jedem lhářů a podvodníků."

"A teď je tady, cestuje s tebou. Velice podivné. Proč by majitelka takového podniku z jakéhokoli důvodu tento opustila? A notabene kvůli muži, co stěží chápe? Otázky, otázky..."

"Vskutku, odpovědi mohou být bolestivé."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 157
END

IF ~~ THEN BEGIN 17 // from:
  SAY #50519 /* ~"Och, jsem si jistá, že tě požádal... který muž by odolal?" Vrischika se ušklíbla a v opovržení se dívá bokem.~ */
  IF ~~ THEN REPLY #50520 /* ~"Co jsi to říkala o tom, že je přívrženkyní Baatezského spolku?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50521 /* ~"Měl bych jinou otázku..."~ */ GOTO 7
  IF ~~ THEN REPLY #50522 /* ~"Chtěl bych se podívat na tvé zboží..."~ */ GOTO 20
  IF ~~ THEN REPLY #50523 /* ~"To je vše, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY #50524 /* ~Vrischika hlasitě vzdychne. "Alu-fiend... polofiend. Moje matka byla tanar'ri a můj otec velký král smrtelníků. Takový neomalený dotaz... ale co, vždyť ty sám vypadáš neomaleně, že?"~ */
  IF ~~ THEN REPLY #50525 /* ~"Měl bych jinou otázku..."~ */ GOTO 7
  IF ~~ THEN REPLY #50526 /* ~"Chtěl bych se podívat na tvé zboží..."~ */ GOTO 20
  IF ~~ THEN REPLY #50527 /* ~"To je vše, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.0
  SAY #50528 /* ~"Hodně jsem cestovala a obchodovala. Slyším o skvělém obchodu, uzavřu skvělý obchod a vlastním skvělý obchod. Možná i tobě můžu nabídnout skvělý obchod. Je něco, po čem toužíš?"~ */
  IF ~~ THEN REPLY #50529 /* ~"Jenom odpovědi na pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #50530 /* ~"Možná. Co prodáváš?"~ */ GOTO 20
  IF ~~ THEN REPLY #50531 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.6 8.1 9.1 10.3 17.2 18.1 19.1 50.1 55.1
  SAY #50533 /* ~"Zajímal by ses o ukázku zbraní a kouzel? Nebo o některý z mých více *exotických* předmětů?"~ */
  IF ~~ THEN REPLY #50534 /* ~"Ty zbraně a kouzla..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50535 /* ~"Ty exotické předměty..."~ */ GOTO 21
  IF ~~ THEN REPLY #50536 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1 22.2 23.1 24.1 31.2 31.3 32.1 33.1 34.1 37.2 38.1 41.1 43.1 58.1 59.6 60.6
  SAY #50539 /* ~Vrischika se usmívá, zatímco si prohlížíš různé police uprostřed krámku. "Pokud tady nevidíš nic, co by se ti líbilo, pak jsou další věci ještě v přední a zadní části obchodu."~ */
  IF ~  Global("Vris_Buy_05","AR0609",0)
~ THEN REPLY #50551 /* ~Prozkoumej Fiendův jazyk.~ */ GOTO 31
  IF ~  Global("Vris_Buy_06","AR0609",0)
~ THEN REPLY #50552 /* ~Prozkoumej Gorgonskou mast.~ */ GOTO 32
  IF ~  Global("Vris_Buy_08","AR0609",0)
~ THEN REPLY #50554 /* ~Prozkoumej kovovou krychlovitou figurku.~ */ GOTO 33
  IF ~  Global("Vris_Buy_09","AR0609",0)
~ THEN REPLY #50555 /* ~Prozkoumej Džbán monstra.~ */ GOTO 34
  IF ~~ THEN REPLY #66633 /* ~Podívej se do přední části obchodu.~ */ GOTO 59
  IF ~~ THEN REPLY #66634 /* ~Podívej se do zadní části obchodu.~ */ GOTO 60
  IF ~~ THEN REPLY #50562 /* ~"Vlastně, ukaž mi zbraně a kouzla..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50563 /* ~"Momentálně mě nic nezaujalo. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #50564 /* ~Vrischika si povšimla, jak si prohlížíš knihu nadepsanou 'CHEATY' "Ano... je to přesně to, co myslíš, že to je. Do toho; podívej se na ně."~ */
  IF ~~ THEN REPLY #50565 /* ~"Cheaty? Nerozumím..."~ */ GOTO 23
  IF ~~ THEN REPLY #50566 /* ~Podívej se na různé cheaty.~ */ GOTO 24
  IF ~~ THEN REPLY #50567 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50568 /* ~"Momentálně mě nic nezaujalo. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #50573 /* ~"Och, no tak." Vrischika si dala ruce v bok a povytáhla bradu. "Nehraj si přede mnou na naivku! Pamatuj, jsem fiend; umím *vycítit* tvé vzrušení. Ano..." Promlouvá pomalu, jako by mluvila k dítěti. "To jsou *cheaty*. Umožňují ti *PODVÁDĚT.* Do toho... prohlédni si je. Nekousnou tě."~ */
  IF ~~ THEN REPLY #50574 /* ~Podívej se na různé cheaty.~ */ GOTO 24
  IF ~~ THEN REPLY #50575 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50576 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 23.0
  SAY #50577 /* ~V knize je několik kapitol: Teleportovací cheat, Uzdravující cheat, Cheat majetku, Cheat doplňující kouzla, Cheat vlastností, Cheat smrti, Mapovací cheat, Cheat slova dobra a Cheat slova zla.~ */
  IF ~~ THEN REPLY #50578 /* ~"Co za ně chceš?"~ */ GOTO 41
  IF ~~ THEN REPLY #50579 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50580 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 59.0
  SAY #50581 /* ~Prohlížíš si několik lahviček popsaných jako 'Dětský olej'. Vrischika jednu z nich vzala a podává ti ji. "Máš zájem? Je to samozřejmě pravé. Do výroby této věci byly investovány tisíce kňourajících smrtelných batolat."~ */
  IF ~~ THEN REPLY #50582 /* ~"Ech... ne, díky. Ukaž mi ostatní věci."~ */ GOTO 59
  IF ~~ THEN REPLY #50583 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 59.1
  SAY #50584 /* ~Prohlížíš si zkroucenou trpasličí příšerku, vyřezanou z čisté mléčné čokolády. "Vypadá delikátně, že? Importovaná z Nižších sfér. Víš, jsou vzácné a dost ceněné milovníky čokolád a cukroví. Je to skutečný quasit - příbuzný fiendů - polymorfovaný do čokolády mocnou magií. Je jenom za sto devadesát devět měďáků."~ */
  IF ~  PartyGoldGT(198)
~ THEN REPLY #50585 /* ~"Beru to."~ */ DO ~SetGlobal("Vris_Buy_01","AR0609",1)
DestroyPartyGold(199)
GiveItemCreate("ChocoQ",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50586 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 59
  IF ~~ THEN REPLY #50587 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 59.2
  SAY #50589 /* ~Prohlížíš si docela nenápadnou knihu uzavřenou malým mosazným zámkem. "To," zacukrovala Vrischika, "je Kodex Neuvěřitelného. Řeknu jenom, že je prostě... prostě... no, nedokážu to vyjádřit. Prostá slova jednoduše nestačí! Můžeš ho vlastnit za ne méně než tisíc měďáků... a věř mi: opravdu za to stojí."~ */
  IF ~  PartyGoldGT(999)
~ THEN REPLY #50590 /* ~"Beru ho."~ */ DO ~SetGlobal("Vris_Buy_02","AR0609",1)
DestroyPartyGold(1000)
GiveItemCreate("CodexI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50591 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 59
  IF ~~ THEN REPLY #50592 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 59.3
  SAY #50593 /* ~Prohlížíš si malou skleněnou ampulku popsanou jako 'Dévovy slzy.' "Byly sebrány od dévy, co byl zajat během jedné potyčky ve Válce krve. Fiendi jej uvězněného mučili po celé eony, než jim nakonec utekl - tato malá lahvička obsahuje dvanáct slz, které za tu dobu uronil. Jejich cena je pouze jedno sto měďáků."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50594 /* ~"Beru je."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50595 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 59
  IF ~~ THEN REPLY #50596 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 59.4 61.0
  SAY #50597 /* ~Prohlížíš si malou skleněnou ampulku popsanou jako 'Dévovy slzy.' Vrischika ti ji ukazuje. "Byly sebrány od dévy, co byl zajat během jedné potyčky ve Válce krve. Fiendi jej uvězněného mučili po celé eony, než jim nakonec utekl - tato malá lahvička obsahuje dvanáct slz, které za tu dobu uronil. Říká se, že jejich dotek utiší i ten nejzuřivější hněv... i ten od fiendova jazyka." Vrischika se krutě usměje. "Jejich cena je pouze devět set devadesát devět měďáků."~ */
  IF ~  PartyHasItem("EcNote")
~ THEN REPLY #64175 /* ~"Mám tenhle úpis z nevěstince na tisíc měďáků..."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyItem("EcNote",FALSE)
GiveGoldForce(1)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 58
  IF ~  PartyGoldGT(998)
~ THEN REPLY #50598 /* ~"Ty by mohly zastavit prokletí Fiendova jazyka. Beru je."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",2)
DestroyPartyGold(999)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50599 /* ~"Vlastně, ukaž mi ty ostatní věci..."~ */ GOTO 59
  IF ~~ THEN REPLY #50600 /* ~"Ty by mohla potřebovat Ecco... ale ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 59.5
  SAY #50601 /* ~Prohlížíš si láhev označenou jako 'Elixír strašlivé separace.' Vrischika ti ji představuje. "Tato věc byla vytvořena vědkyní, co zjistila, že má temnou polovinu - část jí samé, co čas od času převládla a sváděla ji k páchání strašlivých věcí. Tento lektvar od ní měl její temnou polovinu 'oddělit' a vytvořit tak dvě samostatné bytosti. Nemilosrdní ji nicméně našli a popravili za sérii zvrácených vražd dřív, než jej mohla použít. Budu ti za ten Elixír účtovat pouhých dvě stě měďáků."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #50602 /* ~"Beru ho."~ */ DO ~SetGlobal("Vris_Buy_04","AR0609",1)
DestroyPartyGold(200)
GiveItemCreate("ElixirS",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50603 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 59
  IF ~~ THEN REPLY #50604 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.0
  SAY #50605 /* ~Prohlížíš si něco, co vypadá jako jazyk naložený do solného roztoku v láhvi. Vrischika se na to zamračí. "Toto je fiendův jazyk... cornugonův, tuším, ale kdo ví? Říká se, že vsazen do úst jakékoliv živé bytosti jí poskytuje schopnost mluvit, i když ji nikdy předtím neměla. Prodávám tuto zvláštnost za pouhých šedesát šest měďáků, kdybys ji chtěl."~ */
  IF ~  PartyGoldGT(65)
!Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50606 /* ~"Beru ho."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  PartyGoldGT(65)
Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50607 /* ~"Beru ho; mohl by vrátit Ecco její hlas."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66812 /* ~"To by mohlo vrátit hlas Ecco... ale ukaž mi ještě ty další věci..."~ */ JOURNAL #66814 /* ~V obchodu s kuriozitami jsem zahlédl fiendský jazyk. Podle toho, jak mi ho Vrishika popisovala, by mohl vrátit hlas Ecco.~ */ GOTO 21
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50608 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66813 /* ~"To by mohlo vrátit hlas Ecco... ale ne, díky. Sbohem."~ */ JOURNAL #66814 /* ~V obchodu s kuriozitami jsem zahlédl fiendský jazyk. Podle toho, jak mi ho Vrishika popisovala, by mohl vrátit hlas Ecco.~ */ EXIT
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50609 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1
  SAY #50610 /* ~Prohlížíš si láhev označenou jako 'Gorgonská mast.' Vrsichika ji pro tebe pozvedla. "To jsem koupila od jednoho Záklaďáka s mečem... myslím, že se jmenoval Perseus. Natřením na povrch jakéhokoliv stvoření proměněného v kámen jej změní zpět v tělo. Jenom jedno sto měďáků; výhodná koupě s přihlédnutím k tomu, jak užitečná věc to může být, kdybys někdy nalezl nějakého svého přítele obráceného ve skálu."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50611 /* ~"Beru ji."~ */ DO ~SetGlobal("Vris_Buy_06","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Gsalve",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50612 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50613 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 21.2
  SAY #50614 /* ~Prohlížíš si malý kovový model krychlovité bytosti s velikýma očima na jedné ze stran. Hračka má dvě nohy, dvě ruce, dvě sklápěcí křídla a nejméně osmnáct bodů skloubení. Vrischika se usmála, jak jsi ji zvedl. "Sběratelský kousek, asi, nebo nějaké umělecké dílo. Kdo ví? Ale líbí se mi. Kdybys ji koupil, poptej se okolo... někdo by o ní mohl vědět víc než já. Můžeš ji mít za pouhých patnáct set měďáků."~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50615 /* ~"Beru ji."~ */ DO ~SetGlobal("Vris_Buy_08","AR0609",1)
DestroyPartyGold(1500)
GiveItemCreate("Cube",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50616 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50617 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 21.3
  SAY #50618 /* ~Prohlížíš si prostě vyhlížející džbán... i přes jeho obyčejný vzhled cítíš vnitřní nechuť dotknout se té věci, jako by tě měla kousnout. Vrischika tě pozoruje, pochichtává se a pak pokrčí rameny. "To je džbán. Má v sobě uvězněný nějaký druh monstra - to proto se ti tak ježí vlasy. Kdyby se ti líbil, je jenom za sto dvacet tři měďáky."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50619 /* ~"Beru ho."~ */ DO ~SetGlobal("Vris_Buy_09","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("MonJug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50620 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50621 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 60.0
  SAY #50622 /* ~Prohlížíš si zašlou čočku z vybroušeného skla o průměru tvé dlaně, upnutou ve vyleštěném ocelovém prstenci. Je nepatrně cítit jakýmsi hrozným parfémem a z prstence trčí malé rameno se soukolím, jako by měla být čočka připevněna k nějakému druhu hodinového stroje. Vrischika ji k tobě pozvedne. "Nemám představu, co to ve skutečnosti je, ale vyzařuje to docela mocnou magii. Z bojiště z Nižší sféry mi to přinesl jeden voják jménem Ghysis - povraždil své vlastní muže, aby tam unikl ze své služby a donesl mi množství zajímavých předmětů, co posbíral v průběhu svého válečného tažení. Mám to vlastně jenom za účelem navázání konverzace, ale můžeš to za sto čtyřicet devět měďáků mít, jestli se ti líbí."~ */
  IF ~  PartyGoldGT(148)
~ THEN REPLY #50623 /* ~"Beru ji."~ */ DO ~SetGlobal("Vris_Buy_10","AR0609",1)
DestroyPartyGold(149)
GiveItemCreate("Lens12",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50624 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 60
  IF ~~ THEN REPLY #50625 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 60.1
  SAY #50626 /* ~Prohlížíš si nějaký prsten ve vypolstrované krabičce. Vrischika jej pozvedla, aby sis jej mohl prohlédnou podrobněji. "Toto je Yevrahův prsten částečné neviditelnosti. Dělá svého nositele neviditelným - no, skoro. Přenechám jej za skrovnou částku tří set čtyřiceti devíti měďáků."~ */
  IF ~  PartyGoldGT(348)
~ THEN REPLY #50627 /* ~"Beru ho."~ */ DO ~SetGlobal("Vris_Buy_11","AR0609",1)
DestroyPartyGold(349)
GiveItemCreate("RingAI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50628 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 60
  IF ~~ THEN REPLY #50629 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #50630 /* ~Prohlížíš si podivně tvarovanou dýku vystavenou na dekorativní poličce. Cedulka pod poličkou říká 'Wh'ynnův meč.' Vrischika položila prst na její hrušku. "Je také známá jako Podvodníkova čepel. Prostým jejím držením ve vzduchu vyhraješ každou hru. Kdyby se ti opravdu líbila, dám ji do tvých rukou za patnáct set měďáků."~ */
  IF ~~ THEN REPLY #50631 /* ~"Vyhrát každou... co tím myslíš?"~ */ GOTO 38
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50632 /* ~"Beru ji."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50633 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50634 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #50635 /* ~Vrischika ne tebe přimhouřila své žluté oči. "Och, no tak. Ty víš *přesně*, co tím myslím. Kup si Podvodníkovu čepel a vyhraješ hru. Je to tak jednoduché... za pouhých patnáct set měďáků. Chceš ji nebo ne?"~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50636 /* ~"Ano, beru ji."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50637 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50638 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 60.3
  SAY #50639 /* ~Léta nebyla k této drobné hadrové panence vlídná; ve švech se páře a nitě na ní se asi rozpadají. Vypadá jako jakási podivně oblečená žena se svatozáří bodců kolem hlavy. Vrischika ti ji přiblížila. "Byla nalezena v dobře zabezpečeném trezoru hluboko pod povrchem Sigilu. Byla součástí menšího množství pokladů a zakázaných magických textů, nicméně nevím, k čemu má sloužit. Jestli se ti líbí, je jenom za devadesát devět měďáků."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50640 /* ~"Beru ji."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50641 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 60
  IF ~~ THEN REPLY #50642 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 60.4
  SAY #50643 /* ~Léta nebyla k této drobné hadrové panence vlídná; ve švech se páře a nitě na ní se asi rozpadají. Má to být evidentně model Paní bolesti, ale knoflíkové oči a jeho plyšová hebkost ti do tvého srdce mnoho strachu nenahánějí. Vrischika ti ji přiblížila. "Byla nalezena v dobře zabezpečeném trezoru hluboko pod povrchem Sigilu. Byla součástí menšího množství pokladů a zakázaných magických textů, nicméně nevím, k čemu má sloužit. Jestli se ti líbí, je jenom za devadesát devět měďáků."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50644 /* ~"Beru ji."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50645 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 60
  IF ~~ THEN REPLY #50646 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 24.0
  SAY #50647 /* ~Vrischika k tobě přistoupila. "Prosté mince za takovou věc nestačí. Chci za ně libru tvé krve, odebrané přímo přede mnou *touto* čepelí..." Najednou je v její ruce zubatá dýka. "...a odvedené do této kovové schránky. Nic menšího než toto."~ */
  IF ~~ THEN REPLY #50648 /* ~"Podstoupím to."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,10)
FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Vris_Buy_07","GLOBAL",1)
GiveItemCreate("Cheats",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #50649 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 21
  IF ~~ THEN REPLY #50650 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #50651 /* ~Po několika minutách je strašlivý rituál u konce a Vrischika ti se spokojeným úsměvem na rtech podává knihu. "Teď už nemám moc času. Sbohem."~ */
  IF ~~ THEN REPLY #50652 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 26.0 27.0 28.0 29.1 30.0 31.0 31.1 32.0 33.0 34.0 35.0 36.0 37.1 38.0 39.0 40.0 51.0
  SAY #50653 /* ~"Ano," zavrněla Vrischika, "rozumná volba." Měďáky, které jsi jí nasypal do ruky, jako by zmizely v momentě, co se dotkly její dlaně. Podává ti předmět. "Prosím, užij si své nejnovější akvizice."~ */
  IF ~~ THEN REPLY #58910 /* ~"Teď bych se chtěl podívat na zbraně a amulety..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58911 /* ~"Chtěl bych se ještě jednou podívat na exotické předměty..."~ */ GOTO 21
  IF ~~ THEN REPLY #50654 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 7.0
  SAY #50655 /* ~Plné černé rty Vrischiky se zavlnily úsměvem. "*Vždycky* mám zájem na získání nové pomocné síly. Standish - ten líný trouba - mi v krámu pomáhá, ale mohla bych ve svém panství využít i nějaké další tělo. Koho nabízíš? Zaplatím pět tisíc měďáků, když ujde."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50656 /* ~"Co třeba Morte?"~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 504
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50657 /* ~"Tuto tieflingskou dívku, Annah."~ */ DO ~SetGlobal("Sell_Annah","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DANNAH~ 250
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50658 /* ~"Dak'kona, githzeraje."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 167
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50659 /* ~"Fall-from-Grace."~ */ DO ~SetGlobal("Sell_Grace","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ GOTO 48
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #50660 /* ~"Tady toho modrona - Nordoma."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DNORDOM~ 13
  IF ~~ THEN REPLY #50661 /* ~"Vlastně, zapomeň na to. Měl bych jinou otázku..."~ */ GOTO 7
  IF ~~ THEN REPLY #50662 /* ~"Vlastně nikoho; pusť to z hlavy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #50663 /* ~Vrischika na Morteho přimhouřila oči. "Hmmm... ano, mohl by být užitečný. Pokud se smíříš s tím, že už ho nikdy neuvidíš... tak ti za něj zaplatím pět tisíc měďáků."~ */
  IF ~~ THEN REPLY #50664 /* ~"Už nikdy, říkáš? Fajn... vezmi si ho."~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DMORTE~ 505
  IF ~~ THEN REPLY #50665 /* ~"Ne, raději ne. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #50666 /* ~Vrschika ukázala svému novému otroku, Mortemu, útržek pergamenu. "Tady... toto je adresa mého domu v Čtvrti Paní. Teď tam jdi... zkus zdrhnout a budeš mít na krku tlupu fiendů. Budeš tam hluboko dole žebrat, aby ses mohl vrátit do Sigilu a sloužit mi." Pak se otočila k tobě. "A *ty*... mé díky; jsem si jistá, že bude zábavný. Tady je tvých pět tisíc měďáků... sbohem."~ */
  IF ~~ THEN REPLY #50668 /* ~"Sbohem."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Morte")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #50667 /* ~Vrischika přimhouřila na Dak'kona oči. "Hmmm... githzerai, he? A taky zerth. Pokud se smíříš s tím, že už ho nikdy neuvidíš... tak ti za něj zaplatím pět tisíc měďáků."~ */
  IF ~~ THEN REPLY #50669 /* ~"Nikdy? Rozumím. Vezmi si ho."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DDAKKON~ 168
  IF ~~ THEN REPLY #50670 /* ~"Ne, raději ne. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.3
  SAY #50671 /* ~"Nebuď *směšný,*" Vrischika se ušklíbla a kroutí hlavou. "Jako by byla *tvoje*, aby ji mohl prodat... jdi a vrať se jenom až se budeš cítit poněkud méně bláhově - pokud vůbec někdy."~ */
  IF ~~ THEN REPLY #50672 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #50673 /* ~Vrischika přimhouřila na Nordoma oči. "Hmmm... můj vlastní mechanický sluha? Ano, takový obchod určitě beru. Pokud se smíříš s tím, že už ho nikdy neuvidíš... tak ti za něj zaplatím pět tisíc měďáků."~ */
  IF ~~ THEN REPLY #50674 /* ~"Nikdy? Rozumím. Vezmi si ho."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DNORDOM~ 14
  IF ~~ THEN REPLY #50675 /* ~"Ne, raději ne. Sbohem, Vrischiko."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",1)
~ THEN BEGIN 50 // from: 6.1
  SAY #50676 /* ~Vrischika udělala spěšnou poklonku. "Vítej zpět. Jdeš si něco koupit?"~ */
  IF ~~ THEN REPLY #50677 /* ~"Ne, teď ne. Měl bych pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #50678 /* ~"Ano, jdu."~ */ GOTO 20
  IF ~~ THEN REPLY #52599 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 60.2
  SAY #50679 /* ~Prohlížíš si velký pivní džbán z cínu pokrytý podivnými runami. Vrischika jej pozvedla, aby sis jej mohl lépe prohlédnout. "Korbel vzácné výroby, který slouží k udržování svého obsahu - obvykle piva, samozřejmě - ledově studeného bez ohledu na okolní teplotu. Dvě stě devadesát devět měďáků a vychutnáš si to nejstudenější pivo, jaké jsi kdy měl mimo podsféru Ledu."~ */
  IF ~  PartyGoldGT(298)
~ THEN REPLY #50680 /* ~"Beru ho."~ */ DO ~SetGlobal("Vris_Buy_14","AR0609",1)
DestroyPartyGold(299)
GiveItemCreate("DwfMug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50681 /* ~"Vlastně, ukaž mi ještě jednou ostatní věci..."~ */ GOTO 60
  IF ~~ THEN REPLY #50682 /* ~"Ne, díky. Sbohem, Vrischiko."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 52 // from:
  SAY #50683 /* ~Tato žena s ostrými rysy je atraktivní, i když je její vzhled s tmavomodrou kůží a žlutýma očima poněkud zneklidňující. Jak si tě prohlíží, rozloží se jí na zádech pár malých netopýřích křídel a pak jako by se znovu zatáhl do její kůže.~ */
  IF ~~ THEN GOTO 1
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 53 // from:
  SAY #50684 /* ~Tato žena s ostrými rysy je atraktivní, i když je její vzhled s tmavomodrou kůží a žlutýma očima poněkud zneklidňující. Jak si tě prohlíží, rozloží se jí na zádech pár malých netopýřích křídel a pak jako by se znovu zatáhl do její kůže.~ */
  IF ~~ THEN GOTO 2
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 54 // from:
  SAY #50685 /* ~Tato žena s ostrými rysy je atraktivní, i když je její vzhled s tmavomodrou kůží a žlutýma očima poněkud zneklidňující. Jak si tě prohlíží, rozloží se jí na zádech pár malých netopýřích křídel a pak jako by se znovu zatáhl do její kůže.~ */
  IF ~~ THEN GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DGrace")
~ THEN BEGIN 55 // from:
  SAY #52596 /* ~Vrischika se ti lehce uklonila. "Vítej zpět. Přišel sis něco koupit?"~ */
  IF ~~ THEN REPLY #52597 /* ~"Teď zrovna ne. Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #52598 /* ~"Ano."~ */ GOTO 20
  IF ~~ THEN REPLY #52600 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63985 /* ~Vrishika ukazuje svitek pergamenu svému nejnovějšímu otroku, Dak'konovi. "Tady... tohle je adresa mého domu, ve čtvrti Paní bolesti. Zajdi tam, hned... zkus to a uteč a smečka mých fiendů ti půjde po krku tak dlouho, že nakonec budeš žebrat o návrat do Sigilu a o službu u mne." Pak se otočí k tobě. "A *ty*... máš mé díky; Jsem si jistá, že se ukáže být velmi zábavným. Zde je tvých pět tisíc měďáků... sbohem."~ */
  IF ~~ THEN REPLY #63986 /* ~"Sbohem."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Dakkon")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #63987 /* ~Vrishika ukazuje svitek pergamenu svému nejnovějšímu otroku, Nordomovi. "Tady... tohle je adresa mého domu, ve čtvrti Paní bolesti. Zajdi tam, hned... zkus to a uteč a smečka mých fiendů ti půjde po krku tak dlouho, že nakonec budeš žebrat o návrat do Sigilu a o službu u mne." Pak se otočí k tobě. "A *ty*... máš mé díky; Jsem si jistá, že se ukáže být velmi zábavným. Zde je tvých pět tisíc měďáků... sbohem."~ */
  IF ~~ THEN REPLY #63988 /* ~"Sbohem."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Nordom")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 29.0
  SAY #64171 /* ~Vrischika se mračí, zkoumá poznámky. "Dobrá... předpokládám, že bych si pro Standishe mohla dojít, později. Výborně; tady máš." Dá ti item. "Prosím, užij si svůj nový přírůstek."~ */
  IF ~~ THEN REPLY #64172 /* ~"Rád bych se teď podíval na zbraně a kouzla..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64173 /* ~"Rád bych se znovu podíval na exotické předměty..."~ */ GOTO 21
  IF ~~ THEN REPLY #64174 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.4 25.0 26.1 27.1 28.1 29.2 30.1 60.5
  SAY #66631 /* ~Díváš se na různé poličky v přední části Vrischičina obchodu.~ */
  IF ~~ THEN REPLY #66635 /* ~Prozkoumej Dětský olej.~ */ GOTO 25
  IF ~  Global("Vris_Buy_01","AR0609",0)
~ THEN REPLY #66636 /* ~Prozkoumej Čokoládovou ozdobu.~ */ GOTO 26
  IF ~  Global("Vris_Buy_02","AR0609",0)
~ THEN REPLY #66637 /* ~Prozkoumej Kodex Neuvěřitelného.~ */ GOTO 27
  IF ~  Global("Vris_Buy_03","AR0609",0)
!Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66638 /* ~Prozkoumej Dévovy slzy.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 28
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66639 /* ~Prozkoumej Dévovy slzy.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ JOURNAL #66815 /* ~U Vrishiky jsem našel Slzy devy. Řekla mi, že uklidní i tu největší zuřivost - dokonce i zuřivost fiendského jazyku. To by mohlo pomoct Ecco...~ */ GOTO 29
  IF ~  Global("Vris_Buy_04","AR0609",0)
~ THEN REPLY #66640 /* ~Prozkoumej Elixír Strašlivé separace.~ */ GOTO 30
  IF ~~ THEN REPLY #66641 /* ~Podívej se do střední části obchodu.~ */ GOTO 21
  IF ~~ THEN REPLY #66642 /* ~Podívej se do zadní části obchodu.~ */ GOTO 60
  IF ~~ THEN REPLY #66643 /* ~"No, vlastně bych se chtěl podívat na zbraně a amulety..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66644 /* ~"Nějak mě nic nezaujalo. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 21.5 35.1 36.1 39.1 40.1 51.1 59.7
  SAY #66632 /* ~Díváš se na různé poličky v zadní části Vrischičina obchodu.~ */
  IF ~  Global("Vris_Buy_10","AR0609",0)
~ THEN REPLY #66645 /* ~Prozkoumej špinavé čočky.~ */ DO ~SetGlobal("CW_Vrischika_Ghysis","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Vris_Buy_11","AR0609",0)
~ THEN REPLY #66646 /* ~Prozkoumej Yevrahův Prsten.~ */ GOTO 36
  IF ~  Global("Vris_Buy_14","AR0609",0)
~ THEN REPLY #66647 /* ~Prozkoumej džbán na pivo pokrytý runami.~ */ GOTO 51
  IF ~  Global("Vris_Buy_13","AR0609",0)
Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #66648 /* ~Prozkoumej otrhanou hadrovou panenku.~ */ GOTO 39
  IF ~  Global("Vris_Buy_13","AR0609",0)
GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #66649 /* ~Prozkoumej otrhanou hadrovou panenku.~ */ GOTO 40
  IF ~~ THEN REPLY #66650 /* ~Podívej se do přední části obchodu.~ */ GOTO 59
  IF ~~ THEN REPLY #66651 /* ~Podívej se do střední části obchodu.~ */ GOTO 21
  IF ~~ THEN REPLY #66652 /* ~"No, vlastně bych se chtěl podívat na zbraně a amulety..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66653 /* ~"Nějak mě nic nezaujalo. Sbohem, Vrischiko."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 7.1
  SAY #66959 /* ~Vrischika se jenom usmála a ukázala na jeden předmět v přední části obchodu.~ */
  IF ~~ THEN REPLY #66960 /* ~Prozkoumej předmět, na který ti ukázala.~ */ GOTO 29
END
