// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVLASK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVLASK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  Global("Vlask","Global",0)
~ THEN BEGIN 0 // from:
  SAY #45717 /* ~W odróżnieniu od innych Zbieraczy, których dotychczas spotkałeś, szaty tego osobnika zadziwiają dobrą jakością. "O, kolejny truposz przyszedł do nas w odwiedziny. Proszę, wybacz mi ten bałagan. Moi koledzy nigdy nie mogą znaleźć czasu na porządki."~ */
  IF ~~ THEN REPLY #45718 /* ~"Czy nie ma stąd wyjścia..."~ */ DO ~SetGlobal("Vlask","GLOBAL",1)
~ GOTO 2
END

IF WEIGHT #0 ~  Global("Vlask","Global",1)
~ THEN BEGIN 1 // from:
  SAY #45719 /* ~Vlask zanosi się delikatnym chichotem. "Znowu ty! Ja i moi przyjaciele bardzo niechętnie powracamy do starego tematu w interesach. Powiem krótko a treściwie: obecna cena klucza wynosi dwieście miedziaków."~ */
  IF ~~ THEN REPLY #45720 /* ~"Wróciłem, aby cię zabić."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(199)
~ THEN REPLY #45722 /* ~"Weź pieniądze."~ */ DO ~TakePartyGold(200)
GiveItemCreate("Vkey",Protagonist,1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #45723 /* ~"Nie mam tyle."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #45724 /* ~"Jasne, że jest. To te drzwi, akurat tutaj, w pobliżu. Ale żeby włączyć portal, będziesz potrzebował kilka takich cudeniek." Pokazuje ci coś w rodzaju niewielkich szklanych koralików. "Możemy pogadać o cenie."~ */
  IF ~~ THEN REPLY #45725 /* ~"Myślę, że lepiej będzie, jeśli cię po prostu zabiję."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45726 /* ~"No, zamieniam się cały w słuch..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45727 /* ~"To proste. Zapłacisz mi i moim kamratom sto miedziaków. A ja dam ci klucz do tego portalu."~ */
  IF ~~ THEN REPLY #45728 /* ~"A co będzie, jeżeli nie zechcę zapłacić?"~ */ GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45729 /* ~"Oto pieniądze. A teraz dawaj klucz."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45732 /* ~"Nie mam tyle."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45734 /* ~"Wtedy ja i moi przyjaciele sprzedamy twoje ciało Grabarzom. Tak czy owak, zapłata nam nie ucieknie."~ */
  IF ~~ THEN REPLY #45735 /* ~"Myślę, że lepiej będzie, jeśli cię po prostu zabiję."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45736 /* ~"Oto pieniądze. A teraz dawaj klucz."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45737 /* ~"Nie mam tyle."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.1 4.1
  SAY #45738 /* ~"Ja i moi kamraci uważamy, że interesy z tobą to czysta przyjemność. Jeśli teraz chcesz włączyć portal, wystarczy że stłuczesz szklany koralik."~ */
  IF ~~ THEN REPLY #45739 /* ~"Żegnaj."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("3006CUT2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.2 4.2
  SAY #45740 /* ~"O, co za szkoda. Chłopaki, przygotujcie no tego jegomościa do spotkania z Grabarzami."~ */
  IF ~~ THEN REPLY #45741 /* ~"Przygotuj się na śmierć..."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
END
