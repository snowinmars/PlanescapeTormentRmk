// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27334 /* ~Dobře oblečený muž tady odpočívá, užívá si čerstvého vzduchu a popíjí nápoj zakoupený v blízké kavárně.~ */
  IF ~~ THEN REPLY #2895 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #2896 /* ~Nechej muže být~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27335 /* ~"Zdravím..." zarazil se, když si tě konečně pořádně prohlédl. "Ah... zdravím tě, pane." Nejistě se usmál.~ */
  IF ~~ THEN REPLY #2897 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #2898 /* ~"Nějaký problém s tím, jak vypadám?"~ */ GOTO 2
  IF ~~ THEN REPLY #27383 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #27336 /* ~"Ne, pane, to je má chyba. Nejsem prostě zvyklý na vzhled tak eh... zcestovalého... člověka jako jsi ty, pane." Na chvíli zavřel oči, ruku si drží na hrudi a tváří se omluvně. "Omlouvám se, že jsem prve zbledl, když jsem tě spatřil, pane."~ */
  IF ~~ THEN REPLY #27384 /* ~"Zcestovalého?"~ */ GOTO 3
  IF ~~ THEN REPLY #27385 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27386 /* ~"Neboj se. Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27337 /* ~"'Světa znalý' pokud se ti to líbí více. Abych tak řekl, pane, tvůj zevnějšek je tak trochu --- pomuchlaný, takový neupravený. Vzbuzujete trochu pozornost. Ale Sigil je plný podivností, ne? Zdá se mi, že Úřednická čtvrť jich má trochu méně než zbytek města. Kromě Haly, pochopitelně."~ */
  IF ~~ THEN REPLY #27387 /* ~"Úředncká čtvrť?"~ */ GOTO 6
  IF ~~ THEN REPLY #27388 /* ~"Hala?"~ */ GOTO 22
  IF ~~ THEN REPLY #27389 /* ~"Tím myslíš, že vypadám jako mrtvola. Tak tedy věz, že jsem! Mrtvý!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27390 /* ~"Hmm. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27391 /* ~"Pochopitelné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.9 13.2 15.2 17.2 18.3 20.2 21.2 22.4 23.4 24.2 25.8 26.1 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1
  SAY #27338 /* ~"Ptej se na co chceš... odpovím podle svých znalostí."~ */
  IF ~~ THEN REPLY #27392 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #27393 /* ~"Co je tady zajímavého?"~ */ GOTO 7
  IF ~~ THEN REPLY #27394 /* ~"Kde bych tady mohl najít práci?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27395 /* ~"Chtěl jsem se zeptat na jedno místo..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27396 /* ~"Jenom potřebuju poradit, jak se dostat..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27397 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 42
  IF ~~ THEN REPLY #27398 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27339 /* ~Vypadá pobaveně. "Ale, tohle je Úřednická čtvrť! Nový v Sigilu, pane? Ne, počkej, vypadáš jako muž, který hledá odpovědi, ne otázky. Mé otázky si nevšímej." Usmál se.~ */
  IF ~~ THEN REPLY #27399 /* ~"Co mi můžeš říct o čtvrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #27400 /* ~"Pravda. Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27401 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27340 /* ~"No, větší část Čtvrti --- kde jsem navždy odsouzený trávit většinu svého času --- ovládají haly se záznamy a administrativní budovy... ale ne tuhle sekci."~ */
  IF ~~ THEN REPLY #27402 /* ~"Proč jsi odsouzený zůstat tady?"~ */ GOTO 10
  IF ~~ THEN REPLY #27403 /* ~"V čem je tahle sekce jiná?"~ */ GOTO 7
  IF ~~ THEN REPLY #27404 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27405 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27341 /* ~"Městská hala, zaprvé. Nevěstinec duševních rozkoší také... není zrovna typický, víš... uspokojuje spíše mozkové choutky." Suše se usmál.~ */
  IF ~~ THEN REPLY #27406 /* ~"Pokračuj..."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27407 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27408 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27342 /* ~"Další místa, o kterých bych se měl zmínit..." odpočítává je na prstech. "advokát, lékárna, Galerie kuriozit, katakomby pod Čtvrtí a krejčí. Oh! Málem jsem zapomněl... je tady ještě 'obchod s kuriozitami'."~ */
  IF ~~ THEN REPLY #27409 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27410 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27343 /* ~Muž vydal *hrmmms,* a svraštil obočí. "Dovolím si předpokládat, pane, že nehledáš stálé zaměstnání. Mohl by ses podívat po dočasné práci u advokáta nebo v lékárně. A taky v Hale by se možná dalo něco zjistit o dalších možnostech zaměstnání."~ */
  IF ~~ THEN REPLY #27411 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27412 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27344 /* ~Pokrčil rameny a dívá se vedle, s bolestivou grimasou. "Mé povinnosti jsou zde, pane. Můj zdroj obživy. Je to místo mého zaměstnání."~ */
  IF ~~ THEN REPLY #27414 /* ~"Co děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #27415 /* ~"Tak v čem je tahle sekce jiná než zbytek Čtvrti?"~ */ GOTO 7
  IF ~~ THEN REPLY #27416 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27417 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27345 /* ~Zvedl ruce a zavrtěl hlavou. "Oh, ne, pane, tohle teď nemůžu projednávat. Žádné hovory o politice a papírech, zatímco jsem od toho pryč, a na tom trvám." Zdvořile se usmál.~ */
  IF ~~ THEN REPLY #27418 /* ~"Tak v čem je tahle sekce jiná než zbytek Čtvrti?"~ */ GOTO 7
  IF ~~ THEN REPLY #27419 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27420 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 20.1 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27346 /* ~"Oh? Kde?"~ */
  IF ~~ THEN REPLY #27421 /* ~"Dům advokáta."~ */ GOTO 13
  IF ~~ THEN REPLY #27423 /* ~"Lékárna."~ */ GOTO 16
  IF ~~ THEN REPLY #27468 /* ~"Obchod s uměním."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27469 /* ~"Nevěstinec."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27470 /* ~"Nevěstinec."~ */ GOTO 19
  IF ~~ THEN REPLY #27471 /* ~"Katakomby pod Čtvrtí."~ */ GOTO 21
  IF ~~ THEN REPLY #27472 /* ~"Městská hala."~ */ GOTO 22
  IF ~~ THEN REPLY #27473 /* ~"Obchod s kuriozitami."~ */ GOTO 23
  IF ~~ THEN REPLY #27474 /* ~"Krejčí."~ */ GOTO 24
  IF ~~ THEN REPLY #27475 /* ~"Na tom nezáleží. Chtěl bych se zeptat ještě..."~ */ GOTO 4
  IF ~~ THEN REPLY #27476 /* ~"Nikam, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27347 /* ~"Advokát pomáhá s případy, sepisuje úřední dokumenty a funguje jako zákonný představitel pro své klienty. Jeden poblíž, Iannis, je respektovaný a docela spolehlivý. Bydlí a pracuje ve Čtvrti už velmi, velmi dlouho."~ */
  IF ~~ THEN REPLY #27477 /* ~"Jak se dostanu k Iannisovi?"~ */ GOTO 26
  IF ~~ THEN REPLY #27478 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27479 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27480 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #27348 /* ~"Advokát pomáhá s případy, sepisuje úřední dokumenty a funguje jako zákonný představitel pro své klienty."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27349 /* ~"Jeden poblíž, Iannis, je respektovaný a docela spolehlivý. Bydlí a pracuje ve Čtvrti už velmi, velmi dlouho."~ */
  IF ~~ THEN REPLY #27481 /* ~"Jak se dostanu k Iannisovi?"~ */ GOTO 26
  IF ~~ THEN REPLY #27482 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27483 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27484 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 27.0
  SAY #27350 /* ~"Lékárna prodává různé lektvary, léky, bylinky a tak." Na chvíli se zamračil. "Vlastníci jsou trochu divní, neustále zkoušejí své zboží. Ale jsou to dobří lidé."~ */
  IF ~~ THEN REPLY #27485 /* ~"Jak se dostanu do lékárny?"~ */ GOTO 27
  IF ~~ THEN REPLY #27486 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27487 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 28.0
  SAY #27351 /* ~"Yvannina Galérie kuriozit je poutavé místo. Má sbírku uměleckých i antikvárních děl a artefaktů ze všech možných sfér."~ */
  IF ~~ THEN REPLY #27488 /* ~"Jak se dostanu do Galerie kuriozit?"~ */ GOTO 28
  IF ~~ THEN REPLY #27489 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27490 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27491 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.3 29.0
  SAY #27352 /* ~"Vnímaví je místo, které potěší mysl i smysly." Na chvíli zavřel oči a zatvářil se šťastně. "Vede ho velice přitažlivá žena,  Fall-from-Grace. Doporučuji návštěvu, jestli ej to tvá první návštěva v Čtvrti, pane."~ */
  IF ~~ THEN REPLY #27492 /* ~"Vnímaví?"~ */ GOTO 36
  IF ~~ THEN REPLY #27493 /* ~"Jak se dostanu do Nevěstince?"~ */ GOTO 29
  IF ~~ THEN REPLY #27494 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27495 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27496 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.4 29.1
  SAY #27353 /* ~"Nevěstinec duševních rozkoší je místo, které potěší mysl i smysly. Vede ho velice přitažlivá žena,  Fall-from-Grace". Odmlčel se a uklonil se Grace.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 126
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27354 /* ~"Oh, ale ty si pochvalu zasloužíš, paní Grace. Je pro mě čest, že ti mohu předat takový kompliment osobně." Otočil se k tobě..~ */
  IF ~~ THEN REPLY #27497 /* ~"Zapomněl jsem... jak se dostanu do Nevěstince?"~ */ GOTO 29
  IF ~~ THEN REPLY #27498 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27499 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27500 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5 30.0
  SAY #27355 /* ~"Je pro mě záhadou, proč je ještě dabus nedal zavřít. Jsou plné příšer, nebo se to tak alespoň říká, hrozivé věci, které slintají a blekotají v temnotách."~ */
  IF ~~ THEN REPLY #27501 /* ~"Jak bych se tam dostal?"~ */ GOTO 30
  IF ~~ THEN REPLY #27502 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27503 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27504 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.6 31.0
  SAY #27356 /* ~"To je jedna z nejslavnějších institucí v Sigilu... je tam vedení frakce Vnímavých, proslavené v celém mnohovesmíru pro své koncerty, umělecké výstavy a přednášky. Ale asi nejvíc fascinující jsou Sensoria."~ */
  IF ~~ THEN REPLY #27505 /* ~"Vnímaví?"~ */ GOTO 36
  IF ~~ THEN REPLY #27506 /* ~"Sensoria?"~ */ GOTO 38
  IF ~~ THEN REPLY #27507 /* ~"Kde je Hala?"~ */ GOTO 31
  IF ~~ THEN REPLY #27508 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27509 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27510 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7 32.0
  SAY #27357 /* ~"Nemohu říct, že bych tam sám byl, ale pochopil jsem, že to vede nějaká dovozkyně... napůl fiend, jehož zboží pochází především z Nižších Sfér."~ */
  IF ~~ THEN REPLY #27511 /* ~"Půl-fiend?"~ */ GOTO 35
  IF ~~ THEN REPLY #27512 /* ~"Nižší Sféry?"~ */ GOTO 34
  IF ~~ THEN REPLY #27513 /* ~"Kde bych našel to místo?"~ */ GOTO 32
  IF ~~ THEN REPLY #27514 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27515 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27516 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.8 33.0
  SAY #27358 /* ~"Goncalves je vynikající krejčí, ale má zlostnou povahu a snadno se urazí. Musím tě varovat, pane: nejspíš tě bude posuzovat podle tvého zevnějšku, takže pro tebe bude asi těžké spřátelit se s ním."~ */
  IF ~~ THEN REPLY #27517 /* ~"Kde je Goncalvuv obchod?"~ */ GOTO 33
  IF ~~ THEN REPLY #27518 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27519 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27520 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27359 /* ~"Kam, pane?"~ */
  IF ~~ THEN REPLY #27521 /* ~"Dům advokáta."~ */ GOTO 26
  IF ~~ THEN REPLY #27522 /* ~"Lékárna."~ */ GOTO 27
  IF ~~ THEN REPLY #27523 /* ~"Galerie kuriozit."~ */ GOTO 28
  IF ~~ THEN REPLY #27524 /* ~"Nevěstinec."~ */ GOTO 29
  IF ~~ THEN REPLY #27525 /* ~"Katakomby pod Čtvrtí."~ */ GOTO 30
  IF ~~ THEN REPLY #27526 /* ~"Městská hala."~ */ GOTO 31
  IF ~~ THEN REPLY #27527 /* ~"Ochod s kuriozitami."~ */ GOTO 32
  IF ~~ THEN REPLY #27528 /* ~"Krejčí."~ */ GOTO 33
  IF ~~ THEN REPLY #27529 /* ~"Na tom nezáleží. Chtěl bych se zeptat ještě..."~ */ GOTO 4
  IF ~~ THEN REPLY #27530 /* ~"Nikam, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27360 /* ~"Iannisuv dům je na jih od brány do Dolní čtvrti, kterou jsi sem pravděpodobně vstoupil. Je to na východní straně cesty."~ */
  IF ~~ THEN REPLY #27531 /* ~"Co mi můžeš říct o advokátovi?"~ */ GOTO 13
  IF ~~ THEN REPLY #27533 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27534 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27361 /* ~"Sleduj cestu vedoucí na východ od brány do Dolní čtvrti, kterou jsi sem pravděpodobně vstoupil. Až se cesta rozdělí na severovýchod a jihovýchod, jdi na jih. Najdeš to na východ od cesty. Vchod je jižně a má tři okna se špinavým sklem."~ */
  IF ~~ THEN REPLY #27535 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 16
  IF ~~ THEN REPLY #27536 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27537 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27362 /* ~"Sleduj cestu vedoucí na východ  od brány do Dolní čtvrti, kterou jsi sem pravděpodobně vstoupil. Až se cesta rozdělí na severovýchod a jihovýchod, jdi na jih. Najdeš to na západ od cesty. Vchod je jižné a střecha je pokrytá taškami, které přidržují velké kameny."~ */
  IF ~~ THEN REPLY #27538 /* ~"Co víš o tomhle místě?"~ */ GOTO 17
  IF ~~ THEN REPLY #27542 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27543 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 20.0 25.3
  SAY #27363 /* ~" Nevěstinec duševních rozkoší, eh?" Uznale se usmál. "'Je to na východ  od brány do Dolní čtvrti, kterou jsi sem pravděpodobně vstoupil. Je to velká, kruhová budova. Vchod je na jižní straně."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27544 /* ~"Co mi můžeš říct o nevěstinci?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27545 /* ~"Co mi můžeš říct o nevěstinci?"~ */ GOTO 19
  IF ~~ THEN REPLY #27546 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27547 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27364 /* ~Zamračil se. "Hm, pokud vím, je tady více než jeden vchod, ale víc s tím obeznámen nejsem. Ale varuji tě, z těch katakomb nic nevychází... včetně těch, kteří tam vstoupí."~ */
  IF ~~ THEN REPLY #27548 /* ~"Co mi o nich ještě můžeš říct?"~ */ GOTO 21
  IF ~~ THEN REPLY #27549 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27550 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27365 /* ~"Halu najdeš jednoduše, pane. Je to ta masivní budova v severovýchodní části této oblasti."~ */
  IF ~~ THEN REPLY #27553 /* ~"Co mi můžeš říct o Hale?"~ */ GOTO 22
  IF ~~ THEN REPLY #27554 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27555 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27366 /* ~"Nikdy jsem tam nebyl, ale ukázali mi, kde to je - v jihovýchodní části této oblasti. Neobyčejná budova, s širokými schody. Je těžké to minout, pane."~ */
  IF ~~ THEN REPLY #27556 /* ~"Co víš o tom místě?"~ */ GOTO 23
  IF ~~ THEN REPLY #27557 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27558 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27367 /* ~"Goncalvovo krejčovství najdeš na sever a východ od brány do Dolní čtvrti, kterou jsi sem pravděpodobně vstoupil. Je to široká budova se vstupem na jih."~ */
  IF ~~ THEN REPLY #27559 /* ~"Co víš o tom místě?"~ */ GOTO 24
  IF ~~ THEN REPLY #27560 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 4
  IF ~~ THEN REPLY #27561 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27368 /* ~Přikývl a ztišil hlas do šepotu. "Víš, pane... Baator, Abyss a tak. Děsivá  místa."~ */
  IF ~~ THEN REPLY #27562 /* ~"Říkal jsi, že je půl-fiend?"~ */ GOTO 35
  IF ~~ THEN REPLY #27563 /* ~"Kde bych našel ten obchod s kuriozitami?"~ */ GOTO 32
  IF ~~ THEN REPLY #27564 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27565 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27566 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27369 /* ~"Ne tiefling, ale pravý půl-fiend. Dcera Inkuba a smrtelné ženy, tak mi to říkali. Ale já neroznáším drby, takže už se o ní nebudeme bavit."~ */
  IF ~~ THEN REPLY #27567 /* ~"Takže její zboží je z Nižších Sfér?"~ */ GOTO 34
  IF ~~ THEN REPLY #27568 /* ~"Kde bych našel ten obchod s kuriozitami?"~ */ GOTO 32
  IF ~~ THEN REPLY #27569 /* ~"Chtěl jsem se zeptat ještě na něco jiného...:"~ */ GOTO 12
  IF ~~ THEN REPLY #27570 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27571 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 22.0
  SAY #27370 /* ~"Ano. Správné jméno je 'Společnost Vjemu.' Věří, že pravá povaha mnohovesmíru se dá poznat jedině přímou zkušeností..."~ */
  IF ~~ THEN REPLY #27572 /* ~"Aha. Pokračuj."~ */ GOTO 48
  IF ~~ THEN REPLY #27573 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27574 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27371 /* ~"Vlastně nalezli způsob, jak se o své zkušenosti podělit s ostatním, použitím Sensorií."~ */
  IF ~~ THEN REPLY #27575 /* ~"Sensoria?"~ */ GOTO 38
  IF ~~ THEN REPLY #27576 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27577 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27372 /* ~"Vnímaví nalezli způsob, jakým získat zkušenosti, uchovat je v kamenech a umožnit *ostatním* zažít je. Potulují po Sférách a získávají zkušenosti, o které se potom dělí s ostatními. Prakticky vše co zažili nebo ucítili je v jejich Sensoriích."~ */
  IF ~~ THEN REPLY #27578 /* ~"Kde jsou ta Sensoria umístěná?"
~ */ GOTO 39
  IF ~~ THEN REPLY #27579 /* ~"Tyhle zkušenosti... jsou jako vzpomínky?"~ */ GOTO 40
  IF ~~ THEN REPLY #27580 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27581 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27373 /* ~"V Městské hale. Existují Sensoria pro veřejnost a Sensoria pouze pro Vnímavé. Platí se malý poplatek, ale je to mírná cena za takové zážitky."~ */
  IF ~~ THEN REPLY #27582 /* ~"Kde je Hala?"~ */ GOTO 31
  IF ~~ THEN REPLY #27583 /* ~"Tyhle zkušenosti... jsou jako vzpomínky?"~ */ GOTO 40
  IF ~~ THEN REPLY #27584 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27585 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27374 /* ~"Určitým způsobem ano, ale velmi intenzivní. A ne tvé vzpomínky, ale vzpomínky jiných, uložených v krystalu."~ */
  IF ~~ THEN REPLY #27586 /* ~"Uchovat? Ztrácí ten dotyčný paměť nebo zkušenosti, když je uloží do kamene?"~ */ GOTO 41
  IF ~~ THEN REPLY #27587 /* ~"Kde jsou ta Sensoria umístěná?"~ */ GOTO 39
  IF ~~ THEN REPLY #27588 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27589 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27375 /* ~"Ne..." Zamračil se. "Nebo si to alespoň nemyslím. Pokud vím, krystaly uchovávají zážitky. Budeš se muset zeptat Vnímavého, aby sis byl jistý."~ */
  IF ~~ THEN REPLY #27590 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27591 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27376 /* ~"To jméno je mi povědomé... Nebyla to nějaká postava z knihy? Nemůžu si vzpomenout..."~ */
  IF ~~ THEN REPLY #27592 /* ~"Na tom nezáleží. Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27593 /* ~"Tak to nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27377 /* ~"Ah, zase se jednou potkávám s poutníkem." Muž se na tebe usmál přes svůj šálek. "Další otázky, pane?"~ */
  IF ~~ THEN REPLY #27594 /* ~"To je pravda."~ */ GOTO 4
  IF ~~ THEN REPLY #27595 /* ~"Vlastně... ne, jen procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27378 /* ~Muž svraštil obočí. "Promiň, pane?"~ */
  IF ~~ THEN REPLY #27596 /* ~"Řekl jsem 'Jsem Mrtvý!', mrtvý, mrtvý MRTVÝ!!!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27597 /* ~"Na tom nezáleží. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27598 /* ~"Na tom nezáleží. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27379 /* ~Mužův výraz se změnil na opatrný. "Ano... jako my všichni. Už budu muset jít, pane. Mám důležitou práci."~ */
  IF ~~ THEN REPLY #27599 /* ~"Počkej! Neřekl jsem ti, *proč* jsem mrtvý..."~ */ GOTO 46
  IF ~~ THEN REPLY #27600 /* ~"Počkej chvíli. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27601 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27380 /* ~Ustoupil o krok zpátky. "Musím se přiznat, že o toto se nezajímám, pane."~ */
  IF ~~ THEN REPLY #27602 /* ~"Protože jsem ve svých předchozích životech zabil příliš mnoho lidí."~ */ GOTO 47
  IF ~~ THEN REPLY #27603 /* ~"Tak to nic. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27604 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27381 /* ~"Stráže!"~ */
  IF ~~ THEN REPLY #27605 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27606 /* ~Zkus zmizet, než někdo dorazí.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27382 /* ~"Zasvětili své životy k zažití tolika věcí z mnohovesmíru, kolik jenom dokáží. Hodně cestují, jak po Sférách, tak do hloubek svých vlastních myslí a emocí..."~ */
  IF ~~ THEN REPLY #27607 /* ~"Jak to?"~ */ GOTO 37
  IF ~~ THEN REPLY #27608 /* ~"Mám ještě další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #27609 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
