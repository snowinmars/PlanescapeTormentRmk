// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38437 /* ~Tato ghúlka působí poněkud větší autoritou než ti kolem ní. Její oči se zdají čistší a také méně mrtvolné. "Mohu ti... pomoci, masso?"~ */
  IF ~~ THEN REPLY #38438 /* ~"Kdo jsi? Co tady děláš?"~ */ GOTO 1
  IF ~~ THEN REPLY #38439 /* ~"Co je tohle místo zač?"~ */ GOTO 2
  IF ~~ THEN REPLY #38440 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #38441 /* ~"Já? Já jssem... Alaina. Toto jssou moji ghúlové. Jssme pátrači a lovci. Hledáme větší teritoria... hledáme více *jídla*. A teď, když jssem odpověděla na tvé otázzzky... co tady děláš TY?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38442 /* ~"Hledám bronzovou kouli."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38443 /* ~"Hledám karafu s vodou."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38444 /* ~"Hledám kryptu se spoustou pastí."~ */ GOTO 5
  IF ~~ THEN REPLY #38445 /* ~"Jenom se tak procházím."~ */ GOTO 6
  IF ~~ THEN REPLY #38446 /* ~"Nemám páru."~ */ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.1 8.1
  SAY #38447 /* ~"Toto jssou Přemožené Národy. Toto je naše lovecké teritorium. Toto... je míssto kde my, lovci, vládneme. Cco tu chcceš?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38448 /* ~"Hledám bronzovou kouli."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38449 /* ~"Hledám karafu s vodou."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38450 /* ~"Hledám kryptu se spoustou pastí."~ */ GOTO 5
  IF ~~ THEN REPLY #38451 /* ~"Jenom se tak procházím."~ */ GOTO 6
  IF ~~ THEN REPLY #38452 /* ~"Nemám páru."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.2
  SAY #38453 /* ~"Bronzzovou... kouli? Tuhle věc jssme... nenašli. Hledej ve vzzdálených zzákoutích tohoto místa a možná najdeš co hledáš."~ */
  IF ~~ THEN REPLY #38454 /* ~"Mám ještě další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #38455 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.3
  SAY #38456 /* ~"Nenašli jssme v těchto mísstech zdroj vody, ale vícce na východ sse zdá být vlhčeji. Hledej tam a možná nalezzneš."~ */
  IF ~~ THEN REPLY #38457 /* ~"Mám ještě další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #38458 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 8.4
  SAY #38459 /* ~"Všude kolem náss jssou krypty, a my chráníme jejich obyvatele... neřeknu ti nic."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38460 /* ~"Je pro mě moc důležité, abych ji našel."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38461 /* ~"Je hrozně důležité, abych ji našel."~ */ GOTO 10
  IF ~~ THEN REPLY #38462 /* ~"No dobře. Aspoň mi tedy odpověz na něco jiného..."~ */ GOTO 8
  IF ~~ THEN REPLY #38463 /* ~"Když nic, tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #38464 /* ~"Tohle... není dobré míssto na procházzku. Mnoho nebezzpečí kolem. Ozzačili jssme bezzpečné hranice pomocí totemů... nevkročíš-li za ně, zůsstaneš v bezpečí. A dej ssi pozor na mísstní - jsou nebezpeční a hemží sse ve sstále větších počtech."~ */
  IF ~~ THEN REPLY #38465 /* ~"A jaké 'místní' máš na mysli?"~ */ GOTO 11
  IF ~~ THEN REPLY #38466 /* ~"Díky. Mám ještě další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #38467 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4
  SAY #38468 /* ~"Nemášš páru? Ty nemášš páru? Možná byss... měl raději odejít. Tohle míssto je... nebezzpečné... sstvořením z masa a kostí."~ */
  IF ~~ THEN REPLY #38469 /* ~"Nebezpečné? Jak nebezpečné?"~ */ GOTO 11
  IF ~~ THEN REPLY #38470 /* ~"Mám jenom pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #38471 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 4.0 5.2 6.1 7.1 9.0 10.0 11.0 12.0
  SAY #38472 /* ~"Já ... odpovím co půjde."~ */
  IF ~~ THEN REPLY #38473 /* ~"Kdo jsi? Co tady děláš?"~ */ GOTO 1
  IF ~~ THEN REPLY #38474 /* ~"Co mi můžeš říct o tomhle místě?~ */ GOTO 2
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38475 /* ~"Hledám bronzovou kouli."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38476 /* ~"Hledám karafu s vodou."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38477 /* ~"Hledám kryptu se spoustou pastí."~ */ GOTO 5
  IF ~~ THEN REPLY #38478 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #38479 /* ~Ghúlí velitelka si tě změří chladným pohledem. "Hledej na jihu a na východě. Neobtěžuj osstatní obyvatele těchto krypt, nebo budeš *trpět*."~ */
  IF ~~ THEN REPLY #38480 /* ~"Vřelé díky. Mám ještě pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #38481 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #38482 /* ~Ghúlí velitelka na tebe pohlédne s hrozbou v očích. "Mne *NEZAJÍMÁ*, jak je to důležité pro tebe, masňáku. Neřeknu ti *NIC*."~ */
  IF ~~ THEN REPLY #38483 /* ~"Dobře, dobře. Tak mi tedy aspoň odpověz na jiné otázky."~ */ GOTO 8
  IF ~~ THEN REPLY #38484 /* ~"Řekni mi to, nebo zemřeš."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38485 /* ~"Stejně díky za ochotu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.0
  SAY #38486 /* ~"Toto míssto bylo zamořeno... trocopotocacy, bílýmy, rohatými tvory ss bezzmezzným apetitem a krutou povahou. Také zzde našla domov sspoussta vargouillů a jejich počet neusstále rosste díky blázznům, kteří sse odváží proniknout tak hluboko do katakomb."~ */
  IF ~~ THEN REPLY #38487 /* ~"Aha... můžeš mi odpovědět ještě na něco jiného?"~ */ GOTO 8
  IF ~~ THEN REPLY #38488 /* ~"Díky za tip. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38489 /* ~"Ty jssi sse vrátil, hmm? Cco je to cco chceš?"~ */
  IF ~~ THEN REPLY #38490 /* ~"Chci odpověď na pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #38491 /* ~"Nic. Sbohem."~ */ EXIT
END
