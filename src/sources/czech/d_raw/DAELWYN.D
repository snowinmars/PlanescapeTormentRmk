// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAELWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAELWYN~

IF ~  Global("Aelwyn","GLOBAL",0)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #43390 /* ~Tato vysoká mladá žena každou chvílí vzhlédne od své sklenky vína a zrakem přejede návštěvníky. Její rysy ve tváři jsou exoticky elegantní a její oči -- třpytivě zlaté -- odráží světlo, když se rozhlíží kolem.~ */
  IF ~~ THEN REPLY #43391 /* ~"Ahoj..."~ */ GOTO 1
  IF ~~ THEN REPLY #56698 /* ~Nech ženu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56699 /* ~Chvíli si tě pozorně prohlížela, než odpověděla. Promluvila pomalu a opatrně, vyhýbajíc se pohledu tvých očí: "Já, Aelwyn, vracím tvůj pozdrav."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56700 /* ~"Aelwyn? Tvá přítelkyně Nemelle tě hledá."~ */ JOURNAL #56704 /* ~Našel jsem Aelwyn a řekl jí, že ji hledá Nemelle.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56701 /* ~"Hledáš někoho?"~ */ GOTO 16
  IF ~~ THEN REPLY #56702 /* ~"Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #56703 /* ~"V tom případě odejdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0 26.0 27.0
  SAY #56705 /* ~Začala se usmívat, ale rychle si zakryla ústa dlaní a zadívala se na své pití. "Já, Aelwyn, jsem velice potěšena, že slyším o Nemelle. Mohu tě já, Aelwyn, požádat, abys jí řekl o tomto místě?"~ */
  IF ~~ THEN REPLY #56706 /* ~"Ano, udělám to pro tebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Souhlasil jsem, že se vrátím k Nemelle a řeknu jí, kde je Aelwyn.~ */ GOTO 3
  IF ~~ THEN REPLY #56707 /* ~"Nejsem poslíček. Ale za nějakou odměnu to udělám."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #56708 /* ~"Promyslím si to. Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #56709 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.0 14.0
  SAY #56711 /* ~Podívala se na mne zpříma - a na kratičký okamžik, než znovu sklopila oči zpět k pití - jsou tvé smysly zaplaveny teplým, příjemným pocitem: čistým štěstím. "Já, Aelwyn, ti děkuju."~ */
  IF ~~ THEN REPLY #56712 /* ~"Bylo mi potěšení. Můžu se tě na ni zeptat?"~ */ GOTO 4
  IF ~~ THEN REPLY #56713 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #56714 /* ~Aelwyn pomalu přikývla.~ */
  IF ~~ THEN REPLY #56715 /* ~"Způsob, jakým mluví a co její slova dělají... a jak?"~ */ GOTO 5
  IF ~~ THEN REPLY #56716 /* ~"No vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 30.0
  SAY #56717 /* ~"Já, Aelwyn, ti mohu pouze říci, že jsme přišli z jiného místa, jiného světa. Nejsme jako lidé tady, jejichž slova, myšlenky - dokonce ani samotné pocity - přímo nic neovlivňují."~ */
  IF ~~ THEN REPLY #56718 /* ~"Pokračuj..."~ */ GOTO 6
  IF ~~ THEN REPLY #56719 /* ~"Vyslechnu si to někdy později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56720 /* ~"Já, Aelwyn, se velice snažím, abych příliš neovlivňovala ty, kdož jsou v mé blízkosti. Nemelle, ona je zde nová, a nedokáže to tak. Je to něco, co se ona musí naučit, pokud si zvolí, že zde zůstane dobu delší."~ */
  IF ~~ THEN REPLY #56721 /* ~"Ale proč?"~ */ GOTO 7
  IF ~~ THEN REPLY #56724 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56722 /* ~"Mnoho důvodů existuje. Já, Aelwyn, cítím, že není správné upravovat realitu těch, kdož nemají schopnost upravit realitu mou, Aelwyn."~ */
  IF ~~ THEN REPLY #56725 /* ~"Je tady něco, co nemůžeš udělat tím, že to jenom řekneš?"~ */ GOTO 8
  IF ~~ THEN REPLY #56726 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #56727 /* ~Zamračila se. V tvém žaludku se ozval podivný, nepříjemný pocit. "Prosím... já, Aelwyn, už nebudu o tomto hovořit více."~ */
  IF ~~ THEN REPLY #56728 /* ~"Jenom jedna otázka..."~ */ GOTO 9
  IF ~~ THEN REPLY #56729 /* ~"Dobrá. Sbohem, Aelwyn."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #56730 /* ~Zadívala se na tebe zpříma, v třpytivých zlatých kruzích jejích očí se odráží tvá postava. "On nebude už více mluviti o tom k Aelwyn a tedy nebude jí už dále nutit mluviti k němu tímto způsobem." Zjistil jsi, že nedokážeš vyslovit další otázku... tvá slova se zadrhla někde v hrdle a dál nedokáží proniknout.~ */
  IF ~~ THEN REPLY #56731 /* ~"Tak fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #56732 /* ~Přikývla. "Já, Aelwyn, rozumím. Jsi Vnímavý?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56733 /* ~"Ano, jsem."~ */ GOTO 11
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56734 /* ~"Ne, nejsem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #56735 /* ~Zavrtěla hlavou. "Tak tady já, Aelwyn, nemám způsob, jak tě odměnit."~ */
  IF ~~ THEN REPLY #56736 /* ~"Stejně to udělám."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Souhlasil jsem, že se vrátím k Nemelle a řeknu jí, kde je Aelwyn.~ */ GOTO 3
  IF ~~ THEN REPLY #56737 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #56739 /* ~"Připadám ti já, Aelwyn, známá?"~ */
  IF ~~ THEN REPLY #56740 /* ~"Ne. Měla bys?"~ */ GOTO 13
  IF ~~ THEN REPLY #56741 /* ~"Ne."~ */ GOTO 13
  IF ~~ THEN REPLY #56742 /* ~"To není důležité. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #56743 /* ~"Je to jak jsem si já, Aelwyn, myslela. Mužova mysl byla pro něj ztracena."~ */
  IF ~~ THEN REPLY #56744 /* ~"Co tím myslíš? Ty víš, kdo jsem?"~ */ GOTO 14
  IF ~~ THEN REPLY #56745 /* ~"Možná máš pravdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #56746 /* ~"Já, Aelwen, jsem tě již dříve potkala, a promluvím o tom setkání, pokud mi pomůžeš."~ */
  IF ~~ THEN REPLY #56747 /* ~"Tak to udělám."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Souhlasil jsem, že se vrátím k Nemelle a řeknu jí, kde je Aelwyn.~ */ GOTO 3
  IF ~~ THEN REPLY #56748 /* ~"Ne, dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.2 2.2 26.2 39.1
  SAY #56750 /* ~Žena zavrtěla hlavou, její rudé lokny zachytily světlo a zaleskly se jako třepotající se plamen. "Já, Aelwyn, nemám žádné odpovědi, cizinče. Měl bys raději hledat své odpovědi někde jinde."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56751 /* ~"Řekla jsi, že jsi Aelwyn? Tvá přítelkyně Nemelle se po tobě shání."~ */ JOURNAL #56704 /* ~Našel jsem Aelwyn a řekl jí, že ji hledá Nemelle.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56752 /* ~"Hledáš někoho?"~ */ GOTO 16
  IF ~~ THEN REPLY #56753 /* ~"Tak tedy sbohem..."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.1 15.1 26.1
  SAY #56755 /* ~Přikývla, neustále se dívá do svého šálku vína. "Nemelle je její jméno, přítelkyně mé, Aelwyniny. Já, Aelwyn, se o ni obávám na tomto místě a přemýšlím, proč ještě za mnou, Aelwyn, nepřišla."~ */
  IF ~~ THEN REPLY #56756 /* ~"Najdu ti tvou přítelkyni."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Souhlasil jsem, že najdu ženu jménem Nemelle pro jinou ženu, Aelwyn.~ */ GOTO 17
  IF ~~ THEN REPLY #56757 /* ~"Najdu ti tvou přítelkyni. Samozřejmě že ne zadarmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #56758 /* ~"Doufám, že ji najdeš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #56760 /* ~"Uděláš to?" Zvedla pohled od vína a usmívá se. Náhle tebou projel pocit naděje a radostné vděčnosti. Když viděla, jak ses zatvářil, zakryla si ústa a znovu sklopila oči... pocit zmizel. "Já, Aelwyn, ti děkuji."~ */
  IF ~~ THEN REPLY #56761 /* ~"Co... co to bylo?"~ */ GOTO 18
  IF ~~ THEN REPLY #56762 /* ~"Jasně. Jak vypadá?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 25.0
  SAY #56763 /* ~"Co bylo co, milý cizinče?" Kousla se do rtu. "Já, Aelwyn, nevím, o čem to mluvíš."~ */
  IF ~~ THEN REPLY #56764 /* ~"Tak dobře. Jak ta Nemelle vypadá?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0 25.1 27.1
  SAY #56765 /* ~"Vypadá jako já, Aelwyn, vypadám, ale má vlasy havraní a oči světle fialové."~ */
  IF ~~ THEN REPLY #56766 /* ~"Tak jí řeknu, že tady na ni čekáš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #56767 /* ~Přikývla. "Já, Aelwyn, rozumím. Jsi Vnímavý?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56768 /* ~"Ano, jsem."~ */ GOTO 21
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56769 /* ~"No, nejsem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #56770 /* ~Zavrtěla hlavou. "Tak tady já, Aelwyn, nemám způsob, jak tě odměnit."~ */
  IF ~~ THEN REPLY #56771 /* ~"Stejně to udělám."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Souhlasil jsem, že najdu ženu jménem Nemelle pro jinou ženu, Aelwyn.~ */ GOTO 25
  IF ~~ THEN REPLY #56772 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #56774 /* ~"Připadám ti já, Aelwyn, známá?"~ */
  IF ~~ THEN REPLY #56775 /* ~"Ne. Měla bys?"~ */ GOTO 23
  IF ~~ THEN REPLY #56776 /* ~"Ne."~ */ GOTO 23
  IF ~~ THEN REPLY #56777 /* ~"To není důležité. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #56781 /* ~"Je to jak jsem si já, Aelwyn, myslela. Mužova mysl byla pro něj ztracena."~ */
  IF ~~ THEN REPLY #56779 /* ~"Co tím myslíš? Ty víš, kdo jsem?"~ */ GOTO 24
  IF ~~ THEN REPLY #56780 /* ~"Možná máš pravdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #56782 /* ~"Já, Aelwen, jsem tě již dříve potkala, a promluvím o tom setkání, pokud mi pomůžeš."~ */
  IF ~~ THEN REPLY #56783 /* ~"Tak to udělám."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Souhlasil jsem, že najdu ženu jménem Nemelle pro jinou ženu, Aelwyn.~ */ GOTO 25
  IF ~~ THEN REPLY #56784 /* ~"Ne, dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.0 24.0
  SAY #56786 /* ~Podívala se na tebe přímo - a na kratičký okamžik, než opět sklopila oči ke svému pití - tě zalil vlažný, příjemný pocit koncentrovaného štěstí. "Já, Aelwyn, ti děkuji."~ */
  IF ~~ THEN REPLY #56787 /* ~"Co... co to bylo?"~ */ GOTO 18
  IF ~~ THEN REPLY #56788 /* ~"Jasně. Jak vypadá?"~ */ GOTO 19
END

IF ~  Global("Aelwyn","GLOBAL",1)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 26 // from:
  SAY #56789 /* ~Aelwyn vzhlédla od pití jenom na chviličku, aby tě pozdravila. "Já, Aelwyn, se opět setkávám s cizincem. Co ode mě chceš?"~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56790 /* ~"Tvá přítelkyně Nemelle tě hledá."~ */ JOURNAL #56704 /* ~Našel jsem Aelwyn a řekl jí, že ji hledá Nemelle.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56791 /* ~"Hledáš někoho?"~ */ GOTO 16
  IF ~~ THEN REPLY #56792 /* ~"Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #56793 /* ~"V tom případě odejdu. Sbohem."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",2)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 27 // from:
  SAY #56795 /* ~Aelwyn vzhlédla od pití jenom na chviličku, aby tě pozdravila. "Já, Aelwyn, očekávám zprávy o Nemelle. Našel jsi ji, cizinče?"~ */
  IF ~  GlobalGT("Nemelle","GLOBAL",0)
!Dead("Nemelle")
~ THEN REPLY #56796 /* ~"Ano, našel jsem ji."~ */ JOURNAL #56799 /* ~Řekl jsem Aelwyn, že jsem našel Nemelle.~ */ GOTO 2
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56797 /* ~"Ještě ne. Jakže to vypadá?"~ */ GOTO 19
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56798 /* ~"Ne, ještě ne. Vrátím se, až ji najdu. Sbohem."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",3)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 28 // from:
  SAY #56800 /* ~Aelwyn vzhlédla od pití jenom na chviličku, aby tě pozdravila. "Já, Aelwyn stále očekávám příchod Nemelle. Doručil jsi jí zprávu?"~ */
  IF ~~ THEN REPLY #56801 /* ~"Ne, ještě ne. Najdu ji a řeknu jí, že jsi tady."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",4)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 29 // from:
  SAY #56802 /* ~Aelwyn zatleskala rukama a uklonila se ti, z jejích zlatých očí ukáply slzičky štěstí. Tvé vlastní oči také počaly slzet, když si ona setřela své slzy a usmála se na tebe -- a tvým celým tělem projela silná vlna potěšení. ""Aelwyn *děkuje* cizinci! Znovu je se svou drahou přítelkyní, Nemelle!"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56803 /* ~"Bylo mi potěšením."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
~ GOTO 30
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56804 /* ~"Bylo mi potěšením."~ */ GOTO 31
  IF ~  Global("Evil_Aelwyn_1","GLOBAL",1)
~ THEN REPLY #56805 /* ~"Jasně. A teď mi řekni o našem předchozím setkání."~ */ DO ~SetGlobal("PC_Was_Sensate","GLOBAL",1)
SetGlobal("Aelwyn","GLOBAL",5)
~ JOURNAL #56812 /* ~Žena jménem  Aelwyn mi řekla, že jsem byl, a možná stále ještě sem, Členem Společenstva Vnímavých... Vnímavý. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #56806 /* ~Přikývla, pak znovu sklopila zrak, pocit, který její úsměv vyvolal, vyprchal a zanechal za sebou jenom příjemnou vzpomínku.~ */
  IF ~~ THEN REPLY #56807 /* ~"Jakto že ty a Nemelle dokážete ovlivňovat mé smysly a emoce?"~ */ GOTO 5
  IF ~~ THEN REPLY #56808 /* ~"V tom případě odejdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #56809 /* ~Přikývla, pak znovu sklopila zrak, pocit, který její úsměv vyvolal, vyprchal a zanechal za sebou jenom příjemnou vzpomínku. "Já, Aelwyn, ti teď něco řeknu, cizinče."~ */
  IF ~~ THEN REPLY #56810 /* ~"Ano? Pokračuj..."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
SetGlobal("PC_Was_Sensate","GLOBAL",1)
~ JOURNAL #56812 /* ~Žena jménem  Aelwyn mi řekla, že jsem byl, a možná stále ještě sem, Členem Společenstva Vnímavých... Vnímavý. ~ */ GOTO 32
  IF ~~ THEN REPLY #56811 /* ~"Možná někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.2 31.0
  SAY #56813 /* ~"Jméno, které jsem já, Aelwyn, pro tebe zvolila -- 'cizinec' -- není přesné. Ty a já, Aelwyn, jsme se již setkali dříve... v Hale. Na místě, kde bys nemohl být, pokud nejsi sám Vnímavý. Ať už si to pamatuješ nebo ne, pokud jsi Společenství Vjemu nezradil, jsi Vnímavý."~ */
  IF ~~ THEN REPLY #56814 /* ~"Aha... řekni mi víc."~ */ GOTO 33
  IF ~~ THEN REPLY #56815 /* ~"Vyslechnu si zbytek někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 39.0
  SAY #56816 /* ~Přikývla. "Ty a já, Aelwyn, jsme se setkali při dvou příležitostech. Poprvé to bylo ne méně než dvě století v minulosti, podruhé poměrně nedávno. Možná ani ne před padesáti lety."~ */
  IF ~~ THEN REPLY #56817 /* ~"To je docela dávno..."~ */ GOTO 34
  IF ~~ THEN REPLY #56818 /* ~"Vyslechnu si zbytek někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #56819 /* ~Znovu přikývla. "Můj, Aelwynin, lid má velice dlouhé životy, Zapomětlivý." Nešťastně si povzdychla, takže tebou projelo zamrazení. "Tenkrát jsi byl jiný muž... méně zjizvený, méně hrozivý. Tak dychtivý vidět vše, co může mnohovesmír nabídnout. Dvořil ses mi, Aelwyn, tehdy a téměř jsi byl můj, Aelwynin, milenec - ale pak jsi zmizel."~ */
  IF ~~ THEN REPLY #56820 /* ~"Kam jsem šel?"~ */ GOTO 35
  IF ~~ THEN REPLY #56821 /* ~"Vyslechnu si zbytek někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #56822 /* ~"Mě, Aelwyn, bylo řečeno, že jsi zemřel... byl zavražděn." Na chvíli vzhlédla a zvědavě se ti zadívala do očí. "Pak jsem tě já, Aelwyn, potkala ještě jednou."~ */
  IF ~~ THEN REPLY #56823 /* ~"Pamatoval jsem si tě tehdy?"~ */ GOTO 36
  IF ~~ THEN REPLY #56824 /* ~"Vyslechnu si zbytek někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #56825 /* ~"Ne." Smutně zavrtěla hlavou, pak se dotkla svého hrdla. "Ne. Skočil jsi na mně, Aelwyn, a snažil se mě, Aelwyn, zabít. Řval jsi, že já, Aelwyn, tě neoblbnu, nezavedu tě na smrt..."~ */
  IF ~~ THEN REPLY #56826 /* ~"Co se stalo?"~ */ GOTO 37
  IF ~~ THEN REPLY #56827 /* ~"Vyslechnu si zbytek někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #56828 /* ~"Potkali jsme se v severní věži Haly, v sedmém patře. Než jsi ze mě, Aelwyn, stačil vymáčknout život, použila jsem já, Aelwyn, svou moc a nařídila ti vyskočit z okna. Pak jsem já, Aelwyn, šla hledat tvé polámané tělo, ale tys už byl pryč..."~ */
  IF ~~ THEN REPLY #56829 /* ~"*Cože* jsi to udělala?"~ */ GOTO 38
  IF ~~ THEN REPLY #56830 /* ~"Aha..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #56831 /* ~"To je celý můj, Aelwynin, příběh pro tebe. Kdysi jsme nebyli cizími, ale teď jsme se stali. Sbohem, cizinče, ať s tebou na tvých cestách chodí štěstí."~ */
  IF ~~ THEN REPLY #56832 /* ~"Díky, Aelwyn. Sbohem."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",5)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 39 // from:
  SAY #56833 /* ~Aelwyn vzhlédla od pití jenom na chviličku, aby tě pozdravila. "Já, Aelwyn, se opět setkávám s cizincem a zdravím ho."~ */
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #56834 /* ~"Řekni mi znovu o našem setkání, Aelwyn."~ */ GOTO 33
  IF ~~ THEN REPLY #56835 /* ~"Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #56836 /* ~"Jenom procházím kolem. Sbohem."~ */ EXIT
END

IF ~  Global("Attack_Aelwyn","AR0600",1)
~ THEN BEGIN 40 // from:
  SAY #56837 /* ~Žena na tebe vyštěkla, její zlaté oči hoří čirou nenávistí. "Ty hlupáku! Jak se opovažuješ zaútočit na dcery Asaharmu?! Pes jsi..." Zúžila oči. "... a jako pes také zemřeš!" Chladně si tě prohlíží, v klidu upíjí víno.~ */
  IF ~~ THEN REPLY #56838 /* ~"Huh...?"~ */ GOTO 41
  IF ~~ THEN REPLY #56839 /* ~Ignoruj ji a jdi do útoku.~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #56840 /* ~Padl jsi na zem, vyješ v agónii... tvé vnitřnosti sebou víří, začínáš vykašlávat velké množství kouřící, černé krve. Nakonec tě opustila všechna síla, ležíš na ulici, třeseš se, poslední zbytečky života z tebe unikají...~ */
  IF ~~ THEN REPLY #56841 /* ~Upadni do temnoty...~ */ DO ~Kill(Protagonist)
~ EXIT
END
