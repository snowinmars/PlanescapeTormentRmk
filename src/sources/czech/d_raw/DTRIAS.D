// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedTo(0)
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2995 /* ~Vidíš stvoření barvy nejčistší slonoviny a s vlasy oslepující běli. Jeho křídla jsou spálená na popel, peří shořelo, ale stále vyzařuje mír a lásku. Stojí, jako by meditoval, nevšímajíc si tvé přítomnosti, drží své ruce u boků. Řetězy pevně svírající jeho předloktí, jsou připevněny k stupínku, na němž stojí. I když si nevzpomínáš, že bys někdy viděl anděla, ve svém srdci víš, že to JE deva, kdo před tebou stojí.~ */
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #2996 /* ~"Hledal jsem tě, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 114
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #54306 /* ~"Hledal jsem tě, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 115
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54307 /* ~"Hledal jsem tě, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 125
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54308 /* ~"Hledal jsem tě, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 126
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
~ THEN REPLY #54309 /* ~"Hledal jsem tě, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN REPLY #54310 /* ~"Hledal jsem tě, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #54311 /* ~"Hledal jsem tě, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 4
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",0)
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #54313 /* ~"Co si ode mě přeješ, smrtelníče? Promluv a odejdi."~ [TTB005] */
  IF ~~ THEN REPLY #54314 /* ~"Mám pro tebe nějaké otázky..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54315 /* ~"Mám tvůj meč."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54316 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",1)
!NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #54317 /* ~"Co potřebuješ, smrtelníče?"~ [TTB002] */
  IF ~~ THEN REPLY #54318 /* ~"Mám pro tebe nějaké otázky..."~ */ GOTO 117
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54319 /* ~"Mám tvůj meč."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54320 /* ~"Nic. Sbohem."~ */ GOTO 117
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",702)
Global("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #54321 /* ~"Děkuji ti, že jsi mě uvolnil. Jsem tvým dlužníkem." Jeho spálená křídla sebou zatřepala. "Co ode mě žádáš, smrtelníku? Obávám se, že ti toho mohu nabídnout jenom málo."~ [TTB098] */
  IF ~~ THEN REPLY #54322 /* ~"Mám pro tebe spoustu otázek..."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY #54323 /* ~"Ah tak. Sbohem."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.6
  SAY #54324 /* ~Deva zvedl hlavu a spočinul na tobě pohledem. Jeho hlas je čistý a melodický. "Co si ode mě přeješ, smrtelníče? Promluv a pak mě nechej s mými vzpomínkami na ráj."~ [TTB004] */
  IF ~~ THEN REPLY #54325 /* ~"Čarodějka Ravel mi řekla, že tě mám vyhledat."~ */ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54326 /* ~"Slyšel jsem, že se tady objevil mor, jakmile otevřeli tvou celu."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 13
  IF ~~ THEN REPLY #54327 /* ~"Co je tohle za místo?'~ */ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 14
  IF ~~ THEN REPLY #54328 /* ~"Kdo jsi?"~ */ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 15
  IF ~~ THEN REPLY #54329 /* ~"Vzpomínky na ráj?"~ */ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54871 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 11
  IF ~~ THEN REPLY #54872 /* ~"Zapomeň na to. Sbohem."~ */ JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 114.0
  SAY #54332 /* ~Deva otočil hlavou a zadíval se na Morteho. "Je kolem tebe silný pach Baatoru, lebko."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 559
END

IF ~~ THEN BEGIN 6 // from: 115.0
  SAY #54333 /* ~Deva otočil hlavou a zadíval se na Morteho. "Je kolem tebe silný pach Baatoru, lebko."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 560
END

IF ~~ THEN BEGIN 7 // from: 116.0
  SAY #54363 /* ~Deva otočil hlavou a zadíval se na Morteho. "Je kolem tebe silný pach Baatoru, lebko."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 561
END

IF ~~ THEN BEGIN 8 // from:
  SAY #54364 /* ~"Máš sebou odpornou společnost, smrtelníku. Ale ptej se a pak mě zanechej mým vzpomínkám na ráj."~ */
  IF ~~ THEN REPLY #54365 /* ~"Čarodějka Ravel mi řekla, že tě mám vyhledat."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54366 /* ~"Slyšel jsem, že se tady objevil mor, jakmile otevřeli tvou celu."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54367 /* ~"Co je tohle za místo?'~ */ GOTO 14
  IF ~~ THEN REPLY #54368 /* ~"Kdo jsi?"~ */ GOTO 15
  IF ~~ THEN REPLY #54369 /* ~"Vzpomínky na ráj?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54370 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54371 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #54372 /* ~"Přivedl jsi *tanar'ri*," zasyčel, "do *mé* blízkosti?"~ */
  IF ~~ THEN REPLY #54373 /* ~"Co, křídla to vzdala?"~ */ GOTO 33
  IF ~~ THEN REPLY #54374 /* ~"No, ano. Proč ne?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 10 // from: 1.0 13.2 14.4 16.0 22.1 23.3 24.3 26.2 27.2 28.0 29.2 30.2 31.2 32.1 117.0 117.1
  SAY #54375 /* ~"Další žádost?"~ */
  IF ~~ THEN REPLY #54376 /* ~"Čarodějka Ravel mi řekla, že tě mám vyhledat."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54377 /* ~"Slyšel jsem, že se tady objevil mor, jakmile otevřeli tvou celu."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54378 /* ~"Co je tohle za místo?'~ */ GOTO 14
  IF ~~ THEN REPLY #54379 /* ~"Kdo jsi?"~ */ GOTO 15
  IF ~~ THEN REPLY #54380 /* ~"Říkal jsi něco o vzpomínkách na ráj?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54381 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54382 /* ~"Jak jsi přišel k těm spáleným křídlům?"~ */ GOTO 28
  IF ~~ THEN REPLY #54383 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 4.5 8.5 10.5 21.0 117.2
  SAY #54384 /* ~Na chvíli vypadá šokovaně. "Nebeský Oheň? Ty jsi získal můj meč? Uvolníš mě? Tak tedy udeř do řetězů!"~ */
  IF ~~ THEN REPLY #54385 /* ~"Nejdřív mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #54386 /* ~Udeř do řetězu.~ */ GOTO 20
  IF ~~ THEN REPLY #54387 /* ~Udeř devu.~ */ GOTO 19
  IF ~~ THEN REPLY #54388 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 8.0 10.0
  SAY #54389 /* ~"Ravel... Ravel... to jméno je mi povědomé, ale... ne, je to pryč. Ty řetězy jsou jako odporná voda řeky Styx - čím déle tady jsem, tím méně si pamatuji. Pokud bych byl uvolněn, mohl bych ti tvou otázku zodpovědět k plné spokojenosti."~ */
  IF ~~ THEN REPLY #54390 /* ~"Jak tě můžu uvolnit?"~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",1)
~ JOURNAL #54392 /* ~Trias mi řekl, že ho může uvolnit pouze čin dobroty - v tomto případě získání jeho meče a přeseknutí jeho řetězů.~ */ GOTO 21
  IF ~~ THEN REPLY #54391 /* ~"Tak přijdu později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 8.1 10.1
  SAY #54393 /* ~"Je to jejich vlastní práce. Ukováním těchto řetězů, jimiž mě spoutali, naplnili jednotlivé články hořkostí a zradou. Jejich krátkozrakost je jejich pádem. Kdyby vyslyšeli mé varování, nestalo by se to." Jeho oči naplnil hluboký smutek. "Mé srdce jich lituje."~ */
  IF ~~ THEN REPLY #54394 /* ~"Jak ses sem dostal?~ */ GOTO 22
  IF ~~ THEN REPLY #54395 /* ~"Jak můžu zničit ten řetěz a zlikvidovat mor?"~ */ JOURNAL #54392 /* ~Trias mi řekl, že ho může uvolnit pouze čin dobroty - v tomto případě získání jeho meče a přeseknutí jeho řetězů.~ */ GOTO 21
  IF ~~ THEN REPLY #54396 /* ~"Mám pro tebe další otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54397 /* ~"Sbohem... prozatím."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.2 8.2 10.2 15.0
  SAY #54398 /* ~"Jsi na neutrální půdě Pustin, ve zdech bránového města Curst, domova zrádců, města, které sousedí s vězeňskou sférou Carceri. Jsi pohřben ve vězení a v cele Triase Odsouzeného, uvrženého do této cely, kde budu, dokud mě neuvolní čin dobroty, slitování a spravedlnosti."~ */
  IF ~~ THEN REPLY #54399 /* ~"Řekni mi o Curstu."~ */ GOTO 26
  IF ~~ THEN REPLY #54400 /* ~"Řekni mi o Carceri."~ */ GOTO 27
  IF ~~ THEN REPLY #54401 /* ~"Jak tě sem uvrhli?"~ */ GOTO 22
  IF ~~ THEN REPLY #54402 /* ~"Jak tě můžu uvolnit?"~ */ JOURNAL #54392 /* ~Trias mi řekl, že ho může uvolnit pouze čin dobroty - v tomto případě získání jeho meče a přeseknutí jeho řetězů.~ */ GOTO 21
  IF ~~ THEN REPLY #54403 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 4.3 8.3 10.3
  SAY #54404 /* ~"Jsem Trias Odsouzený, Trias Zraněný, ztracené dítě Elysia, Generál Armád Vyšších Sfér."~ */
  IF ~~ THEN REPLY #54405 /* ~"Co je tohle za místo?"~ */ GOTO 14
  IF ~~ THEN REPLY #54406 /* ~"Jak ses sem dostal?"~ */ GOTO 22
  IF ~~ THEN REPLY #54407 /* ~"Vyšší Sféry?"~ */ GOTO 23
  IF ~~ THEN REPLY #54408 /* ~"Odsouzený?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.4 8.4 10.4
  SAY #54409 /* ~"To je vše, co mi na tomto místě zůstalo. A teď, co si ode mě přeješ, smrtelníku? Promluv a pak odejdi."~ */
  IF ~~ THEN REPLY #54410 /* ~"Mám pro tebe pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #54411 /* ~"Jak ses sem dostal?"~ */ GOTO 22
  IF ~~ THEN REPLY #54412 /* ~"Co mi můžeš říct o ráji?~ */ GOTO 23
  IF ~~ THEN REPLY #54413 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0 118.0
  SAY #54414 /* ~"Smrtelníku, odpovím na všechny tvé otázky, jakmile mě uvolníš, a to s jasnější myslí. Teď udeř a vrať mi můj meč!"~ */
  IF ~~ THEN REPLY #54415 /* ~Udeř do řetězu.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Udeř devu.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Udeř devu.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54417 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #4 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Know_Sword","GLOBAL",1)
PartyHasItem("Celestia")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #54418 /* ~"Ano?"~ [TTB003C] */
  IF ~~ THEN REPLY #54419 /* ~"Znovu mám otázky."~ */ GOTO 118
  IF ~~ THEN REPLY #54420 /* ~Udeř do řetězu.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54421 /* ~Udeř devu.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Zaútoč na Triase.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54422 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.2 17.1 18.2 118.2
  SAY #54423 /* ~Meč se v tvých rukou bíle zablesknul, když jsi s ním udeřil devu. Hrozivě zařval a zemřel... v jeho hlase je obsažený hlas umírajícího světa a ty si nemůžeš pomoct, ale najednou máš jistotu, žes udělal hroznou chybu.~ */
  IF ~~ THEN REPLY #54424 /* ~"Tak to by bylo..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1 17.0 18.1 49.0 118.1
  SAY #54425 /* ~Řetěz snadno povolil, zvuk hromu tě na chvíli téměř ohlušil. Všechno na chvíli zčernalo. Cítíš, jak ti meč zmizel ze sevření.~ */
  IF ~~ THEN REPLY #54426 /* ~Počkej...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.0 13.1 14.3 22.0 24.1 32.0
  SAY #54427 /* ~"Čin dobroty mě uvolní. Můj meč - má duše - je nositelem takové dobroty. Dones mi meč a udeř s ním do řetězu. Meč je někde tady ve vězení, zamčený v hlídané komnatě. Znám kombinaci pro vstup." Promluvil tři arkánní slabiky, které se ti vtiskly do paměti. "Uvolni mě, a já budu... tvým dlužníkem. Možná bude v mých silách pomoci ti s tím, co hledáš."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54428 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54429 /* ~"Co víš o tom, co hledám?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ GOTO 25
  IF ~~ THEN REPLY #68139 /* ~"Udělám to. Sbohem."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.2 15.1 16.1 26.1 27.1
  SAY #54430 /* ~"Zrazen, ve městě známém díky zrádcům. Myslel jsem si, že tady dokážu zažehnout jiskřičku dobra, uvolnit několik duší z pastí, které si stvořily samy pro sebe. Místo toho jsem byl chycen, proti své vůli, svými bývalými kohortami, a uvězněn v téhle bublině pod zemí."~ */
  IF ~~ THEN REPLY #54431 /* ~"Jak tě můžu uvolnit?"~ */ JOURNAL #54392 /* ~Trias mi řekl, že ho může uvolnit pouze čin dobroty - v tomto případě získání jeho meče a přeseknutí jeho řetězů.~ */ GOTO 21
  IF ~~ THEN REPLY #54432 /* ~"Mám pro tebe další otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54433 /* ~"No, hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.2 16.2
  SAY #54434 /* ~Po jeho tváři přejel stín. "Obávám se, že už je nikdy neuvidím. Krásu Arkádie, vyhlídky Elysia, Sedm hor Mount Celestie... všechna ošklivost Nižších Sfér tam ustupuje do pozadí, tam, kde je doopravdy možno věřit ve vykoupení, spásu. Obávám se, že příliš mnoho duší se pro inspiraci a pomoc obrací pouze k Nižším sférám..."~ */
  IF ~~ THEN REPLY #54435 /* ~"Co mi můžeš říct o Arkádii?"~ */ GOTO 29
  IF ~~ THEN REPLY #54436 /* ~"Co mi můžeš říct o Elysiu?"~ */ GOTO 30
  IF ~~ THEN REPLY #54437 /* ~"Co mi můžeš říct o Mount Celestii?"~ */ GOTO 31
  IF ~~ THEN REPLY #54438 /* ~"Aha... Mám nějaké jiné otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54439 /* ~"Pravděpodobně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.3 24.2
  SAY #54440 /* ~"Byl jsem šampión armád Vyšších Sfér, teď jsem zkrocen a pohřben pod tímto nenávistným městem. Přeji si znovu volně létat, daleko odsud, daleko od těchto řetězů, které uvrhly mé bytí do nehybnosti a rozkladu."~ */
  IF ~~ THEN REPLY #54441 /* ~"Co mi můžeš říct o těch řetězech?"~ */ GOTO 32
  IF ~~ THEN REPLY #54442 /* ~"Jak tě můžu uvolnit?"~ */ JOURNAL #54392 /* ~Trias mi řekl, že ho může uvolnit pouze čin dobroty - v tomto případě získání jeho meče a přeseknutí jeho řetězů.~ */ GOTO 21
  IF ~  False()
~ THEN REPLY #54443 /* ~"Ale tvá křídla jsou spálená, nemůžeš létat."~ */ GOTO 24
  IF ~~ THEN REPLY #54444 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54445 /* ~"Hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #54446 /* ~Smutně se usmál. "Máš na sobě značky na tváři, neseš je i v srdci. Pokud ze mě budou tyto řetězy sejmuty... tak bych ti mohl pomoci... Ale dokud budu v okovech..." Deva pokrčil rameny. "Do té doby ti nemohu dokonce dát ani dobrou radu. Tyto řetězy zardousily mou paměť i mé instinkty."~ */
  IF ~~ THEN REPLY #54447 /* ~"Velmi dobře. Najdu tvůj meč. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.0 27.0
  SAY #54448 /* ~Jeho tvář nabrala výraz lítosti. "Město zrádců, zrádců ostatních i sebe samých. Žádnému nelze věřit, všichni kují intriky proti všem... dokonce i ti, kdo chtějí jen dobro."~ */
  IF ~~ THEN REPLY #54449 /* ~"Co mi můžeš říct o Carceri?"~ */ GOTO 27
  IF ~~ THEN REPLY #54450 /* ~"Jak jsi byl zrazen?"~ */ GOTO 22
  IF ~~ THEN REPLY #54451 /* ~"Mám pro tebe další otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54452 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.1 26.0
  SAY #54453 /* ~"Je to vězení sfér, sféra, kde jsou dokonce i mocnosti bezmocné před zradou. Jenom málo ji opouští, a i to málo je nechává změněné."~ */
  IF ~~ THEN REPLY #54454 /* ~"Řekni mi o Curstu."~ */ GOTO 26
  IF ~~ THEN REPLY #54455 /* ~"Jak jsi byl zrazen?"~ */ GOTO 22
  IF ~~ THEN REPLY #54456 /* ~"Mám pro tebe další otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54457 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 10.6
  SAY #54458 /* ~"Byla to součást větší zrady - spálili má křídla a spoutaly mé tělo, abych jim nemohl uletět. Je to povahou tohoto místa, že krása není tolerována."~ */
  IF ~~ THEN REPLY #54459 /* ~"Aha. Mám pro tebe víc otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #54460 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 30.0 31.0
  SAY #54461 /* ~"Ráj plný řádu, vše má své místo a spokojenost - ne ten chaos a zrada těchto nižších světů. Ráj, takový, jaký jsi nikdy nepoznal."~ */
  IF ~~ THEN REPLY #54462 /* ~"Co mi můžeš říct o Elysiu?"~ */ GOTO 30
  IF ~~ THEN REPLY #54463 /* ~"Co mi můžeš říct o Mount Celestii?"~ */ GOTO 31
  IF ~~ THEN REPLY #54464 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54465 /* ~"Mé díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 29.0 31.1
  SAY #54466 /* ~"Sféra Odpočinku, sféra mírumilovného poklidu, kde vlny chaosu a řádu omývají obyvatele dobrem. Lesy, travnaté planiny, vše tam neodráží krásu, ale *je* krásou samotnou. Je to místo, jako žádné jiné. Je to vrchol dobroty a laskavosti."~ */
  IF ~~ THEN REPLY #54467 /* ~"Co mi můžeš říct o Arkádii?"~ */ GOTO 29
  IF ~~ THEN REPLY #54468 /* ~"Co mi můžeš říct o Mount Celestii?"~ */ GOTO 31
  IF ~~ THEN REPLY #54469 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54470 /* ~"Mé díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 29.1 30.1
  SAY #54471 /* ~"Sedm Hor Dobra a Řádu, sféra, kde je vše koupáno v teplé záři spravedlnosti a slitování. Ideál. Obyvatelé se tam snaží o spravedlnost i slitování a nestačí jim pouze stíny těchto ideálů. Jsou to ideály, které se musí dodržovat, ne jídlo pro ústa malomyslných a nenechavých."~ */
  IF ~~ THEN REPLY #54472 /* ~"Co mi můžeš říct o Arkádii?"~ */ GOTO 29
  IF ~~ THEN REPLY #54473 /* ~"Co mi můžeš říct o Elysiu?"~ */ GOTO 30
  IF ~~ THEN REPLY #54474 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54475 /* ~"Mé díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.0
  SAY #54476 /* ~"Řetězy jsou vytvořeny tak, aby mě držely bez držení. Utopily mé vzpomínky, zpomalují mě, drží, jako ohromná řeka Styx. Nemohu je zlomit svou silou... pouze nesmrtelná božská síla, akt spravedlnosti a slitování je může roztříštit."~ */
  IF ~~ THEN REPLY #54477 /* ~"A co je tou silou?"~ */ GOTO 21
  IF ~~ THEN REPLY #54478 /* ~"Aha. Mám nějaké jiné otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #54479 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.0 9.1
  SAY #54480 /* ~"Nenechám se mučit někým, kdo cestuje s fiendy. Tanar'ri, navzdory tvé podobě, pro tebe nebudu tak snadný cíl, jako je tento smrtelník. Promluv a pak nechej Triase v jeho vězení."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 178
END

IF ~~ THEN BEGIN 34 // from:
  SAY #54481 /* ~"Mluvíš pohotově, tanar'ri, jako všichni tvého druhu. Ptej se, smrtelníku, a pak odejdi."~ */
  IF ~~ THEN REPLY #54482 /* ~"Nejsem smrtelník."~ */ GOTO 35
  IF ~~ THEN REPLY #54483 /* ~"Čarodějnice Ravel mě za tebou poslala. Řekla, že budeš vědět o mé ukradené smrtelnosti."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54484 /* ~"Slyšel jsem, že se tady objevil mor, jakmile otevřeli tvou celu."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54485 /* ~"Co je tohle za místo?'~ */ GOTO 38
  IF ~~ THEN REPLY #54486 /* ~"Kdo jsi?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54487 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54488 /* ~"Jak jsi přišel k těm spáleným křídlům?"~ */ GOTO 41
  IF ~~ THEN REPLY #54489 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #54490 /* ~Deva se zasmál čirými, stříbrnými tóny. "Jak si přeješ, smrtelníku. Čeho ode mě žádáš?"~ */
  IF ~~ THEN REPLY #54491 /* ~"Čarodějnice Ravel mě za tebou poslala. Řekla, že budeš vědět o mé ukradené smrtelnosti."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54492 /* ~"Slyšel jsem, že se tady objevil mor, jakmile otevřeli tvou celu."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54493 /* ~"Co je tohle za místo?'~ */ GOTO 38
  IF ~~ THEN REPLY #54494 /* ~"Kdo jsi?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54495 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54496 /* ~"Jak jsi přišel k těm spáleným křídlům?"~ */ GOTO 41
  IF ~~ THEN REPLY #54497 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0 45.0 52.0
  SAY #54498 /* ~"Ravel... noční čarodějnice... ukradená smrtelnost... vše je mi povědomé, ale obávám se, že nemohu sáhnout do studnice své znalosti, dokud mě tyto řetězy poutají."~ */
  IF ~~ THEN REPLY #54499 /* ~"Proč ne?"~ */ GOTO 42
  IF ~~ THEN REPLY #54500 /* ~"Jak mohou být ty řetězy zlomeny?"~ */ JOURNAL #54392 /* ~Trias mi řekl, že ho může uvolnit pouze čin dobroty - v tomto případě získání jeho meče a přeseknutí jeho řetězů.~ */ GOTO 42
  IF ~~ THEN REPLY #54501 /* ~"Proč tě uvěznili?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1 45.1 52.1
  SAY #54502 /* ~"Je to jejich vlastní práce. Ukováním těchto řetězů, jimiž mě spoutali, naplnili jednotlivé články hořkostí a zradou. Jejich krátkozrakost je jejich pádem. Kdyby vyslyšeli mé varování, nestalo by se to." Jeho oči naplnil hluboký smutek. "Mé srdce jich lituje."~ */
  IF ~~ THEN REPLY #54503 /* ~"Co mi můžeš říct o těch řetězech?"~ */ GOTO 42
  IF ~~ THEN REPLY #54504 /* ~"Jak mohou být ty řetězy přetrženy?"~ */ JOURNAL #54392 /* ~Trias mi řekl, že ho může uvolnit pouze čin dobroty - v tomto případě získání jeho meče a přeseknutí jeho řetězů.~ */ GOTO 43
  IF ~~ THEN REPLY #54505 /* ~"Mám ještě další otázky..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 38 // from: 34.3 35.2 39.0 45.2 52.2
  SAY #54506 /* ~"Toto? To je vězení pod bránovým městem Curst, portálu do Carceri, vězeňské sféry bohů. Je to domov zrádců, zahořklých, odsouzených... ať už si zasloužili či ne své odsouzení."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 180
END

IF ~~ THEN BEGIN 39 // from: 34.4 35.3 45.3 52.3
  SAY #54507 /* ~"Jsem Trias, Odsouzenec, dříve generál Nebeských Legií Vyšších Sfér, teď chřadnoucí pod nejodpornějším z hraničních měst."~ */
  IF ~~ THEN REPLY #54508 /* ~"Co je tohle za místo?"~ */ GOTO 38
  IF ~~ THEN REPLY #54509 /* ~"Jak ses sem dostal?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 34.5 35.4 43.0 45.4 52.4
  SAY #54510 /* ~Na chvíli vypadá šokovaně. "Nebeský Oheň? Ty jsi získal můj meč? Uvolníš mě? Tak tedy udeř do řetězů!"~ */
  IF ~~ THEN REPLY #54511 /* ~"Nejdřív mám nějaké otázky..."~ */ GOTO 49
  IF ~~ THEN REPLY #54512 /* ~Udeř do řetězu.~ */ GOTO 50
  IF ~~ THEN REPLY #54513 /* ~Udeř devu.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54514 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.6 35.5 45.5 52.5
  SAY #54515 /* ~"Byla to součást větší zrady - spálili má křídla a spoutali mé tělo, abych jim nemohl uletět. Je to povahou tohoto místa, že krása není tolerována."~ */
  IF ~~ THEN REPLY #54516 /* ~"Mám pro tebe víc otázek..."~ */ GOTO 45
  IF ~~ THEN REPLY #54517 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1 37.0
  SAY #54518 /* ~"Tyto řetězy blokují více než jenom můj pohyb. Vzpomínky na tuto znalost mám, ale řetězy mi nedovolí k nim přistoupit."~ */
  IF ~~ THEN REPLY #54519 /* ~"Jak může být řetěz přetržen?"~ */ JOURNAL #54392 /* ~Trias mi řekl, že ho může uvolnit pouze čin dobroty - v tomto případě získání jeho meče a přeseknutí jeho řetězů.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 37.1 42.0
  SAY #54520 /* ~"Kdybych měl nástroj svého úřadu, snadno bych se těch řetězů zbavil. Můj Meč, Nebeský Oheň, je držen stíny tohoto města, používají ho jako zdroj energie pro toto ubohé vězení. Kdybych ho jenom držel v ruce... znovu bych poznal svobodu. Je někde tady ve vězení, zamčený v hlídané komnatě. Znám kombinaci pro vstup." Promluvil tři arkánní slabiky, které se ti vtiskly do paměti. "Vrať se a udeř do řetězů mým mečem, a má obnovená paměť pomůže nám oběma."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54521 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #68140 /* ~"Dobrá tedy. Já se vrátím."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2 39.1
  SAY #54522 /* ~"Lidé tohoto města- všichni jsou zrádci - nevědí nic o pravdě a kráse. Nesnesou ji. Vlákali mě sem a uvěznili. Smrtelníci nemají perspektivu, která by jim umožnila vypěstovat si charakter, jenž je nad pozemskými touhami. Snažil jsem se je poučit...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 179
END

IF ~~ THEN BEGIN 45 // from: 37.2 41.0 46.0 47.1 48.0
  SAY #54523 /* ~"Znovu?"~ */
  IF ~~ THEN REPLY #54524 /* ~"Čarodějnice Ravel mě za tebou poslala. Řekla, že budeš vědět o mé ukradené smrtelnosti."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54525 /* ~"Slyšel jsem, že se tady objevil mor, jakmile otevřeli tvou celu."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54526 /* ~"Co je tohle za místo?'~ */ GOTO 38
  IF ~~ THEN REPLY #54527 /* ~"Kdo jsi?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54528 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54529 /* ~"Jak jsi přišel k těm spáleným křídlům?"~ */ GOTO 41
  IF ~~ THEN REPLY #54530 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #54531 /* ~Jeho krásnou tvář zkroutil úšklebek. "Jistě, slečno tanar'ri, ty nevěříš, že by smrtelníci někdy mohli získat takovou perspektivu? Ne, když jsi to, co jsi - tvá samotná povaha tě nutí zničit jakoukoli šanci, že by se smrtelník mohl pozvednout nad své základní instinkty."~ */
  IF ~~ THEN REPLY #54532 /* ~"Dobře, už dost. Mám víc otázek, Triasi."~ */ GOTO 45
  IF ~~ THEN REPLY #54533 /* ~"Už je toho dost. Sbohem, Triasi."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #54534 /* ~V očích se mu zablesklo. "Armády nechaly svá srdce klopýtnout, protože se neopovažují postavit fiendům přímo. Kde je jejich duch, jejich láska, jejich cudnost? Mí páni řídí války zdaleka, manipulují fiendy tak, aby draze bojovali mezi sebou, dávají jim zbraně a plní jejich mysli znalostmi, jak ublížit ostatním ještě efektivněji, takže fiendi nemají čas vzhlédnout a podívat se na naše zlaté zahrady."~ */
  IF ~~ THEN REPLY #54535 /* ~"Jak by se to mohlo změnit?"~ */ GOTO 48
  IF ~~ THEN REPLY #54536 /* ~"Aha. Mám jiné otázky..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #54537 /* ~Trias se uklidnil, ale jeho spálená křidla se pomalu třepetají. "Existují způsoby, jak změnit mysli dokonce i nesmrtelných generálů. Jednoho dne prozřou, o tom nepochybuju."~ */
  IF ~~ THEN REPLY #54538 /* ~"Aha. Mám jiné otázky..."~ */ GOTO 45
  IF ~~ THEN REPLY #54539 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 40.0
  SAY #54540 /* ~"Smrtelníku, odpovím na všechny tvé otázky, jakmile mě uvolníš, a to s jasnější myslí. Teď udeř a vrať mi můj meč!"~ */
  IF ~~ THEN REPLY #54541 /* ~Udeř do řetězu.~ */ GOTO 20
  IF ~~ THEN REPLY #54542 /* ~Udeř devu.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54543 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 40.1
  SAY #54544 /* ~Řetěz snadno povolil, zvuk hromu tě na chvíli téměř ohlušil. Všechno na chvíli zčernalo. Cítíš, jak ti meč zmizel ze sevření.~ */
  IF ~~ THEN REPLY #54545 /* ~Počkej...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #54546 /* ~Meč se v tvých rukou bíle zablesknul, když jsi s ním udeřil devu. Hrozivě zařval a zemřel... v jeho hlase je obsažený hlas umírajícího světa a ty si nemůžeš pomoct, ale máš jistotu, že jsi udělal hroznou chybu.~ */
  IF ~~ THEN REPLY #54547 /* ~"Tak to by bylo..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ EXIT
END

IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #54548 /* ~"Máš další otázku?"~ [TTB034] */
  IF ~~ THEN REPLY #54549 /* ~"Čarodějnice Ravel mě za tebou poslala. Řekla, že budeš vědět o mé ukradené smrtelnosti."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54550 /* ~"Slyšel jsem, že se tady objevil mor, jakmile otevřeli tvou celu."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54551 /* ~"Co je tohle za místo?'~ */ GOTO 38
  IF ~~ THEN REPLY #54552 /* ~"Kdo jsi?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54553 /* ~"Je tohle tvůj meč? Byl uprostřed vězení."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54554 /* ~"Jak jsi přišel k těm spáleným křídlům?"~ */ GOTO 41
  IF ~~ THEN REPLY #54555 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.0 112.0
  SAY #54556 /* ~"Hledáš moc nad vědomím ostatních smrtelníků? Doufáš, že ti budou splněna tvá přání? Chceš bohatství? Hledáš další duše, které bys mohl mučit?"~ */
  IF ~~ THEN REPLY #54557 /* ~"Hledám znalosti, ne moc nebo bohatství."~ */ GOTO 56
  IF ~~ THEN REPLY #54558 /* ~"Dej mi moc."~ */ GOTO 54
  IF ~~ THEN REPLY #54559 /* ~"Pověz mi o bohatství."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.1 55.0
  SAY #54560 /* ~"Nemohu ti dát moc, stejně jako ti nemohu dát moudrost nebo inteligenci. Není to dar, který by mohl být darován, ale takový, jenž si musíš zasloužit. Neschopnost pochopit tento základ je často první krůček k pádu smrtelníků."~ */
  IF ~~ THEN REPLY #54561 /* ~"Tak mi dej znalosti."~ */ GOTO 56
  IF ~~ THEN REPLY #54562 /* ~"Tak mi dej bohatství."~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 53.2 54.1
  SAY #54563 /* ~"Tak si ho vydělej a pak sleduj, jak tě tvá povaha opouští, i když máš větší *cenu*. Nemluv na mně jazykem obchodníků."~ */
  IF ~~ THEN REPLY #54564 /* ~"Tak mi dej moc."~ */ GOTO 54
  IF ~~ THEN REPLY #54565 /* ~"Tak mi dej znalosti."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.0 54.0 55.1
  SAY #54566 /* ~"Tak vyslov svou touhu."~ */
  IF ~~ THEN REPLY #54567 /* ~"Má smrtelnost mi byla ukradena. Chci ji zpět."~ */ JOURNAL #54569 /* ~Deva Trias mi řekl, že fiend jménem Fhjull Jedovatý Jazyk by mi mohl pomoci. Fiend žije v Pustinách, a zřejmě je Triasovi nějakým způsobem zavázán.~ */ GOTO 57
  IF ~~ THEN REPLY #54568 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #54570 /* ~"Mluvíš hlouposti... Ale... je tady jeden, kdož ti může pomoci s tím, po čem pátráš. Je to fiend, jménem Fhjull Jedovatý Jazyk. Pomůže ti." Deva se usmál. "Je zavázán konat dobro."~ */
  IF ~~ THEN REPLY #54571 /* ~"Jak se k němu dostanu?"~ */ JOURNAL #54572 /* ~Mohu opustit Curst portálem na severu a najít Fhjulla. Jako klíč mám použít článek řetězu, který poutal Triase.~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 102.1 104.0
  SAY #54573 /* ~"Haly jsou temné a vypadají prázdně - ale jako ty, přitahují k sobě mučené duše jako magnet. Stejně jako ty jsou prázdné a přitom plné vyvrženců. Jako ty jsou monumentem muk a utrpení. Mám ti říct o těch duších, smrtelníku?"~ */
  IF ~~ THEN REPLY #54574 /* ~"Ano."~ */ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #54575 /* ~"Na severu tohoto vězení je portál. Klíčem je zlomený článek řetězu." Podíval se na roztříštěné články kolem, jeden zvedl a vtiskl ti jej do ruky. "Vhodný klíč pro toho, kdo touží opustit Curst."~ */
  IF ~~ THEN REPLY #54576 /* ~"Mé díky. Sbohem."~ */ DO ~SetGlobal("Outland_Portal","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #54577 /* ~Jeho krvavý úsměv se rozšířil "Jsou to duše těch, kdož zemřeli za tebe. Stali se stíny, abys ty mohl žít. Jsou to *tvé* stíny, stíny, jež vrháš na existenci a najdou tě, poutníku, a budou tě mučit, aby ti oplatili svá muka. Své dluhy zaplatíš prostřednictvím jejich rukou, ty a ti, kdož budou dost hloupí, aby tě následovali."~ */
  IF ~~ THEN REPLY #54578 /* ~"To jsem si jistý. Co mi můžeš říct tom hlídači?"~ */ GOTO 103
  IF ~~ THEN REPLY #54579 /* ~"Díky za povzbuzení, Triasi. Teď zemřeš."~ */ GOTO 105
  IF ~~ THEN REPLY #54580 /* ~"To uvidíme. Co uděláš, až tě opustím, Triasi?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #54581 /* ~"Sbohem, smrtelníku. Mám... něco důležitého na práci." Významně se zahleděl na strop vězení a pak se vrhl do země nad sebou jako plavec do oceánu.~ */
  IF ~~ THEN REPLY #61264 /* ~Odejdi.~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #54582 /* ~Prázdný uzel.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("Trias_Defeated","GLOBAL",1)
~ THEN BEGIN 63 // from:
  SAY #54583 /* ~"Vzdávám se ti v tuto hodinu, smrtelníku. Mé uvěznění mě oslabilo... v mém stavu pro tebe nejsem soupeř."~ [TTB120] */
  IF ~~ THEN REPLY #54584 /* ~"Triasi, i kdybys byl v plné moci, neměl bys proti mně šanci. A teď mi řekni, co potřebuju vědět."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 93
  IF ~~ THEN REPLY #54585 /* ~"Stále od tebe požaduju vědomosti, Triasi. Řekni mi, jak mám dosáhnout Pevnosti Lítosti."~ */ DO ~SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 94
  IF ~~ THEN REPLY #54586 /* ~Zabij devu.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 98
END

IF ~~ THEN BEGIN 64 // from: 119.0
  SAY #54587 /* ~"Podívej se na ně, pobíhají a snaží se zachránit svá ubohá vlastnictví a své ubohé životy. Všiml jsem si, žes neudělal nic, co by jim pomohlo. Tvá sobeckost mě učinila silnějším."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 12
END

IF ~~ THEN BEGIN 65 // from: 120.0
  SAY #54588 /* ~"Podívej se na ně, pobíhají a snaží se zachránit svá ubohá vlastnictví a své ubohé životy. Všiml jsem si, že jsi neudělal nic, co by jim pomohlo. Tvá sobeckost mě učinila silnějším."~ */
  IF ~~ THEN REPLY #54589 /* ~"Proč jsi mi lhal?"~ */ GOTO 71
  IF ~~ THEN REPLY #54590 /* ~"Proč jsi stáhnul Curst do Pustin?"~ */ GOTO 72
  IF ~~ THEN REPLY #54591 /* ~"Hezkej trik s městem, Triasi. Řekni mi, jak se dostanu do Pevnosti Lítosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54592 /* ~Zaútoč na něj.~ */ GOTO 70
END

IF ~~ THEN BEGIN 66 // from: 121.0
  SAY #54599 /* ~"Zkoušel jsi změnit město, smrtelníku, ale pro ně už je pozdě. Teď mají odměnu za svůj nedostatek víry."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 67 // from: 122.0
  SAY #54600 /* ~"Zkoušel jsi změnit město, smrtelníku, ale pro ně už je pozdě. Teď mají odměnu za svůj nedostatek víry."~ */
  IF ~~ THEN REPLY #54601 /* ~"Proč jsi mi lhal?"~ */ GOTO 71
  IF ~~ THEN REPLY #54602 /* ~"Proč jsi stáhnul Curst do Pustin?"~ */ GOTO 72
  IF ~~ THEN REPLY #54603 /* ~"Hezkej trik s městem, Triasi. Řekni mi, jak se dostanu do Pevnosti Lítosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 75
  IF ~~ THEN REPLY #54604 /* ~Zaútoč na něj.~ */ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 123.0
  SAY #54605 /* ~Trias přejel pohledem město. "Mnoho dobra jsi vykonal za tak krátký čas, smrtelníku. Ale nebude to dost, aby to stačilo napravit ty zrádce."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 69 // from: 124.0
  SAY #54606 /* ~Trias přejel pohledem město. "Mnoho dobra jsi vykonal za tak krátký čas, smrtelníku. Ale nebude to dost, aby to stačilo napravit ty zrádce."~ */
  IF ~~ THEN REPLY #54607 /* ~"Proč jsi mi lhal?"~ */ GOTO 71
  IF ~~ THEN REPLY #54608 /* ~"Proč jsi stáhnul Curst do Pustin?"~ */ GOTO 72
  IF ~~ THEN REPLY #54609 /* ~"Hezkej trik s městem, Triasi. Řekni mi, jak se dostanu do Pevnosti Lítosti a skončíme to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54610 /* ~Zaútoč na něj.~ */ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 65.3 67.3 69.3 80.2 86.2
  SAY #54611 /* ~Triasovy oči zahořely, po jeho meči přejela jiskra. "Teď uvidíme, jestli můžeš zemřít. Konečně, konečně budeš trpět."~ [TTB118] */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54612 /* ~Zaútoč na něj.~ */ DO ~ForceAttack(Protagonist,Myself)
ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54613 /* ~Počkej.~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54614 /* ~"Promluvme si!"~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54615 /* ~Zaútoč na něj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54616 /* ~Počkej.~ */ DO ~Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54617 /* ~"Promluvme si!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 65.0 67.0 69.0
  SAY #54618 /* ~"Potřeboval jsi ukázat cestu. Cena za tvou potřebu byla zrada. Jak můžeš věřit, že sis zasloužil právo na pravdy v tomto životě, nebo v dalším. Byla to tvá povinnost jakožto nižší bytosti uvolnit mě. Nic ti nedlužím a to je to, co jsem ti dal. Dal jsem ti více, než sis zasloužil. Uvolnil jsi mě, abys pomohl sám sobě."~ */
  IF ~~ THEN REPLY #54619 /* ~"Tak proč jsi stáhnul Curst do Pustin?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 65.1 67.1 69.1 71.0
  SAY #54620 /* ~"Město zrádců bylo zrazeno a dostalo, co si zasloužilo. Není 'proč'. Zpečetilo to mou smlouvu s Nižšími Sférami. Poslouží to většímu dobru."~ */
  IF ~~ THEN REPLY #54621 /* ~"Ty jsi uzavřel dohodu s Nižšími Sférami?"~ */ GOTO 73
  IF ~~ THEN REPLY #54622 /* ~"Větší dobro? Jaké větší dobro?"~ */ GOTO 74
  IF ~~ THEN REPLY #54623 /* ~"Kdo tě určil popravčím? Kdo ti na to dal právo?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #54624 /* ~"Není možné dobýt Mount Celestia bez armády. Složení armády pro mě není důležité. Je jednodušší najmout taková stvoření, než je donutit k útoku."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54625 /* ~"Ty zaútočíš na Mount Celestia s *fiendy*? Není spolčování s nimi proti tvé povaze?"~ */ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54626 /* ~"Ty zaútočíš na Mount Celestia s *fiendy*? Není spolčování s nimi proti tvé povaze?"~ */ GOTO 77
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #54627 /* ~"Krev prolitá armádou fiendů bude vykoupena spravedlivým hněvem Armád Nebes. Ti, kdož padnou, učiní tak ve jménu většího dobra. Toto město padlo ve jménu většího dobra - vymazání zla. Malá oběť, když vezmeš v úvahu, kdo je obětován."~ */
  IF ~~ THEN REPLY #54628 /* ~"Z kořenů zla nikdy nevzejde dobro."~ */ GOTO 86
  IF ~~ THEN REPLY #54629 /* ~"Velmi dobře. Souhlasím. Jenom mi řekni, jak se dostanu do Pevnosti Lítosti a já tě nechám tvému obětovávání."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 67.2 72.2 92.0
  SAY #54630 /* ~"Jsem *tady*. Vidím zlo. Jsem ochoten jednat. Má *vůle* mi dává právo."~ */
  IF ~~ THEN REPLY #54631 /* ~"Jenom vůle ti nikdy nemůže dát právo, Triasi."~ */ GOTO 86
  IF ~~ THEN REPLY #54632 /* ~"Velmi dobře. Souhlasím. Jenom mi řekni, jak se dostanu do Pevnosti Lítosti a já tě nechám tvému obětovávání."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 73.0
  SAY #54633 /* ~Devova tvář se zakabonila. "Dělám to ve jménu Dobra!" vyštěknul. "Zatímco se generálové Vyšších Sfér schovávají za svými zlatými bránami a podporují brutální válku, která požírá nevinné, já je zkonfrontuji s tím, čeho se bojí nejvíce a skrze tuto konfrontaci oni přemohou svůj strach."~ */
  IF ~~ THEN REPLY #54634 /* ~"Tím, že zradíš svou *vlast*?"~ */ GOTO 80
  IF ~~ THEN REPLY #54635 /* ~"A poskvrníš pole Dobra inkarnací zla?"~ */ GOTO 90
  IF ~~ THEN REPLY #54636 /* ~"Musí být jiný způsob, Triasi."~ */ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 73.1
  SAY #54637 /* ~Devova tvář se zakabonila. "Dělám to ve jménu Dobra!" vyštěknul. "Zatímco se generálové Vyšších Sfér schovávají za svými zlatými bránami a podporují brutální válku, která požírá nevinné, já je zkonfrontuji s tím, čeho se bojí nejvíce, a skrze tuto konfrontaci oni přemohou svůj strach."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 182
END

IF ~~ THEN BEGIN 78 // from:
  SAY #54638 /* ~"Příliš nadhodnocuješ jejich šance, tanar'ri. Idea je silnější než jakákoli armáda. A co víš o vojenské taktice, *svůdnice*?" Tvé dovednosti patří do úplně jiné oblasti." Jeho oči přejeli Gracino tělo. "Nechej strategii těm, kteří ji rozumí."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 183
END

IF ~~ THEN BEGIN 79 // from:
  SAY #54639 /* ~"Jsi pro mě tajemstvím, tanar'ri. A jsem si jist, že to je přesně to, co chceš." Opět se zaměřil na tebe.~ */
  IF ~~ THEN REPLY #54640 /* ~"Myslíš si, že to vyřešíš tak, že zradíš svou *vlast*?"~ */ GOTO 80
  IF ~~ THEN REPLY #54641 /* ~"A poskvrníš pole Dobra inkarnací zla?"~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54642 /* ~"Musí být jiný způsob, Triasi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54643 /* ~"Musí být jiný způsob, Triasi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 80 // from: 76.0 79.0 90.0
  SAY #54644 /* ~"Povím ti o zradě, člověče. Zrada je zanechání války proti zlu. Zrada je zbabělost, prodávání zbraní tvým nepřátelům ze strachu, že by se mohli přestat zabíjet mezi sebou a otočit se proti tobě. Zrada je odmítnutí vést ostatní vlastním příkladem. Zrada je přehlížení fiendů, kteří pobíhají po Sférách, dokud nebudou všechna srdce poničena zlem. Neptej se mě, proč chci dobýt Mount Celestia a vnést oheň války do zpohodlnělých lenochů a zbabělců, kteří tam spočívají. To není zrada."~ */
  IF ~~ THEN REPLY #54645 /* ~"Poskvrníš pole Dobra inkarnací zla. To mi připadá jako zrada."~ */ GOTO 81
  IF ~~ THEN REPLY #54646 /* ~"Zrada je zrada."~ */ GOTO 81
  IF ~~ THEN REPLY #54647 /* ~"Už mám dost té tvé rádoby spravedlnosti, Triasi. Připrav se na smrt."~ */ GOTO 70
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1 86.0 86.1
  SAY #54648 /* ~"Existuje mnoho definic zrady. Musíš žít dlouho, abys je zažil všechny. Dokonce i tvůj život, kdyby nebyl znehodnocen zapomněním, neobsahuje tolik století, kolik je nutných k pochopení. Taková zrada vůbec není zradou."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #54649 /* ~"Co se doopravdy stalo s tvými křídly, Triasi?"~ */ GOTO 82
  IF ~~ THEN REPLY #54650 /* ~"Ustup, Triasi, a nedojde k násilí."~ */ GOTO 83
  IF ~~ THEN REPLY #54651 /* ~"Dost, Triasi. Braň se."~ */ GOTO 84
  IF ~~ THEN REPLY #54652 /* ~"Řekni mi, jak se dostanu do Pevnosti Lítosti, a já tě nechám být."~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 81.0 91.0
  SAY #54653 /* ~"Ohně Baatoru jsou žhavé, ale jsou jako plamínek svíce v porovnání s otcovým hněvem." Mávl spálenými zbytky křídel. "Žádná bolest není tak silná, jako vypovězení z Mount Celestie."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54654 /* ~"Ustup, Triasi. Ještě stále můžeš být spasen."~ */ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54655 /* ~"Ustup, Triasi. Ještě stále můžeš být spasen."~ */ GOTO 88
  IF ~~ THEN REPLY #54656 /* ~"Takže jsi tedy padlý anděl? Proč bych tedy měl věřit jedinému slovu, které říkáš?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 83 // from: 81.1 90.1 91.1
  SAY #54657 /* ~"Je tvá hloupost tak obrovská, že si přeješ otestovat svou pseudo-nesmrtelnost proti opravdovému nesmrtelnému? Ustup, člověče, nebo uvidíme, jak pravdivé je to tvé tvrzení."~ */
  IF ~~ THEN REPLY #54658 /* ~"Jen pojď, andílku."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 81.2 83.0 88.0
  SAY #54659 /* ~"Je to už dlouho, kdy jsem vztyčil meč proti jinému. Budeme bojovat, ty a já."~ [TTB119] */
  IF ~~ THEN REPLY #54660 /* ~Zaútoč na něj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 65.2 69.2 74.1 75.1 81.3
  SAY #54661 /* ~Trias zahořel. "Myslím, že ne, smrtelníku. Vrháš stín na existenci, přivoláváš muka z nebes, a je v mé moci otevřít tě Světlu." Po jeho čepeli přejel bílí plamen. "Budeme bojovat, ty a já."~ */
  IF ~~ THEN REPLY #54662 /* ~"Dobře, Triasi... ale já tě zabiju."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 74.0 75.0
  SAY #54663 /* ~"Nenechám se tebou soudit, smrtelníku, ne, když jsi žil takové životy. Povím ti o zradě: Zrada je zanechání války proti zlu. Zrada je zbabělost, prodávání zbraní tvým nepřátelům ze strachu, že by se mohli přestat zabíjet mezi sebou a otočit se proti tobě. Zrada je odmítnutí vést ostatní vlastním příkladem. Zrada je přehlížení fiendů, kteří pobíhají po Sférách, dokud nebudou všechna srdce poničena zlem. Neptej se mě, proč chci dobýt Mount Celestia a vnést oheň války do zpohodlnělých lenochů a zbabělců, kteří tam spočívají. To není zrada."~ */
  IF ~~ THEN REPLY #54664 /* ~"Poskvrníš pole Dobra inkarnací zla. To mi připadá jako zrada."~ */ GOTO 81
  IF ~~ THEN REPLY #54665 /* ~"Zrada je zrada."~ */ GOTO 81
  IF ~~ THEN REPLY #54666 /* ~"Už mám dost té tvé rádoby spravedlnosti, Triasi. Připrav se na smrt."~ */ GOTO 70
END

IF ~~ THEN BEGIN 87 // from: 79.2 82.0
  SAY #54667 /* ~Podíval se hluboko do tvých očí. "Čas pro spasení pominul, smrtelníku. Ničeho nelituji. Pokud někdo doopravdy věří, musí být ochotný zradit. Já doopravdy věřím v Dobro, proto jsem se rozhodl, že ho zradím."~ */
  IF ~~ THEN REPLY #54668 /* ~"Možná tě přesvědčím, aby sis to rozmyslel."~ */ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 79.3 82.1
  SAY #54669 /* ~"Ty mi nemluv o spasení, smrtelníku. Páchneš zlem, tvá slova jsou pastí, lží. Ne, tento plán bude pokračovat, a my nakonec uvidíme brány Nebes hořet."~ */
  IF ~~ THEN REPLY #54670 /* ~"V tom případě budeme bojovat."~ */ GOTO 84
END

IF ~~ THEN BEGIN 89 // from: 87.0 92.1
  SAY #54671 /* ~"Pak tedy zkřižme zbraně, smrtelníku, a uvidíme, čí idey jsou mocnější. Braň se, smrtelníku."~ */
  IF ~~ THEN REPLY #54672 /* ~Připrav se.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #54673 /* ~Zaútoč na devu.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 76.1 79.1
  SAY #54674 /* ~"Skvrna nezůstane dlouho, protože bude smyta čistotou těch, jež zůstanou. Je to oběť ve jménu většího dobra."~ */
  IF ~~ THEN REPLY #54675 /* ~"Zradou své vlasti?"~ */ GOTO 80
  IF ~~ THEN REPLY #54676 /* ~"Už je toho dost, Triasi. Ustup, nebo budeme bojovat."~ */ GOTO 83
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #54677 /* ~"Ty, kdo mluvíš v termínech lidských životů, se opovažuješ říct pravému nesmrtelnému, že musí být jiný způsob? Prozkoumal jsem všechny cesty, smrtelníku, a toto je jediná možná cesta."~ */
  IF ~~ THEN REPLY #54678 /* ~"Co se doopravdy stalo s tvými křídly, Triasi?"~ */ GOTO 82
  IF ~~ THEN REPLY #54679 /* ~"Už je toho dost, Triasi. Ustup, nebo budeme bojovat."~ */ GOTO 83
END

IF ~~ THEN BEGIN 92 // from: 82.2
  SAY #54680 /* ~"Nemluv mi o zradách a padnutí, smrtelníku. Jsem ochotný obětovat dokonce i sám sebe, aby Dobro mohlo triumfovat."~ */
  IF ~~ THEN REPLY #54681 /* ~"To je ušlechtilé, Triasi, ale kdo ti na to dává právo?"~ */ GOTO 75
  IF ~~ THEN REPLY #54682 /* ~"Doufám, že už jsi k tomu sebeobětování připravený, Triasi. Hodlám být nástrojem zúčtování."~ */ GOTO 89
END

IF ~~ THEN BEGIN 93 // from: 63.0
  SAY #54683 /* ~"Zadrž svou ruku, smrtelníku. Přišel jsi ke mně při hledání znalosti, která patří pouze mně. Nikdo jiný ve Sférách ti nemůže říct to, co já. Pokud si opravdu přeješ tuto znalost, musíš mi slíbit, že ušetříš můj život."~ */
  IF ~~ THEN REPLY #54684 /* ~"Ani náhodou, Triasi. Řekni mi to, nebo tě zabiju teď hned. Kašlu na nějaké následky."~ */ GOTO 95
  IF ~~ THEN REPLY #54685 /* ~"Ušetřím tvůj život, jestli mi dáš znalost, kterou potřebuji."~ */ GOTO 96
  IF ~~ THEN REPLY #54686 /* ~"Přísahám, že ušetřím tvůj život, jestli mi dáš znalost, kterou potřebuji."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54687 /* ~Zabij devu.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 94 // from: 63.1
  SAY #54688 /* ~Vyplivl krvavou slinu. "Než ti to řeknu, žádám od tebe přesný slib. Musíš přísahat, že ušetříš můj život."~ */
  IF ~~ THEN REPLY #54689 /* ~"Ani náhodou, Triasi. Řekni mi to, nebo tě zabiju teď hned. Kašlu na nějaké následky."~ */ GOTO 95
  IF ~~ THEN REPLY #54690 /* ~"Ušetřím tvůj život, jestli mi dáš znalost, kterou potřebuji."~ */ GOTO 96
  IF ~~ THEN REPLY #54691 /* ~"Přísahám, že ušetřím tvůj život, jestli mi dáš znalost, kterou potřebuji."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54692 /* ~Zabij devu.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 95 // from: 93.0 94.0
  SAY #54693 /* ~"Potřebuješ tu znalost... jinak budeš trpět. Navždy."~ */
  IF ~~ THEN REPLY #54694 /* ~"Řekl jsem: *Pověz mi to*!"~ */ GOTO 97
  IF ~~ THEN REPLY #54695 /* ~"Ušetřím tvůj život, jestli mi dáš znalost, kterou potřebuji."~ */ GOTO 96
  IF ~~ THEN REPLY #54696 /* ~"Přísahám, že ušetřím tvůj život, jestli mi dáš znalost, kterou potřebuji."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54697 /* ~Zabij devu.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 96 // from: 93.1 93.2 94.1 94.2 95.1 95.2 97.0 97.1
  SAY #54698 /* ~"Portál na místo, kam toužíš dorazit, leží ve městě Sigil, ve Městě Dveří. V tomto městě je místo, kam jsou donášeni mrtví tvého druhu..."~ */
  IF ~~ THEN REPLY #54699 /* ~"Myslíš *Márnici*?"~ */ GOTO 99
  IF ~~ THEN REPLY #54700 /* ~"Co je klíčem?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 97 // from: 95.0
  SAY #54701 /* ~Tiše se zasmál. "Nemáš na výběr, smrtelníku. Přísahej, nebo tu znalost navždy ztratíš."~ */
  IF ~~ THEN REPLY #54702 /* ~"Velmi dobře. Ušetřím tvůj život, jestli mi dáš znalost, kterou potřebuji."~ */ GOTO 96
  IF ~~ THEN REPLY #54703 /* ~"Velmi dobře. "Přísahám, že ušetřím tvůj život, jestli mi dáš znalost, kterou potřebuji."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54704 /* ~Zabij devu.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 63.2 93.3 94.3 95.3 97.2 107.0
  SAY #54705 /* ~Srazil jsi ho k zemi, rozdrtil jsi kosti jeho pyšné tváře, zohyzdil jeho krásnou postavu. Z posledních sil umírajícího zašeptal: "Proklel jsi sám sebe. Zabitím mne jsi zničil poslední štít, který jsi měl proti hrůzám, které tě sežerou za živa. Fiend, kterého jsem podvedl... je teď volný..." Vydal ze sebe poslední dech, světlo v jeho očích vyhaslo navždy.~ */
  IF ~~ THEN REPLY #54706 /* ~"Tak už konečně zdechni..."~ */ DO ~AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 96.0
  SAY #54707 /* ~"To je tam, kde ses nedávno probral, že? Poslední dobou jsou sféry plné ironie. Tak *blízko* jsi tehdy byl..."~ */
  IF ~~ THEN REPLY #54708 /* ~"Co je klíčem?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 96.1 99.0
  SAY #54709 /* ~"Pevnost Lítosti je opevněná slzami, a podobný podobného si hledá. Abys mohl vstoupit do Pevnosti, musíš jí něco odevzdat. Když budeš blízko portálu, měl bys ve své mysli nést lítost. Pak ucítíš přítomnost portálu, jako chladné objetí smrti."~ */
  IF ~~ THEN REPLY #54710 /* ~"A?"~ */ DO ~SetGlobal("Regret","GLOBAL",1)
~ JOURNAL #54711 /* ~Trias Zrádce mi dal klíč k Pevnosti Lítosti. Portál leží někde v Márnici. Můžu ho najít tak, že si budu v mysli udržovat pocit lítosti a portál mě zamrazí, když se dostanu blízko. Jakmile budu před portálem, musím si z těla strhnout kousek kůže a napsat na ní lítost krví z mého levého ukazováčku.~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #54712 /* ~"Zatímco se budeš koupat v chladu, musíš si strhnout útržek kůže a napsat na něj lítost krví z tvého levého ukazováčku. Portál se otevře a ty budeš mít možnost poznat pravdu Pevnosti Lítosti - a možná také potkáš jejího hlídače."~ */
  IF ~~ THEN REPLY #54713 /* ~"Jak to víš?"~ */ GOTO 102
  IF ~~ THEN REPLY #54714 /* ~"Co mi můžeš říct o hlídači Pevnosti?"~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #54715 /* ~"Mnoho spojenců jsem hledal mezi Sférami. Mé hledání mě přivedlo do Pevnosti, kde jsem mluvil k jejímu Lordu a hlídači stinných hal. Bez pochyby si přeješ vrátit se zpět do Sigilu. Krev, kterou máš na rukou bude fungovat jako klíč k tomuto portálu - jednoduše projdi dveřmi, kterými jsi sem vešel, a vrátíš se."~ */
  IF ~~ THEN REPLY #54716 /* ~"Co mi můžeš říct o tom hlídači?"~ */ GOTO 103
  IF ~~ THEN REPLY #54717 /* ~"Co mi můžeš říct o té Pevnosti?"~ */ GOTO 58
  IF ~~ THEN REPLY #54718 /* ~"Mé díky, Triasi. Teď zemřeš."~ */ GOTO 105
  IF ~~ THEN REPLY #54719 /* ~"Co budeš dělat, až tě opustím, Triasi?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 103 // from: 60.0 101.1 102.0
  SAY #54720 /* ~"Je mocný. Neporazíš ho a nedokážeš z jeho sevření vyrvat svou smrtelnost. Je pro tebe ztracená. Zasvětil ses úkolu, kterého se mohou ujmout pouze hlupáci."~ */
  IF ~~ THEN REPLY #54721 /* ~"Možná jsem hlupák, ale chci vědět víc o tom hlídači."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
  IF ~~ THEN REPLY #54722 /* ~"Pokračuj."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #54723 /* ~"Lidská smrtelnost je kompas, který mu ukazuje cestu životem. Pokud může být držena jako předmět, dá se mnoho zjistit o povaze člověka, z něhož byla vytržena. Tvůj protivník o tobě ví víc, než kdy budeš vědět ty. Sledoval tě a studoval po mnoho tvých polo-životů. Znám jeho srdce. Nevrátí ti to, co hledáš."~ */
  IF ~~ THEN REPLY #54717 /* ~"Co mi můžeš říct o té Pevnosti?"~ */ GOTO 58
  IF ~~ THEN REPLY #54724 /* ~"Mé díky, Triasi. Teď zemřeš."~ */ GOTO 105
  IF ~~ THEN REPLY #54725 /* ~"Co budeš dělat, až tě opustím, Triasi?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 60.1 102.2 104.1
  SAY #54726 /* ~"Ale ty jsi přísahal..."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54727 /* ~"Lhal jsem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54728 /* ~"Nikdy jsem nepřísahal. Jenom jsem prohlásil, že ušetřím tvůj život. Rozmyslel jsem si to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~~ THEN REPLY #54729 /* ~"Dělám si srandu. Co budeš dělat, až tě opustím, Triasi?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 60.2 102.3 104.2 105.2
  SAY #54730 /* ~"Znovu se pokusím vést legie proti branám Ráje. Nevezmou mě zpět a má existence nemá jiný smysl."~ */
  IF ~~ THEN REPLY #54731 /* ~"Tak to tě musím zastavit. Teď."~ */ GOTO 108
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #54732 /* ~"Triasi, zapomněl jsi na tvář svého otce?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_2","GLOBALGood",1)
~ GOTO 109
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54733 /* ~"Hodně štěstí. Sbohem."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54734 /* ~"Hodně štěstí. Sbohem."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 107 // from: 105.0 105.1 108.0 108.1
  SAY #54735 /* ~"Proklínám tě, odsuzuji tě k životu beze smyslu. Ať trpíš nekonečným utrpením ve své věčné skořápce plné bolesti a nikdy nebudeš mít vzpomínky na příjemnost světla a lásky. To málo z lidskosti, co zbývá, bude tvou smrtí, smrtelníku."~ */
  IF ~~ THEN REPLY #54736 /* ~Udeř. "Sbohem, Triasi."~ */ GOTO 98
END

IF ~~ THEN BEGIN 108 // from: 106.0 111.1
  SAY #54737 /* ~"Přísahal jsi, že ušetříš můj život, smrtelníku."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54738 /* ~"Řekněme, že to dělám ve jménu většího dobra, Triasi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54739 /* ~"Nikdy jsem nepřísahal. Jenom jsem prohlásil, že ušetřím tvůj život. A teď si uvědomuju, že je to zbytečné. Jinými slovy, rozmyslel jsem si to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54740 /* ~"Tak si to teda zkus. Ala pamatuj, že na tebe budou připravení. Sbohem, Triasi. Doufám, že selžeš."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54741 /* ~"Tak si to teda zkus. Ala pamatuj, že na tebe budou připravení. Sbohem, Triasi. Doufám, že selžeš."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY #54742 /* ~"Co tím myslíš?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #54743 /* ~"Vyšší Sféry jsou domovem spravedlnosti, krásy a dobroty. Ale jsou také domovem odpuštění. Jdi domů. Přiznej svou chybu a pros o odpuštění."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #54744 /* ~"Vyšší Sféry jsou domovem spravedlnosti, krásy a dobroty. Ale jsou také domovem odpuštění. Jdi domů. Přiznej svou chybu a pros o odpuštění."~ */ GOTO 111
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54745 /* ~"Zapomeň na to. Sbohem, Trias."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54746 /* ~"Zapomeň na to. Sbohem, Trias."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0
  SAY #54747 /* ~Otevřel ústa, aby zařval vzteklou odpověď... a zarazil se. Sklonil hlavu. "Promlouváš přesvědčivě, smrtelníku, a tvá moudrost mnou proniká. Budu hledat odpuštění mých otců a přijmu jakýkoli trest, který mi uloží. Vezmi si to a buď sbohem, smrtelníku. Pokud se ještě setkáme, doufám, že už budu spasen."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54748 /* ~"Hodně štěstí, Triasi. Sbohem."~ */ DO ~GiveItem("SPWI901",Protagonist)
AddexperienceParty(375000)
StickySinisterPoof("S113SMOK",Myself,1)
Wait(1)
DestroySelf()
~ JOURNAL #54750 /* ~Přesvědčil jsem Triase, aby hledal odpuštění ve Vyšších Sférách.~ */ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54749 /* ~"Hodně štěstí, Triasi. Sbohem."~ */ DO ~GiveItem("SPWI901",Protagonist)
~ JOURNAL #54751 /* ~Přesvědčil jsem Triase, aby hledal odpuštění ve Vyšších Sférách - a pak na něj zaútočil Vhailor.~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #54752 /* ~Jeho tvář se rozzářila, ale pak zase potemněla. Podíval se stranou. "Nemohu se vrátit. Mé prohřešky jsou příliš velké. Pro takové jako já není odpuštění. Budu sloužit Dobru mým vlastním způsobem."~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54753 /* ~"Existuje i shovívavost, Triasi. Stejně jako ty jsi více než obyčejný žadatel, tak jsou mocnosti Vyšších Sfér více než ty. Nejsi ztělesněním dobra. Pamatuj si, že jim můžeš věřit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~~ THEN REPLY #54754 /* ~"Tak to tě budu muset zastavit."~ */ GOTO 108
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54755 /* ~"Tak tedy sbohem. Zapamatuj si, že jsi měl šanci na spásu a odmítnul si ji."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54756 /* ~"Tak tedy sbohem. Zapamatuj si, že jsi měl šanci na spásu a odmítnul si ji."~ */ EXTERN ~DVHAIL~ 14
END

IF WEIGHT #13 /* Triggers after states #: 124 123 122 121 120 119 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",3)
~ THEN BEGIN 112 // from:
  SAY #54757 /* ~"Znovu?"~ [TTB037] */
  IF ~~ THEN REPLY #54758 /* ~"Mám pro tebe další otázky."~ */ GOTO 53
  IF ~~ THEN REPLY #54759 /* ~"Vážně ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #54760 /* ~Vhailor ho srazil k zemi, rozdrtil kosti jeho pyšné tváře, zohyzdil jeho krásnou postavu. Z posledních sil umírajícího Trias zašeptal: "Proklel jsi sám sebe. Zabitím mne jsi zničil poslední štít, který jsi měl proti hrůzám, které tě sežerou za živa. Fiend, kterého jsem podvedl... je teď volný..." Vydal ze sebe poslední dech, světlo v jeho očích vyhaslo navždy.~ */
  IF ~~ THEN REPLY #106512 /* ~"Zatraceně, Vhailorie, uvědomuješ si co jsi udělal?!"~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXTERN ~DVHAIL~ 170
  IF ~~ THEN REPLY #54761 /* ~"Tak už konečně zdechni..."~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 0.0
  SAY #61293 /* ~Trias pozvedl hlavu a upřel na tebe svůj pohled. Jeho hlas je čistý a melodický. "Čeho si ode mne žádáš smrtelníku? Vyslov své přání a poté mne opět nechej snít o ráji." Než jsi stačil odpovědět, jeho tvář ztvrdla a zamračila se.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 5
END

IF ~~ THEN BEGIN 115 // from: 0.1
  SAY #61294 /* ~Tris pozvedl hlavu a upřel na tebe svůj pohled. Jeho hlas je čistý a melodický. "Čeho si odemne žádáš smrtelníku? Vyslov své přání a poté mne opět nechej snít o ráji." Než jsi stačil odpovědět, jeho tvář ztvrdla a zamračila se.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 6
END

IF ~~ THEN BEGIN 116 // from: 0.4 0.5
  SAY #61295 /* ~Tris pozvedl hlavu a upřel na tebe svůj pohled. Jeho hlas je čistý a melodický. "Čeho si odemne žádáš smrtelníku? Vyslov své přání a poté mne opět nechej snít o ráji." Než jsi stačil odpovědět, jeho tvář ztvrdla a zamračila se.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ GOTO 7
END

IF ~~ THEN BEGIN 117 // from: 2.0 2.2
  SAY #61296 /* ~"Máš můj meč?"~ */
  IF ~  !PartyHasItem("Celestia")
~ THEN REPLY #61297 /* ~"Zatím ne, ale chtěl jsem se na něco zeptat..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61298 /* ~"Jsem si jistý že tu někde kolem je. Ale napřed se tě vážně potřebuji na něco zeptat..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61299 /* ~"Mám tvůj meč."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #61300 /* ~"Nevadí. Vrátím se."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 18.0
  SAY #61305 /* ~"Ty mne nepropustíš, smrtelníku? Já... možná vím něco, co by ti mohlo velmi prospět..."~ */
  IF ~~ THEN REPLY #61306 /* ~"Chci jen odpověď na pár otázek..."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61307 /* ~Pokus se přeseknout řetěz.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Zaútoč na Triase.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Zaútoč na Triase.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #61309 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #7 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
NearbyDialog("DVhail")
~ THEN BEGIN 119 // from:
  SAY #61310 /* ~Triasovy oči zahořely spravedlností. "Tihle lidé... jsou zrádci, lháři, vrazi... zpečetili si svůj osud."~ [TTB111] */
  IF ~~ THEN GOTO 64
END

IF WEIGHT #8 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
!NearbyDialog("DVhail")
~ THEN BEGIN 120 // from:
  SAY #61311 /* ~Triasovy oči zahořely spravedlností. "Tihle lidé... jsou zrádci, lháři, vrazi... zpečetili si svůj osud."~ [TTB111] */
  IF ~~ THEN GOTO 65
END

IF WEIGHT #9 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
NearbyDialog("DVhail")
~ THEN BEGIN 121 // from:
  SAY #61312 /* ~Trias se na teb pohrdavě podíval. "Tak psi se vrátili."~ [TTB100] */
  IF ~~ THEN GOTO 66
END

IF WEIGHT #10 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
!NearbyDialog("DVhail")
~ THEN BEGIN 122 // from:
  SAY #61313 /* ~Trias se na teb pohrdavě podíval. "Tak psi se vrátili."~ [TTB100] */
  IF ~~ THEN GOTO 67
END

IF WEIGHT #11 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
NearbyDialog("DVhail")
~ THEN BEGIN 123 // from:
  SAY #61316 /* ~"Co doufáš, že tu dokážeš?"~ [TTB106] */
  IF ~~ THEN GOTO 68
END

IF WEIGHT #12 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
!NearbyDialog("DVhail")
~ THEN BEGIN 124 // from:
  SAY #61317 /* ~"Co doufáš, že tu dokážeš?"~ [TTB106] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 125 // from: 0.2
  SAY #61293 /* ~Trias pozvedl hlavu a upřel na tebe svůj pohled. Jeho hlas je čistý a melodický. "Čeho si ode mne žádáš smrtelníku? Vyslov své přání a poté mne opět nechej snít o ráji." Než jsi stačil odpovědět, jeho tvář ztvrdla a zamračila se.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ EXTERN ~DGRACE~ 176
END

IF ~~ THEN BEGIN 126 // from: 0.3
  SAY #61293 /* ~Trias pozvedl hlavu a upřel na tebe svůj pohled. Jeho hlas je čistý a melodický. "Čeho si ode mne žádáš smrtelníku? Vyslov své přání a poté mne opět nechej snít o ráji." Než jsi stačil odpovědět, jeho tvář ztvrdla a zamračila se.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Našel jsem anděla "Triase", o kterém mluvila Ravel, uvězněného v Curstu. Kdo by si pomyslel, že se budou lidi takhle chovat k andělovi... tohle je opravdu město hrdlořezů a zrádců. Ne snad, že by to bylo jiné, než JINÁ místa, na kterých už jsem byl.~ */ EXTERN ~DGRACE~ 177
END
