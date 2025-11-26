// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9708 /* ~Ta istota ma ciało barana i tors człowieka. Kręcące się rogi wyrastają z kudłatej głowy, a jego sierść jest farbowana i wygolona w złożone wzory. We włosy ma wplecione kolorowe paciorki i prostą biżuterię. Zdaje się ciebie nie zauważać.~ */
  IF ~~ THEN REPLY #7544 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #7565 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2725 /* ~Albo cię nie usłyszał albo udaje. Najwyraźniej ma zamiar iść dalej.~ */
  IF ~~ THEN REPLY #7623 /* ~"Powiedziałem 'Witaj'."~ */ GOTO 2
  IF ~~ THEN REPLY #7646 /* ~Pozwól mu przejść.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2734 /* ~Mierzy cię ostrożnie wzrokiem... Istota zdaje się być podejrzliwa, ale nie wygląda, aby się ciebie obawiała.~ */
  IF ~~ THEN REPLY #12334 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #12335 /* ~"Trudno. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2743 /* ~Głos istoty jest głęboki i donośny: "Na ulicach Ula? Tu nie ma miejsca na takie rzeczy. Zostaw mnie moim sprawom. Morze spotkamy się kiedyś w lepszym miejscu i wtedy porozmawiamy."~ */
  IF ~~ THEN REPLY #12336 /* ~"Chcę tylko zadać ci kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #12337 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2753 /* ~"Innym razem, dwunogi... innym razem." Istota zaczyna odchodzić.~ */
  IF ~~ THEN REPLY #12339 /* ~Zaatakuj go, gdy odchodzi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12340 /* ~Pozwól mu odejść.~ */ EXIT
END
