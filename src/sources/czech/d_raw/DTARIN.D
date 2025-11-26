// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTARIN~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33625 /* ~Je to jeden z dvojice mužů, kteří na sebe křičí a mávají zbraněmi. Vypadá to, že si každou chvíli skočí po krku.~ */
  IF ~~ THEN REPLY #33636 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #33637 /* ~Drž se od nich.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33626 /* ~Muž, tvář zrudlou z námahy vymýšlení nových nadávek, se k tobě otočil. "Co chceš? Nevidíš, že nemám čas, vole!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33638 /* ~"Tvá sestra mě požádala, ať vám dvěma zabráním v bitce."~ */ GOTO 4
  IF ~~ THEN REPLY #33639 /* ~"Zajímalo by mě, proč se vy dva rvete."~ */ GOTO 2
  IF ~~ THEN REPLY #33640 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33627 /* ~"To není tvůj problém, vole. Odpal!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33641 /* ~"Tvá sestra mě požádala, ať vám dvěma zabráním v bitce."~ */ GOTO 4
  IF ~~ THEN REPLY #33643 /* ~"Nemůžu vám nějak v tom sporu pomoct?"~ */ GOTO 3
  IF ~~ THEN REPLY #33644 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33628 /* ~"Ne, nemůžeš! Tenhle čubčí syn se k mý ségře chová jako k hovnu, a za to taky zaplatí! Není to tvůj problém, takže vodpal!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33645 /* ~"Tvá sestra mě požádala, ať vám dvěma zabráním v bitce."~ */ GOTO 4
  IF ~~ THEN REPLY #33646 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33629 /* ~Muž náhle ztichl. "Elyce tě zavolala, jo? Nevím, kdo jsi, kámo, ale není mi jasný, jak bys nás chtěl zastavit!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33647 /* ~"Tak, že vás zmlátím do krvava, když budu muset."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33648 /* ~"Tak, že vás zmlátím do krvava, když budu muset."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33650 /* ~"Tak, že vás zmlátím do krvava, když budu muset."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33652 /* ~"Tak, že vás zmlátím do krvava, když budu muset."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33654 /* ~"Hele, Elyce nechce, aby byl někdo z vás zraněn... nemůžete si ten problém vyřešit bez toho, že ji vyděsíte k smrti?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33656 /* ~"Hele, Elyce nechce, aby byl někdo z vás zraněn... nemůžete si ten problém vyřešit bez toho, že ji vyděsíte k smrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #33658 /* ~"Ani já ne. Sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33630 /* ~"Co, seš bláznivej, kámo? Podívej se na sebe... možná seš fajn zjizvenej, ale z toho se nepodělám! A teď přestaň pyskovat a vodpal!"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33659 /* ~"Hele, Elyce nechce, aby byl někdo z vás zraněn... nemůžete si ten problém vyřešit bez toho, že ji vyděsíte k smrti?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33660 /* ~"Hele, Elyce nechce, aby byl někdo z vás zraněn... nemůžete si ten problém vyřešit bez toho, že ji vyděsíte k smrti?"~ */ GOTO 6
  IF ~~ THEN REPLY #33661 /* ~"Fajn... sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33631 /* ~"Nemůžeš se starat vo svý?! Jdi a narvi si hlavu do hajzlu, vole!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33662 /* ~"Přestaňte bojovat, nebo vás oba zmlátím do krve."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33663 /* ~"Přestaňte bojovat, nebo vás oba zmlátím do krve."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33664 /* ~"Přestaňte bojovat, nebo vás oba zmlátím do krve."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33665 /* ~"Přestaňte bojovat, nebo vás oba zmlátím do krve."~ */ GOTO 5
  IF ~~ THEN REPLY #33666 /* ~"Fajn... sbohem."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33632 /* ~Muž si tě chvíli prohlíží. "Eh... no... Jsem si jistej, že najdeme nějakej jinej způsob, jak to vyřešit. A Elyce bude klidnější..."~ */
  IF ~~ THEN REPLY #33667 /* ~"Jsem rád, že to tak vidíte. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33633 /* ~Muž se na chvíli zamračil, pak kývl hlavou. "Máš pravdu, kámo... bojuju tady, abych bránil její zájmy a pak ignoruju její prosby a chci, aby to bylo po mým." Povzdychl si. "Budeme si to muset vyřešit nějak jinak..."~ */
  IF ~~ THEN REPLY #33668 /* ~"Jsem rád, že to tak vidíte. Sbohem."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33634 /* ~Elycin bratr na tebe kývl a usmál se. "Dík, žes jsi zastavil tu bitku. Seš fakt dobrej chlap, to je jistý."~ */
  IF ~~ THEN REPLY #33669 /* ~"Díky. Sbohem."~ */ EXIT
END
