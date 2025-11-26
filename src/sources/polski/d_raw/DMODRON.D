// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMODRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMODRON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #2980 /* ~Zauważasz kostkę z dwoma rękami, dwoma nogami i dwoma małymi skrzydłami wyrastającymi po bokach. Z przodu kostki widać ożywioną twarz. Podchodzisz, a wzrok stwora spoczywa na tobie.~ */
  IF ~~ THEN REPLY #2981 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #44710 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44711 /* ~"Witaj." Stwór mówi monotonnie, bezpłciowo.~ */
  IF ~~ THEN REPLY #44712 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44713 /* ~"To nic, muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 6.1 7.2 8.1 9.1 10.1 11.1 12.0 13.1 14.1
  SAY #44714 /* ~Stwór w dalszym ciągu patrzy na ciebie obojętnie. "Jak brzmi twoje pytanie?"~ */
  IF ~~ THEN REPLY #44715 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #44716 /* ~"Czym jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #44717 /* ~"Co to za miejsce?"~ */ GOTO 10
  IF ~~ THEN REPLY #44718 /* ~"Co tutaj robisz?"~ */ GOTO 13
  IF ~~ THEN REPLY #44719 /* ~"To nic, muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44720 /* ~"Myśmy są modron."~ */
  IF ~~ THEN REPLY #44721 /* ~"Masz na imię Modron?"~ */ GOTO 4
  IF ~~ THEN REPLY #44722 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44723 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44724 /* ~"Myśmy są modron. Nie mamy imienia. Myśmy są modron. Wszystko, co tu widzisz to modron. Jesteśmy jednością."~ */
  IF ~~ THEN REPLY #44725 /* ~"No dobrze. Wszyscy jesteście modronami. Ale jak nazywa się *ten* modron? Ten, z którym rozmawiam?"~ */ GOTO 5
  IF ~~ THEN REPLY #44726 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44727 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #44728 /* ~Modron zaczyna sporadyczne stukotać. Jego twarz przybiera bolesny wyraz, w miarę jak wpatruje się w ciebie. "My... ja..." Odwraca wzrok i odgłos stukania zamiera. "Myśmy są modron. Nie mamy innego jestestwa ponad całość, która zwie się modron. Nie mamy imienia."~ */
  IF ~~ THEN REPLY #44729 /* ~"To w takim razie jak odróżniacie jednego modrona od drugiego?"~ */ GOTO 6
  IF ~~ THEN REPLY #44730 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44731 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44732 /* ~Zalega cisza. Modron rozważa twoje pytanie. "My wiemy. Myśmy są modron. Jesteśmy częścią całości. Jak ty rozpoznajesz dłoń, która jest częścią ręki, tak my rozpoznajemy każdą część całości."~ */
  IF ~~ THEN REPLY #44733 /* ~"Rozumiem. Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44734 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44735 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #44736 /* ~"Myśmy są modron, myśmy są kwadron."~ */
  IF ~~ THEN REPLY #44737 /* ~"Czym jest modron?"~ */ GOTO 8
  IF ~~ THEN REPLY #44738 /* ~"Czym jest kwadron?"~ */ GOTO 9
  IF ~~ THEN REPLY #44739 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44740 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #44741 /* ~"Myśmy są modron. Tak nazywa się naszą rasę."~ */
  IF ~~ THEN REPLY #44742 /* ~"W takim razie co to jest kwadron?"~ */ GOTO 9
  IF ~~ THEN REPLY #44743 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44744 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #44745 /* ~"W obrębie naszej rasy nasz typ określa się jako kwadron."~ */
  IF ~~ THEN REPLY #44746 /* ~"Więc czym jest modron?"~ */ GOTO 8
  IF ~~ THEN REPLY #44747 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44748 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #44749 /* ~"Oto konstrukcja lochów Rubikon."~ */
  IF ~~ THEN REPLY #44750 /* ~"Co to właściwie jest?"~ */ GOTO 11
  IF ~~ THEN REPLY #44751 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44752 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 14.0
  SAY #44753 /* ~Modron marszczy brwi patrząc na ciebie, a potem rozgląda się po pokoju. "Powinniśmy wiedzieć. Myśmy są modron. Jesteśmy częścią całości. My... Informacja niedostępna. Proszę zwrócić się z pytaniem do inżyniera."~ */
  IF ~~ THEN REPLY #44754 /* ~"Gdzie znajdę inżyniera?"~ */ GOTO 12
  IF ~~ THEN REPLY #44755 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44756 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44757 /* ~Modron rozgląda się. "Nie wiemy. Informacja niedostępna. Pogubiliśmy się..."~ */
  IF ~~ THEN REPLY #44758 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44759 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #44760 /* ~"Oczekuję instrukcji."~ */
  IF ~~ THEN REPLY #44761 /* ~"Jakich instrukcji?"~ */ GOTO 14
  IF ~~ THEN REPLY #44762 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44763 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44764 /* ~Modron patrzy na ciebie niewidzącym wzrokiem. "Instrukcji do zadań, które mają być wykonane."~ */
  IF ~~ THEN REPLY #44765 /* ~"Jakich zadań? Co ty właściwie tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #44766 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44767 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 15 // from:
  SAY #44768 /* ~Zauważasz kostkę z dwoma rękami, dwoma nogami i dwoma małymi skrzydłami wyrastającymi po bokach. Z przodu kostki widać ożywioną twarz. Podchodzisz, a wzrok stwora spoczywa na tobie.~ */
  IF ~~ THEN REPLY #44769 /* ~"Witaj."~ */ GOTO 16
  IF ~~ THEN REPLY #44770 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #44771 /* ~"Witaj." Stwór mówi monotonnie, bezpłciowo.~ */
  IF ~~ THEN REPLY #44772 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44773 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.1 19.1 20.0 21.1 22.0 23.2 24.1 25.1 26.0 27.1 28.0
  SAY #44774 /* ~Stwór w dalszym ciągu patrzy na ciebie obojętnie. "Jak brzmi twoje pytanie?"~ */
  IF ~~ THEN REPLY #44775 /* ~"Kim jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #44776 /* ~"Czym jesteś?"~ */ GOTO 21
  IF ~  Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44777 /* ~"Co to za miejsce?"~ */ GOTO 23
  IF ~  !Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44778 /* ~"Co to za miejsce?"~ */ GOTO 26
  IF ~~ THEN REPLY #44779 /* ~"Co ty tu robisz?"~ */ GOTO 27
  IF ~~ THEN REPLY #44780 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44781 /* ~Stwór gapi się na ciebie przez jakiś czas, zanim udzieli odpowiedzi. "Nie jestem pewien. Tyle zamieszania..."~ */
  IF ~~ THEN REPLY #44782 /* ~"Co chcesz przez to powiedzieć? Nie wiesz, kim jesteś?"~ */ GOTO 19
  IF ~~ THEN REPLY #44783 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44784 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #44785 /* ~"Nie... Tyle zamieszania... czasami."~ */
  IF ~~ THEN REPLY #44786 /* ~"Ja też już nie pamiętam, kim jestem."~ */ GOTO 20
  IF ~~ THEN REPLY #44787 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44788 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #44789 /* ~"Współczuję ci..." Wyciąga rękę i delikatnie dotyka twego ramienia. Po chwili cofa rękę.~ */
  IF ~~ THEN REPLY #44790 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44791 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY #44792 /* ~"Nasza rasa znana jest jako modron. Jesteśmy z Mechanusa, sfery prawa."~ */
  IF ~~ THEN REPLY #44793 /* ~"Co mi możesz powiedzieć o Mechanusie?"~ */ GOTO 22
  IF ~~ THEN REPLY #44794 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44795 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44796 /* ~"Miejsce praw... wielu praw. Bardzo skodyfikowanych..." Jego głos powoli zamiera.~ */
  IF ~~ THEN REPLY #44797 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44798 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #44799 /* ~Rozgląda się wokół. "Symulator lochów. Niestety, nie działa. Zepsuł się." Wzdycha.~ */
  IF ~~ THEN REPLY #44800 /* ~"Co się stało?"~ */ GOTO 24
  IF ~~ THEN REPLY #44801 /* ~"Czym jest symulator lochów?"~ */ GOTO 25
  IF ~~ THEN REPLY #44802 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44803 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #44804 /* ~"Nie wiem. Przestał działać."~ */
  IF ~~ THEN REPLY #44805 /* ~"Czym jest symulator lochów?"~ */ GOTO 25
  IF ~~ THEN REPLY #44806 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44807 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #44808 /* ~Modron rzuca ci piorunujące spojrzenie, a potem wzdycha. "Służy do symulacji lochów. A co, twoim zdaniem, mógłby robić symulator lochów?"~ */
  IF ~~ THEN REPLY #44809 /* ~"W jaki sposób się zepsuł?"~ */ GOTO 24
  IF ~~ THEN REPLY #44810 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44811 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #44812 /* ~Marszczy brwi patrząc na ciebie. "Powinieneś wiedzieć. Naprawiłeś je."~ */
  IF ~~ THEN REPLY #44813 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44814 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.4
  SAY #44815 /* ~Urywa. "Rozmyślanie... Myślenie... Odpowiadanie na twoje zapytania..." Marszczy brwi patrząc na ciebie.~ */
  IF ~~ THEN REPLY #44816 /* ~"O czym myślisz?"~ */ GOTO 28
  IF ~~ THEN REPLY #44817 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44818 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44819 /* ~"Życie jest pełne tajemnic..." Milknie.~ */
  IF ~~ THEN REPLY #44820 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #44821 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 29 // from:
  SAY #44822 /* ~Zauważasz kostkę z dwoma rękami, dwoma nogami i dwoma małymi skrzydłami wyrastającymi po bokach. Z przodu kostki widać ożywioną twarz. Podchodzisz, a wzrok stwora spoczywa na tobie.~ */
  IF ~~ THEN REPLY #44823 /* ~"Witaj."~ */ GOTO 30
  IF ~~ THEN REPLY #44824 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #44825 /* ~Wlepia w ciebie swój obojętny wzrok.~ */
  IF ~~ THEN REPLY #44826 /* ~"Mam kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #44827 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #44828 /* ~Jego spojrzenie nie łamie się, gdy tak patrzy na ciebie.~ */
  IF ~~ THEN REPLY #44829 /* ~"Czy możesz odpowiedzieć na parę pytań?"~ */ GOTO 32
  IF ~~ THEN REPLY #44830 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #44831 /* ~Wyprane z emocji oczy mrugają do ciebie, w miarę jak stwór wpatruje się w ciebie.~ */
  IF ~~ THEN REPLY #44832 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END
