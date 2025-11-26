// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMODRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMODRON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #2980 /* ~Vidíš krychli se dvěma rukama, dvěma nohama a malými křidélky na stranách. Ve předu krychle je pohyblivý obličej. Když ses přiblížil, stvoření na tebe zaostřilo oči.~ */
  IF ~~ THEN REPLY #2981 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #44710 /* ~Ignoruj stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44711 /* ~"Zdravím." Stvoření mluví monotónním bezpohlavním hlasem.~ */
  IF ~~ THEN REPLY #44712 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44713 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 6.1 7.2 8.1 9.1 10.1 11.1 12.0 13.1 14.1
  SAY #44714 /* ~Stvoření se na tebe dál prázdně dívá. "Vyslov svou otázku."~ */
  IF ~~ THEN REPLY #44715 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #44716 /* ~"Co jsi zač?"~ */ GOTO 7
  IF ~~ THEN REPLY #44717 /* ~"Co jsi zač?"~ */ GOTO 10
  IF ~~ THEN REPLY #44718 /* ~"Co tady děláš?"~ */ GOTO 13
  IF ~~ THEN REPLY #44719 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44720 /* ~"My jsme modron."~ */
  IF ~~ THEN REPLY #44721 /* ~"Jmenuješ se Modron?"~ */ GOTO 4
  IF ~~ THEN REPLY #44722 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44723 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44724 /* ~"My jsme modron. My nemáme jméno. My jsme modron. Vše, co zde vidíš, je modron. Jsme jedním."~ */
  IF ~~ THEN REPLY #44725 /* ~"Dobrá. Vy jste všichni modroni, ale jak se jmenuje *tenhle* modron, ten s kterým mluvím?"~ */ GOTO 5
  IF ~~ THEN REPLY #44726 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44727 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #44728 /* ~Modron ze sebe vydal několik cvakavých zvuků. Na tváři se mu objevil bolestný výraz. "My... já..." Sklopil pohled a znovu to v něm zarachotilo. "My jsme modron. Nemáme žádnou další identifikaci kromě toho, že vše je modron. Nemáme jméno."~ */
  IF ~~ THEN REPLY #44729 /* ~"Tak jak od sebe odlišujete jednotlivé modrony?"~ */ GOTO 6
  IF ~~ THEN REPLY #44730 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44731 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44732 /* ~Modron chvíli přemýšlí nad tvou otázkou. "My víme. My jsme modron. Jsme částí celku. Stejně jako ty rozeznáš prsty jako část ruky, my rozeznáme každou část celku."~ */
  IF ~~ THEN REPLY #44733 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44734 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44735 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #44736 /* ~"My jsme modron, jsme quadrone."~ */
  IF ~~ THEN REPLY #44737 /* ~"Co je to modron?"~ */ GOTO 8
  IF ~~ THEN REPLY #44738 /* ~"Co je to quadrone?"~ */ GOTO 9
  IF ~~ THEN REPLY #44739 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44740 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #44741 /* ~"My jsme modron. Tak je identifikovaná naše rasa."~ */
  IF ~~ THEN REPLY #44742 /* ~"Tak co je to quadrone?"~ */ GOTO 9
  IF ~~ THEN REPLY #44743 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44744 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #44745 /* ~"V naší rase jsme identifikování jako typ quadrone."~ */
  IF ~~ THEN REPLY #44746 /* ~"Tak co je to modron?"~ */ GOTO 8
  IF ~~ THEN REPLY #44747 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44748 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #44749 /* ~"Konstrukt dungeonu Rubikon."~ */
  IF ~~ THEN REPLY #44750 /* ~"Co přesně to je?"~ */ GOTO 11
  IF ~~ THEN REPLY #44751 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44752 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 14.0
  SAY #44753 /* ~Modron se na tebe zamračil, pak přejel pohledem místnosti. "My bychom měli vědět... My jsme modron. Jsme částí celku... My... informace není přístupná. Předlož svůj dotaz inženýrovi."~ */
  IF ~~ THEN REPLY #44754 /* ~"Kde najdu inženýra?"~ */ GOTO 12
  IF ~~ THEN REPLY #44755 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44756 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44757 /* ~Modron se rozhlédl. "Nevíme. Informace není přístupná... Jsme zmateni..."~ */
  IF ~~ THEN REPLY #44758 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44759 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #44760 /* ~"Očekáváme instrukce."~ */
  IF ~~ THEN REPLY #44761 /* ~"Instrukce k čemu?"~ */ GOTO 14
  IF ~~ THEN REPLY #44762 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44763 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44764 /* ~Modron se jenom prázdně dívá. "Instrukce úkolu, který musí být vykonán."~ */
  IF ~~ THEN REPLY #44765 /* ~"Jaký úkol? Co to tady vlastně děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #44766 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44767 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 15 // from:
  SAY #44768 /* ~Vidíš kostku s dvěma rukama, dvěma nohama a dvěmi malými křídly. Na přední části kostky je namalovaný pohyblivý obličej. Když ses přiblížil, stvoření na tebe zaměřilo oči.~ */
  IF ~~ THEN REPLY #44769 /* ~"Zdravím."~ */ GOTO 16
  IF ~~ THEN REPLY #44770 /* ~Ignoruj stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #44771 /* ~"Zdravím." Stvoření mluví monotónním bezpohlavním hlasem.~ */
  IF ~~ THEN REPLY #44772 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44773 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.1 19.1 20.0 21.1 22.0 23.2 24.1 25.1 26.0 27.1 28.0
  SAY #44774 /* ~Stvoření se na tebe dál prázdně dívá. "Vyslov svou otázku."~ */
  IF ~~ THEN REPLY #44775 /* ~"Kdo jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #44776 /* ~"Co jsi zač?"~ */ GOTO 21
  IF ~  Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44777 /* ~"Co jsi zač?"~ */ GOTO 23
  IF ~  !Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44778 /* ~"Co jsi zač?"~ */ GOTO 26
  IF ~~ THEN REPLY #44779 /* ~"Co tady děláš?"~ */ GOTO 27
  IF ~~ THEN REPLY #44780 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44781 /* ~Stvoření na tebe chvíli zírá, než z něj vyjde odpověď. "Nejisté... Zmatení přítomno..."~ */
  IF ~~ THEN REPLY #44782 /* ~"Co tím myslíš? Copak nevíš, kdo jsi?"~ */ GOTO 19
  IF ~~ THEN REPLY #44783 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44784 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #44785 /* ~"Ne... Nejistota existuje... někdy."~ */
  IF ~~ THEN REPLY #44786 /* ~"Ani já si nepamatuju, kdo jsem."~ */ GOTO 20
  IF ~~ THEN REPLY #44787 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44788 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #44789 /* ~"Cítím k tobě sympatie..." Natáhl ruku a jemně se dotkl tvého ramene. Po chvíli ruku stáhnul zpět.~ */
  IF ~~ THEN REPLY #44790 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44791 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY #44792 /* ~"Naše rasa je známá pod označením modron. Pocházíme ze sféry řádu, z Mechanu."~ */
  IF ~~ THEN REPLY #44793 /* ~"Co mi můžeš říct o Mechanu?"~ */ GOTO 22
  IF ~~ THEN REPLY #44794 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44795 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44796 /* ~"Místo řádu a zákona... mnoha zákonů. Velmi organizované..." Hlas se vytratil.~ */
  IF ~~ THEN REPLY #44797 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44798 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #44799 /* ~Rozhlédl se. "Simulátor dungeonu. Ale nepracuje. Rozbil se." Povzdychl si.~ */
  IF ~~ THEN REPLY #44800 /* ~"Co se stalo?"~ */ GOTO 24
  IF ~~ THEN REPLY #44801 /* ~"Co je to simulátor dungeonu?"~ */ GOTO 25
  IF ~~ THEN REPLY #44802 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44803 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #44804 /* ~"Nejisté. Přestal fungovat."~ */
  IF ~~ THEN REPLY #44805 /* ~"Co je to simulátor dungeonu?"~ */ GOTO 25
  IF ~~ THEN REPLY #44806 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44807 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #44808 /* ~Modron si tě chvíli měří pohledem, pak vzdychne. "Simuluje to dungeon. Co si myslíš, že by mohl jinak simulátor dungeonu dělat?"~ */
  IF ~~ THEN REPLY #44809 /* ~"Jak se to rozbilo?"~ */ GOTO 24
  IF ~~ THEN REPLY #44810 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44811 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #44812 /* ~Zamračil se na tebe. "Ty bys to měl vědět. Ty jsi to spravil."~ */
  IF ~~ THEN REPLY #44813 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44814 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.4
  SAY #44815 /* ~Odmlčel se. "Přemítám... Myslím... Odpovídám na tvé otázky..." Zamračil se na tebe.~ */
  IF ~~ THEN REPLY #44816 /* ~"O čem přemýšlíš?"~ */ GOTO 28
  IF ~~ THEN REPLY #44817 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44818 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44819 /* ~"Život má mnoho tajemství..." Ztichl.~ */
  IF ~~ THEN REPLY #44820 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #44821 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 29 // from:
  SAY #44822 /* ~Vidíš kostku s dvěma rukama, dvěma nohama a dvěmi malými křídly. Na přední části kostky je namalovaný pohyblivý obličej. Když ses přiblížil, stvoření na tebe zaměřilo oči.~ */
  IF ~~ THEN REPLY #44823 /* ~"Zdravím."~ */ GOTO 30
  IF ~~ THEN REPLY #44824 /* ~Ignoruj stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #44825 /* ~Prázdně na tebe zírá.~ */
  IF ~~ THEN REPLY #44826 /* ~"Mám nějaké otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #44827 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #44828 /* ~Ani nemrkne a dál si tě prohlíží.~ */
  IF ~~ THEN REPLY #44829 /* ~"Můžeš mi zodpovědět pár dotazů?"~ */ GOTO 32
  IF ~~ THEN REPLY #44830 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #44831 /* ~Oči zamrkaly, ale stvoření tě dál pozorně sleduje, neprojevuje žádnou emoci.~ */
  IF ~~ THEN REPLY #44832 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END
