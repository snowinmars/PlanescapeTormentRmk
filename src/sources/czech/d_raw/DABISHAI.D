// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #58136 /* ~Vidíš rudého abishaie. Je to ještěr s hadím tělem, nohama se čtyřmi pařáty, kožnatými křídly a dračí hlavou. Šupiny, které pokrývají jeho tělo mají rudou barvu, ale jsou trochu vybledlé. Stvoření stojí na zadních nohách a udržuje rovnováhu chápavým ocasem. Když ses přiblížil, jeho oči se zamhouřily, začíná syčet.~ */
  IF ~~ THEN REPLY #58137 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58138 /* ~Ignoruj stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58139 /* ~Abishai na tebe zlostně zírá a něco zasyčel hrdelním jazykem. Uvědomil sis, že nemluví k tobě, protože jsi uslyšel odpověď odněkud za abishaiem. Po chvíli abishai naklonil hlavu na stranu a zasyčel na tebe. "Ccso ty chtěla, he?"~ */
  IF ~~ THEN REPLY #58140 /* ~"Mám nějaké otázky...~ */ DO ~SetGlobal("Talk_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58141 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58142 /* ~Abishai ze sebe vydal několik zasyčení, na které přišla odpověď z neznámého zdroje. "Ne... ty mluvíššš s Tek'elach" Abishai mávl někde směrem za sebe. "O souhlasíšššš, že mluvíšššš ssss tebou..."~ */
  IF ~~ THEN REPLY #58143 /* ~"Proč mi nemůžeš odpovědět na moje otázky?"~ */ GOTO 3
  IF ~~ THEN REPLY #58144 /* ~"Aha. Tak to si půjdu promluvit s tím Tek'elachem."~ */ GOTO 4
  IF ~~ THEN REPLY #58145 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58146 /* ~Abishai na tebe chvíli zuřivě kouká, než ze sebe vypravil odpověď. "Tek'elach chcešššš mluvit ssss tebou. Já nechcešššš. A teď odejdi..."~ */
  IF ~~ THEN REPLY #58147 /* ~"Aha. Tak to si půjdu promluvit s tím Tek'elachem."~ */ GOTO 4
  IF ~~ THEN REPLY #58148 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58149 /* ~Cítíš, jak z abishaie vyšla vlna horka. "Ukážeššššš úccctu... budešššš opatrná... Já dívášššš sssse. Zabiju, jestli ty šššpatně." Ukázal ti řadu neuvěřitelně ostrých zubů a velice zlomyslně se zašklebil. "Rozumíšššš?"~ */
  IF ~~ THEN REPLY #58150 /* ~"Ano, rozumím. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #58151 /* ~"No, jsem blbec. Proč mi to nevysvětlíš?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58152 /* ~Abishai zasyčel a natáhl se k blízké zdi. Jeho oči jsou stále upřené do tvých, zatímco do zdi vyryl jediným mávnutím drápů holuboké stopy. "Teď rozumíššššš? Nebo ty chcešššš blíízkéé, osssobní vysssvětlování?"~ */
  IF ~~ THEN REPLY #58153 /* ~"Porozuměl jsem dokonale. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #58154 /* ~Zaútoč na abishaie: "Uvidíme, jestli do dokážeš udělat i do masa." ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Talk_Tek","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #58155 /* ~Abishai rozzuřeně zasyčel. "Ty máššš mluvit sss Tek'elach... jdi!"~ */
  IF ~~ THEN REPLY #58156 /* ~"Dobrá. Sbohem."~ */ EXIT
END
