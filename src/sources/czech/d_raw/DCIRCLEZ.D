// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCIRCLEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCIRCLEZ~

IF ~  Global("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #30106 /* ~Malý kulatý kámen je náboženský "text", který sebou nosí Dak'kon. Je vytvořený sérií protínajících se kružnic, které se přehýbají jedna přes druhou. Složitost plátů a spletitost linií dokazují, že text vytvořil opravdový umělec. Nemůžeš přijít na to, jak pláty rozevřít...~ */
  IF ~~ THEN REPLY #60450 /* ~Nech kámen být.~ */ EXIT
END

IF ~  GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 1 // from: 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.2 11.0 12.5 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.2 23.0 24.1 25.1 26.1 27.2 28.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.0 38.1 39.1 40.1 41.2 42.0 43.1 44.1 45.1 46.1 47.1 48.2 49.0 50.0 51.1 52.1 53.1 54.1 55.2 56.0 57.1 58.1 59.2 60.0
  SAY #60451 /* ~Tento malý zakulacený kámen je Nerozřešený kruh Zerthimona. Je tvořen sadou do sebe navzájem zapadajících kroužků. Složitost jednotlivých částí a neznatelnost jejich propojení jsou důkazem, že jej stvořil pravý mistr svého řemesla. ~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60452 /* ~Odemkni první část, jak ti ukázal Dak'kon.~ */ GOTO 2
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60453 /* ~Odemkni Druhý kruh Zerthimona. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60454 /* ~Odemkni Třetí kruh Zerthimona.~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60455 /* ~Odemkni Čtvrtý kruh Zerthimona. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60456 /* ~Odemkni Pátý kruh Zerthimona. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60457 /* ~Odemkni Šestý kruh Zerthimona. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60458 /* ~Odemkni Sedmý kruh Zerthimona. ~ */ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60459 /* ~Odemkni Osmý kruh Zerthimona. ~ */ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",13)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #60460 /* ~Prohlédni si části, zda nepřijdeš na nějaké nové kombinace.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",14)
GiveExperience(Protagonist,3000)
~ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",16)
CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #60461 /* ~Prohlédni si části, zda nepřijdeš na nějaké nové kombinace.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",17)
GiveExperience(Protagonist,6000)
~ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #60462 /* ~Prohlédni si části, zda nepřijdeš na nějaké nové kombinace.~ */ GOTO 50
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60463 /* ~Znovu přečti První kruh Zerthimona.~ */ GOTO 3
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60464 /* ~Znovu přečti Druhý kruh Zerthimona.~ */ GOTO 13
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60465 /* ~Znovu přečti Třetí kruh Zerthimona.~ */ GOTO 24
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60466 /* ~Znovu přečti Čtvrtý kruh Zerthimona.~ */ GOTO 29
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60467 /* ~Znovu přečti Pátý kruh Zerthimona.~ */ GOTO 38
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60468 /* ~Znovu přečti Šestý kruh Zerthimona.~ */ GOTO 43
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60469 /* ~Znovu přečti Sedmý kruh Zerthimona.~ */ GOTO 53
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60470 /* ~Znovu přečti Osmý kruh Zerthimona.~ */ GOTO 57
  IF ~~ THEN REPLY #60471 /* ~Odlož Nerozřešený kruh Zerthimona stranou.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60472 /* ~Zopakoval jsi pohyby, které Dak'kon předtím nad Kruhem udělal, a díly při tvém dotyku povolily. Prstence se posunuly do nového uspořádání. Po obvodu prstenců jdou rozeznat řady symbolů; odlišné od všech písem, jež jsi kdy viděl: řada vzájemně propjených geometrických obrazců, převážně tvořených z kruhů. Jen se na ně díváš a *znáš* jejich význam a *znáš*, jak je číst.~ */
  IF ~~ THEN REPLY #60473 /* ~Přečti První kruh Zerthimona.~ */ GOTO 3
  IF ~~ THEN REPLY #60474 /* ~Odlož Nerozřešený kruh Zerthimona stranou.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.11 2.0
  SAY #60475 /* ~"*Věz*, že jsme První Národ."~ */
  IF ~~ THEN REPLY #60476 /* ~Pokračuj v luštění symbolů...~ */ GOTO 4
  IF ~~ THEN REPLY #60477 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60479 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #60480 /* ~"Kdysi byl všude chaos. Z chaosu povstal První národ. Když První národ *poznal* sám sebe, chaos více nebyl, stal se tělem."~ */
  IF ~~ THEN REPLY #60481 /* ~Pokračuj v luštění symbolů...~ */ GOTO 5
  IF ~~ THEN REPLY #60482 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60483 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60484 /* ~"Svými myšlenkami a *poznáním* hmoty stvořil Národ První Svět a usídlil se na něm se svým *poznáním*."~ */
  IF ~~ THEN REPLY #60485 /* ~Pokračuj v luštění symbolů...~ */ GOTO 6
  IF ~~ THEN REPLY #60486 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60487 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #60488 /* ~"Přesto bylo tělo pro Národ nové, jež se Národ ještě nenaučil *znát*. Tělo dalo vzniknout novým myšlenkám. Lačnosti a závisti, bolesti a potěšení, žárlivosti a nedůvěře. Všechny živily sebe navzájem a mysl Národa se se stala rozpolcenou a nejednotnou. A pro tuto nejednotnost byl Národ potrestán."~ */
  IF ~~ THEN REPLY #60489 /* ~Pokračuj v luštění symbolů...~ */ GOTO 7
  IF ~~ THEN REPLY #60490 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60491 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #60492 /* ~"Pocity nového těla byly silné. Lačnost a závist, bolest a potěšení, žárlivost a nedůvěra, toto vše vedlo ke zrodu nepřátelství. Získáním těla byl První Národ spoután a zotročen těmi, kteří *znají* tělo jen jako nástroj svého chtění. *Věz*, že ty bestie byli *illithidi.*"~ */
  IF ~~ THEN REPLY #60493 /* ~Pokračuj v luštění symbolů...~ */ GOTO 8
  IF ~~ THEN REPLY #60494 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60495 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60496 /* ~"*Illithidi* byli rasou, která *neznala* sama sebe. Naučili se, jak donutit ostatní, aby *zapomněli* na sebe sama, na své JÁ."~ */
  IF ~~ THEN REPLY #60497 /* ~Pokračuj v luštění symbolů...~ */ GOTO 9
  IF ~~ THEN REPLY #60498 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60499 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60500 /* ~"Byli rozpínaví. Žili v těle a viděli tělo jako nástroj chtění. Jejich krev byla jako voda a rozvířili svou mysl. Když *illithidi* přišli k Národu, Národ již více nebyl národem. Národ se stal otrokem."~ */
  IF ~~ THEN REPLY #60501 /* ~Pokračuj v luštění symbolů...~ */ GOTO 10
  IF ~~ THEN REPLY #60502 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60503 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60504 /* ~"*Illithidi* odvedli Národ z Prvního světa a uvrhli ho do Falešných světů. Jak Národ pracoval na Falešných světech, *illithidi* jej učil Cestě těla. Tím ztratil Národ mnoho z *vědění*. *Poznal*, co je utrpení. *Poznal* smrt těla i mysli. *Poznal*, jaké je být sehnán do stáda a jeho maso snědeno. *Poznal* hrůzu z pocitu radosti z takových věcí."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60505 /* ~Pokračuj v luštění symbolů...~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",2)
~ GOTO 11
  IF ~  !Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #67271 /* ~Dočti Kruh.~ */ GOTO 11
  IF ~~ THEN REPLY #60506 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60507 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #60508 /* ~"Nerozřešený kruh *zná*, jak Národ ztratil sám sebe. A jak se může znovu *poznat*."~ */
  IF ~~ THEN REPLY #60509 /* ~Znovu prozkoumej Kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60510 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #60511 /* ~Posunul jsi díly tak, jak ti ukázal Dak'kon a odhalil se nový prstenec. Nese stejné písmo, jako jsi četl předtím, s toutéž geometrií... *znáš* jejich význam a *znáš*, jak je číst.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60512 /* ~Přečti Druhý kruh Zerthimona.~ */ GOTO 13
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60513 /* ~Přečti Třetí kruh Zerthimona.~ */ GOTO 24
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60514 /* ~Přečti Čtvrtý kruh Zerthimona.~ */ GOTO 29
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60515 /* ~Přečti Pátý kruh Zerthimona.~ */ GOTO 38
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60516 /* ~Přečti Šestý kruh Zerthimona.~ */ GOTO 43
  IF ~~ THEN REPLY #60517 /* ~Znovu prozkoumej Kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60518 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.12 12.0
  SAY #60519 /* ~"*Věz*, že tělo nemůže poznamenat ocel, ale ocel může poznamenat tělo. *Poznáním* toho, stal se Zerthimon svobodným."~ */
  IF ~~ THEN REPLY #60520 /* ~Pokračuj v luštění symbolů...~ */ GOTO 14
  IF ~~ THEN REPLY #60521 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60522 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #60523 /* ~"*Věz*, že rozpínaví měli tělo. Byli závislí na svém těle a užívali jej k plnění svých tužeb. Jedno z míst, kde tělo sloužilo jejich chtění, byla Pole těl na Falešných Světech *illithidů.*"~ */
  IF ~~ THEN REPLY #60524 /* ~Pokračuj v luštění symbolů...~ */ GOTO 15
  IF ~~ THEN REPLY #60525 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60526 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60527 /* ~"Pole byla tam, kam byla shazována těla Národa, potom, co *illithidé* pozřeli jejich mozky. Když je mozek stráven, stanou se těla hnojivem pro růst jedových trav *illithidů.* Zerthimon pracoval na Polích a *neznal* sám sebe, ani čím se stal. Byl nástrojem těla a tělo bylo spokojené."~ */
  IF ~~ THEN REPLY #60528 /* ~Pokračuj v luštění symbolů...~ */ GOTO 16
  IF ~~ THEN REPLY #60529 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60530 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60531 /* ~"Bylo to v Polích, když Zerthimon *poznal* tajemství oceli. Během jednoho z oběhů, když Zerthimon svýma rukama obdělával Pole, nalezl tělo, jehož mozek v něm zůstal. Nebylo užito k jídlu. Přesto bylo mrtvé."~ */
  IF ~~ THEN REPLY #60532 /* ~Pokračuj v luštění symbolů...~ */ GOTO 17
  IF ~~ THEN REPLY #60533 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60534 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60535 /* ~"Smysl smrti těla, aniž by bylo užito k jídlu pro *illithidy*, bylo pro Zerthimonovu mysl těžké pochopit. S tímto pomyšlením přišla touha *dozvědět se*, co se tělu stalo."~ */
  IF ~~ THEN REPLY #60536 /* ~Pokračuj v luštění symbolů...~ */ GOTO 18
  IF ~~ THEN REPLY #60537 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60538 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60539 /* ~"V lebce těla uvízlo ocelové ostří. Probodlo kost. Zerthimon si uvědomil, že to bylo ono, co tělo zabilo. Ocel poznamenala tělo, ale tělo nepoznamenalo ocel."~ */
  IF ~~ THEN REPLY #60540 /* ~Pokračuj v luštění symbolů...~ */ GOTO 19
  IF ~~ THEN REPLY #60541 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60542 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #60543 /* ~"Zerthimon vzal ostří a zkoumal je. Spatřil v něm svůj odraz. Byl to odraz v oceli, jímž Zerthimon poprvé *poznal* sama sebe. Hrana byla ostrá, z nositelovy vůle. Byla to čepel, která měla být pozvednuta proti Gith, když Zerthimon učinil Výrok dvou nebes."~ */
  IF ~~ THEN REPLY #60544 /* ~Pokračuj v luštění symbolů...~ */ GOTO 20
  IF ~~ THEN REPLY #60545 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60546 /* ~Slož a Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #60547 /* ~"Zerthimon mnohokrát čepel obrátil a mnohé byly jeho myšlenky o ní. Použil ji, aby si usnadnil práci. Používal ji a přemýšlel, jak by se dala dále použít."~ */
  IF ~~ THEN REPLY #60548 /* ~Pokračuj v luštění symbolů...~ */ GOTO 21
  IF ~~ THEN REPLY #60549 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60550 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60551 /* ~"*Illithidé* byli mocní. Zerthimon byl přesvědčen, že není nic, co *nevědí*. Avšak *illithidé* nikdy nenosili nástroje z oceli. Jako nástroj užívali jen tělo. Všechno bylo vykonáváno tělem. Byli tvořeni tělem a *znali* jen tělo. Přesto byla ocel mocnější, než tělo. Když čepel zabila tělo, bylo to tělo, co bylo slabší než ocel."~ */
  IF ~~ THEN REPLY #60552 /* ~Pokračuj v luštění symbolů...~ */ GOTO 22
  IF ~~ THEN REPLY #60553 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60554 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #60555 /* ~"Tak to bylo, jak Zerthimon *poznal*, že tělo podléhá oceli. *Věděním* toho, on *poznal*, že ocel je silnější, než *illithidé*."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60556 /* ~Skonči čtení symbolů...~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",4)
~ GOTO 23
  IF ~  !Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #67272 /* ~Dočti symboly.~ */ GOTO 23
  IF ~~ THEN REPLY #60557 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60558 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #60559 /* ~"Ocel se stala svátostí Národa. *Poznáním*, že ocel je svátost a s její pomocí *pozná* svobodu."~ */
  IF ~~ THEN REPLY #60562 /* ~Znovu prozkoumej Kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60586 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.13 12.1
  SAY #60587 /* ~"Zerthimon po mnoho oběhů pracoval pro *illithida* Arlathiia Dvakrát-mrtvého a jeho společnost v jeskyních nebes Falešných Světů. Jeho povinnosti zlomily hřbet mnohým, ale Zerthimon pracoval dál, snášeje muka a vyčerpání."~ */
  IF ~~ THEN REPLY #60588 /* ~Pokračuj v luštění symbolů...~ */ GOTO 25
  IF ~~ THEN REPLY #60590 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60591 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #60592 /* ~"Událo se to, když *illithid* Arlathii Dvakrát-mrtvý povolal Zerthimona, aby před ním stanul v jeho galerii mnoha žil. Tvrdil, že se Zerthimon dopustil svéhlavosti a zrady jeho společnosti. Tvrzení nebylo po pravdě, Arlathii si jen přál *znát*, zda v srdci Zerthimona plane zuřivost. Tvrzení nebylo pravdou. Arlathii si jen přál *znát*, zda v srdci Zerthimona plane zuřivost."~ */
  IF ~~ THEN REPLY #60593 /* ~Pokračuj v luštění symbolů...~ */ GOTO 26
  IF ~~ THEN REPLY #60594 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60595 /* ~Slož a Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #60596 /* ~"Zerthimon se raději podřídil trestu *illithidů*, než by prozradil svou nově objevenou moc. *Věděl*, že odhalením nenávisti ve svém srdci by ničemu nepomohl. A mohlo by to ublížit ostatním, se stejnými pocity. Vybral si snést trest a byl uvržen mezi Sloupy ticha a pykal za zradu."~ */
  IF ~~ THEN REPLY #60597 /* ~Pokračuj v luštění symbolů...~ */ GOTO 27
  IF ~~ THEN REPLY #60598 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60599 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #60600 /* ~"Připoután ke Sloupům, odvedl Zerthimon svou mysl na místo, kam za ním bolest nemohla. Nechal tělo velmi daleko. Přinesen před Arlathiie Dvakrát-mrtvého, projevil vděčnost za potrestání od *illithida*, jak bylo zvykem. A takto dokázal v očích *illithida*, že je otrokem, i když ve svém srdci zůstal svobodný."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60601 /* ~Skonči čtení symbolů...~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",6)
~ GOTO 28
  IF ~  !Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #67275 /* ~Dočti symboly.~ */ GOTO 28
  IF ~~ THEN REPLY #60602 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60603 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #60604 /* ~"Živením a hašením plamene nenávisti ve svém srdci, dovolil Arlathiiovi Dvakrát-mrtvému myslet, že je slabý. Když přišel čas Povstání, Arlathii byl první *illithid*, který *poznal* smrt Zerthimonovou rukou a třetí smrt."~ */
  IF ~~ THEN REPLY #60605 /* ~Znovu prozkoumej Kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60606 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 1.14 12.2
  SAY #60607 /* ~"*Věz*, že Povstání Národa proti *illithidům* bylo plánováno po mnoho desítek obratů. Mnozí z Národa se shromáždili a učili se způsob, jak porazit *illithidské* pány. Učili se, jak zaštítit svou mysl a užít ji, jako zbraň. Učili se svátosti oceli a co víc, bylo jim dáno *poznat* svobodu."~ */
  IF ~~ THEN REPLY #60608 /* ~Pokračuj v luštění symbolů...~ */ GOTO 30
  IF ~~ THEN REPLY #60609 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60610 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #60611 /* ~"Někteří z Národa se naučili povaze svobody a uzamčeli je ve svých srdcích. *Vědění* jim dalo sílu. Jiní se báli svobody a zůstali v tichu. Ale byli tu ti, kteří *znali* svobodu a *znali* otroctví, a volba byla na nich, jestli zůstane Národ spoután. Jeden z nich byl Vilquar."~ */
  IF ~~ THEN REPLY #60612 /* ~Pokračuj v luštění symbolů...~ */ GOTO 31
  IF ~~ THEN REPLY #60613 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60614 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #60615 /* ~"Vilquar neviděl v Povstání *svobodu*, ale příležitost. Viděl, že *illithidé* jsou rozprostřeni po mnoha Falešných Světech, které byly tak početné, že jejich pohled byl upřen jen ven. Ke všemu, čeho ještě nedosáhli. Vilquarovy oči viděly, že je mnoho míst, která *illithidé* nevidí. K Povstání byli *illithidé* slepí."~ */
  IF ~~ THEN REPLY #60616 /* ~Pokračuj v luštění symbolů...~ */ GOTO 32
  IF ~~ THEN REPLY #60617 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60618 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #60619 /* ~"Vilquar předstoupil před svého pána, *illithida* Zhijitarise, s *věděním* o Povstání. Vilquar ztížil svá pouta a nabídl se, že bude jeho očima proti Povstání. Oplátkou žádal Vilquar odměnu za svou službu. *Illithid* se smlouvou souhlasil."~ */
  IF ~~ THEN REPLY #60620 /* ~Pokračuj v luštění symbolů...~ */ GOTO 33
  IF ~~ THEN REPLY #60628 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60629 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #60630 /* ~"S uzavřením smlouvy nastal temný čas. Mnozí se pro Vilquara stali zrádci a mnozí byli tím Národem, jenž se živil na listech Povstání. Zdálo se, že Povstání zhyne dříve, než se zrodí, a *illithidé* byly Vilquarovým okem potěšeni."~ */
  IF ~~ THEN REPLY #60631 /* ~Pokračuj v luštění symbolů...~ */ GOTO 34
  IF ~~ THEN REPLY #60634 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60637 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #60638 /* ~"Bylo před koncem temného času, když Zerthimon *poznal* Vilquarovu zradu. S *věděním* o Vilquarově oku, Zerthimon přinutil Povstání utichnout, takže si Vilquar mohl myslet, že jeho zrada vyšla a Povstání padlo. *Věděl*, že Vilquarovo oko je naplněno jen vidinou slíbené odměny. Viděl jen, co si přál vidět."~ */
  IF ~~ THEN REPLY #60639 /* ~Pokračuj v luštění symbolů...~ */ GOTO 35
  IF ~~ THEN REPLY #60640 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60641 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #60642 /* ~"S hrabivostí bijící v jeho srdci, přistoupil Vilquar k *illithidu* Zhijitarisovi a promluvil ke svému pánu o svém úspěchu. Řekl, že Povstání padlo, a *illithidé* mohou znovu bezpečně obracet své oči ven. Požehnal jejich moudrost, když použili Vilquarovo oko, a požádal o svou odměnu."~ */
  IF ~~ THEN REPLY #60643 /* ~Pokračuj v luštění symbolů...~ */ GOTO 36
  IF ~~ THEN REPLY #60644 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60645 /* ~Slož Kruh znovu dohromady a uzamkni jej.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #60646 /* ~"V zaslepení chtivostí, zapomněl Vilquar *vědění*, proč Národ hledal svobodu. Ztratil *vědomost* zla zotročení. Zapomněl, co vidí jeho *illithidští* pání, když se na něj podívají. A tak byla Vilquarova zrada Národa skončena další zradou. Vilquar *poznal*, že Vilquarovo oko nemá již co vidět. Vilquarovo oko nebylo k užitku." ~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60647 /* ~Skonči čtení symbolů...~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",8)
~ GOTO 37
  IF ~  !Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #67276 /* ~Dočti symboly.~ */ GOTO 37
  IF ~~ THEN REPLY #60649 /* ~Přestaň číst a prozkoumej Kruh znovu.~ */ GOTO 1
  IF ~~ THEN REPLY #60651 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #60652 /* ~"Illithid dal Vilquarovi odměnu. Otevřel jeho lebeční dutinu a pohltil jeho mozek. Vilquarovo tělo pak bylo pohozeno na Huskských polích, aby jeho krev zavlažila jedovaté stonky trav."~ */
  IF ~~ THEN REPLY #60653 /* ~Znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60654 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 1.15 12.3
  SAY #60655 /* ~"Zerthimon byl prvním, kdo poznal cestu svobody. Ale nebyl to on, kdo první přišel s poznáním *cesty vzpoury*."~ */
  IF ~~ THEN REPLY #60656 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 39
  IF ~~ THEN REPLY #60657 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60658 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #60659 /* ~"Vnuknutí vzpoury ovládlo válečnou královnu Gith, jednu z Lidu. Sloužila illithidům jako voják. Znala válku, a měla ji nesmazatelně vyrytu v srdci. Věděla, jak se jedni musí sjednotit, aby si podrobili druhé. Znala cesty moci, a věděla jak odzbrojit dobyvatele, aby mohl být sám poražen. Její mysl byla soustředěná, její přání a její čepel splynuli v jedno."~ */
  IF ~~ THEN REPLY #60660 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 40
  IF ~~ THEN REPLY #60661 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60662 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #60663 /* ~"Okamžik, ve kterém Zerthimon poznal Gith, mu pomohl poznat sebe samotného. Její slova se jako oheň rozžehly v srdcích těch, kteří je slyšeli. Díky jejím slovům si přál poznat válku. Nevěděl, co ho k tomu přimělo, věděl pouze, že chce se svým mečem stát Gith po boku. Přál si vyslovit svůj hněv a svou bolest přenést na illithidy."~ */
  IF ~~ THEN REPLY #60664 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 41
  IF ~~ THEN REPLY #60665 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60666 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #60667 /* ~"Gith byla jednou z Lidu, ale její znalost sebe sama byla větší, než v jakou by Zerthimon mohl kdy doufat. Znala cesty smyslností, znala illithidy a díky poznání jí samotné, věděla jak je v bitvě porazit. Síla jejího vědění byla tak obrovská, že i všem těm které potkala, bylo umožněno poznat své vlastní já."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60668 /* ~Pokračuj ve čtení symbolů.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",10)
~ GOTO 42
  IF ~  !Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #67277 /* ~Dočti symboly.~ */ GOTO 42
  IF ~~ THEN REPLY #60669 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60670 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #60671 /* ~"Gith byla ojedinělá. Svou silou dokázala pomoci ostatním, aby i oni seznali svou vlastní sílu. A Zerthimon jí svůj meč položil k nohám."~ */
  IF ~~ THEN REPLY #60672 /* ~Znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60673 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.16 12.4
  SAY #60674 /* ~"Na Pláních Zatracení, pravil Zerthimon že nemůže být dvojí nebe. S vyřčením těchto slov přišla válka."~ */
  IF ~~ THEN REPLY #60675 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 44
  IF ~~ THEN REPLY #60676 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60677 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #60678 /* ~"Na Pláních Zatracení, Lidé dosáhli vítězství nad jejich pány illithidy. A konečně poznali svobodu."~ */
  IF ~~ THEN REPLY #60679 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 45
  IF ~~ THEN REPLY #60680 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60683 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #60684 /* ~"A nyní, dříve než ohně zmizely z bitevního pole, promluvila Gith o pokračování války. Spousty těch, jež měly srdce stále naplněny krveprolitím, s ní souhlasili. Nemluvila pouze o porážce illithidů, ale o zničení všech illithidů po celých sférách. Jakmile budou všichni vyhlazeni, její armáda povede válku proti všem rasám na které narazí." ~ */
  IF ~~ THEN REPLY #60685 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 46
  IF ~~ THEN REPLY #60686 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60687 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #60689 /* ~"V Githinu srdci zuřil oheň. Žila válkou a díky válce věděla kdo je. Vše co její oči spatřily, chtěla porazit."~ */
  IF ~~ THEN REPLY #60690 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 47
  IF ~~ THEN REPLY #60694 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60697 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #60698 /* ~"Zerthimon se vzepřel přání Gith. Pravil, že Lidé už znají svobodu. Nyní budou moci opět žít své vlastní životy a zhojit rány které jim otroctví přineslo. Za jeho slovy stála spousta srdcí těch lidí, kteří již byli znaveni válkou s illithidy."~ */
  IF ~~ THEN REPLY #60699 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 48
  IF ~~ THEN REPLY #60700 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60701 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #60702 /* ~"Ale srdce Gith nebylo v žádném případě srdcem Zerthimonovým. Pravila, že válka bude pokračovat. Illithidové budou zničeni. Jejich rasa již nebude více. Pak budou Lidé moci prohlásit tyto Falešné Světy za své. Gith řekla Zerthimonovi, že pouze v takovém případě budou stát pod stejnou oblohou. Ta slova byla tvrdá jako ocel."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60703 /* ~Pokračuj ve čtení symbolů.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",12)
~ GOTO 49
  IF ~  !Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #67278 /* ~Dočti symboly.~ */ GOTO 49
  IF ~~ THEN REPLY #60707 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60708 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #60709 /* ~"Zerthimon se stal Vzyvatelem Dvou Oblak. A s jeho slovy opět přišla válka." ~ */
  IF ~~ THEN REPLY #60710 /* ~Znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60711 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.10
  SAY #60719 /* ~Pečlivě jsi studoval kruh, sledujíc linky a zkoušeje nové vzory, niméně žádné nové kruhy jsi neobjevil.~ */
  IF ~~ THEN REPLY #60720 /* ~Znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60721 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 1.6 1.8
  SAY #60722 /* ~Když jsi prozkoumával prstence Druhého kruhu, našel jsi na desce zvláštní článek který se zmiňuje o práci Githiných lidí, aby dosáhli Vzpoury. Z článku vyplynul nový kruh a ty jsi posunul desku tak abys ho mohl prostudovat.~ */
  IF ~~ THEN REPLY #60724 /* ~Přečti symboly...~ */ GOTO 53
  IF ~~ THEN REPLY #60725 /* ~Znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60726 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 1.7 1.9
  SAY #60727 /* ~Když jsi zkoumal prstence Sedmého kruhu Zerthimonu, všiml sis náhle jakéhosi vzoru ... zahákl jsi prsty po stranách kruhu, a otevřel skrytou část, odsunujíce tak desku dál, abys ji mohl důkladněji prostudovat.~ */
  IF ~~ THEN REPLY #60728 /* ~Přečti symboly...~ */ GOTO 57
  IF ~~ THEN REPLY #60730 /* ~Znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60731 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 1.17 51.0
  SAY #60732 /* ~"Věz, že Povstání Lidu proti illithidům bylo záležitostí mnoha věků. Spousta lidí žila a zemřela působením času, než bylo Povstání naplánováno."~ */
  IF ~~ THEN REPLY #60733 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 54
  IF ~~ THEN REPLY #60734 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60735 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #60736 /* ~"Vzpoura byla plánovaná po dlouhý čas. Lidé po dlouhé věky shromaždovali ocel, aby s ní pak mohli poznamenat těla illithidů. Navíc časem začali zjištovat, že touží poznat jejich způsob života. Z prvu tím byli zmateni, ale časem jejich touha sílila. A teprve když věděli, jak illithidé žijí, začali je pozorovat. Pozorováním nalezli sílu, jež odkryla jejich vědomí."~ */
  IF ~~ THEN REPLY #60737 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 55
  IF ~~ THEN REPLY #60738 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60739 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #60740 /* ~"Když jim byly známy záměry illithidů, bylo vyvoleno mnoho lidí, kteří se v tajných úkrytech učili, jak soustředit svou mysl a jak své okovy užít místo zbraní. Učili se o tajích oceli a co je důležitější, dozvěděli se, jak chutná svoboda."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60741 /* ~Pokračuj ve čtení symbolů.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",15)
~ GOTO 56
  IF ~  !Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #67279 /* ~Dočti symboly.~ */ GOTO 56
  IF ~~ THEN REPLY #60743 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60744 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 55.1
  SAY #60745 /* ~"Nic z toho se však nedalo naučit přes noc. Poznání těchto věcí zabralo dlouhý čas a čím déle to trvalo, tím více na ně tíha času dopadala. Od umění užívat tajemství oceli, přes osvobození se od svých vlastních tužeb, po poznání sebe samého. Tohle a spousta dalších věcí bylo něco, čemu mohli lidé důvěřovat. A v průběhu časů toto poznání realizovali všichni."~ */
  IF ~~ THEN REPLY #60746 /* ~Znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60747 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.18 52.0
  SAY #60748 /* ~"Věz, že nejednotná mysl oslabuje člověka. Záměr a čin musí splynout v jedno. Pouze poznáním svého pravého JÁ, nalezneme opravdovou sílu."~ */
  IF ~~ THEN REPLY #60749 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 58
  IF ~~ THEN REPLY #60750 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60751 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #60752 /* ~"Věz, že pokud si uvědomíš v srdci touhu jednat, neodvracej se od ní jen proto, že vede přes mnohá úskalí. Vždyť bez utrpení by Vzpoura nikdy nebyla a lidé by nikdy nedostali možnost poznat sami sebe."~ */
  IF ~~ THEN REPLY #60753 /* ~Pokračuj ve čtení symbolů...~ */ GOTO 59
  IF ~~ THEN REPLY #60754 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60755 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #60756 /* ~"Věz také, že nic na světě se nemůže postavit jednotě. Když všichni půjdou svobodně za svým cílem, když budou všechny ruce spjaté jedním přáním a všechny činy budou sledovat jeden cíl, mohou se v základech otřást i samotné Sféry."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60757 /* ~Pokračuj ve čtení symbolů...~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",18)
~ GOTO 60
  IF ~  !Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #67280 /* ~Čti symboly dál.~ */ GOTO 60
  IF ~~ THEN REPLY #60764 /* ~Přestaň číst a znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60769 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #60773 /* ~"Rozpolcená mysl je ta, která neví sama o sobě. Když není jednotná, rozetne tělo vedví. Ale když je sama sebou a má nějaký cíl, dokáže tělo neskutečně posílit. Ten kdo rozumí sám sobě, stává se silnějším."~ */
  IF ~~ THEN REPLY #60774 /* ~Znovu prozkoumej kruh.~ */ GOTO 1
  IF ~~ THEN REPLY #60775 /* ~Přisuň desky k sobě a zapečeť Kruh.~ */ EXIT
END
