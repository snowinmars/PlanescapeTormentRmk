// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONTAGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONTAGU~

IF ~  Global("Montague","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #43991 /* ~Tento hezký mladý muž, zřejmě ponořen do svých myšlenek, je zamračený a má lehce svraštělé rty.~ */
  IF ~~ THEN REPLY #43992 /* ~"Zdravím..."~ */ DO ~SetGlobal("Montague","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #43993 /* ~Nech jej s jeho myšlenkami.~ */ EXIT
END

IF ~  GlobalGT("Montague","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #43994 /* ~Tento mladý muž vypadá, že má ještě stále problémy. Když se blížíš, zdraví tě. "Ještě jednou tě zdravím. Něco ode mě potřebuješ?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66154 /* ~"Ty jsi Montague? Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66155 /* ~"Ty jsi Montague? Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66156 /* ~"Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66157 /* ~"Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #43995 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #43996 /* ~"Nic, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #43997 /* ~"Tebe taky zdravím. Co ode mě potřebuješ?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66152 /* ~"Ty jsi Montague? Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66153 /* ~"Ty jsi Montague? Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #43998 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #43999 /* ~"Nic, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.2 4.4 5.1 6.1 7.1 8.2 9.1 10.1 11.1 12.1 13.2 15.0 16.0 17.2 39.0 40.0
  SAY #44000 /* ~"Ano?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
~ THEN REPLY #44001 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Montague","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Montague","GLOBAL",1)
~ THEN REPLY #44002 /* ~"Ještě jednou, kdo jsi?"~ */ GOTO 4
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66158 /* ~"Ty jsi Montague? Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66159 /* ~"Ty jsi Montague? Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44003 /* ~"Chci s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44004 /* ~"Chci s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #44005 /* ~"Co tady děláš?"~ */ GOTO 7
  IF ~~ THEN REPLY #44006 /* ~"Mám nějaké otázky ohledně tohoto místa..."~ */ GOTO 39
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #44007 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 40
  IF ~~ THEN REPLY #44008 /* ~"Nic, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #44009 /* ~"Jmenuji se Montague, příslušník Vnímavých."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #52994 /* ~"Montague... Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #52995 /* ~"Montague... Potřebuju s tebou mluvit o Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #44010 /* ~"Příslušník?"~ */ GOTO 5
  IF ~~ THEN REPLY #44011 /* ~"Vnímavých?"~ */ GOTO 6
  IF ~~ THEN REPLY #44012 /* ~"Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44013 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.0
  SAY #44014 /* ~"Nebo jinak 'člen,' jestli chceš."~ */
  IF ~~ THEN REPLY #44016 /* ~"Řekl jsi 'Vnímavých?'"~ */ GOTO 6
  IF ~~ THEN REPLY #44017 /* ~"Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44018 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3 5.0
  SAY #44015 /* ~"Nebo jinak... 'Společnosti vjemu.' Sigilského společenství... toho největšího. Jestli se chceš dovědět více o Vnímavých, promluv si se Splinterem. Najdeš jej uvnitř budovy, hned u vchodu při vstupu."~ */
  IF ~~ THEN REPLY #44019 /* ~"Řekl jsi 'příslušník'?"~ */ GOTO 5
  IF ~~ THEN REPLY #44020 /* ~"Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44021 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.6
  SAY #44022 /* ~"Pracuji jako asistent pro jednoho ze správců společenství. Ačkoliv jsem zjistil, že teď více než v minulosti jsem zamotán do jedné z podivných cest života."~ */
  IF ~~ THEN REPLY #44023 /* ~"A tou je...?"~ */ GOTO 8
  IF ~~ THEN REPLY #44025 /* ~"Aha. Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44026 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #44024 /* ~"Problémy s ženskou rozmanitostí."~ */
  IF ~~ THEN REPLY #44027 /* ~"Konkrétně, jaký problém?"~ */ GOTO 10
  IF ~~ THEN REPLY #44028 /* ~"Ty jsi žena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44029 /* ~"Aha. Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44030 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #44031 /* ~Mladý muž se na tebe dlouze zadíval. "Ne."~ */
  IF ~~ THEN REPLY #44032 /* ~"Konkrétně, jaký problém?"~ */ DO ~SetGlobal("Montague","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY #44033 /* ~"V každém případě, mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44034 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #44035 /* ~"Nevím, co ji trápí. Zkoušel jsem ji rozveselit. Nevím, v čem by mohla být potíž."~ */
  IF ~~ THEN REPLY #44036 /* ~"Co se mezi vámi dvěma děje?"~ */ GOTO 11
  IF ~~ THEN REPLY #44037 /* ~"To je dost špatné. Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44038 /* ~"Hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #44039 /* ~"Nebýt tohoto období rozladěnosti a jednotvárnosti, všechno je skvělé! Všechno v našem okolí je poklidné... naše rodiny jsou s naším potencionálním svazkem více než spokojené a její sourozenci mě milují. Není tu žádný problém."~ */
  IF ~~ THEN REPLY #44040 /* ~"Hmm. Možná to je problém: žádné problémy."~ */ GOTO 12
  IF ~~ THEN REPLY #44041 /* ~"To je dost špatné. Mám další otázky.."~ */ GOTO 3
  IF ~~ THEN REPLY #44042 /* ~"Doufám, že se to vyřeší. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44043 /* ~"Jak to myslíš, že žádné problémy jsou problémem? 'Žádám tě, abys mluvil jasněji."~ */
  IF ~~ THEN REPLY #44045 /* ~"Možná chce váš vztah více okořenit."~ */ GOTO 13
  IF ~~ THEN REPLY #44046 /* ~"Nevadí, mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44047 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #44048 /* ~"Jak bys mohl vědět co si přeje?!" Začíná se rozčilovat. "Milujeme se a milujeme se bezpodmínečně, bez žádné odporné nebo jedovaté přetvářky, která se projevuje v každé mladé lásce. Nazývám tě, nazývám tě podlou sketou a hlupákem!"~ */
  IF ~~ THEN REPLY #44049 /* ~"Zadrž... uklidni se."~ */ GOTO 14
  IF ~~ THEN REPLY #44050 /* ~"Jsi blázen, že se mnou chceš bojovat, ale já ti to splním..."~ */ DO ~SetGlobal("Montague_Problem","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44051 /* ~"Teď už dost s urážkami, chlapče. Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44052 /* ~"Jazyk za zuby, nebo ti jej vyrvu z úst. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44053 /* ~"To je mi líto... 'byla to chvilková indispozice, že jsem tak mluvil. Nabízím ti svou omluvu, promiň."~ */
  IF ~~ THEN REPLY #44054 /* ~"Nemysli na to. Na tom nesejde."~ */ GOTO 15
  IF ~~ THEN REPLY #44055 /* ~"Ovládej se. Bojovat se mnou by byla největší chyba jakou bys kdy udělal."~ */ GOTO 16
  IF ~~ THEN REPLY #44056 /* ~Ignoruj jej a jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44057 /* ~"Jsi opravdu shovívavý."~ */
  IF ~~ THEN REPLY #44058 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44059 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #44060 /* ~"Už se tedy budu ovládat."~ */
  IF ~~ THEN REPLY #44061 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44062 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.0 1.1 1.2 1.3 2.0 2.1 3.2 3.3 3.4 3.5 4.0 4.1
  SAY #44063 /* ~"Ach?" Zmateně a nedůvěřivě se na tebe podíval.~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44064 /* ~"Zaslechl jsem ji v Nevěstinci. Víš.. má s někým poměr."~ */ GOTO 18
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44065 /* ~"Vyžaduji její lásku. A požaduji, abys odvolal své falešné tvrzení o lásce, než tě rozsekám na malé kousíčky."~ */ GOTO 34
  IF ~~ THEN REPLY #44066 /* ~"Vlastně je to jedno. Mám nějaké další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44067 /* ~"Myslím, že si o ní promluvíme později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44068 /* ~"Lžeš. Než prohlásím tvé tvrzení za pravdivé, předlož mi o tom důkaz."~ */
  IF ~  PartyHasItem("LoveLtr")
~ THEN REPLY #44069 /* ~"Taky jsem našel tyto dopisy... tady, přečti si je."~ */ DO ~TakePartyItemNum("LoveLtr",1)
~ GOTO 20
  IF ~  !PartyHasItem("LoveLtr")
~ THEN REPLY #44070 /* ~Lež: "Viděl... viděl jsem ji, jak od něj čte dopisy."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Montague_1","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #44071 /* ~"Promluvíme si o tom později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #44072 /* ~"Já ne. Odmítám uznat důvěryhodnost těchto slov a obvinění... Musím mít ty dopisy ve svých rukou, než posoudím situaci. Dones mi ty dopisy a já si s tebou o tom promluvím ještě jednou."~ */
  IF ~~ THEN REPLY #44073 /* ~"Vrátím se, až je budu mít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #44074 /* ~Vzal si dopisy a přečetl je. "Běda! 'Je to pravda! Našla si jiného, který ji vášnivě miluje. Ach, myslím, že osudem Vnímavých je bolest srdce. Měl bych si najít další lásku a nechat jí tohoto jiného nápadníka, vzhledem k náruživosti jeho slov."~ */
  IF ~~ THEN REPLY #44075 /* ~"Počkej - to byl všechno jen trik."~ */ GOTO 21
  IF ~~ THEN REPLY #44076 /* ~"Tak tedy hodně štěstí. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #44077 /* ~"Jakže? O čem to mluvíš?"~ */
  IF ~~ THEN REPLY #44078 /* ~"Zkouší tě obelstít, abys byl vášnivější."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 22
  IF ~~ THEN REPLY #44079 /* ~"To nic... sbohem."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44080 /* ~"A proč jednoduše něco neřekne?"~ */
  IF ~~ THEN REPLY #44081 /* ~"Nemyslím si, že by něco řekla."~ */ GOTO 23
  IF ~~ THEN REPLY #44082 /* ~"Tímto způsobem to pro ni může být jednodušší."~ */ GOTO 32
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44083 /* ~"Zřejmě ne. Co bych měl udělat?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44084 /* ~"Zvrátit to, to je poctivá hra..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44085 /* ~"Zvrátit to, to je poctivá hra..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44086 /* ~"Nic, myslím."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.2 25.2 27.1 28.0 31.2 33.2 37.2
  SAY #44087 /* ~"Dobrá. Vyčkám, tedy, na odezvu."~ */
  IF ~~ THEN REPLY #44088 /* ~"Doufám, že to vyřešíš. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #44089 /* ~"Cokoliv chceš. Sbohem."~ */ GOTO 41
END

IF ~~ THEN BEGIN 25 // from: 23.0 33.0 37.0
  SAY #44090 /* ~"A jak?"~ */
  IF ~~ THEN REPLY #44091 /* ~"Řekni, že tě váš vztah už nudí - že už není dostatečně zajímavá."~ */ GOTO 26
  IF ~~ THEN REPLY #44092 /* ~"Řekni, že máš poměr."~ */ GOTO 27
  IF ~~ THEN REPLY #44093 /* ~"Nejsem si jistý. Měl by ses rozhodnout."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 25.0 31.0
  SAY #44094 /* ~"Říkáš, že bych měl předstírat nezájem, abych dosáhl jejího zájmu. Jistě, je to jen ironie. Mám souhlasit s tím co mi navrhuješ a pozorovat výsledky."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44095 /* ~"Hodně štěstí - doufám, že to dopadne dobře. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44096 /* ~"Už půjdu. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44097 /* ~"Hodně štěstí - doufám, že to dopadne dobře. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44098 /* ~"Už půjdu. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 27 // from: 25.1 31.1
  SAY #44099 /* ~"Taková rada by mohla být nebezpečná, ale nepochybně by ji to mohlo vybídnout, aby přezkoumala náš vztah a bojovala o jeho udržení. Domluveno. Jak bych to měl udělat?"~ */
  IF ~~ THEN REPLY #44100 /* ~"Postarám se o to. Řeknu, že jsem tě viděl s jinou ženou."~ */ GOTO 28
  IF ~~ THEN REPLY #44101 /* ~"Nejsem si jistý. Měl bys rozhodnout."~ */ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44102 /* ~"Tak dobře. Bude to, jak říkáš."~ */
  IF ~~ THEN REPLY #44103 /* ~"Rozmyslel jsem si to. Udělám nejlíp, když tě nechám se s tím vypořádat."~ */ GOTO 24
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44104 /* ~"Určitě jí to povím, až se znova setkáme. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44105 /* ~"Určitě jí to povím, až se znova setkáme. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 29 // from:
  SAY #44106 /* ~"Opravdu?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 465
END

IF ~~ THEN BEGIN 30 // from:
  SAY #44107 /* ~"Jo, tohle zní moc dobře."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44108 /* ~"Hodně štěstí. Doufám, že se to vyřeší. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44109 /* ~"Já se teď odporoučím. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44110 /* ~"Hodně štěstí - Doufám, že se to vyřeší. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44111 /* ~"Já se teď odporoučím. Sbohem."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 31 // from:
  SAY #44112 /* ~"Dobře... takže co, pane?"~ */
  IF ~~ THEN REPLY #44113 /* ~"Řekni, že už tě vztah nudí, že už není dost zajímavá."~ */ GOTO 26
  IF ~~ THEN REPLY #44114 /* ~"Řekni, že už něco máš."~ */ GOTO 27
  IF ~~ THEN REPLY #44115 /* ~"Nejsem si jistý. Měl by ses rozhodnout."~ */ GOTO 24
END

IF ~~ THEN BEGIN 32 // from: 22.1
  SAY #44116 /* ~"Ale... Já si myslel, že můžeme mluvit o všem."~ */
  IF ~~ THEN REPLY #44117 /* ~"Snad to bylo, svým způsobem, něco, o čem by se nemělo mluvit."~ */ GOTO 33
  IF ~~ THEN REPLY #44118 /* ~"Možná jsi se zmýlil."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #44119 /* ~"Co mi doporučuješ, abych udělal, pane?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44120 /* ~"Hodila by se změna..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44121 /* ~"Hodila by se změna..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44122 /* ~"Nic, myslím."~ */ GOTO 24
END

IF ~~ THEN BEGIN 34 // from: 17.1
  SAY #44123 /* ~"Miluješ ji tolik, že bys se mnou bojoval?"~ */
  IF ~~ THEN REPLY #44124 /* ~"Ano."~ */ GOTO 35
  IF ~~ THEN REPLY #44125 /* ~"Ne, nemiluji ji - ale budu pro ni bojovat."~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #44126 /* ~Chvíli tě studuje. "Vidím, že se v téhle záležitosti umíš rozpálit. Vášeň pramení z lásky. Miluješ ji, a já bych jí nemohl odepřít takovou lásku. Od této chvíle se zříkám nároku na ni; můžeš činit, co si přeješ."~ */
  IF ~~ THEN REPLY #44127 /* ~"Počkej chvilku... to celé byla lest."~ */ GOTO 36
  IF ~~ THEN REPLY #44128 /* ~"Ech... dobře. Tak sbohem."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.0
  SAY #44130 /* ~"Lest? O co jde?"~ */
  IF ~~ THEN REPLY #44131 /* ~"Chtěla tě přimět, aby ses pro ni popral."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 37
  IF ~~ THEN REPLY #44132 /* ~"Ale nic... Sbohem."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44133 /* ~"Ó! Ona si myslela, že má láska je tak bezmezná, že bych se utkal v pěstním souboji se strašlivě zjizveným mužem tvé postavy? Asi pokládá mou oddanost k ní za trochu větší. Takže... čeho měla docílit tahle lest?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44134 /* ~"Hodila by se změna..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44135 /* ~"Hodila by se změna..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44136 /* ~"Nic, myslím."~ */ GOTO 24
END

IF ~~ THEN BEGIN 38 // from: 34.1
  SAY #44137 /* ~"Ach, ale víš... to je vášeň. A vášeň pramení z lásky. Miluješ ji, a já bych jí nemohl odepřít takovou lásku. Znám velmi dobře její krásu, její mírnost, její cudnost, a vím jak může inspirovat muže k velkým činům. Od této chvíle se zříkám nároku na ni; můžeš činit, co si přeješ."~ */
  IF ~~ THEN REPLY #44138 /* ~"Počkej chvilku... to celé byla lest."~ */ GOTO 36
  IF ~~ THEN REPLY #44139 /* ~"Ech... dobře. Tak sbohem."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 3.7
  SAY #44140 /* ~"Městská hala? Uděláš dobře, když si promluvíš se Splinterem, přímo ve vstupu do téhle budovy."~ */
  IF ~~ THEN REPLY #44141 /* ~"Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44142 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.8
  SAY #44143 /* ~"Hmm... legendární temná čarodějnice, ne? Měl bys promluvit s Quellem, pane - ten je v těchhle věcech nejvíc informovaný. Je uvnitř haly. Ale kde přesně, to nevím."~ */
  IF ~~ THEN REPLY #44144 /* ~"Mám další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #44145 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.1 21.1 24.1 26.0 26.1 26.2 26.3 28.1 28.2 30.0 30.1 30.2 30.3 35.1 36.1 38.1
  SAY #44146 /* ~"A na brzkou shledanou, pane. Teď mám pár věcí, kterým se musím věnovat; kdybychom se ještě jednou potkali, můžeme o tom popovídat víc." Montague se uklonil a obrací se k odchodu.~ */
  IF ~~ THEN REPLY #44147 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END
