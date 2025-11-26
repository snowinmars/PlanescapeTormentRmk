// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
GlobalLT("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #1981 /* ~Vidíš nádhernou dívku s rudými vlasy, navlečenou do kožené zbroje. Pravou ruku má zakrytou překrývajícími se pláty, které jsou nejspíš vyřezány z kůže nějakého stvoření, levou paži chrání rohatý nárameník. Je zvláštní, že dívka má ocas... který sebou švihá sem a tam. "Vodpal, vole."~ [ANA377A] */
  IF ~~ THEN REPLY #1982 /* ~"Zdravím."~ */ DO ~SetGlobal("Know_Annah","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #1983 /* ~Projdi kolem.~ */ DO ~SetGlobal("Know_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1984 /* ~Dívka tě ignoruje.~ */
  IF ~~ THEN REPLY #1985 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #1986 /* ~"Můžeš mi říct, kde to jsem?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1987 /* ~"Hledám někoho jménem Pharod. Nevíš, kde bych ho našel?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1988 /* ~"Ztratil jsem deník. Není tady někde kolem?"~ */ GOTO 29
  IF ~~ THEN REPLY #1989 /* ~"Tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1990 /* ~Dívka si odfrkla a naznačila ocasem sprosté gesto. "Vodpal, ty debilní hňupe."~ */
  IF ~~ THEN REPLY #2119 /* ~"Hej, klídek, mám jenom pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #2120 /* ~"Dej si pozor na pusu, děvče. *Nemám* na to náladu. A teď mi odpověz. Kdo jsi?"~ */ GOTO 16
  IF ~~ THEN REPLY #2121 /* ~"Uh... Tak teda sbohem."~ */ GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.2 10.3 11.3
  SAY #1991 /* ~"Jo, bysem mohla. Bysem mohla něco říct, esli ty svý votázky kapku vosladíš, jo?" Mlaskla a pak si začala třít prsty o sebe. "Prašule, jasan?"~ */
  IF ~  Global("Know_Jink","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #1992 /* ~"'Prašule'?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Know_Jink","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #1993 /* ~"'Prašule'?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ EXTERN ~DMORTE~ 39
  IF ~  Global("Know_Jink","GLOBAL",1)
~ THEN REPLY #1994 /* ~"Dobře... kolik?"~ */ GOTO 6
  IF ~~ THEN REPLY #1995 /* ~"No tak nic. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 4 // from: 3.0 197.1 198.1
  SAY #1996 /* ~Dívka se na tebe nechápavě dívá, na chvíli dokonce přestala mrskat ocasem. "Cože? Prachy - mince, měď, stříbro, zlato... peníze, jasan?" Přimhouřila oči. "Esli máš, tak by sem třeba mohla vědít něco, co by tě mohlo zajímat."~ */
  IF ~~ THEN REPLY #1997 /* ~"Dobře. Kolik?"~ */ GOTO 6
  IF ~~ THEN REPLY #1998 /* ~"Pochybuju, že víš *něco*, co by mě zajímalo, ale zkus to. Pak uvidíme, jestli to má nějakou cenu."~ */ GOTO 16
  IF ~~ THEN REPLY #1999 /* ~"No nic. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 5 // from:
  SAY #2002 /* ~"Jo..." Přejela pohledem Morta, pak pokrčila rameny. "Přesně jak povídá lebzna. Tvrdý prachy."~ */
  IF ~~ THEN REPLY #2003 /* ~"Dobře. Kolik?"~ */ GOTO 6
  IF ~~ THEN REPLY #2004 /* ~"Pochybuju, že víš *něco*, co by mě zajímalo, ale zkus to. Pak uvidíme, jestli to má nějakou cenu."~ */ GOTO 16
  IF ~~ THEN REPLY #2005 /* ~"No nic. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0
  SAY #2006 /* ~"Kolik to pro tebe znamená, vědět, he?" Chvíli si tě prohlíží, pak si založila ruce a vyzvala tě: "No tak se pohni, nemám celej den, to teda ne."~ */
  IF ~  PartyGoldGT(9)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #2008 /* ~"Co takhle deset? Stačí?"~ */ GOTO 7
  IF ~  PartyGoldGT(9)
CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #2007 /* ~Použij Šarm: "Co takhle deset? Pokud bude tvá informace za něco stát, tak možná připlatím."~ */ DO ~TakePartyGold(10)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2009 /* ~"Co takhle dvacet?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(10)
~ THEN REPLY #2010 /* ~"Myslím, že nemám dost, aby tě to zaujalo."~ */ GOTO 14
  IF ~~ THEN REPLY #2011 /* ~"No nic. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #2012 /* ~"Za tolik si nezajdu ani na pořádnej hajzl. Budeš potřebovat fakt vo dost víc, esli se chceš tady s někým kamarádit."~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2013 /* ~"Ta co takhle dvacet?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(20)
~ THEN REPLY #2014 /* ~"Myslím, že nemám dost, aby tě to zaujalo."~ */ GOTO 19
  IF ~~ THEN REPLY #2015 /* ~"No tak nic. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 7.0
  SAY #2016 /* ~"No tak teda jo..." Schovala peníze. Zmizely tak rychle, že jsi neměl šanci postřehnout, kam je vlastně dala. "Hledej ho v Uličce směrem k Jehlanu vod Márnice... to je na jihozápad, jasný?"~ */
  IF ~~ THEN REPLY #2017 /* ~"Dobrá tedy. Mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2018 /* ~"To je podivné... na jihozápad od Márnice je ulička zaplněná těžce ozbrojenými hrdlořezy. Nevíš o tom náhodou něco?"~ */ GOTO 30
  IF ~~ THEN REPLY #2040 /* ~"Jihozápadně od Márnice? Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1 10.2 11.2
  SAY #2019 /* ~"Seš ztracenej a hledáš akorát problémy, to jo. Tak se radši ztrať někde jinde, ty pako."~ */
  IF ~~ THEN REPLY #2020 /* ~"Ještě bych chtěl odpovědi na pár dalších otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #2021 /* ~"Takže sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 2.0 8.0 9.0 12.4 18.1 21.0 22.1 23.0 26.1 29.0 30.2 31.0
  SAY #2022 /* ~"Jo? A co je to, co chceš vědět, he?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2023 /* ~"Víš o tom, že máš ocas?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2024 /* ~"Nemůžu si pomoct, ale mám takový pocit, že máš ocas."~ */ GOTO 12
  IF ~~ THEN REPLY #2025 /* ~"Můžeš mi říct, kde to jsem?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2026 /* ~"Hledám někoho jménem Pharod. Nevíš, kde bych ho našel?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2027 /* ~"Říkala jsi, že Pharoda najdu na jihozápad od Márnice, správně?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2028 /* ~"To je podivné... na jihozápad od Márnice je ulička zaplněná těžce ozbrojenými hrdlořezy. Nevíš o tom náhodou něco?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2029 /* ~"Ztratil jsem deník. Nevidělas ho někde náhodou?"~ */ GOTO 29
  IF ~~ THEN REPLY #2030 /* ~"Nic. Sbohem."~ */ GOTO 19
END

IF WEIGHT #3 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
Global("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #2031 /* ~Rudovlasá dívka zaúpěla, když tě uviděla. Začala nervózně šlehat ocasem sem a tam. "No? Co je zas?"~ [ANA238D] */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2032 /* ~"Víš o tom, že máš ocas?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2033 /* ~"Nemůžu si pomoct, ale mám takový pocit, že máš ocas."~ */ GOTO 12
  IF ~~ THEN REPLY #2034 /* ~"Můžeš mi říct, kde to jsem?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2035 /* ~"Hledám někoho jménem Pharod. Nevíš, kde bych ho našel?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2036 /* ~"Říkala jsi, že Pharoda najdu na jihozápad od Márnice, správně?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2037 /* ~"To je podivné... na jihozápad od Márnice je ulička zaplněná těžce ozbrojenými hrdlořezy. Nevíš o tom náhodou něco?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2038 /* ~"Ztratil jsem deník. Nevidělas ho někde náhodou?"~ */ GOTO 29
  IF ~~ THEN REPLY #2039 /* ~"Nic. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 11.0 11.1
  SAY #2041 /* ~"Ale *nekecej*!?" Dívka se podívala na svůj ocas. "Jo, to jo. No čéče, já si normálně myslela, že to mě akorát nějak matou mý voči, že to je nějaká fata morgána, či co. No nejseš ty ale chytrej?" Vycenila zuby. "Proč radši nevypadneš a nestrčíš tu svoji hnusnou držku do tý hromady sraček, ze kerý si vylezl? Mě nechej bejt! Já ani můj vocas nejsme na prodej, jasný?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2042 /* ~"Dobře... byl jsem jenom zvě-"~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2043 /* ~"Uh, oukej... ještě se chci zeptat -"~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2044 /* ~"No tak nic. Sbo -"~ */ EXTERN ~DMORTE~ 40
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2045 /* ~"Jo, ale *proč* máš ocas?"~ */ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2046 /* ~"Uh, okay... Mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2047 /* ~"No nic... Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2050 /* ~"Co to meleš, ty hovne?! Jen to řekni eště jednou!"~ */
  IF ~~ THEN REPLY #2051 /* ~"Nic jsem neřekl... ale já jsem stejně zvědavý...*proč* máš ocas?"~ */ GOTO 15
  IF ~~ THEN REPLY #2052 /* ~"Zapomeň na něj... Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #2053 /* ~"Řekl, že by sis nevydělala na živobytí, kdyby ses měla prodávat."~ */ GOTO 22
  IF ~~ THEN REPLY #2054 /* ~"Řekl, a já nesouhlasím, že by sis nevydělala na živobytí, kdyby ses měla prodávat."~ */ GOTO 23
  IF ~~ THEN REPLY #2055 /* ~"Řekl, a já souhlasím, že by sis nevydělala na živobytí, kdyby ses měla prodávat."~ */ GOTO 24
  IF ~~ THEN REPLY #2056 /* ~"Nic. Jdeme. Sbohem."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 2.2 6.3 13.5 15.2 24.2
  SAY #2057 /* ~"Jo, tak táhni do prdele."~ */
  IF ~~ THEN REPLY #2065 /* ~"Už mám dost tvých keců, holčičko... čas zemřít, kotě."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #2066 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3 13.0
  SAY #2058 /* ~Dívčiny oči se zúžily na dvě tenké škvírky. "Seš *hluchej*? Seš snad blbější než kus šutru, anebo seš třeba bůh Debility? Bodejť by na tebe dabus přibil pár prken a udělal z tebe kus ulice!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2059 /* ~"Hele..."~ */ EXTERN ~DMORTE~ 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2060 /* ~"No tak nic. Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2061 /* ~"Tak teda sbohem."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 2.1 4.1 5.1 13.1 15.1 24.1 27.0 28.0 30.0 30.1
  SAY #2062 /* ~"Drž hubu! Už ti nemám co říct, vole! Zmiz!"~ */
  IF ~~ THEN REPLY #2063 /* ~"Radši si dávej pozor na pusu, děvče, nebo přes ni dostaneš. Zapamatuj si to pro případ, že bych s tebou ještě chtěl mluvit."~ */ GOTO 19
  IF ~~ THEN REPLY #2064 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2070 /* ~"Si radši hlídej hubu, ty drzej mimire, nebo ti urvu tu tvoji hnusnou kostnatou čelist, jasan?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 42
END

IF ~~ THEN BEGIN 18 // from:
  SAY #2078 /* ~"Jo, to je fakt. Zklidni si svýho mimira, vole, nebo pude za svým tělem, jasan?"~ */
  IF ~~ THEN REPLY #2086 /* ~"Mimir? O čem to mluvíš?"~ */ GOTO 20
  IF ~~ THEN REPLY #2087 /* ~"Fajn. Hele, mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #2088 /* ~"Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 3.3 4.2 5.2 6.4 7.1 7.2 9.1 10.7 11.7 12.5 16.0 18.2 21.1 22.2 24.3 25.2 25.3 26.2 27.1 28.1 29.1 30.3 31.2
  SAY #2081 /* ~"Jo, tak táhni tam, vodkad si přišel."~ */
  IF ~~ THEN REPLY #2082 /* ~"Sbohem i tobě."~ */ EXIT
  IF ~~ THEN REPLY #2083 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #2084 /* ~"Jo, mimir!  To je ta dutina mezi tvejma ušima tak velká, že se moje slova odrážej jak ozvěna? Debile!"~ */
  IF ~~ THEN REPLY #2085 /* ~"Ještě jsi mi neodpověděla na moji otázku. Co je to mimir?"~ */ EXTERN ~DMORTE~ 43
END

IF ~~ THEN BEGIN 21 // from:
  SAY #2089 /* ~Podívala se na Morta, pak na tebe. Odfrkla si. "Bych řekla, že teď už vím, kdo z vás má mozek, he?"~ */
  IF ~~ THEN REPLY #2090 /* ~"Jo, jo. Hele, mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #2091 /* ~"Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 13.2
  SAY #2092 /* ~"Jo tak? Tak to je dobře, že prodávám mrtvoly, co? A ty už vypadáš připravenej pro spalovačskou pec, lebkoune!"~ */
  IF ~~ THEN REPLY #2095 /* ~"Prodáváš mrtvoly?"~ */ GOTO 25
  IF ~~ THEN REPLY #2096 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #2097 /* ~"Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 23 // from: 13.3
  SAY #2093 /* ~"Co je to jako? Si hraješ na tvrdohlavýho starýho kámoše či co?" Odfrkla si. "Vodpal, ty nadrženej sviňáku."~ */
  IF ~~ THEN REPLY #2098 /* ~"Ještě ne... Mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #2099 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.4
  SAY #2094 /* ~"Jo tak? Tak to je dobře, že prodávám mrtvoly, co? A vy už voba vypadáte připravený pro spalovačskou pec, chcípáci." Švihá ocasem sem a tam. "Nenuťte mě, abysem vás strčila do Knihy Zdechlejch!"~ */
  IF ~~ THEN REPLY #2101 /* ~"Prodáváš mrtvoly?"~ */ GOTO 25
  IF ~~ THEN REPLY #2102 /* ~"Uklidni se, děvče. Mám ještě pár otázek, pak už tě nechám být..."~ */ GOTO 16
  IF ~~ THEN REPLY #2103 /* ~"Tohle nikam nevede. Sbohem."~ */ GOTO 14
  IF ~~ THEN REPLY #2104 /* ~Odejdi.~ */ GOTO 19
END

IF ~~ THEN BEGIN 25 // from: 22.0 24.0
  SAY #2100 /* ~"Jo, Spalováci platěj ňáký ty drobný každýmu, kdo tahá zdechliny z ulice do Márnice. Todle je ale moje území, tak ať vás ani nenapadne mi tady ňáký zdechliny brát, jasan?"~ */
  IF ~~ THEN REPLY #2105 /* ~"Na co jsou Spalovačům mrtvoly?"~ */ GOTO 26
  IF ~~ THEN REPLY #2106 /* ~"Tvoje území?"~ */ GOTO 28
  IF ~~ THEN REPLY #2107 /* ~"Fajn."~ */ GOTO 19
  IF ~~ THEN REPLY #2108 /* ~"Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #2109 /* ~"Aby je správně pohřbili. Posílaj je do tý správný Sféry a zařizujou, aby bylo všechno v mnohovesmíru čistý a fajnový."~ */
  IF ~~ THEN REPLY #2111 /* ~"'Sféra?'"~ */ GOTO 27
  IF ~~ THEN REPLY #2112 /* ~"Aha. Hele, mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #2113 /* ~"Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2110 /* ~"Jo, *Sféra!* Máš v kebuli tak prázdno, že se ti v ní moje slova rozlíhaj? Pche! Moc se ptáš, tupče. Odpal, di si votravovat někoho jinýho."~ */
  IF ~~ THEN REPLY #2114 /* ~"Mám už jenom jednu další otázku..."~ */ GOTO 16
  IF ~~ THEN REPLY #2115 /* ~"Tak dobře. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #2116 /* ~"Jo, *mý* území! Máš v kebuli tak prázdnou, že se moje slova rozlíhaj? Pche! Moc se ptáš, tupče. Vodpal, di si votravovat někoho jinýho."~ */
  IF ~~ THEN REPLY #2117 /* ~"Mám už jenom jednu další otázku..."~ */ GOTO 16
  IF ~~ THEN REPLY #2118 /* ~"Tak dobře. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 29 // from: 1.3 10.6 11.6
  SAY #2122 /* ~Divně se na tebe dívá. "Né... nic takovýho sem neviděla, to ne."~ */
  IF ~~ THEN REPLY #2123 /* ~"Dobře. Mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #2124 /* ~"Stejně díky. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.5 11.5 31.1
  SAY #2125 /* ~"Jo tak? No možná by ses měl zeptat jich, kde ten staroch je."~ */
  IF ~~ THEN REPLY #2126 /* ~Pravda: "Dost těch lží. Řekni mi, kde je Pharod, děvče, nebo někdo donese Spalovačům *tvoje* tělo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Annah_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2127 /* ~Blafuj: "Dost těch lží. Řekni mi, kde je Pharod, děvče, nebo někdo donese Spalovačům *tvoje* tělo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2128 /* ~"Možná to udělám. Hele, mám ještě nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #2071 /* ~"Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 10.4 11.4
  SAY #2129 /* ~"Jó..." Prohlíží si tě. "Jo. Už si zapomněl?"~ */
  IF ~~ THEN REPLY #2130 /* ~"Ne, ale mám nějaké otázky.."~ */ GOTO 10
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2131 /* ~"Ne, ale zajímalo mě, jestli *ty* ano. Víš, na jihozápad od Márnice je ulička plná ozbrojených hrdlořezů. Nevíš o tom něco?"~ */ GOTO 30
  IF ~~ THEN REPLY #2132 /* ~"Tentokrát ne. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 32 // from:
  SAY #2359 /* ~"Vykašli se na to, nemá smysl mluvit s githem, který mluvit nechce, ne? Pojďme."~ */
  IF ~  Global("Know_Gith","GLOBAL",0)
~ THEN REPLY #9023 /* ~"Gith?"~ */ DO ~SetGlobal("Know_Gith","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Know_Gith","GLOBAL",0)
~ THEN REPLY #9024 /* ~"Gith?"~ */ GOTO 74
  IF ~~ THEN REPLY #9025 /* ~"Ještě nejsem připravený odejít. Nejdřív se ho na něco zeptám..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9026 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #2365 /* ~"Kašli na to... Zkrátka pojďme, jo?"~ */
  IF ~~ THEN EXTERN ~DGITH~ 7
END

IF ~~ THEN BEGIN 34 // from:
  SAY #6807 /* ~"Eh..." Annah se na tebe podívala. "On je dabus."~ */
  IF ~~ THEN REPLY #6961 /* ~"Kdo je to 'dabus'"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #6811 /* ~Annah ztiší hlas. "Dabové jsou *Její* příbuzní -- starají se o město, dávají je do pořádku a boří a zase znova staví a vůbec. Mluví skrz symboly hádanek ve vzduchu -- musíš je dát dokupy a spočítat si, co znamenaj." Annah vypadá podrážděně. "Musíš si při tom namáhat mozkovnu, jó, přesně tak."~ */
  IF ~~ THEN REPLY #6962 /* ~"'Její rod'? Kdo?"~ */ GOTO 36
  IF ~~ THEN REPLY #6963 /* ~"Chápu."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #6813 /* ~"Paní bolesti." Annah dělá další půlkruh ve vzduchu před sebou. "Dabové pro ni pracují a vona je ochraňuje... Nezapleť se s nima, to bys ji moh začít zajimat."~ */
  IF ~~ THEN REPLY #6964 /* ~"Můžeš mi něco říct o Paní Bolesti?"~ */ GOTO 37
  IF ~~ THEN REPLY #6965 /* ~"Chápu."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #6814 /* ~"Psssst!" Annah si přejela prstem po krku. "Vůbec vo ní nemluv. Vona má uši *všade*. Tak to je, takže nevykřikuj tady kolem její méno, jasný?"~ */
  IF ~~ THEN REPLY #6966 /* ~"Ach."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6967 /* ~"Dobrá, dobrá."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6815 /* ~Na chvilku se odmlčela. "Joo... to můžu."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6968 /* ~"Uděláš to?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6970 /* ~"Uděláš?"~ */ GOTO 39
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6971 /* ~"Udělej to tedy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6972 /* ~"Udělej to tedy."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 39
  IF ~~ THEN REPLY #6973 /* ~"Nic se neděje. Zrovna odcházíme."~ */ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 39 // from: 38.1 38.3
  SAY #6818 /* ~Annah zavrtěla hlavou. "Ne, nepudu s tebou do stínu Paní, to teda né. Nezdržuj se, jó? Nezískáš nic krom toho, že začne bádat, proč kecáš s jejíma lidma."~ */
  IF ~~ THEN REPLY #6975 /* ~"Chápu."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6974 /* ~"Nic se neděje. Zrovna odcházíme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.2 41.0 44.0 45.1 46.1 48.1
  SAY #6822 /* ~Annah přikývla. Dabus na vás dva dále zírá, ruce zastrčené v rukávech.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6976 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6977 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6978 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6979 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6980 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6981 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #6982 /* ~"Zeptej se ho na Paní bolesti."~ */ GOTO 45
  IF ~~ THEN REPLY #6983 /* ~"Zeptej se ho na Fella."~ */ GOTO 48
  IF ~~ THEN REPLY #6984 /* ~"Nic se neděje. Zrovna odcházíme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 41 // from:
  SAY #6825 /* ~"Teďkonc řek, že je jedním z dabusů." Pokrčila rameny. "Voni nemaj jména."~ */
  IF ~~ THEN REPLY #6985 /* ~"Může nám odpovědět na další otázky?"~ */ GOTO 40
  IF ~~ THEN REPLY #6986 /* ~"To je vše, co jsem chtěl vědět. Pojďme odsud."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 42 // from:
  SAY #6826 /* ~"Teďkonc řek, že je jedním z dabusů." Pokrčila rameny. "Voni nemaj jména."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 115
END

IF ~~ THEN BEGIN 43 // from:
  SAY #6828 /* ~"Dobrá, tak tenhle křikloun nám právě dal své jméno, teď to *udělal*, lebko?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 116
END

IF ~~ THEN BEGIN 44 // from:
  SAY #6835 /* ~Pokrčila rameny. "Řiká, že dělá svou práci. Chňápeš - dohlídá na město a tak."~ */
  IF ~~ THEN REPLY #6987 /* ~"Může nám odpovědět na další otázky?"~ */ GOTO 40
  IF ~~ THEN REPLY #6988 /* ~"To je vše, co jsem chtěl vědět. Pojďme odsud."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 45 // from: 40.6
  SAY #6840 /* ~Annah zavrtěla hlavou. "Ne, nepudu s tebou do stínu Paní, to teda né. Nezdržuj se, jó? Nezískáš nic krom toho, že začne bádat, proč kecáš s jejíma lidima."~ */
  IF ~~ THEN REPLY #6989 /* ~"Podívej, jen se ho zeptej na Paní, jasné?"~ */ GOTO 46
  IF ~~ THEN REPLY #6990 /* ~"V pořádku. Můžeš se ho zeptat na mé další otázky?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6991 /* ~"Zapomeň na to tedy. Teď už pojďme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0
  SAY #6845 /* ~Annah zavrtěla hlavou. "Kdepak."~ */
  IF ~~ THEN REPLY #6992 /* ~"Podívej, *udělej* to. Varuju tě."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 47
  IF ~~ THEN REPLY #6993 /* ~"V pořádku. Můžeš se ho zeptat na mé další otázky?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6994 /* ~"Zapomeň na to, potom. Teď už pojďme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #6848 /* ~Annah zkřížila ruce a její ocas začal švihat tam a zpět.~ */
  IF ~~ THEN REPLY #6995 /* ~"Nech mě to potom zkusit..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6996 /* ~"Zapomeň na to tedy. Teď už pojďme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 48 // from: 40.7
  SAY #6851 /* ~"Depak, nepudu se ptát na Fella u jeho bejvalejch lidí, to teda né. Je špina a žádnymu neudělá dobře, dyž se vytahnou takový věci."~ */
  IF ~~ THEN REPLY #6997 /* ~"Podívej, jen se zatraceně *zeptej*, jasné?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 46
  IF ~~ THEN REPLY #6998 /* ~"Můžeš se ho zeptat na další otázky?"~ */ GOTO 40
  IF ~~ THEN REPLY #6999 /* ~"Zapomeň na to tedy. Teď už pojďme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 49 // from:
  SAY #1855 /* ~Když jsi vykročil za ženou, Annah zasyčela. "Seš *hluchej*? Anebo prostě debilní kretén?!" Švihla několikrát ocasem a pak se vrhla na prostitutku. "Hsst!" Hrozí svými tlačnými dýkami a mává jimi před nosem vyděšené děvce. "Táhni, ty Sigilská kurvo!"~ */
  IF ~~ THEN REPLY #7469 /* ~"Teda! Uklidni se, Annah!"~ */ GOTO 50
  IF ~~ THEN REPLY #7470 /* ~"Dej ty zatracené čepele pryč!"~ */ GOTO 50
  IF ~~ THEN REPLY #7471 /* ~Buď ve střehu a sleduj co se stane.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 53.0 53.1
  SAY #1856 /* ~Zaprskala na tebe. "A ty, ty mizernej svinskej parchante, ty radši přestaň dělat hovadiny, nebo tě přišmiknu, jasný?"~ */
  IF ~~ THEN REPLY #7472 /* ~"'Kupírovat můj ocas'? A za to mám platit?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7473 /* ~"Přestaň vyhrožovat té ženě, nebo tě zbavím *tvé* oháňky, rozumíš?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7474 /* ~"Neptal jsem se tě na tvůj názor, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7475 /* ~"V pořádku, bez problému... klídek."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3
  SAY #7183 /* ~Annah trochu vychladla, ale její ocas švihá sem a tam. "By sis vole měl dát pořádnýho majzla, jestli plánuješ zůstat živej a v jednom kuse dýl, než jenom pár minut."~ */
  IF ~~ THEN REPLY #7476 /* ~"*Nevyhrožuj* mi, Annah. Věz, že ty máš jen jeden život, hm?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7477 /* ~"Neptal jsem se tě na tvůj názor, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7478 /* ~"V pořádku, jasné... uklidni se. Fiendská krev v tobě už začíná kypět."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 50.0 51.0 51.1 51.2
  SAY #7184 /* ~Annah ti svým ocasem pokynula... toto gesto je bezpochyby oplzlé.~ */
  IF ~~ THEN EXTERN ~DHARLOTN~ 35
END

IF ~~ THEN BEGIN 53 // from: 49.2
  SAY #7185 /* ~Annah prořízla kůži ženy ostřím své zbraně; tenká stružka krve začala vytékat z rány. "Seš ocejchovaná," zasyčela. Žena se nemůže ani pohnout, jak je ochromená hrůzou.~ */
  IF ~~ THEN REPLY #7480 /* ~"Che. Dobrá práce."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Harlot_2","GLOBALLaw",-1)
~ GOTO 50
  IF ~~ THEN REPLY #7481 /* ~"Uklidni se Annah..."~ */ GOTO 50
END

IF ~~ THEN BEGIN 54 // from:
  SAY #1884 /* ~Když ses otočil, Annah náhle zasyčela a opilá žena vyděšeně uskočila.~ */
  IF ~~ THEN REPLY #7598 /* ~"Co se děje?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #1885 /* ~Annah kývla na ženu a zvedla ruce, ve kterých se náhle objevily tlačné dýky. "Ta děvka tě vobrala, to teda udělala!" Jedna z čepelí se bleskově přemístila před krk opilé ženy. "Ti asi chyběj prachy, po tom se se vo tebe votírala tadle kurva."~ */
  IF ~~ THEN REPLY #7599 /* ~"Co to --?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #1886 /* ~Opilý žena se chvíli dívala na Annah, pak přemístila pohled na tebe a vyděšeně zavrtěla hlavou. "Já nic neukradla, drsňáku! Ona se plete!"~ */
  IF ~~ THEN REPLY #7600 /* ~"Oh... víš to jistě, Annah?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 57
  IF ~~ THEN REPLY #7601 /* ~"Dej pryč ty zatracené čepele než *já* ztratím trpělivost, dobře?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7602 /* ~"Promiň ženo, ale k tomu tieflingovi, co stojí u tebe chovám plnou důvěru. Vrať ty peníze."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #7603 /* ~"Nechej ji jít, Annah. Nestojí za to."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #1887 /* ~"Co?" Annah zavrčela a začala švihat ocasem. "Esli sem si *jistá*?" Špička dýky se zaryla hlouběji a pronikla kůží. Objevila se malá krvavá kapička. "Jó... sem si jistá." Annah se na tebe podívala a podrážděně zúžila oči. "Mi nevěříš?" Odplivla si. "Mě nesere. Kuchnu ji a vezmu si prašule sama."~ */
  IF ~~ THEN REPLY #7604 /* ~"Dej pryč ty zatracené čepele než *já* ztratím trpělivost, dobře?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7605 /* ~"Nech ji jít, Annah. Nestojí za to."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.1 56.3 57.0 57.1
  SAY #1888 /* ~"Eh?" Annah zasyčela jako rozdrážděná kočka. "Seš *hluchej*? Tě ta děvka vobrala, přesně todleto udělala."~ */
  IF ~~ THEN REPLY #7606 /* ~"Nechci jí ublížit, dokud se nepřesvědčím, že udělala něco špatného."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_Harlot_1","GLOBALLaw",1)
~ GOTO 61
  IF ~~ THEN REPLY #7607 /* ~"Poslední varování. Schovej zbraně a nech ji jít."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
  IF ~~ THEN REPLY #7608 /* ~"I kdyby tak co? Nestojí za to."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY #1889 /* ~Žena byla chvíli zticha, pak přikývla a pomalu si vyhrnula rukáv. Odhalila malý váček, přivázaný k zápěstí. Annah ho odřízla a schovala do kapsy. "A teď radši táhni." Strčila do ženy a zasyčela. "Hssst! Táhni!"~ */
  IF ~~ THEN REPLY #7609 /* ~"Zmiz odsud, ženská. Bude lepší, když tě tady znova neuvidíme."~ */ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 60 // from: 58.1 58.2 61.1
  SAY #1890 /* ~Annah je dlouho zticha, pak se stáhla. Zasyčela a plivla na ženiny nohy. "Hssst! Táhni!"~ */
  IF ~~ THEN REPLY #7610 /* ~"Ženská, měla bys raději zmizet."~ */ EXTERN ~DHARLOTD~ 27
END

IF ~~ THEN BEGIN 61 // from: 58.0
  SAY #1891 /* ~Annah zavrčela a švihla dýkou... prořízla rukávy ženiných šatů a odhalila váček přivázaný k zápěstí. Vypadá to, že se do něj dají velice rychle ukrýt peníze.~ */
  IF ~~ THEN REPLY #7611 /* ~"Zdá se, žes měla pravdu, Annah. Tak, ženská, vrať, cos ukradla."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #7612 /* ~"Na tom nesejde. Nech to být, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #1892 /* ~Žena přikývla a pomalu si odvázala malý váček od zápěstí. Annah jí ho vyškubla a schovala do kapsy.~ */
  IF ~~ THEN REPLY #7613 /* ~"Zmiz odsud, ženská. Ať už tě znova nevidím."~ */ DO ~GivePartyGold(100)
GiveGoldForce(38)
~ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 63 // from:
  SAY #7701 /* ~Jak ses otočil, Annah k tobě náhle přistoupila blíž a otřela se o tebe.~ */
  IF ~~ THEN REPLY #7702 /* ~"Co to děláš?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #7703 /* ~Annah pokývla směrem k muži, který dosud stál opodál, pohled upřený na budovu. "Ten šmejd tě okradl, si piš." Annah se usmála. "Měl by sis dávat větší pozor, když mlátíš klapačkou nebo skončíš na mizině."~ */
  IF ~~ THEN REPLY #7704 /* ~"O čem to mluvíš?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #7705 /* ~V natažené ruce, kterou ti podává, má plnou hrst mincí. "Šecky tvý prachy, zpátky jejich majiteli, okej?" Znovu rychle pohlédla zpět. "Je to vychcanej mizera, to si zapiš za uši, co ti vybere kapsy bez jedinýho cinknutí, tichučko jak myška. Von vobral tebe a já ho." Usmála se. "Jaká sem?"~ */
  IF ~~ THEN REPLY #7706 /* ~"Och... víš jistě, že mne okradl, Annah?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 66
  IF ~~ THEN REPLY #7707 /* ~"Hej... Díky."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #7708 /* ~"Co?" Annah se zamračila a její ocas sebou začal mrskat. "Estli to vim *jistě?!*" Odstoupila od tebe. "Ty mně nevěříš?" Odplivla si. "Na to nezáleží."~ */
  IF ~~ THEN REPLY #7709 /* ~"Ale záleží, aspoň mně. Jestli ty peníze nejsou naše..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_3","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 67
  IF ~~ THEN REPLY #7710 /* ~"Nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #7711 /* ~"Co?" Annah zasyčela jako kočka. "Seš *blbej?!* Von tě vobral, sakra, vobral. Jestli seš tak slepej, abys to neviděl - tak si to zasloužiš!"~ */
  IF ~~ THEN REPLY #7712 /* ~"Můžeš to dokázat?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_4","GLOBALLaw",1)
TakePartyGold(5)
~ GOTO 68
  IF ~~ THEN REPLY #7713 /* ~"Zapomeň na to tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #7714 /* ~Annah na chvíli ztichla, pak sebrala peníze z tvé dlaně a hodila jimi. Sleduješ, jak se rozletěly po ulici, některé sebou plácly do kaluží, jiné popadaly do struh a kanálů. "Ať se maj!" Annah ti plivla na botu. "Pablb jako ty si prostě *nezaslouží* mít prachy."~ */
  IF ~~ THEN REPLY #7715 /* ~"Pokud možno mluv tiše. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #7716 /* ~Annah pokývla hlavou a ďábelsky se usmála. "Okej, bylo mi potěšenim, na to vem jed."~ */
  IF ~~ THEN REPLY #7717 /* ~"Dobrá. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #7822 /* ~"Nee!" Annah vypadá vyděšeně. "Nee, že se nebudeš vykecávat s fiendem! Takoví tě sežerou zaživa!"~ */
  IF ~~ THEN REPLY #7826 /* ~"Chtěl bych se toho zeptat na pár věcí..."~ */ GOTO 71
  IF ~~ THEN REPLY #7827 /* ~"Dobrá, nebudem to rozmazávat. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #7829 /* ~Annah potřásla svou hlavou. "Sežere tě to, na to vsaď poslední prachy."~ */
  IF ~~ THEN REPLY #7830 /* ~"Já to risknu."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7831 /* ~Odejdi od stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #7832 /* ~"To už si úplně *zblbnul*?" skočila ti Annah do řeči, její ocas sebou mrskal sem a tam. "Neslyšels, co sem ti řikala?! Před fiendama drž klapačku na zámek zamčenou!"~ */
  IF ~~ THEN REPLY #7833 /* ~"Já to risknu."~ */ GOTO 73
  IF ~~ THEN REPLY #7834 /* ~"Dobrá tedy. Nebudu to vyrušovat... jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #7835 /* ~"Jseš nefalšovanej, korunovanej blb!" Annah si odplivla. Vypadá rozzuřeně. "S takovou ti brzo dojdou životy, na to můžeš dát ruku do vohně. Aspoň pak budu mít vod tebe klid; plus to, co po tobě zbude!"~ */
  IF ~~ THEN REPLY #7836 /* ~"A já kvůli tomu budu prokletý. Teď mě ale nech mluvit."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7837 /* ~"Bude to jen chvilka. Uklidni se."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7838 /* ~"Dobrá tedy. Nechám to být... Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 32.0 32.1
  SAY #2360 /* ~"Jo, gith." Zjevně o tom nechce mluvit, dokud na vás oba gith zírá. "Prásknem do bot, ne?"~ */
  IF ~~ THEN REPLY #9027 /* ~"Ještě nejsem připravený odejít. Nejdřív se ho na něco zeptám..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9028 /* ~Nechej githa být.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #9801 /* ~Chce něco říct, ale tvrdě ses na ni podíval, než mohla začít s protesty. Prskla na tebe, ruce založené, ocasem šlehá do vzduchu.~ */
  IF ~~ THEN REPLY #9835 /* ~Zatřes s ním, abys získal jeho pozornost.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9837 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #9802 /* ~Předvádí, že tě neslyšela, prohrabává mužovy zašpiněné šaty, zatímco se ten chudák snaží udržet na nohách. Když zjistila, že nic nemá, odstrčila ho a odvrátila se od něj. "Huh. Stejně nic neměl. Zatracenej ožrala..."~ */
  IF ~~ THEN REPLY #9840 /* ~Zatřes s ním, abys získal jeho pozornost.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9842 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #9803 /* ~Annah prohrabává mužovy zašpiněné šaty, zatímco se ten chudák snaží udržet na nohách. Když zjistila, že nic nemá, odstrčila ho a odvrátila se od něj. "Huh. Stejně nic neměl. Zatracenej ožrala..."~ */
  IF ~~ THEN REPLY #9844 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #10078 /* ~"Ha! Seš nenápadnej jako hovno na hlavě! Tady jsou to samí pitomí amatéři." Obrátila se k tobě. "Jó, na toho je třeba dát si bacha. Chystá se někoho obrat."~ */
  IF ~~ THEN REPLY #10079 /* ~"Myslím, že máš pravdu, Annah. Možná bychom s tím měli něco udělat."~ */ EXTERN ~DCSTCROG~ 4
END

IF ~~ THEN BEGIN 79 // from:
  SAY #11267 /* ~Annah vztekle odpověděla. "Jo, a Abyss je pro něj nejlepší flek. A maká tam ze svý svobodný vůle. Mohl si vybrat, démoňák, což je víc, než můžu říct takovýmu výtvoru, jako seš ty, ty... Ty!"
~ */
  IF ~~ THEN EXTERN ~DILQUIXT~ 20
END

IF ~~ THEN BEGIN 80 // from:
  SAY #11270 /* ~Svaly ve tváři jí ztuhly. Vybuchla: "To fakt jako myslíš, že necháš tudle... tudle svini pekelnou, aby ti povídala, jak žít? Jo, já jsem sama sebou a taky tak zůstanu. A ty si dávej bacha, co sežere tvoji duši, ty debile!"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11271 /* ~"Tak pokračuj. Ilquixi, mám ještě jiné otázky..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11272 /* ~"Tak pokračuj. Ilquixi, mám ještě jiné otázky..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 81 // from:
  SAY #11667 /* ~Usmála se. "Zjistíš, fiende, že my tady věříme v *opravdovou* svobodu. Nikdo nebude nařizovat, co se smí říkat." Ilquix se ušklíbl a jeho obličej znovu nasadil zdvořilý výraz.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11668 /* ~"Pak pokračuj Ilquixi. Mám další otázky..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11669 /* ~"Pak pokračuj Ilquixi. Mám další otázky..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 82 // from:
  SAY #13084 /* ~"Můžu si povídat sama pro sebe, víš! Jsem Annah, jestli to má pro tebe nějaký význam." Annah zkříží své ruce s jemným zabručením. Nalls se jen směje a obrací se znovu na tebe.~ */
  IF ~~ THEN REPLY #13231 /* ~"Hlídej si svůj jazyk, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 87
  IF ~~ THEN REPLY #13232 /* ~"Nevadí, Nalls. Mám nějaké otázky..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13233 /* ~"Mám nějaké otázky, Nalls..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13234 /* ~"Nevadí. Sbohem."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 83 // from:
  SAY #13085 /* ~"Můžu si povídat sama pro sebe, víš! Jsem Annah, jestli to má pro tebe nějaký význam." házeje na tebe blesky, "Nejsem si jistá, jestli je on opravdu můj přítel!" Nalls se jen usmívá a poté obrací svůj zrak opět k tobě.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13235 /* ~Pravda: "Annah... mé omluvy, jestli jsem ti nějak ublížil. Doufám, že mi můžeš odpustit vše, co jsem ti kdy způsobil."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13236 /* ~Pravda: "Annah... mé omluvy, jestli jsem ti nějak ublížil. Doufám, že mi můžeš odpustit vše, co jsem ti kdy způsobil."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13237 /* ~Lež: "Annah... mé omluvy, jestli jsem ti nějak ublížil. Doufám, že mi můžeš odpustit vše, co jsem ti kdy způsobil."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13238 /* ~Lež: "Annah... mé omluvy, jestli jsem ti nějak ublížil. Doufám, že mi můžeš odpustit vše, co jsem ti kdy způsobil."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13239 /* ~"Nevadí, Nalls. Mám nějaké další otázky..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13240 /* ~"Mám pár otázek, Nalls..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13241 /* ~"Nevadí. Sbohem."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 84 // from: 83.0 87.0
  SAY #13086 /* ~Ocas Annah se náhle přestal mrskat, a obrací svou hlavu pomalu na tebe -- její oči jsou plné překvapení. Zdá se, jako by se chystala promluvit... a pak se koukne jinam. Vypadá to jako by povyrostla a začíná se červenat.~ */
  IF ~~ THEN REPLY #13242 /* ~"Nalls... Něco se chci zeptat..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13243 /* ~"Nevadí, Nalls. Sbohem."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 85 // from: 83.1 83.2 87.1 87.2
  SAY #13087 /* ~Ocas Annah se náhle přestal mrskat. Nemluví, jenom přikyvuje.~ */
  IF ~~ THEN REPLY #13244 /* ~"Nalls... chci se něco zeptat."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13245 /* ~"Nevadí, Nalls. Sbohem."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 86 // from: 83.3 87.3
  SAY #13088 /* ~Oči Annah září jakoby zeleným plamenem, ale nepromluví ani slovo -- jenom se na tebe mračí.~ */
  IF ~~ THEN REPLY #13246 /* ~"Er... Nalls, Něco se tě chci zeptat..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13247 /* ~"Nevadí, Nalls. Sbohem."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 87 // from: 82.0
  SAY #13089 /* ~Celé tělo Annah na chviličku znervózní -- nemluví, ale její nevyřčený hněv naplňuje povětří kolem vás. Očekáváš to nejhorší -- ale ona stále mlčí, dávaje ti pouze najevo svou hořkost.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13248 /* ~Pravda: "Annah... omlouvám se, jestli jsem tě nějak urazil. Udělal jsem chybu a doufám, že mi můžeš odpustit... když pro nic jiného, tak pro naše přátelství."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13249 /* ~Pravda: "Annah... omlouvám se, jestli jsem tě nějak urazil. Udělal jsem chybu a doufám, že mi můžeš odpustit... když pro nic jiného, tak pro naše přátelství."~ */ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13250 /* ~Lež: "Annah... omlouvám se, jestli jsem tě nějak urazil. Udělal jsem chybu a doufám, že mi můžeš odpustit... když pro nic jiného, tak pro naše přátelství."~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13251 /* ~Lež: "Annah... omlouvám se, jestli jsem tě nějak urazil. Udělal jsem chybu a doufám, že mi můžeš odpustit... když pro nic jiného, tak pro naše přátelství."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13252 /* ~"Neber ji na vědomí, Nalls. Mám další otázky..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13253 /* ~"Mám nějaké otázky, Nalls."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13254 /* ~"Nevadí, Nalls. sbohem."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 88 // from:
  SAY #13090 /* ~Hlava Annah se nachýlila a začíná se na Nalls mračit. "Proč se nezeptáš, co vím o tom já, odpovím ti pravdivě?"~ */
  IF ~~ THEN EXTERN ~DIRONNA~ 29
END

IF ~~ THEN BEGIN 89 // from:
  SAY #13751 /* ~Jak se chystáš promluvit, popadne tě Annah a zasyčí. "Seš *blbej?!* Neztrácej s nim ani slovo! Je to jeden z Hladovejch psů." Snižuje hlas. "Chaotik, blbej a nebezpečnej! Otravnej jako mucha a další sou určitě poblíž."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13780 /* ~"Haldoví psi? O čem to mluvíš?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13781 /* ~"Hladoví psi? Ještě jednou, kdo jsou?"~ */ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13782 /* ~"Stejně si s ním promluvím."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13783 /* ~"Možná máš pravdu. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #13752 /* ~"Je to Úlskej gang a Chaotici navrch!" Kroutí hlavou a šťouchá ti ocasem do zad. "Měl bys ses jim vyhejbat a hlídat si před nima záda. Zapletla sem se s nima a koušou víc než štěkaj, fakt."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13784 /* ~"Chaotici?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 91
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13785 /* ~"Ještě jednou, kdo jsou ti Chaotici?"~ */ GOTO 91
  IF ~~ THEN REPLY #13786 /* ~"Stejně si s ním promluvím."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13787 /* ~"Stejně si myslím, že bych se od něj mohl něco dozvědět. No nic, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1
  SAY #13753 /* ~"Je to společenstvo jako Spalovači, Guvneři a Vnímaví... ale nemaj žádný pravidla ani přesvěčení..." Annah stočila ocas do vývrtky, aby to zdůraznila. "Sou prostě směšný, potrhlý a přiblblý, jasný?" Chvíli přežvykuje. "Někdo jim říká Chaotici, ale jim je to docela fuk."~ */
  IF ~~ THEN REPLY #13788 /* ~"Jak nabírají nové členy?"~ */ GOTO 92
  IF ~~ THEN REPLY #13789 /* ~"Stejně si s ním promluvím."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13790 /* ~"Aha. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #13754 /* ~Annah pokrčila rameny. "Jak chceš. Prostě sou. Každej na co stačí, jak vidím."~ */
  IF ~~ THEN REPLY #13791 /* ~"Myslím, že s ním stejně promluvím."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13792 /* ~"Aha. Díky za informaci."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #13831 /* ~Jak se chystáš promluvit, popadne tě Annah a zasyčí. "Seš *blbej?!* Neztrácej s nim ani slovo! Je to jeden z Hladovejch Psů." Snižuje hlas. "Chaotik, blbej, nebezpečnej! Otravnej jak mucha a další sou určitě poblíž."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13992 /* ~"Hladoví Psi? O čem to mluvíš?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13993 /* ~"Hladoví Psi? Ještě jednou, kdo že jsou?"~ */ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13994 /* ~"Stejně si s ním promluvím."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13995 /* ~"Možná máš pravdu. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1
  SAY #13832 /* ~"Je to gang z Úlu a Chaotici navrch!" Kroutí hlavou a šťouchá ti ocasem do zad. "Měl bys ses jim vyhejbat a hlídat si před nima záda. Zapletla sem se s nima a koušou víc než štěkaj, fakt."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13996 /* ~"Chaotici?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 95
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13997 /* ~"Ještě jednou, kdože jsou ti Chaotici?"~ */ GOTO 95
  IF ~~ THEN REPLY #13998 /* ~"Stejně si s ním promluvím."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13999 /* ~"Stejně si myslím, že bych se od něj mohl něco dozvědět. No nic, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 94.1
  SAY #13833 /* ~"Sou společenství, to jo, jak Spalovači, Guvneři a Vnímaví... ale nemaj žádný pravidla ani přesvědčení..." Annah stočila ocas do vývrtky, aby to zdůraznila. "Sou prostě směšný, potrhlý, přiblblý, jasný?" Chvíli přežvykuje. "Někdo jim říká Chaotici, ale je jim to fuk, úplně."~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #14000 /* ~"Jak nabírají nové členy?"~ */ GOTO 96
  IF ~~ THEN REPLY #14001 /* ~"Stejně si s ním promluvím."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14002 /* ~"Aha. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #13834 /* ~Annah pokrčila rameny. "Jak chceš. Prostě sou. Vrána k vráně, jak vidím."~ */
  IF ~~ THEN REPLY #14003 /* ~"Myslím, že s ním stejně promluvím."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14004 /* ~"Aha. Díky za informaci."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #15337 /* ~Annah tě chytí za rameno dřív, než toho člověka stihneš pozdravit. "Počkej. Vo tym sem už slyšela. Novej v Úlu, dělá ze sebe velkýho šermíře. Zabil každýho, kdo se mu postavil. Vod takovejch se drž dál."~ */
  IF ~~ THEN REPLY #15486 /* ~"Přesto s ním budu mluvit."~ */ GOTO 98
  IF ~~ THEN REPLY #15487 /* ~"Tak se mu tedy vyhnu."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #15338 /* ~"Jó! Fajn! Tak viš co? Nečekej vode mne, že na tě budu čekat, až se to stane!"~ */
  IF ~~ THEN REPLY #15488 /* ~Promluv s tím mužem.~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ EXTERN ~DADYZOEL~ 1
  IF ~~ THEN REPLY #15489 /* ~"Možná, že máš pravdu Annah. Vyhnu se mu."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #16621 /* ~"Čeho? To snad nemyslíš vážně?!"~ */
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16902 /* ~"Ano, jsem. Můžete pomoci?"~ */ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16903 /* ~"To jsem, Annah. Byl bych ti vděčný, kdyby ses na to mohla mrknout a pokusit se přijít s nějakými rozumnými návrhy... když už kvůli ničemu jinému, tak aspoň kvůli mě.~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #16622 /* ~"Hehe! No to určitě. Sežeň si nějakýho jinýho debila, aby tu cválal a hekal u těch posranejch stromů. Estli si myslíš, že bych o tom mohla jen uvažovat, seš vůl až to bučí. P-A-K-O!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16904 /* ~"Morte? Co ty na to?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16905 /* ~"Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16906 /* ~"Grace, zvážila bys to?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16907 /* ~"Dak'kone, dokázal bys pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16908 /* ~"Dak'kone: pomož tomuto muži."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16909 /* ~"Nordome, myslíš, že bys mohl pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16910 /* ~"Vhailore, mohl bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16911 /* ~"Dobře. Truchlící, ještě bych se tě na něco zeptal..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16912 /* ~"To je jedno. Sbohem, Truchlící za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY #16623 /* ~Její úsměšek nakonec ustoupí úsměvu. "Ále, ať to všechno schlamstne Baator! Dyž ti to udělá dobře, tak proč ne? 'Projevím starost' o ty stromy, kámo. Ale to si piš, že mi za to visíš laskavost!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16913 /* ~"Díky. Morte, co si o tom myslíš?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16914 /* ~"Díky. Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16915 /* ~"Díky. Grace, zvážila bys to?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16916 /* ~"Díky. Dak'kone, mohl bys pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16917 /* ~"Díky. Dak'kone: pomož tomuto muži."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16918 /* ~"Díky. Nordome, myslíš, že bys mohl pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16919 /* ~"Díky. "Vhailore, mohl bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16920 /* ~"Díky. Ale ještě něco mi leží na srdci, Truchlící..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16921 /* ~"Díky, Annah. Sbohem, Truchlící za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #17207 /* ~Annah tě rýpla do žeber předtím, než jsi mohl přistoupit k onomu muži. "Na tvym místě bych neztrácela čas vykecáváním se s tím vopruzem."~ */
  IF ~~ THEN REPLY #17348 /* ~"Dobře, nejsi a já zrovna mluvím k němu."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17349 /* ~"Chápu. Bude nejlepší, když si promluvím s ním."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17350 /* ~"Proč ne? Kdo to vlastně je?"~ */ GOTO 103
  IF ~~ THEN REPLY #17351 /* ~"Tak to se radši budu držet zpátky."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.2
  SAY #17210 /* ~Annah objasňuje tónem hlasu používaným obvykle při vyprávění legend a dávných příběhů: "Starouš 'Morkožrout' je přesně tak vadnej, jak se vo něm řiká. Bejval jednim z nejstaršich a taky nejhoršich Sběračů tady. Žil z ruky do huby, a i když mrtvoly vokrádal, tak nevydělal nikdá dost ani na žrádlo. Před ňákým časem mu nakonec z hladu asi ruplo v bedně a tak začal už i žrát mrtvoly, aby se ňák protlouk. Teďko se mu ostatní Sběrači vyhejbaj jak jen můžou, je jim jen pro smích a když se někam přiblíží, přivítá ho jedině letící hrst šťavnatého hnoje. On zas na oplátku na ně čumí... asi se kochá tim, co by z nich bylo za žranici, tipuju."~ */
  IF ~~ THEN REPLY #17352 /* ~"Hmm. Promluvím si s ním, pro jistotu."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17354 /* ~"Tak to se radši budu držet zpátky."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #17426 /* ~"Samozřejmě si je jistej, dřepíš si na uších?" Annah obrátila oči v sloup. "Pro lásku Mocností, proč musiš strkat ten svůj zvědavej čumec tam, kam nemáš? Děláš si život zbytečně složitej, víš to?"~ */
  IF ~~ THEN REPLY #17427 /* ~Dovolit prodavačce zareagovat na řeč Annah.~ */ EXTERN ~D300MER4~ 11
  IF ~~ THEN REPLY #17428 /* ~"Annah... mlč."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17466 /* ~"Ona má pravdu; není tu nic, co bych potřeboval. Moje otázky..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17467 /* ~"Ona má pravdu; není tu nic, co bych potřeboval. Sbohem."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 105 // from:
  SAY #17429 /* ~Výraz, jež nabrala tvář Annah, by mohl zasít hrůzu a strach do srdcí těch nejhorších existencí. Zuřivě vyštěkne: "*Žárlivá?!* Hubu drž! Dej si bacha na jazyk, ženská, než ti ho vyrvu z klapačky a zahodím do ňáký díry, ať tam zhnije. Tvoju zdechlinu zakopám pro změnu na druhym konci Sigilu, to si teda piš!" V obchodnici by se krve nedořezal. Ustupuje jí z dosahu. "Ty!" otáčí se Annah k tobě, z očí jí šlehají plameny hněvu. "Ani *slovo* nechci slyšet! A ne, že budeš tahat z tý vylízaný žáby její bláboly, nebo toho budeš nadosmrti litovat!"~ */
  IF ~~ THEN REPLY #17468 /* ~"Annah... buď zticha."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17469 /* ~"Ona má pravdu; není tu nic, co bych potřeboval. Moje otázky..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17470 /* ~"Ona má pravdu; není tu nic, co bych potřeboval. Sbohem."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 106 // from: 104.1 105.0
  SAY #17430 /* ~"Ha! To určitě! Já budu mluvit kdy se mi zachce, to si koukej *pamatovat*! A to si piš, že tu dnešní *epizodku* nepustim jen tak z hlavy, ty, ty šerednej kreténe."~ */
  IF ~~ THEN REPLY #17471 /* ~"Dobře. Annah má pravdu, obchodnice; není tu nic co bych potřeboval. Moje otázky..."~ */ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17472 /* ~"Dobře. Annah má pravdu, obchodnice; není tu nic co bych potřeboval. Sbohem."~ */ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 107 // from:
  SAY #17534 /* ~"Co?" Annah zavrtěla hlavou a vyvalila na tebe oči. "Si myslím, že je kravina vo tom jen přemejšlet! I když *sou* docela roztomilí... no jsou to tvý prachy, kámo. Rozhodni se sám."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17589 /* ~"Morte? Co myslíš?"~ */ EXTERN ~DMORTE~ 187
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17590 /* ~"Jednoho koupím, obchodníku."~ */ DO ~TakePartyGold(40)
~ EXTERN ~D300MER5~ 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17591 /* ~"Nechce se mi utrácet. Přesto mám pár otázek, obchodníku..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17592 /* ~"Ponechám si své peníze. Sbohem."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17593 /* ~"Nemám dost, obchodníku, ale mám několik otázek..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17594 /* ~"Zapomeň na to obchodníku; Nemám na něj peníze. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #18796 /* ~Annah bleskově vytáhne nože. "Dotkni se mě a už nebudeš chodit."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18797 /* ~"Annah: Uklidni se."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18798 /* ~Nechej Annah pracovat.~ */ EXTERN ~DCOLYLFN~ 59
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18799 /* ~"Annah: Uklidni se"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18800 /* ~Nechej Annah pracovat.~ */ EXTERN ~DCOLYLFN~ 60
END

IF ~~ THEN BEGIN 109 // from:
  SAY #19035 /* ~Annah vypadá znechuceně. "Pojďme."~ */
  IF ~~ THEN REPLY #19036 /* ~"Nejprve se ho zeptám ještě na něco jiného."~ */ EXTERN ~DOJO~ 12
  IF ~~ THEN REPLY #19037 /* ~"Dobrá."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #19230 /* ~Annah supí. "Pořád jsi popuzenej, viď Quinte? Tímhle nebuď, jo."~ */
  IF ~~ THEN REPLY #19231 /* ~"Nejdříve mám pro něj nějaké jiné otázky, Annah..."~ */ EXTERN ~DQUINT~ 1
  IF ~~ THEN REPLY #19232 /* ~"Sbohem, Quinte."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #20625 /* ~Annah nervózně zašoupala nohama. "S mrtvejma se radši neplácej. Smulu to prej nosí, sem slyšela."~ */
  IF ~~ THEN REPLY #20626 /* ~"To je okej. Tohle tělo mi stejně nic neřekne. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #20627 /* ~Annah nervózně zašoupala nohama. "S mrtvejma se radši neplácej. Smulu to prej nosí, sem slyšela."~ */
  IF ~~ THEN REPLY #20628 /* ~"Možná má pro nás nějaké odpovědi."~ */ EXTERN ~DBODY1~ 2
END

IF ~~ THEN BEGIN 113 // from:
  SAY #20629 /* ~"Jo, tady pro nás nic nejni. Pudem, ne? Když se budeš hrabat s mrtvolama, nic z toho mít nebudeš."~ */
  IF ~~ THEN REPLY #20630 /* ~"Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #20775 /* ~"Gris, napůl přiblblej sup, je úplný nic, zaplaťpámbů za to, zhebne stejně jako jeho matka, je to jen všivá troska."~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN REPLY #20776 /* ~"To je Gris?"~ */ JOURNAL #66263 /* ~Našel jsem tělo Grise Supa, jednoho ze Sběračů z Pohřbené vesnice. Tělo bylo narváno do sarkofágu v hrobce obývané ghúly, hrozivě zohavené.~ */ GOTO 115
  IF ~~ THEN REPLY #20777 /* ~"Vskutku sentimentální, Annah. Jdeme."~ */ JOURNAL #66263 /* ~Našel jsem tělo Grise Supa, jednoho ze Sběračů z Pohřbené vesnice. Tělo bylo narváno do sarkofágu v hrobce obývané ghúly, hrozivě zohavené.~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #20778 /* ~"Jójo, Gris Sup s nosem jak zobák špatně naloženýho mrchožrouta. Byl samá špatnost a poťouchlost a je jen škoda, že jsem mu nepodřízla kejhák při ňáký vhodný příležitosti."~ */
  IF ~~ THEN REPLY #20779 /* ~"Dobrá, Annah. Díky. A teď odtud vypadnem."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #20780 /* ~Annah pošťouchne nohou mrtvolu a otočí se k tobě: "Víš proč řikali Gris Sup, že jo? To proto, že ten idiot měl takovej zobák na ksichtě. Tendlecten jeho rypák vždycky chodil pár kroků před nim."~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20781 /* ~"Quint tě hledal, Grisi. Říkal, že máš cosi jeho."~ */ EXTERN ~DGRIS~ 10
  IF ~~ THEN REPLY #20782 /* ~"Gris, že jo? Dám vesničanům vědět, že je mrtvej."~ */ EXTERN ~DGRIS~ 19
  IF ~~ THEN REPLY #20783 /* ~"Díky, Annah. Ještě jsem se chtěl o Grisovi něco dozvědět."~ */ EXTERN ~DGRIS~ 9
  IF ~~ THEN REPLY #20784 /* ~"Díky, Annah. Pojďme."~ */ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.3
  SAY #20785 /* ~"Už se na něho vyser." Sladce se usmívá. "A do pekla s tebou, Grisi!! Ať ti krysy moc nevokusujou ty tvý prašivý kosti!" Plivne na tělo.~ */
  IF ~~ THEN REPLY #20786 /* ~"Pojďme, Annah."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #21611 /* ~"Hssssst!" Annah varovně syčí, a jak se k ní otáčíš, vidíš že s vytřeštěnýma očima zírá na bytost. Dělá si půlkruh přes srdce.~ */
  IF ~~ THEN REPLY #24723 /* ~"Co se ti nelíbí, Annah?"~ */ GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #21612 /* ~"Zbláznil ses?!" Otáčí se k tobě Annah... a ty si náhle uvědomuješ že je pěkně *vyděšená.* "Ty se musíš těšit jako prase na tanec ve stínu Paní, že se chceš hádat s tímhle?! Vypadněme odsud pryč, než se dostaneme do knihy mrtvých!"~ */
  IF ~~ THEN REPLY #24724 /* ~"Jaký máš problém?"~ */ GOTO 120
  IF ~~ THEN REPLY #24725 /* ~"Abychom už šli."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #21613 /* ~"To je *Fell.*" Annah na něj letmo ustrašeně pohlédne... pravděpodobně Fell. "Pojďme pryč, jo? Nečeká nás tady nic dobrýho, to teda ne!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #24726 /* ~"Zeptám se znovu... máš nějaký problém?"~ */ GOTO 121
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #24727 /* ~"Fell?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 7
  IF ~~ THEN REPLY #24728 /* ~"Abychom už šli."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #21614 /* ~"Je to dabus, co není dabus. Chodí po zemi..." Její hlas se ztiší do šepotu, a Annah se začíná třást. "Už se na nic neptej, vypadneme odsuď pryč, jó?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24729 /* ~"Annah, nikdo ti neublíží, dokud jsem tu. Řekni mi, co je 'dabus?'"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 122
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24730 /* ~"Co je 'dabus?'"~ */ GOTO 122
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24731 /* ~"Annah, nikdo ti neublíží, dokud jsem tu. Řekni mi teď, co se stalo."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 123
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24732 /* ~"Myslím, že bude lepší, když si to teď vyjasníme."~ */ GOTO 123
  IF ~~ THEN REPLY #24733 /* ~"My už pudem."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1
  SAY #21615 /* ~"Dabové jsou *Její* příbuzní -- starají se o město, dávají je do pořádku a boří a zase znovu staví a vůbec. Mluví skrz symboly hádanek ve vzduchu -- musíš je dát dokupy a spočítat si, co znamenaj."~ */
  IF ~~ THEN REPLY #24734 /* ~"V pořádku... ale Fell je taky dabus. Co se ti na tom nezdá?"~ */ GOTO 123
  IF ~~ THEN REPLY #24751 /* ~"Annah, právě jsem mluvil s Fellem. Hned půjdeme."~ */ GOTO 126
  IF ~~ THEN REPLY #24752 /* ~"Vím. Díky, půjdeme tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 121.2 121.3 122.0
  SAY #21616 /* ~Annah zděšeně hodí pohledem po Fellovi. "Fell je dabus který rozhněval *Ji.* Říká se, že je to dabus, co není dabus, a blíží se čas, kdy na něj padne pohled Paní."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #24753 /* ~"'Ji?'" ~ */ GOTO 124
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #24754 /* ~"'Ji?' Myslíš Paní Bolesti?" ~ */ GOTO 125
  IF ~~ THEN REPLY #24755 /* ~"Annah, právě jsem mluvil s Fellem. Hned půjdeme."~ */ GOTO 126
  IF ~~ THEN REPLY #24756 /* ~"Vím. Díky, půjdeme tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #21617 /* ~"Paní bolesti." Annah dělá další půlkruh ve vzduchu před sebou. "Dabové pro ni pracují, a ona je ochraňuje... krom Fella." Celá se třese. "Pojďme pryč, jó?"~ */
  IF ~~ THEN REPLY #24757 /* ~"Nejdříve chci mluvit s Fellem."~ */ GOTO 126
  IF ~~ THEN REPLY #24758 /* ~"Správně, jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 123.1
  SAY #21618 /* ~"Jó... a dej si pozor na jazyk." Jak zmiňuješ jméno Paní, Annah dělá ve vzduchu před sebou další půlkruh. "Dabusové pracují pro Paní a ona je ochraňuje... krom Fella." Celá se třese. "Pojďme pryč, jó?"~ */
  IF ~~ THEN REPLY #24759 /* ~"Nejdříve chci mluvit s Fellem."~ */ GOTO 126
  IF ~~ THEN REPLY #24760 /* ~"Vím. Díky, půjdeme tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from: 122.1 123.2 124.0 125.0
  SAY #21619 /* ~Annah tě chytá za ruku. "Prosím, ne, ne! Z toho nemůže vzejít nic dobrého -- kdokoliv mluví s Fellem na sebe může přitáhnout pohled Paní. Já nechci umřít, nechci!" K tvému překvapení, Annah vypadá, že se brzy rozbrečí.~ */
  IF ~~ THEN REPLY #24761 /* ~"Buď *klidná*... nic se nestane. Teď si jdu promluvit s Fellem a potřebuji, abys byla zticha."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 127
  IF ~~ THEN REPLY #24762 /* ~Slib: "Annah, nic se ti nestane dokud jsem zde -- Slibuji. Potřebuji s ním na chvíli promluvit."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Fell_2","GLOBALLaw",1)
~ GOTO 128
  IF ~~ THEN REPLY #24763 /* ~Lži, abys utišil její pláč: "Annah, nic se ti nestane dokud jsem zde -- Slibuji. Potřebuji s ním na chvíli promluvit."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Fell_2","GLOBALLaw",-1)
~ GOTO 128
  IF ~~ THEN REPLY #24764 /* ~"V pořádku, v pořádku. Jdeme pryč."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #21620 /* ~Annah zrudnula, jako kdyby dostala facku. Vrčí, její ocas šlehá a její známý vztek se vrací. "Nevím proč se zlobím... no tak, mluv si s ním třeba dokud ti jazyk neupadne!"~ */
  IF ~~ THEN REPLY #24765 /* ~"Správně."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 128 // from: 126.1 126.2
  SAY #21621 /* ~Na chvíli se Annah jenom dívá na tebe. Potom, zdá se, že jí něco v tvých očích uklidnilo, protože trochu zchladla. "Nevím proč se..." Vrtí hlavou. "No tak, teda, mluv si s ním! Mě je to jedno!" V jejím hlase je slabý náznak strachu.~ */
  IF ~~ THEN REPLY #24766 /* ~"Správně."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 129 // from:
  SAY #21622 /* ~Annah se na chvíli odmlčí. Vypadá zuřivě. "Jo... to můžu."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24767 /* ~"Promluvíš s ním?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24768 /* ~"Promluvíš s ním?"~ */ GOTO 130
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24769 /* ~"Tak to udělej."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24770 /* ~"Tak to udělej."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 130
  IF ~~ THEN REPLY #24771 /* ~"Zapomeň na to. Padáme"~ */ EXIT
END

IF ~~ THEN BEGIN 130 // from: 129.1 129.3
  SAY #21623 /* ~Annah vrtí hlavou. "Nee, já s tebou nechci jít do stínu Paní, ani náhodou."~ */
  IF ~~ THEN REPLY #24772 /* ~"Aha. Zkusím s ním promluvit sám..."~ */ EXTERN ~DFELL~ 8
  IF ~~ THEN REPLY #24773 /* ~"Dobře. Jdeme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 129.0 129.2 132.0 133.1 134.3 135.3 136.0 137.12 138.12 139.12 140.9 141.9 142.0 143.3 144.1 145.3 146.3 147.3 148.0 149.3 150.3 151.1 152.3 153.3 154.3 155.12 158.0 159.0
  SAY #21624 /* ~Annah kývne. Dabus pokračuje v civění na vás dva, ruce složené v rukávech.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24774 /* ~"Zeptej se ho, kdo je."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24775 /* ~"Zeptej se ho, kdo je."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24776 /* ~"Zeptej se ho, kdo je."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24777 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24778 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24779 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24780 /* ~"Myslím, že tě znám, Felle."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24781 /* ~"Myslím, že tě znám, Felle."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24782 /* ~"Myslím, že tě znám, Felle."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24783 /* ~"Myslím, že tě znám, Felle."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24784 /* ~"Myslím, že tě znám, Felle."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24785 /* ~"Myslím, že tě znám, Felle."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64394 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64395 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64396 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64397 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64398 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64399 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24786 /* ~"Zmínil se, že jsme se již potkali... ví snad, jak jsem zemřel?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24787 /* ~"Zmínil se, že jsme se již potkali... ví snad, jak jsem zemřel?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24788 /* ~"Zmínil se, že jsme se již potkali... ví snad, jak jsem zemřel?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #24789 /* ~"Zeptej se ho, zda ví něco o Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24790 /* ~"Zeptej se ho, zda ví něco o Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24791 /* ~"Zeptej se ho, zda ví něco o Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #24792 /* ~"Zeptej se ho, jestli dělal tetování na téhle roztrhané paži, kterou jsem našel."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24793 /* ~"Zeptej se ho, jestli dělal tetování na téhle roztrhané paži, kterou jsem našel."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24794 /* ~"Zeptej se ho, jestli dělal tetování na téhle roztrhané paži, kterou jsem našel."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24795 /* ~"Můžeš mi něco říct o tetováních na mém těle?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24796 /* ~"Můžeš mi něco říct o tetováních na mém těle?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24797 /* ~"Můžeš mi něco říct o tetováních na mém těle?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24798 /* ~"Můžu vědět, jaké tetování může nabídnout?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24799 /* ~"Můžu vědět, jaké tetování může nabídnout?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24800 /* ~"Můžu vědět, jaké tetování může nabídnout?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24801 /* ~"Nevadí, sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #21625 /* ~Annah krčí rameny, její ocas šlehá pomalu dopředu a dozadu. "Říká, že se jmenuje 'Fell.'"~ */
  IF ~~ THEN REPLY #24802 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24803 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #21626 /* ~Annah vraští čelo a studuje symboly. "Neznám všechny symboly které vyplivuje..." Dívá se kolem sebe na stěny budovy. "Ale, jestli to vidím dobře, tak to tady vypadá jako tetovací salón."~ */
  IF ~~ THEN REPLY #24804 /* ~"Můžu vědět, jaké tetování může nabídnout?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24805 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24806 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #21627 /* ~Annah šilhá na symboly. "Za prvé, povídá... ne, počkej." Vraští čelo. "Povídá, že je to *poprvé* co jsi sem přišel... ale současně, není." Annah podrážděně syčí, a její ocas šlehá pomalu dopředu a dozadu jako had. "Hssst! To je tak blbej nebo co -- to nedává žádnej smysl."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24807 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24808 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24809 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #24810 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24811 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #21628 /* ~Annah mrká. "Oh, to je ohromný. Říká, že tě zná, dost dobře... ale pak říká, že ti nemůže nic říct."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24812 /* ~"Proč ne?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24813 /* ~"Proč ne?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24814 /* ~"Proč ne?"~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #24815 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24816 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #21629 /* ~"Říká, že nemůže. Říká, že se omlouvá a... pak..." Annah vraští čelo. "Povídá, že 'nemůže změnit lidskou přirozenost'." Prohlíží symboly znova, pak krčí rameny. "Nevím co myslel tím zbytkem."~ */
  IF ~~ THEN REPLY #24817 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24818 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #21630 /* ~Annah si kouše spodní ret. "Říká, že čarodějnice není jen pohádka. Je skutečná, a ne že néni."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24819 /* ~"Ví, kde může být?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24820 /* ~"Ví, kde může být?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24821 /* ~"Ví, kde může být?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24822 /* ~"Může nám něco o ní říct?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24823 /* ~"Může nám něco o ní říct?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24824 /* ~"Může nám něco o ní říct?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24825 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24826 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24827 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24828 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24829 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24830 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24831 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24832 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #21631 /* ~"Říká..." Annah si dělá půlkruh kolem srdce. "Říká, že zabloudila..." Její hlas ze ztiší v šepot. "Je v jedné z klecí Paní bolesti."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24833 /* ~"Uvězněna?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24834 /* ~"Uvězněna?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24835 /* ~"Uvězněna?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24836 /* ~"Může nám něco o ní říct?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24837 /* ~"Může nám něco o ní říct?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24838 /* ~"Může nám něco o ní říct?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24839 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24840 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24841 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24842 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24843 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24844 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24845 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24846 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #21632 /* ~"Ona..." Annah šilhá na symboly. "Něco o tom že ty dvě spolu moc dobře nevycházely a Paní Ravel potrestala. Uvěznila jí do bludiště." Annah se k tobě otáčí. "Bludiště jsou jako kurníky pro blbečky, kteří si myslí, že dokážou vyzrát na Paní... to nejde. Jenom je víc bludišť."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24847 /* ~"Proč byla Ravel uvězněna do bludiště?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24848 /* ~"Proč byla Ravel uvězněna do bludiště?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24849 /* ~"Proč byla Ravel uvězněna do bludiště?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24850 /* ~"Ví, jak se dostaneme do Ravelina bludiště?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24851 /* ~"Ví, jak se dostaneme do Ravelina bludiště?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24852 /* ~"Ví, jak se dostaneme do Ravelina bludiště?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24853 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24854 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24855 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24856 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24857 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24858 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24859 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24860 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #21633 /* ~Jak Annah překládá, vypadá pořád nervórnější, a ty vidíš její hrůzu. "Říká, že zkoušela rozbít Sigil jako vejce."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24861 /* ~"Ví, jak se dá dostat k Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24862 /* ~"Ví, jak se dá dostat k Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24863 /* ~"Ví, jak se dá dostat k Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24864 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24865 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24866 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24867 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24868 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24869 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24870 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24871 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 141 // from: 156.5
  SAY #21634 /* ~Annah vraští čelo. "Říká, abychom jí nechodili hledat..." Škrábe se na hlavě. "Říká, že jí drží Paní." Otáčí se k tobě. "Mluví rozumně... nikdo Jí nesmí zkřížit cestu, takže bude lepší nechat ji být, jó?"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24872 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24873 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24874 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24875 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24876 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24877 /* ~"Chtěl bych mu položit další otázku..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24878 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24879 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24880 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24881 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24882 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #21635 /* ~"Říká, abychom jí nechodili hledat, protože..." Šilhá na symboly. "Protože má zlé srdce." Odmlčí se. "Říká, že ona udělá cokoliv, aby ti ublížila, a taky všem, kdož jdou s tebou." Annah vzdychá, potom se na tebe neklidně podívá. "To má pravdu, víš. Jestli žije, je to bída, představuje potíže nejhoršího druhu."~ */
  IF ~~ THEN REPLY #24883 /* ~"Budu na to pamatovat. Chtěl bych mu položit další otázku..." ~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24884 /* ~"Myslím, že bylo souzeno, aby se naše cesty zkřížili."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #21636 /* ~Její ocas šlehá dopředu a dozadu. "Říká, že ruka je tvoje, ale tetování jsou jeho." Annah celá zamračená studuje symboly, které se vznášejí ve vzduchu. "...Nemůžu přijít na ten poslední kousek."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24885 /* ~"Jaké tetování?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24886 /* ~"Jaké tetování?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24887 /* ~"Jaké tetování?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #24888 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24889 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #21637 /* ~"Říká, že jsou jeho, ale on na ně úplně zapomněl. Tvrdí, že jestli chceš, tak je na tebe může znova vyrýt."~ */
  IF ~~ THEN REPLY #24890 /* ~"Okej... Rád bych viděl všechna tetování, které má k dispozici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24891 /* ~"Chtěl bych mu položit další otázku..." ~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24892 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #21638 /* ~"Říká, že nejsou jeho."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Může mi o nich něco říct?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Může mi o nich něco říct?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Může mi o nich něco říct?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #24896 /* ~"Chtěl bych se ho ještě něco zeptat..."~ */ GOTO 131
  IF ~~ THEN REPLY #24897 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #21639 /* ~"Říká... ta na tvých zádech, to je návod. Ten další, ten na tvém rameni..." Náhle, jeden ze symbolů kolem Fella zjasní, a zbytek zmizí. Symbol se zvětší a zostří se.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24898 /* ~"Co je to ten symbol, co mám na ramenou?"~ */ EXTERN ~DFELL~ 69
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24899 /* ~"Co je to ten symbol, co mám na ramenou"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24900 /* ~"Co je to ten symbol, co mám na ramenou?"~ */ EXTERN ~DFELL~ 70
  IF ~~ THEN REPLY #24901 /* ~"Chtěl bych se ho ještě něco zeptat..."~ */ GOTO 131
  IF ~~ THEN REPLY #24902 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY #21640 /* ~"Stíny." Její ocas začíná šlehat dopředu a dozadu... dost divně, Annah se zdá být nervózní. "Říká že tě zabily stíny."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24934 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24935 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24936 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #24937 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24938 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #21641 /* ~"Říká..." Její ocas přestává šlehat dopředu a dozadu a začíná se pohybovat pomaleji, jako had před útokem. "Říká, že tě zabila spousta stínů. Neví proč."~ */
  IF ~~ THEN REPLY #24939 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24940 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #21642 /* ~"Říká... to je jeho chrám... jeho galérie. Říká, uh... že, ty jsi jeho *plátno.* Oba dva vás zbožňuje... a je kvůli tobě smutný."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24941 /* ~"Truchlíš pro mne?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24942 /* ~"Truchlíš pro mne?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24943 /* ~"Truchlíš pro mne?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #24944 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24945 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #21643 /* ~Annah s tím pěkně zápasí. "Říká... znak mučení, ne... *trýznění* se vznáší nad tebou. Tato tragédie... tyto tragédie... a prohry byly všechny... uh, vypálené do tvého těla. Říká, že jsi musel přežít velkou bolest."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24946 /* ~"Co tím myslí?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24947 /* ~"Co tím myslí?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24948 /* ~"Co tím myslí?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #24949 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24950 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from:
  SAY #21644 /* ~Annah vraští čelo. "Nemůžu to docela všechno rozluštit, ale..." Šilhá na symboly. "On... cítí obdiv... *obdivuje* tě, protože ses vzdal... ne, ne... protože ses *nevzdal* váze těch proher... řetězy..." Annah vrčí, pak si odplivne na podlahu. "Zatraceně! Prokletý rébusy! Vůbec to nedává smysl!"~ */
  IF ~~ THEN REPLY #24951 /* ~"Hluboce se nadechni a zkus to znovu."~ */ GOTO 152
  IF ~~ THEN REPLY #24952 /* ~"Zapomeň na to. Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24953 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #21645 /* ~"Tak dobře, dem na to." Annah si vydechne, pak zase šilhá na symboly. "Říká, že tě obdivuje, protože ses nevzdal váze těch proher... i když jejich řetězy stále spočívají... éé, na tobě."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24954 /* ~"Požádej ho, ať pokračuje."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24955 /* ~"Požádej ho, ať pokračuje."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24956 /* ~"Požádej ho, ať pokračuje."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #24957 /* ~"Zapomeň na to. Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24958 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #21646 /* ~Annah vraští čelo. "Říká... tyto prohry pokrývají tento život a všechny předešlé. Že trháš kůže... eh... *zbavuješ se* kůží... jako had. Procházíš cestami života, mnoha..." Odmlčí se. "Uh, nekonečnými cestami života."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24959 /* ~"Řekl ještě něco?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24960 /* ~"Řekl ještě něco?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24961 /* ~"Řekl ještě něco?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #24962 /* ~"Zapomeň na to. Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24963 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from:
  SAY #21647 /* ~"Eh... před něčím tě chce varovat... každý z tvých, eh, životů, předešlý život, životů..." Zašilhá a pak pokračuje. "Vedení... *vtělení* vrhá stín. A tak máš jít... na místo kde jsou šílené stíny, kde žijí šílené stíny, a země je vrásněna žaly."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24964 /* ~"Já... vím. Řekl ještě něco?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24965 /* ~"Já... vím. Řekl ještě něco?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24966 /* ~"Já... vím. Řekl ještě něco?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #24967 /* ~"Zapomeň na to. Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24968 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #21648 /* ~"Taky říká abys nic nepodepisoval."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24969 /* ~"Dobře."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24970 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24971 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24972 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24973 /* ~"Dobře."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24974 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24975 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24976 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24977 /* ~"Dobře."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24978 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24979 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24980 /* ~"Mno, dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #24981 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24982 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #21649 /* ~"Fell říká... he, ne, *ptá se* jestli se cítíš 'ne-celý.'" Annah vraští čelo. "Já si *myslím*, že chtěl vědět, jestli  se cítíš kompletní."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24983 /* ~Pravda: "No já... ne. Vlastně, od té doby, co jsem se probudil v Márnici, cítím, že mi něco... chybí. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24984 /* ~Pravda: "No já... ne. Vlastně, od té doby, co jsem se probudil v Márnici, cítím, že mi něco... chybí. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24985 /* ~Pravda: "No já... ne. Vlastně, od té doby, co jsem se probudil v Márnici, cítím, že mi něco... chybí. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #24986 /* ~"Po tom ti je velký kulový."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24987 /* ~Lež: "Jasně, cítím se kompletně. Proč?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24988 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 141
  IF ~~ THEN REPLY #24989 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #21650 /* ~"Fell říká... že jsi silný. A měl bys věřit. Pak zas budeš celý."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24991 /* ~"Pokusím se."~ */ EXTERN ~DFELL~ 103
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24992 /* ~"Pokusím se."~ */ EXTERN ~DFELL~ 104
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24993 /* ~"Pokusím se."~ */ EXTERN ~DFELL~ 105
END

IF ~~ THEN BEGIN 158 // from:
  SAY #21651 /* ~Annah mrká. "On... pověděl mi, abych se nevzdávala svého srdce."~ */
  IF ~~ THEN REPLY #24994 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24995 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #21652 /* ~"Říká, že je to mučení..." Mračí se. "ne, myslí 'trýznění,' Aspoň myslím. Něco o kůži a o mysli na co nemůžu přijít." Vrtí hlavou. "Už mě z toho začíná pěkně bolet hlava."~ */
  IF ~~ THEN REPLY #24996 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 131
  IF ~~ THEN REPLY #24997 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #23928 /* ~"Ó, Shade, bys měl vědět, že sme se o tebe báli, jo? Dobře, že si tu." Podívala se na něj s mnohem větší zalíbením, než jaké jsi jí kdy viděl v očích. "Pokračuj a veď nás ven, ať už vodsaď vypadnem. Počítám, že Starej Bumpy se těm krysám tady nějak pomstí."~ */
  IF ~~ THEN REPLY #23929 /* ~"V tom máš pravdu."~ */ EXTERN ~DSHAD~ 7
  IF ~~ THEN REPLY #23930 /* ~"Prosím, Shade."~ */ EXTERN ~DSHAD~ 7
END

IF ~~ THEN BEGIN 161 // from:
  SAY #28622 /* ~Annah se k tobě naklonila a zasyčela. "Ssst! Vo co se tu snažíš, že kolem sebe házíš těmadle nóbl slovíčkama? Tos úplně přišel vo rozum?"~ */
  IF ~~ THEN REPLY #28623 /* ~"Annah uklidni se a buď zticha... s někým se tu bavím, dobře?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 162
  IF ~~ THEN REPLY #28624 /* ~"Annah, složil jsem jí poklonu, aby omluvila mou neomalenost. Stačí?"~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0 161.1
  SAY #28625 /* ~Annah vyprskla. "Hraješ si na frajera, fakt, že jo. Ale seš docela přiblblej, dyž si pohráváš s fiendem! Je ti jasný, že budeš za chvíli kdákat?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 53
END

IF ~~ THEN BEGIN 163 // from:
  SAY #28626 /* ~"Je jednou z fiendů, jedna ze sukub. Nejprv si tě vodhadne a pak ti veme duši rovnou do Nižších sfér. A to si piš, že to udělá."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 72
END

IF ~~ THEN BEGIN 164 // from:
  SAY #28627 /* ~Annah ztuhla a pak začala mručet. "Kdo říká, že s náma pude? Dyk nepotřebujem někoho, jako je vona. Nebo snad jo?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 118
END

IF ~~ THEN BEGIN 165 // from:
  SAY #28628 /* ~Annah ztuhla a pak začala mručet. "Kdo říká že s náma pude? Dyk nepotřebujem někoho, jako je vona. Nebo snad jo?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 277
END

IF ~~ THEN BEGIN 166 // from:
  SAY #28629 /* ~"Uděláš nejlíp lebko, když budeš držet klapačku. Nebo bys snad radši honil svoje zuby po podlaze?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 117
END

IF ~~ THEN BEGIN 167 // from:
  SAY #30829 /* ~Annah pokrčila rameny a protočila oči. "Kecej, jak chceš, kámo, netankuje mě ani slovo, co plkáš, pokud nereješ do *mě*, abys mi rozuměl."~ */
  IF ~~ THEN REPLY #30836 /* ~Zkus získat jeho pozornost.~ */ EXTERN ~DABLE~ 7
END

IF ~~ THEN BEGIN 168 // from:
  SAY #30830 /* ~"Jó, i pouhej pohled na něj bolí."~ */
  IF ~~ THEN REPLY #30837 /* ~"Velmi zábavné, Annah. Mám nějaké otázky, pane..."~ */ EXTERN ~DABLE~ 16
  IF ~~ THEN REPLY #30838 /* ~"To je zvláštní poznámka od někoho, komu zezadu vylézá něco podobného obřímu krysímu ocasu..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY #30831 /* ~Annah vycenila zuby a švihla ocasem. "Takže *tak*, ty pitomej hňupohlave? Jestli *chceš*, já a můj vocas ti můžeme jít z vočí na vždycky! *Tohle* by se ti líbolo, ha?"~ */
  IF ~~ THEN REPLY #30839 /* ~"Ne, Annah; zůstaň. Jenom jsem si tě dobíral... oko za oko."~ */ GOTO 170
  IF ~~ THEN REPLY #30840 /* ~"Annah, ne.. Byl bych strašně nerad, kdybys odešla. Omlouvám se za tu poznámku. Prosím, zůstaň se mnou."
~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 171
  IF ~~ THEN REPLY #30841 /* ~"Jak chceš, Annah."~ */ GOTO 172
END

IF ~~ THEN BEGIN 170 // from: 169.0 171.0 172.0 173.0
  SAY #30832 /* ~"Hmph." Uculila se na tebe, ale nechystá se odejít.~ */
  IF ~~ THEN REPLY #30842 /* ~"Díky, Annah. A ty, pane... mám nějaké otázky."~ */ EXTERN ~DABLE~ 16
END

IF ~~ THEN BEGIN 171 // from: 169.1
  SAY #30833 /* ~Annah nachvíli ztichla. Otevřela ústa, jako by chtěla promluvit, ale pak se zastavila...
~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 172 // from: 169.2
  SAY #30834 /* ~Annah na tebe chvíli šokovaně zírá, pak se začíná třást zuřivostí. "*FAJN!*" zařvala. "Mocnosti, řekněte mně, *proč* jsem s tebou proflákala tolik času!" Jde pryč a hlasitě proklíná tebe, tvé předky a každého, kdo ti kdy zkřížil cestu.~ */
  IF ~~ THEN REPLY #30843 /* ~"Annah, počkej... omlouvám se, vrať se, prosím tě."~ */ GOTO 170
  IF ~~ THEN REPLY #30844 /* ~Chytni ji, než odejde.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 173
  IF ~~ THEN REPLY #30845 /* ~Nechej ji jít.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 172.1
  SAY #30835 /* ~Jak jsi ji chytil za paži, vyrvala se ti a zasyčela. "Už se na mě *nikdy* ani nepodívej, ty pitomej debilní kreténskej hňupe!" Zvedla pěst. "A každej kousek, kerej se mě *dotkne* skončí v Sigilským kanále, na to si vsaď!"~ */
  IF ~~ THEN REPLY #30846 /* ~"Annah, počkej. Chci se omluvit. Nechtěl jsem tě tak naštvat. Prosím, nechoď."~ */ GOTO 170
  IF ~~ THEN REPLY #30847 /* ~"Zkus tu vyhrůžku splnit, ty tieflingská sračko se špinavou držkou."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30848 /* ~"Sbohem navždy, Annah."~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #32668 /* ~Když sis kleknul před ženu,  Annah vyprskla vzteky. "Ses snad zbláznil, ne? Prostě tu pitomou děvku píchni, ty tupče! Hele, já to zmáknu za tebe..."~ */
  IF ~~ THEN REPLY #32689 /* ~"Annah, počkej!"~ */ DO ~Attack("Sarhava")
~ EXIT
  IF ~~ THEN REPLY #32690 /* ~Postav se mezi Annah a ženu.~ */ GOTO 175
  IF ~~ THEN REPLY #32691 /* ~Přidej se k Annah a zaútočte na ženu.~ */ DO ~Attack("Sarhava")
~ EXTERN ~DSARHAVA~ 15
  IF ~~ THEN REPLY #32692 /* ~Nechej Annah pracovat.~ */ DO ~Attack("Sarhava")
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.1
  SAY #32669 /* ~Pohnul ses, abys bránil ženu. Annah na tebe šokovaně zírá. "Co... to seš tak...*pitomej*?"~ */
  IF ~~ THEN REPLY #32693 /* ~"Tohle není Úl, Annah... nemůžeme bojovat, jak nás napadne. Jestli nebudeme opatrní, přijdou stráže."~ */ GOTO 176
  IF ~~ THEN REPLY #32694 /* ~"No tak, Annah, pojďme pryč."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #32670 /* ~Annah se zatvářila kysele a plivla ženě na nohu. Ta žena, což tě docela překvapilo, se ani nepohnula. "Na blití, to jo... je mi z toho na blití." Mumlá si dál něco pro sebe, zachytil jsi slova "ubožák" a "slaboch."~ */
  IF ~~ THEN REPLY #32695 /* ~"Hele, madam... my nestojíme o žádné problémy. Skončeme to, než zavolám stráže sám."~ */ EXTERN ~DSARHAVA~ 7
  IF ~~ THEN REPLY #32696 /* ~"No tak, Annah, pojďme pryč."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 177 // from:
  SAY #32671 /* ~Annah spaluje zuřivým pohledem Grace i Sarhavu.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 178 // from:
  SAY #32672 /* ~Annah zrudla a se zavrčením vytáhla své zbraně.~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DSARHAVA~ 30
END

IF ~~ THEN BEGIN 179 // from:
  SAY #32673 /* ~"Máš vostrej jazejček, holčičko." Annah si odplivla a přejela čepelemi o sebe. "By mě móóóc zajímalo, jak budou vypadat ty tvý načančaný hadříky a hezounký šperky na tvý mrtvole!"~ */
  IF ~~ THEN REPLY #32674 /* ~"Annah, počkej!"~ */ EXTERN ~DSARHAVA~ 31
END

IF ~~ THEN BEGIN 180 // from:
  SAY #33296 /* ~"Drž hubu ty hnusnej kreténe! Neříkala sem ti posledně, že už na mě nemáš promluvit, svině? Paní ví, jak si vůbec zjistil mý jméno!"~ */
  IF ~~ THEN EXTERN ~DGHIVEM~ 53
END

IF ~~ THEN BEGIN 181 // from:
  SAY #33297 /* ~"Neříkej, že sem tě nevarovala, mrtvolo!" Ostří Annah švihla, když roztáhnul ruce...~ */
  IF ~~ THEN REPLY #33298 /* ~Zaútoč na muže sám.~ */ EXIT
  IF ~~ THEN REPLY #33299 /* ~Nechej Annah pracovat.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #33435 /* ~"Drž hubu ty hnusnej kreténe! Neříkala sem ti posledně, že už na mě nemáš promluvit, svině? Paní ví, jak si vůbec zjistil mý jméno!"~ */
  IF ~~ THEN EXTERN ~DGHIVEF~ 51
END

IF ~~ THEN BEGIN 183 // from:
  SAY #33437 /* ~"Neříkej, že sem tě nevarovala, mrtvolo!" Ostří Annah švihla, když roztáhnul ruce...~ */
  IF ~~ THEN REPLY #33438 /* ~Zaútoč na muže sám.~ */ EXIT
  IF ~~ THEN REPLY #33439 /* ~Nechej Annah pracovat.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 218 227 even though they appear after this state */
~  GlobalGT("Annah","GLOBAL",0)
!Global("Annah_Talked_Grace","GLOBAL",5)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 184 // from:
  SAY #33981 /* ~Annah si tě prohlíží a kroutí přitom ocasem. "Takže... uh... už potřebuješ moji pomoc?"~ [ANA454A] */
  IF ~~ THEN REPLY #33982 /* ~"Chtěl bych, abychom zase cestovali spolu."~ */ GOTO 185
  IF ~~ THEN REPLY #33983 /* ~"Nic, promiň, že ruším."~ */ EXIT
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY #33984 /* ~"Oh, seš si JISTEJ? Nechals mě tu jednou a to mě natankovalo. Nemám čas na tvý pakárny. Jestli si tentokrát nejseš smrtelně jistej, měl bys radši jít."~ */
  IF ~~ THEN REPLY #33985 /* ~"Jsem si jistý. Potřebuju tvou pomoc, Annah."~ */ GOTO 186
  IF ~~ THEN REPLY #33986 /* ~"Tak to raději půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY #33987 /* ~"Csss. Nemá to smysl, ale pudu s tebou. Potřebuješ šecku pomoc, co dokážeš sehnat, to jo."~ */
  IF ~~ THEN REPLY #33988 /* ~"Dobře, pojďme."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 451 460 218 227 even though they appear after this state */
~  InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 187 // from:
  SAY #33989 /* ~"Jo? Co  teda chceš?"~ [ANA579B] */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67680 /* ~"Takže kde je to místo, kde jsi našla moje tělo?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67681 /* ~"Takže kde je to místo, kde jsi našla moje tělo?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67682 /* ~"Takže kde je to místo, kde jsi našla moje tělo?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67683 /* ~"Chtěl bych se zeptat, jak jsi našla mé tělo..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67684 /* ~"Annah... nepotkal jsem tě v Úlu, ještě před tím, než jsem našel Pharoda?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67685 /* ~"Annah, našla jsi na mém těle něco předtím, než jsi mě dotáhla do Márnice?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67693 /* ~"Annah, našel jsem Pharoda mrtvého."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67694 /* ~"Annah, víš, jak Pharod zemřel?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67686 /* ~"Pověz mi něco o Pharodovi."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67687 /* ~"Annah, když šel Pharod pro daň, kterou si z mého těla vzal, na chvíli zmizel a pak se vrátil - ale dvůr neopustil. Nevíš, kam šel?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67690 /* ~"Annah, můžeš mě pocvičit ve zlodějských uměních?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68261 /* ~"Annah, můžeš mě pocvičit ve zlodějských schopnostech?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67688 /* ~"Chtěl jsem, abys věděla, že když jsem v bludišti políbil Ravel, tak já..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67689 /* ~"Chtěl jsem, abys věděla, že když jsem v bludišti políbil Ravel, tak já..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67695 /* ~"V bludišti Ravel řekla, že trpíš... co tím myslela?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67051 /* ~"Slyšelas někdy o čarodějnici jménem Ravel Puzzlewell?"~ */ GOTO 316
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67052 /* ~"Nevíš, kde bych mohl najít 'kousek' Ravel?"~ */ GOTO 319
  IF ~~ THEN REPLY #33990 /* ~"Nic, Annah. Jen jsem se ujišťoval, že jsi pořád se mnou."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #39003 /* ~"Šmarjá, to je sebranka mozkový havěti! Nejlepší bude vypadnout hned jak to bude možný - budou rozbíjet tvojí mysl! Viděl jsem deset či dvacet z nich ležet padlých v opilosti, sabotovat budovy, a dycky sem slyšel zvěsti, že můžou kouzlit, když je jich víc pohromadě. Radši si vůbec nepředstavuju, co by stovky nebo ještě víc těchhle otrapů mohlo bejt schopnejch dělat, když jsou spolu.."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 189 // from:
  SAY #39004 /* ~"Šmarjá, to je sebranka mozkový havěti! Nejlepší bude vypadnout hned jak to bude možný - budou rozbíjet tvojí mysl! Viděl sem deset či dvacet z nich ležet padlý v opilosti, sabotovat budovy, a dycky sem slyšel zvěsti, že můžou kouzlit, když je jich víc pohromadě. Radši si vůbec nepředstavuju, co by stovky nebo ještě víc těchhle otrapů mohlo bejt schopnejch dělat, když jsou spolu.."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 5
END

IF ~~ THEN BEGIN 190 // from:
  SAY #39005 /* ~Annah ti šeptá: "Dokázal si donutit mozkovou havěť, aby pro tebe makala, že jó?  Musim ti řict, že: Nejlepči bude mazat pryč hned, jak to bude možný, dřiv než nás zlomi všecky. Sou rychlejši v bandách, sou - Viděla sem některý z nich válet se vožralý, sabotovat budovy a slyšim řikat, že kouzlej, když se slezou. Nemůžu si představit, jak silná je tadle banda - a některý z nich dokážou být vzteklí. Našlapuj tady vopatrně, jó?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 191 // from:
  SAY #39006 /* ~Annah ti šeptá: "Dokázal si donutit mozkovou havěť, aby pro tebe makala, že jó?  Musim ti řict, že: Nejlepči bude mazat pryč hned, jak to bude možný, dřiv než nás zlomi všecky. Sou rychlejši v bandách, sou - Viděla sem některý z nich válet se vožralý, sabotovat budovy a slyšim řikat, že kouzlej, když se slezou. Nemůžu si představit, jak silná je tadle banda - a některý z nich dokážou být vzteklí. Našlapuj tady vopatrně, jó?"~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 58
END

IF ~~ THEN BEGIN 192 // from:
  SAY #39007 /* ~"Nevím, jakej druh hry mozková havěť s tebou hraje, ale jestliže nabídnou mír, bylo by lepší ho přijmout. Stávají se rychlejšími ve skupinách, dělají spolu a každý si myslí, že jsi zranil některé z nich, banda takové velikosti tě může ještě poslat do knihy mrtvých."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 193 // from:
  SAY #39008 /* ~"Nevím, jakej druh hry mozková havěť s tebou hraje, ale jestliže nabídnou mír, bylo by lepší ho přijmout. Stávají se rychlejšíma ve skupinách, dělají spolu a každý si myslí, že jsi zranil některé z nich, banda takové velikosti tě může ještě poslat do knihy mrtvých."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 78
END

IF ~~ THEN BEGIN 194 // from:
  SAY #39200 /* ~Annah něco rozlobeně mumlá; zachytáváš slova "magor" a "idiotskej trouba."~ */
  IF ~~ THEN EXTERN ~DVIVIAN~ 12
END

IF ~~ THEN BEGIN 195 // from:
  SAY #39585 /* ~"No, já teda rozhodně nejsem nijak dobrá v kecáni takovejdle věci." Zamračila a máchla rukama, jako by chtěla zahnat tento nápad. "Už se mě neptej na takový blbosti, jó?"~ */
  IF ~~ THEN EXTERN ~DYVES~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #39586 /* ~Annah vypadá znepokojeně, ocasem švihá pomalu tam a zpátky. "Teda, znám jeden příběh..." Náhle se rozhořčí a chladně se podívá na Yves. "...ale možný je, že by se ti taky nemusel líbit a já nestojim vo to, bys mi pak nadávala!"~ */
  IF ~~ THEN REPLY #39764 /* ~"Pokračuj, Annah..."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 197
  IF ~~ THEN REPLY #39765 /* ~"Počkej... Měl bych pro tebe příběh na výměnu, Yves."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39766 /* ~"Zapomeň na to, Annah. Měl bych pro tebe otázku, Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39767 /* ~"Nestarej se o to, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #39587 /* ~Annah se zašklebila, ale pak se konečně s podrážděným výdechem nechala obměkčit. "Dyž sem eště byla malá holka, zaslechla sem takovej přiběh."

"To se takdle jeden manik štrachal domu docela pozdě večir a na jedný prázdný ulici potkal takovou starou bezzubou babiznu. A vona se ho ptá 'Kampak deš'?" 
~ */
  IF ~~ THEN REPLY #39768 /* ~"Pokračuj, Annah..."~ */ GOTO 198
  IF ~~ THEN REPLY #39769 /* ~"Vydrž... měl bych dotaz pro Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39770 /* ~"Zbytek si poslechneme příště, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #39588 /* ~"A von jí řiká 'Domu, za starou a děckama.'"

"'Někam k Úlu?'" se ho ptá."

"A von jí povidá 'dalo by se říct'."
~ */
  IF ~~ THEN REPLY #39771 /* ~"Pokračuj, Annah..."~ */ GOTO 199
  IF ~~ THEN REPLY #39772 /* ~"Vydrž... měl bych dotaz pro Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39773 /* ~"Zbytek si poslechneme příště, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #39589 /* ~"A tak ho poprosila o službičku... měl donýst ňákou krabičku do Mrtvákova brlohu a dát to žencký, co tam bude čekat. A protože tenhle manik byl tak trochu cvok, moc milej na to, aby tý babici řek, že mu na ni cosi smrdí, tak povidá, že jo. 'Ale jak se ta žencká menuje?' se jí zeptal. 'Kde bejvá? Kde ji mám hledat, estli nebude u Mrtváka?'"~ */
  IF ~~ THEN REPLY #39774 /* ~"Pokračuj, Annah..."~ */ GOTO 200
  IF ~~ THEN REPLY #39775 /* ~"Vydrž... měl bych dotaz pro Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39776 /* ~"Zbytek si poslechneme příště, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #39590 /* ~"A babka mu podala krabičku - celou ze dřeva a zabalenou v barevnejch hadrech - a řekla ať tam de, že vona tam zkrátka bude. A nakonec ho eště varovala, že prej ať se stane cokoliv, tak nesmí tu bedýnku votevřit."~ */
  IF ~~ THEN REPLY #39777 /* ~"Pokračuj, Annah..."~ */ GOTO 201
  IF ~~ THEN REPLY #39778 /* ~"Vydrž... měl bych dotaz pro Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39779 /* ~"Zbytek si poslechneme příště, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #39591 /* ~"No, a ten chlap si tu krabičku dones domu, skoval ji v podkroví a řek si, že ji k Mrtvákovi vodnese až vynde slunko. Jenže jeho stará viděla, jak tu krabičku ukrejvá a hned začla žárlit, jakože to bude dárek vod milenky nebo tak něco. No a tak počkala, až manžílek nebude šmírovat a tu bedýnku votevřela."~ */
  IF ~~ THEN REPLY #39780 /* ~"Pokračuj, Annah..."~ */ GOTO 202
  IF ~~ THEN REPLY #39781 /* ~"Vydrž... měl bych dotaz pro Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39782 /* ~"Zbytek si poslechneme příště, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.0
  SAY #39592 /* ~"Jenomže když tu krabičku votevřela, tak se divila i ušima, páč ta bedýnka byla plná vydloubanejch vočí a uřízlejch mužskejch pohlavnich vorgánů, a to navíc i s chlupama. Když pak začla řvát jak tur, tak přiběh její mužik... vzpomněl si, co ta babice řikala, dostal strach a honem rychle krabičku zavřel a zabalil do hadrů."~ */
  IF ~~ THEN REPLY #39783 /* ~"Pokračuj, Annah..."~ */ GOTO 203
  IF ~~ THEN REPLY #39784 /* ~"Vydrž... měl bych dotaz pro Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39785 /* ~"Zbytek si poslechneme příště, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #39593 /* ~"Pak šel ven a šněroval si to přímo k Mrtvákovi, jistej, že tam na něj bude čekat další stará baba. A taky že jo. No, a tak jí dal tu krabičku a vona mu povidá: 'Tuto krabičku někdo votevřel a podival se do ni.'"~ */
  IF ~~ THEN REPLY #39786 /* ~"Pokračuj, Annah..."~ */ GOTO 204
  IF ~~ THEN REPLY #39787 /* ~"Vydrž... měl bych dotaz pro Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39788 /* ~"Zbytek si poslechneme příště, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY #39594 /* ~"Ten chudina manik se to snažil popirat, ale vona se na něj tak ňák divně podivala. 'Udělal's něco hrozného!' ještě řekla a pak zmizla. Dyž to slyšel, začal chlap pospichat zpátky domu."~ */
  IF ~~ THEN REPLY #39789 /* ~"Pokračuj, Annah..."~ */ GOTO 205
  IF ~~ THEN REPLY #39790 /* ~"Vydrž... měl bych dotaz pro Yves..."~ */ EXIT
  IF ~~ THEN REPLY #39791 /* ~"Zbytek si poslechneme příště, Annah. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #39595 /* ~"Cejtil se nemocnej, dyž dorazil a hned si leh do postele. Jeho stará trpko litovala, že votevřela tu bedýnku, ale na to už bylo pozdě... příští den její mužskej zemřel na ňákou hnilobnou nemoc a první co to vodneslo byly voči a péro."

Annah ponuře sklonila hlavu, její příběh skončil.
~ */
  IF ~~ THEN EXTERN ~DYVES~ 64
END

IF ~~ THEN BEGIN 206 // from:
  SAY #41137 /* ~"Tch." Annah se posmívá a koulí očima. "Idiote."~ */
  IF ~~ THEN REPLY #41138 /* ~Ignoruj Annažinu připomínku.~ */ EXTERN ~DKESAI~ 35
  IF ~~ THEN REPLY #41139 /* ~"Ignoruj jí, Kesai."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 207
  IF ~~ THEN REPLY #41140 /* ~"Annah, prosím... to byl jen kompliment."~ */ GOTO 207
  IF ~~ THEN REPLY #41141 /* ~"Nerozčiluj se, Annah... jsi tak krásná."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 208
END

IF ~~ THEN BEGIN 207 // from: 206.1 206.2
  SAY #41142 /* ~Annah se na tebe ledově dívá, ale nic neříká.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 208 // from: 206.3
  SAY #41143 /* ~"A *to* má jako znamenat co, ty vybíravej hajzle?! To sis snad myslel, že *žárlím* na tu ukecanou couru? Ty burane!" Annah vyprskla a a přestala se ti věnovat.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 209 // from:
  SAY #43906 /* ~"Pche!" Annah se ušklíbla na Morteho. "Přestaň slintat blahem, ty škodolibá lebko."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 469
END

IF ~~ THEN BEGIN 210 // from:
  SAY #43907 /* ~"Přibliž se jen vo vlásek, lebko, a uvidíš, že ani jeden z tvejch drkotavejch zubů nezůstane ležet blížejc, než sto kroků vod sebe!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 470
END

IF ~~ THEN BEGIN 211 // from:
  SAY #44246 /* ~"Hořkosladký *popíchnutí*..." zavrčela Annah. "Hej všici! Nebudeme tady dál čekat, bude lepčí, když..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 18
END

IF ~~ THEN BEGIN 212 // from:
  SAY #44250 /* ~Annah vypadá překvapeně. "He?" Její překvapení rychle přešlo do hněvu. "Vo co ti *de?*"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 19
END

IF ~~ THEN BEGIN 213 // from:
  SAY #44252 /* ~Annah vyhlíží zmateně. "Nikoli. Nikoli, nejsu Vnímavá..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 21
END

IF ~~ THEN BEGIN 214 // from:
  SAY #44253 /* ~"Nikoli, líbí se mi. Nemusím se starat vo horko nebo zimu, je to moja krev, myslím. A bacha co říkáš vo tieflingách, jasný?"~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 22
END

IF ~~ THEN BEGIN 215 // from:
  SAY #45721 /* ~"Rozpárala bych tě, kdyby se na tobě něco dalo rozpárat, lebzno."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 486
END

IF ~~ THEN BEGIN 216 // from:
  SAY #46094 /* ~"'Spláchnout?' Co to u devíti sfér Baatoru meleš, ty idiote? Spláchnutej je někdo, koho ťapli, zmlátitli a zavřeli harmoniáci, ty debilní pitomý idiotský nablblý kreténe se slepičím hovnem místo mozku!"~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 1
END

IF ~~ THEN BEGIN 217 // from:
  SAY #46095 /* ~Annah znechuceně zavrtěla hlavou. "Kecej si, ty blbče. By mně chtělo zajímat, jak dlouho bys s takovou držkou vydržel v Úlu, ty..." Annah se otočila k tobě. "Pojď, jdeme. S tímdle rádoby mlátičem nemá smysl mluvit, je to totální pablb a kretén."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 3
END

IF WEIGHT #1 /* Triggers after states #: 227 even though they appear after this state */
~  Global("0110_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 218 // from:
  SAY #47311 /* ~"Ech, co je?" Obrátil ses a spatřil jsi rudovlasou dívku oděnou v kožené zbroji... vůbec jsi nezaslechl, kdy vstoupila do sálu. Pravou ruku má krytou řadou navzájem se překrývajících pásků, očividně odebraných z kůže nějaké obludy, zatímco levá ruka je chráněna zubatým nárameníkem. Jako by to nestačilo, má ocas... vidíš, jak se míhá tam a zpět.~ [ANA229B] */
  IF ~  Global("Know_Annah","GLOBAL",0)
~ THEN REPLY #47320 /* ~"Takže ty jsi ta, co mi ukáže, kde našla mé tělo?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #47321 /* ~"Ty jsi Annah? Potkal jsem tě v Úlu - venku u Márnice, správně?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0 218.1
  SAY #47312 /* ~Dívka si tě nevšímá a obrací se k Pharodovi. "Tak vo co kráčí? Nebudu si hrát na přetahovanou s tímdle zjizveným psem, to teda né. Na to si vem někerýho jinýho ze svejch vypatlanců."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 81
END

IF ~~ THEN BEGIN 220 // from:
  SAY #47313 /* ~"Eh? Vo co ti de?" Zašilhala po tobě. "Dyť není tuhej."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 82
END

IF ~~ THEN BEGIN 221 // from:
  SAY #47314 /* ~"Tak?" Annah o tebe zavadila pohledem, pak pokrčila rameny. "Dokaď budu vokolo, neměl by si v Úlu hrát na mrtváka, nebo se probudí u Spalovačů, to teda jo."~ */
  IF ~~ THEN REPLY #47322 /* ~"Možná sis měla OVĚŘIT, jestli nejsem naživu, než jsi mě odtamtud vytáhla."~ */ GOTO 222
  IF ~~ THEN REPLY #47323 /* ~"To stačí - kde jsi našla mé tělo?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #47315 /* ~"Ó, baže, možná bys měl BEJT opatrnější a pak nebudeš ležet hubou v blátě a tuhej jak šutr na dlažbě, jasný?!"~ */
  IF ~~ THEN REPLY #47324 /* ~"Snad bych měl ukázat té špinavé okrádačce mrtvol, jaké to je ležet na pokraji smrti na ulici." ~ */ GOTO 223
  IF ~~ THEN REPLY #47325 /* ~"To stačí - kde jsi našla mé tělo?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #47316 /* ~"Nemám z TEBE strach -" Její ruce jí slétly k bokům a vytasily dvě ošklivě ostré pěstní dýky. "Drž se důle, nebo budeš čumět na svět skrz todlecto, to teda jó!"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 224 // from:
  SAY #47317 /* ~"Tssss..." Annah se na Pharoda zašklebila a pak ti věnovala letmý pohled. "Tak poď. A hejbej kostrou. Nemam času se s tebou plácat." ~ */
  IF ~~ THEN REPLY #47326 /* ~"Vlastně ještě nejsem hotov s průzkumem Pohřbené vesnice... pojďme k místu, kde jsem zemřel, až potom."~ */ GOTO 225
  IF ~~ THEN REPLY #47327 /* ~"No dobře. Pojďme tam teď."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
StartCutSceneMode()
StartCutSceneEx("0110cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #47318 /* ~"Ó, fakt? Tak dobrý, můžeš si svůj hrob vyčmuchat sám! Nečekám -"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 84
END

IF ~~ THEN BEGIN 226 // from:
  SAY #47319 /* ~Annah si odplivla. "Mor na vás voba..."~ */
  IF ~~ THEN REPLY #47328 /* ~"To bylo to, co jsem myslel... teď pojďme."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Annah_AR0400_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 227 // from:
  SAY #47329 /* ~Annah ukázala na dveře před tebou. "Skrzevá todle se chcem dostat."~ */
  IF ~~ THEN REPLY #47330 /* ~"V pořádku, jdeme na to."~ */ DO ~SetGlobal("Annah_AR0400_Cut_Scene","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #47849 /* ~"Jo... je to natřený šílenýma barvama Hladovejch psů, je to - sou to opravdový dveře, dokud se na ně nepodíváš. Pak se změní v obraz."~ */
  IF ~~ THEN REPLY #47850 /* ~"Jak to udělali?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #47851 /* ~Annah pokrčila rameny. "Ve Sférách sou i divnější věci." Najednou se zamračila. "Stejně tak by ses moh zeptat, jak ses dostal z knihy mrtvejch, i když já si byla JISTÁ, že mrtvej seš."~ */
  IF ~~ THEN REPLY #47852 /* ~"Takže tyhle dveře... zkrátka se na ně nebudu jenom dívat? A pak je *otevřu?*"~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #47853 /* ~Annah se podívala na dveře a přikývla. "To je celý tajemství, jestli sou drby pravdivý."~ */
  IF ~~ THEN REPLY #47854 /* ~"Dobrá tedy... uděláme to, jak říkáš. Ty jenom-"~ */ GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #47855 /* ~"Počkej!" Annah se postavila před tebe. "Todle je jediná cesta, kerou znám k místu, kde sem našla tvoji mrtvolu, ale není to zrovna bezpečná cesta, jasný? Seš připravenej? Nejsem tady, abysem ti dělala chůvu, i když dědek kecal, co kecal."~ */
  IF ~~ THEN REPLY #47856 /* ~"Co je za těmi dveřmi, že je to tam tak nebezpečné?"~ */ GOTO 232
  IF ~~ THEN REPLY #47857 /* ~"Nemyslím si, že se o mně musíš bát - jenom se drž za mnou. A teď mě nech, ať otevřu ty dveře."~ */ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47858 /* ~"Tak v tom případě si zajdeme ještě pro nějaké zbraně a trochu si odpočineme, než tam vpadneme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #47859 /* ~"Chaosáci," zašeptala Annah. "Šílený jako vohlá kramle. Vyjou celou noc i den a sou dycinky připravení počmárat tě barvama nebo ti roztřískat lebku nočníkem. Šílený a nebezpečný, to teda sou."~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47860 /* ~"Neboj se - jsem členem jejich společenstva."~ */ GOTO 233
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47861 /* ~"Jestli jsou tak nebezpeční, tak jak ses přes ně dostala?"~ */ GOTO 234
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47862 /* ~"Nemyslím si, že se o mně musíš bát - jenom se drž za mnou. A teď mě nech, ať otevřu ty dveře."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47863 /* ~"Hmmm. Tak v tom případě si půjdeme doplnit vybavení a vrátíme se později."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #47864 /* ~"Oj, to si myslíš, že chaosáci se kamaráděj mezi sebou?" Odfrkla si. "Tak to SEŠ dost pako, abys moh bejt jeden z nich."~ */
  IF ~~ THEN REPLY #47865 /* ~"Jestli jsou tak nebezpeční, tak jak ses přes ně dostala?"~ */ GOTO 234
  IF ~~ THEN REPLY #47866 /* ~"Nemyslím si, že se o mně musíš bát - jenom se drž za mnou. A teď mě nech, ať otevřu ty dveře."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47867 /* ~"Hmmm. Tak v tom případě si půjdeme doplnit vybavení a vrátíme se později."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 232.1 233.0
  SAY #47868 /* ~"Sem tam vlezla hezky potichoučku. Tě nemůžou pomalovat nebo zabít, dyž tě NEVIDĚJ." Zamračeně si tě prohlédla. "Pochybuju, že se to povede znova, dyž budeš kolem rámusit ty. Vypadáš nevohrabaně, to teda jo."~ */
  IF ~~ THEN REPLY #47869 /* ~"Jenom se drž za mnou. A teď mě nech otevřít ty dveře."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47870 /* ~"Hmmm. Tak v tom případě si půjdeme doplnit vybavení a vrátíme se později."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from:
  SAY #50111 /* ~"Ech..." Annah se na tebe zvláštně podívala. "Jo, je to dabus."~ */
  IF ~~ THEN REPLY #50112 /* ~"Co je 'dabus?'"~ */ GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #50113 /* ~Annah ztišila hlas. "Dabusové patřej do *Jeji* rodiny -- staraj se o město, spravuji je, strhávaj je, zase stavěj a všecko to vokolo. Mluvěj v rébusech symbolů ve vzduchu -- bys je musel rozlousknout, aby ses dověděl, co znamenaj." Annah vypadá podrážděně. "Jenom tě z toho rozbolí palice, to jo."~ */
  IF ~~ THEN REPLY #50114 /* ~"'Její' rodiny? Koho?"~ */ GOTO 237
  IF ~~ THEN REPLY #50302 /* ~"Chápu."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #50115 /* ~"Pani Bolesti." Annah před sebou udělá do vzduchu půlkruh. "Pracujou pro ni a vona je chráni. Nevotravuj je, nebo přitáhneš jeji pozornost."~ */
  IF ~~ THEN REPLY #50116 /* ~"Můžeš mi povědět o Paní Bolesti?"~ */ GOTO 238
  IF ~~ THEN REPLY #50301 /* ~

"Chápu."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #50117 /* ~"Pssst!" Annah si přejela prstem přes hrdlo. "Měl bys vo ni držet klapačku. Má uši *všude*, jo, to má, takže neřikej jeji méno, jasný?"~ */
  IF ~~ THEN REPLY #50118 /* ~"Och."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50300 /* ~"Dobrá, dobrá."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 239 // from:
  SAY #50153 /* ~"Řek jen, že je jeden z dabusů." Pokrčila rameny. "Voni nemaj ména."~ */
  IF ~~ THEN REPLY #50154 /* ~"Můžeš mu položit další otázku?"~ */ GOTO 240
  IF ~~ THEN REPLY #50235 /* ~"To je vše, co jsem chtěl vědět. Jdeme odsud."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 240 // from: 239.0 243.0 244.1 245.1 247.1 248.0 248.2
  SAY #50155 /* ~Annah přikývla. Dabus na vás dva stále civí s rukama v zastrčenýma do rukávů. ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50156 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50157 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50213 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50214 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50215 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50216 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50217 /* ~"Požádej ho, aby nám pověděl o Paní Bolesti."~ */ GOTO 244
  IF ~~ THEN REPLY #50229 /* ~"Požádej ho, aby nám pověděl o Fellovi."~ */ GOTO 247
  IF ~~ THEN REPLY #50234 /* ~"Ne, nic. Pojďme pryč."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 241 // from:
  SAY #50161 /* ~"Řek jenom, že je jeden z dabusů." Pokrčila rameny. "Voni nemaj ména."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 490
END

IF ~~ THEN BEGIN 242 // from:
  SAY #50163 /* ~"Teda, tendle mi to méno neřek, nebo *jo*, lebko?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 491
END

IF ~~ THEN BEGIN 243 // from:
  SAY #50185 /* ~Pokrčila rameny. "Řek, že dělá svou makačku. Dyť víš - starat se vo město a to všecko."~ */
  IF ~~ THEN REPLY #50186 /* ~"Můžeš se zeptat jinou otázku?"~ */ GOTO 240
  IF ~~ THEN REPLY #50187 /* ~"To je vše, co jsem chtěl vědět. Jdeme pryč."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 244 // from: 240.6
  SAY #50218 /* ~Annah zakroutí hlavou. "To učitě, nepudu s tebou do stinu Pani, to zrovna. Jen přitáhneš jeji pozornost, dyž vo ni porád držkuješ před jejima přibuznejma."~ */
  IF ~~ THEN REPLY #50219 /* ~"Podívej, prostě se ho zeptej na Paní, dobrá?"~ */ GOTO 245
  IF ~~ THEN REPLY #50227 /* ~"Dobrá. Mohla bys mu dát jinou otázku?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50228 /* ~"Tak na to zapomeň. Jdeme prostě pryč."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 245 // from: 244.0 247.0
  SAY #50220 /* ~Annah zakroutí hlavou. "Ne, nezeptám."~ */
  IF ~~ THEN REPLY #50221 /* ~"Podívej, *udělej* to. Varuji tě."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 246
  IF ~~ THEN REPLY #50225 /* ~"Dobrá. Mohla bys mu dát jinou otázku?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50226 /* ~"Tak na to zapomeň. Jdeme prostě pryč."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #50222 /* ~Annah zkřížila ruce a její ocas začal švihat zepředu dozadu.~ */
  IF ~~ THEN REPLY #50223 /* ~"Tak teda jinak..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50224 /* ~"Tak na to zapomeň. Jdeme prostě pryč."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 247 // from: 240.7
  SAY #50230 /* ~"To jo, nebudu se naňho ptat Fellova bývalýho přibuznýho, to teda né. Je to zlá krev a nikomu to nepřitáhne nic dobrýho, tahat sem takový věci."~ */
  IF ~~ THEN REPLY #50231 /* ~"Podívej, prostě mu tu zatracenou otázku *polož*, dobrá?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 245
  IF ~~ THEN REPLY #50232 /* ~"Mohla bys mu dát jinou otázku?"~ */ GOTO 240
  IF ~~ THEN REPLY #50233 /* ~"Tak na to zapomeň. Jdeme prostě pryč."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 248 // from:
  SAY #50275 /* ~Na chvilku se zarazila. "Jo... můžu."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50276 /* ~"A uděláš to?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50277 /* ~"A uděláš to?"~ */ GOTO 249
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50281 /* ~"Tak to udělej."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50282 /* ~"Tak to udělej."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 249
  IF ~~ THEN REPLY #50283 /* ~"Ne, nic. Pojďme pryč." ~ */ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 249 // from: 248.1 248.3
  SAY #50278 /* ~Annah zakroutí hlavou. "To učitě, nepudu s tebou do stinu Pani, to zrovna. Jen přitáhneš jeji pozornost, dyž vo ni porád držkuješ před jejima přibuznejma."~ */
  IF ~~ THEN REPLY #50279 /* ~"Chápu."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50280 /* ~"Ne, nic. Pojďme pryč." ~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 250 // from:
  SAY #50702 /* ~"Ses úplně *pomát*, ty hňupe? Ke všem mocnostem, buďto si děláš nějaký ubohý vtipy, nebo slibuju, že se vynasnažím tě vodrovnat *nafurt*, to jo!"~ */
  IF ~~ THEN REPLY #50703 /* ~"Myslím to vážně. Koupíš ji, Vrischiko?"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
SetGlobal("Sell_Annah","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #50704 /* ~"Dělám, dělám. Měl bych jinou otázku, Vrischiko..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50705 /* ~"Máš pravdu... byl to jenom nejapný žert, Annah. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #52530 /* ~Annah neodpověděla - Pouhá Ravelina přítomnost, jako by jí úplně umlčela. Její ocas přestal protínat vzduch a její oči ztratily typický tvrdý pohled.~ */
  IF ~~ THEN REPLY #52531 /* ~"Už toho bylo dost, Ravel. Jaké další otázky máš?"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 252 // from:
  SAY #52533 /* ~Annah je jako paralyzována, její oči jsou rozšířené, když na ni Ravel upřela svůj pohled. Vidíš, jak se chvěje, srdce jí rychle buší.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 39
END

IF ~~ THEN BEGIN 253 // from:
  SAY #52534 /* ~"Jo, život ho možná polkl, ale nevylezl z *tamtoho* konce, takže..."~ */
  IF ~~ THEN REPLY #52535 /* ~"Už dost - podívej, Ravel, vzala jsi mi mou smrtelnost, a způsobilo to více škody než užitku. Vezmu si jí zpátky. Myslím, že už jsi ji měla dost dlouho."~ */ EXTERN ~DRAVEL~ 126
END

IF ~~ THEN BEGIN 254 // from:
  SAY #52536 /* ~"Tys ho *milovala!*" Annah přerušila své mlčení - zní překvapeně. "Tys ho *milovala!*"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 129
END

IF ~~ THEN BEGIN 255 // from:
  SAY #52537 /* ~Annah je jako paralyzována, její oči jsou rozšířené, když na ni Ravel upřela svůj pohled. Vidíš, jak se chvěje, srdce jí rychle buší.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 91
END

IF ~~ THEN BEGIN 256 // from:
  SAY #52639 /* ~"Nevim." Annah se na tvář nevěřícně dívá, nervózně si pohrává s dýkami. "Ale já řikam, vypadnem, než to zjistime, co?"~ */
  IF ~~ THEN REPLY #52773 /* ~"Ještě ne. Je tady něco..."~ */ EXTERN ~DPREGAL~ 1
END

IF ~~ THEN BEGIN 257 // from:
  SAY #52640 /* ~"Myslim, že mluví o dabusech. Ti furt opravujou a předělávaj věci."~ */
  IF ~~ THEN REPLY #52772 /* ~"Aha."~ */ EXTERN ~DPREGAL~ 9
END

IF ~~ THEN BEGIN 258 // from:
  SAY #52641 /* ~"Uh, musí 'překážet'."~ */
  IF ~~ THEN REPLY #52768 /* ~"O čem to mluvíš?"~ */ GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.0
  SAY #52642 /* ~"Myslím, že je těhotná."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #52769 /* ~"Oh."~ */ EXTERN ~DPREGAL~ 10
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52770 /* ~"Oh."~ */ EXTERN ~DMORTE~ 510
END

IF ~~ THEN BEGIN 260 // from:
  SAY #52988 /* ~Annah tě zhrozeně pozoruje. Vypadá to, že chce přistoupit blíž a pomoci ti, ale je jako paralyzovaná. "Seš... seš v pořádku?"~ */
  IF ~~ THEN REPLY #52989 /* ~"Ano... ano... jenom chviličku..."~ */ GOTO 261
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #52990 /* ~Annah je tiše, pozoruje tě, jako zhypnotizovaná. Tvá krev kape na podlahu, každá kapka se rozlila do rudého kroužku, když dopadla na kamennou podlahu senzoria. "Co jsi viděl... co jsi viděl v tom prokletým šutráku?"~ */
  IF ~~ THEN REPLY #52991 /* ~"Touhu..."~ */ GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #52992 /* ~Annah se zmateně zamračila, pak se rozzuřeně podívala na senzorický kámen, plná touhy rozbít ho na kusy. "Jo? Já zas toužím *roztřískat* na kusy ten šutr, že tě tak oddělal!"~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52993 /* ~"Ne... jenom potřebuju chvilku, Annah, ať se můžu vzpamatovat. Budu v pořádku."~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52996 /* ~"Ne... jenom potřebuju chvilku, Annah, ať se můžu vzpamatovat. Budu v pořádku."~ */ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 263 // from:
  SAY #53933 /* ~"Tati! Co tam děláš?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 7
END

IF ~~ THEN BEGIN 264 // from:
  SAY #53974 /* ~Annah vrhá tvrdý pohled na portál, oči zúžené, pěsti sevřené, ocas ztuhlý. Na jejím chvějícím obličeji se střídá zuřivost a smutek.~ */
  IF ~~ THEN REPLY #53975 /* ~"Annah... jsi v pořádku?"~ */ GOTO 265
  IF ~~ THEN REPLY #53976 /* ~Pravdivě: "Přál bych si, abychom mu mohli nějak pomoct. Je to hrozná věc, ať už se stane komukoli."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pillar_1","GLOBALGood",1)
~ GOTO 265
  IF ~~ THEN REPLY #53977 /* ~Pravdivě: "Je to smutné, Annah, ale zasloužil si takový osud. Netrap se kvůli němu."~ */ GOTO 265
  IF ~~ THEN REPLY #53978 /* ~Pravdivě: "Jsem rád, že tam toho hajzla vidím - a ať už je to 'otec' nebo ne, ty bys měla být taky ráda, Annah."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_1","GLOBALGood",-1)
~ GOTO 265
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53979 /* ~Zůstaň potichu.~ */ EXTERN ~DGRACE~ 171
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #53980 /* ~Zůstaň potichu.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1 264.2 264.3
  SAY #53982 /* ~Annah si odplivla a pak se otočila k hromadě hnijících hlav zády. Pokrčila rameny, ale do očí se ti nepodívala. "Na tom nezáleží."~ */
  IF ~~ THEN REPLY #54056 /* ~"Milovala jsi Pharoda, Annah?"~ */ GOTO 266
  IF ~~ THEN REPLY #54057 /* ~Zůstaň potichu.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 266 // from: 265.0 268.0
  SAY #54040 /* ~Annah se otočila, oči jí hoří. "Byl to můj *táta*." Vycenila zuby. "*Nenáviděla* sem ho. Viděl ve mně jen způsob, jak dostat víc těl, víc prachů a víc harampádí do skladu. 'Annah drahoušku,' 'Annah holčičko, jsi ta nejcennější věc v mým skladě,' lhal. A lhal. A byl slabej na těle i duchu. A smrděl jako shnilá mrtvola a měl to v hlavě ještě horší než sup, co tu shnilou mrtvolu voškubával."~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY #54047 /* ~Annah snížila hlas, ale oheň v jejích očích hoří ještě víc. "A byl to jedinej, kdo se ke mně kdy zachoval aspoň trochu hezky. Todle si *chtěl* slyšet? Seš teď *spokojenej*?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 268 // from:
  SAY #54050 /* ~Annah si odplivla a pak se otočila k hromadě hnijících hlav zády. Pokrčila rameny, ale nepodívala se na tebe ani na Grace. "Na tom nezáleží."~ */
  IF ~~ THEN REPLY #54058 /* ~"Milovala jsi Pharoda, Annah?"~ */ GOTO 266
  IF ~~ THEN REPLY #54059 /* ~Zůstaň potichu.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 269 // from:
  SAY #54051 /* ~"Myslíš *lži*!" Zasyčela Annah.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 517
END

IF ~~ THEN BEGIN 270 // from:
  SAY #54052 /* ~"Co seš, debil?! Sou to lebky kreténů, kteří lhali tak dobře, že kvůlivá nim někdo chcíp. Řekne ti skoro všecko - ale za vodpověď bude chtít *hodně*! Takže mu nedávej takový votázky!"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 271 // from:
  SAY #54062 /* ~"*Může* mě to mít, jo?! To si nemyslím, ty blbej kreténe! Co si to sakra myslíš, he?" Náhle se zarazila a zamhouřila oči. "U stínu Paní, doufám, že to nemyslíš vážně... jestli jo, tak tam narvu tebe, to udělám..."~ */
  IF ~~ THEN REPLY #54063 /* ~Pravdivě: "Myslel jsem to vážně. Vlez tam, Annah, nebo tě tam narvu sám."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_4","GLOBALGood",-1)
SetGlobal("Pillar_Question","AR1001",0)
LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #54064 /* ~"Nemyslel jsem to vážně. Dobrá, Pilíři. Jaké *jiné* dary přijmeš?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54065 /* ~"*Samozřejmě* že jsem si dělal legraci. Pojďme."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54066 /* ~"*Samozřejmě* že jsem si dělal legraci. Pojďme."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY #54129 /* ~"Já..." Annah se otřásla, jak vyrazila další vlna chladu. "Jo, pudu za tebou... bys stejně ztratil vlastní kebuli, kdybys ji neměl přišitou ke krku. Budeš mě potřebovat."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54130 /* ~"Možná že ano. Dak'kone? Jsi se mnou?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54131 /* ~"Možná že ano. Dak'kone? Jsi se mnou?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54132 /* ~"Možná že ano. Morte? Jsi se mnou?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54133 /* ~"Možná že ano. Morte? Jsi se mnou?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54134 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54135 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54136 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 273 // from:
  SAY #54137 /* ~"Já..." Annah vrhla vražedný pohled na Fall-From-Grace, pak se k tobě otočila, z očí jí sálá oheň. "Jestli jde *ona*, jdu i já. Nenechám tě bejt jen tak."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54138 /* ~"Velmi dobře. Dak'kone? Jsi se mnou?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54139 /* ~"Velmi dobře. Dak'kone? Jsi se mnou?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54140 /* ~"Velmi dobře. Morte? Jsi se mnou?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54141 /* ~"Velmi dobře. Morte? Jsi se mnou?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54142 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54143 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54144 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 274 // from:
  SAY #56678 /* ~Annahiny oči se zúžily. "Raděj na mě ani nekoukej, duchu! Nechci s tebou nic mít, to teda rozhodně ksakru ne!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 94
END

IF ~~ THEN BEGIN 275 // from:
  SAY #56679 /* ~Když Vhailorův zrak dopadl na Annah, otřásla se, jakoby ji spálil. "Ne, duchu. Já se s tebou vybavovat nebudu, to teda ne."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 95
END

IF ~~ THEN BEGIN 276 // from:
  SAY #56680 /* ~"Jo? A jaká spravedlnost to je?! Tvoje spravedlnost nejni MOJE spravedlnost - je tak prázdná, jako tvý brnění. Děláš si VLASTNÍ spravedlnost, kerou pak slepě ignoruješ, dyž donde na tebe!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 96
END

IF ~~ THEN BEGIN 277 // from:
  SAY #56681 /* ~"Jo tak? No, ty a tví *Nemilosrdní* ste pověsili spustu mejch kámošů ze stromu ve jménu spravedlnosti, dyž na vás přišla chuť! Kdybys tak shořel v ohni Baatoru, ty prokletej na polomrtvej parchante. Ať tě Mocnosti proklejou! Přeju ti, aby někdo popad ty tvoje plechy a narval je ve Slévárně do vohně, takže by se rozpustily a z tebe už by nebylo vůbec nic, ty jedna namyšlená 'nemilosrdná' plechovko!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 97
END

IF ~~ THEN BEGIN 278 // from:
  SAY #56682 /* ~Annah vypadá zoufale. "Ne. A teď mně nech, ksakru!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 98
END

IF ~~ THEN BEGIN 279 // from:
  SAY #57162 /* ~Annah zakroutila očima a vydala ze sebe *Hmfff.*~ */
  IF ~~ THEN REPLY #57163 /* ~"Sbohem."~ */ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 280 // from:
  SAY #57164 /* ~Annah si odfrkla. "Csss! Proč ji nepoložíš na zem a neužiješ si, přímo tady na ulici? Co?"~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 281 // from:
  SAY #61416 /* ~Když jsi chtěl tu ženu následovat, Annah se úplně naježila. "Co si sakra myslíš?!" Přitočila se ke kurtizáně a vytáhla své pěstní dýky. "Ztrať se ty děvko!"~ */
  IF ~~ THEN REPLY #61425 /* ~"Kruci! Uklidni se Annah!"~ */ GOTO 282
  IF ~~ THEN REPLY #61427 /* ~"Dej ty zatracený nože stranou!"~ */ GOTO 282
  IF ~~ THEN REPLY #61428 /* ~Sleduj co se stane.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 285
END

IF ~~ THEN BEGIN 282 // from: 281.0 281.1
  SAY #61417 /* ~Natočila se k tobě. "A ty mě dobře poslouchej ksindle - přestaň fušovat do jinejch, nebo ti ho ufiknu, jasný?"~ */
  IF ~~ THEN REPLY #61429 /* ~"'Ufikneš mi ho?' Copak sem si za něco takovýho zaplatil?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61430 /* ~"Přestaň strašit tu ženu, nebo ti přistřihnu ocas, rozumíš?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61431 /* ~"Neptal jsem se na tvůj názor Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61432 /* ~"Dobře, dobře... uklidni se."~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.1 282.2 282.3
  SAY #61418 /* ~Annah se pomalu uklidňuje, ale její ocas stále švihá ze strany na stranu. "Příště uděláš líp, když se budeš starat vo sebe, teda esli chceš zůstat v jednom kuse."~ */
  IF ~~ THEN REPLY #61433 /* ~"Přestaň mi vyhrožovat Annah. Ty máš jenom jeden život, jasný?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61434 /* ~"Neptal jsem se na tvůj názor Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61435 /* ~"Dobře, dobře... uklidni se. Vaří se v tobě krev, možná ti zachvíli vyteče ušima."~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 282.0 283.0 283.1 283.2
  SAY #61419 /* ~Annah učinila jakési gesto ocasem... bez pochyby hodně sprosté.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 285 // from: 281.2
  SAY #61420 /* ~Annah po žene prudce vyjela; vypadá to že se ji snad pokusí rozkuchat.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 6
END

IF ~~ THEN BEGIN 286 // from:
  SAY #61421 /* ~Annah zaváhala a zabručela. "Natvrdlý palice..." Zasunula dýky, zkřížila ruce a nyní kouká zmijím pohledem z kurtizány na tebe a zpět.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 287 // from:
  SAY #61664 /* ~"Starej se o své, sukubo. Nemám ti co říct."~ [ANA626A] */
  IF ~~ THEN EXTERN ~BGRACE~ 10
END

IF ~~ THEN BEGIN 288 // from:
  SAY #61665 /* ~"Nemám ti co říct, sukubo."~ [ANA625A] */
  IF ~~ THEN EXTERN ~BGRACE~ 12
END

IF ~~ THEN BEGIN 289 // from:
  SAY #61762 /* ~"Jo, by mohlo... ublížit ti, to jo."~ [ANA571B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #61763 /* ~"Až zavřeš hubu, tak přestanu vrtět ocasem."~ [ANA569A] */
  IF ~~ THEN EXTERN ~BMORTE~ 2
END

IF ~~ THEN BEGIN 291 // from:
  SAY #61764 /* ~"Ale jo... do tvý držky a vytrhne ti mozeček."~ [ANA572C] */
  IF ~~ THEN EXTERN ~BMORTE~ 4
END

IF ~~ THEN BEGIN 292 // from:
  SAY #61765 /* ~"Přízvuk? Vo čem to točíš?"~ [ANA614B] */
  IF ~~ THEN EXTERN ~BMORTE~ 6
END

IF ~~ THEN BEGIN 293 // from:
  SAY #61766 /* ~"Jo tak. Esli se POKUSÍŠ sednout si mi do klína, tak to bude skvělej příběh. Ale krátkej, na to si vsaď tu plesnivinu, co ti ještě v tý tvojí skořápce zbejvá."~ [ANA570C] */
  IF ~~ THEN EXTERN ~BMORTE~ 8
END

IF ~~ THEN BEGIN 294 // from:
  SAY #61767 /* ~"Ne, jenom tebe."~ [ANA573A] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 295 // from:
  SAY #61768 /* ~"Dělej si ze mě srandu eště jednou, lebzno, a narvu ti hlavu do tvý vlastní prdele."~ [ANA611A] */
  IF ~~ THEN EXTERN ~BMORTE~ 11
END

IF ~~ THEN BEGIN 296 // from:
  SAY #61769 /* ~"Oh, u Mocností, copak tě to tvý kecání nikdy neunaví, lebzno?"~ [ANA619] */
  IF ~~ THEN EXTERN ~BMORTE~ 13
END

IF ~~ THEN BEGIN 297 // from:
  SAY #61770 /* ~"Jo, a dybys nebyl ty sám sebou celou dobu, tak bys moh bejt docela fajnová lebzna."~ [ANA610A] */
  IF ~~ THEN EXTERN ~BMORTE~ 15
END

IF ~~ THEN BEGIN 298 // from:
  SAY #61771 /* ~"Dej si bacha na držku, lebzno! Neber její jméno nadarmo!"~ [ANA622B] */
  IF ~~ THEN EXTERN ~BMORTE~ 17
END

IF ~~ THEN BEGIN 299 // from:
  SAY #61772 /* ~"Snažíš se, abychom všichni skončili nasekaní na salám?! Nepokoušej takhle osud, lebzno!"~ [ANA622CA] */
  IF ~~ THEN EXTERN ~BMORTE~ 18
END

IF ~~ THEN BEGIN 300 // from:
  SAY #61773 /* ~"Oh, bejt tebou, tak si dávám bacha na tlamu."~ [ANA616B] */
  IF ~~ THEN EXTERN ~BMORTE~ 20
END

IF ~~ THEN BEGIN 301 // from:
  SAY #61774 /* ~"Já bych na tvým místě držela hubu."~ [ANA617A] */
  IF ~~ THEN EXTERN ~BMORTE~ 22
END

IF ~~ THEN BEGIN 302 // from:
  SAY #61775 /* ~"Víš co, lebzno? Jednou se budeš šklebit nabodnutej na kopí... jo, a to už tě nebude nijak trápit, po tom, co s tebou provedu já."~ [ANA607C] */
  IF ~~ THEN EXTERN ~BMORTE~ 23
END

IF ~~ THEN BEGIN 303 // from:
  SAY #61776 /* ~"Dobře ti tak, lebzno. Nás ostatní sereš docela dost."~ [ANA624A] */
  IF ~~ THEN EXTERN ~BMORTE~ 25
END

IF ~~ THEN BEGIN 304 // from:
  SAY #61777 /* ~"Nejednomu chlapovi se stalo, že si kvůlivá svýho jazyka zlomil nos, lebzno."~ [ANA618A] */
  IF ~~ THEN EXTERN ~BMORTE~ 27
END

IF ~~ THEN BEGIN 305 // from:
  SAY #61778 /* ~"*Nikdy* mu neřeknu, co cejtim. A ani ty mu o tom nic nevykecáš. Má na sobě znak zkázy a já ho z jeho cesty nesvedu. Slyšíš mě, lebzno?"~ [ANA621B] */
  IF ~~ THEN EXTERN ~BMORTE~ 29
END

IF ~~ THEN BEGIN 306 // from:
  SAY #61779 /* ~"Tak může moje kůže dejchat, debile."~ [ANA620B] */
  IF ~~ THEN EXTERN ~BMORTE~ 31
END

IF ~~ THEN BEGIN 307 // from:
  SAY #61780 /* ~"Oh, já ti dám, ty idiote! Ale ne to, co bys chtěl!"~ [ANA588A] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #62891 /* ~"Patří mezi ty fiendy, mezi sukuby, tak je to. Nejdřív si tě přeměří a pak ti zblajzne duši a odnese si jí do Nižších sfér."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 213
END

IF ~~ THEN BEGIN 309 // from:
  SAY #63485 /* ~TBD~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #63693 /* ~"Ne! To mám, ybch se mohla poškrábat na zádech, rachotino!"~ [ANA565A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 23
END

IF ~~ THEN BEGIN 311 // from:
  SAY #63694 /* ~::Povzdech::~ [ANA565BC] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #63695 /* ~"Co to je za pitomou otázku, rezavá krabice?!"~ [ANA566C] */
  IF ~~ THEN EXTERN ~BNORDOM~ 25
END

IF ~~ THEN BEGIN 313 // from:
  SAY #63696 /* ~"*COŽE?!*"~ [ANA567E] */
  IF ~~ THEN EXTERN ~DMORTE~ 643
END

IF ~~ THEN BEGIN 314 // from:
  SAY #63859 /* ~"Už ho nech; neznáš ho!"~ [ANA568C] */
  IF ~~ THEN EXTERN ~BVHAILOR~ 3
END

IF ~~ THEN BEGIN 315 // from:
  SAY #64221 /* ~::Mračí se na Morteho::~ */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 316 // from: 187.15 477.15
  SAY #67053 /* ~Jakmile jsi zmínil jméno Ravel, Annah si třikrát odplivla a opsala si před hrudí znamení. "Hssst! Seš *blbej*?! Nevyslovuj *její* méno, esli ti záleží na tvym životě!"~ */
  IF ~~ THEN REPLY #67055 /* ~"Proč?"~ */ GOTO 317
  IF ~~ THEN REPLY #67054 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67056 /* ~"Tak zapomeň, že jsem se ptal. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #67057 /* ~"Je to ta nejhorší z Šedejch dam, to teda je." Hlas Annah přešel do šepotu, jakoby se bála, že by vás mohl slyšet ještě někdo. "Zasraně zlá a má věčí sílu, než někerý Mocnosti. Se povidá, že je celá prorostlá trnitým plevelem - zvlášť její *srdce*. Taky se povidá, že ji NIKDY nemůžeš zabít, páč její tělo je jak ňákej strom - vodsekneš jednu hnátu a stejně jí naroste někde ňáká další."~ */
  IF ~~ THEN REPLY #67058 /* ~"Mluvíš o ní, jakoby byla stále naživu."~ */ GOTO 318
  IF ~~ THEN REPLY #67059 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67060 /* ~"Tak zapomeň, že jsem se ptal. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 317.0
  SAY #67061 /* ~"Ta - možnost furt je. Vona *má* tunel." Hlas se Annah opět snižuje. "Jak můžeš *zabit* něco takovýho jako je vona? To je to, proč ji musela Pani zavřit do bludiště, tak to bylo řečeno."~ */
  IF ~~ THEN REPLY #67062 /* ~"Hmmm. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67063 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 187.16 477.16
  SAY #67064 /* ~"Kousek čarodějky? Né-e, nevim, kde bys moh najít takovou věc." Annah chvilku přemýšlí, její ocas pomalu krouží vzduchem. "Ale je jasný, že za sebou určitě nechala dost svých semen, rozesetejch po celejch sférách, takže by ses moh zeptat někerýho z nich."~ */
  IF ~~ THEN REPLY #67065 /* ~"'Semen?' Co tím myslíš?"~ */ JOURNAL #67068 /* ~Annah mi řekla, že Ravel má 'semena' - dceru nebo dokonce několik dcer, rozseté po Sférách. Doufám, že jednu z nich najdu - možná by mohla vědět, jak se dostat do Ravelina Bludiště. Ale nevím, kde bych se po nich měl podívat.~ */ GOTO 320
  IF ~~ THEN REPLY #67066 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67067 /* ~"Tak zapomeň, že jsem se ptal. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #67069 /* ~"Semena, přibuzný - Stará Ravel měla prej hromadu cér, aspoň tak vypravěči povidaj - anebo možná jeni jednu, záleží na tom, kerýho vožralýho barda se zeptáš - a taky na tom, co předtím chlastal." Annah zase začala šeptat. "Ravel je porodila ňákýmu fiendovi, teda aspoň se to povidá."~ */
  IF ~~ THEN REPLY #67070 /* ~"Myslíš si, že by tady mohla někde být jedna z těch dcer? Mohla by vědět, jak se k Ravel dostat."~ */ GOTO 321
  IF ~~ THEN REPLY #67071 /* ~"Zajímavé. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67072 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #67073 /* ~Annah pokrčila rameny. "Nemám tucha. Ale já bysem rozhodně někerou z nich najit nechtěla. Esli sou akorát z poloviny takový mrchy jako jejich mama..."~ */
  IF ~~ THEN REPLY #67074 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67075 /* ~"No, tak se po jedné z nich podíváme. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 187.10 477.10
  SAY #67076 /* ~"Eh?" Zamračila se. "Vo čem to žvaniš?"~ */
  IF ~  Class(Protagonist,FIGHTER)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67077 /* ~"Chci odložit válečnické řemeno a zkoušet to chvilku nenápadnějším způsobem."~ */ GOTO 325
  IF ~  Class(Protagonist,MAGE)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67078 /* ~"Rád bych na chvíli odložil Umění a zkusil se potrénovat v nenápadnějších způsobech."~ */ GOTO 325
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67079 /* ~"Chci na chvíli nechat válečnictví a vrátit se ke zlodějině. Můžeš mě učit?"~ */ GOTO 323
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67080 /* ~"Chci na chvíli nechat Umění a vrátit se ke zlodějině. Můžeš mě učit?"~ */ GOTO 323
  IF ~  Class(Protagonist,THIEF)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67081 /* ~"Chci se od tebe naučit víc o skrývání a kradení."~ */ GOTO 348
  IF ~~ THEN REPLY #67082 /* ~"Zapomeň na to. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67083 /* ~"To nic, Annah. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.2 322.3
  SAY #67085 /* ~Tváří se skepticky, pak ale zakoulela očima. "Jo, můžu... ale abysem mohla, musíš na chvilku zavřít tlamu a poslouchat mě... a dělat to jak já, jasný?" Prohlédla si tě od hlavy k patě. "Za prvý musíš změnit svůj postoj, žádný takový to 'já sem huhu a poďte po mně, ať vám dám to tlamy', jak se tlemíš skoro furt..."~ */
  IF ~~ THEN REPLY #67086 /* ~"Dobrá..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0 344.0
  SAY #67087 /* ~Annah tě rychle instruovala co a jak. Po chvilce ustoupila o krok zpátky a přikývla. Vypadá to, že jsi na ni udělal dojem. "Jó, docela se chytáš. Učíš se rychle, to teda jo..."~ */
  IF ~~ THEN REPLY #67088 /* ~"Mám pro tebe pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67089 /* ~"Děkuju. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 322.0 322.1
  SAY #67090 /* ~Prohlédla si tě od hlavy k patě - a pak se pochybovačně zatvářila. "Mysliš to *vážně*?"~ */
  IF ~~ THEN REPLY #67091 /* ~"Ano, chci se naučit zlodějskému řemeslu. Budeš mě učit?"~ */ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #67092 /* ~Chvíli si tě prohlíží, pak zavrtěla hlavou. "Néé, seš moc *pomalej*, to seš. Seš obratnej jako kus šutru." Zamračila se. "Musíš bejt rychlejší a pohotovější, esli se mně chceš vůbec jenom dotknout. Tak tě nenaučim *nic.*"~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #67093 /* ~Skoč po ní  a popadni ji za ruku.~ */ GOTO 327
  IF ~  CheckStatGT(Protagonist,13,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67094 /* ~Skoč po ní  a popadni ji za ruku.~ */ GOTO 328
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67095 /* ~Skoč po ní  a popadni ji za ruku.~ */ GOTO 330
  IF ~~ THEN REPLY #67096 /* ~"Tak dobře. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67097 /* ~"No tak nic. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #67098 /* ~"Hssst!" Jak ses po ní vrhl, Annah se zasyčením bleskově uhnula. "Jó, to sem viděla dřív, než ses vůbec pohnul, to teda jo. Seš pomalej a musiš bejt mnohem rychlejší, esli mě chceš chytit. Ale přece jenom, něco málo v sobě máš..."~ */
  IF ~~ THEN REPLY #67099 /* ~"Takže mě budeš učit?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 328 // from: 326.1
  SAY #67100 /* ~"Hssst!" Vrhl ses po ní, ale Annah uhnula - ne dost rychle, tvá ruka se dotkla okraje jejího boxeru. Rozřízl sis kůži, teče ti krev.~ */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #67101 /* ~Annah se podívala na krev na tvých rukou a sleduje, jak se rána pomalu hojí. Po chvilce si odplivla. "Dobře ti tak, debile! Poznala sem, že se hejbeš, dřív než tě vůbec napadlo, že se hejbneš. Ale přece jenom, ňákou rychlost v sobě máš..."~ */
  IF ~~ THEN REPLY #67737 /* ~"Takže mě budeš učit?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 330 // from: 326.2
  SAY #67102 /* ~Tvá ruka sebou škubla, jako rána bičem, a než stačila Annah zareagovat, pevně jsi ji chytil za zápěstí. Okamžitě zasyčela a pokouší se ti vytrhnout. "Pusť mě, debile! Pusť mě nebo ti tu pařátu urvu, parchante! Pusť!"~ */
  IF ~~ THEN REPLY #67103 /* ~Nechej ji jít.~ */ GOTO 331
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #67104 /* ~Annah uskočila dozadu, tváře má zrudlé, těžce oddechuje. "Nešahej na mně!" Dech se jí zklidnil, zamračila se na tebe. "Seš rychlej, to jo, to ti přiznám. Eště nikomu se nepodařilo mě chytit, tak jak tobě. Seš jak had. Musíš v sobě mít kapku hadí krve."~ */
  IF ~~ THEN REPLY #67105 /* ~"Takže mě budeš učit?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 332 // from: 327.0 329.0 331.0
  SAY #67106 /* ~Tvářila se skepticky, pak ale zakoulela očima. "Jo, mužu... ale abysem mohla, musíš na chvilku zavřit tlamu a poslouchat mě... a dělat to jak já, jasný?"~ */
  IF ~~ THEN REPLY #67107 /* ~"Dobrá tedy..."~ */ GOTO 333
END

IF ~~ THEN BEGIN 333 // from: 332.0
  SAY #67108 /* ~"Je tady pár věcí, co musíš pochopit, aby tě nemoh jen tak někdo popadnout... musiš se naučit, jak zůstat schovanej, dyž nechceš, aby tě nikdo jinej neviděl."~ */
  IF ~~ THEN REPLY #67109 /* ~"Dobrá."~ */ GOTO 334
  IF ~~ THEN REPLY #67110 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 334 // from: 333.0
  SAY #67111 /* ~"Musíš vědět, kde seš a jak rychle se dokážeš stát KUSEM toho kde seš." Mává ocasem, odsekává s ním každé slovo. "Dyž se to naučíš, tak budeš jak stín, to teda jo."

POZNÁMKA: Jestli se rozhodneš skrýt se v tmavých oblastech, dostaneš bonus ke své šanci na ukrytí ve stínu.~ */
  IF ~~ THEN REPLY #67112 /* ~"Takže jak to udělám?~ */ JOURNAL #67734 /* ~Součástí mé zlodějské intruktáže bylo také skrývání ve stínech - v podstatě se to dá udělat kdekoli, ale nefunguje to, když na někoho útočím, když se pokouším vypáčit nějaký zámek... nebo když někomu vybírám kapsy.~ */ GOTO 335
  IF ~~ THEN REPLY #67113 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY #67114 /* ~"Důležitější je vědět, jak to NEUDĚLÁŠ - nemůžeš se schovat, esli tě někdo sleduje, dyž na někoho útočíš a ani dyš se pokoušíš ukecat zamčenej zámek, aby se votevřel. Takže si dávej majzla, KDY se chceš schovávavat, jasný?

POZNÁMKA: Až se budeš chtít ukrýt ve stínu, zvol si ikonu Skrývání z menu Zvláštní schopnosti. Potom máš šanci, že zůstaneš skrytý. Jakákoli akce proti nějaké osobě nebo předmětu Ukrytí přeruší.~ */
  IF ~~ THEN REPLY #67115 /* ~"Tak jaký má potom smysl skrývat se ve stínech?"~ */ JOURNAL #67735 /* ~Annah mi řekla výhodu ukrytí ve stínu - když vyskočím z úkrytu a na někoho se vrhnu, můj útok ho bude bolet MNOHEM více. Myslím, že se tomu říká 'podříznutí'. Budu si to muset někdy vyzkoušet.~ */ GOTO 336
  IF ~~ THEN REPLY #67116 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #67117 /* ~"PROTOŽE..." Annah zkroutila ocas. "Když vyskočíš ze stinu a dáš někomu řáckou ranu kudlou do zad, BOLÍ to mnohem víc. To teda jo. To je jedna z výhod, dyž tě nikdo nevidí."

POZNÁMKA: Když na někoho udeříš ze stínu, poškození, které způsobíš, bude zdvojnásobeno, ztrojnásobeno nebo bude dokonce čtyřikrát vyšší.~ */
  IF ~~ THEN REPLY #67118 /* ~"Oh."~ */ GOTO 337
  IF ~~ THEN REPLY #67119 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #67120 /* ~"Další věc, co se potřebuješ naučit je, jak někomu vybrat kapsy. Vypadá to jak ňáká zbytečnost, ale je to stejný, jak se schováváním ve stínech. Ale musíš si cíl vybirat vopatrně, jasný? Vybírat drobný lidem v Úlu je pohoda, ale silnější a chytřejší lidi se tak lehce obrat nedaj. A nasranejm volům ani něco nezkoušej něco čórnót - riskuješ, že si tě všimnou a pak to bude bolet."~ */
  IF ~~ THEN REPLY #67121 /* ~"To zní moc riskantně, aby to mělo nějaký užitek."~ */ GOTO 338
  IF ~~ THEN REPLY #67122 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 338 // from: 337.0
  SAY #67123 /* ~"Nó..." Annah se ušklíbla. "Peněženky lidí z města ti můžou vypomoct z finanční krize, to teda jó. A někdy maj v kapsách i něco víc než měděný, a to už pak je vo něčem, to teda jo." Usmála se. "A vobchodníci - dyž seš dost rychlej, můžeš jim z kšeftu pobrat spoustu věcí."

POZNÁMKA: K vybíraní kapes si vyber ikonku zlodějských dovedností z menu Zvláštní Schopnosti. Pak ukaž kurzorem na cíl. Kurzor se změní na kapsářskou ikonku. Kradení z obchodu se dělá kliknutím tlačítka na stejné obrazovce, kde se nakupuje.~ */
  IF ~~ THEN REPLY #67124 /* ~"Co když mají obchodníci své zboží zamčené?"~ */ GOTO 339
  IF ~~ THEN REPLY #67125 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY #67126 /* ~"No, a teď se musíš naučit, jak otevřít zámek, kerej někdo zamknul, jo? Často je to dost těžký, ale všecko, co je zamčený, se vyplatí votevřít."" Zamračila se. "No, aspoň většinou."

POZNÁMKA: K vypáčení zámku si musíš zvolit ikonku zlodějských dovedností z menu Zvláštní Schopnosti a pak ukázat kurzorem na zamčené dveře nebo bednu. Kurzor se změní na ikonku páčení.~ */
  IF ~~ THEN REPLY #67127 /* ~"Dobrá."~ */ GOTO 340
  IF ~~ THEN REPLY #67128 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 340 // from: 339.0
  SAY #67129 /* ~"A to nás přivádi k další věci, to teda jo. Pokaď někdo zamkl něco, co nechce, abys měl, tak můžeš vsadit boty, že tam možná nechal *eště* něco, co najdeš kromě zámku - věčinou takový ňáký vyskakovací nože, pytlíček smrtících mravenců, sprej s kyselinou baatezu..." Annah odpočítává jednotlivé pasti na prstech. "A nebo Ňáký hnusný kouzlo. Nebo dvě. Anebo třebas tři."~ */
  IF ~~ THEN REPLY #67130 /* ~"Takže jak poznám tyhle věci?"~ */ GOTO 341
  IF ~~ THEN REPLY #67131 /* ~"Myslím že základům rozumím, Annah." ~ */ GOTO 344
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #67132 /* ~"Je to jako s těma stínama - musíš dávat majzla na svý okoli, jasný? Když vlezeš do ňákýho placu, pořádně se rozhlidneš - nejni tam něco divnýho? Kus podlahy s divným dyzajnem? Otvor ve zdi? Bedna, co se šklebí důležitě a sedí na zadku přímo uprostřed místnosti?" Annah švihla ocasem. "Takže dyž se budeš koukat po takovejch věcech, hledáš pasti, to teda děláš."

POZNÁMKA: Když budeš chtít hledat pasti, zapni ikonu Najdi/Odstraň pasti z menu Zvláštní schopnost. Když je zapnutá, máš naději, že najdeš místo s pastí, které ti označí kurzor.~ */
  IF ~~ THEN REPLY #67133 /* ~"Takže jak se jim vyhnu?"~ */ GOTO 342
  IF ~~ THEN REPLY #67134 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 342 // from: 341.0
  SAY #67135 /* ~"Vyhneš? No, musiš tu past *rozlousknout*, esli se chceš dostat na místo, kerý hlidá. Máš stejnou šanci, že se ti podaří zlikvidovat, jako že ji najdeš. Ale tys už ji našel..." Annah pokrčila rameny. "Bys měl mít dobrou šanci. Věčinou."

POZNÁMKA: K odstranění pasti si zvol z menu Zvláštní Schopnosti Zlodějské dovednosti, pak ukaž kurzorem na oblast s pasti. Klikni a máš určitou šanci, že se ti podaří past zneškodnit. Pokud selžeš, je možné, že se past spustí.~ */
  IF ~~ THEN REPLY #67136 /* ~"Ještě něco?"~ */ GOTO 343
  IF ~~ THEN REPLY #67137 /* ~"Myslím že základům rozumím, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #67138 /* ~"Nic víc, ti řict nemůžu - je to vo zkouškách a omylech, to je. Přeju ti štěstí." Ušklíbla se.~ */
  IF ~~ THEN REPLY #67139 /* ~"Dobrá." ~ */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 333.1 334.1 335.1 336.1 337.1 338.1 339.1 340.1 341.1 342.1 343.0
  SAY #67140 /* ~"Dobrá tedy..." Prohlédla si tě od hlavy k patě. "Takže k tý části kšeftu, kam patří krev a spousta pocení." Zamračila se na tebe. "Za prvý se musíš naučit, jak změnit ten svůj postoj - žádný takový to huhu, joho, to sem já tak poďte..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67141 /* ~"Dobrá..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 324
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #67142 /* ~"Dobrá..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 345
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67143 /* ~"Dobrá..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67144 /* ~"Dobrá..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
END

IF ~~ THEN BEGIN 345 // from: 344.1
  SAY #67145 /* ~Annah ti ukázala kroky, otestovala tvé reflexy a rovnováhu - a jak tě testuje, cítíš, jak se v tobě nějaká část, která dosud spala, probouzí, tvé tělo rychle napodobuje všechny pohyby. Annah je tvými schopnostmi překvapená, ale rychle zvyšuje nároky a tlačí na tebe, takže za chvíli máš co dělat, abys s ní udržel krok. Nakonec přikývla, udělal jsi na ni dojem. "Jo, máš na to. Rychle se učíš, to jo."~ */
  IF ~~ THEN REPLY #67146 /* ~"Mám pro tebe pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67147 /* ~"Děkuju. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 344.2 344.3
  SAY #67148 /* ~Annah ti ukázala kroky, otestovala tvé reflexy a rovnováhu - a jak tě testuje, jakoby v tvé mysli popraskaly kamenné zdi a padají: s každým testem se cítíš, jakoby se otevřely nové dveře - vnímáš slabé obrazy temných uliček, střešních okýnek, odřezávání měšců na přeplněných náměstích, páčení zámků na vratech - vzpomínky tebou protékají jako řeka, a rychle zjišťuješ, že dokážeš splnit každý test, kterému tě Annah podrobuje - a pak začínáš zkoušet ty ji.~ */
  IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #67149 /* ~Annah se rychle... a dychtivě... zapojila do soutěže, snaží se tě zmást jedním způsobem, pak druhým, ale ty vždy odpovíš na trik protitahem a hned zaútočíš vlastní fintou. Na konec Annah ustoupila a prohlíží si tě. "Seš si *jistej* žes to už nikdy předtím nedělal? Seš - seš rychlej, to seš. Mám pocit, že sem se naučila vod tebe víc, než ses naučil ty vode mně."~ */
  IF ~~ THEN REPLY #67305 /* ~"Nemyslím si, že bych někdy dělal něco z toho, cos mě učil. V každém případě mám pro tebe pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67306 /* ~"Díky za trénink. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 322.4
  SAY #67308 /* ~"Jo... to bych asi mohla. Co máš na mysli?"~ */
  IF ~  Global("Annah_Stealth","GLOBAL",0)
~ THEN REPLY #67309 /* ~"Chci se od tebe naučit více o skrývání."~ */ GOTO 349
  IF ~  Global("Annah_Open_Locks","GLOBAL",0)
~ THEN REPLY #67310 /* ~"Cokoli, co mě můžeš naučit o páčení zámku by se mi hodilo."~ */ GOTO 351
  IF ~  Global("Annah_Traps","GLOBAL",0)
~ THEN REPLY #67311 /* ~"Můžeš mě naučit něco o likvidaci pastí?"~ */ GOTO 353
  IF ~  Global("Annah_Pick_Pockets","GLOBAL",0)
~ THEN REPLY #67312 /* ~"Nemáš nějaké rady na téma kapsářství?"~ */ GOTO 355
  IF ~~ THEN REPLY #67313 /* ~"Vlastně mám takový pocit, že bych tě mohl něco naučit já."~ */ GOTO 363
  IF ~~ THEN REPLY #67314 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67315 /* ~"Zapomeň na to. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #67316 /* ~Přikývla. "No jo. Finta, jak zůstat neviděnej, je v tom, že musíš vědět, kde seš a jak rychle se dokážeš stát SOUČÁSTÍ toho prostředí. Je pár triků, co sem se naučila - jeden z nich je schovat se na místě, kde by nikoho nenapadlo kouknout se - třeba na stropě v místnosti - nebo dokonce *změnit* svůj úkryt, když tě budou hledat..." Poťouchle se usmála. "Jednou sem se schovávala před těma tupcema... 'právem'... a co sem udělala, bylo..."~ */
  IF ~~ THEN REPLY #67317 /* ~"Ano...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Stealth","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,STEALTH,RAISE,3)
~ GOTO 350
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #67318 /* ~"...no, a tak tam ten tupec ležel s ksichtem v příkopě, s holým zadkem a ti jeho tři přitelíčci byli zamknutí v prababčiným pokoji a babka vyla jako vlk..." Annah se nadechla. "A je to tak. Dyž to dokážeš využít, fakt ti to může pomoct."~ */
  IF ~~ THEN REPLY #67319 /* ~"Takže: ustupovat na místa, která znáš. Nejlepší skrývání je na místech, kde jsou věci, které od tebe odpoutají pozornost. Když tam nejsou, tak musím něco udělat sám."~ */ GOTO 362
END

IF ~~ THEN BEGIN 351 // from: 348.1
  SAY #67320 /* ~"Páčení - no, můžu ti povědět, co NEDĚLAT. Taky si sebou dycinky táhni kapku ňákyho mazadla, olej nebo něco takovýho, abys moh namáznout páčidlo, dyby byl zámek kříslej. A další věc, co sem se naučila - vod toho starýcho hrbáče Pharoda - že věčina zámků v celým Sigilu je v podstatě dělaná podle jednoho vzoru vodněkud z doby kamenný, takže se věčinou dají vyrvat takhle ňák..."~ */
  IF ~~ THEN REPLY #67321 /* ~"Pokračuj..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Open_Locks","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,3)
~ GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY #67322 /* ~"...takže bylo nad ránem, slunko už pomálu vystrkovalo držku ven a já věděla, že mě budou hledat na půdě. Ale páč zámek na půdě byl Sigiláckej, tak sem věděla, jak ho zablokovat, aby ho nemohli voddělat, takže sem měla dost času, abych vypadla po střeše i se stříbrem, to teda jo."~ */
  IF ~~ THEN REPLY #67323 /* ~"Takže většina zámků funguje na takovém principu... to by mi mělo pomoct, až budu zase nějaký takový zámek páčit."~ */ GOTO 362
END

IF ~~ THEN BEGIN 353 // from: 348.2
  SAY #67324 /* ~"No, vo tomdle se fakt dá povídat dost - nejdůležitější věc je, že dyž si někdo NASTAVÍ past, tak vo ní pak VÍ a dává si na ni bacha, takže si musíš dávat majzla na takový znameni, dyž deš někomu po rodinnejch klenotech. Jednou sem lezla do jedný vily v Úřednický Čtvrti a ..."~ */
  IF ~~ THEN REPLY #67325 /* ~"Ano..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Traps","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,TRAPS,RAISE,3)
~ GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #67326 /* ~"...dyž sem si všimla, že na podlaze je ňákej novej koberec, tak mě to trklo. Tož sem ho nadzvedla dýkama a co nevidím. Na šutrech byly stopy po šplouchancích kyseliny. Tak sem věděla, že mám dávat pozor na rozprašovač, když sem otvírala skříňku a brala z ní prašule."~ */
  IF ~~ THEN REPLY #67327 /* ~"Takže když se budu dívat po pastích, nemám hledat jenom stopy po jejich nastavení, ale také po stopách, které vzniknou, když se té pasti bude někdo vyhýbat."~ */ GOTO 362
END

IF ~~ THEN BEGIN 355 // from: 348.3
  SAY #67328 /* ~"No, vybrání kapes nejni tak těžký, jak by ti mohlo připadat." Annah pokrčila rameny. "Věčinou de vo to, aby to bylo rychlý, jemný a aby necejtili, jak se jim kapsy najednou vodlehčily. Jestli s tim máš problémy, může to bejt způsobem, jakým to děláš." Kývla na tebe. "Ukaž mi to."~ */
  IF ~~ THEN REPLY #67329 /* ~"No, nechci jen tak někomu vybírat kapsy, aby ses mohla podívat. Možná někdy jindy."~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #67330 /* ~"Né, zkus štípnout ňáký drobný mě. Povím ti, co děláš blbě."~ */
  IF ~~ THEN REPLY #67331 /* ~"Dobrá... uh, kde vlastně máš peníze?"~ */ GOTO 357
END

IF ~~ THEN BEGIN 357 // from: 356.0
  SAY #67332 /* ~"To je to, co musíš zjistit *ty*, esli chceš bejt vopravdickej zloděj."~ */
  IF ~~ THEN REPLY #67333 /* ~"Dobrá... dobrá, tak já ti zkusím... eh, vybrat... kapsy."~ */ DO ~SetGlobal("Annah_Pick_Pockets","GLOBAL",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 358
END

IF ~~ THEN BEGIN 358 // from: 357.0
  SAY #67334 /* ~Jakmile ses pohnul, Annah zvedla ruku. "Fajn, dost. Už si to stačil podělat, to teda jo."~ */
  IF ~~ THEN REPLY #67335 /* ~"Co?"~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0
  SAY #67336 /* ~"Musíš si dávat majzla na přístup, to musíš. Nemůžeš chodit jak thokola a prorvat se někam - zvlášť když vypadáš, jak vypadáš." Annah si náhle založila ruce v bok a znuděně se zadívala stranou. "Musíš dělat, jako by pro tebe kořen nic neznamenal. Eště míň než nic. Vůbec tě nesere, co má nebo nemá nebo kdo je."~ */
  IF ~~ THEN REPLY #67337 /* ~"Dobrá - takže se budu chovat, jako by mi na něm nezáleželo. Co dál?"~ */ GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #67338 /* ~"Pak si musíš přesně vybrat správnej čas - já to věčinou dělám, když jdu kolem někoho. Ty bys to měl dělat hned *potom*, co kolem někoho projdeš, protože v tvým případě bude mít nejspíš strach votočit se a kouknout, cos udělal. A další věc, co bys měl udělat..."~ */
  IF ~~ THEN REPLY #67339 /* ~"Ano...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,1000)
~ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.0
  SAY #67340 /* ~"...trochu se pokrčit, netvářit se tak výhrůžně a možná kořena překvapíš."~ */
  IF ~~ THEN REPLY #67341 /* ~"Dobrá. Takže se mám pokoušet tvářit klidně, co nejmíň nebezpečně, jako by pro mě cíl nic neznamenal a pak udeřit, hned, jakmile se dostanu z jeho pohledu?"~ */ GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 350.0 352.0 354.0 361.0
  SAY #67342 /* ~Přikývla. "Jo, v tom je to tajemství."~ */
  IF ~~ THEN REPLY #67343 /* ~"Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67344 /* ~"Dobrá. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 348.4
  SAY #67345 /* ~"Co? Mysliš to *vážně?*" Vytřeštila na tebe oči. "Ty? Učit *mě*?"~ */
  IF ~  Global("PC_Annah_Stealth","GLOBAL",0)
CheckStatGT(Protagonist,49,STEALTH)
~ THEN REPLY #67346 /* ~"Myslím, že bych ti mohl dát pár tipů, jak se pohybovat nenápadněji."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",1)
~ GOTO 364
  IF ~  Global("PC_Annah_Open_Locks","GLOBAL",0)
CheckStatGT(Protagonist,49,LOCKPICKING)
~ THEN REPLY #67347 /* ~"Naučil jsem se pár triků při páčení zámků, o který bych se s tebou rád podělil."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",2)
~ GOTO 364
  IF ~  Global("PC_Annah_Pick_Pockets","GLOBAL",0)
CheckStatGT(Protagonist,49,PICKPOCKET)
~ THEN REPLY #67348 /* ~"Ano, je pár věcí o vybírání kapes, které bych tě mohl naučit."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",3)
~ GOTO 364
  IF ~  Global("PC_Annah_Traps","GLOBAL",0)
CheckStatGT(Protagonist,49,TRAPS)
~ THEN REPLY #67349 /* ~"Ano, naučil jsem se pár věcí o hledání pastí, které bych ti rád řekl."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",4)
~ GOTO 364
  IF ~~ THEN REPLY #67350 /* ~"To nic; teď zrovna mě nenapadá nic, co bych tě mohl naučit. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67351 /* ~"Zapomeň na to. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 364 // from: 363.0 363.1 363.2 363.3
  SAY #67352 /* ~"Jo?" Zaculila se. "Jako co?"~ */
  IF ~  Global("Annah_Training","GLOBAL",1)
~ THEN REPLY #67353 /* ~"No, myslím že tě ten tvůj ocas prozrazuje víc, než si uvědomuješ. Všiml jsem si, že s ním kroutíš, když tě někdo sleduje, nebo když jsi nervózní. Je to dost na to, aby tě někdo, kdo se dívá do stínů, zpozoroval. A další věc..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Stealth ","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",STEALTH,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",2)
~ THEN REPLY #67354 /* ~"Myslím že nepoužíváš na páčení ta správná páčidla. Měla bys používat jedno z Y-koncem a další s..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Open_Locks","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",LOCKPICKING,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",3)
~ THEN REPLY #67355 /* ~"Když budeš někomu zkoušet vybrat kapsy, měla bys použít své tělo. Nemělo by pro tebe být těžké odvést kořenovu pozornost. A - "~ */ DO ~SetGlobal("PC_Annah_Pick_Pockets","GLOBAL",1)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 365
  IF ~  Global("Annah_Training","GLOBAL",4)
~ THEN REPLY #67356 /* ~"Nejenom že se *díváš* po pastech, ale jsou tady další znaky, ze kterých to můžeš poznat. Od síry ve vzduchu přes změny teploty až po - "~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Traps","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",TRAPS,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
END

IF ~~ THEN BEGIN 365 // from: 364.2
  SAY #67357 /* ~"Eh?" Annah zamrkala. "Říkáš mi, že bych měla hrát děvku?"~ */
  IF ~~ THEN REPLY #67358 /* ~"No tak  proč ksakru nosíš tu věc? Myslel jsem, že o to ti jde."~ */ GOTO 366
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #67359 /* ~Annah sklopila pohled, pak se ti zadívala do očí. "Je mi zkrátka teplo, myslim, že je to tou moji krvi. Díky tý vestě může moje kůže dejchat."~ */
  IF ~~ THEN REPLY #67360 /* ~"No, když přidáš do předu pár rozparků, kořeny nebude zajímat, jestli jim vybíráš kapsy nebo ne. A teď sleduj moje ruce - když se chystáš odříznout měšec, musíš-"~ */ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY #67361 /* ~Když jsi se natáhl, abys Annah ukázal, jak odřezávat měšce, celá ztuhla.~ */
  IF ~~ THEN REPLY #67362 /* ~"Co je to *tentokrát*?"~ */ GOTO 368
END

IF ~~ THEN BEGIN 368 // from: 367.0
  SAY #67363 /* ~"Nemůžu si pomoct - je to tvoje vina!" Annah zavřela oči, pevně svírá víčka. "Neměls nic říkat vo tý věstě, teď na to furt musím myslet, to jo."~ */
  IF ~~ THEN REPLY #67364 /* ~"Podívej se mi do očí - a uklidni se."~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #67365 /* ~Annah se ti zadívala do očí, vidíš, že je ještě stále ztuhlá - a že si hryže ret.~ */
  IF ~~ THEN REPLY #67366 /* ~"Hele, ukážu ti to rychle, ať už to máme za sebou."~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #67367 /* ~Naklonil ses dopředu a Annah se na tebe náhle vrhla, objala tě. Chvíli se tě jenom drží, pak tě stiskla, očichává tvůj krk, tvář... "Já... líbí se mi jak voníš, to jo." Otřela se tváří o tvou - a ty s úžasem zjišťuješ, jak jemná je její kůže. "Kůži máš ale hrubou, to jo."~ */
  IF ~~ THEN REPLY #67368 /* ~Zkontroluj si měšec.~ */ GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #67369 /* ~Sáhl jsi dolů, popadl ocas Annah a pomalu ho vytáhl ze svého batohu. Annah s úšklebkem ustoupila. "Takhles to myslel, he? Takhle obírat kořeny?" Ve tváři je trochu rudá a srdce jí bije mnohem rychleji než obvykle. "Hračka, to teda jo."~ */
  IF ~~ THEN REPLY #67370 /* ~"Ano... Myslím, žes to dobře pochopila. Hele, mám pár dalších otázek..."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ GOTO 477
  IF ~~ THEN REPLY #67371 /* ~"Tak tak. Pojďme dál."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from: 364.0 364.1 364.3
  SAY #67372 /* ~Na konec Annah tiše přikývla. "Jo, todle mě nenapadlo, to ne." Zamračila se. "Ale nakonec bych na to přišla sama, takže si nemysli, že seš ňákej velkej učitel nebo něco, jasný?"~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN REPLY #67373 /* ~"Jenom se pokouším pomoct."~ */ GOTO 373
  IF ~~ THEN REPLY #67374 /* ~"No, tak to by bylo, alespoň co se týče vděčnosti. Mám pro tebe pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67375 /* ~"Nemáš zač děkovat. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 373 // from: 372.0
  SAY #67376 /* ~"Spíš mi připadá, že se ze mě snažíš udělat blbce, to teda jo."~ */
  IF ~~ THEN REPLY #67377 /* ~"O čem to ksakru mluvíš?"~ */ GOTO 374
  IF ~~ THEN REPLY #67378 /* ~"No, tak to by bylo, alespoň co se týče vděčnosti. Mám pro tebe pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67379 /* ~"Nemáš zač děkovat. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 374 // from: 373.0
  SAY #67380 /* ~"Přideš, napereš se k Pharodovi, kerej se ti úplně klani a leze ti do zadku a pak NAKÁŽE mě, abych šla s tebou, to NIKDY nedělal. A ty navic mlžiš, jak toho umiš víc než já... kdo ti na to dává *právo*? Kdo si ksakru myslíš, že si?"~ */
  IF ~~ THEN REPLY #67381 /* ~"JENOM se ti pokouším pomoct, Annah."~ */ GOTO 375
  IF ~~ THEN REPLY #67382 /* ~"No, tak to by bylo, alespoň co se týče vděčnosti. Mám pro tebe pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67383 /* ~"Nemáš zač děkovat. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #67384 /* ~"Jo tak? Seš si *jistej* že pokaždý, co někomu štípnu drobný z měšce nebo vypáčim zámek, nestojiš za mnou a nevrtiš kebulí a nemumláš si 'nevohrabaná blbá holka, ani neví, jak to dělat'. Cítiš se díky tomu lip?"~ */
  IF ~~ THEN REPLY #67385 /* ~"Annah, jenom jsem ti ukázal, jak to dělat *lépe* - nezkouším na tebe nic. *Nemyslím* si, že jsi neohrabaná a stejně tak si *nemyslím* že jsi hloupá."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse","GLOBAL",1)
~ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #67386 /* ~Annah se zamračila, švihá ocasem sem a tam. "Jo, no - no rači si dávej majzla."~ */
  IF ~~ THEN REPLY #67387 /* ~"Dobrá. Mám ještě pár otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67388 /* ~"Dobrá tedy. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 377 // from: 187.0 477.0
  SAY #67389 /* ~"Flek, kde sem našla tvou zdechlinu je za Malovanýma dveřma v Úlu, v Červený oblasti. Dveře na severní ulici, severovýchodně od Doutnajícího nebožtíka. Za dveřma je ulička, kde sem tě našla. Je to divný místo, to je. Jen málo lidi tam chodí."~ */
  IF ~~ THEN REPLY #67390 /* ~"Divné místo? Jakto?"~ */ GOTO 380
  IF ~~ THEN REPLY #67391 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67392 /* ~"Dobrá tedy. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 378 // from: 187.1 477.1
  SAY #67393 /* ~"Je to taková divná ulička za barákem Hladovejch psu - tam musíme jít, to jo. Na konci doupěte sou dveře, kterýma můžeme prolizt."~ */
  IF ~~ THEN REPLY #67394 /* ~"Divná ulička? Co tím myslíš?"~ */ GOTO 380
  IF ~~ THEN REPLY #67395 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67396 /* ~"Dobrá tedy. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 379 // from: 187.2 477.2
  SAY #67397 /* ~"Ten flek je na jihovýchod po divný uličce za takovou starou bránou. Pak je to pár schodů dólu a přesně tam je ten flek, co sem tě našla."~ */
  IF ~~ THEN REPLY #67398 /* ~"Divná ulička? Co tím myslíš?"~ */ GOTO 380
  IF ~~ THEN REPLY #67399 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67400 /* ~"Dobrá tedy. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 380 // from: 377.0 378.0 379.0
  SAY #67401 /* ~"Někerý sráči bez odvahy vo ni tvrdí, že v ni *straši*, to teda jo." Annah si odplivla a před srdcem si opsala znamení. "Sou to kecy. Někdy tam vitr divně fouká a dělá to pak takový blbý zvuky, cosi jako vzdycháni, ale to neznamená, že by tam byli nějaký duchové nebo přizraky nebo tak něco."~ */
  IF ~~ THEN REPLY #67402 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67403 /* ~"Dobrá tedy. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 187.3 477.3
  SAY #67404 /* ~"Jo, co?"~ */
  IF ~~ THEN REPLY #67405 /* ~"No, co jsi vlastně dělala v té Těhotné Uličce? Hledala mrtvoly. Víš, tím myslím, že ses musela proplížit Doupětem, pak projít přes dabuse, jenom aby ses tam dostala - a na tom místě není zrovna moc lidí, tak proč hledat těla tam?"~ */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #67406 /* ~Annah pokrčila rameny. "Zbytek Úlu je vobranej do čista, až na kost. Musiš hledat nový fleky, dyž chceš ňáký zdechliny."~ */
  IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #67407 /* ~Když Annah promluvila, projel tebou podivný pocit. Máš jistotu, že ti lže.~ */
  IF ~~ THEN REPLY #67408 /* ~"Víš to *jistě*, Annah?"~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #67409 /* ~V tvém tónu muselo něco zaznít, protože to na chvíli zastavilo pohyby ocasu Annah. Až za chvilku se znovu pohnul, ale teď mnohem pomaleji, opatrněji, než předtím. "Jo... myslim." Zamračila se, je si nějaká nejistá. "Ale *věčinou* tam pro zdechláky nechodím, to ne. Dyž na tim přemejšlim, tak sem tam vlastně nikdá nebyla. Tak ňák sem na to narazila."~ */
  IF ~~ THEN REPLY #67410 /* ~"Tak proč jsi tam šla?"~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #67411 /* ~"Já... já sakra nevim! Sem tam zkrátka šla a to je tvý štěstí, asi bys tam eště ležel!"~ */
  IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #67412 /* ~Znovu tebou projel ten podivný pocit a ty sis uvědomil, že Annah lže. Ale co je opravdu podivné, ona *neví*, že lže.~ */
  IF ~~ THEN REPLY #67413 /* ~"Annah, něco tě nutilo, abys tam šla? Něco tě tam táhlo? Tak jsi mě našla?"~ */ DO ~AddexperienceParty(2500)
SetGlobal("Annah_Alley_Geas","GLOBAL",1)
~ JOURNAL #67414 /* ~Myslím, že Annah k mému tělu něco *přitahovalo*, tak ho našla. Řekla mi, že moje mrtvola na ni působila jako magnet, a že ji zkrátka musela najít.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #67415 /* ~Přikývla... pomalu. "Jo, možná." Pokrčila rameny. "Nebyla to zrovna ňáká předtucha... ale sem si nemohla *pomoct*. *Chtěla* sem vidět, co tam je - a byls tam ty, tuhej jako šutr." Odmlčela se. "Byls jako magnet, tos byl. Nevim, co mě k tobě táhlo."~ */
  IF ~~ THEN REPLY #67416 /* ~"Hmmm. Zajímavé. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67417 /* ~"Jen jsem to chtěl vědět. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 388 // from: 187.4 477.4
  SAY #67418 /* ~Přikývla. "Jo, to jo. Sem nezapomněla."~ */
  IF ~  GlobalGT("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67419 /* ~"Když jsem se tě ptal na Pharoda, řeklas mi, že je na jihozápad od Márnice - ale on tam *nebyl."~ */ GOTO 389
  IF ~  Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67420 /* ~"Co jsi dělala u Márnice?"~ */ GOTO 390
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #67421 /* ~"Jo, to jo. A ty bys udělal to samý, dyby za tebou přišla ňáká zjizvená skorozdechlina a ptala se tě, kde najde tvýho tatíka." Pokrčila rameny. "Našels ho stejně, tak už vo tom nechci nic slyšet, jasný?"~ */
  IF ~~ THEN REPLY #67422 /* ~"Co jsi dělala u Márnice?"~ */ GOTO 390
  IF ~~ THEN REPLY #67423 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67424 /* ~"No, kdybys mi rovnou řekla, kde je, bylo by to pro nás oba mnohem jednodušší. A teď pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 390 // from: 388.1 389.0
  SAY #67425 /* ~"Je to mý teritorium - koukala sem po zdechlácich, no." Podívala se na tebe a zašklebila se. "A našla sem jednoho chodicího, to jo."~ */
  IF ~~ THEN REPLY #67426 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67427 /* ~"Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 391 // from: 187.5 477.5
  SAY #67428 /* ~Annah se na tebe zadívala, její ocas se na chvíli zastavil. Pak se znovu rozhýbal, ale pomaleji, než dříve. "Jo, *možná* sem něco našla. Ale *kdybych* něco našla, bylo by to po právu mý - to jo - a zbytek je ve Pharodově majetku."~ */
  IF ~~ THEN REPLY #67429 /* ~"Annah, nemám čas na hry - *co* jsi u mého těla našla?"~ */ GOTO 392
END

IF ~~ THEN BEGIN 392 // from: 391.0
  SAY #67430 /* ~"No, měls ňákej boxer, to jo... pár drobnejch, ale ty sem nechala Spalovákům, aby si mysleli, že sem poctivka. Měls takovej hnusnej prsten, ten sem si nechala..." Strčila prsty do loketního chrániče a vytáhla malý prstýnek s kamenem. "Měl třikrát věčí cenu než prachy a boxer, to jo." Prohlíží si prsten a šklebí se přitom. "Škoda že je tak hnusnej, že se nedá nosit."~ */
  IF ~~ THEN REPLY #67431 /* ~"Rád bych ten prsten zpátky. Teď hned."~ */ DO ~GiveItemCreate("Ring03",Protagonist,0,0,0)
~ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.0
  SAY #67432 /* ~Zamračila se a prohlíží si prsten. Podívala se na tebe, pak zpět na prsten. S odfrknutím ti ho hodila. "Stejně bych tu hnusotu nikdy nenosila."~ */
  IF ~~ THEN REPLY #67433 /* ~"Fajn. Zmínila ses, že něco z mých věcí šlo do Pharodova majetku. Cos tím myslela?"~ */ GOTO 394
  IF ~~ THEN REPLY #67434 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67435 /* ~"Promluvíme si o tom později. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 394 // from: 393.0
  SAY #67436 /* ~"Jó. Pharod si bere trochu z každý mrtvoly, co najdem, to jo. Je to jeho právo, dyž je šéf vesnice a tak."~ */
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67437 /* ~"Z KAŽDÉ mrtvoly? To je *spousta* mrtvol."~ */ GOTO 395
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67438 /* ~"Tak to si to musel schovávat ve Sklepení. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67439 /* ~"Tak to si to musel schovávat ve Sklepení. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 395 // from: 187.9 394.0 429.0 477.9
  SAY #67440 /* ~"Oh, jo - prej má dědek někde blízko skrejš. Jedinej důvod, proč si asi udělal bejvák v tý špinavý profouklý ďouře. Aspoň já si to myslim. Nejni tam nic, akorát smrad a stíny."~ */
  IF ~~ THEN REPLY #67441 /* ~"Vážně? A tam si dává ty své poplatky, které dostává?"~ */ GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #67442 /* ~"Jo." Zašilhala na tebe. "A teď jako plánuješ co? Chceš ho vobrat?"~ */
  IF ~~ THEN REPLY #67443 /* ~Pravda: "Ne. Nemám důvod udělat něco takového. Pharod mi nijak neublížil."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Annah_1","GLOBALLaw",1)
~ GOTO 397
  IF ~~ THEN REPLY #67444 /* ~Lež: "Ne. Nemám důvod udělat něco takového."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_2","GLOBALLaw",-1)
~ GOTO 397
  IF ~~ THEN REPLY #67445 /* ~"Po všem tom pobíhání, abych mu získal tu kouli a pak jsem za to nedostal vlastně nic... No, rozhodně mě to pokouší."~ */ GOTO 398
END

IF ~~ THEN BEGIN 397 // from: 396.0 396.1
  SAY #67446 /* ~"No, *dobrá* - ale já tě před něčím takovým varuju. Pharod může bejt vobčas blbej, ale když se nasere, je jako fiendský uprdnutí." Zamračila se. "A *miluje* svý krámy, to teda jo."~ */
  IF ~~ THEN REPLY #67447 /* ~"Ale kde si to všechno schovává? Jestli je ve Vesnici tak dlouho, jak tvrdíš, tak už si musel dát dohromady pořádnou sbírku."~ */ GOTO 399
END

IF ~~ THEN BEGIN 398 // from: 396.2
  SAY #67448 /* ~"Varuju tě před něčím takovým. Pharod může bejt vobčas blbej, ale když se nasere, je jako fiendský uprdnutí." Zamračila se. "A *miluje* svý krámy, to teda jo."~ */
  IF ~~ THEN REPLY #67449 /* ~"Ale kde si to všechno schovává? Jestli je ve Vesnici tak dlouho, jak tvrdíš, tak už si musel dát dohromady pořádnou sbírku."~ */ GOTO 399
END

IF ~~ THEN BEGIN 399 // from: 397.0 398.0
  SAY #67450 /* ~"No..." Annah je chvíli zticha. "Vím, že nikdy nevopustil tu svoji díru, když něco z toho potřeboval."~ */
  IF ~~ THEN REPLY #67451 /* ~"S tou jeho chromou nohou se mu asi nechce chodit moc daleko."~ */ GOTO 400
END

IF ~~ THEN BEGIN 400 // from: 399.0
  SAY #67452 /* ~"Jo, to máš recht - ale to jenom proto, že ses nedival pořádně. Nejni chromej, ale furt se snaží všecky přesvědčit, jak mizernou tu nohu má."~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #67453 /* ~"Tak proč má sebou tu berlu?"~ */ GOTO 401
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #67454 /* ~"Takže ta jeho berla... nemohl by to být klíč k nějakému portálu?"~ */ GOTO 402
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY #67455 /* ~Annah pokrčila rameny. "Nevim."~ */
  IF ~~ THEN REPLY #67456 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67457 /* ~"Zapomeň na to. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 402 // from: 400.1
  SAY #67458 /* ~Annah se na chvíli přemýšlivě zamračila, pak pomalu přikývla. "Jo... to je nápad." Pokrčila rameny. "Ale já bysem nevěděla, jak ji použít. Možná akorát stačí *mít* ji."~ */
  IF ~~ THEN REPLY #67459 /* ~"Možná to zjistíme. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67460 /* ~"Možná se na to podíváme později. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 403 // from: 187.8 477.8
  SAY #67461 /* ~"Ten starej kulhavec? Je to můj fotřík... i když nejni můj *pravej*. Našel mě, když sem byla eště malinká holka..." Annah pokrčila rameny. "'Potřeboval někoho, kdo by se proplazil do míst, kam se ti jeho špekouni nedostali, tak si mě vzal do svý ochranitelský náruče."~ */
  IF ~  Global("Annah_Looks","GLOBAL",0)
~ THEN REPLY #67462 /* ~"Stejně si myslím, že si nejste moc podobní."~ */ DO ~SetGlobal("Annah_Looks","GLOBAL",1)
~ GOTO 404
  IF ~~ THEN REPLY #67463 /* ~"Můžeš mi o něm říct ještě něco?"~ */ GOTO 424
  IF ~~ THEN REPLY #67464 /* ~"Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67465 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 404 // from: 403.0
  SAY #67466 /* ~Annah zúžila oči, začíná švihat ocasem intenzivněji. "A *tím* jsi myslel co, he?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67467 /* ~"Myslím tím, že nemůžu najít žádnou podobu mezi tím odporným shrbeným zapáchajícím skřetem a tebou."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 410
  IF ~~ THEN REPLY #67468 /* ~"Myslím tím, že on nevypadá jako tiefling."~ */ GOTO 405
  IF ~~ THEN REPLY #67469 /* ~"Myslím tím, že nevypadáš jako člověk."~ */ GOTO 406
  IF ~~ THEN REPLY #67470 /* ~"Myslím tím, že si nejste moc podobní."~ */ GOTO 407
  IF ~~ THEN REPLY #67471 /* ~"No tak nic. Mám pár dalších otázek."~ */ GOTO 477
  IF ~~ THEN REPLY #67472 /* ~"Zapomeň na to. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 405 // from: 404.1 409.1
  SAY #67473 /* ~"Jo, von *ne*... a dybys věděl vo tieflingách aspoň něco, tak bys taky věděl, že nikdo z nás tieflingů nevypadá stejně, jasný?" Zavrtěla hlavou. "Pro tebe už nejni žádná naděje, to je jasný..."~ */
  IF ~~ THEN REPLY #67474 /* ~"Nemyslel jsem to jako *urážku*. Vypadáte rozdílně. Tím myslím, že Pharod je... tak... *Pharod*, ne ty."~ */ GOTO 407
  IF ~~ THEN REPLY #67475 /* ~"No tak nic. Mám pár dalších otázek."~ */ GOTO 477
  IF ~~ THEN REPLY #67476 /* ~"Zapomeň na to. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 406 // from: 404.2 409.2
  SAY #67477 /* ~"Oh, tak to je fakt skvělý, to jo! Potáciš se tady jako chodicí bodná rána a vopovažuješ se tlačit mi do hlavy, jak vypadaj *lidi*? Bodejť by ses utopil ve vlastnich sračkách, u všech pekelnejch Mocností!"~ */
  IF ~~ THEN REPLY #67478 /* ~"Nemyslel jsem to jako *urážku*. Vypadáte rozdílně. Tím myslím, že Pharod je... tak... *Pharod*, ne ty."~ */ GOTO 407
  IF ~~ THEN REPLY #67479 /* ~"No tak nic. Mám pár dalších otázek."~ */ GOTO 477
  IF ~~ THEN REPLY #67480 /* ~"Zapomeň na to. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 407 // from: 404.3 405.0 406.0 409.3
  SAY #67481 /* ~"Oh, a co tě vede k takovýmu objevu? Moje vlasy? Moje kůže? Nic jinýho mě nenapadá..." Annah se plácla do čela a pak sarkasticky zasyčela. "Možná to byl *vocas*? Jo, určitě, to byl von! Ó, ty seš tak chytrej, vo moc chytřejši, než já. Fakt, ouplnej zázrak."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67482 /* ~"Myslím tím, že nemůžu najít žádnou podobu mezi tím odporným shrbeným zapáchajícím skřetem a tebou."~ */ GOTO 410
  IF ~~ THEN REPLY #67483 /* ~"V čem je ksakru problém?! Jenom jsem něco řekl a ty se kroutíš jako dýka."~ */ GOTO 408
  IF ~~ THEN REPLY #67484 /* ~"No tak nic. Mám pár dalších otázek."~ */ GOTO 477
  IF ~~ THEN REPLY #67485 /* ~"Zapomeň na to. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 408 // from: 407.1
  SAY #67486 /* ~"Dýka je dýka, to teda je."~ */
  IF ~~ THEN REPLY #67487 /* ~"Vše, co jsem říkal, bylo, že si ty a Pharod nejste podobní. Nemáte skoro nic společného."~ */ GOTO 410
END

IF ~~ THEN BEGIN 409 // from:
  SAY #67488 /* ~"Ne, nic takovýho, žádný zapomeň na to, jdeme dál! Cos myslel tim nesmyslem, co ti právě vylez ven z huby?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67489 /* ~"Myslím tím, že nemůžu najít žádnou podobu mezi tím odporným shrbeným zapáchajícím skřetem a tebou."~ */ GOTO 410
  IF ~~ THEN REPLY #67490 /* ~"Myslím tím, že on nevypadá jako tiefling."~ */ GOTO 405
  IF ~~ THEN REPLY #67491 /* ~"Myslím tím, že nevypadáš jako člověk."~ */ GOTO 406
  IF ~~ THEN REPLY #67492 /* ~"Myslím tím, že si nejste moc podobní."~ */ GOTO 407
END

IF ~~ THEN BEGIN 410 // from: 404.0 407.0 408.0 409.0
  SAY #67493 /* ~Annah zrudla. "Oh, jo *tak*? Jak jsi na to přišel?"~ */
  IF ~~ THEN REPLY #67494 /* ~Pravda: "Hele, *podívala* ses někdy na sebe? Kromě toho, jak se neseš, jsi sebejistá, vnímavá a půvabná. To nepočítám tvou fyzickou krásu: máš nádherné vlasy, rudé jako plamen, krásné zelené oči, které v sobě mají neuvěřitelnou jiskru. V kombinaci s tvým skvělým profilem to dává dohromady něco neuvěřitelného."~ */ GOTO 412
  IF ~~ THEN REPLY #67495 /* ~Lež: "Hele, *podívala* ses někdy na sebe? Kromě toho, jak se neseš, jsi sebejistá, vnímavá a půvabná. To nepočítám tvou fyzickou krásu: máš nádherné vlasy, rudé jako plamen, krásné zelené oči, které v sobě mají neuvěřitelnou jiskru. V kombinaci s tvým skvělým profilem to dává dohromady něco neuvěřitelného."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_3","GLOBALLaw",-1)
~ GOTO 412
  IF ~~ THEN REPLY #67496 /* ~Pravda: "Podívej se na sebe. Jsi aspoň dvakrát vyžranější a namyšlenější lovec mrtvol, než by kdy Pharod mohl být, navíc jde z tebe ten divný smrad Úlu, ze kterého mi slzí oči a pak máš ten odporný špinavý ocas, který ti leze ven ze zadku, mocnosti ví, jak se tam vůbec dostal."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 411
END

IF ~~ THEN BEGIN 411 // from: 410.2
  SAY #67497 /* ~Annahina tvář se zkroutila, vycenila zuby, oči se jí blýskají. "Oh - rači si na mě *dávej* pozor, to bys měl! Možná, že tě přiště do knihy mrtvejch strčim, misto abych tě z ni tahala ven!"~ */
  IF ~~ THEN REPLY #67498 /* ~"Budu jenom rád, když to zkusíš, *holčičko*, ale budu to já, kdo obere tvoji mrtvolu, ne naopak."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #67499 /* ~"Jen si dál vyhrožuj, jestli ti to pomáhá cítit se tvrdě. A pokud jsi už nevytvrdla moc, mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67500 /* ~"No tak nic. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 412 // from: 410.0 410.1
  SAY #67501 /* ~Annah na tebe jenom zírá.  ~ */
  IF ~~ THEN REPLY #67502 /* ~"Takže tohle jsem myslel, když jsem řekl, že si s Pharodem nejste podobní."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 413
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY #67503 /* ~Annah přikývla, stále na tebe upírá pohled. Ani nemrká.~ */
  IF ~~ THEN REPLY #67504 /* ~"Posloucháš mě?"~ */ GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 413.0
  SAY #67505 /* ~Annah se k tobě náhle naklonila a zakousla se ti do krku, tiše přitom zasyčela. Namáčkla se na tebe a zašeptala ti do ucha. "Jak odhaduješ svý šance?" Začíná kroutit ocasem, ale pomalu, jinak, než když se zlobí.~ */
  IF ~~ THEN GOTO 415
END

IF ~~ THEN BEGIN 415 // from: 414.0
  SAY #67506 /* ~Cítíš, jak Annah prudce bije srdce a vidíš, jak se jí do tváří žene krev. Náhle si uvědomuješ, jak hladká a jemná je její kůže. "Chci ti něco říct a opovaž se dělat si pak ze mě srandu."~ */
  IF ~~ THEN REPLY #67507 /* ~"Dobrá..."~ */ GOTO 416
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY #67508 /* ~"Víš jak moc se mi líbí to, jak voniš? Ó jo, jsem z toho šílenějši než banda Chaosáků, to teda jo." Přejela ti nosem po tváři a začichala. Vydala ze sebe hluboké, dychtivé zasyčení. "Vidim, jak se na mně díváš, a *líbí* se mi to. Máš hladový *oči*, to teda máš. A já sem z toho celá v ohni."~ */
  IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417 // from: 416.0
  SAY #67509 /* ~"Chci tě jemně kousat do krku..." Dráždí ti krk zuby, jemně, neuvěřitelně příjemně. S každým slovem, které zašeptá, cítíš v uchu její horký dech. Přejela ti rukou po krku a sevřela tě, cítíš, jak se ti do kůže zarývají její nehty. "Chci tě hladit po zádech a chci tě donutit, abys mě líbal a líbal..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 731
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67512 /* ~Drž ji a poslouchej..~ */ GOTO 418
END

IF ~~ THEN BEGIN 418 // from: 417.1
  SAY #67511 /* ~"Víš, že tě *cejtim* na padesát stop, ten smrad formaldehydu, kerej z tebe jede jak z ňákýho spalováka. Možná dyby ses umyl, bys byl fakt jednička." Oči jí zahořely. "Milovala bych se s tebou tak vášnivě, až by se pod tebou svět votřásal." Ustoupila o krok zpátky, ocasem se ti stále otírá o nohu. Tvrdě se na tebe podívala. "Takže, co řekneš?"~ */
  IF ~~ THEN REPLY #67514 /* ~Popadni ji a taky ji kousni.~ */ GOTO 419
  IF ~~ THEN REPLY #67515 /* ~"Ano... ano, to vidím..."~ */ GOTO 422
  IF ~~ THEN REPLY #67516 /* ~"Annah, už toho necháme, dobře?"~ */ GOTO 423
END

IF ~~ THEN BEGIN 419 // from: 418.0
  SAY #67513 /* ~Popadl jsi Annah a než se ti stačila ze sevření vykroutit, jemně jsi jí kousnul do krku. Jakmile se tvé zuby dotkly její kůže, hlasitě zasyčela a začala drápat jako kočka, nakonec se ti vyrvala z náruče. "Jenom jsem si z tebe dělala *srandu*, ty zjizvenej upíre! Di vode mně!" Navzdory hlasitým prostestům má ale zarudlou tvář a zrychleně dýchá. "A dávej si bacha, kam dáváš pazoury! Vidím z tebe rudě!"~ */
  IF ~~ THEN REPLY #67517 /* ~Lži: "V čem je problém? Tam, odkud pocházím, je vzájemné kousání běžný pozdrav."~ */ GOTO 420
  IF ~~ THEN REPLY #67518 /* ~"Tys kousla *mě*, já kousnul *tebe*. Jestli se ti to nelíbí, tak to NEDĚLEj."~ */ GOTO 421
  IF ~~ THEN REPLY #67519 /* ~"Hele, už toho mám dost... Mám pro tebe nějaké otázky."~ */ GOTO 477
  IF ~~ THEN REPLY #67520 /* ~"Už toho bylo dost. Jdeme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #67521 /* ~"Oh, *správně*, to ti věřim." Annah se uklidnila, její dech je zase normální. "Ale přiště drž pazoury vode mně, slyšiš?"~ */
  IF ~~ THEN REPLY #67522 /* ~"Hele, už toho mám dost... Mám pro tebe nějaké otázky."~ */ GOTO 477
  IF ~~ THEN REPLY #67523 /* ~"Už toho bylo dost. Jdeme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 421 // from: 419.1
  SAY #67524 /* ~"Dělám, co *já* chci, to teda jo." Annah si odfrkla, stále má tváře trochu rudé. "Ale přiště drž pazoury vode mne, slyšiš?"~ */
  IF ~~ THEN REPLY #67525 /* ~"Hele, už toho mám dost... Mám na tebe nějaké otázky."~ */ GOTO 477
  IF ~~ THEN REPLY #67526 /* ~"Už toho bylo dost. Jdeme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 422 // from: 418.1
  SAY #67527 /* ~"No, tak tvý šance sou menší, než mysliš, to jo." Annah si odfrkla, stále má ještě trochu rudé tváře. "Jenom jsem si z tebe dělala *srandu*, ty zjizvenej upíre. Nevoniš *tak* dobře, to ne."~ */
  IF ~~ THEN REPLY #67528 /* ~"Hele, už toho mám dost... Mám pro tebe nějaké otázky."~ */ GOTO 477
  IF ~~ THEN REPLY #67529 /* ~"Už toho bylo dost. Jdeme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 423 // from: 418.2
  SAY #67530 /* ~"Toho se nebojim." Annah si odfrkla, stále má ještě trochu rudé tváře. "Jenom jsem si z tebe dělala *srandu*, ty zjizvenej upíre. Nevoniš *tak* dobře, to ne."~ */
  IF ~~ THEN REPLY #67531 /* ~"Hele, už toho mám dost... Mám pro tebe nějaké otázky."~ */ GOTO 477
  IF ~~ THEN REPLY #67532 /* ~"Už toho bylo dost. Jdeme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 424 // from: 403.1
  SAY #67533 /* ~"Je ve Vesnici dýl než já. Přišel tam někdy před věkama, možná to misto dokonce *založil*, aspoň to někerý vesničani tvrděj." Annah se zamračila. Pharod je mazanej, to je. Nikdá mu prachy nechyběly, dokáže je vymáčknout z kde koho. A je to pěkná držgrešle."~ */
  IF ~  Global("Pharod_Annah_Story","GLOBAL",0)
~ THEN REPLY #67534 /* ~"Celou dobu hledal tu bronzovou kouli?"~ */ GOTO 425
  IF ~  Global("Pharod_Annah_Story","GLOBAL",1)
~ THEN REPLY #67535 /* ~"Celou dobu hledal tu bronzovou kouli?"~ */ GOTO 426
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67536 /* ~"No, když jsem ho navštívil, nepřipadal mi nějak moc bohatej."~ */ GOTO 429
  IF ~~ THEN REPLY #67537 /* ~"Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67538 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 425 // from: 424.0
  SAY #67539 /* ~"Asi." Annah znovu pokrčila rameny. "Nevim, proč byl po ní tak žhavej, to ne. Ucítila sem ji, hned jak si ji dotáh." Pokrčila nos. "Smrděla děsně, jako po horčici. Ale... muselo to pro něho bejt hodně cenný, když se ji snažil tak moc dostat - polovička Sběračů skončila v knize zdechlin, když se mu ji snažili dostat."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #67540 /* ~"Myslím, že ji hledal, protože si myslel, že mu zachrání život."~ */ DO ~SetGlobal("Pharod_Annah_Story","GLOBAL",1)
AddexperienceParty(2500)
~ GOTO 427
  IF ~~ THEN REPLY #67541 /* ~"Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67542 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 426 // from: 424.1
  SAY #67543 /* ~"Esli to je jak si řikal, tak asi jo." Annah opět pokrčila rameny. "Byla to vod něj pěkná pitomost, to jo. Žádná cetka tě nezachráni před osudem, to ne. Esli sou skvrny na tvý duši dost černý, nesmeješ je, ať se budeš snažit sebevic." Odmlčela se. "Ale jestli si myslel, že ho to může zachránit, možná to *bylo* nějak důležitý... nebo by se to aspoň dalo střelit."~ */
  IF ~~ THEN REPLY #67544 /* ~"Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67545 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 427 // from: 425.0
  SAY #67546 /* ~Zamrkala. "Co tím mysliš?"~ */
  IF ~~ THEN REPLY #67547 /* ~"Pharod nevedl zrovna dobrý život - kdysi byl 'Guvnerem' v jedné z Horních Čtvrtí. A zřejmě používal svou pozici, aby lhal, podváděl a ubližoval ostatním - tak moc, že byl po smrti dosouzený do pekla. Myslel si, že ho tak bronzová koule nějak ochrání - takže zahodil svůj titul, své bohatství i pozici, aby ji mohl najít."~ */ JOURNAL #67548 /* ~Řekl jsem Annah, co jsem se dozvěděl od Smradodecha v Úlu. Nevěděla nic o Pharodově minulosti a byla tím, co jsem jí řekl, docela překvapená.~ */ GOTO 428
END

IF ~~ THEN BEGIN 428 // from: 427.0
  SAY #67549 /* ~"Fakt?" Je chvíli zticha, pak zavrtí hlavou. "Byla to vod něj pěkná pitomost, to jo. Žádná cetka tě nezachráni před osudem, to ne. Esli sou skvrny na tvý duši dost černý, nesmeješ je, ať se budeš snažit sebevic." Odmlčela se. "Ale jestli si myslel, že ho to může zachránit, možná to *bylo* nějak důležitý... nebo by se to aspoň dalo střelit."~ */
  IF ~~ THEN REPLY #67550 /* ~"Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67551 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 429 // from: 424.2
  SAY #67552 /* ~"Né, von to neukazuje, ale je napakovanej, to je. Nemá rád, když se mu někdo hrabe ve věcech, tak je má někde schovaný."~ */
  IF ~~ THEN REPLY #67553 /* ~"Takže má své cennosti někde ukryté?"~ */ GOTO 395
END

IF ~~ THEN BEGIN 430 // from: 187.14 477.14
  SAY #67554 /* ~Annah se zamračila. "Nemyslela tim *nic*. Bláznivý kecy bláznivý báby."~ */
  IF ~~ THEN REPLY #67555 /* ~"Víš to jistě?"~ */ GOTO 431
  IF ~~ THEN REPLY #67556 /* ~"No tak nic. Chci se tě zeptat na něco jiného."~ */ GOTO 477
  IF ~~ THEN REPLY #67557 /* ~"Tak na to zapomeň. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 431 // from: 430.0
  SAY #67558 /* ~"Nebylo to NIC. Esli neviš ty, co čem žvanila, já to o tom taky nemám tucha."~ */
  IF ~~ THEN REPLY #67559 /* ~"No, jestli si o tom chceš promluvit, posl--"~ */ GOTO 432
  IF ~~ THEN REPLY #67560 /* ~"No tak nic. Chci se tě zeptat na něco jiného."~ */ GOTO 477
  IF ~~ THEN REPLY #67561 /* ~"Tak na to zapomeň. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 432 // from: 431.0
  SAY #67562 /* ~"Já..." Annah na chvíli sklopila pohled. "Nevim, proč s tebou chodim! Nevim, proč sem s tebou šla hledat Ravel!" Zamračila se, ale vypadá spíš zmateně než naštvaně. "Nedává to *smysl*, to ne. A to se mi nelíbi."~ */
  IF ~~ THEN DO ~SetGlobal("Annah_Ravel_Torment","GLOBAL",1)
~ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.0
  SAY #67563 /* ~"Já..." Annah se zhluboka nadechla. "Myslím, že k tobě něco *cítim*. Je to divný, to jo... nemyslim, že bych kdy měla *vůbec někoho* ráda. Ale ty..." Annah pokrčila rameny. Vyhýbá se ti pohledem. "Nevím, co je to s tebou. Tim myslim - seš dost často úplně *pitomej*, chodiš, jako bys měl polámaný haksny, seš nevohrabanej, smrdiš jako zombik, ale..." Povzdychla si. "Mám tě *ráda*."~ */
  IF ~~ THEN REPLY #67565 /* ~"Annah, proč jsi něco neřekla? Mohli jsme si to už dávno vyřeš-"~ */ GOTO 437
  IF ~~ THEN REPLY #67566 /* ~"Annah, záleží mi na tobě... ale ne tímhle způsobem."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 434
END

IF ~~ THEN BEGIN 434 // from: 433.1
  SAY #67564 /* ~Annah se zamračila a zadívala se do země. "Jo, možná je to *skvělý*, to jo. City k jinejm tě raněj na místech, kerý se nehojej..."~ */
  IF ~~ THEN REPLY #67567 /* ~"Annah, proč jsi něco neřekla? Mohli jsme si to už dávno vyřeš-"~ */ GOTO 435
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY #67568 /* ~"Páč si myslim, že seš *prokletej*." Annah se ti náhle zadívala do očí. "Myslím, že seš spoutanej řetězama, ale nevíš vo tom. Takže... já s tebou cejtim a bojim se o tebe... a to mě *zabíji*, to jo. Nechci, aby ti někdo ublížil, ale nevim, co mám udělat, aby se to nestalo. Takže... chodim s tebou."~ */
  IF ~~ THEN REPLY #67569 /* ~"Oceňuju, že stojíš při mně, Annah."~ */ GOTO 436
  IF ~~ THEN REPLY #67570 /* ~"No, já si taky myslím, že jsem prokletý. Hele, mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67571 /* ~"Aha. Hele, už toho mám dost: pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 436 // from: 435.0 437.2
  SAY #67572 /* ~"Jo... no..." Je chvíli zticha, pak pokrčila rameny. "Na tom nezáleži."~ */
  IF ~~ THEN REPLY #67573 /* ~"Hele, mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67574 /* ~"Tak dobrá, Annah. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 437 // from: 433.0
  SAY #67575 /* ~"Páč si myslim, že seš *prokletej*." Annah se ti náhle zadívala do očí. "Myslim, že seš spoutanej řetězama, ale neviš vo tom. Takže... já s tebou cítim a bojim se o tebe... a to mě *zabíji*, to jo. Nechci, aby ti někdo ublížil, ale nevim, co mám udělat, aby se to nestalo!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67576 /* ~Polib ji.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67577 /* ~Polib ji.~ */ GOTO 444
  IF ~  Global("Annah_Kissing","GLOBAL",1)
~ THEN REPLY #67696 /* ~"Oceňuju, že jsi se mnou, Annah."~ */ GOTO 436
END

IF ~~ THEN BEGIN 438 // from: 187.13 477.13
  SAY #67578 /* ~Annah si odfrkla. "No tak, vykašli se na todleto. Estli se chceš slintat s fiendem, to, žes dal pusu tý čarodějnici byla asi ta *nejnebezpečnější* věc, cos moh udělat." Odplivla si. "A teď přestaň mlít tlamou. Nechci už vo tom slyšet ani slovo, to teda ne."~ */
  IF ~~ THEN REPLY #67579 /* ~"No tak nic. Chci se tě zeptat na něco jiného."~ */ GOTO 477
  IF ~~ THEN REPLY #67580 /* ~"Tak na to zapomeň. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 439 // from:
  SAY #67581 /* ~Annah se zamračila, pak přikývla. "Jo, udělals dobře, žes jí nedal pusu, to jo."~ */
  IF ~~ THEN REPLY #67582 /* ~"No, nepolíbil jsem ji proto, že jsem se chtěl líbat s tebou."~ */ GOTO 440
  IF ~~ THEN REPLY #67583 /* ~"No tak nic. Chci se tě zeptat na něco jiného."~ */ GOTO 477
  IF ~~ THEN REPLY #67584 /* ~"Tak na to zapomeň. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY #67585 /* ~"Eh? Co?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67586 /* ~Polib ji.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67587 /* ~Polib ji.~ */ GOTO 444
  IF ~~ THEN REPLY #67588 /* ~"No tak nic. Chci se tě zeptat na něco jiného."~ */ GOTO 477
  IF ~~ THEN REPLY #67589 /* ~"Zapomeň na to. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 441 // from: 187.12 477.12
  SAY #67590 /* ~Annah zakroutila očima. "Oh jo, políbil bys nejhnusnějši nejhorši čarodějnici ve Sférách, ale mě pusu nedáš? Jo, cokoli řekneš, to to jenom vylepčí, to jo."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67591 /* ~Polib ji.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67592 /* ~Polib ji.~ */ GOTO 444
  IF ~~ THEN REPLY #67594 /* ~"No tak nic. Chci se tě zeptat na něco jiného."~ */ GOTO 477
  IF ~~ THEN REPLY #67595 /* ~"Tak na to zapomeň. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 442 // from: 437.0 440.0 441.0
  SAY #67596 /* ~Položil jsi jí ruku kolem krku. Vidíš, jak tvář Annah zkameněla, ale nedbáš na to. Přitáhl sis ji k sobě a políbil na rty.~ */
  IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 442.0
  SAY #67597 /* ~Z počátku to je jako líbat kámen, ale pomalu se poddává a začíná tě líbat. Nejprve váhavě, pak s mnohem větší sebedůvěrou, její zuby tě jemně koušou do horního rtu. Slyšíš, jak jí z hrdla vychází zavrčení. Její ocas šplhá po tvé noze, začíná tě *mačkat*, každé sevření odpovídá jejímu kousnutí.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 732
END

IF ~~ THEN BEGIN 444 // from: 437.1 440.1 441.1
  SAY #67598 /* ~Položil jsi jí ruku kolem krku. Vidíš, jak tvář Annah zkameněla, ale nedbáš na to. Přitáhl sis ji k sobě a políbil na rty.~ */
  IF ~~ THEN GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #67599 /* ~Z počátku to je jako líbat kámen, ale pomalu se poddává a začíná tě líbat. Nejprve váhavě, pak s mnohem větší sebedůvěrou, její zuby tě jemně koušou do horního rtu. Slyšíš, jak jí z hrdla vychází zavrčení. Její ocas šplhá po tvé noze, začíná tě *mačkat*, každé sevření odpovídá jejímu kousnutí.~ */
  IF ~~ THEN GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #67601 /* ~Jak ji líbáš, uvědomil sis, že se kůže Anah začíná zahřívat - vyzařuje žár, jako žhavý uhlík. Odtáhnul ses. Její zuby ti uštědřily poslední kousnutí a jejich majitelka se na tebe zmateně zadívala. Zmatek rychle přešel ve vztek. "Tak co je? Nejsem dost dobrá, nebo co?"~ */
  IF ~~ THEN REPLY #67602 /* ~"Ne, to tvá kůže - jakto že jsi najednou tak strašně žhavá?"~ */ DO ~SetGlobal("Annah_Kissing","GLOBAL",1)
PermanentStatChange("Annah",RESISTFIRE,RAISE,5)
PermanentStatChange("Annah",RESISTMAGICFIRE,RAISE,5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #67603 /* ~"Jo?" Annah se zamračila a podívala se na sebe. Všiml sis, jak zpod okrajů její vesty vycházejí obláčky kouře. "To ta krev fienda, to jo..." Zamyšleně zvedla obočí. "Ale *to* se ještě nikdy předtim nestalo."~ */
  IF ~~ THEN REPLY #67604 /* ~"Co? Nikdy tě nikdo dřív nepolíbil?"~ */ GOTO 448
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #67605 /* ~Pokrčila rameny. "Nikdo se nikdy *neopovážil*. A i dyby, určitě by to nebylo takový, jako todle."~ */
  IF ~~ THEN REPLY #67606 /* ~"Tak to beru jako kompliment."~ */ GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #67607 /* ~"Jo... eh..." Annah se rozhlédla kolem, zuřivě přitom mává ocasem. "No půjdeme dál, nebo co? Nemáme čas tady furt jenom tak postávat a vykecávavat se, to ne."~ */
  IF ~~ THEN REPLY #67608 /* ~"No, *já* s líbáním ještě neskončil. Pojď sem."~ */ GOTO 450
  IF ~~ THEN REPLY #67692 /* ~"Dobrá, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY #67609 /* ~Vystrašeně ustoupila. "Né - kdo vi, co by se stalo pak - možná se moje tělo změni na *voheň*, třeba jo!  Radši se ty i tvý rty držte vode mne dál!"~ */
  IF ~~ THEN REPLY #67610 /* ~"Dobrá - PRO TENTOKRÁT. Pojďme dál."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 460 even though they appear after this state */
~  InParty("Annah")
InParty("Grace")
Global("Annah_Accuse_Grace","GLOBAL",0)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 451 // from:
  SAY #67611 /* ~Annah se na tebe podívala a zamračila se. "Jo? Co chceš *teď*?"~ */
  IF ~~ THEN REPLY #67612 /* ~"Jsi v pořádku?"~ */ GOTO 452
  IF ~~ THEN REPLY #67613 /* ~"Mám nějaké otázky, které bych ti chtěl položit."~ */ GOTO 453
  IF ~~ THEN REPLY #67614 /* ~"Nic, Annah. Jenom se ujišťuju, že jsi pořád se mnou."~ */ EXIT
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #67615 /* ~Annah na tebe jenom zírá.~ */
  IF ~~ THEN REPLY #67616 /* ~"Chtěl jsem ti položit pár otázek."~ */ GOTO 453
  IF ~~ THEN REPLY #67617 /* ~"No tak nic. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 453 // from: 451.1 452.0
  SAY #67618 /* ~"Tak proč nedáš svý votázky tý sukundubě?" Annah zúžila oči. "Proč s ní vůbec *cestuješ*, he? NEPOTŘEBUJEME ji, to teda ne."~ */
  IF ~~ THEN REPLY #67619 /* ~"Na tohle nemám *čas*, Annah. Přestaň bláznit a pomož mi."~ */ GOTO 455
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67620 /* ~"Annah, potřebuju veškerou pomoc, kterou mohu získat - včetně té tvé."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67621 /* ~"Annah, *prosím.* Jsi pro mě velmi důležitá, potřebuju tvou pomoc."~ */ GOTO 458
  IF ~~ THEN REPLY #67622 /* ~"Annah, chci s sebou tebe - ne ji. Jestli ti vadí, řeknu jí, ať jde pryč."~ */ GOTO 454
  IF ~~ THEN REPLY #67623 /* ~"Nemám *čas*, abych se s tebou o tomhle hádal, Annah. Jestli se ti nelíbí, že je s námi Fall-From-Grace, jdi pryč."~ */ GOTO 455
  IF ~~ THEN REPLY #67624 /* ~"Promluvíme si o tom později. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 454 // from: 453.3
  SAY #67625 /* ~"Tak to udělej!" Annah na tebe vrhá rozhořčený pohled. "Se vsadím, že to neuděláš - jestli jo, tak bychom se na to měli vykašlat, páč jinak se zase budeme vo tohle hádat, to jo."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67626 /* ~"Annah, potřebuju veškerou pomoc, kterou mohu získat - včetně té tvé."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67627 /* ~"Annah, *prosím.* Jsi pro mě velmi důležitá, potřebuju tvou pomoc."~ */ GOTO 458
  IF ~~ THEN REPLY #67629 /* ~"Nemám *čas*, abych se s tebou o tomhle hádal, Annah. Jestli se ti nelíbí, že je s námi Fall-From-Grace, jdi pryč."~ */ GOTO 455
  IF ~~ THEN REPLY #67630 /* ~"Promluvíme si o tom později. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 455 // from: 453.0 453.4 454.2 457.1 457.2 460.2 461.3 462.1 463.4
  SAY #67631 /* ~"Kdo tě POTŘEBUJE, he?!" Annah popadla svůj batoh, vysypala ti ho pod nohy a pak na to plivla. "Nevopovaž se eště NĚKDY za mnou přijít, páč jinak tě rozpářu, ty smradlavej špinavej blbej zjizvenej a odpornej HAJZLE. Doufám, že SHNIJEŠ!"~ */
  IF ~~ THEN REPLY #67632 /* ~"Tak zmizni. Už tě nechci ani vidět."~ */ DO ~LeaveParty()
DropInventory()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 456 // from: 453.1 454.0
  SAY #67633 /* ~"Seš hnusnej prolhanej *lhář*, to seš. Dovolils mi pobíhat kolem jenom proto, žes nevěděl, co jinýho se mnou, že jo! Proč si mi zkrátka neřekl, ať vodpálim, jakmile mně poslal Pharod k tobě?!"~ */
  IF ~~ THEN REPLY #67634 /* ~"Protože-"~ */ GOTO 457
END

IF ~~ THEN BEGIN 457 // from: 456.0
  SAY #67635 /* ~"Si myslíš, že s tebou cestuju RÁDA?! MYSLÍŠ?! Páč tvůj..." Annahina tvář se znechuceně zkroutila. "Tvůj život, esli tomu tak můžeš ŘIKAT, je ZASVINĚNEJ, stejně jako tvoje *kůže* - všechno porvaný a zjizvený. Si mysliš, že máš ňáký velký kšefty z osudem, ale nemáš! Nemáš! Seš zkrátka jeden velkej *bordel*, to seš!"~ */
  IF ~~ THEN REPLY #67636 /* ~"Annah, neřekl jsem ti, abys šla, protože *nechci*, abys odešla."~ */ GOTO 458
  IF ~~ THEN REPLY #67637 /* ~"Už *nikdy* se mnou nebudeš takhle mluvit. Budeš zticha a budeš dělat, co ti řeknu, nebo tvůj život bude ještě horší než můj."~ */ GOTO 455
  IF ~~ THEN REPLY #67638 /* ~"Nemám *čas*, abych se s tebou o tomhle hádal, Annah. Jesti se ti nelíbí, že je s námi Fall-From-Grace, jdi pryč."~ */ GOTO 455
END

IF ~~ THEN BEGIN 458 // from: 453.2 454.1 457.0
  SAY #67639 /* ~"Oh, jo, a proč TEDA? Tohle bude fakt skvělý. Lituješ mě, vo to ti de? Si myslíš, že tě zpomaluju? No tak, jen to řekni!"~ */
  IF ~~ THEN REPLY #67640 /* ~"*Nelituju* tě a *nezpomaluješ* mě - jsi rychlá, zkušená a já tě opravdu potřebuju. Potřebuju každou pomocnou ruku, kterou můžu získat."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse_Grace","GLOBAL",1)
~ GOTO 459
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY #67641 /* ~Annah se zamračila a švihla ocasem. "Jo... no... *zapamatuj* si, že jí rozpářu bachor, jestli si na nás něco zkusí, to jo." Upírá na tebe tvrdý pohled. "A si nemysli, že s tebou zůstávám, páč to *ty* chceš - ti akorát trochu pomáhám, to jo."~ */
  IF ~~ THEN REPLY #67642 /* ~"Fajn. Mám pár otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67643 /* ~"Tak teda pojďme."~ */ EXIT
END

IF WEIGHT #5 ~  !InParty("Annah")
GlobalGT("Annah","GLOBAL",0)
Global("Annah_Talked_Grace","GLOBAL",5)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 460 // from:
  SAY #67644 /* ~"Co CHCEŠ?"~ */
  IF ~  InParty("Grace")
~ THEN REPLY #67645 /* ~"Annah, potřebuju tvou pomoc. Budeš se mnou zase cestovat?"~ */ GOTO 461
  IF ~  !InParty("Grace")
~ THEN REPLY #67646 /* ~"Annah, potřebuju tvou pomoc. Budeš se mnou zase cestovat?"~ */ GOTO 469
  IF ~~ THEN REPLY #67647 /* ~"Jestli už s námi nebudeš cestovat, chci zpátky své věci. Teď hned."~ */ GOTO 455
  IF ~~ THEN REPLY #67914 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #67648 /* ~"Ani za NIC! Ne s někým, jako je *vona*, to ne! Klidně si voba táhněte do Abyssu a tam SHNIJTE!"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67649 /* ~"Annah, chci *tvou* společnost. Budeš se mnou zase cestovat?"~ */ GOTO 462
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67650 /* ~Pravda: "Annah, Fall-From-Grace pro mě neznamená tolik, co ty. Budeš s námi prosím zase cestovat?"~ */ GOTO 463
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67651 /* ~Lži: "Annah, Fall-From-Grace pro mě neznamená tolik, co ty. Budeš s námi prosím zase cestovat?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_5","GLOBALLaw",-1)
~ GOTO 463
  IF ~~ THEN REPLY #67652 /* ~"Jestli už s námi nebudeš cestovat, chci zpátky své věci. Teď hned."~ */ GOTO 455
  IF ~~ THEN REPLY #67915 /* ~"No tak nic. Sbohem."~ */ GOTO 468
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #67653 /* ~"Ne-e. Nebudu cestovat s děvkou, co požírá duše. To ne! To ona musí jít!"~ */
  IF ~~ THEN REPLY #67654 /* ~"Dobrá, promluvím si s ní. Počkej chvilku, ještě s tebou chci mluvit."~ */ EXIT
  IF ~~ THEN REPLY #67655 /* ~"Jestli už s námi nebudeš cestovat, chci zpátky své věci. Teď hned."~ */ GOTO 455
  IF ~~ THEN REPLY #67916 /* ~"Je mi líto, že se k tomu cítíš takhle... No tak nic. Sbohem."~ */ GOTO 468
END

IF ~~ THEN BEGIN 463 // from: 461.1 461.2
  SAY #67656 /* ~"Esli pro tebe neznamená tolik, tak musi jit, to jo. Nebudu cestovat s děvkou, co požírá duše. To ne!"~ */
  IF ~~ THEN REPLY #67657 /* ~Pravda: "Annah, podívej, mě na ní *nezáleží*. *Potřebuju* sebou tebe, ale také potřebuju její pomoc, alespoň na čas. Pak budeme jenom ty a já."~ */ GOTO 464
  IF ~~ THEN REPLY #67658 /* ~Lži: "Annah, podívej, mě na ní *nezáleží*. *Potřebuju* s sebou tebe, ale také potřebuju její pomoc, alespoň na čas. Pak budeme jenom ty a já."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_6","GLOBALLaw",-1)
~ GOTO 464
  IF ~~ THEN REPLY #67659 /* ~"Tak to nebudeš cestovat s NIKÝM. Nechám tě tady, klidně se vrať ke svému ubohému životu, dál obírej mrtvoly. A nebo pojď s námi."~ */ GOTO 465
  IF ~~ THEN REPLY #67660 /* ~"Dobrá, promluvím si s ní. Počkej chvilku, ještě s tebou chci mluvit."~ */ EXIT
  IF ~~ THEN REPLY #67661 /* ~"Jestli už s námi nebudeš cestovat, chci zpátky své věci. Teď hned."~ */ GOTO 455
  IF ~~ THEN REPLY #67917 /* ~"Je mi líto, že se k tomu cítíš takhle... No tak nic. Sbohem."~ */ GOTO 468
END

IF ~~ THEN BEGIN 464 // from: 463.0 463.1
  SAY #67662 /* ~Annah se ti na chvíli dívá přímo do očí, pokouší se tě odhadnout. "Bys mi měl rači říkat *pravdu*, to bys měl."~ */
  IF ~~ THEN REPLY #67663 /* ~"Říkám. Pojď."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 463.2
  SAY #67664 /* ~Annah se na tebe podívala - její vztek s tvými slovy zmizel. "Takže... možná... udělám to. Zatím mi to vyhovovalo!"~ */
  IF ~~ THEN REPLY #67665 /* ~"To je skvělý. Jenom jdi zpátky obírat mrtváky, možná jednou skončíš, jako Pharod, úchylná, nemocná a *slabá*. NEBO můžeš jít s námi. Ty si vyber."~ */ GOTO 466
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY #67666 /* ~Annah na tebe mlčky zírá. Ocas jí ztuhl v jedné pozici, vůbec se nehýbá.~ */
  IF ~~ THEN REPLY #67667 /* ~"Vyber si. Teď hned."~ */ GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 466.0
  SAY #67668 /* ~"Já... pudu s tebou, to jo."~ */
  IF ~~ THEN REPLY #67669 /* ~"Dobře. Tak pojď."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 468 // from: 461.4 462.2 463.5
  SAY #67670 /* ~"Jo, di si zpátky do náruče tý vokřídlený děvky!" Annah si odplivla. "S váma dvěma už nechci vůbec nic mít, to ne!"~ */
  IF ~~ THEN REPLY #67671 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 469 // from: 460.1
  SAY #67672 /* ~Annahiny oči se zúžily. "Tak kde je ta tvoje sukunduba? Zkoušela tě hryznout do krku a stáhnout do Abyssu, co?"~ */
  IF ~~ THEN REPLY #67673 /* ~"Už se mnou necestouje, Annah. Chtěl bych, aby ses k nám zase přidala."~ */ GOTO 470
  IF ~~ THEN REPLY #67674 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 470 // from: 469.0
  SAY #67675 /* ~"A jak vím, že to tak ZŮSTANE? Co když se vrátí - nebo..." Annah znechucená. "Nebo někdo jinej bude chtít, aby se vrátila, he?"~ */
  IF ~~ THEN REPLY #67676 /* ~"Annah, už se to nestane."~ */ GOTO 471
  IF ~~ THEN REPLY #67677 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 471 // from: 470.0
  SAY #67678 /* ~"Jo... no... rači by sis měl dávat bacha, to bys měl. Budu s tebou zase cestoval, to jo."~ */
  IF ~~ THEN REPLY #67679 /* ~"Dobrá tedy. Pojďme dál."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 472 // from: 187.6 477.6
  SAY #67697 /* ~Ocas Annah se na chvíli zastavil. Tvrdě se na tebe zadívala. "Mysliš to vážně? Není čas na srandičky, to ne."~ */
  IF ~~ THEN REPLY #67698 /* ~"Ne, Annah - našel jsem ho mrtvého na jeho Dvoře. Nevíš, kdo ho mohl zabít?"~ */ GOTO 476
END

IF ~~ THEN BEGIN 473 // from: 187.7 477.7
  SAY #67699 /* ~"Já..." Zavrtěla hlavou. "Já *nevím*. Nikdo aspoň s půlkou mozku by to nezkusil - Pharod je nebezpečnej, to je. Zkřiž mu cestu a bude to s tebou blbý."~ */
  IF ~~ THEN REPLY #67700 /* ~"Už se mnou nemusíš být, Annah. Jestli chceš zůstat v Pohřbené Vesnici, já -"~ */ GOTO 474
  IF ~~ THEN REPLY #67701 /* ~"Dobrá tedy. Mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67702 /* ~"No tak nic. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 474 // from: 473.0
  SAY #67704 /* ~"Née..." Annah tě přerušila. "Nechci bejt v dědině - sem uvažovala, co budu dělat teď, když je Pharod kaput, to teda jo." Odfrkla si. "No, ten bez tak teďka zdobí něčí zeď v pekle, to jo."~ */
  IF ~~ THEN REPLY #67705 /* ~"Ale... je to tvůj otec. Copak-"~ */ DO ~SetGlobal("Annah_Discovers_Pharod","GLOBAL",3)
~ GOTO 475
END

IF ~~ THEN BEGIN 475 // from: 474.0
  SAY #67706 /* ~"Ne můj *pravej* tatík, to ne." její pohled ztvrdnul. "Byl chamtivej, blbej, sobeckej a slabej." Zamračila se. "A teď zdechnul. A to je všecko."~ */
  IF ~~ THEN REPLY #67707 /* ~"Dobrá tedy. Ještě jsem se tě chtěl na něco zeptat..."~ */ GOTO 477
  IF ~~ THEN REPLY #67708 /* ~"Tak teda pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 476 // from: 472.0
  SAY #67709 /* ~"Ne, to ne -- ale *potřebuju* vidět tělo. Pharod je lstivej, možná na tebe něco zkoušel..."~ */
  IF ~~ THEN REPLY #67710 /* ~"Ukážu ti to. Ale nejdřív mám pár dalších otázek..."~ */ GOTO 477
  IF ~~ THEN REPLY #67711 /* ~"Tak ti ho ukážu."~ */ EXIT
END

IF ~~ THEN BEGIN 477 // from: 316.1 317.1 318.0 319.1 320.1 321.0 322.5 324.0 326.3 345.0 347.0 348.5 362.0 363.4 371.0 372.1 373.1 374.1 376.0 377.1 378.1 379.1 380.0 387.0 389.1 390.0 393.1 394.1 401.0 402.0 403.2 404.4 405.1 406.1 407.2 411.1 419.2 420.0 421.0 422.0 423.0 424.3 425.1 426.0 428.0 430.1 431.1 435.1 436.0 438.0 439.1 440.2 441.2 459.0 473.1 475.0 476.0
  SAY #67712 /* ~"Jo?"~ */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67714 /* ~"Takže kde je to místo, kde jsi našla moje tělo?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67716 /* ~"Takže kde je to místo, kde jsi našla moje tělo?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67717 /* ~"Takže kde je to místo, kde jsi našla moje tělo?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67719 /* ~"Chci se zeptat, jak jsi našla mé tělo..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67720 /* ~"Annah... nepotkal jsem tě v Úlu, ještě před tím, než jsem našel Pharoda?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67721 /* ~"Annah, našla jsi na mém těle něco předtím, než jsi mě dotáhla do Márnice?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67722 /* ~"Annah, našel jsem Pharoda mrtvého."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67723 /* ~"Annah, víš, jak Pharod zemřel?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67724 /* ~"Pověz mi něco o Pharodovi."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67725 /* ~"Annah, když šel Pharod pro daň, kterou si z mého těla vzal, na chvíli zmizel a pak se vrátil - ale dvůr neopustil. Nevíš, kam šel?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67726 /* ~"Annah, můžeš mě pocvičit ve zlodějském umění?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68260 /* ~"Annah, můžeš mě pocvičit ve zlodějských schopnostech?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67727 /* ~"Chtěl jsem, abys věděla, že když jsem v bludišti políbil Ravel, tak já..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67728 /* ~"Chtěl jsem, abys věděla, že když jsem v bludišti políbil Ravel, tak já..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67729 /* ~"V bludišti Ravel řekla, že trpíš... co tím myslela?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67730 /* ~"Slyšelas někdy o čarodějnici jménem Ravel Puzzlewell?"~ */ GOTO 316
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67731 /* ~"Nevíš, kde bych našel 'kousek' Ravel?"~ */ GOTO 319
  IF ~~ THEN REPLY #67732 /* ~"Nic, Annah. Jenom si kontroluju, jestli jsi pořád se mnou."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Fortress_Annah","GLOBAL",3)
~ THEN BEGIN 478 // from:
  SAY #68184 /* ~Nasměroval jsi svou moc. Vzduch se zavířil a Annah se pohnula. Pomalu zvedla hlavu, zmateně s ní zatřásla.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68185 /* ~"Našel jsem svou smrtelnost, Annah. A ukázalo se, že mě nemá moc ráda. Potřebuji tvou pomoc."~ */ DO ~SetGlobal("Fortress_Annah","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 479
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68326 /* ~ANNAH, JSI V POŘÁDKU?~ */ GOTO 481
END

IF ~~ THEN BEGIN 479 // from: 478.0
  SAY #68186 /* ~Oči Annah nabraly kovový lesk. Přikývla. "Budu s tebou."~ [ANA205A] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68187 /* ~"Tak to tedy udělejme..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68205 /* ~"Tak to tedy udělejme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68206 /* ~"Tak to tedy udělejme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68207 /* ~"Tak to tedy udělejme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68208 /* ~"Tak to tedy udělejme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68241 /* ~"Tak to tedy udělejme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68431 /* ~"Tak to tedy udělejme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68432 /* ~"Tak to tedy udělejme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68443 /* ~"Tak to tedy udělejme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 480 // from: 187.11 477.11
  SAY #68258 /* ~Annah se zamračila a zavrtěla hlavou. "Né, teď ne - sou tady někde kolem věci na zabíjení, to teda sou!"~ */
  IF ~~ THEN REPLY #68259 /* ~"No tak nic..."~ */ EXIT
END

IF ~~ THEN BEGIN 481 // from: 478.1
  SAY #68327 /* ~Oči Annah se rozšířily, když zaslechla tvůj hlas. "C-co se ti stalo? Tvůj hlas - jakoby se rozléhal, to jo."~ */
  IF ~~ THEN REPLY #68328 /* ~ZMĚNIL JSEM SE. TEĎ JSEM NĚCO JINÉHO A UŽ TADY DÉLE NEMOHU ZŮSTAT. VRÁTÍM TĚ DO SIGILU, JESTLI SI TO PŘEJEŠ.~ */ GOTO 482
END

IF ~~ THEN BEGIN 482 // from: 481.0
  SAY #68329 /* ~"Co-" Annah otevřela ústa, pak se odmlčela. "Kde- kam jdeš *ty*?"~ */
  IF ~~ THEN REPLY #68330 /* ~MNOHO JE ZLOČINŮ, KTERÉ BYLY SPÁCHÁNY, KDYŽ JSEM BYL ODDĚLEN OD SVÉ SMRTELNOSTI. A TY ZLOČINY... NĚCO STOJÍ. PRO TAKOVÉ, JAKO JSEM JÁ, JE V NIŽŠÍCH SFÉRÁCH URČENÉ MÍSTO. JE TO... DRUH TRESTU.~ */ GOTO 483
END

IF ~~ THEN BEGIN 483 // from: 482.0
  SAY #68331 /* ~"Ale já... já *nechci*, abys šel."~ */
  IF ~~ THEN REPLY #68332 /* ~NEZAPOMENU, JAK MOC JSI PRO MĚ BYLA OCHOTNÁ OBĚTOVAT, ANNAH. ~ */ GOTO 484
END

IF ~~ THEN BEGIN 484 // from: 483.0
  SAY #68333 /* ~Annah přikývla. Vypadá to, že chce ještě něco říct, ale mlčí. Nevyslovené myšlenky zůstávají v její mysli, snaží se protlačit ven.~ */
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68334 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68335 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68336 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68337 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68338 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68339 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68493 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68494 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68495 /* ~NEPOTŘEBUJU TVÁ SLOVA, ABYCH POZNAL TVÉ SRDCE,  SBOHEM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #9 ~  Global("Fortress_Annah","GLOBAL",4)
~ THEN BEGIN 485 // from:
  SAY #68410 /* ~Oči Annah se kovově zatřpytily. Přikývla. "Budu stát vedle tebe."~ */
  IF ~~ THEN REPLY #68411 /* ~"Tak to tedy udělejme..."~ */ EXIT
END
