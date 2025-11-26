// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAETH~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33587 /* ~Je to jeden ze dvojice mužů, kteří na sebe křičí a mávají zbraněmi. Vypadá to, že si každou chvíli skočí po krku.~ */
  IF ~~ THEN REPLY #33598 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #33599 /* ~Drž se od nich.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33588 /* ~Muž, tvář zrudlou z námahy vymýšlení nových nadávek, se k tobě otočil. "Co chceš? Nevidíš, že nemám čas, vole!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33600 /* ~"Tvá milenka mě požádala, ať vám dvěma zabráním v bitce."~ */ GOTO 4
  IF ~~ THEN REPLY #33601 /* ~"Zajímalo by mě, proč se rvete."~ */ GOTO 2
  IF ~~ THEN REPLY #33602 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33589 /* ~"To není tvůj problém, vole. Odpal!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33603 /* ~"Tvá milenka mě požádala, ať vám dvěma zabráním v bitce."~ */ GOTO 4
  IF ~~ THEN REPLY #33604 /* ~"Nemůžu vám nějak v tom sporu pomoct?"~ */ GOTO 3
  IF ~~ THEN REPLY #33605 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33590 /* ~"Ne, nemůžeš. Tenhle čubčí syn furt strká nos do mýho života s Elyce a teď dostane přímo do držky! Neser se do toho!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33606 /* ~"Tvá sestra mě požádala, ať vám dvěma zabráním v bitce."~ */ GOTO 4
  IF ~~ THEN REPLY #33607 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33591 /* ~Muž náhle ztichl. "Elyce tě zavolala, jo? Nevím, kdo jsi, kámo, ale není mi jasný, jak bys nás chtěl zastavit!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33608 /* ~"Tak, že vás zmlátím do krvava, když budu muset."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33609 /* ~"Tak, že vás zmlátím do krvava, když budu muset."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33610 /* ~"Tak, že vás zmlátím do krvava, když budu muset."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33611 /* ~"Tak, že vás zmlátím do krvava, když budu muset."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33612 /* ~"Hele, Elyce nechce, aby byl někdo z vás zraněn... nemůžete si ten problém vyřešit bez toho, že ji vyděsíte k smrti?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33613 /* ~"Hele, Elyce nechce, aby byl někdo z vás zraněn... nemůžete si ten problém vyřešit bez toho, že ji vyděsíte k smrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #33614 /* ~"Ani já ne. Sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33592 /* ~"Co, seš bláznivej, kámo? Podívej se na sebe... možná seš fajn zjizvenej, ale z toho se nepodělám! A teď přestaň pyskovat a vodpal!"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33615 /* ~"Hele, Elyce nechce, aby byl někdo z vás zraněn... nemůžete si ten problém vyřešit bez toho, že ji vyděsíte k smrti?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33616 /* ~"Hele, Elyce nechce, aby byl někdo z vás zraněn... nemůžete si ten problém vyřešit bez toho, že ji vyděsíte k smrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #33617 /* ~"Fajn... sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33593 /* ~"Nemůžeš se starat vo svý?! Jdi a narvi si hlavu do hajzlu, vole!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33618 /* ~"Přestaňte bojovat, nebo vás oba zmlátím do krve."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33619 /* ~"Přestaňte bojovat, nebo vás oba zmlátím do krve."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33620 /* ~"Přestaňte bojovat, nebo vás oba zmlátím do krve."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33621 /* ~"Přestaňte bojovat, nebo vás oba zmlátím do krve."~ */ GOTO 5
  IF ~~ THEN REPLY #33622 /* ~"Fajn... sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33594 /* ~Muž si tě chvíli prohlíží. "Eh... no... Jsem si jistej, že najdeme nějakej jinej způsob, jak to vyřešit. A Elyce bude klidnější..."~ */
  IF ~~ THEN REPLY #33623 /* ~"Jsem rád, že to tak vidíte. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33595 /* ~Muž se na chvíli zamračil, pak kývl hlavou. "Máš pravdu, kámo... bojuju tady, aby dostala šanci vymanit se z vlivu svýho bráchy a pak ignoruju její prosby a chci, aby to bylo po mým." Povzdychl si. "Budeme si to muset vyřešit nějak jinak..."~ */
  IF ~~ THEN REPLY #33624 /* ~"Jsem rád, že to tak vidíte. Sbohem."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33596 /* ~Elycin milenec na tebe kývl a usmál se. "Díky, žes zastavil tu bitku. Seš fakt dobrej chlap, to je jistý."~ */
  IF ~~ THEN REPLY #33597 /* ~"Díky. Sbohem."~ */ EXIT
END
