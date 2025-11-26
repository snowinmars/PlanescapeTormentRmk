// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHYSIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHYSIS~

IF ~~ THEN BEGIN 0 // from: 69.0 69.1
  SAY #2947 /* ~"Słuchajcie... to jest wykład o *Wojnie*. Jak chcecie posłuchać o Wojnie Krwi, to siądźcie se porządnie. Jak nie, to zabierajcie stąd swoje sigiliańskie tyłki."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 320
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2948 /* ~Słuchaj.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32707 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32708 /* ~Nagle mężczyzna zaczyna przyglądać się słuchaczom, jakby czegoś szukał. "Jeśli jest tu jakiś tanar'ri albo baatezu, to niech spada za drzwi. Żaden rogaty drań nie będzie słuchał tego, co powiem. Nie mam zamiaru potem wysłuchiwać ich świrniętych argumentów..."~ */
  IF ~~ THEN REPLY #32709 /* ~Słuchaj dalej.~ */ GOTO 2
  IF ~~ THEN REPLY #32710 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32711 /* ~"...bo nie ma sensu dyskutować o tym, kto ma rację." Słyszysz, jak coś wielkiego wstaje za tobą i opuszcza salę wykładową. "Opowiem o Wojnie Krwi z punktu widzenia ludzi. Nie będę się opowiadał za jednymi czy drugimi, bo *każda* z tych ras śmierdzi inaczej."~ */
  IF ~~ THEN REPLY #32712 /* ~Słuchaj dalej.~ */ GOTO 3
  IF ~~ THEN REPLY #32713 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32714 /* ~Wykładowca w końcu wraca do tematu. "No więc... ci co zostali, żeby posłuchać opowieści o Wojnie Krwi... historii o *Wojnie*, na pewno chcą usłyszeć o wszystkich jej okropnościach. O latających fortecach, których komnaty wyłożone były ludzką skórą! O polach bitewnych, na której toczyły się krwawe walki!"~ */
  IF ~~ THEN REPLY #32716 /* ~Słuchaj dalej.~ */ GOTO 4
  IF ~~ THEN REPLY #32717 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32718 /* ~Mężczyzna obnaża swoje pożółkłe zęby: "O biesach walczących na śmierć i życie z innymi biesami! Grar! Snrarrr!" Potem powoli przestaje warczeć. Nagle wydaje się, że wykładowca zaczął się nudzić.~ */
  IF ~~ THEN REPLY #32719 /* ~Słuchaj dalej.~ */ GOTO 5
  IF ~~ THEN REPLY #32720 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32721 /* ~"A niech się wam czerepy porozlatują, a oczy wyjdą z orbit: co za głupota mieszkać w tej dymiącej, zapchanej łajnem kuźni." Mężczyzna spluwa z obrzydzeniem.~ */
  IF ~~ THEN REPLY #32722 /* ~Słuchaj dalej.~ */ GOTO 6
  IF ~~ THEN REPLY #32723 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32724 /* ~"Jedno wam powiem: Nie możecie sobie nawet *wyobrazić* rozmiarów Wojny Krwi. Próżno z nią porównywać to, co widziałem, o czym słyszałem albo w czym brałem udział: jest dłuższa, więcej w niej 'legionów', to prawdziwa jatka... nic jej nie dorówna, trepy. Nawet nie próbujcie sobie tego wyobrazić. Dam wam jedną radę: Trzymajcie się od tej rzeźni z daleka."~ */
  IF ~~ THEN REPLY #32725 /* ~Słuchaj dalej.~ */ GOTO 7
  IF ~~ THEN REPLY #32726 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32727 /* ~"Jedyne co musicie wiedzieć: to biesy zabijają inne biesy. Baatezu urządzają rzeźnię tanar'ri, a tanar'ri niszczą baatezu. I tak w koło." Mężczyzna znowu spluwa na ziemię. "Nikt nie jest górą. Wątpię, żeby kiedykolwiek ktoś mógł tę wojnę wygrać. To największy pat po tej stronie wieczności... dziękujcie Mocom."~ */
  IF ~~ THEN REPLY #32728 /* ~Słuchaj dalej.~ */ GOTO 8
  IF ~~ THEN REPLY #32729 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #32730 /* ~"To by było na tyle." Mężczyzna wzrusza ramionami. "Teraz mogę odpowiadać na wasze pytania..."~ */
  IF ~~ THEN REPLY #32731 /* ~Zadaj pytanie.~ */ GOTO 11
  IF ~~ THEN REPLY #32732 /* ~Pozostań w milczeniu.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 11.10 12.2 13.2 14.3 15.2 16.2 17.2 18.3 19.3 20.2 21.2 22.2 23.2 24.3 25.2 26.2 27.5 28.2 29.2 30.2 31.5 32.2 33.2 34.2 35.2 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.2 45.2 46.3 47.2 48.7 49.2 50.2 51.2 52.2 54.2 55.2 56.1 57.2 58.1 59.2 60.4 61.1 62.2 64.2 70.1 74.3 75.1 76.1 77.1 79.1 80.1 81.1 82.0
  SAY #32733 /* ~"No dobra... powiem wam jeszcze jedno. A zwłaszcza tym, którzy należą do Czuciowców. Pamiętajcie: nie próbujcie nawet zobaczyć, jak wygląda ta szpicowana Wojna. Nie bądźcie ześwirowanymi idiotami. Jak już musicie wiedzieć, to użyjcie kamieni doznań, ale trzymajcie się z daleka od wszystkiego, co ma coś wspólnego z prawdziwą Wojną Krwi."~ */
  IF ~~ THEN REPLY #32734 /* ~Słuchaj dalej.~ */ GOTO 10
  IF ~~ THEN REPLY #32735 /* ~Przestań słuchać i odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32736 /* ~"Po prostu nie warto. To..." Przez chwilę masz wrażenie, że przez twarz mężczyzny przemknął wyraz wielkiego bólu, jakby miał się zaraz rozpłakać. "...naprawdę nie jest ważne. To już koniec wykładu, więc muszę was pożegnać."~ */
  IF ~~ THEN REPLY #32737 /* ~Odejdź.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.1 13.1 14.2 15.1 16.1 17.1 18.2 19.2 20.1 21.1 22.1 23.1 24.2 25.1 26.1 27.4 28.1 29.1 30.1 31.4 32.1 33.1 34.1 35.1 36.1 37.1 38.0 39.1 40.0 41.1 42.1 43.1 44.1 45.1 46.2 47.1 48.6 49.1 50.1 51.1 52.1 54.1 55.1 56.0 57.1 58.0 59.1 60.3 61.0 62.1 64.1 70.0 74.2
  SAY #32738 /* ~"Jakie masz pytanie, śmiałku?"~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49564 /* ~"Mógłbyś powtórzyć, jak ci się udało przeżyć Wojnę Krwi?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49565 /* ~"Mógłbyś powtórzyć, jak ci się udało przeżyć Wojnę Krwi?"~ */ GOTO 70
  IF ~~ THEN REPLY #32739 /* ~"Nie możesz mi powiedzieć czegoś więcej o samej Wojnie Krwi?"~ */ GOTO 32
  IF ~~ THEN REPLY #32740 /* ~"Od czego się zaczęła ta Wojna Krwi?"~ */ GOTO 41
  IF ~~ THEN REPLY #32741 /* ~"Jak można się zaciągnąć, żeby wziąć udział w Wojnie Krwi?"~ */ GOTO 59
  IF ~~ THEN REPLY #32742 /* ~"Gdzie toczy się Wojna Krwi?"~ */ GOTO 55
  IF ~~ THEN REPLY #32743 /* ~"Jak można przeżyć Wojnę Krwi?"~ */ GOTO 12
  IF ~~ THEN REPLY #32744 /* ~"Opowiedz mi o tanar'ri."~ */ GOTO 57
  IF ~~ THEN REPLY #32745 /* ~"Opowiedz mi o baatezu."~ */ GOTO 45
  IF ~~ THEN REPLY #32746 /* ~"Więc nie opowiesz nam żadnych historii o Wojnie Krwi?"~ */ GOTO 39
  IF ~~ THEN REPLY #33088 /* ~"Szczerze mówiąc, nie mam żadnych pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.6
  SAY #32747 /* ~"Chcesz wiedzieć, jak przetrwać Wojnę Krwi? Są na to trzy sposoby:" Mężczyzna podnosi rękę zniekształconą dłoń zakończoną dwoma palcami.~ */
  IF ~~ THEN REPLY #32748 /* ~"Mów dalej..."~ */ GOTO 13
  IF ~~ THEN REPLY #32749 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32750 /* ~"A zresztą mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #32751 /* ~"Po pierwsze, trzymaj się od tego szpicowaństwa z daleka. Po drugie, trzymaj swój szpicowany tyłek z dala od niej. I po trzecie... nie mieszaj się do tej szpicowanej, skurlonej jatki."~ */
  IF ~~ THEN REPLY #32752 /* ~"Mów dalej..."~ */ GOTO 14
  IF ~~ THEN REPLY #32753 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32754 /* ~"A zresztą mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #32755 /* ~"Jakbyś się czasem natknął na walczące strony, to użyj swojej wyobraźni i zmykaj stamtąd co sił w nogach. A jak nie będziesz mógł biec, to leż nieruchomo i módl się, żeby to minęło. Poza tym, nie ma miejsca, którego Wojna by nie dotknęła, i prawie że nie można przed nią uciec."~ */
  IF ~~ THEN REPLY #32756 /* ~"Jeśli nie można się przed nią schronić, to dlaczego te biesy nie walczą w Sigil?"~ */ GOTO 21
  IF ~~ THEN REPLY #32757 /* ~"Coś jeszcze?"~ */ GOTO 15
  IF ~~ THEN REPLY #32758 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32759 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 15 // from: 14.1 29.0
  SAY #32760 /* ~"Tak: cokolwiek robisz, nie *gadaj* o Wojnie Krwi z *żadnym* biesem... ani z żadnym devą, ani z żadnym archonem. Po prostu o tym nie gadaj i kropka, bo nigdy nie wiesz, z kim u diabła rozmawiasz. A wszyscy stają są strasznie drażliwi, kiedy ktoś wspomni o Wojnie. Przecież to główny powód, żeby żyć."~ */
  IF ~~ THEN REPLY #32761 /* ~"Coś jeszcze?"~ */ GOTO 16
  IF ~~ THEN REPLY #32762 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32763 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #32764 /* ~Mężczyzna przytakuje. "Nie przechodź przez żaden portal, jak nie jesteś szpicownie pewny, gdzie on prowadzi. Pewnie nie słyszałeś opowieści o tępych obieżysferach, którzy przekraczali portal i lądowali w samym środku jatki pomiędzy baatezu i tanar'ri. A wiesz, dlaczego o nich nie słyszałeś? Bo ci skurle są już dawno *martwi*."~ */
  IF ~~ THEN REPLY #32765 /* ~"Coś jeszcze?"~ */ GOTO 17
  IF ~~ THEN REPLY #32767 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32768 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #32769 /* ~"I żeby nie wiem co, nigdy nie zaciągaj się na Wojnę. Nawet jakby ci błyskali przed oczami brzdękiem. Udział w Wojnie Krwi to pewna śmierć."~ */
  IF ~~ THEN REPLY #32770 /* ~"A to dlaczego?"~ */ GOTO 18
  IF ~~ THEN REPLY #32771 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32772 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #32773 /* ~"Możliwe, że jak się zaciągniesz, to utkniesz tam do końca czasu. Nawet śmierć cię od tego nie uwolni, bo jak wsiąkniesz w Sfery Niższe, to powrócisz stamtąd jako coś gorszego, niż byłeś do tej pory. Jak już raz dostaną cię w swoje szpony, to przepadłeś na wieki."~ */
  IF ~~ THEN REPLY #32774 /* ~"Jak można się wycofać, gdy ktoś się już zaciągnie?"~ */ GOTO 30
  IF ~~ THEN REPLY #32775 /* ~"A więc śmierć na Wojnie Krwi jest wielkim nieszczęściem?"~ */ GOTO 19
  IF ~~ THEN REPLY #32776 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32777 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 19 // from: 18.1 31.0
  SAY #32778 /* ~"Jak byłeś zły, to pewnie. A jak byłeś dobry, to znajdziesz się w innej Sferze, gdzie spędzisz swoje życie po śmierci. Ale ciągle będziesz truposzem. Jeśli o mnie chodzi, to ciągle mam dużo zła do odpokutowania, więc gdybym umarł w Sferach Niższych, to by mnie zamknęli i zabeczkowali."~ */
  IF ~~ THEN REPLY #32779 /* ~"Po śmierci można się znaleźć w innej Sferze? Możesz mi to wyjaśnić?"~ */ GOTO 20
  IF ~~ THEN REPLY #32780 /* ~"Jak można się wycofać, gdy ktoś się już zaciągnie?"~ */ GOTO 30
  IF ~~ THEN REPLY #32781 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32782 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32783 /* ~"Jak chcesz się dowiedzieć o cieniu tej sprawy, to idź pogadać z innym wykładowcą śmierci. Nie umiem ci tego wyjaśnić tak jak on, ale uważaj, żeby się nie oparzyć jego oddechem."~ */
  IF ~~ THEN REPLY #32784 /* ~"Jak można się wycofać, gdy ktoś się już zaciągnie?"~ */ GOTO 30
  IF ~~ THEN REPLY #32785 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32786 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 14.0
  SAY #32788 /* ~"Już tu kiedyś walczyli... parę razy. Czasami dochodzą do nas odgłosy Wojny Krwi. Nasza Pani Bólu, niech jej stalowe serce będzie błogosławione, potrafi ugasić diabelskie ognie..."~ */
  IF ~~ THEN REPLY #32789 /* ~"Mów dalej..."~ */ GOTO 22
  IF ~~ THEN REPLY #32790 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32791 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32792 /* ~"...w *większości* przypadków." Mężczyzna uśmiecha się szyderczo. "Czasami w trakcie wojny biesy paliły i burzyły całe skurlone bloki Sigil, a na wszystkich padał blady strach, zanim w końcu Pani zdecydowała się zareagować." Wykładowca mruga cynicznie okiem. "Więc widzisz, że ona nie zawsze tak się pali do interwencji w Wojnę Krwi, jakby się to mogło wydawać."~ */
  IF ~~ THEN REPLY #33089 /* ~"Dlaczego biesy po prostu nie podbiją Sigil?"~ */ GOTO 23
  IF ~~ THEN REPLY #32794 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32805 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #32806 /* ~Mężczyzna wybucha śmiechem, który po chwili przechodzi w suchy kaszel. "Nie zrozum mnie źle: zarówno tanar'ri jak i baatezu bardzo chcą zająć Sigil. To najcenniejszy teren sporny w całym szpicowanym wieloświecie - Klatka to przecież Miasto Drzwi, z którego można się dostać *wszędzie*. Nie można tego nie zauważyć, a jeśli ktoś walczy w Wojnie Krwi i chce wygrać, musi dostać miasto."~ */
  IF ~~ THEN REPLY #32807 /* ~"Mów dalej..."~ */ GOTO 24
  IF ~~ THEN REPLY #32808 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32809 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #32810 /* ~Mężczyzna znowu zanosi się kaszlem. "Tylko, że biesy nie *dostaną* go, dopóki Pani będzie w nim rządziła. Jest ostra jak żyleta, jej miecze są o wiele ostrzejsze od diabelskich kłów. I pomyśleć tylko, nasza spokojna Pani, z rękami schowanymi w rękawy, sama jedna powstrzymuje całą Wojnę Krwi." Człowiek uśmiecha się gorzko.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 134
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32811 /* ~"Ale biesy ciągle mają wstęp do Sigil?"~ */ GOTO 25
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32812 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32813 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #32814 /* ~"Och, oczywiście. Nie mogą toczyć bojów na ulicach... przynajmniej niezbyt często. Sigil to teren neutralny, więc mogą tu tylko kłapać jadaczkami, a nie wolno im się nawzajem zabijać. Ale i taki pokój nie będzie trwał zbyt długo..."~ */
  IF ~~ THEN REPLY #32815 /* ~"Mów dalej..."~ */ GOTO 26
  IF ~~ THEN REPLY #32816 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32817 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #32818 /* ~"Ale choć nie mogą się tu nawzajem wyrzynać, to nie oznacza, że nie ma tu szpiegów i tajemnych morderstw. Teraz walczą tu na słowa i kłamstwa, trepie. W okolicy jest parę bezpiecznych domów. To miejsca, w których mogą ochłodzić swoje szpony, zanim wdadzą się na następną jatkę..."~ */
  IF ~~ THEN REPLY #32819 /* ~"Mów dalej..."~ */ GOTO 27
  IF ~~ THEN REPLY #32820 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32821 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32822 /* ~"Poza tym Sigil to ulubione miejsce na werbowanie najemników. Szukają tu chłopców świeżo przybyłych spoza Sfer, którzy mają w sercach trochę chciwości, żeby mogli ich wcielić do swojej wspaniałej armii." Mężczyzna milknie i zaczyna ci się bacznie przyglądać. "Może i ty się kiedyś zarekrutowałeś, co, śmiałku? Wyglądasz, jakbyś już zasmakował Wojny."~ */
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32823 /* ~"Wątpię."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32824 /* ~"Może i tak."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32825 /* ~"Wątpię."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32884 /* ~"Może i tak."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32885 /* ~"Może i tak. Pozwól mi, że zadam ci jeszcze jedno pytanie..."~ */ GOTO 11
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32886 /* ~"Może i tak. W każdym razie, nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 27.2 27.3
  SAY #32887 /* ~"Wojna zostawia po sobie bliznę, śmiałku. Po prostu to *wiesz*. I wiesz też, że już *nigdy* nie chcesz tam wrócić."~ */
  IF ~~ THEN REPLY #32888 /* ~"Czy rekrutacja odbywa się często?"~ */ GOTO 29
  IF ~~ THEN REPLY #32889 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32890 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 29 // from: 28.0 64.0
  SAY #32891 /* ~Mężczyzna smutno kiwa głową. "Możesz być tego pewny. Sigil to najlepsze źródło mięsa armatniego w całych Sferach. Lepsze nawet niż planety mlecznej drogi i wszyscy ich mieszkańcy... zbyt dużo przy nich roboty."~ */
  IF ~~ THEN REPLY #32892 /* ~"Więc, masz jakieś rady co do tego, jak można przetrwać Wojnę?"~ */ GOTO 15
  IF ~~ THEN REPLY #32893 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32894 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 30 // from: 18.0 19.1 20.0
  SAY #32895 /* ~"Jeśli sami tego nie będą chcieli, to nie masz zbyt wielkich szans. Nigdy nie słyszałem, żeby to się udało zdegenerowanym rekrutom albo komuś, kogo naprawdę chcieli zatrzymać w swoich szponach. Przechytrzenie tanar'ri to ryzykowna sprawa, ale można to zrobić... natomiast baatezu są o wiele bardziej groźni, jeśli chodzi o kontrakty. Jak coś takiego podpiszesz, to jesteś przeklęty na całe życie..."~ */
  IF ~~ THEN REPLY #32896 /* ~"Mów dalej..."~ */ GOTO 31
  IF ~~ THEN REPLY #32897 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32898 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #32899 /* ~"Możesz spróbować ich przekupić, to jest szansa, że pozwolą ci uciekać, co sił w nogach... ale gdzie byś się schował? Jest tak dużo różnych dziur..."~ */
  IF ~~ THEN REPLY #32900 /* ~"A śmierć na Wojnie Krwi jest *szczególnie* groźna?"~ */ GOTO 19
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #32901 /* ~"Możesz mi powiedzieć, jak ci się udało uciec z Wojny Krwi?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49558 /* ~"Możesz mi jeszcze raz powtórzyć, jak ci się udało przeżyć Wojnę Krwi?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49559 /* ~"Możesz mi jeszcze raz powtórzyć, jak ci się udało przeżyć Wojnę Krwi?"~ */ GOTO 70
  IF ~~ THEN REPLY #32902 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32903 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 32 // from: 11.2
  SAY #32904 /* ~"Jakbym miał to wszystko powiedzieć w dwóch zdaniach, to powiedziałbym tak: Wojna Krwi toczy się prawie od szpicowanego zawsze i będzie trwać, aż się sama nie wpisze do Księgi Umarłych. Tanar'ri wyznają *chaos* i zło, dlatego próbują zniszczyć te zielone łajno, baatezu, którzy wolą *prawo* i zło. Może mi nie uwierzysz, ale zarzynają się o to, w jaki sposób *powinno się* być złym. Ha!"~ */
  IF ~~ THEN REPLY #32905 /* ~"Co według ciebie by się stało, gdyby ktoś przerwał Wojnę Krwi?"~ */ GOTO 33
  IF ~~ THEN REPLY #32906 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32907 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #32908 /* ~"I tak nic byś nie wskórał z tą szpicowaną Wojną! Jest zbyt skurlowanie *duża*. Jesteś tylko kamykiem w oceanie, który sam jest tylko kamykiem w innym oceanie, który z kolei także jest kamykiem w jeszcze innym oceanie i tak dalej. A jako kamień, powinieneś starać się nie rzucać w oczy i żeby nikt nie wysłał cię na dno razem z resztą tego łajna..."~ */
  IF ~~ THEN REPLY #32909 /* ~"Mów dalej..."~ */ GOTO 34
  IF ~~ THEN REPLY #32910 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32911 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32912 /* ~"Nawet jakbyś mógł coś wskórać - ale i tak nie *masz żadnych szans* - to nie powinieneś próbować, bo wtedy zawaliłyby się całe Sfery."~ */
  IF ~~ THEN REPLY #32913 /* ~"Sfery by się zawaliły? Dlaczego?"~ */ GOTO 35
  IF ~~ THEN REPLY #32914 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32915 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #32916 /* ~Mężczyzna podnosi swoje ręce, jakby chciał złożyć je na kształt kolumn. "Wojna Krwi jest jak wielka, krwawa podpora, na której utrzymują się Sfery... zniszcz ją, a całe Sfery zawalą się z hukiem. Na plecach Wojny spoczywa dużo bagażu." Nagle zaczyna rżeć jak osioł, wydając z siebie sarkastyczny śmiech. "To największe i najohydniejsze zwierzę juczne w całych Sferach..."~ */
  IF ~~ THEN REPLY #32917 /* ~"Mów dalej..."~ */ GOTO 36
  IF ~~ THEN REPLY #32918 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32919 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #32920 /* ~Mężczyzna uśmiecha się cynicznie. "A poza tym, niektórzy mówią, że na wojnie można zrobić *świetny* interes." Z jego ust wyrywa się pusty śmiech, choć po chwili wygląda, jakby mężczyzna miał nagle zanieść się płaczem. "Ech... mniejsza z tym... Masz jeszcze jakieś pytania?"~ */
  IF ~~ THEN REPLY #32921 /* ~"Dobrze się czujesz? Wyglądasz, jakbyś cierpiał..."~ */ GOTO 37
  IF ~~ THEN REPLY #32922 /* ~"Tak, mam jeszcze jedno pytanie..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ghysis_1","GLOBALGood",1)
~ GOTO 11
  IF ~~ THEN REPLY #32923 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #32924 /* ~Mężczyzna uśmiecha się smutno. "Tak, tak... słuchaj, śmiałku: Nie jestem żadnym kapłanem, ani nie chcę być, ale zapamiętaj te słowa: trzymaj zło z dala od swego serca. Kiedy umrzesz ze złem w sercu, twój duch spadnie do Niższych Sfer, gdzie staniesz się oczekującym..."~ */
  IF ~~ THEN REPLY #32925 /* ~"Mów dalej..."~ */ GOTO 38
  IF ~~ THEN REPLY #32926 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32927 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #32928 /* ~"Nie domyślasz się, co się dzieje potem? W Otchłani i w Baator oczekujący zamieniani są w żołnierzy... a potem wysyłają ich na Wojnę Krwi na całą wieczność." Mężczyzna chichocze, kręcąc głową. "Tak wygląda cień tego, dlaczego tanar'ri i baatezu próbują skazić wszystko, czego się tkną - bo potrzebują więcej żołnierzy. I nie zapomnij: trzymaj zło z dala od swojego serca, trepie."~ */
  IF ~~ THEN REPLY #32929 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32930 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 39 // from: 11.9
  SAY #32931 /* ~"W porządku, mam jedną: Dam ci przykład, co dla nich znaczy 'mięso'. Zbierają trochę zdegenerowanych najemników, no, może z kilka milionów, a potem każą im się nawzajem powyrzynać bez żadnego powodu - ot, jakaś bezsensowna bitwa o jakiś zapomniany przez Moce kawałek ziemi. Zgadnij dokąd potem idą wszystkie dusze tych śmiertelników?"~ */
  IF ~~ THEN REPLY #32932 /* ~"Dokąd?"~ */ GOTO 40
  IF ~~ THEN REPLY #32933 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32934 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #32935 /* ~"Ich dusze zapadają się w Sfery pod ciężarem własnego zła. Tam można je pozbawić woli i wysłać z powrotem do walki jako lemury albo inne stwory. Im więcej mają oczekujących, tym więcej stworów potem mogą wystawić do walki."~ */
  IF ~~ THEN REPLY #32936 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32937 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 41 // from: 11.3
  SAY #32938 /* ~"Nie dziwię się, że zastanawiasz się nad tym, co rozpoczęło tę szpicowaną jatkę: co sprawiło, że biesy zaczęły z sobą walczyć tak, że w końcu stało się to jedynym powodem, dla którego ciągle pozostają przy życiu..."~ */
  IF ~~ THEN REPLY #32939 /* ~"Mów dalej..."~ */ GOTO 42
  IF ~~ THEN REPLY #32940 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32941 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #32942 /* ~"To proste: spotkały się." Mężczyzna wzdycha. "Pewnego dnia tanar'ri i baatezu wpadły na siebie jak dwóch pijaków, no i zaczęły walczyć." Potem na jego czole pojawiają się zmarszczki.~ */
  IF ~~ THEN REPLY #32943 /* ~"Mów dalej..."~ */ GOTO 43
  IF ~~ THEN REPLY #32944 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32945 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #32946 /* ~"Nie, wyobraź sobie dwóch pijanych *kapłanów*, którzy obaj wierzą, że tylko on zna sposób, w jaki powinno się żyć. Teraz wyobraź sobie, że ci kapłani są pokryci łuskami, mają kły i rogi, a jakieś okrutne zrządzenie losu sprawiło, że znaleźli się ze sobą w maleńkiej, skurlowatej celi... Możesz sobie wyobrazić, jaka z tego mogła wyjść miłość. Teraz chyba rozumiesz, jakie były początki Wojny Krwi."~ */
  IF ~~ THEN REPLY #32947 /* ~"Dlaczego dwie *złe* rasy walczą ze sobą?"~ */ GOTO 44
  IF ~~ THEN REPLY #32948 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32949 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #32950 /* ~"Jedni wierzą, że zło powinno być uporządkowane. Drudzy, że powinno być chaosem, który rozplenia się dziko poprzez wszystkie Sfery. Obie rasy są złe, ale to nie oznacza, że mogą się ze sobą zgodzić. Zła krew, bardzo zła... Jedni chcą zniszczyć drugich, tak żeby tylko ich odmiana zła przetrwała. Nienawidzą się nawzajem, jak... jak..."~ */
  IF ~~ THEN REPLY #32951 /* ~"Mów dalej..."~ */ GOTO 61
  IF ~~ THEN REPLY #32952 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32953 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 45 // from: 11.8
  SAY #32954 /* ~Mężczyzna kiwa głową. "Zazwyczaj nie płacą tyle co tanar'ri, ale przynajmniej nie łamią pisanych praw. Są jednak sprytne - wielokroć *sprytniejsze*, dlatego spisywały kontrakty od początku czasów. One wiedzą, jak kogoś oskubać używając słów. Tylko podpisz, a najpewniej skończysz jako wysuszone truchło w ich legionach..."~ */
  IF ~~ THEN REPLY #32955 /* ~"Mów dalej..."~ */ GOTO 46
  IF ~~ THEN REPLY #32956 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32957 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32958 /* ~"Te dopiero lubią planować. Wkładają w przygotowania do jednej, strategicznej potyczki więcej czasu, niż większość ludzkich armii poświęca na całą kampanię." Mężczyzna pociąga nosem, a potem zaczyna się drapać po brodzie. "Zazwyczaj zbierają swoje siły na Avernusie, pierwszej warstwie Baator."~ */
  IF ~~ THEN REPLY #32960 /* ~"Powiedz mi coś o Avernusie."~ */ GOTO 47
  IF ~~ THEN REPLY #32961 /* ~"Jakie siły biorą udział w Wojnie Krwi?"~ */ GOTO 48
  IF ~~ THEN REPLY #32962 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32963 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32964 /* ~"Avernus? Hrm..." Na twarzy mężczyzny pojawia się grymas, jakby samo wspomnienie tego miejsca powodowało ból. "Zamieszkują go przeklęci i ci, co na nich żerują. To czerwone krainy, pełne trujących piasków i gorących ogni, które wypełniają je po sam horyzont. Tak ja wspominam Baator i warstwę Avernusa. To okropne miejsce."~ */
  IF ~~ THEN REPLY #32965 /* ~"Jakie siły biorą udział w Wojnie Krwi?"~ */ GOTO 48
  IF ~~ THEN REPLY #32966 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32967 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.0 49.0 50.0 51.0 52.0 54.0
  SAY #32968 /* ~"Różne stwory, poza śmiertelnymi trepami z całych Sfer. Abiszai i kornugony, lemury i nupperibo, sukkuby... lista ciągnie się w nieskończoność."~ */
  IF ~~ THEN REPLY #32969 /* ~"Opowiedz mi o abiszai."~ */ GOTO 49
  IF ~~ THEN REPLY #32970 /* ~"Opowiedz mi o kornugonach."~ */ GOTO 50
  IF ~~ THEN REPLY #32971 /* ~"Opowiedz mi o lemurach."~ */ GOTO 51
  IF ~~ THEN REPLY #32972 /* ~"Opowiedz mi o nupperibo."~ */ GOTO 52
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #32973 /* ~"Opowiedz mi o sukkubach."~ */ GOTO 53
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32974 /* ~"Opowiedz mi o sukkubach."~ */ GOTO 54
  IF ~~ THEN REPLY #32975 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32976 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #32977 /* ~"To szeregowcy w armii baatezu. Występują w różnych podgatunkach, te z czarnymi łuskami są najsłabsze i najczęściej je można spotkać."~ */
  IF ~~ THEN REPLY #32978 /* ~"Jakie jeszcze inne siły biorą udział w Wojnie Krwi?"~ */ GOTO 48
  IF ~~ THEN REPLY #32979 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32980 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #32981 /* ~"Kornugony są *śmiertelnie* niebezpieczne. Nieczęsto można jest spotkać w większej grupie niż kilku naraz, choć czasami tworzą elitarne oddziały. W czasie bitwy zazwyczaj przewodzą słabszym jednostkom, takim jak abiszai czy śmiertelnym najemnikom."~ */
  IF ~~ THEN REPLY #32982 /* ~"Jakie jeszcze inne siły biorą udział w Wojnie Krwi?"~ */ GOTO 48
  IF ~~ THEN REPLY #32983 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32984 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.2
  SAY #32985 /* ~"Lemury to... coś... co wygląda jak stopieni ludzie. Te denerwujące małe skurle regenerują się, nawet jak się je powybija. Niestraszne im niebezpieczeństwo i ból, więc nigdy nie uciekają z placu boju. Najczęściej wysyłają je na pierwsze linie."~ */
  IF ~~ THEN REPLY #32986 /* ~"Jakie jeszcze inne siły biorą udział w Wojnie Krwi?"~ */ GOTO 48
  IF ~~ THEN REPLY #32987 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32988 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 52 // from: 48.3
  SAY #32989 /* ~"Te małe szczyle mają maleńkie głowy. Są głuche, głupie i ślepe. Żyją tylko po to, żeby zginąć na linii frontu. Ale nie tak łatwo je zabić... jak się im pozwoli, to odrosną z powrotem nawet z najmniejszej części."~ */
  IF ~~ THEN REPLY #32990 /* ~"Jakie jeszcze inne siły biorą udział w Wojnie Krwi?"~ */ GOTO 48
  IF ~~ THEN REPLY #32991 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #32992 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 53 // from: 48.4
  SAY #32993 /* ~"Tanar'ri - są piękne, ale śmiertelnie złe. Uwodzą śmiertelników próbując zaciągnąć ich do Otchłani." Mężczyzna wykonuje ukłon w kierunku Nie-Sławy. "Bez obrazy, moja damo."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 135
END

IF ~~ THEN BEGIN 54 // from: 48.5
  SAY #32997 /* ~"Tanar'ri - są piękne, ale śmiertelnie złe. Uwodzą śmiertelników próbując zaciągnąć ich do Otchłani... im więcej oczekujących, tym więcej mięsa armatniego na Wojnę."~ */
  IF ~~ THEN REPLY #32998 /* ~"Jakie jeszcze inne siły biorą udział w Wojnie Krwi?"~ */ GOTO 48
  IF ~~ THEN REPLY #32999 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33000 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 55 // from: 11.5
  SAY #33001 /* ~"Wiele miejsc... *zazwyczaj* są to Niższe Sfery. Dowolne miejsce wzdłuż Styksu... dziewięć warstw Baator, cztery piece Gehenny, Szare Pustkowie, czerwony Tartar - sfera więzienna - i szpicowna, prawie-że-bezkresna studnia zła, czyli Otchłań." Nie wiesz dlaczego, ale Szare Pustkowie brzmi dla ciebie znajomo...~ */
  IF ~~ THEN REPLY #33002 /* ~"Opowiedz mi o Szarym Pustkowiu."~ */ GOTO 56
  IF ~~ THEN REPLY #33003 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33004 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #33005 /* ~"Zwą je także 'Mrokiem'." Mężczyzna wzrusza ramionami, a potem przechodzi go dreszcz. "Szare w każdym znaczeniu tego słowa. Kolory wypalają ci tam oczy; krzyczą, są zbyt głośne, a twoje sny są wyciągane na powierzchnię i giną na zawsze. Tylko nocne wiedźmy tam rządzą... Szare Panie Pustkowia."~ */
  IF ~~ THEN REPLY #33006 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33007 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 57 // from: 11.7
  SAY #33008 /* ~Mężczyzna przytakuje. "Tanar'ri płacą lepiej niż baatezu, ale jak się z nimi zadajesz, musisz mieć oczy dookoła głowy, bo nie wolno ci się odwrócić do nich tyłem: są ucieleśnieniem chaosu, a ich sercami rządzą zachcianki chwili. Nie przejmują się zbytnio zaufaniem ani dotrzymywaniem danego słowa..."~ */
  IF ~~ THEN REPLY #33009 /* ~"Mów dalej..."~ */ GOTO 58
  IF ~~ THEN REPLY #33010 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33011 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #33012 /* ~Mężczyzna pociąga nosem, a potem wzrusza ramionami. "Nie przejmują się tym, co się stanie, o ile to *coś* będzie złe. Zazwyczaj atakują baatezu po to, żeby mieć co robić i nie wyzabijać się nawzajem."~ */
  IF ~~ THEN REPLY #33013 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33014 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 59 // from: 11.4
  SAY #33015 /* ~"Od czasu do czasu pojawia się jakiś trep, który rozpytuje wkoło o robotę na Wojnie Krwi. Zazwyczaj tacy chcą zarobić trochę brzdęku, szybko załatwić to, co mają do zrobienia, a potem chcą wrócić do tego, co robili przedtem. Może ja byłem jednym z takich trepów. Może ja byłem takim najemnikiem, a kiedyś usłyszałem, że na Wojnie Krwi można zarobić trochę brzdęku. No to się tym zainteresowałem..."~ */
  IF ~~ THEN REPLY #33016 /* ~"Mów dalej..."~ */ GOTO 60
  IF ~~ THEN REPLY #33017 /* ~"Czekaj... Pozwól, że spytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33018 /* ~"A zresztą, mniejsza z tym. Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #33019 /* ~"Ale dostałem nauczkę: jesteśmy jak mrówki biegające pomiędzy butami tańczących, szpicowanie-skurlonych bogów. Widziałem wielkich mężczyzn, którzy twierdzili, że są wielkimi wojownikami..." Mężczyzna kręci głową przecząco. "*Papierowi* żołnierze. Wojna to dla takich wielki *piec*. Dzięki niej mogą się przebudzić, albo *spłonąć*."~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #33020 /* ~"Powiedz, jak można przetrwać Wojnę Krwi?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49556 /* ~"Możesz mi jeszcze raz powtórzyć, jak ci się udało przeżyć Wojnę Krwi?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49557 /* ~"Możesz mi jeszcze raz powtórzyć, jak ci się udało przeżyć Wojnę Krwi?"~ */ GOTO 70
  IF ~~ THEN REPLY #33021 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33022 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 61 // from: 44.0
  SAY #33023 /* ~Mężczyzna niespokojnie porusza rękoma, próbując znaleźć odpowiednie słowa. "Widzisz, oni nienawidzą w inny sposób, niż *my*. Nam nawet się nie śni, jaka jest prawdziwa *nienawiść*. Mamy jedno słowo na 'nienawiść'. Oni mają..." Człowiek zniża głos. "...tysiące tysięcy, a znaczenie tych słów jest skręcone i poskładane na stos jak... ciała. *Właśnie dlatego* walczą."~ */
  IF ~~ THEN REPLY #33024 /* ~"Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33025 /* ~"Nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 62 // from: 11.0 31.1 31.2 60.0 60.1
  SAY #33026 /* ~Na twarzy mężczyzny pojawia się mrok. "O tej jednej rzeczy nie będę mówił, śmiałku. Wystarczy powiedzieć, że człowiek robi wszystko co może, żeby uciec z Wojny."~ */
  IF ~  Global("CW_Vrischika_Ghysis","GLOBAL",1)
~ THEN REPLY #49560 /* ~"Ale pewna kobieta, imieniem Vriszika, powiedziała mi, że wydostałeś się z wojny, bo zamordowałeś swoich towarzyszy."~ */ GOTO 74
  IF ~~ THEN REPLY #33027 /* ~"W takim razie pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33028 /* ~"Zatem nie mam już więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 63 // from: 27.0 27.1
  SAY #33029 /* ~"Wojna zostawia po sobie bliznę, śmiałku. Po prostu to *wiesz*. I wiesz też, że już *nigdy* nie chcesz tam wrócić." Kiedy myślisz nad jego słowami, skronie zaczynają ci pulsować bólem... na powierzchnię zaczyna się wydostawać wspomnienie...~ */
  IF ~  CheckStatLT(Protagonist,9,WIS)
~ THEN REPLY #33030 /* ~Spróbuj przywołać do siebie to wspomnienie.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,8,WIS)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #33031 /* ~Spróbuj przywołać do siebie to wspomnienie.~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33032 /* ~Spróbuj przywołać do siebie to wspomnienie.~ */ DO ~GiveExperience(Protagonist,1500)
~ GOTO 65
  IF ~~ THEN REPLY #32996 /* ~Zdław w sobie to wspomnienie.~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.3 68.0
  SAY #33035 /* ~"Śmiałku? Nic ci nie jest?"~ */
  IF ~~ THEN REPLY #33098 /* ~"Tak... Nic mi nie jest. Czy biesy często przeprowadzają rekrutację najemników?"~ */ GOTO 29
  IF ~~ THEN REPLY #33099 /* ~"Nic mi nie jest. Pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #33100 /* ~"Nic mi nie jest. Nie mam do ciebie więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 65 // from: 63.0 63.1 63.2
  SAY #33036 /* ~Sala wykładowa zaczyna się zacierać przed twoimi oczyma, a z głębi twojego umysłu zaczynają się wyłaniać okropne wizje... wizje miejsca, w którym pory roku są inne od tego, co kiedykolwiek czułeś, słyszałeś czy próbowałeś wykrzyczeć. Miejsca, w którym modlitwy pozostają nie wysłuchane, zapadając się w głąb ziemi jak kamienie... krwistoczerwone błyskawice przecinają miejsce, gdzie kiedyś było niebo, a które teraz gotuje się pod twoimi stopami i krzyczy, gdy się o nie otrzesz...~ */
  IF ~~ THEN REPLY #33102 /* ~Pozwól wspomnieniu trwać...~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #33037 /* ~Wpadasz na dużą grupę ludzi, przechodzących przez mroczne kaniony, których wilgotne ściany pulsują jak serce, za szaty mających tylko twoją własną krew. W końcu przenosisz się do miejsca, w którym popielato-szara ziemia wije się jak kłębowisko węży, owijających się wokół twoich kostek i przyzywających twoje zło w głąb ziemi. Maszerujesz bez końca, w ciszy, poprzez tę bezbarwną krainę, gdzie zmęczenie wydaje się *żyć* własnym życiem i polować na ciebie jak cień nad pustkowiem, biczując cię rozpaczą...~ */
  IF ~~ THEN REPLY #33112 /* ~Pozwól wspomnieniu trwać...~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #33039 /* ~W końcu przybywasz, razem z odzianymi w łachmany ludźmi, którzy za tobą podążali, do wiedźmy siedzącej na ogromnej, wijącej się larwie. Wiedźma raz po raz poszturchuje swoim złamanym szponem coś pokrytego śluzem. Wskazujesz jednemu z ludzi, żeby poszedł z nią porozmawiać; po chwili jej zgrzytliwy głos dochodzi do twoich uszu...~ */
  IF ~~ THEN REPLY #33113 /* ~Pozwól wspomnieniu trwać...~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #33056 /* ~"Chcę z nim porozmawiać." Mówi wiedźma, a potem zanosi się śmiechem. Kiedy wskazuje na ciebie, jej oczy zaczynają błyszczeć. "Z tym przystojniakiem, który was prowadzi. Chcę z nim porozmawiać." ...i to już wszystko, co możesz sobie przypomnieć.~ */
  IF ~~ THEN GOTO 64
END

IF ~  True()
~ THEN BEGIN 69 // from:
  SAY #33057 /* ~Ten krępy, zgarbiony staruszek ciągle ma szerokie bary i pokryte bliznami, zniekształcone dłonie pracownika lub wojownika. Jego osobę zdaje się otaczać aura zmęczenia i rozpaczy. Wygląda na to, że w tej chwili prowadzi wykład.~ */
  IF ~  Global("Ghysis","GLOBAL",0)
~ THEN REPLY #33114 /* ~Zostań na wykład.~ */ DO ~SetGlobal("Ghysis","GLOBAL",1)
SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~  GlobalGT("Ghysis","GLOBAL",0)
~ THEN REPLY #33115 /* ~Zostań na wykład.~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #49551 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 11.1 31.3 60.2
  SAY #33059 /* ~Na twarzy Ghysisa pojawia się mrok. "Szpicuj się stąd! Nie będę teraz z tobą o tym gadał!"~ */
  IF ~~ THEN REPLY #49554 /* ~"W takim razie pozwól, że zapytam cię o coś innego..."~ */ GOTO 11
  IF ~~ THEN REPLY #49555 /* ~"W takim razie, nie mam więcej pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 71 // from:
  SAY #33060 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #33061 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #33062 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 62.0
  SAY #33063 /* ~Twarz mężczyzny robi się czerwona z gniewu. "Uważaj na to, co mówisz, śmiałku! To kłamstwo! Parszywe kłamstwo! Czyś ty zbzikował, żeby rozmawiać z biesem o Wojnie i wierzyć w to, co mówi?!"~ */
  IF ~~ THEN REPLY #33124 /* ~"Tak mi powiedziała. Nie powiedziałem, że w to uwierzyłem."~ */ GOTO 75
  IF ~~ THEN REPLY #33125 /* ~"Co się w takim razie stało?"~ */ GOTO 75
  IF ~~ THEN REPLY #33126 /* ~"Zapomnij, że o tym wspominałem. Mam do ciebie innne pytania..."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #49566 /* ~"Mniejsza z tym. Nie mam już więcej pytań."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #33064 /* ~"Powiem ci, co się stało, trepie!" Mężczyzna wzdycha i zaczyna się uspokajać. "Należałem do Kompanii Ognistego Wizerunku... Na początku było nas pięćdziesięciu trzech najemników, ale potem zostało nas tylko dziewięciu. Rozbiliśmy się obozem gdzieś na Avernusie i czekaliśmy na posiłki przed następną bitwą..."~ */
  IF ~~ THEN REPLY #33127 /* ~"Mów dalej..."~ */ GOTO 76
  IF ~~ THEN REPLY #33128 /* ~"Szczerze mówiąc, to chyba posłucham reszty innym razem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #33065 /* ~"Mój kontrakt już się prawie kończył... prawdę mówiąc, miałem powrócić z wojny zaraz po tej bitwie. Problem w tym, że gdybym tam umarł, to już na zawsze stałbym się ich własnością - w moim sercu było zbyt dużo mroku i zła. Skończyłbym jako oczekujący w Baator, jako wieczny żołnierz brałbym udział w Wojnie." Na samą myśl o tym starca przechodzi dreszcz.~ */
  IF ~~ THEN REPLY #33129 /* ~"Co się stało?"~ */ GOTO 77
  IF ~~ THEN REPLY #33130 /* ~"Szczerze mówiąc, to chyba posłucham reszty innym razem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #33066 /* ~"Więc uciekłem jeszcze z dwoma ludźmi. Pędziliśmy poprzez Sferę przez kilkanaście dni, aż w końcu dotarliśmy do wielkiego słupa z żyjących głów... to był okropny widok... Głowy gadały i syczały na nas, wołając, żebyśmy podeszli bliżej. Tamtej nocy wymknąłem się moim towarzyszom i poszedłem porozmawiać ze słupem."~ */
  IF ~~ THEN REPLY #33131 /* ~"I...?"~ */ GOTO 78
  IF ~~ THEN REPLY #33132 /* ~"Szczerze mówiąc, to chyba posłucham reszty innym razem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #33067 /* ~Ghysis zamyka oczy i zaczyna pocierać skronie. "Za... zapytałem słup, czy mogę odzyskać wolność, czy mogę uciec z Baator... W zamian głowy poprosiły o moich dwóch braci." Mężczyzna milknie na chwilę, gryząc swoje dłonie, jakby chciał powstrzymać łzy. "Dla mnie... wtedy... to była tylko matematyka."~ */
  IF ~~ THEN REPLY #33133 /* ~"Ciągle mi się wydaje, że jednak ich zamordowałeś."~ */ GOTO 80
  IF ~~ THEN REPLY #33134 /* ~"To musiał być okropny wybór."~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",2)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #33068 /* ~Starzec kiwa głową. "Nie wiem, czy kiedykolwiek sobie wybaczę. Teraz jestem tylko żołnierzem, który szuka miejsca, żeby umrzeć. Próbuję wymazać plamy zła, oczyścić się wewnętrznie, zanim umrę i powrócę na Wojnę Krwi. Więc nauczam tutaj, próbując namówić ludzi, żeby trzymali się od tego wszystkiego z daleka, żeby nie musieli podejmować takich wyborów jak ja."~ */
  IF ~~ THEN REPLY #33136 /* ~"Rozumiem, ale ciągle mi się wydaje, że jednak ich zamordowałeś."~ */ GOTO 80
  IF ~~ THEN REPLY #33137 /* ~"Rozumiem, Ghysisie."~ */ GOTO 9
END

IF ~~ THEN BEGIN 80 // from: 78.0 79.0
  SAY #33069 /* ~Starzec kiwa głową. "Nie wiem, czy kiedykolwiek sobie wybaczę. Teraz jestem tylko żołnierzem, który szuka miejsca, żeby umrzeć. Próbuję wymazać plamy zła, oczyścić się wewnętrznie, zanim umrę i powrócę na Wojnę Krwi. Więc nauczam tutaj, próbując namówić ludzi, żeby trzymali się od tego wszystkiego z daleka, żeby nie musieli podejmować takich wyborów jak ja."~ */
  IF ~~ THEN REPLY #33138 /* ~"Może powinienem rozpowiedzieć o tym wkoło, Ghysisie - Jestem pewien, że ludzie bardzo chcieliby wiedzieć, jak *naprawdę* udało ci się przetrwać Wojnę Krwi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_1","GLOBALGood",-1)
~ GOTO 81
  IF ~~ THEN REPLY #33139 /* ~"W porządku."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #33070 /* ~"Nie mówię, że to było dobre, trepie, ale nie możesz zaprzeczyć, że prawie każdy by tak zrobił. Nazywam to *przeżyciem*, a nie morderstwem... teraz zostaw mnie w spokoju. Stary Ghysis nie chce już z *tobą* rozmawiać."~ */
  IF ~~ THEN REPLY #33140 /* ~"Mam ci to przeliterować, starcze? To szantaż. Wezmę od ciebie coś cennego w zamian za moje milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_2","GLOBALGood",-1)
~ GOTO 82
  IF ~~ THEN REPLY #33141 /* ~"Nic... zapomnij, że coś mówiłem."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #33071 /* ~Na twarzy Ghysisa pojawia się grymas. Starzec kręci przecząco głową. "Je... jesteś ohydny, trepie. Masz, bierz wszystko co mam... tylko trzymaj swoją gębę na kłódkę. Ale mam przeczucie, że jakbym wylądował z powrotem na Wojnie Krwi, to chyba wiem, kogo będzie walczył zaraz obok mnie..." Mężczyzna wręcza ci monety i garść innych przedmiotów.~ */
  IF ~~ THEN REPLY #33142 /* ~"To się na pewno nie zdarzy w najbliższym czasie, Ghysisie. Teraz skończ ten wykład."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
GivePartyGold(200)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("BloodFly",Protagonist,1,0,0)
~ GOTO 9
END
