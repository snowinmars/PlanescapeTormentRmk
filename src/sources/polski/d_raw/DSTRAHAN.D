// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTRAHAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTRAHAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32470 /* ~Twoim oczom ukazuje się średniego wzrostu człowiek, odziany w długie szaty o barwie głębokiej czerni. Jego fryzura zwraca uwagę starannością uczesania, a nienagannie podcięta bródka dodaje mu dostojeństwa i męskiej urody. Spostrzegłszy twoje przybycie, spokojnie odkłada księgę, której zapisywaniem był zajęty, uśmiecha i podchodzi. "Wielce niezwykłe... muszę przyznać. Nigdy nie sądziłem, że zajdziesz aż tak daleko."~ */
  IF ~~ THEN REPLY #32476 /* ~"Cieszę się, że mogłem cię rozczarować... Czy jesteś odpowiedzialny za tych wszystkich nieumarłych?"~ */ GOTO 1
  IF ~~ THEN REPLY #32477 /* ~"Przeklęty nekromanto! Przybyłem tutaj, aby położyć kres tym świętokradczym praktykom, jakich się tutaj bezwstydnie dopuszczasz."~ */ GOTO 4
  IF ~~ THEN REPLY #32478 /* ~"Wybacz, że przeszkodziłem ci w pracy. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32471 /* ~"To, kim jestem, nie ma dla ciebie żadnego znaczenia. Bardziej powinno interesować cię to, czego od ciebie chcę." Kiedy to mówi, mierzy cię wzrokiem od stóp do głów, jakby zachwycał się twoją postacią.~ */
  IF ~~ THEN REPLY #32479 /* ~"Dobrze. A czego sobie życzysz?"~ */ GOTO 2
  IF ~~ THEN REPLY #32480 /* ~"Mylisz się. To, czego chcesz, *nie ma* dla mnie żadnego znaczenia. Przybyłem tu, aby cię zabić."~ */ GOTO 4
  IF ~~ THEN REPLY #32481 /* ~"Mniejsza o to. Czas już na mnie."~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32472 /* ~Mężczyzna daje krok w tył i unosi brwi. "Chcę... twojej krwi."~ */
  IF ~~ THEN REPLY #32482 /* ~"Czy mam to odbierać jako pogróżkę?"~ */ GOTO 3
  IF ~~ THEN REPLY #32483 /* ~"Cóż za osobliwy zbieg okoliczności... Ja też przybyłem tutaj po twoją krew. Przygotuj się na śmierć!"~ */ GOTO 4
  IF ~~ THEN REPLY #32484 /* ~"Ee... Nie jestem zainteresowany. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32473 /* ~Mężczyzna zaczyna odpowiadać, ale nagle gwałtownie urywa. Na jego twarz wstępuje diaboliczny grymas radości i nagle zanosi się śmiechem. "Tak... Myślę, że tak." Śmieje się dalej ze swoich własnych myśli. Widzisz, jak powoli odrywa ręce od ciała i wprawia je w powolne ruchy, kreśląc w powietrzu zawiłe wzory.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #32474 /* ~"Doprawdy? Zatem, proszę bardzo, spróbuj swoich sił." Uśmiecha się z zadowoleniem i wznosi ręce przed siebie. Widzisz, jak wprawia je w powolne ruchy, kreśląc w powietrzu zawiłe wzory.~ */
  IF ~~ THEN REPLY #32485 /* ~Zaatakuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 2.2
  SAY #32475 /* ~"Obawiam się, że nie będziesz mógł mnie opuścić." Uśmiecha się z zadowoleniem i wznosi ręce przed siebie. Widzisz, jak wprawia je w powolne ruchy, kreśląc w powietrzu zawiłe wzory.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
