// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAUK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49900 /* ~Widzisz młodego człowieka ubranego w zwykłe, choć zadbane ubranie. Gdy podchodzisz, mężczyzna zatrzymuje się.~ */
  IF ~~ THEN REPLY #49901 /* ~"Witaj..."~ */ GOTO 4
  IF ~~ THEN REPLY #49902 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",1)
~ THEN BEGIN 1 // from:
  SAY #49903 /* ~"Masz to ze sobą? Tak?"~ */
  IF ~  PartyHasItem("SilRing")
PartyHasItem("BroRing")
PartyHasItem("GolRing")
~ THEN REPLY #49904 /* ~"Mam wszystkie pierścienie. Oto one."~ */ DO ~TakePartyItemNum("SilRing",1)
TakePartyItemNum("BroRing",1)
TakePartyItemNum("GolRing",1)
~ GOTO 6
  IF ~~ THEN REPLY #49905 /* ~"Wrócę, gdy zdobędę je wszystkie. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 7 even though they appear after this state */
~  Global("Rings3","Global",2)
~ THEN BEGIN 2 // from:
  SAY #49906 /* ~"Ty przyjaciel. Pomóż Raukowi. Dobrze."~ */
  IF ~~ THEN REPLY #49907 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  Global("WIdiots","Global",1)
~ THEN BEGIN 3 // from:
  SAY #49908 /* ~"Rauk stracić przyjaciół. Ale Rauk poznać nowy przyjaciel. Nazwać go Zielone Coś."~ */
  IF ~~ THEN REPLY #49909 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #49910 /* ~"Rauk w kłopocie. Dużym. Pomóc ty?"~ */
  IF ~~ THEN REPLY #49911 /* ~"Co się stało?"~ */ GOTO 5
  IF ~~ THEN REPLY #49912 /* ~"Nie mam na to czasu."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49913 /* ~"Rauk zapomnieć pierścienie. Przyjaciele potrzebują magii. Nie ma pierścieni, być źli na Rauka. Jeden pierścień brązowy, jak brzdęk. Inny błyszczący, jak zwierciadło. Ostatni jest ładny i żółty. Ty je przynieść dla Rauka?"~ */
  IF ~~ THEN REPLY #49914 /* ~"Przyniosę je, Rauk."~ */ DO ~SetGlobal("Rings3","Global",1)
~ JOURNAL #49916 /* ~Rauk poprosił mnie, abym przyniósł z jego namiotu trzy pierścienie. Wedle jego opisu pierwszy pierścień jest wykonany ze złota, drugi ze srebra, a trzeci z brązu. Teraz muszę tylko znaleźć namiot Rauka. Rauk nie sprawiał wrażenia zbyt rozgarniętego jegomościa, więc namiot znajduje się zapewne gdzieś w pobliżu.~ */ EXIT
  IF ~~ THEN REPLY #49915 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #49917 /* ~"Ty nowy przyjaciel Rauka teraz. Rauk wziąć pierścienie teraz. Rauk dziękuje nowym przyjaciołom."~ */
  IF ~~ THEN REPLY #49918 /* ~"Żegnaj, Rauk."~ */ DO ~SetGlobal("Rings3","Global",2)
AddexperienceParty(500)
StartCutSceneMode()
StartCutSceneEx("3012cut1",FALSE)
~ JOURNAL #49919 /* ~Powróciłem ze wszystkimi trzema pierścieniami i wręczyłem je Raukowi. Naprawdę trudno o łatwiejsze zadanie.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Apprent_DEAD_KAPUTZ","GLOBAL",0)
!Global("Rings3","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #66367 /* ~"Ty zabić przyjaciel Rauka. Rauk skrzywdzić cię teraz bardzo."~ */
  IF ~~ THEN REPLY #66368 /* ~Zaatakuj Rauka.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
