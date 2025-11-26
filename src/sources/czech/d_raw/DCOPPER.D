// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOPPER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOPPER~

IF ~  Global("Coppereyes","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2474 /* ~Před tebou je vysoká, tichá postava. Klidně by si ji mohl někdo splést se sochou - i když hluboké vrásky v tváři vzbuzují dojem, že sochař na kladívko kapku přitlačil. Postava vypadá na padesát, šedesát, možná i víc. Ale kolik přesně, to se dá odhadnout jenom velice těžko. Když se k tobě pomalu otočil, všiml sis, že jeho oči měděně září.~ */
  IF ~~ THEN REPLY #2475 /* ~"Zdravím."~ */ DO ~SetGlobal("Coppereyes","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2476 /* ~Nechej muže být.~ */ EXIT
END

IF ~  Global("Coppereyes","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.0
  SAY #2477 /* ~Starej Mědioko na tebe zírá. Do očí mu moc dobře není vidět, ale mají v sobě jakoby měděnou záři.~ */
  IF ~  Global("Know_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #2478 /* ~"Chtěl bych podepsat Smrtelnou Smlouvu."~ */ GOTO 2
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2479 /* ~"Chci zrušit Smrtelný Kontrakt, který jsem s tebou podepsal."~ */ GOTO 13
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2480 /* ~"Dej mi zpátky Smrtelnou Smlouvu, nebo si ji vezmu násilím.~ */ GOTO 7
  IF ~~ THEN REPLY #12003 /* ~"Mám nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #12004 /* ~"Moje chyba... s někým jsem si tě spletl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #2481 /* ~Mědioko lehounce přikývl a sáhl oběma rukama do svého spalovačského roucha. Levou rukou vyňal malý váček z lidské kůže. Pravou rukou vytáhl kus pergamenu omotaného kolem kostěného pera. Pytlík a pergamen leží na stole před tebou.~ */
  IF ~~ THEN REPLY #2482 /* ~Zvedni pergamen a prozkoumej ho.~ */ GOTO 3
  IF ~~ THEN REPLY #2484 /* ~Podepiš pergamen.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2485 /* ~Prozkoumej pytlík.~ */ GOTO 8
  IF ~~ THEN REPLY #2486 /* ~Vezmi si pytlík.~ */ GOTO 9
  IF ~~ THEN REPLY #2493 /* ~"Rozmyslel jsem si to. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 3 // from: 2.0 3.3 8.0 9.0
  SAY #2487 /* ~Je to kontrakt, který dává Spalovačům právo na tělo podepsaného poté, co přejde Nekonečnou hranici. Podepsaný výměnou získává finanční částku v hotovosti, dohodnutou v čase podpisu. Předpokládáš, že pytlík obsahuje peníze, které dostaneš za podpis.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,50,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2488 /* ~Prohoď pergamen s druhým kontraktem a ten podepiš.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
DestroyItemObject("FalseCon",Protagonist,FALSE)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #2489 /* ~Prohoď pergamen s druhým kontraktem a ten podepiš.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,49,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2490 /* ~Prohoď pergamen s druhým kontraktem a ten podepiš.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #2491 /* ~Prozkoumej pergamen.~ */ GOTO 3
  IF ~~ THEN REPLY #2492 /* ~Podepiš pergamen.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2494 /* ~Prozkoumej pytlík.~ */ GOTO 8
  IF ~~ THEN REPLY #2495 /* ~Vezmi si pytlík.~ */ GOTO 9
  IF ~~ THEN REPLY #12008 /* ~"Rozmyslel jsem si to. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY #2496 /* ~Mědioko nedal nijak najevo, že by si všiml výměny. Když jsi skončil s podepisováním, kývl směrem k pytlíku. Když jsi po pytlíku sáhl a napočítal sto měděných mincí, pergamen zmizel ze stolu a skončil někde v záhybech Mědiokova roucha.~ */
  IF ~~ THEN REPLY #2498 /* ~"Mám nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #2499 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #2497 /* ~Mědioko nedal nijak najevo, že by výměnu zaregistroval. Když jsi skončil s podepisováním, kývl směrem k pytlíku. Nechal kontrakt na stole, jako by tě žádal, aby sis ho znovu prohlédl... a ty sis ke své hrůze všiml, že tvoje záměna byla neúspěšná. Po smrti tvé tělo bude patřit Spalovačům.~ */
  IF ~~ THEN REPLY #2500 /* ~"Uh... počkej chvíli... můžu se na tu smlouvu ještě podívat?"~ */ GOTO 6
  IF ~~ THEN REPLY #2501 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2502 /* ~Pergamen zmizel v záhybech Mědiokova roucha. Kývl směrem k váčku.~ */
  IF ~~ THEN REPLY #2503 /* ~"Dej mi ten kontrakt nebo tě zabiju!"~ */ GOTO 7
  IF ~~ THEN REPLY #2504 /* ~Vezmi si pytlík a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 6.0 13.0
  SAY #2505 /* ~Mědioko nereaguje, ale místnost náhle zčernala...~ */
  IF ~~ THEN REPLY #2506 /* ~"Co to --?!"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.5 8.2 9.2
  SAY #2507 /* ~Je to pytlík plný měďáků. Asi tak stovka, víc ne.~ */
  IF ~~ THEN REPLY #2508 /* ~Zvedni pergamen a prozkoumej ho.~ */ GOTO 3
  IF ~~ THEN REPLY #2509 /* ~Podepiš pergamen.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2510 /* ~Znovu prozkoumej pytlík.~ */ GOTO 8
  IF ~~ THEN REPLY #2511 /* ~Vezmi si pytlík.~ */ GOTO 9
  IF ~~ THEN REPLY #2512 /* ~"Rozmyslel jsem si to. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 2.3 3.6 8.3 9.3
  SAY #2513 /* ~Když jsi sáhl po váčku, zmizel ze stolu. Než stačíš mrknout, znovu se vrátil. Mědioko na tebe dál zírá.~ */
  IF ~~ THEN REPLY #2514 /* ~Zvedni pergamen a prozkoumej ho.~ */ GOTO 3
  IF ~~ THEN REPLY #2515 /* ~Podepiš pergamen.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2516 /* ~Prozkoumej pytlík.~ */ GOTO 8
  IF ~~ THEN REPLY #2517 /* ~Znovu sáhni pro pytlík.~ */ GOTO 9
  IF ~~ THEN REPLY #2518 /* ~"Rozmyslel jsem si to. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 1.3 4.0 11.0
  SAY #2519 /* ~Mědioko nic neříká.~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2522 /* ~"Přišel jsem podepsat Smrtelnou Smlouvu."~ */ GOTO 2
  IF ~~ THEN REPLY #2523 /* ~"Uh... tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 3.4 8.1 9.1
  SAY #2520 /* ~Když ses podepsal, Mědioko kývl směrem k váčku. Pergamen zmizel ze stolu do záhybu Mědiokova roucha.~ */
  IF ~~ THEN REPLY #2521 /* ~"Mám nějaké otázky, které bych ti rád položil..."~ */ GOTO 10
  IF ~~ THEN REPLY #2526 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 3.7 8.4 9.4
  SAY #2524 /* ~Mědioko nic neříká, jenom sáhl pro pytlík a pergamen. Schoval je někam do svého roucha.~ */
  IF ~~ THEN REPLY #2525 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #12005 /* ~Mědioko nic neříká.~ */
  IF ~~ THEN REPLY #12006 /* ~"Tohle je tvoje poslední šance. Dej mi tu smlouvu, nebo toho budeš litovat."~ */ GOTO 7
  IF ~~ THEN REPLY #12007 /* ~"Uh... no nic. Sbohem."~ */ EXIT
END
