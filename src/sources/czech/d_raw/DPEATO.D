// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPEATO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPEATO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58706 /* ~Vidíš mladíka ve špinavých šatech. Opatrně tě sleduje.~ */
  IF ~~ THEN REPLY #58707 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58708 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58709 /* ~"Co chceš?" Nervózně se rozhlíží kolem.~ */
  IF ~~ THEN REPLY #58710 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58711 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0 5.0 6.1 7.0 8.1 9.1 10.3 11.2 12.2 13.2 15.2 16.1 17.0 19.0
  SAY #58712 /* ~"Co chceš vědět?"~ */
  IF ~~ THEN REPLY #58713 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #58714 /* ~"Proč jsi tady?"~ */ GOTO 6
  IF ~~ THEN REPLY #58715 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~~ THEN REPLY #58716 /* ~"Hledám devu, prý by tady někde měl být."~ */ GOTO 14
  IF ~~ THEN REPLY #58717 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58718 /* ~Než odpověděl, zaváhal. "Na co ti to bude?"~ */
  IF ~~ THEN REPLY #58719 /* ~"Rád vím, s kým mluvím."~ */ GOTO 4
  IF ~~ THEN REPLY #58720 /* ~"Nech toho, nebo to z tebe vymlátím."~ */ GOTO 5
  IF ~~ THEN REPLY #58721 /* ~"To nic, Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58722 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58723 /* ~"Jsem Peato." Dívá se na tebe znuděně.~ */
  IF ~~ THEN REPLY #58724 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58725 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58726 /* ~Po jeho tváři přejel naštvaný výraz. Otevřel ústa, aby ti něco řekl, pak si ale všiml tvých jizev a rychle se stáhnul. "Sorry, jmenuju se Peato."~ */
  IF ~~ THEN REPLY #58727 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58728 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #58729 /* ~"Chytli mě, když jsem si *pučoval* pár věcí od jednoho obchodníka. Nebyl z toho moc nadšenej a hodil mě sem."~ */
  IF ~~ THEN REPLY #58730 /* ~"Takže jsi zloděj."~ */ GOTO 7
  IF ~~ THEN REPLY #58731 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58732 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58733 /* ~Dívá se na tebe naštvaně. "Řek bych, že se to tak dá říct."~ */
  IF ~~ THEN REPLY #58734 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58735 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58736 /* ~"Odpal, vole. Už tě mám dost." Odfrkl si. "Připadám ti snad jako turistický průvodce?"~ */
  IF ~~ THEN REPLY #58737 /* ~"Ne, připadáš mi jako někdo z vážnými zdravotními problémy."~ */ GOTO 9
  IF ~~ THEN REPLY #58738 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58739 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58740 /* ~Zmateně se podíval. "O čem to mluvíš? Já nemám žádné zdravotní problémy."~ */
  IF ~~ THEN REPLY #58741 /* ~"Budeš mít, jestli mi neodpovíš."~ */ GOTO 10
  IF ~~ THEN REPLY #58742 /* ~"To nic, Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58743 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58744 /* ~Nakrčil se a málem po tobě skočil, ale pak si to rozmyslel. "Tohle je vězení. Je rozdělené do tří prstenců, vnější, centrální a vnitřní."~ */
  IF ~~ THEN REPLY #58745 /* ~"Pověz mi o vnějším prstenci."~ */ GOTO 11
  IF ~~ THEN REPLY #58746 /* ~"Pověz mi o centrálním prstenci."~ */ GOTO 12
  IF ~~ THEN REPLY #58747 /* ~"Pověz mi o vnitřním prstenci."~ */ GOTO 13
  IF ~~ THEN REPLY #58748 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58749 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #58750 /* ~"Vnější prstenec, to je tady. Většinou jsou tady zloději a tak, většinou jenom malé ryby."~ */
  IF ~~ THEN REPLY #58751 /* ~"Pověz mi o centrálním prstenci."~ */ GOTO 12
  IF ~~ THEN REPLY #58752 /* ~"Pověz mi o vnitřním prstenci."~ */ GOTO 13
  IF ~~ THEN REPLY #58753 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58754 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 13.1
  SAY #58755 /* ~"Centrální prstenec je pro ty nebezpečnější. Rváči, grázlové, lidi, kteří někoho zabili nešťastnou náhodou nebo v záchvatu. Takový tam bývaj zavření."~ */
  IF ~~ THEN REPLY #58756 /* ~"Pověz mi o vnějším prstenci."~ */ GOTO 11
  IF ~~ THEN REPLY #58757 /* ~"Pověz mi o vnitřním prstenci."~ */ GOTO 13
  IF ~~ THEN REPLY #58758 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58759 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1
  SAY #58760 /* ~"Vnitřní prstenec je pro ty nebezpečné. Znásilňovači, vrahové a nepřátelé státu. Například jeden černoch jménem Bobby Dean."~ */
  IF ~~ THEN REPLY #58761 /* ~"Pověz mi o vnějším prstenci."~ */ GOTO 11
  IF ~~ THEN REPLY #58762 /* ~"Pověz mi o centrálním prstenci."~ */ GOTO 12
  IF ~~ THEN REPLY #58763 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58764 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.3
  SAY #58765 /* ~"Myslíš Triase." Zamračil se a na chvíli se dívá stranou. "Ano, je tady dole. Bohužel pro nás."~ */
  IF ~~ THEN REPLY #58766 /* ~"Proč to říkáš?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58767 /* ~"Stráže nás používají jako pracovní sílu pro rozšiřování vězení. Vždycky když potřebujou novou místnost, my ji vyhrabeme. Jednou se kopáči prohrabali do nové oblasti a tam našli Triase." Odmlčel se a stáhl obličej v úšklebku. "Brzy potom tady propuknula morová epidemie."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58768 /* ~"Ano. O tom jsem slyšel. Jak zlé to bylo?"~ */ GOTO 16
  IF ~~ THEN REPLY #58769 /* ~"Mor?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #58770 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58771 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.0
  SAY #58772 /* ~"Zlé... asi stovka mrtvých a spousta nakažených." Odmlčel se." Teď už to vypadá, že je to pod kontrolou. V poslední době nebyly žádné nové případy."~ */
  IF ~~ THEN REPLY #58773 /* ~"Aha. Takže kde najdu Triase?"~ */ GOTO 17
  IF ~~ THEN REPLY #58774 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58775 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58776 /* ~Zavrtěl hlavou. "Nevím, nebyl jsem v té části. Hledej kolem, časem to najdeš."~ */
  IF ~~ THEN REPLY #58777 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58778 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY #58779 /* ~Pokýval hlavou. "Ano, zlá nemoc. Zasáhla nás hned poté, co jsme otevřeli Triasovu komnatu. Šířila se jako oheň."~ */
  IF ~~ THEN REPLY #58780 /* ~"Jak zlé to bylo?"~ */ GOTO 16
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #58781 /* ~Vidíš Peata, zloděje. "Ahoj. Co potřebuješ?"~ */
  IF ~~ THEN REPLY #58782 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58783 /* ~"Nic, sbohem."~ */ EXIT
END
