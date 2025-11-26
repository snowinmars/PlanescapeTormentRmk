// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2305 /* ~Vidíš slabou ženu s bledou tváří v černém rouchu. Zírá do dálky, zjevně si tě vůbec nevšimla.~ */
  IF ~~ THEN REPLY #2306 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #2307 /* ~Nechej ji být.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2308 /* ~Vidíš slabou Spalovačku s bledou tváří v černém rouchu. Zírá do dálky, zjevně si tě vůbec nevšimla.~ */
  IF ~~ THEN REPLY #2313 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #2314 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2309 /* ~Pomalu se k tobě otočila. "Ano?"~ */
  IF ~~ THEN REPLY #2315 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #2316 /* ~"Nic, kašli na to."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2310 /* ~Založila si ruce do roucha a čeká.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2317 /* ~"Znáš někoho jménem Pharod?"~ */ JOURNAL #66588 /* ~Jeden ze Spalovačů mi řekl, že jestli hledám Pharoda, měl bych si promluvit s někým jménem 'Emoric' v baru Zapomnění, který je na jihozápad od přední brány Márnice.~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2318 /* ~"Hledám ztracený deník."~ */ GOTO 5
  IF ~~ THEN REPLY #2319 /* ~"Nic, kašli na to."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2311 /* ~Zatřásla rukou.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2320 /* ~"Hledám ztracený deník."~ */ GOTO 5
  IF ~~ THEN REPLY #2321 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2312 /* ~Zatřásla rukou.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2322 /* ~"Nevíš, kde bych mohl najít osobu jménem Pharod?"~ */ JOURNAL #66588 /* ~Jeden ze Spalovačů mi řekl, že jestli hledám Pharoda, měl bych si promluvit s někým jménem 'Emoric' v baru Zapomnění, který je na jihozápad od přední brány Márnice.~ */ GOTO 6
  IF ~~ THEN REPLY #2323 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66589 /* ~"Pharod jest Sběračem." Žena si tě chvíli prohlíží. "Přeješ-li si by znalosti tvé o něm větší byly, řeknu ti toto: Bylo mi sděleno, že Zasvěcený Emoric, nacházející se v baru zvaném Zapomnění, taktéž po Pharodovi pátrá. Je možné, že pomoci ti on bude schopen."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66591 /* ~"Kde je bar Zapomnění?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66592 /* ~"Vím o tom baru. Než tam ale půjdu, mám pro tebe pár dalších otázek..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66593 /* ~"Bar Zapomnění? Je to na jihozápad odtud, že? Tak tam půjdu."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66590 /* ~"Až opustíš bránu Márnice, zamiř sobě na jih a západ. Leží tam, toliko několik kroků za památníkem."~ */
  IF ~~ THEN REPLY #66594 /* ~"Dobrá. Než půjdu, chtěl bych se ještě na něco zeptat..."~ */ GOTO 3
  IF ~~ THEN REPLY #66595 /* ~"Dobrá tedy. Tak tam tedy půjdu."~ */ EXIT
END
