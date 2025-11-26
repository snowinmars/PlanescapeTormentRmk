// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL1~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10418 /* ~Tento statný mladík s chladným obličejem se na tebe podíval a najednou vyhrkne: "Ty! Slyšel jsem o tobě! Ha! Jsi zatčen! Ne, počkej... budeš popraven!" Vytáhne svou zbraň a chystá se s ní na tebe udeřit.~ */
  IF ~~ THEN REPLY #10419 /* ~Napadni jej.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10420 /* ~Uteč.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10421 /* ~Vidíš mladíka, kterému je sotva osmnáct. Jeho tvář prozrazuje jisté napětí. "Hledáš pomoc, kámo?"~ */
  IF ~~ THEN REPLY #10422 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10423 /* ~"Hledám deník. Neviděls náhodou nějaký?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10424 /* ~"Hledám Sběrače, jež nosí jméno Pharod. Nevěděl bys náhodou, kde bych ho mohl najít?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10425 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 12
  IF ~~ THEN REPLY #10427 /* ~"Kdo jsou tady tví přátelé?"~ */ GOTO 5
  IF ~~ THEN REPLY #10428 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 6
  IF ~~ THEN REPLY #10429 /* ~"Co děláš?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10430 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10431 /* ~"Zase ty? Co chceš?" Vypadá netrpělivě a nervózně.~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10432 /* ~"Už jsi chytil svého zabijáka?"~ */ GOTO 8
  IF ~~ THEN REPLY #10433 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10434 /* ~"Hledám deník. Neviděls náhodou nějaký?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10435 /* ~"Hledám Sběrače, jménem Pharod. Nevěděl bys náhodou, kde bych ho mohl najít?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10436 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 12
  IF ~~ THEN REPLY #10437 /* ~"Kdo jsou zde tví přátelé?"~ */ GOTO 5
  IF ~~ THEN REPLY #10438 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 6
  IF ~~ THEN REPLY #10439 /* ~"Co děláš?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10440 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 10.1
  SAY #10441 /* ~"Jsem Caleb. Jsem Nemilosrdný. Jsem zde s Tarnerem a Ilsidonem, abych chytil mého prvního zločince."~ */
  IF ~~ THEN REPLY #10442 /* ~"Co mi můžeš říct o Nemilosrdných?"~ */ GOTO 9
  IF ~~ THEN REPLY #10443 /* ~"Aha. Chtěl bych se zeptat ještě na něco jiného."~ */ GOTO 10
  IF ~~ THEN REPLY #10444 /* ~"Hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 10.2
  SAY #10445 /* ~"Deník? Ne, promiň. Jsem tu nový, takže to tu ještě moc neznám. Kdybych nějaký viděl, dám ti vědět." Dívá se po baru.~ */
  IF ~~ THEN REPLY #10446 /* ~"Co děláš?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10447 /* ~"Díky. Mezitím bys mi mohl odpovědět na pár otázek."~ */ GOTO 10
  IF ~~ THEN REPLY #10448 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 2.5 10.5
  SAY #10449 /* ~"To jsou lidi, kteří dávají pozor, abych nezpackal tento úkol. Tarner je ten starší. Ilsidon je ten, který dohlíží, abych svou práci vykonal správně a pomáhá mi, kdybych to potřeboval." Hlasitě polkl. "Doufám, že nebudu."~ */
  IF ~~ THEN REPLY #10450 /* ~"Jsem si jist, že to bude v pohodě. Odpovíš mi na pár otázek?"~ */ GOTO 10
  IF ~~ THEN REPLY #10451 /* ~"Přeji ti hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.6 10.6
  SAY #10452 /* ~"Toto místo? To je krčma u Doutnajícího nebožtíka. Myslím, že ji pojmenovali podle toho chlápka blízko vchodu. Tady se často vyskytují kriminálníci a různá chamraď. A ještě... je tady několik lidí, co ví o čem mluví. Někteří jsou zase ti fiendové a nechtěl bych si s nimi nic začít. Mám dojem, jako by mi civěli přímo na duši."~ */
  IF ~~ THEN REPLY #10453 /* ~"Chápu. Můžeš mi odpovědět na další otázky?"~ */ GOTO 10
  IF ~~ THEN REPLY #10454 /* ~"Vypadají tak. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.7 4.0 10.7
  SAY #10455 /* ~"Nuže, jak vidno, jsem nový Nemilosrdný, měl bych postavit před soud nějakého zločince, abych ukázal, že se na to hodím. Rozhodl jsem se chytit vraha, tak jsme se poptali a dozvěděli se, že by měl být tady. Ale ještě jsme ho neviděli. Abych pravdu řekl, jsem poněkud nervózní. Teď mě omluv, měl bych pozorovat zdejší obličeje." Natáhnul krk a dívá se po baru.~ */
  IF ~~ THEN REPLY #10456 /* ~"Jenom pár dalších otázek a pak tě nechám být."~ */ GOTO 10
  IF ~~ THEN REPLY #10457 /* ~"Výborně. Přeji dobrý den."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 10.0
  SAY #10458 /* ~"Ne. Ještě ne. Ale Tarner říká, že by se tu měl ten zločinec nakonec objevit. Takže zatím vyčkáváme."~ */
  IF ~~ THEN REPLY #10459 /* ~"Dobře. Ještě mi na něco odpověz."~ */ GOTO 10
  IF ~~ THEN REPLY #10460 /* ~"Hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0
  SAY #10461 /* ~"Nuže, oni... pardon, *já* -- teď si musím zvyknout říkat to tak! -- věřím, že Právo je nejdůležitější věcí naší existence. Věřím, že bez práva není žádný smysl a bez smyslu bychom mohli také zanevřít na svět a zabít sami sebe. Nechci se zabít, tak jsem se rozhodl, že právo je tím smyslem. Jestli chceš vědět víc, měl by ses zeptat tady těch dvou nebo najít některého našeho náboráře. Napovídají ti toho tolik, až tě začnou bolet uši!"~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10462 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 12
  IF ~~ THEN REPLY #10463 /* ~"Měl bych to udělat. Odpovíš mi ještě na pár otázek?"~ */ GOTO 10
  IF ~~ THEN REPLY #10464 /* ~"Udělám to. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1 4.1 5.0 6.0 7.0 8.0 9.1 11.0 12.0
  SAY #10465 /* ~"Co bys chtěl vědět?"~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10466 /* ~"Už jsi chytil svého vraha?"~ */ GOTO 8
  IF ~~ THEN REPLY #10467 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10468 /* ~"Hledám deník. Neviděl jsi náhodou nějaký?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10469 /* ~"Hledám Sběrače, jménem Pharod. Nevěděl bys náhodou, kde bych ho mohl najít?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10470 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 12
  IF ~~ THEN REPLY #10471 /* ~"Kdo jsou tví přátelé?"~ */ GOTO 5
  IF ~~ THEN REPLY #10472 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 6
  IF ~~ THEN REPLY #10473 /* ~"Co děláš?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10474 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.2 2.3 10.3
  SAY #10475 /* ~"Neřekl bych, že jsem o něm slyšel. Je to zločinec? Možná ho později sebereme... Mé díky za tip, občane."~ */
  IF ~~ THEN REPLY #10476 /* ~"Jen ho potřebuji najít, ne ho nechat zabít. Mohu se ještě na něco zeptat?"~ */ GOTO 10
  IF ~~ THEN REPLY #10477 /* ~"Není zač. Až ho chytíte, dejte mi vědět než ho zabijete. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.3 2.4 9.0 10.4
  SAY #10478 /* ~"Vhailor? Myslím, že je to jeden z veteránů Nemilosrdných. Jednou bych chtěl být jako on, půjde-li to. Slyšel jsem, že jeho původ byl téměř božský!"~ */
  IF ~~ THEN REPLY #10479 /* ~"To je pro tebe určitě vzor. Můžeš mi ještě na něco odpovědět?"~ */ GOTO 10
  IF ~~ THEN REPLY #10480 /* ~"Aha. Mé díky."~ */ EXIT
END
