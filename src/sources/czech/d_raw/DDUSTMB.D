// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2324 /* ~Vidíš slabého muže s bledou tváří v černém rouchu. Zírá do dálky, zjevně si tě vůbec nevšiml.~ */
  IF ~~ THEN REPLY #2330 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #2331 /* ~Nechej ho být.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2325 /* ~Vidíš slabého Spalovače s bledou tváří v černém rouchu. Zírá do dálky, zjevně si tě vůbec nevšiml.~ */
  IF ~~ THEN REPLY #2332 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #2333 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2326 /* ~Pomalu se k tobě otočil. "Ano?"~ */
  IF ~~ THEN REPLY #2334 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #2335 /* ~"Nic, kašli na to."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2327 /* ~Založil ruce do roucha a čeká.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2336 /* ~"Nevíš, kde bych mohl najít osobu jménem Pharod?"~ */ JOURNAL #66588 /* ~Jeden ze Spalovačů mi řekl, že jestli hledám Pharoda, měl bych si promluvit s někým jménem 'Emoric' v baru Zapomnění, který je na jihozápad od přední brány Márnice.~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2337 /* ~"Hledám ztracený deník."~ */ GOTO 5
  IF ~~ THEN REPLY #2338 /* ~"Nic, kašli na to."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2328 /* ~Potřásl rukou.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2339 /* ~"Hledám ztracený deník."~ */ GOTO 5
  IF ~~ THEN REPLY #2340 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2329 /* ~Potřásl rukou.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2341 /* ~"Nevíš, kde bych mohl najít osobu jménem Pharod?"~ */ JOURNAL #66588 /* ~Jeden ze Spalovačů mi řekl, že jestli hledám Pharoda, měl bych si promluvit s někým jménem 'Emoric' v baru Zapomnění, který je na jihozápad od přední brány Márnice.~ */ GOTO 6
  IF ~~ THEN REPLY #2342 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66581 /* ~"Pharod jest Sběračem." Muž si tě chvíli prohlíží. "Přeješ-li si by znalosti tvé o něm větší byly, řeknu ti toto: Bylo mi sděleno, že Zasvěcený Emoric, nacházející se v baru zvaném Zapomnění, taktéž po Pharodovi pátrá. Je možné, že pomoci ti on schopen bude."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66582 /* ~"Kde je bar Zapomnění?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66586 /* ~"Vím o tom baru. Než tam ale půjdu, mám pro tebe pár dalších otázek..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66583 /* ~"Bar Zapomnění? Je to na jihozápad odtud, že? Tak tam půjdu."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66584 /* ~"Až opustíš bránu Márnice, zamiř sobě na jih a západ. Leží tam, toliko několik kroků za památníkem."~ */
  IF ~~ THEN REPLY #66585 /* ~"Dobrá. Než půjdu, chtěl bych se ještě na něco zeptat..."~ */ GOTO 3
  IF ~~ THEN REPLY #66587 /* ~"Dobrá tedy. Tak tam tedy půjdu."~ */ EXIT
END
