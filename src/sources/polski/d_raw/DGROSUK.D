// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGROSUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGROSUK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36054 /* ~Widzisz przypominające gada stworzenie - ma ciało niczym wąż, cztery łapy zakończone pazurami, skrzydła, które wydają się obciągnięte skórą i smoczy łeb. Łuski, które pokrywają jego ciało, mają odcień zieleni. Stworzenie stoi na tylnych łapach, chwytny ogon pomaga mu utrzymać równowagę. Gdy podchodzisz, oczy zmieniają mu się w szparki, a stworzenie zaczyna syczeć.~ */
  IF ~~ THEN REPLY #36055 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36056 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36057 /* ~Powietrze wokół stworzenia zaczyna promieniować ciepłem, jego łuski połyskują blado. Rzuca wygłodniałe spojrzenie i wydaje się gotów do ataku. Nagle wydaje z siebie przeciągły syk i wyraźnie się rozluźnia. "Sssss! Iść. Grossssuk nie gadać, powiedzieć aby czekać... Ssssssss..." Patrzy na ciebie machając ogonem."~ */
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36058 /* ~"Przysłał mnie Sebastion."~ */ GOTO 2
  IF ~~ THEN REPLY #36059 /* ~"Czym ty jesteś?"~ */ GOTO 10
  IF ~~ THEN REPLY #36060 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.1 12.1
  SAY #36061 /* ~Stworzenie rozluźnia się a powietrze staje się wyraźnie chłodniejsze. Wyciąga zakończoną pazurami łapę. "Ssssss. Dać Grosssukowi informacja." Patrzy wyczekująco.~ */
  IF ~~ THEN REPLY #36062 /* ~"Jaka informacja?"~ */ GOTO 3
  IF ~~ THEN REPLY #36063 /* ~"Nie, Sebastion przysłał mnie, abym cię zabił."~ */ GOTO 9
  IF ~~ THEN REPLY #36064 /* ~"Nie mam tego przy sobie. Pójdę i przyniosę ci. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36065 /* ~Trudno jest wyczytać coś z wyrazu twarzy gada, ale jesteś pewien, że Grosuk jest poirytowany twoją obecnością. Gwałtownie macha ogonem, a powietrze znów wyraźnie ogrzewa się. "Żadnych pytaaaań. Dać Grossssuk informacja lub ginąć. Grosssuk później wziąć informacja z ciało."~ */
  IF ~~ THEN REPLY #36066 /* ~"Muszę wiedzieć, która informacja jest dla ciebie. Załatwiam sprawy wielu ludzi, rozumiesz."~ */ GOTO 4
  IF ~~ THEN REPLY #36067 /* ~"Tak naprawdę, to Sebastion przysłał mnie, żebym cię zabił."~ */ GOTO 9
  IF ~~ THEN REPLY #36068 /* ~"Nie mam tego ze sobą. Pójdę i przyniosę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36069 /* ~Patrzy na ciebie przez kilka chwil, myśląc. W końcu pokazuje pobliską wieżę. "Wieża oblężżżnicza. Ssssss. Jak wejść do śśśrodka. Ssssebation mówić on znaleźć droga..." Grosuk robi krok w twoją stronę i wyciąga łapę. "Teraz daj!"~ */
  IF ~~ THEN REPLY #36070 /* ~"Ach, ta. Przykro mi, ale Sebastion chciał ci ją przekazać osobiście. Będzie tutaj wkrótce."~ */ JOURNAL #66527 /* ~Abiszai o imieniu Grosuk szuka sposobu na wejście do wieży oblężniczej położonej w pobliżu placu targowego. Zastanawiam się, co tak ważnego kryje się w tej wieży.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36072 /* ~Powietrze wokół Grosuka zaczyna promieniować ciepłem, jego łuski połyskują blado. Rzuca wygłodniałe spojrzenie i wydaje się gotów do ataku. Otwiera pysk ukazując kilka rzędów ostrych jak brzytwa zębów. "Nie... Grosssuk myśleć, że ty kłamać! Dać informacja już, Grosssuk szybko zabić, nie powoli. Nie dać, Grossssuk zabić powoli. Wyrwać flaki. Lepiej uważać!"~ */
  IF ~~ THEN REPLY #36073 /* ~"Poczekaj. Nie mam informacji, którą chcesz, ale wiem coś, co może być warte moje życie."~ */ GOTO 6
  IF ~~ THEN REPLY #36074 /* ~"W porządku. I tak Sebastion przysłał mnie, żebym cię zabił."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36075 /* ~Grosuk przechyla głowę na jedną stronę i patrzy na ciebie. Przez chwilę wydaje się całkowicie pochłonięty myślami. "Grosssuk słuchać. Informacja dobra, ty żyć." Uśmiecha się odsłaniając zęby. "Niedobra, ty zginąć. Grosssuk dać słowo."~ */
  IF ~~ THEN REPLY #36076 /* ~"Sebastion nie może wywiązać się z umowy. Przysłał mnie, żebym cię zabił."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~Powiedziałem abiszai o imieniu Grosuk, że przybyłem tu z polecenia Sebastiona, aby go zgładzić. Może to i nie najpiękniejszy postępek, ale przynajmniej ocaliłem swoją skórę.~ */ GOTO 7
  IF ~~ THEN REPLY #36077 /* ~"Skąd mam wiedzieć, że dotrzymasz słowa?"~ */ GOTO 8
  IF ~~ THEN REPLY #36078 /* ~"Nieważne. I tak Sebastion przysłał mnie, żebym cię zabił."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #36079 /* ~Grosuk gapi się na ciebie przez jakiś czas, potem syczy wyraźnie sfrustrowany. Wyciąga pazury i macha ogonem. Na czubku ogona zauważasz kolczaste żądło. "Taksss. Informacja dobra. Grosuk dać słowo, ty żyć. Grosssuk dziękować. Grosssuk już iść, musieć gadać z Sssssebassssstion."~ */
  IF ~~ THEN REPLY #36080 /* ~"Żegnaj."~ */ DO ~SetGlobal("SNUFF_GROSUK","GLOBAL",5)
StartCutSceneMode()
StartCutSceneEx("0500cut5",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #36081 /* ~Stworzenie patrzy na ciebie. "Układ, ty i Grosssuk. Grosssuk żyć dla układów. Teraz ty mówić."~ */
  IF ~~ THEN REPLY #36082 /* ~"Sebastion nie może się wywiązać z umowy. Przysłał mnie, żebym cię zabił."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~Powiedziałem abiszai o imieniu Grosuk, że przybyłem tu z polecenia Sebastiona, aby go zgładzić. Może to i nie najpiękniejszy postępek, ale przynajmniej ocaliłem swoją skórę.~ */ GOTO 7
  IF ~~ THEN REPLY #36083 /* ~"Nieważne, I tak Sebastian przysłał mnie, żebym cię zabił."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1
  SAY #36084 /* ~Stworzenie rzuca się na ciebie bez zastanowienia.~ */
  IF ~~ THEN REPLY #36085 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.1
  SAY #36086 /* ~Stworzenie syczy napinając mięśnie. Zaczyna iść w twoją stronę, ale zatrzymuje się. Gdy mówi, jego oczy kapią nienawiścią. "Grosssuk nie mówić. Ssssssss. Ty szczęśliwy człowiek. Iść, być szczęśliwy. Zostać, Grosssuk poszszszatkować."~ */
  IF ~~ THEN REPLY #36087 /* ~Zadrwij: "Grossssssuk nie mówić? Grosssssuk mówić dużo jak na kogośśśśś kto nie mówiććśzszsz."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grosuk_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36088 /* ~"Przysłał mnie Sebastion."~ */ GOTO 2
  IF ~~ THEN REPLY #36089 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36090 /* ~Gorsuk przechyla głowę na jedną stronę i gapi się na ciebie zaskoczonym wzrokiem. Po chwili jego oczy zmieniają się w szparki pełne nienawiści, a ciało zaczyna się trząść, gdy jego mięśnie napinają się niczym stalowa cięciwa. Słyszysz trzask i patrząc w dół widzisz, że jego pazury wbiły się w kamień, na którym stoi. Czujesz żar, jaki od niego bije. "Iść... już. Sssssssssss!"~ */
  IF ~~ THEN REPLY #36091 /* ~Atakuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #36092 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #36093 /* ~Widzisz Grosuka, abiszai. Wygląda na poirytowanego twoją obecnością. "Ssssssss... Znów przyjść. Iść. Grosssuk zabić."~ */
  IF ~~ THEN REPLY #36094 /* ~"Nie jesteś zbyt przyjaźnie nastawiony, no nie?"~ */ GOTO 13
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36095 /* ~"Przysłał mnie Sebastion."~ */ GOTO 2
  IF ~~ THEN REPLY #36096 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36097 /* ~Grosuk gapi się na ciebie wyciągając pazury. Nachyla się, by spojrzeć ci w oczy. "Nie, Grossssuk nie przyjaciel. Teraz, iść!"~ */
  IF ~~ THEN REPLY #36098 /* ~"W porządku. Żegnaj."~ */ EXIT
END
