// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3202 /* ~Ten uderzający przystojny szlachcic przygląda się, jak do niego podchodzisz, ze sporą dozą pogardy. "Jestem tu, żeby rozmawiać z paniami, panie, a *nie* z takimi jak ty. Mam szczerą nadzieję, że nie chcesz nękać mnie pytaniami i tego typu sprawami."~ */
  IF ~~ THEN REPLY #3203 /* ~"Tak właściwie, to mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #40142 /* ~"Radzę ci okazywać nieco szacunku."~ */ GOTO 3
  IF ~~ THEN REPLY #40143 /* ~"Chciałem, ale nie będę marnował czasu. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #40144 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40145 /* ~"Ponownie irytujesz mnie swoją obecnością. Gdybym chciał rozmawiać z takimi jak *ty*, to cóż, na wschód stąd jest ich cała dzielnica. A teraz zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #40146 /* ~"Radzę ci okazywać nieco szacunku."~ */ GOTO 3
  IF ~~ THEN REPLY #40147 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #40148 /* ~Szlachcic mruży oczy patrząc na ciebie. "Nie obchodzi mnie to... ani trochę! A teraz precz. Odejdź - zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #40149 /* ~"Radzę ci okazywać nieco szacunku."~ */ GOTO 3
  IF ~~ THEN REPLY #40150 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0
  SAY #40151 /* ~Zamyka oczy i powoli wypuszcza powietrze, jakby chciał się uspokoić. "Jeśli tego wymaga pozbycie się ciebie, więc niech tak będzie: jeśli byłbyś tak *łaskaw*, panie, pokornie cię proszę, abyś zostawił mnie i poszukał towarzystwa do rozmów *gdzieś indziej*."~ */
  IF ~~ THEN REPLY #40152 /* ~"Dobrze... żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #40153 /* ~Odejdź.~ */ EXIT
END
