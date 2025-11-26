// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_RA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_RA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51466 /* ~Ten zgniłozielony głaz jest mocno przytwierdzony do cokołu, na którym stoi. Napis pod spodem brzmi: "Posłaniec."~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #51467 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #53012 /* ~Zacznij doznanie.~ */ GOTO 1
  IF ~~ THEN REPLY #53013 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #53014 /* ~Dotykasz kamienia, ale w twoim umyśle nic się nie dzieje... jest tak, jakby kamień był nieczynny... jakiś taki martwy.~ */
  IF ~~ THEN REPLY #53015 /* ~Odejdź od kamienia.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #53016 /* ~Kiedy dotykasz kamienia, jego zielona powierzchnia wyostrza się, dźwięczy, a jej jasność rozbłyskuje tak bardzo, że nie jesteś w stanie znieść tego blasku, zamykasz więc oczy, aby jej się pozbyć...~ */
  IF ~~ THEN REPLY #53017 /* ~Zamknij oczy i zanurz się w doznanie...~ */ GOTO 4
  IF ~~ THEN REPLY #53018 /* ~Otrząśnij się, puść kamień.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 5.3 6.1 7.2 8.1 9.2 10.1 19.1 21.0
  SAY #53019 /* ~Twoja wizja rozjaśnia się, i ponownie stoisz przed tym ohydnie zielonym kamieniem... Wygląda teraz inaczej niż przedtem, jest jakoś bardziej... wstrętny.~ */
  IF ~~ THEN REPLY #53020 /* ~Spróbuj otrząsnąć się z doznania, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #53021 /* ~Kiedy zamykasz oczy, czujesz, że skóra ci drętwieje na ramionach, jak gdyby całe czucie z nich wyciekało. Zmęczony... tak bardzo zmęczony. Próbujesz mrugnąć, ale ciemność nie rozjaśnia się; twoje powieki są miękkie i ciężkie, nie reagują na bodźce. Siedzisz na czymś, co zdaje się być brudną podłogą, a wokół ciebie czuć zapach miedzianej krwi i... czyżby ziół? Dlaczego tutaj jesteś? Przybywasz tu - po co? Twoja pamięć cię zawodzi, ale czujesz narastającą panikę...~ */
  IF ~~ THEN REPLY #53022 /* ~Spróbuj ustalić swoje położenie...~ */ GOTO 5
  IF ~~ THEN REPLY #53023 /* ~Oderwij się od doznania.~ */ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #53024 /* ~"Ach... więc już nie śpimy, co? Wszystkie pytania zostały pozadawane?" Głos należy do starej kobiety, jest gruby i chrapliwy, jakby próbował przedostawać się przez gęste pokłady prochu. Choć starasz się jak możesz, nie jesteś w stanie otworzyć oczu i zobaczyć kobiety; odczuwasz jednak dreszczyk strachu. Coś tu nie gra, i to bardzo. Próbujesz odpowiedzieć, ale wszystko, na co cię stać, to chrypliwy *rechot*. Nie wyczuwasz języka... a twoje oczy? Co się dzieje z twoimi oczami?~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53025 /* ~"Ravela? Ravelo, to ja!"~ */ GOTO 9
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53026 /* ~"Ravela? Wróciłem."~ */ GOTO 9
  IF ~~ THEN REPLY #53027 /* ~Słuchaj...~ */ GOTO 6
  IF ~~ THEN REPLY #53028 /* ~Oderwij się od doznania.~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #53029 /* ~"No, jużeś mnie ujrzał, jużeś się odezwał, tak *słabiutko*, więc cenęś już zapłacił, hę?" Starucha wydaje się rozbawiona, potem jej ton gwałtownie się zaostrza. "Koniec z twoimi pytaniami; teraz pora SŁUCHAĆ, i moje słowa zapamiętasz, bo dzięki temu, że będziesz na mnie zważał, będziesz *żył*." Syczy. "Skiń głową, jeśli mnie słyszysz, albo NASTĘPNY kawałek se wezmę."~ */
  IF ~~ THEN REPLY #53030 /* ~Kiwnij głową.~ */ GOTO 7
  IF ~~ THEN REPLY #53031 /* ~Oderwij się od doznania.~ */ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #53032 /* ~"Pozdrówże ode mnie, podróżniku. Pozdrówże ode mnie kamień, jedną z tych pięknych błyskotek w waszym Gmachu Rozrywki - posłuż się nim jak czarką, wlej do środka to, co *odczuwasz*, i wiedz to: pozdrówże ode mnie człowieka, który nosi skórę pełną blizn i tatuaży, który poszukuje wspomnień, ale jakoś je za-gubił; jeśli bystry jest, będzie wiedział o MNIE. Każ mu mnie odnaleźć - a jak nie będzie mógł mnie odnaleźć, każ mu przyjść do migotającego kamienia, i tam porozmawiamy, mój cenny człowiek i ja." Kobieta przerywa, potem znów syczy. "SKIŃ GŁOWĄ, jeśliś mnie usłyszał, łachmaniarzu!"~ */
  IF ~  GlobalLT("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53033 /* ~Kiwnij głową.~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",1)
~ GOTO 8
  IF ~  GlobalGT("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53030 /* ~Kiwnij głową.~ */ GOTO 8
  IF ~~ THEN REPLY #53034 /* ~Oderwij się od doznania.~ */ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #53035 /* ~"Ach... jaki ładny, jaki uprzejmy, że tak długo słucha... kiedy mój człowiek podejdzie pod migatający kamień, każ mu wypowiedzieć moje *imię*, a wówczas twój ból nie pójdzie na marne..." Głos staruchy oddala się, jakby coś go rozproszyło. Znowu usiłujesz się odezwać, ale wydajesz tylko mdławy, bulgoczący odgłos. Co się stało? Kim jest ta osoba? Dlaczego... i zaczynasz tracić przytomność...~ */
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53036 /* ~"Ravelo! Ravelo! To ja!"~ */ JOURNAL #53038 /* ~W Prywatnym Sensorium w Miejskim Gmachu Rozrywki natknąłem się na przerażający kamień. W upiornym zielonym głazie znajduje się przeżycie kogoś zdanego na łaskę Raveli, torturowanego tylko po to, aby mógł zachować straszliwe przeżycia, a potem zamieścić je w Miejskim Gmachu Rozrywki. Wszystko to po to, aby przeżycie to trafiło w końcu do mnie. W doznaniu tym Ravela powiedziała do mnie, że jeżeli znajdę ten kamień, powinienem wymówić jej imię. Tak też zrobiłem.~ */ GOTO 9
  IF ~~ THEN REPLY #53037 /* ~Oderwij się od doznania.~ */ JOURNAL #53039 /* ~W Prywatnym Sensorium w Miejskim Gmachu Rozrywki natknąłem się na przerażający kamień. W upiornym zielonym głazie znajduje się przeżycie kogoś zdanego na łaskę Raveli, torturowanego tylko po to, aby mógł zachować straszliwe przeżycia, a potem zamieścić je w Miejskim Gmachu Rozrywki. Wszystko to po to, aby przeżycie to trafiło w końcu do mnie. W doznaniu jakaś zła kobieta powiedziała do mnie, że jeżeli znajdę ten kamień, powinienem wymówić jej imię. Najgorsze w tym jest to, że nie mam w ogóle pojęcia, kim ona była. Kiedy dowiem się, jak się nazywała, powrócę.~ */ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 8.0
  SAY #53040 /* ~Zalega cisza.~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53041 /* ~"Ravelo...?"~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",2)
GiveExperience(Protagonist,6000)
~ GOTO 10
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53042 /* ~"Ravelo...? To znowu ja."~ */ GOTO 10
  IF ~~ THEN REPLY #53043 /* ~Oderwij się od doznania.~ */ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53044 /* ~"Ach... mój drogocenny człowiek." Rozlega się szelest stóp i *czujesz* ostre ukłucie w lewym oku; chwytasz powietrze i nagle, ledwie ledwie, możesz WIDZIEĆ - swym jednym i jedynym okiem. Leżysz w szarej chacie, na brudnej podłodze, na której krew, twoja jasnoczerwona krew, wsiąka w otaczający szary proch. Nie masz rąk, twoje nogi są ucięte w kolanach. A jednak... czujesz odrętwienie, i nie odczuwasz bólu... tylko strach. Ktoś nad tobą stoi i spogląda na ciebie z góry...~ */
  IF ~~ THEN REPLY #53045 /* ~Podnieś wzrok.~ */ GOTO 11
  IF ~~ THEN REPLY #53046 /* ~Oderwij się od doznania.~ */ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53047 /* ~Gdy spoglądasz w górę, swoim zakrwawionym, zamazanym wzrokiem, dostrzegasz szkaradną, posiniaczoną twarz, rozwartą w szerokim uśmiechu pokazującym pożółkłe kły. "Ravela jest *zadowolona* - jużem się zastanawiała, czy temu posłańcowi się powiedzie, bo *słabowity* był, kiedy jego kawałki złożone zostały na talerzu..." Unosi w górę szpon przed twoją twarzą, a na samym koniuszku nabita jest gałka oczna - z prawego oka. "A jednak do Gmachu Rozrywki powrócił, jak mi się widzi, i dzielił nasz wspólny czas. A teraz przybywasz ty... zwycięstwo!"~ */
  IF ~~ THEN REPLY #53048 /* ~"Ravelo... mam do ciebie tak wiele pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #53049 /* ~"Żegnaj, Ravelo..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #53050 /* ~Starucha kręci przecząco głową, a ty swym zamglonym wzrokiem dostrzegasz trzy obrazy naraz; jej poszarzałe włosy są niczym jeżyny, opadające na ramiona. "Nie, u Raveli jest tylko czas na odpowiedzi, i nie ma ona czasu, żeby go zmarnować na twoje zgaduj-zgadule. Wiedz o tym, i niech ta wiedza uczyni cię silnym: musisz mnie ODNALEŹĆ, mój drogocenny człowieku."~ */
  IF ~~ THEN REPLY #53051 /* ~"Ale jak? Nie wiem..."~ */ JOURNAL #53053 /* ~Kamień doznań w Prywatnym Sensorium zawierał doznanie, w którym pojawiła się Ravela. Właściwie to po prostu z nią rozmawiałem, chociaż nie wiem, jak to się działo. W tym doznaniu Ravela oświadczyła mi, że muszę do niej dotrzeć, a jeżeli chcę tego dokonać, muszę "znaleźć drzwi, dowiedzieć się, czym jest klucz i otworzyć klucz." Trudno mi powiedzieć, co miała na myśli mówiąc te słowa, ale podejrzewam, że jeżeli będę potrzebował dodatkowych wskazówek, znajdę je we wnętrzu tego kamienia.~ */ GOTO 13
  IF ~~ THEN REPLY #53052 /* ~"Nie mogę dłużej zostać, Ravelo..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53054 /* ~"Ciiii! Jestem w miejscu Pani, ale nie można się tego dowiedzieć. Teraz ciiii - i słuchajże Raveli, bo zaiste wiele jest przed tobą do zrobienia - aby mnie odnaleźć, trza ci trzy rzeczy zrobić: znaleźć drzwi, poznać klucz, a potem *otworzyć* klucz."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53055 /* ~"Drzwi?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53056 /* ~"Drzwi?"~ */ GOTO 15
  IF ~~ THEN REPLY #53057 /* ~"Klucz?"~ */ GOTO 16
  IF ~~ THEN REPLY #53058 /* ~"Otworzyć klucz?"~ */ GOTO 18
  IF ~~ THEN REPLY #53059 /* ~"Ravelo... w jaki sposób z tobą rozmawiam, jeśli jest to cudze doznanie?"~ */ GOTO 22
  IF ~~ THEN REPLY #53060 /* ~"Żegnaj, Ravelo..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0 18.0 22.0
  SAY #53061 /* ~"Drzwi nie są jeszcze ukończone... przynajmniej nie były, kiedym ostatni raz na nie patrzała. Ale w miarę upływu czasu może i są już gotowe. Udaj się do miejsca miechów i stali; być może tam odnajdziesz drzwi, którymi można dotrzeć do mnie..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53062 /* ~"Ravelo, wiem, że klucz jest częścią ciebie, ale nie wiem, jak go znaleźć..."~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53063 /* ~"Co to za klucz, o którym mówiłaś?"~ */ GOTO 16
  IF ~~ THEN REPLY #53064 /* ~"Otworzyć klucz? Co chciałaś przez to powiedzieć?"~ */ GOTO 18
  IF ~~ THEN REPLY #53065 /* ~"Ravelo... w jaki sposób z tobą rozmawiam, jeśli jest to cudze doznanie?"~ */ GOTO 22
  IF ~~ THEN REPLY #53066 /* ~"Żegnaj, Ravelo..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.2 17.1 18.1 22.1
  SAY #53067 /* ~"Drzwi są już ukończone i niesiesz je ze sobą... bardzo dobrze, bardzo *mądrze*, mój drogocenny człowieku... jużeś jedną część odnalezienia Raveli wykonał..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53068 /* ~"Ravelo, wiem, że klucz jest częścią ciebie, ale nie wiem, jak go znaleźć..."~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53069 /* ~"Co to za klucz, o którym mówiłaś?"~ */ GOTO 16
  IF ~~ THEN REPLY #53070 /* ~"Otworzyć klucz? Co chciałaś przez to powiedzieć?"~ */ GOTO 18
  IF ~~ THEN REPLY #53071 /* ~"Ravelo... w jaki sposób z tobą rozmawiam, jeśli jest to cudze doznanie?"~ */ GOTO 22
  IF ~~ THEN REPLY #53072 /* ~"Żegnaj, Ravelo..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 13.2 14.1 15.1 18.3 22.3
  SAY #53073 /* ~"Aby DOWIEDZIEĆ SIĘ o kluczu, porozmawiaj z jednym z tych, którzy wiedzą - wielu z nich znajdziesz w Gmachu Rozrywki, *wielu* - jednak tylko JEDEN z nich ma wiedzę na temat klucza, której tobie trzeba. Rozplącz mu język, a wiele tajemnic przestanie być tajemnicami..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53074 /* ~"Ravelo, wiem, że klucz jest częścią ciebie, ale nie wiem, jak go znaleźć..."~ */ GOTO 17
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53075 /* ~"O jakich drzwiach mówiłaś?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53076 /* ~"O jakich drzwiach mówiłaś?"~ */ GOTO 15
  IF ~~ THEN REPLY #53077 /* ~"Co miałaś na myśli mówiąc o otwieraniu klucza?"~ */ GOTO 18
  IF ~~ THEN REPLY #53078 /* ~"Ravelo... w jaki sposób z tobą rozmawiam, jeśli jest to cudze doznanie?"~ */ GOTO 22
  IF ~~ THEN REPLY #53079 /* ~"Żegnaj, Ravelo..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.0 15.0 16.0 18.2 22.2
  SAY #53080 /* ~"Klucz jest ZE mnie, czy to nie... węzeł? Ech..." Starucha syczy, próbując jakby zebrać myśli; twój obraz ponownie mętnieje. "Żaden to obraz, żadna to opowieść, żaden kamień, lecz klucz to coś ze MNIE, owoc pracy mojego ciała i krwi. Szukaj go! *Żyje* sobie..."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53081 /* ~"O jakich drzwiach mówiłaś?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53082 /* ~"O jakich drzwiach mówiłaś?"~ */ GOTO 15
  IF ~~ THEN REPLY #53083 /* ~"Co miałaś na myśli mówiąc o otwieraniu klucza?"~ */ GOTO 18
  IF ~~ THEN REPLY #53084 /* ~"Ravelo... w jaki sposób z tobą rozmawiam, jeśli jest to cudze doznanie?"~ */ GOTO 22
  IF ~~ THEN REPLY #53085 /* ~"Żegnaj, Ravelo..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 13.3 14.2 15.2 16.3 17.2 22.4
  SAY #53086 /* ~"Wiedzieć o kluczu NIE wystarczy, tak uważa Ravela. Aby wiedzieć o nim i go otworzyć, musisz połączyć dwa zadania... bo czasami rzeczy nie znają własnej natury... ale ty przecież coś wiesz na ten temat..." Ravela rechocze i jest to długi, ohydny rechot, przez który twoje uszy napełniają się bólem...~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53087 /* ~"O jakich drzwiach mówiłaś?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53088 /* ~"O jakich drzwiach mówiłaś?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53089 /* ~"Ravelo, wiem, że klucz jest częścią ciebie, ale nie wiem, jak go znaleźć..."~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53090 /* ~"O jakim kluczu mówisz?"~ */ GOTO 16
  IF ~~ THEN REPLY #53091 /* ~"Ravelo... w jaki sposób z tobą rozmawiam, jeśli jest to cudze doznanie?"~ */ GOTO 22
  IF ~~ THEN REPLY #53092 /* ~"Żegnaj, Ravelo..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 11.1 12.1 13.5 14.4 15.4 16.5 17.4 18.5 22.5
  SAY #53093 /* ~"Wróć - a ja zaoferuję ci wszelką pomoc..." Ravela szczerzy się w pożegnalnym uśmiechu; jest to okropny, szeroki uśmiech ukazujący pożółkłe jadowite zęby jak u węża; poczerniały język odrywa się jej od warg i pulsuje na koniuszku ust, dręcząc i przekomarzając się. "Lecz, w końcu, i tak pozostanie jedno pytanie..."~ */
  IF ~~ THEN REPLY #53094 /* ~"Co chcesz przez to powiedzieć, Ravelo?"~ */ GOTO 20
  IF ~~ THEN REPLY #53095 /* ~Pozbądź się tego doznania...~ */ GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #53096 /* ~"Tylko jedno pytanie, które ja zadaję..." Oczy Raveli błyszczą niczym ognie, a czerwona poświata zmienia kolor jej twarzy na krwistoczerwony. "Cóż może zmienić naturę człowieka?"~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #53098 /* ~Słysząc to pytanie, czujesz przenikający cię dreszcz, niczym grzmot, i czujesz, że również i ty *płoniesz*...~ */
  IF ~~ THEN REPLY #53099 /* ~Pozbądź się tego doznania...~ */ GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 13.4 14.3 15.3 16.4 17.3 18.4
  SAY #53100 /* ~"Ravela opowie o kamieniach, doznaniach i opowieściach, ale nie o tym, jak do ciebie teraz się zwraca." Jej słowa oddziałują kojąco. "Wiele jest postaci i osobowości Raveli, a jej *tajemnice* również mnogie są. Potrzebuję cię, i potrzebuję, abyś to wiedział."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53101 /* ~"O jakich drzwiach mówiłaś?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53102 /* ~"O jakich drzwiach mówiłaś?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53103 /* ~"Ravelo, wiem, że klucz jest częścią ciebie, ale nie wiem, jak go znaleźć..."~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53104 /* ~"O jakim kluczu mówiłaś?"~ */ GOTO 16
  IF ~~ THEN REPLY #53105 /* ~"Co miałaś na myśli mówiąc o otworzeniu klucza?"~ */ GOTO 18
  IF ~~ THEN REPLY #53106 /* ~"Żegnaj, Ravelo..."~ */ GOTO 19
END
