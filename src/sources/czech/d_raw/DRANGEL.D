// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRANGEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRANGEL~

IF ~  GlobalGT("Krystall","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #34502 /* ~"Zapsals jméno Prohnilýho Williama do Knihy Mrtvých, kámo. To znamená, že můžeš projít územím Ostrých andělů zadarmo."~ */
  IF ~~ THEN REPLY #34503 /* ~"Díky. Sbohem."~ */ DO ~BitSet("0301_Status","AR0301",BIT4)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #34504 /* ~Obyvatel uličky tě vítá s přehnanou zdvořilostí a hlubokou úklonou. "Zdravím tě, cizinče. Vybral sis skvělý den na průchod naším územím. Bude to pouze deset měděných mincí."~ */
  IF ~~ THEN REPLY #34505 /* ~"Deset? To je ale drzost!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34506 /* ~"Právě jsem zaplatil támhle těm chlápkům!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34507 /* ~"Deset? Dobře. Tady máš."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34508 /* ~"Už jsem zaplatil."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34509 /* ~Blufuj: "Už jsem to zaplatil."~ */ GOTO 6
  IF ~~ THEN REPLY #34510 /* ~"Budeš se muset se mnou pobít."~ */ GOTO 2
  IF ~~ THEN REPLY #34511 /* ~"Nejdřív mě budeš muset chytit."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.5 7.0 7.5
  SAY #34512 /* ~"Je to pouhých deset mincí. Je to naše území. Jsem si jist, že víš, že todle není místo pro slabochy. Přišels sem sám, dobrovolně. A teď zaplatíš, tak či tak: peníze nebo krev. Co si vybereš?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34513 /* ~"Peníze. Tady máš."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34514 /* ~"Krev."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34515 /* ~"Proč mě nezkusíš chytit?"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #34516 /* ~"Jo, ale to nejsou naši kámové. Shivové jsou naši smrtelní nepřátelé. A teď zaplatíš nám, nebo si lehneš na zem, v krvi."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34517 /* ~"Tak tu máš. Vem si ty prachy."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34518 /* ~"Ty umřeš první, příteli."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34519 /* ~"Proč mě nezkusíš chytit?"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0 6.0 7.2
  SAY #34520 /* ~"Máš díky Ostrých andělů. Jdi v míru, poutníče."~ */
  IF ~~ THEN REPLY #34521 /* ~"Díky. Sbohem."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #34522 /* ~Ostrý anděl se podíval na chvíli do stínu a udělal rukou znamení. Kývl. "Dobře. Jdi tedy. Příště uvidíme."~ */
  IF ~~ THEN REPLY #34523 /* ~"To jsem si jistý. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 7.4
  SAY #34524 /* ~Ostrý anděl se podíval na chvíli do stínu a udělal rukou znamení. Zavrtěl hlavou. "Ne. Tohle je poslední varování, které dostaneš. Zaplať deset měděnejch, nebo se nažereš hlíny."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34525 /* ~"Dobrá tedy. Vezmi si ty peníze."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34526 /* ~"Zkus mi je vzít, vole."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34527 /* ~"Nejdřív mě budeš muset chytit."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #34528 /* ~"Vrátil ses. Cena je stejná, jako předtím. Deset mincí, příteli, a zůstanou ti všechny tvé krásné jizvy, nepřidám ti ani jednu jedinou."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34529 /* ~"Deset mincí? To je ale drzost!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34530 /* ~"Právě jsem zaplatil támhle těm chlápkům!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34531 /* ~"Deset? Dobře. Tady máš."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34532 /* ~"Už jsem zaplatil."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34533 /* ~Blufuj: "Už jsem to zaplatil."~ */ GOTO 6
  IF ~~ THEN REPLY #34534 /* ~"Budeš se muset se mnou pobít."~ */ GOTO 2
  IF ~~ THEN REPLY #34535 /* ~"Nejdřív mě budeš muset chytit."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #34536 /* ~"Slyšel sem, že děláš něco pro Krystall. Dobře. Udělej to rychle, OK? A než půjdeš, musíš zaplatit mýto. Jelikož seš teď s náma, máš slevu: ubohejch pět měďáků."~ */
  IF ~~ THEN REPLY #34537 /* ~"Ale já pracuju pro Krystall!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34538 /* ~"Tady."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34539 /* ~"Právě jsem zaplatil támhle těm chlápkům!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34540 /* ~"Už jsem zaplatil."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34541 /* ~Blufuj: "Už jsem to zaplatil."~ */ GOTO 14
  IF ~~ THEN REPLY #34542 /* ~"Ty umřeš první, příteli."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34543 /* ~"Nejdřív mě budeš muset chytit."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34544 /* ~"Eště si nezabil Prohnilýho Williama, že? Takže zaplatíš pět měďáků, dokud mi Krystall neřekne jinak."~ */
  IF ~~ THEN REPLY #34545 /* ~"Ale já pracuju pro Krystall!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34546 /* ~"Tady."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34547 /* ~"Právě jsem zaplatil támhle těm chlápkům!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34548 /* ~"Už jsem zaplatil."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34549 /* ~Blufuj: "Už jsem to zaplatil."~ */ GOTO 14
  IF ~~ THEN REPLY #34550 /* ~"Ty umřeš první, příteli."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #34551 /* ~"Nejdřív mě budeš muset chytit."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #34552 /* ~"No jo. Já taky. Ale všichni se potřebujeme nažrat, takže teď nás budeš chvilku živit ty. Pět měďáků, nebo uvidíš."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34553 /* ~"Tady."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34554 /* ~"Ty umřeš první, příteli."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34555 /* ~"Nejdřív mě budeš muset chytit."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.0 14.0
  SAY #34556 /* ~"Bylo mi potěšení. Hodně štěstí s tím parchantem Prohnilým Williamem."~ */
  IF ~~ THEN REPLY #34557 /* ~"Jo, díky."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2
  SAY #34558 /* ~"Jo, budeš je muset zabít, abys to dostal zpátky. Ale to jsou oni a my jsme my. Zaplať, kámo."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34559 /* ~"Tady."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34560 /* ~"Zkus mi je vzít. Jsem připravenej."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34561 /* ~"V žádném případě. Jdu pryč."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.3
  SAY #34562 /* ~Ostrý anděl se otočil do stínu, aby si to ověřil. "Jó, omlouvám se. Můžeš jít."~ */
  IF ~~ THEN REPLY #34563 /* ~"Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.4
  SAY #34564 /* ~Ostrý anděl se otočil ke stínům, pak se obrátil zpět. "Ne. Zaplať, kámo, nebo nebudeš mít ani šanci dostat Prohnilýho Williama."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34565 /* ~"Tady."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34566 /* ~"Zabiju ho, jakmile si to vyřídím s tebou."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34567 /* ~"Nemyslím, že bys mě dokázal chytit."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END
