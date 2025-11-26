// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVOORSHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVOORSHA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57956 /* ~Widzisz człowieka w średnim wieku odzianego w lichy strój. Krzywi się na twój widok i posyła ci gniewne spojrzenie.~ */
  IF ~~ THEN REPLY #57957 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #57959 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57961 /* ~Jego grymas pogłębia się, kiedy przypatruje ci się uważniej. "Uch... Witaj. Czegóż chcesz?"~ */
  IF ~~ THEN REPLY #57963 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57965 /* ~"Mniejsza o to. Czas już na mnie. Żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.1 8.1 10.3 11.2 12.2 13.2 14.0 15.0 16.0 19.1 20.0 21.0
  SAY #57966 /* ~"Jakich?"~ */
  IF ~~ THEN REPLY #57967 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #57968 /* ~"Co tutaj robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #57969 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 16
  IF ~~ THEN REPLY #57970 /* ~"Szukam devy. Słyszałem, że można go znaleźć w Klątwie."~ */ GOTO 17
  IF ~~ THEN REPLY #68251 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57971 /* ~Człowiek przez chwilę ociąga się z odpowiedzią. "Na imię mam Voorsha." Nie wydaje się, żeby miał ochotę rozwijać tę wypowiedź.~ */
  IF ~~ THEN REPLY #57972 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57973 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #57974 /* ~Człowiek posyła ci spojrzenie bez wyrazu i wzrusza ramionami. "Jestem handlarzem. To jest moje składowisko."~ */
  IF ~~ THEN REPLY #57975 /* ~"A co tutaj przechowujesz?"~ */ GOTO 5
  IF ~~ THEN REPLY #57976 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57977 /* ~Człowiek krzywi się. "Nie widzę powodu, dla którego miałbyś się tym interesować."~ */
  IF ~~ THEN REPLY #57978 /* ~"Jestem po prostu ciekawy..."~ */ GOTO 6
  IF ~~ THEN REPLY #57979 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57980 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57981 /* ~Mężczyzna wzrusza ramionami. "Hm..." Wykonuje wieloznaczne gesty. "Piwo, zboże i inne... dobra." Wygląda na cokolwiek zdenerwowanego.~ */
  IF ~~ THEN REPLY #57982 /* ~"Dlaczego jesteś taki nerwowy?"~ */ GOTO 7
  IF ~~ THEN REPLY #57983 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57984 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57985 /* ~Mężczyzna zaczyna wiercić się niespokojnie. "Nieważne..." Posyła ci buntownicze spojrzenie "Nie możemy zmienić tematu?"~ */
  IF ~~ THEN REPLY #57986 /* ~"Nie. Myślę, że coś ukrywasz i chcę wiedzieć, co to takiego."~ */ GOTO 8
  IF ~~ THEN REPLY #57987 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57988 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #57989 /* ~Mężczyzna patrzy na ciebie, a potem wzdycha. "Wnoszę te rzeczy, jak by to powiedzieć... alternatywnymi drogami. Strażnicy o tym nie wiedzą."~ */
  IF ~~ THEN REPLY #57990 /* ~"Jesteś przemytnikiem."~ */ GOTO 9
  IF ~~ THEN REPLY #57991 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57992 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57993 /* ~Mężczyzna marszczy brwi. "Jestem szmuglerem. To brzmi lepiej niż przemytnik, nie uważasz?" Posyła ci przebiegłe spojrzenie. "Słuchaj... A zechciałbyś mi pomóc? A ja się z tobą podzielę moim dobrem. Co o tym sądzisz?"~ */
  IF ~~ THEN REPLY #57995 /* ~"Na czym miałaby polegać ta pomoc?"~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #57997 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.1
  SAY #57999 /* ~Mężczyzna zastanawia się przez chwilę. "Tutaj w pobliżu jest gereleth. Próbuje mnie zabić i zabrać mi towar. Muszę znaleźć kogoś, kto by się nim zajął."~ */
  IF ~~ THEN REPLY #58002 /* ~"Gereleth? A cóż to takiego?"~ */ GOTO 11
  IF ~~ THEN REPLY #58003 /* ~"A czemu sam się z tym stworem nie rozprawisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #58004 /* ~"A co dostanę od ciebie w zamian za zajęcie się tym potworem?"~ */ GOTO 13
  IF ~~ THEN REPLY #58005 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58006 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #58008 /* ~Mężczyzna wzrusza ramionami: "To po prostu durny stwór, który pożera wszystko, co jest w zasięgu jego wzroku..." Mężczyzna spogląda na ciebie z niepokojem.~ */
  IF ~~ THEN REPLY #58011 /* ~"A czemu sam się z tym stworem nie rozprawisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #58013 /* ~"A co dostanę od ciebie w zamian za zajęcie się tym potworem?"~ */ GOTO 13
  IF ~~ THEN REPLY #58015 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58018 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #58020 /* ~"Nie jestem wojownikiem, ten potwór zabije mnie od razu." Spogląda na twoje blizny. "Ktoś, kto przeszedł tak wiele jak ty, z pewnością poradzi sobie z tym przeklętym stworem."~ */
  IF ~~ THEN REPLY #58023 /* ~"Gereleth? A cóż to takiego?"~ */ GOTO 11
  IF ~~ THEN REPLY #58026 /* ~"A co dostanę od ciebie w zamian za zajęcie się tym potworem?"~ */ GOTO 13
  IF ~~ THEN REPLY #58028 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58032 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1 22.0
  SAY #58036 /* ~Mężczyzna uśmiecha się. "Możemy zostać wspólnikami. Interes idzie dobrze, a ja nie dam rady sam dostarczać wszystkich towarów. Zysk podzielimy po połowie. Co ty na to?"~ */
  IF ~~ THEN REPLY #58039 /* ~"Jasne. Czemu nie."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #58041 /* ~"Nie sądzę."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #58047 /* ~"Pomyślę o tym. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~  Dead("Ghrist")
~ THEN REPLY #68272 /* ~"Już przedtem spotkałem tego gereletha. Nie ma go już pomiędzy żywymi. Więc cóż, jesteśmy teraz wspólnikami?"~ */ GOTO 23
  IF ~~ THEN REPLY #68273 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58053 /* ~Jego uśmiech rozszerza się. "Świetnie. Zajmij się gerelethem, a potem zaraz do mnie wracaj."~ */
  IF ~~ THEN REPLY #58056 /* ~"Dobra. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58060 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #58063 /* ~Mężczyzna marszczy czoło. "No dobra, ale gdybyś zmienił zdanie, moja oferta dalej pozostaje aktualna. Jeżeli nie pozbędę się gereletha, to cały mój interes będzie leżał."~ */
  IF ~~ THEN REPLY #58065 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58066 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #58067 /* ~Mężczyzna obejmuje spojrzeniem otoczenie. "O czym tutaj opowiadać?" Wzrusza ramionami. "Wszystko masz przed nosem."~ */
  IF ~~ THEN REPLY #58068 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58069 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #58070 /* ~Mężczyzna marszczy brwi. "Deva... Słyszałem plotki..." Milknie na chwilę.~ */
  IF ~~ THEN REPLY #58071 /* ~"Jakie plotki?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58072 /* ~Mężczyzna wzrusza ramionami i odwraca spojrzenie. "Prowadzono jakieś wykopy, żeby poszerzyć więzienie. I ludzie mówią, że przypadkowo odkryto nieznaną komnatę..." Odwraca się do ciebie z powrotem. "Znaleziono tam coś, albo może raczej kogoś. W każdym razie miało to być uwięzione."~ */
  IF ~~ THEN REPLY #58073 /* ~"Mów dalej."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58074 /* ~"Niektórzy powiadają, że ta znaleziona istota to deva. Inni mówią, że to baatezu, a jeszcze inni, że to tanar'ri." Mężczyzna wzrusza ramionami. "Mnie osobiście jest to obojętnie. Cokolwiek to jest, nie mam zamiaru się do tego zbliżać."~ */
  IF ~~ THEN REPLY #58075 /* ~"Gdzie jest tak komnata?"~ */ GOTO 20
  IF ~~ THEN REPLY #58076 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #68252 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #58077 /* ~"Nie mam pojęcia. Rozejrzyj się tutaj, a będziesz miał dużą szansę na to, aby znaleźć to wcześniej czy później. Inna sprawa, że sam pomysł takich poszukiwań jest cokolwiek osobliwy."~ */
  IF ~~ THEN REPLY #58078 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58079 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #58080 /* ~Widzisz szmuglera Voorshę. Patrzy na ciebie z podenerwowaniem. "Witaj... ponownie. Czego sobie życzysz?"~ */
  IF ~  Global("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #57963 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~  Global("Snuff_Ghrist","GLOBAL",1)
~ THEN REPLY #58082 /* ~"Wspominałeś, że potrzebujesz pomocy. Co miałeś dokładnie na myśli?"~ */ GOTO 10
  IF ~  Global("Snuff_Ghrist","GLOBAL",2)
~ THEN REPLY #58083 /* ~"Prosiłeś mnie, żebym zajął się dla ciebie pewnym gerelethem."~ */ GOTO 22
  IF ~  Global("Snuff_Ghrist","GLOBAL",3)
Dead("Ghrist")
~ THEN REPLY #58084 /* ~"Zabiłem dla ciebie tego gereletha."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",4)
~ GOTO 23
  IF ~~ THEN REPLY #58085 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #58086 /* ~Mężczyzna mierzy cię przez chwilę spojrzeniem. "Tak. Zrobisz to?"~ */
  IF ~~ THEN REPLY #58087 /* ~"A co dostanę w zamian, jeśli się zgodzę?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 13.3 21.3
  SAY #58088 /* ~Mężczyzna wydaje się zaskoczony, ale szybko opanowuje się. Zerka na ciebie kątem oka, żeby sprawdzić, czy zauważyłeś jakie wrażenie na nim wywarłeś. "Uch... To wspaniale. Dobra robota."~ */
  IF ~~ THEN REPLY #58089 /* ~"Powiedziałeś, że uczynisz mnie swoim wspólnikiem. Jestem gotowy."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58090 /* ~Mężczyzna kiwa głową. "Tak... Tak powiedziałem." Patrzy na ciebie przez chwilę, a potem znowu zaczyna się wiercić.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #58091 /* ~"A więc jesteśmy od teraz wspólnikami. Prawda?"~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #58092 /* ~"Nie przypuszczałeś, że zabiję gereletha, co?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58093 /* ~Mężczyzna spogląda na ciebie dłuższą chwilę, a potem wzdycha. "Nie... Wygląda na to, że zanadto przekroczyłeś moje oczekiwania... Liczyłem na to, że gereleth cię załatwi i oszczędzi mi kłopotów. A teraz wygląda na to, że sam muszę się tobą zająć." Nagle wyciąga broń i rzuca się na ciebie.~ */
  IF ~~ THEN REPLY #58094 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #58095 /* ~Mężczyzna patrzy na ciebie przez dłuższą chwilę, a potem wzdycha. "Nie... Wygląda na to, że zanadto przekroczyłeś moje oczekiwania... Liczyłem na to, że gereleth cię załatwi i zaoszczędzi mi kłopotów. A teraz wygląda na to, że sam muszę się tobą zająć." Nagle wyciąga broń i naciera na ciebie.~ */
  IF ~~ THEN REPLY #58097 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
