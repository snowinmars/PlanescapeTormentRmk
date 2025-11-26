// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL2~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10481 /* ~Bez jediného slova vytáhl tento těžce oděný muž svou zbraň a mává jí k tobě.~ */
  IF ~~ THEN REPLY #10482 /* ~Napadni jej.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10483 /* ~Uteč.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10484 /* ~Tento muž je mohutné, opancéřované monstrum. Jeho zrak je pronikavý -- neujde mu nic, co se kolem něj přihodí. A zdá se, že nemá žádný zájem se s tebou bavit.~ */
  IF ~~ THEN REPLY #10485 /* ~"Rád bych se zeptal na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10486 /* ~"Nazdar?"~ */ GOTO 2
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10487 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #10488 /* ~"Tak sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1 5.0
  SAY #10489 /* ~Muž na tebe civí, jako bys byl nějaká štěnice. Civí a pomalu mrká očima. Bez jediného slova se otočil a vypustil tě z hlavy.~ */
  IF ~~ THEN REPLY #10490 /* ~"Mluv se mnou nebo ti vyrvu srdce, ty těžká plechová hromado."~ */ GOTO 3
  IF ~~ THEN REPLY #10491 /* ~"Nazdar?"~ */ GOTO 3
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10492 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #10493 /* ~"Tak sbohem. Poptám se někde jinde."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #10494 /* ~Slyšíš bručení vycházející odněkud z hloubi mužovy hrudi. Pozvedl trochu zbraň a dívá se na tebe s novým zaujetím.~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10495 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #10496 /* ~"No, když je to s tebou tak, sbohem."~ */ EXIT
  IF ~~ THEN REPLY #10497 /* ~Napadni jej.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.2 3.0
  SAY #10498 /* ~K tvému překvapení tichý obr reaguje. Naklonil se k tobě a zmrazil svýma jasnýma upřenýma očima. Jeho nesmírně hluboký hlas burácí z jeho obrovité hrudi: "Vhailor byl ten nejlepší z nás. Pravý Nemilosrdný. Právo bylo jeho milenkou a jeho životní mízou. Traduje se, že dokázal vidět neposkvrněnost duší. Byl tak oddaný, že by se nikdy nevzdal - dokonce ani na prahu vlastní smrti. Zmizel před lety, když pronásledoval nějakého zločince skrz jeden portál. Od té doby jsme jej neviděli. Je skutečnou legendou." Usadil se zpět na svou židli a přestal se s tebou bavit.~ */
  IF ~~ THEN REPLY #10499 /* ~"Můžeš mi odpovědět na pár dalších otázek?"~ */ GOTO 5
  IF ~~ THEN REPLY #10500 /* ~"Děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10501 /* ~Nemilosrdný se na tebe ani nepodíval. "Ne." ~ */
  IF ~~ THEN REPLY #10502 /* ~"Jen jsem se tě chtěl zeptat na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #10503 /* ~"Tak sbohem."~ */ EXIT
END
