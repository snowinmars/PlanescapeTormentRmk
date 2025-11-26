// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESAI~

IF ~  Global("Kesai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2939 /* ~Niepokojąco zmysłowa kobieta ma grubą, kruczoczarną grzywę włosów, niebieskawą skórę i błyszczące, karmazynowe oczy, które przypominają rubiny, które umieszczono przed kominkiem. Chociaż nie jest typowo piękna, ma egzotyczne rysy i jest raczej atrakcyjna.~ */
  IF ~~ THEN REPLY #2940 /* ~"Witaj..."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #40857 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40858 /* ~Jej głos jest głęboki i zmysłowy: "I ja witam *ciebie*, panie." Jej płonące oczy wędrują po twej postaci. "Jestem Kesai-Serris. Powiedz mi: co mogę dla ciebie zrobić, hmm?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 432
  IF ~  !NearbyDialog("DMorte")
Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40859 /* ~"Kesai? Czy jesteś córką Raveli?"~ */ GOTO 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40860 /* ~"No więc, co zwykle robisz dla klientów?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40861 /* ~"Mam kilka pytań..."~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40862 /* ~"Nic, dziękuję. Żegnaj."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #40863 /* ~Kesai śmieje się serdecznie, pokazując zęby, które spokojnie można by uznać za kły. Kręci głową i uśmiecha się do Mortego. "Ale poważnie... co mogę dla ciebie zrobić?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40864 /* ~"Kesai? Czy jesteś córką Raveli?"~ */ GOTO 41
  IF ~~ THEN REPLY #40865 /* ~"No więc, co zwykle robisz dla klientów?"~ */ GOTO 4
  IF ~~ THEN REPLY #40866 /* ~"Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #40867 /* ~"Nic, dziękuję. Żegnaj."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.3 66.3 67.3 68.4
  SAY #40868 /* ~Unosi brew: "Dokuczamy, co? Hmm!" Kesai uśmiecha się, mrużąc swe płonące, czerwone oczy. "Wróć, kiedy będziesz chciał rozmawiać, hmmm?"~ */
  IF ~~ THEN REPLY #40869 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 66.1 67.1 68.2
  SAY #40870 /* ~"Oczywiście rozmawiam! Zwykle o snach, których natura jest często erotyczna... ale nie zawsze!" Kesai mruga, uśmiechając się. "A więc! Czy chcesz opowiedzieć mi swój. Nie wstydź się; słyszałam już wszystko, wiesz. Nic nie może mnie zaskoczyć, ani zszokować, a ja tak bardzo lubię słuchać ludzkich snów. Możemy je też wymieniać - ale najpierw twój ruch."~ */
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40871 /* ~"Moje sny poprawiły się, odkąd cię ujrzałem..."~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40872 /* ~"Moje sny poprawiły się, odkąd cię ujrzałem, moja pani..."~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 7
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40873 /* ~"Nie mam zbyt wielu snów. Od dawna w ogóle nie śniłem."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40874 /* ~"Ja... właściwie nie mam snów."~ */ GOTO 21
  IF ~~ THEN REPLY #40875 /* ~"Nie... lepiej nie."~ */ GOTO 5
  IF ~~ THEN REPLY #40876 /* ~"Chciałbym, ale mam za mało czasu."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.4 4.5 6.2 6.3 13.1 14.1 15.2 15.3 16.2 17.2 17.3 19.2 19.3 23.1
  SAY #40877 /* ~Przez chwilę wydyma wargi, następnie wzrusza ramionami. "Jak chcesz! Będę czekać, gdybyś zmienił zdanie..."~ */
  IF ~~ THEN REPLY #40878 /* ~"Poczekaj... Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #40879 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #40880 /* ~"Czyżby?" Kesai uśmiecha się i kiwa głową. "Chodź, chodź... posłuchajmy czegoś prawdziwego! O czym śnisz, hmm?"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40881 /* ~"Nie mam zbyt wielu snów. Od dawna w ogóle nie śniłem."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40882 /* ~"Ja... właściwie nie miewam snów."~ */ GOTO 21
  IF ~~ THEN REPLY #40883 /* ~"Nie chcę o tym mówić."~ */ GOTO 5
  IF ~~ THEN REPLY #40884 /* ~"Chciałbym ci powiedzieć, ale mam za mało czasu."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #40885 /* ~"*Czyżby*?" Kesai uśmiecha się, jej błyszczące, czerwone oczy jeszcze raz przebiegają po twojej postaci. "Wyglądasz bardzo brutalnie, wiesz? Opowiedz mi: Jesteś brutalnym kochankiem? W czasie *kontaktu*, to znaczy... fizycznego?"~ */
  IF ~~ THEN REPLY #40886 /* ~"Masz na myśli 'nachalny'?"~ */ GOTO 8
  IF ~~ THEN REPLY #40887 /* ~"Dlaczego o to pytasz?"~ */ GOTO 9
  IF ~~ THEN REPLY #40888 /* ~"Nie, właściwie jestem całkiem delikatny."~ */ GOTO 10
  IF ~~ THEN REPLY #40889 /* ~"Tak, myślę, że tak."~ */ GOTO 10
  IF ~~ THEN REPLY #40890 /* ~"Tylko jeśli to lubią."~ */ GOTO 10
  IF ~~ THEN REPLY #40891 /* ~"Zależy od tego, jaki mam nastrój."~ */ GOTO 10
  IF ~~ THEN REPLY #40892 /* ~"Ja... tak naprawdę nie wiem."~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40893 /* ~"Na niebiosa, nie!" Kesai wzdycha rozpaczliwie. "Niektórzy ludzie robią wszystko *wolno* i *zmysłowo*... u innych znów wszystko jest szybkie, szorstkie, gwałtowne, rozumiesz? Po prostu zastanawiałam się, pod którą z kategorii *podpadasz*, tylko tyle."~ */
  IF ~~ THEN REPLY #40894 /* ~"Dlaczego o to pytasz?"~ */ GOTO 9
  IF ~~ THEN REPLY #40895 /* ~"Właściwie jestem całkiem delikatny."~ */ GOTO 10
  IF ~~ THEN REPLY #40896 /* ~"Przypuszczam, że jestem raczej ostry."~ */ GOTO 10
  IF ~~ THEN REPLY #40899 /* ~"Jestem ostry tylko wtedy, gdy tego chcą."~ */ GOTO 10
  IF ~~ THEN REPLY #40900 /* ~"Zależy od tego, w jakim jestem nastroju."~ */ GOTO 10
  IF ~~ THEN REPLY #40901 /* ~"Ja... tak naprawdę nie wiem."~ */ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #40902 /* ~Kesai wzrusza ramionami. "Byłam ciekawa... lubię mówić o aktach miłosnych. Mówiąc o tym wielu ludzi czuje się niezręcznie, ale umiejętność mówienia o tych sprawach jest ważna, szczególnie, jeśli chodzi o partnerów - jest to dobre dla obojga! Mam nadzieję, że moi klienci znajdą sposób, by porozmawiać o tym ze swymi kochankami, jeśli jeszcze tego nie zrobili. No więc; jeszcze mi nie odpowiedziałeś..."~ */
  IF ~~ THEN REPLY #40903 /* ~"Właściwie jestem dość delikatny."~ */ GOTO 10
  IF ~~ THEN REPLY #40904 /* ~"Myślę, że jestem raczej ostry."~ */ GOTO 10
  IF ~~ THEN REPLY #40905 /* ~"Jestem ostry tylko wtedy, gdy tego chcą."~ */ GOTO 10
  IF ~~ THEN REPLY #40906 /* ~"Zależy od tego, w jakim jestem nastroju."~ */ GOTO 10
  IF ~~ THEN REPLY #40907 /* ~"Ja... tak właściwie nie wiem."~ */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 7.4 7.5 8.1 8.2 8.3 8.4 9.0 9.1 9.2 9.3
  SAY #40908 /* ~Kesai przytakuje, uśmiechając się. "Pomyślałam, że właśnie tyle powiesz. Ja jestem całkiem ostra... lubię się zapominać, a szczególnie lubię gryzienie! Mam ostre zęby, więc muszę uważać. Czasami tak się zapomnę, że upuszczam trochę krwi, wiesz?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 433
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40909 /* ~"Masz ostre zęby?"~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40910 /* ~"To by mi nie przeszkadzało..."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40911 /* ~"Raczej by mi się *nie* podobało..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40912 /* ~"Tak... cóż, mam kilka pytań..."~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40913 /* ~"Rozumiem. Lepiej już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #40914 /* ~"Głównie włóczyła się po Zewnętrzu. Ale to pytanie retoryczne, prawda?" Mruga do Mortego i odwraca się do ciebie.~ */
  IF ~~ THEN REPLY #40915 /* ~"Masz ostre zęby?"~ */ GOTO 12
  IF ~~ THEN REPLY #40916 /* ~"Chyba nie przeszkadzałoby mi gryzienie..."~ */ GOTO 13
  IF ~~ THEN REPLY #40917 /* ~"Gryzienie chyba by mi się *nie* spodobało..."~ */ GOTO 16
  IF ~~ THEN REPLY #40918 /* ~"Mam kilka pytań, Kesai..."~ */ GOTO 26
  IF ~~ THEN REPLY #40919 /* ~"Lepiej już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #40920 /* ~Kesai przytakuje. "Mmm-hmm, rzeczywiście. Chciałbyś zobaczyć? Patrz..." Lekko rozchyla usta i fioletowym językiem przebiega po zębach; są na tyle długie, że można by je nazwać kłami.~ */
  IF ~~ THEN REPLY #40921 /* ~"Myślę, że gryzienie by mi nie przeszkadzało..."~ */ GOTO 13
  IF ~~ THEN REPLY #40922 /* ~"Ich ugryzienia raczej by mi się *nie* spodobały..."~ */ GOTO 16
  IF ~~ THEN REPLY #40923 /* ~"Rozumiem. Mam kilka pytań, Kesai..."~ */ GOTO 26
  IF ~~ THEN REPLY #40924 /* ~"Lepiej już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.0
  SAY #40925 /* ~Kesai śmieje się. "Wątpię, czy mogłabym się przebić przez tę twoją grubą skórę. Czy dużo zostało ci w niej czucia?"~ */
  IF ~~ THEN REPLY #40926 /* ~"Nie, niestety; niezupełnie. Blizny są bardzo grube."~ */ GOTO 14
  IF ~~ THEN REPLY #40927 /* ~"Właściwie nie chcę o tym mówić."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40928 /* ~"Och, to niedobrze. *Naprawdę* masz dużo blizn..." Kesai przygląda się twojej twarzy. "Nawet na ustach, na powiekach... powiedz mi: czy masz je wszędzie? No wiesz... *wszędzie*?"~ */
  IF ~~ THEN REPLY #40929 /* ~"Nie, niezupełnie. Niektóre obszary są nietknięte."~ */ GOTO 15
  IF ~~ THEN REPLY #40930 /* ~"Właściwie nie chcę o tym mówić."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40931 /* ~"To dobrze!" Kesai uśmiecha się wesoło, następnie udając groźne spojrzenie, kładzie dłonie na biodrach. "Nigdy *jeszcze* nie opowiedziałeś mi swoich snów. No dalej, usłyszmy je!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40932 /* ~"Nie mam zbyt wielu snów. Od dawna nie miałem ani jednego."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40933 /* ~"Ja... właściwie nie miewam snów."~ */ GOTO 21
  IF ~~ THEN REPLY #40934 /* ~"Nie chcę o tym mówić."~ */ GOTO 5
  IF ~~ THEN REPLY #40935 /* ~"Chciałbym ci powiedzieć, ale mam zbyt mało czasu."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 10.3 11.2 12.1
  SAY #40936 /* ~"Och, widzisz? Oto dlaczego tak ważne jest rozmawianie o tych rzeczach, przede wszystkim z kochankiem. Dla każdej pary, która spotyka się po raz pierwszy byłoby znacznie lepiej, gdyby najpierw przedyskutowali sprawę... poza tym taka rozmowa daje dużo radości, hmmm?" Kesai uśmiecha się szeroko, jej oczy błyszczą niczym czerwone klejnoty.~ */
  IF ~~ THEN REPLY #40937 /* ~"Tak, raczej tak."~ */ GOTO 17
  IF ~~ THEN REPLY #40938 /* ~"Nie, myślę, że to sprawa prywatna, której nie można traktować tak lekko."~ */ GOTO 17
  IF ~~ THEN REPLY #40939 /* ~"Nie chcę o tym rozmawiać."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40940 /* ~Kesai kiwa głową, wygląda na pogrążoną w myślach. "Powiedz... jeszcze *nigdy* nie opowiedziałeś mi swoich snów. No dalej, usłyszmy je!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40941 /* ~"Nie mam zbyt wielu snów. Od dawna nie miałem żadnego."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40942 /* ~"Ja... właściwie nie miewam snów."~ */ GOTO 21
  IF ~~ THEN REPLY #40943 /* ~"Nie chcę o tym mówić."~ */ GOTO 5
  IF ~~ THEN REPLY #40944 /* ~"Chciałbym ci powiedzieć, ale mam zbyt mało czasu."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 7.6 8.5 9.4
  SAY #40945 /* ~Przez chwilę wydyma wargi, następnie wzrusza ramionami. "Jeśli mówiąc o tym czujesz się nieswojo, to w porządku. Chociaż lepiej, żebyś nie miał takich oporów przy kochance. Bardzo ważna jest umiejętność rozmowy o tych sprawach, szczególnie przed samym aktem, wiesz? To będzie najlepsze dla was obojga."~ */
  IF ~~ THEN REPLY #40946 /* ~"Będę o tym pamiętać."~ */ GOTO 19
  IF ~~ THEN REPLY #40947 /* ~"Lepiej zajmij się swoimi sprawami."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #40948 /* ~W odpowiedzi po prostu się uśmiecha. "Powiedz... jeszcze *nigdy* nie opowiedziałeś mi swoich snów. No dalej, usłyszmy je!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40949 /* ~"Nie mam zbyt wielu snów. Od dawna nie miałem żadnego."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40950 /* ~"Ja... właściwie nie miewam snów."~ */ GOTO 21
  IF ~~ THEN REPLY #40951 /* ~"Nie chcę o tym mówić."~ */ GOTO 5
  IF ~~ THEN REPLY #40952 /* ~"Chciałbym ci powiedzieć, ale mam zbyt mało czasu."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #40953 /* ~Kesai uśmiecha się z wyższością, wywracając swymi płomiennymi, czerwonymi oczami. "To *ty* podszedłeś do *mnie*, wiesz. Jeśli takie rzeczy napełniają cię goryczą, wolno ci oczywiście odejść i porozmawiać z jedną z innych kobiet."~ */
  IF ~~ THEN REPLY #40954 /* ~"Nie, jeszcze nie - mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #40955 /* ~"A więc tak zrobię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.3 6.1 15.1 17.1 19.1
  SAY #40956 /* ~Kesai w zaskoczeniu unosi brwi. "Naprawdę? Jakież to smutne! Nawet potwory i devy śnią, wiesz. Jesteś *pewien*, że ty nie?"~ */
  IF ~~ THEN REPLY #40957 /* ~"W zupełności. Żadnych snów."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #40958 /* ~"Hmm. To bardzo osobliwe! Kompletnie nie wiem, co powiedzieć..."~ */
  IF ~~ THEN REPLY #40959 /* ~"Cóż, mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #40960 /* ~"Dobrze. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.2 6.0 15.0 17.0 19.0
  SAY #40961 /* ~"Naprawdę ani jednego? Osobliwe! Nawet Nawet potwory i devy śnią, wiesz. Więc o czym były te sny, hmm?" Kesai pochyla się w twoim kierunku, przygotowana na odpowiedź.~ */
  IF ~~ THEN REPLY #40962 /* ~"To bardziej koszmary, niż sny. Wizje czarnokolcego labiryntu... nocnej wiedźmy, która zwie się Ravela..."~ */ GOTO 24
  IF ~~ THEN REPLY #40963 /* ~"Właściwie nie chcę o tym mówić."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #40964 /* ~Kesai nie odzywa się przez jakiś czas. "Och? Och... koszmary. Rozumiem... szkoda, naprawdę szkoda..."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #40965 /* ~"Dobrze się czujesz? Nie wyglądasz za dobrze..."~ */ GOTO 25
  IF ~~ THEN REPLY #40966 /* ~"Tak, być może. Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #40967 /* ~"Dobrze. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #40968 /* ~"Wszystko w porządku, naprawdę. Ale dziękuję." Kessai uśmiecha się.~ */
  IF ~~ THEN REPLY #40969 /* ~"W takim razie, mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #40970 /* ~"W takim razie pójdę już. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.3 2.2 5.0 10.4 11.3 12.2 20.0 22.0 24.1 25.0 27.2 28.2 29.1 30.1 31.0 32.1 33.2 34.0 36.1 37.0 38.1 39.0 40.0 42.1 66.2 67.2 68.3 69.0
  SAY #40971 /* ~Kesai mruga, oczekując pytania.~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40972 /* ~"Kesai, rozmawiałem z Kimasxi. Powiedziała mi, że jest twą przyrodnią siostrą i że Ravela jest twoją matką."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",3)
~ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40973 /* ~"Czy przypadkiem nie jesteś córką Raveli?"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40974 /* ~"Czym ty jesteś?"~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,12,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40975 /* ~"Pozwól, że spytam: Czym ty jesteś?"~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,13,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40976 /* ~"Czym ty jesteś?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40977 /* ~"Pozwól, że spytam: Czym ty jesteś?"~ */ GOTO 28
  IF ~~ THEN REPLY #40978 /* ~"Co tutaj robisz?"~ */ GOTO 29
  IF ~~ THEN REPLY #40979 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 32
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40980 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 69
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67844 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 69
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40981 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ JOURNAL #66727 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o osobistym zapachu Vivian. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 33
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40982 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ JOURNAL #66728 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o zniknięciu karmazynowego welonu. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 36
  IF ~  GlobalLT("Kesai","GLOBAL",3)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40983 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 38
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40984 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 40
  IF ~~ THEN REPLY #40985 /* ~"Właściwie nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.2 26.3
  SAY #40986 /* ~Kesai kiwa głową. "Co, nie widzisz?" Przysuwa się, wypinając swój obfity biust. "Kobietą!" Unosi brew. "Widzę, że moja odpowiedź cię nie zadowala... Właściwie to jestem sfero-tknięta. To wszystko, co musisz wiedzieć."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40987 /* ~"Kesai, rozmawiałam z Kimasxi. Powiedziała mi, że jest twą przyrodnią siostrą i że Ravela jest twoją matką."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40988 /* ~"Jesteś córką Raveli?"~ */ GOTO 41
  IF ~~ THEN REPLY #40989 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #40990 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 26.5
  SAY #40991 /* ~Kesai kiwa głową. "Co, nie widzisz?" Przysuwa się, wypinając swój obfity biust. "Kobietą!" Unosi brew. "Widzę, że moja odpowiedź cię nie zadowala... Właściwie to jestem sfero-tknięta, tak jak twoja przyjaciółka." Wskazuje na Annę. "To wszystko, co musisz wiedzieć."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40992 /* ~"Kesai, rozmawiałam z Kimasxi. Powiedziała mi, że jest twą przyrodnią siostrą i że Ravela jest twoją matką."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40993 /* ~"Jesteś córką Raveli?"~ */ GOTO 41
  IF ~~ THEN REPLY #40994 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 26
  IF ~~ THEN REPLY #40995 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.6
  SAY #40996 /* ~"Zabawiam cię, odpowiadając na te pytania." Mruga. "Ale tak naprawdę, jestem uczennicą Pani Sławy. Są nimi wszystkie kurtyzany w tym Przybytku."~ */
  IF ~~ THEN REPLY #40997 /* ~"Uczennicą?"~ */ GOTO 30
  IF ~~ THEN REPLY #40998 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 26
  IF ~~ THEN REPLY #40999 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41000 /* ~"Zgadza się. Przybytek to w rzeczywistości szkoła dla kobiet, które chcą stać się Czuciowcami. Pani Sława uczy nas jak operować słowem, tak że możemy lepiej utożsamiać się z wszystkimi wokoło. Pozwala to pełniej doświadczać Sfer, wiesz?"~ */
  IF ~~ THEN REPLY #41001 /* ~"Opowiedz mi o Czuciowcach."~ */ GOTO 31
  IF ~~ THEN REPLY #41002 /* ~"Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41003 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #41004 /* ~"Stronnictwo Doznań wierzy, że można zrozumieć wieloświat tylko doświadczając go... im więcej doświadczamy, tym bliżej jesteśmy zrozumienia cienia wieloświata. Intrygujące, co? Myślę, że urodziłam się po to, by zostać jedną z nich - po prostu chcę *wiedzieć*."~ */
  IF ~~ THEN REPLY #41005 /* ~"Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41006 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.7
  SAY #41007 /* ~"Oczywiście: Przybytek Zaspokajania Żądz Intelektualnych to właściwie szkoła dla kobiet, które chcą stać się Czuciowcami. Pani Sława uczy nas jak operować słowem, tak że możemy lepiej utożsamiać się z wszystkimi wokoło. Pozwala to pełniej doświadczać Sfer, wiesz?"~ */
  IF ~~ THEN REPLY #41008 /* ~"Opowiedz mi o Czuciowcach."~ */ GOTO 31
  IF ~~ THEN REPLY #41009 /* ~"Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41010 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.10
  SAY #41011 /* ~"Nie." Kesai marszczy brwi. "Większość kobiet powie, że jest afektowana, ale dla mnie była zawsze dość miła... komplementowała moje oczy... i pachnie tak dobrze! Mam nadzieję, że wkrótce odnajdzie swój osobisty zapach. Spytaj o to Nenny; zawsze jej pełno i mogła coś widzieć."~ */
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #41012 /* ~"Masz naprawdę śliczne oczy, wiesz?"~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #41013 /* ~"Masz naprawdę śliczne oczy, wiesz?"~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ EXTERN ~DANNAH~ 206
  IF ~~ THEN REPLY #41014 /* ~"Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41015 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #41016 /* ~"Dziękuję! Widać, jak żarzą się w ciemności, wiesz... dziwne, nie?" Przerywa i patrzy na ciebie. "Ty też masz ładne oczy... takie ciemne i tajemnicze! Pełne charakteru."~ */
  IF ~~ THEN REPLY #41017 /* ~"Dziękuję Kesai. Mam jeszcze inne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41018 /* ~"Dziękuję. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #41019 /* ~Kesai-Serris wzrusza ramionami i spogląda na ciebie.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 26.11
  SAY #41020 /* ~"Hmm. Nie, nie widziałam go od ostatniego razu, gdy miała go na sobie... ale Nenny mogła coś widzieć, więc możesz ją spytać. Przyznaję, był ładny... Marissa nie wyszłaby ze swej komnaty bez tego welonu, więc wszystkim nam oszczędzono jej paskudnego języka... musimy tylko męczyć się z Kimasxi." Uśmiecha się lekko. "Ta Kimasxi jest i tak gorsza."~ */
  IF ~~ THEN REPLY #41021 /* ~"Jak to?"~ */ GOTO 37
  IF ~~ THEN REPLY #41022 /* ~"Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41023 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #41024 /* ~"Marissa jest wyniosła i podła, ale Kimasxi... jest zgorzkniałym, złośliwym potworem-kobietą, ma język pełen trucizny i wrednie się zachowuje. Nie rozumiem *dlaczego* ktoś chciałby z nią rozmawiać - szczerze wątpię czy jej wygląd rekompensuje ten cięty, pełen trucizny język - ale i tak ma klientów."~ */
  IF ~~ THEN REPLY #41025 /* ~"Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41026 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 26.12
  SAY #41027 /* ~"Nie. Nic."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #41028 /* ~"Jesteś pewna? Wydajesz się zdenerwowana..."~ */ GOTO 39
  IF ~~ THEN REPLY #41029 /* ~"Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41030 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #41031 /* ~Mruży swe czerwone oczy. "Oczywiście, że jestem pewna! Już mnie o nią nie pytaj."~ */
  IF ~~ THEN REPLY #41032 /* ~"Dobrze. Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41033 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 26.13
  SAY #41034 /* ~"Dziesiąta?" Kesai zaciska usta, namyślając się, tupie nogą. "Nie... jest nas tylko dziewięć. Zawsze jest dziewięć kurtyzan, chyba że Pani Sława dokonała ostatnio jakichś zmian, o których nie wiem."~ */
  IF ~~ THEN REPLY #41035 /* ~"Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41036 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.1 2.0 26.1 27.1 28.1 66.0 67.0
  SAY #41037 /* ~Nagle Kesai obnaża zęby i mruży oczy tak, że wydają się szparkami płonącej czerwieni. "Co?! Gdzie słyszałeś coś takiego?"~ */
  IF ~~ THEN REPLY #41038 /* ~"Od Ecco."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~Zapytałem Kesai-Serris czy jest córką Raveli i trochę ją tym rozdrażniłem... nie chce w to uwierzyć. Jeśli to co jej powiedziałem jest rzeczywiście prawdą, to będę musiał znaleźć jakiś sposób, by tego dowieść.~ */ GOTO 42
  IF ~~ THEN REPLY #41039 /* ~"To tylko plotka."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~Zapytałem Kesai-Serris czy jest córką Raveli i trochę ją tym rozdrażniłem... nie chce w to uwierzyć. Jeśli to co jej powiedziałem jest rzeczywiście prawdą, to będę musiał znaleźć jakiś sposób, by tego dowieść.~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #41040 /* ~"Śmieszne! Myślę, że *wiedziałabym*, gdyby ta podła wiedźma była moją matką! I przestań mnie już niepokoić."~ */
  IF ~~ THEN REPLY #41041 /* ~"Kim więc jest twoja matka?"~ */ GOTO 43
  IF ~~ THEN REPLY #41042 /* ~"Dobrze. Mam następne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41043 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #41044 /* ~"Nie wiem, dobra? Wychował mnie ojciec; nigdy jej nie znałam. Ale czy *wyglądam* jak nocna wiedźma?!"~ */
  IF ~~ THEN REPLY #41045 /* ~"No cóż... jest skóra... i oczy... i może też zęby..."~ */ GOTO 44
  IF ~~ THEN REPLY #41046 /* ~"Nie, nie - oczywiście, że nie."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #41047 /* ~Kesai-Serris patrzy na ciebie płonącymi oczyma. "Może porozmawiamy *później*, ale teraz nie mam już nastroju. Żegnaj."~ */
  IF ~~ THEN REPLY #41048 /* ~"Żegnaj."~ */ DO ~SetGlobal("Kesai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 26.0 27.0 28.0
  SAY #41049 /* ~Kesai warczy, oczy płoną jej ze złością. "To... to... Cholera, jak ja nienawidzę tej kobiety! Dlaczego *uwierzyłeś* w te bzdury?"~ */
  IF ~~ THEN REPLY #41050 /* ~"Mówi, że temu zaprzeczasz i naprawdę możesz nie wiedzieć, ale to prawda. Powiedziała, że możesz spytać ojca... że on ci powie."~ */ DO ~SetGlobal("Kesai","GLOBAL",3)
SetGlobal("Kesai_Quest","GLOBAL",2)
~ JOURNAL #39518 /* ~Kesai-Serris w końcu zdała sobie sprawę z tego, że jest córką Raveli. Zgodnie z sugestią Kismaxi, porozumiała się jakoś ze swoim ojcem, pół-biesem, i poznała prawdę.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #41051 /* ~Przez chwilę patrzy na ciebie w milczeniu. "Daj mi chwilę." Odwraca się i zaczyna mamrotać... wydaje się, że powietrze wokół niej delikatnie migocze, wypełniając się zapachem miedzi, niczym ciepła krew...~ */
  IF ~~ THEN REPLY #41052 /* ~Czekaj cierpliwie.~ */ GOTO 51
  IF ~~ THEN REPLY #41053 /* ~Nastaw ucha, spróbuj usłyszeć co mówi.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #41054 /* ~Pochylasz się w jej stronę, próbując usłyszeć, co mamrocze.

"Haughazanenelu, Wygnany Książe Ithag, Markizie Krwawego Cienia, ojcze mój, wysłuchaj mnie, gdyż wzywam imię twoje..."~ */
  IF ~~ THEN REPLY #41055 /* ~Słuchaj dalej.~ */ GOTO 48
  IF ~~ THEN REPLY #41056 /* ~Przestań się wsłuchiwać.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #41057 /* ~"Tak, mój ukochany ojcze, to ja, Kesai-Serris. Odpowiedz mi na jedno pytanie, pytanie, które często ci zadawałam..."~ */
  IF ~~ THEN REPLY #41058 /* ~Słuchaj dalej.~ */ GOTO 49
  IF ~~ THEN REPLY #41059 /* ~Przestać się wsłuchiwać.~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41060 /* ~"Tak, mój ukochany ojcze. Nie mogę znieść tego, że wciąż muszę pytać, że nie do końca znam siebie. *Musisz* mi powiedzieć... Nie proszę o nic z wyjątkiem tego. Powiedz mi, błagam cię..."~ */
  IF ~~ THEN REPLY #41061 /* ~Słuchaj dalej.~ */ GOTO 50
  IF ~~ THEN REPLY #41062 /* ~Przestań się wsłuchiwać.~ */ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #41063 /* ~"T-tak... tak, ukochany ojcze, rozumiem. Dziękuję ci... Żegnaj..."~ */
  IF ~~ THEN REPLY #41064 /* ~"No i? Co ci powiedział?"~ */ GOTO 51
  IF ~~ THEN REPLY #41065 /* ~Odchyl się, udawaj, że nic nie słyszysz.~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 46.0 47.1 48.1 49.1 50.0 50.1
  SAY #41066 /* ~Przez chwilę pozostaje odwrócona plecami, następnie odwraca się i spogląda w twarz. "Nie chciałam uwierzyć, że ta podła wiedźma mogła być moją matką. Już długo żyję, nie wyglądam na swój wiek, ale mam... niepokojące sny, czasami." Przechodzi ją dreszcz. "Ale wciąż... nie chcę być spadkobierczynią zła, które sprawiła, ani nie chcę zwracać na siebie uwagi Pani, tak jak moja matka. Wyrządziła tak wiele zła!"~ */
  IF ~~ THEN REPLY #41067 /* ~"Opowiedz mi co o niej wiesz, dobrze?"~ */ GOTO 52
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41068 /* ~"Musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41069 /* ~"Nie martwiłby się tym, Kesai. Nie ma w tobie nic z Raveli. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #41070 /* ~"Słyszałam, że zadawała ludziom niesamowite zagadki, takie których rozwiązanie znała tylko ona. I jeśli ktoś odpowiedział źle, pożerała go, albo zostawiała wiszącego w swym przerażającym ogrodzie, jako przykład dla innych. Tych kilku, którym udało się uciec, torturowała w snach, ujeżdżając ich niczym rumaki, łamiąc wolę i ciskając dusze w bezbarwną niepamięć Szarego Pustkowia..."~ */
  IF ~~ THEN REPLY #41071 /* ~"Mów dalej..."~ */ GOTO 53
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41072 /* ~"Musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41073 /* ~"Wystarczy... nie musisz mówić mi więcej. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41074 /* ~"Mówiono, że jej magia była ponad wszystkim, co dotąd widziano; była obrazem utkanym z koszmarów, którym nadano formę istnienia. Kamień giął się pod wpływem jej woli niczym miękka glina; prawa Sfer kłaniały jej się u stóp. Mogła utkać iluzję z niczego... a z iluzji rzeczywistość, która mogła przerażać, zabić i wprawić w zakłopotanie."~ */
  IF ~~ THEN REPLY #41075 /* ~"Mów dalej..."~ */ GOTO 54
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41076 /* ~"Musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41077 /* ~"Wystarczy... nie musisz mówić mi więcej. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #41078 /* ~"Była panią Mrocznej Sztuki, panią i panem wszystkich jej odmian. Napadła na Guwernanta, który ośmielił się zacytować jej prawo Sigil, rzucając na niego cień, który pożarł go tak, że został z niego język, palce i skóra twarzy. Obdzierała Łaskobójców ze skóry i obracała w pył domy tych, którzy ją drażnili. Straszne, straszne siły były na jej rozkazy."~ */
  IF ~~ THEN REPLY #41079 /* ~"Mów dalej..."~ */ GOTO 55
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41080 /* ~"Musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41081 /* ~"Wystarczy... nie musisz mówić mi więcej. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #41082 /* ~"Zmieniała kształt niczym woda, używając tego by niszczyć radość i kraść wiedzę. Była potworem, jak wszystko, co ma początek w Szarym Pustkowiu."~ */
  IF ~~ THEN REPLY #41083 /* ~"Mów dalej..."~ */ GOTO 56
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41084 /* ~"Musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41085 /* ~"Wystarczy... nie musisz mówić mi więcej. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #41086 /* ~"W końcu zaczęła straszyć, że otworzy Klatkę i wpuści tu całą furię Sfer, która napłynie niczym fala. Na szczęście, nie udało się jej. Istniała jedynie po to, by czynić zło..."~ */
  IF ~~ THEN REPLY #41087 /* ~"Mów dalej..."~ */ GOTO 57
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41088 /* ~"Musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41089 /* ~"Wystarczy... nie musisz mówić mi więcej. Żegnaj, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41090 /* ~"Nie wiem czy żyje... ale wiem, teraz, że była mą matką." Zwiesza głowę i garbi się. "Och, gdybym miała łzy, gdybym mogła zapłakać!"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #41091 /* ~Spróbuj ją pocieszyć.~ */ GOTO 59
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #41092 /* ~Spróbuj ją pocieszyć.~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #41093 /* ~Spróbuj ją pocieszyć.~ */ GOTO 61
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41094 /* ~"Musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41095 /* ~"Nie martwiłbym się tym, Kesai. Nie ma w tobie nic z Raveli. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 51.1 52.1 53.1 54.1 55.1 56.1 57.3 59.0 60.0 61.0 68.0
  SAY #41096 /* ~Wygląda na zaniepokojoną. "Proszę?"~ */
  IF ~~ THEN REPLY #41097 /* ~"Klucz do portalu prowadzącego do labiryntu Raveli to jakaś jej część, a ty jesteś jej krwi. To wystarczy."~ */ GOTO 62
  IF ~~ THEN REPLY #41098 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #41099 /* ~"Po prostu... po prostu zostaw mnie w spokoju. Dam sobie radę. Potrzebuję tylko trochę czasu, by to przemyśleć, to wszystko."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41100 /* ~"Dobrze, ale... musisz mi dać jakąś część siebie."~ */ GOTO 58
  IF ~~ THEN REPLY #41101 /* ~"Nie martwiłbym się tym, Kesai. Nie ma w tobie nic z Raveli. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.1
  SAY #41102 /* ~"Dziękuję... dziękuję, że próbowałeś... ale nic mi nie będzie. Potrzebuję tylko trochę czasu, by to przemyśleć, to wszystko."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41103 /* ~"Głupio mi teraz o to prosić... ale musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41104 /* ~"Nie martwiłbym się tym, Kesai. Nie ma w tobie nic z Raveli. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.2
  SAY #41105 /* ~Nagle wpada ci w ramiona, dygocząc jak ktoś, kto szlocha. Przez chwilę po prostu tak stoi, uporczywie się ciebie trzymając... ale nagle odpycha się. "Dziękuję, ale... nic mi nie będzie. Potrzebuję tylko trochę czasu, by to przemyśleć, to wszystko."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41106 /* ~"Głupio mi teraz o to prosić... ale musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41107 /* ~"Nie martwiłbym się tym, Kesai. Nie ma w tobie nic z Raveli. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.0
  SAY #41108 /* ~Kesai z trudem łapie powietrze. "Chcesz ją odszukać?" Wyraz zaskoczenia ustępuje nieufności. "Czego... czego chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #41109 /* ~"Najlepiej twoją krew. Tylko kroplę lub dwie."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #41110 /* ~Przytakuje. "Ale... czy masz coś, w czym mógłbyś to przenieść? Kawałek materiału jak chustka, lub coś takiego, wiesz?"~ */
  IF ~  PartyHasItem("Hanky")
~ THEN REPLY #41111 /* ~"Tak... proszę..."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~Mam na chusteczce kilka kropel krwi Kesai-Serris. Skoro jest dzieckiem Raveli, to powinno wystarczyć jako klucz do portalu prowadzącego do jej labiryntu: to w końcu 'kawałek Raveli'.~ */ GOTO 64
  IF ~  !PartyHasItem("Hanky")
~ THEN REPLY #41112 /* ~"Nie, nie mam."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",2)
~ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 63.0 68.1
  SAY #41113 /* ~Kesai bierze chustkę i ostrożnie gryzie się w koniuszek palca. Po tym, jak kilka kropel wsiąka w materiał, podaje ją tobie. "Wystawiasz się na poważne niebezpieczeństwo, wiesz. Nawet jeśli opowieści o mojej matce są mocno przesadzone, jest okropnie potężna i absolutnie zła. Powodzenia."~ */
  IF ~~ THEN REPLY #41114 /* ~"Tak też słyszałem. Dziękuję i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1
  SAY #41115 /* ~Kesai wzdycha, rozglądając się. "Jestem pewna, że jest gdzieś tu, w Przybytku. Przynieś ja, gdy ją znajdziesz, dobrze? Wtedy dam ci krew."~ */
  IF ~~ THEN REPLY #41116 /* ~"Wrócę kiedy zdobędę chustkę. Żegnaj."~ */ JOURNAL #50721 /* ~Okazuje się, że kilka kropli krwi Kesai jest kluczem do portalu prowadzącego do labiryntu Raveli... Muszę tylko znaleźć chusteczkę, żebym miał w czym wziąć tę krew.~ */ EXIT
END

IF ~  Global("Kesai","GLOBAL",1)
~ THEN BEGIN 66 // from:
  SAY #41117 /* ~Gdy zbliżasz się do niej, Kesai-Serris uśmiecha się ciepło, potrząśnięciem głowy zrzucając falujący lok ze swych jasnych, karmazynowych oczu. "Cóż, witaj znowu... mogę coś dla ciebie zrobić?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41118 /* ~"Kesai? Czy jesteś córką Raveli?"~ */ GOTO 41
  IF ~~ THEN REPLY #41119 /* ~"Zależy... czym się zajmujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #41120 /* ~"Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #41121 /* ~"Nic, dziękuję. Żegnaj."~ */ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",2)
~ THEN BEGIN 67 // from:
  SAY #41122 /* ~Gdy zbliżasz się do niej, Kesai-Serris uśmiecha się ciepło, potrząśnięciem głowy zrzucając falujący lok ze swych jasnych, karmazynowych oczu. "Nie martw się; nigdy nie złoszczę się długo. Mogę coś dla ciebie zrobić?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41123 /* ~"Kesai? Jesteś córką Raveli?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #41124 /* ~"Zależy... czym się zajmujesz?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #41125 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #41126 /* ~"Nic, dziękuję. Żegnaj."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",3)
~ THEN BEGIN 68 // from:
  SAY #41127 /* ~Gdy zbliżasz się do niej, Kesai-Serris uśmiecha się ciepło, potrząśnięciem głowy zrzucając falujący lok ze swych jasnych, karmazynowych oczu. "Cóż, witaj znowu... mogę coś dla ciebie zrobić?"~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #52907 /* ~"Musisz mi dać jakąś część siebie, Kesai."~ */ GOTO 58
  IF ~  Global("Know_Ravel_Key","GLOBAL",2)
PartyHasItem("Hanky")
~ THEN REPLY #41128 /* ~"Tak... mam tę chustkę..."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~Mam na chusteczce kilka kropel krwi Kesai-Serris. Skoro jest dzieckiem Raveli, to powinno wystarczyć jako klucz do portalu prowadzącego do jej labiryntu: to w końcu 'kawałek Raveli'.~ */ GOTO 64
  IF ~~ THEN REPLY #41129 /* ~"Zależy... czym się zajmujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #41130 /* ~"Mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #41131 /* ~"Nic, dziękuję. Żegnaj."~ */ GOTO 3
END

IF ~~ THEN BEGIN 69 // from: 26.8 26.9
  SAY #41132 /* ~"Tak, to Ecco. Jest bardzo słodka, ale nie odzywa się. Myślę, że kiedyś powiedziała coś, co spowodowało jakąś wielką tragedię... i dlatego już nigdy nie przemówi." Uśmiecha się, wzruszając ramionami. "Dość ciekawa historia, ale nie wiem czy prawdziwa. Zapytaj Dolory... widziałam, jak rozmawiała z byłym kochankiem Ecco, z czasów gdy Ecco jeszcze mówiła."~ */
  IF ~~ THEN REPLY #41133 /* ~"Mam kolejne pytanie..."~ */ GOTO 26
  IF ~~ THEN REPLY #41134 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
