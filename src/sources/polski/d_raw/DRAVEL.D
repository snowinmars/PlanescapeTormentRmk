// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAVEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAVEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Ravel_Cut_Scene","AR0610",0)
~ THEN BEGIN 0 // from:
  SAY #2976 /* ~Stojąca przed tobą pulchna starucha z zakrzywionym nosem nie wygląda wcale, jakby była tylko mitem; ubrana jest w zwykłą (choć brudną) brązową koszulę i obcisłe spodnie, a z jej wytartego pasa zwisa kilka woreczków. Zdaje się nie spostrzegać twojej obecności, interesując się bardziej splątanymi czarnymi korzeniami, które tworzą podłogę labiryntu niż tym, co się dzieje wokół niej.~ */
  IF ~~ THEN REPLY #2977 /* ~Przyjrzyj się jej przez chwilę.~ */ GOTO 1
  IF ~~ THEN REPLY #51564 /* ~Zostaw tę kobietę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51566 /* ~Warkocz wystrzępionych, szarych włosów sterczy spod kaptura staruchy, rozlewając się po jej ramionach jak masa powykręcanych, szarych korzeni. Obrzydliwe niebiesko-szare ciało zwisa luźnymi fałdami z jej twarzy; jej wąska broda, długa i szpiczasta, sterczy do przodu, a dwa żółte siekacze wystają z dolnej szczęki jak małe kły.~ */
  IF ~~ THEN REPLY #51567 /* ~"Ravelo...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #51568 /* ~Zaatakuj ją zanim cię zauważy.~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #51569 /* ~Zaatakuj ją zanim cię zauważy.~ */ GOTO 3
  IF ~~ THEN REPLY #51570 /* ~Zostaw tę kobietę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #51571 /* ~Gdy zaczynasz lustrować staruchę w poszukiwaniu jakichkolwiek słabości, przez twój żołądek przechodzi uczucie mdłości. Czujesz, w swoim sercu, że w tym momencie atak byłby dobrym rozwiązaniem taktycznym, ale WIESZ, że musisz najpierw dowiedzieć się, co ta starucha... to stworzenie... wie o tobie.~ */
  IF ~~ THEN REPLY #51572 /* ~Zaatakuj ją tak czy inaczej.~ */ GOTO 3
  IF ~~ THEN REPLY #51573 /* ~"Ravelo...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #51574 /* ~W momencie, gdy myśl o ataku przychodzi ci do głowy, starucha podnosi głowę, jak gdyby przyszło jej na myśl coś dziwnego. Potem mruga i wydaje z siebie zgrzytliwy syk, podobny do westchnienia.~ */
  IF ~~ THEN REPLY #51575 /* ~"Ravelo...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF WEIGHT #1 ~  Global("Ravel_Cut_Scene","AR0610",1)
~ THEN BEGIN 4 // from:
  SAY #51576 /* ~"Ach... goście." Głos staruchy jest gruby i skrzypiący, jak gdyby starał się wydostać spod wielu warstw kurzu. Jej oczy są matowe, krwawo czerwone, a przez nie przebiegają, jak gałęzie drzewa, czarne żyłki. Gdy się tobie przygląda, czujesz dziwne mrowienie, jak gdyby węże wiły się pod twoją skórą.~ [RAV005] */
  IF ~~ THEN REPLY #51577 /* ~"Witaj... Ravelo."~ */ DO ~SetGlobal("Ravel","GLOBAL",1)
AddexperienceParty(90000)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51578 /* ~"A więc, mój ty śliczny, czyżbyś w końcu powrócił?" Twarz Raveli wykrzywia się w groteskowym uśmiechu, ukazując rząd podniszczonych, żółtych zębów. "Nie było cię tak długo, jużem się bała, żeś zapomniał o biednej, samotnej Raveli."~ [RAV002] */
  IF ~~ THEN REPLY #51579 /* ~"Zapomniałem na jakiś czas. Teraz powróciłem."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #51580 /* ~"Jakże bym mógł o tobie zapomnieć, Ravelo? Tęskniłem za tobą, ale ukryłaś się w miejscu trudno dla mnie dostępnym. Powiedz... nie życzyłaś sobie mojego towarzystwa?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #51581 /* ~"Aaach..." Żółty uśmiech Raveli rozszerza się, napinając fałdy jej skóry. Ravela cicho rechocze. "To takie *słodkie* słowa... już znasz odpowiedź na te pytania, mój drogi człowieku. Rozrzuciłam wskazówki jak szpilki i to był mój sposób, żeby skierować twoje kroki do mojego ogrodu. Obawiałam się, że to raczej TY zapomniałeś o *MNIE*."~ */
  IF ~~ THEN REPLY #51582 /* ~"Zapewniam cię, że nic takiego się nie wydarzyło. W końcu powróciłem."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #51583 /* ~"Naprawdę" Ale CO powróciło?" Patrzy na ciebie, mrużąc swoje czarnożyłe oczy, i miękko syczy. "Pozwól Raveli przekonać się, jak ci się wiodło w tym życiu." Sięga przed siebie, jak gdyby chciała cię pogłaskać i nagle zauważasz, że jej palce to szpony, a każdy paznokieć jest niesamowicie brudny i przeraźliwie ostry.~ */
  IF ~~ THEN REPLY #51584 /* ~Pozwól jej się dotknąć.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #51585 /* ~"Nie dotykaj mnie, Ravelo. Chcę tylko wymienić z tobą słowa, nic więcej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
  IF ~~ THEN REPLY #51586 /* ~Uderz ją, gdy wyciąga rękę by cię dotknąć.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #51587 /* ~W momencie, gdy myśl o ataku przychodzi ci do głowy, oczy Raveli *rozbłyskują* jak pochodnie, a jej głos nagle nabiera groźnego tonu. "NIE waż się. Jeśli cenisz tę *odrobinę*, którą jeszcze posiadasz, NIE waż się."~ */
  IF ~~ THEN REPLY #51588 /* ~"Nie wydaje mi się, żebyś mogła mnie powstrzymać, Ravelo. Spróbuj jeśli możesz."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
  IF ~~ THEN REPLY #51589 /* ~"Więc nie dotykaj mnie, Ravelo. Chcę tylko wymienić z tobą słowa, nic więcej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0 49.1 50.0 86.0
  SAY #51590 /* ~"Zapomniałeś gdzie twoje miejsce PÓŁ-człeku. Czas się ukorzyć."~ [RAV065] */
  IF ~~ THEN REPLY #51591 /* ~"Zobaczymy, ty wredna wiedźmo..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #51592 /* ~Jej postrzępione szpony przebiegają po twojej skórze, pozostawiając za sobą to samo dziwnie mrowiące uczucie, jakie ci towarzyszyło, gdy spojrzała na ciebie po raz pierwszy.~ */
  IF ~~ THEN REPLY #51594 /* ~Zaczekaj...~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51595 /* ~Wyciągnij rękę, aby ją dotknąć i poczuć rysy jej twarzy.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51596 /* ~Wyciągnij rękę, aby ją dotknąć i poczuć rysy jej twarzy.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51597 /* ~Wyciągnij rękę, aby ją dotknąć i poczuć rysy jej twarzy.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #51598 /* ~Twoja dłoń dotyka policzka Raveli, podczas gdy jej szpony gładzą ci twarz. Instynktownie naśladujesz jej dotyk - gdy jej szpony prześlizgują się po twoim lewym policzku, wodzisz palcami po jej lewym policzku. Jej oczy zamykają się i twoje czynią podobnie. Wiesz, że skądś znasz to uczucie, ale nie możesz sobie przypomnieć skąd. Po chwili jej przekrwione oczy otwierają się i wydaje ona z siebie zgrzytliwy syk.~ */
  IF ~~ THEN REPLY #51599 /* ~Poczekaj.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 10.2 10.3
  SAY #51600 /* ~Twoja dłoń dotyka policzka Raveli, podczas gdy jej szpony gładzą ci twarz. Instynktownie naśladujesz jej dotyk - gdy jej szpony prześlizgują się po twoim lewym policzku, wodzisz palcami po jej lewym policzku. Jej oczy zamykają się i twoje czynią podobnie. Wiesz, że skądś znasz to uczucie...~ */
  IF ~~ THEN REPLY #51601 /* ~Zamknij oczy, poddaj się wspomnieniom.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Ravel_Memory","GLOBAL",1)
PlaySound("SPTR_01")
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51602 /* ~Kiedy otwierasz oczy, wydaje się, że wszelki kolor odpłynął z drzew i labiryntu; *wszystko* jest pozbawione jakichkolwiek cech, przykurzone, śmiertelnie szare. Oczy Raveli są wciąż zamknięte, ale przyglądając się im zauważasz, że powoli zaczynają się otwierać, a na jej twarzy pojawia się smutny, szary uśmiech. Czujesz, że na usta cisną ci się słowa, stanowiące echo czegoś, co powiedziałeś w przeszłości, w innym miejscu, w innej sferze...~ */
  IF ~~ THEN REPLY #51603 /* ~Wspomnienie: "Mówi się, że jesteś najpotężniejszą z Szarych Sióstr, Ravelo. Przebyłem długą drogę, aby się do ciebie dostać."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #51604 /* ~Ravela kiwa głową, ale robi to powoli, zbyt powoli, jak gdyby we śnie. Kiedy przemawia, jej słowa są stłumione, jakby były wypowiadane pod wodą. "Ale *po co* tak daleką drogę przebyłeś? Musisz być w wielkiej potrzebie... ale mimo to zdajesz się nie przynosić *nic*, co by mogło mnie zainteresować. Musisz ZAPŁACIĆ za swoje usługi..."~ */
  IF ~~ THEN REPLY #51605 /* ~Wspomnienie: "Jestem w wielkiej potrzebie. Moja waluta to wyzwanie. Być może wyzwanie, któremu nie można stawić czoła... wyzwanie, które obawiam się jest ponad nawet *twoje* możliwości..."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #51606 /* ~Powtarzasz te słowa jak echo i czujesz MANIPULACJĘ, subtelny ruch mający na celu pociągnięcie sznureczków Raveli. W na wpół śnionym wspomnieniu jej oczy płoną ognistą szarością, a szarość, która pożera krajobraz, zdaje się wypływać z rysów jej twarzy. "Ponade mną nie ma NIC, głupcze! NIC! Przedstaw swoje wyzwanie, wysłucham cię!"~ */
  IF ~~ THEN REPLY #51607 /* ~Wspomnienie: "Na końcu życia każdego człowieka czeka śmierć. Nie ma potrzeby, aby czekała na mnie dłużej... możesz to sprawić, piękna Ravelo?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #51608 /* ~Wzrok staje się na powrót ostrzejszy, szarość odpływa z labiryntu, aż kolor zupełnie powraca na swoje miejsce, twoja dłoń wciąż przylega do policzka Raveli. Jej oczy są zamknięte, a z ust wyrywa się westchnienie. Powoli wycofujesz rękę i po chwili oczy Raveli otwierają się, a ona wydaje z siebie skrzeczący syk. "Taaaaaak..."~ */
  IF ~~ THEN REPLY #51609 /* ~"Ravelo...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #51610 /* ~Kiedy spotkałem Ravelę w czarnokolcym labiryncie, wróciła mi pamięć wydarzenia z zapomnianej przeszłości, które wiązało się bezpośrednio z moim pierwszym spotkaniem z tą istotą... To było w jakimś miejscu, gdzie wszystko było szare, jak gdyby ktoś wyssał z otaczającego świata wszystkie możliwe barwy. Zażądałem wówczas od Raveli, aby uczyniła mnie nieśmiertelnym, a ona, jeżeli pamięć mnie nie zawodzi, wyraziła na to zgodę.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 10.0 11.0 16.0
  SAY #51611 /* ~Ravela cofa swój palec i patrzy na ciebie ze smutkiem. "Och, biedne, biedne, podzielone pół-stworzenie." Znów mruży oczy, patrząc na ciebie. "Nie jesteś już tym, kogo znała Ravela... Czy jesteśże wciąż rozbity, po tych wszystkich smutnych przeżyciach?"~ */
  IF ~~ THEN REPLY #51612 /* ~"Rozbity? Co masz na myśli?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 7.1 8.1
  SAY #51613 /* ~"Ach... zawsze jesteś ostrożny, moja ty najukochańsza z zagadek." Wiedźma cofa palec i pozwala mu spocząć na swoim boku. "Tak właśniem cię oceniła, gdy po raz *pierwszy* przyszedłeś do mnie ze swoim wyzwaniem."~ */
  IF ~~ THEN REPLY #51614 /* ~"Nie... przypominam sobie takiego spotkania. Wiele rzeczy umknęło z mojej pamięci."~ */ GOTO 19
  IF ~~ THEN REPLY #51615 /* ~"O czym ty mówisz?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #51616 /* ~Przyglądając ci się bardzo uważnie, Ravela wydaje z siebie szemrzące westchnienie. "Och, biedne, biedne, podzielone pół-stworzenie." Znów mruży oczy, patrząc na ciebie. "Nie jesteś już tym, kogo znała Ravela... Czy jesteśże wciąż rozbity, po tych wszystkich smutnych przeżyciach?"~ */
  IF ~~ THEN REPLY #51617 /* ~"Co masz na myśli?"~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51618 /* ~"Ravelo, rytuał, który odprawiłaś, był wadliwy... nie zadziałał. Za każdym razem, gdy umieram... lub przynajmniej za każdym razem, gdy *umierałem*, zapominałem siebie samego i stawałem się kimś innym. Tak, jestem rozbity. Możesz mi pomóc i sprawić, bym nie tracił wspomnień?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0 19.1
  SAY #51619 /* ~"Ciało posiadasz, ale wiedzy ci brak?" Wiedźma wskazuje swoim wystrzępionym szponem na twoją klatkę piersiową i na blizny. "Bardzo wiele blizn widzę na twym ciele. Twoja skóra wiele opowieści powiedzieć by mogła."~ */
  IF ~~ THEN REPLY #51620 /* ~"O czym ty mówisz?"~ */ GOTO 21
  IF ~~ THEN REPLY #51621 /* ~"Jakie opowieści można wyczytać z mojej skóry?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #51622 /* ~"Twoje blizny i tatuaże krzyczą do mnie, 'oto człowiek w konfrontacji ze światem'." Ravela wydaje z siebie dźwięk podobny do kwilenia, całkiem jak umierający ptak. "Tak, na dźwięk takich opowieści zwiędłyby uszy nawet *wiedźmie*..."~ */
  IF ~~ THEN REPLY #51623 /* ~"Opowiedz mi te... opowieści."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 24.0 26.0 27.0 29.0
  SAY #51624 /* ~"Opowieści jest wiele. Mówią one o niezrównoważonej równowadze, próbach wojny, walkach z biesowymi żywiołami i o istocie żywiącej się innymi, którzy pochodzą z daleka, aby utrzymać się przy życiu... i o udrękach. Takich *udręk* ciało jeszcze nigdy nie zaznało..."~ */
  IF ~~ THEN REPLY #51625 /* ~"Niezrównoważonej Równowadze?"~ */ DO ~SetGlobal("Ravel_Tale_1","AR0610",1)
~ GOTO 23
  IF ~~ THEN REPLY #51626 /* ~"Próbach Wojny?"~ */ DO ~SetGlobal("Ravel_Tale_2","AR0610",1)
~ GOTO 25
  IF ~~ THEN REPLY #51627 /* ~"Walkach z biesimi żywiołami?"~ */ DO ~SetGlobal("Ravel_Tale_3","AR0610",1)
~ GOTO 27
  IF ~~ THEN REPLY #51628 /* ~"Istocie żywiącej się innymi, którzy pochodzą z daleka?"~ */ DO ~SetGlobal("Ravel_Tale_4","AR0610",1)
~ GOTO 28
  IF ~  NumInParty(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51629 /* ~"A te udręki... o jakich udrękach mówisz?"~ */ JOURNAL #51631 /* ~Ravela powiedziała mi, że jestem "połamany". Czyniła zagadkowe uwagi na temat moich blizn i tatuaży, mówiąc, że są znamionami "niezrównoważonej równowagi", "prób wojny", "walk z biesowymi żywiołami" i nazwała mnie istotą, "która żywi się innymi, którzy pochodzą z daleka." Ravela przyznała się, że zabrała mi moją śmiertelność i stwierdziła moja osoba działa na udręczone dusze jak magnes przyciągający opiłki żelaza.~ */ GOTO 30
  IF ~  NumInPartyGT(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51630 /* ~"A te udręki... o jakich udrękach mówisz?"~ */ JOURNAL #51631 /* ~Ravela powiedziała mi, że jestem "połamany". Czyniła zagadkowe uwagi na temat moich blizn i tatuaży, mówiąc, że są znamionami "niezrównoważonej równowagi", "prób wojny", "walk z biesowymi żywiołami" i nazwała mnie istotą, "która żywi się innymi, którzy pochodzą z daleka." Ravela przyznała się, że zabrała mi moją śmiertelność i stwierdziła moja osoba działa na udręczone dusze jak magnes przyciągający opiłki żelaza.~ */ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #51632 /* ~"Rozdwojony zostałeś, kiedy odarłam cię z twojej śmiertelności. Pozbawiony równowagi, rozbity... błogosławieństwo i przekleństwo zarazem... ale bardziej przekleństwo niż błogosławieństwo; takie jest zdanie Raveli."~ */
  IF ~~ THEN REPLY #51633 /* ~"Ty *odebrałaś* mi śmiertelność? Jak?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #51634 /* ~"Zapomniałam ja, jak to się stało, zapomniałam... a może nie?" Wzrok Raveli staje się na chwilę przyćmiony, w jej oczach wiją się czarne żyłki. "A nawet jeśli brałam ja w tym udział, nigdy nie zrobiłabym tego powtórnie. Nie zapomniałam tego momentu, po *rozdzieleniu*, gdy widziałam ból wypływający z twoich żył, słyszałam twoje krzyki podobne do kwilącego dziecka, kiedy każdy kawałek twojej jaźni wypełniał się *pustką*. Straszne to było nawet dla mych oczu."~ */
  IF ~~ THEN REPLY #51635 /* ~"A więc... to dlatego czuję w środku pustkę? Ponieważ nie ma tam mojej śmiertelności? Dobrze więc... jakie jeszcze opowieści można wyczytać z mojej skóry?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY #51636 /* ~"Wielkie, wielkie próby wojny... o dużo za dużo, aby mogło to znieść jakiekolwiek, jakiekolwiek śmiertelne stworzenie."~ */
  IF ~~ THEN REPLY #51637 /* ~"Jaka wojna? Gdzie?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #51638 /* ~"Ta wojna dotyka WSZYSTKIEGO, mój drogi pół-człowieku. Nie ma takiego miejsca, w którym nie odczuwałoby się jej pieszczoty... Dotknęła cię?" Głos Raveli cichnie. "Odpowiedzieć ci mogę: 'tak'."~ */
  IF ~~ THEN REPLY #51639 /* ~"To by mogło wyjaśnić blizny... jakie jeszcze opowieści można wyczytać z mojej skóry?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY #51640 /* ~"Dwa biesy biją o siebie głowami..." Ravela pociąga nosem, jak gdyby chciała wyrazić pogardę. "Ich maleńkie głowy wypełnione pomysłami na to, jak Sfery *powinny* wyglądać, jednak *nigdy* nie będą, bo jeśli tak się stanie, to przestaną być Sferami. Cóż za głupota!"~ */
  IF ~~ THEN REPLY #51641 /* ~"Nie jestem pewien czy to rozumiem... jakie jeszcze opowieści można wyczytać z mojej skóry?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 22.3
  SAY #51642 /* ~"Podstawowych pragnień nie czujesz, ale o wiele, o wiele straszniejsze gotują się pod twoją skórą. I za *taką* cenę..."~ */
  IF ~~ THEN REPLY #51643 /* ~"Pragnień? Co masz na myśli?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #51644 /* ~"Nie wiem... nie? Ani natury, ani przyczyny tych pragnień. Ale wiedz to: nadchodzące wydarzenia rzucają swoje *cienie* przed siebie, mój drogi pół-człowieku... nikt nie przewidzi, jakie to będą wydarzenia, nawet oczy *Raveli*."~ */
  IF ~~ THEN REPLY #51645 /* ~"Uch, dobrze więc... jakie jeszcze opowieści można wyczytać z mojej skóry?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 30 // from: 22.4
  SAY #51646 /* ~"Magnes przyciąga żelazo... i ty czynisz podobnie, mój drogi pół-człowieku, ale ty przyciągasz udręczone dusze. Gdy cierpią, przyciągane są do ciebie i twoja ścieżka staje się ich ścieżką."~ */
  IF ~~ THEN REPLY #51647 /* ~"Dlaczego tak się dzieje?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 31 // from: 22.5
  SAY #51648 /* ~"Magnes przyciąga żelazo... i ty czynisz podobnie, mój drogi pół-człowieku, ale ty przyciągasz udręczone dusze. Gdy cierpią, przyciągane są do ciebie i twoja ścieżka staje się ich ścieżką." Wiedźma zakreśla ręką wielki krąg. "Nie widzisz tego w oczach tych, którzy przybyli tu z tobą?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51649 /* ~"Moi towarzysze? Co masz na myśli?"~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",1)
~ GOTO 32
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51650 /* ~"Moi towarzysze? Co masz na myśli?"~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ GOTO 33
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51651 /* ~"Moi towarzysze? Co masz na myśli?"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51652 /* ~"Moi towarzysze? Co masz na myśli?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51653 /* ~"Moi towarzysze? Co masz na myśli?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51654 /* ~"Moi towarzysze? Co masz na myśli?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51655 /* ~"Moi towarzysze? Co masz na myśli?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 239
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #51656 /* ~"*Chceszli* to wytłumaczyć, githcie?" Ravela rzuca Dak'konowi ogniste spojrzenie, złagodzone nieco uśmiechem ukazującym kły. "Śluby mogą się okazać bardziej wiążące niż jakiekolwiek łańcuchy, nieprawdaż? Kajdany rasy niegdyś więzionej, teraz na powrót będącej niewolnikiem?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 170
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY #51657 /* ~"To pudło na tryby..." Wzrok Raveli kieruje się ku Nordomowi. "Kiedyś znało jedynie definicje *cierpienia*, ale teraz czuje jego żądło. Nie ma miejsca dla 'dwójek' w świecie jedynek i zer, nie ma miejsca dla 'być może' w przybytku prawdy i fałszu i nie ma 'zzielenienia z zazdrości' w czarno białym świecie. Kiedy dowie się, jak obracają się sfery, kiedy pozna PRAWDĘ ukrytą pod lojalnością i chorą logiką, pozna jeszcze więcej udręk..."~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #51658 /* ~"Zostaw moich towarzyszy w spokoju, Ravelo. Mam py..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51659 /* ~"Zostaw moich towarzyszy w spokoju, Ravelo. Mam py..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51660 /* ~"Zostaw moich towarzyszy w spokoju, Ravelo. Mam py..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51661 /* ~"Zostaw moich towarzyszy w spokoju, Ravelo. Mam py..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51662 /* ~"Zostaw moich towarzyszy w spokoju, Ravelo. Mam py..."~ */ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 31.2 33.0
  SAY #51663 /* ~"Trzeszczący, gderający czarodziej..." oczy Raveli zdają się rozbłyskać ogniem Ignusa i płonąć jego piekielnym światłem. "Nosi w sobie żar minionej namiętności Raveli, bo nie dba o to, co robi, ale... być może... głęboko w środku, w miejscach pozbawionych światła, męczony jest przez coś, czym KIEDYŚ był zanim zawładnęły nim namiętności... Czy moje słowa palą do żywego, o gorejący człeku...?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 17
END

IF ~~ THEN BEGIN 35 // from: 31.3 33.1
  SAY #51667 /* ~"Gadająca czaszka..." Ravela nie zadaje sobie nawet trudu, aby spojrzeć na Mortego, jak gdyby nie był w zasięgu jej uwagi. "Czy te żarty stanowią wystarczającą ochronę dla tego, co leży pogrzebane po twoim czerepem, he? Po cóż mówić prawdę, skoro wystarcza kłamstwo?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #51671 /* ~"Morte...? Co masz na myśli, Ravelo?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51672 /* ~"Morte...? Co masz na myśli, Ravelo?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51673 /* ~"Morte...? Co masz na myśli, Ravelo?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 31.4 33.2 35.0
  SAY #51668 /* ~"Kusicielka z Otchłani..." Żółte kły Raveli przekłuwają jej szkarłatne usta, gdy patrzy z ukosa na Nie-Sławę. "Skóra tak delikatna, usta tak wydatne, oczy, które mogłyby sprawić, że zapomnisz o samej Raveli... a jednak cierpi więcej niż ktokolwiek inny. Gdy ktoś ucieka od swojej natury, wielkie są męczarnie, które powstają w wyniku takiej zdrady."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 158
END

IF ~~ THEN BEGIN 37 // from:
  SAY #51674 /* ~"KŁAMIESZ, sukkubie!" Ravela wydaje z siebie warknięcie, szczerząc przy tym zęby. "KŁAMIESZ! Okłamywać się mnie nie WAŻ, gdy twe serce jest dla mnie otwartą KSIĘGĄ! Każde słowo, które WYPLUWASZ, *krzyczy* o twoim bólu!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51675 /* ~"Licz się ze słowami, Ravelo! Dosyć tego!"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51676 /* ~"Licz się ze słowami, Ravelo! Dosyć tego!"~ */ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 31.5 33.3 35.1 37.0
  SAY #51677 /* ~"Ach..." Ravela wskazuje ruchem ręki na Annę, jak gdyby ta była wystawiona na aukcji na sprzedaż. "Spójrz na to pełne energii diabelstwo... te *ogniste* włosy i głos..." Ravela uśmiecha się, ukazując rząd żółtych zębów. "Czy mam powiedzieć o *twojej* udręce, kaduku?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 252
END

IF ~~ THEN BEGIN 39 // from:
  SAY #51678 /* ~"Nie... nie, nie powinnam o tym mówić." Głos Raveli cichnie, niemal wyczerpując się, a jej uśmiech znika powoli z twarzy. "Wychowana wśród okrucieństw i męczarni, Ravela... świat jest dość rozdartym miejscem..." Obraca się w twoją stronę i wzdycha. Możesz dostrzec, że jej przekrwione oczy są pozbawione blasku.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 33.4 35.2 37.1 39.0
  SAY #51679 /* ~"I ty, mój najdroższy pół-człowieku... *tobie* przypadła w udziale największa udręka... życie dłuższe od wieczności. Czy możliwe jest, by życie dbało o ciebie tak jak Ravela?" Mówiąc to zgrzyta swoimi żółtymi kłami, wydając przy tym okropny *zgrzyt*. "Taki dzielny, tak namiętny, tak straszliwie zagubiony, biedny, biedny."~ */
  IF ~~ THEN REPLY #51680 /* ~"Ravelo, *dlaczego* obdarzyłaś mnie nieśmiertelnością? Muszę wie..."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 238.0
  SAY #51681 /* ~"Byłeś zagadką ze skóry i kości, zawsze intrygujący i najukochańszy ze wszystkich, którzy przybyli do mnie, przedstawiając prośby, żądając, błagając... dogadzając? Błagając o pomoc." Ravela wpatruje się w ciebie uporczywie, jej czarnożyłe, żarzące się oczy zwężają się. "Tak *trudno* jest spojrzeć poprzez te blizny i wydobyć człowieka, który niegdyś znajdował się pod spodem..."~ */
  IF ~~ THEN REPLY #51682 /* ~"Ravelo, czy możesz mi powiedzieć cokolwiek o tym, kim kiedyś byłem?"~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #51683 /* ~"Cień posiadający istotę, poszukujący tego, co rzuca światło. Znam ja cię dobrze i nie... znam..." Ravela przerywa, jej oczy są matowe. "Nie lepiej niż naturę JAKIEGOKOLWIEK człowieka. Nasze przeszłości są skrzyżowane... Człowiek naznaczony nieśmiertelnością, wciąż odczuwający męki rozdzielenia, i wysuszona starucha, uwięziona na dobre."~ */
  IF ~~ THEN REPLY #51684 /* ~"Skrzyżowane przeszłości?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #51685 /* ~"Zdaje ci się, że się spotykamy po raz pierwszy? Nie, nie, nie... nie?" Ravela zdaje się być przez chwilę zmieszana, po czym wzdraga się, jak gdyby zrzucała z siebie jakiś ciężar. "Wcale nie. Echo przyszłego spotkania to być musi... albo przeszłego spotkania, to zależy, od tego, w którą stronę zwrócony jest czas."~ */
  IF ~~ THEN REPLY #51686 /* ~"A zatem to... to spotkanie jest echem spotkania z przeszłości?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #51687 /* ~"Teraz i wtedy - bardzo... podobne? Tak bardzo splątane są ze sobą teraźniejszość i przeszłość, obie odbijają się w sobie... po raz kolejny, przychodzisz przed moje oblicze z problemem, by sprawdzić, czy znam rozwiązanie NIEMOŻLIWEGO." Ravela syczy w twoja stronę, a jej oczy płoną. "Piękny, *niewdzięczny*, ukochany człowiek!"~ */
  IF ~~ THEN REPLY #51688 /* ~"Co było tym niemożliwym, o rozwiązanie którego cię poprosiłem?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #51689 /* ~Wygląda na to, że Ravela cię nie usłyszała - zdaje się wciąż błądzić w przeszłości, gdyż jej oczy są zamglone, jak gdyby spoglądała daleko przed siebie. "Taki ogień w twoich oczach, że mógł poruszyć serce Szarej Pani... chęć bycia wolnym, ale kiedy już zostałeś uwolniony, ogień w twych oczach wypalił się. Obawiam się, że w momencie rozdzielenia, twe życie straciło wszelki sens." Ravela uśmiecha się, ukazując żółte kły, po czym *zaciska* je, jak gdyby się śmiała. "Może powinieneś warować jak piesek proszący o jedzenie - może wtedy Ravela rzuci ci kolejny ochłap wiedzy."~ */
  IF ~~ THEN REPLY #51690 /* ~"Jeśli dzięki błaganiu otrzymam odpowiedzi na moje pytania, błagam cię więc: powiedz mi, co wiesz. Potrzebuję twojej pomocy, aby przypomnieć sobie, co się wydarzyło."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 46
  IF ~~ THEN REPLY #51691 /* ~"Nie będę *błagać* o twoją pomoc, Ravelo. Poproszę, nic więcej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #51692 /* ~"Ach... teraz złagodzone serce?" Czarnożyłe oczy Raveli błyszczą, zaś kącik jej ust wygina się ku górze jak wąż. "Czyż życie cię zmiękczyło... ach, można tylko mieć taką nadzieję."~ */
  IF ~~ THEN REPLY #51693 /* ~"Mam wiele pytań, które chcę ci zadać..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #51694 /* ~"Tak jak zawsze, nie ugiąłeś przede mną kolana, mój drogi człowieku."~ */
  IF ~~ THEN REPLY #51695 /* ~"Mam wiele pytań, które chcę ci zadać..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #51696 /* ~"Och, maszże WIĘCEJ pytań?" Ravela cicho nuci, ale brzmi to w bardzo szczególny sposób, jak gdyby cię ganiła. "Zadałeś już *taaaak* wiele." Czarnożyłe oczy Raveli rozbłyskują z zaciekawienia. "Teraz na MOJE pytania czas nadszedł, pół-człowieku."~ */
  IF ~~ THEN REPLY #51697 /* ~"Dobrze więc, Ravelo... pytaj."~ */ GOTO 51
  IF ~~ THEN REPLY #51698 /* ~"Ravel, potrzebuję najpierw trochę więcej informacji..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #51699 /* ~"Nie poznasz już ŻADNEJ wiedzy wypływającej z mojego umysłu, dopóki MYCH pytań nie zadam. Nie SPRAWDZAJ mnie w tej kwestii - nie jesteś dla mnie aż tak cenny."~ */
  IF ~~ THEN REPLY #51700 /* ~"Dobrze..."~ */ GOTO 51
  IF ~~ THEN REPLY #51701 /* ~"Zadam swoje pytania, a ty na nie odpowiesz, Ravelo. Nie mam ani czasu ani cierpliwości na twoje pytania..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 52.17 52.18 58.2 58.3 68.12 68.13 69.11 69.12 70.10 70.11 92.2 98.15 99.15
  SAY #51702 /* ~"Nie odpowiadasz na moje pytania... ŚMIESZ nie odpowiedzieć?" Ku twojemu zaskoczeniu, żółte kły Raveli wydłużają się i zaczynają błyszczeć, zaś jej szpony *rosną*. "OSTRZEGAŁAM cię, postępuj ostrożnie, zrobiłam to... aby pytania nie ROZDARŁY cię na strzępy..."~ */
  IF ~~ THEN REPLY #51703 /* ~"Ravelo, ja..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #51704 /* ~"Wiedz o tym i poznaj prawo Raveli: jeśli na moje pytania nie odpowiesz, nie dam ci już żadnej odpowiedzi, mój drogi człowieku. Postępuj ostrożnie z odpowiedziami, bo inaczej pytanie ROZEDRZE cię na strzępy..."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #51705 /* ~"Zrozumiałem. Zadawaj pytania, Ravelo."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51706 /* ~"Zrozumiałem. Zadawaj pytania, Ravelo."~ */ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51707 /* ~"Twoje warunki są uczciwe. Zadawaj pytania, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51708 /* ~"Twoje warunki są uczciwe. Zadawaj pytania, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51709 /* ~"Nie *groź* mi, Ravelo... zadaj swoje pytania i skończ z tym..."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51710 /* ~"Nie *groź* mi, Ravelo... zadaj swoje pytania i skończ z tym..."~ */ GOTO 58
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.2 51.4
  SAY #51735 /* ~"Wiedzieć chcę, dlaczego stoisz tutaj przede mną zupełnie sam... dlaczego pozostali nie stoją przy twym boku?"~ */
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51736 /* ~"Nie zabiegam o towarzyszy. Moja ścieżka należy do mnie i nie zamierzam nią kroczyć wraz z innymi."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51737 /* ~"Nie zabiegam o towarzyszy. Moja ścieżka należy do mnie i nie zamierzam nią kroczyć wraz z innymi."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51738 /* ~"Nie zabiegam o towarzyszy. Moja ścieżka należy do mnie i nie zamierzam nią kroczyć wraz z innymi."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51739 /* ~"Nie zabiegam o towarzyszy. Moja ścieżka należy do mnie i nie zamierzam nią kroczyć wraz z innymi."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51740 /* ~"Nie zabiegam o towarzyszy. Moja ścieżka należy do mnie i nie zamierzam nią kroczyć wraz z innymi."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51741 /* ~"Nie zabiegam o towarzyszy. Moja ścieżka należy do mnie i nie zamierzam nią kroczyć wraz z innymi."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51742 /* ~"Nie zabiegam o towarzyszy. Moja ścieżka należy do mnie i nie zamierzam nią kroczyć wraz z innymi."~ */ GOTO 54
  IF ~~ THEN REPLY #51743 /* ~"Nie spotkałem nikogo, z kim chciałbym podróżować."~ */ GOTO 53
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51744 /* ~"Nie przyprowadziłbym nikogo na to miejsce, zwłaszcza, że nie znam drogi powrotnej. Uważałem, że jest to podróż, którą powinienem podjąć sam."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51745 /* ~Prawda: "Są ze mną inni. Kazałem im czekać w innym miejscu... ponieważ uważałem, że powinniśmy pomówić na osobności."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51746 /* ~Prawda: "Są ze mną inni. Kazałem im czekać w innym miejscu... ponieważ uważałem, że powinniśmy pomówić na osobności."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51747 /* ~Prawda: "Są ze mną inni. Kazałem im czekać w innym miejscu... ponieważ uważałem, że powinniśmy pomówić na osobności."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51748 /* ~Prawda: "Są ze mną inni. Kazałem im czekać w innym miejscu... ponieważ uważałem, że powinniśmy pomówić na osobności."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51749 /* ~Prawda: "Są ze mną inni. Kazałem im czekać w innym miejscu... ponieważ uważałem, że powinniśmy pomówić na osobności."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51750 /* ~Prawda: "Są ze mną inni. Kazałem im czekać w innym miejscu... ponieważ uważałem, że powinniśmy pomówić na osobności."~ */ GOTO 58
  IF ~~ THEN REPLY #51751 /* ~"Pragnąłem pomówić z tobą na osobności, Ravelo."~ */ GOTO 56
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51752 /* ~"Myślałem, że moglibyśmy pomówić na osobności, piękna Ravelo, porozmawiać o starych czasach, ty i ja..."~ */ GOTO 57
  IF ~~ THEN REPLY #51753 /* ~"Na to pytanie nie odpowiem, Ravelo... zadaj inne."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51754 /* ~"Męczą mnie twoje pytania, Ravelo. Teraz znowu moja kolej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.7 52.8
  SAY #51755 /* ~"Aaach... tak było wtedy... tak jest i teraz. Kolejne pytanie mam ja do ciebie..."~ */
  IF ~~ THEN REPLY #51756 /* ~"Mów śmiało..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2 52.3 52.4 52.5 52.6
  SAY #51757 /* ~"Czy to dlatego kazałeś im czekać w innym miejscu mojego Czarnokolcego Labiryntu, mój drogi człowieku? Podróżujesz samotnie jedynie w słowie, boć przecież *pozostałych* ze sobą przywiódł. Być może jednak wciąż mówisz prawdę... chociaż Ravela skłonna nie jest twym słodkim słowom uwierzyć." Wiedźma pociąga nosem. "A teraz, następne pytanie..."~ */
  IF ~~ THEN REPLY #51758 /* ~"Mów śmiało..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 55 // from: 141.4
  SAY #51759 /* ~"Próbowałam pomóc Pani, ale ona nie przyjęła spokojnie mej pomocy."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 162
END

IF ~~ THEN BEGIN 56 // from: 52.15
  SAY #51760 /* ~"Aaach... no cóż. Odpowiedzi i pytania między sobą wymienimy... będą one między nami jako *tajemnice*. A teraz, mam jeszcze jedno pytanie..."~ */
  IF ~~ THEN REPLY #51761 /* ~"Mów śmiało..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 57 // from: 52.16
  SAY #51762 /* ~"Pochlebca!" Ravela wykrzywia twarz w ohydnym uśmiechu, a następnie cicho rechocze. "Mimo to, twoje uprzejmości są mile widziane... być może pochlebstwo przysłuży ci się tutaj dobrze. Tak więc... odpowiedzi i pytania między sobą wymienimy... będą one między nami jako *tajemnice*." Szeroki uśmiech powoli znika z jej twarzy. "A teraz, odpowiedz na jeszcze jedno pytanie..."~ */
  IF ~~ THEN REPLY #51763 /* ~"Mów śmiało..."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 92
END

IF ~~ THEN BEGIN 58 // from: 51.1 51.3 51.5 52.9 52.10 52.11 52.12 52.13 52.14
  SAY #51764 /* ~"Wiedzieć bym chciała, *dlaczego* przybywasz tutaj wraz z pozostałymi... nie znając miejsca, do którego ich prowadzisz?"~ */
  IF ~~ THEN REPLY #51765 /* ~"Sami wybrali wędrówkę moją ścieżką."~ */ GOTO 61
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51766 /* ~"Oczywiście, że wiedzieli. Któż *nie* chciałby przybyć tutaj, aby się z tobą spotkać, piękna Ravelo? Niewiele okazji życie przynosi na takie spotkanie. Chcieli się dowiedzieć, czy opowieści o twojej mocy i pięknie są prawdziwe... tak jak ja wiedziałem, że są prawdziwe."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",2)
~ GOTO 59
  IF ~~ THEN REPLY #51767 /* ~"Na to pytanie nie odpowiem, Ravelo... zadaj inne."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51768 /* ~"Męczą mnie twoje pytania, Ravelo. Teraz znowu moja kolej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #51769 /* ~Ravela przygląda ci się przez chwilę w milczeniu, po czym jej twarz wykrzywia się w potwornym uśmiechu, a rząd żółtych kłów błyszczy w bladym blasku jej oczu. "Achhhh... mój drogi człowieku, *niesiesz* ze sobą jedynie słowa..." Przyczerniony język wysuwa się z jej szkarłatnych ust i prześlizguje się po obrzeżu warg, jak gdyby w oczekiwaniu na posiłek. "...ale jesteś zaprawdę DOBRZE uzbrojony..."~ */
  IF ~~ THEN REPLY #51770 /* ~Prawda: "Przemawia przeze mnie tylko prawda, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_4","GLOBALLaw",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
  IF ~~ THEN REPLY #51771 /* ~Kłamstwo: "Przemawia przeze mnie tylko prawda, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_3","GLOBALLaw",-1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #51772 /* ~Wiedźma powoli kiwa głową, a uśmiech znika z jej twarzy. "I chętnie tak podróżują z tobą?"~ */
  IF ~~ THEN REPLY #51773 /* ~"Sami wybrali wędrówkę moją ścieżką. Jak już mówiłem, któż nie chciał..."~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 58.0 60.0
  SAY #51774 /* ~"*Wybrali*? Aach... to niebezpieczne słowo. Czy tak jest w istocie?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51775 /* ~"Tak."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",2)
~ GOTO 62
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51776 /* ~"Tak."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ GOTO 63
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51777 /* ~"Tak."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ GOTO 64
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51778 /* ~"Tak."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ GOTO 65
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51779 /* ~"Tak."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ GOTO 66
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51780 /* ~"Tak."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51781 /* ~"Tak, słuchaj Ravelo, nie mam czasu na..."~ */ GOTO 68
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #51782 /* ~"Tak?" Ravela rzuca Dak'konowi czarnożyłe spojrzenie, jej głos jest jak strzała. "Czy to jest *wybór* githcie? Tak? A może to jest kwestia dwóch niebios?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 171
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #51783 /* ~"A co z pudłem trybów?" Szydząc, Ravela zwraca się ku Nordomowi. "Co ONO wie o *wyborach?*" Pstryka palcami, wydając dźwięk podobny do łamanych kości. "Zna tylko posłuszeństwo, he?"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 15
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #51785 /* ~"Myślisz, że gorejący człowiek dba o *wybór?* Spalić się lub nie, to są jego jedyne możliwości wyboru i ostatecznie jeden 'wybór' zawsze wygrywa. Bo czyż ogień pragnie czegoś innego *niźli* płonąć?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 18
END

IF ~~ THEN BEGIN 65 // from: 61.3
  SAY #51786 /* ~Ravela odwraca się w stronę Mortego. "Czaszko, czaszko, czaszko..." Po każdym słowie Ravela mlaska językiem, a jej uśmiech rozszerza się. "Trudno odczytać wyraz twojej twarzy, gdy brak na niej skóry, ale czuję, że twój STRACH stamtąd wyziera. Przybycie tutaj *nie* było twoim wyborem."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 508
END

IF ~~ THEN BEGIN 66 // from: 61.4
  SAY #51787 /* ~"Ten Sukkub..." Ravela mruży oczy. "Czyż ona miała wybór? Być może w jej gładkoskórym umyśle pełnym miękkich jedwabi i niepodważalnych prawd, BYĆ MOŻE wybór... Jednak nie. Czuciowiec MUSI doświadczyć wszystkiego, a odmawiając przybycia - NIE byłby Czuciowcem. Dalej nie widzę żadnego wyboru!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51788 /* ~"Ravelo. Dosyć tego..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51789 /* ~"Ravelo. Dosyć tego..."~ */ GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 61.5 66.0
  SAY #51790 /* ~"*Diabelstwo*. Ta ognista." Ravela miękko rechocze, a jej oczy rozpalają się, jak gdyby z rozbawienia. "Żadnego wyboru. Nic a nic. Kiedy się *czuje* zamiast *myśleć,* mało jest miejsca dla wyboru."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 251
END

IF ~~ THEN BEGIN 68 // from: 61.6 66.1
  SAY #51791 /* ~"Szzzza... do mówienia będziesz miał dość czasu, mój drogi człowieku." Ravela stuka szponem o jeden ze swoich pożółkłych kłów. "Oto następne pytanie: co czujesz wobec tych, którzy przybyli wraz z tobą? Czy jest dla nich MIEJSCE w twoim sercu?" Uśmiecha się, czarne żyłki tańczą w jej oczach. "A może są jedynie NARZĘDZIEM twojej woli?"~ */
  IF ~~ THEN REPLY #51792 /* ~"Dlaczego chcesz wiedzieć coś takiego?"~ */ GOTO 69
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51793 /* ~Prawda: "*Zależy* mi na nich i to wszystko co musisz wiedzieć. Zadaj kolejne pytanie."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51794 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51795 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51796 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51797 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51798 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. To wszystko co musisz wiedzieć, więc zadaj następne pytanie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51799 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51800 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51801 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51802 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51803 /* ~"Uczucia jakie żywię do moich towarzyszy są sprawą między nimi, a mną, Ravelo. Zadaj inne pytanie ponieważ na to nie odpowiem."~ */ GOTO 70
  IF ~~ THEN REPLY #51804 /* ~"Nie odpowiem na to pytanie, Ravelo..."~ */ GOTO 50
  IF ~~ THEN REPLY #51805 /* ~"Męczą mnie twoje pytania, Ravelo. Teraz znowu moja kolej."~ */ GOTO 50
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #51806 /* ~"Tępy i uparty jak githzerai! To następne pytanie, ale odpowiedź nie będzie cię kosztowała nic - moją odpowiedzią jest, że ŻYCZĘ sobie wiedzieć; to jedyny powód. A teraz, podaj odpowiedź z głębi twojego sceptycznego serca."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51807 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51808 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51809 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51810 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51811 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51812 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. To wszystko co musisz wiedzieć, więc zadaj następne pytanie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51813 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51814 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51815 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51816 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51817 /* ~"Uczucia jakie żywię do moich towarzyszy są sprawą między nimi, a mną, Ravelo. Zadaj inne pytanie, ponieważ na to nie odpowiem."~ */ GOTO 70
  IF ~~ THEN REPLY #51818 /* ~"Nie odpowiem na to pytanie, Ravelo..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51819 /* ~"Męczą mnie twoje pytania, Ravelo. Teraz znowu moja kolej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 70 // from: 68.11 69.10
  SAY #51820 /* ~"Żadnych tajemnic przede mną nie waż się ukrywać, pół-człowieku!" Ravela wydaje z siebie syk. "BĘDZIESZ odpowiadał na moje pytania albo doznasz cierpienia, zamknięty w tych ciernistych murach."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51821 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51822 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51823 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51824 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51825 /* ~Prawda: "*Zależy* mi na nich."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51826 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. To wszystko co musisz wiedzieć, więc zadaj następne pytanie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51827 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51828 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51829 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51830 /* ~Prawda: "Są tylko narzędziem. Niczym więcej. Podążają za mną z sobie znanych powodów, a mi przydają się ich umiejętności."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51831 /* ~"Na to pytanie nie odpowiem, Ravelo..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51832 /* ~"Męczą mnie twoje pytania, Ravelo. Teraz znowu moja kolej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 71 // from: 68.2 69.1 70.1
  SAY #51833 /* ~"Nawet na tym githcie?" Rozżarzony wzrok Raveli spoczywa na Dak'konie, po czym ześlizguje się, by na powrót napotkać twój wzrok. "Powiedz, co on dla ciebie znaczy. Tylko mów prawdę albo *wyścielę* nim mój ogród."~ */
  IF ~~ THEN REPLY #51834 /* ~Prawda: "Jest moim sprzymierzeńcem. *Znam* go. To mój przyjaciel."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #51835 /* ~Prawda: "Ten Gith? W ogóle mnie nie obchodzi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
SetGlobal("Ravel_Dakkon","GLOBAL",4)
~ GOTO 73
  IF ~~ THEN REPLY #51836 /* ~Prawda: "Często mnie złości. Nienawidzę go."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",5)
~ GOTO 73
  IF ~~ THEN REPLY #51837 /* ~Prawda: "Ukrywa wiele rzeczy. Jeszcze mu nie ufam."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #51838 /* ~Prawda: "Jest pożyteczny... nic więcej."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",7)
~ GOTO 73
  IF ~~ THEN REPLY #51839 /* ~Prawda: "Wydaje się, że można mu zaufać. Jest lojalny i dzielnie walczył u mego boku."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",8)
~ GOTO 73
  IF ~~ THEN REPLY #51840 /* ~Prawda: "Nie znam jeszcze Dak'kona na tyle, aby coś o nim powiedzieć."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",9)
~ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 68.7 69.6 70.6
  SAY #51841 /* ~"Nawet ten gith?" Rozżarzony wzrok Raveli spoczywa na Dak'konie, po czym ześlizguje się, by na powrót napotkać twój wzrok. "Powiedz, co on dla ciebie znaczy. Tylko mów prawdę; jest tylko narzędziem w twoim ręku?"~ */
  IF ~~ THEN REPLY #51842 /* ~Prawda: "W ogóle mnie nie obchodzi. Podąża za mną i wykonuje moje rozkazy. To wszystko."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",10)
~ GOTO 73
  IF ~~ THEN REPLY #51843 /* ~Prawda: "Nienawidzę go."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 73
  IF ~~ THEN REPLY #51844 /* ~Prawda: "Tak, i na zawsze pozostanie narzędziem, ponieważ nie ma między nami zaufania."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 73
  IF ~~ THEN REPLY #51845 /* ~Prawda: "Być może nie znam go jeszcze dość dobrze, ale na razie nic dla mnie nie znaczy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.0 71.1 71.2 71.3 71.4 71.5 72.0 72.1 72.2 72.3
  SAY #51846 /* ~"Ach..." Ravela kiwa głową... po czym znowu się uśmiecha, stukając o siebie szponami.~ */
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51847 /* ~"Dziwi cię to?"~ */ GOTO 75
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51848 /* ~"Dziwi cię to?"~ */ DO ~MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51849 /* ~"Dziwi cię to?"~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("Dannah")
~ THEN REPLY #51850 /* ~"Dziwi cię to?"~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51851 /* ~"Dziwi cię to?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 74 // from: 71.6
  SAY #51852 /* ~Ravela parska i szczęka kłami. "Niejasna odpowiedź, choć prosta. Nieważne."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #51853 /* ~"Taka jest prawda, Ravelo."~ */ GOTO 75
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51854 /* ~"Taka jest prawda, Ravelo."~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51855 /* ~"Taka jest prawda, Ravelo."~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51856 /* ~"Taka jest prawda, Ravelo."~ */ GOTO 92
END

IF ~~ THEN BEGIN 75 // from: 68.3 69.2 70.2 73.0 74.0
  SAY #51857 /* ~"A co z czaszką?" Ravela nie zadaje sobie nawet trudu, by spojrzeć ma Mortego. "Ktoś taki jak ty z pewnością *nie* dba o nią! A może...?"~ */
  IF ~~ THEN REPLY #51858 /* ~Prawda: "Lubię go... jest moim przyjacielem."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",3)
~ GOTO 77
  IF ~~ THEN REPLY #51859 /* ~Prawda: "Czaszka? W ogóle mnie nie obchodzi."~ */ DO ~MoraleDec("Morte",2)
SetGlobal("Ravel_Morte","GLOBAL",4)
~ GOTO 77
  IF ~~ THEN REPLY #51860 /* ~Prawda: "Często mnie złości i jest bezużyteczny w walce; nienawidzę go."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",5)
~ GOTO 77
  IF ~~ THEN REPLY #51861 /* ~Prawda: "Szczerze mówiąc, jeszcze mu nie ufam. Wygląda na to, że dużo wie, ale ostrożnie się tym dzieli."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",6)
~ GOTO 77
  IF ~~ THEN REPLY #51862 /* ~Prawda: "Potrafi być denerwujący... ale ma swoje dobre strony."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",7)
~ GOTO 77
  IF ~~ THEN REPLY #51863 /* ~Prawda: "Jest pożyteczny... nic poza tym."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",8)
~ GOTO 77
  IF ~~ THEN REPLY #51864 /* ~Prawda: "Nie znam jeszcze Mortego na tyle, aby coś o nim powiedzieć."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",9)
~ GOTO 77
  IF ~~ THEN REPLY #51865 /* ~Prawda: "Wydaje się, że można mu zaufać. Jest lojalny i uratował mi życie w Kostnicy."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",10)
~ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 68.8 69.7 70.7 73.1
  SAY #51866 /* ~"A co z czaszką?" Ravela nie zadaje sobie nawet trudu by spojrzeć ma Mortego. "Ktoś taki jak ty z pewnością *nie* dba o nią! A może...?"~ */
  IF ~~ THEN REPLY #51867 /* ~Prawda: "Nie, w ogóle mnie nie obchodzi. Podąża za mną i wykonuje moje rozkazy. To wszystko."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 77
  IF ~~ THEN REPLY #51868 /* ~Prawda: "Nienawidzę go."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 77
  IF ~~ THEN REPLY #51869 /* ~Prawda: "Tak, i na zawsze pozostanie narzędziem, ponieważ nie ma między nami zaufania."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 77
  IF ~~ THEN REPLY #51870 /* ~Prawda: "Być może nie znam go jeszcze dość dobrze, ale na razie nic dla mnie nie znaczy."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",14)
~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.1 75.2 75.3 75.4 75.5 75.6 75.7 76.0 76.1 76.2 76.3
  SAY #51871 /* ~"Ciekawe, coraz ciekawsze..." Ravela uśmiecha się. "Niemałą zagadką okazujesz się być. Co jeszcze czai się w mrocznych zakamarkach twojego umysłu?"~ */
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51872 /* ~"Nic nie ukrywam."~ */ GOTO 78
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51873 /* ~"Nic nie ukrywam."~ */ DO ~MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51874 /* ~"Nic nie ukrywam."~ */ GOTO 87
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51875 /* ~"Nic nie ukrywam."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51876 /* ~"Nic nie ukrywam."~ */ GOTO 92
END

IF ~~ THEN BEGIN 78 // from: 68.4 68.9 69.3 69.8 70.3 70.8 73.2 74.1 77.0 77.1
  SAY #51877 /* ~"Ach..." Głos Raveli nabiera groźnego tonu, jej czerwone oczy płoną, a ona sama odwraca się w stronę Nie-Sławy. "A oto samo sedno sprawy - kusicielka z Otchłani... czyż uważasz, że wznosi się ponad to, co jedynie zmysłowe, czy też jest w twoich oczach czymś *innym*, he?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 163
END

IF ~~ THEN BEGIN 79 // from:
  SAY #51878 /* ~Ravela odwraca się do ciebie plecami, szczękając swoimi żółtymi kłami, jak gdyby na coś oczekiwała. "*Mów*, drogi człowieku, ale waż swoje słowa."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51879 /* ~Kłamstwo: "Czym ona dla ciebie jest, piękna Ravelo? Nie może się nawet równać z twoim wyglądem, intelektem, mocą."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",3)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51880 /* ~Prawda: "Czym ona dla ciebie jest, piękna Ravelo? Nie może się nawet równać z twoim wyglądem, intelektem, mocą."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",4)
~ GOTO 81
  IF ~~ THEN REPLY #51881 /* ~Prawda: "Mógłbym się w niej zakochać."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",5)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51882 /* ~Prawda: "Lubię ją. Ma wiele pozytywnych cech; uważam ją za przyjaciela."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",6)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51883 /* ~Prawda: "Sukkub? W ogóle mnie nie obchodzi."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",7)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51884 /* ~Prawda: "Jej wyższość jest często trudna do zniesienia. Nienawidzę jej."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",8)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51885 /* ~Prawda: "Mało ma do powiedzenia o swojej przeszłości, jak na biesa, który żyje od stuleci. Jeszcze jej nie ufam."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",9)
MoraleDec("Grace",1)
~ GOTO 80
  IF ~~ THEN REPLY #51886 /* ~Prawda: "Potrafi być użyteczna... nic więcej."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",10)
MoraleDec("Grace",1)
~ GOTO 81
  IF ~~ THEN REPLY #51887 /* ~Prawda: "Nie znam jej jeszcze dość dobrze."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",11)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.2 79.3 79.6 79.8 82.0
  SAY #51888 /* ~Ravela mruży oczy i przenosi wzrok na Nie-Sławę. "Hmmmmnnn..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51889 /* ~"Dość tych gierek, Ravelo. Słuchaj..."~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51890 /* ~"Dość tych gierek, Ravelo. Słuchaj..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51891 /* ~"Jeszcze jakieś pytania?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 81 // from: 79.0 79.1 79.4 79.5 79.7
  SAY #51892 /* ~Ravela mruży oczy i przenosi wzrok na Nie-Sławę. "Hmmmmnnn... a więc gdybym na ziemię powalić ją miała i uśmiercić jej piekielne serce, nie sprzeciwiałbyś się? Odpowiedz rozważnie..."~ */
  IF ~~ THEN REPLY #51893 /* ~"Cofam... moje słowa. Nie chcę, aby coś jej się stało."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 82
  IF ~~ THEN REPLY #51894 /* ~"Powal ją na ziemię, Ravelo - nic mnie ona nie obchodzi. Jest jedynie instrumentem w cudzym ręku, niczym więcej."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_4","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_5","GLOBALGood",-3)
MoraleDec("Grace",5)
SetAnimState("Grace",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Grace",ANIM_MIMESTANCE)
~ EXTERN ~DGRACE~ 164
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #51895 /* ~"Fuj! Przewrotny człowieku!" Oczy Raveli tlą się, a gdy się odwraca na powrót w twoja stronę zauważasz, że żyłki w jej oczach *wyostrzyły się*. "Jakaż to myśl w twej czaszce się tłucze?"~ */
  IF ~~ THEN REPLY #51896 /* ~"Przemawiałem fałszywie - nie wiedziałem co mówię, ale mam dosyć śmierci... własnej, czy jakiejkolwiek innej... trwającej przez kilka żywotów."~ */ GOTO 80
END

IF ~~ THEN BEGIN 83 // from:
  SAY #51897 /* ~Ravela mierzy wzrokiem Nie-Sławę, po czym rechocze. "Wszelkie sposoby obrony, jakimi dysponujesz, są tutaj *bezużyteczne* tanar'ri... ale cóż to za szlachetny wysiłek. Nie przestawaj się bać; wkrótce się tobą zajmę..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51898 /* ~"Dość tych gierek, Ravelo. Słuchaj..."~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51899 /* ~"Dość tych gierek, Ravelo. Słuchaj..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51900 /* ~"Masz jeszcze jakieś pytania?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 80.0 80.1 83.0 83.1
  SAY #51901 /* ~"Hmnnnn..." Ravela obraca się, zgrzyta kłami i rzuca Annie przelotne, szydercze spojrzenie. "A co z TYM kawałkiem ciała... tym kadukiem, tym diabelstwem o szkarłatnych włosach i ognistej namiętności. CZYM jest ONA dla ciebie, mój drogi człowieku?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51902 /* ~Kłamstwo: "Nic, piękna Ravelo. Tylko ty dla mnie coś znaczysz... nikt inny."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51903 /* ~Prawda: "Nic, piękna Ravelo. Tylko ty dla mnie coś znaczysz... nikt inny."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~  Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51904 /* ~Prawda: "Mógłbym się w niej zakochać."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleDec("Grace",3)
~ GOTO 85
  IF ~  !Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51905 /* ~Prawda: "Mógłbym się w niej zakochać."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51906 /* ~Prawda: "Lubię jej towarzystwo... uważam ją za mojego przyjaciela."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51907 /* ~Prawda: "Diabelstwo? W ogóle mnie nie obchodzi."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51908 /* ~Prawda: "Jej zuchwałość jest często nie do wytrzymania. Nienawidzę jej."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51909 /* ~Prawda: "Myślę, że trafiły jej się najgorsze z biesich cech; ufam jej tak długo, jak mam ją na oku."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51910 /* ~Prawda: "Potrafi być użyteczna... nic więcej."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51911 /* ~Prawda: "Nie znam jej jeszcze dość dobrze."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 88
END

IF ~~ THEN BEGIN 85 // from: 84.2
  SAY #51912 /* ~Oczy Raveli płoną, a ona rozkłada przed sobą swoje szpony jak wachlarz; bezwiednie cofasz się o krok. "O MIŁOŚCI nic nie wiesz, mój drogi człowieku, jeśli myślisz, że można ją DZIELIĆ w ten sposób pomiędzy tymi dwiema biesowymi dziwkami i Ravelą... nie będę więcej wysłuchiwać żadnych słów - już ODPOWIEDZIAŁEŚ na me pytania..."~ */
  IF ~~ THEN REPLY #51913 /* ~"Ravel, przejęzyczyłem się! Nie wiem co mówię - wiesz, że nie chciałem..."~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #51914 /* ~Ravela szczerzy zęby, jakby w uśmiechu, a jej głos staje się piskliwy, jak wyjący wiatr. "Co TY wiesz o WIEDZY, pół-człowieku?! WIEDZ to: POWIADAM ci, że zostaniesz tutaj, w moim ciernistym ogrodzie, do OSTATNICH DNI. Nigdy się stąd nie wydostaniesz i będziesz mnie KOCHAŁ, jak było ci pisane i jak mi PRZYRZEKŁEŚ!"~ */
  IF ~~ THEN REPLY #51915 /* ~"Jeśli musimy walczyć, aby to rozstrzygnąć, będziemy walczyć. Przygotuj się, Ravelo..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 87 // from: 68.5 68.10 69.4 69.9 70.4 70.9 73.3 74.2 77.2 77.3
  SAY #51916 /* ~"Ach... a oto cierniowe pytanie, nie obustronnie, ale stustronnie, a każdy kolec jest OSTRZEJSZY od drugiego..." Z pełną energią Ravela wskazuje szponem na Annę.~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51917 /* ~Kłamstwo: "Nic, piękna Ravelo. Tylko ty dla mnie coś znaczysz... nikt inny."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51918 /* ~Prawda: "Nic, piękna Ravelo. Tylko ty dla mnie coś znaczysz... nikt inny."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~~ THEN REPLY #51919 /* ~Prawda: "Mógłbym się w niej zakochać."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51920 /* ~Prawda: "Lubię jej towarzystwo... uważam ją za mojego przyjaciela."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51921 /* ~Prawda: "Diabelstwo? W ogóle mnie nie obchodzi."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 88
  IF ~~ THEN REPLY #51922 /* ~Prawda: "Jej zuchwałość jest często nie do wytrzymania. Nienawidzę jej."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51923 /* ~Prawda: "Myślę, że trafiły jej się najgorsze z biesich cech; ufam jej tak długo jak mam ją na oku."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51924 /* ~Prawda: "Potrafi być użyteczna... nic więcej."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51925 /* ~Prawda: "Nie znam jej jeszcze dość dobrze."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 84.3 84.4 84.9 87.2 87.3 87.4 90.0
  SAY #51926 /* ~Ravela spogląda na Annę, po czym parska, jej czarnożyłe oczy błyszczą. "Hmmmmnnn... niech więc tak się stanie."~ */
  IF ~~ THEN REPLY #51927 /* ~"Dość tych gierek, Ravelo. Słuchaj..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 89 // from: 84.0 84.1 84.5 84.6 84.7 84.8 87.0 87.1 87.5 87.6 87.7 87.8
  SAY #51928 /* ~Ravela spogląda na Annę, po czym parska, jej czarnożyłe oczy błyszczą. "Hmmmmnnn... więc nie tęskniłbyś za nią? Jej ognista krew byłaby mile widzianym kąskiem dla Trigitów... w rzeczy samej, od dawna już nie próbowali biesiej krwi." Nie odrywając oczu od Anny, Ravela wciąż mówi do ciebie. "Odpowiedz rozważnie, mój drogi człowieku. To NIE jest gra."~ */
  IF ~~ THEN REPLY #51929 /* ~"Cofam... moje słowa. Nie chcę, aby coś jej się stało."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 90
  IF ~~ THEN REPLY #51930 /* ~"Powal ją na ziemię, Ravelo - nic mnie ona nie obchodzi. Jest jedynie śmieciem z Ula, niczym więcej."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_6","GLOBALGood",-3)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-5)
~ EXTERN ~DANNAH~ 255
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #51931 /* ~"Fuj! Przewrotny człowieku!" Oczy Raveli tlą się, a gdy się odwraca na powrót w twoja stronę zauważasz, że żyłki w jej oczach *wyostrzyły się*. "Jaka w twej czaszce się obija?"~ */
  IF ~~ THEN REPLY #51932 /* ~"Przemawiałem fałszywie - nie wiedziałem co mówię, ale mam dosyć śmierci... własnej, czy jakiejkolwiek innej... trwającej przez kilka żywotów."~ */ GOTO 88
END

IF ~~ THEN BEGIN 91 // from:
  SAY #51933 /* ~"Nie zabiję jej... na razie. Ponieważ ona nie przetrwa długo w cierniowym labiryncie... słyszysz mnie, dziewczyno? Cienie, które uwielbiasz, nie zagwarantują ci tutaj BEZPIECZEŃSTWA." Ravela rechocze w kierunku Anny. "Módl się, aby twa furia dodała siły tobie; może ona oznaczać tych kilka cennych chwil między życiem i śmiercią..."~ */
  IF ~~ THEN REPLY #51934 /* ~"Dość tych gierek, Ravelo. Wyczerpałaś już swoje pytania?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 53.0 54.0 56.0 57.0 68.1 68.6 69.0 69.5 70.0 70.5 73.4 74.3 77.4 80.2 83.2 88.0 91.0
  SAY #51935 /* ~"Moje KOLEJNE pytanie to..." Głos Raveli cichnie, przechodząc niemal w szept. I nagle ogarnia cię dziwne wrażenie, że wiedźma wcale nie chce usłyszeć odpowiedzi. "Dlaczegoś zwlekał tak długo z *powrotem* do mnie? Ravela była bez ciebie samotna, drogi człowieku."~ */
  IF ~~ THEN REPLY #51936 /* ~"Droga, która tu prowadzi, jest... trudna, Ravelo."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 93
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51937 /* ~"Droga, która tu prowadzi, jest trudna, piękna Ravelo. Ktoś zadał sobie wiele trudu, aby sprawić, że niewielu do ciebie dotrze, ja zaś poddany zostałem wielu próbom, zanim mogłem przed tobą stanąć. Mimo to cieszę się, że znowu się spotykamy, Ravelo - widzę, że czas łagodnie obszedł się z twoją urodą."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 94
  IF ~~ THEN REPLY #51938 /* ~"Nie odpowiem na to pytanie, Ravelo..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #51939 /* ~"Czy aż tak ciężka jest ta droga?" Coś jakby uśmiech igra w kącikach jej ust. "A zatem twoja wizyta szczególna jest i składam za nią podziękowanie wielkie."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51940 /* ~"Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51941 /* ~"Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51942 /* ~"Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 94 // from: 92.1
  SAY #51943 /* ~"Twoje odpowiedzi..." Oczy Raveli błyszczą, a jej usta wykrzywiają się w groteskowym uśmiechu. "Twoje słowa *koją*, a nie słychać ich było od tak dawna... poruszają nawet moje oplecione kolcami serce. Nieważne, gdzie znajdują się twoje wspomnienia, twoje wdzięki wciąż pozostają. O piękne stworzenie..."~ */
  IF ~~ THEN REPLY #51944 /* ~"Nie, to *twoje* wdzięki nie przemijają, piękna Ravelo."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 95
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51945 /* ~"Być może. Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51946 /* ~"Być może. Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51947 /* ~"Być może. Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #51948 /* ~"Zaklęcia, zauroczenia, oczarowywanie... wszystko to Ravela do perfekcji opanowała... a mimo to wydaje się, że mogłaby tak wiele *nauczyć* się od ciebie..."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51949 /* ~"Być może. Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51950 /* ~"Być może. Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 97
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51952 /* ~"Być może. Masz jeszcze do mnie jakieś pytanie?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 93.0 94.1 95.0
  SAY #51953 /* ~"Aaaach, taaaak. Trzecie i ostatnie z moich pytań jest proste; odpowiedz na nie, a wtedy TWOJE pytania będą mogły swobodnie ku mnie płynąć, a Ravela uziemi je odpowiedziami... *oto* moje ostatnie pytanie do ciebie..."~ */
  IF ~~ THEN REPLY #51954 /* ~"Tak...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",7)
StartCutSceneMode()
StartCutSceneEx("0610Cut9",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1 93.2 94.2 94.3 95.1 95.2
  SAY #51959 /* ~"Aaaach, taaaak. Trzecie i ostatnie pytanie... *oto* one..." W momencie, gdy Ravela otwiera usta, by zadać swoje ostatnie pytanie, zdajesz sobie w straszliwy sposób sprawę, że to ostatnie pytanie uśmierciło wielu innych, którzy go wysłuchali. Znasz to pytanie i czujesz, jak cię drąży od środka, choć jednocześnie czujesz się też zobowiązany, aby na nie odpowiedzieć.~ */
  IF ~~ THEN REPLY #51962 /* ~Powtórz: "Cóż może zmienić naturę człowieka?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",8)
StartCutSceneMode()
StartCutSceneEx("0610CutC",FALSE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",7)
~ THEN BEGIN 98 // from:
  SAY #51963 /* ~"Cóż może zmienić naturę człowieka?"~ [RAV079B] */
  IF ~~ THEN REPLY #51964 /* ~Prawda: "Ja... nie wiem."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51965 /* ~Prawda: "Miłość."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51966 /* ~Prawda: "Nienawiść."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51967 /* ~Prawda: "Władza."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51968 /* ~Prawda: "Chciwość."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51969 /* ~Prawda: "Zdrada."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51970 /* ~Prawda: "Śmierć."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51971 /* ~Prawda: "Żal."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51972 /* ~Prawda: "Wiek."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51973 /* ~Prawda: "Cierpienie."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51974 /* ~Prawda: "Sukces."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51975 /* ~Prawda: "Sfery."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51976 /* ~Prawda: "Ty, Ravelo. Tak jak zmieniłaś na zawsze moją naturę."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51977 /* ~Kłamstwo: "Piękna kobieta, Ravelo. Tak jak ty zmieniłaś mnie."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51978 /* ~Prawda: "Nic nie może zmienić natury człowieka, Ravelo."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51979 /* ~Prawda: "Nie potrafię odpowiedzieć na to pytanie..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF WEIGHT #8 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",8)
~ THEN BEGIN 99 // from:
  SAY #51980 /* ~"Widzę, żeś nie zapomniał..." Ravela uśmiecha się, błyszcząc pożółkłymi kłami. "Jaka jest twoja odpowiedź?"~ */
  IF ~~ THEN REPLY #51981 /* ~Prawda: "Ja... nie wiem."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51982 /* ~Prawda: "Miłość."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51983 /* ~Prawda: "Nienawiść."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51984 /* ~Prawda: "Władza."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51985 /* ~Prawda: "Chciwość."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51986 /* ~Prawda: "Zdrada."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51987 /* ~Prawda: "Śmierć."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51988 /* ~Prawda: "Żal."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51989 /* ~Prawda: "Wiek."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51990 /* ~Prawda: "Cierpienie."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51991 /* ~Prawda: "Sukces."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51992 /* ~Prawda: "Sfery."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51993 /* ~Prawda: "Ty, Ravelo. Tak jak zmieniłaś na zawsze moją naturę."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51994 /* ~Kłamstwo: "Piękna kobieta, Ravelo. Tak jak ty zmieniłaś mnie."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51995 /* ~Prawda: "Nic nie może zmienić natury człowieka, Ravelo."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51996 /* ~Prawda: "Nie potrafię odpowiedzieć na to pytanie..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF ~~ THEN BEGIN 100 // from: 98.0 98.1 98.2 98.3 98.4 98.5 98.6 98.7 98.8 98.9 98.10 98.11 98.12 98.13 98.14 99.0 99.1 99.2 99.3 99.4 99.5 99.6 99.7 99.8 99.9 99.10 99.11 99.12 99.13 99.14
  SAY #51997 /* ~"Więc to jest twoja odpowiedź...?" Żyłki w oczach Raveli zaczynają nieznacznie się poruszać, a na jej twarzy pojawia się złowrogi uśmiech. "Upewnij się zanim odpowiedzieć będziesz chciał."~ */
  IF ~~ THEN REPLY #51998 /* ~"Może to nie jest *twoja* odpowiedź, ale tak brzmi *moja*."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 101 // from:
  SAY #51999 /* ~"Ach!" Ravela wydaje z siebie rechot, który po chwili milknie, a ona wpija się w ciebie wzrokiem z taką siłą, że niemal czujesz, jak wykręca się twoja skóra, jak gdyby pchnięto cię nożem. Żyłki w oczach Raveli zaczynają nieznacznie się poruszać, a na jej twarzy pojawia się z wolna złowrogi uśmiech. "Odpowiedź twa miła dla ucha mego... ale czy jest poprawna? Upewnij się zanim odpowiedzieć będziesz chciał."~ */
  IF ~~ THEN REPLY #52000 /* ~"Może to nie jest *twoja* odpowiedź, ale tak brzmi *moja*."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 100.0 101.0
  SAY #52001 /* ~"To wszystko czego pragnęłam, mój drogi człowieku." Uśmiech Raveli łagodnieje. "Prosta ta odpowiedź jest, a przecież zniszczyłam wielu ludzi, którzy MEJ odpowiedzi wysłuchać chcieli."~ */
  IF ~~ THEN REPLY #52002 /* ~"To wszystko...? Myślałem..."~ */ GOTO 103
  IF ~~ THEN REPLY #52003 /* ~"Ha! A to głupcy... ale czyż nie tacy są śmiertelnicy?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_7","GLOBALGood",-1)
~ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #52004 /* ~Ravela rechocze. "Niezliczoną ilość razy pytanie to zadawałam, ale NI RAZ te żałosne szkielety, które stawały przede mną, nie odpowiedziały tak, jak SAME myślą, zawsze starając się przeniknąć mój umysł i odgadnąć, co *ja* myślę...! Nie ma w tym prawdy."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52005 /* ~"Nie... nie wierzę ci. Tak naprawdę to nie wierzę, żeby oni kiedykolwiek mogli ci udzielić prawdziwej odpowiedzi, nawet gdyby ta odpowiedź była dla nich prawdziwa."~ */ GOTO 104
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52006 /* ~"Och, daj już spokój, nie musisz mnie okłamywać, Ravelo. Oboje wiemy, że oni nigdy nie mogliby udzielić ci prawdziwej odpowiedzi, nawet gdyby ta odpowiedź była dla nich prawdziwa."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #52007 /* ~Nagle Ravela dziwnie milknie. Przygląda ci się uważnie.~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52008 /* ~"MOJA odpowiedź była jedyną jakiej poszukiwałaś. Dlatego też nikt nie mógłby NIGDY odpowiedzieć na twoje pytanie. W którymś momencie stos ciał musiał być bardzo wysoki, co?"~ */ JOURNAL #52010 /* ~Ta plugawa starucha, Ravela, zadała mi trzy bezrozumne pytania. Wiedziałem skądś, że ostatnie z nich już mi kiedyś zadano. "Cóż może zmienić naturę człowieka?". Odpowiedziałem na to pytanie, jak umiałem, a Ravela przyjęła moją odpowiedź. Podejrzewam, że tak naprawdę zadowoliłaby ją jakakolwiek odpowiedź z moich ust. Wydaje mi się, że w ciągu wieków wielu głupców próbowało odpowiedzieć na pytania Raveli, i każdy z nich umierał z błędną odpowiedzią na ustach... Nie wiedzieli, że jedyna odpowiedź, jaka zadowoli Ravelę, będzie pochodziła ode mnie. Może to właśnie jeszcze jeden idiotyczny paradoks, jakich wiele rządzi wieloświatem.~ */ GOTO 105
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52009 /* ~"*Nigdy* nie obchodziła cię żadna inna odpowiedź oprócz mojej. Nigdy. Czyż nie? A mimo to zadawałaś swoje pytanie, wiedząc iż niezależnie od tego jakiej odpowiedzi by udzielili, zginą z twojej ręki."~ */ JOURNAL #52011 /* ~Ravela zadała mi trzy bezrozumne pytania. Wiedziałem skądś, że ostatnie z nich już mi kiedyś zadano. "Cóż może zmienić naturę człowieka?". Odpowiedziałem na to pytanie, jak umiałem, a Ravela przyjęła moją odpowiedź. Podejrzewam, że tak naprawdę zadowoliłaby ją całkowicie jakakolwiek odpowiedź z moich ust, o ile byłaby ona szczera. Wydaje mi się, że wielu przede mną próbowało odpowiedzieć na pytania Raveli, i umierało z błędną odpowiedzią na ustach... Nie wiedzieli, że jedyna odpowiedź, jaka zadowoli Ravelę, będzie pochodziła ode mnie.~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0 104.1
  SAY #52012 /* ~Ravela wydaje z siebie syk. "OCZYWIŚCIE, że twoja odpowiedź była jedyną jakiej oczekiwałam, ponieważ to właśnie ty byłeś JEDYNYM powodem, dla którego zadawałam to pytanie! Myślisz, że cokolwiek mnie obchodzili...? Myślisz, że obchodzili mnie choćby w *najmniejszym* stopniu, mój drogi człowieku? Odpowiedz mi!"~ */
  IF ~~ THEN REPLY #52013 /* ~"*Skończyłem* odpowiadać na twoje pytania, Ravelo. Teraz ty odpowiesz na *moje*."~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0 107.1 108.2 109.1 110.1 111.1 112.1 113.1 114.1 115.4 116.2 117.1 118.1 119.1 120.1 121.1 125.1 126.2 127.1 128.3 129.2 131.1 136.1 137.1 138.2 139.0 140.0 141.8
  SAY #52014 /* ~"Oczywiście... wiecznie pytania, wiecznie pytania..."~ */
  IF ~  Global("Ravel_Ritual_4","AR0610",0)
~ THEN REPLY #52015 /* ~"Dlaczego uczyniłaś mnie nieśmiertelnym, Ravelo?"~ */ GOTO 107
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52016 /* ~"Powtórz, Ravelo - dlaczego uczyniłaś mnie nieśmiertelnym?"~ */ GOTO 107
  IF ~  NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52017 /* ~"Więc wyjęłaś ze mnie śmiertelność, Ravelo... czy ona jest wciąż nietknięta?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52018 /* ~"Więc wyjęłaś ze mnie śmiertelność, Ravelo... czy ona jest wciąż nietknięta?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52019 /* ~"Więc wyjęłaś ze mnie śmiertelność, Ravelo... czy ona jest wciąż nietknięta?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52020 /* ~"Czy moja śmiertelność jest wciąż nietknięta, Ravelo?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52021 /* ~"Kim jest ten, kto wie, gdzie znajduje się moja śmiertelność?"~ */ GOTO 135
  IF ~~ THEN REPLY #52022 /* ~"Mam kilka pytań dotyczących CIEBIE, Ravelo..."~ */ GOTO 141
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52023 /* ~"Dziękuję ci za informacje, jakich mi udzieliłaś; muszę teraz odejść."~ */ GOTO 213
END

IF ~~ THEN BEGIN 107 // from: 106.0 106.1
  SAY #52024 /* ~"Tego właśnie *chciałeś* i prosiłeś tak słodko... jak Ravela mogłaby teraz powiedzieć 'nie' komuś takiemu jak ty? Nieśmiertelność była *twoim* rozwiązaniem i twoim wyzwaniem dla mnie."~ */
  IF ~~ THEN REPLY #52025 /* ~"*Moim* rozwiązaniem? Ale dlaczego?"~ */ GOTO 108
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52026 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #52027 /* ~"Nie wiem. Czas zatarł również i moje wspomnienia, zdaje się...? Jeśli zaś pamiętasz, powiedz mi... sama jestem ciekawa. To musiało być coś ważnego... czyż chęć życia wiecznie nie leży w naturze człowieka?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN EXTERN ~DDAKKON~ 169
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #52028 /* ~"Ravelo... to jest BARDZO ważne: masz jakiekolwiek pojęcie dlaczego cię o to poprosiłem?"~ */ GOTO 109
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52029 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY #52030 /* ~"Musiałeś śmierci uniknąć. Łatwo powiedzieć, ale trudno zrobić! Nieśmiertelność, nawet ze swoimi wadami, była najlepszym rozwiązaniem, jakie mógł rozwikłać ten wyschnięty umysł..."~ */
  IF ~~ THEN REPLY #52031 /* ~"Mimo to..."~ */ GOTO 110
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52032 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #52033 /* ~"Ołów nie tak łatwo w złoto zamienić, choć jest to możliwe. Jeśli od krwi wodę oddzielić można, śmiertelność można oddzielić od śmiertelnika, obrać ją jak brudną skórkę..."~ */
  IF ~~ THEN REPLY #52034 /* ~"Więc ją usunęłaś?"~ */ GOTO 111
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52035 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #52036 /* ~"Przepaść między człowiekiem i nieczłowiekiem jest wielka. Ty tę drogę pokonać zdołałeś. Ja to umożliwiłam, ale ty dokonałeś tego sam." Ravela uderza się otwartą dłonią w głowę i rozczesuje palcami włosy. "Niedobra Ravela! Śmiertelnicy są zbyt słabi i wadliwi, aby trwać na wieki. Nie wytrzymują tego! Trzeba ich zaciągnąć wśród szarpaniny i krzyków do nowej, niezdrowej powłoki."~ */
  IF ~~ THEN REPLY #52037 /* ~"Niezdrowej...? A więc rytuał nie był udany?"~ */ GOTO 112
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52038 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #52039 /* ~"Należy iść na skróty, a to może *złamać* formowanego... ponieważ to nie zawsze forma pęka, ale substancja do niej wlana. Jeśli przymusisz jakąś rzecz do kształtu, który nie był jej pisany, złamie się! Myślałam, że materiał był mocniejszy, ale zostałeś złamany."~ */
  IF ~~ THEN REPLY #52040 /* ~"Ale ja *jestem* nieśmiertelny - to musiał być sukces?"~ */ GOTO 113
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52041 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #52042 /* ~"Przetrwałeś długo, nieśmiertelniku, ale stałeś się ofiarą stworzenia, któremu na imię życie." Wiedźma składa dłonie w kształt kielicha, a następnie odwraca je na druga stronę, tworząc coś w rodzaju baldachimu. "Ciało jest jedynie miejscem schronienia dla duszy. Ale twoje nie jest zamieszkane przez nikogo."~ */
  IF ~~ THEN REPLY #52043 /* ~"Co było nie tak z rytuałem?"~ */ GOTO 114
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52044 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #52045 /* ~"Złamany przez tajemnicę ciała, piękny, piękny śmiertelny człowiek, rytuał nie został...? Nie... nie został zakończony." Ravela marszczy czoło, bawiąc się kosmykiem włosów. "Dzięki rytuałowi otrzymałeś to, czego chciałeś, ale..."~ */
  IF ~~ THEN REPLY #52046 /* ~"Ale..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52047 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 115 // from: 114.0 117.0 118.0 119.0
  SAY #52048 /* ~"Dzięki rytuałowi otrzymałeś to, czego chciałeś, ale cena była *wysoka*... rzucanie cieni, ciche, gwałtowne unicestwianie umysłu i bolesna pustka... te niebezpieczne rzeczy znajdują się w tak kruchej powłoce, niezależnie od tego, jak silny jest śmiertelny człowiek. Żałuję ich i rytuału."~ */
  IF ~~ THEN REPLY #52049 /* ~"Rzucanie Cieni?"~ */ DO ~SetGlobal("Ravel_Ritual_1","AR0610",1)
~ GOTO 116
  IF ~~ THEN REPLY #52050 /* ~"Ciche, gwałtowne unicestwianie umysłu?"~ */ DO ~SetGlobal("Ravel_Ritual_2","AR0610",1)
~ GOTO 118
  IF ~~ THEN REPLY #52051 /* ~"Bolesna pustka?"~ */ DO ~SetGlobal("Ravel_Ritual_3","AR0610",1)
~ GOTO 119
  IF ~  Global("Ravel_Ritual_1","AR0610",1)
Global("Ravel_Ritual_2","AR0610",1)
Global("Ravel_Ritual_3","AR0610",1)
~ THEN REPLY #52052 /* ~"Pomimo tych problemów wydaje się, że rytuał zadziałał..."~ */ JOURNAL #52054 /* ~Ravela powiedziała mi, że niegdyś poprosiłem ją, aby uczyniła mnie nieśmiertelnym, ale nie pamięta już teraz, jakim miałem ku temu powód. Powiedziała coś wreszcie o jakimś rytuale, a jednocześnie napomknęła, o tym, że "rzucam cienie na istnienie". Ilekroć umieram, rodzi się kolejny cień i szuka mnie, aby mnie uśmiercić. Ravela dodała również, że chociaż moje ciało goi się i wraca do zdrowia, to mój umysł nie podlega takim przemianom. Im częściej umieram, tym więcej tracę ze swojego umysłu, i zmartwychwstaję coraz bardziej uboższy. Może to tłumaczy moją utratę pamięci? Nie wiem. Ravela dodała również, że pustka, którą odczuwam w środku pozostawiła we mnie moja odrzucona śmiertelność.~ */ GOTO 120
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52053 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #52055 /* ~"Niewdzięczne cienie... ale niewdzięczne bez powodu? Cienie... nienawidzą cię, Bezimienny ponieważ jesteś im ojcem, twoje dzieci, raz zapomniane, nigdy ci nie wybaczą. Zrobią wszystko co w ich mocy, aby zniszczyć swojego rodzica... takie jest przeznaczenie dzieci."~ */
  IF ~  !Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52056 /* ~"W jaki sposób jestem ojcem dla cieni... tych cieni?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0610Cut1",FALSE)
SetGlobal("Ravel_Cut_Scene","AR0610",2)
~ EXIT
  IF ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52057 /* ~"W jaki sposób jestem ojcem dla cieni... tych cieni?"~ */ GOTO 117
  IF ~~ THEN REPLY #52058 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF WEIGHT #2 ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN BEGIN 117 // from: 116.1
  SAY #52059 /* ~"Na istnienie cienie rzucasz, Bezimienny. Wraz z każdą śmiercią, z twojego ciała powstaje nowy cień. Cienie tułają się przez jakiś czas, ale zawsze powracają, z zamiarem zamordowania swojego rodzica. Takie jest przeznaczenie wielu potomków..." Ravela nadyma z dezaprobatą usta, po czym nagle kłuje cię szponem w pierś. "...i niewdzięcznych młodych ludzi, takich jak ty sam."~ */
  IF ~~ THEN REPLY #52060 /* ~"Opowiedz mi więcej o tym rytuale..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52061 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 118 // from: 115.1
  SAY #52062 /* ~"Tysiąc razy uległeś śmierci i odrodziłeś się z każdej z nich. Ale inaczej z umysłem rzecz się ma, umysł jest o wiele wątlejszy. Jego blizny są głębokie i nie goją się. Mózg okryty jest twardą skorupą z kości, trudną do złamania, ale bezbronną wobec tego, co zżera go od środka."~ */
  IF ~~ THEN REPLY #52063 /* ~"Opowiedz mi więcej o tym rytuale..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52064 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 119 // from: 115.2
  SAY #52065 /* ~"Twa śmiertelność spoczywała niegdyś w środku twej skorupy." Ravela zaciska pięść i potrząsa nią. "*Brzęk-brzęk* grzechoce pusty człowiek, zabawka dla dziecka, z niczym więcej oprócz malutkiego kamienia, który stuka i zgrzyta w środku."~ */
  IF ~~ THEN REPLY #52066 /* ~"Opowiedz mi więcej o tym rytuale..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52067 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 120 // from: 115.3
  SAY #52071 /* ~"Raveli niedowierzasz? Oczywiście, że dostarczyłam to, co było obiecane! Niedługo po tym jak zaklęcie się skończyło, zabiłam cię, aby zobaczyć, czy zadziałało. Walczyłeś, ale ja *nie rozluźniałam* mojego uścisku i przyglądałam się, jak umierasz pierwszą ze swoich licznych śmierci." Ravela *zgrzyta* zębami. "Wtedy to poznałam wady rytuału..."~ */
  IF ~~ THEN REPLY #52072 /* ~"Jakie wady?"~ */ GOTO 121
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52073 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #52074 /* ~"Ego otacza nas jak więzienie. Niepamięć o tym, co zrobiłam, często służy mi za tarczę." Ravela mlaska językiem. "Moje ty piękne, piękne stworzenie, wiele jest mądrości i poznania w prawdzie, że życie stanowi przygotowanie na ostateczny cel: śmierć. Nasze życie jest narzędziem, dzięki któremu uczymy się *jak* umierać. Jeśli ZAPOMNIMY takich rzeczy..."~ */
  IF ~~ THEN REPLY #52075 /* ~"A więc to wtedy odkryłaś, że w momencie śmierci straciłem swoje wspomnienia..."~ */ DO ~SetGlobal("Ravel_Ritual_4","AR0610",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 122
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52076 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #52077 /* ~"Taak..." Ravela kiwa głową. "Nieszczęsne... bez śmiertelności, która trzymałaby mocno takie wspomnienia, ciało jest skorupą..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52078 /* ~"Więc wyjęłaś ze mnie śmiertelność, Ravelo... czy ona jest wciąż nietknięta?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52079 /* ~"Więc wyjęłaś ze mnie śmiertelność, Ravelo... czy ona jest wciąż nietknięta?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52080 /* ~"Więc wyjęłaś ze mnie śmiertelność, Ravelo... czy ona jest wciąż nietknięta?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
END

IF ~~ THEN BEGIN 123 // from: 106.2 122.0
  SAY #52081 /* ~Ravela zdaje się być zaskoczona, a nawet zaniepokojona. "Tak, tak, *tak!* Nie obawiaj się o oddzieloną śmiertelność... jeśli jesteś tutaj... słyszysz? Słyszę ją, jak mówi do mnie, twoja śmiertelność musi być nietknięta. Taka rzecz nie może... nie... nie może być zniszczona, dopóki ty istniejesz. Jesteś *kotwicą* twojej śmiertelnej duszy. Dopóki *ty* jesteś nietknięty, nietknięta będzie i ona. Stworzony jesteś, aby trwać..." Ravela uśmiecha się i wydaje z siebie charczący śmiech. "Ponieważ życie połknęło cię i na powrót cię wypluło!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 506
END

IF ~~ THEN BEGIN 124 // from: 106.3 122.1
  SAY #52082 /* ~Ravela zdaje się być zaskoczona, a nawet zaniepokojona. "Tak, tak, *tak!* Nie obawiaj się o oddzieloną śmiertelność... jeśli jesteś tutaj... słyszysz? Słyszę ją, jak mówi do mnie, twoja śmiertelność musi być nietknięta. Taka rzecz nie może... nie... nie może być zniszczona, dopóki ty istniejesz. Jesteś *kotwicą* twojej śmiertelnej duszy. Dopóki *ty* jesteś nietknięty, nietknięta będzie i ona. Stworzony jesteś, aby trwać..." Ravela uśmiecha się i wydaje z siebie charczący śmiech. "Ponieważ życie połknęło cię i na powrót cię wypluło!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 253
END

IF ~~ THEN BEGIN 125 // from: 106.4 106.5 122.2
  SAY #52083 /* ~Ravela zdaje się być zaskoczona, a nawet zaniepokojona. "Tak, tak, *tak!* Nie obawiaj się o oddzieloną śmiertelność... jeśli jesteś tutaj... słyszysz? Słyszę ją, jak mówi do mnie, twoja śmiertelność musi być nietknięta. Taka rzecz nie może... nie... nie może być zniszczona, dopóki ty istniejesz. Jesteś *kotwicą* twojej śmiertelnej duszy. Dopóki *ty* jesteś nietknięty, nietknięta będzie i ona. Nie można jej zniszczyć bardziej niż ciebie."~ */
  IF ~  Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52084 /* ~"Dosyć tego, Ravelo. Wyjęłaś ze mnie śmiertelność, a to przyniosło więcej szkody niż pożytku. Odbiorę ją teraz - myślę, że posiadałaś ją zbyt długo."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 126
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52085 /* ~"Dobrze więc. Mam do ciebie kilka innych pytań, Ravelo..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #52086 /* ~"Ach... stawiasz żądanie...?" Ravela obnaża swoje żółte kły, zaś jej czarnożyłe oczy wyostrzają się i wykręcają. "Nie, nie, nie. Tego Ravala, ja, *nie* zrobię. Coś się odstało to się nie stanie."~ */
  IF ~~ THEN REPLY #52087 /* ~"Ravelo... zmęczyły mnie już te twoje gierki. Nie będę dalej w nich uczestniczył. Oddaj mi moją nieśmiertelność, albo cię zabiję."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 127
  IF ~~ THEN REPLY #52088 /* ~"Czemu nie?"~ */ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52089 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #52090 /* ~"Zabijesz mnie, zabije mnie twoja wola, ale to nieważne. Trudno jest powiedzieć, w którym z wielu kierunków czasu zmierzam. Śmiertelnicy zmierzają w przeciwnym kierunku, patrząc w przyszłość, natomiast ja zmierzam ku przeszłości, ponieważ nie lubię tego, co widzę w przyszłości."~ */
  IF ~~ THEN REPLY #52091 /* ~"Porzuć tę bezsensowną gadkę, Ravelo. Dość mam tej słownej licytacji z tobą. Oddaj mi moją śmiertelność... *natychmiast*."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52092 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 128 // from: 126.1 127.0
  SAY #52093 /* ~"Ravela *nie może* dać ci takiej rzeczy, mój drogi człowieku, ponieważ Ravela nie ma *nic*, co by mogła dać... nigdy nie posiadałam *ciebie,* czy twojej śmiertelności... chociaż pragnęłam wszystko zatrzymać w moim ogrodzie, jako pamiątki samolubnego przywiązania, zachować model twojego ciała... ale na takie rzeczy Ravela nie mogła się zdobyć..."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52094 /* ~"Czemu nie?"~ */ EXTERN ~DANNAH~ 254
  IF ~  !NearbyDialog("Dannah")
NearbyDialog("DGrace")
~ THEN REPLY #52095 /* ~"Czemu nie?"~ */ EXTERN ~DGRACE~ 159
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("DGrace")
~ THEN REPLY #52096 /* ~"Jeśli jej nie masz, Ravelo... gdzie się znajduje moja śmiertelność?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52097 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 129 // from:
  SAY #52098 /* ~Na twarzy Raveli pojawia się płytki, szeroki uśmiech. "Czy tak trudno ci w to uwierzyć, diabelstwo...?" Cicho rechocze sama do siebie. "Czy Ravela będąc Ravelą, a zatem i mitem, nie *zasługuje*, aby nosić takie uczucie w swoim oplecionym kolcami sercu...?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 160
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #52099 /* ~"Jeśli więc jej nie masz, Ravelo... gdzie się znajduje moja śmiertelność?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52100 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 130 // from:
  SAY #52101 /* ~Na twarzy Raveli pojawia się płytki, szeroki uśmiech. "Czy tak trudno ci w to uwierzyć, sukkubie...?" Cicho rechocze sama do siebie. "Czy Ravela będąc Ravelą, a zatem i mitem, nie *zasługuje*, aby nosić takie uczucie w swoim oplecionym kolcami sercu...?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 160
END

IF ~~ THEN BEGIN 131 // from:
  SAY #52102 /* ~"Przeszłość to przeszłość, a opowieści mało dbają o mówienie prawdy o niej..." Ravela marszczy czoło, po czym jej głos nieco cichnie, złowróżbnie, a ona przygląda się Nie-Sławie.~ */
  IF ~~ THEN REPLY #52103 /* ~"Dosyć, Ravelo: jeśli nie masz mojej śmiertelności... gdzież więc ona jest?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52104 /* ~"Usłyszałem już dosyć. Mam kilka innych pytań..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 132 // from: 128.2 129.1 131.0
  SAY #52105 /* ~"Nie wiem *ja* tego, skarbie. Ale na twoim miejscu odebrałabym to natychmiast. Lepiej nie mówić, jak straszne rzeczy ktoś mógłby ci uczynić, gdyby zagarnął twoją śmiertelność dla OKUPU." Ravela *stuka* o siebie szponami. "To byłoby jak przetrzymywanie czyjejś słodkiej, soczystej duszy... byłbyś marionetką tańczącą, gdy pociągnie się za jej sznurki. Nie wiem, gdzie to się znajduje."~ */
  IF ~~ THEN REPLY #52106 /* ~"Cóż, byłoby dla ciebie zbyt PROSTE, gdybyś się dowiedziała, gdzie można ją znaleźć... wygląda na to, że rozpoczynam kolejne poszukiwania."~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 133
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #52107 /* ~"Chwileczkę... twierdzisz, że nie wiesz, gdzie znajduje się moja śmiertelność. Czy znasz kogoś, kto NAPRAWDĘ wie, gdzie ją można znaleźć?"~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #52108 /* ~"Aaach... nie powinieneś odchodzić tak pospiesznie." Ravela uśmiecha się strasznie, ukazując błyszczące kły. "Nie wiem je tego, gdzie spoczywa twoja śmiertelność, mój drogi człowieku... ale jest ktoś *inny*, kto wiedzę o tym posiadać może..."~ */
  IF ~~ THEN REPLY #52109 /* ~"Kto?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 134 // from: 132.1
  SAY #52110 /* ~Ravela uśmiecha się strasznie, ukazując błyszczące kły. "Mądry, mądry, mądry jesteś... tak, jest ktoś INNY, kto mógłby wiedzieć rzeczy, których nie wie Ravela..."~ */
  IF ~~ THEN REPLY #52111 /* ~"Kto?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 106.6 133.0 134.0
  SAY #52112 /* ~Oczy Raveli zachodzą mgłą, jak gdyby wpatrywała się w coś daleko przed sobą, a jej głos zwalnia. "Musisz zapytać... kogoś... o jasnych włosach. Anioła, devy, kogoś kto unosi się na skrzydłach poranka i kształtuje swoimi dłońmi horyzonty. On spoczywa, spoczywa poza moim zasięgiem, w innej klatce, w innym więzieniu... jego mądrość zawiera wiedzę o tym, co pragniesz wiedzieć. Zadaj mu swoje pytania, wysłuchaj jego odpowiedzi i wykorzystaj je jako wskazówki."~ */
  IF ~  Global("Ravel_Trias","GLOBAL",0)
~ THEN REPLY #52113 /* ~"Gdzie mogę znaleźć tego anioła?"~ */ DO ~SetGlobal("Ravel_Trias","GLOBAL",1)
AddexperienceParty(180000)
~ JOURNAL #52115 /* ~Ravela powiedziała mi, że moja śmiertelność pozostała nietknięta... i przebywa gdzieś, ale nie jest jej wiadome, gdzie, jakkolwiek zna kogoś, kto *mógłby* coś na ten temat wiedzieć. Ravela poradziła mi, abym powędrował poza labirynt, do pewnego więzienia, gdzie będę mógł odnaleźć anioła, "devę", który zapewne mógłby powiedzieć mi, gdzie znajduje się moja śmiertelność... Jeżeli znalezienie tego anioła, jest chociaż w połowie tak trudne, jak dotarcie do samej Raveli, to zaczynam powątpiewać, czy w ogóle KIEDYKOLWIEK odnajdę swoją śmiertelność. Tak czy siak, wygląda na to, że kwestia mojej śmiertelności jest faktycznie ważniejsza niż początkowo przypuszczałem. Ravela ostrzegła mnie, abym jak najszybciej odnalazł swoją śmiertelność, bo inaczej może mnie ktoś w tych poszukiwaniach uprzedzić, a jeżeli tak się stanie, stanę się bezwolną kukłą w cudzych rękach.~ */ GOTO 136
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52114 /* ~"Gdzie mogę znaleźć tego anioła?"~ */ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0 135.1
  SAY #52116 /* ~"Opuszczając to więzienie, dojdziesz do *innego* przeklętego więzienia... chociaż nie będzie na takie wyglądało na pierwszy rzut oka. Postępuj ostrożnie, odnajdź złote ogniwo w wiecznie skracającym się łańcuchu. Światło cień tej sprawy ujawni i nowe ścieżki przed tobą otwarte zostaną."~ */
  IF ~~ THEN REPLY #52117 /* ~"Rozkosznie tajemnicze... choć nie zaskakujące. Dzięki."~ */ GOTO 137
  IF ~~ THEN REPLY #52118 /* ~"Mam do ciebie jeszcze kilka pytań, Ravelo..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #52119 /* ~Ravela rechocze. "Co do przeszłości, to nie trzymam się szczegółów... masz szczęście, że *cokolwiek* otrzymałeś, o nieprzyjemny!"~ */
  IF ~~ THEN REPLY #52120 /* ~"Och, naprawdę? Chodzi tylko o to, że łańcuch tego, kto wie czym oni są i gdzie oni są, nigdy nie wydaje się być gładkim szeregiem ogniw."~ */ GOTO 138
  IF ~~ THEN REPLY #52121 /* ~"Być może tak jest. W każdym bądź razie, mam do ciebie kilka innych pytań, Ravelo..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #52122 /* ~"Achhh..." Ravela uśmiecha się, wznosząc do góry jeden ze swoich szponów. "Z tego właśnie powodu musisz zabezpieczyć wszystkie ogniwa, ponieważ jeśli nie będą teraz gładkie, możesz sobie tylko wyobrazić, co się stanie z łańcuchem, gdy WIĘCEJ ogniw zostanie roztrzaskanych... czas i śmierć nie mają tyle *cierpliwości* wobec innych, co względem ciebie."~ */
  IF ~~ THEN REPLY #52123 /* ~"Co sugerujesz?"~ */ GOTO 139
  IF ~~ THEN REPLY #52124 /* ~"Lepiej żeby to nie była groźba."~ */ GOTO 140
  IF ~~ THEN REPLY #52125 /* ~"Być może tak jest. W każdym bądź razie, mam do ciebie kilka innych pytań, Ravelo..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #52126 /* ~"A co, gdyby jedno z twoich cennych ogniw miało *umrzeć?* I co, gdybyś na powrót zapomniał kim jesteś? Co byś wtedy zrobił? Gdzież znalazłaby się wtedy twoja skradziona śmiertelność... byłaby STRACONA na wieki ponieważ nie pozostałby nikt, kto mógłby ZAPYTAĆ o to jak do niej dotrzeć. Podążanie twoją ścieżką stało by się trudniejsze... może nawet NIEMOŻLIWE..."~ */
  IF ~~ THEN REPLY #52127 /* ~"Brzmi to dość wiarygodnie. W każdym bądź razie, mam do ciebie kilka innych pytań, Ravelo..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 140 // from: 138.1
  SAY #52128 /* ~"To nie groźba ode mnie, ale niemniej jednak jest to *bardzo* realna groźba. A gdyby jedno z twoich cennych ogniw miało *umrzeć?* Gdybyś na powrót zapomniał kim jesteś? Co byś wtedy zrobił? Gdzież znalazłaby się wtedy twoja skradziona śmiertelność... byłaby STRACONA na wieki, ponieważ nie pozostałby nikt, kto mógłby ZAPYTAĆ o to, jak do niej dotrzeć. Podążanie twoją ścieżką stałoby się trudniejsze... może nawet NIEMOŻLIWE..."~ */
  IF ~~ THEN REPLY #52129 /* ~"Brzmi to dość wiarygodnie. W każdym bądź razie, mam do ciebie kilka innych pytań, Ravelo..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 141 // from: 106.7 142.1 144.0 149.0 162.1 163.6 164.4 165.1 167.1 169.1 171.1 175.1 182.1 183.1 184.1 185.2 188.1 189.1 190.1 192.1 193.4 194.2 195.0 199.0 200.0 201.2 202.5 203.1 206.0 207.0 207.1 211.0 241.1
  SAY #52130 /* ~"Tak? Zadawaj pytania, mój drogi człowieku."~ */
  IF ~~ THEN REPLY #52131 /* ~"Ravelo... kim jesteś? Skąd przybyłaś?"~ */ GOTO 142
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",0)
~ THEN REPLY #52132 /* ~"Jakie inne postacie przybierałaś w swoim życiu, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52133 /* ~"Co to za miejsce?"~ */ GOTO 200
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52134 /* ~"Dlaczego zostałaś uwięziona, Ravelo?"~ */ GOTO 186
  IF ~  NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52135 /* ~"Dlaczego zostałaś uwięziona, Ravelo?"~ */ GOTO 55
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52136 /* ~"Dlaczego zostałaś uwięziona, Ravelo?"~ */ GOTO 185
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52137 /* ~"Dlaczego zostałaś uwięziona, Ravelo?"~ */ GOTO 185
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #52138 /* ~"Legendy podają, że jesteś potężnym magiem, Ravelo. Możesz mnie nauczyć czegoś ze Sztuki?"~ */ GOTO 201
  IF ~~ THEN REPLY #52139 /* ~"Mam jeszcze kilka pytań dotyczących mojej nieśmiertelności..."~ */ GOTO 106
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52140 /* ~"Dziękuję ci Ravelo za informacje jakich mi udzieliłaś; muszę teraz odejść."~ */ GOTO 213
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #52141 /* ~"Ja? Jestem Ravela, układam i rozwiązuję zagadki, znajduję rozwiązanie tego, co *nie może* być rozwiązane, plączę i rozplątuję umysł, dopóki nitki myśli nie staną się poplątane jak strąki włosów pijaka." Ravela oplata jeden ze swoich postrzępionych, szarych włosów wokół palca. "To wystarczy."~ */
  IF ~~ THEN REPLY #52142 /* ~"Ale *czym* jesteś? Niektórzy nazywają cię 'nocną wiedźmą', cokolwiek by to miało być."~ */ GOTO 143
  IF ~~ THEN REPLY #52143 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #52144 /* ~"Nocna wiedźma...?" Na twarzy Raveli ukazuje się upiorny uśmiech, a jej pożółkłe zęby wyglądają jak igły. "Jestem jedynie *kobietą*, która okrutni tęskniła za swoim ukochanym stworzeniem. Niektórzy mówią na mnie starucha, szara pani, siostra Jaga, nocna wiedźma - ale JA SAMA brzmi moje imię, Ravela, Ravela, która szarady układa, dostarczając zagadki do rozwiązania i zwyciężając niemożliwości. Choć..."~ */
  IF ~  Global("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52145 /* ~"Choć...?"~ */ GOTO 145
  IF ~  GlobalGT("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52146 /* ~"Choć...?"~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.1
  SAY #52147 /* ~"Choć to nie ma znaczenia. Przerabialiśmy to już przedtem." Ravela wydaje odgłos, jak gdyby płoszyła ptaki. "Masz jeszcze jakieś pytania?"~ */
  IF ~~ THEN REPLY #52148 /* ~"Tak..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 145 // from: 143.0
  SAY #52149 /* ~"WIELE się mówi o nas, szarych paniach. Należymy do rasy 'nocnych wiedźm', ale ja jestem *jedyna w swoim rodzaju*. Niektórzy zwą nas złem Starości, łowcami śmiertelnych snów, brzydkimi, ohydnymi stworzeniami, których siedliska znajdują się w mrocznych zakątkach ludzkich umysłów." Oczy Raveli zwężają się, zamieniając się w czerwonawe iskierki. "Ale to dla mnie NIC nie znaczy... jak ktoś taki jak TY nazwałby kogoś takiego jak ja?"~ */
  IF ~~ THEN REPLY #52150 /* ~Kłamstwo: "Powiedziałbym, że jesteś piękna, Ravelo."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Ravel_2","GLOBALLaw",-2)
SetGlobal("Ravel_Self_Answer","GLOBAL",1)
~ GOTO 146
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52151 /* ~Prawda: "Uważam, że jesteś piękna, Ravelo. Być może nie dla oka, ale twój umysł zdaje się być bystry i pełen energii."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_1","GLOBALLaw",2)
SetGlobal("Ravel_Self_Answer","GLOBAL",2)
~ GOTO 148
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52152 /* ~Prawda: "Powiedziałbym, że jesteś brzydka, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52153 /* ~Prawda: "Powiedziałbym, że jesteś brzydka, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52154 /* ~Prawda: "Powiedziałbym, że jesteś brzydka, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 160
  IF ~~ THEN REPLY #52155 /* ~"Powiedziałbym, że wszelkie opisy są ze wszech miar właściwe."~ */ DO ~SetGlobal("Ravel_Self_Answer","GLOBAL",4)
~ GOTO 149
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #52156 /* ~Ravela milczy przez chwilę, a po chwili zaczyna rechotać. "Och, jesteś *diamentem*, mój drogocenny, śpiewający ptaku. Dzięki tobie całe wieki nabierają znaczenia! Jakże słodki jest twój śpiew dla tych umęczonych uszu, których jedyną ucztę stanowiła cisza i powolne skradanie rozprzestrzeniających się czarnych kolców..." Ravela uśmiecha się. "A mimo to KŁAMIESZ..."~ */
  IF ~~ THEN REPLY #52157 /* ~"Nie, Ravelo, nie..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #52158 /* ~"Myślisz, że dbam o prawdę?! Oszustwo jest dla mnie *piękne*, śpiewający ptaku, a Ravela uwielbia słuchać, jak mówisz takie rzeczy, naprawdę. Możem i brzydka..."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52159 /* ~"Ravelo, *nie* jesteś brzydka..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52160 /* ~"Ravelo, *nie* jesteś brzydka..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52161 /* ~"Ravelo, *nie* jesteś brzydka..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 148 // from: 145.1
  SAY #52162 /* ~"Myślisz, że dbam o prawdę?! Skaza na wewnętrznym pięknie, niezależnie od tego jak długo może istnieć ciało. Myślisz, żem brzydka...?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52163 /* ~"Ravelo, *nie* jesteś brzydka..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52164 /* ~"Ravelo, *nie* jesteś brzydka..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52165 /* ~"Ravelo, *nie* jesteś brzydka..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 149 // from: 145.5
  SAY #52166 /* ~"Tak, ale nie są TWOJĄ odpowiedzią. Wycofuję pytanie, o dyskretny. Nie będziemy już o tym mówić."~ */
  IF ~~ THEN REPLY #52167 /* ~"Och... uch, mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 150 // from: 145.2 147.0 148.0
  SAY #52168 /* ~"Jednak *nie* muszę być brzydka, o piękne stworzenie. Moja postać nie stanowi problemu dla mojej woli, mogę upleść na nowo jej włókna, tak by powstał przyjemniejszy dla oka gobelin..." Ravela rzuca Nie-Sławie przelotne spojrzenie, uśmiecha się i oblizuje usta. "Tak..."~ */
  IF ~~ THEN REPLY #52169 /* ~"Ravelo, co..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",3)
StartCutSceneMode()
StartCutSceneEx("0610Cut5",FALSE)
~ EXIT
END

IF WEIGHT #3 ~  Global("Ravel_Cut_Scene","AR0610",3)
~ THEN BEGIN 151 // from:
  SAY #52170 /* ~Ravela zamienia się... w Nie-Sławę, przybierając jej postawę, rysy twarzy, ubranie... "Czy takie kształty są przyjemniejsze dla oka?" Ravela uśmiecha się, jej zęby są teraz przepiękne, doskonale białe, usta jedynie o lekkim *odcieniu* czerwieni. "Tak udoskonalone i zapierające dech w piersi?" Gestem nakazuje ci, abyś podszedł bliżej. "Podejdź, mój drogi człowieku, me usta nie płoną udrękami Otchłani. Złóż na nich swój pocałunek."~ */
  IF ~~ THEN REPLY #52171 /* ~"Dobrze..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",1)
~ GOTO 152
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52172 /* ~"Nie, Ravelo."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52173 /* ~"Nie, Ravelo."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52174 /* ~"Ravelo, skończ z tymi gierkami... nie mam na nie ani czasu ani cierpliwości. Przybierz na powrót swoją własną postać."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52175 /* ~"Ravelo, skończ z tymi gierkami... nie mam na nie ani czasu ani cierpliwości. Przybierz na powrót swoją własną postać."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0 158.0 161.0
  SAY #52176 /* ~Dotykasz swoimi ustami ust Raveli. Pomimo swojego nowego wyglądu, jej usta są suche jak piasek, a gdy ich dotykasz, czujesz ostre ukłucie, jak gdybyś całował rząd kolców. Cofasz się, zlizując krew ze swoich ust. Ravela naśladuje twoje ruchy, które w jej nowej postaci wyglądają jeszcze straszniej. Kropla twojej krwi wciąż pozostaje na jej wargach, a wiedźma ona uśmiecha się złowróżbnie.~ */
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
NearbyDialog("Dannah")
~ THEN REPLY #52177 /* ~"Ty... mnie ukąsiłaś."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",4)
~ GOTO 155
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
!NearbyDialog("Dannah")
~ THEN REPLY #52178 /* ~"Ty... mnie ukąsiłaś."~ */ GOTO 153
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
NearbyDialog("Dgrace")
~ THEN REPLY #52179 /* ~"Ty... mnie ukąsiłaś."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",5)
~ GOTO 156
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
!NearbyDialog("DGrace")
~ THEN REPLY #52180 /* ~"Ty... mnie ukąsiłaś."~ */ GOTO 154
  IF ~  Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #52181 /* ~"Ty... mnie ukąsiłaś."~ */ GOTO 240
END

IF ~~ THEN BEGIN 153 // from: 152.1
  SAY #52182 /* ~"I tyś mnie ukąsił, tak dawno temu, lecz nie był to pocałunek, ale ukąszenie w serce..." Ravela uśmiecha się. "Nie dziw się, mój drogi człowieku. Nie stała się nikomu żadna krzywda... być może za wyjątkiem tych, z którymi podróżujesz." Wiedźma zaczyna cicho chichotać, a ty nagle czujesz na sobie wzrok Nie-Sławy; z zewnątrz wygląda na opanowaną, ale odnosisz dziwne wrażenie, że coś się między wami *zmieniło*.~ */
  IF ~~ THEN REPLY #52183 /* ~"Przybierz na powrót swój normalny kształt, Ravelo."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from: 152.3
  SAY #52184 /* ~"I tyś mnie ukąsił, tak dawno temu, lecz nie był to pocałunek, ale ukąszenie w serce..." Ravela uśmiecha się. "Nie dziw się, mój drogi człowieku. Nie stała się nikomu żadna krzywda... być może za wyjątkiem tych, z którymi podróżujesz." Wiedźma zaczyna cicho chichotać, a ty nagle czujesz na sobie wzrok Anny - jej oczy są szeroko otwarte, a serce bije jak szalone.~ */
  IF ~~ THEN REPLY #52185 /* ~"Przybierz na powrót swój normalny kształt, Ravelo."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from: 152.0
  SAY #52186 /* ~"I tyś mnie ukąsił, tak dawno temu, lecz nie był to pocałunek, ale ukąszenie w serce..." Ravela uśmiecha się. "Nie dziw się, mój drogi człowieku. Nie stała się nikomu żadna krzywda... być może za wyjątkiem tych, z którymi podróżujesz." Wiedźma zaczyna cicho chichotać, a ty nagle czujesz na sobie wzrok zarówno Nie-Sławy jak i Anny; z zewnątrz Nie-Sława wygląda na opanowaną, ale odnosisz dziwne wrażenie, że coś się między wami *zmieniło*. Anna zmrużyła oczy tak, że zostały z nich tylko wąskie szparki i porusza złowrogo ogonem tam i z powrotem.~ */
  IF ~~ THEN REPLY #52187 /* ~"Przybierz na powrót swój normalny kształt, Ravelo."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from: 152.2
  SAY #52188 /* ~"I tyś mnie ukąsił, tak dawno temu, lecz nie był to pocałunek, ale ukąszenie w serce..." Ravela uśmiecha się. "Nie dziw się, mój drogi człowieku. Nie stała się nikomu żadna krzywda... być może za wyjątkiem tych, z którymi podróżujesz." Wiedźma zaczyna cicho chichotać, a ty nagle czujesz na sobie wzrok Anny; jej oczy są szeroko otwarte, a serce bije jak szalone. Jej z kolei przygląda się z zaciekawieniem Nie-Sława.~ */
  IF ~~ THEN REPLY #52189 /* ~"Przybierz na powrót swój normalny kształt, Ravelo."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 145.3 147.1 148.1
  SAY #52191 /* ~"Nie muszę być brzydka, o piękny. Moja postać nie jest problemem dla mej woli, mogę upleść na nowo jej włókna, tak aby powstał przyjemniejszy dla oka gobelin..." Ravela spogląda na Annę, która nieruchomieje pod wpływem jej przykuwającego wzroku. Wiedźma uśmiecha się widząc strach Anny, po czym oblizuje usta. "Tak..."~ */
  IF ~~ THEN REPLY #52192 /* ~"Ravelo, co..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF WEIGHT #4 ~  Global("Ravel_Cut_Scene","AR0610",4)
~ THEN BEGIN 158 // from:
  SAY #52193 /* ~Ravela zamienia się... w Annę, przybierając jej postawę, rysy twarzy, nawet ma na sobie jej skórzaną kamizelkę... "Czy to jest ta kobieta o niewyszukanych kształtach, której pragniesz, kobieta, której namiętności wiek jeszcze nie złagodził?" Anna... Ravela... porusza ogonem, jak gdyby w oczekiwaniu na coś. "Podejdź, pieść swoimi ustami moje, a ja cię zadowolę."~ */
  IF ~~ THEN REPLY #52194 /* ~"Dobrze..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",2)
~ GOTO 152
  IF ~~ THEN REPLY #52195 /* ~"Nie, Ravelo."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52196 /* ~"Ravelo, skończ z tymi gierkami... nie mam na nie ani czasu ani cierpliwości. Przybierz na powrót swoją własną postać."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from: 151.1 151.3
  SAY #52197 /* ~"Być może... pożądasz kobiety bardziej nieokrzesanej, kobiety o żarliwym ogniu?" Ravela spogląda na Annę, która nieruchomieje pod wpływem jej przykuwającego wzroku. "Być może to właśnie ONA ostrzy twój apetyt..."~ */
  IF ~~ THEN REPLY #52198 /* ~"Ravelo, daj temu spokój. Nie mam czasu na twoje g..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52199 /* ~Zaczekaj, zobacz co się stanie...~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from: 145.4 147.2 148.2
  SAY #52200 /* ~"Nie muszę być brzydka, o piękny. Moja postać nie jest żadnym problemem dla mojej woli, mogę upleść na nowo jej włókna, tak aby powstał przyjemniejszy dla oka gobelin..." Ravela uśmiecha się do ciebie i jej postać zaczyna się zmieniać...~ */
  IF ~~ THEN REPLY #52201 /* ~"Co masz na m..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",5)
StartCutSceneMode()
StartCutSceneEx("0610Cut7",FALSE)
~ EXIT
END

IF WEIGHT #5 ~  Global("Ravel_Cut_Scene","AR0610",5)
~ THEN BEGIN 161 // from:
  SAY #52202 /* ~Ravela przybiera postać... młodej, urodziwej kobiety - WSZYSTKO się w niej zmieniło: jej postawę, rysy twarzy, ubranie... "Czy pragniesz kobiety młodej, o delikatnych rysach, kobiety, której nie naznaczył jeszcze wiek?" Uśmiecha się, jej usta są rubinowoczerwone... kuszące. "Podejdź, pieść swoimi ustami moje, a ja cię zadowolę."~ */
  IF ~~ THEN REPLY #52203 /* ~"Dobrze..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",3)
~ GOTO 152
  IF ~~ THEN REPLY #52204 /* ~"Nie, Ravelo."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52205 /* ~"Ravelo, skończ z tymi gierkami... nie mam na nie ani czasu ani cierpliwości. Przybierz na powrót swoją własną postać."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF WEIGHT #6 ~  Global("Ravel_Cut_Scene","AR0610",6)
~ THEN BEGIN 162 // from:
  SAY #52206 /* ~Mrugasz oczami, a Ravela w tym czasie *przybiera* na powrót swoją dawną postać. "Trudno cię zadowolić! Fuj! I zastanawiają się, dlaczego nasz gatunek składa się z samych samic!"~ */
  IF ~~ THEN REPLY #52207 /* ~"W jakie inne postacie możesz... *wcieliłaś* się?"~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",2)
~ GOTO 163
  IF ~~ THEN REPLY #52208 /* ~"Dosyć... mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 163 // from: 141.1 162.0 165.0 167.0 169.0 171.0 175.0 176.1 182.0 183.0 184.0 241.0
  SAY #52209 /* ~"Może takie jak... Mebbet." Ravela zdaje się być zakłopotana pytaniem. "Nie przypominam sobie wielu takich. Może Ei-Vene? Ani uparta, ani Marta... tak wiele nitek i odgałęzień, tak wiele Raveli... moje postacie wiecznie szyją, naprawiają się i rozwijają."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52210 /* ~"Mebbet? Ty byłaś Mebbet?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Mebbeth")
~ THEN REPLY #52211 /* ~"Mebbet? Ty byłaś Mebbet? Ale... ona nie żyje."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("EiVene","GLOBAL",0)
!Dead("EiVene")
~ THEN REPLY #52212 /* ~"Ty byłaś Ei-Vene? W Kostnicy?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Dead("EiVene")
~ THEN REPLY #52213 /* ~"Ty byłaś Ei-Vene? W Kostnicy? Ale... ona nie żyje."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52214 /* ~"To ty byłaś pomyloną szwaczką z Zakopanej Wioski? Martą?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Marta","GLOBAL",0)
Dead("Marta")
~ THEN REPLY #52215 /* ~"To ty byłaś pomyloną szwaczką z Zakopanej Wioski? Martą? Ale... ona nie żyje."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~~ THEN REPLY #52216 /* ~"Uch... rozumiem. Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 164 // from: 163.0 163.2 163.4
  SAY #52217 /* ~"To mogło być jedno z moich imion... tak?" Ravela wygląda na jeszcze bardziej zakłopotaną, jej czarnożyłe oczy przysłania mgiełka. "Imiona są *trudne* do zapamiętania..." Jej głos staje się ledwie słyszalny.~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Global("Ravel_Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Art_Answer","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52218 /* ~"Mebbet była dla mnie uprzejma i pomogła mi, Ravelo. To znaczy, że TY mi pomogłaś. Dziękuję ci."~ */ GOTO 176
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Global("Ravel_EiVene","GLOBAL",1)
!Dead("EiVene")
~ THEN REPLY #52219 /* ~"Na swój własny sposób Ei-Vene pomogła mi, Ravelo. To znaczy, że TY mi pomogłaś. Dziękuję ci."~ */ GOTO 166
  IF ~  GlobalGT("Marta","GLOBAL",0)
Global("Ravel_Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52220 /* ~"Marta była pomylona, Ravelo, ale nie była nieuprzejma i nie przydatna. Jeśli ty nią byłaś, oznacza to, że nie masz złych zamiarów. Dziękuję ci."~ */ GOTO 170
  IF ~~ THEN REPLY #52221 /* ~"Dlaczego mi pomogłaś, Ravelo?"~ */ GOTO 184
  IF ~~ THEN REPLY #52222 /* ~"Ja... rozumiem. Mam jeszcze kilka pytań do ciebie..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 165 // from: 163.1 163.3 163.5
  SAY #52223 /* ~Ravela mrugnęła oczami... "Tak... w księdze umarłych znajduje się ona. Nie mogę już dłużej korzystać z jej siły..."~ */
  IF ~~ THEN REPLY #52224 /* ~"Jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52225 /* ~"Mam kilka innych pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY #52226 /* ~Niemal bezwiednie Ravela wyciąga do ciebie rękę i przez moment przysiągłbyś, że widzisz szpony Ei-Vene...~ */
  IF ~~ THEN REPLY #52227 /* ~Cofnij się.~ */ GOTO 167
  IF ~~ THEN REPLY #52228 /* ~Stój spokojnie...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52229 /* ~Cofasz się, Ravela mruga oczami, po czym mamrocze do siebie. "Durny zomfie... durny zomfie..."~ */
  IF ~~ THEN REPLY #52230 /* ~"Jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52231 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo."~ */ GOTO 141
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY #52232 /* ~Lewą ręką Ravela wyrywa z głowy włos, zawija go wokół kilku szponów i niczym błyskawica wbija inny szpon w skórę w okolicy jednej z twoich blizn. Nie czujesz niemal nic poza ukłuciem, ale wygląda na to, że Ravela zamierza zacząć cię zszywać.~ */
  IF ~~ THEN REPLY #52233 /* ~Pozwól jej robić swoje.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
SetGlobal("Ravel_EiVene","GLOBAL",2)
~ JOURNAL #52234 /* ~Okazało się, że Ravela i Ei-Vene, osobliwa kobieta-diabelstwo, którą spotkałem w Kostnicy to jedna i ta sama osoba. Kiedy wypytywałem o to Ravelę, ta na moment przeistoczyła się w Ei-Vene (a w każdym razie tak mi się wydawało) i pozszywała moje rany, czyniąc mnie mocniejszym.~ */ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #52235 /* ~Tak jak to było w przypadku Ei-Vene, uczucie jest zadziwiająco bezbolesne, choć nić i szew zdają się zdecydowanie wchodzić w głąb, niemal WEWNĄTRZ ciebie, zarazem niemal nie schodząc z powierzchni twojej skóry. Chwilami szpony Raveli cofają się, a ty czujesz... się lepiej, czujesz się silniejszy. Ravela mamrocze głosem Ei-Vine: "Durny zomfie..."~ */
  IF ~~ THEN REPLY #52236 /* ~"Jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52237 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo."~ */ GOTO 141
END

IF ~~ THEN BEGIN 170 // from: 164.2
  SAY #52238 /* ~W chwili, gdy wypowiadasz jej imię, twarz Raveli zdaje się *przesuwać*... jej niebieska skóra zaczyna opadać, dopóki nie pojawia się na jej twarzy ten sam kwaśny wyraz o konsystencji twarogu, jaki widziałeś na twarzy Mortego. "Daj już spokój... nie bądź taki trudny dla Marty..." Unosi szpon wskazującego palca jak skalpel i zbliża się do ciebie. "Ty fałszywy, wstrętny truposzu."~ */
  IF ~~ THEN REPLY #52239 /* ~Cofnij się.~ */ GOTO 171
  IF ~~ THEN REPLY #52240 /* ~Stój spokojnie...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 172
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #52241 /* ~Cofasz się, Ravela mruga oczami, po czym mamrocze do siebie; rysy jej twarzy *przesuwają* się na powrót na swoje miejsce... ale wciąż wygląda ona na oszołomioną, jak gdyby miała problem z orientowaniem się w otoczeniu. "Wstrętny truposz, ech, Marto...? tak, Marto, on jest..."~ */
  IF ~~ THEN REPLY #52242 /* ~"Jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52243 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo."~ */ GOTO 141
END

IF ~~ THEN BEGIN 172 // from: 170.1
  SAY #52245 /* ~Ravela kłuje cię swoim brudnym szponem w żołądek, po czym przesuwa go brutalnie w dół, naśladując ruch piły... nie czujesz jednak bólu. Widzisz, jak twoja skóra rozchodzi się z wolna - z rany nie wypływa ani kropla krwi. "Spójrz na to, Marto... spójrz na to..."~ */
  IF ~~ THEN REPLY #52246 /* ~Pozwól jej robić swoje.~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 173
END

IF ~~ THEN BEGIN 173 // from: 172.0
  SAY #52247 /* ~Wolną rękę Ravela zatapia w twojej klatce piersiowej, gdzie zwija twoje wnętrzności w pętlę jak przędzę, i *wydziera* je z twojego żołądka... gdy jest po wszystkim, twój żołądek zasklepia się, jak gdyby cofnął się czas. Marta... Ravela... wznosi twoje wnętrzności ku górze jak trofeum. "Piękne, piękne, ech, Marto...? Nie powinno się połykać takich rzeczy, nie, nie..."~ */
  IF ~~ THEN REPLY #52248 /* ~"Uch... mogę je otrzymać z powrotem, proszę? Mogę ich później potrzebować."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
GiveItemCreate("Intest2",Protagonist,3,0,0)
~ GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #52249 /* ~Wiedźma wręcza ci tę lepką masę... pomimo świeżości, płyny otaczające twoje wnętrzności wyschły jak żywica. Wygląda to bardziej na pętlę błyszczącej... liny.~ */
  IF ~~ THEN REPLY #52250 /* ~"Uch... dzięki. Nigdy o tym nie zapomnę."~ */ DO ~SetGlobal("Ravel_Marta","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ JOURNAL #52251 /* ~Okazało się, że Ravela i Marta, pomylona szwaczka, którą spotkałem w Zakopanej Wiosce to jedna i ta sama osoba. Kiedy zacząłem ją o to wypytywać, Ravela na moment przeistoczyła się w Martę (a w każdym razie tak mi się wydawało) i wyrwała mi moje jelita, twierdząc, że w takiej formie będą dla mnie talizmanem o ogromnej mocy. Zauważyłem, że ostatnimi czasy pojawia się na mojej drodze mnóstwo ludzi, którzy bez cienia zażenowania sięgają w głąb mojego ciała i wywlekają stamtąd rzeczy, które, moim skromnym zdaniem, NIE POWINNY być stamtąd wyciągane, przy czym osobnikom tym wszystkie takie wyczyny uchodzą zupełnie bezkarnie.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #52252 /* ~Marta... Ravela... z wolna kiwa głową. "I nie powinien, czyż nie, Marto? Tak... tak, powinien, Marto. Potężna magia kryje się we wnętrznościach nieśmiertelnika, tak... nie tak jak w ząbczętach... czy oczętach..."~ */
  IF ~~ THEN REPLY #52253 /* ~"Jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52254 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo."~ */ GOTO 141
END

IF ~~ THEN BEGIN 176 // from: 164.0
  SAY #52255 /* ~W momencie, gdy wypowiadasz imię Mebbet, cała krew odpływa z twarzy Raveli, aż staje się ona szara i popielata - dosłownie. Wygląda, jak gdyby kolor po prostu... znikł. "I kim mógłbyś być, hmmmnnn? Czy twoja ścieżka prowadzi cię z powrotem pod drzwi Starej Mebbet, moje dziecko...?"~ */
  IF ~~ THEN REPLY #52256 /* ~"Tak, z pewnością... Mebbet... ja, uch, przybyłem, aby nauczyć się więcej Sztuki. Możesz mnie jeszcze czegoś nauczyć?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 177
  IF ~~ THEN REPLY #52257 /* ~"Ni tym razem... jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #52258 /* ~"Fuj! Jestem tylko znachorką, moje dziecko, moc jakiej przewodzi Sztuka przerasta mnie o wiele..."~ */
  IF ~~ THEN REPLY #52259 /* ~"Nie... wydaje mi się. Myślę, że możesz mnie nauczyć więcej niż ci się wydaje. O wiele więcej."~ */ GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #52260 /* ~Wtedy jak echo powraca pytanie: "Chcesz nauczyć się Sztuki, chcesz? *Dlaczego* chcesz nauczyć się takich rzeczy?"~ */
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",1)
~ THEN REPLY #52261 /* ~Powtórz: "Ponieważ chcę wiedzieć."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 179
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",2)
~ THEN REPLY #52262 /* ~Powtórz: "Ponieważ mogę tego potrzebować, aby rozwikłać tajemnicę tego kim jestem."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 180
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",3)
~ THEN REPLY #52263 /* ~Powtórz: "Ponieważ potrzebuję mocy."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 181
  IF ~~ THEN REPLY #52264 /* ~"Powody zatrzymam dla siebie."~ */ GOTO 183
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #52265 /* ~Ravela... Mebbet... naśmiewa się. "To nie jest elementarz małego dziecka, ani zbiór zasad mistrza... to jest *Sztuka*, moje dziecko. Nauczę cię, ale musisz zachować zdrowy rozsądek..." Pochyla się blisko ku tobie. "Słuchaj..."~ */
  IF ~~ THEN REPLY #52266 /* ~Słuchaj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~Okazało się, że Ravela i Mebbet, uprzejma znachorka, którą spotkałem na Placu Szmaciarzy to jedna i ta sama osoba. Kiedy zacząłem ją o to wypytywać, Ravela na moment przeistoczyła się w Mebbet (a w każdym razie tak mi się wydawało) i powiedziała mi coś... Coś, czego nie jestem sobie w stanie przypomnieć, ale mam wrażenie, że sprawiła, że moje zmysły stały się bardziej wyczulone na życie Sfer i jestem teraz silniej wrośnięty w otaczający mnie świat.~ */ GOTO 182
  IF ~~ THEN REPLY #52267 /* ~"Nie, myślę, że nie chcę usłyszeć tego, co masz mi do powiedzenia... być może innym razem."~ */ GOTO 241
END

IF ~~ THEN BEGIN 180 // from: 178.1
  SAY #52269 /* ~Po chwili, Ravela... Mebbet... kiwa głową. "Sztuka może się okazać pomocna albo nie, dlatego nie wolno ci polegać na niej w każdej trudnej sytuacji." Wzdycha. "Moje dziecko, najprawdopodobniej przysporzy ci to jedynie kolejną rzecz do wyjaśnienia..." Pochyla się blisko ku tobie. "Ale jeśli chcesz wiedzieć, posłuchaj..."~ */
  IF ~~ THEN REPLY #52270 /* ~Słuchaj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~Okazało się, że Ravela i Mebbet, uprzejma znachorka, którą spotkałem na Placu Szmaciarzy to jedna i ta sama osoba. Kiedy zacząłem ją o to wypytywać, Ravela na moment przeistoczyła się w Mebbet (a w każdym razie tak mi się wydawało) i powiedziała mi coś... Coś, czego nie jestem sobie w stanie przypomnieć, ale mam wrażenie, że sprawiła, że moje zmysły stały się bardziej wyczulone na życie Sfer i jestem teraz silniej wrośnięty w otaczający mnie świat.~ */ GOTO 182
  IF ~~ THEN REPLY #52271 /* ~"Nie, myślę, że nie chcę usłyszeć tego, co masz mi do powiedzenia... być może innym razem."~ */ GOTO 241
END

IF ~~ THEN BEGIN 181 // from: 178.2
  SAY #52272 /* ~"Fuj! To niezdrowe pragnienie, ponieważ drabina Sztuki zawsze będzie ci przypominać, że tuż nad tobą znajduje się kolejny szczebel, oraz, że znajduje się na nim gromada ludzi i rzeczy. Zawsze znajdzie się ktoś lepszy od ciebie, kto da *ci* nauczkę, jeśli będziesz się za bardzo wiercił." Pochyla się blisko ku tobie. "Ale jeśli chcesz wiedzieć, posłuchaj..."~ */
  IF ~~ THEN REPLY #52273 /* ~Słuchaj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,120000)
~ JOURNAL #52268 /* ~Okazało się, że Ravela i Mebbet, uprzejma znachorka, którą spotkałem na Placu Szmaciarzy to jedna i ta sama osoba. Kiedy zacząłem ją o to wypytywać, Ravela na moment przeistoczyła się w Mebbet (a w każdym razie tak mi się wydawało) i powiedziała mi coś... Coś, czego nie jestem sobie w stanie przypomnieć, ale mam wrażenie, że sprawiła, że moje zmysły stały się bardziej wyczulone na życie Sfer i jestem teraz silniej wrośnięty w otaczający mnie świat.~ */ GOTO 182
  IF ~~ THEN REPLY #52274 /* ~"Nie, myślę, że nie chcę usłyszeć tego, co masz mi do powiedzenia... być może innym razem."~ */ GOTO 241
END

IF ~~ THEN BEGIN 182 // from: 179.0 180.0 181.0
  SAY #52275 /* ~Mebbet... Ravela... coś powiedziała szeptem i czujesz się *inaczej,* jakoś zmieniony. Powiedziała ci coś strasznego, coś na temat sposobu w jaki działają Sfery, ale twój umysł zamknął w sobie jej słowa i nie możesz sobie ich przypomnieć. Samo myślenie o nich sprawia, że twoje serce tłucze się jak oszalałe... Ravela powiedziała ci coś takiego, że brak ci pewności, czy *ktokolwiek* miał kiedykolwiek to usłyszeć. Wiedźma przygląda ci się uważnie.~ */
  IF ~~ THEN REPLY #52276 /* ~"Ja-jakie... inne postacie przybrałaś do tej pory, Ravelo?"~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 163
  IF ~~ THEN REPLY #52277 /* ~"Ja... ja... mam jeszcze kilka pytań do ciebie, Ravelo."~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 183 // from: 178.3
  SAY #52278 /* ~"Cóż, jeśli twoje powody mają pozostać znane tylko tobie, więc i moja *wiedza* tylko mnie znana pozostanie. Nie będę uczyła kogoś, kto jest skryty wobec swojego nauczyciela... jedynie... zło... pochodzi... z takiej ścieżki." Mebbet... Ravela... mruga oczami, jak gdyby chciała przystosować się na nowo do sytuacji.~ */
  IF ~~ THEN REPLY #52279 /* ~"Jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52280 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo."~ */ GOTO 141
END

IF ~~ THEN BEGIN 184 // from: 164.3
  SAY #52281 /* ~"Nie mogę ci NIE pomóc, mój drogi człowieku... i taka będzie na zawsze prawda, niezależnie od tego, ile będzie Ravel... zgodzą się wszystkie co do tego."~ */
  IF ~~ THEN REPLY #52282 /* ~"Jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52283 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo."~ */ GOTO 141
END

IF ~~ THEN BEGIN 185 // from: 141.5 141.6
  SAY #52284 /* ~"Próbowałam pomóc Pani, ale ona nie przyjęła spokojnie mej pomocy."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #52285 /* ~"Co masz na myśli?"~ */ GOTO 188
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52286 /* ~"Co masz na myśli?"~ */ GOTO 187
  IF ~~ THEN REPLY #52287 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 186 // from: 141.3
  SAY #52288 /* ~"Próbowałam pomóc Pani, ale ona nie przyjęła spokojnie mej pomocy."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 161
END

IF ~~ THEN BEGIN 187 // from: 185.1
  SAY #52289 /* ~"Moja oferta pomocy nie została mile przyjęta. *Próbowałam* ją UWOLNIĆ; Sigil to KLATKA, miasto Drzwi i Zamków, to dla niej więzienie. Z pewnością tak jest, nieprawdaż? W inny razie po cóż nazywać Sigil 'Klatką?' A kto jest uwięziony w tej klatce? Pani! Więzienie tak małe dla kogoś tak wielkiego. Zadawanie kobiecie udręki w taki sposób jest niesprawiedliwe, błędne, nie do przyjęcia!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 507
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #52290 /* ~"Moja oferta pomocy nie została mile przyjęta. *Próbowałam* ją UWOLNIĆ; Sigil to KLATKA, miasto Drzwi i Zamków, to dla niej więzienie. Z pewnością tak jest, nieprawdaż? W inny razie po cóż nazywać Sigil 'Klatką?' A kto jest uwięziony w tej klatce? Pani! Więzienie tak małe dla kogoś tak wielkiego. Zadawanie kobiecie udręki w taki sposób jest niesprawiedliwe, błędne, nie do przyjęcia!"~ */
  IF ~~ THEN REPLY #52291 /* ~"Ja... rozumiem."~ */ GOTO 189
  IF ~~ THEN REPLY #52292 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #52293 /* ~"Próbowałam rozerwać Klatkę, uwolnić Panią." Wykonuje ruch, jakby odganiała ptaki, na jej twarzy znaczy się ból, gdy płoszy niewidzialne ptaki. "Sio, sio, zasmucona kobieto, niech pierścień Sigil pęknie, abyś mogła odlecieć daleko od jego brudnych ulic i tych głupich dabusów, które nie śmią wypowiadać słów w obawie, że ich myśli zostaną podsłuchane!" Ravela z wolna przestaje płoszyć niewidzialne ptaki i wydaje z siebie powolne westchnienie.~ */
  IF ~~ THEN REPLY #52294 /* ~"Mów dalej..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 190
  IF ~~ THEN REPLY #52295 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #52296 /* ~"Zanim mogłam skończyć, znalazłam się tutaj, niewiele pamiętając z podróży w to miejsce... wiele mi umknęło z pamięci, wielem zapomniała, tak to było... jest? Było?" Ravela uśmiecha się pokazując pożółkłe zęby. "Zaniki pamięci okazały się ukojeniem dla mych starych kości. Dużo zapomniałam... mam szczęście, że wciąż cię pamiętam."~ */
  IF ~~ THEN REPLY #52297 /* ~"Ravelo, ale... DLACZEGO próbowałaś uwolnić *Panią Bólu* z Sigil?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52299 /* ~Okazuje się, że Ravelę wtrącono do labiryntu za to, że próbowała uwolnić Panią Bólu z Sigil... Czy to faktycznie taka wielka zbrodnia? W każdym razie trudno uważać takie intencje za niegodziwe... Ravela powiedziała,. że nie potrafi znieść, kiedy ktokolwiek jest więziony czy przetrzymywany gdziekolwiek wbrew swojej woli.~ */ GOTO 191
  IF ~~ THEN REPLY #52298 /* ~"Rozumiem. Mam jeszcze kilka pytań do ciebie..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #52300 /* ~Głos Raveli cichnie. "Mam żal do wszystkich, nawet do Mocy, za to, że jestem więziona i uważam, że wszyscy... czy to kamienie, brzegi morza czy milczące niewiasty... powinni być WOLNI. Niektórzy mówią, że brak mi rozumu. Mówią, po co ryzykować taką rzecz?"~ */
  IF ~~ THEN REPLY #52301 /* ~"Zgadzam się z tobą. Pozwoliłbym Pani Bólu gnić w swojej klatce."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_2","GLOBALGood",-2)
~ GOTO 192
  IF ~~ THEN REPLY #52302 /* ~"Uważam, że postąpiłaś słusznie, starając się ją uwolnić, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_2","GLOBALGood",2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~~ THEN REPLY #52303 /* ~Kłamstwo: "Uważam... że postąpiłaś słusznie, starając się ją uwolnić, Ravelo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52304 /* ~"Czy to właśnie próbowałaś uczynić, gdy spotkaliśmy się tak dawno temu? Próbowałaś mnie uwolnić?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52305 /* ~"Czy to właśnie próbowałaś uczynić, gdy spotkaliśmy się tak dawno temu? Próbowałaś mnie uwolnić?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #52306 /* ~"Są rzeczy, których nie mogę znieść, i nie będę przepraszać, mój drogi pół-człowieku - mimo to... choć nie mogę zostawić rzeczy samym sobie... wiele jest żywotów i marzeń, które spoczywają w kawałkach na ziemi. Gdybym zostawiła cię w spokoju, być może twoje życie byłoby o wiele lepsze..."~ */
  IF ~  Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52307 /* ~"Czy to właśnie próbowałaś uczynić, gdy spotkaliśmy się tak dawno temu? Próbowałaś mnie uwolnić?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52308 /* ~"Być może. Mam jeszcze kilka pytań do ciebie, Ravelo..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 193 // from: 191.1 191.2
  SAY #52309 /* ~"Cieszę się, że nasze umysły są podobne i że podobnie postrzegamy tę sprawę. Mimo to... choć nie mogę zostawić rzeczy samym sobie... wiele jest żywotów i marzeń, które spoczywają w kawałkach na ziemi."~ */
  IF ~~ THEN REPLY #52310 /* ~"Przynajmniej próbowałaś, Ravelo, i nie widzę nic złego w twoich intencjach."~ */ GOTO 194
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52311 /* ~"A zatem ty jesteś winna, Ravelo? Przynajmniej *próbowałaś,* podczas gdy innym zabrakło by odwagi. Nie widzę nic złego w twoich intencjach - tak naprawdę, widzę jedynie siłę."~ */ DO ~IncrementGlobalOnceEx("GLOBALRavel_Flatter_2","GLOBALRavel_Flatter",2)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 195
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52312 /* ~"Czy to właśnie próbowałaś uczynić, gdy spotkaliśmy się tak dawno temu? Próbowałaś mnie uwolnić?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52313 /* ~"Czy to właśnie próbowałaś uczynić, gdy spotkaliśmy się tak dawno temu? Próbowałaś mnie uwolnić?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52314 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #52315 /* ~"Przynajmniej *ktoś* sądzi podobnie."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52316 /* ~"Czy to właśnie próbowałaś uczynić, gdy spotkaliśmy się tak dawno temu? Próbowałaś mnie uwolnić?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52317 /* ~"Czy to właśnie próbowałaś uczynić, gdy spotkaliśmy się tak dawno temu? Próbowałaś mnie uwolnić?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52318 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 195 // from: 193.1
  SAY #52319 /* ~Ravela przygląda ci się przez chwilę w milczeniu, po czym rechocze do siebie. "Takie słodkie słowa! Jakżeż TĘSKNIŁAM za tobą, mój drogi pół-człowieku! Twój śpiew jest taki słodki, że i kamień by dla ciebie zapłakał!"~ */
  IF ~~ THEN REPLY #52320 /* ~"Nie ma nic złego w mówieniu prawdy. Mam jeszcze kilka pytań do ciebie, Ravelo..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 196 // from: 191.3 191.4 192.0 193.2 193.3 194.0 194.1
  SAY #52321 /* ~"Całkiem możliwe, możliwe całkiem. Życiowe łańcuchy i strach przed śmiercią mogły były zacisnąć się zbyt mocno na człowieku, którego... znałam? Znałam wtedy, hmmmm-hmmmm?" Ravela oplata jeden ze swoich postrzępionych, szarych włosów wokół palca. "Nie ma u Raveli upodobania do łańcuchów i klatek..."~ */
  IF ~~ THEN REPLY #52322 /* ~"Ach, więc byłem w pewien sposób uwięziony w klatce? Czy też skuty łańcuchami? Wygląda mi na to, że twoje wspomnienia wracają, Ravelo..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #52323 /* ~"Taak..." Ravela zamyka na chwilę powieki, a jej wzrok staje się tępy, jak gdyby otrzymała mocny cios. Szary włos owija się mocno wokół jej szpona, tak mocno, że wydaje się, że zostanie on wyrwany z czaszki. "Być może... wpadłeś w pułapkę? Ale nie przetrzymywano cię w zwykłej klatce..."~ */
  IF ~~ THEN REPLY #52324 /* ~"Masz jakiekolwiek pojęcie *co* mnie więziło?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52325 /* ~Ravela przypuszcza, że za czasów mojej pierwszej wizyty u niej, w którymś z moich poprzednich żywotów, znajdowałem się pod presją jakiejś groźby, albo o krok od pułapki czy uwięzienia, ale teraz Ravela nie jest już w stanie powiedzieć mi, o co dokładnie chodziło. Wspomniała tylko coś ogólnikowo o jakiejś obietnicy, a potem wyrwała sobie z głowy kilka włosów i podarowała mi je, twierdząc, że starczy to za wszelką odpowiedź.~ */ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #52326 /* ~Ravela wygląda na zmieszaną, jej twarz *wykręca się,* jak gdyby walczyła z jakąś nieprzyjemną myślą. "Zapomniałam... być może o obietnicy...? Nie, nie..." Szary włos owija się mocno wokół jej szpona i ku swojemu zaskoczeniu słyszysz *trzaśnięcie*, jak gdyby złamała się gałązka. Ravela wyrywa włos z głowy. Wiedźma syczy ze złości, a z głowy wypełza strużka czarnej krwi.~ */
  IF ~~ THEN REPLY #52327 /* ~"Ravelo...? Wszystko w porządku?"~ */ DO ~GiveItemCreate("RavelHai",Protagonist,1,0,0)
SetGlobal("Ravel_Hair","GLOBAL",1)
AddexperienceParty(90000)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #52328 /* ~"Nie powiem nic WIĘCEJ..." Twarz Raveli wykrzywia się z bólu, jej szpon pokryty jest szarym włosem o zakrwawionej końcówce - nawet po wyrwaniu z głowy, włos wygląda na postrzępionego i sztywnego. "Nie wiem i żadną wiedzą się nie podzielę!" Spogląda w dół na szary włos okręcony wokół swojego szpona, po czym syczy i rzuca nim w ciebie. "Weź to i pozostaw przeszłość w spokoju, pół-człowieku!"~ */
  IF ~~ THEN REPLY #52329 /* ~"Dobrze więc, Ravelo; w takim razie nie ma już nic do powiedzenia w tej sprawie. "Mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 200 // from: 141.2
  SAY #52330 /* ~Ravela wskazuje ruchem ręki na wszystko, co ją otacza. "Niegdyś był to labirynt z martwego kamienia, bez wyrazu, ale gdy tu przybyłam, w moich włosach zaplątane było małe czarne nasionko. Zakiełkowało ono pośród kamieni, wzrastając, wzrastając, aż oplotło labirynt grubym szalem, jak rozpuszczone włosy staruchy... i tak oto ten labirynt stał się MOIM ogrodem."~ */
  IF ~~ THEN REPLY #52331 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 201 // from: 141.7
  SAY #52404 /* ~Ravela marszczy czoło w geście dezaprobaty, jej niebieskawa skóra wykręca się jak szmata. "Czy Ravela zna *Sztukę*?! Zapomniałam więcej ze Sztuki niż *ty*..." Wiedźma kłuje cię jednym ze swoich szponów. "Będziesz kiedykolwiek." Kłuje cię po raz kolejny. "Wiedział."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #52405 /* ~"Możesz mnie więc nauczyć czegoś ze Sztuki?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 203
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #52406 /* ~"Możesz mnie więc nauczyć czegoś ze Sztuki?"~ */ GOTO 202
  IF ~~ THEN REPLY #52407 /* ~"Nieważne więc. Mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 202 // from: 201.1
  SAY #52408 /* ~Ravela zwęża swoje czarnożyłe oczy, bacznie ci się przyglądając. "Być może ktoś taki jak ty mógłby mnie przekonać... chociaż ktoś inny NIE miałby takiej szansy, ani podarunku jaki oferuję. Jesteś początkującym uczniem sztuk magicznych, czy też mam przed sobą wypróbowanego, prawdziwego i zmęczonego...? Nie-zmęczonego mistrza?"~ */
  IF ~~ THEN REPLY #52409 /* ~"Jestem początkującym uczniem."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52410 /* ~"Jestem początkującym uczniem, piękna Ravelo."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52411 /* ~"Mistrzem sztuki."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52412 /* ~"Mistrzem sztuki, piękna Ravelo."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52413 /* ~"Naprawdę trudno mi powiedzieć... moje wysiłki zdają się być na przemian chwalone i wyśmiewane."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 212
  IF ~~ THEN REPLY #52414 /* ~"Być może będę mógł pobrać nauki innym razem. Mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 203 // from: 201.0
  SAY #52415 /* ~Ravela parska. "Ha! Nie będę dzieliła mojej wiedzy z nikim innym, jak tylko PRAWDZIWYM praktykiem i nic nie zmieni mojego zdania, nawet ty."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52416 /* ~"Piękna Ravelo, proszę tylko, abyś mnie nauczyła niektórych z twoich ścieżek... nie proszę o nic więcej, jak tylko o krótkie wejrzenie w głęboka studnię wiedzy, jaką bez wątpienia posiadasz."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52417 /* ~"Dobrze więc. Mam jeszcze kilka pytań..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 204 // from: 202.1 202.3 203.0
  SAY #52418 /* ~"Pochlebca... a mimo to twoje słowa rozgrzewają mnie." Głos Raveli zmienia się, zmienia się jego ton, jakby ktoś szarpał za struny instrumentu. "Wiele się nauczyłam dbając o ten ogród. Uroki i zaklęcia, oddzielone od kolców..." Zaczyna sobie cicho nucić. "...rymujące się, kołyszące się drogi stale harmonijnego współbrzmienia i ruchów, które przyprowadzają ci na pomoc dzikie róże... słuchaj, gałęzie będą o tym mówić."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52419 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,30000)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52420 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,60000)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52421 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52422 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52423 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,120000)
~ GOTO 208
END

IF ~~ THEN BEGIN 205 // from: 202.0 202.2
  SAY #52424 /* ~"Niech będzie..." Głos Raveli zmienia się, zmienia się jego ton, jakby ktoś szarpał za struny instrumentu. "Wiele się nauczyłam dbając o ten ogród. Uroki i zaklęcia, oddzielone od kolców..." Zaczyna sobie cicho nucić. "...rymujące się, kołyszące się drogi stale harmonijnego współbrzmienia i ruchów, które przyprowadzają ci na pomoc dzikie róże... słuchaj, gałęzie będą o tym mówić."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52425 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52426 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52427 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52428 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52429 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
END

IF ~~ THEN BEGIN 206 // from: 204.0 205.0 212.0
  SAY #52430 /* ~W chwili, gdy zamykasz oczy i wsłuchujesz się, przechodzi przez ciebie drżenie, jakby kolczaste węże wiły się pod twoją skórą. Kiedy otwierasz oczy, znajdujesz na dłoni dziwne nasionko o czarnych kolcach. Nie masz pojęcia skąd się tam wzięło. Ravel przygląda ci się uważnie. "Weź to nasionko. Ucz się od niego."~ */
  IF ~~ THEN REPLY #52431 /* ~"Dobrze więc... mam jeszcze do ciebie kilka pytań, Ravelo."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 207 // from: 204.1 205.1
  SAY #52432 /* ~W chwili, gdy zamykasz oczy i wsłuchujesz się, przechodzi przez ciebie wielkie drżenie, jakby tuziny kolczastych węży wiły się pod twoją skórą. Kiedy otwierasz oczy, znajdujesz na dłoni kilka dziwnych nasion o czarnych kolcach. Nie masz pojęcia skąd się tam wzięły. Ravel przygląda ci się uważnie. "Weź te nasiona. Ucz się od nich."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52433 /* ~"Dobrze więc... mam jeszcze do ciebie kilka pytań, Ravelo."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52434 /* ~"Dobrze więc... mam jeszcze do ciebie kilka pytań, Ravelo."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 208 // from: 204.2 204.3 204.4 205.2 205.3 205.4
  SAY #52435 /* ~W chwili, gdy zamykasz oczy i wsłuchujesz się, przechodzi przez ciebie wielkie drżenie, jakby tuziny kolczastych węży wiły się pod twoją skórą. W momencie, gdy myślisz, że ból jest ponad twoje siły, nagle, instynktownie, zaczynasz nucić tę samą melodia co Ravela... i ból odpływa. Z oddali labiryntu dochodzą cię trzaski leśnych stworów, odpowiadających niejako na twoje wezwanie.~ */
  IF ~~ THEN REPLY #52436 /* ~Nie przestawaj nucić.~ */ DO ~SetGlobal("Ravel_Teach","GLOBAL",2)
~ GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #52437 /* ~Ravela przygląda ci się z iskierką zaciekawienia w swoich czarnożyłych oczach. "Taka *moc*..." Wydaje z siebie miękkie syknięcie, jakby z zadziwienia, i jej usta rozszerzają się w uśmiechu. "Dotyka wszystkiego, co ją usłyszy. Jesteś potężny, mój drogi człowieku, tak potężny... pewnego dnia nawet Sfery ugną się wobec twojej woli..."~ */
  IF ~~ THEN REPLY #52438 /* ~"Nie pragnę tego, Ravelo. Wielu jest tych, którzy kroczyliby tą ścieżką, ale nie ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_1","GLOBALGood",2)
~ GOTO 210
  IF ~~ THEN REPLY #52439 /* ~"Dzień, w którym Sfery ugną się przede mną, jest bliski, Ravelo. Im więcej wraca moich wspomnień, tym potężniejsza staje się moja moc, aż będzie tak wielka, że nic mnie nie powstrzyma."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_1","GLOBALGood",-2)
~ GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0 209.1
  SAY #52440 /* ~Ravela przytakuje, po czym ruchem głowy wskazuje na twoją dłoń, która ku twojemu zaskoczeniu zawiera pewną liczbę nasion o czarnych kolcach. "Weź te nasiona. Wykorzystaj je zgodnie ze swoją wolą... a do tego dodaję jeszcze podarunek." Wyrywa sobie z głowy włos, bierze garść nasion, kładzie je na swojej dłoni i zgniata. Wąska strużka przyczernionej krwi sączy się z jej dłoni, ale kiedy ją otwiera, nie ma na niej żadnej rany... jedynie naszyjnik z czarnych kolców nanizany na kosmyk szarych włosów Raveli. "Weź go; *ze* mnie on zrobion i dobrze służyć ci będzie."~ */
  IF ~~ THEN REPLY #52441 /* ~Weź nasiona i dziwny, kolczasty amulet.~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBChrm",Protagonist,1,0,0)
~ JOURNAL #52442 /* ~Ravela nauczyła mnie trochę Sztuki, a ja w tym samym czasie wypróbowałem swoje umiejętności w czarnokolcym labiryncie i wyszło mi to tak dobrze, że Trigitowie, drzewne stworzenia, odpowiedzieli na moje wezwanie. Wydarzenie to wywarło bardzo duże wrażenie na Raveli. Wiedźma dała mi dodatkowy amulet i powiedziała mi, że w obrębie labiryntu znajduje się sekretny obszar, do którego mogę dotrzeć, jeżeli będę miał przy sobie czarnokolce nasiona.~ */ GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #52444 /* ~"Zachowaj te nasiona, drogi człowieku... nie zużywaj ich wszystkich, bo mogą się okazać bardziej pomocne w *innych* miejscach tego labiryntu... ale jeśli potężny jesteś, znajdziesz te miejsca."~ */
  IF ~~ THEN REPLY #52445 /* ~"Dobrze więc... mam jeszcze do ciebie kilka pytań, Ravelo."~ */ GOTO 141
END

IF ~~ THEN BEGIN 212 // from: 202.4
  SAY #52446 /* ~"Widzę, że jesteś kimś, kto skrada się ścieżką środka podczas rozmowy z innymi. Takiej ścieżce brak jest pewności..." Ravela przeciera oczy, patrząc cały czas na ciebie. "Powiedziałabym, że jesteś nieopierzonym magiem, ale masz pewien potencjał, który musi się dopiero rozwinąć. Dam ci to... szzz... zamknij oczy, słuchaj..."~ */
  IF ~~ THEN REPLY #52447 /* ~Zamknij oczy i słuchaj.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
END

IF ~~ THEN BEGIN 213 // from: 106.8 141.9
  SAY #52448 /* ~"Zaczekaj..." Głos Raveli zniża się do cichego syku, podobnego do tego jaki wydaje wąż. "WCIĄŻ pozostało ci do zadania najważniejsze pytanie, mój drogi człowieku. Przyszło ci już ono do głowy?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52449 /* ~"Nie... o jakim pytaniu mówisz?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 214
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #52450 /* ~"Tak... muszę wiedzieć jak się wydostać z tego miejsca. Znasz odpowiedź na to pytanie?"~ */ GOTO 215
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52451 /* ~"Tak... muszę wiedzieć jak się wydostać z tego miejsca. Znasz odpowiedź na to pytanie?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #52452 /* ~"'Ravelo, czy wiesz, jak się wydostać z tego pięknego ogrodu,' tak musisz zapytać - zapytaj o to, dobrze?" Zachęca cię jednym ze swoich szponów, jej przekrwione oczy błyszczą. "No dalej, no dalej."~ */
  IF ~~ THEN REPLY #52453 /* ~"Ravelo... jak mam się wydostać z twojego pięknego ogrodu?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 213.1 213.2 214.0
  SAY #52454 /* ~"Znam odgałęzienia tego miejsca, zakręty, uskoki i podkopy. Chociaż nie ma tu wyjść, można stąd wyjść, jeśli się chce."~ */
  IF ~~ THEN REPLY #52455 /* ~"A więc *WIESZ* jak się stąd wydostać?"~ */ DO ~SetGlobal("Ravel_Curst_Portal","GLOBAL",1)
~ GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #52456 /* ~"Opleć wokół siebie ręce jak gałęzie, niech oplotą twoją pierś jak klatka. Zrób krok w ciemność spod ściany labiryntu, a twoje ciało przeniesie się do innej klatki - proste przejście, ale NIE będzie odwrotu, kiedy postawiony zostanie ostatni krok. Tak więc WEŹ to pod uwagę i zanim na ten krok się zdecydujesz, WEŹ wszystko, czego potrzebować będziesz."~ */
  IF ~~ THEN REPLY #52457 /* ~"Która ściana labiryntu prowadzi do wyjścia?"~ */ GOTO 217
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #52458 /* ~"Która, pytanie postawione wiedźmie... która? Jedna ze ścian wie, nie ja. Nie pamiętam, która, zaś ściany labiryntu niewiele mają do powiedzenia w tej sprawie."~ */
  IF ~~ THEN REPLY #52459 /* ~"Wiedziałaś jak wyjść? Przez cały ten czas? To... dlaczego nie wyjdziesz?"~ */ GOTO 218
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #52460 /* ~"Po co pozostawać skoro można wyjść, oto twoje pytanie do mnie?" Twarz Raveli wykrzywia uśmiech, ukazujący rząd kłów. "Obracam pytanie i odsyłam je z powrotem do ciebie. Odpowiedź nie polega na pozostaniu, czy wyjściu, ale leży w przyczynach i skutkach, mój drogi pół-człowieku."~ */
  IF ~~ THEN REPLY #52461 /* ~"Nie *chcesz* wyjść?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #52462 /* ~"To jest *jakaś* chęć, dawna chęć, ale nie obecna chęć i coraz więcej nie, nic, nie-chęć. Cóż potrzeba mi z tego, co znajduje się poza moimi kolczastymi murami? Jest tam okrutny, postrzępiony świat, a Ravela wyciągnęła już *wystarczającą liczbę* jego drzazg ze swej skóry."~ */
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",3)
~ THEN REPLY #52463 /* ~"Oddałaś mi wielką przysługę, piękna Ravelo. Dziękuję ci, że wysłuchałaś mojej prośby i podzieliłaś się ze mną wiedzą."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 220
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52464 /* ~"A zatem... dziękuję ci, Ravelo. Muszę cię pożegnać."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52465 /* ~"A zatem... dziękuję ci, Ravelo. Muszę cię pożegnać."~ */ GOTO 230
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #52466 /* ~Ravela wykrzywia twarz w uśmiechu, po czym cicho rechocze. "Ach... to *ja* ci dziękuję, mój drogi człowieku. Od dawna już tak słodkie pochlebstwo nie pojawiło się w tym labiryncie... chcę dać ci podarunek, mój śpiewający ptaku."~ */
  IF ~~ THEN REPLY #52467 /* ~"Nie trzeba żadnego podarunku, piękna Ravelo."~ */ GOTO 221
  IF ~~ THEN REPLY #52468 /* ~"Podarunek? Z przyjemnością przyjmę każdy prezent, jaki zechcesz mi ofiarować."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 223
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #52469 /* ~"Twój sprzeciw nie ma tu racji bytu, śpiewający ptaku. Szzz... Zdradzę ci tajemnicę..."~ */
  IF ~~ THEN REPLY #52470 /* ~"Nie chcę się powtarzać, ale proszę: nie trzeba żadnego podarunku, piękna Ravelo."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 222
  IF ~~ THEN REPLY #52471 /* ~"Dobrze..."~ */ GOTO 223
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #52472 /* ~"Niech będzie..." Ravel wydaje z siebie miękkie syknięcie, jakby była rozczarowana. "Nie ofiaruję dzisiaj żadnego podarunku..."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52473 /* ~"A zatem... dziękuję ci, Ravelo. Muszę cię pożegnać."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52474 /* ~"A zatem... dziękuję ci, Ravelo. Muszę cię pożegnać."~ */ GOTO 230
END

IF ~~ THEN BEGIN 223 // from: 220.1 221.1
  SAY #52475 /* ~"Słuchaj mnie więc... zamknij oczy, a ja pozwolę ci ujrzeć naturę wieloświata..."~ */
  IF ~  GlobalLT("Ravel_Flatter","GLOBAL",7)
~ THEN REPLY #52476 /* ~Zamknij oczy i słuchaj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",6)
GlobalLT("Ravel_Flatter","GLOBAL",11)
~ THEN REPLY #52477 /* ~Zamknij oczy i słuchaj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,120000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",10)
~ THEN REPLY #52478 /* ~Zamknij oczy i słuchaj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,2)
GiveExperience(Protagonist,180000)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0 223.1 223.2
  SAY #52479 /* ~Zamykasz oczy, a gdy to robisz, czujesz ostry, przeszywający ból w prawym oku. Twoje oko... *jedno* z twoich oczu... otwiera się... i widzisz przed sobą Ravelę, jej krwistoczerwone oczy lśnią z zadowolenia; jeden z jej szponów jest wyprostowany, a na jego końcu znajduje się twoja krew... i oko. Twoje oko.~ */
  IF ~~ THEN REPLY #52480 /* ~"Co... ty... zrobiłaś...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #52481 /* ~"Podarunek dałam ci, śpiewający ptaku. Zmianę percepcji, spojrzenie w gałęzie umysłu, podarowałam ci spojrzenie w korzenie wiedzy Raveli... część siebie..." Przyglądasz się z obrzydzeniem, jak wyciąga czarne nasionko, bierze oko i kładzie je na dłoni. Z groteskowym uśmiechem zgniata obie rzeczy, które wydają przy tym obrzydliwy *trzask*. "Ach..."~ */
  IF ~~ THEN REPLY #52482 /* ~"Oddaj... to..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #52483 /* ~"Oczywiście, drogi człowieku..." Ravela otwiera dłoń, leży na niej twoje oko, na pierwszy rzut oka nietknięte, przyglądając się tobie. Ravela bierze je palcem wskazującym i kciukiem, po czym, zanim możesz cokolwiek zrobić, wbija je w twój pusty oczodół.~ */
  IF ~~ THEN REPLY #52484 /* ~"Erhhkkkk..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ JOURNAL #52485 /* ~W odpowiedzi na moje pochlebstwa, Ravela wyrwała mi prawe oko, wbiła w nie czarnokolce nasiono i potem wsadziła mi je z powrotem w krwawy oczodół. Teraz postrzegam świat nieco inaczej... To tak, jakbym patrząc na świat Sfer, przejął perspektywę widzenia Raveli. Oczywiście od tej chwili również będę dobrze zastanawiał się, zanim zacznę kogokolwiek komplementować, szczególnie wówczas, kiedy będę od obiektu moich pochlebstwa oddalony zaledwie na odległość ręki.~ */ GOTO 227
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #52486 /* ~"Część mnie samej spoczywa w twoim dobrym oku, drogi człowieku. Kiedy będziesz spoglądał na Sfery tym okiem, zrozumiesz WIĘCEJ, niż do tej pory rozumiałeś... będziesz mądrzejszy i zrozumiesz więcej z doświadczenia i obrotów Sfer... i to wszystko."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52487 /* ~"A zatem... dziękuję ci, Ravelo. Muszę cię pożegnać."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52488 /* ~"A zatem... dziękuję ci, Ravelo. Muszę cię pożegnać."~ */ GOTO 230
END

IF ~~ THEN BEGIN 228 // from: 219.1 222.0 227.0
  SAY #52489 /* ~W chwili, gdy masz już wypowiedzieć słowa pożegnania, czujesz dziwne mrowienie w czaszce - i zauważasz, że czarnożyłe oczy Raveli rozświetlił dziwny, drapieżny ogień.~ */
  IF ~~ THEN REPLY #52490 /* ~"Nie wypuścisz mnie stąd, Ravelo, prawda?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 229
  IF ~~ THEN REPLY #52491 /* ~"Uch... dziękuję ci, Ravelo. Muszę cię pożegnać."~ */ GOTO 230
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #52492 /* ~"Spostrzegawcze pytanie - mimo to nieprawidłowe." Głos Raveli zamienia się w dziwny szept - bardzo smutny, odbijający się słabym echem w twoim umyśle. "Pytaniem jest, czy *chcesz* mnie opuścić, pół-człowieku?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52493 /* ~"Sprawiedliwa Ravelo, pomogłaś mi, gdy do ciebie przybyłem tak dawno temu, a teraz zrobiłaś to znowu. Nie zapomnę tego, co dla mnie zrobiłaś. Ale teraz muszę już iść - muszę się więcej dowiedzieć o sobie samym."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52494 /* ~"Muszę. Ważne jest, abym dowiedział się o sobie wszystkiego, co tylko mogę, a muszę wiedzieć o wiele więcej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52495 /* ~"Nie chcę zostać uwięziony w tym miejscu, Ravelo. To jest twój dom, nie mój."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52496 /* ~"Nie chcę być uwięziony w tym labiryncie. Czy zamierzam się stąd wydostać? Tak."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 230 // from: 219.2 222.1 227.1 228.1
  SAY #52497 /* ~"Ach... więc tak mówisz..." Głos Raveli zamienia się w dziwny szept - bardzo smutny, odbijający się słabym echem w twoim umyśle. "Mam do ciebie jedno, ostatnie pytanie: *chceszli* mnie opuścić, pół-człowieku?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52498 /* ~"Sprawiedliwa Ravelo, pomogłaś mi, gdy do ciebie przybyłem tak dawno temu, a teraz zrobiłaś to znowu. Nie zapomnę tego, co dla mnie zrobiłaś. Ale teraz muszę już iść - muszę się więcej dowiedzieć o sobie samym."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52499 /* ~"Muszę. Ważne jest, abym dowiedział się o sobie wszystkiego, co tylko mogę, a muszę wiedzieć o wiele więcej."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52500 /* ~"Nie chcę zostać uwięziony w tym miejscu, Ravelo. To jest twój dom, nie mój."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52501 /* ~"Nie chcę być uwięziony w tym labiryncie. Czy zamierzam się stąd wydostać? Tak."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 231 // from: 229.2 230.2
  SAY #52502 /* ~"Nie, wiedz, nie... wiedz TO..." Ravela wznosi zakończony szponem palec, jakby cię ostrzegała. "Wiedz, że to jest NASZ dom, mój drogi pół-człowieku. Będziemy w tym ogrodzie dwoma nieśmiertelnikami, a ja ustrzegę cię przed Sferami."~ */
  IF ~~ THEN REPLY #52503 /* ~"Myślę, że nie wiesz co mówisz, Ravelo..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 232 // from: 229.3 230.3
  SAY #52504 /* ~"Opuszczenie tego miejsca za błąd uważam, zaś twoja odpowiedź zdaje się wypływać z przeświadczenia, choć jest to *zła* odpowiedź, mój drogi pół-człowieku." Wiedźma *trzaska* swoimi pożółkłymi zębami, jakby zatrzaskiwała metalowe sidła. "Nie, nie, *zatrzymam* cię tutaj. Będziemy w tym ogrodzie dwoma nieśmiertelnikami, a ja ustrzegę cię przed Sferami."~ */
  IF ~~ THEN REPLY #52505 /* ~"Myślę, że nie wiesz co mówisz, Ravelo..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 229.0 229.1 230.0 230.1 231.0 232.0
  SAY #52506 /* ~Powietrze ponad głową Raveli zaczyna przeraźliwie migotać - i rozlega się głos pękających gałązek i łamanych konarów drzew oraz straszny odgłos *naginanych* i *rozdzieranych na drzazgi* drzew...~ */
  IF ~~ THEN REPLY #52507 /* ~"Co się...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Ravel",ANIM_MIMESTANCE)
~ GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #52508 /* ~Ravela wyszczerza zęby, a jej głos staje się piskliwy jak wyjący wiatr. "Co TY wiesz o WIEDZY, pół-człowieku?! WIEDZ to: zostaniesz tutaj, w moim ciernistym ogrodzie, do OSTATNICH DNI, nigdy się stąd nie wydostaniesz i będziesz mnie KOCHAŁ, tak jak było ci to pisane, tak jak to PRZYRZEKŁEŚ!"~ */
  IF ~~ THEN REPLY #52509 /* ~"Nie, Ravelo. Nie groź mi... OPUSZCZĘ to miejsce."~ */ GOTO 235
  IF ~~ THEN REPLY #52510 /* ~"Ravelo, uspokój się - muszę stąd odejść, ale powrócę. Nie..."~ */ GOTO 235
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52511 /* ~"Obawiam się, że byłbym kiepskim kompanem, Ravelo. I w żadnym przypadku nie mogę zostać. Obawiam się, że musisz pozwolić mi odejść."~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0 234.1 234.2
  SAY #52512 /* ~"NIE pozwolę ci odejść - mam moc, dzięki, której mogę cię tutaj ZATRZYMAĆ i WYKORZYSTAM ją. Mój ciernisty labirynt NIE pozwoli ci go opuścić dopóki ja ŻYJĘ, mój drogi, *drogi* człowieku..."~ */
  IF ~~ THEN REPLY #52513 /* ~"Ravelo, nie chcę z tobą walczyć... nie rób tego. Pozwól mi odejść, a ja wrócę cię odwiedzić. Nie musisz być samotna w tym miejscu."~ */ GOTO 236
  IF ~~ THEN REPLY #52514 /* ~"A więc będę mógł odejść tylko po twoim trupie? Dobrze więc, być może to TY popełniłaś błąd nie doceniając mnie, starucho."~ */ GOTO 237
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #52515 /* ~"WRÓCISZ?! WRÓCISZ tak, jak OBIECAŁEŚ powrócić DAWNO TEMU?! Nie... nie, nie OKŁAMIESZ Raveli PO RAZ DRUGI! Nie będę CZEKAĆ na ciebie ani WIEKU dłużej..." Ravela wyszczerza zęby, a jej szpony zdają się rosnąć, zamieniając się w biesie pazury. "POZOSTANIESZ tutaj, w moim ogrodzie, i nie będziesz JUŻ WIĘCEJ nie-przemierzał Sfer...!"~ */
  IF ~~ THEN REPLY #52516 /* ~"Ravelo, uspokój się, nie ma POTRZEBY żeby tak się stało..."~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 235.1 236.0
  SAY #52517 /* ~"Zapomniałeś gdzie twoje miejsce PÓŁ-człeku. Czas się ukorzyć."~ [RAV065] */
  IF ~~ THEN REPLY #52518 /* ~"Ravelo, NIE rób tego..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ JOURNAL #52520 /* ~Ravela odpowiedziała na moje pytania, ale nie wydaje mi się, że chciała, abym od niej odszedł. Kiedy powiedziałem jej, że odchodzę, zaatakowała mi i klęła się, że póki żyje, nigdzie nie odejdę. Nie miałem innego wyboru, jak stanąć do walki.~ */ EXIT
  IF ~~ THEN REPLY #52519 /* ~"Zobaczymy, wiedźmo..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ EXIT
END

IF ~~ THEN BEGIN 238 // from: 30.0 239.0
  SAY #52521 /* ~"Dlaczego? Mój drogi, drogi pół-człowieku, ty doświadczasz największej udręki... życia na zawsze-i-dłużej. Czy możliwe jest, żeby życie dbało o ciebie tak jak Ravela?" Mówiąc to, wiedźma zgrzyta swoimi żółtymi kłami. "Taki dzielny, tak namiętny, tak straszliwie zagubiony, biedny, biedny."~ */
  IF ~~ THEN REPLY #52522 /* ~"Ravelo, *dlaczego* uczyniłaś mnie nieśmiertelnym? Muszę wie..."~ */ GOTO 41
END

IF ~~ THEN BEGIN 239 // from: 31.6
  SAY #52523 /* ~"Przyjrzyj się ich oczom, gdy są zamknięte... *zobaczysz* ich udręki, albowiem oni nie będą o nich mówić. Nic więcej Ravela już nie powie... być może, gdyby byli blisko i Ravela mogłaby ich widzieć, powiedziałaby więcej... ale nie dzisiaj."~ */
  IF ~~ THEN REPLY #52524 /* ~"Co ich we mnie przyciąga?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 240 // from: 152.4
  SAY #52525 /* ~"I ukąsiłeś mnie, tak dawno temu, lecz nie był to pocałunek, ale ukąszenie w serce..." Ravel uśmiecha się. "Nie dziw się, mój drogi człowieku. Nie stała się nikomu żadna krzywda..."~ */
  IF ~~ THEN REPLY #52526 /* ~"Powróć do swej normalnej postaci, Ravelo."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 179.1 180.1 181.1
  SAY #52527 /* ~Rysy twarzy Mebbet... Raveli... łagodnieją, i widzisz, jak jej skóra na powrót staje się niebieskawa, zaś do jej oczu napływa krwista czerwień. Ravel mruga oczami, powoli, jak gdyby starała się na nowo przystosować do sytuacji.~ */
  IF ~~ THEN REPLY #52528 /* ~"Jakie inne postacie przybrałaś do tej pory, Ravelo?"~ */ GOTO 163
  IF ~~ THEN REPLY #52529 /* ~"Mam jeszcze kilka pytań do ciebie, Ravelo."~ */ GOTO 141
END
