// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNOROCHJ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DNOROCHJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46511 /* ~Vidíš hubeného muže ve špinavé černé robě. Jeho tuhé černé vlasy mu ční z hlavy jako trnová koruna a bledá kůže těsně obepíná jeho lebku. Mračí se na svůj drink a něco si mumlá.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46526 /* ~"Zdravím."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46527 /* ~"Norochj?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46528 /* ~Nechej ho být.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46512 /* ~Vidíš hubeného spalovače ve špinavé černé robě. Jeho tuhé černé vlasy mu ční z hlavy jako trnová koruna a bledá kůže těsně obepíná jeho lebku. Mračí se na svůj drink a něco si mumlá.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46529 /* ~"Zdravím."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46530 /* ~"Norochj?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46531 /* ~Nechej ho být.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Norochj","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #46513 /* ~Vidíš Norochje. Vytáhl jednu ze svých spon a škrábe se s ní na tváři. ~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46532 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46533 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46534 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46535 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46536 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46537 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46538 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46539 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46540 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62892 /* ~"Našel jsem... Nespalovačku. Jen tak někoho už neokrade, teď má moc práce s tím, aby byla mrtvá."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62893 /* ~"Něco tě trápí?"~ */ GOTO 5
  IF ~  Global("Norochj_Ad","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62894 /* ~"Jsem tu kvůli tomu inzerátu venku."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62895 /* ~"Emoric mi řek, ať si s tebou promluvím, Norochji."~ */ GOTO 12
  IF ~~ THEN REPLY #62896 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 0.1 1.0 1.1
  SAY #46514 /* ~Spalovač zvedl pohled, podíval se na tebe a prostudoval si tě. Vzal jednu z ostatních věcí ze svého účesu a ukázal s ní na sebe. "Norochj. Zasvěcený. Spalovač. Stráž."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",0)
~ THEN REPLY #46545 /* ~"Vypadáš, že máš starosti... Norochji."~ */ GOTO 5
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46546 /* ~"Jsem tady kvůli tomu inzerátu venku."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46547 /* ~"Emoric mi řekl, ať si s tebou promluvím."~ */ GOTO 12
  IF ~~ THEN REPLY #46548 /* ~"Můžu ti položit pár otázek?"~ */ GOTO 4
  IF ~~ THEN REPLY #46549 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #46515 /* ~Norochj zavrtěl hlavou a vrátil pohled na svůj nápoj.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46550 /* ~"Je něco špatně? Vypadáš, že máš starosti."~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46551 /* ~"Počkej. Emoric mi řekl, ať si s tebou promluvím."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46609 /* ~"Jsem tady kvůli tomu inzerátu venku."~ */ GOTO 6
  IF ~~ THEN REPLY #46610 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.10 3.0 4.0 9.10 10.10 11.10
  SAY #46516 /* ~Norochj se dotkl své tváře a přejel po vráskách, které mu způsobuje jeho zamračení. "Problémy, ano, problémy osoba má."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46553 /* ~"Co se děje?"~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46554 /* ~"Emoric mi řekl, ať si s tebou promluvím."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46611 /* ~"Jsem tady kvůli tomu inzerátu venku."~ */ GOTO 6
  IF ~~ THEN REPLY #46612 /* ~"Nemyslím, že bych ti mohl nějak pomoct s tvými problémy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.11 3.1 4.2 5.0 5.2
  SAY #46517 /* ~Spalovač si tě prohlédl od hlavy k patě. "Problému mnoho na hlavě mé. Pomoci, ano, ty můžeš. Mauzoleum ono probudilo se. Mrtví, oni procházejí se, Spalovači oni znepokojení. Mrtví, oni měli by ležet. Ty najdeš to, co mrtvé znervózňuje a dělá je chodícími, a mince měděné, ty já ti zaplatím."~ */
  IF ~~ THEN REPLY #46556 /* ~"Velmi dobře. Kde je to mauzoleum?"~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",1)
~ JOURNAL #17134 /* ~Norochj, Spalovač, s nímž jsem mluvil v Baru Zapomnění, mi vyprávěl o mauzoleu, kde mrtví povstali z hrobů. Přál si, abych tuto událost podrobně prozkoumal. Ještě mi řekl, že vchod do zmíněného mauzolea se nalézá kousek od Spalovačského monumentu, severozápadním směrem. Aspoň, že kvůli tomu nemusím zpět do Márnice. Dále mi sdělil, abych vešel do klenutého podloubí a nad svým srdcem načrtl půlkruh ukazováčkem pravé ruky. Na to se průchod otevře. Kdyby se mi podařilo odhalit příčinu současných problémů a odstranit ji, mám se ohlásit u Norochje a informovat jej.~ */ GOTO 13
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46557 /* ~"No, nevím, jestli ti s tím budu moct pomoci. Emoric mi řekl, ať si s tebou promluvím o něčem jiném."~ */ GOTO 12
  IF ~~ THEN REPLY #46558 /* ~"Ne, děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 12.0
  SAY #46518 /* ~Norochj kývl. "Najít jeho, já nemohu. Důležité pro Spalovače, toto být."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46559 /* ~"Nemusíš mít strach - už jsem ho našel. Už ten trik na nikom zkoušet nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Naštěstí jsem se už postaral o Popelpláště, takže jsem si vyzvedl odměnu.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46560 /* ~"Nemusíš mít strach - už jsem ho našel. Už ten trik na nikom zkoušet nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Naštěstí jsem se už postaral o Popelpláště, takže jsem si vyzvedl odměnu.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46561 /* ~"Nemusíš mít strach - už jsem ho našel. Už ten trik na nikom zkoušet nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Naštěstí jsem se už postaral o Popelpláště, takže jsem si vyzvedl odměnu.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Dead("Ashman")
~ THEN REPLY #46562 /* ~"Nemusíš mít strach - už jsem ho našel a zbavil ho všech problémů."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Naštěstí jsem toho cápka Popelpláště už vyřídil, takže odměna je v kapse.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Dead("Ashman")
~ THEN REPLY #46563 /* ~"Nemusíš mít strach - už jsem ho našel a zbavil ho všech problémů."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Naštěstí jsem toho cápka Popelpláště už vyřídil, takže odměna je v kapse.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Dead("Ashman")
~ THEN REPLY #62897 /* ~"Neboj se - až jsem ho našel a osvobodil jsem ho od jeho bídy."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ GOTO 9
  IF ~  Dead("Mochai")
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62898 /* ~"Neboj se - až jsem jí našel a osvobodil jsem jí od její bídy."~ */ GOTO 15
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62899 /* ~"Můžu ho pro tebe najít, když chceš."~ */ GOTO 8
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62900 /* ~"Můžu ho pro tebe najít... samozřejmě za menší bakšiš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Norochj_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #62901 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7 7.8
  SAY #46519 /* ~Norochj znovu kývl. "Za to, že problémy mé staly se tvými, mince měděné já zaplatím tobě... Najdi Ne-Spalovače, s ním problém vyřeš a pak na místo toto navrať se. Norochj posečká."~ */
  IF ~~ THEN REPLY #46568 /* ~"Velmi dobře. Vrátím se, až najdu tohohle... ne-Spalovače. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 2.5 2.8 7.2 7.5 9.2 9.5 9.8 10.2 10.5 10.8 11.2 11.5 11.8 15.2 15.5 16.2 16.5
  SAY #46520 /* ~Norochjův výraz obav se při tvém hovoru ztratil. "Díky já dávám tobě." Sáhl do roucha a vytáhl malý váček, který ti podal. "Mince ony měděné. Jedenkráte sto."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46569 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46570 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46571 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46572 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46573 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46574 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46575 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46576 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46577 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62902 /* ~"Našel jsem... Nespalovačku. Jen tak někoho už neokrade, teď má moc práce s tím, aby byla mrtvá."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62903 /* ~"Ještě něco tě snad trápilo?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #62904 /* ~"Jen tak mimochodem, podle Emorica bych si s tebou měl promluvit ještě o další záležitosti."~ */ GOTO 12
  IF ~~ THEN REPLY #62905 /* ~"Díky... Rád jsem pomohl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.4 2.7 7.1 7.4 9.1 9.4 9.7 10.1 10.4 10.7 11.1 11.4 11.7 15.1 15.4 16.1 16.4
  SAY #46521 /* ~Norochjův výraz obav se při tvém hovoru ztratil. "Díky já dávám tobě." Sáhl do záhybů roucha a vytáhl střední váček, který ti podal. "Mince ony měděné. Dvakráte jedno sto."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46581 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46582 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46583 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46584 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46585 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46586 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46587 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46588 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46589 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62906 /* ~"Našel jsem... Nespalovačku. Jen tak někoho už neokrade, teď má moc práce s tím, aby byla mrtvá."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62911 /* ~"Ještě něco tě snad trápilo?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62912 /* ~"Jen tak mimochodem, podle Emorica bych si s tebou měl promluvit ještě o další záležitosti."~ */ EXIT
  IF ~~ THEN REPLY #62913 /* ~"Díky... Rád jsem pomohl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.0 2.3 2.6 7.0 7.3 9.0 9.3 9.6 10.0 10.3 10.6 11.0 11.3 11.6 15.0 15.3 16.0 16.3
  SAY #46522 /* ~Norochjův výraz obav se při tvém hovoru ztratil. "Díky já dávám tobě." Sáhl do roucha a vytáhnul velký pytlík, který ti podává. "Mince ony měděné. Třikráte jedno sto. A..." Znovu sáhl do záhybů svého hávu a podal ti roličku obvazů. "Připadá Norochjovi, ty více ovazy tyto potřebuješ pro osobu svou."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46593 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46594 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46595 /* ~"Zjistil jsem, co se děje v mauzoleu. Mrtví opět v klidu spí."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Vrátil jsem se k Norochjovi a prozradil mu, že jeho problém v mauzoleu byl odstraněn.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46596 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46597 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46598 /* ~"Našel jsem... ne-Spalovače. V tomhle městě už žádné kapsy vybírat nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Našel jsem chlápka jménem Popelplášť a skoulel to s ním, takže mi Norochj vyplatil odměnu.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46599 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46600 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46601 /* ~"Našel jsem... ne-Spalovače. Na vybírání kapes nemá čas, má moc práce. Být mrtvý může být docela namáhavé."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Nalezl jsem chlápka jménem Popelplášť a sejmul ho, za což mi Norochj vyplatil odměnu.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #64430 /* ~"Našel jsem... Ne-spalovače. Je příliš zaměstnána tím, že je mrtvá, než aby mohla někoho znovu okrádat."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46602 /* ~"S čím ještě máš problémy?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46603 /* ~"Mimochodem, Emoric mi řekl, ať si s tebou promluvím ještě o další věci."~ */ GOTO 12
  IF ~~ THEN REPLY #46604 /* ~"Díky... rád jsem pomohl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.12 3.2 4.1 5.1 6.1 9.11 11.11
  SAY #46523 /* ~"Emoric tě poslal ke mně." Chvíli si tě prohlíží, pak si povzdychl a ukázal na sebe. "Norochj je Spalovač. Stráž. Slouží spalovačským zájmům, chrání spalovačské zájmy, chrání *pověst* Spalovačů." Znovu si povzdychl. "V Úlu, tam mnoho zlodějů je. A jeden zloděj, oblečen, jako Spalovač chodívá. Ale on věru Spalovačem není."~ */
  IF ~~ THEN REPLY #46605 /* ~"Takže je tady někde zloděj maskovaný za Spalovače?"~ */ DO ~SetGlobal("Dustman_Pickpocket","GLOBAL",1)
~ JOURNAL #17075 /* ~Vykonal jsem jak mi Emoric nařídil, promluvil jsem s Spalovačem jménem Norochj. Má potíže s nalezením a odchycením jednoho chlápka. Je to zloděj, co se převléká za jednoho ze Spalovačů.~ */ GOTO 7
  IF ~~ THEN REPLY #46606 /* ~"Nemyslím, že bych ti mohl pomoct. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #46524 /* ~Norochj přikývl. "Mauzoleum u památníku. Jdi na severozápad od černého památníku, vejdi do průchodu a opiš polokruh nad svým srdcem. Takto." Zakroužil prstem. "Do mauzolea takto vkročíš."~ */
  IF ~~ THEN REPLY #46607 /* ~"Tak se na to tedy podívám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #46525 /* ~Norochj si povzdychl, zaškubal jednou ze svých spon ve vlasech. "Spalovači slíbili, že nebudou do Mauzolea vstupovat. Slib mrtvým, pouze nespalovač může vejít dovnitř."~ */
  IF ~~ THEN REPLY #46608 /* ~"Tak se na to tedy podívám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.9 7.6 9.9 10.9 11.9
  SAY #61163 /* ~Norochj na tebe chvíli tiše zíral. "Ty najít Nespalovač. Ty *ho* zabít?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61164 /* ~"Oh, jeho? No v tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61166 /* ~"Oh, jeho? No v tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61167 /* ~"Oh, jeho? No v tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61168 /* ~"Oh, eee, jo, myslel jsem *jeho.* V tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61170 /* ~"Oh, eee, jo, myslel jsem *jeho.* V tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61171 /* ~"Oh, eee, jo, myslel jsem *jeho.* V tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61173 /* ~"Uh, ne, ve Smoldering Corpse Baru byla *žena* která nebyla spalovač a já..."~ */ DO ~SetGlobal("Mochai_Norochj_Pickpocket","GLOBAL",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.6
  SAY #61174 /* ~"Nespalovač nebýt žena. Nespalovač muž."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61175 /* ~"Oh, on? No v tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61179 /* ~"Oh, on? No v tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61180 /* ~"Oh, on? No v tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61181 /* ~"Oh, eee, jo, myslel jsem *jeho.* V tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61182 /* ~"Oh, eee, jo, myslel jsem *jeho.* V tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61183 /* ~"Oh, eee, jo, myslel jsem *jeho.* V tomhle městě už kapsy vykrádat nebude."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61184 /* ~"Oh. Odpusť mi můj chabý pokus o vtip. Jestliže se mi poštestí potkat toho... *muže*... převlečeného za Spalovače, dám ti vědět. Sbohem."~ */ EXIT
END
