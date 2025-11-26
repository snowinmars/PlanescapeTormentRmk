// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARYM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARYM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 2 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47884 /* ~"Co?... Kto...?"~ */
  IF ~~ THEN REPLY #47885 /* ~"Witaj."~ */ GOTO 4
  IF ~~ THEN REPLY #47886 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #47887 /* ~"To znowu ty?!"~ */
  IF ~~ THEN REPLY #47888 /* ~"Witaj."~ */ GOTO 4
  IF ~~ THEN REPLY #47889 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  Global("GemQuest","Global",1)
~ THEN BEGIN 2 // from:
  SAY #47890 /* ~"Wróciłeś. Czy udało ci się go odnaleźć?"~ */
  IF ~~ THEN REPLY #47891 /* ~"Nie. Wciąż szukam."~ */ GOTO 6
  IF ~~ THEN REPLY #47892 /* ~"Czego dokładnie mam szukać?"~ */ GOTO 7
  IF ~  PartyHasItem("DGem")
~ THEN REPLY #47893 /* ~"Czy tego szukasz?"~ */ DO ~TakePartyItem("DGem")
~ GOTO 8
END

IF WEIGHT #0 ~  Global("GemQuest","Global",2)
~ THEN BEGIN 3 // from:
  SAY #47894 /* ~"Witaj ponownie. Wybacz, że jestem tak obcesowy, ale teraz, gdy mam już ten kamień muszę przygotować się do rzucenia czaru."~ */
  IF ~~ THEN REPLY #47895 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0
  SAY #47896 /* ~"Naprawdę nie mam czasu z tobą rozmawiać. Widzisz, próbuję wymyślić, jak skończyć to zaklęcie bez głównego składnika."~ */
  IF ~~ THEN REPLY #47897 /* ~"Może mógłbym ci pomóc."~ */ GOTO 5
  IF ~~ THEN REPLY #47898 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47899 /* ~Jarym przerywa na chwilę. "Chyba to niczemu nie zaszkodzi. Potrzebuję rubinu, by dokończyć zaklęcie. Musi być wyjątkowej jakości; nie tak jak ten chłam, który sprzedają na rynku. Gdybyś jakiś znalazł, przynieś mi go, a ja ci to wynagrodzę."~ */
  IF ~~ THEN REPLY #47900 /* ~"Żegnaj."~ */ DO ~SetGlobal("GemQuest","Global",1)
~ JOURNAL #47842 /* ~Czarodziej o imieniu Jarym poszukuje rubinu, potrzebnego mu do zakończenia jednego z zaklęć. Obiecał mnie sowicie wynagrodzić jeśli mu go przyniosę do jego domu na Placu Szmaciarzy.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #47901 /* ~"Nie poddawaj się. Gdzieś tu musi być rubin."~ */
  IF ~~ THEN REPLY #47902 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #47903 /* ~"Masz szukać rubinu, pamiętasz? Jeśli jakiś znajdziesz, przynieś mi go."~ */
  IF ~~ THEN REPLY #47904 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47905 /* ~"Wspaniale! Gdzieś ty... nieważne. Proszę." Jarym bierze od ciebie kamień i wręcza ci sporą liczbę monet. "A teraz, jeśli ci to nie przeszkadza, chciałbym popracować nad moim zaklęciem."~ */
  IF ~~ THEN REPLY #47906 /* ~"Żegnaj."~ */ DO ~GivePartyGold(200)
AddexperienceParty(500)
SetGlobal("GemQuest","Global",2)
~ JOURNAL #47841 /* ~Jarym był chyba zadowolony z rubinu, który mu przyniosłem. Ciekawe czy czułby się tak samo, gdybym mu powiedział, że był to ten sam klejnot co w Skrzynce Moridora.~ */ EXIT
END
