// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36001 /* ~Widzisz młodą kobietę. Ma naburmuszoną minę i wygląda na zdenerwowaną. Uśmiecha się szyderczo, gdy podchodzisz. "I na co czykasz?"~ */
  IF ~~ THEN REPLY #36002 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36003 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36004 /* ~Krzywi się i przykłada dłonie do policzków. "Szpicuj się, trepie! Ić na długi spacer krótkom drogom."~ */
  IF ~~ THEN REPLY #36005 /* ~"Co to miało znaczyć?"~ */ GOTO 2
  IF ~~ THEN REPLY #36006 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #36007 /* ~"Masz poważny problem z nastawieniem."~ */ GOTO 4
  IF ~~ THEN REPLY #36008 /* ~"Dobra, chyba sobie pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36009 /* ~Odsłania zęby i robi obraźliwy gest. "To oznacza spadaj, żulu! Ni mam tobie nic du powiedzenie." Spogląda na ciebie buntowniczo.~ */
  IF ~~ THEN REPLY #36010 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #36011 /* ~"Dobra, chyba sobie pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #36012 /* ~Obdarza cię złośliwym uśmiechem. "Mum dla cię odpowieć... Weź krótki kij i szpicuj się!" Robi kolejny obraźliwy gest."~ */
  IF ~~ THEN REPLY #36013 /* ~"Masz poważny problem z nastawieniem."~ */ GOTO 4
  IF ~~ THEN REPLY #36014 /* ~"Dobra, chyba sobie pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.0
  SAY #36015 /* ~Śmieje się. "Taa, nawet się jeszcze nie rozgrzałam. A teraz wsadź se to tam gdzie światło słońca nie dociera!"~ */
  IF ~~ THEN REPLY #36016 /* ~"Dobra, chyba sobie pójdę. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #36017 /* ~Widzisz młodą kobietę. Ma naburmuszoną minę i wygląda na zdenerwowaną. Uśmiecha się szyderczo, gdy podchodzisz. "I na co czykasz?"~ */
  IF ~~ THEN REPLY #36018 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #36019 /* ~"Nic, żegnaj."~ */ EXIT
END
