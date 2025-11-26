// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELAAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELAAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58377 /* ~Vidíš mladou ženu. Má špinavou tvář, rozcuchané vlasy a šaty skládající se hlavně ze záplat. Zamračila se na tebe.~ */
  IF ~~ THEN REPLY #58378 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58379 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58380 /* ~Rozhlédla se kolem a pak o krůček ustoupila. "Co chceš, vole?"~ */
  IF ~~ THEN REPLY #58381 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58382 /* ~"Nic, sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58383 /* ~Podezřívavě si tě prohlíží, ale pak se trochu uklidnila. "Doufám, že to je všechno, co ode mně chceš."~ */
  IF ~~ THEN REPLY #58384 /* ~"Co bych ještě mohl chtít?"~ */ GOTO 3
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58386 /* ~"Vše co chci, je pár odpovědí."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58387 /* ~"Vše co chci, je pár odpovědí."~ */ GOTO 7
  IF ~~ THEN REPLY #58388 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58389 /* ~Zamračila se a založila si ruce v bok. "Hele, vole. Nejsem tak škaredá a tady dole moc ženskejch není. Přijdi si na odpověď sám."~ */
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58390 /* ~"Vše co chci, je pár odpovědí."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58391 /* ~"Vše co chci, je pár odpovědí."~ */ GOTO 7
  IF ~~ THEN REPLY #58392 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58393 /* ~"Jistě, proč ne..." Náhle se zarazila a upřeně se na tebe podívala. Na tváři jí přeběhl výraz rozpoznání. "Počkej. Velkej zjizvenej parchant s divnejma vlasama... ty seš ten, co prásknul Robertu!"~ */
  IF ~~ THEN REPLY #58394 /* ~"Roberta Parfidorová... Je tady dole?"~ */ GOTO 5
  IF ~~ THEN REPLY #58395 /* ~"Nevím, o čem to mluvíš."~ */ GOTO 6
  IF ~~ THEN REPLY #58396 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58397 /* ~"Ano, je tady." Odmlčela se a usmála se na tebe. "Měl bys jí navštívit. Určitě jí to potěší."~ */
  IF ~~ THEN REPLY #58398 /* ~"Ano, to je mi jasné, ale nejdřív mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58399 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58401 /* ~Zamračila se na tebe. "Samozřejmě že ne. Tak co chceš?"~ */
  IF ~~ THEN REPLY #58404 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58406 /* ~"To nic."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 15.1 16.0 17.0
  SAY #58408 /* ~"Ptej se, jen se ptej."~ */
  IF ~~ THEN REPLY #58409 /* ~"Kdo jsi?"~ */ GOTO 8
  IF ~~ THEN REPLY #58410 /* ~"Můžeš mi říct něco o tomhle místě?"~ */ GOTO 12
  IF ~~ THEN REPLY #58411 /* ~"Hledám devu, prý je někde tady."~ */ GOTO 13
  IF ~~ THEN REPLY #58413 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58415 /* ~"Jsem Yelaan. Nic moc jméno, ale je to moje jméno."~ */
  IF ~~ THEN REPLY #58418 /* ~"Proč jsi tady?"~ */ GOTO 9
  IF ~~ THEN REPLY #58420 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58423 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58425 /* ~Na chvíli přemýšlí, pak pokrčila rameny. "Zmlátila jsem jednu děvku, která mi kradla kšefty. Chytili mě a strčili sem."~ */
  IF ~~ THEN REPLY #58427 /* ~"Kradla kšefty?"~ */ GOTO 10
  IF ~~ THEN REPLY #58429 /* ~"Koho jsi zmlátila?"~ */ GOTO 11
  IF ~~ THEN REPLY #58431 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58434 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #58436 /* ~"Byla jsem prostitutka a docela se mi dařilo... dokud nepřišla ona. Takže jsem si řekla, že jí upravím vizáž a budu mít kšefty zpátky." Povzdychla si.~ */
  IF ~~ THEN REPLY #58439 /* ~"Koho jsi zmlátila?"~ */ GOTO 11
  IF ~~ THEN REPLY #58443 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58445 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #58448 /* ~Na chvíli přemýšlí, pak pokrčila rameny. "Nepamatuju si jméno... nebo jsem ho možná ani neznala. Byla to konkurence, na ničem jiném nezáleželo."~ */
  IF ~~ THEN REPLY #58453 /* ~"Říkalas, že ti kradla kšefty?"~ */ GOTO 10
  IF ~~ THEN REPLY #58455 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58457 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #58459 /* ~Podívala se na tebe, vidíš, jak se jí v oku tvoří slza. Rychle ji utřela a dala se dohromady. "Co k tomu říct... je to vězení a život tady je tvrdej. Slyšela jsem, že existujou horší vězení, ale mě o tom nepřesvěčíš..." Její hlas se ztišil a přešel do šepotu. "Kdybych si tím měla projít znovu..."~ */
  IF ~~ THEN REPLY #58461 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58463 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #58465 /* ~Přikývla. "Je tady dole deva... někde. Nikdy jsem ho neviděla, ale dost se o něm povídá. Většina lidí mu říká *moronosič*."~ */
  IF ~~ THEN REPLY #58469 /* ~"Moronosič?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #58472 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58475 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58478 /* ~"Ano... hned po tom, co ho našli, tu vypuknul mor. Přeletěl po celým vězení, většinu z nás prej dostal." Pokrčila rameny. "Většina lidí tvrdí, že za to může on, ale já nevím."~ */
  IF ~~ THEN REPLY #58480 /* ~"Kde ho můžu najít?"~ */ GOTO 15
  IF ~~ THEN REPLY #58482 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58486 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58488 /* ~Pokrčila rameny. "Nevím. Někde blízko, víc ti neřeknu."~ */
  IF ~~ THEN REPLY #58489 /* ~"Víš, že je blízko, ale nevíš kde..."~ */ GOTO 16
  IF ~~ THEN REPLY #58491 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58493 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58494 /* ~Přikývla. "Hele, vole. Mor, který tudma proletěl, byl hrozivěj, a většina lidí tvrdí, že ho zpusbil deva. Proč bych ho ve jménu baatoru měla hledat?"~ */
  IF ~~ THEN REPLY #58495 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58496 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #58497 /* ~Vidíš Yelaan. Zamávala ti na pozdrav. "Zase ty, co se děje?"~ */
  IF ~~ THEN REPLY #58498 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #58499 /* ~"Nic, sbohem."~ */ EXIT
END
