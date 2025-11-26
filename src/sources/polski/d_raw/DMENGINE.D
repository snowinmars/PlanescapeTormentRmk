// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMENGINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMENGINE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48686 /* ~Zauważasz kostkę z dwoma rękami, dwoma nogami i dwoma małymi skrzydłami wyrastającymi po bokach. Z przodu kostki widać ożywioną twarz. Podchodzisz, a wzrok stwora spoczywa na tobie.~ */
  IF ~~ THEN REPLY #48687 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #48688 /* ~Nie zwracaj uwagi na stwora.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48689 /* ~"Witaj." Stwór mówi monotonnie, bezpłciowo.~ */
  IF ~~ THEN REPLY #48690 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48691 /* ~"Nic nie szkodzi. Żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.2 7.1 8.1 9.1 10.2 11.3 12.2 13.1 14.1 15.1 16.1 18.0 19.1 21.0 26.0 27.0 28.2 29.1 30.2 31.1 34.0
  SAY #48692 /* ~Stwór w dalszym ciągu patrzy na ciebie obojętnie. "Jak brzmi twoje pytanie?"~ */
  IF ~~ THEN REPLY #48693 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #48694 /* ~"Czym jesteś?"~ */ GOTO 6
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48695 /* ~"Co to za miejsce?"~ */ GOTO 9
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48696 /* ~"Co dokładnie Rubikon jest w stanie zrobić?"~ */ GOTO 19
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48697 /* ~"Chcę stworzyć loch do badania."~ */ GOTO 22
  IF ~  Global("Portal_Lens","GLOBAL",1)
~ THEN REPLY #48698 /* ~"Chcę posłużyć się portalem, aby się gdzieś przenieść."~ */ GOTO 25
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #54222 /* ~"Jak się stąd wydostać?"~ */ GOTO 31
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #66393 /* ~"Czy istnieją jakieś niebezpieczeństwa związane z Rubikonem, o których należałoby wiedzieć?"~ */ GOTO 32
  IF ~~ THEN REPLY #68063 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48700 /* ~"Myśmy są modron."~ */
  IF ~~ THEN REPLY #48701 /* ~"Masz na imię Modron?"~ */ GOTO 4
  IF ~~ THEN REPLY #48702 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48703 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #48704 /* ~"Myśmy są modron. Nie mamy imienia. Myśmy są modron. Wszystko, co tu widzisz to modron. Jesteśmy jednością."~ */
  IF ~~ THEN REPLY #48705 /* ~"Jeśli nie macie imion, w jaki sposób odróżniacie jednego modrona od innych?"~ */ GOTO 5
  IF ~~ THEN REPLY #48706 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48707 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48708 /* ~Zalega cisza. Modron rozważa twoje pytanie. "My wiemy. Myśmy są modron. Jesteśmy częścią całości. Jak ty rozpoznajesz dłoń, która jest częścią ręki, tak my rozpoznajemy każdą część całości."~ */
  IF ~~ THEN REPLY #48709 /* ~"A co z tobą, jednostką..."~ */ GOTO 27
  IF ~~ THEN REPLY #48710 /* ~"To ciekawe. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48711 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #48712 /* ~"Myśmy są modron, myśmy są kwadron."~ */
  IF ~~ THEN REPLY #48713 /* ~"Czym jest modron?"~ */ GOTO 7
  IF ~~ THEN REPLY #48714 /* ~"Czym jest kwadron?"~ */ GOTO 8
  IF ~~ THEN REPLY #48715 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48716 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48717 /* ~"Myśmy są modron. Tak nazywa się naszą rasę."~ */
  IF ~~ THEN REPLY #48718 /* ~"Więc czym jest kwadron?"~ */ GOTO 8
  IF ~~ THEN REPLY #48719 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48720 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48721 /* ~"W obrębie naszej rasy nasz typ określa się jako kwadron."~ */
  IF ~~ THEN REPLY #48722 /* ~"Więc czym jest modron?"~ */ GOTO 7
  IF ~~ THEN REPLY #48723 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48724 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 31.0
  SAY #48725 /* ~"To jest Projekt: Konstrukcja Lochów Rubikon."~ */
  IF ~~ THEN REPLY #48726 /* ~"Co to właściwie jest?"~ */ GOTO 10
  IF ~~ THEN REPLY #48727 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48728 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #48729 /* ~Gdy modron odpowiada na twoje pytanie, zaczyna wydawać z siebie delikatny buczący dźwięk. "Rubikon: celem Projektu jest ustalenie dynamiki, tak społecznej jak i aspołecznej, otaczającej środowisko powszechnie odbierane jako loch, oraz próba wyjaśnienia odchyleń, które często występują w takich środowiskach."~ */
  IF ~~ THEN REPLY #48730 /* ~"W jaki sposób macie zamiar to sprawdzić?"~ */ GOTO 11
  IF ~~ THEN REPLY #48731 /* ~"O jakich odchyleniach mówisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #48732 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48733 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #48734 /* ~"Rubikon jest w stanie utworzyć cykl pokoi połączonych w taki sposób, aby tworzyły coś, co powszechnie bywa nazywane *lochem*, Każdy loch może mieć jeden z trzech poziomów trudności: łatwy, normalny, lub trudny. Następnie loch zapełnia się potworami, pułapkami i skarbami, w zależności od wybranego stopnia trudności. Po utworzeniu lochu, jest on przeznaczony do pełnego zbadania." Modron zaczyna wydawać ciche buczenie.~ */
  IF ~~ THEN REPLY #48735 /* ~"Co to za buczenie?"~ */ GOTO 30
  IF ~~ THEN REPLY #48736 /* ~"Mówiłeś coś o odchyleniach?"~ */ GOTO 12
  IF ~~ THEN REPLY #48737 /* ~"Ciekawe. Chcę wypróbować jeden z tych lochów."~ */ GOTO 13
  IF ~~ THEN REPLY #48738 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48739 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 30.0
  SAY #48740 /* ~"Zapytania wymagające odpowiedzi: Co przyciąga ludzi do lochów? Dlaczego ludzie często poszukują wejścia do lochów, skoro są one tak niebezpieczne? Dlaczego lochy w ogóle istnieją? Jaka jest dynamika działającego lochu? Nie rozumiemy..." przerywa. "Ja... nie..."~ */
  IF ~~ THEN REPLY #48748 /* ~"Ciekawe. Chcę wypróbować jeden z tych lochów."~ */ GOTO 13
  IF ~~ THEN REPLY #48749 /* ~"Zacząłeś mówić *ja* zamiast *my*..."~ */ GOTO 28
  IF ~~ THEN REPLY #48750 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48751 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0 28.0 29.0 30.1
  SAY #48752 /* ~Zapada znacząca cisza, zanim modron odpowiada. "Prośba odrzucona... Projekt wstrzymany z uwagi na... wypadek."~ */
  IF ~~ THEN REPLY #48753 /* ~"Jaki wypadek?"~ */ GOTO 14
  IF ~~ THEN REPLY #48754 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48755 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #48756 /* ~"Konstrukcja lochów stała się niestabilna - przyczyna nieznana. Mechanizmy zabezpieczające uaktywniły się, co spowodowało, że loch się zawalił - przyczyna nieznana. Niesprawność soczewek portalowych spowodowała, że został zerwany kontakt z ojczystą sferą Mechanusa - przyczyna nieznana. Niezbędne zresetowanie lochu."~ */
  IF ~~ THEN REPLY #48757 /* ~"To czemu go nie zresetować?"~ */ GOTO 15
  IF ~~ THEN REPLY #48758 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48759 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #48760 /* ~"Zresetowanie może zostać zainicjowane tylko poprzez dyrektora projektu. Dyrektor projektu został zdezintegrowany. Niesprawność soczewek portalowych wywołała zerwanie z Mechanusem. Nie można otrzymać dyrektora zastępczego z Mechanusa."~ */
  IF ~~ THEN REPLY #48761 /* ~"Pozwól, że sobie coś wyjaśnimy. Nie można resetować bez dyrektora, ale nie ma dyrektora bez resetowania?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #48762 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48763 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #48764 /* ~Modron wygląda na zmartwionego i zaczyna się wiercić. "Ocena sytuacji prawidłowa. Projekt wstrzymany."~ */
  IF ~~ THEN REPLY #48765 /* ~"Posłuchaj. Uwielbiam smak przygody i swego czasu łaziło się trochę po lochach. Może nadaję się na dyrektora?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",3)
~ GOTO 17
  IF ~~ THEN REPLY #48766 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48767 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #48768 /* ~Pokój nagle wypełnia się brzęczeniem, które równie nagle milknie. "Pomoc mile widziana. Jesteś teraz dyrektorem projektu. Doradź, co dalej."~ */
  IF ~~ THEN REPLY #48769 /* ~"Zresetuj loch."~ */ DO ~FixEngineRoom()
GenerateModronMaze()
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #48770 /* ~"Resetowanie rozpoczęte..." Pokój wypełnia cicho bębniący dźwięk, który można raczej odczuć aniżeli usłyszeć. "Zawalanie istniejącego lochu..." Dźwięk przybiera na sile, aż podłoga zaczyna wibrować. "Rozpoczęcie nowego lochu..." Dźwięk staje się coraz głośniejszy, aż chce ci rozsadzić głowę. I nagle wszystko cichnie. "Reset kompletny. Poziom lochów: Łatwy. Oczekujemy dalszych instrukcji, Dyrektorze."~ */
  IF ~~ THEN REPLY #48771 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48772 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #48773 /* ~"Rubikon jest w stanie utworzyć cykl pokoi połączonych w taki sposób, aby tworzyły coś, co powszechnie bywa nazywane *lochem*, Każdy loch może mieć jeden z trzech poziomów trudności: łatwy, normalny, lub trudny. Następnie loch zapełnia się potworami, pułapkami i skarbami, w zależności od wybranego stopnia trudności. Po utworzeniu lochu, jest on przeznaczony do pełnego zbadania." Modron przerywa. "Możliwości zastępcze są dostępne poprzez soczewki portalowe."~ */
  IF ~~ THEN REPLY #48774 /* ~"Jakie możliwości zastępcze?"~ */ DO ~SetGlobal("Portal_Lens","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #48775 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48776 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #48777 /* ~"Rubikon może utworzyć bramę do innych dziedzin poprzez czasowe przyłączenie się do znanych i istniejących portali. Efekt ten znany jest pod nazwą *soczewki portalowej*. Pozwala to na korzystanie z portalu ze środka Rubikonu bez konieczności podróżowania do dziedziny portalu."~ */
  IF ~~ THEN REPLY #48778 /* ~"Tak więc, jeżeli wiem o jakimś portalu, mogę się do niego stąd przenieść?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #48779 /* ~"Prawidłowo, Dyrektorze."~ */
  IF ~~ THEN REPLY #48780 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48781 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.4
  SAY #48782 /* ~"Proszę wybrać poziom trudności."~ */
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48783 /* ~"Jest już ustawiony na łatwy, więc stwórz po prostu nowy loch."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48784 /* ~"Jest ustawiony na łatwy; zmień na normalny."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48785 /* ~"Jest ustawiony na łatwy; zmień na trudny."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48786 /* ~"Jest już ustawiony na normalny, więc po prostu stwórz nowy loch."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48787 /* ~"Jest ustawiony na normalny, zmień na łatwy."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48788 /* ~"Jest ustawiony na normalny, zmień na trudny."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48789 /* ~"Jest już ustawiony na trudny, więc stwórz po prostu nowy loch."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48790 /* ~"Jest ustawiony na trudny, zmień na normalny."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48791 /* ~"Jest ustawiony na trudny, zmień na łatwy."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~~ THEN REPLY #48792 /* ~"Nieważne. Zostaw tak jak jest."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1 22.2 22.3 22.4 22.5 22.6 22.7 22.8
  SAY #48793 /* ~"Zawalanie istniejącego lochu..." Pokój wypełnia cicho bębniący dźwięk. "Rozpoczęcie nowego lochu..." Podłoga zaczyna wibrować i nagle wszystko cichnie. "Loch został utworzony. Oczekuję dalszych instrukcji, Dyrektorze."~ */
  IF ~~ THEN REPLY #48794 /* ~"Na razie to wszystko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.9
  SAY #48795 /* ~"Pozostawiam obecne ustawienia bez zmian. Oczekuję dalszych instrukcji, Dyrektorze."~ */
  IF ~~ THEN REPLY #48796 /* ~"Na razie to wszystko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.5
  SAY #48797 /* ~"Proszę określić cel, Dyrektorze."~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #48905 /* ~"Ul, opodal Placu Szmaciarzy."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #48906 /* ~"Ul, opodal Kostnicy."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #48907 /* ~"Ul, opodal targowiska."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #48908 /* ~"Ul, opodal gospody Pod Gorejącym Człekiem."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #48909 /* ~"Niższa Dzielnica."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #48910 /* ~"Dzielnica Urzędników."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #48911 /* ~"Katakumby Łkających Kamieni."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #48912 /* ~"Nieważne. Na razie to wszystko. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #48913 /* ~Dostrzegasz modrona inżyniera. "Witaj."~ */
  IF ~~ THEN REPLY #48914 /* ~"Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48915 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.0
  SAY #48916 /* ~"Ja..." Modron wygląda na zmieszanego i milczy przez chwilę. Pokój wypełnia natrętne buczenie, ale szybko ustaje. "Myśmy są modron. Jesteśmy częścią całości. Całość to modron. Nie ma nic innego."~ */
  IF ~~ THEN REPLY #48917 /* ~"To ciekawe. Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48918 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.1
  SAY #48919 /* ~Modron spoziera na ciebie zatroskany, a następnie rozgląda się po pokoju. "Jesteś w błędzie. Myśmy są modron. My jesteśmy całością... Nie będziemy dyskutować na ten temat."~ */
  IF ~~ THEN REPLY #48920 /* ~"No dobrze. Korci mnie wypróbować jeden z tych lochów, o których była mowa."~ */ GOTO 13
  IF ~~ THEN REPLY #48921 /* ~"Mam dobry słuch. Zacząłeś mówić *ja* i..."~ */ GOTO 29
  IF ~~ THEN REPLY #48922 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48923 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #48924 /* ~Modron marszczy brwi. Kiedy udziela odpowiedzi, w jego głosie słychać ślad gniewu. "Nie. Myśmy są modron. Jesteśmy częścią całości. Nie będziemy o tym dłużej dyskutować." Gniewne buczenie wypełnia cały pokój, potem ustaje.~ */
  IF ~~ THEN REPLY #48925 /* ~"No dobrze. Korci mnie wypróbować jeden z tych lochów, o których była mowa."~ */ GOTO 13
  IF ~~ THEN REPLY #48926 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48927 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 11.0
  SAY #48928 /* ~"Rubikon to wartościowe osiągnięcie i ..." Na chwilę przerywa. "Ja... My... jesteśmy zadowoleni."~ */
  IF ~~ THEN REPLY #48929 /* ~"Wspomniałeś coś o odchyleniach?"~ */ GOTO 12
  IF ~~ THEN REPLY #48930 /* ~"Ciekawe. Korci mnie wypróbować jeden z tych lochów, o których była mowa."~ */ GOTO 13
  IF ~~ THEN REPLY #48931 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48932 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.6
  SAY #66394 /* ~Modron zwleka z odpowiedzią. "Wyjście niedostępne, projekt wstrzymany..." Pokój wypełnia bucząca kakofonia dźwięków, która nagle urywa się.~ */
  IF ~~ THEN REPLY #66395 /* ~"Jaki projekt? O czym ty mówisz?"~ */ GOTO 9
  IF ~~ THEN REPLY #66396 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #66397 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 2.7
  SAY #68064 /* ~"Tak jest, Dyrektorze. Nie należy rozdzielać się od współtowarzyszy w labiryncie. Gdyby labirynt trzeba było zresetować albo wybrać nowy poziom trudności, każdy pozostający w labiryncie zginie."~ */
  IF ~~ THEN REPLY #68065 /* ~"Rozumiem... Nie będę rozdzielać mojej grupy, gdy będziemy w labiryncie. Coś jeszcze?"~ */ JOURNAL #68071 /* ~Kiedy przebywam w labiryncie modrona, nie mogę przeszeregować swojej drużyny. W przypadku zresetowania labiryntu albo też dokonania zmiany poziomu trudności, każda postać pozostawiona w labiryncie umarłaby niechybnie.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #68066 /* ~"Tak, Dyrektorze. Nie należy upuszczać żadnych przedmiotów lub elementów wyposażenia w labiryncie. Gdyby labirynt trzeba było zresetować albo wybrać nowy poziom trudności, wszelkie przedmioty pozostawione w labiryncie zostaną zniszczone."~ */
  IF ~~ THEN REPLY #68067 /* ~"Rozumiem... Nie zostawię nic ważnego w labiryncie. Coś jeszcze?"~ */ JOURNAL #68072 /* ~Kiedy przebywasz w labiryncie modrona, nie powinieneś upuszczać niczego, co może być przydatne. W przypadku zresetowania labiryntu albo też dokonania zmiany poziomu trudności, każdy przedmiot pozostawiony w labiryncie zostałby unicestwiony.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #68068 /* ~Przerywa, aby przez chwilę pomyśleć. "Nie, Dyrektorze."~ */
  IF ~~ THEN REPLY #68069 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #68070 /* ~"Doskonale, żegnaj."~ */ EXIT
END
