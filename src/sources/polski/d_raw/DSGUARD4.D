// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61227 /* ~Widzisz przed sobą strażnika Harmonium. Wygląda na to, że uważnie obserwuje swoje otoczenie.~ */
  IF ~~ THEN REPLY #61228 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #61229 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61230 /* ~Strażnik spogląda na ciebie, ale po chwili odwraca wzrok. Nie widać po nim żadnej innej reakcji na twoją obecność.~ */
  IF ~~ THEN REPLY #61231 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #61232 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #61233 /* ~Strażnik kręci przecząco głową i wskazuje ręką, żebyś sobie poszedł. "Nie." Wygląda na to, że cię ignoruje.~ */
  IF ~~ THEN REPLY #61234 /* ~"To zabierze ci tylko chwilkę."~ */ GOTO 3
  IF ~~ THEN REPLY #61235 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61236 /* ~Strażnik kręci przecząco głową i wskazuje ręką, żebyś sobie poszedł. "Nie." Wygląda na to, że ciągle cię ignoruje.~ */
  IF ~~ THEN REPLY #61237 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #61238 /* ~Widzisz przed sobą strażnika Harmonium. Mężczyzna nie reaguje w żaden sposób na twoją obecność, choć jesteś pewien, że cię spostrzegł.~ */
  IF ~~ THEN REPLY #61239 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #61240 /* ~"Żegnaj."~ */ EXIT
END
