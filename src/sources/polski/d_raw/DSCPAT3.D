// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10900 /* ~Jest to z lekka łysiejący mężczyzna z cynicznym wyrazem twarzy. Mówi, ucinając słowa i wypowiadając je bez większego namysłu, za to wyraźnie i czysto. "Czego chcesz, śmiałku?"~ */
  IF ~~ THEN REPLY #10901 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10902 /* ~"Szukam dziennika."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10903 /* ~"Szukam gościa imieniem Farod. Jest Zbieraczem. Czy widziałeś go albo o nim słyszałeś?"~ */ GOTO 8
  IF ~~ THEN REPLY #10904 /* ~"Co możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10905 /* ~"Kim jest tamten płonący przy wejściu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10906 /* ~"Co też takiego ty i twoja przyjaciółka mówiliście o Sigil?"~ */ GOTO 6
  IF ~~ THEN REPLY #10907 /* ~"Nic. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #10908 /* ~"Akurat wtedy, gdy oboje mieliśmy rozpocząć następną pikantną rozmówkę." Sarkazm znika mu z twarzy. "Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #10909 /* ~"Chcę zadać więcej pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10910 /* ~"Nic. Nie ma o czym mówić."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10911 /* ~"Jestem Cilaen o Żelaznych Palcach. Zanim o to spytasz, odpowiem, że noszę to imię, bo mój brat kretyn zrzucił mi na nogi dwudziestopięciokilogramowy kamień, który zgruchotał mi palce u stóp. Mam teraz palce z żelaza. W porządku?"~ */
  IF ~~ THEN REPLY #10912 /* ~"W porządku, jak sądzę. Odpowiesz mi jeszcze na inne pytania?"~ */ GOTO 7
  IF ~~ THEN REPLY #10913 /* ~"Wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10914 /* ~"Nie widziałem żadnego. Przynajmniej nie utkwiło mi nic takiego w pamięci. Jeśli nie był wartościowy, spróbuj poszukać na wysypiskach po drugiej stronie Ula. Współczuję ci. Dzienniki to sama esencja tożsamości. Uświadamiają nam naszą przeszłość i pomagają wytyczać ścieżki w przyszłości. Zawsze prowadzę mój własny dziennik i myślę, że dzięki niemu jestem lepszy." To ostatnie zdanie wypowiada z pełną samozadowolenia rozkoszą.~ */
  IF ~~ THEN REPLY #10915 /* ~"Masz rację. Odpowiedz mi na inne pytania."~ */ GOTO 7
  IF ~~ THEN REPLY #10916 /* ~"Śmieciowisko? Dziękuję bardzo."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10917 /* ~"Jest to gospoda 'Pod Gorejącym Człekiem'. Przywiodłem tu moją pierwszakowatą kuzynkę, żółtodzioba i tępaka, aby zobaczyła widoczki, poczuła zapachy i usłyszała dźwięki piękności Sigil. Na razie nie jest pod wrażeniem."~ */
  IF ~~ THEN REPLY #10918 /* ~"Rozumiem, dlaczego. Czy możesz mi powiedzieć coś jeszcze?"~ */ GOTO 7
  IF ~~ THEN REPLY #10919 /* ~"Naprawdę? To dziwne. Miłego dnia, panie."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10920 /* ~"Wieść niesie, że ten nieszczęsny gość to Ignus. Spalił część Ula, zanim tutejsi zebrali się i zajęli się nim. Zrobili z niego połączenie do Sfery Żywiołu Ognia i teraz wije się ku uciesze gawiedzi. Niezbyt to zabawne, ale na pewno interesujące."~ */
  IF ~~ THEN REPLY #10921 /* ~"Z pewnością. Czy możesz mi powiedzieć coś jeszcze?"~ */ GOTO 7
  IF ~~ THEN REPLY #10922 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10923 /* ~"Ach. Moja *kuzynka*" (akcentuje to słowo, jakby chciał podkreślić, że nie ma wpływu na pokrewieństwo) "ostatnio przybyła tutaj ze swej zapyziałej pierwszej sfery. Mój wuj, znany czarnoksiężnik, przywiódł ją tutaj, aby poszerzyła swoje horyzonty. Pracuje łudząc się, że *to* jest środek wieloświata, i wydaje się jej, że jest to w jakiś sposób istotne. Ponieważ ja tutaj mieszkałem przez całe życie, wiem coś innego - jest to miejsce, gdzie moce i sferourodzeni nie zwracają na siebie uwagi, tak jak ludzie nie patrzą na wiewiórki w parkach miejskich. To nie jest ważne, i im wcześniej ludzie zdadzą sobie sprawę z tego, że są nieważni, tym lepiej dla nich."~ */
  IF ~~ THEN REPLY #10924 /* ~"Naprawdę? Hm. Będę musiał posłuchać, co ona na ten temat sądzi. A tymczasem, czy możesz mi odpowiedzieć na inne pytania?"~ */ GOTO 7
  IF ~~ THEN REPLY #10925 /* ~"To fascynujące. Dziękuję, i miłego dnia."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from: 1.0 2.0 3.0 4.0 5.0 6.0 8.1 9.0
  SAY #10926 /* ~"Czego chcesz się dowiedzieć?"~ */
  IF ~~ THEN REPLY #10927 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10928 /* ~"Szukam dziennika."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10929 /* ~"Szukam Zbieracza imieniem Farod. Czy widziałeś go albo o nim słyszałeś?"~ */ GOTO 8
  IF ~~ THEN REPLY #10930 /* ~"Co możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10931 /* ~"Kim jest tamten płonący gość przy wejściu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10932 /* ~"Co też takiego ty i twoja przyjaciółka mówiliście o Sigil?"~ */ GOTO 6
  IF ~~ THEN REPLY #10933 /* ~"Nic. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 7.2
  SAY #10934 /* ~"Zbieracz? Czy to któryś z tych nieznośnych nosicieli zwłok? Nie stykam się z nimi. To naprawdę nie moja Dzielnica. Tak więc, nie, nigdy o nim nie słyszałem."~ */
  IF ~~ THEN REPLY #10935 /* ~"Jaka JEST twoja Dzielnica?"~ */ GOTO 9
  IF ~~ THEN REPLY #10936 /* ~"Niezbyt to pomocne. Może mógłbyś mi odpowiedzieć na parę innych pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10937 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10938 /* ~"Mieszkam w Dzielnicy Pani, wraz z moim wujem. Ogólnie rzecz biorąc, mieszka tam lepszy rodzaj ludzi, jeśli wolno mi tak powiedzieć. Żadne tam męty, które możesz tu spotkać. Nie, powiedziałbym, że przyjście do tego miejsca jest ZDECYDOWANIE degradujące społecznie. Nie mogę powiedzieć, żeby mi to sprawiało przyjemność, ale, cóż, powiadają, że trzeba skorzystać z tej szerokiej oferty, jaką życie nam niesie. Prawie już z tym skończyłem."~ */
  IF ~~ THEN REPLY #10939 /* ~"Dzielnica Pani, co? Doskonale. Odpowiedz na parę pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10940 /* ~"Doskonale. Żegnaj."~ */ EXIT
END
