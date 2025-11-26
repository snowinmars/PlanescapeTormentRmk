// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSSMTH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSSMTH~

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3168 /* ~Mrzutě vypadající muž se na tebe naštvaně dívá, když jsi ho vyrušil od práce. Vypadá kapku pomalejší, ale svědomitý, ne tak jedovatý jako všichni ostatní v tomhle městě. "Jo? Co chceš?"~ */
  IF ~~ THEN REPLY #3169 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #61319 /* ~"Co je tohle za místo?"~ */ GOTO 7
  IF ~~ THEN REPLY #61320 /* ~"Slyšel jsi nějaké zvěsti o Triasi tady v Curstu?"~ */ GOTO 8
  IF ~~ THEN REPLY #61321 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #61322 /* ~Podrážděně se na tebe podíval. "Co zase chceš?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61344 /* ~"Přicházím od tvého bratra, ve věci jistých nevyřízených dluhů mezi vámi..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61345 /* ~"Slyšel jsem, že máte s bratrem nějaké potíže. Rád bych vám pomohl."~ */ GOTO 9
  IF ~~ THEN REPLY #61347 /* ~"Slyšel jsi nějaké zvěsti o Triasi tady v Curstu?"~ */ GOTO 8
  IF ~~ THEN REPLY #61348 /* ~"Rád bych něco koupil."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61349 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61323 /* ~"Sem Pěstidrť Malak, městskej kovář. Chceš snad něco?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61350 /* ~"Přicházím od tvého bratra, ve věci jistých nevyřízených dluhů mezi vámi..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61351 /* ~"Slyšel jsem, že máte s bratrem nějaké potíže. Rád bych vám pomohl."~ */ GOTO 9
  IF ~~ THEN REPLY #61352 /* ~"Rád bych se podíval na tvé zboží."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61353 /* ~"Ne díky. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",2)
GlobalLT("Mediate","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #61324 /* ~"Tak jak v týdle záležitosti pokračuješ?"~ */
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
!PartyHasItem("CrumLeg")
~ THEN REPLY #61354 /* ~"Tvůj bratr souhlasil, že můžu fungovat jako jednatel v tomto sporu. Potřeboval bych se podívat na tvou část závěti, abych určil tvůj dědický podíl."~ */ DO ~GiveItem("CrumLeg",Protagonist)
SetGlobal("Mediate","GLOBAL",5)
~ GOTO 4
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
PartyHasItem("CrumLeg")
~ THEN REPLY #61355 /* ~"Tvůj bratr rovněž souhlasil s tím že mohu být váš zprostředkovatel."~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 5
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
Global("Negotiate_Kester","GLOBAL",1)
~ THEN REPLY #61356 /* ~"Rozhodl jsem, že ty budeš mít všechny peníze. Je to tak správné, ty jsi koneckonců starší bratr."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~~ THEN REPLY #61357 /* ~"Dělám na tom. Jen si potřebuji prohlédnout tvoje zboží..."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61358 /* ~"Dělám na tom. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61325 /* ~"No... dobře. Myslím že bys to měl prostudovat, aby sis byl jistej, že je všecko v rychtygu." Podal ti kus pomačkaného papíru. "Pak dej někomu z nás vědět."~ */
  IF ~~ THEN REPLY #61359 /* ~"Díky. Dám ti vědět, až to rozsoudím."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #61326 /* ~"Dobře. Tak jdi a nech si to projít hlavou. A až se rozhodneš co a jak, dej někomu z nás vědět."~ */
  IF ~~ THEN REPLY #61360 /* ~"Budu. Sbohem."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61327 /* ~"Tak co? Už sis to rozmyslel?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61361 /* ~"Rozhodl jsem ve prospěch tvého bratra. Poté, co jsem si přečetl závěti, je mi jasné, že on by měl dostat veškerou pozůstalost."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 12
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61362 /* ~"Rozhodl jsem, že si můžeš nehat lihovar a dostaneš otcovy peníze. Je jasné, že jsi v právu."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61363 /* ~"Oba dva si rozdělíte peníze z obou dvou řemesel pěkně napůl. Je jasné, že si to váš otec přesně takhle přál."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
~ GOTO 14
  IF ~~ THEN REPLY #61364 /* ~"Žádný z vás si to dědictví nezaslouží. Ponechám si vaše závěti a dám je někomu, kdo ty peníze řádně využije. Sbohem."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #61365 /* ~"Ještě ne. Myslím že bych se zatím radši podíval na tvoje zboží."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61366 /* ~"Zatím ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #61328 /* ~"Tohle je kovárna hňupe. Chceš něco nebo ne?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61367 /* ~"Přicházím od tvého bratra, ve věci jistých nevyřízených dluhů mezi vámi..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61368 /* ~"Slyšel jsem, že máte s bratrem nějaké potíže. Rád bych vám pomohl."~ */ GOTO 9
  IF ~~ THEN REPLY #61369 /* ~"Chtěl bych se podívat na tvé zboží."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61370 /* ~"Slyšel jsi něco o anděli v Curstu?"~ */ GOTO 8
  IF ~~ THEN REPLY #61371 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 7.3
  SAY #61329 /* ~"Co? Nejni to jedna z těch andělskejch věcí? Ne, tak nic takovýho tady nemám." Odmlčel se. "A chceš něco vode mně?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61372 /* ~"Přicházím od tvého bratra, ve věci jistých nevyřízených dluhů mezi vámi..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61373 /* ~"Slyšel jsem, že máte s bratrem nějaké potíže. Rád bych vám pomohl."~ */ GOTO 9
  IF ~~ THEN REPLY #61374 /* ~"Rád bych se podíval na tvé zboží."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~  False()
~ THEN REPLY #61375 /* ~"Slyšel jsem, že máte s bratrem nějaké potíže. Rád bych vám pomohl."~ */ EXIT
  IF ~~ THEN REPLY #67886 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 1.1 2.0 2.1 7.0 7.1 8.0 8.1
  SAY #61330 /* ~"Fakt, no neříkej? Je snad moje pře s mým študovaným bratrem hlavním bodem městkejch drbů? Spřádá snad proti mně můj mladší bratr pomluvy? Mám bejt pošpiněnej jenom proto, že nejsem vzdělanej? Pláně se spikly proti mě!" Zahrozil pěstí k obloze.~ */
  IF ~  !Global("Mediate","GLOBAL",2)
~ THEN REPLY #61376 /* ~"Momentálně se řešením té věci zabývám."~ */ DO ~SetGlobal("Mediate","GLOBAL",3)
~ GOTO 10
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #66570 /* ~"Vlastně bych to rád vyřešil."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #61331 /* ~Ostře se na tebe podíval. "Tajdle je teda náš příběh: Náš otec byl přitroublej starej parchant. Ale byl celkem bohatej. Když umřel, nechal nám kovárnu a kořalkárnu.. ale teď se mě můj bratr snaží vodříznout od kořalkárny, kerá dycky vynášela víc peněz, a já ji chci získat zpátky. Mám tu závět, kerá to dokazuje, ale nejsem v takovejchle věcech moc zběhlej a nevěřím, že by mě moh kdokoli z města pomoct. Když mě pomůžeš, dám ti ňáký prachy a budu žít dle tvýho rozhodnutí."~ */
  IF ~  !PartyHasItem("CrumLeg")
~ THEN REPLY #61377 /* ~"Dobrá. Potřebuji tvou závět, abych si ji mohl prohléhnout."~ */ DO ~GiveItem("CrumLeg",Protagonist)
~ JOURNAL #61381 /* ~Souhlasil jsem, že pomůžu kováři ve sporu s jeho bratrem lihovarníkem, který se týká pozůstalosti jejich otce.~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #61378 /* ~"Dobrá. Nějak to rozřeším ."~ */ JOURNAL #61381 /* ~Souhlasil jsem, že pomůžu kováři ve sporu s jeho bratrem lihovarníkem, který se týká pozůstalosti jejich otce.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61332 /* ~"No... dobře. Myslím, že bys to měl prostudovat, aby sis byl jistej, že je všecko v rychtygu." Podal ti kus pomačkaného papíru.~ */
  IF ~~ THEN REPLY #61379 /* ~"Díky. Dám ti vědět co se stalo."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0
  SAY #61333 /* ~"On dostane VŠECKO?" Poklesla mu hlava. "Tak to budu muset dělat dvakrát tolik. K čertu s tebou cizáku, a k čertu s tvejma blábolama. Když budeš něco potřebovat, tak sem přiď... ale udělám ti takovou cenu, že z toho padneš na prdel."~ */
  IF ~~ THEN REPLY #61380 /* ~"Na to si vzpomínám."~ */ JOURNAL #61384 /* ~Rozhodl jsem tu dědickou záležitost ve prospěch lihovarníka. ~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.1
  SAY #61334 /* ~"Všecko?" V očích se mu zajiskřilo. "Všecko?" Chvilku poskakoval a třásl hlavou. "Až budeš potřebovat kvalitní kovářskou práci, tak se tu klidně zastav kamaráde! Na to se musím porádně napít!"~ */
  IF ~~ THEN REPLY #61382 /* ~"Pak tedy sbohem."~ */ JOURNAL #61383 /* ~Rozhodl jsem tu dědickou záležitost ve prospěch kováře. Říkal, že se mnou uzavře výhodnou smlouvu.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY #61335 /* ~"Aha, ty myslíš rozdělit výtěžek z obou řemesel, jo? Jestli je to tak, nejsem proti. Udělals to dobře kamaráde. Až budeš potřebovat kvalitní kovářskou práci, stav se tady."~ */
  IF ~~ THEN REPLY #61385 /* ~"Budu. Sbohem."~ */ JOURNAL #61386 /* ~Rozhodl jsem tu dědickou záležitost tak, že oba zůčastnění si mezi sebou majetek rozdělí. ~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY #61336 /* ~"COŽE? Ty prohnilej, zavšivenej, zlodějskej parchante! Vypadni z mé kovárny! TÁHNI!"~ */
  IF ~~ THEN REPLY #61387 /* ~"Sbohem."~ */ JOURNAL #61388 /* ~Nerozhodl jsem tu dědickou záležitost ve prospěch žádného z bratrů. Ani jeden si ty peníze nezaslouží.~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",7)
~ THEN BEGIN 16 // from:
  SAY #61337 /* ~"Vrátil ses? Potřebuješ něco?"~ */
  IF ~~ THEN REPLY #61389 /* ~"Tak se podíváme co tu máš..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61390 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",8)
~ THEN BEGIN 17 // from:
  SAY #61338 /* ~"Á tady přišel férovej obchodník? Tak se podíváme, esli mu budem moct na oplátku dát férovou cenu."~ */
  IF ~~ THEN REPLY #61391 /* ~"Tak se podíváme co tu máš..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61392 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #61339 /* ~"Přišels vočumovat chlapa, kterýhos zruinoval, co? Co chceš?"~ */
  IF ~~ THEN REPLY #61342 /* ~"Tak se podíváme co zajímavýho máš."~ */ DO ~StartStore("Crumple3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61343 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",8)
~ THEN BEGIN 19 // from:
  SAY #61340 /* ~"Táhni z mýho kšeftu ty zavšivenej parchante. Dneska tady žádnej vobchod neuděláš."~ */
  IF ~~ THEN REPLY #61341 /* ~"Dobrá. Sbohem."~ */ EXIT
END
