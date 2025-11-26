// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDNMERCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDNMERCH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50999 /* ~Vidíš kostlivce přešlapujícího na místě. Mezi jeho zuby hvízdá vzduch. Vypadá velice znuděně. S tvým příchodem se jeho chování rychle a úplně změnilo. "Vítej! Vítej! Mám tady spoustu čerstvých věcí z těl posledních pitomců, kteří přišli obírat nás, klidné. Nechceš si něco málo nakoupit?"~ */
  IF ~~ THEN REPLY #51002 /* ~"Ano. Ukaž mi, co máš."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51001 /* ~"Ne. Místo toho bych chtěl odpověď na pár otázek."~ */ GOTO 1
  IF ~~ THEN REPLY #51003 /* ~"Ne. Moje chyba. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51004 /* ~Povzdychl si. "Hele, já vím že mám celou věčnost na postávání a pokecávání, ale pravda je ta, že se nerad bavím s živýma, dobře? Beru tyhle věci živým, než zemřou a pak je prodávám jiným mrtvákům. Takže s tebou se cítím poněkud nedobře. Takže chceš vidět, co mám? Fajn. Ukážu ti to. Jinak mě nech na pokoji."~ */
  IF ~~ THEN REPLY #51006 /* ~"Ukaž mi, co máš."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51005 /* ~"Tak na to zapomeň."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #51007 /* ~"Oh. Zase ty. Co chceš teď?"~ */
  IF ~~ THEN REPLY #51008 /* ~"Odpovíš mi na moje otázky?"~ */ GOTO 3
  IF ~~ THEN REPLY #51009 /* ~"Máš nějaké nové zboží?"~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51010 /* ~"Nic. Moje chyba. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51011 /* ~"Ne." Podíval se kolem. "To budu radši zírat do zdi." Vrátil pohled k tobě. "Koupíš si něco nebo ne?"~ */
  IF ~~ THEN REPLY #51012 /* ~"Asi ano."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51034 /* ~"Ne, to si nemyslím."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #51035 /* ~"Tak tedy sbohem." Dál si píská za svými bílými, nádhernými zuby. Docela hezky by se vyjímaly provrtané na nějaké hezké šňůrce.~ */
  IF ~~ THEN REPLY #51036 /* ~"Dobrý den."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Undead_Alert","AR1500",1)
~ THEN BEGIN 5 // from:
  SAY #51037 /* ~Na obchodníka to zřejmě neudělalo žádný dojem. "Přišels mě voddělat, jo? No jen do toho. Mě je to jedno."~ */
  IF ~~ THEN REPLY #51038 /* ~"Opravdu je ti to jedno?"~ */ GOTO 6
  IF ~~ THEN REPLY #51039 /* ~"Vyzkoušíme si to."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51040 /* ~"Tak to tě opustím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51041 /* ~"Jistě že ne. Zemřel jsem příšernou smrtí před dávnými časy. Nemám strach z ničeho, co bys mi mohl udělat. Bolest, to je jenom pocit. Nic neznamená. Vše, co teď mám, je vědomí, a toho si zase tak necením, abych se kvůli němu s tebou rval."~ */
  IF ~~ THEN REPLY #51042 /* ~"Dobře. Zemři."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51043 /* ~"Zajímavé. Tak sbohem."~ */ EXIT
END
