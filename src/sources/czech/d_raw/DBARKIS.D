// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3076 /* ~Vidíš muže s hrubou kůží a popelavou tváří. Zuby má ostřejší, než je běžné a jeho oči jsou plné nudy, co přichází k těm, kteří toho viděli příliš. Má nosový hlas, kterým se tě zeptal: "Zas ty? Co chceš tentokrát?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #3077 /* ~"'Zas ty'? Co tím myslíš?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10238 /* ~"Ty máš moje oko, je to tak? Chtěl bych ho od tebe koupit zpátky."~ */ GOTO 11
  IF ~~ THEN REPLY #10239 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #10240 /* ~"Co je to tu za místo?"~ */ GOTO 13
  IF ~~ THEN REPLY #10241 /* ~"Co mi můžeš říct o místních štamgastech?"~ */ GOTO 15
  IF ~~ THEN REPLY #10242 /* ~"Chtěl bych něco k pití."~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10243 /* ~"Hledám deník."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10244 /* ~"Hledám Pharoda, Sběrače."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Dražitel Giltspur chtěl, abys vyvěsil tento leták."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68055 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10245 /* ~"Zase zpátky? Co to bude tentokrát?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10246 /* ~"Když jsme spolu prve mluvili, řekl jsi 'zase ty?'. Co jsi tím myslel?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10247 /* ~"Řekl jsi, že máš moje oko. Chtěl bych ho zpátky."~ */ GOTO 11
  IF ~~ THEN REPLY #10248 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #10249 /* ~"Co je tohle za místo?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10250 /* ~"Co mi můžeš říct o zdejších štamgastech?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10251 /* ~"Chci něco k pití."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10252 /* ~"S Mochai už nebudeš mít žádné potíže."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10253 /* ~"Chci něco k pití."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10254 /* ~"Hledám deník."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10255 /* ~"Hledám Pharoda, Sběrače."~ */ GOTO 30
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10256 /* ~"Co mi můžeš říct o zdejších štamgastech?"~ */ GOTO 35
  IF ~  Global("Mochai_Dead_KAPUTZ","GLOBAL",1)
GlobalLT("Mochai","GLOBAL",3)
~ THEN REPLY #57941 /* ~"Už s Mochai nebudeš mít problémy."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Dražitel Giltspur chtěl, abys vyvěsil tento leták."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68056 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.4 4.2 5.2 7.0 9.0 11.4 12.1 13.1 14.0 15.1 16.0 16.1 17.14 18.7 19.1 20.2 21.2 22.2 23.2 24.4 25.1 26.1 27.0 28.2 29.0 30.0 31.1 32.1 34.0 35.0
  SAY #10257 /* ~"Pospěš, jo? Platící zákazníci čekaj."~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10258 /* ~"Když jsme spolu prve mluvili, řekl jsi 'zase ty?'. Co jsi tím myslel?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10259 /* ~"Řekl jsi, že máš moje oko. Chtěl bych ho zpátky."~ */ GOTO 11
  IF ~~ THEN REPLY #10260 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #10261 /* ~"Co je toto místo?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10262 /* ~"Co mi můžeš říct o zdejších štamgastech?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10263 /* ~"Chci něco k pití."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10264 /* ~"Postaral jsem se o toho neplatiče."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10265 /* ~"Chci něco k pití."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10266 /* ~"Hledám deník."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10267 /* ~"Pátrám po Pharodu, Sběrači."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Dražitel Giltspur chtěl, abys vyvěsil tento leták."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #45135 /* ~"Co mi můžeš říct o místních návštěvnících?"~ */ GOTO 35
  IF ~~ THEN REPLY #57942 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0
  SAY #10269 /* ~"Jo, 'zase ty'. Špatně slyšíš nebo co? Byls tady asi před patnáctima rokama, rozmlátils mi to tu a nechals jenom hrst drobných, které nestačily pokrýt škody. Tak sis vyrval svoje vlastní zkrvavené oko a řekls mi, že se vrátíš a napravíš to, až seženeš dvě stě mincí. S patnáctiletým úrokem teď budeš potřebovat asi pět stovek. Máš prachy, brachu, dostaneš oko."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10270 /* ~"Pět set? To je absurdní!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10271 /* ~"Pět set? To je absurdní!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10272 /* ~"Pět set? Tak dobrá. Tady."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10273 /* ~"Tolik u sebe nemám."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10274 /* ~"Teď zrovna nemám zájem. Místo toho mi odpověz na pár otázek."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10275 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #10276 /* ~Odmlčel se a zvažuje. "Tak jo. Víš co, dej mi tři stovky a oko je tvoje."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #10277 /* ~"Dohodnuto. Tady jsou peníze."~ */ DO ~TakePartyGold(300)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(300)
~ THEN REPLY #10278 /* ~"Pořád si to nemůžu dovolit."~ */ GOTO 7
  IF ~~ THEN REPLY #10279 /* ~"Zapomeň na to. Místo toho mi ještě odpověz na jinou otázku."~ */ GOTO 2
  IF ~~ THEN REPLY #10280 /* ~"Zapomeň na to. Vrátím se později."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 11.1
  SAY #10281 /* ~"Taková je cena. Ber nebo nech bejt."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10282 /* ~"Dobře, beru to."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10283 /* ~"Tolik nemám."~ */ GOTO 7
  IF ~~ THEN REPLY #10284 /* ~"Zapomeň na to. Místo toho mi ještě odpověz na jinou otázku."~ */ GOTO 2
  IF ~~ THEN REPLY #10285 /* ~"To neberu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0 11.2
  SAY #10286 /* ~"Obchod je uzavřen." Vytáhl tmavou, voskem zalitou láhev se širokým hrdlem. Slyšíš zvuk tekutiny šplouchající uvnitř spolu s jiným, těžším a plácavým zvukem. Jak jsi ji otevřel, zvedl se ti žaludek ze zápachu konzervačního činidla. Ve slizkém humusu plave oko. "Raděj by sis měl rozmyslet, co s tím chceš udělat... vystavils to vzduchu, to bys pak stejně tak mohl vzít nakládaný vejce ve sklenici a zkusit, jestli ti bude k něčemu dobrý. Rychle si to rozmysli, příteli... chtěls nakládané vejce?~ */
  IF ~  HPGT(Protagonist,15)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10287 /* ~Vytrhni si oko a toto tam dej místo něj.~ */ DO ~GiveExperience(Protagonist,1000)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPGT(Protagonist,15)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10288 /* ~Vytrhni si oko a toto tam dej místo něj.~ */ DO ~GiveExperience(Protagonist,750)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #10289 /* ~Vytrhni si oko a toto tam dej místo něj.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 10
  IF ~~ THEN REPLY #10290 /* ~Dívej se, jak hnije.~ */ GOTO 25
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.1 5.1 11.3
  SAY #10291 /* ~"Takže nechceš vlastní oko. Je to možný? Přijď až budeš mít prachy."~ */
  IF ~~ THEN REPLY #10292 /* ~"Dobrá. Ještě bych se na něco zeptal."~ */ GOTO 2
  IF ~~ THEN REPLY #10293 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1
  SAY #10294 /* ~Po chvíli váháni sis z důlku vyloupl oko a držíš ho v dlani. Barman ochotně přeřízl oční nerv a navedl tvou ruku do láhve s nálevem, která stojí na baru. Uložil jsi své oko do konzervačního roztoku, uchopil to staré a vsunul jej do svého prázdného důlku. Bolest celé této operace je nepředstavitelná. Přesto po chvíli cítíš, že se optický nerv na nové oko napojuje... a najednou jsi uzřel záblesk paměti!~ */
  IF ~~ THEN REPLY #10295 /* ~Vstřebej ji.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10296 /* ~Vzpomínka: Před tebou vyvstává nesmírný prostor s chaotickou stále se měnící pustinou, blíží se k tobě skupina humanoidních supů se strašlivými zbraněmi připravenými k útoku a ty v ruce pevně držíš svou vlastní blyštivou čepel...

Vzpomínka: Obklopují tě tři drsňáci nepřátelských barev a ty nemůžeš uniknout. V rukou se jim třpytí dlouhé dýky a jejich vyceněné zuby se krutě blyští. Pohlédneš na své zjizvené ruce a víš, že budou ve chvíli pokryty krví...

Vzpomínka: Blíží se k tobě obrovité žabí stvoření otáčející k tobě svou mordu plnou zubů. Vrháš svůj oštěp proti šinoucí se věci a připichuješ ji k osamocenému kamennému soklu... Vzpomněl sis na své ztracené dovednosti boje.~ */
  IF ~~ THEN REPLY #10297 /* ~Polož Barkisovi další otázky.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ GOTO 2
  IF ~~ THEN REPLY #10298 /* ~Odejdi.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #10299 /* ~Rýpl sis do očního důlku. Bolest je ostrá, strašlivá a najednou tě ochromila. Upadl jsi na zem krvácejíc z čerstvě otevřeného důlku. Jsi mrtvý.~ */
  IF ~~ THEN REPLY #10300 /* ~Hotovo.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1 1.1 2.1
  SAY #10301 /* ~"Chceš ho zpátky? Cena je pět set mincí. Nemáš, nedostaneš."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10302 /* ~"Pět stovek? To je absurdní"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10303 /* ~"Pět stovek? To je absurdní"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10304 /* ~"Pět stovek? Dobrá. Tady jsou."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10305 /* ~"Tolik nemám."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10306 /* ~"Teď nemám zájem. Místo toho mi odpověz na pár otázek."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10307 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 1.2 2.2
  SAY #10308 /* ~"Já? Jsem Barkis. Majitel a správce tohoto místa."~ */
  IF ~~ THEN REPLY #10309 /* ~"Co je tohle za místo?"~ */ GOTO 13
  IF ~~ THEN REPLY #10310 /* ~"Pak jsi člověk, kterého bych se mohl na něco vyptat."~ */ GOTO 2
  IF ~~ THEN REPLY #10311 /* ~"Pěkné místo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.3 1.3 2.3 12.0
  SAY #10312 /* ~"Neviděls ceduli před vchodem? Neviděls hořícího chlápka nad roštem, kdyžs vešel? Toto je Doutnající nebožtík, příteli, po čertech nejlepší hospoda jen pro členy v Sigilu. Přinejmenším je to nejlepší hospoda v této části Úlu, což ji dělá jednou z nejlepších v Sigilu. No jo, jsou tady vybraná místa s květinami jako třeba čvrť Paní Bolesti, jsou tady příšerné taverny rozeseté po zbytku celého Úlu, ale žádná z nich nemá charakter jako Doutnající nebožtík."~ */
  IF ~~ THEN REPLY #10313 /* ~"Kdo je vlastně to tělo?"~ */ GOTO 14
  IF ~~ THEN REPLY #10314 /* ~"Aha. Řekni mi ještě něco, ano?"~ */ GOTO 2
  IF ~~ THEN REPLY #10315 /* ~"To je více než pravda. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #10316 /* ~"Ten? Ignus. Býval ohnivým čarodějem, vypálil části Úlu a nakonec se nechal zrasovat od bandy jiných čarodějů. Jestli o něm chceš vědět víc, běž si promluvit s Drusillou dole u dveří."~ */
  IF ~~ THEN REPLY #10317 /* ~"Dobrá. Chtěl bych se dozvědět ještě něco jiného."~ */ GOTO 2
  IF ~~ THEN REPLY #10318 /* ~"Výborně, to udělám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.4 1.4 2.4
  SAY #10319 /* ~"Nikdy se nepletu do života lidem, kteří mi dávají své těžce vydělané prachy, ledaže by mě o to sami požádali. Tak. Támhle je Candrian. Chodec po sférách. Je ten pravý, kterého se můžeš zeptat na putování po sférách - byl pravděpodobně skoro všude. Támhle dole je Ebb Kolenovrz, starý vybíječ Harmonických - na to se ho nevyptávej - a kšeftař. Má dobré srdce a ví ledacos o Sigilu. Fiendové támhle jsou Aethelgrin a Tegar'in. Radím ti: Nic si s nimi nezačínej. Možná jsou spodina mezi fiendy, ale pořád to jsou fiendové. Pak je tady Ilquix - NENÍ důvěryhodný - a pár Nemilosrdných hledajících nějakého mizerného lotra. Githzerai Dak'kon je pro mě záhadou. Moc o něm nevím. Taky moc nemluví. A konečně - měl bys zájem o členství zadarmo?"~ */
  IF ~~ THEN REPLY #10320 /* ~"Ano."~ */ GOTO 16
  IF ~~ THEN REPLY #10321 /* ~"Ani ne. Odpověz mi ještě na pár otázek, ano?"~ */ GOTO 2
  IF ~~ THEN REPLY #10323 /* ~"Ne. Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10322 /* ~"Tam naproti u zdi je jedna členka, schovává se do stínu, snaží se sebrat odvahu a vyklouznout odsud bez placení. Chci abys jí to nedovolil. Udělej to a budeš tu mít členství zadarmo až do konce života."~ */
  IF ~~ THEN REPLY #10324 /* ~"Udělám to. Ale nejdřív mi odpověz na pár otázek."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10325 /* ~"Raději ne. Místo toho mi odpověz na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10326 /* ~"Udělám to. Řeknu ti, až s tím budu hotov."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #10327 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 0.5 1.5 2.5 19.0 20.0 21.0 22.0 23.0 24.1 24.2 28.0
  SAY #10328 /* ~"Co bys chtěl? Máme obyčejné pivo za měďák, hořké za dva, medovinu za čtyři. Máme vodu přímo z Elementální Sféry za osm měďáků, máme Arboreanské ohnivé víno s ohnivým semenem za deset, sladké víno z Curstu za osm a skutečnou whiskey z Baatoru za dvanáct. Co si dáš?~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10329 /* ~"Pivo."~ */ DO ~TakePartyGold(1)
~ GOTO 20
  IF ~  PartyGoldLT(1)
~ THEN REPLY #10330 /* ~"Pivo."~ */ GOTO 19
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10331 /* ~"Hořké."~ */ DO ~TakePartyGold(2)
~ GOTO 20
  IF ~  PartyGoldLT(2)
~ THEN REPLY #10332 /* ~"Hořké."~ */ GOTO 19
  IF ~  PartyGoldGT(3)
~ THEN REPLY #10333 /* ~"Medovinu."~ */ DO ~TakePartyGold(4)
~ GOTO 20
  IF ~  PartyGoldLT(4)
~ THEN REPLY #10334 /* ~"Medovinu."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10335 /* ~"Vodu."~ */ DO ~TakePartyGold(8)
~ GOTO 21
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10336 /* ~"Vodu."~ */ GOTO 19
  IF ~  PartyGoldGT(9)
~ THEN REPLY #10337 /* ~"Ohnivé víno s ohnivým semenem."~ */ DO ~TakePartyGold(10)
~ GOTO 22
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10338 /* ~"Ohnivé víno s ohnivým semenem."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10340 /* ~"Sladké víno."~ */ DO ~TakePartyGold(8)
~ GOTO 23
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10341 /* ~"Sladké víno."~ */ GOTO 19
  IF ~  PartyGoldGT(19)
~ THEN REPLY #10342 /* ~"Whiskey."~ */ DO ~TakePartyGold(20)
~ GOTO 24
  IF ~  PartyGoldLT(20)
~ THEN REPLY #10343 /* ~"Whiskey."~ */ GOTO 19
  IF ~~ THEN REPLY #10344 /* ~"Informaci."~ */ GOTO 2
  IF ~~ THEN REPLY #10345 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.7 2.7 20.1 21.1 22.1 23.1 24.3 28.1 32.0
  SAY #10339 /* ~"Chceš pití, máš ho mít. Tak co tu pro tebe máme: Pivo, hořké pivo, medovinu, elementální vodu, Arboreanské ohnivé víno s ohnivým semenem, sladké víno z Curstu a Baatorskou whiskey. Co to bude?~ */
  IF ~~ THEN REPLY #10346 /* ~"Pivo."~ */ GOTO 20
  IF ~~ THEN REPLY #10347 /* ~"Hořké."~ */ GOTO 20
  IF ~~ THEN REPLY #10348 /* ~"Medovinu."~ */ GOTO 20
  IF ~~ THEN REPLY #10349 /* ~"Vodu."~ */ GOTO 21
  IF ~~ THEN REPLY #10350 /* ~"Ohnivé víno s ohnivým semenem."~ */ GOTO 22
  IF ~~ THEN REPLY #10351 /* ~"Sladké víno."~ */ GOTO 23
  IF ~~ THEN REPLY #10352 /* ~"Whiskey."~ */ GOTO 24
  IF ~~ THEN REPLY #10353 /* ~"Informaci."~ */ GOTO 2
  IF ~~ THEN REPLY #10354 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.3 17.5 17.7 17.9 17.11 17.13
  SAY #10355 /* ~Barman se na tebe zamračí. "Nemáš prachy, abys to zaplatil. A ani na prkno ti nedám. Už jsem se vícekrát spálil. Chceš něco jiného?"~ */
  IF ~~ THEN REPLY #10356 /* ~"Co si dáš k pití?"~ */ GOTO 17
  IF ~~ THEN REPLY #10357 /* ~"Ano. Informaci."~ */ GOTO 2
  IF ~~ THEN REPLY #10358 /* ~"Ne, promiň."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.2 17.4 18.0 18.1 18.2
  SAY #10359 /* ~Obrátils do sebe slabý nápoj. Chuť nemá výraznou, ale je sytý a alkoholický. Nezdá se ale, že by to na tebe nějak účinkovalo. "Co to bude, příteli?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10360 /* ~"Nalej ještě."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10361 /* ~"Nalej ještě."~ */ GOTO 18
  IF ~~ THEN REPLY #10362 /* ~"Odpověz mi na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10363 /* ~"Nic."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.6 18.3
  SAY #10364 /* ~Otočil se k sudu na zdi a otočil kohoutkem. Nejprůzračnější voda, jakou jsi kdy viděl, proudí do sklenice, kterou barman drží pod pípou. Postaví ji před tebe a ty si dáváš plný doušek. Je to ta nejčistší věc, jako jsi kdy ochutnal, chlad vody samotné, pocit vzduchu, který plyne přes tvůj jazyk do tvého žaludku, kde jeho chlad uklidňuje na chvíli dokonce i tvé rozbouřené touhy. "Přímo ze srdce Elementální sféry vody," říká barman. "Jakákoliv voda, jakou kdy budeš pít, bude v porovnání s ní chutnat jako špína."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10365 /* ~"Dej mi ještě něco k pití!"~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10366 /* ~"To bylo skvělé. Dej mi ještě další drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10367 /* ~"V tom případě bych se raději zeptal na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10368 /* ~"Působivý zážitek. Mé díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.8 18.4
  SAY #10369 /* ~Podává ti sklenici nejsytěji červeného vína a hrst světlých semen. "Vlož si semena do úst," radí, "a dej si doušek vína. Nediv se až semena začnou hořet, vůbec ti to neublíží. Je to chuť jako žádná jiná." Má pravdu. Když sis vhodil jedno semeno do úst, smíchalo se s tvými slinami a zahořelo drobným plamenem. Uhasil jsi je douškem ohnivého vína a chuť je nepopsatelná. Barkis se směje. "Chceš další?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10370 /* ~"K čertu, ano. Dej mi ještě další kousek."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10371 /* ~"Do toho."~ */ GOTO 18
  IF ~~ THEN REPLY #10372 /* ~"Teď zrovna ne, díky. Místo toho bych se zeptal na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10373 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.10 18.5
  SAY #10374 /* ~Podává ti sklenici slavného sladkého vína z Curstu. Buket je dech beroucí a víno samotné je plné a ovocné. Pachuť nezanechává nic toužebného. "Vyrobeno ze skutečné břitvové vinné révy. Přál bych si znát to tajemství, " říká barman. "Chceš další?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10375 /* ~"Samozřejmě."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10376 /* ~"Samozřejmě."~ */ GOTO 18
  IF ~~ THEN REPLY #10377 /* ~"Ne, ale chtěl bych nějaké odpovědi."~ */ GOTO 2
  IF ~~ THEN REPLY #10378 /* ~"Ne, díky."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.12 18.6
  SAY #10379 /* ~Postavil před tebe panáka nějaké kouřící substance vypadající jako vřící moč. Dým, který zavanul tvým směrem, byl nicméně vytříbeně lákavý. Chuť, ač téměř nesnesitelně pálivá, je těkavá jako vůně - dojem z likéru si propaluje cestu do tvého břicha téměř bolestivě, ale dokonce i tato bolest je sladká. Barmanovy oči se rozšířily. "Stále na nohou? Většina lidí nezvládne ani polovinu prvního frťana."~ */
  IF ~~ THEN REPLY #10380 /* ~"Cítím se dobře. Dokonce necítím vůbec nic."~ */ GOTO 28
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10381 /* ~"Dej mi další drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10381 /* ~"Dej mi další drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10382 /* ~"Dej mi další drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10383 /* ~"Mám dobrou toleranci. Odpovíš mi na otázku?"~ */ GOTO 2
  IF ~~ THEN REPLY #10384 /* ~"Většina lidí nedokáže to, co já. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.3
  SAY #10385 /* ~Oko se rozkládá před tvýma vlastníma očima, zanechávaje lepkavý kal, který uvolňuje zápach plnící tvé nozdry a znečisťující vzduch kolem tebe. Barman mává rukou před svým obličejem, aby rozptýlil smrad a říká, "To bylo mrhání penězi. Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #10386 /* ~"Zpět své peníze. Hned."~ */ GOTO 26
  IF ~~ THEN REPLY #10387 /* ~"Jenom odpovědi na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10388 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #10389 /* ~"Hlupáku, to není moje vina, že je tvůj nákup fuč jenom proto, že ses rozhodl nic s ním neudělat. Chtěls se svým okem něco udělat, neměl bys teda na mě zkoušet ten starý trik tak jako kdysi. To není můj problém."~ */
  IF ~~ THEN REPLY #10390 /* ~"Bude, až tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Barkis_One","GLOBALGood",-1)
~ GOTO 27
  IF ~~ THEN REPLY #10391 /* ~"Ne, asi ne. Odpověz mi tedy na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10392 /* ~"Možná později bude. Měj se."~ */ EXIT
  IF ~~ THEN REPLY #10393 /* ~"Ne, asi není. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #10394 /* ~Neupřímně se zasmál. "Vyzývám tě."~ */
  IF ~~ THEN REPLY #10395 /* ~"Zapomeň na to. Raději mi zodpověz několik otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10396 /* ~"Zapomeň na to."~ */ EXIT
  IF ~~ THEN REPLY #10397 /* ~Napadni jej.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.0
  SAY #10398 /* ~Barman si tě opatrně prohlíží s rukou pod bradou. "Víš, příteli, existuje něco jako přirozená imunita k jedům a tak. Někteří lidé by mohli jed i pít. Jestli je to tvůj případ, pak máš dobré šance při obraně proti travičům."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10399 /* ~"Hm, co na tom... Nalej mi ještě."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10400 /* ~"Hm, co na tom... Nalej mi ještě."~ */ GOTO 18
  IF ~~ THEN REPLY #10401 /* ~"To by se mohlo hodit. Odpovíš mi na otázku?"~ */ GOTO 2
  IF ~~ THEN REPLY #10402 /* ~"Dobře. Mé díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.6 1.8 2.8
  SAY #10403 /* ~"Deník? Papír a slova? Příteli, tady v Úlu takové věci moc na skladu nebejvaj. Lidi tady stěží přečtou vývěsku nade dveřmi, natožpak celý deník. Jestli hledáš deník, měl bys radši mít nějaký systém místo toho, aby ses jen tak halabala ptal lidí."~ */
  IF ~~ THEN REPLY #10404 /* ~"Díky za nevyžádanou radu. Odpověz mi tedy na jinou otázku."~ */ GOTO 2
  IF ~~ THEN REPLY #10405 /* ~"Dobře. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 0.7 1.9 2.9
  SAY #10406 /* ~Otočil se a odplivl si. "Pharod? Pche. To si od něj zrovna můžeš nechat vrazit dýku pod žebra. Ačkoliv, podle pohledu na tebe, už jsi to asi udělal. Jestli jsi k smrti upnut na hledání Pharoda - omluv ten sarkasmus - tak promluv támhle s Ebbem Kolenovrzem. Mohl by vědět něco hodnotného."~ */
  IF ~~ THEN REPLY #10407 /* ~"Pak to udělám, jen co mi odpovíš na pár dalších otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10408 /* ~"Ebb? Ten stařec? Mé díky."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.6 1.11 2.6
  SAY #10409 /* ~"Pak tedy, příteli, máš v baru plná privilegia... a zadarmo. Cokoliv chceš, kdykoliv."~ */
  IF ~~ THEN REPLY #10410 /* ~"To musel být pěkně mastný dluh, který tu nadělala."~ */ GOTO 32
  IF ~~ THEN REPLY #10411 /* ~"Díky. Měl bych ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #10412 /* ~"Budu se ti věnovat později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #10413 /* ~"Nevíš o tom ani polovinu. Chceš se napít?"~ */
  IF ~~ THEN REPLY #10414 /* ~"Posil mě."~ */ GOTO 18
  IF ~~ THEN REPLY #10415 /* ~"To, co právě teď hledám, je informace."~ */ GOTO 2
  IF ~~ THEN REPLY #10416 /* ~"Ne. Ale ještě se vrátím."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #10417 /* ~"Ohnivá semena, sem s nimi!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.8 1.12 2.10
  SAY #45136 /* ~"Giltspur, jo? Ukaž mi to." Vzal si leták a prohlédl si ho. Zamračil se a řekl: "Dobrá. Pověz mu, že ho vyvěsím. Ještě něco chceš?"~ */
  IF ~~ THEN REPLY #45137 /* ~"Jen pár dalších odpovědí..."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ GOTO 2
  IF ~~ THEN REPLY #45138 /* ~"Už nic, díky. Sbohem."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.10 2.11
  SAY #57943 /* ~Tázavě se na tebe podíval. "Už jsme si tím prošli, ne? Chceš ještě něco, kromě toho, co jsem ti už řekl?"~ */
  IF ~~ THEN REPLY #57944 /* ~"Jenom mi odpověz na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #57945 /* ~"Ne. Sbohem."~ */ EXIT
END
