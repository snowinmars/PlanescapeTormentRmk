// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48991 /* ~Widzisz pulchną kobietę, jest zajęta. Nie widzi jak wchodzisz.~ */
  IF ~~ THEN REPLY #48993 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #48994 /* ~Zostaw ją w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48995 /* ~"To znowu ty... widzę, że nie poprawiły ci się maniery."~ */
  IF ~~ THEN REPLY #48996 /* ~"Hmm... chyba nie tu miałem przyjść."~ */ GOTO 4
  IF ~~ THEN REPLY #48997 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48998 /* ~"Co robisz w moim domu? Nie umiesz się zachować? Nie wchodzi się tak po prostu do obcych domów."~ */
  IF ~~ THEN REPLY #48999 /* ~"Przepraszam. Nie wiedziałem, że ktoś tu mieszka."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49000 /* ~"Teraz już wiesz. Proszę, wyjdź, i zamknij za sobą drzwi. Mam jeszcze sporo roboty i nie potrzebuję, by mi ktoś przeszkadzał. Do widzenia."~ */
  IF ~~ THEN REPLY #49001 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49002 /* ~"Więc idź i dowiedz się, gdzie masz iść, a mnie zostaw w spokoju."~ */
  IF ~~ THEN REPLY #49003 /* ~"Żegnaj."~ */ EXIT
END
