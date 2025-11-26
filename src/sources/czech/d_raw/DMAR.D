// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45076 /* ~První dojem, který z Mara máš, je přesvědčení, že by potřeboval dlouhou koupel někde daleko od všech stvoření, která mají čich. Máš pocit, že ten zápach přímo vidíš, jak se ve žlutých stružkách odvíjí z jeho těla. Mává na tebe a snaží se upoutat tvou pozornost. Asi si s tebou chce promluvit.~ */
  IF ~~ THEN REPLY #45077 /* ~Přistup k němu a vyslechni si, co má na srdci.~ */ GOTO 4
  IF ~~ THEN REPLY #45399 /* ~Zadrž dech a odejdi..~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("FedEx","Global",0)
~ THEN BEGIN 1 // from:
  SAY #45400 /* ~Připravil jsi se na zápach, než jsi k Marovi přistoupil. "Uděláš něco pro Mara, ano ? Potřeboval bych doručit krabici."~ */
  IF ~~ THEN REPLY #45401 /* ~"Doručím ti tvůj balík."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #45402 /* ~"Proč potřebuješ, abych ti doručil tu krabici?"~ */ GOTO 5
  IF ~~ THEN REPLY #45403 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 16 10 even though they appear after this state */
~  GlobalGT("FedEx","Global",0)
~ THEN BEGIN 2 // from:
  SAY #45404 /* ~Marovy oči začnou vypadat divoce, jakmile tě vidí přicházet. Vysokým hlasem se tě ptá. "Co děláš zpátky tady dole! Nevracej se, dokud nedoručíš tu bednu."~ */
  IF ~  Global("FedEx","Global",2)
Global("Demonbox","Global",0)
~ THEN REPLY #45405 /* ~"Člověk, komu jsem měl doručit tuhle krabici, utekl. Co teď?"~ */ GOTO 8
  IF ~  Global("FedEx","Global",10)
~ THEN REPLY #45406 /* ~"Zbavil jsem se té krabice."~ */ DO ~SetGlobal("FedEx","Global",11)
~ GOTO 11
  IF ~  Global("Demonbox","Global",4)
~ THEN REPLY #45407 /* ~"Zabil jsem fienda v té krabici.."~ */ GOTO 18
  IF ~  Global("Demonbox","Global",3)
~ THEN REPLY #45408 /* ~"Zabil jsem fienda v té krabici."~ */ GOTO 19
  IF ~  Global("Demonbox","Global",1)
~ THEN REPLY #45409 /* ~"Otevřel jsem tu krabici a objevil se fiend. Utekl jsem."~ */ GOTO 3
  IF ~  !Global("FedEx","Global",2)
!Global("FedEx","Global",10)
GlobalGT("FedEx","Global",0)
Global("Demonbox","Global",0)
~ THEN REPLY #45410 /* ~"Nikdo tu krabici nechce. Vezmi si ji zpět.."~ */ GOTO 9
  IF ~  !Global("FedEx","GLOBAL",10)
Global("Demonbox","Global",2)
~ THEN REPLY #45411 /* ~"Opustil jsem Úl a nic se nestalo."~ */ GOTO 17
  IF ~~ THEN REPLY #45412 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.4
  SAY #45413 /* ~"Jsi šílenej blázen! Podepisuješ si svůj vlastní rozsudek smrti, když otevíráš tu prokletou bednu! Běž, jestli víš, co je pro tebe dobrý!" Mar utíká pryč.~ */
  IF ~~ THEN REPLY #45414 /* ~"Sbohem."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39511 /* ~Udělal jsem dvě chyby. První bylo neuposlechnutí Marova příkazu neotvírat krabičku. Druhá chyba byla, že jsem utekl před fiendem hned, když se objevil. Ten první omyl už nevrátím, ale ten druhý můžu napravit. Zabiju toho fienda.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #46322 /* ~Po jeho tváři přejel výraz vzrušení. "Díky. Jmenuju se Mar a něco bych od tebe potřeboval."~ */
  IF ~~ THEN REPLY #46323 /* ~"Poslouchám."~ */ GOTO 5
  IF ~~ THEN REPLY #46324 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 4.0
  SAY #46325 /* ~"Je to otázka života a smrti! Musím dodat tuhle bedýnku, jinak bude po mně! Ale vymknul jsem si kotník. Pomůžeš mi a předáš tu krabici místo mě?"~ */
  IF ~~ THEN REPLY #46326 /* ~"Ano, předám ji místo tebe."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #46327 /* ~"Ne."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 5.0
  SAY #46328 /* ~Mar z trosek svého oděvu opatrně vytáhl skřínku. Vidíš, jak se po jeho tváři na okamžik rozlil výraz lítosti... a pak je pryč, když se dívá na tebe a podává ti ji. Skřínku na okamžik obalilo světlo, když jste se jí dotkli oba dva. Když Mar skřínku pustil, vydal ze sebe povzdech plný ulehčení.~ */
  IF ~~ THEN REPLY #46329 /* ~"Co teď?"~ */ DO ~GiveItemCreate("DBox",Player1,1,0,0)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46330 /* ~"Musíš to dodat Ku'atrovi. Většinou je někde v jihovýchodní části Úlu. A abys neřekl, že jsem tě nevaroval: NEOTVÍREJ SKŘÍNKU! A neodcházej s ní z Úlu. A teď jdi."~ */
  IF ~~ THEN REPLY #46331 /* ~"Vrátím se, až dodám skřínku. Sbohem."~ */ DO ~SetGlobal("Notalk","AR0100",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT1",FALSE)
~ JOURNAL #39481 /* ~Přijal jsem úkol - doručení podivné krabice osobě jménem Ku'atraa. Mar mi řekl, že toho chlápka najdu v jihovýchodní části Úlu.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0
  SAY #46461 /* ~"To už není můj problém. Skřínka je k tobě magicky připoutaná, dokud ji neodevzdáš. Navrhuju ti, ať ji někomu odevzdáš. A teď od mně zmiz, dokud se té věci nezbavíš!"~ */
  IF ~  Global("FedEx","Global",2)
~ THEN REPLY #46462 /* ~Vypadá to, že jsi na tom sám. Nezmínil Ku'atraa někoho, komu bys tu skřínku mohl dát?~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
  IF ~  GlobalGT("FedEx","Global",2)
~ THEN REPLY #46463 /* ~Co je ksakru v té skřínce...~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY #46464 /* ~Mar se kroutí strachem. "Ne! Já už se toho nedotknu! Jdi s tím ode mě pryč! Dobrovolně jsi ji přijal! Nech si ji, nebo ji někomu dej, mně na tom nezáleží. Ale řeknu ti jednu věc: radši zemřu, než abych se s ní zase zapletl! A teď mě nechej být!"~ */
  IF ~~ THEN REPLY #46465 /* ~"Až to vyřeším se skřínkou, vrátím se a vyřídím si to s tebou. Na brzkou shledanou."~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("FedEx","Global",9)
~ THEN BEGIN 10 // from:
  SAY #46466 /* ~"Řekl jsem vše, co mohu říct."~ */
  IF ~~ THEN REPLY #46467 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #46468 /* ~"Jsem rád, že to slyším. Než mě zabiješ za to, že jsem tě do toho dostal,dej mi šanci, ať ti to vysvětlím..."~ */
  IF ~~ THEN REPLY #46469 /* ~"Jsi mrtvola."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~Moje spravedlnost je rychlá a nelítostná. Mar zaplatil za své zločiny životem. Nepřeji si nic jiného, než pokračovat v cestě. Nepřeji si víckrát se zabývat magickými skříňkami~ */ EXIT
  IF ~~ THEN REPLY #46470 /* ~"Poslouchám. Vysvětli to."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #46471 /* ~"Zkrátka krabice tady byla tak dlouho, jak všichni pamatujou. Povídá se, že o ni ňácí chlápci bojovali a když s tím skončili, tak do skřínky zavřeli velkýho fienda. Jiní povídaj, že ji udělal zlej kouzelník, jenom aby viděl, jak ostatní trpí. Nikdo doopravdy neví, co je pravdivý. Ale majitel skřínky zemře, pokud ji otevře."~ */
  IF ~~ THEN REPLY #46472 /* ~"Proč majitel zkrátka neodloží skřínku někam, kde ji nikdo nenajde?"~ */ GOTO 13
  IF ~~ THEN REPLY #46473 /* ~"Nechci to slyšet. Jak se z toho svrabu dostanu?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #46474 /* ~"Jó, vono to vypadá jednoduše. Ale kdo chce žít s rozsudkem smrti, který někde odtikává? Každýho by to dohnalo k šílenství, pořád se starat, co je s tou blbou bednou."~ */
  IF ~~ THEN REPLY #46475 /* ~"Proč já?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46476 /* ~"Zaprvé, nikdy dřív jsem tě tu neviděl. Víš, potřeboval jsem nějakýho blba jako ty, který skřínku *přijme* a stane se novým majitelem. Všichni kolem skřínku znaj a nevezmou si ji ani za nic. Za druhý, kdybys tu skřínku neprozkoumal, nevšim by sis, že magie na ní slábne. Když jsem byl majitel, je ti snad jasný, že jsem se jí chtěl co nejdřív zbavit. A kromě toho, tys vypadal, že na cestu tam někam jinam už ses vydal."~ */
  IF ~~ THEN REPLY #46477 /* ~"Chceš se bavit o cestě do jiného světa? Mluv dál, nebo na vlastní mizernou kůži zjistíš, jaký to je."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #46478 /* ~"Je vidět, že jsem si vybral pořádnýho tvrďáka. Pro takovýho borce jako ty to určitě nebylo nic složitýho. Nabízím ti tudle zbraň a ňáký drobný za ty problémy. To je všechno co mám... a shodou okolností je to to, co mi dal ta krysa Ku'atraa za to, že jsem si vzal tu skřínku."~ */
  IF ~~ THEN REPLY #46479 /* ~"Zabiju tě a z tvého zmučeného, chladnoucího těla si vyberu svou odměnu."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~Moje spravedlnost je rychlá a nelítostná. Mar zaplatil za své zločiny životem. Nepřeji si nic jiného, než pokračovat v cestě. Nepřeji si víckrát se zabývat magickými skříňkami~ */ EXIT
  IF ~~ THEN REPLY #46480 /* ~"Dej mi mou odměnu a já půjdu pryč."~ */ DO ~GiveItem("Hax",Protagonist)
AddexperienceParty(1250)
GivePartyGold(500)
~ JOURNAL #39484 /* ~I když je to proti mému zdravému rozumu, rozhodl jsem se, že Marovi odpustím. I když se snažím získat zpět své vzpomínky, vzpomínky na tohle dobrodružství bych docela rád ztratil.~ */ EXIT
END

IF WEIGHT #1 ~  Global("FedEx","Global",11)
~ THEN BEGIN 16 // from:
  SAY #46481 /* ~"Lidi kolem maj teď klidnější spánek, když si zničil tu prokletou pikslu. Ještě jednou dík!"~ */
  IF ~~ THEN REPLY #46482 /* ~"Rád jsem pomohl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #46483 /* ~"Ty blbe! Říkal jsem ti, že nemáš opouštět Úl! Rychle, jdi ode mně, než si pro tebe přijde!"~ */
  IF ~~ THEN REPLY #46484 /* ~Mar utíká pryč.~ */ DO ~SetGlobal("Boxleft","Global",1)
SetGlobal("Gamma","Global",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39482 /* ~Opuštěním Úlu jsem zřejmě uvolnil stvoření, které bylo uvězněno v krabici. Nejsem si jistý proč, ale mám strach, že ať už je to cokoli, půjde to po posledním majiteli krabice. Měl bych si hlídat záda.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2
  SAY #46485 /* ~"Otevřels skřínku a přežils! Ééé... tím myslím, zakázal jsem ti to otvírat. Nedokázals to pořádně doručit, takže nedostaneš nic. A teď vypadni."~ */
  IF ~  Global("FedEx","Global",1)
~ THEN REPLY #46486 /* ~"Sbohem."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39507 /* ~Řekl jsem Marovi, že jsem otevřel krabičku a zabil v ní ukrytého fienda. Nejprve jsem byl naštvaný, protože mi Mar nepověděl, co se v krabičce skrývá, ale pak jsem si uvědomil, že to byla má chyba, když jsem neuposlechl jeho varování. Pro příště musím udržet svou zvědavost na uzdě.~ */ EXIT
  IF ~  GlobalGT("FedEx","Global",1)
~ THEN REPLY #46487 /* ~"Sbohem."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39505 /* ~Pověděl jsem Marovi o tom, jak jsem otevřel krabičku, když už jsem si nevěděl rady s tím, komu ji doručit. Poté mi odmítl zaplatit za všechno mé trápení. Má duše vře, poněvadž věřím, že nějak odměněn jsem být mohl - byť i málo. Vždyť jsem se pokusil krabičku doručit... nemůžu přece za to, že ji ode mne nikdo nechtěl. No a potom jsem ji otevřel, i když mě předtím Mar varoval. Zmítán zmatkem jsem nakonec opustil Mara bez zaplacení nebo dohody. Stejně jsem ale rád, že už tu krabičku i toho fienda mám z krku.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #46488 /* ~"Varoval jsem tě, že s tou skřínkou nemáš opouštět Úl. Ale k mýmu překvapení tě fiend nerozerval na kusy. Ale jestli sis přišel pro prachy, nedostaneš nic! Nedoručil si skřínku, nedostaneš nic."~ */
  IF ~~ THEN REPLY #46489 /* ~"Sbohem."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseH","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39504 /* ~Pověděl jsem Marovi o tom, jak jsem uvolnil fienda, když jsem opustil Úl. Přestože byl unesen mou schopností zabít onoho fienda, odmítl mi Mar zaplatit za mé služby. Nemůžu se s ním však přít, protože jsem nedbal varování a krabičku nedoručil, jak jsem měl.~ */ EXIT
END

IF WEIGHT #2 ~  Global("notalk","AR0100",1)
~ THEN BEGIN 20 // from:
  SAY #46490 /* ~"Řekl jsem vše, co mohu říct."~ */
  IF ~~ THEN REPLY #46491 /* ~"Sbohem."~ */ EXIT
END
