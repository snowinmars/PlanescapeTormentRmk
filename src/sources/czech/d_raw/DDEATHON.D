// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHON~

IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7288 /* ~Vidíš Spalovače s pokřiveným úsměvem ve tváři. Ačkoliv se usmívá, výraz jeho tváře podtrhují oči - prozrazují mdlou mysl. Pravou ruku má kratší a stále ohnutou, jako by houpal dítě.~ */
  IF ~~ THEN REPLY #7289 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #7290 /* ~Odejdi od muže.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7291 /* ~Spalovačův zrak po tobě přeběhl. "Jméno." Způsob, jakým toto slovo vyřkl, ti připadl podoben vyzvánění umíráčku.~ */
  IF ~~ THEN REPLY #7292 /* ~"Já... Já nevím."~ */ GOTO 2
  IF ~~ THEN REPLY #7293 /* ~"Och... promiň, že jsem tě vyrušil."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 9.0
  SAY #7294 /* ~"Žádné jméno, žádné jméno, nemohu ti pomoci." Spalovač k tobě promlouvá zvláštním ale zpěvným tónem. "Musíš mi udat jméno, pokud si přeješ zjistit, kde je pohřbeno."~ */
  IF ~~ THEN REPLY #7295 /* ~"Co?"~ */ DO ~SetGlobal("Death_of_Names","GLOBAL",1)
~ JOURNAL #66659 /* ~U Spalovačského památníku jsem potkal zmrzačeného Spalovače. Jmenuje se "Smrt-Jmen" a vypadá to, že má za úkol pohřbívat jména tak, že je vytesá do zdí památníku. Z toho místa mám husí kůži, je to jeden velký náhrobní kámen plný jmen.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7296 /* ~"Jméno ti bylo dáno, když ses narodil a vracíš ho v okamžiku, kdy ho již nepotřebuješ. Smrt Jmen, Smrt Jmen." Jeho pohled si nejprve změřil monolit a pak z něj sklouzl na stěny místnosti. "Smrt Jmen zde pohřbil mnoho jmen. Řekni mi nějaké a já ti ukážu jeho hrob."~ */
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7297 /* ~"Xachariáš."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7298 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7299 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7300 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7303 /* ~"Quentin."~ */ GOTO 13
  IF ~~ THEN REPLY #7304 /* ~"No... Je to na mě trochu rychlé, já nevím. Zkusme 'Adahn.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #9766 /* ~"Hmmm. Můžeš pro mě vyrýt jméno?"~ */ GOTO 5
  IF ~~ THEN REPLY #9767 /* ~"Dneska žádný jména. Promiň, že obtěžuju."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.5 5.3 5.5 9.4 9.6 9.10
  SAY #7305 /* ~Zavrtěl hlavou. "Ještě není mrtvé toto jméno. Není zde pochováno. Nenastal doposud jeho čas."~ */
  IF ~~ THEN REPLY #7306 /* ~"Tak to bych zkusil nějaké jiné..."~ */ GOTO 9
  IF ~~ THEN REPLY #7307 /* ~"A nemohl bys pohřbít jedno jméno, co ti řeknu?"~ */ GOTO 5
  IF ~~ THEN REPLY #7308 /* ~"Tak tedy... dobrá. Nezlob se, že jsem tě obtěžoval."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
  SAY #7309 /* ~Přitakal a pak odhalil svou drobnou ruku - původně schovanou v jakémsi pouzdře u boku. Je zakrněná... velikostí odpovídá dětské ruce. "Bude to něco stát, pochovat jméno. Tři mince, tři."~ */
  IF ~  PartyGoldGT(2)
GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7310 /* ~"Xachariáš."~ */ GOTO 12
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7311 /* ~"Deionarra."~ */ GOTO 12
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",0)
~ THEN REPLY #7312 /* ~"Dhall."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Dhall","GLOBAL",1)
~ GOTO 6
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7313 /* ~"Dhall."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
Dead("Quentin")
Global("Death_of_Names_Quentin","GLOBAL",0)
~ THEN REPLY #7317 /* ~"Quentin."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Quentin","GLOBAL",1)
~ GOTO 15
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
!Dead("Quentin")
~ THEN REPLY #9768 /* ~"Quentin."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #9769 /* ~"Hmmmm... Es-Annon."~ */ DO ~TakePartyGold(3)
AddexperienceParty(500)
SetGlobal("Crier_Quest","GLOBAL",2)
~ JOURNAL #26108 /* ~Vyryl jsem jméno města Es-Annon na Spalovačský monument u Márnice. Měl bych se vrátit a říct Oplakávači z Es-Annonu, že je vystřídán ve své službě připomínání.~ */ GOTO 6
  IF ~  PartyGoldLT(3)
~ THEN REPLY #9770 /* ~"Nemám žádný... prachy. Možná příště."~ */ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #26086 /* ~"Dnes žádné jméno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.6
  SAY #7350 /* ~Mince dopadly do dlaně Smrti Jmen a on svou ruku opět ukrývá. Ožil. Jeho oči chvíli nevnímají dění světa, soustředěn, pak znenadání se v nich zablesklo a on začal pečlivě prohlížet jak monolit, tak zdi. ~ */
  IF ~~ THEN REPLY #7351 /* ~Počkej...~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7352 /* ~Náhle spatřil volné místo na stěně a přichvátal k němu. Sklonil se k němu a jal se rýt do zdi. Netrvalo to ani moc dlouho, vztyčil se a zamířil k tobě. "Vykonáno." Definitivnost reprezentovaná tímto slovem je ti až nepříjemná.~ */
  IF ~~ THEN REPLY #7353 /* ~"A nemohl bys ty vyhledat nějaké jméno pro mne..."~ */ GOTO 9
  IF ~~ THEN REPLY #7354 /* ~"Mám v plánu pohřbít další jméno."~ */ GOTO 5
  IF ~~ THEN REPLY #7355 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7356 /* ~Vidíš Smrt Jmen. Postává poblíž pomníku se stále stejným pokřiveným úsměvem, skrčenou ruku skrytou a přitisknutou k boku.~ */
  IF ~~ THEN REPLY #7357 /* ~"Zdravím."~ */ GOTO 9
  IF ~~ THEN REPLY #7358 /* ~Odejdi od něj.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
  SAY #7359 /* ~Znova na tobě utkvěl jeho pohled. "Jméno." Nezměnil se ani způsob jeho výslovnosti, stále tentýž umíráček.~ */
  IF ~~ THEN REPLY #7360 /* ~"Já... Já nevím."~ */ GOTO 2
  IF ~~ THEN REPLY #7361 /* ~"Rád bych pohřbil jméno."~ */ GOTO 5
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7362 /* ~"Xachariáš."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7363 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7364 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7365 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Know_Xixi","GLOBAL",1)
GlobalLT("Xixi_Back","GLOBAL",2)
~ THEN REPLY #7366 /* ~"Xixi."~ */ GOTO 4
  IF ~  Global("Know_Xixi","GLOBAL",1)
Global("Xixi_Back","GLOBAL",3)
~ THEN REPLY #7367 /* ~"Xixi."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7368 /* ~"Quentin."~ */ GOTO 13
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #9771 /* ~"Es-Annon."~ */ GOTO 10
  IF ~~ THEN REPLY #9772 /* ~"Uh... 'Adahn?'"~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #26109 /* ~"Promiň, že obtěžuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9
  SAY #7369 /* ~Jeho oči chvíli nevnímají běh okolního světa, soustředěny dovnitř jeho hlavy. Pak se v nich zablesklo a počaly nadlidskou rychlostí prohledávat stěny monolitu. Nakonec ukázal na jedno konkrétní místo. "Pochováno."~ */
  IF ~~ THEN REPLY #7370 /* ~Prohlédni místo, na které ukazuje.~ */ GOTO 11
  IF ~~ THEN REPLY #7371 /* ~"Věděl bych o jiném jméně..."~ */ GOTO 9
  IF ~~ THEN REPLY #7372 /* ~"Rád bych pohřbil jméno."~ */ GOTO 5
  IF ~~ THEN REPLY #7373 /* ~"Jen tak koukám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7374 /* ~Vyryt do černého kamene, drobounký a stěsnaný nápis představuje jméno, jež jsi požadoval. Je prakticky ztraceno v moři okolních jmen, co ho obkličují.~ */
  IF ~~ THEN REPLY #7375 /* ~"Mám tu ještě jiné jméno..."~ */ GOTO 9
  IF ~~ THEN REPLY #7376 /* ~"Rád bych pohřbil jméno."~ */ GOTO 5
  IF ~~ THEN REPLY #7377 /* ~"Jen tak koukám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 5.1
  SAY #7378 /* ~Zavrtěl hlavou. "Pochováno."~ */
  IF ~~ THEN REPLY #7380 /* ~"Věděl bych ještě o jiném jméně..."~ */ GOTO 9
  IF ~~ THEN REPLY #7382 /* ~"Rád bych pohřbil jméno."~ */ GOTO 5
  IF ~~ THEN REPLY #7383 /* ~"Jen se rozhlížím kolem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4 9.8
  SAY #7384 /* ~Jeho oči chvíli nevnímají běh okolního světa. Pak se v nich zablesklo a počaly nadlidskou rychlostí prohledávat stěny monolitu. Nakonec ukázal na základnu pomníku. "Pochováno."~ */
  IF ~~ THEN REPLY #7386 /* ~Prohlédni místo, na které ukazuje.~ */ GOTO 14
  IF ~~ THEN REPLY #7387 /* ~"Mám tu ještě jiné jméno..."~ */ GOTO 9
  IF ~~ THEN REPLY #7388 /* ~"Rád bych pohřbil jméno."~ */ GOTO 5
  IF ~~ THEN REPLY #7390 /* ~"Jen tak okukuju. Zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7391 /* ~Vyryto do černého kamene, drobounké a stěsnané je Quentinovo jméno. Naneštěstí pro Quentina jeho tužba nevypadá příliš reálně - pomník se zcela jistě kvůli němu nerozpadne.~ */
  IF ~~ THEN REPLY #7392 /* ~"Věděl bych o jinačím jméně..."~ */ GOTO 9
  IF ~~ THEN REPLY #7394 /* ~"Rád bych pohřbil jméno..."~ */ GOTO 5
  IF ~~ THEN REPLY #7403 /* ~"Jenom se rozhlížím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.4
  SAY #7404 /* ~Mince dopadly do dlaně Smrti Jmen a on svou ruku opět ukrývá. Ožil. Jeho zrak chvilku nevnímá okolí, natolik je soustředěn, pak se mu znenadání v očích zableskne a on počne pečlivě prohlížet jak monolit, tak zdi. ~ */
  IF ~~ THEN REPLY #7405 /* ~Čekej...~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7406 /* ~Přichvátal k základně pomníku, sklonil se a jal rýt do jeho stěny. Naneštěstí pro Quentina se monolit během této procedury ani nepohnul. Netrvalo to ani moc dlouho, Smrt Jmen dokončil svou práci, vztyčil se a zamířil k tobě. "Vykonáno." Definitivnost reprezentovaná tímto slovem je ti až nepříjemná.~ */
  IF ~~ THEN REPLY #7407 /* ~"Mohl by ses porozhlédnout po jméně pro mě..."~ */ GOTO 9
  IF ~~ THEN REPLY #7408 /* ~"Rád bych pohřbil další jméno..."~ */ GOTO 5
  IF ~~ THEN REPLY #7409 /* ~"Děkuji ti. Sbohem."~ */ EXIT
END
