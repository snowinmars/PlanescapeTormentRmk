// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAWAIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAWAIT~

IF ~  Global("Await","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1788 /* ~Před tebou stojí mladý Spalovač se strništěm na bradě a tmavými kruhy pod očima. Kouká do zdi se zasmušilým výrazem. ~ */
  IF ~~ THEN REPLY #14076 /* ~"Zdravím."~ */ DO ~SetGlobal("Await","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #14077 /* ~Nechej ho být.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #1789 /* ~Vidíš Smrtichtivého. Nevypadá, že by si tě všiml.~ */
  IF ~~ THEN REPLY #14078 /* ~"Zdravím."~ */ GOTO 3
  IF ~~ THEN REPLY #14079 /* ~Ignoruj jej a jdi dál.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #14007 /* ~Jakmile ses přiblížil, Smrtichtivý se k tobě otočil. "Opět tě zdravím." Do jeho tváře se vloudil úsměv. "Děkuji ti za pomoc."~ */
  IF ~~ THEN REPLY #14080 /* ~"Bylo mi potěšením. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #14008 /* ~Spalovač se neohlíží. Civí přímo před sebe, jako kdyby se díval na něco několik mil za zdmi baru.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",0)
~ THEN REPLY #14081 /* ~"Můžu se tě zeptat na pár otázek?"~ */ DO ~SetGlobal("Morte_Await_Quip_1","GLOBAL",1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",1)
~ THEN REPLY #14082 /* ~"Můžu se tě zeptat na pár otázek?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #14083 /* ~"Můžu se tě zeptat na pár otázek?"~ */ GOTO 5
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14084 /* ~"Sbohem."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14085 /* ~"Sbohem."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14086 /* ~"Sbohem."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14087 /* ~"Sbohem."~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14009 /* ~Spalovač neodpovídá. Stále se dívá do dálky.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 168
END

IF ~~ THEN BEGIN 5 // from: 3.1 3.2
  SAY #14010 /* ~Spalovač neodpovídá. Stále se dívá do dálky.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14088 /* ~"Tak sbohem."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14089 /* ~"Tak sbohem."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14090 /* ~"Tak sbohem."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14091 /* ~"Tak sbohem."~ */ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 3.3 3.4 3.5 5.0 5.1 5.2
  SAY #14011 /* ~Jak ses otočil k odchodu, Spalovač náhle promluvil, téměř šeptem -- musíš se snažit, abys slyšel slova. *Domníváš* se, že řekl cosi o nějaké smlouvě.~ */
  IF ~~ THEN REPLY #14092 /* ~"Co jsi říkal?"~ */ GOTO 7
  IF ~~ THEN REPLY #14093 /* ~Ignoruj jej a jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14012 /* ~Spalovač se k tobě otočil, jeho tvář má kamenný výraz a oči jsou mrtvé. "Proč jsi uzavřel tu Smrtelnou smlouvu?"~ */
  IF ~~ THEN REPLY #14094 /* ~Pravda: "Potřeboval jsem peníze."~ */ GOTO 8
  IF ~~ THEN REPLY #14095 /* ~Pravda: "Chtěl jsem zjistit, zda mi to osvěží paměť."~ */ GOTO 9
  IF ~~ THEN REPLY #14096 /* ~Pravda: "No, když jsem zvážil, že si se smrtí už netykáme, tak jsem usoudil, že to pro mě nemůže být prodělečná záležitost."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #14097 /* ~Pravda: "Upřímně řečeno, přesně nevím."~ */ GOTO 11
  IF ~~ THEN REPLY #14098 /* ~"Co je ti do toho?"~ */ GOTO 16
  IF ~~ THEN REPLY #14099 /* ~"Do toho ti nic není. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14013 /* ~Vypadá znechuceně. "Prachy. Očekával jsem něco víc."~ */
  IF ~~ THEN REPLY #14100 /* ~"A co bych tím měl sledovat"~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #14014 /* ~"Oživit svou paměť?" Zamračí se. "A nevzpomenout si na nic kromě tohoto života, co jsi opustil?"~ */
  IF ~~ THEN REPLY #14101 /* ~"A co bych tím měl sledovat"~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #14015 /* ~Dívá se na tebe s podivným výrazem. "Co tím myslíš?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14102 /* ~"Viděl jsem, co leží za smrtí."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14103 /* ~"Nevím. Ještě se budu muset podívat, co je po smrti a zapamatovat si to. Až zase zemřu, pak ti o tom možná budu moci vyprávět."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14104 /* ~"Už jsem jednou zemřel. Ale nic moc si z toho nepamatuji."~ */ GOTO 59
  IF ~~ THEN REPLY #14105 /* ~"Prostě jsem ji podepsal. Ber to jako předtuchu."~ */ GOTO 57
  IF ~~ THEN REPLY #14106 /* ~"Zapomeň na to. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #14016 /* ~Spalovač *odkašlává*. "Tak ty jsi prodal své tělo bez myšlení, bez rozmyslu... a toť vše? Nehledal jsi nic jiného?"~ */
  IF ~~ THEN REPLY #14107 /* ~"Jako třeba..?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0 11.0
  SAY #14017 /* ~"Vysvobození? Vysvobození z této existence. Podívej... jistě jsi viděl ta těla chodící ulicemi Sigilu?" Vzdychne. "Bezduchá, neschopná vnímat bolest nebo hněv nebo tíhu let... to je Pravá smrt, která tam kráčí. To je dokonalost."~ */
  IF ~~ THEN REPLY #14108 /* ~"Proč by měl někdo chtít něco takového?"~ */ GOTO 13
  IF ~~ THEN REPLY #14109 /* ~"'Dokonalost?' Nech toho. Není to nic než hnijící maso."~ */ GOTO 14
  IF ~~ THEN REPLY #14110 /* ~"Nejsi starý, jsi prostě ignorant. Máš život před sebou bez vyhledávání smrti. Smrt tě přijde hledat dostatečně brzy, takže žij, dokud můžeš.~ */ GOTO 24
  IF ~~ THEN REPLY #14111 /* ~"Snad ano; ale já bych to tak neřekl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #14018 /* ~"Já ano -- vysvobození je to, po čem toužím. Prázdnotu. Už žádnou bolest a strádání."~ */
  IF ~~ THEN REPLY #14112 /* ~"Ty si přeješ zemřít?"~ */ GOTO 22
  IF ~~ THEN REPLY #14113 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #14019 /* ~"*Skutečně*? Ty vidíš jen povrch, já vidím vysvobození z bolesti a utrpení."~ */
  IF ~~ THEN REPLY #14114 /* ~"Ty si přeješ zemřít?"~ */ GOTO 22
  IF ~~ THEN REPLY #14115 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.6 5.3
  SAY #14020 /* ~Jak ses otočil k odchodu, Spalovač náhle promluvil, téměř šeptem -- musíš se snažit, abys slyšel slova. *Domníváš* se, že řekl cosi o přání smrti.~ */
  IF ~~ THEN REPLY #14116 /* ~"Co jsi říkal?"~ */ GOTO 16
  IF ~~ THEN REPLY #14117 /* ~Ignoruj jej a jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.4 15.0
  SAY #14021 /* ~Hoch ani nemrknul. "Chceš zemřít?"~ */
  IF ~~ THEN REPLY #14118 /* ~Pravda: "Ne. Ty ano?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",1)
~ GOTO 19
  IF ~~ THEN REPLY #14120 /* ~Pravda: "Ano. A ty?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #14121 /* ~Lež: "Ano. A ty?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_3","GLOBALLaw",-1)
SetGlobal("Await_Die_Answer","GLOBAL",4)
~ GOTO 18
  IF ~~ THEN REPLY #14122 /* ~"Opravdu nevím. A *ty* chceš zemřít?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",5)
~ GOTO 22
  IF ~~ THEN REPLY #14123 /* ~"*Vyhrožuješ* mi, chlapče?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #14124 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.4
  SAY #14022 /* ~Mrknul. "Ano... ano, vyhrožuji. Proč, chceš mě zabít?" Zbystřel, jako by činil rozhodnutí. "Do toho, mě na tom nezáleží."~ */
  IF ~~ THEN REPLY #14125 /* ~"Jestli je to tvoje přání, budu ho ctít... připrav se na smrt."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14126 /* ~"Ty *chceš* zemřít?"~ */ GOTO 22
  IF ~~ THEN REPLY #14127 /* ~"Ne, je mi to jedno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2
  SAY #14023 /* ~"Ano..." Studuje tě. "Proč chceš zemřít?"~ */
  IF ~~ THEN REPLY #14128 /* ~Pravda: "K čemu je žití? Jsem uvězněn v tomto městě plném šelem a monster bez jediné vzpomínky na to, jak jsem se sem dostal a proč. Jsem cizincem jak pro město, tak sám pro sebe. Život pro mě nemá žádnou cenu."~ */ GOTO 20
  IF ~~ THEN REPLY #14129 /* ~Pravda: "Protože je mi to odepřeno. Už jen toto mě nutí toužit po smrti."~ */ GOTO 20
  IF ~~ THEN REPLY #14130 /* ~Pravda: "Je něco... co uvnitř mne chybí. Jsem tady a mluvím s tebou, ale přesto se cítím uvnitř jaksi prázdný. Ať dělám co dělám, nemůžu se toho pocitu zbavit. Myslím, že smrt by mohla být lepší."~ */ GOTO 20
  IF ~~ THEN REPLY #14131 /* ~Pravda: "Myslím, že je možné, abych se o sobě ve smrti dozvěděl něco, co v životě nemohu."~ */ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",3)
~ THEN REPLY #14132 /* ~Pravda: "Lhal jsem, když jsem ti řekl, že chci zemřít. Kdo chce? Ty ano?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_7","GLOBALLaw",-2)
~ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",4)
~ THEN REPLY #14133 /* ~Pravda: "Lhal jsem, když jsem ti řekl, že chci zemřít. Kdo chce? Ty ano?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_2","GLOBALLaw",1)
~ GOTO 20
  IF ~~ THEN REPLY #14282 /* ~"O tom s tebou nechci diskutovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #14024 /* ~"Ano..." Studuje tě. "Proč chceš žít?"~ */
  IF ~~ THEN REPLY #14134 /* ~Pravda: "Prostě chci."~ */ GOTO 20
  IF ~~ THEN REPLY #14135 /* ~Pravda: "Pud sebezáchovy. *Chci* žít."~ */ GOTO 20
  IF ~~ THEN REPLY #14136 /* ~Pravda: "Ještě nechci upadnout do zapomnění. Být naživu se mi líbí *mnohem* víc."~ */ GOTO 20
  IF ~~ THEN REPLY #14137 /* ~Pravda: "Jsou jisté otázky ohledně mého života, na které musím najít odpověď před tím, než budu ochoten to vzdát. Chci zjistit, kdo jsem."~ */ GOTO 20
  IF ~~ THEN REPLY #14138 /* ~"Nevím."~ */ GOTO 21
  IF ~~ THEN REPLY #14139 /* ~"O tom s tebou nechci diskutovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0 18.1 18.2 18.3 18.4 18.5 19.0 19.1 19.2 19.3
  SAY #14025 /* ~Spalovač tiše naslouchá. Nereaguje, jak jsi domluvil, prostě se na tebe dívá. Vypadá, jako by přemýšlel.~ */
  IF ~~ THEN REPLY #14140 /* ~"Ty chceš zemřít? Proto ses ptal?"~ */ GOTO 22
  IF ~~ THEN REPLY #14141 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.4
  SAY #14026 /* ~Spalovač sklopil zrak a ztichl. "Pak se spolu nemáme o čem bavit... teď nebo jindy. Sbohem."~ */
  IF ~~ THEN REPLY #14142 /* ~"Než půjdu... jak se stalo, že chceš zemřít?"~ */ GOTO 23
  IF ~~ THEN REPLY #14143 /* ~"Tedy sbohem."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.0 16.3 17.1 20.0
  SAY #14027 /* ~"Ano."~ */
  IF ~~ THEN REPLY #14144 /* ~"Proč chceš zemřít?"~ */ GOTO 23
  IF ~~ THEN REPLY #14145 /* ~"Proč nechceš žít?"~ */ GOTO 24
  IF ~~ THEN REPLY #14146 /* ~"Tak proč ses tedy už dávno nezabil sám?"~ */ GOTO 42
  IF ~~ THEN REPLY #14147 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 44.1 45.2 55.0 56.1 62.2
  SAY #14028 /* ~"Tato existence... tato existence je výsměch životu. Nechci už dál pokračovat v této šarádě." Jeho obličej se zkřivil znechucením. "Proč by měl kdokoliv zůstávat v tomto bídném městě v centru mnohovesmíru, které ho zásobuje bolestí a nenávistí? Smrt... je tichá... útěšná."~ */
  IF ~~ THEN REPLY #14148 /* ~"Život určitě nemůže být tak špatný, jak se ti zdá."~ */ GOTO 24
  IF ~~ THEN REPLY #14149 /* ~"To jsou pochmurné vyhlídky... na životě je mnohem víc než bolest a zášť."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Await_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #14150 /* ~"Tak proč ses tedy už dávno nezabil sám?"~ */ GOTO 42
  IF ~~ THEN REPLY #14151 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.2 22.1 23.0 23.1
  SAY #14029 /* ~"Toto je *život*?" Vycenil zuby a zaťal pěsti. "Tato existence... tato existence je *výsměch* životu. Nechci už dál pokračovat v této šarádě. Smrt je tichá... útěšná."~ */
  IF ~~ THEN REPLY #14152 /* ~"Věř mi, není."~ */ GOTO 25
  IF ~~ THEN REPLY #14153 /* ~"Možná po první smrti."~ */ GOTO 58
  IF ~~ THEN REPLY #14154 /* ~"Tak proč ses tedy už dávno nezabil sám?"~ */ GOTO 42
  IF ~~ THEN REPLY #14155 /* ~"Jestliže pro tebe tento život nic neznamená, pak bys měl zemřít."~ */ GOTO 42
  IF ~~ THEN REPLY #14156 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14030 /* ~Hoch vypadá tou poznámkou podrážděný. "A jak to víš?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14157 /* ~"Viděl jsem, co leží za smrtí."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14158 /* ~"Nevím. Ještě se budu muset podívat, co je po smrti a zapamatovat si to. Až zase zemřu, pak ti o tom možná budu moci vyprávět."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14159 /* ~"Už jsem jednou zemřel. Ale nic moc si z toho nepamatuji."~ */ GOTO 59
  IF ~~ THEN REPLY #14160 /* ~"Prostě jsem ji podepsal. Ber to jako předtuchu."~ */ GOTO 57
  IF ~~ THEN REPLY #14161 /* ~"Zapomeň na to. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 10.0 25.0 57.2 58.3
  SAY #14031 /* ~Hoch tě pozoruje. "Mluvíš pravdivě." Dívá se na tebe se zájmem. "Co tam je? Co jsi viděl?"~ */
  IF ~~ THEN REPLY #14162 /* ~Pravda: "Ležel jsem na ostrově, osamoceném nad oceánem rozlehlé temnoty. Ten ostrov sestával ze zašlých kamenů... ale *nebyly* to kameny, protože ke mně mumlaly a šeptaly řečí, které jsem nebyl schopen porozumět. Není tam žádné ticho, žádná útěcha, chlad se tam noří pod maso a zavrtává se do kostí."~ */ GOTO 31
  IF ~~ THEN REPLY #14163 /* ~"Nikomu o tom místě nic neřeknu. Už jsem řekl příliš mnoho."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #14032 /* ~"*Musíš* mi to říct! Musím to vědět!"~ */
  IF ~~ THEN REPLY #14164 /* ~Pravda: "Ležel jsem na ostrově, osamoceném nad oceánem rozlehlé temnoty. Ten ostrov tvořily zašlé kameny... ale *nebyly* to kameny, protože ke mně mumlaly a šeptaly řečí, které jsem nedokázal porozumět. Není tam žádné ticho, žádná útěcha, chlad se tam noří pod maso a zavrtává se do kostí."~ */ GOTO 31
  IF ~~ THEN REPLY #14165 /* ~"Neřeknu ti nic."~ */ GOTO 28
  IF ~~ THEN REPLY #14166 /* ~"Nebudu o tom mluvit. Sbohem."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #14033 /* ~"Musíš mi to povědět!" Zaťal pěsti. "Čeho bys ode mne *žádal*?!"~ */
  IF ~~ THEN REPLY #14167 /* ~"Požadoval bych, abys žil."~ */ GOTO 29
  IF ~~ THEN REPLY #14168 /* ~"Nic neposkytnu a ničeho od tebe nežádám. Sbohem."~ */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14034 /* ~"Vysmíváš se mi, pane. Děláš si blázny z mých otázek..."~ */
  IF ~~ THEN REPLY #14169 /* ~"*Ty* jsi blázen, že chceš zahodit svůj život tak bezhlavě. Uráží to smrt a uráží to žití."~ */ GOTO 30
  IF ~~ THEN REPLY #14170 /* ~"Už si nemáme co říct. Sbohem."~ */ GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14035 /* ~"Pověz co jsi viděl! Co je Pravá smrt?! Co jsi tam viděl?" Jeho hlas nabývá na hlasitosti a naléhavosti, až se okolní Spalovači ohlédli.~ */
  IF ~~ THEN REPLY #14171 /* ~Pravda: "Ležel jsem na ostrově, osamoceném nad oceánem rozlehlé temnoty. Ten ostrov tvořily zašlé kameny... ale *nebyly* to kameny, protože ke mně mumlaly a šeptaly řečí, které jsem nedokázal porozumět. Není tam žádné ticho, žádná útěcha, chlad se tam noří pod maso a zavrtává se do kostí."~ */ GOTO 31
  IF ~~ THEN REPLY #14172 /* ~Lež: "Je to zapomnění. Nic tam není. Je to neexistence."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_2","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #14173 /* ~Lež: "Je to místo velkého štěstí, nebeské krásy. Je to místo, kde duše může být šťastná."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_3","GLOBALGood",-1)
~ GOTO 35
  IF ~~ THEN REPLY #14174 /* ~"Neřeknu. Sbohem."~ */ GOTO 36
END

IF ~~ THEN BEGIN 31 // from: 26.0 27.0 30.0
  SAY #14036 /* ~"Není rozdílu..." Dívá se dolů na podlahu a se zvláštním výrazem se kouše do rtů. "Za stíny této existence čeká další strádání. Není žádného zapomnění, žádné očisty... nic se nezmění. Sféry se točí... a nikdy se nic nezmění."~ */
  IF ~~ THEN REPLY #14175 /* ~"Kromě tebe. Ty se ještě můžeš změnit."~ */ GOTO 32
  IF ~~ THEN REPLY #14176 /* ~"Jestli tomu věříš, pak to bude pravda."~ */ GOTO 33
  IF ~~ THEN REPLY #14177 /* ~"Už musím jít. Sbohem."~ */ GOTO 36
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #14037 /* ~Vysmál se. "Ale kdež, zkoušel jsem to. Opakovaně."~ */
  IF ~~ THEN REPLY #14178 /* ~"Jestli tomu věříš, pak to bude pravda."~ */ GOTO 33
  IF ~~ THEN REPLY #14179 /* ~"Pak už není co říct. Půjdu."~ */ GOTO 36
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #14038 /* ~"Je to víc než víra, je to realita." Jeho zrak potemněl. "Viděl jsi tohle město? Hnije a vše v něm hnije s ním... není žádné naděje, nic, oč *usilovat*. Vše je poskvrněné temnotou a stíny."~ */
  IF ~~ THEN REPLY #14180 /* ~"Co třeba tvá víra jakožto Spalovače? Není to dostatečně vhodný cíl?"~ */ GOTO 37
  IF ~~ THEN REPLY #14181 /* ~"Pak už není co říct. Půjdu."~ */ GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #14039 /* ~"Jak jsem očekával." Vzdychl. "Pak to tedy bude lepší místo než zde. A jelikož musím zemřít, abych se tam dostal..." Dívá se na tebe. "Pomůžeš mi zemřít?"~ */
  IF ~~ THEN REPLY #14182 /* ~"Ne."~ */ GOTO 43
  IF ~~ THEN REPLY #14183 /* ~"Ano."~ */ GOTO 44
  IF ~~ THEN REPLY #14184 /* ~"Záleží na tom... kolik?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14185 /* ~"Jestli nemáš dostatek jistoty se zabít, pak to pro tebe já neudělám."~ */ GOTO 55
  IF ~~ THEN REPLY #14186 /* ~"Ne... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.2
  SAY #14040 /* ~Spalovač se lehce usmál, pak jeho rysy zahalila stísněnost. "Pak *musím* zemřít." Dívá se na tebe pln naděje. "Pomůžeš mi?" ~ */
  IF ~~ THEN REPLY #14187 /* ~"Ne."~ */ GOTO 43
  IF ~~ THEN REPLY #14188 /* ~"Ano."~ */ GOTO 44
  IF ~~ THEN REPLY #14189 /* ~"Záleží na tom... kolik?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14190 /* ~"Jestli nemáš dostatek jistoty se zabít, pak to pro tebe já neudělám."~ */ GOTO 55
  IF ~~ THEN REPLY #14191 /* ~"Ne... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.1 30.3 31.2 32.1 33.1
  SAY #14041 /* ~Chvíli na tebe civěl, otevřel ústa a zase je zavřel. "Odejdi tedy. Už spolu více nepromluvíme."~ */
  IF ~~ THEN REPLY #14192 /* ~Odejdi.~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.0
  SAY #14042 /* ~Přikývl. "Filozofie Spalovačů je dobrý cíl. Jinak bych se nestal jedním z nich."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14193 /* ~"Pak si dej pozor na toto: Jsi příliš dychtivý dosáhnout zapomnění. Podle zásad Spalovačů to je právě dychtivost, která ti navždy zabrání dosáhnout Pravé Smrti."~ */ GOTO 38
  IF ~~ THEN REPLY #14194 /* ~"Tak proč neučinit tuto víru ve Spalovače smyslem? Možná je tento život bolest a utrpení, ale když se zaměříš na svou víru, která pro tebe má hodnotu, pak ti to pomůže překonat."~ */ GOTO 40
  IF ~~ THEN REPLY #14195 /* ~"Pak už není co říct. Půjdu."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #14043 /* ~Zabručel. "Mluvíš jako někdo z našich představených... nikdy mi nepřestanou dělat *kázání*..."~ */
  IF ~~ THEN REPLY #14196 /* ~"A dělají správně -- mají na srdci jen tvé přání zemřít. Jestli chceš dosáhnout Pravé Smrti, pak se nejdřív musíš vyrovnat s tímto životem bez ohledu na to, jak bolestivý se ti zdá být. To je příležitost a ty jsi ještě mladý. Snad až ze života uvidíš více, tak to uklidní tvou nedočkavost po smrti."~ */ GOTO 39
  IF ~~ THEN REPLY #14197 /* ~"Pak bych ti už dál dávat kázání neměl. Sbohem."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #14044 /* ~"Ale jak..." Vypadá zmateně. "Jak tomu mám čelit?"~ */
  IF ~~ THEN REPLY #14198 /* ~"Prostě zkus žít jak nejlépe dovedeš. Ber tento život, jakkoliv bolestivý, jako příležitost. Jsi mladý. Snad až ze života uvidíš více, tak to uklidní tvou nedočkavost po smrti."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14199 /* ~"Musíš snášet tento život. Vytrváním se naučíš nevšímat si bolesti a strádání. Brzy tě nebudou ovlivňovat vůbec a pak začneš dělat pokroky směrem k Pravé Smrti a zapomnění, které hledáš."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14200 /* ~"To je na tobě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #14045 /* ~"Snad..." Uvažuje nad tím, co jsi řekl. "Snad máš pravdu. Ale... někdy je těžké nevšímat si bolesti tohoto života. "Jak tomu mám čelit?"~ */
  IF ~~ THEN REPLY #14201 /* ~"Prostě zkus žít jak nejlépe dovedeš. Ber tento život, jakkoliv bolestivý, jako příležitost. Jsi mladý. Snad až ze života uvidíš více, tak to uklidní tvou nedočkavost po smrti."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14202 /* ~"Musíš snášet tento život. Vytrváním se naučíš nevšímat si bolesti a strádání. Brzy tě nebudou ovlivňovat vůbec a pak začneš dělat pokroky směrem k Pravé Smrti a zapomnění, které hledáš."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14203 /* ~"Celé naše životy strávíme hledáním toho, jak zemřít. Jenom ty sám můžeš odpovědět na otázku, kterou si kladeš."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",3)
~ GOTO 41
  IF ~~ THEN REPLY #14204 /* ~"To je na tobě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0 39.1 40.0 40.1 40.2 69.0
  SAY #14046 /* ~Hoch ztichl a přemýšlí. Nakonec se otočí zpět k tobě. "Tvá slova mají hloubku, pane... a novou perspektivu. Učiním tak, jak jsi řekl."~ */
  IF ~~ THEN REPLY #14205 /* ~"To je vše, co žádám... žij, zestárni a uč se. Sbohem."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.2 23.2 24.2 24.3
  SAY #14047 /* ~"Hledal jsem způsoby, jak svůj život ukončit. Zabiješ mě?"~ */
  IF ~~ THEN REPLY #14206 /* ~"Ne."~ */ GOTO 43
  IF ~~ THEN REPLY #14207 /* ~"Ano."~ */ GOTO 44
  IF ~~ THEN REPLY #14208 /* ~"Záleží na tom... kolik?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14209 /* ~"Jestli nemáš dostatek jistoty se zabít, pak to pro tebe já neudělám."~ */ GOTO 55
  IF ~~ THEN REPLY #14210 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.0 35.0 38.1 42.0 44.2 45.3 55.1 56.2
  SAY #14048 /* ~"Dobrá. Jdi. Už spolu více nepromluvíme."~ */
  IF ~~ THEN REPLY #14211 /* ~"Tedy sbohem."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 34.1 35.1 42.1
  SAY #14049 /* ~Vydechnul úlevou a pak z hábitu vytáhl váček.
*Cinklo* to, jak jej položil před sebe. "Udělej to teď. Už nemůžu déle čekat."~ */
  IF ~~ THEN REPLY #14212 /* ~"Dobře... zavři oči."~ */ GOTO 45
  IF ~~ THEN REPLY #14213 /* ~"Počkej... nechci tvoje peníze. Chci vědět, proč chceš zemřít."~ */ GOTO 23
  IF ~~ THEN REPLY #14214 /* ~"Neudělám to. Sbohem."~ */ GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 44.0 56.0
  SAY #14050 /* ~Zavřel oči.~ */
  IF ~~ THEN REPLY #14215 /* ~Natáhni ruce k jeho krku a začni jej škrtit.~ */ GOTO 47
  IF ~~ THEN REPLY #14216 /* ~Seber peníze a rychle odejdi.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_5","GLOBALGood",-1)
~ GOTO 46
  IF ~~ THEN REPLY #14217 /* ~"Nechej si peníze. Chci vědět, proč chceš zemřít."~ */ GOTO 23
  IF ~~ THEN REPLY #14218 /* ~"Neudělám to. Sbohem."~ */ GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #14051 /* ~Opatrně jsi sebral váček ze země a rychle jsi odešel -- v pytlíku by mohlo být tak kolem padesáti měďáků. Jak jsi poodstoupil, Spalovač zůstal stát, oči zavřené a bez hnutí.~ */
  IF ~~ THEN REPLY #14219 /* ~"Obsah tohoto váčku je cena za tvou pošetilost. Sbohem..."~ */ DO ~GivePartyGold(50)
SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0
  SAY #14052 /* ~Dal jsi mu ruce kolem krku a začal jsi pomalu svírat. Vydal přidušený vzdech, jeho oči se doširoka otevřely -- s prosebným výrazem, začal se sápat po tvých rukou.~ */
  IF ~~ THEN REPLY #14220 /* ~Zlomit mu vaz.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
IncrementGlobalOnceEx("GLOBALChaotic_Await_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_6","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #14221 /* ~Pusť jej.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #14053 /* ~Chtěl jsi pokračovat ve rdoušení, když najednou, ačkoliv jsi to neměl v úmyslu, jsi sundal ruce z jeho krku. Smrtichtivý se nadechl -- a vypadá, jako by ti už už chtěl poděkovat za to, že jsi přestal -- když tu jsi položil ruce na jeho skráně a škubl jeho hlavou prudce doleva. Ozvalo se *prasknutí* a chlapec ti bezvládně padl do náručí.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14222 /* ~"Nashle na druhé straně, Spálo..."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 49
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14223 /* ~"Nashle na druhé straně, Spálo..."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14054 /* ~Akt se k tvému překvapení zdál být instinktivní, jakoby jsi to už dělal mnohokrát předtím... s touto myšlenkou vyvstal v tvé paměti rozruch, ale nebyl dost silný na to, aby vyplaval na povrch.~ */
  IF ~~ THEN REPLY #14224 /* ~Nechej chlapcovo tělo spadnout na zem.~ */ DO ~GiveExperience(Protagonist,250)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.0
  SAY #14055 /* ~Jak tělo padlo na zem, rozlehl se najednou celým barem mohutný burácející hluk...~ */
  IF ~~ THEN REPLY #14225 /* ~"Ojoj..."~ */ DO ~Help()
Kill(Myself)
Deactivate(Myself)
GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.1
  SAY #14056 /* ~Pustil jsi jej... a k tvému znepokojení jsi tak učinil neochotně. Hoch lapá po dechu a těžce kašle.~ */
  IF ~~ THEN REPLY #14226 /* ~"Rozmyslel sis to?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14057 /* ~Hoch znaveně přikývne.~ */
  IF ~~ THEN REPLY #14227 /* ~"Podívej... až budeš příště chtít 'zemřít', tak by sis měl být zatraceně jist, protože další chlápek by přestat nemusel, až ho poprosíš. A teď přestaň plést něco o bídě života, když očividně ještě stále chceš být jeho součástí."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #14058 /* ~Hoch se na tebe tiše dívá, pak pomalu kývne a mne si krk.~ */
  IF ~~ THEN REPLY #14228 /* ~"Peníze si nechám jako odměnu za tuto lekci."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_6","GLOBALLaw",-1)
GivePartyGold(50)
~ GOTO 54
  IF ~~ THEN REPLY #14229 /* ~"Nesplnil jsem svou část dohody, takže si peníze nechej."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_1","GLOBALLaw",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1
  SAY #14059 /* ~Hoch znovu přikývl a konečně popadl dech. "Tak... dobře. Děkuji... ti, pane. Že jsi mi dal... novou perspektivu."~ */
  IF ~~ THEN REPLY #14230 /* ~"Neděkuj mi, prostě *žij*. Uráží to smrt, když se životem nakládáš nedbale. Sbohem."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 34.3 35.3 42.3
  SAY #14060 /* ~"To není záležitost jistoty..."~ */
  IF ~~ THEN REPLY #14231 /* ~"Pak to musí být záležitost něčeho jiného. Takže se ptám: Co na tomto životě tě přimělo jej nenávidět?" ~ */ GOTO 23
  IF ~~ THEN REPLY #14232 /* ~"Je. Kdybys chtěl skutečně zemřít, pak by sis už k tomu našel nějaké prostředky. Nemrhej už čas planým tlacháním. Sbohem."~ */ GOTO 43
END

IF ~~ THEN BEGIN 56 // from: 34.2 35.2 42.2
  SAY #14061 /* ~Hodil na stůl malý váček. "V tomto váčku je vše, co vlastním. Padesát měďáků. Zabij mne a je tvůj."~ */
  IF ~~ THEN REPLY #14233 /* ~"Dobrá... zavři oči."~ */ GOTO 45
  IF ~~ THEN REPLY #14234 /* ~"Počkej... nechci tvoje peníze. Chci vědět, proč chceš zemřít."~ */ GOTO 23
  IF ~~ THEN REPLY #14235 /* ~"Neudělám to. Sbohem."~ */ GOTO 43
END

IF ~~ THEN BEGIN 57 // from: 10.3 25.3
  SAY #14062 /* ~Spalovač se posmívá. "To nezní moc přesvědčivě."~ */
  IF ~~ THEN REPLY #14236 /* ~"Tak to zkus a zabij mě. Uvidíš, co se stane."~ */ GOTO 62
  IF ~~ THEN REPLY #14237 /* ~"Můžu to dokázat."~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14238 /* ~"Viděl jsem, co leží za smrtí."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14239 /* ~"Nevím. Ještě se budu muset podívat, co je po smrti a zapamatovat si to. Až zase zemřu, pak ti o tom možná budu moci vyprávět."~ */ GOTO 59
  IF ~~ THEN REPLY #14240 /* ~"Řekl bych, že jediný, kdo tu lže jsi ty, a to sám sobě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 24.1
  SAY #14063 /* ~Spalovač zamrká a pak se ušklíbne. "První smrt? Cože, byl jsi vzkříšen?"~ */
  IF ~~ THEN REPLY #14241 /* ~"Vzkříšen?"~ */ GOTO 60
  IF ~~ THEN REPLY #14242 /* ~"Tak to zkus a zabij mě. Uvidíš, co se stane."~ */ GOTO 62
  IF ~~ THEN REPLY #14243 /* ~"Chtěl bys to vidět?"~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14244 /* ~"Viděl jsem, co leží za smrtí."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14245 /* ~"Nevím. Ještě se budu muset podívat, co je po smrti a zapamatovat si to. Až zase zemřu, pak ti o tom možná budu moci vyprávět."~ */ GOTO 59
  IF ~~ THEN REPLY #14246 /* ~"Jestli někdy zemřu a budu si z toho něco pamatovat, vrátím se a budu ti o tom vyprávět. Pak můžeš posoudit, jestli lžu nebo ne. Sbohem."~ */ GOTO 59
  IF ~~ THEN REPLY #14247 /* ~"Řekl bych, že jediný, kdo tu lže jsi ty, a to sám sobě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1 10.2 25.1 25.2 57.3 58.4 58.5
  SAY #14064 /* ~Spalovač zamrká a pak se ušklíbne. "Lžeš. Nikdo nemůže zemřít víc než jednou... ne bez toho, aby byl vzkříšen mocnou magií."~ */
  IF ~~ THEN REPLY #14248 /* ~"Vzkříšen?"~ */ GOTO 60
  IF ~~ THEN REPLY #14249 /* ~"Tak to zkus a zabij mě. Uvidíš, co se stane."~ */ GOTO 62
  IF ~~ THEN REPLY #14250 /* ~"Chtěl bys to vidět?"~ */ GOTO 63
  IF ~~ THEN REPLY #14251 /* ~"Jestli někdy zemřu a budu si z toho něco pamatovat, vrátím se a budu ti o tom vyprávět. Pak můžeš posoudit, jestli lžu nebo ne. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #14252 /* ~"Řekl bych, že jediný, kdo tu lže jsi ty, a to sám sobě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 59.0 62.1
  SAY #14065 /* ~"Vzkříšen... vrácen zpět k životu... magie k tomu potřebná je vskutku mocná."~ */
  IF ~~ THEN REPLY #14253 /* ~"Kdo by byl schopen takové moci?"~ */ GOTO 61
  IF ~~ THEN REPLY #14254 /* ~"Nevěříš, že můžu zemřít? Tak to zkus a zabij mě. Uvidíš, co se stane."~ */ GOTO 62
  IF ~~ THEN REPLY #14255 /* ~"Nevěříš, že můžu zemřít? Já ti to dokážu."~ */ GOTO 63
  IF ~~ THEN REPLY #14256 /* ~"Jestli někdy zemřu a budu si z toho něco pamatovat, vrátím se a budu ti o tom vyprávět. Pak můžeš posoudit, jestli lžu nebo ne. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #14257 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #14066 /* ~"Mocný čaroděj nebo kněz... nebo některá z Mocností... ale nikdo, koho bych znal." Zamračil se. "A ani nemyslím, že bys ty znal někoho tohoto druhu."~ */
  IF ~~ THEN REPLY #14258 /* ~"Nevěříš, že můžu zemřít? Tak to zkus a zabij mě. Uvidíš, co se stane."~ */ GOTO 62
  IF ~~ THEN REPLY #14259 /* ~"Nevěříš, že můžu zemřít? Já ti to dokážu."~ */ GOTO 63
  IF ~~ THEN REPLY #14260 /* ~"Jestli někdy zemřu a budu si z toho něco pamatovat, vrátím se a budu ti o tom vyprávět. Pak můžeš posoudit, jestli lžu nebo ne. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #14261 /* ~"Řekl bych, že jediný, kdo tu lže jsi ty a to sám sobě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.0 58.1 59.1 60.1 61.0
  SAY #14067 /* ~Dívá se na tebe skepticky. "Ale běž, to asi ne, i kdybych cítil nutkání to udělat."~ */
  IF ~~ THEN REPLY #14262 /* ~"Pak tě donutím, aby ses díval: Ukážu ti, co smrt obnáší."~ */ GOTO 63
  IF ~~ THEN REPLY #14263 /* ~"Tak teda nic. Co jsi myslel tím, že jsem byl 'vzkříšen'?"~ */ GOTO 60
  IF ~~ THEN REPLY #14264 /* ~"Jestli všechno tvé jednání řídí jen strach a váhání, pak pochybuji, že by taková existence skýtala mnoho potěšení."~ */ GOTO 23
  IF ~~ THEN REPLY #14265 /* ~"Tak už teda dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 57.1 58.2 59.2 60.2 61.1 62.0
  SAY #14068 /* ~"Co... co tím chceš říct?" Dívá se, jakoby se chtěl otočit, ale nemohl. "To nemůžeš myslet vážně..."~ */
  IF ~~ THEN REPLY #14266 /* ~Zvednout ruce a zakroutit si krkem.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Death","GLOBAL",1)
~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #14069 /* ~Pomalu se ti vrací zrak... tvá smrt byla tentokrát jiná. Vidíš Smrtichtivého, jak stojí nad tebou... vypadá zděšený a fascinovaný. Opřel tě do židle a dívá se bázlivě po ostatních štamgastech... asi si nevšimli nebo tě považují za opilého.~ */
  IF ~~ THEN REPLY #14267 /* ~"Teď jsi přesvědčen?"~ */ GOTO 66
END

IF ~~ THEN BEGIN 65 // from:
  SAY #14070 /* ~"Jsi praštěný." Vrhl pohled na tvá zranění. "Nemohl jsi zemřít, prostě jsi byl jen zraněn."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.0
  SAY #14071 /* ~"Jsi... jsi jeden z chodících mrtvol?"~ */
  IF ~~ THEN REPLY #14268 /* ~"Ne."~ */ GOTO 67
  IF ~~ THEN REPLY #14269 /* ~"Ano."~ */ GOTO 68
  IF ~~ THEN REPLY #14270 /* ~"Nevím."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #14072 /* ~"Co tedy jsi?"~ */
  IF ~~ THEN REPLY #14271 /* ~"Nevím. Ale zemřu a znovu ožívám."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0
  SAY #14073 /* ~"A přece... pořád myslíš, pořád máš cit?"~ */
  IF ~~ THEN REPLY #14272 /* ~"Ano."~ */ GOTO 69
  IF ~~ THEN REPLY #14273 /* ~"Ano, ale... je v tom prázdnota. Něco chybí a to mě užírá, nikdy mě to nenechá v míru."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #14074 /* ~"Být mrtev... a *pořád* myslet a cítit?! Utrpení nikdy nenechá tělo být?" Ta myšlenka jej zřejmě děsí. "Ani smrt není vysvobození."~ */
  IF ~~ THEN REPLY #14274 /* ~"Skutečně. Snad bys neměl tak spěchat, abys opustil tento život bez znalosti toho, co obnáší ten další."~ */ GOTO 41
END

IF ~  Global("Await","GLOBAL",3)
~ THEN BEGIN 70 // from:
  SAY #61496 /* ~Smrtichtivý tě ignoruje; nehnul ani brvou.~ */
  IF ~~ THEN REPLY #61497 /* ~Odejdi.~ */ EXIT
END
