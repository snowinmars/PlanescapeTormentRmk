// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DASHMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DASHMAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 42 44 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2133 /* ~Widzisz mężczyznę w długich czarnych szatach i o bladej twarzy. Wygląda na jednego z tych ludzi, których widziałeś w Kostnicy, ale w przeciwieństwie do nich ten wydaje się być zagubiony i rozgląda się wokół. Gdy cię zauważa, podnosi dłoń, by zwrócić na siebie twoją uwagę.~ */
  IF ~~ THEN REPLY #2180 /* ~"Witaj."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2181 /* ~Zignoruj mężczyznę.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 42 44 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2134 /* ~Widzisz Grabarza w długich czarnych szatach i o bladej twarzy. W przeciwieństwie jednak do tych, których widziałeś w Kostnicy, ten wydaje się być zagubiony i rozgląda się wokół, jakby czegoś szukał. Gdy cię zauważa, podnosi dłoń, by zwrócić na siebie twoją uwagę.~ */
  IF ~~ THEN REPLY #2182 /* ~"Witaj."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2183 /* ~Zignoruj mężczyznę.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2135 /* ~Mężczyzna zdaje się uspokajać, widząc że chcesz z nim rozmawiać. Kłania się lekko. "Dzięki, że zechciałeś mnie wysłuchać, wędrowcze. Znany jestem jako Popielata Opończa, jeden z członków sekty Grabarzy. Zastanawiałem się, czy mógłbyś mnie skierować... nie znam dobrze tej okolicy, a szukam pewnego miejsca, karczmy, do której wstępują należący do mojej sekty. Czy znasz takie miejsce?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2184 /* ~"Wiesz, mówią, że gdzieś w okolicy znajduje się kieszonkowiec udający Grabarza. Znasz go może?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #2185 /* ~"Sekty? Nie masz na myśli 'frakcji'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2186 /* ~"Sekty? Jesteś Grabarzem; nie masz na myśli 'frakcji'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2187 /* ~"Och, karczma Grabarzy? Znajduje się ona obok Kostnicy. Stań przed główną bramą, po czym idź dokładnie na południowy zachód. Nie można jej przegapić."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2188 /* ~"Słyszałem o niej. Pomogę ci... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #61400 /* ~"Słyszałem o niej. Mogę ci pomóc... jeśli odpowiesz mi na parę pytań."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2189 /* ~Kłamstwo: "Eee... tak, słyszałem o niej. Pomogę ci... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2190 /* ~Kłamstwo: "Eee... tak, słyszałem o niej. Pomogę ci... jeśli odpowiesz mi na kilka pytań."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2191 /* ~"Nie, przykro mi, nie wiem, gdzie ona się znajduje."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2192 /* ~Kłamstwo: "Nie, przykro mi, nie wiem, gdzie ona się znajduje."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2193 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2194 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2 45.1 45.2
  SAY #2136 /* ~Grabarz przytakuje. "Cóż, tak, *frakcja*... sekta, frakcja, to tak naprawdę mniej więcej to samo... czy wiesz coś o tej karczmie odwiedzanej przez członków mojej frakcji?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2195 /* ~"Wiesz, mówią, że gdzieś w okolicy znajduje się kieszonkowiec udający Grabarza. Znasz go może?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2196 /* ~"Karczma, której szukasz znajduje się obok Kostnicy. Stań przed główną bramą, po czym idź dokładnie na południowy zachód. Nie można jej przegapić."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2197 /* ~"Słyszałem o niej. Pomogę ci... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2198 /* ~"Słyszałem o niej. Pomogę ci... jeśli odpowiesz mi na kilka pytań."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2199 /* ~Kłamstwo: "Ehm... tak, słyszałem o niej. Pomogę ci... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2200 /* ~Kłamstwo: "Ehm... tak, słyszałem o niej. Pomogę ci... jeśli odpowiesz mi na kilka pytań."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2201 /* ~"Nie, przykro mi, nie wiem, gdzie ona się znajduje."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2202 /* ~Kłamstwo: "Nie, przykro mi, nie wiem, gdzie ona się znajduje."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2203 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2204 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.4 2.6 3.2 3.4 43.2 43.4 45.4 45.6
  SAY #2137 /* ~Wzdycha i podnosi ręce. "Żałuję, ale nie posiadam brzdęku, który mógłbym oddać."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2205 /* ~"Zatem zapomnij o tym. Karczma, której szukasz, znajduje się obok Kostnicy. Stań przed wejściem do niej, po czym idź dokładnie na południowy zachód. Nie można jej przegapić."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #2206 /* ~"Co ty na to, odpowiesz mi na parę pytań i będziemy kwita."~ */ GOTO 7
  IF ~~ THEN REPLY #2613 /* ~"Zatem nie mogę ci pomóc. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.8 2.9 2.10 2.11 3.6 3.7 3.8 3.9 4.2 6.1 7.2 8.4 9.1 10.2 11.2 12.4 13.2 14.2 15.3 16.2 18.4 43.6 43.7 45.8 45.9
  SAY #2138 /* ~Grabarz przytakuje i kłania ci się. "Dziękuję za poświęcony mi czas."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2614 /* ~"Nie ma sprawy. Żegnaj."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2615 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2616 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",1)
~ THEN REPLY #2617 /* ~"Nie ma sprawy. Żegnaj."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #2618 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1 4.0 7.0 7.1 43.1 45.3
  SAY #2139 /* ~Grabarz uśmiecha się. "Dziękuję bardzo, podróżniku. Doceniam twoją grzeczność. Mieszkańcy Ula są... rzadko pomocni w tego typu sprawach."~ */
  IF ~~ THEN REPLY #2620 /* ~"Opowiedz mi o tym. Słuchaj, czy mogę zadać ci kilka pytań?"~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #2621 /* ~"Nie ma sprawy. Żegnaj, Popielata Opończo."~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.5 2.7 3.3 3.5 4.1 43.3 43.5 45.5 45.7
  SAY #2140 /* ~Przytakuje. "Twoja prośba brzmi sensownie. Powiedz mi, gdzie mogę znaleźć karczmę 'Proch do Prochu', a z chęcią odpowiem na każde twoje pytanie."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2622 /* ~"Karczma, której szukasz, znajduje się obok Kostnicy. Stań przed wejściem do niej, po czym idź dokładnie na południowy zachód. Nie można jej przegapić."~ */ GOTO 6
  IF ~~ THEN REPLY #2649 /* ~Kłamstwo: "Tia, stań przed Kostnicą, po czym przejdź... trzy budynki na zachód, jak sądzę... i skręć w pierwszą alejkę po prawej."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_5","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #2650 /* ~"Tak właściwie to nie potrafię sobie teraz przypomnieć, gdzie ona się znajduje. Wrócę, gdy będę wiedział. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.0 9.0 10.1 11.1 12.3 13.1 14.1 15.2 16.1
  SAY #2141 /* ~"Jakie masz pytania?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2651 /* ~"Szukam mężczyzny o imieniu Farod. Wiesz coś o nim?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2652 /* ~"Szukam zgubionego dziennika. Nie wiesz, gdzie mogę go znaleźć?"~ */ GOTO 10
  IF ~~ THEN REPLY #2653 /* ~"Czy możesz powiedzieć mi coś o okolicy?"~ */ GOTO 12
  IF ~~ THEN REPLY #2654 /* ~"Czy możesz powiedzieć mi coś o Grabarzach?"~ */ GOTO 15
  IF ~~ THEN REPLY #2655 /* ~"Nieważne. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #2142 /* ~"Wybacz mi, ale to imię nie jest mi znane."~ */
  IF ~~ THEN REPLY #2656 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #2657 /* ~"Nie ma sprawy. Żegnaj, Popielata Opończo."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #2143 /* ~"Nie wiem, gdzie mógłbyś odnaleźć taką rzecz. Żałuję twej straty."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2658 /* ~"Naprawdę? Sądziłem, że Grabarze nie cenią własności."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #2659 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #2660 /* ~"Dzięki za troskę. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #2144 /* ~Mężczyzna wzrusza lekko ramionami. "Nie pozostaję nieczuły na twoją stratę. Wiele jest cennych rzeczy w życiu każdego."~ */
  IF ~~ THEN REPLY #2662 /* ~"Masz... *nietypowe* poglądy jak na Grabarza."~ */ GOTO 14
  IF ~~ THEN REPLY #2663 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #2664 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY #2145 /* ~"To miejsce... cóż, na północnym wschodzie, jak mi się wydaje, jest rynek. I jakiś urząd na południowym wschodzie..." Zastanawia się przez chwilę. "Urząd Kontroli Gryzoni, jak sądzę."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2665 /* ~"Powiedziałeś, że nie znasz dobrze tej okolicy."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #2666 /* ~"Zdaje się, że *ten* teren znasz całkiem dobrze."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #2667 /* ~"Zdaje się, że *ten* teren znasz całkiem dobrze."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #2668 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #2669 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #2146 /* ~Wzrusza ramionami. "Ul to duże miejsce. Znam kilka miejsc, a wielu innych nie."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2670 /* ~"To dziwne, że Grabarz nie wie, gdzie znajduje się karczma 'Proch do Prochu' - to tuż obok Kostnicy."~ */ GOTO 14
  IF ~~ THEN REPLY #2671 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #2672 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0 15.0
  SAY #2147 /* ~Mężczyzna mruga. "Cóż... nie jestem zwykłym Grabarzem."~ */
  IF ~~ THEN REPLY #2673 /* ~"Zauważyłem to. Kim jesteś?"~ */ GOTO 16
  IF ~~ THEN REPLY #2680 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #2681 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY #2148 /* ~Milknie na chwilę... po czym przytakuje. "Z przyjemnością. My... Grabarze... widzimy to życie tym, czym jest: okazją do doświadczenia naszych żądz przed następnym życiem. Przesypujemy prochy naszych przeszłych żyć w poszukiwaniu znaczenia zanim przejdziemy do kolejnego."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2682 /* ~"Uch... to dość *nietypowe* poglądy na Grabarza."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2683 /* ~"Takiej gwary od Grabarza jeszcze nie słyszałem. Kim jesteś?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #2684 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #2685 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.1
  SAY #2149 /* ~Mężczyzna przytakuje, nieco niepewnie. "Cóż, jestem Popielata Opończa, z dziewiątego kręgu."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2686 /* ~"Dziewiąty Krąg? Nie ma nic takiego."~ */ GOTO 17
  IF ~~ THEN REPLY #2687 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #2688 /* ~"W porządku. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #2150 /* ~Nagle mężczyzna tężeje. "Nie mam czasu, by omawiać z tobą praktyki i rangi sekty Grabarzy. Tak więc wybacz mi..."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2689 /* ~Chwyć go za rękę.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2690 /* ~Chwyć go za rękę.~ */ GOTO 26
  IF ~~ THEN REPLY #2691 /* ~"Kim jesteś naprawdę?"~ */ GOTO 27
  IF ~~ THEN REPLY #2692 /* ~"Zatem nieważne. Wybacz, że cię obraziłem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.0 3.0 20.2 21.2 22.2 23.2 24.2 43.0 45.0
  SAY #2151 /* ~Mężczyzna patrzy na ciebie niewinnie, ale widzisz, jak tężeje. "Przepraszam?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2693 /* ~Chwyć go za rękę.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2694 /* ~Chwyć go za rękę.~ */ GOTO 26
  IF ~~ THEN REPLY #2695 /* ~"Nie jesteś Grabarzem. Jesteś kieszonkowcem."~ */ GOTO 27
  IF ~~ THEN REPLY #2696 /* ~"Też mi przykro. Przygotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2697 /* ~"Nieważne. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 29.8 29.9 30.2 30.3 32.3 32.4 33.3 33.4 35.2 35.3 36.3 36.4 40.3 40.4 41.2 41.3
  SAY #2153 /* ~Przytakuje. "Dobrze. Nasze drogi nigdy więcej się nie skrzyżują. Znajdę sobie inne skubnięcie... ehm, inny zawód gdzieś indziej."~ */
  IF ~~ THEN REPLY #2698 /* ~"Doskonale. A teraz idź."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.1
  SAY #2154 /* ~Chcesz się odwrócić, gdy nagle masz wrażenie, że czegoś ci brakuje. Pełen podejrzeń ponownie rzucasz spojrzenie na Popielatą Opończę, akurat w porę, żeby zauważyć, jak wsuwa coś do rękawa... coś, co wygląda na twoje.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2699 /* ~Chwyć go za rękę.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2700 /* ~Chwyć go za rękę.~ */ GOTO 25
  IF ~~ THEN REPLY #2723 /* ~"Hej! Co ty właściwie robisz?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2724 /* ~Sprowokuj Popielatą Opończę, aby cię jeszcze raz spróbował okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2726 /* ~Sprowokuj Popielatą Opończę, aby cię jeszcze raz spróbował okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2727 /* ~Sprowokuj Popielatą Opończę, aby cię jeszcze raz spróbował okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2728 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2729 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY #2155 /* ~Gdybyś już nie był pełen podejrzeń, przegapiłbyś jak podczas jednego ze swoich niskich ukłonów Popielata Opończa błyskawicznie sięga dłonią po twoją sakiewkę.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2730 /* ~Chwyć go za rękę.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2731 /* ~Chwyć go za rękę.~ */ GOTO 25
  IF ~~ THEN REPLY #2732 /* ~"Hej! Co ty właściwie robisz?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2733 /* ~Pozwól Popielatej Opończy ponownie cię okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2735 /* ~Pozwól Popielatej Opończy ponownie cię okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2736 /* ~Pozwól Popielatej Opończy ponownie cię okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2737 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2738 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.0
  SAY #2156 /* ~Gdyby nie ostrzeżono cię przed Grabarzem złodziejaszkiem, przegapiłbyś jak podczas jednego ze swoich niskich ukłonów Popielata Opończa błyskawicznie sięga dłonią po twoją sakiewkę.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2739 /* ~Chwyć go za rękę.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2740 /* ~Chwyć go za rękę.~ */ GOTO 25
  IF ~~ THEN REPLY #2741 /* ~"Hej! Co ty właściwie robisz?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2742 /* ~Pozwól Popielatej Opończy ponownie cię okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2744 /* ~Pozwól Popielatej Opończy ponownie cię okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2746 /* ~Pozwól Popielatej Opończy ponownie cię okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2747 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2748 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY #2157 /* ~Może to twoje własne umiejętności kieszonkowca sprawiają, że jesteś ostrożny, ale gdy się odwracasz, instynktownie sprawdzasz swoją sakiewkę... i zauważasz jak Popielata Opończa zdejmuje z niej dłoń. Zdaje się jednak nie wiedzieć, że go zauważyłeś.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2749 /* ~Chwyć go za rękę.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2750 /* ~Chwyć go za rękę.~ */ GOTO 25
  IF ~~ THEN REPLY #2751 /* ~"Hej! Co ty właściwie robisz?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2752 /* ~Sprowokuj Popielatą Opończę, aby cię jeszcze raz spróbował okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2754 /* ~Sprowokuj Popielatą Opończę, aby cię jeszcze raz spróbował okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2755 /* ~Sprowokuj Popielatą Opończę, aby cię jeszcze raz spróbował okraść i przyjrzyj się jego technice.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2756 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2760 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3 20.4 20.5 21.3 21.4 21.5 22.3 22.4 22.5 23.3 23.4 23.5
  SAY #2158 /* ~Pod pozorem przekazywania mu dalszych wskazówek do miejsc w Ulu, angażujesz Popielatą Opończę w lekką rozmowę i kątem oka przypatrujesz się jego ruchom. Mężczyzna ten zdaje się w dużej mierze polegać na przebraniu Grabarza, by rozbroić ofiarę i przy pomocy częstych ukłonów stara się ukryć swoje próby złodziejstwa. Zapamiętujesz sobie tę technikę... w tej samej chwili on ponownie stara się wydostać z twojej sakiewki garść monet.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2761 /* ~Chwyć go za rękę.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2762 /* ~Chwyć go za rękę.~ */ GOTO 25
  IF ~~ THEN REPLY #2777 /* ~"Hej! Co ty właściwie robisz?!"~ */ GOTO 18
  IF ~~ THEN REPLY #2778 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2779 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.0 18.0 20.1 21.1 22.1 23.1 24.1
  SAY #2159 /* ~Chwytasz go dłonią za nadgarstek miażdżącym uściskiem. Widzisz, jak jego maska Grabarza pęka, a on parska i próbuje się wyrwać z twojego uścisku. "Puść mnie, psie, albo zawołam strażników!"~ */
  IF ~~ THEN REPLY #2780 /* ~"*Po tym*, jak odpowiesz mi na kilka pytań, 'Grabarzu'."~ */ GOTO 28
  IF ~~ THEN REPLY #12067 /* ~"Daj mi wszystko co masz, złodzieju, a pozwolę ci odejść."~ */ GOTO 28
  IF ~~ THEN REPLY #12068 /* ~"Straże? Dalej, wołaj. Jestem pewien, że jest ich tu *wiele* w okolicy."~ */ GOTO 28
  IF ~~ THEN REPLY #12069 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12070 /* ~Pozwól mu odejść.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.1 18.1 20.0 21.0 22.0 23.0 24.0
  SAY #2160 /* ~Chcesz chwycić jego nadgarstek, ale Popielata Opończa szybko się wycofuje i nie udaje ci się to. Widzisz, jak jego maska Grabarza pęka, a on z przestraszonym spojrzeniem odbiega!~ */
  IF ~~ THEN REPLY #12071 /* ~"Cholera..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.2 18.2
  SAY #2161 /* ~Popielata Opończa nagle zaczyna uciekać!~ */
  IF ~~ THEN REPLY #12072 /* ~"Cholera..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.0 25.1 25.2
  SAY #2162 /* ~"Phi." Wygląda na zirytowanego. "Co mnie wydało?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12073 /* ~"Ostrzeżono mnie, że ktoś taki jak ty przebiera się za Grabarza i kradnie."~ */ GOTO 29
  IF ~  GlobalGT("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #12074 /* ~"Twoja ignorancja dotycząca powszechnych wierzeń Grabarzy. Powinieneś trochę popytać, zanim spróbujesz oszukać kogoś, kto jest sprytniejszy od ciebie. A teraz mam do ciebie kilka pytań..."~ */ GOTO 29
  IF ~~ THEN REPLY #12075 /* ~"Musisz popracować nad umiejętnościami kieszonkowca. A teraz mam do ciebie kilka pytań..."~ */ GOTO 29
  IF ~~ THEN REPLY #12076 /* ~"Sam się tego domyśl. A teraz mam do ciebie kilka pytań..."~ */ GOTO 29
  IF ~~ THEN REPLY #12077 /* ~"Nie pożyjesz wystarczająco długo, aby się tego dowiedzieć. Gotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1 28.2 28.3 30.0 32.1 33.0 35.0 36.1 41.0
  SAY #2163 /* ~"Zatem jakie są twoje pytania?"~ */
  IF ~~ THEN REPLY #12078 /* ~"Co robisz w tym wdzianku Grabarzy?"~ */ GOTO 30
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12079 /* ~"Szukam człowieka o imieniu Farod. Znasz go?"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12080 /* ~"Szukam dziennika."~ */ GOTO 35
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12081 /* ~Prawda: "Daj mi wszystko, co masz, albo cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12082 /* ~Blef: "Daj mi wszystko, co masz, albo cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12083 /* ~Prawda: "A teraz... daj mi *wszystko*, co masz, albo cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 33
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12084 /* ~Blef: "A teraz... daj mi *wszystko*, co masz, albo cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #12085 /* ~"Moje pytanie brzmi, ile sekund zabierze mi zabicie ciebie... gotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12086 /* ~"Spadaj stąd. Jeszcze raz cię tu zobaczę, to cię wybebeszę."~ */ GOTO 19
  IF ~~ THEN REPLY #12087 /* ~"A teraz odejdź. Nie chcę nawet *słyszeć*, że gdzieś w Sigil znowu odstawiasz tę parodię. Zrozumiałeś?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #2164 /* ~Wzrusza ramionami. "Nikt nie podejrzewa Grabarza." Śmieje się pusto. "Można nieźle zarobić, zanim ktoś się połapie."~ */
  IF ~~ THEN REPLY #12088 /* ~"Interesujące. Mam jeszcze kilka pytań..."~ */ GOTO 29
  IF ~~ THEN REPLY #12089 /* ~"To wszystko, co chciałem wiedzieć. Gotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12090 /* ~"Rozumiem. Słuchaj, Popielata Opończo, jak to załatwimy: jeszcze raz cię tu zobaczę, to cię wybebeszę. A teraz spadaj."~ */ GOTO 19
  IF ~~ THEN REPLY #12091 /* ~"Tia, całkiem sprytne. Słuchaj, nie chcę dowiedzieć się, że gdzieś w Sigil znowu odstawiasz tę parodię. Zrozumiałeś?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 29.3 29.4
  SAY #2165 /* ~Oczy mężczyzny się zwężają. "Nic przy sobie nie mam. Byłeś dziś moim pierwszym celem."~ */
  IF ~~ THEN REPLY #12092 /* ~Blef: "Teraz już nie tylko udajesz głupka, ale nim *jesteś*. Daj mi, co masz, albo Zbieracze będą ściągać z ulicy kolejne ciało."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
GiveGoldForce(50)
~ GOTO 32
  IF ~~ THEN REPLY #12093 /* ~Prawda: "Teraz już nie tylko udajesz głupka, ale nim *jesteś*. Daj mi, co masz, albo Zbieracze będą ściągać z ulicy kolejne ciało."~ */ DO ~GiveGoldForce(50)
IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #12094 /* ~"Zła odpowiedź. Przygotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12095 /* ~"Ach tak? Cóż, zatem pozwól, że cię przetrząsnę i zobaczymy, czy to prawda."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #2166 /* ~Mruczy, ocenia cię, zastanawiając się, czy byś mu sprostał, namyśla się, po czym dotyka szwu swojej szaty. Ostrym szarpnięciem wyrywa część materiału i wyciąga ukryty w środku mały kawałek miedzi. Podaje ci go. Nie sądzisz, aby udało ci się go znaleźć, gdyby go nie odkrył.~ */
  IF ~~ THEN REPLY #12096 /* ~"To wszystko? Lepiej daj mi coś jeszcze, Popielata Opończo, albo ty i śmierć staniecie się za chwilę bliskimi przyjaciółmi."~ */ GOTO 33
  IF ~~ THEN REPLY #12097 /* ~"Zatem dobrze. A teraz mam do ciebie jeszcze kilka pytań..."~ */ GOTO 29
  IF ~~ THEN REPLY #12098 /* ~"To wszystko, co chciałem wiedzieć. Gotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12099 /* ~"Spadaj stąd. Jeszcze raz cię tu zobaczę, to cię wybebeszę."~ */ GOTO 19
  IF ~~ THEN REPLY #12100 /* ~"A teraz odejdź. Nie chcę nawet *słyszeć*, że gdzieś w Sigil znowu odstawiasz tę parodię. Zrozumiałeś?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 33 // from: 29.5 29.6 32.0
  SAY #2167 /* ~Odsłania zęby. "Nic więcej nie mam."~ */
  IF ~~ THEN REPLY #12101 /* ~"Zatem dobrze. A teraz mam do ciebie jeszcze kilka pytań..."~ */ GOTO 29
  IF ~~ THEN REPLY #12102 /* ~"Ach tak? Cóż, zatem pozwól, że cię przetrząsnę i zobaczymy, czy to prawda."~ */ GOTO 34
  IF ~~ THEN REPLY #12103 /* ~"Zła odpowiedź. Przygotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12104 /* ~"Spadaj stąd. Jeszcze raz cię tu zobaczę, to cię wybebeszę."~ */ GOTO 19
  IF ~~ THEN REPLY #12105 /* ~"A teraz odejdź. Nie chcę nawet *słyszeć*, że gdzieś w Sigil znowu odstawiasz tę parodię. Zrozumiałeś?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 34 // from: 31.3 33.1
  SAY #2168 /* ~Gdy chcesz go przeszukać, nagle z jego rękawa wysuwa się sztylet i ląduje w jego wolnej dłoni. Mężczyzna parska i atakuje cię!~ */
  IF ~~ THEN REPLY #12106 /* ~"No dobrze..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.2
  SAY #2169 /* ~Mężczyzna marszczy się. "Więc? Sądzisz, że coś takiego widziałem? Zajmuję się tylko brzdękiem, trepie."~ */
  IF ~~ THEN REPLY #12107 /* ~"Zatem dobrze. A teraz mam do ciebie jeszcze kilka pytań..."~ */ GOTO 29
  IF ~~ THEN REPLY #12108 /* ~"To wszystko, co chciałem wiedzieć. Gotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12109 /* ~"Spadaj stąd. Jeszcze raz cię tu zobaczę, to cię wybebeszę."~ */ GOTO 19
  IF ~~ THEN REPLY #12110 /* ~"A teraz odejdź. Nie chcę nawet *słyszeć*, że gdzieś w Sigil znowu odstawiasz tę parodię. Zrozumiałeś?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 36 // from: 29.1
  SAY #2170 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #12111 /* ~"Kim on jest?"~ */ GOTO 37
  IF ~~ THEN REPLY #12112 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 29
  IF ~~ THEN REPLY #12113 /* ~"Zapomnij. Przygotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12114 /* ~"Spadaj stąd. Jeszcze raz cię tu zobaczę, to cię wybebeszę."~ */ GOTO 19
  IF ~~ THEN REPLY #12115 /* ~"A teraz odejdź. Nie chcę nawet *słyszeć*, że gdzieś w Sigil znowu odstawiasz tę parodię. Zrozumiałeś?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2171 /* ~"Czy pozwolisz mi odejść, jeśli ci powiem?"~ */
  IF ~~ THEN REPLY #12116 /* ~"Nie."~ */ GOTO 38
  IF ~~ THEN REPLY #12117 /* ~Przyrzeczenie: "Masz moje słowo, że pozwolę ci odejść... jeśli odpowiesz na moje pytanie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12118 /* ~Prawda: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12119 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_3","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12120 /* ~Prawda: "Pozwolę ci *żyć*, jeśli mi powiesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #12121 /* ~Blef: "Pozwolę ci *żyć*, jeśli mi powiesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.4 37.5
  SAY #2172 /* ~Spluwa na ziemię. "Zatem w tej sprawie mam niewiele do powiedzenia."~ */
  IF ~~ THEN REPLY #12122 /* ~Przyrzeczenie: "Masz moje słowo na to, że pozwolę ci odejść... jeśli odpowiesz na moje pytanie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12123 /* ~Prawda: "Dobrze, pozwolę ci odejść."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12124 /* ~Kłamstwo: "Dobrze, pozwolę ci odejść."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_4","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12125 /* ~Prawda: "Pozwolę ci *żyć*, jeśli mi powiesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12126 /* ~Blef: "Pozwolę ci *żyć*, jeśli mi powiesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12127 /* ~"Zła odpowiedź. Przygotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 37.2 37.3 38.0 38.1 38.2 38.3 38.4
  SAY #2173 /* ~"Farod to szef Zbieraczy. Ma w swoim cieniu wielu chłopców, a śpiewka głosi, że mają ustawioną czystą operację. Nie wiem o tym wiele więcej. Zadając się z nimi dobrze być ostrożnym."~ */
  IF ~~ THEN REPLY #12128 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2174 /* ~"Ma swoje leże na Placu Szmaciarzy... to potężna sterta szmat i śmiecia na północ i zachód stąd. Przejdź przez północną bramę, po czym idź dalej na północ, aż tam trafisz. Śpiewka głosi, że Farod ukrywa się gdzieś w górze śmiecia, może gdzieś pod nią. Kto wie? Teraz mnie puścisz?"~ */
  IF ~  Global("Lawful_Ash_1","GLOBAL",0)
~ THEN REPLY #12129 /* ~"Nie. Mam do ciebie jeszcze kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_2","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("Lawful_Ash_1","GLOBAL",1)
~ THEN REPLY #12130 /* ~"Nie. Mam do ciebie jeszcze kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_6","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ash_9","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #12131 /* ~"To wszystko, co chciałem wiedzieć. Gotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12132 /* ~"Spadaj stąd. Jeszcze raz cię tu zobaczę, to cię wybebeszę."~ */ GOTO 19
  IF ~~ THEN REPLY #12133 /* ~"A teraz odejdź. Nie chcę nawet *słyszeć*, że gdzieś w Sigil znowu odstawiasz tę parodię. Zrozumiałeś?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #2175 /* ~Wygląda na wściekłego. "*Powiedziałeś*, że mnie puścisz."~ */
  IF ~~ THEN REPLY #12134 /* ~"A *ty* powiedziałeś, że jesteś Grabarzem. A teraz moje pytania..."~ */ GOTO 29
  IF ~~ THEN REPLY #12135 /* ~"Tak, powiedziałem ci wiele rzeczy, a teraz zmęczyłem się gadaniem. Gotuj się na śmierć."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12136 /* ~"Spadaj stąd. Jeszcze raz cię tu zobaczę, to cię wybebeszę."~ */ GOTO 19
  IF ~~ THEN REPLY #12137 /* ~"A teraz odejdź. Nie chcę nawet *słyszeć*, że gdzieś w Sigil znowu odstawiasz tę parodię. Zrozumiałeś?"~ */ GOTO 19
END

IF WEIGHT #1 /* Triggers after states #: 44 even though they appear after this state */
~  GlobalGT("Ashmantle","GLOBAL",0)
~ THEN BEGIN 42 // from:
  SAY #2176 /* ~Ponownie dostrzegasz Popielatą Opończę... wciąż wygląda na zagubionego i mruczy, patrząc na budynki.~ */
  IF ~  Global("Directed_Ashmantle","GLOBAL",0)
~ THEN REPLY #12138 /* ~"Witaj."~ */ GOTO 45
  IF ~  Global("Directed_Ashmantle","GLOBAL",1)
~ THEN REPLY #12139 /* ~"Witaj."~ */ GOTO 43
  IF ~~ THEN REPLY #12140 /* ~Przejdź obok.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #2177 /* ~"Obawiam się, że zapomniałem twoich wskazówek, panie. Czy mógłbym prosić cię, abyś je powtórzył?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12141 /* ~"Wiesz, mówią, że gdzieś w okolicy znajduje się kieszonkowiec udający Grabarza. Znasz go może?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12142 /* ~"Och, karczma Grabarzy? Znajduje się ona obok Kostnicy. Stań przed główną bramą, po czym idź dokładnie na południowy zachód. Nie można jej przegapić."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12143 /* ~"Słyszałem o tej karczmie. Pomogę ci... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12144 /* ~"Słyszałem o tej karczmie. Pomogę ci... jeśli odpowiesz mi na kilka pytań."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12145 /* ~Kłamstwo: "Ehm... tak, słyszałem o tej karczmie. Pomogę ci... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12146 /* ~Kłamstwo: "Ehm... tak, słyszałem o tej karczmie. Pomogę ci... jeśli odpowiesz mi na kilka pytań."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12147 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12148 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ GOTO 5
END

IF WEIGHT #0 ~  Global("Remove_Ash","GLOBAL",1)
~ THEN BEGIN 44 // from:
  SAY #2178 /* ~"Odchodzę! Zostaw mnie w spokoju!"~ */
  IF ~~ THEN REPLY #12149 /* ~"Sugeruję, abyś się pospieszył."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0
  SAY #2179 /* ~"Wiem, że ostatnim razem nie byłeś w stanie mi pomóc, panie. Może tym razem będziesz wiedział, gdzie znajduje się karczma nawiedzana przez członków mojej sekty?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12150 /* ~"Wiesz, mówią, że gdzieś w okolicy znajduje się kieszonkowiec udający Grabarza. Znasz go może?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #12151 /* ~"Sekty? Nie masz na myśli 'frakcji'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #12152 /* ~"Sekty? Jesteś Grabarzem, nie masz na myśli 'frakcji'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12153 /* ~"Och, karczma Grabarzy? Znajduje się ona obok Kostnicy. Stań przed główną bramą, po czym idź dokładnie na południowy zachód. Nie można jej przegapić."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12154 /* ~"Słyszałem o niej. Pomogę ci... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12155 /* ~"Słyszałem o niej. Pomogę ci... jeśli odpowiesz mi na kilka pytań."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12156 /* ~Kłamstwo: "Ehm... tak, słyszałem o niej. Pomogę ci... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12157 /* ~Kłamstwo: "Ehm... tak, słyszałem o niej. Pomogę ci... jeśli odpowiesz mi na kilka pytań."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12158 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12159 /* ~"Nie mogę ci pomóc. Żegnaj."~ */ GOTO 5
END
