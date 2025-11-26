// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60952 /* ~Widzisz mechanicznego mężczyznę o bladozielonej skórze. Chociaż jest konstruktem, posiada ożywioną twarz, która krzywi się na twój widok.~ */
  IF ~~ THEN REPLY #60953 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #60954 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60955 /* ~"Grrrr." Stwór warczy na ciebie, po czym przerywa, obserwując twoją reakcję.~ */
  IF ~~ THEN REPLY #60956 /* ~"To ma mnie niby przestraszyć?"~ */ GOTO 2
  IF ~~ THEN REPLY #60957 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #60958 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #60959 /* ~"Co robisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #60960 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60961 /* ~Wygląda na zmieszanego. "Grrrr?" Wykonuje lekki, groźny gest w twoją stronę.~ */
  IF ~~ THEN REPLY #60962 /* ~"Pytałem, czy to mnie ma niby przestraszyć?"~ */ GOTO 3
  IF ~~ THEN REPLY #60963 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60965 /* ~Gapi się na ciebie przez chwilę, zastanawiając się nad twoim pytaniem. "Tak. *Grrrr* jest dźwiękiem oznaczającym groźbę. Dołączyłem odpowiedni gest, by nadać groźbie powagi. Strach jest oczekiwaną reakcją, która daje mi przewagę w późniejszej walce." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60966 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #60967 /* ~Twoje pytanie jakby wytrąciło stwora z równowagi. Stoi gapiąc się na ciebie, z głową przechyloną na jedną stronę, nie bardzo wiedząc co zrobić. "Jestem potworem. Walczymy?"~ */
  IF ~~ THEN REPLY #60968 /* ~"Chyba żartujesz..."~ */ GOTO 5
  IF ~~ THEN REPLY #60969 /* ~Zaatakuj stwora.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60970 /* ~Dalej gapi się na ciebie przez chwilę. "Nie... Grrrr." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60971 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60972 /* ~"Jestem konstruktem lekkozbrojnym. Obecnie posiadam: słabą umiejętność walki, niską inteligencję, i kiepską broń, którą nie bardzo umiem się posługiwać." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60973 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60975 /* ~Gapi się na ciebie z głową przechyloną na jedną stronę, nie wiedząc co zrobić. "Jestem mieszkańcem lochu. Została naruszona moja przestrzeń osobista i musisz teraz ponieść tego konsekwencje. Rozpoczynam zatem właściwą sekwencję ataku, jak następuje: dźwięk *Grrrr*, gest zastraszający, walka." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60976 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.1
  SAY #60977 /* ~Stwór podnosi ramiona i wymachuje bronią. "Widzę przed sobą wroga. Słyszę płacz kobiet. Jestem zwycięzcą" Skacze do ataku.~ */
  IF ~~ THEN REPLY #60978 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60979 /* ~Widzisz mechanicznego mężczyznę o bladozielonej skórze. Chociaż jest konstruktem, posiada ożywioną twarz, która krzywi się na twój widok.~ */
  IF ~~ THEN REPLY #60980 /* ~"Witaj."~ */ GOTO 10
  IF ~~ THEN REPLY #60981 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60982 /* ~"Giń w imię Złego Czarnoksiężnika!" Stwór wymachuje przed tobą bronią.~ */
  IF ~~ THEN REPLY #60983 /* ~"O jakim złym czarnoksiężniku gadasz?"~ */ GOTO 11
  IF ~~ THEN REPLY #60984 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #60985 /* ~"Kim jesteś?"~ */ GOTO 14
  IF ~~ THEN REPLY #60986 /* ~"Co robisz?"~ */ GOTO 15
  IF ~~ THEN REPLY #60987 /* ~"Mam się niby tego przestraszyć?"~ */ GOTO 16
  IF ~~ THEN REPLY #60988 /* ~"Nie mam na to czasu. Żegaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60989 /* ~Stwór przestaje wymachiwać swoją bronią i przerywa, by przez chwilę pomyśleć. "Uch... Ten, który nie istnieje, póki nie ustawisz Konstrukcji Lochów Rubikonu na *wysoki* poziom trudności. Dziecino, dopiero będziesz w kłopocie. Tymczasem, giń w imię Złego Czarnoksiężnika!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #60990 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60991 /* ~"Jestem jeszcze jednym bezimiennym sługą zła, który musi albo zniszczyć, albo zostać zniszczonym!"~ */
  IF ~~ THEN REPLY #60992 /* ~"To żart, prawda?"~ */ GOTO 13
  IF ~~ THEN REPLY #60993 /* ~Zaatakuj stwora.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #60994 /* ~Twarz stwora staje się paletą różnorakich emocji, do momentu kiedy wybiera sobie tą, którą uważa za właściwą. "Kpisz ze mnie! Giń, gnijący potomku człekopodobnej samicy!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #60995 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #60996 /* ~"Jestem konstruktem lekkozbrojnym, zaprogramowanym, by zabijać wszystkich intruzów, którzy mają czelność rzucać wyzwanie Rubikonowi!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #60997 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #60998 /* ~"Uruchamiam program, który był dołączony do mojego modelu przez Konstrukcję Lochów Rubikonu. Zamierzam teraz być wrogi i albo ja zabiję ciebie, albo zginę z twoich rąk!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #60999 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY #61000 /* ~Stwór przestaje wymachiwać bronią i przerywa, by chwilę pomyśleć. "Tak... Kiedy wymienia się złego, w sercach mas wywołuje się zawsze strach, prowokując bohaterów, by wyruszali w drogę i stawiali czoła niebezpieczeństwom, aż w końcu pokonują złego, dzięki aktowi totalnej głupoty." Skacze do ataku.~ */
  IF ~~ THEN REPLY #61001 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.5
  SAY #61002 /* ~Stwór skacze do ataku wywijając bronią. "Widzę robaka kulącego się przede mną, przed mą potęgą i wspaniałością. Nie błagaj o litość, robalu. Bo nie zwykłem jej okazywać!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #61003 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 18 // from:
  SAY #61004 /* ~Widzisz mechanicznego mężczyznę o bladozielonej skórze. Chociaż jest konstruktem, posiada ożywioną twarz, która krzywi się na twój widok.~ */
  IF ~~ THEN REPLY #61005 /* ~"Witaj."~ */ GOTO 19
  IF ~~ THEN REPLY #61006 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61007 /* ~Stwór przestaje na chwilę chmurzyć się na ciebie, a na twarzy pojawia mu się kpina i groza. "Iiiik! Bez wątpienia to ten bohater, który został przysłany tutaj, by zabić złego. Biada mi, nieszczęsnemu konstruktowi, który musiał być akurat na służbie, gdy on przybywa!"~ */
  IF ~~ THEN REPLY #61008 /* ~"O czym ty gadasz?"~ */ GOTO 20
  IF ~~ THEN REPLY #61009 /* ~"Kim jesteś?"~ */ GOTO 21
  IF ~~ THEN REPLY #61010 /* ~"Kim jesteś?"~ */ GOTO 23
  IF ~~ THEN REPLY #61011 /* ~"Co robisz?"~ */ GOTO 24
  IF ~~ THEN REPLY #61012 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61013 /* ~Stwór kładzie dłonie na biodrach i chmurzy się na ciebie. "Scenariusz, przygłupie, trzymaj się scenariusza. Jak możesz oczekiwać ode mnie, bym grał moją część, jeśli nie chcesz współpracować? O czym to mówiliśmy..." Przerywa, by przez chwilę pomyśleć. "Aha, już wiem, miałem cię sprać." Skacze do ataku.~ */
  IF ~~ THEN REPLY #61014 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #61015 /* ~Stwór przerywa, by pomyśleć przez chwilę, po czym przesadnie wzrusza ramionami. "Twoją nieszczęsną ofiarą?" Gotuje się do ataku.~ */
  IF ~~ THEN REPLY #61016 /* ~"To chyba nie dzieje się naprawdę?"~ */ GOTO 22
  IF ~~ THEN REPLY #61017 /* ~Zaatakuj stwora.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61018 /* ~"Ach! Ależ tak! Broń się, kanalio!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #61019 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #61020 /* ~"Jestem mieszkańcem lochu, który zamierza skopać ci tyłek!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #61021 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY #61022 /* ~Stwór pochyla się nad tobą i szepcze: "Właśnie gram przestraszonego sługusa, który spotyka po raz pierwszy bohatera." Następnie prostuje się i zaczyna wykrzykiwać przerażonym głosem. "Do broni, bracia konstrukty, musimy powalić tego bohatera!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #61023 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.4
  SAY #61024 /* ~Stwór patrzy na ciebie groźnie, ale triumfująco. "Nie, wężu. Nie możesz ujść przed strachem, który stoi przed tobą. Kiedy ktoś, tak jak ty, gwałci prawo, musi ponieść karę." Skacze do ataku.~ */
  IF ~~ THEN REPLY #61025 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
