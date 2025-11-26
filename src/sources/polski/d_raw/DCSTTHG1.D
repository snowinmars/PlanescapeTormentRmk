// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Widzisz młodego mężczyznę odzianego w źle skrojone ubranie. Śledzi cię znużonym wzrokiem, gdy się do niego zbliżasz.~ */
  IF ~~ THEN REPLY #3165 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #9926 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9927 /* ~Przed udzieleniem odpowiedzi lustruje cię z góry do dołu. "I ty witaj, śmiałku. Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #9928 /* ~"Chcę ci zadać kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #9929 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9930 /* ~Przygląda ci się przez pewien czas, po czym zaczyna się śmiać. "Nic nie wiem, niczego nie widzę, niczego nie słyszę. Tak więc odpowiedzieć nie mogę. Odejdź, nim będę zmuszony cię skrzywdzić."~ */
  IF ~~ THEN REPLY #9931 /* ~"Co ci szkodzi spróbować odpowiedzieć na kilka prostych pytań? Jak więc?"~ */ GOTO 3
  IF ~~ THEN REPLY #9932 /* ~"Jeśli to będzie konieczne, wyduszę z ciebie kilka odpowiedzi."~ */ GOTO 4
  IF ~~ THEN REPLY #9933 /* ~"W porządku. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9934 /* ~Patrzy na ciebie gniewnie. "Nie mam ci nic do powiedzenia, trepie. Masz teraz ostatnią szansę, by odejść stąd w jednym kawałku."~ */
  IF ~~ THEN REPLY #9935 /* ~"Jeśli to będzie konieczne, wyduszę z ciebie kilka odpowiedzi."~ */ GOTO 4
  IF ~~ THEN REPLY #9936 /* ~"W porządku. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9937 /* ~Lustruje cię z góry do dołu, zwracając uwagę na twoje blizny. Potem zaś uśmiecha się do ciebie przyjaźnie. "Niech będzie. Nie łatwo cię przestraszyć. Mogę pogadać z kimś takim jak ty. Czego chcesz?"~ */
  IF ~~ THEN REPLY #9938 /* ~"Jedynie kilka odpowiedzi."~ */ GOTO 5
  IF ~~ THEN REPLY #9939 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0 7.1 8.0 9.1 10.1 11.0 12.1 13.0 14.0
  SAY #9940 /* ~Wzrusza ramionami. "Jasne. Pytaj."~ */
  IF ~~ THEN REPLY #9941 /* ~"Szukam devy. Powiedziano mi, że można go znaleźć w Klątwie."~ */ GOTO 6
  IF ~~ THEN REPLY #9942 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 9
  IF ~~ THEN REPLY #9943 /* ~"Kto tu rządzi?"~ */ GOTO 12
  IF ~~ THEN REPLY #9944 /* ~"Działo się tu coś ostatnio?"~ */ GOTO 14
  IF ~~ THEN REPLY #9945 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9946 /* ~Śmieje się. "Mało prawdopodobne, śmiałku. Nie wyobrażam sobie, by deva mógł postawić swą stopę w tym mieście. No, chyba że miałby zamiar wymazać je z ludzkich umysłów. Sądzę, że tracisz czas."~ */
  IF ~~ THEN REPLY #9947 /* ~"Rozumiem. Kolejne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #9948 /* ~"Co masz na myśli?"~ */ GOTO 7
  IF ~~ THEN REPLY #9949 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #9950 /* ~Wzrusza ramionami. "Słyszałem, że niektóre trepy nazywają devy aniołami. Ale Klątwa nie należy do miast, w których można by się natknąć na 'anioła'. To nie ta strona Kręgu."~ */
  IF ~~ THEN REPLY #9951 /* ~"Jakiego kręgu?"~ */ GOTO 8
  IF ~~ THEN REPLY #9952 /* ~"Rozumiem. Kolejne pytanie."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #9953 /* ~"Kręgu Sfer Zewnętrznych. Z jednej strony porządek, z drugiej strony chaos, pomiędzy nimi zaś dobro i zło. Nowyś tu, czy co?" Spogląda na ciebie zdziwiony.~ */
  IF ~~ THEN REPLY #9954 /* ~"Ty to powiedziałeś. Potrzebuję cię jeszcze spytać o coś."~ */ GOTO 5
  IF ~~ THEN REPLY #9955 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #9956 /* ~Wzrusza ramionami i uśmiecha się przebiegle. "To przyjazne miejsce dla odpowiednich ludzi. Wszystko zależy od tego, kim jesteś i kogo znasz."~ */
  IF ~~ THEN REPLY #9957 /* ~"A z kim ty radziłbyś mi się zapoznać?"~ */ GOTO 10
  IF ~~ THEN REPLY #9958 /* ~"W porządku. Kolejne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #9959 /* ~"Rozumiem. Cóż, muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9960 /* ~Zastanawia się przez chwilę. "Śmiałka takiego jak ty powinna zainteresować gospoda 'Brama Zdrajców'. To karczma prowadzona przez człowieka imieniem Plugawy Bars." Uśmiecha się do ciebie. "Nie mów mu, że to ja cię przysłałem."~ */
  IF ~~ THEN REPLY #9961 /* ~"Jak mam znaleźć to miejsce?"~ */ GOTO 11
  IF ~~ THEN REPLY #9962 /* ~"Rozumiem. Kolejne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #9963 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #9964 /* ~Wzrusza ramionami. "Nie wiem dokładnie. Sądzę jednak, że to gdzieś w tamtym kierunku." Wskazuje na stronę znajdującą się po twojej prawej. "Rozejrzyj się wokół, a znajdziesz."~ */
  IF ~~ THEN REPLY #9965 /* ~"W porządku. Kolejne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #9966 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY #9967 /* ~"Tovus Giljaf. Możesz go znaleźć w biurze administracyjnym położonym na rynku."~ */
  IF ~~ THEN REPLY #9968 /* ~"Co możesz mi powiedzieć o Tovusie?"~ */ GOTO 13
  IF ~~ THEN REPLY #9969 /* ~"Kolejne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #9970 /* ~"Dziękuję. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #9971 /* ~"Nigdy nie miałem z nim do czynienia. Gdyby nie to, że rządzi on tym miastem, nie znałbym nawet jego imienia."~ */
  IF ~~ THEN REPLY #9972 /* ~"Świetnie. Udziel mi paru odpowiedzi."~ */ GOTO 5
  IF ~~ THEN REPLY #9973 /* ~"W takim razie życzę miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.3
  SAY #9974 /* ~Znudzony rozgląda się wokół. "Prawdę mówiąc nic. Wyjątkowo tu ostatnio spokojnie."~ */
  IF ~~ THEN REPLY #9975 /* ~"Rozumiem. Chcę ci zadać kolejne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #9976 /* ~"Muszę już iść. Miłego dnia."~ */ EXIT
END
