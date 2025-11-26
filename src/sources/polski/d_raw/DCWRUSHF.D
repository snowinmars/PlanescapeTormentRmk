// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25842 /* ~Ta schludna i bogato ubrana kobieta bez wątpienia dokądś zdąża.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #25843 /* ~"Witaj..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #25938 /* ~"Witaj..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 26
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #25939 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #25940 /* ~Pozwól jej iść dalej.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #25844 /* ~Jej oczy rozszerzają się, gdy przystaje, by ci się przyjrzeć dokładniej. Zaczyna rozglądać się, czy nie wołasz przypadkiem kogoś innego, po czym uśmiecha się z trudem "Przepraszam... czy my się znamy?"~ */
  IF ~~ THEN REPLY #25845 /* ~"Nie, mam jednak kilka pytań do ciebie..."~ */ GOTO 2
  IF ~~ THEN REPLY #25926 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 23
  IF ~~ THEN REPLY #25930 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0 26.3 29.0 30.2 31.0
  SAY #25846 /* ~"Zdążam dokądś, panie... I, niestety, mam dość niewiele czasu, by tam dotrzeć." Cofa się o jeden krok. "W tym wypadku, jeśli nie miałbyś nic przeciwko..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25847 /* ~"Tylko jedno pytanie, dobrze?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25920 /* ~"Tylko jedno pytanie, dobrze?~ */ GOTO 20
  IF ~~ THEN REPLY #25924 /* ~"*Mam* coś przeciwko. Odpowiedz teraz na moje pytania..."~ */ GOTO 6
  IF ~~ THEN REPLY #25925 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25848 /* ~Przygryza wargę, następnie kiwa głową. "W porządku, panie. Ale spiesz się z pytaniem, wszakże czas to pieniądz!"~ */
  IF ~~ THEN REPLY #25849 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #25864 /* ~"Czy jest tu coś godnego uwagi?"~ */ GOTO 8
  IF ~~ THEN REPLY #25871 /* ~"Gdzie można znaleźć tu jakąś pracę?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25876 /* ~"Potrzebuję wskazówek, jak dojść..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25911 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 21
  IF ~~ THEN REPLY #25919 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25850 /* ~Jej brwi unoszą się ze zdziwieniem. "To Dzielnica Urzędników, panie. Czyżbyś pomylił drogę? Mniejsza z tym. Muszę już iść! Żegnaj..."~ */
  IF ~~ THEN REPLY #25851 /* ~"Poczekaj... Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #25863 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25852 /* ~"Zgodziłam się tylko na jedno pytanie, panie. Bądź więc łaskaw to uszanować i pozwól mi podążyć moją drogą, dobrze? Być może znajdziesz kogoś, kto posiada więcej wolnego czasu, w jednej z pobliskich kawiarenek."~ */
  IF ~~ THEN REPLY #25853 /* ~"Stój. Będziesz tu stać i odpowiesz na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #25862 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25854 /* ~Oczy jej zwężają się. "Być może dzięki swym prostackim manierom i upiornemu obliczu udawało ci się zastraszać ludzi z innych miejsc... Ale tu, w tej praworządnej części Sigil, obowiązują odpowiednie przepisy. Tak więc odejdź, 'panie', albo będę zmuszona wezwać pomoc."~ */
  IF ~~ THEN REPLY #25855 /* ~"Wątpię, czy komukolwiek uda się przybyć na czas, by cię uratować."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25859 /* ~"Jeśli ci życie miłe, nawet nie próbuj wzywać kogokolwiek."~ */ GOTO 7
  IF ~~ THEN REPLY #25860 /* ~"Przyjmij me przeprosiny. Żegnam."~ */ EXIT
  IF ~~ THEN REPLY #25861 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25856 /* ~Zaczyna się cofać, wzywając pomocy. "Straż! Straż!".~ */
  IF ~~ THEN REPLY #25857 /* ~Zaatakuj ją.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25858 /* ~Spróbuj odejść, zanim ktokolwiek przybędzie.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25865 /* ~"Bardzo wiele, panie! A szczególnie tu - w tej części Dzielnicy Urzędników, gdzie mieści się Miejski Gmach Rozrywki. Jest również Galeria Sztuki i Osobliwości."~ */
  IF ~~ THEN REPLY #25866 /* ~"Coś jeszcze?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25867 /* ~Zastanawia się przez chwilę. "Hmm. A więc... warsztat krawiecki Gonkalfa, apteka, dom adwokata oraz Przybytek Zaspokajania Żądz Intelektualnych. No i rozciągające się pod dzielnicą katakumby... A także ten dziwny sklepik sprzedający osobliwości."~ */
  IF ~~ THEN REPLY #25868 /* ~"Mam pytanie dotyczące jednego z miejsc, o których wspominałaś..."~ */ GOTO 5
  IF ~~ THEN REPLY #25869 /* ~"Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25870 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25872 /* ~Zastanawia się przez chwilę. "Możesz spróbować w Miejskim Gmachu Rozrywki - być może znajdą tam coś dla ciebie. Możesz też zajrzeć do adwokata, a także do apteki. Niestety, muszę już iść... Żegnaj."~ */
  IF ~~ THEN REPLY #25873 /* ~"Mam pytanie dotyczące jednego z miejsc, o których wspominałaś..."~ */ GOTO 5
  IF ~~ THEN REPLY #25874 /* ~"Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25875 /* ~"Dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25877 /* ~"Czego szukasz, panie?"~ */
  IF ~~ THEN REPLY #25878 /* ~"Dom adwokata."~ */ GOTO 12
  IF ~~ THEN REPLY #25882 /* ~"Apteka."~ */ GOTO 13
  IF ~~ THEN REPLY #25886 /* ~"Sklep z dziełami sztuki."~ */ GOTO 14
  IF ~~ THEN REPLY #25890 /* ~"Przybytek."~ */ GOTO 15
  IF ~~ THEN REPLY #25894 /* ~"Ciągnące się pod dzielnicą katakumby."~ */ GOTO 16
  IF ~~ THEN REPLY #25898 /* ~"Miejskie Centrum Rozrywki."~ */ GOTO 17
  IF ~~ THEN REPLY #25902 /* ~"Sklepik osobliwości."~ */ GOTO 18
  IF ~~ THEN REPLY #25906 /* ~"Warsztat krawiecki."~ */ GOTO 19
  IF ~~ THEN REPLY #25910 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25879 /* ~"Dom Iannisa położony jest na południe od bramy wiodącej do niższej dzielnicy - przez którą najpewniej po raz pierwszy tu przyszedłeś. Znajdziesz go przy wschodniej stronie drogi."~ */
  IF ~~ THEN REPLY #25880 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25881 /* ~"Rozumiem. Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25883 /* ~"Podążaj tą drogą, która wiedzie na wschód od bramy prowadzącej do Dzielnicy Niższej - przez którą tu pewnie po raz pierwszy przyszedłeś. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy wschodniej stronie drogi. Na jego frontowej ścianie, wychodzącej na południe, znajdują się trzy witraże."~ */
  IF ~~ THEN REPLY #25884 /* ~"Dzięki. Pozwól, że spytam o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25885 /* ~"Rozumiem. Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25887 /* ~"Podążaj tą drogą, która wiedzie na wschód od bramy prowadzącej do Dzielnicy Niższej - którą zapewne tu po raz pierwszy przyszedłeś. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy zachodniej stronie drogi. Jego przód wychodzi na południe i wieńczy go dach, którego dachówki przytrzymywane są przez sporych rozmiarów kamienie."~ */
  IF ~~ THEN REPLY #25888 /* ~"Dziękuję. Pragnę jeszcze spytać o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25889 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25891 /* ~Wykonuje wskazujący gest, potrząsając głową. "To zaraz na wschód od bramy wiodącej do Niższej dzielnicy - przez którą tu pewnie po raz pierwszy przyszedłeś. Będzie to sporych rozmiarów owalny budynek z wejściem wychodzącym na południe."~ */
  IF ~~ THEN REPLY #25892 /* ~Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25893 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25895 /* ~Marszczy brwi. "Te wejścia wciąż pozostają otwarte? Jeśli tak, na pewno są strzeżone... Powiadają, że katakumby te należą do wyjątkowo niebezpiecznych miejsc. Sama jednak nie wiem, jak się tam dostać, panie."~ */
  IF ~~ THEN REPLY #25896 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25897 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25899 /* ~"Wyjątkowo łatwo jest znaleźć Miejski Gmach Rozrywki, panie. To ten masywny budynek znajdujący się w północno-wschodniej części sekcji."~ */
  IF ~~ THEN REPLY #25900 /* ~"Rozumiem. Pozwól, że spytam o coś jeszcze..."~ */ GOTO 5
  IF ~~ THEN REPLY #25901 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25903 /* ~"Znajduje się on w części południowo-wschodniej. Na szczyt tego niepospolitego gmachu wiodą szerokie schody. Sama tam nigdy nie byłam... Myśl o nim jednak przepełnia mnie dziwnym uczuciem."~ */
  IF ~~ THEN REPLY #25904 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25905 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25907 /* ~"Jeśli szukasz warsztatu krawieckiego, znajdziesz go kierując się nieco na północny wschód od bramy prowadzącej do Niższej Dzielnicy. Tej, którą najpewniej sam przyszedłeś. Gdy zobaczysz szeroki budynek z wejściami wychodzącymi na południe, to będzie właśnie to."~ */
  IF ~~ THEN REPLY #25908 /* ~"Dzięki. Pozwól, że spytam o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25909 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25912 /* ~"Potrząsa przecząco głową. "Bardzo mi przykro... Być może w którejś z pobliskich kawiarni znajdziesz kogoś, kto będzie miał więcej czasu, panie. Teraz żegnaj."~ */
  IF ~~ THEN REPLY #25913 /* ~"Stój. Będziesz tu stać i odpowiesz na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #25917 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25914 /* ~"Ravela, Nocna Wiedźma? Moi rodzice opowiadali mi bajki o niej, gdy byłam dzieckiem... Przerażające historie..."~ */
  IF ~~ THEN REPLY #25915 /* ~"Bajki?"~ */ GOTO 22
  IF ~~ THEN REPLY #25916 /* ~"No tak. Chciałbym zapytać o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #25918 /* ~"Dziękuję. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25921 /* ~Potwierdza. "Tak. O przesiąkniętej złem wiedźmie, która usiłowała złamać potęgę Sigil. Mówili, że przyjdzie mnie zebrać, jeśli będę płakać zbyt głośno. Że weźmie mnie do miejsca, w którym sama została uwięziona." Wyraz jej twarzy zmienia się niespodziewanie. "Niestety, muszę już iść. Żegnaj, panie."~ */
  IF ~~ THEN REPLY #25922 /* ~"Poczekaj. Mam jeszcze jedno pytanie..."~ */ GOTO 5
  IF ~~ THEN REPLY #25923 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1 26.4
  SAY #25927 /* ~"Ależ nie... W żadnym wypadku!" Śmieje się nerwowo. "No, może trochę..." Wskazuje na twój pokryty bliznami, nagi tors. "Wyglądasz trochę bardziej... ach... dziko, niż typowi mieszkańcy dzielnicy, nie sądzisz? Proszę tylko, bądź łaskaw nie czuć do mnie urazy za te słowa, panie."~ */
  IF ~~ THEN REPLY #25928 /* ~"Ależ nie. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #25929 /* ~"Nic mi już więcej nie trzeba. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25932 /* ~Kobieta odpowiada ci grzecznym ukłonem. "Witam i żegnam zarazem, panie. Wybacz mi, ale trochę się spieszę."~ */
  IF ~~ THEN REPLY #25933 /* ~"Chwila. Mam jeszcze parę pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #25937 /* ~"Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25934 /* ~"Jak już wspomniałem, panie, spieszę się niezmiernie. Być może w którejś z pobliskich kawiarni uda ci się znaleźć kogoś posiadającego więcej wolnego czasu. Żegnaj."~ */
  IF ~~ THEN REPLY #25935 /* ~"Stój. Będziesz tu stać i odpowiesz na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #25936 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.1
  SAY #25941 /* ~Jej oczy rozszerzają się nagle, gdy przystaje, by ci się przyjrzeć dokładniej. Zaczyna się rozglądać, czy nie wołasz przypadkiem kogoś innego, po czym uśmiecha się z trudem: "Przepraszam, czy my się zn..." Dostrzega nagle Mortego. "O! Jaki śliczny mały mimir!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #25942 /* ~"Mimir?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 244
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25943 /* ~"Nieprawdaż? Lubi, gdy się go drapie po czubku czaszki."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25944 /* ~"Nie radziłbym go dotykać - gryzie."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 248
  IF ~~ THEN REPLY #25945 /* ~"Tak, tak. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #25946 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 23
  IF ~~ THEN REPLY #25947 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25948 /* ~Kobieta uśmiecha się. "Niesamowite! Potrafi nawet mówić!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 245
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #25950 /* ~Potrząsa przecząco głowo. "Nie, żaden z tych, które widziałam. To przecież tylko przedmioty, czyż..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 247
END

IF ~~ THEN BEGIN 29 // from:
  SAY #25952 /* ~Kobieta wzrusza ramionami. "Być może."~ */
  IF ~~ THEN REPLY #25953 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #25954 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1
  SAY #25955 /* ~"Doprawdy?" Dalej się uśmiecha, choć spogląda podejrzliwie. "Najpewniej żarty sobie stroisz, panie. Przecież to tylko mimir..."~ */
  IF ~~ THEN REPLY #25956 /* ~"Co przez to rozumiesz? Czyż nie sprawia im to przyjemności?~ */ GOTO 28
  IF ~~ THEN REPLY #25957 /* ~"Skądże. Mówię prawdę. Spróbuj."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #25958 /* ~"Mniejsza z nim. Mam jeszcze inne pytania..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #25959 /* ~Wyciąga rękę i z wielką ostrożnością dotyka Mortego. Ten zaś, odpowiednio zresztą, zaczyna się łasić do jej ręki, szczerząc się dziko i mrugając do ciebie przez cały czas. Kobieta śmieje się z trudem: "Jakież to dziwne!"~ */
  IF ~~ THEN REPLY #25960 /* ~"No... tak. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #25961 /* ~"Tak to już bywa. Żegnaj."~ */ EXIT
END
