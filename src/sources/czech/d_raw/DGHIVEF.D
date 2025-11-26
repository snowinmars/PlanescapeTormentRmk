// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33304 /* ~Ženiny oči se rozšířily, když ses přiblížil. "Jdi pryč! Nech mě být, nebo začnu křičet, přísahám!"~ */
  IF ~~ THEN REPLY #33305 /* ~Nechej ji jít.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33306 /* ~Když ses přiblížil k ženě, rozhlédla se, jako by hledala někoho, za kým by se mohla schovat. "Já... já nic nevím, kámo - prosím, nech mě být!"~ */
  IF ~~ THEN REPLY #33307 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33308 /* ~"Jdi otravovat někoho jiného, ty! Nemám na takové, jako jsi ty, čas."~ */
  IF ~~ THEN REPLY #33309 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33310 /* ~Žena stále odmítá promluvit byť jenom jediné slovo.~ */
  IF ~~ THEN REPLY #33311 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33312 /* ~Žena zbledla a hmatá po své dýce, když si uvědomila, že jdeš k ní. "Nechci s tebou nic mít! Jdi pryč!"~ */
  IF ~~ THEN REPLY #33313 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33314 /* ~"Ty seš ten, co hledal Pharoda! Už jsi ho našel? Pokud ne, zkus to severně, na Hadrníkově náměstí."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33315 /* ~"Tak to zkusím tam. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33448 /* ~"Už jsem ho našel, ale díky. Sbohem."~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33316 /* ~"Pokud si byl někdy v Baru Zapomnění, nebuď překvapenej, když zjistíš, že tam na tebe někdo čeká." Žena si odfrkla a začala se hihňat.~ */
  IF ~~ THEN REPLY #33317 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33318 /* ~Žena okusuje něco, co vypadá jako krysa na špejli. Když si všimla, že ji pozoruješ, podezřívavě se na tebe zahleděla. "Promluv si Creedenem, jestli chceš taky, a přestaň očumovat moji! Najdeš ho hned vedle Úřadu pro dohled nad škůdci a nemocemi."~ */
  IF ~~ THEN REPLY #33319 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33320 /* ~"Pokud tady někde uvidíš utíkat bandu vyjících šílenců, kliď se jim z cesty. Jsou to Hladoví psi, jsou to úplní šílenci..."~ */
  IF ~~ THEN REPLY #33321 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33322 /* ~"Nevím nic, co by tě mohlo zajímat... takže mě nechej na pokoji.~ */
  IF ~~ THEN REPLY #33323 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33324 /* ~Když ses přiblížil, žena pozdvihla obočí. "Starám se o sebe, vole... a tobě radím, ať to děláš stejně tak. Ušetříš si problémy. Měj se."~ */
  IF ~~ THEN REPLY #33325 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33326 /* ~Žena se zamračila, když jsi se přiblížil. "Nemám ani čas ani chuť vybavovat se v Úlu s cizincema, vole... v každým případě to není bezpečný. Sbohem."~ */
  IF ~~ THEN REPLY #33327 /* ~"Sbohem tedy."~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33328 /* ~Žena si těžce povzdechla. "Není to o moc horší, než život v Úlu. Tam tě můžou zapsat do Knihy smrti jenom za to, že se na někoho křivě podíváš."~ */
  IF ~~ THEN REPLY #33329 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33330 /* ~"Připadá mi, že by se ti hodil odpočinek, kámo. Pokud máš zájem, uprostřed týhle oblasti je noclehárna."~ */
  IF ~~ THEN REPLY #33331 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33332 /* ~"Pokud si byl někdy v Baru Zapomnění, nebuď překvapenej, když zjistíš, že tam na tebe někdo čeká." Žena si odfrkla a začala se hihňat.~ */
  IF ~~ THEN REPLY #33333 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33334 /* ~Žena okusuje něco, co vypadá jako krysa na špejli. Když si všimla, že ji pozoruješ, podezřívavě se na tebe zahleděla. "Promluv si Creedenem, jestli chceš taky, a přestaň očumovat moji! Najdeš ho hned vedle pro Úřadu pro dohled nad škůdci a nemocemi."~ */
  IF ~~ THEN REPLY #33335 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #33336 /* ~"Pokud tady někde uvidíš utíkat bandu vyjících šílenců, kliď se jim z cesty. Jsou to Hladoví psi, jsou to úplní šílenci..."~ */
  IF ~~ THEN REPLY #33337 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #33338 /* ~"Ty seš ten, co hledal Pharoda! Už jsi ho našel? Pokud ne, zkus to severně, na Hadrníkově náměstí."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33339 /* ~"Tak to zkusím tam. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33340 /* ~"Už jsem ho našel, ale díky. Sbohem."~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33344 /* ~"Vyhýbej se tý vyhořelý uličce na jihozápad odsud, pokud nechceš mít problémy."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33345 /* ~"Ano už jsem tam byl. Sbohem."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33346 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33347 /* ~"Někde tady pobíhá takovej ubožák jménem Smradodech... Pokud dokážeš zadržet dech a máš v kapse pár měďáků, můžeš si od něj vyslechnout pár zajímavejch příběhů."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33348 /* ~"Možná ho půjdu najít. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33349 /* ~"Ano, potkal jsem ho. Sbohem."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33351 /* ~"Už jsi byl u Doutnajícího nebožtíka? Hezká hospoda, ale ten hořící chlápek mě dost znervózňuje."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33352 /* ~"Teď už tam není. Sbohem."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33449 /* ~"Ano, byl jsem tam sám. Sbohem."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33350 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33353 /* ~"Zdravím, tvrďáku." Žena se na tebe upejpavě usmála. "Hele, napadlo mě, že bych si měla najít nějakýho kámoše... Nemohla bych jít s tebou?"~ */
  IF ~~ THEN REPLY #33354 /* ~"Možná jindy... ale teď mám moc věcí na práci. Promiň."~ */ EXIT
  IF ~~ THEN REPLY #33472 /* ~"Ne. Sbohem."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33355 /* ~"Nemůžu vystát představu, že bych tady měla vychovávat děti. Možná že jednou s rodinou opustíme tohle hnusný místo."~ */
  IF ~~ THEN REPLY #33356 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33357 /* ~Žena se na tebe usmála. "Ne, nemůžu ti pomoct. Ráda bych, ale nemůžu."~ */
  IF ~~ THEN REPLY #33358 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33359 /* ~"Připadá mi, že by se ti hodil odpočinek, kámo. Pokud máš zájem, uprostřed týhle oblasti je noclehárna."~ */
  IF ~~ THEN REPLY #33360 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33362 /* ~"Ty seš ten, co hledal Pharoda! Už jsi ho našel? Pokud ne, zkus to severně, na Hadrníkově náměstí."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33363 /* ~"Tak to zkusím tam. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33364 /* ~"Už jsem ho našel, ale díky. Sbohem."~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33365 /* ~"Potkala jsem tam nedávno potetovanýho chlapa jménem Pophiron. Říkal, že je nějakej mnich a válečník... ale že nebude bojovat."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33366 /* ~"Tak toho teda asi zkusím najít. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33361 /* ~"Ano, potkal jsem ho. Sbohem."~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33367 /* ~"Pokud hledáš cestu, vedle báru Shrnutej Prach je Nástěnka."~ */
  IF ~~ THEN REPLY #33368 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33370 /* ~"Vyhýbej se tý vyhořelý uličce na jihozápad odsud, pokud nechceš mít problémy."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33371 /* ~"Ano už jsem tam byl. Sbohem." ~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33372 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33373 /* ~"Spousta lidí sem přichází připomínat si svý mrtvý k Spalovačskýmu monumentu... u památníku je Spalovač, kterej ti do něj nechá vyrýt jméno nebo ti řekne, jestli někdo, koho hledáš, je už mrtvej."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #33374 /* ~"Ano, jmenuje se Smrt-Jmen.' Sbohem."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #33369 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33375 /* ~"Spalovači se drží dál od většiny hospod v Úlu... s výjimkou Shrnutýho prachu. Málokdy je tam někdo jinej kromě Mrtvejch."~ */
  IF ~~ THEN REPLY #33376 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33377 /* ~Žena okusuje něco, co vypadá jako krysa na špejli. Když si všimla, že ji pozoruješ, podezřívavě se na tebe zahleděla. "Promluv si Creedenem, jestli chceš taky, a přestaň očumovat moji! Najdeš ho hned vedle Úřadu pro dohled nad škůdci a nemocemi."~ */
  IF ~~ THEN REPLY #33378 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33380 /* ~"Někde tady pobíhá takovej ubožák jménem Smradodech... Pokud dokážeš zadržet dech a máš v kapse pár měďáků, můžeš si od něj vyslechnout pár zajímavejch příběhů."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33381 /* ~"Možná ho půjdu najít. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33379 /* ~"Ano, potkal jsem ho. Sbohem."~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33382 /* ~"Strávil jsi nějakej čas na trhu, kámo? Mají tam všechno, co tělo potřebuje."~ */
  IF ~~ THEN REPLY #33383 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33384 /* ~"Doufám, že se Pophyra plete... pokud jsi neslyšel její většby, většinou je vykřikuje na tržišti..."~ */
  IF ~~ THEN REPLY #33386 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33387 /* ~"Vyhýbej se tý vyhořelý uličce na jihozápad odsud, pokud nechceš mít problémy."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33388 /* ~"Ano už jsem tam byl. Sbohem."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33385 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33389 /* ~"Pokud tady někde uvidíš utíkat bandu vyjících šílenců, kliď se jim z cesty. Jsou to Hladoví psi, jsou to úplní šílenci..."~ */
  IF ~~ THEN REPLY #33392 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33393 /* ~"Už jsi byl u Doutnajícího nebožtíka? Hezká hospoda, ale ten hořící chlápek mě dost znervózňuje."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33394 /* ~"Teď už tam není. Sbohem."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33390 /* ~"Ano, byl jsem tam sám. Sbohem."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33391 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33395 /* ~"Nedávno jsem potkala chlapa 'Truchlícího-za-Stromy'... vypadá to, že se snaží najít lidi, kteří by mu pomohli starat se o stromy. Myslím, že by bylo lepší, kdyby se snažil pomoct lidem, ne stromům."~ */
  IF ~~ THEN REPLY #33396 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33397 /* ~"Jediná pomoc, kterou ti můžu nabídnout, kámo, je varování: dej si bacha na zloděje. Slyšela jsem, že v téhle části Úlu je spousta kapsářů."~ */
  IF ~~ THEN REPLY #33398 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33401 /* ~"Potkala jsem nějakou ubohou bláznivou ženskou, která tady pobíhala a něco vyřvávala. Je to zázrak, že ještě nezemřela hlady nebo jí někdo nezabil, tak moc střelená je."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33402 /* ~"Ano... už by měla být doma, nebo alespoň na cestě. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33399 /* ~"Potkal jsem ji, jmenuje se Ingress. Sbohem."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33400 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33403 /* ~"Dej si bacha na Gaoha na tržišti! Můj manžel u něj přijde o peníze vždycky, když se s tím třikrát prokletým bastardem vsadí!"~ */
  IF ~~ THEN REPLY #33404 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33407 /* ~"To jsou ale divný tetování. Vypadají skoro jako ta, co dělá jeden chlápek tady v Úlu."~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33408 /* ~"Ano, vím. Jmenuje se Fell."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33409 /* ~"Ano, znám to místo."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33405 /* ~"Ne, nikdy jsem tam nebyl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_D","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33410 /* ~"Ať mě Paní oslepí! Viděla jsem tě dřív, kámo, ale nikdy bych nečekala, že se zase potkáme! Sigil je menší, než by jeden řekl."~ */
  IF ~~ THEN REPLY #33411 /* ~"Ty mě znáš?"~ */ DO ~SetGlobal("Hive_OT_D","GLOBAL",1)
~ GOTO 44
  IF ~~ THEN REPLY #33406 /* ~"Možná. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #33413 /* ~Nervózně se usmála. "Znám tě? Ne, ale jak jsem řekla, už jsem tě viděla. Bylo to vloni... pozdě v noci. Hledala jsem svou ségru, když jsi kolem proletěl jako šílenec. Zakopnul jsi kousek ode mě a vypadlo ti tohle, ale hned jsi se zvednul a utekl pryč. Nechala jsem si to pro štěstí, když už mi to osud hodil pod nohy." Vytáhla mizerně vypadající dýku. "Tady... když už jsem na tebe narazila, vezmi si to zpátky, kámo. Sbohem."~ */
  IF ~~ THEN REPLY #33414 /* ~"Díky... sbohem."~ */ DO ~GiveItemCreate("GSDagger",Protagonist,1,0,0)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,2)
Global("Hive_OT_E","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33415 /* ~Žena tě okamžitě poznala a v hrůze ustoupila. "Po takové době... ty *bastarde*! Ať si tě vezmou všichni fiendové z Baatoru! Jednoho dne budeš pykat za to, co jsi udělal Aerin... při Mocnostech, tak přísahám!" Otočila se a utíká pryč.~ */
  IF ~~ THEN REPLY #33416 /* ~"Počkej..."~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33417 /* ~Nechej ji jít.~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,3)
Global("Hive_OT_F","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #33420 /* ~"No, jestlipak to není můj vlastní temný zachránce. Trvalo ti to, než ses ukázal... Už jsem si myslela, že se ani neobjevíš, tvrďáku." Začíná se přehrabovat ve svém váčku.~ */
  IF ~~ THEN REPLY #33421 /* ~"Počkej... Myslím, že je to omyl..."~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #33412 /* ~Trpělivě čekej.~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
GiveItemCreate("SilRing",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #33424 /* ~"Dobrej a mrtvej, přesně jak jsi to slíbil... a tak se mi taky líbí. Tady jsou tvý peníze, kámo... ten prsten, co máš dostat. Měj se."~ */
  IF ~~ THEN REPLY #33425 /* ~"Počkej chvíli... Mám nějaké otázky..."~ */ GOTO 48
  IF ~~ THEN REPLY #33418 /* ~Nechej ji jít.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #33426 /* ~"Ne, kámo... bylo to fakt dávno, ale bude lepší, když nás spolu nikdo neuvidí. Měl kamarády, víš, a já má pocit, že vědí, co se stalo. Už spolu nebudeme raději mluvit."~ */
  IF ~~ THEN REPLY #33427 /* ~"Ale..."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33479 /* ~"Sbohem tedy."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.0
  SAY #33431 /* ~Divně se na tebe podívala, potom zašilhala na tetování kolem tvé ruky. Nakonec pokrčila rameny. "Jak chceš, kámo. Měj se..."~ */
  IF ~~ THEN REPLY #33432 /* ~Nechej ji jít.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 50 // from:
  SAY #33434 /* ~Tahle osoba už ti nemá co víc říct.~ */
  IF ~~ THEN REPLY #33428 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 51 // from:
  SAY #33436 /* ~Tahle osoba už ti nemá co důležitého říct.~ */
  IF ~~ THEN REPLY #33451 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 52 // from:
  SAY #33469 /* ~Tahle osoba už ti nemá co zajímavého říct.~ */
  IF ~~ THEN REPLY #33471 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 53 // from:
  SAY #33470 /* ~Tahle osoba už ti nemá co říct.~ */
  IF ~~ THEN REPLY #33480 /* ~Odejdi.~ */ EXIT
END
