// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44239 /* ~Widzisz kobietę w średnim wieku o łagodnej i współczującej twarzy. Wygląda tak, jakby prowadziła ciężkie życie. "Czy mogę ci w czymś pomóc, nieznajomy?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44241 /* ~"Powiedział mi... przyjaciel... że mogę odnaleźć tu komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44247 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #44248 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44249 /* ~"Szukam latającej, sarkastycznej czaszki. Czy może gdzieś ją widziałaś?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44251 /* ~"Niczego nie potrzebuję. Przepraszam. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #44254 /* ~"Pomóc ci coś znaleźć?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44255 /* ~"Powiedział mi... przyjaciel... że mogę odnaleźć tu komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44256 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #44257 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44258 /* ~"Szukam latającej, sarkastycznej czaszki. Czy może gdzieś ją widziałaś?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44260 /* ~"Niczego nie potrzebuję. Przepraszam. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #44262 /* ~"Tak szybko wróciłeś? Zniszczyłeś czyjeś plany?"~ */
  IF ~  GlobalGT("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #44263 /* ~"Jeszcze nie. Chcę tylko odpowiedzi na kilka pytań."~ */ GOTO 12
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44264 /* ~"Tego funkcjonariusza Harmonium? Jest martwy."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~Zgłosiłem Leenie, że udało mi się zabić funkcjonariusza Harmonium.~ */ GOTO 11
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",2)
~ THEN REPLY #44265 /* ~"Ostatnio nie. Po prostu chcę zadać ci kilka pytań."~ */ GOTO 12
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
GlobalLT("Kill_Vorten","GLOBAL",3)
~ THEN REPLY #44266 /* ~"Jeszcze nie. Po prostu chcę zadać ci kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #44267 /* ~"Pracuję nad tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 4.2 5.0
  SAY #44268 /* ~Kobieta przygląda ci się bardzo ostrożnie. Mruczy do siebie coś, co brzmi jak "Muszę to szybko zmienić..." Zbiera się i wpatruje ci się głęboko w oczy. "Jesteś jednym z nas, hę? Udowodnij to."~ */
  IF ~~ THEN REPLY #44269 /* ~"Jak?"~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44270 /* ~"Nie muszę nic robić, żeby ci to udowodnić."~ */ GOTO 15
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #44271 /* ~"Osoba, która dała mi tę informację, nazywa się Penn Szyderca. Powiedział, że będziesz go znała."~ */ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #44272 /* ~"Jestem Leena. Nadzoruję tych dwóch." Gestem wskazuje swoich towarzyszy.~ */
  IF ~~ THEN REPLY #44273 /* ~"Co tutaj robisz?"~ */ GOTO 5
  IF ~~ THEN REPLY #44274 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44275 /* ~"Powiedział mi... przyjaciel... że mogę odnaleźć tu komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ GOTO 3
  IF ~~ THEN REPLY #44276 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 4.0 4.1
  SAY #44277 /* ~"To jest magazyn. Ja jestem nadzorczynią. Przechowuje się tu rzeczy, wynosi się stąd rzeczy..." Wzrusza ramionami. "Niewiele tu do opowiadania, naprawdę."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44278 /* ~"Powiedział mi... przyjaciel... że mogę odnaleźć tu komórkę Anarchistów. Hasło brzmi 'zaćmienie'."~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44279 /* ~"Rozumiem. Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.3
  SAY #44280 /* ~"Latająca sarkastyczna czaszka? Wybacz mi. Nie widziałam żadnej w okolicy. Jeśli szukasz czaszek, spróbuj w Kościach Nocy - wyglądasz jakby blizny ci nie przeszkadzały, a pewne jak to, że balory nienawidzą biesów z głębin, że Lotar doda ci kilka następnych."~ */
  IF ~~ THEN REPLY #44281 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #44282 /* ~"Czy udało ci się odnieść sukces w twoim... przedsięwzięciu? Odpowiedz uczciwie."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44302 /* ~"Tak. Jest martwy."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~Zgłosiłem Leenie, że udało mi się zabić funkcjonariusza Harmonium.~ */ GOTO 11
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44303 /* ~Prawda: "Jeszcze nie."~ */ GOTO 8
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44304 /* ~Kłamstwo: "Tak, jest martwy."~ */ GOTO 10
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44305 /* ~"Uch... jeszcze raz, co mam zrobić?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.3
  SAY #44306 /* ~"Miałeś zająć się tym obłudnym pedantem z Harmonium, Vortenem. Idź i nie marnuj mojego czasu!"~ */
  IF ~~ THEN REPLY #44307 /* ~"Chcę tylko zadać ci kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #44308 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #44309 /* ~Odwraca się i zaczyna wydawać polecenia swoim podwładnym, ignorując cię.~ */
  IF ~~ THEN REPLY #44310 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #44311 /* ~"Proszę, nie kłam. Oznacza to, że nie masz szacunku dla moich źródeł i sprawia, że wyglądasz w moich oczach na większego głupca. Idź i zajmij się swoim zadaniem."~ */
  IF ~~ THEN REPLY #44312 /* ~"Chcę tylko zadać ci kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #44313 /* ~"Zatem dobrze. Wrócę tu."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 7.0
  SAY #44314 /* ~"Dobrze, dobrze... zaczynał za bardzo zbliżać się do jednej z naszych operacji, nawet jeśli o tym nie wiedział. To powinno posłać naszych ciemiężycieli w czerwonych zbrojach w pościg za innym celem." Jej oczy błyszczą, "Dałeś dowód swoim słowom. A tak właściwie, to czego chciałeś?"~ */
  IF ~~ THEN REPLY #44315 /* ~"Chcę zadać ci kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #44316 /* ~"Potrzebuję miejsca, gdzie mogę zostać przez kilka dni."~ */ GOTO 13
  IF ~~ THEN REPLY #44317 /* ~"Potrzebuję trochę dodatkowego ekwipunku."~ */ GOTO 13
  IF ~~ THEN REPLY #44318 /* ~"W tej chwili nic, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.0 2.2 11.0 13.0 14.0 18.1 19.0 20.0 21.1 22.1 23.0 24.0
  SAY #44319 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #44320 /* ~"Potrzebuję miejsca, gdzie mogę zostać przez kilka dni."~ */ GOTO 13
  IF ~~ THEN REPLY #44321 /* ~"Potrzebuję trochę dodatkowego ekwipunku."~ */ GOTO 13
  IF ~~ THEN REPLY #44322 /* ~"Opowiedz mi coś o swojej komórce."~ */ GOTO 18
  IF ~~ THEN REPLY #44323 /* ~"Co chcecie tu osiągnąć?"~ */ GOTO 19
  IF ~~ THEN REPLY #44324 /* ~"Dlaczego należysz do Anarchistów?"~ */ GOTO 20
  IF ~~ THEN REPLY #44325 /* ~"Co możesz powiedzieć mi o Lidze Rewolucyjnej?"~ */ GOTO 21
  IF ~~ THEN REPLY #44326 /* ~"Wydaje mi się, że to wszystko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2 12.0 12.1
  SAY #44327 /* ~"Porozmawiaj z Konallem. On się tym dla nas zajmuje."~ */
  IF ~~ THEN REPLY #44328 /* ~"Dobrze. Odpowiedz mi zatem jeszcze na kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #44329 /* ~"Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2
  SAY #44330 /* ~Jej oczy rozszerzają się. "On jest wysoko postawiony, wiesz. Przynajmniej takie otrzymałam dane. Czego potrzebujesz?"~ */
  IF ~~ THEN REPLY #44331 /* ~"Po prostu potrzebuję kilku odpowiedzi..."~ */ GOTO 12
  IF ~~ THEN REPLY #44332 /* ~"W tej chwili nic. Po prostu pomyślałem, że się przedstawię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.1
  SAY #44333 /* ~"Właściwie to musisz. Inaczej nie jesteśmy w stanie stwierdzić, czy nie kupiłeś hasła od kogoś o zbyt rozwiązłym języku, albo czy nie jesteś kolejnym, który tylko kłapie trumną. Albo udowodnisz swoją lojalność, albo umrzesz."~ */
  IF ~~ THEN REPLY #44334 /* ~"Udowodnię to."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44335 /* ~"Spróbuj mnie zabić, jeśli się odważysz."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.1
  SAY #44336 /* ~"W porządku." Gwiżdże na swoich towarzyszy, a oni cię atakują!~ */
  IF ~~ THEN REPLY #44337 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44338 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.0 15.0
  SAY #44339 /* ~"Musisz odnaleźć funkcjonariusza Harmonium o imieniu Vorten. Powinien znajdować się w okolicy przejścia z Ula do Niższej Dzielnicy. Powal go i wróć tutaj z wieścią o swoim sukcesie." Zaczyna się odwracać, po czym zatrzymuje. "I nie próbuj kłamać - mam oczy *wszędzie*."~ */
  IF ~~ THEN REPLY #44340 /* ~"Wchodzę w to."~ */ JOURNAL #39497 /* ~Leena powiedziała mi, że muszę dowieść swej lojalności względem Anarchistów zabijając funkcjonariusza Harmonium Vortena.~ */ EXIT
  IF ~~ THEN REPLY #44341 /* ~"Zapomnij o tym. Najpierw musiałabyś mnie zabić."~ */ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #44342 /* ~"To nasze trio. Odpowiadamy przed jeszcze jednym, którego imienia nie wyjawię, i pracujemy niezależnie. Czasami ktoś z zewnątrz przedstawi nam kogoś i w zależności od tego, co o tej osobie wiemy, możemy im pomóc albo nie. Konall to nasz magazynier, Otis ochroniarz, a ja jestem mózgiem."~ */
  IF ~~ THEN REPLY #44343 /* ~"Skąd wiesz, komu możecie zaufać?"~ */ GOTO 22
  IF ~~ THEN REPLY #44344 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #44345 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY #44346 /* ~"To, co mamy nadzieję osiągnąć, to zniszczenie obecnego systemu, zburzenie całego zatrutego szkieletu. Można powiedzieć, że chcemy, aby ubodzy odziedziczyli ziemię. Teraz."~ */
  IF ~~ THEN REPLY #44347 /* ~"Hmm. Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #44348 /* ~"Rozumiem. Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.4
  SAY #44349 /* ~"Masz na myśli coś, poza oglądaniem rodzin rozdzielonych przez milicyjne praktyki Harmonium? Poza widokiem moich przyjaciół, którzy niszczeją i giną od smogu wypluwanego przez Bogowców? Oprócz miażdżących wymagań Przeznaczonych i folgujących swoim pragnieniom Czyciowców, którzy się bawią, podczas gdy inni cierpią? Och, wydaje mi się, że bez przyczyny. Czemuż powinnam widzieć coś złego w obecnym porządku rzeczy?"~ */
  IF ~~ THEN REPLY #44350 /* ~"W porządku. Czy możesz odpowiedzieć mi jeszcze na kilka pytań?"~ */ GOTO 12
  IF ~~ THEN REPLY #44351 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5
  SAY #44352 /* ~"Już teraz wiesz zbyt dużo, szczególnie jak na kogoś, kto nie jest częścią naszej komórki. To działa w ten sposób: dzielimy się na komórki tak, aby jedna grupa nie była w stanie zniszczyć innej przez nieostrożność lub pecha. Czasami kończy się to tym, że walczymy o przeciwstawne rzeczy, ale w większości wypadków jesteśmy cierniem w łapie ciemiężących nas frakcji, które obecnie rządzą Sigil. Zawstydzamy ich na tyle, że biorą nas poważnie."~ */
  IF ~~ THEN REPLY #44353 /* ~"Więc w jaki sposób pozostajecie w kontakcie? Czy macie jakąś organizację?"~ */ GOTO 24
  IF ~~ THEN REPLY #44354 /* ~"Wygląda obiecująco... i niebezpiecznie. Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #44355 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0
  SAY #44356 /* ~"Nie robimy tego. Do tego mamy siebie nawzajem. I nawet wśród naszych stąpamy lekko. Nigdy naprawdę nie ufamy. To niebezpieczna gra, ale konieczna, jeśli mamy kiedykolwiek osiągnąć wolność."~ */
  IF ~~ THEN REPLY #44357 /* ~"Jeśli nie możecie sobie zaufać, w jaki sposób wiecie, do czego dążycie?"~ */ GOTO 23
  IF ~~ THEN REPLY #44358 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #44359 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44360 /* ~"W tej chwili naszym jedynym celem jest zniszczenie obecnego pasożytniczego porządku świata. Najpierw musimy wyeliminować korupcję. Proces leczenia rozpocznie się dopiero wtedy, gdy zneutralizujemy trawiącą społeczeństwo truciznę.
"~ */
  IF ~~ THEN REPLY #44361 /* ~"Dobrze. Odpowiedz mi zatem jeszcze na kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #44362 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #44363 /* ~"Mamy bezpieczne kryjówki rozrzucone po całym Wielkim Kręgu. Najlepszą - ostatnią, jak słyszałam - jest nasza silna komórka w Klątwie, mieście-bramie do Tartaru. Oni jednak najprawdopodobniej nie ujawnią się, dopóki nie wydarzy się coś DUŻEGO. To miasto jest pełne zdrajców i najlepiej siedzieć cicho, gdy wszyscy są aż tak podejrzliwi."~ */
  IF ~~ THEN REPLY #44364 /* ~"Dziękuję. Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #44365 /* ~"Dzięki. Żegnaj."~ */ EXIT
END
