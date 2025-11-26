// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #46767 /* ~"Przykro mi, panie. Nikomu nie wolno tutaj przebywać, dopóki nie wróci faktor Sandoz. Nie możesz wejść do środka."~ */
  IF ~~ THEN REPLY #46768 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 1
  IF ~~ THEN REPLY #46906 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46907 /* ~"On jest wierzącym, panie, prawdziwie wierzącym - ale ma humory, a cała ta podróż przez wieloświat nie może dobrze wpływać na głowę. Albo zupełnie tracisz proporcje albo są one przesadzone. Oba przypadki są niedobre. Mam nadzieję, że wróci cały i zdrowy."~ */
  IF ~~ THEN REPLY #46908 /* ~"Zobaczymy, jak sądzę. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #46909 /* ~"Witaj, panie. Czy przysłał cię Keldor? Jest tu Sandoz, rzuca się za tymi drzwiami, coś mamrocząc, przez cały dzień. Mam nadzieję, że możesz coś dla niego zrobić."~ */
  IF ~~ THEN REPLY #46910 /* ~"Przekonamy się." Zawołaj przez drzwi: "Sandoz! Muszę z tobą porozmawiać!"~ */ EXTERN ~DSANDOZ~ 0
END

IF WEIGHT #5 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #46911 /* ~"Musisz porozmawiać z Sandozem, panie? Powodzenia..."~ */
  IF ~~ THEN REPLY #46912 /* ~"Dzięki." Zawołaj przez drzwi: "Sandoz! Muszę z tobą porozmawiać!"~ */ EXTERN ~DSANDOZ~ 1
END

IF WEIGHT #1 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #46913 /* ~"Panie." Strażnik zdaje się być niechętny dalszej rozmowie.~ */
  IF ~~ THEN REPLY #46914 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",7)
~ THEN BEGIN 5 // from:
  SAY #63354 /* ~Strażnik przygląda ci się gorzko. "On jest już martwy. Czyż nie jesteś z siebie zadowolony? Zejdź na dół i porozmawiaj z Keldorem."~ */
  IF ~~ THEN REPLY #63355 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #64646 /* ~"Panie." Strażnik zdaje się być niechętny dalszej rozmowie.~ */
  IF ~~ THEN REPLY #64647 /* ~"Żegnaj."~ */ EXIT
END
