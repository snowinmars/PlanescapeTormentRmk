// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHEKKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHEKKA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48041 /* ~Widzisz pijanego strażnika. Jest ubrany w jedną z najlepszych zbroi w Klątwie, ale wygląda tak, jakby był zainteresowany tylko chronieniem swego bełta. Przygląda ci się martwymi oczami całkowicie bez zainteresowania.~ */
  IF ~~ THEN REPLY #48042 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #48043 /* ~"Co tutaj robisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #48044 /* ~"Zapomnij... żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48045 /* ~Chek'ka Plute przygląda ci się uważnie, z całą uwagą, jaką może skupić pijany człowiek. Parska, po czym wraca do swojego kielicha.~ */
  IF ~~ THEN REPLY #48046 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #48047 /* ~"Co tutaj robisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #48048 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0
  SAY #48049 /* ~"Chek'ka Plute. Elita Klątwy." Beka.~ */
  IF ~~ THEN REPLY #48050 /* ~"Co tutaj robisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #48051 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #48084 /* ~Wskazuje na Plugawego Barsa. "Obserwuję go. Mówią, że ma tu tunel, a ja chcę zobaczyć, jak go używa, czy to jest prawda. Czekam. Patrzę. Odejdź. Muszę patrzeć."~ */
  IF ~~ THEN REPLY #48085 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #48086 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #48087 /* ~Pijany strażnik zatacza się w twoim kierunku z rykiem. Jasne jest, że chce cię zabić.~ */
  IF ~~ THEN REPLY #48088 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
