// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTHGG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTHGG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66596 /* ~Vidíš Spalovače s bledou tváří, který drží stráž u přední brány. Zírá do dálky. Když ses přiblížil, otočil se k tobě. "Ano?"~ */
  IF ~~ THEN REPLY #66597 /* ~"Mám pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #66598 /* ~"Nic, na tom nezáleží. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.4 4.0 5.1 6.0 7.0
  SAY #66599 /* ~Přikývne a čeká.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66600 /* ~"Rád bych vstoupil do Márnice."~ */ GOTO 2
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66601 /* ~"Jsem Spalovač. Rád bych vstoupil do Márnice."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #66602 /* ~"Hledám někoho jménem Pharod. Nevíš, kde bych ho mohl najít?"~ */ JOURNAL #66588 /* ~Jeden ze Spalovačů mi řekl, že jestli hledám Pharoda, měl bych si promluvit s někým jménem 'Emoric' v baru Zapomnění, který je na jihozápad od přední brány Márnice.~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #66603 /* ~"Hledám ztracený deník. Neviděl jsi ho někde?"~ */ GOTO 7
  IF ~~ THEN REPLY #66604 /* ~"No tak nic. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66605 /* ~"Jakýž je účel tvé cesty do vnitřního prostoru Márnice?"~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #66606 /* ~"Jsem zde, abych se rozloučil s Deionarrou, ženou v severozápadní památeční hale."~ */ GOTO 3
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #66607 /* ~"Přišel jsem za Dhallem."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66608 /* ~"Jsem zde, abych držel stráž u mrtvého. Doufal jsem, že mi někdo ze Spalovačů řekne, kde přesně v Márnici je."~ */ GOTO 3
  IF ~~ THEN REPLY #66609 /* ~"Zkrátka se potřebuju dostat dovnitř."~ */ GOTO 4
  IF ~~ THEN REPLY #66610 /* ~"Vlastně mám jenom pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #66611 /* ~"No tak nic. Budu muset jít."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2
  SAY #66612 /* ~Přikývl. "Dobrá tedy. Následuj mě."~ */
  IF ~~ THEN REPLY #66613 /* ~"Dobrá..."~ */ DO ~TeleportParty("AR0201",[1190.2578],10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #66614 /* ~Zavrtěl hlavou. "Vstup tvůj jest zamítnut."~ */
  IF ~~ THEN REPLY #66615 /* ~"Dobrá tedy. Mám pár dalších otázek..." ~ */ GOTO 1
  IF ~~ THEN REPLY #66616 /* ~"V tom případě tedy půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #66617 /* ~"Pharod jest Sběračem." Muž si tě chvíli prohlíží. "Přeješ-li si by znalosti tvé o něm větší byly, řeknu ti toto: Bylo mi sděleno, že Zasvěcený Emoric, nacházejícíe se baru zvaném Zapomnění, taktéž po Pharodovi pátrá. Je možné, že pomoci ti on bude schopen."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66618 /* ~"Kde je bar Zapomnění?"~ */ GOTO 6
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66619 /* ~"Vím o tom baru. Než tam ale půjdu, mám pro tebe pár dalších otázek..."~ */ GOTO 1
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66620 /* ~"Bar Zapomnění? Je to na jihozápad odtud, že? Tak tam půjdu."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #66621 /* ~"Až opustíš bránu Márnice, zamiř sobě na jih a západ. Leží tam, toliko několik kroků za památníkem."~ */
  IF ~~ THEN REPLY #66622 /* ~"Dobrá. Než půjdu, chtěl bych se ještě na něco zeptat..."~ */ GOTO 1
  IF ~~ THEN REPLY #66623 /* ~"Dobrá tedy. Půjdu to najít."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #66624 /* ~Zavrtěl hlavou. "Ne."~ */
  IF ~~ THEN REPLY #66625 /* ~"Mám pár dalších otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #66626 /* ~"Dobrá tedy. Děkuju."~ */ EXIT
END
