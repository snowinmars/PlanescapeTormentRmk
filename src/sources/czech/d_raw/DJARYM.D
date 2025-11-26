// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARYM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARYM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 2 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47884 /* ~"Co...? Kdo...?"~ */
  IF ~~ THEN REPLY #47885 /* ~"Zdravím."~ */ GOTO 4
  IF ~~ THEN REPLY #47886 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #47887 /* ~"Zase ty?!"~ */
  IF ~~ THEN REPLY #47888 /* ~"Zdravím."~ */ GOTO 4
  IF ~~ THEN REPLY #47889 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  Global("GemQuest","Global",1)
~ THEN BEGIN 2 // from:
  SAY #47890 /* ~"Jsi zpátky. Našel jsi?"~ */
  IF ~~ THEN REPLY #47891 /* ~"Ne. Pořád hledám."~ */ GOTO 6
  IF ~~ THEN REPLY #47892 /* ~"Cože to mám vlastně hledat?"~ */ GOTO 7
  IF ~  PartyHasItem("DGem")
~ THEN REPLY #47893 /* ~"Tohle hledáš?"~ */ DO ~TakePartyItem("DGem")
~ GOTO 8
END

IF WEIGHT #0 ~  Global("GemQuest","Global",2)
~ THEN BEGIN 3 // from:
  SAY #47894 /* ~"Ahoj. Omlouvám se, že jsem tak strohý, ale teď, když mám ten kámen, musím se připravit na kouzlení."~ */
  IF ~~ THEN REPLY #47895 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0
  SAY #47896 /* ~"Opravdu nemám čas se s tebou vybavovat. Víš, pokouším se najít způsob, jak dokončit kouzlo bez hlavního komponentu."~ */
  IF ~~ THEN REPLY #47897 /* ~"Možná bych mohl pomoct."~ */ GOTO 5
  IF ~~ THEN REPLY #47898 /* ~"Tak já tedy půjdu. Sbohem." ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47899 /* ~Jarym se na chvíli zarazil. "No, možná. Potřebuju k dokončení kouzla rubín. Musí to být kámen výjimečné kvality, ne ten šmejd, který prodávají na trhu. Kdybys nějaký našel, přines mi ho. Postarám se, aby se ti námaha vyplatila."~ */
  IF ~~ THEN REPLY #47900 /* ~"Sbohem."~ */ DO ~SetGlobal("GemQuest","Global",1)
~ JOURNAL #47842 /* ~Kouzelník jménem Jarym shání rubín, aby mohl dokončit jedno ze svých kouzel. Slíbil, že náležitě ocení, pokud se mi podaří nějaký mu donést do jeho domu na Hadrníkově náměstí.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #47901 /* ~"Nevzdávej se. Někde tady ten rubín bude."~ */
  IF ~~ THEN REPLY #47902 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #47903 /* ~"Měl bys hledat rubín, pamatuješ? Pokud nějaký najdeš, přines mi ho."~ */
  IF ~~ THEN REPLY #47904 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47905 /* ~"Ten je perfektní! Kde jsi ho... no, na tom nezáleží. Tumáš." Jarym si vzal kámen a podal ti hromadu mincí. "A teď kdyby ti to nevadilo, rád bych pracoval na svém kouzlu.~ */
  IF ~~ THEN REPLY #47906 /* ~"Sbohem."~ */ DO ~GivePartyGold(200)
AddexperienceParty(500)
SetGlobal("GemQuest","Global",2)
~ JOURNAL #47841 /* ~Jarym vypadal spokojený s tím rubínem, co jsem mu přinesl. Jestlipak by se tvářil stejně, kdybych mu řekl, že je to ten z Moridorovy skříňky?~ */ EXIT
END
