// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Widzisz rozczochranego, niechlujnie ubranego człowieka. Zalatuje od niego alkoholem. "No? Czego?" Pochyla się i ogląda cię od stóp do głów. "Chyba przydałby ci się UZDRAWIACZ!" Głośno śmieje się ze swego słabego dowcipu, a smród alkoholu i źle przetrawionego jedzenia przyprawia cię o mdłości i sprawia, że masz ochotę zwymiotować.~ */
  IF ~~ THEN REPLY #3372 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10782 /* ~"Szukam dziennika. Widziałeś go?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10783 /* ~"Szukam Zbieracza o imieniu Farod. Czy wiesz coś o nim?"~ */ GOTO 7
  IF ~~ THEN REPLY #10784 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10785 /* ~"Kim jest tamten płonący przy wejściu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10786 /* ~"Najwyraźniej nie możesz mi pomóc. Miłego dnia."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10787 /* ~"A niech mnie, jeśli to nie mój stary druh, Pan Blizna!" Rechota pod nosem, a przynajmniej bardzo się stara to zrobić. Będąc pod znacznym wpływem alkoholu, nie jest w stanie niczego robić cicho. "Co stary Pysio może dla ciebie zrobić, człowieku z bliznami?"~ */
  IF ~~ THEN REPLY #10788 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10789 /* ~"Szukam dziennika. Najwyraźniej gdzieś mi się zapodział."~ */ GOTO 3
  IF ~~ THEN REPLY #10790 /* ~"Co możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10791 /* ~"Kim jest tamten płonący przy wejściu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10792 /* ~"Nic. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 6.0
  SAY #10793 /* ~"Ja? Jestem ANDOR!" Splata nogi. "Kiedyś był ze mnie tęgi chwat, a jakże, ale to było kiedyś, kiedy jeszcze siara i bełt nie wzięły się za mnie na dobre. Przyjaciele nazywali mnie Pysio, bo kiedyś nieźle waliłem ludzi po szczękach, ale teraz nazywają mnie tak, bo wiele kobitek mnie wali po twarzy, kiedy z nimi gadam."~ */
  IF ~~ THEN REPLY #10794 /* ~"To wspaniale. Czy możesz mi odpowiedzieć na kilka pytań?"~ */ GOTO 6
  IF ~~ THEN REPLY #10795 /* ~"To świetnie... eee... Andor. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 6.1
  SAY #10796 /* ~Na chwilę przerywa. "Jeżeli zginął ci w Ulu, to jest szansa, że jakiś Zbieracz gdzieś go ma. Sprawdź jeszcze w Ulu. Różne rzeczy tam znajdują. Może będą mogli ci pomóc."~ */
  IF ~~ THEN REPLY #10797 /* ~"W porządku. Poproszę cię jeszcze o parę odpowiedzi."~ */ GOTO 6
  IF ~~ THEN REPLY #10798 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 6.3
  SAY #10799 /* ~"To miejsce? Gospoda 'Pod Gorejącym Człekiem'. Najlepsze miejsce w mieście, jeśli chcesz coś łyknąć. To znaczy, jeżeli nie masz nic przeciwko piciu w towarzystwie takiego czy innego biesa. Albo jeśli ci nie przeszkadza to, że od czasu do czasu jakiś Łaskobójca pokaże tu swój łeb. Jest tu kupa luda. Mnóstwo ciekawych rzeczy. Mnóstwo."~ */
  IF ~~ THEN REPLY #10800 /* ~"Zakładam, że w takim razie jesteś jedną z atrakcji. Odpowiedz mi jeszcze na kilka pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #10801 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.3 6.4
  SAY #10802 /* ~"Tamten? To Ignus. Jakiś stary walnięty bałwan, czarownik, który sobie wymyślił, że spali Ul. Czy znana ci jest Aleja Niebezpiecznych Węgłów? To jego sprawka. Grupa czarnoksiężników zebrała się i rzuciła na niego jakieś czary i teraz jest takim charakterystycznym elementem gospody... eee... maskotką. Mój kuzyn był jednym z tych czarnoksiężników. Żaden tam z niego wielki mag, ale udało mu się dostać tego trepa!"~ */
  IF ~~ THEN REPLY #10803 /* ~"To wspaniale, Pysiu. Odpowiedz mi jeszcze na kilka pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #10804 /* ~"Dzięki, Pysiu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 4.0 5.0 7.0
  SAY #10805 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #10806 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10807 /* ~"Szukam dziennika. Czy widziałeś jakiś ostatnio?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10808 /* ~"Szukam Zbieracza o imieniu Farod. Czy wiesz coś o nim?"~ */ GOTO 7
  IF ~~ THEN REPLY #10809 /* ~"Co mi możesz opowiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10810 /* ~"Kim jest tamten płonący przy wejściu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10811 /* ~"Nic. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 6.2
  SAY #10812 /* ~"Farod? Jakieś takie znajome imię, ale... ech, wiesz przecież, jak to jest, kiedy se człowiek walnie trochę bełtu. Po prostu nie pamiętam. Przepraszam, bliźniaku."~ */
  IF ~~ THEN REPLY #10813 /* ~"Doskonale. Czy możesz mi w takim razie odpowiedzieć na kilka pytań?"~ */ GOTO 6
  IF ~~ THEN REPLY #10814 /* ~"Doskonale. Miłego dnia."~ */ EXIT
END
