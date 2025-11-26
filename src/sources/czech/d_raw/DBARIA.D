// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIA~

IF ~  Global("BariA","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #12341 /* ~Stejně jako je tělo tohoto stvoření kombinací těl muže a kozla, je i jeho hlava smíchaná z obou. Má široký placatý nos, kozí uši a pár zakroucených rohů. V jeho kožešině jsou vyholeny složité vzory, z jeho řemení visí masivní halapartna. Zřejmě si tě ještě nevšiml.~ */
  IF ~~ THEN REPLY #12469 /* ~"Zdravím..."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ GOTO 3
  IF ~~ THEN REPLY #12470 /* ~Nechej ho být.~ */ EXIT
END

IF ~  Global("BariA","AR0400",1)
~ THEN BEGIN 1 // from:
  SAY #12342 /* ~"Vafe fe fetkáváme, fevtovateli. Potvebujef ode mně něfo?"~ */
  IF ~~ THEN REPLY #12471 /* ~"Mám pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12472 /* ~"Ne, to nic. Sbohem."~ */ EXIT
END

IF ~  Global("BariA","AR0400",3)
~ THEN BEGIN 2 // from:
  SAY #12383 /* ~"Ty! Víkal fem ti, ať uv mi nikdy, *nikdy* nefkvívíf feftu! Tak pojď, dvojnovfe..."~ */
  IF ~~ THEN REPLY #12473 /* ~"Ale..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12474 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #12384 /* ~Otočil se k tobě s rychlostí, která nahání hrůzu. Jeho černé oči si tě podezřívavě přeměřují. Jeho hlas je hluboký a chraptivý, ne zrovna lidský, a mluví s těžkým přízvukem. "Fo cfef, dvounovfe..." Ruku drží blízko své halapartny.~ */
  IF ~~ THEN REPLY #12475 /* ~"Chci si jenom promluvit. Mám pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #12476 /* ~"Jestli hledáš rvačku, tak jsi uspěl..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #12477 /* ~"Nic, na tom nezáleží. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0 8.0
  SAY #12385 /* ~Zřejmě se uklidnil, dal ruku pryč od násady své zbraně. Stále si ale od tebe udržuje určitou vzdálenost...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0 10.0 12.2 13.2 14.1 15.2 16.2 17.1 18.1 19.5 20.1 21.2 22.0 23.0 24.0 25.2 26.1
  SAY #12386 /* ~"Na fo fe chfef veptat?"~ */
  IF ~~ THEN REPLY #12478 /* ~"Proč jsi byl tak opatrný?"~ */ GOTO 15
  IF ~~ THEN REPLY #12479 /* ~"Řekni mi o tomhle městě."~ */ GOTO 12
  IF ~~ THEN REPLY #12480 /* ~"Řekni mi o brlozích tady kolem nás."~ */ GOTO 19
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12481 /* ~"Můžeš mi říct o Paní Bolesti?"~ */ GOTO 24
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12482 /* ~"Znáš někoho jménem Pharod?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12483 /* ~"Ztratil jsem deník. Neviděl jsi ho, nebo nevíš náhodou, kde by se dalo něco takového sehnat?"~ */ GOTO 23
  IF ~~ THEN REPLY #12484 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #12387 /* ~Jeho halapartna okamžitě vyletěla z řemení a je připravena k úderu. "Nev fkvívíme vbraně, chfi pouve vědět, prof jfi na mě vaútofil, dvounovfe." Jeho železem okovaná kopyta na dlažbě vykřesala jiskru, jak přesunul svou rovnováhu.~ */
  IF ~~ THEN REPLY #12485 /* ~"Nechtěl jsem..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12486 /* ~"Já? To *ty* vyhrožuješ *mně*."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12487 /* ~"Já? To *ty* vyhrožuješ *mně*."~ */ GOTO 8
  IF ~~ THEN REPLY #12488 /* ~"Ty jsi mě urazil, ty čtyřnohý kreténe s kozí prdelí!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BariA_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #12489 /* ~"Protože se na to *cítím*..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12490 /* ~Otoč se a jdi pryč.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12491 /* ~Uteč pryč.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #12388 /* ~Jeho hapalartna se poněkud snížila, vydal podrážděný vzdych. "No, tak bychom movná neměli být tak dychtiví prolít fvou krev. Fo ode mně chfef?"~ */
  IF ~~ THEN REPLY #12492 /* ~"Chtěl jsem se zeptat na pár věci..."~ */ GOTO 4
  IF ~~ THEN REPLY #12493 /* ~"Rozmyslel jsem si to. Radši proliju tvoji krev."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY #12390 /* ~"FO? Ne, dvounovfe, to *ty* jfi pvifel va *mnou*. Nebudu ti odmítat boj, jeftli je to to, fo chfef, ale pokud teď uftoupíf, ani jeden v náf o feft nepvíde..."~ */
  IF ~~ THEN REPLY #12494 /* ~"Dobrá tedy... Jenom jsem se chtěl na něco zeptat."~ */ GOTO 4
  IF ~~ THEN REPLY #12495 /* ~"Oh, ne... byl jsi to *ty* a ty toho budeš litovat!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12496 /* ~"Tak na to zapomeň. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #12391 /* ~"FO? Ne, dvounovfe, to *ty* jfi pvifel va *mnou*. Nebudu ti odmítat boj, jeftli je to to, fo chfef, ale pokud teď uftoupíf, ani jeden v náf o feft nepvíde..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 153
END

IF ~  Global("BariA","AR0400",2)
~ THEN BEGIN 10 // from:
  SAY #12392 /* ~"Ah, vafe ty, dvounovfe. Fo teď?"~ */
  IF ~~ THEN REPLY #12497 /* ~"Mám pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12498 /* ~"Nic... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #12393 /* ~"Dobvá, ty vlafatá vjivvená hovnovroutfká vopife! Pokud pvevijef tuhle bitvu, uv fe mi raději *nikdy* neopovavuj fkvívit feftu!" Zahrabal kopyty, jak se chystá k útoku.~ */
  IF ~~ THEN REPLY #12499 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12500 /* ~Uteč pryč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY #12394 /* ~Chvíli je zticha, jako by od tebe čekal víc. "Ah... fo o měftě?"~ */
  IF ~~ THEN REPLY #12501 /* ~"Co je tohle za místo?"~ */ GOTO 13
  IF ~~ THEN REPLY #12502 /* ~"Kde to přesně je?"~ */ GOTO 14
  IF ~~ THEN REPLY #12503 /* ~"No tak nic. Zeptám se tě ještě na něco jiného."~ */ GOTO 5
  IF ~~ THEN REPLY #12504 /* ~"Zapomeň, že jsem se ptal; to nic není. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.0
  SAY #12395 /* ~"No, je to kvivovatka, dvounovfe. Urfitě víf, ve vfechny fefty vedou Figilem?"~ */
  IF ~~ THEN REPLY #12505 /* ~"'Fefta'...? Myslíš 'cestu?'"~ */ GOTO 25
  IF ~~ THEN REPLY #12506 /* ~"Ano, Aha... kde přesně je Sigil?"~ */ GOTO 14
  IF ~~ THEN REPLY #12507 /* ~"Zeptám se tě ještě na něco jiného."~ */ GOTO 5
  IF ~~ THEN REPLY #12508 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.1 25.1
  SAY #12452 /* ~"Kde? Hmm..." Zatvářil se přemýšlivě, zatahal se za svou kozí bradku. "...je to v Puftinách - Ftredu Ffér. Ale protove fe tam můvef doftat fkoro odevfud, Figil je na vífe míftech, nev jenom tam. Rovumíf?"~ */
  IF ~~ THEN REPLY #12509 /* ~"Myslím, že ano. Ale co *je* tohle za místo?"~ */ GOTO 13
  IF ~~ THEN REPLY #12510 /* ~"Rozumím. Zeptám se tě ještě na něco jiného."~ */ GOTO 5
  IF ~~ THEN REPLY #12511 /* ~"Ano. To je vše, co jsem potřeboval; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.0
  SAY #12453 /* ~Chvíli se tváří smutně. "Tohle mífto... vubovené, nefifté mífto... je plné nepvátelfkých, někdy voufalých lifí. Není to vrovna nejlepfí mífto na náftěvu pro bariaura, dvounovfe." Pokrčil rameny. "Ale mám tady obchody, a tak jfem tady."~ */
  IF ~~ THEN REPLY #12512 /* ~"Návštěva? Ty tady nežiješ?"~ */ GOTO 16
  IF ~~ THEN REPLY #12513 /* ~"Obchod? Pro co tady jsi?"~ */ GOTO 17
  IF ~~ THEN REPLY #12514 /* ~"Aha. Mám pro tebe další otázku."~ */ GOTO 5
  IF ~~ THEN REPLY #12515 /* ~"Tak se tedy vrať ke svým obchodům. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #12454 /* ~Bariaur zavrtěl hlavou a rozesmál se. "Ne, ne, dvounovfe... vádný bariaur by nemohl takhle vít."~ */
  IF ~~ THEN REPLY #12516 /* ~"Odkud jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #12517 /* ~"Za jakým obchodem tady jsi?"~ */ GOTO 17
  IF ~~ THEN REPLY #12518 /* ~"Aha. Mám pro tebe další otázku."~ */ GOTO 5
  IF ~~ THEN REPLY #12519 /* ~"Tak se tedy vrať ke svým obchodům. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.1 18.0
  SAY #12455 /* ~"Jindy, dvounovfe. Jeftli fe fetkáme na ... ftafnějfím míftě, tak ti o tom povyprávím."~ */
  IF ~~ THEN REPLY #12520 /* ~"Říkal jsi, že jsi tady jenom na návštěvě. Takže tady nežiješ?"~ */ GOTO 16
  IF ~~ THEN REPLY #12521 /* ~"Tak to se tě zeptám ještě na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #12522 /* ~"Tak zas někdy. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #12456 /* ~"Ve Fféry Yfgard, dvounovfe. To je můj domov." Usmál se, jako by ho samotná vzpomínka zahřála.~ */
  IF ~~ THEN REPLY #12523 /* ~"Za jakým obchodem tady jsi?"~ */ GOTO 17
  IF ~~ THEN REPLY #12524 /* ~"Mám pro tebe další otázku..."~ */ GOTO 5
  IF ~~ THEN REPLY #12525 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2
  SAY #12457 /* ~Zvědavě se na tebe dívá. "Fo prefne chfef vědět?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12526 /* ~"Hledám místo, kde bych se mohl trochu pobavit."~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12527 /* ~"Hledám místo, kde bych se mohl trochu pobavit."~ */ GOTO 20
  IF ~~ THEN REPLY #12528 /* ~"Hledám práci."~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12529 /* ~"Znáš někoho jménem Pharod?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12530 /* ~"Ztratil jsem deník. Neviděl jsi ho, nebo nevíš náhodou, kde by se dalo něco takového sehnat?"~ */ GOTO 23
  IF ~~ THEN REPLY #12531 /* ~"Vlastně nic. Mám pár dalších otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #12532 /* ~"Nic, jdi o tom přemýšlet. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #12458 /* ~"Nemyflím fi, ve by tady někde byla nejaká vábava, dvounovfe. Movná byf to měl fkufit jinde, na jiném fvětě."~ */
  IF ~~ THEN REPLY #12533 /* ~"A pokud jsem hledal práci?"~ */ GOTO 21
  IF ~~ THEN REPLY #12534 /* ~"Mám ještě jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #12559 /* ~"Jiná čtvrť, říkáš? Možná. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 20.0
  SAY #12459 /* ~Zamračil se. "Nemyflím si, ve by tady někde byla flufná práfe... jenom jedné věfi je tady v Hifu doftatek a to jfou problémy."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12535 /* ~"Kde bych se mohl pobavit?"~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12536 /* ~"Kde bych se mohl pobavit?"~ */ GOTO 20
  IF ~~ THEN REPLY #12557 /* ~"Pak mi možná můžeš odpovědět na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #12558 /* ~"Můžeš mít pravdu. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.4 19.3
  SAY #12460 /* ~"Vnám tady jen pár lidí, dvounovfe... tenhle 'Pharod' mevi nima není. Tvůj pvítel?"~ */
  IF ~~ THEN REPLY #12537 /* ~"Nevím, opravdu. Dovol, abych se zeptal na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #12538 /* ~"Možná; Nejsem si jistý. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 19.4
  SAY #12461 /* ~Jenom zavrtěl hlavou. "Ne, dvojnovfe - nif takovýho."~ */
  IF ~~ THEN REPLY #12539 /* ~"Hmm. Mám další otázku..."~ */ GOTO 5
  IF ~~ THEN REPLY #12540 /* ~"Fajn. Pak tedy sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY #12462 /* ~"Paní?" Rozhlédl se kolem, jako by měl podezření, že vás někdo poslouchá. "Jenom fím, fe fládne tomuhle míftu - felýmu Figilu - a ve míftní fi myflí, že pvináfí fmůlu, mlufit o ní."~ */
  IF ~~ THEN REPLY #12541 /* ~"Aha. Odpověz mi na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #12542 /* ~"Děkuji ti. To je prozatím vše, co jsem potřeboval vědět; sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.0
  SAY #12463 /* ~Vypadá znepokojeně. "Jo, to fem vek. 'Fefta.'"~ */
  IF ~~ THEN REPLY #12543 /* ~"Ne... řekl jsi to znova. Říká se 'cesta,' ne 'fefta.'"~ */ GOTO 26
  IF ~~ THEN REPLY #12544 /* ~"Rozumím. Kde přesně je Sigil?"~ */ GOTO 14
  IF ~~ THEN REPLY #12545 /* ~"Aha. Dovol, abych se tě zeptal na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #12546 /* ~"Dobře. To je vše co jsem potřeboval vědět; sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12464 /* ~Zúžil oči, začíná vypadat jako podezřívavě, tak zlostně. "Vekl fem, fo fem vek. Movná byf měl vkufit *ty* mluvit *mým* javykem, dvojnovfe..."~ */
  IF ~~ THEN REPLY #12547 /* ~"Hm, můžu; koukej: Yah, yah, yah! Huf, huf, huf!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_3","GLOBALLaw",-1)
~ GOTO 27
  IF ~~ THEN REPLY #12548 /* ~"Máš pravdu; Omlouvám se. Dovol mi se tě na něco zeptat."~ */ GOTO 5
  IF ~~ THEN REPLY #12549 /* ~"Nepovídej, čtyřnohej. Sbohem."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12550 /* ~"Máš pravdu; Omlouvám se. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #12465 /* ~Znechuceně si odfrkl a sáhl po zbrani... pak se uklidnil. "Uv mi nikdy nefkviv... FEFTU... prafe, nebo tě vabiju." Odvrátil se od tebe.~ */
  IF ~~ THEN REPLY #12551 /* ~Nech ho oddusat.~ */ DO ~SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12552 /* ~Při odchodu ho napadni.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END
