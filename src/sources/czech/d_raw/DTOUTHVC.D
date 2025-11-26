// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVC~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33767 /* ~Otrhaný chlápek se k tobě přiblížil s opatrným úsměvem. "Nazdárek, tvrďáku... jak se vede? Sem místní průvodce, takže esli máš měďák, jsem tvůj muž, jestli potřebuješ někam nasměrovat."~ */
  IF ~~ THEN REPLY #33776 /* ~"Co je průvodce?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33777 /* ~"Jistě... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33778 /* ~"Zrovna teď nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33768 /* ~"Nazdárek, tvrďáku... jak se vede? Sem místní průvodce, takže esli máš měďák, jsem tvůj muž, jestli potřebuješ někam nasměrovat."~ */
  IF ~~ THEN REPLY #33779 /* ~"Co je průvodce?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33780 /* ~"Jistě... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33781 /* ~"Zrovna teď nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33769 /* ~"Hooo, u spoďárů Mocnosti... ty seš v Sigilu asi novej, co? Průvodce zkrátka ukazuje cestu, kámo."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33782 /* ~"Dobře... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33783 /* ~"Žádnou cestu ukázat nepotřebuju, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33770 /* ~Muž popadl minci a mrknul. "Správně! Tendle kus Úlu má dvě brány - jednu na sever a jednu na jihovýchod. Jestli se chceš porvat, je tady ulička na severovýchodě, kde se určitě popereš dosytosti. A taky tady máme Úřad pro dohled nad škůdci a nemocemi a taky docela fajn tržiště."~ */
  IF ~~ THEN REPLY #33784 /* ~"Kde je Úřad pro dozor nad škůdci a nemocemi?"~ */ GOTO 4
  IF ~~ THEN REPLY #33785 /* ~"Kde je Tržiště?"~ */ GOTO 5
  IF ~~ THEN REPLY #33786 /* ~"Kam vede severní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33787 /* ~"Kam vede jihovýchodní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33788 /* ~"Co je s tou uličkou, o které ses zmínil?"~ */ GOTO 8
  IF ~~ THEN REPLY #33789 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33771 /* ~"Uprostřed jižní půlky týdle části... má dveře na jih. Takže stačí jít po nejjižnější cestě z východu na západ a uvidíš to."~ */
  IF ~~ THEN REPLY #33790 /* ~"Kde je Tržiště?"~ */ GOTO 5
  IF ~~ THEN REPLY #33791 /* ~"Kam vede severní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33792 /* ~"Kam vede jihovýchodní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33793 /* ~"Co je s tou uličkou, o které ses zmínil?"~ */ GOTO 8
  IF ~~ THEN REPLY #33794 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33772 /* ~"V jižním zákrutu budovy tvaru L v severní části týdle oblasti. Dyž pudeš po nejsevernější cestě z východu na západ, uvidíš to. Spousta lidí a obchodníků tam je.~ */
  IF ~~ THEN REPLY #33795 /* ~"Kde je Úřad pro dozor nad škůdci a nemocemi?"~ */ GOTO 4
  IF ~~ THEN REPLY #33796 /* ~"Kam vede severní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33797 /* ~"Kam vede jihovýchodní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33798 /* ~"Co je s tou uličkou, o které ses zmínil?"~ */ GOTO 8
  IF ~~ THEN REPLY #33799 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33773 /* ~"Vede to do jiný části Úlu, kámo. Je tam noclehárna, jestli seš unavenej, nebo zraněnej. Zkrátka dyž se potřebuješ kapku prospat."~ */
  IF ~~ THEN REPLY #33800 /* ~"Kde je Úřad pro dozor nad škůdci a nemocemi?"~ */ GOTO 4
  IF ~~ THEN REPLY #33801 /* ~"Kde je Tržiště?"~ */ GOTO 5
  IF ~~ THEN REPLY #33802 /* ~"Kam vede jihovýchodní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33803 /* ~"Co je s tou uličkou, o které ses zmínil?"~ */ GOTO 8
  IF ~~ THEN REPLY #33804 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3
  SAY #33774 /* ~"Vede to do jiný části Úlu, kámo. Můžeš se tam nechat potetovat a pak je tam skvělá hospoda, U Doutnajícího nebožtíka."~ */
  IF ~~ THEN REPLY #33805 /* ~"Kde je Úřad pro dozor nad škůdci a nemocemi?"~ */ GOTO 4
  IF ~~ THEN REPLY #33806 /* ~"Kde je Tržiště?"~ */ GOTO 5
  IF ~~ THEN REPLY #33807 /* ~"Kam vede severní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33808 /* ~"Co je s tou uličkou, o které ses zmínil?"~ */ GOTO 8
  IF ~~ THEN REPLY #33809 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3
  SAY #33775 /* ~Muž pokrčil rameny. "Akorát místo, kde najdeš problémy a bitku... Vypadáš jako bitkář, tak jsem se o tom zmínil. Jak jsem řek, je to na severovýchod... takže tam radši nechoď, jestli nechceš mít problémy."~ */
  IF ~~ THEN REPLY #33810 /* ~"Kde je Úřad pro dozor nad škůdci a nemocemi?"~ */ GOTO 4
  IF ~~ THEN REPLY #33811 /* ~"Kde je Tržiště?"~ */ GOTO 5
  IF ~~ THEN REPLY #33812 /* ~"Kam vede severní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33813 /* ~"Kam vede jihovýchodní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33814 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END
