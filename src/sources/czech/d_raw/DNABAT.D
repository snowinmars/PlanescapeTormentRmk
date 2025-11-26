// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNABAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DNABAT~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #49302 /* ~Vidíš muže s andělskou tváří, s očima přimhouřenýma, téměř zavřenýma, jako kdyby nebyl ochoten vidět hrůzy světa nebo jako by nenechával světu vidět hrůzy v něm - a přesto je jeho obličej zvrásněn liniemi úsměvu. Jak tě zdraví, zní jeho hlas přátelsky a apaticky. "Zdravím."~ */
  IF ~~ THEN REPLY #49303 /* ~"Měl bych pro tebe pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #49304 /* ~"Buď pozdraven a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #49305 /* ~"Co bys chtěl vědět?"~ */
  IF ~~ THEN REPLY #49306 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 2
  IF ~~ THEN REPLY #49307 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #49308 /* ~"Hledám dévu."~ */ GOTO 4
  IF ~~ THEN REPLY #49309 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #49310 /* ~"Cože, o taverně U Zrádcovy Brány? Vede ji támhle Poskvrněný Barse a je navštěvovaná lidmi, které zde můžeš vidět: Marquez, ex-Harmonium; Kitla, ex-zaměstnankyně; Dallan, ex-skoro-všechno a o *něm* mám v zásobě pár příběhů, které ti můžu někdy povědět; a Dona Quisho, jejíž příběh neznám... zatím."~ */
  IF ~~ THEN REPLY #49311 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #49312 /* ~"Hledám dévu."~ */ GOTO 4
  IF ~~ THEN REPLY #49313 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.1
  SAY #49314 /* ~"Já? Jsem Nabat. Bývalý vypravěč, teď už jenom prodávající příběhy po výčepech. Teď už jsem unavený. Možná ti povyprávím nějaký příběh později. Možná. Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #49315 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 2
  IF ~~ THEN REPLY #49316 /* ~"Hledám dévu."~ */ GOTO 4
  IF ~~ THEN REPLY #49317 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.1
  SAY #49318 /* ~Jeho tvář se zčeřila úsměvem. "Proč máš dojem, že bych ti o tom mohl cokoliv říct? Vážně... co jsi chtěl vědět?"~ */
  IF ~~ THEN REPLY #49319 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 2
  IF ~~ THEN REPLY #49320 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #49321 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #49322 /* ~Nabat se na tebe usměje. "Copak bys chtěl tentokrát?"~ */
  IF ~~ THEN REPLY #49323 /* ~"Jen jsem chtěl odpovědi na pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #49324 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 6 // from:
  SAY #49325 /* ~Vidíš muže s andělskou tváří, s očima přimhouřenýma, téměř zavřenýma, jako kdyby nebyl ochoten vidět hrůzy světa nebo jakoby nenechával světu vidět hrůzy v něm - a přesto je jeho obličej zvrásněn liniemi úsměvu. Jak tě zdraví, zní jeho hlas přátelsky a apaticky. "Zdravím. Slyšel jsem, že hledáš jistý Klíč."~ */
  IF ~~ THEN REPLY #49326 /* ~"To hledám."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49327 /* ~"Ano, ale teď zrovna ne. Měl bych pro tebe pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #49328 /* ~"Teď ne. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",3)
Global("Caretaker","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #49329 /* ~"Takže... jsi zpět. Chceš dostat třetí část Klíče?"~ */
  IF ~~ THEN REPLY #49330 /* ~"Ano."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49331 /* ~"Ano, ale teď zrovna ne. Měl bych pro tebe pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #49332 /* ~"Teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0 9.0 10.0
  SAY #49333 /* ~"Správce městské skládky je muž jménem Kyse. Vedou se zvěsti, že má spousty zlata ukrytého pod prkny v podlaze - a že jeden gang rváčů mu je plánuje sebrat. Mám své důvody k tomu, aby se tak nestalo. Jdi, promluv s Kysem a vytáhni z něj ten příběh. Udělej to a já ti dám ten Klíč. A jestli budeš mít zájem, můžu ti ukázat pár triků v plížení."~ */
  IF ~~ THEN REPLY #49334 /* ~"Dobrá. Ale nejdřív bych měl pár otázek."~ */ JOURNAL #47847 /* ~Nabat mi v krčmě U zrádcovy brány pověděl, co musím udělat, abych získal třetí část Klíče: U brány do Pustiny je správce, o kterém se povídá, že je bohatý člověk... a dál se povídá, že právě pro to bohatství dostane něčím přes hlavu.~ */ GOTO 9
  IF ~~ THEN REPLY #49335 /* ~"Dobrá. Sbohem."~ */ JOURNAL #47847 /* ~Nabat mi v krčmě U zrádcovy brány pověděl, co musím udělat, abych získal třetí část Klíče: U brány do Pustiny je správce, o kterém se povídá, že je bohatý člověk... a dál se povídá, že právě pro to bohatství dostane něčím přes hlavu.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.0
  SAY #49336 /* ~"Máš otázky? Výborně. Problémem je, uděláš to nebo ne? Až to uděláš, budeš mít Klíč, budeš se ptát a dostaneš odpovědi. Moc času nemáš."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49337 /* ~"Dobrá. Co mám udělat?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #49338 /* ~"Proč je to pro tebe tak důležité?"~ */ GOTO 10
  IF ~~ THEN REPLY #49339 /* ~"Cokoliv. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #49340 /* ~"Opravdu na tom záleží? Co kdybych ti řekl, že je to můj děda? Co kdybych řekl, že se chci pomstít lidem, co se jej chystají napadnout? Co kdybych řekl, že chci ty peníze pro sebe? Záleží na motivaci? Dostaneš co chceš - ten Klíč - a já z toho taky něco budu mít."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49341 /* ~"Dobrá. Co mám udělat?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49342 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #49343 /* ~Máš dojem, že jsi za těma přimhouřenýma očima ohodnocován. "Mé zdroje mi říkají, že jsi ještě nedokončil práci, kterou jsem ti uložil. Dodělej ji a dostaneš třetí část Klíče."~ */
  IF ~~ THEN REPLY #49344 /* ~"Odpovíš mi jen na pár otázek?"~ */ GOTO 12
  IF ~~ THEN REPLY #49345 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49346 /* ~Vzdychl. "Co bys chtěl slyšet? Chceš zjistit něco o mně? Jsem Nabat. Chceš získat nějaké informace o Curstu? Zeptej se lidí, kteří budou mít zájem. Chceš znát něco o této taverně? Je plná lidí, kteří byli zrazeni. Chceš se dozvědět něco o dévovi? Dokonči svůj úkol a jsi o krok blíž k jeho nalezení. Teď to běž dodělat, ať si můžeme všichni šťastně oddychnout." ~ */
  IF ~~ THEN REPLY #49347 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",5)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #49348 /* ~Jak jsi vešel, Nabat se na tebe zeširoka usmál. "Slyšel jsem, že jsi hotov. To znamená, že dostaneš třetí část Klíče." Jeho oči na malou chvíli zaplanou a pronese verš: "'...jejich úděl dán jest...'" Když se jeho oči vrátily do normálu, pokrčil rameny. "Nevalný to verš, obávám se... ale bude to muset stačit. Díky za pomoc. Další část Klíče je u Dallana. To je támhle ten s tou mladou přítelkyní. Nebo bych tě mohl naučit pár zlodějských triků..."~ */
  IF ~~ THEN REPLY #49349 /* ~"Odpovíš mi teď na pár otázek?"~ */ DO ~AddexperienceParty(43750)
SetGlobal("Curst_Key","GLOBAL",4)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat mi dal třetí část Klíče: "...jejich úděl dán jest...". Teď si mám promluvit s Dallanem. To je ten s mladou přítelkyní. ~ */ GOTO 14
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49350 /* ~"Vycvič mě v umění plížení."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat mi dal třetí část Klíče: "...jejich úděl dán jest...". Teď si mám promluvit s Dallanem. To je ten s mladou přítelkyní. ~ */ GOTO 20
  IF ~~ THEN REPLY #67170 /* ~"Děkuju. Sbohem."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat mi dal třetí část Klíče: "...jejich úděl dán jest...". Teď si mám promluvit s Dallanem. To je ten s mladou přítelkyní. ~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 16.0 17.0 18.0 19.0 22.0 24.1 25.1 26.0
  SAY #49352 /* ~"Proč ne? Teď se cítím být sdílný."~ */
  IF ~~ THEN REPLY #49353 /* ~"Proč jsi ode mě chtěl záchranu toho starce? Není snad toto město zrady?"~ */ GOTO 16
  IF ~~ THEN REPLY #49354 /* ~"Povídej mi o sobě."~ */ GOTO 17
  IF ~~ THEN REPLY #49355 /* ~"Řekni mi příběh."~ */ GOTO 18
  IF ~~ THEN REPLY #49356 /* ~"Řekni mi o tomto místě."~ */ GOTO 19
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49357 /* ~"Můžeš mě vycvičit v umění plížení?"~ */ GOTO 20
  IF ~~ THEN REPLY #67172 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",6)
GlobalGT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #49358 /* ~"Zase ty, ech? Co chceš tentokrát?"~ */
  IF ~~ THEN REPLY #49359 /* ~"Odpovědi na pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #49360 /* ~"Chci, abys mě vycvičil v umění plížení."~ */ GOTO 20
  IF ~~ THEN REPLY #67173 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #49361 /* ~"Bývali mým gangem. A pak mě udali, že jsem jim vzal peníze - i když jsem byl falešně obviněn. Já sám jsem zasadil zvěsti o Kysem - věděl jsem, že na to naletí a buď je někdo zlikviduje nebo po sobě nechají nějaký důkaz, který k nim přivede strážné. Buď jak buď, vyhrál jsem."~ */
  IF ~~ THEN REPLY #49362 /* ~"Aha... měl bych ještě pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #49363 /* ~"Pěkné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #49364 /* ~"Mé jméno je Nabat. Prostě Nabat. Přišel jsem sem před nějakým časem z Automaty, abych se podíval, zda tu nebudou lidé, kteří ocení vyprávění příběhů. Byl jsem stržen špatnou cháskou a zbytek, mno, zbytek je už historie."~ */
  IF ~~ THEN REPLY #49365 /* ~"Jak hluboká to historie. Měl bych ještě pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #49366 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY #49367 /* ~"Teď zrovna pracuji na příběhu o odplatě. Byl jsem inspirován, vždyť víš." Šibalsky se usmál. "Až budu hotov, pak ti jej možná budu vyprávět, ale ne dřív. Mám rád práci dokončenou, než ji předvádím."~ */
  IF ~~ THEN REPLY #49368 /* ~"Tedy dobrá. Odpověz na pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #49369 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.3
  SAY #49370 /* ~"Je takové, jaké jej vidíš, kromě částí, které nevidíš. Je to město plné zrádců, politiky a útoků zezadu. Je to domov těch nejhorších stránek lidské podstaty. Není pohledné. Doufám, že ses na Curst ptal metafyzicky, protože já *nejsem* průvodce."~ */
  IF ~~ THEN REPLY #49371 /* ~"To beru. Měl bych ještě jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #49372 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1 14.4 15.1
  SAY #67171 /* ~"Už ses někdy pokoutným uměním zabýval? Vybíral jsi cizí peněženky, plížil ses temnými chodbami tichounce, bez toho, že bys vydal jediný zvuk? Nebo tě musím učit všechno od začátku?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67191 /* ~"Už jsem to dělal dřív."~ */ GOTO 21
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67192 /* ~"Obávám se, že budeme muset začít od začátku."~ */ GOTO 23
  IF ~~ THEN REPLY #67193 /* ~"Víš co, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #67174 /* ~"Opravdu chceš změnit? Nemůžeš najednou bojovat a být zlodějem, to je ti doufám jasný."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #67196 /* ~"Já vím. Už nechci být bojovník. Potřebuju si trochu oprášit svoje znalosti podloudných triků."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #67197 /* ~"Já vím. Už nechci být mág. Potřebuju si trochu oprášit svoje znalosti podloudných triků."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~~ THEN REPLY #67198 /* ~"Ne, řek bych, že ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #67175 /* ~"Dobrá. Nechceš zapomenout základy, eh?"~ */
  IF ~~ THEN REPLY #67199 /* ~"Ne. Mám ještě pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #67200 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #67176 /* ~"Nežádáš o malý věci, co? Dobrá. Začněme. Nejdřív se podíváme, jak jsi pohyblivej. Postav si tudle dýku na špičku prstu a chvilku ji tak podrž." Hodil ti nůž.~ */
  IF ~  CheckStatGT(Protagonist,18,DEX)
~ THEN REPLY #67201 /* ~Zachyť dýku špičkou prstu.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,19,DEX)
~ THEN REPLY #67202 /* ~Chytni dýku za jílec a pak ji přehoď na špičku prstu.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #67203 /* ~Zkus chytit dýku.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #67177 /* ~Chytil jsi nůž špičkou prstu a zkušeným pohybem zápěstí jsi nůž roztočil. Nabat s úžasem sleduje dýku tančící na tvém prstu, čelist mu poklesla. "Ehm. Dobrá. Je vidět, že seš vážně rychlej. Opravdu chceš trénovat?"~ */
  IF ~~ THEN REPLY #67224 /* ~"Ano. Uč mě."~ */ GOTO 27
  IF ~~ THEN REPLY #67225 /* ~"Ne. Zapomeň na to. Odpověz mi na pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #67226 /* ~"Ne. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #67178 /* ~Chytil jsi dýku za jílec a na druhý pokus si ji vyvážil na ukazováku. "To ujde. To ujde. Vážně chceš trénovat?"~ */
  IF ~~ THEN REPLY #67227 /* ~"Ano. Uč mě."~ */ GOTO 27
  IF ~~ THEN REPLY #67228 /* ~"Ne. Zapomeň na to. Odpověz mi na pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #67229 /* ~"Ne. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #67179 /* ~Zkusil jsi chytit dýku, ale odrazila se ti o dlaně a jak ses po ní sápal, podařilo se ti pořezat si prsty. "Je mi líto, příteli. Je jasné, že nemáš reflexy, které jsou na takové řemeslo třeba. Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #67230 /* ~"Odpověz mi na pár otázek."~ */ GOTO 14
  IF ~~ THEN REPLY #67231 /* ~"Ne. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0 25.0
  SAY #67180 /* ~"Dobrá tedy. Za prvý jsou tady nějaký základy, který musíš zvládnout: plížení, skrývání, páčení zámků, hledání a odzbrojení pastí a odhad nepřátelských slabin."~ */
  IF ~~ THEN REPLY #67232 /* ~"Pokračuj..."~ */ GOTO 28
  IF ~~ THEN REPLY #67233 /* ~"Myslím že základům rozumím. Pojďme trénovat."~ */ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67181 /* ~"Jeden z nejdůležitějších triků je tichej pohyb. Úplně tichej. Tak se ti podaří proplížit se kolem strážných, dostat se nepříteli do zad, vyhnout se odhalení a tak dál. Jenom si zapamatuj, že to nemůžeš udělat, když se na tebe někdo dívá."~ */
  IF ~~ THEN REPLY #67234 /* ~"Pokračuj..."~ */ GOTO 29
  IF ~~ THEN REPLY #67240 /* ~"Myslím že základům rozumím. Pojďme trénovat."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #67182 /* ~"Dobrá. Zámky. Zámky, to rozhodně nejsou tví kamarádi. Musiš vědět, jak funguje jejich mechanika, aby ses přes ně moh dostat. A navíc někteří bastardi se ještě postaraj, aby tě u zámku čekalo hezký překvápko. Když se budeš pokoušet dostat nějakýho takovýho nebezpečnějšího chlápka, radši si dobře prohlídni jeho zámky, jestli tam na tebe nečeká nějaká hezká pastička. K těm se za chvilku dostaneme."~ */
  IF ~~ THEN REPLY #67235 /* ~"Pokračuj..."~ */ GOTO 30
  IF ~~ THEN REPLY #67236 /* ~"Myslím že základům rozumím. Pojďme trénovat."~ */ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #67183 /* ~"Jo, a taky budeš potřebovat strkat pazoury někam tak, aby si toho nikdo nevšimnul. Někdy kvůlivá ulehčení peněženky tomu chudákovi, někdy kvůlivá nějaký drobnosti, co má v kapse. Ale radši buď připravenej na rvačku nebo prásknout do bot, kdyby tě náhodou někdo zmerčil."~ */
  IF ~~ THEN REPLY #67237 /* ~"Pokračuj..."~ */ GOTO 31
  IF ~~ THEN REPLY #67241 /* ~"Myslím že základům rozumím. Pojďme trénovat."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67184 /* ~"Pamatuješ, jak sem ti povídal o pastech? Ty můžou bejt tvůj nejhorší nepřítel. Když je něco, co je hlídaný - nebo hůř, něco co *není* hlídaný - jdi k tomu fakt pomalu a pozorně koukej kolem. Nikdy to není vidět na první pohled, takže si dej záležet."~ */
  IF ~~ THEN REPLY #67238 /* ~"Pokračuj..."~ */ GOTO 32
  IF ~~ THEN REPLY #67242 /* ~"Myslím že základům rozumím. Pojďme trénovat."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #67185 /* ~"Když najdeš past, můžeš ji buďto nějak obejít, nebo ji zkusit odzbrojit. Když ji zkusíš rozebrat, je tady riziko, že se ti spustí přímo do ksichtu. Dost riskuješ, když si budeš zahrávat s nějakou divnou magií nebo mašinou."~ */
  IF ~~ THEN REPLY #67239 /* ~"Pokračuj..."~ */ GOTO 33
  IF ~~ THEN REPLY #67243 /* ~"Myslím že základům rozumím. Pojďme trénovat."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #67186 /* ~"A tady je velká věc: podříznutí! S takovejma tlapama, co máš, dokážeš dát pořádnou ránu. Připlížíš se za někoho, opatrně si vybereš cíl a hvízd, je to tam. Udělej to správně a pořádně mu ublížíš, s trochou štěstí ho podřízneš úplně. Jakmile zaútočíš, tak si tě samozřejmě všimne, teda pokud přežije, tak si vybírej opatrně."~ */
  IF ~~ THEN REPLY #67244 /* ~"Dobrá. Pojďme trénovat."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 27.1 28.1 29.1 30.1 31.1 32.1 33.0
  SAY #67187 /* ~"Nejdřív se musíš naučit, že nic se nedá uspěchat. Spěch vede k omylům a omyly k problémům a pak tě můžou omejvat. V márnici. Takže logicky, problémy nechceš, tím pádem se vyhneš spěchu..."
Tvůj trénink na zloděje začíná.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67245 /* ~Nauč se vše, co dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3000)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Vytrénoval jsem se na zloděje pomocí muže jménem Nabat u Zrádcovy Brány v Curstu.~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67246 /* ~Nauč se vše, co dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Vytrénoval jsem se na zloděje pomocí muže jménem Nabat u Zrádcovy Brány v Curstu.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67247 /* ~Nauč se vše, co dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Vytrénoval jsem se na zloděje pomocí muže jménem Nabat u Zrádcovy Brány v Curstu.~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67188 /* ~Po chvíli se zastavil. "Dost. Učíš se rychle. Víc tě toho nenaučím, dál se budeš muset trénovat sám."~ */
  IF ~~ THEN REPLY #67249 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2
  SAY #67189 /* ~Po chvíli se zastavil. "Dost. Učíš se rychle. Víc tě toho nenaučím, dál se budeš muset trénovat sám... ale tvý dovednosti mi říkaj, že už jsi něco takovýho dřív dělal..." Když to vyslovil, uvědomil sis, že *jsi* to opravdu dělal... že někdy dříve jsi všechny tyhle věci uměl a jeho trénink je v tobě jenom probudil.~ */
  IF ~~ THEN REPLY #67250 /* ~"Možná jsem to už dělal dřív. Díky a sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #67190 /* ~Jak ti myslí proplouvají kalné vzpomínky na temné chodby a vyhýbání se smrtelným pastím, pokoušíš se vzpomenout si dost, abys 'věděl' víc, než tě Nabat naučil.~ */
  IF ~~ THEN REPLY #67251 /* ~Odejdi.~ */ EXIT
END
