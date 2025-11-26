// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61227 /* ~Vidíš strážce Harmonických. Zdá se, že pozorně prozkoumává okolí.~ */
  IF ~~ THEN REPLY #61228 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #61229 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61230 /* ~Koukl na tebe a pak se odvrátil. Tvá přítomnost ho zdá se vůbec nezajímá.~ */
  IF ~~ THEN REPLY #61231 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #61232 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #61233 /* ~Zatřásl hlavou a odstrčil tě stranou. "Ne." Už ti nevěnuje žádnou pozornost.~ */
  IF ~~ THEN REPLY #61234 /* ~"Bude tě to stát jenom trošku času."~ */ GOTO 3
  IF ~~ THEN REPLY #61235 /* ~"Budiž. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61236 /* ~Zatřásl hlavou a odstrčil tě stranou. "Ne." Už ti nevěnuje žádnou pozornost.~ */
  IF ~~ THEN REPLY #61237 /* ~"Budiž. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #61238 /* ~Vidíš strážce Harmonických. Nad tvou přítomností se nijak nepozastavil, ačkoliv jsi si jistý, že o tobě ví.~ */
  IF ~~ THEN REPLY #61239 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #61240 /* ~"Sbohem."~ */ EXIT
END
