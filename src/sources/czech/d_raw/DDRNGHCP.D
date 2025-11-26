// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38515 /* ~Tato ghúlka působí poněkud větší autoritou než ti kolem ní. Její oči se zdají čistší a také méně mrtvolné. "Mohu ti... pomoci, masso?"~ */
  IF ~~ THEN REPLY #38516 /* ~"Kdo jsi? Co tady děláš?"~ */ GOTO 1
  IF ~~ THEN REPLY #38565 /* ~"Co je tohle místo zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #38566 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0
  SAY #38517 /* ~"Já? Já jssem... Alaina. Toto jssou moji ghoulové. Jssme pátrači a lovci. Hledáme větší teritoria... hledáme více *jídla*. A teď když jssem odpověděla na tvé otázzzky... co tady děláš TY?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38518 /* ~"Hledám bronzovou kouli."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38561 /* ~"Hledám karafu s vodou."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38562 /* ~"Hledám kryptu se spoustou pastí."~ */ GOTO 6
  IF ~~ THEN REPLY #38563 /* ~"Jenom tak bloumám kolem."~ */ GOTO 9
  IF ~~ THEN REPLY #38564 /* ~"Nevím."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0
  SAY #38519 /* ~"Bronzzovou... kouli? Tuhle věc jssme... nenašli. Hledej ve vzzdálených zzákoutích tohoto místa a možná najdeš co hledáš."~ */
  IF ~~ THEN REPLY #38520 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #38560 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.2 7.0 8.0 9.1 10.0 11.1 12.0
  SAY #38521 /* ~"Já ... odpovím co půjde."~ */
  IF ~~ THEN REPLY #38522 /* ~"Kdo jsi? Co tady děláš?"~ */ GOTO 1
  IF ~~ THEN REPLY #38523 /* ~"Co mi můžeš říct o tomhle místě?~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38556 /* ~"Hledám bronzovou kouli."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38557 /* ~"Hledám karafu s vodou."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38558 /* ~"Hledám kryptu se spoustou pastí."~ */ GOTO 6
  IF ~~ THEN REPLY #38559 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.1
  SAY #38524 /* ~"Toto jssou Přemožené Národy. Toto je naše lovecké teritorium. Toto... je míssto kde my, lovci, vládneme. Co tu chceš?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38525 /* ~"Hledám bronzovou kouli."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38526 /* ~"Hledám karafu s vodou."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38530 /* ~"Hledám kryptu se spoustou pastí."~ */ GOTO 6
  IF ~~ THEN REPLY #38543 /* ~"Jenom se tak procházím."~ */ GOTO 9
  IF ~~ THEN REPLY #38551 /* ~"Nemám páru."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 4.1
  SAY #38527 /* ~"Nenašli jssme v těchto mísstech zdroj vody, ale vícce na východ sse zdá být vlhčeji. Hledej tam a možná nalezzneš."~ */
  IF ~~ THEN REPLY #38528 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #38529 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.4 4.2
  SAY #38531 /* ~"Všude kolem náss jssou krypty, a my chráníme jejich obyvatele... neřeknu ti nic."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38532 /* ~"Je pro mě moc důležité, abych ji našel."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38536 /* ~"Je hrozně důležité, abych ji našel."~ */ GOTO 8
  IF ~~ THEN REPLY #38541 /* ~"No dobře. Aspoň mi tedy odpověz na něco jiného..."~ */ GOTO 3
  IF ~~ THEN REPLY #38542 /* ~"Dobrá. Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #38533 /* ~Ghúlí velitelka si tě změří chladným pohledem. "Hledej na jihu a na východě. Neobtěžuj osstatní obyvatele těchto krypt, nebo budeš *trpět*."~ */
  IF ~~ THEN REPLY #38534 /* ~"Vřelé díky. Mám ještě pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #38535 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #38537 /* ~Ghúlí velitelka na tebe pohlédne s hrozbou v očích. "Mne *NEZAJÍMÁ*, jak je to důležité pro tebe, masňáku. Neřeknu ti *NIC*."~ */
  IF ~~ THEN REPLY #38538 /* ~"Dobře, dobře. Tak mi tedy aspoň odpověz na jiné otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #38539 /* ~"Řekni mi to, nebo zemřeš."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38540 /* ~"Stejně díky za ochotu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 4.3
  SAY #38544 /* ~"Tohle... není dobré míssto na procházzku. Mnoho nebezzpečí kolem. Ozzačili jssme bezzpečné hranice pomocí totemů... nevkročíš-li za ně, zůsstaneš v bezpečí. A dej ssi pozor na mísstní - jsou nebezpeční a hemží sse ve sstále větších počtech."~ */
  IF ~~ THEN REPLY #38545 /* ~"A jaké 'místní' máš na mysli?"~ */ GOTO 10
  IF ~~ THEN REPLY #38549 /* ~"Díky. Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #38550 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #38546 /* ~"Toto míssto bylo zamořeno... trocopotocacy, bílýmy, rohatými tvory ss bezzmezzným apetitem a krutou povahou. Také zzde našla domov sspoussta vargouillů a jejich počet neusstále rosste díky blázznům, kteří sse odváží proniknout tak hluboko do katakomb."~ */
  IF ~~ THEN REPLY #38547 /* ~"Aha... můžeš mi odpovědět ještě na něco jiného?"~ */ GOTO 3
  IF ~~ THEN REPLY #38548 /* ~"Díky za tip. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.4 4.4
  SAY #38552 /* ~"Nemášš páru? Ty nemášš páru? Možná byss... měl raději odejít. Tohle míssto je... nebezzpečné... sstvořením z masa a kostí."~ */
  IF ~~ THEN REPLY #38553 /* ~"Nebezpečné? Jak nebezpečné?"~ */ GOTO 10
  IF ~~ THEN REPLY #38554 /* ~"Mám jen pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #38555 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38567 /* ~"Ty jssi sse vrátil, hmm? Co je to, co chceš?"~ */
  IF ~~ THEN REPLY #38568 /* ~"Chtěl bych odpověď na pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #38569 /* ~"Nic. Sbohem."~ */ EXIT
END
