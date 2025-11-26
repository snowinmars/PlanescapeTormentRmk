// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH2~

IF ~  NumTimesTalkedTo(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44366 /* ~Widzisz szczupłego, myszowatego mężczyznę. Jego długie zgrabne palce lekko się trzęsą, a on sam nie potrafi długo patrzeć ci w oczy, gdy z tobą rozmawia. "Przestraszyłeś mnie! Nie... nie widziałem cię tu wcześniej, nieznajomy. Czego... czego ode mnie chcesz?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44370 /* ~"Powiedział mi... przyjaciel... że mogę odnaleźć tu komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ GOTO 1
  IF ~~ THEN REPLY #44371 /* ~"Kim jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #44373 /* ~"Co to za miejsce?"~ */ GOTO 9
  IF ~~ THEN REPLY #44374 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.1 9.0 10.0
  SAY #44376 /* ~Jego niezgrabność nagle znika, a on sam staje się bardzo rzeczowy. "Powiedział. Czy pokazał ci też tajemny uścisk dłoni? Magiczny pierścień szyfrów? Czy znasz sekretny hymn tej komórki? Czy wiesz coś z tego?" Mierzy cię wzrokiem przez chwilę od stóp do głów, po czym mówi: "Najwyraźniej nie. Następnym razem może to ja cię spytam o hasło?" Wzdycha. "Czego chcesz?"~ */
  IF ~~ THEN REPLY #44377 /* ~"Potrzebuję trochę ekwipunku."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44379 /* ~"Potrzebuję kryjówki."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44381 /* ~"Potrzebuję kilku informacji o waszej komórce."~ */ GOTO 3
  IF ~~ THEN REPLY #44382 /* ~"Co staracie się tu osiągnąć?"~ */ GOTO 4
  IF ~~ THEN REPLY #44383 /* ~"Dlaczego jesteś Anarchistą?"~ */ GOTO 5
  IF ~~ THEN REPLY #44384 /* ~"Niczego, jak sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44386 /* ~"Mam nadzieję, że się spodobało."~ */
  IF ~~ THEN REPLY #44387 /* ~"Tia, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 4.2 11.2
  SAY #44389 /* ~"Wiesz, jaka jest pierwsza zasada bycia ukrytym rewolucjonistą?" Czeka wystarczająco długo, abyś zaczął odpowiadać i mówi: "To trzymanie tego w *ukryciu*. Nie zdradzam żadnych tajemnic, towarzyszu, nie ważne *kto* cię przysłał. A więc skoro już to ustaliliśmy, to czego jeszcze chcesz?"~ */
  IF ~~ THEN REPLY #44395 /* ~"Potrzebuję trochę ekwipunku."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44396 /* ~"Potrzebuję kryjówki."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44397 /* ~"Co staracie się tu osiągnąć?"~ */ GOTO 4
  IF ~~ THEN REPLY #44399 /* ~"Dlaczego jesteś Anarchistą?"~ */ GOTO 5
  IF ~~ THEN REPLY #44400 /* ~"Niczego, jak sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.2 11.3
  SAY #44403 /* ~"To, co staramy się osiągnąć to tajemnica. To dlatego jesteśmy pod ziemią, czyż nie? Dowiesz się tego, gdy to zobaczysz, a nie stanie się to tak szybko. Planujemy wszystko *dokładnie*, o ile rozumiesz, o co mi chodzi. Gdy już porozmawialiśmy o dokładności, czego jeszcze chcesz?"~ */
  IF ~~ THEN REPLY #44409 /* ~"Potrzebuję trochę ekwipunku."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44411 /* ~"Potrzebuję kryjówki."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44412 /* ~"Chcę się ciebie spytać o waszą komórkę."~ */ GOTO 3
  IF ~~ THEN REPLY #44414 /* ~"Dlaczego jesteś Anarchistą?"~ */ GOTO 5
  IF ~~ THEN REPLY #44415 /* ~"Niczego, jak sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 3.3 4.3 11.4
  SAY #44418 /* ~"Rozejrzyj się dookoła, trepie. Czy widzisz kogokolwiek, kto byłby wolny? Czy widzisz kogoś, kto nie ma nad sobą innego, który wciska mu obcas w kark? Nawet ci, co sądzą, że są ważni, są marionetkami. Ktoś musi zburzyć ten system."~ */
  IF ~~ THEN REPLY #44420 /* ~"I czym go zastąpić?"~ */ GOTO 6
  IF ~~ THEN REPLY #44421 /* ~"Brzmi wystarczająco dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44423 /* ~"Nie ja mam o tym decydować, trepie. Ja jestem dobry w niszczeniu i pozostawianiu innym kawałków do wzięcia. Niszczę, żeby inni mogli tworzyć. Wszyscy mamy swoje specjalności. Jestem optymistą - wierzę, że ludzie stworzą coś dobrego. Dopóki jednak tego nie uczynią, muszę to niszczyć."~ */
  IF ~~ THEN REPLY #44424 /* ~"I kto decyduje o tym, co jest dobre? Co czyni cię tak wyjątkowym?"~ */ GOTO 7
  IF ~~ THEN REPLY #44426 /* ~"Dobrze dla ciebie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44427 /* ~"To, co czyni mnie wyjątkowym to fakt, że chcę coś z tym zrobić. To, że szukam równości sprawia, że jestem osobą, która decyduje o tym, co jest właściwe. Dopóki nie ujrzę, jak pierwszego lepszego Ularza traktują jak Złotego Lorda, dalej będę robił to, co do mnie należy."~ */
  IF ~~ THEN REPLY #44428 /* ~"W porządku. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1 9.1 10.1
  SAY #44429 /* ~"Jestem Konall. Pracuję tu."~ */
  IF ~~ THEN REPLY #44430 /* ~"A co to za miejsce?"~ */ GOTO 9
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44431 /* ~"Powiedział mi... przyjaciel... że mogę odnaleźć tu komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 0.2 8.0 10.2
  SAY #44433 /* ~Przygląda ci się uważnie, aby sprawdzić, czy żartujesz. "To jest Skarbiec Dziewiątego Świata. Magazyn. Nie czytałeś szyldu, gdy tu wchodziłeś?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44435 /* ~"Powiedział mi... przyjaciel... że mogę odnaleźć tu komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ GOTO 1
  IF ~~ THEN REPLY #44436 /* ~"Nie tak ostrożnie. Kim jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #44438 /* ~"Dzięki za odpowiedź. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #44440 /* ~"Znowu ty? Jeśli czegoś chcesz, to pogadaj z głową przy drzwiach."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44442 /* ~"Powiedział mi... przyjaciel... że mogę odnaleźć tu komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ GOTO 1
  IF ~~ THEN REPLY #44443 /* ~"Kim jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #44444 /* ~"Co to za miejsce?"~ */ GOTO 9
  IF ~~ THEN REPLY #44446 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #44448 /* ~"Jakieś kłopoty? Potrzebujesz czegoś?"~ */
  IF ~~ THEN REPLY #44449 /* ~"Potrzebuję trochę ekwipunku."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44451 /* ~"Potrzebuję kryjówki."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44452 /* ~"Potrzebuję kilku informacji o waszej komórce."~ */ GOTO 3
  IF ~~ THEN REPLY #44453 /* ~"Co staracie się tu osiągnąć?"~ */ GOTO 4
  IF ~~ THEN REPLY #44454 /* ~"Dlaczego jesteś Anarchistą?"~ */ GOTO 5
  IF ~~ THEN REPLY #44456 /* ~"Niczego, jak sądzę. Żegnaj."~ */ EXIT
END
