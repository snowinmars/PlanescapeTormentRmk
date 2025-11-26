// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSYBIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSYBIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36172 /* ~Spośród mroków spowijających narożnik komnaty wynurza się jakaś postać. Zbliżasz się, a wówczas zagadkowe zjawisko okazuje się młodą niewiastą. Jej strój stanowi luźna tunika, która w połączeniu z krótko przyciętymi włosami i szczupłą sylwetką czyni jej wygląd bardzo chłopięcym. "Na twoim miejscu bym tam nie szła." Mówi, wskazując drzwi położone w południowej ścianie.~ */
  IF ~~ THEN REPLY #36189 /* ~"Dlaczego? Co znajduje się za tymi drzwiami?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 1
  IF ~~ THEN REPLY #36190 /* ~"Kim jesteś?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 2
  IF ~~ THEN REPLY #36191 /* ~Nie zwracaj na nią uwagi, idź swoją drogą~ */ DO ~KillFloatMessage("Sybil")
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 14.0
  SAY #36173 /* ~Dziewczyna krzywi się na dźwięk twego głosu i przyciska palec u ust nakazując zachowanie bezwzględnej ciszy. Zamiera na chwilę, a potem odzywa się szeptem: "Cała masa tych ujadających szaleńców. Zdaje się, że teraz odprawiają coś w rodzaju posiedzenia. Nie waż się próbować dotrzeć do alei, zanim tamci się nie rozejdą."~ */
  IF ~~ THEN REPLY #36192 /* ~"Ujadających szaleńców?"~ */ GOTO 3
  IF ~~ THEN REPLY #36193 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #36194 /* ~"Dzięki za słowa przestrogi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.0 14.1
  SAY #36174 /* ~"Mam na imię Sybilla." Szepcze dziewczyna, potem zaś spluwa na swoją dłoń i sięga, aby przybić ją do twojej ręki.~ */
  IF ~~ THEN REPLY #36195 /* ~"Co tutaj robisz?"~ */ GOTO 9
  IF ~~ THEN REPLY #36196 /* ~"Dzięki za słowa przestrogi, Sybillo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #36175 /* ~"Czy nie rozchodzi się tu pogłos? Tak, ujadający szaleńcy. To członkowie szajki Jazgotu Zagłodzonego Psa, bandy zwariowanych chaosyckich łotrów, którzy są prawdziwą plagą tych okolic Ula."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36197 /* ~"To Chaosyci? Spokojna głowa, jestem członkiem ich frakcji. Pozwolą mi spokojnie przejść."~ */ GOTO 4
  IF ~~ THEN REPLY #36198 /* ~"Ilu ich tam jest?"~ */ GOTO 5
  IF ~~ THEN REPLY #36199 /* ~"Dzięki za słowa przestrogi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36176 /* ~"Nie pojmujesz tego? Psy to jeszcze więksi szaleńcy niż zwykli Chaosyci. Czy jesteś członkiem ich frakcji, czy też nie, pójdź między nich, a śmierć cię tam spotka niechybnie."~ */
  IF ~~ THEN REPLY #36200 /* ~"Kim ty jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #36201 /* ~"Ilu ich tam jest?"~ */ GOTO 5
  IF ~~ THEN REPLY #36202 /* ~"Dzięki za słowa przestrogi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 10.1 11.0 12.2
  SAY #36177 /* ~"Naliczyłam ich około dwunastu. Oczywiście robiłam to spoglądając przez szparę w drzwiach, a więc mogę się nieznacznie mylić."~ */
  IF ~~ THEN REPLY #36203 /* ~"Dwunastu, albo coś koło tego? To niewielki problem."~ */ GOTO 6
  IF ~~ THEN REPLY #36204 /* ~"Wygląda na to, że będziemy musieli przedrzeć się tam siłą."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36205 /* ~"Czy nie ma innego sposobu na to, żeby przekraść się do Alei?"~ */ GOTO 7
  IF ~~ THEN REPLY #36206 /* ~"Dzięki za słowa przestrogi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36178 /* ~"Słuchaj, możesz strugać bohatera, jeśli taka twoja wola, ale mnie do tego nie mieszaj. Zostaję tutaj. Jeżeli natomiast jakimś cudem te zwierzaki nie obedrą cię ze skóry, może się jeszcze zobaczymy." Dziewczyna odwraca się i wstępuję w mrok spowijający narożnik komnaty.~ */
  IF ~~ THEN REPLY #36207 /* ~"Po namyśle... Może nie powinienem tam iść."~ */ GOTO 7
  IF ~~ THEN REPLY #36208 /* ~"Zatem, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 6.0 12.0 13.0
  SAY #36179 /* ~"Może i jest sposób na to, aby minąć tych bydlaków bez wdawania się w walkę. Są drugie drzwi. Z tego, co byłam w stanie zobaczyć, to wzdłuż tej samej ściany, w której są drugie drzwi, znajdują się stosy drewnianych skrzyń. Może mógłbyś przekraść się tymi drzwiami do wyjścia w innej części komnaty. Jest z tym tylko jeden problem..."~ */
  IF ~~ THEN REPLY #36209 /* ~"Jaki?"~ */ GOTO 8
  IF ~~ THEN REPLY #36210 /* ~"Ze wszystkim jest zawsze jakiś problem. Bez tego nie byłoby żadnej zabawy."~ */ GOTO 8
  IF ~~ THEN REPLY #36211 /* ~"Mniejsza o to. Mam dość własnych problemów."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #36180 /* ~"Te drzwi są zamknięte na klucz... Próbowałam już je otworzyć. Wydaje mi się, że klucz ma jeden z opryszków na górze. Ale życie mi jeszcze na tyle miłe, że ani myślę włazić między tych łotrów i szukać klucza." Niewiasta krzyżuje ramiona na piersiach i spogląda na ciebie z nadzieją.~ */
  IF ~~ THEN REPLY #36212 /* ~"Jeżeli klucz jest na górze, zdobędę go. Żegnaj."~ */ DO ~SetGlobal("Sybil_Quest","GLOBAL",1)
~ JOURNAL #36033 /* ~W Kamienicy Zbójców natknąłem się na dziewczynę o imieniu Sybilla. Najwyraźniej została uwięziona wewnątrz budynku przez gang Kaosytów. Mają teraz swego rodzaju zgromadzenie w pomieszczeniu, gdzie znajduje się wyjście do Alei Uporczywych Westchnień. Sybilla powiedziała mi, że są jeszcze drugie drzwi do tego pokoju, dzięki czemu będzie można się prześlizgnąć obok zbirów unikając walki. Zgodziłem się odnaleźć klucz do tych drzwi. Najprawdopodobniej znajduje się on w posiadaniu jednego z bandytów, na wyższych piętrach Kamienicy.~ */ GOTO 17
  IF ~~ THEN REPLY #36213 /* ~"Mniejsza o to. I tak spróbuję szczęścia między tymi szaleńcami."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #36181 /* ~"A niby co mam tutaj robić? Ukrywam się. Przybyłam tu w poszukiwaniu... jadła." Zauważasz, że podczas, gdy kobieta do ciebie mówi, jej prawa ręka instynktownie sięga do sakiewki. "Nie ma tutaj nikogo, oprócz bandy ujadających szaleńców w następnej komnacie, którzy postanowili zorganizować sobie towarzyskie spotkanie tuż za progiem. Teraz jestem tutaj uwięziona i nie mogę się wydostać."~ */
  IF ~~ THEN REPLY #36214 /* ~"Ujadających szaleńców?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36215 /* ~"Szukałaś jadła, co? A cóż masz w sakiewce?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #36216 /* ~"Łżesz. Jesteś złodziejką."~ */ GOTO 12
  IF ~~ THEN REPLY #36217 /* ~"Dzięki za słowa przestrogi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #36182 /* ~"Czy nie rozchodzi się tu pogłos? Tak, ujadający szaleńcy. To członkowie szajki Jazgotu Zagłodzonego Psa, bandy zwariowanych chaosyckich łotrów, którzy są prawdziwą plagą tych okolic Ula."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36218 /* ~"To Chaosyci? Spokojna głowa, jestem członkiem ich frakcji. Pozwolą mi spokojnie przejść."~ */ GOTO 11
  IF ~~ THEN REPLY #36219 /* ~"Ilu ich tam jest?"~ */ GOTO 5
  IF ~~ THEN REPLY #36220 /* ~"Dzięki za słowa przestrogi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36183 /* ~"Nie pojmujesz tego? Psy to jeszcze więksi szaleńcy niż zwykli Chaosyci. Czy jesteś członkiem ich frakcji, czy też nie, pójdź między nich, a śmierć cię tam spotka niechybnie."~ */
  IF ~~ THEN REPLY #36221 /* ~"Ilu ich tam jest?"~ */ GOTO 5
  IF ~~ THEN REPLY #36222 /* ~"Dzięki za słowa przestrogi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 9.2
  SAY #36184 /* ~Wydaje się, że niewiasta chce ci odpowiedzieć, ale nagle powstrzymuje się z jakiegoś powodu. Studiuje cię przez chwilę uważnym spojrzeniem, potem zaś wzrusza ramionami. "No już dobrze... Jestem złodziejką. Młoda kobieta też musi jakoś zarabiać na utrzymanie. A coś ty za jeden, jeśli wolno spytać? Bo żeś nie jest z Harmonium, to już widzę. Ale przecież nie jesteś też jednym z tych bydlaków."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #36223 /* ~"Masz rację... To nie miejsce dla mnie. Czy nie ma innego sposobu na to, żeby przekraść się do Alei?"~ */ GOTO 7
  IF ~~ THEN REPLY #36224 /* ~"Zawsze jeszcze mógłbym oddać cię tym opryszkom... Może w zamian za to, pozwoliliby mi przejść?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sybil_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #36225 /* ~"Ilu ich tam jest?"~ */ GOTO 5
  IF ~~ THEN REPLY #36226 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #36185 /* ~"Ha! Nie dasz rady! Zanim się spostrzeżesz, te bydlaki roztrzaskają ci czaszkę na drobną miazgę. A tak na marginesie... to mogę ci pomóc."~ */
  IF ~~ THEN REPLY #36227 /* ~"Możesz mi pomóc? Niby jak?"~ */ GOTO 7
  IF ~~ THEN REPLY #36228 /* ~"Nie potrzebuję żadnej pomocy od małej, ohydnej złodziejki. Zaraz przekażę cię tym opryszkom."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #36229 /* ~"Mniejsza o to. I tak spróbuję szczęścia między tymi szaleńcami."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #36186 /* ~"Znowu ty?" Sybil wygląda na poirytowaną, ale jednocześnie odnosisz wrażenie, że twój widok sprawił jej ulgę. "Na Baator, śmiałku! Nie dałoby się jeszcze trochę więcej pohałasować? Słyszałam dokładnie każdy twój krok w tej sali."~ */
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36230 /* ~"Co jest za tymi drzwiami?"~ */ GOTO 1
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36231 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  Global("Sybil_Quest","GLOBAL",1)
PartyHasItem("KeySybil")
!Dead("Sentry")
~ THEN REPLY #36232 /* ~"Czy to ten klucz, o którym mówiłaś?"~ */ GOTO 15
  IF ~  Dead("Sentry")
~ THEN REPLY #36233 /* ~"Zająłem się opryszkami blokującymi wyjście. Możesz już iść dokądkolwiek chcesz."~ */ GOTO 16
  IF ~~ THEN REPLY #36234 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #36187 /* ~"Skąd niby miałabym to wiedzieć? Pójdź sam za róg i spróbuj otworzyć nim tamte drzwi. Będę cię obserwowała przez szparę w drzwiach. Jeśli ci się uda przekraść do Alei w jednym kawałku, nie omieszkam zaraz do ciebie dołączyć."~ */
  IF ~~ THEN REPLY #36235 /* ~"Zatem żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  Global("Sybil_Quest","GLOBAL",2)
Global("Current_Area","GLOBAL",401)
~ THEN BEGIN 16 // from: 14.3
  SAY #36188 /* ~"Muszę ci powiedzieć, śmiałku, że jestem pod wrażeniem. Byłam pewna, że te bydlaki zrobią z ciebie krwistą marmoladę. No cóż, sądzę, że wypadałoby ci jakoś podziękować." Dziewczyna wyciąga z sakiewki niewielki, zielony klejnot. "Proszę... Na rachunek Psów. Do zobaczenia, śmiałku."~ */
  IF ~~ THEN REPLY #36236 /* ~"Bywaj zdrowa, Sybillo."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
~ JOURNAL #36032 /* ~Dzięki moim wysiłkom Sybilla zdołała bezpiecznie wydostać się z Kamienicy. Coś mi się jednak zdaje, że niedługo potrwa nim znowu wpadnie w kłopoty.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0
  SAY #50008 /* ~"Jeżeli będziesz w stanie pożyć w tym miejscu na tyle długo, aby znaleźć klucz, wiedz, że drzwi znajdują się w komnacie położonej na południowy wschód od tego miejsca. Będę obserwowała z mroków twoje usiłowania. Jeśli ci się uda przekraść do Alei w jednym kawałku, nie omieszkam zaraz do ciebie dołączyć."~ */
  IF ~~ THEN REPLY #50009 /* ~"Zatem żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sybil_Quest","GLOBAL",0)
Dead("Sentry")
~ THEN BEGIN 18 // from:
  SAY #50010 /* ~"Muszę ci powiedzieć, śmiałku, że jestem pod wrażeniem. Byłam pewna, że te bydlaki zrobią z ciebie krwistą marmoladę. No cóż, sądzę, że wypadałoby ci jakoś podziękować." Dziewczyna wyciąga z sakiewki niewielki, zielony klejnot. "Proszę... Na rachunek Psów. Do zobaczenia, śmiałku."~ */
  IF ~~ THEN REPLY #50011 /* ~"Bywaj zdrowa, Sybillo."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
EscapeArea()
~ EXIT
END
