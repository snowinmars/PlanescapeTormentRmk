// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAGRIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAGRIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #54182 /* ~Vidíš velké stvoření; na výšku má tak pět metrů. Z masivního torza vybíhají čtyři paže... dvě končí kleštěmi, dvě rukama s dlouhými drápy. Hlava připomíná psí, s ostrými tesáky a fialovýma očima. Klidně a upřeně tě sleduje.~ */
  IF ~~ THEN REPLY #57165 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #57166 /* ~Ignoruj to.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57167 /* ~Pohled stvoření ani na chvíli nezakolísal, stále na tebe zírá. Nakonec se ti v hlavě ozval hlas. "Já zdravím tebe, člověče. Jsem Agril-Shanak. Proč jsi tady?"~ */
  IF ~~ THEN REPLY #57168 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57169 /* ~"To nic. Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.2 5.2 6.2 7.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 23.0
  SAY #57170 /* ~"Otázky... to mě baví. Můžeš se ptát."~ */
  IF ~~ THEN REPLY #57171 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #57172 /* ~"Co tady děláš?"~ */ GOTO 8
  IF ~~ THEN REPLY #57173 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 12
  IF ~~ THEN REPLY #57174 /* ~"Co mi můžeš říct o Doně Quisho?"~ */ GOTO 13
  IF ~~ THEN REPLY #57175 /* ~"Dona Quisho mě poslala, ať tě uvolním. Co z toho budu mít já, když to udělám?"~ */ GOTO 15
  IF ~~ THEN REPLY #57176 /* ~"Dona Quisho mě poslala, ať tě uvolním. Jak to mám udělat?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57177 /* ~"Jak jsem prohlásil, jsem Agril-Shanak. Co víc chceš vědět?"~ */
  IF ~~ THEN REPLY #57178 /* ~"Co jsi zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #57179 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57180 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57181 /* ~"Někteří mi říkají fiend... někteří přítel. Jsem Agril-Shanak. Jsem tanar'ri. Dosáhl jsem svého postavení tvrdou prací, zradou, krví a děsem. Jsem stvoření nočních můr." Ztichl.~ */
  IF ~~ THEN REPLY #57182 /* ~"Kdo ti říká 'fiend'?"~ */ GOTO 6
  IF ~~ THEN REPLY #57183 /* ~"Kdo ti říká 'přítel'?"~ */ GOTO 5
  IF ~~ THEN REPLY #57184 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57185 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 6.0
  SAY #57186 /* ~"Ti, kdož touží po moci mě často vidí jako prostředek k jejímu dosažení. Ti mě nazývají přítelem."~ */
  IF ~~ THEN REPLY #57187 /* ~"Kdo ti říká 'fiend'?"~ */ GOTO 6
  IF ~~ THEN REPLY #57188 /* ~"To je dost vágní odpověď..."~ */ GOTO 7
  IF ~~ THEN REPLY #57189 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57190 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #57191 /* ~"Ignoranti, kteří se nedokáží přenést přes předsudky. Jejich krátkozrakost je nutí označovat mě takovým slovem."~ */
  IF ~~ THEN REPLY #57192 /* ~"Kdo ti říká 'přítel'?"~ */ GOTO 5
  IF ~~ THEN REPLY #57193 /* ~"To je dost vágní odpověď..."~ */ GOTO 7
  IF ~~ THEN REPLY #57194 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57195 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.1
  SAY #57196 /* ~"Ah, ale je to odpověď." Naklonil se k tobě. "A je to jediná odpověď, kterou ode mně dostaneš..."~ */
  IF ~~ THEN REPLY #57197 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57198 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #57199 /* ~"Očekávám svou svobodu. Možná jsi mi ji přišel darovat? Máš svitek..." Ukázal pařátem na pergamen, který ti dala Dona Quisho.~ */
  IF ~~ THEN REPLY #57200 /* ~"Jak to, že jsi tady uvězněn?"~ */ GOTO 9
  IF ~~ THEN REPLY #57201 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57202 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57203 /* ~"Nevím..." Dlouho mlčí, než se rozhodl pokračovat. "Byl jsem přivolán a odpověděl jsem na volání. Pak mě větší moc zachytila a já se dostal sem. Od té doby jsem tady uvězněn."~ */
  IF ~~ THEN REPLY #57204 /* ~"Kdo tě přivolal??~ */ GOTO 10
  IF ~~ THEN REPLY #57205 /* ~"Kdo tě zachytil?"~ */ GOTO 11
  IF ~~ THEN REPLY #57206 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57207 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #57208 /* ~"Znáš odpověď, držíš svitek v ruce. Byla to Dona Quisho."~ */
  IF ~~ THEN REPLY #57209 /* ~"Kdo tě uvěznil?"~ */ GOTO 11
  IF ~~ THEN REPLY #57210 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57211 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 14.0
  SAY #57212 /* ~"Nevím... Můj věznitel se mi neukázal."~ */
  IF ~~ THEN REPLY #57213 /* ~"Kdo tě přivolal?"~ */ GOTO 10
  IF ~~ THEN REPLY #57214 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57215 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY #57216 /* ~Ve své hlavě slyšíš smích. "Nejsem domorodec... nemohu o Curstu nic říct. Pro mě je to vězení - nic víc."~ */
  IF ~~ THEN REPLY #57217 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57218 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #57219 /* ~"Nevím o ní nic kromě toho, že to ona mě přivolala... Ale to už víš, máš svitek..." Ukázal pařátem na pergamen, který ti dala Dona Quisho.~ */
  IF ~~ THEN REPLY #57220 /* ~"Proč tě přivolala?"~ */ GOTO 14
  IF ~~ THEN REPLY #57221 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57222 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #57223 /* ~"Nevím. Byl jsem zachycen, než jsem dorazil. Nikdy jsme spolu nemluvili." Ztichl.~ */
  IF ~~ THEN REPLY #57224 /* ~"Kdo tě zachytil?"~ */ GOTO 11
  IF ~~ THEN REPLY #57225 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57226 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #57227 /* ~"Má vděčnost nebude znát hranic. Položím ti k nohám samotné sféry... uvolni mě!"~ */
  IF ~~ THEN REPLY #57228 /* ~"Potřebuju něco konkrétnějšího než slova... pokud nemáš co dodat, půjdu pryč."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57229 /* ~"Velmi dobře..." Cítíš, jak se do tebe zabořují jeho oči. "Daruji ti magickou zbraň, zbraň velké moci, zbraň, kterou srazíš každého nepřítele na kolena... Dám ti Drtič Srdcí!"~ */
  IF ~~ THEN REPLY #57230 /* ~"Drtič Srdcí?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #57231 /* ~"Ano... Ta zbraň má pro mě velkou cenu, ale jsem ochotný ji obětovat za svou svobodu. Co říkáš? Uvolníš mě za Drtič Srdcí?"~ */
  IF ~~ THEN REPLY #57232 /* ~"Ano, řekni mi jak."~ */ GOTO 18
  IF ~~ THEN REPLY #57233 /* ~"Ne, to si nemyslím."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57234 /* ~"Popřemýšlím o tom. Sbohem."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #57235 /* ~Ukázal pařátem na okraj pentagramu. "Zkrátka prolom pentagram, stačí smazat jediný kousek..." Zadíval se na tebe, jeho oči se boří hluboko do tvé hlavy.~ */
  IF ~~ THEN REPLY #57236 /* ~Prolom pentagram.~ */ GOTO 19
  IF ~~ THEN REPLY #57237 /* ~"Ne, to si nemyslím."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"Promyslím si to. Sbohem."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #57239 /* ~Poklekl jsi a dotkl se pentagramu. Proud energie ti projel paží až k ramenu. Rychlým pohybem jsi kousek pentagramu umazal. Energie zmizela a ty slyšíš v mysli triumfální výkřik. "Konečně volný!"~ */
  IF ~~ THEN REPLY #57240 /* ~"Teď si vezmu Drtič Srdcí."~ */ DO ~GiveItemCreate("Grinder",Protagonist,0,0,0)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #57241 /* ~"Ano... Dodržím naši dohodu, člověče. Zbraň je tvá a volnost je má. Férový obchod..." Chvíli se na tebe dívá, pak se v jeho ruce objevila rezavá sekera. Nabídnul ti ji. "Nevypadá nic moc, uznávám... ale je velice mocná."~ */
  IF ~~ THEN REPLY #57242 /* ~Vezmi si sekeru.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 28.0
  SAY #57243 /* ~"Prokázal jsi mi velkou službu a proto tě z vděčnosti nezabiju." Zamířil na tebe pařátem. "Ale věz toto. Pokud se znovu setkáme, bude to tvůj poslední den. Sbohem."~ */
  IF ~~ THEN REPLY #57261 /* ~"Sbohem."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
SinisterPoof("S113SMOK",[843.428],1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1 18.1 24.1 27.1
  SAY #57245 /* ~"Hraješ si se mnou... pokud mě nechceš uvolnit, tak odejdi!"~ */
  IF ~~ THEN REPLY #57246 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 25 26 even though they appear after this state */
~  True()
~ THEN BEGIN 23 // from:
  SAY #57247 /* ~Vidíš glabrezu Agril-Shanaka. "Vrátil ses ke mně, člověče. Proč?"~ */
  IF ~~ THEN REPLY #57248 /* ~"Mám nějaké otázky...~ */ GOTO 2
  IF ~  GlobalGT("Free_Agril","GLOBAL",0)
~ THEN REPLY #57249 /* ~"Přemýšlel jsem o tvém uvolnění."~ */ GOTO 24
  IF ~~ THEN REPLY #57250 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #57251 /* ~"A uvolníš mě?" Upřeně tě sleduje.~ */
  IF ~~ THEN REPLY #57252 /* ~"Ano, řekni mi jak."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #57253 /* ~"Ne, to si nemyslím."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57254 /* ~"Promyslím si to. Sbohem."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",900)
~ THEN BEGIN 25 // from:
  SAY #57255 /* ~Vidíš velké stvoření; na výšku má tak pět metrů. Z masivního torza vybíhají čtyři paže... dvě končí kleštěmi, dvě rukama s dlouhými drápy. Hlava připomíná psí, s ostrými tesáky a fialovýma očima. Když tě monstrum uvidělo, vrhlo se do útoku.~ */
  IF ~~ THEN REPLY #57256 /* ~Braň se.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57257 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
Global("Free_Agril","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #57258 /* ~Vidíš glabrezu Agril-Shanaka. "Varoval jsem tě, že jestli se opět setkáme, bude to tvůj poslední den." Vrhl se do útoku.~ */
  IF ~~ THEN REPLY #57259 /* ~Braň se.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57260 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.5
  SAY #57235 /* ~Ukázal pařátem na okraj pentagramu. "Zkrátka prolom pentagram, stačí smazat jediný kousek..." Zadíval se na tebe, jeho oči se boří hluboko do tvé hlavy.~ */
  IF ~~ THEN REPLY #57236 /* ~Prolom pentagram.~ */ GOTO 28
  IF ~~ THEN REPLY #57237 /* ~"Ne, to si nemyslím."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"Promyslím si to. Sbohem."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #57239 /* ~Poklekl jsi a dotkl se pentagramu. Proud energie ti projel paží až k ramenu. Rychlým pohybem jsi kousek pentagramu umazal. Energie zmizela a ty slyšíš v mysli triumfální výkřik. "Konečně volný!"~ */
  IF ~~ THEN GOTO 21
END
