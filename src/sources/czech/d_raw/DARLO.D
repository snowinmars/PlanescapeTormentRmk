// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DARLO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30049 /* ~Vidíš nevysokého plešatého muže stojícího v něčem, co asi slouží jako vstupní hala  tohohle zchátralého hostince. Jeho husté obočí je vrásčité, jak se soustředěně snaží sundat nějaký strup ze svého velkého cibulovitého nosu.~ */
  IF ~~ THEN REPLY #30077 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~~ THEN REPLY #30078 /* ~Nechej muže, ať pokračuje ve své hygieně a prohlédni si pokoj.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30050 /* ~Muž se vůbec neobtěžuje se na tebe podívat. Místo toho stále šilhá na svůj nos. "Jó? Co chceš?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30079 /* ~"Můžu si tady odpočinout?"~ */ GOTO 4
  IF ~  Dead("Nestor")
~ THEN REPLY #30080 /* ~"Můžu si tady odpočinout?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30081 /* ~"Můžu si tady odpočinout?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30082 /* ~"Můžu si tady odpočinout?"~ */ GOTO 2
  IF ~~ THEN REPLY #30083 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #30084 /* ~"Omlouvám se, že jsem rušil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3 9.0
  SAY #30051 /* ~"Jasan, že můžeš, čéče... jestli na to máš. Pro nikoho to nejni zadarmo, kromě támdle starýho Nestora - a to jen páč nikdo není tak blbej, aby se do něj sral."~ */
  IF ~~ THEN REPLY #30085 /* ~"Dobrá tedy. Kolik stojí postel?"~ */ GOTO 4
  IF ~~ THEN REPLY #30086 /* ~"Pověz mi o tom... Nestorovi."~ */ GOTO 5
  IF ~~ THEN REPLY #30087 /* ~"To nic. Sbohem.""~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 9.5
  SAY #30052 /* ~"No nejni to fajn?" Obdařil tě sarkastickým žlutozubým úsměvem. "A sem si jistej, že něgdy ty vodpovědi najdeš. Ale já mám eště ňákej ten kšeft. Takže esli nechceš postel, tak ti doporoučuju prásknout do bot."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30088 /* ~"Aha. Můžu teda dostat postel?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30089 /* ~"Aha. Můžu teda dostat postel?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30090 /* ~"Aha. Můžu teda dostat postel?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30091 /* ~"Aha. Můžu teda dostat postel?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30092 /* ~"Aha. Tak si teda na chvíli odpočinu.""~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30093 /* ~"Tak to nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 2.0 3.0 3.1 3.2 5.1 6.2 7.1 9.1 9.2 9.3
  SAY #30053 /* ~"Bude to pět měděnejch." Otřel si špinavou ruku o ještě špinavější košili a pak ji natáhl dlaní vzhůru k tobě.~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30094 /* ~Dej mu pět měďáků a odpočiň si.~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #30095 /* ~"Sorry, nemám u sebe pět měďáků. Možná příště. Sbohem.""~ */ EXIT
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30096 /* ~"To nic. Sbohem.""~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #30054 /* ~"Nestor je támdleten starej v rohu." Ukázal palcem přes rameno, k zadní části místnosti. "Dávej si na něj bacha, čéče. Nemá to v kebuli okej. Furt něco mele o svý kostěný krabici a vidličce a tak. Bych byl docela rád, dyby se našel někdo, kdo by nás toho vola zbavil."~ */
  IF ~~ THEN REPLY #30097 /* ~"Proč se ho nezbavíš sám?""~ */ GOTO 6
  IF ~~ THEN REPLY #30098 /* ~"Tak nic. Kolik stojí postel?"~ */ GOTO 4
  IF ~~ THEN REPLY #30099 /* ~"To nic. Sbohem.""~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #30055 /* ~"Si myslíš, že sem to nezkoušel? Zkoušel! A čum, co sem z toho měl..." Naklonil obličej k tobě a ukazuje na krvácející strupy na nose. "Ten mizernej parchantův syn mi málem uhryznul frňák!"~ */
  IF ~~ THEN REPLY #30100 /* ~"Možná bych tě ho mohl zbavit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Arlo_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #30101 /* ~"Možná bych tě ho mohl zbavit... za malou odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Arlo_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #30102 /* ~"Tak nic. Kolik stojí postel?"~ */ GOTO 4
  IF ~~ THEN REPLY #30103 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #30056 /* ~"Víš co ti povim, tvrďáku? Estli mě toho vola ňák zbavíš, můžeš tady zvostávat zadarmo dykoli budeš ctít. Platí?"~ */
  IF ~~ THEN REPLY #30105 /* ~"To je fér. Udělám to.""~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",1)
~ JOURNAL #29872 /* ~Slíbil jsem, že pomůžu hostinskému Arlovi zbavit se jednoho starého bláznivého chlápka jménem Nestor. Vypadá to, že se mu usadil v tom jeho špinavým hotýlku a nikomu se nedaří ho vystrnadit.~ */ GOTO 8
  IF ~~ THEN REPLY #30107 /* ~"Tak nic. Kolik stojí postel?"~ */ GOTO 4
  IF ~~ THEN REPLY #30108 /* ~"Tak nic. Mám na práci důležitější věci. Jdu.""~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30073 /* ~"No tak už tady přestaň postávat jako blbec a makej!" Vrátil se ke škrábání svých strupů. "Cák nevidiš, že sem děsně zaměstnanej člověk, co?"~ */
  IF ~~ THEN REPLY #30109 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #30074 /* ~Arlo se nadšeně věnuje své oblíbené kratochvíli - škrábání strupů na svém nose. Když ses k němu přiblížil, kouknul na tebe koutkem oka. "A co chceš teďkonc?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30110 /* ~"Můžu si tady odpočinout?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30111 /* ~"Můžu si tady odpočinout?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30112 /* ~"Můžu si tady odpočinout?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30113 /* ~"Můžu si tady odpočinout?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30114 /* ~"Rád bych si na chvíli odpočinul."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30115 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #30116 /* ~"Omlouvám se, že jsem rušil. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Arlo_Quest","GLOBAL",1)
Dead("Nestor")
~ THEN BEGIN 10 // from:
  SAY #30075 /* ~"U všech Bohů a 'jich matek, čéče! Dyž sem řek, ať mě toho vola zbavíš, nemyslel sem, ať ho zapíšeš do knihy zdechlin!" Arlo na tebě nedůvěřivě zírá. "No... dohoda je dohoda. Můžeš tady bejt zadara - ale moc vítanej tady nejseš, abys věděl.""~ */
  IF ~~ THEN REPLY #30117 /* ~Odejdi.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Arlo_2","GLOBALGood",-1)
AddexperienceParty(250)
~ JOURNAL #29870 /* ~Udělal jsem, oč mě Arlo žádal a pomohl jsem mu zbavit se Nestora. Hostinský se zdál být lehce šokován nad způsobem, jakým jsem se toho starýho blázna zbavil, ale nicméně mi dovolil zdarma přespat.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #30076 /* ~"Takže Nestor táh domů, jo? No možná nebyl zas tak blbej." Poplácal tě po zádech. "Bych řek, že teď si tady konečně můžem vodpočnout. A ty kdykoli zadarmo, tvrďáku. Jojo."~ */
  IF ~~ THEN REPLY #30118 /* ~Odejdi.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #29869 /* ~Tím, že jsem pomohl Nestorovi najít jeho vidličku a vrátit se domů, jsem také splnil dohodu s Arlem. Arlo mi na oplátku řekl, že v jeho hostinci mohu kdykoliv zdarma přespat.~ */ EXIT
END
