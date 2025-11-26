// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #11350 /* ~Vidíš malého, hrbatého muže se zmateným výrazem ve tváři. Z čar na jeho neurčité tváři vyplývá, že to u něj není nic neobvyklého. Nese láhev piva a vypadá to, že ji začíná vyprazdňovat - rychle. Mezi loky mluví jemným hlasem, tak tiše, že sotva slyšíš jeho slova. "Ahoj, poutníku. Jmenuju se Ilquix. Mohu ti nějak pomoci?"~ */
  IF ~~ THEN REPLY #11351 /* ~"Zdravím. Chtěl bych se tě na něco zeptat."~ */ GOTO 2
  IF ~~ THEN REPLY #11352 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #11353 /* ~Muž se otočil a usmál se. "Znovu zdravím, poutníku. Co pro tebe může Ilquix dneska udělat?"~ */
  IF ~~ THEN REPLY #11354 /* ~"Zdravím, Ilquixi. Na něco se tě chci zeptat."~ */ GOTO 2
  IF ~~ THEN REPLY #11355 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 4.0 5.0 6.1 7.0 8.0 9.4 10.0
  SAY #11356 /* ~"Copak chceš vědět, můj příteli?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11357 /* ~"Kdo přesně jsi?"~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11358 /* ~"Kdo přesně jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #11359 /* ~"Co mi můžeš povědět o tomhle místě?"~ */ GOTO 5
  IF ~~ THEN REPLY #11360 /* ~"Co mi můžeš povědět o stálých návštěvnících tohoto místa?"~ */ GOTO 6
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #11361 /* ~"Kdo je ten hořící muž?"~ */ GOTO 7
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11362 /* ~"Stále se snažím najít způsob jak donutit Mochai, aby zaplatila účet za své pití. Nějaké návrhy?"~ */ GOTO 8
  IF ~~ THEN REPLY #11363 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11365 /* ~"Já? Ale já jsem skromný muž se sklony k básnění a zajímající se o nadpřirozeno. Mrzí mě, že tu nemám žádné z mých zásob, jinak bych byl velice, VELICE rád, kdybych tě mohl učit o moci." Zmlknul a obdivně se podíval na Grace. "A mohl bych ti blahopřát, pane, k tvé volbě společníků na cestách? Jsi zřejmě muž, který rozumí svým potřebám; stejně tak jsi muž s odhodláním. Člověk musí tyhle ambiciózní muže obdivovat."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 12
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #11367 /* ~"Já? Ale já jsem skromný muž se sklony k básnění a zajímající se o nadpřirozeno. Mrzí mě, že tu nemám žádné z mých zásob, jinak bych byl velice, VELICE rád, kdybych tě mohl učit o moci."~ */
  IF ~~ THEN REPLY #11369 /* ~"Ano, rád bych. Nicméně teď mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #11371 /* ~"Možná. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #11373 /* ~"Tohle místo? Bar U Doutnajícího nebožtíka? Fajn místo, s fajnovým majitelem - Barkis je pravý gentleman a ambiciózní na to, aby jeho postavení rostlo. Zdá se mi, že toto, jsou nejužitečnější dovednosti které kdy můžeš mít."~ */
  IF ~~ THEN REPLY #11374 /* ~"Řídí lidi. Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #11376 /* ~"Hodně by jich s tebou souhlasilo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #11377 /* ~"Návštěvníci tohoto baru jsou mnozí a různorodí. S většinou jsem mluvil a našel v nich zalíbení - s výjimkou těch bytostí zákona." Ukázal na dvojici abishaiů sedících v rohu. "Svou přítomností zamořili vzduch, jde z nic škodlivý pach do jinak příjemného prostředí. Doporučuju ti promluvit si s Barkisem - vím, že potřebuje pomoc s jednou malichernou záležitostí. Poté tu máme toho O. Pořád se mu snažím plně porozumět. To je *skutečně* náročné, jak říkám. To jsou důležití lidé. Ti ostatní... no možná je trochu podceňuji."~ */
  IF ~~ THEN REPLY #11379 /* ~"Proč pohrdáš bytostmi zákona?"~ */ GOTO 9
  IF ~~ THEN REPLY #11381 /* ~"Možná. Mám nějaké další otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #11383 /* ~"Děkuji ti za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #11385 /* ~"Ten? Ha. To je poslední nešťastník, který se rozhodl prosadit svou vůli, ale neměl sílu podpořit své touhy. Jmenuje se Ignus a je... byl... pyromaniak. Pálil a pálil, ale nespálil správné lidi a skončil tak, že použil víc síly, než kolik mohl zvládnout. Teď se můžeš podívat, co se s ním stalo. Jestli si přeješ dozvědět se o něm víc, snad ti může pomoci ta bídná bytost Drusilla."~ */
  IF ~~ THEN REPLY #11387 /* ~"Aha. Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #11388 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #11390 /* ~Zasmál se tak, že se mu čelisti třásly, jako by chtěly odpadnout z obličeje. "Vždy ji můžeš otrávit, příteli! Dávka tohohle byla vždy účinná při ukončení *každého* konfliktu!" Znovu se směje. "Samozřejmě, že žertuji." Mrknul.~ */
  IF ~~ THEN REPLY #11392 /* ~"Samozřejmě. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #11393 /* ~"Samozřejmě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #11394 /* ~"Ah, fajn otázka, můj příteli! Vychovávali mě na chaotické straně Velkého Kruhu - můžeš si promluvit s Candrianem Illbornem (hrozné jméno a že už jsem jich slyšel) o sférách. Myslí si o sobě, že je velký cestovatel po sférách. Abych se vrátil k tématu - žil jsem mnoho let s Chaosem a zjistil, že je to zábavně příjemné. Pro mě je příchuť zákona, třeba v těchhle bytostech tady, hanebná a násilnická. Jestli mám být zašlapán do země, tak raději jedincem, než strojem, který nezná žádné emoce."~ */
  IF ~~ THEN REPLY #11395 /* ~Pravda: "Souhlasím."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_One","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11396 /* ~Lež: "Souhlasím."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11397 /* ~Pravda: "Nesouhlasím."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Ilquix_One","GLOBALLaw",1)
~ GOTO 10
  IF ~~ THEN REPLY #11398 /* ~Lež: "Nesouhlasím."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11399 /* ~"Je mnoho těch, kteří s tebou souhlasí. Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #11400 /* ~"Je mnoho těch, kteří s tebou souhlasí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11401 /* ~Ilquix se zazubil, jeho otylé tváře se sotva hýbaly. "Každému, co jeho jest, říkám. Máš ještě nějaké otázky?"~ */
  IF ~~ THEN REPLY #11402 /* ~"Ano."~ */ GOTO 2
  IF ~~ THEN REPLY #11403 /* ~"Ne. Sbohem."~ */ EXIT
END
