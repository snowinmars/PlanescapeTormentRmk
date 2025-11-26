// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUINT~

IF ~  Global("Quint_Item","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #2833 /* ~"Heh. Díky. Co chceš?"~ */
  IF ~~ THEN REPLY #2834 /* ~"Chci si promluvit o kšeftě."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19039 /* ~"Mám pro tebe nějaké otázky."~ */ GOTO 1
  IF ~~ THEN REPLY #19040 /* ~"Nic. Sbohem, Quinte."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1 3.5 4.1 6.1 7.1 8.1 9.0
  SAY #19041 /* ~"Co chceš vědět?"~ */
  IF ~~ THEN REPLY #19042 /* ~"Pověz mi zase o sobě."~ */ GOTO 2
  IF ~~ THEN REPLY #19043 /* ~"Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 3
  IF ~~ THEN REPLY #19044 /* ~"Pověz mi o tomto místě."~ */ GOTO 9
  IF ~~ THEN REPLY #19045 /* ~"Nic. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19046 /* ~"Quint. Nákup a prodej. Seženeš všechno. Ty chceš?"~ */
  IF ~~ THEN REPLY #19047 /* ~"Pojďme obchodovat."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19048 /* ~"Ještě ne. Odpověz mi na nějaké další otázky."~ */ GOTO 1
  IF ~~ THEN REPLY #19049 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.0 6.0 7.0 8.0
  SAY #19050 /* ~"Jako kdo?"~ */
  IF ~~ THEN REPLY #19051 /* ~"Pharod."~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #19052 /* ~"Annah."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #19053 /* ~"Annah."~ */ GOTO 6
  IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN REPLY #19054 /* ~"Marta."~ */ GOTO 7
  IF ~  GlobalGT("Know_Ojo","GLOBAL",0)
~ THEN REPLY #19055 /* ~"Ojo."~ */ GOTO 8
  IF ~~ THEN REPLY #19056 /* ~"Zapomeň na to. Mám nějaké jiné otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #19057 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19058 /* ~"Starej chromajzlík, heh? Postavil tohle místo, vládce podsvětí, udělal mě, budeme obchodovat, heh?"~ */
  IF ~~ THEN REPLY #19059 /* ~"Dobrá. Řekni mi o někom jiném."~ */ GOTO 3
  IF ~~ THEN REPLY #19060 /* ~"Mám nějaké jiné otázky."~ */ GOTO 1
  IF ~~ THEN REPLY #19061 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #19062 /* ~Při letmém pohledu na Annah se mu trochu zachvěla sanice. "Půvabná dívka, příjemná dívka, bystrá dívka, heh? Tvrďačka." Zvedl ruce, aby ukázal, že to nemyslí ve zlém.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #19063 /* ~"Pharodův ideál; dělá nebezpečné věci, heh? Je bystrá. Špičatý jazyk." Podrbal si hlavu, jako kdyby si vzpomínal na nějaké dřívější zranění. "Nepřibližuj se, heh?"~ */
  IF ~~ THEN REPLY #19064 /* ~"Dobře. Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 3
  IF ~~ THEN REPLY #19065 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #19066 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY #19067 /* ~"Heh. Martě se vyhni. Pitomá švadlena. Sbírá všechny zuby a užitečné kousíčky z mrtvol, dává mi je a já ty maličkosti nahoře měním za jiné."~ */
  IF ~~ THEN REPLY #19068 /* ~"Dobře. Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 3
  IF ~~ THEN REPLY #19069 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #19070 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY #19071 /* ~"Jsem dojatý. Dobře žít a ušetřit, heh?"~ */
  IF ~~ THEN REPLY #19072 /* ~"Dobře. Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 3
  IF ~~ THEN REPLY #19073 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #19074 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY #19075 /* ~"Toto, heh? Vesnice. Dabus to jednou přemostil, už je to dávno, nepřemýšlej o tom. Sběrači jí vykopali, když hledali prachy v kopicích hadrů... já, náhodou jsem na to přišel, zatímco jsem obchodoval se Sběrači." Zakroutil obočím. "Dobré místo k získání nějaký škváry, heh? Smrt je dobrá pro obchod."~ */
  IF ~~ THEN REPLY #19076 /* ~"Aha. Mám pro tebe nějaké jiné otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #19077 /* ~"Ano. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN BEGIN 10 // from:
  SAY #19078 /* ~"Ty, heh? Ty máš to, co potřebuju?"~ */
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19079 /* ~"Cože jsi to hledal?"~ */ GOTO 11
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19080 /* ~"Ano. Tady to je."~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ GOTO 12
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19081 /* ~Lež: "Ne, ještě ne. Stále hledám."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_One","GLOBALLaw",-1)
~ GOTO 13
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19082 /* ~"Ne, ještě ne. Stále hledám."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #19083 /* ~"Nějaký přívěšek, heh? Nějaký náhrdelník s navlečenými dutými zuby. Najdi ho a ten čas ti za to bude stát, heh? Teď pokračuj." Věnuje se svým zásobám, evidentně tě ignoruje.~ */
  IF ~~ THEN REPLY #19084 /* ~"Dobře. Dělám na tom."~ */ EXIT
  IF ~~ THEN REPLY #66306 /* ~"Obchodujme."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 23.1 24.1
  SAY #19085 /* ~Předal jsi mu předmět a on ho pohladil, hledajíc na něm pozorně vrypy a škrábance. "Ty jsi svou část udělal, heh? Já udělám mou." Podal ti váček, ve kterém zvonily mince. "Teď jsme si kvit. Cokoliv potřebuješ, obrať se na Quinta, heh?" Odvrátil se od tebe, zaujat svým přírůstkem.~ */
  IF ~~ THEN REPLY #19086 /* ~"Obchodujme."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66304 /* ~"Sbohem, Quinte."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 10.3
  SAY #19087 /* ~Jeho prasečí obličej se protáhnul. "Ah, srdce starého Quinta je zlomené. Vrať se, až to najdeš, heh?" Odvrátil se od tebe a zabýval se svými věcmi.~ */
  IF ~~ THEN REPLY #19088 /* ~"Zodpověz mi nějaké otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #66305 /* ~"Obchodujme."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66307 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from: 13.0 15.2 16.5 17.1 19.1 20.1 21.1 22.0 23.2 24.0 35.1 40.0 41.1 43.1 44.1 46.3 47.2 48.0 49.1
  SAY #19089 /* ~Quint si tě prohlédl. "Co chceš, heh?"~ */
  IF ~  !Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #19090 /* ~"Řekni mi znovu o sobě."~ */ GOTO 15
  IF ~~ THEN REPLY #19091 /* ~"Co děláš?"~ */ GOTO 46
  IF ~~ THEN REPLY #19092 /* ~"Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 16
  IF ~~ THEN REPLY #19093 /* ~"Pověz mi o tomto místě."~ */ GOTO 22
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19094 /* ~"Obchodujme."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66308 /* ~"Nic. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19095 /* ~"Quint. Nákup a prodej. K dostání cokoli. Chceš? Nebo bys pro mě snad chtěl udělat nějakou prácičku, heh?"~ */
  IF ~~ THEN REPLY #19096 /* ~"Jaký druh práce?"~ */ GOTO 23
  IF ~  Global("Quint_Trade","GLOBAL",0)
~ THEN REPLY #19097 /* ~"Mluvme o obchodech."~ */ GOTO 32
  IF ~~ THEN REPLY #19098 /* ~"Ještě ne. Odpověz mi na nějaké jiné otázky."~ */ GOTO 14
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19099 /* ~"Obchodujme."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66309 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 17.0 19.0 20.0 21.0
  SAY #19100 /* ~"Jako kdo?"~ */
  IF ~~ THEN REPLY #19101 /* ~"Pharod."~ */ GOTO 17
  IF ~  NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19102 /* ~"Annah."~ */ GOTO 18
  IF ~  !NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19103 /* ~"Annah."~ */ GOTO 19
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #19104 /* ~"Marta."~ */ GOTO 20
  IF ~  Global("Know_Ojo","GLOBAL",1)
~ THEN REPLY #19105 /* ~"Ojo."~ */ GOTO 21
  IF ~~ THEN REPLY #19106 /* ~"Zapomeň na to. Mám nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19107 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 46.1
  SAY #19108 /* ~"Starej chromajzlík, heh? Postavil tohle místo, vládce podsvětí, udělal mě, budeme obchodovat, heh?"~ */
  IF ~~ THEN REPLY #19109 /* ~"Dobrá. Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 16
  IF ~~ THEN REPLY #19110 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19111 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #19112 /* ~Při letmém pohledu na Annah se mu trochu zachvěla sanice. "Půvabná dívka, příjemná dívka, bystrá dívka, heh? Tvrďačka." Dal nahoru ruce, aby ukázal, že to nemyslí ve zlém.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #19113 /* ~"Pharodův ideál; dělá nebezpečné věci, heh? Je bystrá. Špičatý jazyk." Podrbal si hlavu, jako kdyby si vzpomínal na nějaké dřívější zranění. "Nepřibližuj se, heh?"~ */
  IF ~~ THEN REPLY #19114 /* ~"Dobrá. Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 16
  IF ~~ THEN REPLY #19115 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19116 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.3 46.0
  SAY #19117 /* ~"Heh. Martě se vyhni. Pitomá švadlena. Sbírá všechny zuby a užitečné kousíčky z mrtvol, dává mi je a já ty maličkosti nahoře měním za jiné."~ */
  IF ~~ THEN REPLY #19118 /* ~"Dobrá. Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 16
  IF ~~ THEN REPLY #19119 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19120 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.4
  SAY #19121 /* ~"Jsem dojatý. Dobře žít a ušetřit, heh?"~ */
  IF ~~ THEN REPLY #19122 /* ~"Dobrá. Pověz mi o někom jiném ze zde přítomných."~ */ GOTO 16
  IF ~~ THEN REPLY #19123 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19124 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.3
  SAY #19125 /* ~"Toto, heh? Vesnice. Dabus to jednou přemostil, už je to dávno, nepřemýšlej o tom. Sběrači jí vykopali, když hledali prachy v hadrových horách... já, náhodou jsem na to přišel, zatímco jsem obchodoval se Sběrači." Zakroutil obočím. "Dobré místo k získání nějaký škváry, heh? Smrt je dobrá pro obchod."~ */
  IF ~~ THEN REPLY #19126 /* ~"Aha. Mám pro tebe nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19127 /* ~"Ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.0
  SAY #19128 /* ~"Gris? Heh... Gris Sup mu říkají. Odešel asi před čtrnácti dny. Nikdo ho od té doby neviděl, ani o něm neslyšel. Katakomby ho zřejmě dostaly, tam dole v temnotách je mnoho věcí, heh... neštěstí, že by byl Gris v knize mrtvých... dobrej sběrač, heh. Temné srdce. Měl čich na nové krypty. Také měl něco mého. Najdi ho, přines mi to zpět a vyděláš si, heh? Dám ti prachy a hromadu krámů, heh?"~ */
  IF ~~ THEN REPLY #19129 /* ~"Domluveno."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",1)
~ JOURNAL #66300 /* ~Quint mě požádal, ať získám jeden jeho předmět od Sběrače jménem Gris, který zmizel před dávným časem v katakombách. ~ */ GOTO 24
  IF ~  PartyHasItem("PSCharm")
~ THEN REPLY #19130 /* ~Ukaž mu přívěšek, který jsi našel u domu Marty: "Oh, tato věc?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Quint mě požádal, ať získám jeden jeho předmět od Sběrače jménem Gris, který zmizel před dávným časem v katakombách. Ukázal jsem mu amulet, který jsem našel u Martyina domu a on mi potvrdil, že je to jeho.~ */ GOTO 12
  IF ~~ THEN REPLY #19131 /* ~"Budu o tom přemýšlet. Zodpověz mi nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #66301 /* ~"Promyslím si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #19132 /* ~Zašňupal, vypadal skoro šťastně. "Je to nějaký otrávený přívěšek, náhrdelník z dutých zubů. Všude, kde je Gris, ho pravděpodobně najdeš. Dej mi vědět, heh?"~ */
  IF ~~ THEN REPLY #19133 /* ~"Jistá věc. Mám pár dalších otázek..."~ */ GOTO 14
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19134 /* ~Ukaž mu přívěšek, který jsi našel u domu Marty: "Oh, tato věc?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Quint mě požádal, ať získám jeden jeho předmět od Sběrače jménem Gris, který zmizel před dávným časem v katakombách. Ukázal jsem mu amulet, který jsem našel u Martyina domu a on mi potvrdil, že je to jeho.~ */ GOTO 12
  IF ~~ THEN REPLY #66303 /* ~"Udělám to. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 25 // from:
  SAY #19135 /* ~Vidíš malého muže s tlustým obličejem, který je obalen špínou a depresí. Smrdí a má zkažené zuby. Supí, jak si tě prohlíží od hlavy k patě, a říká, "Já jsem Quint. Jsi tu nový?"~ */
  IF ~~ THEN REPLY #19136 /* ~"Kdo to chce vědět?"~ */ GOTO 26
  IF ~~ THEN REPLY #19137 /* ~"Ano."~ */ GOTO 29
  IF ~~ THEN REPLY #19138 /* ~"Ne, jsem tu už nějakou chvíli."~ */ GOTO 42
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #19139 /* ~"Já, heh? Ty nový?"~ */
  IF ~~ THEN REPLY #19140 /* ~"Ano."~ */ GOTO 29
  IF ~~ THEN REPLY #19141 /* ~"Ne."~ */ GOTO 42
  IF ~~ THEN REPLY #19142 /* ~"To není tvá starost."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #19143 /* ~"Má starost. Ty nový?"~ */
  IF ~~ THEN REPLY #19144 /* ~"Ano."~ */ GOTO 29
  IF ~~ THEN REPLY #19145 /* ~"Ne."~ */ GOTO 42
  IF ~~ THEN REPLY #19146 /* ~"Jdi do prdele, jasný?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2
  SAY #19147 /* ~"Heh, nápodobně! Vypadni!"~ */
  IF ~~ THEN REPLY #19148 /* ~"Cokoli."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.1 26.0 27.0
  SAY #19149 /* ~Podezíravě na tebe hledí. "Prodáváš, nebo obchoduješ? Heh?"~ */
  IF ~~ THEN REPLY #19150 /* ~"Ano."~ */ GOTO 30
  IF ~~ THEN REPLY #19151 /* ~"Prodávám."~ */ GOTO 30
  IF ~~ THEN REPLY #19152 /* ~"Obchoduju."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1 29.2
  SAY #19153 /* ~"Oči se mu ještě více zúžily. "Obchoduješ, heh? Se mnou? Nebo se všemi, troubo? Tak jak? Heh?"~ */
  IF ~~ THEN REPLY #19154 /* ~"S tebou."~ */ GOTO 31
  IF ~~ THEN REPLY #19155 /* ~"Se všemi."~ */ GOTO 39
  IF ~~ THEN REPLY #19156 /* ~"S kýmkoliv chci, tupče."~ */ GOTO 39
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #19157 /* ~"Děláš si ze mě legraci? Ze mě? Heh?"~ */
  IF ~~ THEN REPLY #19158 /* ~"Jo, právě s tebou."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19159 /* ~"Ne, s každým."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 15.1 31.0 36.2 37.0
  SAY #19160 /* ~"Tak jak, heh? Dohodneme se, heh?"~ */
  IF ~~ THEN REPLY #19161 /* ~"Dobře."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19162 /* ~"Ještě o něco se zajímáš?"~ */ GOTO 33
  IF ~~ THEN REPLY #19163 /* ~"Za co obvykle měníš?"~ */ GOTO 36
  IF ~~ THEN REPLY #19164 /* ~"Ve skutečnosti mě to nezajímá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY #19165 /* ~"Cokoliv zajímavého, heh?" Usmívá se. "Hledal jsi něco?"~ */
  IF ~~ THEN REPLY #19166 /* ~"Podívejme se, co tu máme."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #19167 /* ~"Nějaký deník."~ */ GOTO 34
  IF ~~ THEN REPLY #19168 /* ~"Ne. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #19169 /* ~"Deník, heh? Možná Zlatý list?"~ */
  IF ~~ THEN REPLY #19170 /* ~"Nevím."~ */ GOTO 35
  IF ~~ THEN REPLY #19171 /* ~"Pojďme probrat jiné obchody."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #19172 /* ~"Ani já." Krčí rameny.~ */
  IF ~~ THEN REPLY #19173 /* ~"Pak tedy pojďme mluvit o obchodech."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19174 /* ~"Dobrá. Odpověz mi na pár otázek."~ */ GOTO 14
  IF ~~ THEN REPLY #19175 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2
  SAY #19176 /* ~"Nitě, zuby, části tu i tam z milovaných zemřelých, heh? Dole v katakombách je mnoho mrtvol k chycení, přines zpátky několik kousků z mrtvých, urny, nějaké peníze, pár serepetiček... to je můj úděl, troubo. Sběrači žijící zde -- jdou dolů, získají nějaké nesmysly, nějaká těla, přinesou je zpátky Pharodovi, ukážou mu je, on si vezme svůj díl a potom obchoduje se mnou."~ */
  IF ~~ THEN REPLY #19177 /* ~"Co dělá Pharod s těmi těly?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #19178 /* ~"Co když se dohodnu rovnou s tebou?"~ */ GOTO 38
  IF ~~ THEN REPLY #19179 /* ~"Chci s tebou obchodovat."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19180 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #19181 /* ~"Jeho úmluva." Usmívá se. "Prodává mrtvé zpět Spalovačům, heh? Oni je znovu zakopou, my je zas vykopeme, heh? Heh!" Vydává dunivé chrčení, které může být smíchem.~ */
  IF ~~ THEN REPLY #19182 /* ~"Aha. Možná se zajímám o obchody."~ */ GOTO 32
  IF ~~ THEN REPLY #19183 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #19184 /* ~"Teď z toho nemůžu mít nic, heh? Možná, že je starej Quint trochu unavenej ze získávání Pharodovo zbytků a obchodování s těmi kousky mrtvol, když já mohu mít rovnou několik uren a vzácností, heh? Kdybys mi řekl, že to pochází od Pharoda, myslím, že bych neznal nic lepšího, heh? Věřil bych, že vše je poctivé, heh?"~ */
  IF ~~ THEN REPLY #19185 /* ~"Obchodujme tedy."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19186 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.1 30.2 31.1
  SAY #19187 /* ~Jeho tvář zrudla. "Zpomal, hlupáku! Zpomal! Zpomal! To je moje! Mám přednostní právo. Ty nemáš žádné! Řeknu Pharodovi, aby tě vykuchal jako rybu!"~ */
  IF ~~ THEN REPLY #19188 /* ~Lež: "Pharod říkal, že bych tu mohl obchodovat."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_Two","GLOBALLaw",-1)
SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #19189 /* ~"Ustup. Budu s tebou obchodovat."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #19190 /* ~"Já ho zabiju! Říká, 'Quinte, kamaráde, uhni,' vybuchnul a řekl strupovitému blbovi, jako ty, co si o něm myslí. Neschopný mizera! Heh!"~ */
  IF ~~ THEN REPLY #19191 /* ~"To jsou zlomy, huh? Mám pro tebe nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19192 /* ~"Tak chceš obchodovat, nebo ne?"~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19193 /* ~"Je skutečný burzián. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #19194 /* ~Tvář se mu trochu odbarvila. "Fajn. Heh." Utřel si pot z čela. "Ty chceš obchodovat, heh?"~ */
  IF ~~ THEN REPLY #19195 /* ~"Ano. Pojďme obchodovat."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19196 /* ~"Vlastně mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19197 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 25.2 26.1 27.1
  SAY #19198 /* ~"Jo? Já tě vidím poprvé, moulo." Odfrkl si. "Jsem tu už chvíli. Právo prvního, víš? Heh?"~ */
  IF ~~ THEN REPLY #19199 /* ~"Jo, dobře, jsem tu už dlouhou dobu. Tak už nemusíš hledat."~ */ GOTO 43
  IF ~~ THEN REPLY #19200 /* ~"Cože?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19201 /* ~"Vyhledáváš problémy, troubo, mám na své straně Pharoda... ty? Ty nemáš nic, než jizvy."~ */
  IF ~~ THEN REPLY #19202 /* ~"Chceš bojovat, nebo obchodovat?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19203 /* ~"Cokoliv. Jen mi odpověz na pár otázek, velikáne."~ */ GOTO 14
  IF ~~ THEN REPLY #19204 /* ~"Nemám ti co říct."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY #19205 /* ~"Jseš hluchej nebo blbej? Řekl jsem právo prvního, tupče. Já obchoduju, ty ne... nebo jedině se mnou. Heh?"~ */
  IF ~~ THEN REPLY #19206 /* ~"Chceš bojovat, nebo obchodovat?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19207 /* ~"Cokoliv. Jen mi odpověz na pár otázek, velikáne."~ */ GOTO 14
  IF ~~ THEN REPLY #19208 /* ~"Nemám ti co říct."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.0 44.0
  SAY #19209 /* ~"Budu obchodovat, heh? Jsem obchodník, ne bojovník." Odfrkl si.~ */
  IF ~~ THEN REPLY #19210 /* ~"Pak tedy obchodujme."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19211 /* ~"Nejdříve mi odpověz na nějaké otázky..."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 14.1
  SAY #19212 /* ~"Čekám až mi Marta a Pharod dodají zboží."~ */
  IF ~~ THEN REPLY #19213 /* ~"Marta?"~ */ GOTO 20
  IF ~~ THEN REPLY #19214 /* ~"Pharod?"~ */ GOTO 17
  IF ~~ THEN REPLY #19215 /* ~"Jaké zboží?"~ */ GOTO 47
  IF ~~ THEN REPLY #19216 /* ~"Mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19217 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.2
  SAY #19218 /* ~"Zbytky z hrobů v katakombách."~ */
  IF ~~ THEN REPLY #19219 /* ~"Jaké zbytky?"~ */ GOTO 48
  IF ~~ THEN REPLY #19220 /* ~"Katakomby?"~ */ GOTO 49
  IF ~~ THEN REPLY #19221 /* ~"Mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19222 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0 49.0
  SAY #19223 /* ~"Zuby, hadry z mrtvol, kousky, které vytáhli z těl, nějaké mince, které našli v obvazech, heh. Lidé platí víc, než bys myslel, heh?"~ */
  IF ~~ THEN REPLY #19224 /* ~"Aha. Mám pro tebe nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19225 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY #19226 /* ~"Pod vesnicí. V té oblasti je mnoho nových těl a starých podzemních hrobek, protože se k nim předtím nikdo nedostal, že? Tato vesnice... nic moc o ní nevím. Málokdo ví o snadné cestě do katakomb a všech mrtvácích pod ní..." Lačně si pomlaskal. "Panenské místo, že?"~ */
  IF ~~ THEN REPLY #19227 /* ~"Jasně. Řekni mi o těch zbytcích..."~ */ GOTO 48
  IF ~~ THEN REPLY #19228 /* ~"Jasně. Mám nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #19229 /* ~"Jasně. Sbohem."~ */ EXIT
END
