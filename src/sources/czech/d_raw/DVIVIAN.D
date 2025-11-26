// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIVIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIVIAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 28 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",0)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 0 // from:
  SAY #2999 /* ~Vysoká elegantní žena je se svými ostrými rysy a královským chováním jasný příklad aristokratické krásy. Její šat je zřejmě utkán ze stříbrného vlákna, na jejím náhrdelníku visí malá lahvička. Je navoněná exotickou, erotickou vůní, která tě k ní přitahuje.~ */
  IF ~~ THEN REPLY #3000 /* ~"Zdravím..."~ */ DO ~SetGlobal("Vivian","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #38430 /* ~Nech ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #38431 /* ~Tato vysoká, elegantní žena s ostrými rysy a vznosným chováním, je zářným příkladem aristokratické krásy. Její šaty vypadají, že jsou šité stříbrnou nití a na jejím náhrdelníku se houpe malá lahvička. Je navoněná exotickým, erotickým parfémem, který jako by tě k ní táhnul.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #38434 /* ~Prohlédne si tě a s evidentním opovržením zvedne obočí. "Zdravím. Mé jméno je Vivian; předpokládám, že něco chceš?"~ */
  IF ~~ THEN REPLY #38435 /* ~"Ne, mám jen pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #38436 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.1 7.2 9.2 10.1 12.0 17.0 18.0 19.1 20.1 21.1 22.0 23.0 24.1 25.0 26.0 27.0 28.0 29.2 30.1 37.0 38.0
  SAY #39059 /* ~Přikývne panovačně. "Pokračuj, tedy."~ */
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39060 /* ~"Co tady děláš?"~ */ GOTO 4
  IF ~  GlobalGT("Scent_Quest","AR0605",0)
~ THEN REPLY #39067 /* ~"Co tady děláš?"~ */ GOTO 30
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39068 /* ~"Co je to za neuvěřitelnou vůni?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39069 /* ~"Co je to za lahvičku, co jsi dala do svého náhrdelníku?"~ */ GOTO 20
  IF ~~ THEN REPLY #39070 /* ~"Můžeš mi něco říct o tomto místě?"~ */ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39071 /* ~"Co mi můžeš říct o tiché prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 38
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67850 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 38
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39072 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ JOURNAL #66743 /* ~Zeptal jsem se jedné z prostitutek, jestli neví, zda je Kesai-Serris opravdu Ravelina dcera. Prostitutka mi navrhla, ať se zeptám Juliette. Prý byly dobré přítelkyně, než Juliette potkala Montagua.~ */ GOTO 26
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39073 /* ~"Zkouším najít Marissin Karmínový závoj... nevíš, kde by mohl být?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39074 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 21
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39075 /* ~"Mluvil jsem s devíti prostitutkami najednou... nevíš, kdo nebo kde je desátá studentka?"~ */ GOTO 27
  IF ~~ THEN REPLY #39076 /* ~"Už nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39077 /* ~"Bez ohledu na to, že jsem tady jenom jako studentka? Ve skutečnosti teď něco hledám. Nestalo se ti, že bys tady někde něco cítil, že ne?"~ */
  IF ~~ THEN REPLY #39078 /* ~"Studentka?"~ */ GOTO 5
  IF ~~ THEN REPLY #39079 /* ~"Cítil?"~ */ GOTO 6
  IF ~~ THEN REPLY #39080 /* ~"Ne, nemyslím si..."~ */ GOTO 7
  IF ~~ THEN REPLY #39081 /* ~"Vlastně, nejlepší bude když odejdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #39082 /* ~Vivian přikývne dívajíce se úplně znuděně. "Přesně tak. Učitelka Grace nás učí umění jazyka a konverzace - schopnosti ovlivnit druhé několika slovy a dosáhnout nových porozumění mezi oběma nebo pro každého. Všechny prostitutky zde jsou takové studentky."~ */
  IF ~~ THEN REPLY #39083 /* ~"Ty... se mne ptáš, jestli jsem někde něco necítil?"~ */ GOTO 6
  IF ~~ THEN REPLY #39084 /* ~"Dovol mi zeptal se tě ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39085 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 19.0 20.0
  SAY #39086 /* ~"Ano, měla jsem takovou voňavku, která zdá se... *zmizela.* To je něco... co je pořád potřeba a je to těžké udržet na jednom místě. Doufám, že mi ji někdo neodnesl schválně... ačkoliv nikdy nevíš s těmi 'děvčaty' tady okolo." Šeptá. "Takže... tu byla šance, že bys ji někde ucítil?"~ */
  IF ~~ THEN REPLY #39087 /* ~"Teď voníš docela pěkně i bez ní, víš..."~ */ GOTO 8
  IF ~~ THEN REPLY #39088 /* ~"Jak může voňavka jen tak zmizet?"~ */ GOTO 9
  IF ~~ THEN REPLY #39089 /* ~"Nemyslím si, cítil jsem ji..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2 8.1
  SAY #39090 /* ~"Nešťastná. Bojím se, že ji možná nikdy nenajdu."~ */
  IF ~~ THEN REPLY #39091 /* ~"Jak bys ho poznal, kdybys ji našel?"~ */ GOTO 10
  IF ~~ THEN REPLY #39092 /* ~"Mohu pomoci..."~ */ GOTO 11
  IF ~~ THEN REPLY #39093 /* ~"Dovol mi zeptat se ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39094 /* ~"Hodně štěstí při hledání. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #39095 /* ~Zachmuří se na chvíli, pak se na tebe směje. "Ano, ano, a děkuji ti za tvou poklonu... ale ujišťuji tě, toto částečné aroma je *nic* proti mé osobní vůni." Kouká.~ */
  IF ~~ THEN REPLY #39096 /* ~"Jak může voňavka jen tak zmizet?"~ */ GOTO 9
  IF ~~ THEN REPLY #39097 /* ~"Nemyslím si, že jsem ji někde cítil..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #39098 /* ~Vivian potřásla hlavou. "Nakonec jsem došla k závěru, že mi byla *sebrána.* 'Děvčata' zde jsou někdy trošku závistivá a věděla jsem, že si brávaly některé mé parfémy pro sebe. Nyní, myslím, se někdo navoněl mou vlastní, osobní voňavkou... Pracovala jsem na té voňavce, zdokonalovala ji a nyní *bum!* Je pryč! Nechci být tak rozmrzelá!" Vivian přešlapuje: "Chci tu voňavku zpět a chci ji hned!"~ */
  IF ~~ THEN REPLY #39099 /* ~"Jak bych ji poznal, kdybych ji našel?"~ */ GOTO 10
  IF ~~ THEN REPLY #39100 /* ~"Mohu pomoci..."~ */ GOTO 11
  IF ~~ THEN REPLY #39101 /* ~"Dovol mi se zeptat ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39102 /* ~"Hodně štěstí při hledání. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #39103 /* ~"Poznal bys ji podle vůně, ujišťuji tě. Je zcela výrazná, speciálně pro muže."~ */
  IF ~~ THEN REPLY #39104 /* ~"Mohu ti pomoci..."~ */ GOTO 11
  IF ~~ THEN REPLY #39105 /* ~"Dovol mi zeptat se ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39106 /* ~"Hodně štěstí při hledání. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 9.1 10.0
  SAY #39107 /* ~Vivian vypadá pochybovačně. "Víš to jistě? Nechci ti nic nařizovat."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #39108 /* ~"Žádné nařízení. Je mi potěšením pomoct takové milé ženě jako jsi ty."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Slíbil jsem, že pomůžu Vivian, jedné z prostitutek v Nevěstineci duševních rozkoší, a najdu její 'osobní vůni.' Říkala, že až ji ucítím, tak ji určitě poznám.~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #39109 /* ~"Žádné nařízení. Je mi potěšením pomoct takové milé ženě jako jsi ty."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Slíbil jsem, že pomůžu Vivian, jedné z prostitutek v Nevěstineci duševních rozkoší, a najdu její 'osobní vůni.' Říkala, že až ji ucítím, tak ji určitě poznám.~ */ EXTERN ~DANNAH~ 194
  IF ~~ THEN REPLY #39110 /* ~"Och, žádné nařízení - očekávám odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vivian_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #39111 /* ~"Jestli pochybuješ, pak ti samozřejmě nemohu pomoct."~ */ GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39112 /* ~Vivian se směje a kývne na tebe. "Jsi příliš milý. Velmi... jestli se s ní setkáš, prosím dej mi vědět. Jsem bez ní poněkud nervózní. Je to jedna z mých nejmilejších voňavek, opravdu."~ */
  IF ~~ THEN REPLY #39113 /* ~"Dovol mi se zeptat ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39114 /* ~"Nyní se rozloučím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #39115 /* ~Vivian kroutí očima. "Jako bych od tebe očekávala brutalitu, zkušeného žoldáka. Velmi dobře... vrať mi mou voňavku a budu ti pomáhat s tvou."~ */
  IF ~~ THEN REPLY #39116 /* ~"Mou?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39117 /* ~Po chvíli se na tebe ušklíbne: "Ano, *tvou.* Ten smrdutý, plíživý zápach." Odfrkne si, pak svraští nos. "'Je ve tvé *kůži*, příliš... žádná koupel neodstraní takový zápach."~ */
  IF ~~ THEN REPLY #39118 /* ~"Jak bys to udělala a jaký bych z toho měl užitek?"~ */ GOTO 15
  IF ~~ THEN REPLY #39119 /* ~"Pamatuj si to. Nemrhej mým časem."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39120 /* ~"Odpověď na tvou první otázku. Zajisté potřebuji kouzla - magického charakteru, které nemám teď připravené - které mi dovolí zničit a změnit tvoji vůni."~ */
  IF ~~ THEN REPLY #39121 /* ~"A užitek...?"~ */ GOTO 16
  IF ~~ THEN REPLY #39122 /* ~"Pamatuj si to. Nemrhej mým časem."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39123 /* ~"Prostě nemůžeš popřít fakt, že vůně muže nebo ženy hrají důležitou roli v tom, jak dalece je kdo uznávaný. Ať už jsi říkal ano nebo ne, jsem si zcela jista, že lidé jsou přinejmenším odrazeni tvým smrtelným zápachem. To by mohlo zvýšit tvé charisma, kdybys o trochu lépe voněl, víš."~ */
  IF ~~ THEN REPLY #39124 /* ~"Velmi dobře... Najdu pro tebe tvou voňavku."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~Slíbil jsem, že pomůžu Vivian, jedné z prostitutek v Nevěstineci duševních rozkoší, a najdu její 'osobní vůni.' Říkala, že až ji ucítím, tak ji určitě poznám.~ */ GOTO 17
  IF ~~ THEN REPLY #39125 /* ~"Pamatuj si to. Nemrhej mým časem."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39126 /* ~"Mnoho je uděláno, že. Kdyby ses s ní setkal, dej mi vědět. Jsem bez ní poněkud nervózní. Jedna z nejmilejších voňavek, opravdu."~ */
  IF ~~ THEN REPLY #39127 /* ~"Dovol mi zeptat se ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39128 /* ~"Nyní se rozloučím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 14.1 15.1 16.1
  SAY #39129 /* ~"Velmi dobře. Na tom nezáleží - Jsem přesvědčena, že ji najdu včas, s tvou nebo bez tvé pomoci."~ */
  IF ~~ THEN REPLY #39130 /* ~"Dovol mi zeptat ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39131 /* ~"Nyní se rozloučím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.2
  SAY #39132 /* ~Směje se na tebe. "Děkuji ti za tvou poklonu... ale ujišťuji tě, že toto částečné aroma je nijaké a bezcenné ve srovnání s mou osobní voňavkou." Kouká.~ */
  IF ~~ THEN REPLY #39133 /* ~"Tvá... 'osobní' voňavka?"~ */ GOTO 6
  IF ~~ THEN REPLY #39134 /* ~"Dovol mi se zeptat ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39135 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.3
  SAY #39136 /* ~Vivian se podívá dolů na lahvičku houpající se na jejím hrdle. "Och... toto. To je pouze flakónek vůně. Ujišťuji tě, že toto částečné aroma se nedá srovnat s mou osobní voňavkou." Kouká.~ */
  IF ~~ THEN REPLY #39137 /* ~"Tvá... 'osobní' voňavka?"~ */ GOTO 6
  IF ~~ THEN REPLY #39138 /* ~"Dovol mi zeptat se ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #39139 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.9
  SAY #39140 /* ~"Není nějaká historická postava? Nemohu si přesně vzpomenout. Kdo je to?"~ */
  IF ~~ THEN REPLY #39141 /* ~"Noční čarodějnice ze Sigilské minulosti, myslím."~ */ JOURNAL #66742 /* ~Zeptal jsem se jedné z protitutek na Ravel a ona mi řekla, ať si o ní promluvím s Yves. Yves prý sbírá nejrůznější příběhy, a pravděpodobně ve svém repertoáru bude mít i nějaký o Ravel.~ */ GOTO 22
  IF ~~ THEN REPLY #39142 /* ~"Nemyslím... dovol mi se zeptat ještě na něco...'~ */ GOTO 3
  IF ~~ THEN REPLY #39143 /* ~"Pamatuj si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39144 /* ~"Doufám, že zůstane v minulosti. Noční čarodějnice jsou odporné bytosti, potírající všechnu ženskost všude ve Sférách." Náhle udělá pauzu. "Můžeš se zeptat Yves. Zná všechny druhy podivných malých historek."~ */
  IF ~~ THEN REPLY #39146 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #39147 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.8
  SAY #39148 /* ~"Poznala jsem její místo, zapálila jsem ji a vrhla její ostatky do nejhlubší propasti! Možná, že ta ubohá věc *nikdy* nenajde svůj parádní závoj a bude zavřená v tom sálu po zbytek svých dnů!" Vivian 'povzdechne.'~ */
  IF ~~ THEN REPLY #39149 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #39150 /* ~"Sbohem, tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.4
  SAY #39151 /* ~"Nevěstinec madam Grace? To je škola, kde nás učí umění jazyka a konverzace - schopnost ovlivnit ostatní pomocí několika slov a získat nové pochopení mezi oběma a mezi všemi. Pro většinu to je příprava stát se členem Společenstva Vnímavých."~ */
  IF ~~ THEN REPLY #39152 /* ~" Společenstva Vnímavých?"~ */ GOTO 25
  IF ~~ THEN REPLY #39153 /* ~"Měl jsem další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #39154 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0
  SAY #39155 /* ~Vivian se ohlíží. "Můžeš se zeptat Fall-From-Grace - nebo ještě lépe, někoho z Městské haly - na Vnímavé. Byli by moc rádi, kdyby si s tebou promluvili, jsem si jista."~ */
  IF ~~ THEN REPLY #39156 /* ~"Měl jsem další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #39157 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 3.7
  SAY #39158 /* ~Vivian přikývne, ztlumí hlas. "Také jsem slyšela takovou historku. To by vysvětlovalo červené oči, neobvyklé zabarvení její kůže. Avšak nevím, jestli je takový drb pravda. Zeptej se Juliette -- byla nejlepší přítelkyní Kesai-Serris, ještě než se Juliette zamilovala do Montagua."~ */
  IF ~~ THEN REPLY #39159 /* ~"Měl bych další otázku, pak..."~ */ GOTO 3
  IF ~~ THEN REPLY #39160 /* ~"Sbohem, tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 3.10
  SAY #39161 /* ~"Desátá studentka?" Studuje tě, jako kdyby si nebyla jista, že tě slyšela správně. "Samozřejmě, že jsi dostal příliš mnoho ran do hlavy. Nebo s tebou jedna z dívek sehrála špatnou hru. Neexistuje žádná desátá prostitutka o kteréch bych věděla."~ */
  IF ~~ THEN REPLY #39162 /* ~"Měl bych další otázky, pak..."~ */ GOTO 3
  IF ~~ THEN REPLY #39163 /* ~"Sbohem, tedy."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",1)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 28 // from:
  SAY #39164 /* ~Vivian uznává tvou přítomnost vznosným přikývnutím. Je ještě obklopena vůní svého exotického, erotického parfému, který tě neodolatelně přitahuje směrem k ní.~ */
  IF ~~ THEN REPLY #39165 /* ~"Měl bych další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #39166 /* ~"Právě odcházím. Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 37 even though they appear after this state */
~  Global("Scent_Quest","AR0605",1)
~ THEN BEGIN 29 // from:
  SAY #39167 /* ~Vivian tě zdraví se zdvořilým úsměvem. "Měl jsi štěstí při hledání mé vůně?"~ */
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #39168 /* ~"Ano... Našel jsem ji v tomto červeném závoji..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
GiveItemCreate("CVeil",Protagonist,1,0,0)
AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~Vrátil jsem Vivian její osobní vůni.~ */ GOTO 31
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #39169 /* ~"Mimochodem... Vzpomínám si, že to byla Marissa, kdo ztratil závoj, který jsem jí vrátil. Má tvoji vůni."~ */ DO ~AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~Vrátil jsem Vivian její osobní vůni.~ */ GOTO 35
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39170 /* ~"Ne, ale měl jsem nějaké otázky..."~ */ GOTO 3
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39171 /* ~"Ne, ale budu se držet na dohled. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.1
  SAY #39172 /* ~"Jsem jedna z prostitutek madam Grace - jedna z jejich studentek - zde v Nevěstinci. Pracuji na svém vstupu do Společenstva Vnímavých a moje rodina doporučovala ten spolek jako jednu z možností, jak bych mohla zkusit se podívat do svého vnitřního já, kdybych se chtěla stát členem."~ */
  IF ~~ THEN REPLY #39173 /* ~"Společenstva Vnímavých?"~ */ GOTO 25
  IF ~~ THEN REPLY #39174 /* ~"Měl jsem další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #39175 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #39176 /* ~Vivianiny oči se rozzáří. "Och, jak báječně jednoduché!" Vezme závoj do svých rukou, zamumlá přes něj několik slov a vrátí ti ho. Rozpustí své karmínové vlasy a v momentě jsi obklopen nejintenzivnější exotickou a vtíravou vůní. Vždy jsi měl potěšení z přivonění.~ */
  IF ~  Global("Evil_Vivian_1","GLOBAL",0)
~ THEN REPLY #39177 /* ~"To voní... skvěle..."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39178 /* ~"To voní... skvěle..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 36.0
  SAY #39179 /* ~"Voní, nevoní?" Směje se na tebe. "A když jsi udělal laskavost ty pro mne, tak já chci splnit taky něco tobě. Pojď ke mně blíž, zjizvenče..."~ */
  IF ~~ THEN REPLY #39180 /* ~Přiblížit se k ní.~ */ GOTO 33
  IF ~~ THEN REPLY #39181 /* ~"Ne děkuji; Jsem v pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 34.0
  SAY #39184 /* ~Přicházíš velmi blízko k Vivian; uchopí tě za ruku a otočí ji, a trochu opatrně si přičichne k tvému zápěstí. "Fuj!" Zvráští nos. "Ocet! Nebo... balzamovací tekutina? Nyní z tebe odstraním tento pach..." Zamumlá několik cizích slabik, a světlo, které vnímáš jako brnění, proudí přes tvou kůži. V okamžiku se tvůj chemický puch podstatně snížil. "Tak - jaké to je? Lidé by se nyní měli méně vyhýbat konverzaci s tebou."~ */
  IF ~~ THEN REPLY #39185 /* ~"Děkuji, Vivian. Sbohem."~ */ DO ~PermanentStatChange(Protagonist,CHR,RAISE,1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1 36.1
  SAY #39186 /* ~"Voní, nevoní?" Vivianin úsměv náhle zmizel. "Nu, patrně budeš chtít svou odměnu nyní. Přistup blíž, zjizvenče..."~ */
  IF ~~ THEN REPLY #39187 /* ~Přiblížil ses k ní.~ */ GOTO 33
  IF ~~ THEN REPLY #39188 /* ~"Ne děkuji; Jsem v pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.1
  SAY #39189 /* ~Na malou chvíli Vivianiny oči vzplanuly zuřivostí. "*Má*, nemá? Uvidíme. Nehýbej se; vrátím se brzy."~ */
  IF ~~ THEN REPLY #39190 /* ~Čekej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39191 /* ~"Tady! Se to vyřeší! Ta odporná čarodějnice... vždy krade mé parfémy, ale nikdy jsem si nemyslela, že by mohla mít odvahu ukrást mou vlastní, osobní vůni. Hmph!" Náhle rozpustí své karmínové vlasy a v momentě jsi obklopen nejintenzivnější exotickou a vtíravou vůní. Měl jsi vždy potěšení z přivonění.~ */
  IF ~  !Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39192 /* ~"To voní... skvěle..."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39193 /* ~"To voní... skvěle..."~ */ GOTO 34
END

IF WEIGHT #0 ~  Global("Scent_Quest","AR0605",2)
~ THEN BEGIN 37 // from:
  SAY #39194 /* ~Vivian se otočí, aby tě přivítala. Dokonce i její vznosná krása je potlačena nádherou vtíravé erotické vůně, která jí obklopuje... její exotické 'osobní vůně', kterou jsi znovu získal pro ni.~ */
  IF ~~ THEN REPLY #39195 /* ~"Měl bych na tebe otázku, Vivian..."~ */ GOTO 3
  IF ~~ THEN REPLY #39196 /* ~"Právě odcházím. Sbohem, Vivian."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 3.5 3.6
  SAY #39197 /* ~"Myslíš Ecco? Je milá. Tichá." Vivian se zamračí. "To může být součást půvabu. To je všechno způsob spekulace jako to, proč je tichá, ale nemyslím si, že by bylo tak těžké získat její srdce. Dolora může vědět více. Je známá mluvením s mužem, jehož Ecco milovala dřív, než jí byl ukraden hlas."~ */
  IF ~~ THEN REPLY #39199 /* ~"Mám další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #52814 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
