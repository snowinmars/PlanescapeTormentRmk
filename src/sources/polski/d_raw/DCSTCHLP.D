// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCHLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCHLP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Widzisz sędziwego mężczyznę stojącego na skraju grupki gapiów. Zgromadzili się oni wokół czegoś, co przypomina gilotynę.~ */
  IF ~~ THEN REPLY #3167 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #13656 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13657 /* ~Przygląda ci się przelotnie, po czym zaczyna odchodzić. Zmienia jednak zdanie i odwraca się przodem do ciebie. Potrząsając powoli głową, lustruje twe ciało od stóp do głowy. "Aleś pokiereszowany, śmiałku. Muszę przyznać, że nie widziałem nikogo gęściej pokrytego bliznami niż ty. Co zrobiłeś? Zmagałeś się w pojedynkę z hordami Baator?"~ */
  IF ~~ THEN REPLY #13658 /* ~"Mam kilka pytań do ciebie."~ */ GOTO 2
  IF ~~ THEN REPLY #13659 /* ~"To nie twoja sprawa, starcze."~ */ GOTO 7
  IF ~~ THEN REPLY #13660 /* ~"Dane mi było widzieć niejedną bitwę. Posiadam blizny, by o tym świadczyły."~ */ GOTO 8
  IF ~~ THEN REPLY #13661 /* ~"Co tu się dzieje?"~ */ GOTO 4
  IF ~~ THEN REPLY #13662 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 8.0
  SAY #13663 /* ~Marszczy gniewnie brwi. "Czy widzisz gdzieś na mnie wytatuowane słowo 'mędrzec'?" Spogląda na ciebie tak, jakby naprawdę oczekiwał odpowiedzi na swoje pytanie.~ */
  IF ~~ THEN REPLY #13664 /* ~"Ja... No cóż, nie. Można przypuszczać, że człowiek w twoim wieku posiadać będzie ogromną wiedzę, którą będzie mógł przekazać tym, którym się mniej poszczęściło..."~ */ GOTO 3
  IF ~~ THEN REPLY #13665 /* ~"Zrozum. Potrzebuję jedynie kilku odpowiedzi. Możesz mi ich udzielić?"~ */ GOTO 7
  IF ~~ THEN REPLY #13666 /* ~"Och, mniejsza z tym. Nie ważne."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13667 /* ~Wesoły grymas zastępuje jego gniewną minę, kiedy zaczyna chichotać. "Zabawny jesteś, śmiałku. 'Wielka mądrość' tyłek mój." Przerywa na chwilę. "W porządku, udało ci się zarobić na kilka odpowiedzi. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #13668 /* ~"Przede wszystkim - co się tu dzieje?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.0 8.1
  SAY #13669 /* ~Wskazuje przez ramię. "Widzisz ten szafot? Jakiś skurl straci swoją głowę. Nie jest to coś, co się widzi na co dzień."~ */
  IF ~~ THEN REPLY #13670 /* ~"Jaką zbrodnię popełnił?"~ */ GOTO 5
  IF ~~ THEN REPLY #13671 /* ~"Och. Chciałbym cię spytać o coś innego."~ */ GOTO 9
  IF ~~ THEN REPLY #13672 /* ~"Rozumiem. Cóż... Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #13673 /* ~"Prawdę mówiąc nie wiem. Być może zabił paru gnojków albo ktoś go zakapował i posłał go na szafot. W tym mieście wszystko jest możliwe."~ */
  IF ~~ THEN REPLY #13674 /* ~"Zakapował?"~ */ GOTO 6
  IF ~~ THEN REPLY #13675 /* ~"Mam kilka innych pytań do ciebie."~ */ GOTO 9
  IF ~~ THEN REPLY #13676 /* ~"Och... Dziękuję. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13677 /* ~Uśmiecha się i zaczyna chichotać. "Jesteś ty nowy, czyż nie? 'Zakapowano go'. Został zdradzony, wystawiony, wbito mu trochę żelaza w plecy - że tak powiem. To się zdarza w Klątwie."~ */
  IF ~~ THEN REPLY #13678 /* ~"Rozumiem. Powiedz mi o czymś innym..."~ */ GOTO 9
  IF ~~ THEN REPLY #13679 /* ~"Hmm. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1
  SAY #13680 /* ~Spogląda na ciebie gniewnie, po czym pokazuje ci obraźliwy gest. "Szpicuj się, trepie!" Odwraca się plecami do ciebie.~ */
  IF ~~ THEN REPLY #13681 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY #13682 /* ~Przytakuje. "Dobrze... A więc, co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #13683 /* ~"Mam kilka pytań do ciebie."~ */ GOTO 2
  IF ~~ THEN REPLY #13684 /* ~"Możesz mi powiedzieć, co tu się dzieje?"~ */ GOTO 4
  IF ~~ THEN REPLY #13685 /* ~"Prawdę mówiąc nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1 5.1 6.0 10.0 11.0 12.0 13.1 14.0
  SAY #13686 /* ~"Jasne." Czeka na twoje pytania.~ */
  IF ~~ THEN REPLY #13687 /* ~"Szukam devy. Słyszałem, że jest gdzieś w Klątwie."~ */ GOTO 10
  IF ~~ THEN REPLY #13688 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 11
  IF ~~ THEN REPLY #13689 /* ~"Kto tu rządzi?"~ */ GOTO 12
  IF ~~ THEN REPLY #13690 /* ~"Jakieś lokalne wieści?"~ */ GOTO 13
  IF ~~ THEN REPLY #13691 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13692 /* ~"Krąży śpiewka, że deva jest w mieście... Nie wiem jednak, gdzie może być. Przebywający w mieście deva ściągnąłby na siebie sporo uwagi." Przerywa na chwilę, by się zastanowić. Nie potrafię ci odpowiedzieć. Popytaj wokół, ktoś go pewnie widział."~ */
  IF ~~ THEN REPLY #13693 /* ~"Kolejne pytanie."~ */ GOTO 9
  IF ~~ THEN REPLY #13694 /* ~"Bardzo mi pomogłeś. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #13695 /* ~Przerywa na chwilę, by się zastanowić, po czym rozgląda się wokół. "Klątwa to kupa gnoju, to jasne jak słońce. Każdy śmiałek musi pilnować tu swojego tyłka... To wszystko, co chciałem powiedzieć."~ */
  IF ~~ THEN REPLY #13696 /* ~"Dobrze. Pozwól mi spytać o coś innego."~ */ GOTO 9
  IF ~~ THEN REPLY #13697 /* ~"Dziękuję za pomoc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #13698 /* ~"To będzie Tovus Giljaf. Możesz go znaleźć w budynku administracyjnym. Drobna rada: Nie mieszaj się w jego sprawy. Nie byłaby to najrozsądniejsza rzecz - możesz stracić głowę." Wskazuje na znajdującą się za nim gilotynę.~ */
  IF ~~ THEN REPLY #13699 /* ~"Zapamiętam to sobie. Kolejna sprawa..."~ */ GOTO 9
  IF ~~ THEN REPLY #13700 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #13701 /* ~Wygląda na to, że na moment zagłębia się w myślach. "Cóż... Śpiewka głosi, że córka Plugawego Barsa zaginęła. Trochę go to wyprowadziło z równowagi. Wszystko inne, co mi do głowy przychodzi, nie jest warte wzmianki."~ */
  IF ~~ THEN REPLY #13702 /* ~"Kim jest ten Plugawy Bars."~ */ GOTO 14
  IF ~~ THEN REPLY #13703 /* ~"Mam do ciebie kolejne pytanie."~ */ GOTO 9
  IF ~~ THEN REPLY #13704 /* ~"Dziękuję za twą pomoc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #13705 /* ~"To karczmarz z gospody 'Brama Zdrajców'. Miejscowej żłopiarni dla różnych takich. Tamtędy w dół, jak sądzę." Wskazuje niejasno.~ */
  IF ~~ THEN REPLY #13706 /* ~"Powiedz mi coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #13707 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END
