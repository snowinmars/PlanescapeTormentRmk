// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLYLFN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLYLFN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #18505 /* ~Ten chlapík připomínající lasičku poskakuje kolem smetí jako roztančený stín. Předstírá, že si tě nevšímá, ale ty si všimneš, že se po tobě dívá kradmým pohledem. Nejednou na tebe kývne: "Sss. Ty. Sss! Hej!"~ */
  IF ~~ THEN REPLY #18506 /* ~Zaútoč na něj.~ */ GOTO 58
  IF ~~ THEN REPLY #18507 /* ~Ignoruj muže, pokračuj dál v cestě.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #18508 /* ~Ten chlapík s pohledem lasice se ochomýtá kolem smetí jako roztřesený stín. Když spatří tebe a Morteho, kývne směrem k tobě: "Sss... Hej!... ta... lebka. Kde jsi ji sebral, hej? To je moje lebka! Vrať mi ji zpět."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #18509 /* ~Ten chlapík připomínající lasičku poskakuje kolem smetí jako roztančený stín. Když spatří Annah, zornice se mu rozšíří a od úst mu odkapávají sliny. "Sss... hej! Penízky za čísílko, jo? Dobře, dobře..." Olizuje si své odporné rty.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 108
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #18510 /* ~"Eh. Copak chtít?!"~ */
  IF ~~ THEN REPLY #18511 /* ~"Sháním informace"~ */ GOTO 23
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 4 // from:
  SAY #18512 /* ~"Co, jak se to má s tou lebkou?" Směje se sípavým hlasem.~ */
  IF ~~ THEN REPLY #18513 /* ~"Sháním informace..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #18514 /* ~"Ty zloději! Ty supe, ty prašivá strako, co jen krade a obírá ostatní! Dej mě lebku! Moje! Je moje!"~ */
  IF ~~ THEN REPLY #18515 /* ~"To není tvá lebka"~ */ GOTO 6
  IF ~~ THEN REPLY #18516 /* ~Pravda: "Pojď, vezmi si tu lebku."~ */ GOTO 9
  IF ~~ THEN REPLY #18517 /* ~Zaútoč na něj ve chvíli, kdy se nebrání: "Pojď, vezmi si tu lebku."~ */ GOTO 10
  IF ~~ THEN REPLY #18518 /* ~"Jak mi chceš dokázat, že tato lebka je tvoje?"~ */ GOTO 12
  IF ~~ THEN REPLY #18519 /* ~Pravda: "Pokud mi nějak dokážeš, že tahle lebka ti právem patří, vrátím ti ji. To je fér"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18520 /* ~"Odkoupím od tebe tu lebku. Bereš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18521 /* ~"Kdo jsi?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18522 /* ~"Zapomeň, žes ji kdy viděl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18523 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0 13.0 16.6 19.2
  SAY #18524 /* ~"Tak ty mně nazýváš *lhářem*? Lebka je *moje!* Moje!!" Brblá chvíli a koulí přitom zlostně očima. "Ty všiváku lupičská... dostanu tě."~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18525 /* ~"Dotkni se mně a budeš litovat, že ses narodil."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18526 /* ~"Vůbec to nezkoušej."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18527 /* ~"No jen to zkus. Uvidíš, co se stane."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18528 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18529 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18530 /* ~"Dotkni se mně a budeš litovat, že ses narodil."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18531 /* ~"Vůbec to nezkoušej."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18532 /* ~"No jen to zkus. Uvidíš, co se stane."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18533 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18534 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #18546 /* ~Muž na tebe zírá a blýská očima. Není si příliš jist svými šancemi - Brblá si něco, ale nic zatím nechystá. "Moje je lebka. Jsi zloděj. Zloděj. Kradeš..."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18547 /* ~"Ztrať se, parchante."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18548 /* ~"Ztrať se, parchante"~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~~ THEN REPLY #18549 /* ~Pravda: "Pojď, vezmi si tu lebku."~ */ GOTO 9
  IF ~~ THEN REPLY #18550 /* ~Zaútoč na něj ve chvíli, kdy se nebrání: "Pojď, vezmi si tu lebku."~ */ GOTO 10
  IF ~~ THEN REPLY #18551 /* ~"Jak mi chceš dokázat, že tato lebka je tvoje?"~ */ GOTO 12
  IF ~~ THEN REPLY #18552 /* ~Pravda: "Pokud mi nějak dokážeš, že tahle lebka ti právem patří, vrátím ti ji. To je fér"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18553 /* ~"Odkoupím od tebe tu lebku. Bereš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18554 /* ~"Kdo jsi?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18555 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18556 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.5 6.6 6.7
  SAY #18557 /* ~Muž na tebe zírá a blýská očima a překvapivě na tebe zaútočí.
~ */
  IF ~~ THEN REPLY #18558 /* ~Postav se útoku~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18559 /* ~Prchni~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.2 12.1 13.1 19.0
  SAY #18560 /* ~Suše se pochechtává a usmívá se. Jakmile se natáhne rukou po Mortem... *cvak* a chlapík má problémy s prstem. Vříská: "Aiggghhhh! Aighhh!!! *Zabiju* tě, *zabiju*!!!!!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.3 12.2 13.2 19.1
  SAY #18561 /* ~Suše se pochechtává a usmívá se. Jakmile se natáhne po Mortem, ještě dřív než stačíš zaútočit, Morte udělá *cvak* a chlapík má problémy. Vříská: "Aiggghhhh! Aighhh!!! *Zabiju* tě, *zabiju*!!!!!" ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18562 /* ~Muž kousající si bolestí ret, na tebe útočí.~ */
  IF ~~ THEN REPLY #18563 /* ~Postav se útoku~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18564 /* ~Prchni~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3 5.4 7.4 7.5 13.3 13.4
  SAY #18565 /* ~Dívá se na tebe, jako bys byl postižený. "Je jasně moje, to se rozumí samo sebou! Vrať tu lebku zpět, Hned!"~ */
  IF ~~ THEN REPLY #18566 /* ~"To není tvá lebka."~ */ GOTO 6
  IF ~~ THEN REPLY #18567 /* ~Pravda: "Pojď, vezmi si tu lebku."~ */ GOTO 9
  IF ~~ THEN REPLY #18568 /* ~Zaútoč na něj ve chvíli, kdy se nebrání: "Pojď, vezmi si tu lebku."~ */ GOTO 10
  IF ~~ THEN REPLY #18569 /* ~"Odkoupím od tebe tu lebku. Bereš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18570 /* ~"Kdo jsi?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18571 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18572 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.6 7.7 12.4
  SAY #18573 /* ~"Ta lebka je má, okamžitě mi ji vrať a já zapomenu, žes mi ji kdy ukradl " Brblá a jeho pohled tě probodává.~ */
  IF ~~ THEN REPLY #18574 /* ~"To není tvá lebka."~ */ GOTO 6
  IF ~~ THEN REPLY #18575 /* ~Pravda: "Pojď, vezmi si tu lebku."~ */ GOTO 9
  IF ~~ THEN REPLY #18576 /* ~Zaútoč na něj ve chvíli, kdy se nebrání: "Pojď, vezmi si tu lebku."~ */ GOTO 10
  IF ~~ THEN REPLY #18577 /* ~"Jak mi chceš dokázat, že tato lebka je tvoje?"~ */ GOTO 12
  IF ~~ THEN REPLY #18578 /* ~Pravda: "Pokud mi nějak dokážeš, že tahle lebka ti právem patří, vrátím ti ji. To je fér"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18579 /* ~"Odkoupím od tebe tu lebku. Bereš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18580 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18581 /* ~"Zapomeň, žes ji kdy viděl. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.5 7.6 12.3 13.5
  SAY #18582 /* ~S rozšířenýma očima a pootevřenými rty, odhalujícími řadu hnědých zubů, nasadí pokřivený úsměv. "Lebka... lebka mě stát *moc* peněz. Ty zaplatit? Pro mě lebka znamenat móóc."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 191
END

IF ~~ THEN BEGIN 15 // from:
  SAY #18583 /* ~Muž hněvivě zasyčí na Morteho: "Ty se mnou chceš přece jen mluvit?"
~ */
  IF ~~ THEN EXTERN ~DMORTE~ 192
END

IF ~~ THEN BEGIN 16 // from:
  SAY #18584 /* ~Muž se otočí k tobě, zuby vyceněné a pohled zuřivější než kdy předtím. "Tohle tě bude stát majlant..."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #18585 /* ~Dej mu měďák.~ */ DO ~TakePartyGold(1)
~ GOTO 17
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18586 /* ~Dej mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18587 /* ~Dej mu padesát měďáků.~ */ DO ~TakePartyGold(50)
~ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18588 /* ~Dej mu sto měďáků.~ */ DO ~TakePartyGold(100)
~ GOTO 18
  IF ~  PartyGoldGT(499)
~ THEN REPLY #18589 /* ~Dej mu pět set měďáků.~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  PartyGold(0)
~ THEN REPLY #18590 /* ~"Nemám měďáky."~ */ GOTO 19
  IF ~~ THEN REPLY #18591 /* ~"Zapomeň na nabídku. Tohle prostě není tvoje lebka, takže ji nedostaneš"~ */ GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #18592 /* ~"To je jen závdavek... a teď vysol zbytek a já půjdu svou cestou."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 193
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2 16.3 16.4
  SAY #18593 /* ~"Jsme vyrovnáni." Zaškaredí se. "I když jsi mě opět okradl..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 194
END

IF ~~ THEN BEGIN 19 // from: 16.5
  SAY #18594 /* ~"Tak mi vrať tu lebku, zloději! Dej ji zpět! Vrať mi ji, slyšíš!"~ */
  IF ~~ THEN REPLY #18595 /* ~Pravda: "Dobrá, dobrá. Vem si ji."~ */ GOTO 9
  IF ~~ THEN REPLY #18596 /* ~Zaútoč na něj, když se nebrání: "Dobrá. Tady máš."~ */ GOTO 10
  IF ~~ THEN REPLY #18597 /* ~"Ne. Není tvoje."~ */ GOTO 6
  IF ~~ THEN REPLY #18598 /* ~Zaútoč na něj. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #18599 /* ~"Nevadí... nastanou problémy, to si buď jistej. Problémy!"~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18600 /* ~"Nemysli si, že jsem ti zaplatil jenom proto, že bych se bál, nebo byl slabý... Mohl jsi taky skončit jako mrtvola."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18601 /* ~"Nemysli si, že jsem ti zaplatil jenom proto, že bych se bál, nebo byl slabý... Mohl jsi taky skončit jako mrtvola."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18602 /* ~"Nemysli si, že jsem ti zaplatil jenom proto, že bych se bál, nebo byl slabý... Mohl jsi taky skončit jako mrtvola."~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18603 /* ~"Nemysli si, že jsem ti zaplatil jenom proto, že bych se bál, nebo byl slabý... Mohl jsi taky skončit jako mrtvola."~ */ GOTO 22
  IF ~~ THEN REPLY #18604 /* ~"Vidím. Mám pár otázek"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18605 /* ~"Á, 'problémy'. Sbohem"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18606 /* ~"Á, 'problémy'. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18607 /* ~"Hmmm." Blýská očima, ale nic víc neříká.~ */
  IF ~~ THEN REPLY #18608 /* ~"Mám pár otázek"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18609 /* ~"Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18610 /* ~ "Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 20.3
  SAY #18611 /* ~"Ha! Běž si mlátit klapačkou někam jinam. Vysmahni. Špinavej zloději. Zloději kradačská..." Začne okolo tebe chodit.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18612 /* ~Odejdi.~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18613 /* ~Odejdi.~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.0 4.0 20.4 21.0 58.0 59.0
  SAY #18614 /* ~Šklebí se. "Každá rada drahá." Mne si žlutý palec o ukazovák, vymluvné to gesto. "Penízky?" Jeho oči jsou těkavé a neustále sjíždí pohledem k vašemu váčku s penězi, jako by do něj chtěl spadnout.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18615 /* ~Dej mu pár peněz.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18616 /* ~Hoď mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18617 /* ~Hoď mu deset měďáků k nohám.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18618 /* ~"Nic nedostaneš. Vyklop to ze sebe."~ */ GOTO 27
  IF ~~ THEN REPLY #18619 /* ~"Uh... proč máš žluté prsty?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18620 /* ~"Zapomeň ne to, že jsem se ptal. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18621 /* ~"Zapomeň ne to, že jsem se ptal. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 27.1 30.0
  SAY #18622 /* ~Usmívá se. "Rady nejsou *levné*. Jseš snad hluchej? *Poslouchej* mě, když s tebou mluvím."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18623 /* ~Hoď mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18624 /* ~Hoď mu deset měďáků k nohám.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18625 /* ~"Nic nedostaneš. Vyplivni ze sebe tu radu."~ */ GOTO 27
  IF ~~ THEN REPLY #18626 /* ~"Uh... proč máš žluté prsty?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18627 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18628 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 27.2 30.1
  SAY #18629 /* ~Chvíli studuje mince, potom na tebe zašilhá. "Něco bych věděl. Co chceš vědět?"~ */
  IF ~~ THEN REPLY #18630 /* ~"Řekni mi o Sigilu."~ */ GOTO 31
  IF ~~ THEN REPLY #18631 /* ~"Řekni mi o Sběračích"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18632 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18633 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18634 /* ~"Řekni mi o Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18635 /* ~"Nic, nevadí. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18636 /* ~"Nic, nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 24.1 27.3 30.2
  SAY #18637 /* ~"Mluv. Poslouchám, možná ti mohu něco říct..."~ */
  IF ~~ THEN REPLY #18638 /* ~"Řekni mi o Sigilu."~ */ GOTO 31
  IF ~~ THEN REPLY #18639 /* ~"Řekni mi o Sběračích"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18640 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18641 /* ~"Hledám deník, který jsem ztratil"~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18642 /* ~"Řekni mi o Mebbeth"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18643 /* ~"Nic, nevadí. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18644 /* ~"Nic, nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3 24.2 30.3
  SAY #18645 /* ~"Nic ze sebe klopit nebudu." Sleduje tě a usmívá se. "Já vím radu, ale ty *ne*. Ty máš prachy, proto ji budeš vědět také, chápeš?"~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18646 /* ~Chytni ho a zatřes s ním.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_3","GLOBALGood",-1)
~ GOTO 54
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18647 /* ~Dej mu pár peněz.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18648 /* ~Hoď mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18649 /* ~Hoď mu deset měďáků k nohám.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18650 /* ~"Uh... proč máš žluté prsty?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18651 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18652 /* ~


"Zapomeň na to, že jsem se ptal. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4 24.3 27.4
  SAY #18653 /* ~"Eh? Přijít znova?" Jeho oči se zúží až do štěrbin a úkosem  tě jimi pozoruje.~ */
  IF ~~ THEN REPLY #18654 /* ~"Když tak nad tím uvažuji, nechci se to dozvědět. Nevadí"~ */ GOTO 30
  IF ~~ THEN REPLY #18655 /* ~"Uh... proč máš žluté prsty?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18656 /* ~"Nic, nevadí. Sbohem"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18657 /* ~"Nic, nevadí. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #18658 /* ~"To je maličkost, kterou jsem sebral u mrtvoly, která byla v rozkladu."~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.0 29.0
  SAY #18659 /* ~"Nemysli na to... peníze za radu, chápeš? Prachy-prachy" Natahuje k tobě své pařáty.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18660 /* ~Dej mu pár peněz.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18661 /* ~Hoď mu pět měďáků..~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18662 /* ~Hoď mu deset měďáků k nohám.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18663 /* ~"Nic nedostaneš. Vyhoď ze sebe radu."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18664 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18665 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.0 26.0 33.2 34.1 35.1 39.0 40.0
  SAY #18666 /* ~"Toto zatracený město, ty hňupe... prstenec, prstenec, město v prstenci. Střed velkých prstenců."~ */
  IF ~~ THEN REPLY #18667 /* ~"Prozraď mi více o městě."~ */ GOTO 32
  IF ~~ THEN REPLY #18668 /* ~"A co tahle část?"~ */ GOTO 32
  IF ~~ THEN REPLY #18669 /* ~"Řekni mi o Sběračích"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18670 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18671 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18672 /* ~"Řekni mi o Mebbeth"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18673 /* ~"To je vše co jsem potřeboval vědět. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18674 /* ~"To je vše co jsem potřeboval vědět. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #18675 /* ~"Marníš můj čas a své prachy. Vyhazovat tolik prachů za odpovědi na své otázky."~ */
  IF ~~ THEN REPLY #18676 /* ~"Pověz mi o Sběračích"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18677 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18678 /* ~"Hledám svůj deník, který jsem ztratil."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18679 /* ~"Řekni mi o Mebbeth"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18680 /* ~"Najdu ho. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18681 /* ~"Najdu ho. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.1 26.1 31.2 32.0 39.1 40.1
  SAY #18682 /* ~"Ale?" Vypadá překvapeně. "Co je s nimi?"~ */
  IF ~~ THEN REPLY #18683 /* ~"Co udělají?"~ */ GOTO 34
  IF ~~ THEN REPLY #18684 /* ~"Jsi taky Sběrač?"~ */ GOTO 35
  IF ~~ THEN REPLY #18685 /* ~"Pověz mi něco o Sigilu."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18686 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18687 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18688 /* ~"Řekni mi o Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18689 /* ~"To je vše, co jsem potřeboval vědět. Sbohem"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18690 /* ~"To je vše, co jsem potřeboval vědět. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #18691 /* ~Kouká na tebe, jako bys byl postižený. "Posbírej mrtvoly. Vyhoď je na Sběračským místě a vem si za to pár měděnejch. Jo?"~ */
  IF ~~ THEN REPLY #18692 /* ~"Jsi taky Sběrač?"~ */ GOTO 35
  IF ~~ THEN REPLY #18693 /* ~"Pověz mi něco o Sigilu"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18694 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18695 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18696 /* ~"Řekni mi o Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18697 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18698 /* ~"To je vše, co jsem potřeboval vědět. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #18699 /* ~"Možná. Příležitostně. Proč se ptáš?"~ */
  IF ~~ THEN REPLY #18700 /* ~"Co dělají?"~ */ GOTO 34
  IF ~~ THEN REPLY #18701 /* ~"Pověz mi něco o Sigilu"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18702 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18703 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18704 /* ~"Řekni mi o Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18705 /* ~"To ne. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18706 /* ~"To ne. Sbohem"~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 26.2 31.3 32.1 33.3 34.2 35.2 39.2 40.2
  SAY #18707 /* ~Náhle zúží pohled. "Eh..." Pohodí hlavou a bedlivě si tě prohlíží. "Pharod... vím o něm, ale kecat o něm *není* levné. Dát tě do Knihy mrtvejch, ne, ne, to *není* levné."~ */
  IF ~~ THEN REPLY #18708 /* ~"Víš kde je?"~ */ GOTO 37
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18709 /* ~Nabídni mu dalších pět měďáků.~ */ GOTO 38
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18710 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18711 /* ~"Zapomeň na to, že jsem se ptal. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18712 /* ~Přikyvuje a prohlíží si tě. "Ta rada... to *nebude* levné."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18713 /* ~Nabídni mu dalších pět měďáků.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #18714 /* ~Rozhlíží se, potom se nakloní a šeptá ti do ucha: "Jdi do východní časti náměstí a čekej -- já za tebou do hodiny přijdu. Nechci být s tebou viděn. Žádné další otázky... Běž, běž!" Odchází...~ */
  IF ~~ THEN REPLY #18715 /* ~"Počkej-"~ */ GOTO 62
  IF ~~ THEN REPLY #18716 /* ~Nechej ho jít.~ */ GOTO 62
END

IF ~~ THEN BEGIN 39 // from: 25.4 26.4 31.5 32.3 33.5 34.4 35.4 40.3
  SAY #18717 /* ~"Špinavá jedovatá *čarodejnice!*" Odplivne si a rukou si udělá půlkruh nad srdcem (sigilský ekvivalent pokřižování). "Neštovice na tu nečistou babiznu! Ať ji *sta a sta* nemocí zhnisá vnitřnosti. Jestli si na ni chceš plivnout, má své (krysí) hnízdo v chatrči na Náměstí u těch prken vedoucích přes smetiště. Najdi ji tam, jestli chceš, ale pak už na mě nikdy nemluv!!"~ */
  IF ~~ THEN REPLY #18718 /* ~"Pověz mi o Sigilu."~ */ GOTO 31
  IF ~~ THEN REPLY #18719 /* ~"Pověz mi o Sběračích."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18720 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18721 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18722 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18723 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 25.3 26.3 31.4 32.2 33.4 34.3 35.3 39.3
  SAY #18724 /* ~"Eh... možná... možná... ne, ne. Neviděl jsem, neviděl jsem žádné knihy." ~ */
  IF ~~ THEN REPLY #18725 /* ~"Pověz mi o Sigilu."~ */ GOTO 31
  IF ~~ THEN REPLY #18726 /* ~"Pověz mi o Sběračích."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18727 /* ~"Hledám muže jménem Pharod"~ */ GOTO 36
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18728 /* ~"Řekni mi o Mebbeth.."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18729 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18730 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.7 6.3 6.8 7.0 7.8 12.5 13.6 20.5 21.1 22.0 23.5 24.4 25.5 26.5 27.5 28.2 30.4 31.6 32.4 33.6 34.5 35.5 36.2 39.4 40.4 58.1 59.1
  SAY #18731 /* ~Všimneš si, že Žlutoprstý stojí v tvojí blízkosti a jeho ruka vystřelí, jako kdyby ti chtěl otočit tvůj váček s penězi.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18732 /* ~Chyť ho za ruku.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18733 /* ~Chyť ho za ruku~ */ GOTO 42
  IF ~  Global("Yellow_PP","GLOBAL",0)
~ THEN REPLY #18734 /* ~Pozorně sleduj jeho pokus.~ */ DO ~GiveExperience(Protagonist,200)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
SetGlobal("Yellow_PP","GLOBAL",1)
TakePartyGold(5)
~ GOTO 57
  IF ~~ THEN REPLY #18735 /* ~"Co to děláš ?!?"~ */ GOTO 50
  IF ~~ THEN REPLY #18736 /* ~Zaútoč na něj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1 57.1
  SAY #18737 /* ~Uskočil dozadu a utíká!~ */
  IF ~~ THEN REPLY #18738 /* ~"Zatra..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 57.0
  SAY #18739 /* ~Chytáš ho za ruku. Žlutoprsťák vypadá překvapeně. "Ej! Ej! Co děláš! Nech!" Škube sebou, ale nedaří se mu vymanit se z tvého sevření.~ */
  IF ~~ THEN REPLY #18740 /* ~Pravda: "Chtěl jsi mě okrást. Za to tě zabiju."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18741 /* ~Bluf: "Chtěl jsi mě okrást. Za to tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.1 50.3
  SAY #18742 /* ~"Hej! Ej! Počkej? chvilku! Omyl, omyl! Můžeme to urovnat i bez toho, abysme do toho tahali Knihu mrtvejch!!"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18743 /* ~"Ušetřím tvůj život za pár informací"~ */ GOTO 45
  IF ~~ THEN REPLY #18744 /* ~"Dej mi vše, co máš a já tě nechám žít"~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18745 /* ~"Vypadni, nechci tě už nikdy vidět"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #18746 /* ~Rázně přikyvuje. "Ano, Ano, ptej se! Otázky, rychle!"~ */
  IF ~~ THEN REPLY #18747 /* ~"Řekni mi kde je Pharod"~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #18748 /* ~"Ej..." Vypadá nespokojeně. "To je drahá rada, Pharod... Úplateček by nebyl???"~ */
  IF ~~ THEN REPLY #18749 /* ~"Zapomínáš, do jaké ses dostal situace? Řekni mi to... teď."~ */ GOTO 47
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18750 /* ~Dej mu tři měděné.~ */ DO ~TakePartyGold(3)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #18751 /* ~"Eh... tedy, vím, že jeho osoba není tady,... ale je blízko, na dosah, jenom schovaná. Je chvíli tam, chvíli onde, pořád v pohybu... musí být nějaké místo, odkud vylézá a prochází. Někdo tady okolo by měl vědět, kde ta díra je... ale já to nejsem."~ */
  IF ~~ THEN REPLY #18752 /* ~Pravda: "Myslím si, že lžeš. Kápni božskou nebo tě zabiju"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_1","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #18753 /* ~Bluf: "Myslím si, že lžeš. Kápni božskou nebo tě zabiju"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_2","GLOBALLaw",-1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0 47.1
  SAY #18754 /* ~"Eh..." Olizuje si rty a rozhlíží se okolo. Tak tedy, tu... eh... je jakási brána, eh? Podívej se směrem k severozápadnímu rohu náměstí... Vsadím se, že to je tam, kde je spirála u konce. Jen nevím, jak se dostat skrz bránu."~ */
  IF ~~ THEN REPLY #18755 /* ~"A teď mi dej vše co máš."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18756 /* ~"Vypadni, nechci tě už nikdy vidět"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1 48.0
  SAY #18757 /* ~Přikyvuje. Strach se zračí v jeho očích, Žlutoprstý ti podává pár hrstí měďáků.~ */
  IF ~~ THEN REPLY #18758 /* ~"Vypadni, nechci tě už nikdy vidět"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 41.3 57.2
  SAY #18759 /* ~Mračí se na tebe, jako bys byl nějaký pomatený. "Eh? Co?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18760 /* ~"Proč mne okrádáš? Dám ti co potřebuješ."~ */ EXTERN ~DMORTE~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18761 /* ~"Proč mne okrádáš? Dám ti co potřebuješ."~ */ GOTO 51
  IF ~~ THEN REPLY #18762 /* ~Pravda: "Chtěl jsi mě okrást. Za to tě zabiju."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18763 /* ~Bluf: "Chtěl jsi mě okrást. Za to tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #18765 /* ~"Chtěl jsi mě okrást. Vypadni, nechci tě už nikdy vidět"
~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #18764 /* ~"Zapomeň na to. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #18766 /* ~Žlutoprstý na tebe nedůvěřivě zírá. "Nějaké peníze by se mi hodily... skoro hladovím, hm, já... život v ulicích Úlu není příliš příjemný."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18767 /* ~Dej mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 53
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18768 /* ~Dej mu deset měďáků.~ */ DO ~TakePartyGold(10)
~ GOTO 53
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18769 /* ~Dej mu padesát měďáků.~ */ DO ~TakePartyGold(50)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18770 /* ~Dej mu sto měďáků.~ */ DO ~TakePartyGold(100)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #18771 /* ~"Beru to zpět. Odejdi a doufám že tě už nikdy znova nepotkám."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #18772 /* ~Žlutoprstý na tebe nedůvěřivě zírá. "Nějaké peníze by se mi hodily... skoro hladovím, hm, já... život v ulicích Úlu není příliš příjemný."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 196
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 51.3
  SAY #18773 /* ~"Eh... děkuji mnohokráte. Tys tak velkorysý. Ať se tvé osobě vyhýbá stín "Paní"."~ */
  IF ~~ THEN REPLY #18774 /* ~"Nepokoušej se mně znova oloupit. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 27.0
  SAY #18775 /* ~Tvé ruce vystřelily jako blesk a chytily ho za jeho špinavé hadry - je lehoučký, nedělá ti problém zvednout ho do vzduchu a třást s ním. "Aaaah! Dám, dám! Jen mě pusť zase dolů!"~ */
  IF ~~ THEN REPLY #18776 /* ~Hoď ho zpátky na zem.~ */ GOTO 55
  IF ~~ THEN REPLY #18777 /* ~Postav ho zpět na zem, ale nenechej ho odejít.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #18778 /* ~Poslal jsi ho k zemi, ale než stačil dopadnout, obratně se ve vzduchu přetočil na nohy a dal se na útěk!~ */
  IF ~~ THEN REPLY #18779 /* ~"Zatra..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #18780 /* ~Když ho pokládáš zpět na zem, uštědřuje ti pořádný kopanec do holeni; pustil jsi ho a než ses stačil vzpamatovat, dal se na útěk.~ */
  IF ~~ THEN REPLY #18781 /* ~"Zatra..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 41.2
  SAY #18782 /* ~Sleduješ přesně, jak se jeho prsty pomalu noří do tvého váčku s penězi... a zase jdou ven, pravděpodobně i s několika mincemi. I přes tu rychlost si uvědomuješ, že v tom má určitou praxi a také víš, že s určitou praxí bys to hravě zvládl i ty.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18783 /* ~Chyť ho za ruku.
~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18784 /* ~Chyť ho za ruku.~ */ GOTO 42
  IF ~~ THEN REPLY #18785 /* ~"Copak to děláš?"~ */ GOTO 50
  IF ~~ THEN REPLY #18786 /* ~Zaútoč ne něj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66861 /* ~Kašli na to, jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.0
  SAY #18787 /* ~"Vidím že na mě koukáš... copak chceš? Hm?"~ */
  IF ~~ THEN REPLY #18788 /* ~"Mám pár otázek"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18789 /* ~"Nic. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18790 /* ~"Nic. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #18791 /* ~"Ej,..." Otočí se k tobě. "Vidím, že si mně prohlížíš... co potřebuješ? hm?"~ */
  IF ~~ THEN REPLY #18792 /* ~"Mám pár otázek"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18793 /* ~"Nic. Sbohem."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18794 /* ~"Nic. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #18795 /* ~"Ej,..." Otočil se k tobě a zaregistroval Morteho. "Ah, hele lebka. To je má lebka! Má, rozuměls? Davaj hezky zpátky."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF ~~ THEN BEGIN 61 // from:
  SAY #54287 /* ~Žlutoprst jde pryč, něco si smutně mumlá pod vousy.~ */
  IF ~~ THEN REPLY #54288 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 38.0 38.1
  SAY #54786 /* ~Sleduješ, jak jde Žlutoprst pryč. Máš pocit, že už ho jen tak neuvidíš.~ */
  IF ~~ THEN REPLY #54787 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END
