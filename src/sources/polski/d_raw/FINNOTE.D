// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FINNOTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~FINNOTE~

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #50376 /* ~To są notatki zmarłego lingwisty Fina Andlye. Zawierają wyniki jego badań nad językiem Uyo... wydają się bardzo podobne do pisma, które znalazłeś ukryte w dwunastościennej układance.~ */
  IF ~~ THEN REPLY #50377 /* ~Przeczytaj je uważnie, przekonaj się czy nie wywołają wspomnień.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ JOURNAL #50379 /* ~Przejrzałem notatki lingwisty Fina Andlye i okazało się, że już wcześniej znałem język, w którym zostały napisane słowa z dwunastościanu. To wymarły język Uyo. Teraz wreszcie będę mógł sobie to wszystko przeczytać.~ */ GOTO 1
  IF ~~ THEN REPLY #50378 /* ~Odłóż je.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50380 /* ~Kiedy czytasz notatki Fina Adlye o zapomnianym języku Uyo, czujesz pulsowanie w skroniach, powracają wspomnienia... wspomnienia o tym języku.

Przypominasz sobie litery, słowa, zdania, aż - niczym wiatr wokół Iglicy zwiewający całun trującego smogu znad Wielkiej Kuźni - jeszcze raz poznajesz język, w całej jego okazałości. Teraz chyba będziesz potrafił odczytać napis z dwunastościanu.~ */
  IF ~~ THEN REPLY #50381 /* ~Odłóż notatki.~ */ EXIT
END

IF ~  !Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #50382 /* ~To są notatki zmarłego lingwisty Fina Andlye. Zawierają wyniki jego badań nad językiem Uyo.~ */
  IF ~~ THEN REPLY #50383 /* ~Odłóż je.~ */ EXIT
END
