// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORA~

IF ~  Global("Dolora","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Tmavovlasá žena s bledou pletí má ušlechtilý, kultivovaný vzhled. Když se otočila k tobě, všiml sis, že její oči - které ti dříve připadaly šedé - mají barvu leštěné oceli.~ */
  IF ~~ THEN REPLY #34366 /* ~"Zdravím..."~ */ DO ~SetGlobal("Dolora","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41352 /* ~Nechat ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41282 /* ~Hlas ženy je jemný, tichý, a bez koncovek - je jakési 'vzdálené' kvality, jako kdyby k ní bylo něco připojené. "Zdravím... jmenuji se Dolora. Mohu ti nějak pomoci?"~ */
  IF ~~ THEN REPLY #41353 /* ~"Jakým způsobem mi Doloro můžeš posloužit?"~ */ GOTO 2
  IF ~~ THEN REPLY #41354 /* ~"Ne doopravdy, ale mám pár otázek..."~ */ GOTO 32
  IF ~~ THEN REPLY #41355 /* ~"Ne, jen jsem si přál tě vidět Doloro . Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 38.0 64.0
  SAY #41283 /* ~Mrkla, poté se dotkla rukou svého srdce a nepatrně sklonila hlavu. "Můžu s tebou mluvit o jakýchkoliv učených či akademických věcech velmi obratně, přeješ-li si tak. Také jsem velmi zkušená v rozličných strategických hrách, budeš-li si chtít něco zahrát - ačkoliv jich tu moc nemám."~ */
  IF ~~ THEN REPLY #41356 /* ~"Doufal jsem, že to bude něco víc... 'fyzického'"~ */ GOTO 3
  IF ~~ THEN REPLY #41357 /* ~"Říkáš debata?"~ */ GOTO 7
  IF ~~ THEN REPLY #41358 /* ~"Můžeme si tedy zahrát hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41359 /* ~"Rád bych ti teď položil pár otázek."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41360 /* ~"Rád bych ti teď položil pár otázek."~ */ GOTO 44
  IF ~~ THEN REPLY #41361 /* ~"Na druhou stranu, asi přecejenom půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #41284 /* ~Dolora nevypadá, že by podváděla nebo odháněla, ale odpověděla v tom samém, nudném tónu: "Tak to tě úmysly tohohle úřadu klamou; Nevěstinec existuje kvůli chtíčí houfu intelektuálů a ne pro tyhle ramenáče. V každém případě ti mohu zaručit, že budu dělat dost neuspokojitelnou partnerku."~ */
  IF ~~ THEN REPLY #41362 /* ~"Oh? Proč jsi to řekla?"~ */ GOTO 4
  IF ~~ THEN REPLY #41363 /* ~"Říkala jsi něco o debatě?"~ */ GOTO 7
  IF ~~ THEN REPLY #41364 /* ~"Můžeme si tedy zahrát hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41365 /* ~"V tom případě bych se na něco zeptal..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41366 /* ~"V tom případě bych se na něco zeptal..."~ */ GOTO 44
  IF ~~ THEN REPLY #41367 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #41285 /* ~"Je to pro mě přirozené. Dovol mi ti ji předvést." Pokusila se dotknout se tvé ruky...~ */
  IF ~~ THEN REPLY #41368 /* ~Nechej ji, aby se tě dotkla.~ */ GOTO 5
  IF ~~ THEN REPLY #41369 /* ~Odstup od ní.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #41286 /* ~Dolora jede hřbetem své ruky po tvém předloktí; její pokožka je jemná a suchá, ale studená jako mražené železo. Dotyk ti způsobil mrazení v zádech a naježilo chlupy v tvém podpaží. "Nezatěžuj se otázkou kdo, nebo co jsem, stejně ti řeknu, že je to pro mě přirozené."~ */
  IF ~~ THEN REPLY #41370 /* ~"Dobrá. Říkala jsi něco o debatě?"~ */ GOTO 7
  IF ~~ THEN REPLY #41371 /* ~"Jistě. A můžeme si potom zahrát hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41372 /* ~"V tom případě bych se na něco zeptal..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41373 /* ~"V tom případě bych se na něco zeptal..."~ */ GOTO 44
  IF ~~ THEN REPLY #41374 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #41287 /* ~Rychle jsi uhnul dříve, než se tě jen dotkla. "Tak jo. Já jsem jenom chtěla ukázat svůj návrh; nechtěla jsem ti ublížit."~ */
  IF ~~ THEN REPLY #41375 /* ~"Dobře... tak mi to ukaž."~ */ GOTO 5
  IF ~~ THEN REPLY #41376 /* ~"Zapomeň na to. Říkala jsi něco o debatě?"~ */ GOTO 7
  IF ~~ THEN REPLY #41377 /* ~"Můžeme si tedy zahrát hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41378 /* ~"V tom případě bych se na něco zeptal..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41379 /* ~"V tom případě bych se na něco zeptal..."~ */ GOTO 44
  IF ~~ THEN REPLY #41380 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 3.1 5.0 6.1 22.1 23.0 24.1 25.1 27.1 28.1 30.1 31.1
  SAY #41288 /* ~Dolora přikývla. "Tak je to správně. Já nejsem žádný učenec nebo dokonce vychovatel; netoužím vyučovat mé stálé zákazníky. Nicméně, můžeš si zvolit záležitost, o které chceš diskutovat... patnáct frakcí a jejich efekt na sigilskou politiku, nejefektivnější válečné lsti v bojích v Acheronu, smysl samotné existence... bude mi ctí zvolit si protipól a utkat se s tebou v debatě."~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41381 /* ~Vyber si téma. Zkus jestli ji dokážeš 'přemoci'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41382 /* ~Vyber si téma. Zkus jestli ji dokážeš 'přemoci'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41383 /* ~Vyber si téma. Zkus jestli ji dokážeš 'přemoci'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41384 /* ~Vyber si téma. Zkus jestli ji dokážeš 'přemoci'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #41385 /* ~Vyber si téma. Zkus jestli ji dokážeš 'přemoci'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41386 /* ~Vyber si téma. Zkus jestli ji dokážeš 'přemoci'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #57371 /* ~Vyber si téma, uvidíš, jestli ji dokážeš 'předstihnout'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41387 /* ~"Hmm. Můžeme si tedy zahrát hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41388 /* ~"Momentálně bych ti chtěl položit pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41389 /* ~"Momentálně bych ti chtěl položit pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41390 /* ~"Ne, ne teď. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #41289 /* ~Po několika minutách mluvení prolomila Dolora každý z tvých argumentů s nedbalou lehkostí; její protiúdery na tvé nejasné pokusy v debatě ukazují, že tvá pozice je patetická a dětská. Nicméně to vypadá, že nemá z vítězství žádnou radost a pouze nabízí: "Jestli chceš, můžeme znova mluvit na to samé téma... můžu ti prozradit tvou nynější pozici, jestli to žádáš."~ */
  IF ~~ THEN REPLY #41391 /* ~"Počkej... to jsi při povídání vždycky tak odměřená?"~ */ GOTO 9
  IF ~~ THEN REPLY #41392 /* ~"Ne díky. Zahrajeme si hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41393 /* ~"To je v pořádku. Nicméně, měl bych pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41394 /* ~"To je v pořádku. Nicméně, měl bych pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41395 /* ~"To prozatím stačí. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0 14.0
  SAY #41290 /* ~Dolora pokývala. "Paní Grace mi nařídila být bezcitná, jiným studentkám vždy po delší debatě povoluje prohrát se stálým hostem. Byla to žádost Paní Grace, abych klientele poskytovala jiný druh zkušeností."~ */
  IF ~~ THEN REPLY #41396 /* ~"Chápu. Můžeme si teď zahrát?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41397 /* ~"Rozumím. Mám na tebe pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41398 /* ~"Rozumím. Mám na tebe pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41399 /* ~"To dává smysl. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY #41291 /* ~Podal jsi dobrý výkon, ale k ničemu to nebylo; Dolora lehce a bez váhání prolomila každý z tvých argumentů svým neomylným citem pro logiku. Nicméně to vypadá, že nemá z vítězství žádnou radost a pouze nabízí: "Jestli chceš, můžeme znova mluvit na to samé téma... můžu ti prozradit tvou nynější pozici, jestli o to žádáš."~ */
  IF ~~ THEN REPLY #41400 /* ~"Počkej... to jsi při povídání vždycky tak odměřená?"~ */ GOTO 9
  IF ~~ THEN REPLY #41401 /* ~"Ne díky. Můžeme si zahrát hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41402 /* ~"To je v pořádku. Ačkoliv, měl bych pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41403 /* ~"To je v pořádku. Ačkoliv, měl bych pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41404 /* ~"To prozatím stačí. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY #41292 /* ~Zvolil jsi téma a začal jsi. Z počátku to vypadalo, že obstojíš bez problémů... ale časem se tvá pozice zhoršovala tím, jak Dolora prolomovala jeden argument za druhým za pomocí svého neomylného smyslu pro logiku. Nicméně to vypadá, že nemá z vítězství žádnou radost a pouze nabízí: "Jestli chceš, můžeme znova mluvit na to samé téma... můžu ti prozradit tvou nynější pozici, jestli to žádáš."~ */
  IF ~~ THEN REPLY #41405 /* ~"Počkej... to jsi při povídání vždycky tak odměřená?"~ */ GOTO 9
  IF ~~ THEN REPLY #41406 /* ~"Ne díky. Můžeme si zahrát hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41407 /* ~"To je v pořádku. Nicméně, měl bych pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41408 /* ~"To je v pořádku. Nicméně, měl bych pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41409 /* ~"To prozatím stačí. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY #41293 /* ~Zvolil jsi téma a začal jsi... debata trvala dlouho kvůli dvou ze tvých náhradních bodů a protipólů, každý se snažil metodicky podkopat pozici toho druhého. Když jsi mluvil, padl na tebe divný pocit... paměť, která se chce vynořit...~ */
  IF ~~ THEN REPLY #41410 /* ~Nech vzpomínky vyplout na povrch.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 56
  IF ~~ THEN REPLY #41411 /* ~Potlač vzpomínky.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1 59.0
  SAY #41294 /* ~Nicméně Dolora je extrémně tvrdě nucena tě porazit, konečně vyhrává... její neomylný cit pro logiku konečně vyhrál nad tvými nejbrilantnějšími argumenty. Nicméně to vypadá, že nemá z vítězství žádnou radost a jen souhlasně kývá. "Jsi jeden z nejlepších protivníků; tohle nemá žádnou oporu. Cítím to, měl jsi čas, abys na to přišel, nemusím být lepší než ty."~ */
  IF ~~ THEN REPLY #41412 /* ~"Díky..."~ */ GOTO 14
  IF ~~ THEN REPLY #41413 /* ~"Nevím... jsi dobrý protivník."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 15.0 15.1 17.0 17.1 18.0 18.1
  SAY #41295 /* ~Dolora pokývala. "Jestli chceš, můžeme znova mluvit na stejné téma... můžu ti prozradit tvou nynější pozici, jestli to žádáš."~ */
  IF ~~ THEN REPLY #41414 /* ~"Počkej... to jsi při povídání vždycky tak odměřená?"~ */ GOTO 9
  IF ~~ THEN REPLY #41415 /* ~"Teď ne, díky. Můžeme si zahrát hru?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41416 /* ~"To je v pořádku. Přesto bych ale měl pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41417 /* ~"To je v pořádku. Přesto bych ale měl pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41418 /* ~"To prozatím stačí. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.4
  SAY #41296 /* ~Zvolil jsi téma a začal jsi... debata trvala dlouho kvůli dvou ze tvých náhradních bodů a protipólů, každý se snažil metodicky podkopat pozici toho druhého. Nicméně Dolora je extrémně tvrdě nucena tě porazit, konečně vyhrává... její neomylný cit pro logiku konečně vyhrál nad tvými nejbrilantnějšími argumenty. Nicméně to vypadá, že nemá z vítězství žádnou radost a jen souhlasně kývá. "Jsi jeden z nejlepších protivníků; tohle nemá žádnou oporu. Cítím to, měl jsi čas, abys na to přišel, nemusím být lepší než ty."~ */
  IF ~~ THEN REPLY #41419 /* ~"Díky..."~ */ GOTO 14
  IF ~~ THEN REPLY #41420 /* ~"To nevím... jsi dobrý protvník."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 7.5
  SAY #41297 /* ~Zvolil jsi téma a začal jsi... debata trvala dlouho kvůli dvou ze tvých náhradních bodů a protipólů, každý se snažil metodicky podkopat pozici toho druhého. Když jsi mluvil, padl na tebe divný pocit... paměť, která se chce vynořit...~ */
  IF ~~ THEN REPLY #41421 /* ~Nech vzpomínky vyplout na povrch.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 56
  IF ~~ THEN REPLY #41422 /* ~Potlač vzpomínky.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1 59.1
  SAY #41298 /* ~I když jsi tvrdě nucen porazit Dolořin neomylný cit pro logiku, stejně jsi nevyhrál. Jenom souhlasně kývá. "Jsi jeden z nejlepších protivníků; tohle nemá žádnou oporu. Cítím to, měl jsi čas, abys na to přišel, nemusím být lepší než ty."~ */
  IF ~~ THEN REPLY #41423 /* ~"Díky..."~ */ GOTO 14
  IF ~~ THEN REPLY #41424 /* ~"Snad, snad ne. Beru to jako nefér výhodu."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 7.6
  SAY #41299 /* ~Zvolil jsi téma a začal jsi... debata trvala dlouho kvůli dvou ze tvých náhradních bodů a protipólů, každý se snažil metodicky podkopat pozici toho druhého. I když jsi tvrdě nucen porazit Dolořin neomylný cit pro logiku, stejně jsi nevyhrál. Jenom souhlasně kývá. "Jsi jeden z nejlepších protivníků; tohle nemá žádnou oporu. Cítím to, měl jsi čas, abys na to přišel, nemusím být lepší než ty."~ */
  IF ~~ THEN REPLY #41425 /* ~"Díky..."~ */ GOTO 14
  IF ~~ THEN REPLY #41426 /* ~"Snad, snad ne. Beru to jako nefér výhodu."~ */ GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 2.2 3.2 5.1 6.2 7.7 8.1 9.0 10.1 11.1 14.1
  SAY #41300 /* ~"Samozřejmě. Je tu něco zvláštního, co bys chtěl hrát?"~ */
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #41427 /* ~"Ta, co jsme hráli předtím se mi líbila."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 67
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #41428 /* ~"Ne... opravdu si žádné hry nepamatuji..."~ */ GOTO 20
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41429 /* ~"Vlastně bych se tě radši na něco zeptal..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41430 /* ~"Vlastně bych se tě radši na něco zeptal..."~ */ GOTO 44
  IF ~~ THEN REPLY #41431 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #41301 /* ~"Tak tedy - dovol mi ti jednu ukázat." Dolora přinesla hubenou, lakovanou krabici, která se otevřela do malé mřížkované desky. Obsah krabice tvořilo několik leštěných kamínků... polovina černá, polovina bílá. "Tato hra má mnoho jmen. Chceš vysvětlit pravidla?"~ */
  IF ~~ THEN REPLY #41432 /* ~"Ano prosím."~ */ DO ~SetGlobal("Dolora_Go","AR0605",1)
~ GOTO 21
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41433 /* ~"Vlastně bych se tě radši na něco zeptal..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41434 /* ~"Vlastně bych se tě radši na něco zeptal..."~ */ GOTO 44
  IF ~~ THEN REPLY #41435 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #41302 /* ~Dolora ti vysvětlila pravidla té hry - jak se kameny pohybují, jak můžeš porazit svého protivníka. Nějak ti to připadá nejasně všední. "Pravidla jsou jednoduchá, nebo ne? Ale skrývá se tam ještě velká část složitosti. K tomu, aby ses stal mistrem, potřebuješ hodně času. Zahrajeme si?"~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41436 /* ~"Jo, začněme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41437 /* ~"Jo, začněme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41438 /* ~"Jo, začněme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41439 /* ~"Jo, začněme."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41440 /* ~"Jo, začněme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41441 /* ~"Jo, začněme."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41442 /* ~"Jo, začněme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41443 /* ~"Vlastně bych se tě radši na něco zeptal..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41444 /* ~"Vlastně bych se tě radši na něco zeptal..."~ */ GOTO 44
  IF ~~ THEN REPLY #41445 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #41303 /* ~Tvůj odpor ukazuje, že už jsi to někdy hrál, ale stejně hraješ bídně... Dolora tě rychle porazila s takovou lehkostí, že je to skoro směšné. Nicméně ona se nesmála ani se neradovala, ale rychle začala uklízet hru. "Bojím se, že tě čas a cvik učiní lepším - jednoduše to vypadá, že nemůžeš takovéhle hry pochopit."~ */
  IF ~~ THEN REPLY #41446 /* ~"To vždycky hraješ tak nemilosrdně?"~ */ GOTO 23
  IF ~~ THEN REPLY #41447 /* ~"Možná ne. Říkala jsi předtím něco o debatě?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41448 /* ~"Hmm. Mám nějaké otázky..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41449 /* ~"Hmm. Mám nějaké otázky..."~ */ GOTO 44
  IF ~~ THEN REPLY #41450 /* ~"Nepřipadá mi to moc zábavné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 24.0 25.0 27.0 28.0 30.0 31.0
  SAY #41304 /* ~Dolora přikývla. "Paní Grace mi nařídila, abych nikdy neváhala, ostatní studentky ovšem hrají tak, aby jejich protivník vždy zvládl vyhrát. Bylo to nařízení paní Grace, abych poskytovala jiný druh zkušeností - opravdovou výzvu, spíše než něco, co může více uspokojit něčí sobectví."~ */
  IF ~~ THEN REPLY #41451 /* ~"Chápu. Říkala jsi předtím něco o debatě?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41452 /* ~"Rozumím. Mám pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41453 /* ~"Rozumím. Mám pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41454 /* ~"To dává smysl. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #41305 /* ~Tvůj odpor ukazuje, že už jsi to někdy hrál, ale Dolora tě lehce porazila. Nicméně ona se nesmála ani se neradovala, ale rychle začala uklízet hru. "Vypadáš, že této hře značně rozumíš. Časem se můžeš stát lepším."~ */
  IF ~~ THEN REPLY #41455 /* ~"To vždycky hraješ tak nemilosrdně?"~ */ GOTO 23
  IF ~~ THEN REPLY #41456 /* ~"Možná. Říkala jsi předtím něco o debatě?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41457 /* ~"Díky. Mám pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41458 /* ~"Díky. Mám pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41459 /* ~"Možná když budu mít víc času tak budu trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY #41306 /* ~Když hraješ, zjišťuješ, že si to tímto způsobem už jednou hrál. Nicméně, ani tvé nejlepší lsti nejsou nic proti Dolořiným vypočítavým strategiím... zkrátka to s tebou jde pořád z kopce, dokud nejsi úplně poražen. Nicméně ona se nesmála ani se neradovala, ale rychle začala uklízet hru. "Vypadáš, že této hře značně rozumíš. Časem se můžeš stát ještě lepším."~ */
  IF ~~ THEN REPLY #41460 /* ~"To vždycky hraješ tak nemilosrdně?"~ */ GOTO 23
  IF ~~ THEN REPLY #41461 /* ~"Možná. Říkala jsi předtím něco o debatě?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41462 /* ~"Díky. Mám pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41463 /* ~"Díky. Mám pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41464 /* ~"Možná když budu mít víc času tak budu trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY #41310 /* ~Když hraješ, zjišťuješ, že si to tímto způsobem už jednou hrál. Vyvoláváš rozdílné pohyby a strategie, které pomohly vyhrát minulou hru a snažíš se ji porazit každým trikem, který znáš. Najednou na tebe padl divný pocit... paměť, která se chce vynořit...~ */
  IF ~~ THEN REPLY #41465 /* ~Nechej vzpomínky vyplout na povrch.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 60
  IF ~~ THEN REPLY #41466 /* ~Potlač vzpomínky.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1 62.0
  SAY #41311 /* ~Celou hru Dolora stále vypadá, že zná protitah téměř na všechny tvé tahy, jeden po druhém. Navzdory tvému nejvyššímu úsilí jsi ale stejně padl za oběť jejím vypočítavým strategiím. Nicméně ona se nesmála ani se neradovala, ale rychle začala uklízet hru. "Jsi dobrý hráč. Jsem si jistá, že se časem staneš mistrem této hry."~ */
  IF ~~ THEN REPLY #41467 /* ~"Díky... ale to vždycky hraješ tak nemilosrdně?"~ */ GOTO 23
  IF ~~ THEN REPLY #41468 /* ~"Možná. Říkala jsi předtím něco o debatě?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41469 /* ~"Přijmi mé díky. Měl bych pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41470 /* ~"Přijmi mé díky. Měl bych pár otázek..."~ */ GOTO 44
END

IF ~~ THEN BEGIN 28 // from: 21.4
  SAY #41312 /* ~Když hraješ, zjišťuješ, že si to tímto způsobem už jednou hrál. Vyvoláváš rozdílné pohyby a strategie, které pomohly vyhrát minulou hru a snažíš se jí porazit každým trikem, který znáš. Dolora stále vypadá, že zná protitah téměř na všechny tvé tahy, jeden po druhém. Navzdory tvému nejvyššímu úsilí jsi ale stejně padl za oběť jejím vypočítavým strategiím. Nicméně ona se nesmála ani se neradovala, ale rychle začala uklízet hru. "Jsi dobrý hráč. Jsem si jistá, že se časem staneš mistrem této hry."~ */
  IF ~~ THEN REPLY #41471 /* ~"Díky... ale to vždycky hraješ tak nemilosrdně?"~ */ GOTO 23
  IF ~~ THEN REPLY #41472 /* ~"Možná. Říkala jsi předtím něco o debatě?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41473 /* ~"Přijmi mé díky. Měl bych pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41474 /* ~"Přijmi mé díky. Měl bych pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41475 /* ~"Maybe if I had more time, I'd practice. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.5
  SAY #41313 /* ~Když hraješ, zjišťuješ, že si to tímto způsobem už jednou hrál. Vyvoláváš rozdílné pohyby a strategie, které pomohly vyhrát minulou hru a snažíš se ji porazit každým trikem, který znáš. Najednou na tebe padl divný pocit... paměť, která se chce vynořit...~ */
  IF ~~ THEN REPLY #41476 /* ~Nechej vzpomínky vyplout na povrch.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 60
  IF ~~ THEN REPLY #41477 /* ~Potlač vzpomínky.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1 62.1
  SAY #41314 /* ~Dolora hraje dobře, má protitahy i na tvé nejvychytralejší pohyby, ale konečně tvé přetvářky a vypočítavé manévry vyhrály nad jejími velmi vychytralými strategiemi. Souhlasně pokývala a začala uklízet hru "Jsi dobrý hráč, možná i mistr. Pro tvou dovednost tě budu doporučovat."~ */
  IF ~~ THEN REPLY #41478 /* ~"Díky... ale to vždycky hraješ tak nemilosrdně?"~ */ GOTO 23
  IF ~~ THEN REPLY #41479 /* ~"Díky. Říkala jsi předtím něco o debatě?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41480 /* ~"Přijmi mé díky. Měl bych pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41481 /* ~"Přijmi mé díky. Měl bych pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41482 /* ~"Ano zdá se, že už jsem si zahrál dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.6
  SAY #41315 /* ~Když hraješ, zjišťuješ, že jsi to dříve hrál tímto způsobem. Vyvoláváš rozdílné pohyby a strategie, které pomohly vyhrát minulou hru a snažíš se jí porazit každým trikem, který znáš. Dolora hraje dobře, má protitahy i na tvé nejvychytralejší pohyby, ale konečně tvé přetvářky a vypočítavé manévry vyhrály nad jejími velmi vychytralími strategiemi. Souhlasně pokývala a začala uklízet hru "Jsi dobrý hráč, možná i mistr. Pro tvou dovednost tě budu doporučovat."~ */
  IF ~~ THEN REPLY #41483 /* ~"Díky... ale to vždycky hraješ tak nemilosrdně?"~ */ GOTO 23
  IF ~~ THEN REPLY #41484 /* ~"Díky. Říkala jsi předtím něco o debatě?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41485 /* ~"Přijmi mé díky. Měl bych pár otázek..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41486 /* ~"Přijmi mé díky. Měl bych pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41487 /* ~"Yes, it seems I've played before after all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.1 2.3 3.3 5.2 6.3 7.8 8.2 9.1 10.2 11.2 14.2 19.2 20.1 21.7 22.2 23.1 24.2 25.2 27.2 28.2 30.2 31.2 38.1 67.0
  SAY #41316 /* ~Dolora s bolestným povzdechem upřela oči na podlahu. "Chci ti posloužit jako zákazníkovi, ale nepřeji si teď odpovídat na další otázky... omlouvám se a je mi líto, ale budeš muset s tím co jsem ti řekla na čas vystačit."~ */
  IF ~~ THEN REPLY #41488 /* ~"Co se děje? Můžu ti nějak pomoct?"~ */ JOURNAL #66740 /* ~Dolora, jedna z žen pracujících v Nevěstinci duševních rozkoší mi odmítá odpovědět na jakékoli otázky, které nesouvisejí s její prácí 'prostitutky'... A já mám pocit, že tají nějaké důležité informace, které by mi pomohly.~ */ GOTO 33
  IF ~~ THEN REPLY #41489 /* ~"Promluvím si s tebou jindy. sbohem."~ */ JOURNAL #66740 /* ~Dolora, jedna z žen pracujících v Nevěstinci duševních rozkoší mi odmítá odpovědět na jakékoli otázky, které nesouvisejí s její prácí 'prostitutky'... A já mám pocit, že tají nějaké důležité informace, které by mi pomohly.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #41317 /* ~Zvedla pohled od podlahy a zahleděla se přímo do tvých očí. Opět jsi byl zasažen bledým nádechem její kůže a ledovou hloubkou v jejích stříbřitých očích. "Ne... ne, nemám strach. Mé problémy jsou zaležitostí srdce. Myslím, že časem se to všechno urovná."~ */
  IF ~~ THEN REPLY #41490 /* ~"Jsi si jistá, že nemůžu nijak pomoct?"~ */ GOTO 34
  IF ~~ THEN REPLY #41491 /* ~"Promluvím si s tebou jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #41318 /* ~"Jistá?" Dolora se odmlčela a zapřemýšlela. "Ne, to nejsem. Má první láska Merriman stále vlastní klíče k mému srdci. Dokud je bude mít, nebudu volná a nebudu se moci zamilovat do jiného. To je důvod mé melancholie."~ */
  IF ~~ THEN REPLY #41492 /* ~"Proč jsi ho nevyhledala, nepromluvila si s ním?"~ */ GOTO 35
  IF ~~ THEN REPLY #41493 /* ~"Pak tedy najdu toho Merrimana a promluvím si s ním místo tebe."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~Souhlasil jsem, že vyhledám muže jménem Merriman, Dolořinu první lásku, a promluvím s ním jejím jménem. Řekla mi, že je členem Společenstva Vjemu, takže bych se po něm měl poptat v Městské hale.~ */ GOTO 36
  IF ~~ THEN REPLY #41494 /* ~"Máš štestí. Najdu Merrimana... ale něco za něco."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~Za odměnu jsem souhlasil, že vyhledám muže jménem Merriman, Dolořinu první lásku a promluvím s ním jejím jménem. Řekla mi, že je členem Společenstva Vjemu, takže bych se po něm měl poptat v Městské hale.~ */ GOTO 37
  IF ~~ THEN REPLY #41495 /* ~"Chápu. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41319 /* ~Dolora zatřásla hlavou. "Nemohu tohle místo opustit. Mám pro to velice osobní důvod, který nechci sdílet s cizinci - dokonce ani s těmi co mi prokázali laskavost - musí stačit, když řeknu, že Merrimana nemohu sama vyhledat."~ */
  IF ~~ THEN REPLY #41496 /* ~"Pak tedy najdu toho Merrimana a promluvím si s ním místo tebe."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~Souhlasil jsem, že vyhledám muže jménem Merriman, Dolořinu první lásku, a promluvím s ním jejím jménem. Řekla mi, že je členem Společenstva Vjemu, takže bych se po něm měl poptat v Městské hale.~ */ GOTO 36
  IF ~~ THEN REPLY #41497 /* ~"Máš štestí. Najdu Merrimana... ale něco za něco."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~Za odměnu jsem souhlasil, že vyhledám muže jménem Merriman, Dolořinu první lásku a promluvím s ním jejím jménem. Řekla mi, že je členem Společenstva Vjemu, takže bych se po něm měl poptat v Městské hale.~ */ GOTO 37
  IF ~~ THEN REPLY #41498 /* ~"Chápu. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #41320 /* ~Dolora přitakala a na rtech se jí objevil náznak lehkého úsměvu. Pokývla hlavou. "Pokud najdeš Merrimana a promluvíš si s ním, budu ti velice zavázána. Je členem Společenství Vjemu, takže by ses po něm mohl poptat v Městské hale."~ */
  IF ~~ THEN REPLY #41499 /* ~"Až ho najdu, tak se vrátím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1
  SAY #41321 /* ~"Stále mám pár šperků, které jsem kdysi dostala darem. Pokud ti to postačí, pak tě s nimi odměním. Merriman je členem Společenství Vjemu, takže by ses po něm mohl poptat v Městské hale."~ */
  IF ~~ THEN REPLY #41500 /* ~"Musím jít. Vrátím se až ho najdu. Sbohem."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",1)
~ THEN BEGIN 38 // from:
  SAY #41322 /* ~Dolořiny ocelově chladné po tobě krátce mihly, jak si k ní přistopil. "Buď pozdraven. Jakým způsobem ti mohu pomoci?"~ */
  IF ~~ THEN REPLY #41501 /* ~"Jak mi tedy můžeš posloužit Doloro?"~ */ GOTO 2
  IF ~~ THEN REPLY #41502 /* ~"Momentálně mám jen nějaké otázky..."~ */ GOTO 32
  IF ~~ THEN REPLY #41503 /* ~"Nic; jen procházím. Sbohem."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",2)
~ THEN BEGIN 39 // from:
  SAY #41323 /* ~Dolořiny oči zasvítily hned jak tě spatřila. "Našel jsi ho? Souhlasil, že mi vrátí klíče k mému srdci?"~ */
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41504 /* ~"Ne, ještě ne. Sbohem."~ */ EXIT
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41506 /* ~"Ano... mám ty klíče k tvému srdci. Tady jsou."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #39471 /* ~Vrátil jsem se k Doloře poté, co jsem našel Merrimana a vrátil jsem jí klíče k jejímu srdci.~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from:
  SAY #41324 /* ~Dolora na tebe chvíli tiše zírala. "Kde jsou?"~ */
  IF ~~ THEN REPLY #41507 /* ~"Eh... Vrátím se až je budu mít"~ */ DO ~SetGlobal("Dolora","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1 43.0
  SAY #41325 /* ~"Konečně..." Když brala klíče z tvé dlaně, její ruka se opřela o tvoji - její kůže je suchá, ale ledová na dotyk, skoro jako chladný kov. "Tohle má pro mne velkou cenu. Děkuji ti."~ */
  IF ~  Global("Good_Dolora_1","GLOBAL",1)
~ THEN REPLY #41508 /* ~"Samozřejmě. Rád bych se na něco zeptal..."~ */ GOTO 44
  IF ~  Global("Evil_Dolora_1","GLOBAL",1)
~ THEN REPLY #41510 /* ~"Jistě. A má odměna...?"~ */ DO ~GiveItemCreate("Silbra",Protagonist,1,0,0)
GiveItemCreate("Silbra",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #41509 /* ~"Jsem rád že jsem mohl pomoci. Sbohem Doloro."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #41326 /* ~Dolora přikývla a vyňala pár náramků z váčku, který měla u pasu. "Teď jsou tvé; zasloužil sis je."~ */
  IF ~~ THEN REPLY #41511 /* ~"Teď mám pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41512 /* ~"Správně. Sbohem Doloro."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",3)
~ THEN BEGIN 43 // from:
  SAY #41327 /* ~Dolořiny oči zasvítily hned jak tě spatřila. "Klíče k mému srdci... našel jsi cos ztratil?"~ */
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41513 /* ~"Jo. Tady jsou."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",3)
AddexperienceParty(30000)
~ GOTO 41
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41514 /* ~"Ne... ale vrátím se."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 2.4 3.4 5.3 6.4 7.9 8.3 9.2 10.3 11.3 14.3 19.3 20.2 21.8 22.3 23.2 24.3 25.3 27.3 28.3 30.3 31.3 41.0 42.0 45.2 46.1 47.1 48.3 49.2 50.0 51.0 52.1 53.0 54.0 55.0 63.0 64.1 65.0 66.0 67.1
  SAY #41328 /* ~"Zajisté. Odpovím na co budu moci."~ */
  IF ~~ THEN REPLY #41515 /* ~"Doufal jsem, že se o tobě dozvím něco víc."~ */ GOTO 45
  IF ~~ THEN REPLY #41516 /* ~"Co tu děláš?"~ */ GOTO 48
  IF ~~ THEN REPLY #41517 /* ~"Můžeš mi o tomhle místě něco říct?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41518 /* ~"Co mi můžeš povědět o té němé prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora mi prozradila, že Ecco - mlčenlivá prostitutka - nemůže mluvit, neboť jí byl ukraden a zničen hlas. Řekla mi, že sladká slova Ecco kdysi odlákala milence bohyně Paramishy. Paramisha v záchvatu zuřivosti vytrhla Ecco hlas, zapečetila ho do křišťálového flakonu a hodila ho do tlamy megogalamdragy. Také mi řekla, že Ecco svůj hlas ztratila navždy, jedině jiný, nový hlas by jí mohl vrátit schopnost komunikovat. To je teda příběh! Ale Dolora tvrdí, že ho má přímo od toho milence Paramishy.~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67843 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora mi prozradila, že Ecco - mlčenlivá prostitutka - nemůže mluvit, neboť jí byl ukraden a zničen hlas. Řekla mi, že sladká slova Ecco kdysi odlákala milence bohyně Paramishy. Paramisha v záchvatu zuřivosti vytrhla Ecco hlas, zapečetila ho do křišťálového flakonu a hodila ho do tlamy megogalamdragy. Také mi řekla, že Ecco svůj hlas ztratila navždy, jedině jiný, nový hlas by jí mohl vrátit schopnost komunikovat. To je teda příběh! Ale Dolora tvrdí, že ho má přímo od toho milence Paramishy.~ */ GOTO 66
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41519 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ JOURNAL #66743 /* ~Zeptal jsem se jedné z prostitutek, jestli neví, zda je Kesai-Serris opravdu Ravelina dcera. Prostitutka mi navrhla, ať se zeptám Juliette. Prý byly dobré přítelkyně, než Juliette potkala Montagua.~ */ GOTO 65
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41520 /* ~"Snažím se najít Vivianinu vůni... víš kde by mohla být?"~ */ JOURNAL #66727 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neví něco o tom, kdo vzal Vivian její osobní voňavku. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41521 /* ~"Snažím se najít Marissin karmínový závoj... nemáš ponětí, kde by mohl být?"~ */ JOURNAL #66728 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neviděla Marissin závoj. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 54
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41522 /* ~"Víš něco o Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~Zeptal jsem se jedné z protitutek na Ravel a ona mi řekla, ať si o ní promluvím s Yves. Yves prý sbírá nejrůznější příběhy, a pravděpodobně ve svém repertoáru bude mít i nějaký o Ravel.~ */ GOTO 55
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #41523 /* ~"Promluvil jsem si s devíti prostitutkami... nevíš, kde bych našel desátou?"~ */ GOTO 63
  IF ~~ THEN REPLY #41524 /* ~"Navadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #41329 /* ~Dolora mrkla. "Merriman mi toho ohledně mé konstrukce nikdy moc neřekl. O tom, jak funguje moje tělo, vím asi tolik, co ty víš o funkcích svého těla. Buď jak buď, jsem žena se vším co k tomu patří... se stálou barvou kůže a teplotou těla. Uspokojilo to tvou zvědavost?"~ */
  IF ~~ THEN REPLY #41525 /* ~"A co tvá mysl, co tvé emoce?"~ */ GOTO 46
  IF ~~ THEN REPLY #41526 /* ~"K čemu přesně ty klíče potřebuješ?"~ */ GOTO 47
  IF ~~ THEN REPLY #41527 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41528 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #41330 /* ~"Jejich funkce jsou pro mne stejnou záhadou, jako pro kteréhokoliv jiného člověka. Když jsem na toto místo přišla poprvé, nerozuměla jsem emocím, protože jsem žádné neměla. Teď mám... zvláštní pocity... ale teprve teď je začínám chápat."~ */
  IF ~~ THEN REPLY #41529 /* ~"K čemu přesně ty klíče potřebuješ?"~ */ GOTO 47
  IF ~~ THEN REPLY #41530 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41531 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #41331 /* ~"Domnívám se, že Merriman vytvořil klíče, protože nechtěl riskovat, že od něj odejdu dříve než bude ze svého experimentu unavený. Teď, když je mám já, mohu se svými emocemi volně nakládat."~ */
  IF ~~ THEN REPLY #41532 /* ~"Jak pracuje tvoje mysl? Cítíš nějaké emoce?"~ */ GOTO 46
  IF ~~ THEN REPLY #41533 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41534 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1
  SAY #41332 /* ~"Jsem žákyně slečny Grace a ty ostatní ženy mám ráda. Grace nás zdokonaluje ve schopnostech užívání řeči a ve slovním styku. Většina studentek je zde proto, aby se staly členkami Společnosti Vjemu. Přicházejí sem studovat, aby se dobře připravily na přijímací ceremoniál."~ */
  IF ~~ THEN REPLY #41535 /* ~"Líbí se ti tady?"~ */ GOTO 49
  IF ~~ THEN REPLY #41536 /* ~"Pověz mi něco o Společenství Vjemu."~ */ GOTO 50
  IF ~~ THEN REPLY #41537 /* ~"Příjmací rituály?"~ */ GOTO 50
  IF ~~ THEN REPLY #41538 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41539 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41333 /* ~"Hodně se učím. Líbí se mi to." Na chvilku se usmála; na její bledé tváři ale vypadá úsměv poněkud prapodivně.~ */
  IF ~~ THEN REPLY #41540 /* ~"Zmínila jsi se o Společenství Vjemu...?"~ */ GOTO 50
  IF ~~ THEN REPLY #41541 /* ~"Říkala jsi něco o přijímacích rituálech?"~ */ GOTO 50
  IF ~~ THEN REPLY #41542 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41543 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1 48.2 49.0 49.1
  SAY #41334 /* ~"Udělaš nejlíp, když se na odpovědi svých otázek zeptáš naší učitelky Grace. Určitě ti to vysvětlí líp než bych mohla já."~ */
  IF ~~ THEN REPLY #41544 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41545 /* ~"Budiž sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 44.2
  SAY #41335 /* ~"Ano můžu. Nevěstinec duševních rozkoší je vlastně škola; prostitutky se zde zdokonalují v užívání řeči a ve slovním styku. Doporučuji ti, aby sis promluvil s naší učitelkou, slečnou Grace, která ti určitě podá rozsáhlejsí vysvětlení."~ */
  IF ~~ THEN REPLY #41546 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41547 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 44.6
  SAY #41336 /* ~"Předpokládám, že myslíš její osobní vůni, o které tvrdí, že ji byla ukradena některou ze zdejších prostitutek. Netuším, kam ji mohl kdo ukrýt. Možná by ses měl optat Nenny, jelikož ona ví skoro o všem co se tu šustne."~ */
  IF ~~ THEN REPLY #41548 /* ~"Jak může být *ukradena* něčí voňavka?"~ */ GOTO 53
  IF ~~ THEN REPLY #41549 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41550 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41337 /* ~"Vivian používá své umění k vytváření, změně nebo vylepšení čichové stránky lidí, živých nebo mrtvých. Možná, že ten zloděj zná také něco z jejího umění. Její vůně ulpí na všech věcech, ale bohužel na zloději ne, protože jinak by ho poznala po čichu."~ */
  IF ~~ THEN REPLY #41551 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41552 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 44.7
  SAY #41338 /* ~Dolora zakroutila hlavou. "Neviděla jsem Marissin závoj od doby, kdy s ním byla naposled venku ze své komnaty. A to už je nějaký čas." Na chvíli zavřela oči, ale pak znovu promluvila: "Nenny ví skoro o všem, co se tu děje. Možná by bylo nejlepší, kdyby ses jí šel zeptat, jestli něco podivného nepostřehla."~ */
  IF ~~ THEN REPLY #41553 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41554 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 44.8
  SAY #41339 /* ~"Vím, že byla - nebo je, pokud je ještě mezi živými - velmi mocná a nesmírně zlá čarodějnice. Paní Bolesti ji za zločiny proti městu Sigil poslala do mimodimenzionálního vězení. Uděláš líp, když si o ní promluvíš s Yves; zná spousty příběhů a určitě ti ráda poví i ten Ravelin."~ */
  IF ~~ THEN REPLY #41555 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41556 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.0 16.0
  SAY #41340 /* ~V mysli se ti začínají vybavovat vzpomínky na velkou halu... nesmírně rozlehlé místo, plné kvalitně oblečené smetánky... Před tebou je malý, bezvadně oděný chlapík, kterému na krku visí zlatý medailon; je ozdoben symbolem, který, jak si matně pamatuješ, značí "Znamení Jednoho." Oba dva stojíte v kroužku přihlížejících, kteří si přišli vyslechnout vaši debatu.~ */
  IF ~~ THEN REPLY #41557 /* ~Pokračuj ve vzpomínkách.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41341 /* ~"Ale... to není možné!" pravil na pohled zmatený muž.

"Oh, ale je to tak." Odpověděl jsi. "Vytvořil jsem pár neodiskutovatelných point a dal ti pár příkladů. Ty jednoduše neexistuješ."

"Ale... To nemůžeš! To nehodlám přijmout, já... já..."
~ */
  IF ~~ THEN REPLY #41558 /* ~Pokračuj ve vzpomínkách.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #41342 /* ~"Ano. Ty přestaneš existovat."

A bez jakéhokoli záblesku nebo oblaku kouře - či bez nějakého zvukového doprovodu - ten muž prostě zmizel. 
~ */
  IF ~~ THEN REPLY #41559 /* ~Pokračuj ve vzpomínkách.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #41343 /* ~Z úst přihlížejících se ozývá jen *oooh* a *aaach*," někteří tleskají... Vzpomínáš, jak jsi jim vznešeně zamával, a jak ti při odchodu hrál na rtech pobavený úsměv.

Náhle jsi poznal Doloru, jak si tě zamyšleně prohlíží. "Cítíš se dobře? Můžeme v povídání pokračovat někdy jindy..."
~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41560 /* ~"Ne... pojďme pokračovat v povídání..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41561 /* ~"Ne... pojďme pokračovat v povídání..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 60 // from: 26.0 29.0
  SAY #41344 /* ~Najednou se ti v mysli rozlévají vzpomínky na kouřem zalité bitevní pole... Sedíš na vysoké hoře a shlížíš dolů na ohromné bojující čtyřnohé zrůdy. Troubení rohů předává tvé rozkazy dole stojícím vojákům.~ */
  IF ~~ THEN REPLY #41562 /* ~Pokračuj ve vzpomínkách.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #41345 /* ~Souběžně s tvým pohledem, se tvé voje rozdělují. Vojáci prchají vlevo i vpravo, jak si cizí armáda razí cestu k vrcholu hory, aby zabila nepřátelského pána - tebe.~ */
  IF ~~ THEN REPLY #41563 /* ~Pokračuj ve vzpomínkách.~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #41346 /* ~"Hlupáci," pomyslel sis, se rty staženými do křivého úsměvu. "Mí rytíři zaútočí ze svahu hory a v okamžiku zastaví jejich bláznivý výpad... a v tom samém okamžiku je mí 'zběhlí' pěšáci sevřou do kleští a rozdrtí jejich boční linie! Ach, další vítězství bude brzo moje..."

Náhle jsi rozpoznal Doloru, jak se na tě upřeně dívá. "Cítíš se dobře? Můžeme tu hru dohrát někdy jindy, pokud si přeješ..."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41565 /* ~"Ne... pojďme pokračovat ve hře..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41566 /* ~"Ne... pojďme pokračovat ve hře..."~ */ GOTO 30
END

IF ~~ THEN BEGIN 63 // from: 44.9
  SAY #41347 /* ~Potřásla hlavou. "Obávám se, že ses zmýlil. Aspoň pokud je mi známo, tak tu žádný desátý student není."~ */
  IF ~~ THEN REPLY #41567 /* ~"Ne... pojďme pokračovat ve hře..."~ */ GOTO 44
  IF ~~ THEN REPLY #41568 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",4)
~ THEN BEGIN 64 // from:
  SAY #41348 /* ~Dolořina tvář se, zdá se, rozzářila, když tě spatřila. "Opět tě zdravím. Jak ti mohu být nápomocna?"~ */
  IF ~~ THEN REPLY #41569 /* ~"A jak mi můžeš posloužit Doloro?"~ */ GOTO 2
  IF ~~ THEN REPLY #41570 /* ~"Právě teď mám pár otázek..."~ */ GOTO 44
  IF ~~ THEN REPLY #41571 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 44.5
  SAY #41349 /* ~"Také jsem slyšela takovou povídačku, ale co já o tom můžu vědět. Když ne od Kesai, možná se ti odpovědi na tuhle otázku dostane od některé jiné ženy. Zeptej se Juliette... ona a Kesai byly kdysi přítelkyně, předím než Juliette potkala Merrimana."~ */
  IF ~~ THEN REPLY #41572 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41573 /* ~"To je vše co jsem chtěl vědet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 44.3 44.4
  SAY #41350 /* ~"Ano. Její jméno je Ecco. Její hlas - a tím popravdě všechny způsoby komunikace - jí byl ukraden a zničen. Eccoina slova kdysi oblouznila milence božské Paramishy. Paramisha v záchvatu žárlivého vzteku vyrvala Ecco její hlas a zapečetila ho do křištálové lahvičky. Tu poté vhodila do žaludku megogalamdragaře. Pro Ecco je její hlas navždy ztracen; pouze jiný, nový hlas by byl schopen jí opět navrátit schopnost komunikace. Vím to, protože jsem jednou s milencem Parmishy osobně mluvila."~ */
  IF ~~ THEN REPLY #41574 /* ~"Mám ještě otázku..."~ */ GOTO 44
  IF ~~ THEN REPLY #41575 /* ~"To je vše co jsem chtěl vědet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 19.0
  SAY #41351 /* ~Ukončil si hru s tím samým výsledkem jako předtím.

"Nejzábavnější hra. Zahrajeme si znovu?"~ */
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41576 /* ~"Teď ne. Mám nějaké otázky..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41577 /* ~"Teď ne. Mám nějaké otázky..."~ */ GOTO 44
  IF ~~ THEN REPLY #41578 /* ~"Možná jindy. Sbohem."~ */ EXIT
END
