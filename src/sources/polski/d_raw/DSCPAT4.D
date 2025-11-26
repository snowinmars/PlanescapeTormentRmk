// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10941 /* ~Jest to kobieta z oczami utkwionymi w jakimś punkcie w oddali. Nie jest właściwie ani młoda, ani stara. Być może to wyraz lekkiego niedowierzania odbił się na rysach jej twarzy. Może to oznaczać, że kobieta nie dowierza własnym zmysłom. Kiedy jej wzrok spoczywa na tobie, kobieta odzywa się tonem ostrym, ale pozbawionym złości. "Czy czegoś ci potrzeba?"~ */
  IF ~~ THEN REPLY #10942 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #10943 /* ~"Szukam dziennika."~ */ GOTO 3
  IF ~~ THEN REPLY #10944 /* ~"Szukam Zbieracza o imieniem Farod. Czy widziałaś lub słyszałaś o nim?"~ */ GOTO 12
  IF ~~ THEN REPLY #10945 /* ~"Co możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10946 /* ~"Kim jest tamten płonący gość przy wejściu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10947 /* ~"Cóż to takiego mówiliście, ty i twój przyjaciel, na temat Sigil?"~ */ GOTO 6
  IF ~~ THEN REPLY #10948 /* ~"Nic. Miłego dnia."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10949 /* ~"Czy czegoś ci potrzeba?"~ */
  IF ~~ THEN REPLY #10950 /* ~"Odpowiedzi na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10951 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10952 /* ~"Jestem Kiarus. Kiarus o Cierniowym Języku. Jestem tu z kuzynem, ponieważ mój wuj nie chce, abym włóczyła się po Ulu na własną rękę. Chyba nie wierzy, że mogłabym okazać się kompetentna. Być może ma rację. Nie znam tego miasta i tej sfery bardzo dobrze. Nie pochodzę stąd. Jestem ze Sfery Pierwszej."~ */
  IF ~~ THEN REPLY #10953 /* ~"Sfera Pierwsza? Co to takiego?"~ */ GOTO 9
  IF ~~ THEN REPLY #10954 /* ~"Jesteś ze Sfery Pierwszej?"~ */ GOTO 10
  IF ~~ THEN REPLY #10955 /* ~"Cóż, w dalszym ciągu mogłabyś odpowiedzieć na kilka moich pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10956 /* ~"W takim razie chyba nie możesz odpowiedzieć na moje pytania."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10957 /* ~"Przykro mi. Jestem nowa w tym mieście i mogę cię zapewnić, że nie widziałam niczego, co byłoby dziennikiem - chociaż mówiono mi, że coś, co wygląda na osobę, może tak naprawdę być dziennikiem dla jakiejś innej istoty. Wciąż usiłuję pojąć tutejszą filozofię. Jest trochę obezwładniająca, ale powiadają, że jak się człowiek do niej przyłoży, staje się o wiele łatwiejsza."~ */
  IF ~~ THEN REPLY #10958 /* ~"Co za ulga. Chcę prosić cię o odpowiedzi na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10959 /* ~"Naprawdę mam taką nadzieję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10960 /* ~"Jak rozumiem, jest to gospoda 'Pod Gorejącym Człekiem', nazwana tak od tego płonącego gościa obok wejścia. Z tego, co widzę, jest to speluna, gdzie szumowiny mieszają się ze śmietanką tworząc całkowicie nieapetyczną nową jakość. Naturalnie, będąc przybyszem z Pierwszej Sfery, moje spostrzeżenia mogą być cyniczne."~ */
  IF ~~ THEN REPLY #10961 /* ~"Jesteś z Pierwszej Sfery? Co to znaczy?"~ */ GOTO 9
  IF ~~ THEN REPLY #10962 /* ~"Jesteś z Pierwszej Sfery? Co tutaj robisz?"~ */ GOTO 10
  IF ~~ THEN REPLY #10963 /* ~"To możliwe. Nie zawsze bywa tak, jak nam się zdaje. Czy możesz odpowiedzieć mi na kilka pytań?"~ */ GOTO 7
  IF ~~ THEN REPLY #10964 /* ~"To możliwe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10965 /* ~"To Ignus. Usiłował spalić część miasta jakiś czas temu - może kilka stuleci temu? - i został ukarany zamianą w żywy płomień. Straszliwy los, ale całkiem pasujący do znanego piromana i podpalacza. Z tego, co czytałam, najlepiej będzie zostawić go w spokoju."~ */
  IF ~~ THEN REPLY #10966 /* ~"Skąd tyle wiesz o tym miejscu? Czy nie jesteś z Pierwszej Sfery?"~ */ GOTO 11
  IF ~~ THEN REPLY #10967 /* ~"Chcę zadać ci parę pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10968 /* ~"Dziękuję. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10969 /* ~"On nie jest moim przyjacielem, to mój kuzyn. Właśnie mi mówił, że nie jest to środek wieloświata, pomimo że położony jest w samym środku Krain Zewnętrznych, pomimo że jest punktem zbornym portali z całego wszechświata - nieznane jest miejsce, które miałoby ich więcej - pomimo tego, że jest przedmiotem tych wszystkich kłótni bogów, pomimo tej całej różnorodności i skupienia mocy, która się tutaj zbiera. W kosmosie nie ma drugiego takiego miejsca, a on mówi, że to miejsce to nic wielkiego? Ha!"~ */
  IF ~~ THEN REPLY #10970 /* ~"Interesująca perspektywa. Być może oboje macie trochę racji?"~ */ GOTO 8
  IF ~~ THEN REPLY #10971 /* ~"Niech będzie, jak ma być. Chcę ci zadać jeszcze kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10972 /* ~"Interesujące. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 2.2 3.0 4.2 5.1 6.1 8.0 9.0 10.0 11.0 12.1 13.0
  SAY #10973 /* ~"Pytaj. Odpowiem, jeśli będę mogła."~ */
  IF ~~ THEN REPLY #10974 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10975 /* ~"Szukam dziennika."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10976 /* ~"Szukam Zbieracza imieniem Farod. Czy widziałaś go albo o nim słyszałaś?"~ */ GOTO 12
  IF ~~ THEN REPLY #10977 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10978 /* ~"Kim jest tamten płonący przy wejściu?"~ */ GOTO 5
  IF ~~ THEN REPLY #10979 /* ~"Cóż to takiego mówiliście, ty i twój przyjaciel, na temat Sigil?"~ */ GOTO 6
  IF ~~ THEN REPLY #10980 /* ~"Nic. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #10981 /* ~"Być może, ale myślę, że taki relatywizm jest po prostu nie dla mnie. Albo to miejsce jest ważne, albo też nie. Być może sfery czerpią energię z paradoksów, ale przecież musi być w tym jakiś sens."~ */
  IF ~~ THEN REPLY #10982 /* ~"Niekoniecznie... ale nie mam teraz czasu, aby się o to spierać. Zamiast tego, chcę zadać ci jeszcze kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10983 /* ~"Mam nadzieję, że tak. Potrzebuję odpowiedzi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0 4.0
  SAY #10984 /* ~Przekrzywia głowę i spogląda na ciebie dziwacznie. "Pierwsza Sfera Materialna? Miejsce, w którym rodzi się wiara, z której ukształtowane są Sfery Zewnętrzne? Świat? Gwiazdy, księżyce i tak dalej? Wiara i rzeczywistość? Mam tylko nadzieję, że wiesz, czym jest Pierwsza Sfera, ponieważ jest to zasadnicza część wiedzy sferalnej."~ */
  IF ~~ THEN REPLY #10985 /* ~"Wiedziałem. Mam inne pytania."~ */ GOTO 7
  IF ~~ THEN REPLY #10986 /* ~"Och. No cóż. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 4.1
  SAY #10987 /* ~"Zwiedzam. Rozszerzam swoje horyzonty. Pierwsza Sfera to kapitalne miejsce do życia, ale jest trochę zbyt... realne, jak sądzę. Mój wuj daje każdej swej siostrzenicy i bratanicy, siostrzeńcowi i bratankowi kilka lat w sferach i pozwala, abyśmy tu zostali, jeśli taka jest nasza wola. Myślę, że mogłabym tego pragnąć. To miejsce mnie fascynuje i odpycha. No ale przecież taka w końcu jest natura sfer, nieprawdaż?"~ */
  IF ~~ THEN REPLY #10988 /* ~"Z tego co rozumiem, tak. Czy wiesz na tyle dużo, aby odpowiedzieć mi na kilka pytań?"~ */ GOTO 7
  IF ~~ THEN REPLY #10989 /* ~"Tak. Żegnaj. I powodzenia."~ */ EXIT
  IF ~~ THEN REPLY #10990 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10991 /* ~"Wuj Cielan i ja mamy pospołu czarodzieja, który to miejsce uczynił swym domem. Z tej okazji zaprasza swych krewnych do sfer, aby pokazać im rozkosze i okropieństwa wieloświata. Chciałam się upewnić, że jestem gotowa do tej wyprawy, więc przygotowałam się. I to bardzo. Wiem prawdopodobnie więcej o tym mieście niż mój kuzyn, który mieszka tu przez całe swoje życie." Pogardliwie gestykuluje w stronę mężczyzny, który jest w pobliżu.~ */
  IF ~~ THEN REPLY #10992 /* ~"Prawdziwy z niego wuj. Czy mogę zadać ci jeszcze parę pytań?"~ */ GOTO 7
  IF ~~ THEN REPLY #10993 /* ~"Niezły prezent. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 7.2
  SAY #10994 /* ~"Zbieracza? Nie wydaje mi się, abym słyszała ten termin..." Przerywa i zastanawia się. "Czy to jeden z tych, którzy przewożą zmarłych? Ci biedacy, którzy dla pieniędzy zbierają niezliczone ofiary Ula?"~ */
  IF ~~ THEN REPLY #10995 /* ~"Tak."~ */ GOTO 13
  IF ~~ THEN REPLY #10996 /* ~"Jest oczywiste, że nie znasz tego człowieka, więc odpowiedz mi na parę pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10997 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #10998 /* ~"Z tego co wiem, najczęściej zbierają się w tych rejonach Ula, które są bardziej oddalone od Kostnicy; tam, gdzie jest więcej życia i więcej przemocy. Najlepiej byś postąpił, gdybyś skoncentrował swoje poszukiwania z dala od domu umarłych."~ */
  IF ~~ THEN REPLY #10999 /* ~"Mogę to zrobić, ale wpierw chcę zadać ci następne pytanie."~ */ GOTO 7
  IF ~~ THEN REPLY #11000 /* ~"To dobra rada. Dziękuję i żegnaj."~ */ EXIT
END
