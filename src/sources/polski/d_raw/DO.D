// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3070 /* ~Widzisz przed sobą stojącego nieruchomo człowieka. Nie rusza się ani jeden jego muskuł. Po bliższym przyjrzeniu się, spostrzegasz, że człowiek nawet nie oddycha - po prostu stoi. Jego oczodoły to po prostu puste dziury w jego twarzy. Wewnątrz nich kryje się szare światło, które zdaje się tańczyć możliwościami. Gdy w nie patrzysz, przechodzi cię dreszcz uczucia nieograniczonej pustki, jak gdyby twoje oczy widziały kawałek wieczności. Jego głowa wolno przesuwa się w twoim kierunku, (zauważasz, że nie poruszył się przy tym żaden jego mięsień), a on sam przemawia czystym, głębokim jak dzwon głosem: "Znowu zapomniałeś, wędrowcze, prawda?"~ */
  IF ~~ THEN REPLY #3370 /* ~"Znasz mnie, nieznajomy?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10698 /* ~"Nie mam czasu na jakieś szyfrowane gadanie. Szukam dziennika. Bardzo się spieszę. Może wiesz, gdzie go mogę znaleźć?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10699 /* ~"Może masz na imię Farod? Szukam Zbieracza o tym imieniu."~ */ GOTO 14
  IF ~~ THEN REPLY #10700 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #10701 /* ~"Zapomnij o tym. Mam inne zadania. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10702 /* ~"Witaj znowu, wędrowcze." Wygląda na to, że O stoi dokładnie w tym samym miejscu, gdzie stał podczas waszej ostatniej rozmowy. "Czego ode mnie chcesz?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10703 /* ~"Opowiedz mi o tym boskim alfabecie, o którym wspominałeś."~ */ GOTO 9
  IF ~~ THEN REPLY #10704 /* ~"Opowiedz mi o sobie."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10705 /* ~"Szukam dziennika. Bardzo się spieszę. Może wiesz, gdzie go mogę znaleźć?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10706 /* ~"Może słyszałeś o Zbieraczu imieniem Farod? Może go nawet spotkałeś?"~ */ GOTO 14
  IF ~~ THEN REPLY #10707 /* ~"Opowiedz mi o bywalcach tej gospody."~ */ GOTO 20
  IF ~~ THEN REPLY #10708 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #10709 /* ~Kiedy mężczyzna zaczyna mówić, znowu nachodzi cię uczucie wieczności - wewnątrz jego ust nie widzisz ani języka, ani zębów. Wygląda to prawie tak, jakby był skorupą otaczającą nieograniczoność. "Już rozmawialiśmy, a ty ciągle zapominasz. Twoja niekończąca się misja w poszukiwaniu samego siebie zawsze kończy się utratą pamięci. Zbliżasz się do prawdy, a potem oddalasz. Miejmy nadzieję, że wystarczy ci sił, aby wytrzymać taki żywot."~ */
  IF ~~ THEN REPLY #10710 /* ~"Co o mnie wiesz? Gdzie się tego dowiedziałeś?"~ */ GOTO 3
  IF ~~ THEN REPLY #10711 /* ~"Nie mam czasu na te wariactwa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10712 /* ~"Wiem, że jak mucha, wznosisz się z ruin swojej starej skorupy, pobrzękujesz przez chwilę, a potem kurczysz się i giniesz na oknie prawdy. Uderzasz w szybę, szukając światła bez żadnego ustalonego planu, a potem padasz wyczerpany, gdy ci się to nie uda. Sprzymierzasz się z innymi, aby żywić się na nich przez chwilę, a potem idziesz dalej, nie zważając na nich ani trochę. Widziałem, jak tu przyszedłeś, słuchałem twoich słów, a potem patrzyłem jak odchodzisz, nie będąc ani trochę mądrzejszym. Czy zaczniesz w końcu uczyć się na własnych błędach, poszukiwaczu?"~ */
  IF ~~ THEN REPLY #10713 /* ~"Nie podoba mi się ton twoich słów."~ */ GOTO 4
  IF ~~ THEN REPLY #10714 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #10715 /* ~"Innym razem. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #10716 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 20.1
  SAY #10717 /* ~Choć na jego twarzy nie widać uśmiechu, w jego głosie można wyczuć lekką nutę rozbawienia. "Czy ze wszystkimi problemami będziesz tylko walczył na oślep? Czy jesteś tylko gryzącym robakiem, czy może w którymś momencie swojej żałosnej egzystencji zaczniesz w końcu myśleć?"~ */
  IF ~~ THEN REPLY #10718 /* ~"Ostrzegam cię..."~ */ GOTO 5
  IF ~~ THEN REPLY #10719 /* ~"Kim jesteś, że mówisz do mnie w ten sposób?"~ */ GOTO 6
  IF ~~ THEN REPLY #10720 /* ~"Nie potrzebuję tego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10721 /* ~"Wyzywasz mnie? Ja, który przemawiałem do bytu, znam słowa, które cię zniszczą, unicestwią ostatki twojej duszy i rzucą w konwulsjach na ziemię. Ale nie będę tracił na ciebie takich środków, gdy po prostu mogę sprawić, że nie będziesz już zauważał mojej obecności."~ */
  IF ~~ THEN REPLY #10722 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #10723 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #10724 /* ~"Wystarczy tej górnolotności. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.1 3.1 4.1 5.1 11.4
  SAY #10725 /* ~"Jestem O." Nie wiadomo dlaczego, kiedy mężczyzna wymawia te słowa, brzmi to tak, jakby powiedział o wiele więcej niż jedną literę - jak gdyby wyjawienie imienia zawierało w sobie jakieś niewypowiedziane możliwości i niuanse. Takiego dźwięku nigdy nie stworzyłby żaden ludzki język.~ */
  IF ~~ THEN REPLY #10726 /* ~"A cóż to za imię?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10727 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10728 /* ~"Miło cię było spotkać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #10729 /* ~"To moje imię. To imię części wieczności. Jestem literą w boskim alfabecie. Zrozumienie mnie prowadzi do zrozumienia bytu. Jestem wpisany w prawdziwe nazwy połowy wszystkich rzeczy. Moje istnienie mieści w sobie prawdę. Jestem matematyczny, organiczny i metafizyczny."~ */
  IF ~~ THEN REPLY #10730 /* ~"Myślę że kompletnie zwariowałeś."~ */ GOTO 8
  IF ~~ THEN REPLY #10731 /* ~"Więc co to znaczy?"~ */ GOTO 9
  IF ~~ THEN REPLY #10732 /* ~"...rozumiem. Mógłbyś odpowiedzieć na kilka moich pytań?"~ */ GOTO 11
  IF ~~ THEN REPLY #10733 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10734 /* ~"Jeśli w to właśnie chcesz wierzyć. Życzę ci powodzenia, wędrowcze. Żegnaj."~ */
  IF ~~ THEN REPLY #10735 /* ~"Mógłbyś odpowiedzieć na kilka moich pytań?"~ */ GOTO 10
  IF ~~ THEN REPLY #10736 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 7.1 11.0
  SAY #10737 /* ~"Boski alfabet jest wpisany w nazwy wszystkich istniejących rzeczy, od nasienia w sercu sfer żywiołu do centrum Wielkiej Pozaprzestrzeni. Moi bracia/siostry..." (jedno słowo rozdwaja się w twojej głowie na dwa) "...i ja ogarniamy wszystko, co jest, było i kiedykolwiek będzie. Jesteśmy myślą, rzeczywistością, zamysłem i niewyobrażalnym."~ */
  IF ~~ THEN REPLY #10738 /* ~"Co wiesz o Wielkiej Pozaprzestrzeni?"~ */ GOTO 12
  IF ~~ THEN REPLY #10739 /* ~"W takim razie, co tutaj robisz?"~ */ GOTO 16
  IF ~~ THEN REPLY #10740 /* ~"W takim razie to oznacza, że znasz wszystkie tajemnice bytu, czyż nie?"~ */ GOTO 18
  IF ~~ THEN REPLY #10741 /* ~"W takim razie powinieneś znać odpowiedź na kilka moich pytań."~ */ GOTO 11
  IF ~~ THEN REPLY #10742 /* ~"Potrzebuję trochę czasu, żeby się nad tym zastanowić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #10743 /* ~Mężczyzna ignoruje twoją obecność. W twojej głowie pojawia się pewność, że będzie cię dalej ignorował, choć nie masz pojęcia, skąd ona się tam wzięła.~ */
  IF ~~ THEN REPLY #10744 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2 9.3 12.1 13.2 14.0 15.0 17.0 18.1 20.0
  SAY #10745 /* ~"Czego chcesz się dowiedzieć?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10746 /* ~"Możesz powtórzyć, co mówiłeś o tym boskim alfabecie?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10747 /* ~"Szukam dziennika. Bardzo się spieszę. Może wiesz, gdzie go mogę znaleźć?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10748 /* ~"Może słyszałeś o Zbieraczu imieniem Farod? Może go nawet spotkałeś?"~ */ GOTO 14
  IF ~~ THEN REPLY #10749 /* ~"Opowiedz mi o bywalcach tej gospody."~ */ GOTO 20
  IF ~~ THEN REPLY #10750 /* ~"Opowiedz mi o sobie."~ */ GOTO 6
  IF ~~ THEN REPLY #10751 /* ~"Muszę nad tym pomyśleć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #10752 /* ~"Nie zrozumiesz tego. Żaden śmiertelnik by tego nie zrozumiał. Mogą to pojąć tylko najbardziej potężne z mocy, a kiedy już to zrobią, przenoszą się poza welon pojmowania śmiertelnika. Nie mogę ci powiedzieć o tym nic więcej. Może przyjdzie czas, że zrozumiesz."~ */
  IF ~~ THEN REPLY #10753 /* ~"W takim razie, co tutaj robisz?"~ */ GOTO 16
  IF ~~ THEN REPLY #10754 /* ~"W takim razie odpowiedz mi na kilka pytań."~ */ GOTO 11
  IF ~~ THEN REPLY #10755 /* ~"Rozumiem. W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.1 1.2 11.1
  SAY #10756 /* ~"Wiem, gdzie możesz go znaleźć, ale to nie miejsce na wyjawianie takich informacji. Zapewniam cię, że go ZNAJDZIESZ, tak jak i człowieka, którego poszukujesz."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10757 /* ~"Czy wiesz, gdzie znajdę Faroda?"~ */ GOTO 14
  IF ~~ THEN REPLY #10758 /* ~"Co o tym wiesz?"~ */ GOTO 15
  IF ~~ THEN REPLY #10759 /* ~"Dziękuję. Może mógłbyś odpowiedzieć mi na kilka pytań?"~ */ GOTO 11
  IF ~~ THEN REPLY #10760 /* ~"Chyba należą ci się podziękowania. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 1.3 11.2 13.0
  SAY #10761 /* ~"Wiem gdzie on jest. Mogę powiedzieć ci tylko jedno: w pobliżu. Znajdziesz go w Ulu, skrytego pod welonem tajemnicy."~ */
  IF ~~ THEN REPLY #10762 /* ~"Pod typ kryły się także twoje pozostałe odpowiedzi. Czy mógłbyś odpowiedzieć mi na jeszcze jedno pytanie?"~ */ GOTO 11
  IF ~~ THEN REPLY #10763 /* ~"W takim razie lepiej go poszukam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #10764 /* ~"Wiem, że twoja podróż to nie tylko poszukiwanie dziennika, ale dotyka ona samych granic bytu. Będziesz musiał stanąć do walki o swoje życie i o swojego ducha... Nie powiem ci już nic więcej."~ */
  IF ~~ THEN REPLY #10765 /* ~"W takim razie powiedz mi o czymś innym."~ */ GOTO 11
  IF ~~ THEN REPLY #10766 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1 12.0
  SAY #10767 /* ~"Patrzę na przypływy i odpływy śmiertelności."~ */
  IF ~~ THEN REPLY #10768 /* ~"A co widzisz?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #10769 /* ~"Wy, śmiertelnicy, jesteście jak osy. Budujecie swoje gniazda-życia z najcieńszych gałązek, a kiedy wiatr zrzuca je z gałęzi, chcecie go zażądlić na śmierć. Zamiast zdawać sobie sprawę ze swoich głupich błędów i próbować naprawić zniszczenia, które sami wyrządziliście, oraz brać naukę z doświadczenia, ranicie każdego, kto miał nieszczęście znaleźć się obok was, kiedy doświadczaliście bólu. Moja rada dla ciebie - i dla wszystkich śmiertelników - jest taka: Przestań zachowywać się jak robak i zacznij działać rozumnie."~ */
  IF ~~ THEN REPLY #10770 /* ~"Pomyślę o tym. W międzyczasie odpowiedz mi na kilka pytań."~ */ GOTO 11
  IF ~~ THEN REPLY #10771 /* ~"Dziękuję za radę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #10772 /* ~"Znam poszczególne części wielu z nich. Bez połączenia z moimi braćmi/siostrami, jestem tylko literą. Sam jestem tylko symbolem. W połączeniu natomiast jesteśmy językiem i potęgą."~ */
  IF ~~ THEN REPLY #10773 /* ~"Więc nie znasz tajemnic bytu?"~ */ GOTO 19
  IF ~~ THEN REPLY #10774 /* ~"W takim razie nie wiesz nic. Może będziesz znał odpowiedzi na parę moich pytań?"~ */ GOTO 11
  IF ~~ THEN REPLY #10775 /* ~"Dobra metafora, można ją odczytywać na wielu poziomach. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #10776 /* ~"Tego nie powiedziałem. Litera ciągle pozostaje potężną siłą, nawet w pojedynkę. Pozwól, że ci pokaże." Mężczyzna otwiera swoje usta coraz szerzej. Maska na jego twarzy rozrywa się w okolicy oczu, ust i nosa, ukazując skrawek wieczności, którym był już wcześniej przelotnie widoczny. Jesteś w niej zagubiony, dryfujesz w niej... jesteś jej częścią. Kiedy przychodzisz z powrotem do siebie, spostrzegasz, że O zniknął. Ale twoje pojęcie w pewien sposób się powiększyło. O twoją brew, otarło się oświecenie, choć tylko przez krótką chwilę.~ */
  IF ~~ THEN REPLY #10777 /* ~"To było... nie do opisania."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.4 11.3
  SAY #10778 /* ~"Bywalcy tego miejsca bardzo się od siebie różnią, choć wszyscy są śmiertelnikami. Jak u wszystkich śmiertelników, ich zmartwienia są ograniczone, choć mają w sobie potencjał, aby zakosztować autentycznej Prawdy. Ale powiem ci tyle: Możesz tu znaleźć towarzysza drogiego twemu sercu - przynajmniej na tyle, na ile pozwoli ci serce."~ */
  IF ~~ THEN REPLY #10779 /* ~"Chyba powinienem się obrazić, ale zapomnę o tym. Odpowiedz mi na jeszcze jedno pytanie, dobrze?"~ */ GOTO 11
  IF ~~ THEN REPLY #10780 /* ~"Nie podoba mi się ton twoich słów."~ */ GOTO 4
  IF ~~ THEN REPLY #10781 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END
