// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~ATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34604 /* ~"Malej ptáček se ztratil, eh? Malej ptáček chce projít, malej ptáček bude muset platit."~ */
  IF ~~ THEN REPLY #34605 /* ~"Kolik?"~ */ GOTO 1
  IF ~~ THEN REPLY #34606 /* ~"Jestli chceš moje peníze, budeš mi je muset vzít násilím."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34607 /* ~"Nejdřív mě budeš muset chytit."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34608 /* ~"Deset drobnejch, můj drahý příteli!"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34609 /* ~"Tady máš."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34610 /* ~"Tolik nemám."~ */ GOTO 3
  IF ~~ THEN REPLY #34611 /* ~"Zapomeň na to. Dostaneš je jenom přes moji mrtvolu."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34612 /* ~"Nejdřív mě budeš muset chytit!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.0
  SAY #34613 /* ~Grázl se hluboce, posměšně uklonil. "Doufám, že spolu brzy zase uzavřeme obchod."~ */
  IF ~~ THEN REPLY #34614 /* ~"Jo, to určitě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #34615 /* ~Grázl předvedl šokovaný výraz. "V tom případě si to budu muset vybrat v tvojí krvi. Sbohem, kamaráde."~ */
  IF ~~ THEN REPLY #34616 /* ~"Hej, počkej..."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #34617 /* ~"Pojďme."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #34618 /* ~"Malej ptáček se vrátil domů, že? Přišel nakrmit zbytek hnízda?"~ */
  IF ~~ THEN REPLY #34619 /* ~"O čem to mluvíš?"~ */ GOTO 5
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34620 /* ~"Ano. Tady máš."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34621 /* ~"Ne. Přišel jsem tě zabít."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34622 /* ~Jeho tvář vytvořila parodii úzkosti. "Tím chceš říct, že už jsi zapomněl? Oh. Zaplatíš mi deset měďáků, když chceš projít po mý ulici. Jasný? Tak zaplať."~ */
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34623 /* ~"Tak tu máš."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34624 /* ~"Budeš se mnou muset bojovat."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34625 /* ~"Nemůžeme se nějak dohodnout?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #34626 /* ~"Promiň, kámo. Máme pravidla a ty sis vybral platbu v krvi. Pozdravuj ode mě tvou Mocnost."~ */
  IF ~~ THEN REPLY #34627 /* ~Bojuj s ním.~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34628 /* ~Uteč.~ */ DO ~Enemy()
~ EXIT
END
