// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33815 /* ~Atraktivní, spoře oblečená žena na tebe volá, zatímco jde k tobě. "Promiň mi, dobrý muži! Promiň! Vypadáš ztraceně, takže jestli mohu být tak smělá... nepotřebuješ služby průvodce? Pouze jeden měďák, pane..."~ */
  IF ~~ THEN REPLY #33824 /* ~"Co je průvodce?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33825 /* ~"Jistě... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33826 /* ~"Zrovna teď nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33816 /* ~"Potřebuješ služby průvodce, pane? Bude tě to stát pouhopuhý měďák..."~ */
  IF ~~ THEN REPLY #33827 /* ~"Co je průvodce?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33828 /* ~"Jistě... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33829 /* ~"Zrovna teď nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33817 /* ~"Průvodce, pane, který ti ukáže, jak se dostat na různá místa."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33830 /* ~"Dobře... tady je měďák."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33831 /* ~"Žádnou cestu ukázat nepotřebuju, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33818 /* ~"Děkuji ti, pane... je to dobře utracený meďák." Schovala minci. "Vedou odtud dvě brány - obě jsou na západě, jedna na severu a druhá na jihu. Zajímavá místa v této části jsou tetovací salón a krčma U Doutnajícího nebožtíka. A nakonec je tady místo zvané Doupě hrdlořezů... velmi nebezpečné místo, pane."~ */
  IF ~~ THEN REPLY #33832 /* ~"Kde je krčma U Doutnajícího nebožtíka?"~ */ GOTO 4
  IF ~~ THEN REPLY #33833 /* ~"Kde je tetovací salón?"~ */ GOTO 5
  IF ~~ THEN REPLY #33834 /* ~"Kam vede severozápadní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33835 /* ~"Kde je Doupě hrdlořezů?"~ */ GOTO 8
  IF ~~ THEN REPLY #33836 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33819 /* ~"Je to v úplném středu oblasti, pane... čtvercová budova s kupolovitou střechou. Jdi po nejjižnější cestě z východu na západ a uvidíš vstup směrem na jih."~ */
  IF ~~ THEN REPLY #33837 /* ~"Kde je tetovací salón?"~ */ GOTO 5
  IF ~~ THEN REPLY #33838 /* ~"Kam vede severozápadní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33839 /* ~"Kam vede jihozápadní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33840 /* ~"Kde je Doupě hrdlořezů?"~ */ GOTO 8
  IF ~~ THEN REPLY #33841 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33820 /* ~"Tetovač je v jižní části, pane. Kopulovitá budova s kovovou sítí. Vchod je jihozápadně."~ */
  IF ~~ THEN REPLY #33842 /* ~"Kde je krčma U Doutnajícího nebožtíka?"~ */ GOTO 4
  IF ~~ THEN REPLY #33843 /* ~"Kam vede severozápadní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33844 /* ~"Kam vede jihozápadní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33845 /* ~"Kde je Doupě hrdlořezů?"~ */ GOTO 8
  IF ~~ THEN REPLY #33846 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33821 /* ~"Do části Úlu, kde leží Márnice. Je tam také Bar Zapomnění, Spalovačský monument a Mauzoleum."~ */
  IF ~~ THEN REPLY #33847 /* ~"Kde je krčma U Doutnajícího nebožtíka?"~ */ GOTO 4
  IF ~~ THEN REPLY #33848 /* ~"Kde je tetovací salón?"~ */ GOTO 5
  IF ~~ THEN REPLY #33849 /* ~"Kam vede jihozápadní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33850 /* ~"Kde je Doupě hrdlořezů?"~ */ GOTO 8
  IF ~~ THEN REPLY #33851 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.2 6.2 8.3
  SAY #33822 /* ~"Brána vede do části Úlu, kde je Úřad pro dohled nad škůdci a nemocemi a také docela slušné tržiště."~ */
  IF ~~ THEN REPLY #33852 /* ~"Kde je krčma U Doutnajícího nebožtíka?"~ */ GOTO 4
  IF ~~ THEN REPLY #33853 /* ~"Kde je tetovací salón?"~ */ GOTO 5
  IF ~~ THEN REPLY #33854 /* ~"Kam vede severozápadní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33855 /* ~"Kde je Doupě hrdlořezů?"~ */ GOTO 8
  IF ~~ THEN REPLY #33856 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.3
  SAY #33823 /* ~Přikývla. "Je to skupina budov v severní části této oblasti, pane... měl by ses jí vyhnout. Pokud pochopitelně nehledáš rvačku."~ */
  IF ~~ THEN REPLY #33857 /* ~"Kde je krčma U Doutnajícího nebožtíka?"~ */ GOTO 4
  IF ~~ THEN REPLY #33858 /* ~"Kde je tetovací salón?"~ */ GOTO 5
  IF ~~ THEN REPLY #33859 /* ~"Kam vede severozápadní brána?"~ */ GOTO 6
  IF ~~ THEN REPLY #33860 /* ~"Kam vede jihozápadní brána?"~ */ GOTO 7
  IF ~~ THEN REPLY #33861 /* ~"To je všechno, co jsem chtěl vědět; sbohem."~ */ EXIT
END
