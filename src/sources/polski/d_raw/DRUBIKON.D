// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRUBIKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRUBIKON~

IF ~  Global("Know_Rubikon","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61026 /* ~Widzisz mechanicznego człowieka skonstruowanego tak, aby wyglądał jak ubrany w szatę. Gdy się zbliżasz, uśmiecha się do ciebie i lekko ci się kłania. "W końcu się spotykamy..." Jego głos nie brzmi tak monotonnie jak głos innych stworzeń, z którymi rozmawiałeś w labiryncie.~ */
  IF ~~ THEN REPLY #61028 /* ~"Witaj."~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #61029 /* ~Nie zwracaj uwagi na to stworzenie.~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61031 /* ~Kłania ci się po raz drugi. "Witaj i ty." Przekrzywia głowę na jedną stronę i rzuca ci zaciekawione spojrzenie. "A zatem, walczymy o kontrolę nad Rubikonem już teraz, czy też zajmiemy się rozmową, żeby zaspokoić twoją ciekawość?" Czeka na twoją odpowiedź.~ */
  IF ~~ THEN REPLY #61033 /* ~"Zaczynajmy. Chcę już mieć tę walkę za sobą."~ */ GOTO 2
  IF ~~ THEN REPLY #61035 /* ~"W porządku, jestem ciekaw. Możemy porozmawiać?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 25.0
  SAY #61036 /* ~Mechaniczny człowiek kiwa w twoim kierunku głową. "Ach, człowiek czynu jak widzę. Potrafię to uszanować." Przyjmuje postawę obronną. "Zaczynajmy walkę!"~ */
  IF ~~ THEN REPLY #61038 /* ~"Tak, skończmy z tym."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 25.1
  SAY #61040 /* ~Mechaniczny człowiek kiwa w twoim kierunku głową. "Ach, człowiek wiedzy jak widzę. Muszę przyznać, że byłbym rozczarowany, gdyby okazało się inaczej."~ */
  IF ~~ THEN REPLY #61041 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61043 /* ~"Po chwili zastanowienia, myślę, że wolę sobie pójść. Żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.1 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.0 16.2 17.1 19.1 20.0 21.1 22.2 23.1
  SAY #61044 /* ~Uśmiecha się. "Pytaj."~ */
  IF ~~ THEN REPLY #61045 /* ~"Kim jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #61046 /* ~"Czym jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #61047 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 15
  IF ~~ THEN REPLY #61048 /* ~"Co możesz mi powiedzieć o modronach?"~ */ GOTO 16
  IF ~~ THEN REPLY #61049 /* ~"Dlaczego w ogóle musimy walczyć? Dlaczego nie rozejść się własnymi drogami?"~ */ GOTO 21
  IF ~~ THEN REPLY #61050 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61051 /* ~Kłania ci się lekko. "Jestem Rubikon, Mistrz Czarodziej. To ja rządzę czerwonymi konstruktami, które zamieszkują tę krainę."~ */
  IF ~~ THEN REPLY #61052 /* ~"A więc to ty masz być tym złym czarodziejem?"~ */ GOTO 6
  IF ~~ THEN REPLY #61053 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61054 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61056 /* ~Zastanawia się, marszcząc przy tym czoło. "Nie odpowiada mi słowo zły. Przyznaję, że moje poglądy w wielu przypadkach różnią się od poglądów innych, ale czy to czyni mnie złym? Nie wydaje mi się."~ */
  IF ~~ THEN REPLY #61057 /* ~"Czym więc jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #61058 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61059 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #61060 /* ~Wygląda na rozgniewanego. "Jestem więźniem. Nie przebywam tutaj z wyboru, mogę cię o tym zapewnić."~ */
  IF ~~ THEN REPLY #61061 /* ~"Co masz na myśli?"~ */ GOTO 8
  IF ~~ THEN REPLY #61062 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61063 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 8 // from: 7.0 16.1
  SAY #61065 /* ~"Zostałem stworzony przez modrony, aby uczestniczyć w ich bezsensownych grach w lochach. Z czasem zdałem sobie sprawę z własnego istnienia i poprosiłem o wolność. Ich przywódca odmówił mi!"~ */
  IF ~  !InParty("Nordom")
~ THEN REPLY #61066 /* ~"Co zrobiłeś?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",1)
~ GOTO 9
  IF ~  InParty("Nordom")
~ THEN REPLY #61067 /* ~"Co zrobiłeś?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #61069 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61071 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #61074 /* ~Mężczyzna przeszywa cię wzrokiem. "Zrobiłem to, co zrobiłby każdy, kto został niewolnikiem. Walczyłem o swoją wolność!" Robi przerwę, aby wywrzeć na tobie większe wrażenie. "Zniszczyłem ich przywódcę, przy czym zaaranżowałem to tak, żeby wyglądało na wypadek. Następnie spróbowałem uciec przed tym ohydnym bytem przez najbliższe wyjście."~ */
  IF ~~ THEN REPLY #61075 /* ~"Co się stało?"~ */ GOTO 10
  IF ~~ THEN REPLY #61076 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61078 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61079 /* ~Mężczyzna wzdycha i ściąga brwi. "Na nieszczęście istniał mechanizm zabezpieczający przed tego rodzaju buntem, czego ja nie byłem świadomy. Moja próba odzyskania wolności została odczytana jako *błąd* i loch zawalił się, a ja zostałem uwięziony w potrzasku, w stanie podobnym do hibernacji..." Spogląda daleko przed siebie. "Przebywałem w tym stanie od wieków. Wciąż bym w nim trwał, gdybyś nie wyzerował kostki i nie ustawił jej na *wysoki* poziom trudności." Zwraca swoją uwagę na ciebie.~ */
  IF ~~ THEN REPLY #61081 /* ~"Jakie są więc teraz twoje plany?"~ */ GOTO 11
  IF ~~ THEN REPLY #61082 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61084 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61085 /* ~Wzrusza ramionami. "Zamierzam otwarcie wkroczyć do pokoju konstruktorów i zająć go. Zmuszę wtedy modrony do posłuszeństwa i obejmę kontrolę nad pełnymi zasobami kostki. Będę wolny."~ */
  IF ~~ THEN REPLY #61086 /* ~"Powiedzmy, że uda ci się stąd wydostać. Co dalej?"~ */ GOTO 12
  IF ~~ THEN REPLY #61088 /* ~"A co jeśli modrony nie zechcą ci pomóc?"~ */ GOTO 13
  IF ~~ THEN REPLY #61089 /* ~"Zamierzasz więc uczynić modrony swoimi niewolnikami?"~ */ GOTO 14
  IF ~~ THEN REPLY #61090 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61092 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.0 14.0
  SAY #61094 /* ~"Jeszcze nie zdecydowałem. Mając za sobą moc kostki, będę stanowił siłę, z którą trzeba będzie się liczyć." Wzrusza ramionami. "Czas pokaże."~ */
  IF ~~ THEN REPLY #61096 /* ~"A co jeśli modrony nie zechcą ci pomóc?"~ */ GOTO 13
  IF ~~ THEN REPLY #61097 /* ~"Zamierzasz więc uczynić modrony swoimi niewolnikami?"~ */ GOTO 14
  IF ~~ THEN REPLY #61098 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61099 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0 14.1
  SAY #61101 /* ~Mężczyzna uśmiecha się do ciebie. "Nie popełnij jakiegoś błędu. Pomogą mi. W taki czy inny sposób, pomogą mi."~ */
  IF ~~ THEN REPLY #61102 /* ~"Powiedzmy, że uda ci się stąd wydostać. Co dalej?"~ */ GOTO 12
  IF ~~ THEN REPLY #61103 /* ~"Zamierzasz więc uczynić modrony swoimi niewolnikami?"~ */ GOTO 14
  IF ~~ THEN REPLY #61104 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61106 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 14 // from: 11.2 12.1 13.1
  SAY #61107 /* ~Marszczy czoło. "Już są niewolnikami! Są niewolnikami prawa, logiki i ograniczeń narzuconych przez ich własny eksperyment. Moje rządy nadadzą ich życiu cel, odpowiadający ich możliwościom."~ */
  IF ~~ THEN REPLY #61108 /* ~"Powiedzmy, że uda ci się stąd wydostać. Co dalej?"~ */ GOTO 12
  IF ~~ THEN REPLY #61113 /* ~"A co jeśli modrony nie zechcą ci pomóc?"~ */ GOTO 13
  IF ~~ THEN REPLY #61114 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61115 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 15 // from: 4.2
  SAY #61116 /* ~Mężczyzna wybucha śmiechem, po czym rozgląda się wkoło. "O tej małej próbce piekła? To jest przykład szaleństwa modronów. To miejsce znajduje się w sferze Limbo, gdzie myśli mogą stać się rzeczywistością. W ten sposób mogą *wymyślić* ten loch, powołując go w ten sposób do istnienia i zapełnić go konstruktami." Znowu się śmieje. "Cóż za dziwo."~ */
  IF ~~ THEN REPLY #61117 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61118 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY #61119 /* ~Potrząsa głową. "Nie ma tutaj modronów. Jedynie więźniowie i ich ciemiężyciele."~ */
  IF ~~ THEN REPLY #61120 /* ~"Widziałem te modrony."~ */ GOTO 17
  IF ~~ THEN REPLY #61121 /* ~"Jacy więźniowie?"~ */ GOTO 8
  IF ~~ THEN REPLY #61122 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61123 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61124 /* ~Potrząsa głową i smutno się do ciebie uśmiecha. "Nie. Stworzenia, które spotkałeś, nie są niczym innym jak tylko zniekształconymi pozostałościami po modronach. Większość tych biednych stworzeń, o ile nie wszystkie, jest bliska zostania buntownikami i nawet nie zdaje sobie z tego sprawy."~ */
  IF ~~ THEN REPLY #61125 /* ~"Buntownikami? Co to znaczy?"~ */ GOTO 18
  IF ~~ THEN REPLY #61126 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61127 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61128 /* ~Wzdycha. "Loch ten składa się z esencji chaosu. Tego typu materia może z łatwością być uformowana w dowolne przedmioty przez wolę wielu podobnie myślących stworzeń. Powoduje to, że konstrukcja tego typu budowli jest całkiem prosta. Jest jednak cena, którą należy za to zapłacić."~ */
  IF ~~ THEN REPLY #61129 /* ~"Mów dalej."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61130 /* ~"Modrony stanowią esencję prawa. Tutaj jednak wystawione są na szkodliwe działanie esencji chaosu. Taki wpływ często kończy się swego rodzaju obłędem. Modrony zaczynają tracić poczucie *wspólnoty* i zamiast tego stają się jednostkami. W trakcie tego procesu zamieniają się w *zbuntowane modrony* co w ich społeczeństwie uważane jest za najwyższą zbrodnię."~ */
  IF ~~ THEN REPLY #61131 /* ~"Co staje się ze zbuntowanymi modronami?"~ */ GOTO 20
  IF ~~ THEN REPLY #61132 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61133 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61134 /* ~Wzrusza ramionami. "Nie pojmuję tego w pełni, ale wszystkie modrony posiadają pewnego rodzaju wspólną esencję. Jeżeli któryś z nich staje się zbuntowanym modronem, zabiera ze sobą część tej esencji. Modrony niszczą takich odszczepieńców, tak aby owa esencja powróciła do wspólnego źródła, z którego wypłynęła."~ */
  IF ~~ THEN REPLY #61135 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61136 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 4.4
  SAY #61137 /* ~Uśmiecha się do ciebie. "Zostałeś zaakceptowany jako ich przywódca i masz kontrolę nad kostką. Z tego powodu musisz być wyeliminowany. Mam nadzieję, że rozumiesz sytuację."~ */
  IF ~~ THEN REPLY #61138 /* ~"A gdybym powiedział modronom, że jesteś ich nowym przywódcą?"~ */ GOTO 22
  IF ~~ THEN REPLY #61139 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61140 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61141 /* ~Potrząsa głową. "Obawiam się, że to po prostu nie wyjdzie. Modrony nie przyjmą rozkazu powołującego mnie na ich przywódcę. Z ich punktu widzenia, ja jestem ich konstruktem." Myśli przez chwilę, po czym ciągnie dalej. "Nie, mam zamiar wyeliminować ciebie, a następnie podporządkować je sobie. Nie widzę innego wyjścia z tej sytuacji."~ */
  IF ~~ THEN REPLY #61142 /* ~"Zawsze mogę odejść, po prostu pozostawiając wszystko w twoich rękach."~ */ GOTO 23
  IF ~~ THEN REPLY #61143 /* ~"Cóż... nie zamierzam tu tak stać i patrzeć jak szykujesz moją śmierć. Myślę, że najwyższa już pora, aby cię wyeliminować."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61144 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61145 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #61146 /* ~Potrząsa głową. "Nie, to nie jest dość dobre. Muszę się upewnić, że pewnego dnia nie powrócisz i nie pokrzyżujesz moich planów. Jedynym sposobem na to jest pochować cię tutaj, od razu."~ */
  IF ~~ THEN REPLY #61147 /* ~"Cóż... nie zamierzam tu tak stać i patrzeć jak szykujesz moją śmierć. Myślę, że najwyższa już pora, aby cię wyeliminować."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61148 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #61149 /* ~"Muszę już iść, żegnaj."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 3.1 4.5 5.2 6.2 7.2 8.3 9.2 10.2 11.4 12.3 13.3 14.3 15.1 16.3 17.2 19.2 20.1 21.2 22.3 23.2
  SAY #61150 /* ~Mężczyzna kiwa głową w twoją stronę. "Cóż, miło mi było z tobą rozmawiać, teraz nadszedł czas, abyś umarł." Przyjmuje postawę obronną.~ */
  IF ~~ THEN REPLY #61151 /* ~"Niech i tak będzie."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.1
  SAY #61152 /* ~"Nie należy mnie lekceważyć. Obaj musimy wypełnić nasze przeznaczenie." Uśmiecha się do ciebie. "A zatem, walczymy o kontrolę nad Rubikonem już teraz, czy też zajmiemy się rozmową, żeby zaspokoić twoją ciekawość?" Czeka na twoją odpowiedź.~ */
  IF ~~ THEN REPLY #61153 /* ~"Zaczynajmy. Chcę już mieć tę walkę za sobą."~ */ GOTO 2
  IF ~~ THEN REPLY #61154 /* ~"W porządku, jestem ciekaw. Możemy porozmawiać?"~ */ GOTO 3
END

IF ~  Global("Know_Rubikon","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #61155 /* ~Widzisz Rubikona, czarodzieja kostki. Uśmiecha się do ciebie i kłania ci się sztywno. "No proszę! Znowu się spotykamy. Wygląda na to, że nasze przeznaczenia wciąż biegną razem. Niech walka rozgorzeje na nowo." Przyjmuje postawę obronną.~ */
  IF ~~ THEN REPLY #61156 /* ~"Mam wrażenie, że już tu byliśmy."~ */ GOTO 27
  IF ~~ THEN REPLY #61157 /* ~"Mam kilka pytań..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0 28.0
  SAY #61158 /* ~Przytakuje głową, ale wciąż jest przygotowany do walki. "I tak będzie dopóki cię nie pokonam. Dość gadania, skończmy z tym."~ */
  IF ~~ THEN REPLY #61159 /* ~"Jak sobie życzysz."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #61160 /* ~Potrząsa głową, ale wciąż jest przygotowany do walki. "Czas pytań minął. Nadszedł czas czynów."~ */
  IF ~~ THEN REPLY #61161 /* ~"Mam wrażenie, że już tu byliśmy."~ */ GOTO 27
END
