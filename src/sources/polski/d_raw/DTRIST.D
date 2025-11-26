// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #37971 /* ~~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #37972 /* ~Widzisz młodą niewiastę. Kobieta ta usilnie próbuje przyciągnąć twoją uwagę. Odziana jest w szaty lichej jakości, ale jej postawa tchnie elegancją i subtelnością, co wyróżnia ją na tle prostackiego tłumu. Przyjrzawszy się jej dokładniej, zauważasz, że jej skóra jest czysta i gładka, pozbawiona żółtawego odcienia, właściwego mieszkańcom tej dzielnicy. Kobieta bacznie cię obserwuje, gdy się do niej zbliżasz i wita cię uśmiechem.~ */
  IF ~~ THEN REPLY #37973 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #37974 /* ~Nie zwracaj na nią uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37975 /* ~"Dzięki składam mocom, które sprawiły, że mnie zauważyłeś. Nazywam się Trista. Na gwałt potrzebuję usług najemnika..." Kobieta milknie i przygląda ci się jeszcze uważniej. "Jeżeli wygląd ma prawo przemawiać za jego właściciela, wydajesz się być tym, kogo szukam."~ */
  IF ~~ THEN REPLY #37976 /* ~"Wygląd może być mylący."~ */ GOTO 3
  IF ~~ THEN REPLY #37977 /* ~"Czego tak naprawdę chcesz ode mnie?"~ */ GOTO 4
  IF ~~ THEN REPLY #37978 /* ~"Coś mi się ta sprawa nie podoba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37979 /* ~Na jej twarz wstępuje cień obawy. "Tak, śmiałku. Wybacz mi, nie chciałam cię urazić. Sytuacja w jakiej jestem, jest hm... rozpaczliwa. Wyczerpałam wszystkie sposoby, jakich mogłam się chwycić, aby taki stan rzeczy zmienić, ale..."~ */
  IF ~~ THEN REPLY #37980 /* ~"Czego tak naprawdę chcesz ode mnie?"~ */ GOTO 4
  IF ~~ THEN REPLY #37981 /* ~"Coś mi się ta sprawa nie podoba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #37982 /* ~Kobieta kiwa głową. "Sedno problemu leży w tym, że za przestępstwo, którego nie popełniłam, mam być pozbawiona wolności i sprzedana w niewolę. Potrzebuję kogoś, kto pomoże mi udowodnić moją niewinność i odmienić mój los." Kobieta milknie i spogląda na ciebie z nadzieją.~ */
  IF ~~ THEN REPLY #37983 /* ~"Opowiedz mi dokładnie, co się stało."~ */ GOTO 5
  IF ~~ THEN REPLY #37984 /* ~"Coś mi się ta sprawa nie podoba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37985 /* ~Kobieta zastanawia się przez chwilę. "To dość długa historia, śmiałku. Zechciej, proszę, poświęcić mi trochę uwagi."~ */
  IF ~~ THEN REPLY #37986 /* ~"Kontynuuj."~ */ GOTO 6
  IF ~~ THEN REPLY #37987 /* ~"Naprawdę nie mam czasu na takie rzeczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 25.1 26.1
  SAY #37988 /* ~Kobieta wzdycha i rozpoczyna swoją opowieść. "Niedawno obumarł mi małżonek i zostałam sama z rodzinnym interesem. Nie mam uzdolnień handlowych, dlatego zdecydowałam się spieniężyć ten dobytek. Wkrótce potem, począł nękać mnie pewien człowiek, utrzymujący, że zaciągnięto u niego pożyczkę pod zastaw naszego rodzinnego interesu i nigdy jej nie spłacono." Kobieta przerywa, żeby zebrać myśli.~ */
  IF ~~ THEN REPLY #37989 /* ~"Nie przerywaj."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37990 /* ~"Sprawdziłam wszystkie dokumenty, które trzymywał mój mąż i okazało się, że istotnie kiedyś zaciągnięta została pożyczka, ale niedawno została spłacona. Wyjaśniłam to człowiekowi uważającemu się za mojego wierzyciela, a ten, kilka dni później, zażądał kopii dokumentu stwierdzającego spłatę długu... Okazało się, że nigdzie go nie ma." Kobieta wygląda na zmartwioną. Milknie na chwilę i namyśla się.~ */
  IF ~~ THEN REPLY #37991 /* ~"Nie przerywaj."~ */ GOTO 8
  IF ~~ THEN REPLY #51297 /* ~"Myślę, że już dość wstępu. Przejdźmy do konkretów."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37992 /* ~"Kiedy nie zdołałam udowodnić, że pożyczka została spłacona, człowiek podający się za wierzyciela wytoczył mi sprawę w sądzie. Odebrano mi wszystkie pieniądze i przekazano je stronie pokrzywdzonej. Ponieważ kwota ta nie wystarczyła do spłacenia długu, mam zostać sprzedana w niewolę, aby tym sposobem znalazły się pieniądze na zaspokojenie wszystkich roszczeń wierzyciela." Kobieta posyła ci żałosne spojrzenie.~ */
  IF ~~ THEN REPLY #37993 /* ~"Nie rozumiem. Dlaczego masz być sprzedana w niewolę?"~ */ GOTO 9
  IF ~~ THEN REPLY #37994 /* ~"Myślę, że już dość wstępu. Przejdź do konkretów."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #37995 /* ~Kobieta wzrusza ramionami. "To służy wielu celom. Po pierwsze, proceder taki hamuje zjawisko przepełniania się więzień, bo trzyma się tam tylko najgroźniejszych przestępców. Po drugie, dochód ze sprzedaży skazańca, służy pokryciu kosztów wszelkich szkód, opłat czy innych obciążeń związanych z daną sprawą. I wreszcie, osoba skazana wciąż w ten sposób odbywa swój wyrok, po to, aby być z niego końcem końców zwolniona i przeistoczyć się w lepszego, bardziej karnego obywatela."~ */
  IF ~~ THEN REPLY #37996 /* ~"To wszystko niezwykle frapujące, ale nie wiem, w jakim sposób mógłbym ci pomóc."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.1 9.0
  SAY #37998 /* ~"Potrzebuję kogoś, kto odnalazłby zgubiony dokument, który zaświadcza, że pożyczka została spłacona. Albo też kogoś, kto przekazałby resztę pieniędzy potrzebnych dla zaspokojenia wierzyciela i tym samym ocalił mnie od niewoli. Pieniądze te zwrócę." Kobieta patrzy na ciebie prosząco. "Nie mogę spędzić w tym miejscu pięciu lat mojego życia, śmiałku. To by mnie zabiło! Na pewno na własne oczy dostrzegłeś tę chorobę, która wszystkich tutaj toczy, czyż nie?"~ */
  IF ~~ THEN REPLY #37999 /* ~"O jakiej chorobie mówisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #38000 /* ~"Tak, ten żółty odcień skóry i kaszel..."~ */ GOTO 12
  IF ~~ THEN REPLY #38001 /* ~"Nie ciekawi mnie ta sprawa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38002 /* ~Kobieta wskazuje inne osoby w pobliżu. "Spójrz na nich, śmiałku. Widzisz ten żółty odcień skóry? Ustawiczny kaszel? A teraz spójrz w górę, na te kłębiaste chmury dymu przesycające powietrze..." Wskazuje palcem niebo. "Umrze tu każdy, kogo nie stać na lekarza. A obawiam się, że niewolnicę nie stać na taki luksus."~ */
  IF ~~ THEN REPLY #38003 /* ~"A więc to dlatego wszyscy mają tutaj żółtą skórę..."~ */ GOTO 12
  IF ~~ THEN REPLY #38004 /* ~"Nie ciekawi mnie ta sprawa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 25.0 26.0
  SAY #38005 /* ~Kobieta kiwa głową. "Tak, śmiałku. Proszę, znajdź w swym sercu litość nade mną biedną..." Patrzy na ciebie nerwowo. "Proszę..."~ */
  IF ~~ THEN REPLY #38006 /* ~"A co będę z tego miał, jeżeli ci pomogę?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trist_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~~ THEN REPLY #38007 /* ~Prawda: "Zostałaś uznana przez sąd za winną w świetle prawa i tylko to samo prawo może ci pomóc."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trist_1","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #38008 /* ~"Tak, spróbuję ci pomóc. Ale chciałbym zadać ci kilka pytań."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Kobieta o imieniu Trista ma zostać sprzedana w niewolę, jeśli nie znajdą się jej dokumenty pożyczkowe. Zgodziłem się jej pomóc.~ */ GOTO 13
  IF ~~ THEN REPLY #38009 /* ~"Nie, nie chcę się do tego mieszać."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38010 /* ~"Potrzebuję czasu, żeby się nad tym zastanowić. Bywaj zdrowa!"~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.2 15.1 16.0 17.0 18.4 19.1 20.0 21.0 22.0 23.0 27.1 35.1 36.1 37.0
  SAY #38011 /* ~Kobieta gorliwie kiwa głową. "Pytaj o co chcesz, śmiałku."~ */
  IF ~~ THEN REPLY #38012 /* ~"Jak się nazywa ten wierzyciel?"~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #38013 /* ~"Z kim mam rozmawiać o twojej sprawie?"~ */ GOTO 16
  IF ~~ THEN REPLY #38014 /* ~"A może gdzieś bezwiednie przełożyłaś ten dokument?"~ */ GOTO 17
  IF ~~ THEN REPLY #38015 /* ~"Czy sądzisz, że ktoś mógł ukraść ten dokument?"~ */ GOTO 18
  IF ~~ THEN REPLY #38016 /* ~"Czy próbowałaś to wszystko wyjaśnić przed sądem?"~ */ GOTO 21
  IF ~~ THEN REPLY #38017 /* ~"Wydaje mi się, że już czas mi w drogę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38018 /* ~"Jego imię jest mi dobrze znane, śmiałku. Po tym, co przeszłam, nie łatwo byłoby mi o nim zapomnieć..." Jej oczy przez moment błądzą w nieodgadnionej dali, a przez jej ciało przez moment przebiega dreszcz. "Nazywa się Byron Szpicer." Milknie na chwilę. "A jego wspólnik to ktoś o nazwisku Lenny."~ */
  IF ~~ THEN REPLY #38019 /* ~"Kim jest ten Lenny?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38020 /* ~"Gdzie mogę znaleźć Byrona?"~ */ GOTO 15
  IF ~~ THEN REPLY #38021 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38022 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 36.0
  SAY #38023 /* ~Namyśla się przez chwilę. "Wydaje mi się, że można go znaleźć na targu pod gołym niebem, albo gdzieś w tych okolicach. Wybacz, że nie mogę cię poinstruować dokładniej."~ */
  IF ~~ THEN REPLY #38024 /* ~"Wspominałaś o Lennym. Kto to taki?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38025 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38026 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #38027 /* ~"Sądzę, że z licytatorem Deranem. Zwykle jest tam." Wskazuje na przód platformy.~ */
  IF ~~ THEN REPLY #38028 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38029 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #38030 /* ~Kobieta kręci głową. "Nie, śmiałku. Jestem osobą wielce skrupulatną. Trzymałam dokument w skrzyni zamykanej na klucz w pracowni mojego nieboszczka męża. Skrzynia ta nigdy nie była wynoszona poza tę komnatę."~ */
  IF ~~ THEN REPLY #38031 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38032 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.3
  SAY #38033 /* ~Kobieta wzrusza ramionami. "Nie wiem. Czemu ktokolwiek miałby to zrobić, a zostawić przy tym inne cenne rzeczy? To dla mnie bez sensu."~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"Hm... może to ten wierzyciel ukradł dokument, żebyś musiała zapłacić dwukrotnie..."~ */ GOTO 19
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"Cóż... To tylko jedna z myśli..."~ */ GOTO 22
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"Hm... może to ten wierzyciel ukradł dokument, żebyś musiała zapłacić dwukrotnie..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"Cóż... To tylko jedna z myśli..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #38036 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38037 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.2
  SAY #38038 /* ~Kobieta patrzy na ciebie z przerażeniem. "To... to potworna myśl!". Waha się i w zastanowieniu gładzi palcem podbródek. "Myśl potworna, ale zdecydowanie odkrywcza, śmiałku. Gdyby okazało się, że ten Byron Szpicer jest macherem, jego oskarżenia stałyby się natychmiast nieważne."~ */
  IF ~~ THEN REPLY #38039 /* ~"Kim?"~ */ GOTO 20
  IF ~~ THEN REPLY #38040 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38041 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #38042 /* ~Kobieta spogląda na ciebie ze zdziwieniem. "Macher to złodziej albo oszust, śmiałku. Takich ludzi nazywa się macherami lub kanciarzami."~ */
  IF ~~ THEN REPLY #38043 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38044 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.4
  SAY #38045 /* ~Kobieta kiwa głową. "O tak, śmiałku. Wielu próbowałam zainteresować moim położeniem. Ty okazałeś się wszakże pierwszą osobą, która podała mi pomocną dłoń." Kobieta obdarza cię ciepłym uśmiechem.~ */
  IF ~~ THEN REPLY #38046 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38047 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1 18.3
  SAY #38048 /* ~Kobieta wzrusza ramionami. "Myśl godna uwagi, śmiałku. Nie sposób odmówić jej wartości."~ */
  IF ~~ THEN REPLY #38050 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38113 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #38051 /* ~Kobieta spogląda na ciebie pustym wzrokiem, a potem smutek szeroką falą rozlewa się na jej twarzy. "Nie mam nic, co mogłabym ci dać, śmiałku. Wszystko straciłam." Wygląda na przerażoną i zdesperowaną. "Proszę nie pozostawiaj mnie samej w takim położeniu..."~ */
  IF ~~ THEN REPLY #38052 /* ~"Tak, spróbuję ci pomóc. Ale chciałbym zadać ci kilka pytań."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Kobieta o imieniu Trista ma zostać sprzedana w niewolę, jeśli nie znajdą się jej dokumenty pożyczkowe. Zgodziłem się jej pomóc.~ */ GOTO 13
  IF ~~ THEN REPLY #38053 /* ~"Nie, nie chcę się do tego mieszać."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38054 /* ~"Potrzebuję czasu, żeby się nad tym wszystkim zastanowić. Bywaj zdrowa!"~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #38055 /* ~Widzisz Tristę. Kobieta patrzy na ciebie z rozpaczą w oczach. "Witaj znowu, śmiałku. Czy mogę pomówić z tobą o moich kłopotach?"~ */
  IF ~~ THEN REPLY #38056 /* ~"W porządku."~ */ GOTO 6
  IF ~~ THEN REPLY #38057 /* ~"Nie mam teraz czasu. Bywaj zdrowa."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #38058 /* ~Widzisz Tristę. Kobieta patrzy na ciebie z rozpaczą w oczach. "Witaj znowu, śmiałku. Czy przybywasz, aby mi pomóc?"~ */
  IF ~~ THEN REPLY #38059 /* ~"Ciągle szukasz kogoś do pomocy w twoich kłopotach?"~ */ GOTO 12
  IF ~~ THEN REPLY #38060 /* ~"Opowiedz mi jeszcze raz swoją historię."~ */ GOTO 6
  IF ~~ THEN REPLY #38061 /* ~"Nie, nie jestem zainteresowany. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #38062 /* ~Widzisz Tristę. Kobieta patrzy na ciebie z rozpaczą w oczach. "Witaj znowu, śmiałku. Czy przybywasz, aby mi pomóc? Czy zmieniłeś zdanie?"~ */
  IF ~~ THEN REPLY #38063 /* ~"Ciągle szukasz kogoś do pomocy w twoich kłopotach?"~ */ GOTO 12
  IF ~~ THEN REPLY #38064 /* ~"Opowiedz mi jeszcze raz swoją historię."~ */ GOTO 6
  IF ~~ THEN REPLY #38065 /* ~"Nie, nie jestem zainteresowany. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #38066 /* ~Widzisz Tristę. Kobieta uśmiecha się na twój widok i patrzy z nadzieją. "Czy znalazłeś ten dokument, śmiałku? Czy będę wolna?"~ */
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #38067 /* ~"Tak, oddam go Deranowi, a on zwróci ci wolność."~ */ GOTO 28
  IF ~~ THEN REPLY #38068 /* ~"Muszę znowu zadać ci kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #67814 /* ~"Nie, ale wciąż nad tym pracuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #38069 /* ~Na jej twarzy pojawia się wielkie odprężenie. Masz wrażenie, że Trista za chwilę zemdleje, ale kobieta szybko dochodzi do siebie. "Dzięki, śmiałku. Proszę wróć do mnie po rozmowie z Deranem."~ */
  IF ~~ THEN REPLY #38070 /* ~"Zrobię to. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Trist_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #38071 /* ~Trista uśmiecha się ciepło. "Jesteś moim wybawicielem, śmiałku. Do końca swoich dni będę twoją dłużniczką."~ */
  IF ~~ THEN REPLY #38072 /* ~"Pomogłem ci z prawdziwą przyjemnością, Tristo."~ */ GOTO 30
  IF ~~ THEN REPLY #38073 /* ~"Nie zawracaj mi więcej głowy. Ta sprawa była jak wrzód na tyłku."~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #38074 /* ~"Dziękuję, śmiałku." Dziewczyna odwraca wzrok i namyśla się chwilę w milczeniu. "Wybawiłeś mnie od pewnej śmierci, śmiałku. Powolnej, bolesnej śmierci..." Marszczy czoło. "Proszę, poczekaj tutaj. Wkrótce powrócę." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #38075 /* ~"Dobrze, Tristo."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #38077 /* ~Widzisz wracającą Tristę. Kobieta uśmiecha i macha do ciebie ręką. "Witaj ponownie, śmiałku. Dziękuję, że poczekałeś." Dziewczyna spogląda na ciebie, potem zaś wyjmuje z fałdów swej sukni sakiewkę. "Dzięki temu dokumentowi sąd przywrócił mi dawny status i majątek. To niezbyt wiele, ale to dar, na który zasłużyłeś sobie w pełni." Wręcza ci sakiewkę.~ */
  IF ~~ THEN REPLY #38078 /* ~"Dziękuję, Tristo."~ */ DO ~AddexperienceParty(4000)
GiveGoldForce(1000)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38079 /* ~Kobieta uśmiecha się. "Nie, to ja ci dziękuję. Żegnaj, śmiałku."~ */
  IF ~~ THEN REPLY #38080 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #38081 /* ~Kobieta marszczy brwi, a potem kiwa głową. "Tak, śmiałku. Nie trudno mi to sobie wyobrazić. Dlatego jeszcze raz dziękuję i do widzenia."~ */
  IF ~~ THEN REPLY #38082 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 14.0 15.0
  SAY #38083 /* ~Kobieta namyśla się przez chwilę. "Był to niski, nieprzyjemnie wyglądający człowiek. Przychodził do sądu kilkakrotnie. Siadywał za Szpicerem i od czasu do czasu szeptał mu coś do ucha." Kobieta milknie i pogrąża się w rozmyślaniach.~ */
  IF ~~ THEN REPLY #38084 /* ~"Nie przerywaj."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38085 /* ~Kobieta marszczy czoło. "Pamiętam go, wyglądał zawsze na kogoś, kto nie czuje się wygodnie w swoim stroju. Poprawiał ciągle swoje szaty, jakby rzeczy przez niego noszone były nowe i niewygodne, albo jakby nie był przyzwyczajony do ich noszenia." Kobieta znowu milknie. "W jednej takiej sytuacji Szpicer kazał mu, żeby siedział spokojnie i przestał się wiercić. Szpicer mówił na tego człowieka Lenny."~ */
  IF ~~ THEN REPLY #38086 /* ~"Gdzie znajdę tego Lenny'ego?"~ */ GOTO 36
  IF ~~ THEN REPLY #38087 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38088 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #38089 /* ~Kobieta zastanawia się przez chwilę, a potem wzrusza ramionami. "Właściwie to nie jestem pewna... Mój mąż mówił mi, że opryszków można spotkać na południowy wschód od targu. Wydaje mi się, że to w pobliżu wieży oblężniczej."~ */
  IF ~~ THEN REPLY #38090 /* ~"Gdzie mogę znaleźć Byrona?"~ */ GOTO 15
  IF ~~ THEN REPLY #38091 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #38092 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 12.1
  SAY #38093 /* ~W jej spojrzeniu pojawia się smutek. "Chyba zdajesz sobie sprawę, że nawet prawo czasem błądzi, śmiałku? Ale żeby osoba niewinna miała cierpieć z powodu takiego niedociągnięcia... Byłby to akt okrutnej niesprawiedliwości." Kobieta wygląda na zdesperowaną. "Proszę nie pozostawiaj mnie samej w takim położeniu..."~ */
  IF ~~ THEN REPLY #38094 /* ~"Tak, spróbuję ci pomóc. Ale chciałbym zadać ci kilka pytań."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ GOTO 13
  IF ~~ THEN REPLY #38095 /* ~"Nie, nie chcę się do tego mieszać."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38096 /* ~"Nie, nie chcę się do tego mieszać."~ */ EXIT
END
