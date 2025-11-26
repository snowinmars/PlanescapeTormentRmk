// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33707 /* ~Usmívající se žena středního věku se přihnala k tobě. "Hoj, pane! Za ubohej měďák ti můžu nabídnout svý služby jako průvodce. Kam potřebuješ jít?"~ */
  IF ~~ THEN REPLY #33717 /* ~"Co je průvodce?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33718 /* ~"Jistě... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33719 /* ~"Zrovna teď nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33708 /* ~Usmívající se žena středního věku ti zamávala, když jsi se přiblížil.  "Hoj, pane! Za ubohej měďák ti můžu nabídnout svý služby jako průvodce. Kam potřebuješ jít?"~ */
  IF ~~ THEN REPLY #33720 /* ~"Co je průvodce?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33721 /* ~"Jistě... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33722 /* ~"Zrovna teď nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33709 /* ~Žena se zatvářila skepticky, pak pokrčila rameny. "Průvodce je zkrátka průvodce, pane. Můžu ti ukázat cestu na jednotlivý místa v Úlu."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33723 /* ~"Dobře... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33724 /* ~"Žádnou cestu ukázat nepotřebuju, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33710 /* ~Žena skryla minci a uklonila se. "Tahle část Úlu má brány, které vedou na západ a jih. Důležitá místa jsou Márnice, Bar Zapomnění, Spalovačský monument a Mauzoleum. A taky bych ti doporučovala, aby ses nepřibližoval k uličce, která vede na jihozápad, je plná nebezpečných grázlů."~ */
  IF ~~ THEN REPLY #33725 /* ~"Kde je Márnice?"~ */ GOTO 4
  IF ~~ THEN REPLY #33726 /* ~"Kde je Bar Zapomnění?"~ */ GOTO 5
  IF ~~ THEN REPLY #33727 /* ~"Kde je Monument?"~ */ GOTO 6
  IF ~~ THEN REPLY #33728 /* ~"Kde je Mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33729 /* ~"Kam vede západní brána?"~ */ GOTO 8
  IF ~~ THEN REPLY #33730 /* ~"Kam vede východní brána?"~ */ GOTO 9
  IF ~~ THEN REPLY #33731 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0 9.0
  SAY #33711 /* ~"Márnice je ta velká budova na severovýchodě. Spalovači tě ale nepustí dovnitř, pokud s nima nemáš ňákej kšeft. Nebo pokud nejsi mrtvej." Usmála se na tebe.~ */
  IF ~~ THEN REPLY #33732 /* ~"Kde je Bar Zapomnění?"~ */ GOTO 5
  IF ~~ THEN REPLY #33733 /* ~"Kde je Monument?"~ */ GOTO 6
  IF ~~ THEN REPLY #33734 /* ~"Kde je Mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33735 /* ~"Kam vede západní brána?"~ */ GOTO 8
  IF ~~ THEN REPLY #33736 /* ~"Kam vede východní brána?"~ */ GOTO 9
  IF ~~ THEN REPLY #33737 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33712 /* ~"Je to v jihozápadním rohu týhle oblasti. Budova se dveřmi na jihovýchod. Shrnutej Prach je jedna z bezpečnějších, tišších hospod tady v Úlu."~ */
  IF ~~ THEN REPLY #33738 /* ~"Kde je Márnice?"~ */ GOTO 4
  IF ~~ THEN REPLY #33739 /* ~"Kde je Monument?"~ */ GOTO 6
  IF ~~ THEN REPLY #33740 /* ~"Kde je Mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33741 /* ~"Kam vede západní brána?"~ */ GOTO 8
  IF ~~ THEN REPLY #33742 /* ~"Kam vede východní brána?"~ */ GOTO 9
  IF ~~ THEN REPLY #33743 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2 9.1
  SAY #33713 /* ~"Směrem doprostřed severní půlky týhle oblasti... je to něco jako obezděný nádvoří, s průchodem v každý zdi. Většinou je na jihovýchodě kupa Spalovačů.~ */
  IF ~~ THEN REPLY #33744 /* ~"Kde je Márnice?"~ */ GOTO 4
  IF ~~ THEN REPLY #33745 /* ~"Kde je Bar Zapomnění?"~ */ GOTO 5
  IF ~~ THEN REPLY #33746 /* ~"Kde je Mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33747 /* ~"Kam vede západní brána?"~ */ GOTO 8
  IF ~~ THEN REPLY #33748 /* ~"Kam vede východní brána?"~ */ GOTO 9
  IF ~~ THEN REPLY #33749 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3 9.2
  SAY #33714 /* ~"Mauzoleum je v severozápadním rohu týhle oblasti. Velká stará čtvercová budova, vypadá jako věž."~ */
  IF ~~ THEN REPLY #33750 /* ~"Kde je Márnice?"~ */ GOTO 4
  IF ~~ THEN REPLY #33751 /* ~"Kde je Bar Zapomnění?"~ */ GOTO 5
  IF ~~ THEN REPLY #33752 /* ~"Kde je Monument?"~ */ GOTO 6
  IF ~~ THEN REPLY #33753 /* ~"Kam vede západní brána?"~ */ GOTO 8
  IF ~~ THEN REPLY #33754 /* ~"Kam vede východní brána?"~ */ GOTO 9
  IF ~~ THEN REPLY #33755 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3 9.3
  SAY #33715 /* ~"Další kus Úlu, pane. Je tam noclehárna, pokud jsi unavenej a potřebuješ si odpočinout."~ */
  IF ~~ THEN REPLY #33756 /* ~"Kde je Márnice?"~ */ GOTO 4
  IF ~~ THEN REPLY #33757 /* ~"Kde je Bar Zapomnění?"~ */ GOTO 5
  IF ~~ THEN REPLY #33758 /* ~"Kde je Monument?"~ */ GOTO 6
  IF ~~ THEN REPLY #33759 /* ~"Kde je Mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33760 /* ~"Kam vede východní brána?"~ */ GOTO 9
  IF ~~ THEN REPLY #33761 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.5 4.4 5.4 6.4 7.4 8.4
  SAY #33716 /* ~"Jenom další část Úlu, pane. Je tam tetovací salón a krčma U Doutnajícího nebožtíka. Hromada rabiátů tam pobíhá, je jich tam celej jeden velkej barák."~ */
  IF ~~ THEN REPLY #33762 /* ~"Kde je Márnice?"~ */ GOTO 4
  IF ~~ THEN REPLY #33763 /* ~"Kde je Monument?"~ */ GOTO 6
  IF ~~ THEN REPLY #33764 /* ~"Kde je Mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33765 /* ~"Kam vede západní brána?"~ */ GOTO 8
  IF ~~ THEN REPLY #33766 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END
