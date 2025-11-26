// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADMINAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DADMINAS~

IF ~  Global("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61498 /* ~Widzisz człowieka w średnim wieku, odzianego w przedniej jakości szaty. Kiedy się zjawiasz, jegomość ów posyła ci znudzone spojrzenie.~ */
  IF ~~ THEN REPLY #61499 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #61500 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61501 /* ~Mężczyzna odkłania ci się niedbale. "I ty witaj, śmiałku. Jestem Karl Parfidor, pomocnik zarządcy. Czy mogę ci w czymś pomóc?"~ */
  IF ~~ THEN REPLY #61502 /* ~"Szukam devy. Powiedziano mi, że przebywa w Klątwie."~ */ GOTO 2
  IF ~~ THEN REPLY #61503 /* ~"Nie sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #61504 /* ~Mężczyzna krzywi się nieznacznie. "Chyba masz na myśli Triasa. Tak, on jest tutaj. Nawiasem mówiąc, jest w tutejszym więzieniu. A z jakiego powodu chcesz się z nim zobaczyć?"~ */
  IF ~~ THEN REPLY #61505 /* ~"Czy muszę mieć powód?"~ */ GOTO 3
  IF ~~ THEN REPLY #61506 /* ~"To sprawa prywatna."~ */ GOTO 4
  IF ~~ THEN REPLY #61507 /* ~"Mam kilka pytań, na które Trias może udzielić odpowiedzi."~ */ GOTO 5
  IF ~~ THEN REPLY #61508 /* ~"Mniejsza o to, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61509 /* ~Parfidor wybucha śmiechem. "Ano, tak. Musisz. Więc mów, dlaczego chcesz się zobaczyć z Triasem?"~ */
  IF ~~ THEN REPLY #61510 /* ~"To sprawa prywatna."~ */ GOTO 4
  IF ~~ THEN REPLY #61511 /* ~"Mam kilka pytań, na które Trias może udzielić odpowiedzi."~ */ GOTO 5
  IF ~~ THEN REPLY #61512 /* ~"Mniejsza o to, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #61513 /* ~Parfidor uśmiecha się i potrząsa głową. "Nic, co dotyczy Triasa nie jest sprawą prywatną. Zatem dlaczego chcesz się z nim zobaczyć?"~ */
  IF ~~ THEN REPLY #61514 /* ~"Mam kilka pytań, na które Trias może udzielić odpowiedzi."~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #61515 /* ~"Mniejsza o to, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 4.0
  SAY #61516 /* ~Pomocnik zarządcy mierzy cię przez dłuższą chwilę ciężkim spojrzeniem. "Ach tak. Cóż, nikt nie może widywać się z Triasem bez pozwolenia Tovusa Giljafa." Uśmiecha się promiennie. "A nikt nie jest w stanie spotkać się z Tovusem, jeśli ten wcześniej nie zażyczy sobie takiego spotkania. Dlatego radziłbym ci, abyś sobie poszedł."~ */
  IF ~~ THEN REPLY #61517 /* ~"Ty na pewno mógłbyś umożliwić mi spotkanie z Tovusem."~ */ GOTO 6
  IF ~~ THEN REPLY #61518 /* ~"Mniejsza o to, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61519 /* ~Parfidor zanosi się śmiechem. "Tak, ale nie mam zamiaru zezwolić ci na wejście do środka, o ile Tovus wcześniej po ciebie nie pośle. A teraz już odejdź."~ */
  IF ~~ THEN REPLY #61520 /* ~"Zawsze mogę cię stąd wyrzucić i po prostu poszukać go na własną rękę."~ */ GOTO 7
  IF ~~ THEN REPLY #61521 /* ~"To dla mnie bardzo ważne. Musi istnieć jakiś sposób, abym zobaczył się z Tovusem."~ */ GOTO 8
  IF ~~ THEN REPLY #61522 /* ~"Mniejsza o to, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61523 /* ~Parfidor mierzy cię długim spojrzeniem od stóp do głów i kiwa głową. "No tak. Prezentujesz się dosyć groźnie i zapewne dałbyś mi radę bez większego trudu. Ale weź pod uwagę, że strażnicy miejscy też nie wyfrunęli sroce spod ogona, a poza tym Tovus jest znakomitym czaromiotem. Na twoim miejscu nie próbowałbym szczęścia..."~ */
  IF ~~ THEN REPLY #61524 /* ~"To dla mnie bardzo ważne. Musi istnieć jakiś sposób, abym zobaczył się z Tovusem."~ */ GOTO 8
  IF ~~ THEN REPLY #61525 /* ~"Mniejsza o to, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #61526 /* ~Mężczyzna potrząsa głową. "Przejść przez te drzwi możesz jedynie wówczas, kiedy Tovus po ciebie pośle, albo jeżeli ja cię przepuszczę. A tak się składa, że ani Tovus nie zażyczył sobie twojej wizyty, ani ja nie mam najmniejszego zamiaru wpuszczać cię do środka." Wybucha śmiechem. "Chyba, żebyś załatwił dla mnie jakąś ważną sprawę. Ale w tym momencie nic takiego nie przychodzi mi do głowy."~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61527 /* ~"A co powiesz, jeśli ci zdradzę, że twoja żona Roberta knuje spisek na twoje życie?"~ */ DO ~SetGlobal("Roberta_Betrayed","GLOBAL",1)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 9
  IF ~~ THEN REPLY #61528 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61529 /* ~Parfidor spogląda na ciebie obojętnie i parska. "To zabawne. Niby dlaczego miałaby planować coś takiego?"~ */
  IF ~~ THEN REPLY #61530 /* ~"Roberta już od dłuższego czasu śledzi twoje poczynania. Znane jej są wszystkie twoje przygody z ladacznicami i dlatego życzy ci śmierci."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61531 /* ~Zdaje się, że tym razem autentycznie przyciągnąłeś jego uwagę. Parfidor odzywa się, powoli cedząc słowa. "A kto, jeśli wolno wiedzieć, ma się dopuścić tego czynu? Może ty?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61532 /* ~"Nie. Roberta zamierza wynająć do tego zadania którąś z ladacznic. Prawdopodobnie dziewczynę o imieniu Kiri."~ */ GOTO 11
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61533 /* ~"Nie. Roberta zamierza wynająć do tego zadania którąś z ladacznic, bo nikt inny nie może tak łatwo znaleźć się blisko ciebie."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #61534 /* ~Parfidor patrzy na ciebie przez dłuższą chwilę. "Poczekaj tutaj. Będę z powrotem za godzinę..." Zbiera się do odejścia, ale jeszcze zatrzymuje się na chwilę. "Aha. I lepiej byłoby, gdyby twoje rewelacje pokrywały się z prawdą. Jeżeli okaże się, że jest inaczej, znajdziesz się w więzieniu razem z Triasem." Uśmiecha się złośliwie. "Wtedy pynajmniej, bez żadnych trudności, będziesz mógł sobie z nim porozmawiać. Ale wierzaj mi, to będzie dla ciebie jedyne i bardzo niewielkie pocieszenie." Parfidor odchodzi.~ */
  IF ~~ THEN REPLY #61535 /* ~"Zaczekam."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #61536 /* ~Widzisz Karla Parfidora. Na jego twarzy mieszka smutek. "Dziękuję, że poczekałeś na mnie, śmiałku. Wygląda na to, że twoje informacje były prawdziwe. Dziękuję ci."~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61537 /* ~"Zatem, co się teraz stanie z Robertą i Kiri?"~ */ GOTO 14
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61538 /* ~"Zatem, co się teraz stanie z Robertą?"~ */ GOTO 15
  IF ~~ THEN REPLY #61539 /* ~"A więc, czy teraz mogę zobaczyć się z Tovusem?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.0 15.0
  SAY #61540 /* ~Parfidor potrząsa głową. "Nie, nic z tego. Nikt nie może zobaczyć się z Tovusem Giljafem, póki nie zostanie przez niego wezwany. Radziłbym ci, abyś się stąd wyniósł, zanim każę cię zaaresztować za planowanie zamachu na osobę urzędnika miejskiego!" Obdarza cię uśmiechem. "Chyba że uśmiecha ci się perspektywa spędzenia reszty życia w jednej celi z Robertą?"~ */
  IF ~~ THEN REPLY #61541 /* ~"Nie. Będę się już zbierał. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #61542 /* ~Parfidor patrzy na ciebie ze zdziwieniem. "A co? Ma to dla ciebie jakieś znaczenie?" Wzrusza ramionami. "Nie ma w tym nic nadzwyczajnego. Roberta przyznała się do przestępstwa i znajdzie się w więzieniu. Natomiast jeśli chodzi o Kiri, to mam wobec niej osobne plany." Uśmiecha się.~ */
  IF ~~ THEN REPLY #61543 /* ~"A zatem, czy teraz mogę zobaczyć się z Tovusem?"~ */ GOTO 13
  IF ~~ THEN REPLY #61544 /* ~"Ach tak. Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #61545 /* ~Parfidor patrzy na ciebie ze zdziwieniem. "A co? Ma to dla ciebie jakieś znaczenie?" Wzrusza ramionami. "Nie ma w tym nic nadzwyczajnego. Roberta przyznała się do przestępstwa i znajdzie się w więzieniu." Obdarza cię promiennym uśmiechem.~ */
  IF ~~ THEN REPLY #61546 /* ~"A zatem, czy teraz mogę zobaczyć się z Tovusem?"~ */ GOTO 13
  IF ~~ THEN REPLY #61547 /* ~"Ach tak. Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61548 /* ~Widzisz człowieka w średnim wieku, odzianego w przedniej jakości szaty. Kiedy się zjawiasz, jegomość ów posyła ci znudzone spojrzenie.~ */
  IF ~~ THEN REPLY #61549 /* ~"Witaj."~ */ GOTO 17
  IF ~~ THEN REPLY #61550 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61551 /* ~Mężczyzna odkłania ci się niedbale. "Dzień dobry, śmiałku. Jestem pomocnikiem zarządcy. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #61552 /* ~"Szukam devy. Powiedziano mi, że przebywa w Klątwie."~ */ GOTO 18
  IF ~~ THEN REPLY #61553 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61554 /* ~"Proszę o chwilkę cierpliwości." Mężczyzna przez chwilę grzebie w papierach, a potem odnajduje pewną kartkę i zagłębia się w lekturze. "A! To ten! Chodzi ci o Triasa. Hmm..." Marszczy brwi i kręci głową.~ */
  IF ~~ THEN REPLY #61555 /* ~"Czy jest jakiś problem?"~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61556 /* ~"Obawiam się, że tak... Nikomu nie wolno widywać się z Triasem bez zezwolenia Tovusa Giljafa."~ */
  IF ~~ THEN REPLY #61557 /* ~"Wobec tego chciałbym zobaczyć się z Tovusem."~ */ GOTO 20
  IF ~~ THEN REPLY #61558 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61559 /* ~Mężczyzna marszczy brwi i kręci głową. "Obawiam się, że to niemożliwe. Nikt nie może zobaczyć się z Tovusem, dopóki nie zostanie przez niego wezwany."~ */
  IF ~~ THEN REPLY #61560 /* ~"To dla mnie bardzo ważne."~ */ GOTO 21
  IF ~~ THEN REPLY #61561 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #61562 /* ~Mężczyzna posyła ci gniewne spojrzenie. "Wybacz śmiałku, ale nikt nie może zobaczyć się z Tovusem, dopóki nie otrzyma od niego wezwania. Proszę cię, odejdź."~ */
  IF ~~ THEN REPLY #61563 /* ~"A czy nie mogę przynajmniej umówić się na spotkanie z Tovusem w innym terminie?"~ */ GOTO 22
  IF ~~ THEN REPLY #61564 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61565 /* ~Parfidor patrzy na ciebie wymownie. "Nie. Nie możesz spotkać się z Tovusem, ani dzisiaj, ani jutro, ani żadnego innego dnia, chyba że Tovus sam po ciebie pośle. Nie możesz umówić się na spotkanie z Tovusem, ani na dzisiaj, ani na jutro, ani na żaden inny dzień, bo Tovus nie zwykł umawiać się na żadne spotkania. Jeżeli chciałbyś zobaczyć się z Tovusem, musisz poczekać, aż ON sam będzie chciał się z TOBĄ zobaczyć. A będzie się chciał z TOBĄ zobaczyć, wtedy, kiedy po CIEBIE pośle." Parfidor milknie na chwilę, i zaczerpuje tchu. "Czy wyraziłem się wystarczająco jasno?"~ */
  IF ~~ THEN REPLY #61566 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END
