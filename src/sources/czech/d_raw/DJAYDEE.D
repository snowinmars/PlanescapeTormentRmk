// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAYDEE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAYDEE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58535 /* ~Vidíš pracovníka skladiště. Vypadá to, že je docela zabraný do své práce. Tvého příchodu si nevšiml.~ */
  IF ~~ THEN REPLY #58537 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58540 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58542 /* ~Přestal dělat to, co právě dělal, a otočil se k tobě. "Můžu ti nějak pomoct?"~ */
  IF ~~ THEN REPLY #58543 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58547 /* ~"Ne, vážně ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58549 /* ~Zamračil se. "Mám spoustu práce a nemám čas na tvé otázky. Promiň." Otáčí se k tobě zády.~ */
  IF ~~ THEN REPLY #58551 /* ~"Jenom jedna otázka..."~ */ GOTO 3
  IF ~~ THEN REPLY #58553 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58554 /* ~Povzdychl si a otočil se k tobě. "Jenom jedna otázka... víš kolikrát denně tohle slyším." Naštvaně se na tebe dívá.~ */
  IF ~~ THEN REPLY #58556 /* ~"Uh... ne."~ */ GOTO 4
  IF ~~ THEN REPLY #58557 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58559 /* ~"Já ti to povím... až mockrát! Pokaždé sem přijde nějaký pitomec, který ví, že mě bude otravovat, protože vidí, že mám práci, ale stejně mi musí zase položit nějakou svoji jednu mizernou pitomou otázku!" Je opravdu dost naštvaný. "A víš co?"~ */
  IF ~~ THEN REPLY #58560 /* ~"Uh... ne. Co?"~ */ GOTO 5
  IF ~~ THEN REPLY #58562 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58563 /* ~Zvýšil hlas a začal kolem mávat rukama. "Lže! Ví, že to nebude jedna rychlá otázka! Ví, že to bude pitomý křížový výslech! Ale! Stejně řekne, že to bude jenom jedna otázečka. A víš proč?"~ */
  IF ~~ THEN REPLY #58564 /* ~"Uh... ne. Proč?"~ */ GOTO 6
  IF ~~ THEN REPLY #58566 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58567 /* ~"Protože si myslí, že jsem BLBEJ! Myslí si, že si nevšimnu, jak dlouho mi trvalo odpovědět mu na tu jeho jednu otázečku. Oh ne! Řekl, že to bude jedna rychlá otázka, takže nezáleží na tom, že odpověď mi zabrala půl hodiny. Jsem BLBEJ a nevšimnu si toho!"~ */
  IF ~~ THEN REPLY #58568 /* ~"Možná bych měl přijít později..."~ */ GOTO 7
  IF ~~ THEN REPLY #58569 /* ~"Omlouvám se za vyrušení, vidím, že máš práci..."~ */ GOTO 9
  IF ~~ THEN REPLY #58571 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #58572 /* ~"Proč? Stejně jsi mě přerušil, přetrhl jsi moje myšlenky! Polož mi tu svoji kreténskou otázku, zaber mi hodinu z mého drahého času a pak zmiz." Dívá se na tebe naštvaně.~ */
  IF ~~ THEN REPLY #58573 /* ~"Hledám devu. Řekli mi, že je v Curstu."~ */ GOTO 8
  IF ~~ THEN REPLY #58574 /* ~"Myslím, že už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58575 /* ~"Jo, já to taky slyšel. Prej je zavřenej ve vězení. V tom případě musíš jít do administrativní budovy na náměstí a zeptat se tam. A teď mě nech být..." Otočil se od tebe.~ */
  IF ~~ THEN REPLY #58576 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58577 /* ~Odmlčel se, aby tě mohl sežehnout pohledem. "Práci? Viděl jsi můj pracovní rozpis? Nemáš páru o tom, co je to mít práci, vole." Odfrkl si. "A navíc se ta zatracená věc furt mění, to je na tom to nejlepší! Každej den se tam něco přidává nebo ubírá, aby se mohlo přidat něco jinýho."~ */
  IF ~~ THEN REPLY #58578 /* ~"Aha. Myslím, že už bych měl jít..."~ */ GOTO 7
  IF ~~ THEN REPLY #58579 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58580 /* ~Vidíš rozzlobeného pracovníka skladiště. Zcela se soustřeďuje na práci, dokud si tě nevšiml. "Oh, to seš zas ty. Nech mě hádat, zase máš pro mě jednu rychlou otázečku."~ */
  IF ~~ THEN REPLY #58581 /* ~"Ne, myslím, že půjdu. Sbohem."~ */ EXIT
END
