// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #37971 /* ~
~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #37972 /* ~Vidíš mladou ženu, která se právě snaží upoutat tvou pozornost. Má oblečeny ošuntělé šaty, ale sálá z ní graciéznost a elegance, narozdíl od lidí kolem ní. Bližším pohledem zjistíš, že má čistou, jemnou pleť, bez žlutého nádechu obyvatel této čtvrti. Když jsi k ní došel, usmála se na tebe.~ */
  IF ~~ THEN REPLY #37973 /* ~"Dobrý den."~ */ GOTO 2
  IF ~~ THEN REPLY #37974 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37975 /* ~"Děkuji bohu, že sis mě všiml. Potřebuji pomoc nějakého žoldáka..." Pečlivě si tě prohlédla. "Mám-li soudit podle vzhledu, právě jsem jednoho našla."~ */
  IF ~~ THEN REPLY #37976 /* ~"Vzhled může klamat."~ */ GOTO 3
  IF ~~ THEN REPLY #37977 /* ~"Co přesně ode mě chceš?"~ */ GOTO 4
  IF ~~ THEN REPLY #37978 /* ~"Nějak se mi to nelíbí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37979 /* ~Na její tváři si postřehl záblesk znepokojení. "Jistě, příteli. Odpusť mi to, nechtěla jsem tě urazit. Jsem ve velmi zoufalé situaci. Už jsem vyčerpala všechny dostupné prostředky, abych vše napravila, ale..."~ */
  IF ~~ THEN REPLY #37980 /* ~"Co přesně ode mě chceš?"~ */ GOTO 4
  IF ~~ THEN REPLY #37981 /* ~"Nějak se mi to nelíbí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #37982 /* ~Přikývla. "To hlavní je, že mám být prodána do otroctví za zločin, který jsem nespáchala. Potřebuji spasitele, někoho, kdo mi pomůže prokázat nevinu a zbavit mě tohoto osudu..." Odmlčela se a dívá se na tebe s očekáváním.~ */
  IF ~~ THEN REPLY #37983 /* ~"Řekni mi přesně, co se děje."~ */ GOTO 5
  IF ~~ THEN REPLY #37984 /* ~"Nějak se mi to nelíbí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37985 /* ~Chvíli přemýšlí. "Je to delší příběh, příteli, buď trpělivý."~ */
  IF ~~ THEN REPLY #37986 /* ~"Pokračuj."~ */ GOTO 6
  IF ~~ THEN REPLY #37987 /* ~"Na to nemám čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 25.1 26.1
  SAY #37988 /* ~Povzdechla si a začala s vyprávěním. "Můj manžel nedávno zemřel a zanechal mi svůj obchod. Nejsem zrovna obchodní typ, a tak jsem se rozhodla jej prodat. Nedlouho poté mě zkontaktoval lichvář a říkal, že na obchod si můj manžel půjčil a ještě půjčku neuhradil..." Odmlčela se, aby si srovnala myšlenky. ~ */
  IF ~~ THEN REPLY #37989 /* ~"Pokračuj."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37990 /* ~"Prozkoumala jsem dokumenty mého muže a našla jsem opravdu doklad o té půjčce, byla ale již dávno splacena. Vysvětlila jsem to lichváři a on mě o několik dní později požádal o kopii toho dokumentu... Ten už ale nebyl k nalezení." Opět se odmlčela a přemýšlí.~ */
  IF ~~ THEN REPLY #37991 /* ~"Pokračuj."~ */ GOTO 8
  IF ~~ THEN REPLY #51297 /* ~"Myslím, že už jsem slyšel dost. K věci."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37992 /* ~"Takže, když jsem nemohla dokázat, že je dluh uhrazen, lichvář mě hnal k soudu. Vzali mi peníze na splacení dluhu. A protože to nebylo dost, mám být prodána, abych splatila i zbytek." Dívá se na tebe s beznadějí v očích.~ */
  IF ~~ THEN REPLY #37993 /* ~"Tomu nerozumím, proč tě prodávají do otroctví?"~ */ GOTO 9
  IF ~~ THEN REPLY #37994 /* ~"Myslím, že jsem slyšel dost. Pojďme k věci."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #37995 /* ~Pokrčila rameny. "Slouží to více účelům. Zaprvé, vězení jsou relativně prázdná, s výjimkou těch nejhorších kriminálníků. Zadruhé, prodejem trestance se dají získat peníze k zaplacení škod, nákladů a poplatků souvisejících s případem. A konečně, odsouzený je potrestán a propuštěn bude, doufejme, jako lepší občan."~ */
  IF ~~ THEN REPLY #37996 /* ~"To je moc zajímavé, ale jak to souvisí se mnou?"~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.1 9.0
  SAY #37998 /* ~"Já ... potřebuji někoho, aby našel ten ztracený dokument, ten, který dokazuje, že dluh byl již splacen. Nebo si mne můžeš koupit, můžu tě vyplatit..." Má prosebný výraz. " Nemůžu strávit příštích pět let svého života v této čtvrti, příteli. Zabilo by mě to! Určitě sis všiml té choroby, jíž tu všichni trpí.~ */
  IF ~~ THEN REPLY #37999 /* ~"Ne, o jaké nemoci to mluvíš?"~ */ GOTO 11
  IF ~~ THEN REPLY #38000 /* ~"Ano, žlutá kůže, kašel..."~ */ GOTO 12
  IF ~~ THEN REPLY #38001 /* ~"To není moje starost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38002 /* ~Gestem ukázala kolem sebe. "Podívej se na ně, kámo. Vidíš tu žlutou kůži? A teď se podívej nad sebe, na ta mračna dýmu ve vzduchu..." Ukazuje nahoru. "Zabije tě to, pokud si nemůžeš dovolit ranhojiče. Pochybuji, že jako otrok na něj mít budu."~ */
  IF ~~ THEN REPLY #38003 /* ~"Tak proto mají všichni žlutou kůži..."~ */ GOTO 12
  IF ~~ THEN REPLY #38004 /* ~"To není moje věc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 25.0 26.0
  SAY #38005 /* ~Přikývla." Ano. Prosím tě, budeš té lásky a pomůžeš mi? " Nervózně si tě prohlíží. "Prosím..."~ */
  IF ~~ THEN REPLY #38006 /* ~"Co z toho budu mít?."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trist_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~~ THEN REPLY #38007 /* ~Pravda: "Byla jsi souzena a odsouzena. Já ti nemohu nijak pomoci. "~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trist_1","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #38008 /* ~"Ano, pomůžu ti. Ale mám ještě pár otázek..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Žena jménem Trist má být prodána do otroctví, pokud nebude nalezen ztracený dlužní úpis. Souhlasil jsem, že jí pomůžu.~ */ GOTO 13
  IF ~~ THEN REPLY #38009 /* ~"Ne, nechci se do toho zamotat."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38010 /* ~"Potřebuju si to chvíli promyslet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.2 15.1 16.0 17.0 18.4 19.1 20.0 21.0 22.0 23.0 27.1 35.1 36.1 37.0
  SAY #38011 /* ~Dychtivě přikývla. "Ptej se na cokoliv."~ */
  IF ~~ THEN REPLY #38012 /* ~"Jak se jmenuje ten lichvář?"~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #38013 /* ~"S kým bych si měl promluvit o smlouvě?"~ */ GOTO 16
  IF ~~ THEN REPLY #38014 /* ~"Nemohla jsi ten dlužní úpis ztratit?"~ */ GOTO 17
  IF ~~ THEN REPLY #38015 /* ~"Myslíš, že ten dlužní úpis mohl být ukraden?"~ */ GOTO 18
  IF ~~ THEN REPLY #38016 /* ~"Vysvětlila jsi to všechno soudu?"~ */ GOTO 21
  IF ~~ THEN REPLY #38017 /* ~"Myslím, že už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38018 /* ~"Jeho jméno znám dobře. Po tom všem čím jsem prošla, ho asi nikdy nezapomenu..." Zadívala se do prázdna a pak se zachvěla. "Jmenuje se Byron Pikit." Na chvíli utichla. "A jeho společník je někdo jménem Lenny."~ */
  IF ~~ THEN REPLY #38019 /* ~"Kdo je ten Lenny?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38020 /* ~"Kde najdu Byrona?"~ */ GOTO 15
  IF ~~ THEN REPLY #38021 /* ~"Mám další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #38022 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 36.0
  SAY #38023 /* ~Zamyslela se. "Myslím, že je někde v okolí, nebo uvnitř Tržnice. Odpusť, ale nevím to jistě."~ */
  IF ~~ THEN REPLY #38024 /* ~"Zmínila ses o Lennym. Kdo to je?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38025 /* ~"Mám další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #38026 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #38027 /* ~"Asi s Deranem, licitátorem. Většinou bývá támhle." Ukazuje na předek pódia.~ */
  IF ~~ THEN REPLY #38028 /* ~"Mám další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #38029 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #38030 /* ~Vrtí hlavou. "Ne, to určitě ne. Jsem na takové věci velmi pořádná. Dokument byl zamčen v trezoru pracovny mého muže. Nikdy jsem ho neodnášela..."~ */
  IF ~~ THEN REPLY #38031 /* ~"Mám další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #38032 /* ~"Musím už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.3
  SAY #38033 /* ~Pokrčila rameny. "Nevím. Proč by někdo ukradl úpis a ostatní cennosti nechal být? To mi nedává smysl."~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"No... Možná ho ukradl lichvář, abys půjčku musela splatit dvakrát..."~ */ GOTO 19
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"No... Byl to jen nápad."~ */ GOTO 22
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"No... Možná ho ukradl lichvář, abys půjčku musela splatit dvakrát..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"No... Byl to jen nápad."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #38036 /* ~"Mám další otázky."~ */ GOTO 13
  IF ~~ THEN REPLY #38037 /* ~"Musím jít. Sbohem.."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.2
  SAY #38038 /* ~Šokovaně se na tebe dívá. " To... to je hrozné pomyšlení!" Váhá a potom chvíli přemýšlí. "Ale docela to sedí. Tenhle Byron Pikit mi vždycky připadal jako průkopník ´Nové Teorie Obchodu´."~ */
  IF ~~ THEN REPLY #38039 /* ~"Cože?"~ */ GOTO 20
  IF ~~ THEN REPLY #38040 /* ~"Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #38041 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #38042 /* ~Vrhla na tebe pohled co-to-je-za-vola. "To znamená zloděj, podvodník, chmaták, hajzl od kosti a podobně. Jen jsem se snažila být slušná."~ */
  IF ~~ THEN REPLY #38043 /* ~"Mám další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #38044 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.4
  SAY #38045 /* ~Přikývla. "Ale jistě že jsem to všem vysvětlila. Asi miliónkrát. Jsi první, kdo mi chce pomoci." Hezky se na tebe usmála.~ */
  IF ~~ THEN REPLY #38046 /* ~"Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #38047 /* ~"Musím už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1 18.3
  SAY #38048 /* ~Pokrčila rameny. "Fajn nápad."~ */
  IF ~~ THEN REPLY #38050 /* ~"Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #38113 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #38051 /* ~Chvíli na tebe bezvýrazně civí a pak jí po tváři přeběhne beznaděj. "Já... já nemám nic, co bys mohl chtít. Ztratila jsem všechno." Vypadá zoufale. "Prosím, nenech mě tomuto krutému osudu..."~ */
  IF ~~ THEN REPLY #38052 /* ~"Ano, pomůžu ti. Ale mám nejprve pár otázek..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Žena jménem Trist má být prodána do otroctví, pokud nebude nalezen ztracený dlužní úpis. Souhlasil jsem, že jí pomůžu.~ */ GOTO 13
  IF ~~ THEN REPLY #38053 /* ~"Ne, nechci se do toho míchat."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38054 /* ~"Potřebuju si to chvíli promyslet. Sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #38055 /* ~Vidíš Trist. Dívá se na tebe se zoufalstvím v očích. "Zdravím tě. Mohu si s tebou promluvit? Je to důležité."~ */
  IF ~~ THEN REPLY #38056 /* ~"Dobře."~ */ GOTO 6
  IF ~~ THEN REPLY #38057 /* ~"Teď nemám čas. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #38058 /* ~Vidíš trist. Dívá se na tebe se zoufalstvím v očích. "Zdravím tě. Přišel jsi, abys mi pomohl?"~ */
  IF ~~ THEN REPLY #38059 /* ~"Stále hledáš někoho, kdo by vyřešil tvůj problém?"~ */ GOTO 12
  IF ~~ THEN REPLY #38060 /* ~"Řekni mi znovu svůj příběh."~ */ GOTO 6
  IF ~~ THEN REPLY #38061 /* ~"Nemám zájem. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #38062 /* ~Vidíš Trist. Dívá se na tebe se zoufalstvím v očích. "Zdravím tě. Změnil jsi názor? Chceš mi pomoci?"~ */
  IF ~~ THEN REPLY #38063 /* ~"Pořád hledáš někoho, kdo by vyřešil tvůj problém?"~ */ GOTO 12
  IF ~~ THEN REPLY #38064 /* ~"Řekni mi znovu svůj příběh."~ */ GOTO 6
  IF ~~ THEN REPLY #38065 /* ~"Ne, nemám zájem. Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #38066 /* ~Vidíš Trist. Usmívá se na tebe. "Máš ten dokument? Můžeš mě osvobodit?"~ */
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #38067 /* ~"Ano, dám jej Deranovi a on tě propustí."~ */ GOTO 28
  IF ~~ THEN REPLY #38068 /* ~"Potřebuju se tě znovu na něco zeptat..."~ */ GOTO 13
  IF ~~ THEN REPLY #67814 /* ~"No, Pořád na tom pracuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #38069 /* ~Úleva se jí rozlila po tváři. "Děkuji, příteli. Prosím, až promluvíš s Deranem, vrať se ke mně."~ */
  IF ~~ THEN REPLY #38070 /* ~"Vrátím. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Trist_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #38071 /* ~Trist se na tebe přátelsky usmívá. "Zachránil jsi mě, příteli. Budu navždy tvým dlužníkem." ~ */
  IF ~~ THEN REPLY #38072 /* ~"Rád jsem ti pomohl, Trist."~ */ GOTO 30
  IF ~~ THEN REPLY #38073 /* ~"Už za mnou nikdy nechoď se svými problémy. Nebyla to žádná sranda."~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #38074 /* ~"Díky, příteli." Na chvíli se zamyslela. "Zachránil jsi mne od jisté smrti. Pomalé, bolestivé smrti..." Mimoděk se zamračila. "Počkej tu chvíli, hned se vrátím." Otočila se a odešla.~ */
  IF ~~ THEN REPLY #38075 /* ~"Dobře, Trist."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #38077 /* ~Vidíš přicházet Trist, mává ti a směje se. "Tak jsem zpátky, díky že jsi počkal." Chvíli si tě prohlíží a pak ze záhybů svých šatů vytahuje měšec. "Díky dokumentu, který jsi získal, mi soud vrátí mé postavení i peníze. V měšci není moc peněz, ale je to zasloužená odměna za dobře vykonanou práci." Podává ti měšec.~ */
  IF ~~ THEN REPLY #38078 /* ~"Díky, Trist."~ */ DO ~AddexperienceParty(4000)
GiveGoldForce(1000)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38079 /* ~Usmívá se. "Ne, já děkuji tobě. Sbohem, příteli."~ */
  IF ~~ THEN REPLY #38080 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #38081 /* ~Zamračila se na tebe, pak přikývla. "Ano, to si dokážu představit. Znovu ti děkuji,  sbohem." ~ */
  IF ~~ THEN REPLY #38082 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 14.0 15.0
  SAY #38083 /* ~Na chvíli se zamyslela. "U soudu jsem párkrát viděla malého, zvláštního muže. Seděl přímo za Pikitem a něco mu šeptal." Odmlčela se jakoby ztracená v myšlenkách.~ */
  IF ~~ THEN REPLY #38084 /* ~"Pokračuj."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38085 /* ~Zamračila se. "Pamatuju si ho, protože se choval, jako by měl nepohodlné šaty. Pořád je upravoval, jako by byly nové, jako by ještě na ně nebyl zvyklý." Znovu se odmlčela. "Jednou mu Pikit řekl, ať se přestane ošívat a sedí chvíli normálně. Říkal mu Lenny."~ */
  IF ~~ THEN REPLY #38086 /* ~"Kde toho Lennyho můžu najít?"~ */ GOTO 36
  IF ~~ THEN REPLY #38087 /* ~"Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #38088 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #38089 /* ~Chvíli přemýšlí a pak pokrčí rameny. "Nejsem si moc jistá... No, můj muž mi říkal, že pár banditů sídlí jihovýchodně od tržiště, poblíž obléhací věže, myslím..."~ */
  IF ~~ THEN REPLY #38090 /* ~"Kde bych našel toho Byrona?"~ */ GOTO 15
  IF ~~ THEN REPLY #38091 /* ~"Mám další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #38092 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 12.1
  SAY #38093 /* ~Ve tváři se jí objevil dotčený výraz. "Určitě si uvědomuješ, že i jusice se někdy může mýlit. A pokud má nevinný kvůli něčemu takovému trpět... Bylo by to hrozné i vůči samotné spravedlnosti." Vypadá zoufale. "Prosím, nenechávej mne napospas tomuto osudu..."~ */
  IF ~~ THEN REPLY #38094 /* ~"Ano, pomůžu ti. Ale nejdříve mám pár otázek..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ GOTO 13
  IF ~~ THEN REPLY #38095 /* ~"Ne, nechci se do toho míchat."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38096 /* ~"Potřebuji si to chvíli rozmyslet. Sbohem."~ */ EXIT
END
