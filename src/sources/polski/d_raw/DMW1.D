// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47907 /* ~Widzisz krzepkiego, młodego mężczyznę. Zdaje się, że roznosi zawartość skrzyń na różne stragany na targu. Kłania się kiedy nadchodzisz. "Dzień dobry, śmiałku."~ */
  IF ~~ THEN REPLY #47908 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #47909 /* ~Zignoruj go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47910 /* ~Znowu się kłania. "W czym ci mogę pomóc?"~ */
  IF ~~ THEN REPLY #47911 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47912 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 6.1 8.0 9.0 10.0 11.0
  SAY #47913 /* ~"Dobrze." Czeka na twoje pytania.~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47914 /* ~"Szukam kogoś, kto znany jest jako Lotar albo Pan Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47916 /* ~"Miałem czaszkę, którą mi ukradziono. Znasz kogoś, kto mógłby coś takiego zrobić?"~ */ GOTO 5
  IF ~~ THEN REPLY #47917 /* ~"Gdzie mogę kupić jakąś broń?"~ */ GOTO 8
  IF ~~ THEN REPLY #47918 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 9
  IF ~~ THEN REPLY #47919 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 10
  IF ~~ THEN REPLY #47920 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 7.0
  SAY #47915 /* ~Potrząsa głową. "Pan Kości... nie lubi gości, śmiałku. Możesz go szukać, ale na twoim miejscu *nie* chciałbym go znaleźć."~ */
  IF ~~ THEN REPLY #47931 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 4
  IF ~~ THEN REPLY #47932 /* ~"W porządku. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47933 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47921 /* ~Gapi się przez chwilę na ciebie, po czym jego wzrok pada na twoje blizny. Kiedy patrzy ci w oczy, wzrusza ramionami. "Wyjdź z targu, udaj się na południe, później trochę na wschód. Zniszczony dom. Niech cię Moce mają w swojej opiece, śmiałku." Odwraca się i wraca do swojej roboty."~ */
  IF ~~ THEN REPLY #47922 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #47927 /* ~Marszczy brwi i mierzy cię wzrokiem z góry na dół. "Więc... czy było coś szczególnego w tej czaszce?"~ */
  IF ~~ THEN REPLY #47928 /* ~"Nie."~ */ GOTO 6
  IF ~~ THEN REPLY #47929 /* ~"Tak. Mówiła."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47930 /* ~Wzrusza ramionami. "Nie rozumiem zatem, czemu ktoś chciałby ją mieć."~ */
  IF ~~ THEN REPLY #47941 /* ~"A co jeśli umiałaby mówić?"~ */ GOTO 7
  IF ~~ THEN REPLY #47942 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47943 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #47934 /* ~Patrzy na ciebie przez chwilę. "Myślę, że można powiedzieć więc, że jest szczególna. Znaczy to, że mogła zwrócić na siebie uwagę Lotara, Pana Kości."~ */
  IF ~~ THEN REPLY #47935 /* ~"Gdzie znajdę tego Lotara?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47937 /* ~"Porozmawiałbym na twoim miejscu z Anzem; zwykle jest za kontuarem koło pieca."~ */
  IF ~~ THEN REPLY #47938 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47939 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #47944 /* ~"Musisz porozmawiać z Aalekiem, zwykle jest za kontuarem dalej w głąb, koło pieca."~ */
  IF ~~ THEN REPLY #47945 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47946 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #47947 /* ~Wzdycha. "To dom... nie mogę sobie wyobrazić lepszego miejsca, nie mogę też wyobrazić sobie gorszego." Znowu wzrusza ramionami. "Co do szczegółów, to idź do chłopaka Anzego, Lazla. Zwykle jest przy piecu. Chłopiec uwielbia rozmawiać.~ */
  IF ~~ THEN REPLY #47948 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47949 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #47950 /* ~Robotnik spogląda na ciebie i uśmiecha się. "Witaj znowu. Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #47951 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47952 /* ~"Nic, żegnaj."~ */ EXIT
END
