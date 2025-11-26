// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIANNIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DIANNIS~

IF ~  Global("Iannis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2935 /* ~Muž je oblečen do lehké modré róby pokryté složitými vzory. Róba vypadá pomačkaně a dost obnošeně. Věk muže tipuješ na něco mezi čtyřiceti až šedesáti... dá se to jenom těžce odhadnout. Jak jsi vstoupil, muž se k tobě pomalu otočil. Když ho teď vidíš pořádně, zarazil ses. Cítíš jistotu, že tohohle muže *znáš*... nebo jsi ho dříve znal.~ */
  IF ~~ THEN REPLY #2936 /* ~"Zdravím..."~ */ GOTO 5
  IF ~~ THEN REPLY #29703 /* ~Ignoruj toho muže, prozkoumej kancelář.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.0 4.1 6.1 7.1 9.2 10.3 11.3 12.3 13.2 14.2 15.3 16.3 17.2 18.3 19.1 20.1 23.0 24.0 25.5 26.6 27.3 28.2 32.0 32.1 32.2 34.0 35.1 36.5 37.0 38.0 39.6 55.5 56.5 57.2 58.6 59.3 60.3 61.5 62.5 63.9 64.7 66.6 67.3 68.3 71.0 72.7 73.6 74.5 78.0 85.5 86.7 87.3 93.3 94.3 95.3 96.1 102.7
  SAY #29704 /* ~"Velmi dobře. S čím ti mohu pomoci?"~ */
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29705 /* ~"Promiň, že se ptám, ale jsi v pořádku?"~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29706 /* ~"Promiň, že se ptám, ale jsi v pořádku?"~ */ GOTO 57
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29707 /* ~"Jsi v pořádku?"~ */ GOTO 60
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29708 /* ~"Jsi v pořádku?"~ */ GOTO 57
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29709 /* ~"Nepotkali jsme se už někdy?"~ */ GOTO 35
  IF ~~ THEN REPLY #29710 /* ~"Ještě jednou - kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #29711 /* ~"Ještě jednou - co je to za místo?"~ */ GOTO 9
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29712 /* ~"Můžeš mi ještě jednou říct, kdo je to advokát?"~ */ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29714 /* ~"Můžeš mi něco říct o dědictví?"~ */ GOTO 12
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64282 /* ~"Iannisi, v sensoriu jsou sensorické kameny, které obsaují fragmenty vzpomínek tvé dcery."~ */ GOTO 65
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",3)
PartyHasItem("Dlegacy1")
~ THEN REPLY #29715 /* ~"Zde je dědictví Deionarry, jak jsem slíbil."~ */ GOTO 33
  IF ~  Global("Know_Iannis_Fire","GLOBAL",1)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29717 /* ~"Můžeš mi něco říct o požáru?"~ */ GOTO 39
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29719 /* ~"Můžeš mi něco říct o své dceři?"~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #29721 /* ~"Iannisi, zjistil jsem, co se stalo s Deionarrou."~ */ GOTO 75
  IF ~~ THEN REPLY #29724 /* ~"Dneska nic. Musím už jít... Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
!Global("Iannis_Sensory_Quest","GLOBAL",1)
!Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #29725 /* ~Vidíš Iannise... při tvém příchodu se otáčí a měří si tě unaveným pohledem. Pod očima má černé kruhy a vůbec vypadá, jako by nespal.~ */
  IF ~~ THEN REPLY #29727 /* ~"Zdravím, Iannisi."~ */ GOTO 3
  IF ~~ THEN REPLY #29728 /* ~Ignoruj Iannise.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29729 /* ~"To jsi zase ty." Iannis se lehce mračí, jak se na tebe dívá. "Co potřebuješ nyní?"~ */
  IF ~~ THEN REPLY #29730 /* ~"Mám pro tebe pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #29731 /* ~"Dnes nic, díky."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
GlobalGT("Iannis_Sensory_Quest","GLOBAL",0)
GlobalLT("Iannis_Sensory_Quest","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #29732 /* ~Vidíš Iannise... při tvém příchodu se otáčí a jeho oči se lesknou nadějí. "Ah! Konečně! Přesvědčil jsi je, aby mi umožnili vstup do jejich sensoria?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29733 /* ~"Ano. Souhlasili s tím, že ti umožní vstup k senzorickému kameni tvé dcery."~ */ GOTO 69
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29734 /* ~"Nejprve mám pár otázek, na které potřebuji odpovědi."~ */ GOTO 1
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29735 /* ~"Ještě ne. Doufám, ze ti brzy přinesu dobré zprávy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #29736 /* ~Tento muž šilhá, jako by se tě snažil někam zařadit. "Ano? Můžu ti s něčím pomoci?"~ */
  IF ~~ THEN REPLY #29737 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Iannis","GLOBAL",1)
~ JOURNAL #28831 /* ~Potkal jsem muže jménem Iannis, který pracuje v Úřednické čtvrti. Zdálo se mi, že toho muže už odněkud znám, ale bohužel si nemohu vzpomenout odkud.~ */ GOTO 6
  IF ~~ THEN REPLY #29738 /* ~"Je mi líto; myslím, že jsem vešel do špatného domu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29739 /* ~"Jmenuji se Iannis." Chvíli si tě prohlíží a mračí se. "Hledal jsi mě?" ~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29740 /* ~"Nevím... co je to za místo?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29741 /* ~"Omlouvám se... zmínil  ses o tom již dříve. Možná mi můžeš pomoci s něčím jiným..."~ */ GOTO 1
  IF ~~ THEN REPLY #29742 /* ~"Je mi líto; myslím, že jsem vešel do špatného domu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY #29743 /* ~"Jak už jsem dříve říkal, jsem Iannis. Potřeboval jsi něco?" ~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29744 /* ~"Nejsem si jistý... co je tohle za místo?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29745 /* ~"Omlouvám se... zmínil  ses o tom již dříve. Možná mi můžeš pomoci s něčím jiným..."~ */ GOTO 1
  IF ~~ THEN REPLY #29746 /* ~"Je mi líto; myslím, že jsem vešel do špatného domu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #29747 /* ~"Jsem advokát. To jsou moje kanceláře." Iannisův hlas se stává podrážděným. "Hledáš právního zástupce? Jestli ne, tak jdi raději slídit někam jinam."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29748 /* ~"Advokát? To je jako kdo?"~ */ JOURNAL #28830 /* ~Iannis je podle všeho "advokát" - ten, kdo poskytuje zákonné porady, uplatňuje dědictví a pře se u soudu.~ */ EXTERN ~DMORTE~ 291
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #29749 /* ~"Advokát? To je jako kdo?"~ */ JOURNAL #28830 /* ~Iannis je podle všeho "advokát" - ten, kdo poskytuje zákonné porady, uplatňuje dědictví a pře se u soudu.~ */ EXTERN ~DGRACE~ 127
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #29750 /* ~"Advokát? To je jako kdo?"~ */ JOURNAL #28830 /* ~Iannis je podle všeho "advokát" - ten, kdo poskytuje zákonné porady, uplatňuje dědictví a pře se u soudu.~ */ GOTO 10
  IF ~~ THEN REPLY #29751 /* ~"Promiň, že jsem tě vyrušoval. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY #29752 /* ~"Jsem advokát a tohle je moje kancelář. Když někdo potřebuje nějakou radu ve věci práva, tak přijde za mnou." ~ */
  IF ~  GlobalLT("Iannis","GLOBAL",3)
~ THEN REPLY #29753 /* ~"Jakou radu?"~ */ DO ~SetGlobal("Iannis","GLOBAL",3)
~ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29754 /* ~"Jakou radu?"~ */ GOTO 11
  IF ~~ THEN REPLY #29755 /* ~"Aha, chápu. Možná bys mi mohl s něčím pomoci, tedy..."~ */ GOTO 1
  IF ~~ THEN REPLY #29756 /* ~"Omlouvám se, že jsem tě obtěžoval. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY #29757 /* ~Iannis se hluboce zamračil. "Úlohou advokáta je poskytovat radu v právních problémech, pomáhat druhým orientovat se ve spletitém právním labyrintu města Sigil, vyřizovat pozůstalost po zemřelých. aby mohli být klidní, že s jejich majetkem bude naloženo tak, jak si přáli před svou smrtí, bránit před Sigilským soudem ty, kdož byli křivě obviněni..." Na chvíli se odmlčel. "Potřebuješ snad pomoc v některém z těchto problémů?"~ */
  IF ~~ THEN REPLY #29758 /* ~"Dědictví?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29759 /* ~"Ve skutečnosti si myslím, že tady pro mě máš nějaké dědictví."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29760 /* ~"Ve skutečnosti jsem si přišel vyzvednout pozůstalost po jedné mladé ženě..."~ */ GOTO 15
  IF ~~ THEN REPLY #29761 /* ~"Snad bych mohl využít tvých služeb."~ */ GOTO 1
  IF ~~ THEN REPLY #29762 /* ~"Ne, dnes ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7 9.0 9.1
  SAY #29763 /* ~"Úlohou advokáta je poskytovat radu v právních problémech, pomáhat druhým orientovat se ve spletitém právním labyrintu města Sigil, vyřizovat pozůstalost po zemřelých. aby mohli být klidní, že s jejich majetkem bude naloženo tak, jak si přáli před svou smrtí, bránit před Sigilským soudem ty, kdo byli křivě obviněni..." Na chvíli se odmlčel. "Potřebuješ snad pomoc v některém z těchto problémů?"~ */
  IF ~~ THEN REPLY #29764 /* ~"Dědictví?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29765 /* ~"Ve skutečnosti si myslím, že tady pro mě máš nějaké dědictví."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29766 /* ~"Já si vlastně přišel pro pozůstalost po jedné mladé ženě..."~ */ GOTO 15
  IF ~~ THEN REPLY #29767 /* ~"Snad bych mohl využít tvých služeb."~ */ GOTO 1
  IF ~~ THEN REPLY #29768 /* ~"Ne, dnes ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.8 10.0 11.0 13.1 14.1 54.0 56.2
  SAY #29769 /* ~"v podstatě se jedná o smlouvy, které vstupují v platnost, až po klientově smrti. Obsahují specifické instrukce, jak má být naloženo s klientovým majetkem právě v případě jeho skonu. Jsou to takzvané poslední vůle, závěti."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #29770 /* ~"Je to tedy něco na způsob smluv se Spalovači?"~ */ GOTO 13
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29771 /* ~"Ve skutečnosti si myslím, že pro mě máš nějaké dědictví."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29772 /* ~"Já si vlastně přišel pro pozůstalost po jedné mladé ženě..."~ */ GOTO 15
  IF ~~ THEN REPLY #29773 /* ~"Dobře. Možná, že je tady ještě něco, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29774 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #29775 /* ~"Ach můj.., ne! Smlouvy se Spalovači sice také vstupují v platnost až po klientově smrti, ale v nich se odkazuje klientovo tělo do rukou Spalovačů; není to zrovna dvakrát příjemná věc, ale chudí lidé shledávají tyto smlouvy jako prostředek k... "~ */
  IF ~~ THEN REPLY #29776 /* ~"Existuje vůbec nějaká možnost jak zrušit smlouvu se Spalovači?"~ */ JOURNAL #28829 /* ~Iannis mi pověděl, že jedinou možností, jak zrušit platnost spalovačské smlouvy, je zničit ji.~ */ GOTO 14
  IF ~~ THEN REPLY #29777 /* ~"Je mi líto... mohl bys mi znovu vysvětlit o jaké dědictví se jedná?"~ */ GOTO 12
  IF ~~ THEN REPLY #29778 /* ~"Dobře. Možná, že je tady ještě něco, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29779 /* ~"Díky. To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #29780 /* ~Nepatrně se zamračil. "Jakmile je to podepsané? Obávám se, že pokud jsi to podepsal, tak už s tím nic moc nezmůžeš. Smlouva se Spalovači je opravdu velice přesná, co se týče naložení s tělem. Snad by tu byla ještě jedna malá možnost, a to zničit smlouvu, ale jinak mě nic nenapadá."~ */
  IF ~~ THEN REPLY #29781 /* ~"Dobře. Co jsem dlužen za tvé informace?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Iannis_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #29782 /* ~"Omlouvám se... mohl bys mi ještě jednou říct o jaké dědictví se jedná?"~ */ GOTO 12
  IF ~~ THEN REPLY #29783 /* ~"Dobře. Možná, že je tady ještě něco, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29784 /* ~"Díky. To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 10.2 11.1 11.2 12.1 12.2
  SAY #29785 /* ~"Vskutku? Dobře... víš o tom dědictví, na které jsem se ptal?"~ */
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29786 /* ~"Číslo dědictví je '51-AA,' Alespoň doufám."~ */ GOTO 16
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29787 /* ~"Dědictví té mladé ženy má označení '687-KS.'"~ */ GOTO 25
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29788 /* ~"Dědictví té mladé ženy má označení '687-KS.'"~ */ GOTO 104
  IF ~~ THEN REPLY #29789 /* ~"Vlastně, ne, teď právě ne. Ale možná by se našlo ještě něco jiného, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29790 /* ~"Ne, myslím, že jsem se spletl. Nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #29791 /* ~Když jsi mu řekl označení závěti, překvapeně se na tebe zadíval. "Tahle je dost stará... jsi si jistý... " Pak se mu po tváři přehnal zděšený výraz. "Doufám, že to nebyla jedna z těch, které shořely... "~ */
  IF ~~ THEN REPLY #29792 /* ~"Jak je stará?"~ */ GOTO 17
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29793 /* ~"Shořela?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29794 /* ~"Můžeš se podívat, jestli ta závěť ještě existuje?"~ */ GOTO 19
  IF ~~ THEN REPLY #29795 /* ~"Nevadí. Možná by se ještě našlo něco s čím mi můžeš pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #29796 /* ~"Myslím, že jsem se s tím dědictvím zmýlil. Nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.0
  SAY #29797 /* ~"Dobře..." Iannis se na chvíli zamyslel. "Nejméně několik desetiletí."~ */
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29798 /* ~"Říkal jsi, že možná shořela? Cos tím myslel?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29799 /* ~"Mohl by ses podívat, zda ta závěť vůbec ještě existuje?"~ */ GOTO 19
  IF ~~ THEN REPLY #29800 /* ~"Nevadí. Možná, že bys mi mohl pomoct s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29801 /* ~"Myslím, že jsem se s tím dědictvím spletl. Nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #29802 /* ~Iannis se na tebe smutně zadíval. "Ano, tahle kancelář se stala terčem nesmyslného vandalismu. Asi před rokem se sem někdo vloupal. Nějakému pobudovi se asi prostě zachtělo spálit veškerou mou právnickou dokumentaci. Utrpěl jsem tak velké ztráty. Jaká ostuda. Sigil může být úplně... založené na mezilidské důvěře..." Zdálo se, jako by mu ukápla slza, když se zmiňoval o Sigilu. "Ten vandal pouze poškodil určité dokumenty... určité nenahraditelné dokumenty."~ */
  IF ~~ THEN REPLY #29803 /* ~"Jak je ta závěť stará?"~ */ GOTO 17
  IF ~~ THEN REPLY #29804 /* ~"Mohl by ses kouknout, jestli ta závěť vůbec ještě existuje?"~ */ GOTO 19
  IF ~~ THEN REPLY #29805 /* ~"Mohl bys mi říct ještě něco o tom požáru?"~ */ GOTO 39
  IF ~~ THEN REPLY #29806 /* ~"Vlastně..., to nevadí. Možná by se našlo ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #29807 /* ~"Myslím, že s tím dědictvím jsem se zmýlil. Nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2 17.1 18.1
  SAY #29808 /* ~Iannis rychle přikývl. "Ach, ano, samozřejmě... ale zabere to nějakou chvilku."~ */
  IF ~~ THEN REPLY #29809 /* ~"Dobře, Já počkám."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 20
  IF ~~ THEN REPLY #29810 /* ~"Nevadí. Možná by se ještě našlo něco s čím mi můžeš pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #29811 /* ~"Ne, myslím, že s tím dědictvím jsem se zmýlil. Nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #29812 /* ~Iannis se vrací, kývaje hlavou. "Ano, naštěstí se toho oheň ani nedotknul. Žádný z odstavců není poškozen."~ */
  IF ~~ THEN REPLY #29813 /* ~"Mohl bych si to vybrat? Já jsem dědic."~ */ DO ~SetGlobal("Know_Nameless_Legacy","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 21
  IF ~~ THEN REPLY #29814 /* ~"Nevadí. Možná, že je tady ještě něco, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29815 /* ~"Děkuju. Chtěl jsem jenom zkontrolovat zda je to v pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #29816 /* ~ "Samozřejmě.. podepiš to tady a tady... tady na tu tečkovanou linku..."~ */
  IF ~~ THEN REPLY #29817 /* ~"Tady? A tady? V pořádku..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #29818 /* ~"Tady to máme; to by měla být poslední část papírování. Tady máš všechny věci, které byly v trezoru... tohle vypadá jako stvrzenka ze Slévárny, ačkoliv není zrovna nejnovější. Možná měl zesnulý něco objednaného ve Slévárně?"~ */
  IF ~~ THEN REPLY #29819 /* ~"To opravdu nemám tušení. Snad... Začínám si myslet, že cokoliv je možné. Mimochodem, kde vlastně najdu Slévárnu?"~ */ DO ~GiveItemCreate("Receipt",Protagonist,1,0,0)
GiveItemCreate("Gullet",Protagonist,1,0,0)
GiveItemCreate("EyeKal",Protagonist,1,0,0)
GiveGoldForce(731)
SetGlobal("Receipt","GLOBAL",1)
~ JOURNAL #28828 /* ~Získal jsem své dědictví od Iannise, advokáta z Úřednické čtvrti. Mezi vším tím zděděným bohatstvím byla i jedna prapodivná stvrzenka... vypadala velmi staře. Iannis mi vysvětlil, že to je "stvrzenka z Velké slévárny," a že to znamená, že jsem oprávněn k něčemu mezi Božím lidem. Iannis mi dále pověděl, že ta stvrzenka mi zajistí přístup do Velké slévárny v Dolní čtvrti.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29820 /* ~"Slévárna se nachází v Dolní čtvrti. Je to za hlavní bránou - koukej se po početné skupině stráží Božích lidí hlídajících bránu, až je najdeš, tak jsi na správné adrese."~ */
  IF ~~ THEN REPLY #29821 /* ~"Dobře. Možná bys mi mohl ještě pomoci s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29822 /* ~"Děkuju ti za správné nasměrování. Snad to najdu."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.0
  SAY #29823 /* ~"Nejsem z těch lidí, kteří si nechávají platit za takovéhle služby." Lehce se pousmál. "Já jsem advokát, ne nějaký mrzutý obchodník a lakomost nesmí vstoupit přes práh mé kanceláře."~ */
  IF ~~ THEN REPLY #29824 /* ~"Děkuju ti... jsem ti vděčný. Snad je tady ještě něco, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29825 /* ~"Pak ti patří můj vděk. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY #29826 /* ~"To je..."  Když jsi mu řekl označení závěti, jeho oči se rozšířily. "dědictví mé dcery... ?!" Šokovaně na tebe hledí. "Ty jsi znal mou dceru?!"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64283 /* ~"Nejsem si jistý. V hale je sensorický kámen, ve kterém je řada dědictví."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64284 /* ~"Nejsem si jistý. Našel jsem řadu dědictví v sensorickém kameni, o kterém jsem ti říkal; určených mně."~ */ GOTO 27
  IF ~~ THEN REPLY #29827 /* ~"Já sám nevím. Doufám, že právě její závěť mi pomůže najít na tuto otázku odpověď."~ */ GOTO 26
  IF ~~ THEN REPLY #29828 /* ~"Vlastně, je to legální záležitost a tobě do toho nic není."~ */ GOTO 30
  IF ~~ THEN REPLY #29829 /* ~"Do toho ti nic není. Takže, mohl by ses podívat, zda ta závěť ještě existuje?"~ */ GOTO 30
  IF ~~ THEN REPLY #29830 /* ~"Myslím, že  ohledně té závěti jsem se zmýlil. Možná, že bys mi mohl ještě pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29831 /* ~"Omluvám se, to byla špatná závěť. Je mi líto , že jsem tě obtěžoval... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.2 66.3 67.1 68.1
  SAY #29832 /* ~"Proč by..." Zdá se, že Iannis ztratil slov. "Kdo vlastně jsi, pane, že ti má dcera zanechala svou závěť?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64285 /* ~"Nejsem si jistý. V hale je sensorický kámen, ve kterém je řada dědictví."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64286 /* ~"Nejsem si jistý. Našel jsem řadu dědictví v sensorickém kameni, o kterém jsem ti říkal; určených mně."~ */ GOTO 27
  IF ~~ THEN REPLY #29833 /* ~"Je možné, že jsem jí kdysi znal... a že už jsem na ni zapomněl."~ */ GOTO 27
  IF ~~ THEN REPLY #29834 /* ~"Jak už jsem řekl, nevím. A doufám, že právě její závěť mi pomůže najít odpověď."~ */ GOTO 29
  IF ~~ THEN REPLY #29835 /* ~"V podstatě je to celé legální záležitost, takže tě to nemusí zajímat."~ */ GOTO 30
  IF ~~ THEN REPLY #29836 /* ~"Do toho ti nic není. Můžeš se podívat jestli ta závěť ještě existuje?"~ */ GOTO 30
  IF ~~ THEN REPLY #29837 /* ~"Myslím, že ohledně té závěti jsem se zmýlil. Snad by se našlo ještě něco, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29838 /* ~"Omluvám se, to byla jiná závěť. Je mi líto, že jsem tě obtěžoval... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.1 26.2
  SAY #29839 /* ~Iannis si pozorně prohlížel tvé rysy. "Připadáš mi nějak povědomý..."~ */
  IF ~~ THEN REPLY #29840 /* ~"Víš kdo jsem?"~ */ GOTO 28
  IF ~~ THEN REPLY #29841 /* ~"Možná, že ta závěť by mohla odpovědět na otázky nás obou."~ */ GOTO 29
  IF ~~ THEN REPLY #29842 /* ~"Mohl bys mi dát tu závěť, prosím? Je to plně legální záležitost, takže není o čem diskutovat."~ */ GOTO 30
  IF ~~ THEN REPLY #29843 /* ~"Myslím, že ohledně té závěti jsem se zmýlil. Snad by se našlo ještě něco, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29844 /* ~"Omlouvám se, ale už musím jít... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29845 /* ~"Musím uznat, že já ne." povzdechl si Iannis. ~ */
  IF ~~ THEN REPLY #29846 /* ~"Možná, že ta závěť by mohla odpovědět na otázky nás obou."~ */ GOTO 29
  IF ~~ THEN REPLY #29847 /* ~"Mohl bys mi dát tu závěť, prosím? Je to plně legální záležitost, takže není o čem diskutovat."~ */ GOTO 30
  IF ~~ THEN REPLY #29848 /* ~"Myslím, že ohledně té závěti jsem se zmýlil. Snad by se našlo ještě něco, s čím bys mi mohl pomoci..."~ */ GOTO 1
  IF ~~ THEN REPLY #29849 /* ~"Omlouvám se, ale už musím jít... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.3 27.1 28.0
  SAY #29850 /* ~"Samozřejmě, samozřejmě... vydrž chviličku, hned se vrátím."~ */
  IF ~~ THEN REPLY #29851 /* ~"Dobře, já počkám."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28827 /* ~Získal jsem dědictví Deionarry od jejího otce.~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.3 25.4 26.4 26.5 27.2 28.1
  SAY #29852 /* ~Iannis na tebe chvíli zíral, pak se jeho oči srovnaly. "Samozřejmě." Jeho hlas je jako led. "Kdybys byl tak hodný a chviličku počkal, já se za chvíli vrátím s její závětí."~ */
  IF ~~ THEN REPLY #29853 /* ~"Dobře."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28826 /* ~Získal jsem dědictví Deionarry od jejího nepříjemného otce. Nelíbil se mi tón, jakým se mnou mluvil - měl by si na sebe dávat pozor, nebo skončí stejně jako jeho dcera.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 104.0
  SAY #29854 /* ~"Všechny jsou pro..." Iannis drží ve svých rukou tři svitky. "Nevěděl jsem, že jsi tady založila poslední vůli..." Zírá na ty věci jako zhypnotizovaný. "Tady to je. Mohl bych... mohl bych si je přečíst, pane?"~ */
  IF ~~ THEN REPLY #29855 /* ~"Je to ryze soukromá záležitost, jako právník to snad chápeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_1","GLOBALGood",-1)
~ GOTO 32
  IF ~~ THEN REPLY #29856 /* ~"Nejprve si je přečtu já, pak se uvidí."~ */ GOTO 32
  IF ~~ THEN REPLY #29857 /* ~"Samozřejmě. Tady je máš."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Iannis_2","GLOBALGood",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #29858 /* ~"Samozřejmě..." Iannis vypadá zničeně. "Ale snažně tě prosím, zbylo mi tak málo věci, které by mi připomínaly moji holčičku..."~ */
  IF ~~ THEN REPLY #29859 /* ~Lež: "Uvidíš, že budeš ještě mít možnost si je přečíst. Ale zatím, myslím, že je tady ještě něco, s čím bys mi mohl pomoct..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #29860 /* ~Přísaha: "Slibuji, že budeš mít šanci si je přečíst. Ale zatím, myslím, že je tady ještě něco, s čím bys mi mohl pomoct... "~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ GOTO 1
  IF ~~ THEN REPLY #29861 /* ~"Chápu. Možná bys mi v tuto chvíli mohl ještě s něčím pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #29862 /* ~Lež: "Nezapomenu na tebe. Až si je přečtu, tak se vrátím."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #29863 /* ~Pěísaha: "Nezapomenu na tebe. Až si je přečtu, tak se vrátím."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #29864 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 1.10 31.2
  SAY #29865 /* ~Iannis si vzal svitek a začal jej studovat. Nastalo dlouhé ticho, pak se na tebe pomalu podíval. "Ty... znamenal jsi mnoho pro mou dceru. Byla ochotná za tebe položit i svůj život."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29866 /* ~"Obávám se, že je to právě ten případ."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~Nechal jsem Iannise, aby si přečetl závěť Deionarry. Zdálo se, že v jejích posledních slovech našel útěchu. ~ */ GOTO 34
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29867 /* ~"Domnívám se, že je to právě ten případ."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~Nechal jsem Iannise, aby si přečetl závěť Deionarry. Zdálo se, že v jejích posledních slovech našel útěchu. ~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #29873 /* ~Iannis ti vrací svitek. "Děkuji ti, pane. A oceňuji tvoji shovívavost."~ */
  IF ~~ THEN REPLY #29874 /* ~"To je to nejmenší, co mohu udělat. Možná bys mi mohl pomoci s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29875 /* ~"Rovněž truchlím nad ztrátou tvé dcery a doufám, že její slova ti dopřála alespoň trochu útěchy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.4
  SAY #29876 /* ~Ten muž si tě začal prohlížet, zamračeně ponořený ve svých myšlenkách. Vrásky na jeho tváři ti připadají více zřetelné a ty jsi opět ohromen při pohledu na tu daň, kterou si na něm věk vybral. "Ne... zdáš se mi nějak povědomý..."~ */
  IF ~~ THEN REPLY #29877 /* ~"Už..."~ */ GOTO 36
  IF ~~ THEN REPLY #29878 /* ~"Nevadí. Možná bys mi mohl pomoci s něčím jiným..."~ */ GOTO 1
  IF ~~ THEN REPLY #29879 /* ~"To nic, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #29880 /* ~Pokračoval ve studování tvých rysů, pak potřásl hlavou. "Musím uznat pane, že mi připadáš nějak povědomý a omlouvám se ti za jakoukoliv urážku, kterou by ti mohla v tuto chvíli způsobit má selhávající paměť... Byl jsem teď nějaký čas velice zaneprázdněn. Nepotkali jsme se už někdy?"~ */
  IF ~~ THEN REPLY #29881 /* ~Pravda: "Také si myslím. Ale nemohu si vzpomenout, kdo jsem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_3","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #29882 /* ~Lež: "Ne; musel jsem se zmýlit. Nemyslím, že jsme se kdy potkali."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_2","GLOBALLaw",-1)
~ GOTO 38
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29883 /* ~"Zaneprázdněn?"~ */ GOTO 57
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29884 /* ~"Zaneprázdněn?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29885 /* ~"Zaneprázdněn?"~ */ GOTO 60
  IF ~~ THEN REPLY #29886 /* ~"Nevadí. Snad mi můžeš pomoci s něčím jiným..."~ */ GOTO 1
  IF ~~ THEN REPLY #29887 /* ~"Nevadí, Už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #29888 /* ~"Hmmm. Mohlo by se to zdát být frustrující pro nás pro oba."~ */
  IF ~~ THEN REPLY #29889 /* ~"Nevadí. Snad mi můžeš pomoci s něčím jiným..."~ */ GOTO 1
  IF ~~ THEN REPLY #29890 /* ~"Nevadí, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #29891 /* ~"Hmmm. Tedy, dobře."~ */
  IF ~~ THEN REPLY #29892 /* ~"Snad bys mi mohl pomoci s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29893 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 1.11 18.2 59.2 60.2 61.4 62.4 63.8 64.6 72.6 73.5 74.4 85.4 86.6 102.6
  SAY #29894 /* ~"Nevím co dalšího bych o tom mohl říct... ten oheň byl na zvláštním místě. Nedovedu si představit, co mohlo být tak důležitého v těch dokumentech, že musely být spáleny, ale někdo na tom měl asi enormě velký zájem."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29895 /* ~"Možná jsem to JÁ, kdo je zodpovědný za ten oheň." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29896 /* ~"To možná JÁ založil ten oheň." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
~ THEN REPLY #29897 /* ~"Uh... podařilo se ti vypátrat viníka?"~ */ GOTO 55
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #29898 /* ~"Podařilo se ti zjistit, kdo za tím stojí?"~ */ GOTO 55
  IF ~~ THEN REPLY #29899 /* ~"Můžeš mi povědět, co shořelo?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29900 /* ~"Chápu. Pověz mi něco o své dceři."~ */ GOTO 63
  IF ~~ THEN REPLY #29901 /* ~"Možná mi můžeš ještě pomoci s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29902 /* ~"Je mi líto tvé ztráty. Půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1 55.1 56.1
  SAY #29903 /* ~"Ty? Co tím myslíš?"~ */
  IF ~~ THEN REPLY #29904 /* ~Pravda: "To JÁ... jsem to asi kdysi z nějakého důvodu udělal. Ale nebylo to mé pravé *JÁ*. Lituji svého činu a žádám tě o odpuštění."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29905 /* ~Lež: "Byl jsem donucen magií. Vůbec netuším, co se stalo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29906 /* ~"Spletl jsem se. Pověz mi něco o své dceři."~ */ GOTO 41
  IF ~~ THEN REPLY #29907 /* ~"Odpusť mi, nic jsem tím nemyslel. Možná mi můžeš pomoci s..."~ */ GOTO 41
  IF ~~ THEN REPLY #29908 /* ~"To nic. Sbohem."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.2 40.3 40.4
  SAY #29909 /* ~"Ne..." Iannisova tvář je jako kámen. "Slyšel jsem tě dobře. Právě ses doznal k odpovědnosti za ten požár. Proč bys jinak říkal takové věci? Jsi snad blázen?!"~ */
  IF ~~ THEN REPLY #29910 /* ~Pravda: "Já... jsem to možná udělal... z nějakého důvodu, kdysi dávno. To když jsem nebyl tak úplně ve své kůži. Lituji svého činu a chtěl bych tě požádat o odpuštění."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29911 /* ~Lež: "Byla to nějaká magická síla, která mě to donutila udělat. Vůbec nevím co se vlastně stalo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #29912 /* ~"Už NIKDY na mě nezvyšuj hlas, nebo další oheň na tomhle místě bude fatální."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_5","GLOBALGood",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2
  SAY #29913 /* ~Iannisův obličej ztvrdnul vztekem. "Ty... Sigilskej *grázle!* doufal jsem, že se ještě někdy ukážeš, po tom svým zbabělým činu! Zničil jsi můj dům a některé mé důležité dokumenty a teď se opovažuješ přijít až sem jako nějaký upír v noci a pokoušíš se mě zastrašovat znovu?!"~ */
  IF ~~ THEN REPLY #29914 /* ~Pravda: "Já... jsem to možná udělal... z nějakého důvodu, kdysi dávno. To když jsem nebyl tak úplně ve své kůži. Lituji svého činu a chtěl bych tě požádat o odpuštění."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29915 /* ~Lež: " Byla to nějaká magická síla, která mě to donutila udělat. Vůbec nevím co se vlastně stalo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29916 /* ~Zlom mu vaz.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29917 /* ~Zlom mu vaz.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29918 /* ~Zlom mu vaz.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #29919 /* ~"Já se opovažuji. A co s tím uděláš, staříku ?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 43 // from: 42.3 90.6 92.2 103.2
  SAY #29920 /* ~Iannis couvnul, když ses po něm natáhl. Pak začal křičet. "Stráže! Pomoc! Přepadení!"~ */
  IF ~~ THEN REPLY #29921 /* ~"Sakra..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 90.5 92.1 103.1
  SAY #29922 /* ~Tvé ruce se sevřely na Iannisově spáncích a tys dopřál jeho hlavě jedno prudké otočení doleva. ~ */
  IF ~~ THEN REPLY #29923 /* ~"Nemám čas na tvoje lekce, staříku..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(15)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #29924 /* ~Ozvalo se *křup,* a Iannis se zhroutil pod silou tvých rukou.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29925 /* ~"Teď si trochu odpočineš..."~ */ DO ~PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke","GLOBAL",1)
~ JOURNAL #28822 /* ~Iannis mě minule velice naštval, takže jsem ho škrtil, dokud nebyl ticho. Spolu s vraždou se na povrch drala další salva vzpomínek... ale její nápor byl slabý a ona neuspěla. Jedno je ale jisté - už jsem někdy někoho uškrtil.~ */ GOTO 46
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29926 /* ~"Teď si dáš šlofíka..."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ JOURNAL #28821 /* ~Iannis mě minule velice naštval, takže jsem ho škrtil, dokud nebyl ticho.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29927 /* ~K tvému překvapení, celá akce proběhla úplně instinktivně, jako bys to už mnohokrát dělal... Ta myšlenka jakoby podráždila tvé vzpomínky, ale nebylo to dost silné, aby vypluly na povrch.~ */
  IF ~~ THEN REPLY #29928 /* ~Opusť tělo, pokračuj dál.~ */ DO ~GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.5 90.8 92.4 103.4
  SAY #29929 /* ~Iannis začal křičet. "Stráže! Pomoc! Vetřelec! Pomoc!"~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29930 /* ~"Ksakru..."~ */ DO ~Enemy()
~ EXTERN ~DVHAIL~ 5
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #29931 /* ~"Sakra..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 40.0 41.0 42.0
  SAY #29932 /* ~"Ale..." Iannis vypadá, že pozbyl slov. "Ale... proč? Některé z věcí, které shořely... měly význam snad jen pro mmn... nenahraditelný!"~ */
  IF ~~ THEN REPLY #29933 /* ~"Vypadá to, že jeden z těch tvých dokumentů byl hrozbou mému druhému Já... nevěřím tomu, že se to kdy dozvím."~ */ GOTO 49
  IF ~~ THEN REPLY #29934 /* ~"Abych řekl pravdu, nevím."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29935 /* ~"Tvé druhé Já? O čem to mluvíš?"~ */
  IF ~~ THEN REPLY #29936 /* ~"Jsem ve zvláštní situaci... Z nějakého důvodu občas ztrácím své JÁ a na nějaký čas se stávám někým jiným. Během té doby mé činy nejsou moje vlastní."~ */ GOTO 52
  IF ~~ THEN REPLY #29937 /* ~"Abych řekl pravdu: nevím."~ */ GOTO 50
  IF ~~ THEN REPLY #29938 /* ~Lež: "Byla to nějaká magická síla, která mě to donutila udělat. Vůbec nevím co se vlastně stalo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.1
  SAY #29939 /* ~"Tak ty nevíš?! Copak snad mluvím s dítětem?! Jak můžeš neznát důvody toho, co děláš?!"~ */
  IF ~~ THEN REPLY #29940 /* ~"Jsem ve zvláštní situaci... Z nějakého důvodu občas ztrácím své JÁ a na nějaký čas se stávám někým jiným. Během té doby mé činy nejsou moje vlastní." ~ */ GOTO 52
  IF ~~ THEN REPLY #29941 /* ~Lež: "Byla to nějaká magická síla, která mě donutila to udělat. Vůbec nevím co se vlastně stalo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 40.1 41.1 42.1 49.2 50.1
  SAY #29942 /* ~Iannis se zamračil... jako když si celou věc rozmýšlí. "Už jsem slyšel o takových *očarováních* seslaných na lidi." Na chvíli se odmlčel. "A ty ses rozhodl přijít a vzít na sebe plnou odpovědnost za ten zločin..."~ */
  IF ~~ THEN REPLY #29943 /* ~"Já jsem pouze přišel Tě požádat o odpuštění za můj podlý čin."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~Zalhal jsem Iannisovi, že když jsem zakládal oheň v jeho domě, tak jsem byl pod vlivem magie a požádal jsem ho o odpuštění. On mé lži uvěřil a snadno mi odpustil. Dále mě ujistil, že k žádné trvalé škodě nedošlo.~ */ GOTO 53
  IF ~~ THEN REPLY #29944 /* ~"Přišel jsem Tě požádat o odpuštění a nahradit ti tvé ztráty, tedy pokud to bude v mých silách."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~Zalhal jsem Iannisovi, že když jsem zakládal oheň v jeho domě, tak jsem byl pod vlivem magie a požádal jsem ho o odpuštění. On mé lži uvěřil a snadno mi odpustil. Dále mě ujistil, že k žádné trvalé škodě nedošlo.~ */ GOTO 53
  IF ~~ THEN REPLY #29945 /* ~"Totiž... žádná odpovědnost. Po tom všem, to vlastně nebyl můj čin."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29946 /* ~Zalhal jsem Iannisovi, že když jsem zakládal oheň v jeho domě, tak jsem byl pod vlivem magie a požádal jsem ho o odpuštění. On mé lži uvěřil a snadno mi odpustil. Dále mě ujistil, že k žádné trvalé škodě nedošlo.~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 49.0 50.0
  SAY #29947 /* ~Iannis se zamračil... jako když si celou věc promýšlí. "Už jsem slyšel o takových příznacích mysli... dočasná amnézie a rozdělení osobnosti... pak je tady fakt, že jsi na sebe vzal odpovědnost za ten zločin..."~ */
  IF ~~ THEN REPLY #29948 /* ~"To je... podobné mému případu. Přišel jsem tě požádat o odpuštění."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~Řekl jsem Iannisovi, že jsem zodpovědný za požár v jeho domě a poprosil jsem ho o odpuštění. Snadno mi odpustil a navíc mě ujistil, že nebyla způsobena žádná trvalá škoda.~ */ GOTO 53
  IF ~~ THEN REPLY #29949 /* ~"Přišel jsem tě požádat o odpuštění a nahradit ti tvé ztráty, tedy pokud to bude v mých silách."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~Řekl jsem Iannisovi, že jsem zodpovědný za požár v jeho domě a poprosil jsem ho o odpuštění. Snadno mi odpustil a navíc mě ujistil, že nebyla způsobena žádná trvalá škoda.~ */ GOTO 53
  IF ~~ THEN REPLY #29950 /* ~"Totiž... žádná odpovědnost. Po tom všem, to vlastně nebyl můj čin."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29951 /* ~Řekl jsem Iannisovi, že jsem zodpovědný za požár v jeho domě a poprosil jsem ho o odpuštění. Snadno mi odpustil a navíc mě ujistil, že nebyla způsobena žádná trvalá škoda.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 52.0 52.1 52.2
  SAY #29952 /* ~"Já..." Iannis se zamračil, pak se jeho výraz uvolnil. "Není co odpouštět... se ztrátou jsem se už smířil a k žádným trvalým škodám nedošlo. Ani nevím, proč právě tyhle dokumenty. Vždyť mezi dokumenty, které shořely, nebylo nic cenného."~ */
  IF ~~ THEN REPLY #29953 /* ~"Co to bylo za dokumenty?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #29954 /* ~"Většinou závěti. Některé byly velice staré."~ */
  IF ~~ THEN REPLY #29955 /* ~"Závěti?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 55 // from: 39.2 39.3
  SAY #29956 /* ~"Ne, ani Harmoničtí ani Nemilosrdní neměli štěstí v dopadení viníka."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29957 /* ~"Možná, že jsem zodpovědný za ten požár." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29958 /* ~"Možná, že jsem zodpovědný za ten požár." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29959 /* ~"Můžeš mi povědět, co shořelo?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29960 /* ~"Rozumím. Pověz mi něco o své dceři."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64204 /* ~"Vidím. Pověz mi o své dceři."~ */ GOTO 63
  IF ~~ THEN REPLY #29961 /* ~"To je neštěstí. Možná mi můžeš pomoci s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29962 /* ~"Je mi líto tvé ztráty. Měl bych už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 39.4 55.2
  SAY #29963 /* ~"Velké množství závětí a nějaké záznamy a pár dalších cenností, které měly význam snad jen pro mě."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29964 /* ~"Možná, že jsem zodpovědný za ten požár." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29965 /* ~"Možná, že jsem zodpovědný za ten požár." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29966 /* ~"Závěti?"~ */ GOTO 12
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29967 /* ~"Chápu. Pověz mi něco o své dceři."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64203 /* ~"Vidím. Pověz mi o své dceři."~ */ GOTO 63
  IF ~~ THEN REPLY #29968 /* ~"Možná, že bys mi mohl pomoci ještě s něčím jiným..."~ */ GOTO 1
  IF ~~ THEN REPLY #29969 /* ~"Je mi líto tvé ztráty. Měl bych už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.1 1.3 36.2
  SAY #29970 /* ~"Musíš mi prominout. Třebaže pozdě. Byl jsem obklopen problémy... obávám se, že to byly pěkně krušné časy... posledních pár let."~ */
  IF ~~ THEN REPLY #29971 /* ~"Něco, s čím bych ti mohl pomoci?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_5","GLOBALGood",1)
~ GOTO 58
  IF ~~ THEN REPLY #29972 /* ~"Jaké problémy?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29973 /* ~"Chápu. Možná, že bys mi mohl ještě pomoct s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29974 /* ~"Omlouvám se, že jsem tě vyrušoval... doufám, že se tvá situace zlepší. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #29975 /* ~"Ne, ne... je toho jen málo, co by se dalo udělat." Pokynul ti. "Nicméně, tvé nabídky si velice cením. Děkuju ti."~ */
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29976 /* ~"Možná, že kdyby sis s někým popovídal o tvých problémech, že by to ulevilo tvé mysli."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29977 /* ~"Možná, že kdyby sis s někým popovídal o tvých problémech, že by to ulevilo tvé mysli."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29978 /* ~"Možná, že kdyby sis s někým popovídal o tvých problémech, že by to ulevilo tvé mysli."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29979 /* ~"Jaké máš potíže?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29980 /* ~"Jaké máš potíže?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29981 /* ~"Jaké máš potíže?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29982 /* ~"Dobře. Snad bys mi mohl ještě pomoci s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29983 /* ~"Doufám, že se ti časem povede lépe. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1 58.0 58.2 58.3 58.5
  SAY #29984 /* ~Iannis si povzdechl. "Nerad bych tě zatěžoval... Není to tak dávno, co jsem ztratil dceru. Byl tady také požár... ale to je jiná záležitost."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29985 /* ~"Pověz mi o své dceři."~ */ GOTO 61
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29986 /* ~"Pověz mi o své dceři."~ */ GOTO 62
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29987 /* ~"Požár?"~ */ GOTO 39
  IF ~~ THEN REPLY #29988 /* ~"Chápu. Snad mi můžeš pomoci s..."~ */ GOTO 1
  IF ~~ THEN REPLY #29989 /* ~"Je mi líto tvé ztráty. Raději už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 1.0 1.2 36.3 36.4 58.1 58.4
  SAY #29990 /* ~Iannis si povzdechl. "Nechci tě již více zatěžovat... jak jsem se již zmínil, nedávno jsem ztratil dceru. Také tady hořelo... ale to s tím nemá nic společného."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29991 /* ~"Pověz mi víc o své dceři."~ */ GOTO 63
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29992 /* ~"Pověz mi víc o své dceři."~ */ GOTO 63
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29993 /* ~"Požár?"~ */ GOTO 39
  IF ~~ THEN REPLY #29994 /* ~"Možná, že bys mi mohl ještě s něčím pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #29995 /* ~"Je mi líto tvé ztráty. Raději už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #30224 /* ~Iannis se najednou zhroutil do sebe. "Ano..." Tvář obchodníka zmizela, nahrazena zoufalstvím. "Moje dcera, Deionarra, zemřela před nějakým časem.. " To jméno ti způsobilo šok. *Znal* jsi tu ženu..~ */
  IF ~~ THEN REPLY #30225 /* ~"Pověz mi o ní. Jaká byla?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30226 /* ~"Jak zemřela?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30227 /* ~"Viděl jsem ženu toho jména pohřbenou v památeční hale Márnice."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30228 /* ~"Viděl jsem ženu toho jména pohřbenou v památeční hale Márnice. Stal se z ní duch. Tvrdila, že mě zná.""~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30229 /* ~"Vlastně, chtěl bych vědět víc o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30230 /* ~"Možná je ještě něco, s čím bys mi mohl pomoct...""~ */ GOTO 1
  IF ~~ THEN REPLY #30231 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 59.1
  SAY #30232 /* ~Iannis se najednou zhroutil do sebe. "Ano..." Tvář obchodníka zmizela, nahrazena zoufalstvím. "Moje dcera, Deionarra, zemřela před nějakým časem.. "~ */
  IF ~~ THEN REPLY #30233 /* ~"Pověz mi o ní. Jaká byla?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30234 /* ~"Jak zemřela?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30235 /* ~"Viděl jsem ženu toho jména pohřbenou v památeční hale Márnice."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30236 /* ~"Viděl jsem ženu toho jména pohřbenou v památeční hale Márnice. Stal se z ní duch. Tvrdila, že mě zná.""~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30237 /* ~"Vlastně, chtěl bych vědět víc o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30238 /* ~"Možná je ještě něco, s čím bys mi mohl pomoct...""~ */ GOTO 1
  IF ~~ THEN REPLY #30239 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 1.12 39.5 55.3 55.4 56.3 56.4 60.0 60.1 61.0 62.0 66.5 67.0 68.0 87.2 93.2 94.2 95.2 96.0
  SAY #30240 /* ~"Deionarra? Byla... mladá. Nedávno se přidala ke Společnosti Vjemu, Vnímavým... docela příjemná frakce, ale ona tam někoho potkala... šla s ním na nějakou výpravu a zemřela. Její tělo..." Tváří se bolestivě. "Nedokázal jsem získat ani její tělo..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30241 /* ~"Iannisi, zjistil jsem, co potkalo Deionarru."~ */ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 75
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30235 /* ~"Viděl jsem ženu toho jména pohřbenou v památeční hale Márnice."~ */ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 86
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",2)
~ THEN REPLY #30236 /* ~"Viděl jsem ženu toho jména pohřbenou v památeční hale Márnice. Stal se z ní duch. Tvrdila, že mě zná.""~ */ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 87
  IF ~~ THEN REPLY #30242 /* ~"Říkal jsi, že byla Vnímavá?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30243 /* ~"Víš něco o tom muži, se kterým cestovala?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 72
  IF ~~ THEN REPLY #30244 /* ~"Víš kam se vypravila?""~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30245 /* ~"Víš, jak zemřela?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 85
  IF ~~ THEN REPLY #30246 /* ~"Promiň mi mou otázku, ale jestli jsi nezískal její tělo, jak ses dozvěděl, že zemřela?""~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30247 /* ~"Aha. řekni mi o tom ohni."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 39
  IF ~~ THEN REPLY #30248 /* ~"Možná je ještě něco, s čím bys mi mohl pomoct..."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ GOTO 1
  IF ~~ THEN REPLY #30249 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Iannis, otec Deionarry, mi řekl, že byla členkou Vnímavých. Řekl mi, že zemřela mladá, a že zemřela, když cestovala s mužem, kterého potkala na výpravě. Její tělo nebylo nikdy objeveno..~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.3 72.2 73.1 74.1 85.1 86.2 102.1
  SAY #30250 /* ~"Ano... " Začíná se tvářit trochu živěji, jako by ho cenná vzpomínka rozehřála. "Přidala se k nim kvůli svému daru... a protože bylo v mnohovesmíru *tolik* věcí, které chtěla zažít. Vnímaví se rádi propůjčují ke sdílení zkušeností a prožitků."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30252 /* ~"Iannisi, zjistil jsem, co potkalo Deionarru."~ */ GOTO 75
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #30253 /* ~"Toho jsem si všiml. Setkal jsem se v Senzoriích s krystalem,  který obsahoval fragment její zkušenosti.""~ */ GOTO 65
  IF ~~ THEN REPLY #2944 /* ~"Dar?"~ */ DO ~SetGlobal("Deionarra_Sight","GLOBAL",1)
~ JOURNAL #30260 /* ~Iannis mi řekl, že v žilách Deionarry proudila krev věštkyně. Dalo jí to dar 'Zraku', což jí umožňovalo vidět události, než se stanou..~ */ GOTO 102
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30254 /* ~"Víš něco o muži, se kterým cestovala?"~ */ GOTO 72
  IF ~~ THEN REPLY #30255 /* ~"Víš, kam cestovala?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30256 /* ~"Víš, jak zemřela?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30257 /* ~"Aha. Řekni mi o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30258 /* ~"Možná je ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30259 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 1.9 25.0 26.0 64.1
  SAY #30261 /* ~V jeho očích se objevil plamen naděje. "Je tam? Ale ve kterém...? Musíš mi to říct!""~ */
  IF ~~ THEN REPLY #30262 /* ~"Je to v jednom z krystalů Vnímavých... pokud nejsi Vnímavý, nemáš k němu přístup.""~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #30263 /* ~Na chvíli přemýšlí. "Musím najít způsob... možná udělají výjimku pro jejího otce..."~ */
  IF ~~ THEN REPLY #30264 /* ~"Jestli chceš, můžu s někým promluvit. Jsem si jistý, že v tvém případě udělají výjimku.""~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~Řekl jsem Iannisovi, že se zeptám v Hale a zjistím, jestli bych ho mohl přivést k senzorickému krystalu jeho dcery. Nevím, jestli s tím něco dokážu, ale zkusím to..~ */ GOTO 67
  IF ~~ THEN REPLY #30265 /* ~"Nechci porušit zákony Vnímavých. Můžu si ale s někým promluvit. Uvidíme, jestli se dá něco dělat.""~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_5","GLOBALLaw",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~Řekl jsem Iannisovi, že se zeptám v Hale a zjistím, jestli bych ho mohl přivést k senzorickému krystalu jeho dcery. Nevím, jestli s tím něco dokážu, ale zkusím to..~ */ GOTO 67
  IF ~~ THEN REPLY #30266 /* ~"Můžu ti pomoct, za určitou odměnu. Moje slovo má v Hale docela vážnost.""~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_2","GLOBALGood",-1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30271 /* ~Řekl jsem Iannisovi, že se zeptám v Hale a zjistím, jestli bych ho mohl přivést k senzorickému krystalu jeho dcery... za odměnu. Řekl mi, že mi zaplatí, až získám povolení Vnímavých..~ */ GOTO 68
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64287 /* ~"Může být. Teď, v sensorickém kameni, zanechala mi v něm řadu dědictví..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64288 /* ~"Může být. Teď, v sensorickém kameni, zanechala mi v něm řadu dědictví..."~ */ GOTO 104
  IF ~~ THEN REPLY #30267 /* ~"Tohle je věc mezi tebou  a jimi. Pověz mi, jaká byla Deionarra..."~ */ GOTO 63
  IF ~~ THEN REPLY #30268 /* ~"Je to možné. Měl bys s nimi promluvit. V každém případě, já mám ještě nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #30269 /* ~"Možná. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1
  SAY #30272 /* ~Iannis vypadá, jako by se mu ulevilo. "Pokud bys to dokázal, byl bych ti velice vděčný."~ */
  IF ~~ THEN REPLY #30273 /* ~"Uvidím, co se dá udělat. Ale rád bych věděl více o tom, jaká byla Deionarra. ~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64289 /* ~"Brzo tu záležitost urovnám. Teď, v sensorickém kameni, zanechala mi v něm řadu dědictví..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64290 /* ~"Brzo tu záležitost urovnám. Teď, v sensorickém kameni, zanechala mi v něm řadu dědictví..."~ */ GOTO 104
  IF ~~ THEN REPLY #30274 /* ~"Zkusím to... ale než půjdu, možná je tady ještě něco, s čím bys mi mohl pomoct."~ */ GOTO 1
  IF ~~ THEN REPLY #30275 /* ~"Uvidím, co se dá dělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY #30276 /* ~Iannis vypadá, jako by se mu ulevilo. "Až pro mě získáš povolení k prohlídce krystalu, vrať se prosím, a já dohlédnu, aby se ti tvá námaha vyplatila."~ */
  IF ~~ THEN REPLY #30277 /* ~"Uvidím, co se dá dělat, asi to nebude snadné. Rád bych ale věděl víc o tom, jaká byla Deionarra, než se začnu vyptávat v Hale."~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64291 /* ~"Pak tu záležitost brzo urovnám. Teď, v sensorickém kameni, zanechala mi v něm řadu dědictví..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64292 /* ~"Pak tu záležitost brzo urovnám. Teď, v sensorickém kameni, zanechala mi v něm řadu dědictví..."~ */ GOTO 104
  IF ~~ THEN REPLY #30278 /* ~"Zkusím to... ale než půjdu, možná je tady ještě něco, s čím bys mi mohl pomoct."~ */ GOTO 1
  IF ~~ THEN REPLY #30279 /* ~"Uvidím, co se dá dělat... může to být *velice* drahé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.0
  SAY #30280 /* ~"Ty... Já... děkuji ti, dobrý muži. Děkuji ti! Jsem ti zavázán!"~ */
  IF ~  Global("Evil_Iannis_2","GLOBAL",1)
~ THEN REPLY #30281 /* ~"Ano, jsi... Mám pocit, že ses dříve zmínil o nějaké náhradě mé námahy..."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30284 /* ~Vrátil jsem s k Iannisovi a řekl mu, že Vnímaví souhlasili a dovolili mu návštěvu senzorického krystalu jeho dcery. Byl mi velice vděčný... tak moc, že mi zaplatil spoustou mincí a jednoduchých magických předmětů, které si schovával. Řekl bych, že existuje cena otcovy lásky k jeho dceři...~ */ GOTO 70
  IF ~  Global("Evil_Iannis_2","GLOBAL",0)
~ THEN REPLY #30282 /* ~"To nebyl problém, Iannisi. Prosím, jdi se podívat na zážitky tvé dcery. Myslím, že to utiší tvou bolest.""
~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30285 /* ~Vrátil jsem s k Iannisovi a řekl mu, že Vnímaví souhlasili a dovolili mu návštěvu senzorického kamene jeho dcery. Byl mi velice vděčný a pouhá zmínka, že jsem uspěl a získal pro něj povolení vidět senzorický krystal Deionarry, jasně zmenšila jeho depresi.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #30283 /* ~"Jistě, jistě... počkej chvíli, hned se vrátím"~ */
  IF ~~ THEN REPLY #30286 /* ~"Dobrá tedy. Počkám."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(500)
GiveItemCreate("Maslow",Protagonist,33,33,33)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #30287 /* ~Za chvíli se Iannis vrátil. V rukách drží velký pytlík mincí a něco, co vyhlíží jako podivné amulety. "Tady máš, pane... a znovu, máš mou vděčnost za svou námahu.""~ */
  IF ~~ THEN REPLY #30288 /* ~"Ano,ano.. hele, možná je tady ještě něco,s čím bys mi mohl pomoct."~ */ GOTO 1
  IF ~~ THEN REPLY #30289 /* ~"Jistě, jistě, nebyl to problém... rozhodně ne za tolik peněz. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 63.4 64.3 73.2 74.2 102.2
  SAY #30290 /* ~"Málo. Dokud neodešla tak jsem o jeho existenci málem ani nevěděl. Potom už bylo pozdě.""~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30291 /* ~"Iannisi, zjistil jsem, co potkalo Deionarru."~ */ GOTO 75
  IF ~~ THEN REPLY #30292 /* ~"Myslím, že ten muž jsem byl já. Spoustu jsem toho zapomněl."~ */ GOTO 88
  IF ~~ THEN REPLY #30293 /* ~"Říkal jsi, že byla Vnímavá?"~ */ GOTO 64
  IF ~~ THEN REPLY #30295 /* ~"Víš, kam cestovala?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30297 /* ~"Jak zemřela?"~ */ GOTO 85
  IF ~~ THEN REPLY #30300 /* ~"Jak víš, že zemřela?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30301 /* ~"Aha. Řekni mi o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30302 /* ~"Aha. Možná je ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30303 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 63.5 64.4 72.3 74.3 85.2 86.3 102.3
  SAY #30304 /* ~"To nikdy neřekla. Nejsem si jistý, že by mi dokázala vysvětlit, kam jdou. Muselo to být... hrozné místo."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30305 /* ~"Iannisi, zjistil jsem, co potkalo Deionarru."~ */ GOTO 75
  IF ~~ THEN REPLY #30306 /* ~"Řekl jsi, že byla Vnímavá?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30307 /* ~"Víš něco o muži, se kterým cestovala?"~ */ GOTO 72
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30308 /* ~"Jak zemřela?"~ */ GOTO 85
  IF ~~ THEN REPLY #30309 /* ~"Jak víš, že zemřela?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30310 /* ~"Aha. Řekni mi o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30311 /* ~"Aha. Možná je ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30312 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 63.7 72.5 73.4 85.3 86.5 102.5
  SAY #30313 /* ~"To je zajímavé... Byl jsem za Spalovači, jestli nenašli její tělo, a oni mě poslali za jedním z nich venku před Spalovačským památníkem... Spalovač jménem 'Smrt-Jmen', mám takový pocit. Říká se o něm, že je něco jako věštec, zabývající se těmi, kdož skonali. Řekl mi, že má dcera zemřela."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30314 /* ~"Iannisi, zjistil jsem, co potkalo Deionarru."~ */ GOTO 75
  IF ~~ THEN REPLY #30315 /* ~"Řekl jsi, že byla Vnímavá?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30316 /* ~"Víš něco o muži, se kterým cestovala?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #30317 /* ~"Víš, kam cestovala?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 73
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30318 /* ~"Aha. Řekni mi o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30319 /* ~"Možná je ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30320 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 1.13 63.0 64.0 72.0 73.0 74.0 85.0 86.0 102.0
  SAY #30321 /* ~Iannis vypadá, jako by tě neslyšel. Když znovu promluví, slova z něj vycházejí velice pomalu. "Řekni mi to. Musím to vědět."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Pravda: "Jem odpovědný za smrt tvé dcery. Zavraždil jsem ji na Negativně materiální sféře, doufaje, že její láska ke mně ji k tomu místu připoutá."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Přiznal jsem se Iannisovi, otci Deionarry a řekl jsem mu, co se stalo jeho dveři. Navzdory velikosti zločinu, doufám, že znalost jejího osudu trochu uklidní jeho mysl..~ */ EXTERN ~DVHAIL~ 6
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30323 /* ~Pravda: "Jem odpovědný za smrt tvé dcery. Zavraždil jsem ji na Negativně materiální sféře, doufaje, že její láska ke mně ji k tomu místu připoutá."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Přiznal jsem se Iannisovi, otci Deionarry a řekl jsem mu, co se stalo jeho dveři. Navzdory velikosti zločinu, doufám, že znalost jejího osudu trochu uklidní jeho mysl..~ */ GOTO 76
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Polopravda: "Zemřela na Negativně materiální sféře jako oběť zrady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Částečně jsem se přiznal Iannisovi, otci Deionarry a řekl mu něco o tom, co se stalo jeho dceři. Doufám, že když teď zná její osud, uklidní to trochu jeho mysl. Pravdu by asi nezvládl a já rozhodně nepotřebuji další osobu, která mě bude vinit za *všechny* problémy v Sférách..~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30325 /* ~Polopravda: "Zemřela na Negativně materiální sféře jako oběť zrady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Částečně jsem se přiznal Iannisovi, otci Deionarry a řekl mu něco o tom, co se stalo jeho dceři. Doufám, že když teď zná její osud, uklidní to trochu jeho mysl. Pravdu by asi nezvládl a já rozhodně nepotřebuji další osobu, která mě bude vinit za *všechny* problémy v Sférách..~ */ GOTO 77
  IF ~~ THEN REPLY #30326 /* ~Lež: "Onemocněla během výpravy... je jasné, že život v Sigilu ji nepřipravil na prostředí ostatních Sfér."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~Zalhal jsem Deionařině otci Iannisovi, o tom, co se stalo jeho dceři. Doufám, že ho ta lež trochu uklidní.  Pravdu by asi nezvládl a já rozhodně nepotřebuji další osobu, která mě bude vinit za *všechny* problémy ve Sférách...~ */ GOTO 89
  IF ~~ THEN REPLY #30327 /* ~"To nic. Přeřekl jsem se. Možná je ještě něco s čím bys mi mohl pomoct..."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
  IF ~~ THEN REPLY #30328 /* ~"To není důležité. Sbohem."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
END

IF ~~ THEN BEGIN 76 // from: 75.1 77.0 90.2
  SAY #30332 /* ~Iannis na tebe chvíli tiše zírá, pak se jeho hlas zlomil. "Proč...*PROČ* jsi udělal něco tak hrozného?""~ */
  IF ~~ THEN REPLY #30333 /* ~"To jsem nebyl já... byla to moje druhá část. Udělal to doufaje, že bude sloužit jako pouto k této Sféře, což by posloužilo jeho vlastním účelům. Je mi to líto, Iannisi."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30334 /* ~"Věřím, že jsem zodpovědný za mnoho hrozných činů, na které si většinou nemůžu vzpomenout. Udělal jsem to, protože jsem doufal, že mi poslouží jako pouto k Sféře. Je mi to líto, Iannis."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30335 /* ~"Nebylo to 'hrozné', bylo to *nutné*, Iannisi. Tvoje dcera byla ochotná položit za mě svůj život, a její život bylo to, co jsem potřeboval na záchranu svého."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_3","GLOBALGood",-3)
AddexperienceParty(12000)
~ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 75.3 90.3
  SAY #30336 /* ~Iannis na tebe mlčky zírá. "Kdo?"~ */
  IF ~~ THEN REPLY #30337 /* ~Pravda: "Já jsem za to zodpovědný."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",1)
~ GOTO 76
  IF ~~ THEN REPLY #30338 /* ~Lež: "Nevím. A myslím, že bude lepší nezjišťovat to.""~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
~ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY #30339 /* ~Iannis vypadá zlomeně. "Musím to zjistit.." Podíval se na tebe. "Děkuji ti. Potřeboval jsem vědět, co se jí stalo..."~ */
  IF ~~ THEN REPLY #30340 /* ~"Rozumím. Možná je tady ještě něco, s čím mi můžeš pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30341 /* ~"Je mi líto tvé ztráty, Iannisi. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.0 76.1
  SAY #30342 /* ~"Ty..." Iannis se pokouší pochopit smysl tvých slov. "Počkej... řekl jsi, že ji to mělo připoutat k Sféře? Co to znamená?""~ */
  IF ~~ THEN REPLY #30343 /* ~"Jak tomu rozumím já, doufali jsme, že kombinace její lásky ke mně a její smrt na Negativně materiální sféře jí umožní stát se duchem."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #30344 /* ~"Ona *žije?"*~ */
  IF ~~ THEN REPLY #30345 /* ~"V určitém smyslu... ano."~ */ GOTO 81
  IF ~~ THEN REPLY #30346 /* ~"No, neřekl jsem, že *žije*. Její duch stále existuje..."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #30347 /* ~"Pak..." Vypadá zhrozeně. "Pak musí být uvolněna!"~ */
  IF ~~ THEN REPLY #30348 /* ~"Kdybych dokázal najít způsob, jak to udělat, udělal bych to."~ */ GOTO 82
  IF ~  Global("Lawful_Deionarra_1","GLOBAL",1)
~ THEN REPLY #30349 /* ~"Už jsem přísahal, že se jí pokusím uvolnit... nebo se k ní přidám.""~ */ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0 81.1 92.0
  SAY #30350 /* ~"Pokud v tobě zbývá nějaká slušnost, ušetři mou dceru. Není nic co by mohlo změnit to, co se stalo, takže tě žádám, abys nechal její duši odpočívat v pokoji. Pokud to pro mě uděláš, pokusím se ti odpustit.""~ */
  IF ~~ THEN REPLY #30351 /* ~Přísahej: "Slibuji, že nechám tvou dceru spočívat v pokoji.""~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_8","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30352 /* ~"Uvidím, co s tím mohu udělat."~ */ GOTO 83
  IF ~~ THEN REPLY #30353 /* ~"Nemůžu..."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0 82.1 97.2 100.0 100.1 100.2 101.0
  SAY #30354 /* ~"Dobra tedy. Teď odejdi. Chci být sám se svými myšlenkami."~ */
  IF ~~ THEN REPLY #30355 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.2
  SAY #30356 /* ~"Ať na tobě tedy zapracuje spravedlnost Sfér, pane!" Iannis zaťal zuby. "Ať se utrpení mé dcery vrátí na tvá bedra tisícinásobně!""~ */
  IF ~~ THEN REPLY #30357 /* ~"Dej si pozor na svá slova, Iannisi, nebo se setkáš se svou dcerou dříve, než bys čekal."~ */ GOTO 92
  IF ~~ THEN REPLY #30358 /* ~"Vidím, že už si nemáme co říct. Sbohem."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 61.1 62.1 63.6 64.5 72.4 73.3 86.4 102.4
  SAY #30359 /* ~"Nevím... její tělo nebylo nikdy nalezeno." Iannisova tvář zrudla. Zaťal pěsti. "A to je to nejhorší, to mi způsobuje největší bolest... Nikdy nezjistím, proč tak utekla, co se jí stalo, ani kde je její tělo!"~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30360 /* ~"Iannisi, zjistil jsem, co potkalu Deionarru."~ */ GOTO 75
  IF ~~ THEN REPLY #30361 /* ~"Řekl jsi, že byla Vnímavá?"~ */ GOTO 64
  IF ~~ THEN REPLY #30362 /* ~"Víš, kam se Deionarra a ten muž vypravili?"~ */ GOTO 73
  IF ~~ THEN REPLY #30363 /* ~"Odpusť mi mou otázku, ale jak víš, že je mrtvá, když jsi neviděl její tělo?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30364 /* ~"Aha. Řekni mi o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30365 /* ~"Aha. Možná je ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30366 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 61.2 62.2 63.1
  SAY #30367 /* ~"Ano, zařídil jsem, aby byly máry umístěny v památeční hale. Není tam pochopitelně žádné tělo, ale doufal jsem, že máry poslouží jako maják, který jí pomůže nalézt cestu domů."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30368 /* ~"Iannisi, zjistil jsem, co potkalo Deionarru."~ */ GOTO 75
  IF ~~ THEN REPLY #30369 /* ~"Fungovalo to... Je tam teď její duch."~ */ GOTO 87
  IF ~~ THEN REPLY #30370 /* ~"Řekl jsi, že byla Vnímavá?"~ */ GOTO 64
  IF ~~ THEN REPLY #30371 /* ~"Víš, kam se Deionarra a ten muž vypravili?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30372 /* ~"Víš, jak zemřela?"~ */ GOTO 85
  IF ~~ THEN REPLY #30373 /* ~"Pokud není tělo, jak víš, že je mrtvá?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30374 /* ~"Aha. Řekni mi o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30375 /* ~"Aha. Možná je ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30376 /* ~"Je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 61.3 62.3 63.2 86.1
  SAY #30377 /* ~"C... co??!" Iannis vypadá zmateně. "C... cože jsi to řekl?!""~ */
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30378 /* ~"Její duch teď spočívá v památeční hale."~ */ GOTO 93
  IF ~~ THEN REPLY #30379 /* ~"Její duch teď spočívá v památeční hale. Mluvil jsem s ní. Vypadá to, že jí něco tísní.""~ */ GOTO 97
  IF ~~ THEN REPLY #30380 /* ~"Nic jsem neřekl... pověz mi něco o tom, jaká byla Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30381 /* ~"Nic, přeřekl jsem se.  Možná je tady ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30382 /* ~"Řekl jsem, že je mi líto tvé ztráty. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 72.1 98.0
  SAY #30383 /* ~"Ty?!" Iannis si tě prohlíží. "To jsi ty... a řekl jsi, že jsi *zapomněl?!" Iannis se vytáhl, vypadá to, jako by se chystal do bitvy. "Tak ty jsi *zapomněl*... ale ta událost není tak vzdálená. Jak je to možné?"~ */
  IF ~~ THEN REPLY #30384 /* ~"Stalo se mi něco divného... ztratil jsem se... na čas. Cokoli, co mi můžeš říct o své dceři nebo mně, má pro mě obrovskou cenu."~ */ GOTO 99
  IF ~~ THEN REPLY #30385 /* ~"Přeřekl jsem se. Pochybuju, že bych byl ten muž. Určitě bych si na tvou dceru pamatoval, kdybych s ní cestoval."~ */ GOTO 103
  IF ~~ THEN REPLY #30386 /* ~"Už mě otázky nebaví. Sbohem."~ */ GOTO 103
END

IF ~~ THEN BEGIN 89 // from: 75.4 90.4
  SAY #30387 /* ~"Toho jsem se bál." Iannis si povzdechl. "Tvůj příběh zní pravdivě. Žila ve městě tak chráněná, a její zdraví bylo vždy slabé." Podíval se na tebe s nadějí v očích. "Nevíš, kde by mohlo být její tělo? Byl bych rád, kdyby bylo řádně pohřbené."~ */
  IF ~~ THEN REPLY #30388 /* ~"Z jejího těla nic nezbylo... byla to pustošivá hrozná nemoc, zůstalo z ní jenom velice málo.""~ */ GOTO 101
END

IF ~~ THEN BEGIN 90 // from: 75.5 75.6
  SAY #30389 /* ~"Ne, pane, rozuměl jsem ti jasně. Řekl jsi, že víš, co se stalo mé dceři. Povíš mi to. Hned." Iannis se zamračil ještě více. "Nebo zavolám hlídku Harmonia, která z tebe odpovědi vypáčí."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Pravda: "Jem odpovědný za smrt tvé dcery. Zavraždil jsem ji na Negativně materiální sféře, doufaje, že její láska ke mně ji k tomu místu připoutá."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Přiznal jsem se Iannisovi, otci Deionarry a řekl jsem mu, co se stalo jeho dveři. Navzdory velikosti zločinu, doufám, že znalost jejího osudu trochu uklidní jeho mysl..~ */ EXTERN ~DVHAIL~ 6
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Polopravda: "Zemřela na Negativně materiální sféře jako oběť zrady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Částečně jsem se přiznal Iannisovi, otci Deionarry a řekl mu něco o tom, co se stalo jeho dceři. Doufám, že když teď zná její osud, uklidní to trochu jeho mysl. Pravdu by asi nezvládl a já rozhodně nepotřebuji další osobu, která mě bude vinit za *všechny* problémy v Sférách..~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30390 /* ~Pravda: "Jem odpovědný za smrt tvé dcery. Zavraždil jsem ji na Negativně materiální sféře, doufaje, že její láska ke mně ji k tomu místu připoutá."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Přiznal jsem se Iannisovi, otci Deionarry a řekl jsem mu, co se stalo jeho dveři. Navzdory velikosti zločinu, doufám, že znalost jejího osudu trochu uklidní jeho mysl..~ */ GOTO 76
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30391 /* ~Polopravda: "Zemřela na Negativně materiální sféře jako oběť zrady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Částečně jsem se přiznal Iannisovi, otci Deionarry a řekl mu něco o tom, co se stalo jeho dceři. Doufám, že když teď zná její osud, uklidní to trochu jeho mysl. Pravdu by asi nezvládl a já rozhodně nepotřebuji další osobu, která mě bude vinit za *všechny* problémy v Sférách..~ */ GOTO 77
  IF ~~ THEN REPLY #30392 /* ~Lež: "Onemocněla během výpravy... je jasné, že život v Sigilu ji nepřipravil na prostředí ostatních Sfér."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~Zalhal jsem Deionařině otci Iannisovi, o tom, co se stalo jeho dceři. Doufám, že ho ta lež trochu uklidní.  Pravdu by asi nezvládl a já rozhodně nepotřebuji další osobu, která mě bude vinit za *všechny* problémy ve Sférách...~ */ GOTO 89
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30393 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30394 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30395 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30396 /* ~"Chceš přivolat stráže? Dobře, zkus to. Podle mě je kniha mrtvých nějaká prázdná..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #30397 /* ~"Proč jsi to udělal?! Byl to ŽIVOT mé dcery, ne---"~ */
  IF ~~ THEN REPLY #30398 /* ~"Mohl jsem si dělat s životem tvé dcery, co jsem chtěl. Ona mi dala svolení tím, že vložila svůj život do mých rukou.""~ */ GOTO 92
  IF ~~ THEN REPLY #30399 /* ~"Už mě tvoje řeči nebaví. Zmlkni, nebo se přidáš ke své dceři.""~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 84.0 91.0 91.1
  SAY #30400 /* ~Iannisova tvář se sevřela v zlosti. "Ty... sigilský lumpe! Nelítostně jsi zavraždil mou dceru a teď se opovažuješ přijít sem jako upír a OPOVAŽUJEŠ se mi vyhrožovat?!"~ */
  IF ~  Global("Evil_Iannis_3","GLOBAL",0)
~ THEN REPLY #30401 /* ~"Promluvil jsem nerozvážně... Omlouvám se za svá slova."~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30402 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30403 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30404 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30405 /* ~"Oovažuju se. Nevadí mi, když se do mého seznamu přidají další mrtvoly. Co ty na to, dědku?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 93 // from: 87.0
  SAY #30461 /* ~"Doufám, že jsi mluvil jenom v přeneseném významu!" Iannis vypadá rozzuřeně. "Jestli ano, tak v tom případě nemám čas na tvé slovní hrátky."~ */
  IF ~~ THEN REPLY #30462 /* ~"Ne, má slova byla doslovná. Její duch je teď v památeční hale."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",1)
~ GOTO 94
  IF ~~ THEN REPLY #30463 /* ~"Ne, má slova byla doslovná. Její duch je teď v památeční hale. Mluvil jsem s ní a vypadá to, že jí něco tísní.""~ */ GOTO 97
  IF ~~ THEN REPLY #30464 /* ~"V tom případě se omlouvám... řekni mi něco o tom, jaká Deionarra byla."~ */ GOTO 63
  IF ~~ THEN REPLY #30465 /* ~"Přeřekl jsem se. Možná je tady ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30466 /* ~"Má slova byla nevhodně zvolená. Je mi líto tvé ztráty. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #30467 /* ~"Stala se... duchem?"~ */
  IF ~~ THEN REPLY #30468 /* ~"Ano."~ */ GOTO 95
  IF ~~ THEN REPLY #30469 /* ~"Ano, mluvil jsem s ní a vypadá to, že jí něco tísní."~ */ GOTO 97
  IF ~~ THEN REPLY #30470 /* ~"Ne, spletl jsem se... Řekni mi ještě o Deionarre."~ */ GOTO 63
  IF ~~ THEN REPLY #30471 /* ~"Přeřekl jsem se. Možná je tady ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30472 /* ~"Má slova byla nevhodně zvolená. Je mi líto tvé ztráty. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #30484 /* ~"Já... Já... musím ji najít a zjistit, jestli s ní mohu mluvit, zjistit, co jí tam drží... jak se má... jak víš, že se stala duchem?"~ */
  IF ~~ THEN REPLY #30485 /* ~"Zahlédl jsem její spektrální formu u jejích már v Márnici. Předpokládám, že je to ona."~ */ GOTO 96
  IF ~~ THEN REPLY #30486 /* ~"Mluvil jsem s ní. Vypadá to, že jí něco trápí."~ */ GOTO 97
  IF ~~ THEN REPLY #30487 /* ~"Ne, spletl jsem se... řekni mi něco o Deionarre."~ */ GOTO 63
  IF ~~ THEN REPLY #30488 /* ~"Přeřekl jsem se. Možná je tady ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30489 /* ~"Má slova byla nevhodně zvolená. Je mi líto tvé ztráty. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0 97.0 98.1
  SAY #30490 /* ~"Odejdu tam, jakmile budu moci a prozkoumám to sám." Kývl na tebe. "Pokud jsou tvá slova pravdivá, pane, jsem ti zavázán..."~ */
  IF ~~ THEN REPLY #30491 /* ~"Na tom nezáleží... řekni mi něco o Deionarre."~ */ GOTO 63
  IF ~~ THEN REPLY #30492 /* ~"Dobrá tedy. Možná je tady ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30493 /* ~"Možná tvůj závazek ke mně někdy využiju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 87.1 93.1 94.1 95.1
  SAY #30494 /* ~"Ty... jsi s ní mluvil?" Iannis vypadá na chvíli ještě zmateněji. "Co jí trápí?"~ */
  IF ~~ THEN REPLY #30495 /* ~"Já... nejsem si jistý. Její řeč mi nedávala smysl."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 96
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Asi já. Řekla mi, že mě milovala a já miloval ji... a pak jsem ji opustil."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 98
  IF ~  GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Asi já. Řekla mi, že mě milovala a já miloval ji... a pak jsem ji opustil."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 83
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY #30497 /* ~"Aha. Možná..."Iannis se zamračil a prohlíží si tě... jeho tvář jako by zkameněla. "Nejsi to ty, s kým odešla ze Sigilu? Ten, který ji zavedl na cestu, jež ji zabila?"~ */
  IF ~~ THEN REPLY #30498 /* ~"Já... nejsem si jistý. Mohl bych být ten muž, ale zapomněl jsem toho příliš."~ */ GOTO 88
  IF ~~ THEN REPLY #30499 /* ~"Nemyslím si to. Vypadala hysterická a nechápala, kde se nachází. Měl bys za ní zajít."~ */ GOTO 96
END

IF ~~ THEN BEGIN 99 // from: 88.0 103.0
  SAY #30500 /* ~"Za výkonu svého úřadu jsem potkal bezpočet lhářů." Iannis si tě důkladně prohlíží. "Nepřipadáš mi jako jeden z nich... alespoň ne v tomto případě." Povzdychl si. "Pokud si opravdu nepamatuješ, potom to, co se přihodilo tobě a mé dceři, muselo zanechat hluboké jizvy."~ */
  IF ~~ THEN REPLY #30501 /* ~"S tím musím souhlasit."~ */ DO ~SetGlobal("Deionarra_Fate_Quest","GLOBAL",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #30502 /* ~"Potom tě žádám o toto: Pokud se tvá paměť vrátí a ty zjistíš, co se stalo mé dceři, vrať se ke mně a řekni mi to, ať se má mysl alespoň trochu uklidní.""~ */
  IF ~~ THEN REPLY #30503 /* ~Přísahej:"Udělám to."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_7","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30504 /* ~Lži: "Udělám to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Iannis_4","GLOBALGood",-1)
~ GOTO 83
  IF ~~ THEN REPLY #30505 /* ~"Pokud zjistím, co se jí stalo, vrátím se... bude-li to v mé moci."~ */ GOTO 83
END

IF ~~ THEN BEGIN 101 // from: 89.0
  SAY #30506 /* ~"Aha." Iannis se zamračil. "Děkuji ti za zklidnění mé mysli, pane. Mohu jenom doufat, že před smrtí netrpěla a že zemřela rychle."~ */
  IF ~~ THEN REPLY #30507 /* ~"Bez pochyby... Jsem si jistý, že její smrt byla rychlá. Nemoc na ni zaútočila jako dýka, bez varování."~ */ GOTO 83
END

IF ~~ THEN BEGIN 102 // from: 64.2
  SAY #30508 /* ~"Oh, ano..." Iannis přikývl. "V žilách mé dcery kolovala krev věštkyně, ale byl to nespolehlivý talent. Někdy dokázala předpovídat události, než se staly... měla 'Zrak', dokázala vidět skrze čas, prosívat nitky osudu..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30509 /* ~"Iannisi, zjistil jsem, co potkalo Deionarru."~ */ GOTO 75
  IF ~~ THEN REPLY #30510 /* ~"Řekl jsi, že byla Vnímavá?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30511 /* ~"Víš něco o muži, se kterým cestovala?"~ */ GOTO 72
  IF ~~ THEN REPLY #30512 /* ~"Víš, kam cestovala?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30513 /* ~"Víš, jak zemřela?"~ */ GOTO 85
  IF ~~ THEN REPLY #30514 /* ~"Odpusť mi mou otázku, ale jestli jsi nezískal její tělo, jak víš, že zemřela?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30515 /* ~"Aha. Řekni mi o tom ohni."~ */ GOTO 39
  IF ~~ THEN REPLY #30516 /* ~"Možná je ještě něco, s čím bys mi mohl pomoct..."~ */ GOTO 1
  IF ~~ THEN REPLY #30517 /* ~"Hmmm. To musel být užitečný talent... zvláště pro toho, s kým cestovala. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 88.1 88.2
  SAY #30518 /* ~"Ne, pane, rozuměl jsem ti jasně. Řekl jsi, že víš, co se stalo mé dceři. Povíš mi to. Hned." Iannis se zamračil ještě více. "Nebo zavolám hlídku Harmonia, která z tebe odpovědi vypáčí."~ */
  IF ~~ THEN REPLY #30519 /* ~"Jsem v podivném stavu... ztratil jsem se... na čas. Nelhal jsem ti o tvé dceři. Pouze si nemohu vzpomenout na velkou část svého života."~ */ GOTO 99
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30520 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30521 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30522 /* ~Zlom mu krk..~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30523 /* ~"Chceš zavolat stráže? Klidně. Zemřou stejně snadno jako ty."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 104 // from: 15.2 66.4 67.2 68.2
  SAY #30524 /* ~"Ah!" Iannis kývl. "Vypadá to, že mluvíš pravdu... takže jsi znal mou dceru." Povzdechl si. "Počkej moment, a já se podívám, co ti nechala."~ */
  IF ~~ THEN REPLY #30525 /* ~"Počkám."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #30526 /* ~Získal jsem dědictví Deionarry od jejího otce.~ */ GOTO 31
END
