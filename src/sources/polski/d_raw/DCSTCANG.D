// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Widzisz młodego mężczyznę o ponurej twarzy. Mamrocze coś do siebie i wydaje się być czymś zaabsorbowany.~ */
  IF ~~ THEN REPLY #3173 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #13708 /* ~Zignoruj go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13709 /* ~Z początku zdaje ci się, że cię nie usłyszał. Potem odwraca jednak głowę i obrzuca cię przelotnym spojrzeniem. Po chwili odwraca się. "Nie znam cię, trepie. I nie chcę cię znać. Odejdź, a nie będę zmuszony wyrządzać ci krzywdy."~ */
  IF ~~ THEN REPLY #13710 /* ~"Wiesz, chcę ci jedynie zadać parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #13711 /* ~"Grozisz nieodpowiedniej osobie, głupcze. Odpowiedz tylko na moje pytania, a zapomnę o konieczności nauczenia cię dobrych obyczajów."~ */ GOTO 3
  IF ~~ THEN REPLY #13712 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13713 /* ~"Dobrze. W takim razie idę już."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13714 /* ~Odwraca głowę, by na ciebie spojrzeć. Twarz ma poczerwieniałą od gniewu. Mówi do ciebie przez zaciśnięte zęby. "Pytania? Czy ja wygląda na miejscowego mędrca, trepie? Znikaj sprzed mojej twarzy, bo będę zmuszony przyprawić twoją o kilka nowych blizn."~ */
  IF ~~ THEN REPLY #13715 /* ~"Grozisz nieodpowiedniej osobie, głupcze. Odpowiedz tylko na moje pytania, a zapomnę o konieczności nauczenia cię dobrych obyczajów."~ */ GOTO 3
  IF ~~ THEN REPLY #13716 /* ~"Przekonajmy się."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13717 /* ~"Dobrze. Pójdę już."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #13718 /* ~Odwraca się, twarz ma poczerwieniałą od gniewu. Gdy przystaje i zaczyna ci się dokładniej przyglądać, wydaje się, że chce ci coś powiedzieć. Kiedy jego wzrok kończy wędrówkę po pokrywających twe ciało bliznach, jego gniew zdaje się topnieć i przemieniać w strach. "Och... Wybacz śmiałku. Jakiż to cieni szukasz?"~ */
  IF ~~ THEN REPLY #13719 /* ~"Szukam devy. Słyszałem, że można go tu znaleźć."~ */ GOTO 4
  IF ~~ THEN REPLY #13720 /* ~"Co tu słychać nowego?"~ */ GOTO 5
  IF ~~ THEN REPLY #13721 /* ~"Opowiedz mi o Klątwie."~ */ GOTO 6
  IF ~~ THEN REPLY #13722 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #13723 /* ~Marszczy brwi, zastanawiając się, po czym odwraca na chwilę wzrok. "To nie to miasto-brama, śmiałku. Devy tędy nie chadzają. W każdym razie ja o takich nie słyszałem."~ */
  IF ~~ THEN REPLY #13724 /* ~"Dobrze. W takim razie parę innych pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #13725 /* ~"Dzięki. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 7.1
  SAY #13726 /* ~"Nie jestem w stanie ci powiedzieć. Staram się nie wtrącać nosa w cudze sprawy. Dzięki temu życie śmiałka jest dłuższe i przyjemniejsze." Przerywa; wygląda na zdenerwowanego. "Nie chcę cię obrazić... ale i ty powinieneś się tym kierować."~ */
  IF ~~ THEN REPLY #13727 /* ~"Zapamiętam to sobie. Powiedz mi teraz o czymś innym."~ */ GOTO 7
  IF ~~ THEN REPLY #13728 /* ~"Zabawne... Nie przypominam sobie, żebym cię prosił o rady. Kolejne tego typu potknięcie może cię słono kosztować."~ */ GOTO 8
  IF ~~ THEN REPLY #13729 /* ~"Dzięki za radę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 7.2
  SAY #13730 /* ~Nim udziela ci odpowiedzi, parska i rozgląda się wokoło przez chwilę. "To miejsce nazywa się Klątwa nie bez powodu, śmiałku. Jest więzieniem dla wszelkiego rodzaju skurli, którym się w życiu nie ułożyło. Najsmutniejsze jest w tym to, że wielu z tych trepów nie wie nawet, że zostali schwytani."~ */
  IF ~~ THEN REPLY #13731 /* ~"Więzieniem?"~ */ GOTO 9
  IF ~~ THEN REPLY #13732 /* ~"Rozumiem. Kolejne pytanie."~ */ GOTO 7
  IF ~~ THEN REPLY #13733 /* ~"Cóż. Dzięki za informacje."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.1 8.0 9.0
  SAY #13734 /* ~"Jasne. Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #13735 /* ~"Szukam devy. Słyszałem, że można go tu znaleźć."~ */ GOTO 4
  IF ~~ THEN REPLY #13736 /* ~"Co tu słychać nowego?"~ */ GOTO 5
  IF ~~ THEN REPLY #13737 /* ~"Opowiedz mi o Klątwie."~ */ GOTO 6
  IF ~~ THEN REPLY #13738 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #13739 /* ~Krew ponownie napływa mu do twarzy, gdy zmaga się ze sobą, by się opanować. "Przepraszam. To się już więcej nie powtórzy. Czy, ech, chcesz jeszcze czegoś?"~ */
  IF ~~ THEN REPLY #13740 /* ~"Taa. Mam do ciebie kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #13741 /* ~"Nie, to już wszystko."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #13742 /* ~Rozgląda się i przysuwa bliżej do ciebie. "Tia, na pierwszy rzut oka tego nie widać, ale Klątwa jest niewątpliwie więzieniem. Spróbuj ją opuścić, a przekonasz się, o czym mówię. Jeśli nie masz wystarczającego powodu i odpowiednich możliwości, nie wydostaniesz się poza bramę miejską."~ */
  IF ~~ THEN REPLY #13743 /* ~"Hmm. Pozwól mi spytać o coś innego."~ */ GOTO 7
  IF ~~ THEN REPLY #13744 /* ~"Dzięki. Żegnaj."~ */ EXIT
END
