// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKATCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKATCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50896 /* ~Widzisz przed sobą funkcjonariusza Harmonium, ubranego w odświętną zbroję. Wygląda na to, że to on dowodzi łowcami niewolników Harmonium. Sprawia wrażenie niezwykle nieprzyjaznego i aroganckiego. "Czego chcesz?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50897 /* ~"Przychodzę tu, żeby zabrać z powrotem córkę Plugawego Barsa."~ */ GOTO 1
  IF ~~ THEN REPLY #50898 /* ~"Co tu robicie?"~ */ GOTO 2
  IF ~~ THEN REPLY #50899 /* ~"Kim jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #50900 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50901 /* ~Na twarzy funkcjonariusza pojawia się wymuszony uśmiech. "Naprawdę? A co zrobisz, jeśli ją zabiję?" Wskazuje do swoich ludzi. "Zabić ją!" Potem wyciąga broń i rzuca się na ciebie!~ */
  IF ~~ THEN REPLY #50902 /* ~Walcz.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #50903 /* ~"Moi ludzie i ja zbieramy rekrutów, żeby nauczyć ich co jest dobre, a co złe. Jak sam widzisz, nie wszyscy mają na to ochotę... ale już my ich w końcu zmusimy, żeby przejrzeli na oczy." Funkcjonariusz spogląda na ciebie. "Wydaje mi się, że z ciebie też będzie dobry rekrut."~ */
  IF ~~ THEN REPLY #50904 /* ~"Nie jestem zainteresowany."~ */ GOTO 3
  IF ~~ THEN REPLY #50905 /* ~"Opowiedz mi coś więcej."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #50906 /* ~"Szkoda." Funkcjonariusz wskazuje do swoich ludzi. "Dajcie sobie spokój z dziewką. Brać go."~ */
  IF ~~ THEN REPLY #50907 /* ~Walcz.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #50908 /* ~"Z przyjemnością. Zabierzemy cię do Arkadii i ukażemy prawdę." Funkcjonariusz wskazuje do swoich ludzi. "Brać go."~ */
  IF ~~ THEN REPLY #50909 /* ~Walcz.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY #50910 /* ~"Jestem Narzędnik Trzy Skatch, Funkcjonariusz Harmonium." Mężczyzna wykonuje przed tobą ukłon. "Moi ludzie i ja właśnie szukamy nowych rekrutów. Może ty chcesz się dowiedzieć czegoś więcej o Harmonium?"~ */
  IF ~~ THEN REPLY #50911 /* ~"Nie."~ */ GOTO 3
  IF ~~ THEN REPLY #50912 /* ~"Opowiedz mi coś więcej."~ */ GOTO 4
  IF ~~ THEN REPLY #50913 /* ~"To mi bardziej przypomina niewolnictwo. Czy jest jakaś szansa, że tym razem nas puścisz?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #50914 /* ~"Nie jesteś zbyt bystry, prawda? Nie. Na pewno nie. Można postępować tak jak my, albo można postępować źle. Ci, którzy postępują źle, muszą być... ukarani." Funkcjonariusz wskazuje na ciebie i woła do swoich ludzi. "Brać go!"~ */
  IF ~~ THEN REPLY #50915 /* ~Walcz.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
