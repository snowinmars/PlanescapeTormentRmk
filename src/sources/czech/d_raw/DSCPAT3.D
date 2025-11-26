// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10900 /* ~Je to mírně plešatějící muž s cynickým výrazem v obličeji. Jeho hlas zní jako staccato, když odťukává zřetelně a jasně každičké slovo. "Co chceš, kámo?"~ */
  IF ~~ THEN REPLY #10901 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10902 /* ~"Hledám deník."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10903 /* ~"Hledám chlápka jménem Pharod. Je to Sběrač. Neviděl nebo neslyšel jsi o něm?"~ */ GOTO 8
  IF ~~ THEN REPLY #10904 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10905 /* ~"Kdo je ten hořící u vchodu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10906 /* ~"Co to bylo, co jste ty a tvoje přítelkyně říkali o Sigilu?"~ */ GOTO 6
  IF ~~ THEN REPLY #10907 /* ~"Nic. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #10908 /* ~"Právě když jsme, ona a já, začali sklouzávat do další jiskřivé konverzace." Sarkasmus čiší z jeho hlasu. "Co pro tebe mohu udělat?"~ */
  IF ~~ THEN REPLY #10909 /* ~"Chci se tě zeptat na další otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10910 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10911 /* ~"Jsem Cilaen Železnoha. Předtím než se zeptáš, mám takové jméno proto, že mi můj idiotský bratr upustil na nohy padesátilibrový kámen a rozdrtil mi chodidla. Teď mám šlapky ze železa. Jasný?"~ */
  IF ~~ THEN REPLY #10912 /* ~"Jasný. Domnívám se. Odpovíš mi na další otázky?"~ */ GOTO 7
  IF ~~ THEN REPLY #10913 /* ~"To mi stačí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10914 /* ~"Žádnej sem neviděl. Nebo mi aspoň nic takovýho neuvízlo v hlavě. Pokud nebyl nijak cenný, zkus hromady odpadků venku na opačné straně Úlu. Mám pro tvou situaci pochopení. Deníky jsou základní podstatou identity. Udržují nás na pozoru před naší minulostí a plánují naše budoucí cesty. Vždycky si píšu deník, sám pro sebe a shledávám, že jsem kvůli tomu lepší člověk." Poslední větu řekl s obzvlášť velkým zadostiučiněním.~ */
  IF ~~ THEN REPLY #10915 /* ~"Ty opravdu nežertuješ. Odpověz mi na jiné otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10916 /* ~"Na smetišti? Mé díky."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10917 /* ~"Tohle je Doutnající nebožtík. Přivedl jsem sem svou neznalou a bezradnou sestřenici, aby spatřila jisté pozoruhodnosti, vůně a zvuky Sigilu. Ona však zatím zůstává vůči krásám Sigilu odolná."~ */
  IF ~~ THEN REPLY #10918 /* ~"Je mi jasné proč. Můžeš mi říct něco jiného?"~ */ GOTO 7
  IF ~~ THEN REPLY #10919 /* ~"Skutečně? Zvláštní. Nashledanou, pane."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10920 /* ~"V písních se zpívá, že ten nešťastný chlápek se jmenuje Ignus. Spálil část Úlu, předtím než se místní spojili a postarali se o něj. Udělali z něj průchod do Elementální Sféry Ohně a teďkom tady musí trpět lidem pro zábavu. Není to moc zábavné, ale jistě je to zajímavé."~ */
  IF ~~ THEN REPLY #10921 /* ~"To určitě ano. Můžeš mi říci něco jiného?"~ */ GOTO 7
  IF ~~ THEN REPLY #10922 /* ~"To tedy ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10923 /* ~"Ach. Moje *sestřenice*" (zdůrazňuje to slovo, jako by chtěl vyzdvihnout, že ve svém příbuzenském vztahu k ní neměl na výběr) "sem nedávno přišla ze stojatých vod svého domovského světa. Můj strýc, známý čaroděj, ji sem přivedl, aby jí rozšířil obzory. Ona žije ve falešné představě, že *tohle* je střed mnohovesmíru a myslí si, že je to nějakým způsobem důležité. Jelikož jsem tady ale prožil celý svůj život, vím, že je to jinak -- je to místo, jež síly a mocnosti přehlíží, stejně jako lidé přehlíží veverky ve svých městských parcích. Není nijak významné a čím dříve si lidé uvědomí, že sami jsou také bezvýznamní, tím dříve se pohnou někam dál."~ */
  IF ~~ THEN REPLY #10924 /* ~"Opravdu? Hmm. Musím slyšet její názor na celou tu věc. Ale zatím bys mi mohl odpovědět na nějaké otázky, ano?"~ */ GOTO 7
  IF ~~ THEN REPLY #10925 /* ~"Fascinující. Děkuji a nashledanou."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from: 1.0 2.0 3.0 4.0 5.0 6.0 8.1 9.0
  SAY #10926 /* ~"Co bys rád věděl?"~ */
  IF ~~ THEN REPLY #10927 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10928 /* ~"Hledám deník."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10929 /* ~"Hledám Sběrače jménem Pharod. Neviděl nebo neslyšel jsi o něm?"~ */ GOTO 8
  IF ~~ THEN REPLY #10930 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10931 /* ~"Kdo je ten hořící u vchodu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10932 /* ~"Co to bylo, co jste ty a tvoje přítelkyně říkali o Sigilu?"~ */ GOTO 6
  IF ~~ THEN REPLY #10933 /* ~"Nic. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 7.2
  SAY #10934 /* ~"Sběrač? Není to jeden z těch odporných přepravců mrtvých? Nestýkám se s takovými. Tohle opravdu není moje čtvrť. Takže ne, nikdy jsem o něm neslyšel."~ */
  IF ~~ THEN REPLY #10935 /* ~"Co JE tvoje čtvrť?"~ */ GOTO 9
  IF ~~ THEN REPLY #10936 /* ~"To mi moc nepomůže. Možná mi můžeš odpovědět na nějaké otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10937 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10938 /* ~"Bydlím ve Čtvrti Paní bolesti, se svým strýcem. Je to tam jednoduše lepší kasta lidí, pokud mohu mluvit za sebe. Nikdo z té chátry, co se jí tolik poflakuje tady okolo. Ne, řekl bych že jít do TÉHLE části města je opravdu pod úroveň. Nemohu říci, že by se mi to líbilo, ale na druhou stranu, říká se že by člověk měl okusit všechny slasti i strasti života. Ale tuhle já už mám opravdu za sebou."~ */
  IF ~~ THEN REPLY #10939 /* ~"Čtvrť Paní bolesti, co? No dobře. Odpověz mi na pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #10940 /* ~"Dobře. Sbohem."~ */ EXIT
END
