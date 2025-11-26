// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : UPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~UPORTAL~

IF ~  !PartyHasItem("Bhanky")
~ THEN BEGIN 0 // from:
  SAY #48030 /* ~Sięgasz ku roziskrzonemu metalowi portalu. Wydaje się osobliwie nieruchomy. Odnosisz wrażenie, że będzie pozostawał w uśpieniu, dopóki w jego pobliżu nie znajdzie się klucz do portalu.~ */
  IF ~~ THEN REPLY #48031 /* ~Złóż portal z powrotem i odłóż go na miejsce.~ */ EXIT
END

IF ~  PartyHasItem("Bhanky")
~ THEN BEGIN 1 // from:
  SAY #48407 /* ~Sięgasz ku roziskrzonemu metalowi portalu, a ten natychmiast zaczyna drgać nieoczekiwanym życiem. Zaczyna przeobrażać się w zawieszony w powietrzu metalowy okrąg. Masz coś przy sobie, co spowodowało aktywację portalu!

Odnosisz wrażenie, że powinieneś sprawdzić, czy masz przy sobie wszystko, co jest ci niezbędne, bo możesz bardzo *długo* zabawić poza Sigil.~ */
  IF ~~ THEN REPLY #48408 /* ~Wejdź w portal.~ */ DO ~DestroyPartyItem("Uportal",TRUE)
DestroyPartyItem("Bhanky",TRUE)
TeleportParty("AR0610",[1207.3088],10)
~ EXIT
  IF ~~ THEN REPLY #48409 /* ~Złóż portal z powrotem i odłóż go na miejsce.~ */ EXIT
END
