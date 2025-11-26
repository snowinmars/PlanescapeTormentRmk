// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28196 /* ~Uwaga ten młodej, atrakcyjnej kobiety, wydaję się być całkowicie poświęcona przysłuchiwaniu się odczytowi, którego udziela jakiś wiekowy poeta.~ */
  IF ~~ THEN REPLY #28197 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #28653 /* ~Zostaw kobietę w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28198 /* ~Kobieta odwraca się do ciebie, ale poeta wciąż pozostaje w centrum jej uwagi. Zwraca się do ciebie ściszonym głosem: "Mam nadzieję, że będziesz łaskaw mówić trochę ciszej, panie." Ruchem głowy wskazuje na poetę. "Może to i nie klasyka, ale staruszek *ma* jeszcze spory potencjał."~ */
  IF ~~ THEN REPLY #28199 /* ~"Nie jestem pewien, wierz mi."~ */ GOTO 2
  IF ~~ THEN REPLY #28209 /* ~"Tak, to kiepski poeta."~ */ GOTO 2
  IF ~~ THEN REPLY #28654 /* ~"Nie. Uważam w sumie, że jest niezłym poetą."~ */ GOTO 2
  IF ~~ THEN REPLY #28655 /* ~"Mniejsza z tym... Mam kilka pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28200 /* ~"Przytakuje niemrawo, wpatrując się nieustannie w poetę."~ */
  IF ~~ THEN REPLY #28201 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #28208 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #28202 /* ~Spogląda na ciebie gniewnie i mówi ściszonym głosem. "To nie jest odpowiednia chwila, panie. Uszanuj tego poetę i bądź łaskaw zamilknąć... Żegnam."~ */
  IF ~~ THEN REPLY #28203 /* ~"Tylko parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #28207 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28204 /* ~Wciąż mówi ściszonym głosem, teraz jednak używa groźniej brzmiącego tonu: "To ani nie odpowiedni czas, ani miejsce na zadawanie pytań, panie. Zostaw mnie, albo zawołam straże."~ */
  IF ~~ THEN REPLY #28205 /* ~"Dobrze, wezwij je."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28206 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28650 /* ~Kobieta odwzajemnia ukłon, sugeruje jednak wyraźnie, byś się nie odzywał.~ */
  IF ~~ THEN REPLY #28656 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #68102 /* ~Odejdź.~ */ EXIT
END
