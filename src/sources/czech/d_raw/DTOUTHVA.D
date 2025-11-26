// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33670 /* ~Hlasitý vysmátý chlápek se k tobě přiloudal a rychle se uklonil. "Zdravím, kámo! Za pouhopouhej měďák můžeš mít mý služby průvodce. Kam tě můžu zavést?"~ */
  IF ~~ THEN REPLY #33678 /* ~"Co je průvodce?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33679 /* ~"Jistě... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33680 /* ~"Zrovna teď nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33671 /* ~Hlasitý vysmátý chlápek si rychle všiml, že ho sleduješ a uklonil se. "Zdravím, kámo! Za pouhopouhej měďák můžeš mít mý služby průvodce. Kam tě můžu zavést?"~ */
  IF ~~ THEN REPLY #33681 /* ~"Co je průvodce?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33682 /* ~"Jistě... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33683 /* ~"Zrovna teď nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33672 /* ~Muž zvedl obočí, pak pokrčil rameny. "Průvodce, kámo... ukážu ti cestu na jakýkoli místo tady v Úlu."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33684 /* ~"Dobře... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33685 /* ~"Žádnou cestu ukázat nepotřebuju, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33673 /* ~Muž skryl minci a uklonil se. "Tahle část Úlu má brány směrem na východ, sever a jihozápad, zajímavý místa zahrnujou Noclehárnu, kde se může unavenej chlápek vyspat."~ */
  IF ~~ THEN REPLY #33686 /* ~"Kde je Noclehárna?"~ */ GOTO 4
  IF ~~ THEN REPLY #33687 /* ~"Kam vede severní brána?"~ */ GOTO 5
  IF ~~ THEN REPLY #33688 /* ~"Kam vede východní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33689 /* ~"Kam vede jihozápadní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33690 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0
  SAY #33674 /* ~"Přímo uprostřed týdle části, kámo... dlouhá rovná budova, dveře vedou na jihovýchod. Dobrý místo pro schrupnutí."~ */
  IF ~~ THEN REPLY #33691 /* ~"Kam vede severní brána?"~ */ GOTO 5
  IF ~~ THEN REPLY #33692 /* ~"Kam vede východní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33693 /* ~"Kam vede jihozápadní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33694 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1
  SAY #33675 /* ~"Vede na Hadrníkovo náměstí, kámo... tam chrápe většina Sběračů."~ */
  IF ~~ THEN REPLY #33695 /* ~"Kde je Noclehárna?"~ */ GOTO 4
  IF ~~ THEN REPLY #33696 /* ~"Kam vede východní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33697 /* ~"Kam vede jihozápadní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33698 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2
  SAY #33676 /* ~"Do jiný části Úlu, kámo. Je tam Márnice, Bar Zapomnění, kam choděj chlastat Spalovači. A je tam mauzoleum a velkej Spalovačskej monument."~ */
  IF ~~ THEN REPLY #33699 /* ~"Kde je Noclehárna?"~ */ GOTO 4
  IF ~~ THEN REPLY #33700 /* ~"Kam vede severní brána?"~ */ GOTO 5
  IF ~~ THEN REPLY #33701 /* ~"Kam vede jihozápadní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33702 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2
  SAY #33677 /* ~"Do jiný části Úlu, kámo. Je tam Úřad pro dohled nad škůdci a nemocemi a velký tržiště."~ */
  IF ~~ THEN REPLY #33703 /* ~"Kde je Noclehárna?"~ */ GOTO 4
  IF ~~ THEN REPLY #33704 /* ~"Kam vede severní brána?"~ */ GOTO 5
  IF ~~ THEN REPLY #33705 /* ~"Kam vede východní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33706 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END
