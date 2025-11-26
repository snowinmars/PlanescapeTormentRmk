// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWESKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DWESKULL~

IF ~  Global("WeSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31810 /* ~Czaszka o osobliwym kształcie wydaje wysoki pisk, a potem odzywa się. "Czczczego so-sobie życzysz?"~ */
  IF ~~ THEN REPLY #31811 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31812 /* ~"Jak się tutaj znalazłeś?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31813 /* ~"Co wiesz o Lotarze?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31814 /* ~"Co możesz mi powiedzieć o innych czaszkach na tej półce?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31815 /* ~"Nie. Żegnaj."~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("WeSkull_Talk","AR0508",1)
~ THEN BEGIN 1 // from:
  SAY #31816 /* ~"Z-z-znowu ty?"~ */
  IF ~~ THEN REPLY #31817 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #31818 /* ~"Jak się tutaj znalazłeś?"~ */ GOTO 3
  IF ~~ THEN REPLY #31819 /* ~"Co wiesz o Lotarze?"~ */ GOTO 4
  IF ~~ THEN REPLY #31820 /* ~"Co możesz mi powiedzieć o innych czaszkach na tej półce?"~ */ GOTO 5
  IF ~~ THEN REPLY #31821 /* ~"Nie na długo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #31822 /* ~"Jestem K-k-k-k-oźli G-g-g-grzebień. Byłem szczurołakiem."~ */
  IF ~~ THEN REPLY #31823 /* ~"Szczurołakiem? To ile w ogóle istnieje tych wszystkich zwierzołaków?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 5.1
  SAY #31824 /* ~"To ba-a-a-rdzo krępu-u-u-u-jące. Pod postacią szczura szukałem czegoś do je-e-e-e-dzenia w gospodzie 'Pod Gorejącym Człekiem', kiedy... jakby to p-o-o-o-wiedzieć... nigdy nie przypuszczałem, że dziewka słu-u-u-żebna będzie miała przy sobie s-s-s-srebrny widelec. Mantuok znalazł mnie ca-a-a-łego w drgawkach i wylądowa-a-a-łem tutaj."~ */
  IF ~~ THEN REPLY #31825 /* ~"Co możesz mi powiedzieć o Mantuoku?"~ */ GOTO 7
  IF ~~ THEN REPLY #31826 /* ~"Co możesz mi powiedzieć o innych czaszkach na tej półce?"~ */ GOTO 5
  IF ~~ THEN REPLY #31827 /* ~"Co wiesz o Lotarze?"~ */ GOTO 4
  IF ~~ THEN REPLY #31828 /* ~"Ach tak. Więc, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.2 5.2
  SAY #31829 /* ~Czaszka Koźlego Grzebienia milknie całkiem. Gdyby w jej pustych oczodołach znajdowały się oczy, z pewnością byłyby teraz wypełnione grozą. "Odejdź..." szepcze czaszka. Najwyraźniej nie ma ochoty na dalszą rozmowę.~ */
  IF ~~ THEN REPLY #31830 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 3.1
  SAY #31831 /* ~"One są bardzo p-p-p-rzemądrzałe. Dlatego, że są przeważnie l-l-l-udzkimi czaszkami i wydaje im się, że są w jakiś s-s-s-posób lepsze ode mnie. N-n-n-nienawidzę ich."~ */
  IF ~~ THEN REPLY #31832 /* ~"To bardzo zdrowe podejście do sprawy. Może byś mi jeszcze opowiedział coś o sobie?"~ */ GOTO 2
  IF ~~ THEN REPLY #31833 /* ~"To miłe. A jakim sposobem znalazłeś się tutaj?"~ */ GOTO 3
  IF ~~ THEN REPLY #31834 /* ~"No to chyba musisz sympatyzować z tym Lotarem."~ */ GOTO 4
  IF ~~ THEN REPLY #31835 /* ~"Moje gratulacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #31836 /* ~"O, b-b-bardzo wiele. K-k-k-ruki, w-w-wwilki, n-n-n-niedźwiedzie, borsuki... nawet k-k-krokodyle! Wychodzi na to, że wszystkie stworzenia w Sferze Z-z-z-z-wierząt mają swoje likantropiczne o-o-odpowiedniki. To zresztą b-b- bardzo interesujący temat."~ */
  IF ~~ THEN REPLY #31837 /* ~"A jakie szczurołaki są tutaj w okolicy?"~ */ GOTO 8
  IF ~~ THEN REPLY #31838 /* ~"Jak można zgładzić zwierzołaka?"~ */ GOTO 9
  IF ~~ THEN REPLY #31839 /* ~"Nie wątpię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0 8.0
  SAY #31840 /* ~"Ten s-s-skurlony cz-cz-czarodziej! Ten d-d-dupek! To dzięki mnie stał się tym, kim jest teraz. Przed l-l-laty był tylko parszywym d-d-d-dwunogiem. Ja go znalazłem i u-u-ukąsiłem go w nogę. Smakowała jak peklowane m-m-mięso. Chodziłem p-p-potem jak pijany przez długie dni. A potem on p-p-przylazł z jakąś książką pod pachą, i oto budzę się jako p-pamiątka przeszłości i ozdoba na p-p-półkę. Co za drań!"~ */
  IF ~~ THEN REPLY #31841 /* ~"Znasz jakieś jego tajemnice?"~ */ GOTO 10
  IF ~~ THEN REPLY #31842 /* ~"Jak więc można go zabić?"~ */ GOTO 9
  IF ~~ THEN REPLY #31843 /* ~"Niełatwe życie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #31844 /* ~"Jest M-m-m-mantuok i jego banda. On, który wszystko mi zawdzięcza, tak ze mną p-p-postąpił! Sprzedał mnie L-l-l-lotarowi. Ale ja umiem się obronić. W-w-wyjawiłem wszystkie jego sekrety szefowi. Mauntokowi może się wydawać, że jest b-b-b-bezpieczny, ale Lothar w-w-wie o wszystkim."~ */
  IF ~~ THEN REPLY #31845 /* ~"Co możesz mi powiedzieć o Mantuoku?"~ */ GOTO 7
  IF ~~ THEN REPLY #31846 /* ~"Na przykład o czym?"~ */ GOTO 10
  IF ~~ THEN REPLY #31847 /* ~"Jak można go zabić?"~ */ GOTO 9
  IF ~~ THEN REPLY #31848 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.2
  SAY #31849 /* ~"Łatwo zabić l-l-likantropa. Wystarczy użyć s-s-s-srebrnej albo m-m-magicznej broni i trafić go nią! Zwykły oręż nie s-s-skutkuje. Bywały czasy, że ludzie w-w-wstrzeliwali we mnie z łuków całe k-k-kołczany, a mnie się n-n-nic nie działo, tylko trochę piekło. W-w-wyglądałem jak j-j-jeżozwierz!"~ */
  IF ~~ THEN REPLY #31850 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.1
  SAY #31851 /* ~"Jego t-t-t-tajemnica polega na tym, że pracuje z-z-z-zarówno dla Lotara, jak i dla W-w-w-wielojedności, zbiorczej jaźni czaszkoszczurów. Nie wiem, co p-p-p-planuje, ale to nie ma z-z-z-znaczenia, bo i tak Lotar już o tym wie."~ */
  IF ~~ THEN REPLY #31852 /* ~"Ach tak. Dziękuję. Żegnaj."~ */ EXIT
END
