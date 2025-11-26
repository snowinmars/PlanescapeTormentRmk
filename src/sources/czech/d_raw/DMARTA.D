// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARTA~

IF ~  Global("Marta","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2831 /* ~Vidíš hranatou ženu oblečenou v hrubé pytlovině. Pobíhá po místnosti, její klouby skřípou, jak se shýbá, aby mohla sebrat z různých stolů různé předměty. Vlasy má sčesané dozadu a sepnuté kostěnou sponou, tváří se kysele. Něco si mumlá zpěvavým hlasem.~ */
  IF ~~ THEN REPLY #20473 /* ~"Zdravím."~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #20474 /* ~Odejdi.~ */ EXIT
END

IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2832 /* ~Vidíš Martu.  Pobíhá po místnosti, její klouby skřípou, jak se shýbá, aby mohla sebrat z různých stolů různé předměty. Něco si mumlá zpěvavým hlasem.~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20475 /* ~"Zdravím, Marto."~ */ GOTO 2
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20476 /* ~"Potřeboval bych se tě na něco zeptat, Marto..."~ */ GOTO 30
  IF ~~ THEN REPLY #20477 /* ~Ignoruj Martu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #20432 /* ~Žena tě zřejmě neslyšela - místo toho se dobelhala k jednomu ze stolů a začala se hrabat v nějaké mrtvole. "No tak pocem..." Zacvakala zuby. "Nedělej Martě problémy... dělá problémy, viď Marto...? Jo jo, dělá..."~ */
  IF ~~ THEN REPLY #20478 /* ~"Uh... zdravím?"~ */ GOTO 4
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20479 /* ~Sleduj co dělá.~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20480 /* ~Sleduj co dělá.~ */ GOTO 3
  IF ~~ THEN REPLY #20481 /* ~Ignoruj Martu.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2
  SAY #20433 /* ~Z toho co vidíš to vypadá, že vytrhává mrtvole zuby... jenom holýma rukama. Když to nestačí, vytáhla dřevěné dláto a paličku, s jejichž pomocí zub snadno uvolní, pak ho strčí do pytlíku, který má u pasu.~ */
  IF ~~ THEN REPLY #20482 /* ~"Uh... co to děláš?"~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #20483 /* ~Ignoruj Martu, prozkoumej místnost.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #20434 /* ~Marta od mrtvoly vystrašeně odskočila a pronikavě zaječela. "Aighh!" Zlostně zasyčela - na mrtvolu na stole. "Jestli mrtvej nejsi, měls říct dřív něco, falešná, hnusná mrtvolo, ano! Měl by ses *stydět*!"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20484 /* ~Imituj: "*Ty* by ses měla stydět. Takhle mi vyrážet zuby... copak nemáš k mrtvým žádnou úctu?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20485 /* ~Imituj: "*Ty* by ses měla stydět. Takhle mi vytahovat stehy a zuby... copak nemáš k mrtvým žádnou úctu?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20486 /* ~"To já jsem mluvil, ne ta mrtvola."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20487 /* ~"To já jsem mluvil, ne ta mrtvola."~ */ GOTO 10
  IF ~~ THEN REPLY #20488 /* ~Ignoruj Martu.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #20435 /* ~"Hah!" Marta si založila ruce v bok a zhluboka se nadechla. "Jako by ses *staral* o svý zuby! Všecky zhnilý a děravý a hnědý - se divim, že ti z huby dávno samy nevypadly!" Poškrábala se na hlavě. "Není to tak, Marto? Jo, všechny zhnilý a zkažený..."~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20489 /* ~Imituj: "Ooooooh... budeš *potrestána* za tvé zlé trhání zubů, Marto. Budu tě *strašit* až do konce tvých dnů..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20490 /* ~"To já jsem mluvil, ne ta mrtvola."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20491 /* ~"To já jsem mluvil, ne ta mrtvola."~ */ GOTO 10
  IF ~~ THEN REPLY #20492 /* ~Ignoruj Martu.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20436 /* ~"Hah! Slyšelas to, Marto? Slyšelas?" Martina tvář se zkroutila. "Já slyšela to, Marto! Slyšela!" Začala do mrtvoly mlátit pěstí. "Straš *mě* jenom straš! Tumáš! A tumáš!"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20493 /* ~Imituj: "Ooooooh... stop... ne... Už tě nebudu zlobit... odpusť mi..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20494 /* ~"To já jsem mluvil, ne ta mrtvola."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20495 /* ~"To já jsem mluvil, ne ta mrtvola."~ */ GOTO 10
  IF ~~ THEN REPLY #20496 /* ~Ignoruj Martu.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20437 /* ~"Zatracený zdechliny..." Marta se zhluboka nadechla. "Tak je to, viď, Marto? Tichá mrtvola... ano."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20497 /* ~"To já jsem mluvil, ne ta mrtvola."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20498 /* ~"To já jsem mluvil, ne ta mrtvola."~ */ GOTO 10
  IF ~~ THEN REPLY #20499 /* ~Ignoruj Martu.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.1 7.0
  SAY #20438 /* ~Marta zašilhala a otočila se. "Eh? Jak ses sem dostal tak rychle?" Zamumlala si pro sebe: "Jak to udělal, Marto? Najednou, tak rychle..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 207
END

IF ~~ THEN BEGIN 9 // from:
  SAY #20439 /* ~Marta si stále něco mumlá pro sebe o *mrtvolách* a *vděčnosti*, přesně jí nerozumíš.~ */
  IF ~~ THEN REPLY #20500 /* ~"Kdo jsi?"~ */ JOURNAL #18470 /* ~V Pohřbené vesnici jsem potkal zmatenou švadlenu jménem Marta. Pořád k sobě mluví, jakoby měla dvojí osobnost.~ */ GOTO 11
  IF ~~ THEN REPLY #20501 /* ~"Uh... dobrá. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3 5.2 6.2 7.1
  SAY #20440 /* ~Marta zašilhala a otočila se. "Eh? Jak ses sem dostal tak rychle?" Zamumlala si pro sebe: "Jak to udělal, Marto? Najednou, tak rychle..."~ */
  IF ~~ THEN REPLY #20502 /* ~"Kdo jsi?"~ */ JOURNAL #18470 /* ~V Pohřbené vesnici jsem potkal zmatenou švadlenu jménem Marta. Pořád k sobě mluví, jakoby měla dvojí osobnost.~ */ GOTO 11
  IF ~~ THEN REPLY #20503 /* ~"Uh... dobrá. Budu muset jít. Sbohem."~ */ JOURNAL #18470 /* ~V Pohřbené vesnici jsem potkal zmatenou švadlenu jménem Marta. Pořád k sobě mluví, jakoby měla dvojí osobnost.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0 13.0 30.0
  SAY #20441 /* ~"Marto, ptal se tendle, kdo sem? Jo, ptal, ptal..." Začala si zpívat. "Nikdo, jenom já, já jsem Marta, Marta Švadlena... hmmm... Mar-ta - Šva-dlen-ka... Mar-ta - Šva-dlen-ka..." Otočila se zpět k mrtvole a dál si prozpěvuje vlastní jméno.~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20504 /* ~"Co to děláš?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",2)
~ GOTO 12
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20505 /* ~"Co to děláš?"~ */ GOTO 12
  IF ~~ THEN REPLY #20506 /* ~"Uh... dobrá. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 13.1 30.1
  SAY #20442 /* ~Marta se otočila k mrtvole. "Přesvědčuju tohodle, ať mi dá svý stehýčky a zubičky a von nespo-lupracovává, ne ne..." Zavrtěla smutně hlavou. "Tvrdohlavý jako kámen, viď, Marto?" Našpulila rty. "Ano, je, to je..."~ */
  IF ~~ THEN REPLY #20507 /* ~"Stehýčky... a zubičky? O čem to mluvíš?"~ */ GOTO 14
  IF ~~ THEN REPLY #20508 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20509 /* ~"Uh... dobrá. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.4 16.9 17.1 18.1 19.2 20.1 21.0 23.4 24.4 25.4 26.2 26.3 27.0 28.1 29.1 31.2 37.0 39.4
  SAY #20443 /* ~"Řikal tenhle něco o otázkách, Marto...?" Marta zamrkala a pak se zamračila. "Ano, Marto, protože má ten 'zvídavý' pohled, to má..."~ */
  IF ~~ THEN REPLY #20510 /* ~"Kdo jsi?"~ */ JOURNAL #18470 /* ~V Pohřbené vesnici jsem potkal zmatenou švadlenu jménem Marta. Pořád k sobě mluví, jakoby měla dvojí osobnost.~ */ GOTO 11
  IF ~~ THEN REPLY #20511 /* ~"Co to děláš?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20512 /* ~"Proč vytahuješ z mrtvol stehy a zuby?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Švadlena Marta má zajímavou práci - nosí k ní mrtvoly, ona jim vyrazí zuby, odpárá stehy a podívá se po jakýchkoli cennostech, které jsou na nebo dokonce v těle, pak je zase sešije dohromady.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20513 /* ~"Proč vytahuješ z mrtvol stehy a zuby?"~ */ JOURNAL #20538 /* ~Švadlena Marta má zajímavou práci - nosí k ní mrtvoly, ona jim vyrazí zuby, odpárá stehy a podívá se po jakýchkoli cennostech, které jsou na nebo dokonce v těle, pak je zase sešije dohromady.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20514 /* ~"Můžeš se podívat do mého těla?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20515 /* ~"Můžeš se podívat do mého těla?"~ */ GOTO 23
  IF ~~ THEN REPLY #20516 /* ~"Můžu si tady odpočinout?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20517 /* ~"Vytahuješ z mrtvol stehy... nemáš na prodej nějaké nitě?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20518 /* ~"Nemáš ještě něco zajímavého, co jsi vytáhla z mrtvol, co bys mi mohla dát?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20519 /* ~"Můžu se podívat, co jsi v poslední době vytáhla z mrtvol?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20520 /* ~"Žádné otázky. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #20444 /* ~"Musím vytáhnout stehýčky, vyrazit zuby... eh, Marto, možná bys mohla pomoct... Já ti *pomáhám*, ty stará slepice... takovej tón není nutný... ano, vytahovat  stehýčky a zubáčky... ano. A taky věcičky zevnitř."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20521 /* ~"Věcičky vevnitř?"~ */ EXTERN ~DMORTE~ 208
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20522 /* ~"Věcičky vevnitř?"~ */ GOTO 31
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20523 /* ~"Proč vytahuješ z mrtvol stehy a zuby?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Švadlena Marta má zajímavou práci - nosí k ní mrtvoly, ona jim vyrazí zuby, odpárá stehy a podívá se po jakýchkoli cennostech, které jsou na nebo dokonce v těle, pak je zase sešije dohromady.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20524 /* ~"Proč vytahuješ z mrtvol stehy a zuby?"~ */ JOURNAL #20538 /* ~Švadlena Marta má zajímavou práci - nosí k ní mrtvoly, ona jim vyrazí zuby, odpárá stehy a podívá se po jakýchkoli cennostech, které jsou na nebo dokonce v těle, pak je zase sešije dohromady.~ */ GOTO 16
  IF ~~ THEN REPLY #20525 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20526 /* ~"Uh... dobrá. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #20445 /* ~"Věcičky."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 209
END

IF ~~ THEN BEGIN 16 // from: 13.2 13.3 14.2 14.3 30.2 30.3 31.0 31.1
  SAY #20446 /* ~"Dej je na bok, Marto, to já s nima dělám." Poškrábala se na hlavě. "Jo, Marto, tak tak... nitě a zuby jsou cenné, dají se na penízky změnit. 'Ober mrtvoly, které ti přineseme', říkaj Martě. Vytáhni zuby, stehy, věcičky uvnitř mrtvol, ober je a my je střelíme Spalovákům..."~ */
  IF ~~ THEN REPLY #20527 /* ~"Střelit mrtvoly Spalovákům...?"~ */ GOTO 17
  IF ~~ THEN REPLY #20528 /* ~"Kdo ti říká, že to máš dělat?"~ */ GOTO 19
  IF ~~ THEN REPLY #20529 /* ~"Co v těch tělech najdeš?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20530 /* ~"Hledáš v mrtvolách věci? Nemohla by ses podívat do mého těla?"~ */ GOTO 22
  IF ~  !NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20531 /* ~"Hledáš v mrtvolách věci? Nemohla by ses podívat do mého těla?"~ */ GOTO 23
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20532 /* ~"Vytahuješ z mrtvol stehy... nemáš na prodej nějaké nitě?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20533 /* ~"Nemáš ještě něco zajímavého, co jsi vytáhla z mrtvol, co bys mi mohla dát?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20534 /* ~"Můžu se podívat, co jsi v poslední době vytáhla z mrtvol?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20535 /* ~"Nebude ti vadit, když si tady u tebe odpočinu?"~ */ GOTO 29
  IF ~~ THEN REPLY #20536 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20537 /* ~"Uh... dobrá. Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20447 /* ~Marta se zamračila. "Neřekly jsme, že je prodáme, Marto?" Zamračení se prohloubila a Marta zavrtěla hlavou. "Jo, Marto, to jsme řekly. Spalováci kupujou mrtváky, ale my je nejdříve musíme obrat..."~ */
  IF ~~ THEN REPLY #20539 /* ~"Kdo ti říká, že máš obírat mrtvoly?"~ */ GOTO 19
  IF ~~ THEN REPLY #20540 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20541 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY #20448 /* ~"Věcičky, věcičky..." Pokrčila rameny. "Pak si pro ně jiní přidou."~ */
  IF ~~ THEN REPLY #20542 /* ~"Kdo?"~ */ GOTO 19
  IF ~~ THEN REPLY #20543 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20544 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1 17.0 18.0
  SAY #20449 /* ~"Tlustoksichtej prasák Quint, a ten shrbenej s holí, Pharod, že jo Marto?" Usmála se a přikývla. "Jo jo, tak to je, Marto..."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #20545 /* ~"Pharod? Kde je?"~ */ GOTO 20
  IF ~~ THEN REPLY #20546 /* ~"Co dělají s věcmi, které vytáhneš z těl?"~ */ GOTO 21
  IF ~~ THEN REPLY #20547 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20548 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20450 /* ~Marta pokrčila rameny. "Kde je Pharod, se on ptá. Je tady Marto?" Přikývla. "Jo, Marto, Pharod je tady. V jedný budově..."~ */
  IF ~~ THEN REPLY #20549 /* ~"Co dělají s věcmi, které vytáhneš z těl?"~ */ GOTO 21
  IF ~~ THEN REPLY #20550 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20551 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #20451 /* ~"Prodávaj. Prodávaj za měďáčky."~ */
  IF ~~ THEN REPLY #20552 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20553 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.4 16.3 30.4
  SAY #20452 /* ~Marta na tebe zašilhala. "Hmmm." Pak kývla. "Marta to může udělat, viď, Marto? Ano, může..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 210
END

IF ~~ THEN BEGIN 23 // from: 13.5 16.4 30.5
  SAY #20453 /* ~Marta na tebe zašilhala. "Hmmm." Pak kývla. "Marta to může udělat, viď, Marto? Ano, může..." Vytáhla dláto. "Kde? Kde..." Marta si tě prohlíží, jakoby hledala místo, kde tě otevřít.~ */
  IF ~~ THEN REPLY #20554 /* ~"Zkusíme žaludek, jo..."~ */ GOTO 38
  IF ~~ THEN REPLY #20555 /* ~"Co takhle něco mezi žebry...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20556 /* ~"Zkontroluj mé vnitřnosti... tam by mohlo něco být."~ */ GOTO 34
  IF ~~ THEN REPLY #20557 /* ~"Otevři mi lebku, buď tak hodná."~ */ GOTO 32
  IF ~~ THEN REPLY #20558 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #20559 /* ~"Uh... no nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #20454 /* ~"Kde? Kde..." Marta si tě prohlíží, jakoby hledala nejlepší místo, kde by tě mohla otevřít.~ */
  IF ~~ THEN REPLY #20560 /* ~"Zkusíme žaludek, jo..."~ */ GOTO 38
  IF ~~ THEN REPLY #20561 /* ~"Co takhle něco mezi žebry...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20562 /* ~"Zkontroluj mé vnitřnosti... tam by mohlo něco být."~ */ GOTO 34
  IF ~~ THEN REPLY #20563 /* ~"Otevři mi lebku, buď tak hodná."~ */ GOTO 32
  IF ~~ THEN REPLY #20564 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #20565 /* ~"Uh... no nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 32.0 33.0 34.1 38.0
  SAY #20455 /* ~Pohled se ti pomalu vrací... vidíš nad sebou Martu, vrtící hlavou. "Nic, nic jsme nenašly, viď, Marto?" Zavrtěla hlavou. "Ne, nic, Marto. Smůla... zkusíme znovu?"~ */
  IF ~~ THEN REPLY #20566 /* ~"Z... Z... Zkusíme žaludek, jo..."~ */ GOTO 38
  IF ~~ THEN REPLY #20567 /* ~"Huh... huh... Co takhle něco mezi žebry...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20568 /* ~"Zk... Zk... Zkontroluj mé vnitřnosti... tam by mohlo něco být."~ */ GOTO 34
  IF ~~ THEN REPLY #20569 /* ~"Ot.. otr... Otevři mi lebku, buď tak hodná."~ */ GOTO 32
  IF ~~ THEN REPLY #20570 /* ~"Nuh - nuh - ne.  Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #20571 /* ~"Nuh... nuh... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.7 16.5 30.7
  SAY #20456 /* ~Vypadá zmateně. "Koupit? Penízky? Ty jsi to nepřišel vyzvednout... to, co tady pro tebe je? Sebrat nitě, kosti, zuby?"~ */
  IF ~~ THEN REPLY #20572 /* ~Lži: "Jo, přišel jsem si pro to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_4","GLOBALLaw",-1)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Teeth",Protagonist,1,0,0)
~ GOTO 27
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20573 /* ~"Ne, nepřišel jsem si to vyzvednout, ale něco koupit."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 28
  IF ~  PartyGold(0)
~ THEN REPLY #20574 /* ~"Ne, nepřišel jsem si to vyzvednout, ale něco koupit... teda až budu mít peníze na útratu. Teď mám pár otázek..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 13
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20575 /* ~"No tak nic. Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #20576 /* ~"Uh... no nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20457 /* ~"Tady máš, pro cos přišel..." Podala ti několik předmětů. "Vše co mám, má to vše..."~ */
  IF ~~ THEN REPLY #20577 /* ~"Děkuju. Mám pár dalších otázek..."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #20578 /* ~"Děkuju... to se bude hodit. Sbohem."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #20458 /* ~Zírá na mince na tvé dlani, nejistá, co s nimi. "Penízky. Penízky..." Zamračila se. "Co s nima chce, Marto? Marto, Marto... co s nima?"~ */
  IF ~~ THEN REPLY #20579 /* ~"Můžu se podívat, co máš?"~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20580 /* ~"No tak nic. Mám pár dalších otázek..."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #20581 /* ~"Uh... no nic. Sbohem."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 13.6 16.8 30.6
  SAY #20459 /* ~Marta přikývla. "Martin domov, Marta tady spí, ty taky můžeš, jestli chceš, ano. Nemyslím, že by to Martě vadilo, co říkáš, Marto?" Zavrtěla hlavou. "Ne, ne, Marto, nevadí, jestli to nevadí tobě."~ */
  IF ~~ THEN REPLY #20583 /* ~"Dobrá tedy..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #20584 /* ~"Ještě nechci odpočívat. Nejdřív mám nějaké otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #20585 /* ~"Možná se vrátím, až budu potřebovat odpočinek. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 1.1
  SAY #20460 /* ~"Řikal tenhle něco o otázkách, Marto...?" Marta zamrkala a pak se zamračila. "Ano, Marto, protože má ten 'zvídavý' pohled, to má..."~ */
  IF ~~ THEN REPLY #20586 /* ~"Kdo jsi?"~ */ GOTO 11
  IF ~~ THEN REPLY #20587 /* ~"Co to děláš?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20588 /* ~"Proč vytahuješ z mrtvol stehy a zuby?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Švadlena Marta má zajímavou práci - nosí k ní mrtvoly, ona jim vyrazí zuby, odpárá stehy a podívá se po jakýchkoli cennostech, které jsou na nebo dokonce v těle, pak je zase sešije dohromady.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20589 /* ~"Proč vytahuješ z mrtvol stehy a zuby?"~ */ JOURNAL #20538 /* ~Švadlena Marta má zajímavou práci - nosí k ní mrtvoly, ona jim vyrazí zuby, odpárá stehy a podívá se po jakýchkoli cennostech, které jsou na nebo dokonce v těle, pak je zase sešije dohromady.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20590 /* ~"Můžeš se podívat do mého těla?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20591 /* ~"Můžeš se podívat do mého těla?"~ */ GOTO 23
  IF ~~ THEN REPLY #20592 /* ~"Můžu si tady odpočinout?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20593 /* ~"Vytahuješ z mrtvol stehy... nemáš na prodej nějaké nitě?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20594 /* ~"Nemáš ještě něco zajímavého, co jsi vytáhla z mrtvol, co bys mi mohla dát?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20595 /* ~"Můžu se podívat, co jsi v poslední době vytáhla z mrtvol?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20596 /* ~"Žádné otázky. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.1
  SAY #20461 /* ~"Věcičky vevnitř, věcičky vevnitř... ano, Marto?" Přikývla, pak zavrtěla hlavou. "Když je mají, Marto, když je mají..."~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20597 /* ~"Proč vytahuješ z mrtvol stehy a zuby?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Švadlena Marta má zajímavou práci - nosí k ní mrtvoly, ona jim vyrazí zuby, odpárá stehy a podívá se po jakýchkoli cennostech, které jsou na nebo dokonce v těle, pak je zase sešije dohromady.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20598 /* ~"Proč vytahuješ z mrtvol stehy a zuby?"~ */ JOURNAL #20538 /* ~Švadlena Marta má zajímavou práci - nosí k ní mrtvoly, ona jim vyrazí zuby, odpárá stehy a podívá se po jakýchkoli cennostech, které jsou na nebo dokonce v těle, pak je zase sešije dohromady.~ */ GOTO 16
  IF ~~ THEN REPLY #20599 /* ~"Ah... tak. Můžu se tě ještě na něco zeptat?"~ */ GOTO 13
  IF ~~ THEN REPLY #20600 /* ~"Uh... dobrá. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.3 24.3 25.3 39.3
  SAY #20462 /* ~Ležíš na stole a poslední věc, kterou vidíš je Marta stojící nad tebou, připravená s dlátem a paličkou. Ozvalo se ostré *prásk* a ty se propadáš do temnoty. ~ */
  IF ~~ THEN REPLY #20601 /* ~Upadni do temnot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #20602 /* ~Požádal jsem Martu - bláznivou švadlenu z Pohřbené vesnice - aby se podívala do mé lebky, jestli tam něco není. Nebylo tam nic. Nic užitečného. Teda, nic, co by se dalo vyndat a nějak rozumně použít...~ */ GOTO 25
END

IF ~~ THEN BEGIN 33 // from: 23.1 24.1 25.1 39.1
  SAY #20463 /* ~Ležíš na stole, Marta stojí nad tebou s připraveným dlátem a paličkou. Ozvalo se ostré *prásk*,jak rozrazila tvůj hrudní koš. Polykáš své výkřiky, zatímco se Marta hrabe v tvých plících... když se pokoušíš nadechnout, všechno ztmavlo...~ */
  IF ~~ THEN REPLY #20603 /* ~Upadni do temnot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 23.2 24.2 25.2 39.2
  SAY #20464 /* ~Ležíš na stole, Marta se nad tebou sklání s připraveným zrezavělým nožem. Cítíš silnou bolest, jak ti zaryla nůž do břicha a brutálně zařízla, uvolňujíc tvé vnitřnosti. Navzdory bolesti sleduješ s morbidním zaujetím, jak se prohrabává tvými vnitřnostmi a přitom si brouká nějakou veselou melodii...~ */
  IF ~  Global("Marta_Ring","GLOBAL",0)
~ THEN REPLY #20604 /* ~Sleduj...~ */ GOTO 35
  IF ~  Global("Marta_Ring","GLOBAL",1)
~ THEN REPLY #20605 /* ~Upadni do temnot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #20465 /* ~"Ach!" Cítíš ukrutnou bolest, jak Marta vytáhla na vzduch hromadu tvých střev, ze kterých teče krev a další tekutiny. "Podívej na to, Marto... podívej... vidím... vidím... tady řízni, tady..." Marta nařízla střevo. Uslyšel jsi cinknutí, jak na podlahu spadlo něco malého kovového.~ */
  IF ~~ THEN REPLY #20606 /* ~"Urhhhkk..."~ */ DO ~SetGlobal("Marta_Ring","GLOBAL",1)
GiveItemCreate("Ring02",Protagonist,1,0,0)
GiveItemCreate("Intest",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #20607 /* ~Požádal jsem Martu - bláznivou švadlenu z Pohřbené vesnice - ať prohledá mé vnitřnosti, jestli tam není něco ukrytého. Našla prsten... a taky ze mě vyndala náhradní sadu střev.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #20466 /* ~Marta pak vrazila tu slizkou hromadu zpět do tvého těla a pak se sehnula a zvedla... prsten. Podala ti ho. "Hezky, hezký, viď, Marto?" Přikývla. "Ano, Marto, ale takový věci by se neměly polykat, nenene..."~ */
  IF ~~ THEN REPLY #20608 /* ~"D-díky... bylo... tam... ještě... něco...?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 13.8 16.6 30.8
  SAY #20467 /* ~"Nic víc nemám, viď, Marto?" Přikývla. "Trvá to tak dlouho, tenhleten, už ne, už ne..."~ */
  IF ~~ THEN REPLY #20609 /* ~"Dobrá tedy. Mám pár dalších otázek..."~ */ GOTO 13
  IF ~~ THEN REPLY #20610 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.0 24.0 25.0 39.0
  SAY #20468 /* ~Ležíš na stole, Marta se nad tebou sklání s připraveným zrezavělým nožem. Cítíš silnou bolest, jak ti zaryla nůž do břicha a brutálně zařízla, uvolňujíc tvé vnitřnosti. Navzdory bolesti sleduješ s morbidním zaujetím, jak vytáhla tvůj žaludek...~ */
  IF ~~ THEN REPLY #20611 /* ~Sleduj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0
  SAY #45007 /* ~Marta vrtí hlavou. "Nic víc, nic víc, že Marto? Měli bychom zkusit jiné místo, Marto?"~ */
  IF ~~ THEN REPLY #45009 /* ~"Z... Z... Zkusme žaludek..."~ */ GOTO 38
  IF ~~ THEN REPLY #45010 /* ~"Huh... huh... Hele, co takhle hrudník...?"~ */ GOTO 33
  IF ~~ THEN REPLY #45011 /* ~"Z... z... zkontroluj vnitřnosti... ještě... jednou..."~ */ GOTO 34
  IF ~~ THEN REPLY #45012 /* ~"O... o... otevři mi lebku..."~ */ GOTO 32
  IF ~~ THEN REPLY #45013 /* ~"Nuh - nuh - ne. Mám ještě pár dalších otázek."~ */ GOTO 13
  IF ~~ THEN REPLY #45014 /* ~"Nuh... nuh... Ne. Sbohem."~ */ EXIT
END
