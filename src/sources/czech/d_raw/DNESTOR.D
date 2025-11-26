// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNESTOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DNESTOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30119 /* ~V koutě šíleně pobíhá stárnoucí muž v ušmudlaných a potrhaných šatech. Mastné bílé vlasy se mu ježí na všechny strany a jeho obličej, pokrytý špínou a stopami zaschlé krve, je pokrytý šedivým strništěm. Každých pár vteřin se zastaví a rozhání se kolem sebe. Mumlá si něco pod nos a nadává, jako by na něj útočil neviditelný protivník. Nevšiml si tvého příchodu.~ */
  IF ~~ THEN REPLY #30133 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #30134 /* ~Nechej muže být.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #30120 /* ~Starý muž přestal se svým šíleným pobíháním a nervózně se na tebe podíval. "Vidlička? Vidlička! Nemůžu jít domů bez své vidličky!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30135 /* ~"Hele... Arlo po mně chce, abych se tě zbavil. Takže teď budeš muset odejít."~ */ GOTO 5
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30136 /* ~"Tvoje... vidlička?"~ */ GOTO 6
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30137 /* ~"Tohle je ta vidlička, o které to mluvíš?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30138 /* ~"To nic. Sbohem.""~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #30121 /* ~Poté, co zaslechl tvůj hlas, se starý cvok otočil tváří k tobě. Zírá na tebe, oči se mu vyboulily, málem mu vypadávají z důlků. Chvíli si tě prohlíží a pak se vrací ke svém bláznění. "Ne! Ne! Neéeéeéeéeéeéé! To... To nejsi ty... tý tý! Ale brzo... ano, už brzo!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30139 /* ~"Tobě říkají Nestor?"~ */ GOTO 3
  IF ~~ THEN REPLY #30140 /* ~"Uh... s kým to mluvíš?""~ */ GOTO 3
  IF ~~ THEN REPLY #30141 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #30122 /* ~Vypadá to, že si dědek neuvědomuje tvou přítomnost. "Hóó hó Hóóó! Přijdeš! Ty přijdeš! A starej Nestor si na tebe počká! Hó hó! Jo přijdeš!"~ */
  IF ~~ THEN REPLY #30142 /* ~"Jsi v pořádku?"~ */ GOTO 5
  IF ~~ THEN REPLY #30143 /* ~"Čekáš? Na koho čekáš?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30144 /* ~"Hele... Arlo po mně chce, abych se tě zbavil. Takže teď budeš muset odejít."~ */ GOTO 5
  IF ~~ THEN REPLY #30145 /* ~"To nic. Sbohem.""~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #30123 /* ~"Čekám, ano..." Najednou padl na zem, jako by ho přemohlo vyčerpání. "Dlouho jsem čekal... čekal. "Zhluboka se nadechl a znovu vyskočil na nohy. "Budu čekat třeba věčnost, jestli budu muset! Slyšíš mě?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30146 /* ~"Hele... Arlo po mně chce, abych se tě zbavil. Takže teď budeš muset odejít."~ */ GOTO 5
  IF ~~ THEN REPLY #30147 /* ~"Jsi v pořádku?"~ */ GOTO 5
  IF ~~ THEN REPLY #30148 /* ~"Uh... no nechám tě být. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 3.0 3.2 4.0 4.1
  SAY #30124 /* ~"Nééééééé!" Nestorův obličej zrudnul a celé jeho tělo se třese odporem. "Moje vidlička! Nemůžu odejít bez vidličky! Hóó Hóó. Vidlička, vidlička, VIDLIČKA!"~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30149 /* ~"Tvoje... vidlička?"~ */ GOTO 6
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30150 /* ~"Dost keců, dědku. Máš nejvyšší čas odejít... tak či tak.""~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #30151 /* ~"Vidím, že takhle se nikam nedostaneme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 11.0
  SAY #30125 /* ~"Vidlička? Vidličko? Vidlička! Nemůžu jít domů bez své vidličky!" Nestorova zuřivost dosáhla násilného vrcholu. Začíná šíleně poskakovat nahoru a dolů, pak se najednou zarazil, sklonil hlavu a rozběhl se na velkou dřevěnou skříň, která stojí u zadní stěny místnosti. Narazil do ní hlavou. Síla nárazu srazila starého muže k zemi. Po krátké chvíli se zase zvedl s omámeným výrazem na tváři. "Je pryč. Ukradli ji. Nemůžu jít domů bez své vidličky.""~ */
  IF ~~ THEN REPLY #30152 /* ~"Ukradená, povídáš? Kdo ti vzal tvou vidličku?"~ */ GOTO 7
  IF ~~ THEN REPLY #30153 /* ~"Vidím, že takhle se nikam nedostaneme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30126 /* ~Nestor na tebe dlouho zírá, potom se začíná prohrabávat kapsami své špinavé tuniky. Po několika sekundách vytáhl něco, co vypadá jako  utržené ucho. Podle zápachu a barvy ucha odhaduješ, že už ho ten starý magor sebou nosí nějakou dobu. "Ty máš moji vidličku, že jo! Že jo! Hó hóóó!" Přidržel si ucho před ústy, jako by do něj mluvil. "Přines mi zpátky moji vidličku!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30154 /* ~"Jestli ti tu vidličku najdu, odejdeš?"~ */ GOTO 8
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30155 /* ~"Možná bych ti mohl pomoct."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nestor_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #30156 /* ~"Uh... Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30127 /* ~"Počkej! Počkej! Počkej! Hóó Hóó!" Divoce třepe uchem a řve do něj. "Dokud ji nedoneseš! Dokud mi nevrátiš moji vidličku, abych mohl jít domů!"~ */
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30157 /* ~"Tohle je ta vidlička, o které mluvíš?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30158 /* ~"Dobře. Zkusím ti najít tvou vidličku. Sbohem."~ */ DO ~SetGlobal("Nestor_Quest","GLOBAL",1)
~ JOURNAL #29868 /* ~Slíbil jsem, že pomůžu Nestorovi, cvokovi z hotýlku, najít jeho vidličku.  Ten chudák mi připadá pěkně vyšinutej, když chodí kolem s uchem v kapse a mluví na něj, jako kdyby ho mohlo slyšet. Ale v podstatě si nemyslím, že by mohlo nějak uškodit, kdybych mu tu vidličku našel.~ */ EXIT
  IF ~~ THEN REPLY #30159 /* ~"Tak nic. Mám na práci důležitější věci, než hledat šílenci jídelní příbor. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #30128 /* ~"Nééééé! Nemůžu jít domů bez svojí vidličky!" Ustoupil od tebe, vrčí a cení zuby jako zvíře zahnané do kouta..~ */
  IF ~~ THEN REPLY #30160 /* ~Popadni ho.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_2","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #30161 /* ~"Hele, já ti nechci ublížit... ale *musíš* okamžitě odejít."~ */ GOTO 11
  IF ~~ THEN REPLY #30162 /* ~"Dobra, ať je po tvém. Sbohem." ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30129 /* ~Natáhl jsi se po něm, ale starý muž je na svůj věk překvapivě rychlý. Než ho stačíš pořádně  popadnout, vykroutil  se z tvého sevření a zabořil své zuby do tvé ruky. Bolestí jsi ucuknul. ~ */
  IF ~~ THEN REPLY #30163 /* ~"Dobře. Tak to uděláme drsným způsobem..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30164 /* ~"Hele, já ti nechci ublížit... ale *musíš* okamžitě odejít."~ */ GOTO 11
  IF ~~ THEN REPLY #30165 /* ~"Dobra, ať je po tvém. Sbohem." ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1
  SAY #30130 /* ~Nestor se pomalu uklidňuje, jeho vyvalené oči se zřejmě chystají k pláči. "Nemůžu jít domů. Nemůžu. Nemůžu. Nemůžu. Nemůžu jít bez vidličky."~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30166 /* ~"Tvoje... vidlička?"~ */ GOTO 6
  IF ~~ THEN REPLY #30167 /* ~"Vidím, že takhle se nikam nedostaneme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.2 8.0
  SAY #30131 /* ~Nestor rychle hrábnul po vidličce. "Moje vidlička! Moje vidlička! Vidlička! Hóó Hóó!" Vzrušeně poskakuje nahoru a dolů a mává vidličkou nad hlavou, opisujíc důmyslný vzor, jako by prováděl nějaký rituál. "Teď můžu jít domů! Sbohem! Hóó Hóó!" ~ */
  IF ~~ THEN REPLY #30168 /* ~"Sbohem, Nestore."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #30132 /* ~Nestor se otočil k odchodu, pak, jakoby ho něco napadlo, se otočil zpět k tobě a podal ti cár něčeho měkkého a gumového: utržené ucho. Po prozkoumání podivného daru jsi zjistil, že z něj ještě stále visí náušnice.~ */
  IF ~~ THEN REPLY #30169 /* ~Schovej si náušnici a ten kus shnilého masa zahoď..~ */ DO ~GiveItemCreate("ObEar",Protagonist,1,0,0)
SetGlobal("Nestor_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #28825 /* ~Vrátil jsem Nestorovi jeho vidličku. Ukázalo se, že byla klíčem k jistému portálu. Když ji získal nazpět, byl Nestor schopen vrátit se zase domů - ať už byl odkudkoliv. Zajímalo by mě, jak dlouho byl ten ubohý človíček ztracen v Sigilu, aniž by věděl, jak se dostat zpět.~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #61633 /* ~Nestor tě úplně ignoruje, jeho pohled je fixovaný na polici v zadní částí místnosti.~ */
  IF ~~ THEN REPLY #61634 /* ~Odejdi.~ */ EXIT
END
