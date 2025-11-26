// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : P_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~P_JRNL~

IF ~  Global("P_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45746 /* ~Ten ciężki dwunastościan, którego rozmiar odpowiada obu twoim pięściom złożonym razem, wydaje ci się znajomy, choć nie umiesz wyjaśnić dlaczego. W dotyku jest zimny i gładki, ale nie możesz rozpoznać, czy zrobiono go z metalu, czy z kamienia. Po jego powierzchni przebiega pewne, prawie niewyczuwalne 'napięcie', jakby był gotowy w każdej chwili wyskoczyć w powietrze.~ */
  IF ~~ THEN REPLY #45747 /* ~Przyjrzyj się dwunastościanowi dokładnie.~ */ GOTO 1
  IF ~~ THEN REPLY #46207 /* ~Odłóż bryłę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46208 /* ~Po bliższym przyjrzeniu mu się, spostrzegasz, że każda jego ściana jest płytą, którą można przekręcić w prawo lub w lewo... wygląda na to, że to jest jakaś układanka albo zamek szyfrowy. Ponieważ każda z pięciokątnych ścian może przyjąć pięć różnych pozycji, dwunastościan ma co najmniej dwieście czterdzieści cztery miliony sto czterdzieści tysięcy sześćset dwadzieścia pięć możliwych kombinacji 'ustawień'. Gdybyś co sekundę ustawiał następną kombinację, spróbowanie wszystkich kombinacji zabrałoby ci następne siedemdziesiąt siedem lat - ale z drugiej strony, *mógłbyś* mieć na tyle szczęścia, żeby natknąć się na rozwiązanie w parę minut...~ */
  IF ~~ THEN REPLY #46209 /* ~Pobaw się trochę dwunastościanem.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 2
  IF ~~ THEN REPLY #46210 /* ~Po prostu go odłóż.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46211 /* ~Kiedy zaczynasz po kolei kręcić zimnymi, szarymi ścianami dwunastościanu, w podstawie twojej czaszki tworzy się dziwne uczucie. Twoje ręce zdają się poruszać tak, jak same chcą, obracając przedmiot i kręcąc ścianami z mechaniczną precyzją. Już kiedyś to robiłeś... te kombinacje nie są ci obce... zdajesz sobie także sprawę z tego, że w głębi tego przedmiotu czai się jakieś *niebezpieczeństwo*. Nie możesz sobie jednak przypomnieć, czy chodzi o jakieś proste pułapki, czy coś bardziej niezwykłego.~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #46212 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,9,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46213 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,9,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46214 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46215 /* ~Już po chwili pierwsze cztery ściany znajdują się w odpowiedniej pozycji. Kiedy zaczynasz ustawiać piątą ścianę, przypominasz sobie o wymyślnym ostrzu-pułapce, które wyskakuje, aby odciąć nadgarstki i palce tego, kto usiłuje rozwiązać zagadkę. Unikasz pułapki dzięki odpowiedniej kombinacji obrotów. Teraz masz już pewność, że udało ci się posunąć dalej na drodze do odkrycia tajemnic, jakie kryje w sobie ten dwunastościan.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46216 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46217 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46218 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46219 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.0
  SAY #46220 /* ~Po uniknięciu sprężynujących ostrzy zaczynasz wolno rozwiązywać ustawienia następnych ścian. Kiedy zabierasz się do przekręcenia dziewiątej, nagle przypominasz sobie o następnej pułapce - strumieniu toksycznego gazu, który utworzyłby zabójczą chmurę wokół każdego, kto byłby na tyle nierozważny, żeby zabierać się za rozwiązanie zagadki bez odpowiedniej wiedzy. Obchodzisz i tę pułapkę dzięki odpowiedniej ilości skrętów. Ogarnia cię zadowolenie, że już prawie udało ci się otworzyć dwunastościan.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46221 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46222 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46223 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46224 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #46225 /* ~Po uniknięciu gazowej pułapki ukrytej we wnętrzu dwunastościanu zaczynasz ustawiać ostatnie ściany. Kiedy już masz ustawić dwunastą ścianę, przypominasz sobie zaklęte runy ukryte wewnątrz przedmiotu, które poraziłyby napastnika magicznymi błyskawicami. Po rozbrojeniu pułapki za pomocą odpowiedniej ilości obrotów, dwunastościan *klika* i zaczyna się otwierać w twoich rękach...~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #46226 /* ~Już po chwili pierwsze cztery ściany znajdują się w odpowiedniej pozycji. Kiedy zaczynasz ustawiać piątą ścianę, z wnętrza dwunastościanu wyskakuje ostrze, które przecina ci nadgarstki i prawie odcina kilka palców. Zaciskasz zęby z bólu, sięgasz i podnosisz przedmiot i... nagle przypominasz sobie sekwencję ruchów, dzięki której można obejść tę pułapkę.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46227 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46228 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46229 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #46230 /* ~Już po chwili pierwsze cztery ściany znajdują się w odpowiedniej pozycji. Kiedy zaczynasz ustawiać piątą ścianę, z wnętrza dwunastościanu wyskakuje ostrze, które przecina ci nadgarstki i odcina kilka palców. Wypuszczasz z rąk skrwawiony przedmiot i padasz na ziemię. Z odciętych nadgarstków ucieka z ciebie życie-krew... Nagle, gdy zmrok zapadł już w twoich oczach, przypominasz sobie sekwencję ruchów, dzięki której można obejść tę pułapkę.~ */
  IF ~~ THEN REPLY #46231 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.0 13.1
  SAY #46232 /* ~Po uniknięciu sprężynujących ostrzy zaczynasz wolno rozwiązywać ustawienia następnych ścian. Kiedy zabierasz się do przekręcenia dziewiątej, nagle wystrzeliwuje ci w twarz strumień toksycznego gazu, który tworzy wokół ciebie zabójczą chmurę. Choć prawie nic nie widzisz, kręci ci się w głowie i co chwilę masz torsje, przypominasz sobie - choć trochę za późno - jak uniknąć także i tej pułapki.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46233 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 10
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46234 /* ~Próbuj dalej ułożyć dwunastościan.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #46235 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 6.1 13.2
  SAY #46236 /* ~Po uniknięciu sprężynujących ostrzy zaczynasz wolno rozwiązywać ustawienia następnych ścian. Kiedy zabierasz się do przekręcenia dziewiątej, nagle wystrzeliwuje ci w twarz strumień toksycznego gazu, który tworzy wokół ciebie zabójczą chmurę. Przez chwilę wijesz się na ziemi czekając na śmierć - prawie nic nie widząc, z ogromnymi zawrotami głowy i wymiotami - ale przypominasz sobie, jak uniknąć tej pułapki. Twoje ciało skręca się w agonii, ale ciągle przyciskasz dwunastościan do swojej pokrytej bliznami piersi.~ */
  IF ~~ THEN REPLY #46321 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 8.0 14.1
  SAY #46237 /* ~Po uniknięciu gazowej pułapki ukrytej we wnętrzu dwunastościanu zaczynasz ustawiać ostatnie ściany. Kiedy już masz ustawić dwunastą ścianę, tajemne runy ukryte wewnątrz przedmiotu, rozpętują małą burzę magicznych błyskawic - po twoich rękach biegną fale trzaskającego, niebieskiego światła, zostawiając po sobie czarne, spalone ciało.

Kiedy już możesz uwolnić muskuły ze spazmatycznego skurczu, przypominasz sobie, jak uniknąć pułapki. Po odpowiednim ustawieniu ostatniej ściany, dwunastościan *klika* i zaczyna się otwierać w twoich rękach...~ */
  IF ~~ THEN REPLY #16191 /* ~Kontynuuj...~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 4.2 8.1 14.2
  SAY #46238 /* ~Po uniknięciu gazowej pułapki ukrytej we wnętrzu dwunastościanu zaczynasz ustawiać ostatnie ściany. Kiedy już masz ustawić dwunastą ścianę, tajemne runy ukryte wewnątrz przedmiotu, rozpętują małą burzę magicznych błyskawic - po twoich rękach biegną fale trzaskającego, niebieskiego światła, zostawiając po sobie czarne, spalone ciało. Upadając w porażeniu na ziemię, przypominasz sobie, jak uniknąć pułapki, ale obrażenia są zbyt duże. Twoje nerwy zostały poważnie uszkodzone, twoje ciało przeszło ogromny szok, zaczynasz umierać.~ */
  IF ~~ THEN REPLY #46615 /* ~"Jak mógł... taki... *ech*"~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 10.0 15.0
  SAY #46239 /* ~Dwunastościan rozkłada się na dwie, trzy części, aż w końcu tworzy idealnie prostokątną tablicę wielkości dużej księgi. Na jej powierzchni wyryto ciąg dziwnych symboli. Wyglądają jak jakiś szyfr albo język, który powinien być dla ciebie znajomy... ale nie jest. Po bliższych oględzinach okazuje się, że przekręcając pięciokątne ściany, które teraz są na dolnej stronie tablicy, można na niej wyświetlać różne 'strony'. W końcu zdajesz sobie sprawę, że dwunastościan jest jakąś księgą albo dziennikiem.~ */
  IF ~~ THEN REPLY #46240 /* ~"Hmm... Mogę odłożyć ten dwunastościan dopóki nie nauczę się tego języka."~ */ JOURNAL #56754 /* ~Udało mi się otworzyć znaleziony przeze mnie zamknięty dwunastościan i teraz widzę, że w środku znajduje się coś w rodzaju dziennika albo księgi. Osobliwy język, w którym zapisano treść tej księgi, jest mi całkiem nieznany, ale może będę mógł liczyć na pomoc jakiegoś mędrca albo lingwisty z Miejskiego Gmachu Rozrywki.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #46241 /* ~Podnosisz zimny, szary dwunastościan do oczu, żeby go lepiej zbadać. Teraz już wiesz, że kryje się w nim ostrze, które może zranić nieostrożnego użytkownika.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46242 /* ~Popracuj nad dwunastościanem jeszcze trochę.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46243 /* ~Popracuj nad dwunastościanem jeszcze trochę.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46244 /* ~Popracuj nad dwunastościanem jeszcze trochę.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46245 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #46246 /* ~Podnosisz zimny, szary dwunastościan do oczu, żeby go lepiej zbadać. Teraz już wiesz, że kryje się w nim ostrze i trujący gaz, które czekają na nieostrożnego użytkownika.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46247 /* ~Popracuj nad dwunastościanem jeszcze trochę.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46248 /* ~Popracuj nad dwunastościanem jeszcze trochę.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46249 /* ~Popracuj nad dwunastościanem jeszcze trochę.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46250 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #46251 /* ~Podnosisz zimny, szary dwunastościan do oczu, żeby go lepiej zbadać. Teraz już wiesz, że na nieostrożnego użytkownika czeka w nim wiele różnych pułapek, ale wiesz już też, jak ich uniknąć.~ */
  IF ~~ THEN REPLY #46252 /* ~Rozłóż go.~ */ GOTO 12
  IF ~~ THEN REPLY #46253 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #46254 /* ~Podnosisz zimny, szary dwunastościan do oczu, żeby go lepiej zbadać. Teraz już wiesz, że na nieostrożnego użytkownika czeka w nim wiele różnych pułapek, ale wiesz już też, jak ich uniknąć. Teraz, gdy znasz już umarły język Uyo, w końcu uda ci się odszyfrować jego zawartość...~ */
  IF ~~ THEN REPLY #46255 /* ~Rozłóż dwunastościan i przeczytaj go.~ */ DO ~GiveExperience(Protagonist,10000)
SetGlobal("P_Journal","GLOBAL",5)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #66194 /* ~Ostatecznie udało mi się otworzyć ostatni z sekretów łamigłówki dwunastościanu. Okazuje się, że jest to dziennik, napisany zresztą moją własną ręką, pochodzący rzecz jasna z czasów któregoś z moich dawnych wcieleń. Już pierwszy rzut na jego zawartość pozwala stwierdzić, że twórca tego dziełka nie miał zbyt dobrze w głowie.~ */ GOTO 17
  IF ~~ THEN REPLY #46256 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #46257 /* ~Okazuje się, że tablica jest czymś w rodzaju dziennika... dziennika, który prowadziło jedno z twoich wcześniejszych wcieleń, w dodatku niezupełnie zdrowe na umyśle. Tylko niektóre jego części są spójne i zawierają sensowną treść.~ */
  IF ~~ THEN REPLY #46258 /* ~Przejrzyj jego zawartość.~ */ GOTO 19
  IF ~~ THEN REPLY #46259 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",5)
~ THEN BEGIN 18 // from:
  SAY #46260 /* ~Podnosisz zimny, szary dwunastościan - zaszyfrowany i zabezpieczony pułapkami dziennik jednego z twoich poprzednich wcieleń.~ */
  IF ~~ THEN REPLY #46261 /* ~Rozłóż dwunastościan i przejrzyj jego zawartość.~ */ GOTO 19
  IF ~~ THEN REPLY #46262 /* ~Odłóż dwunastościan.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0 20.0 21.0 22.0 23.0 24.0 25.1 26.0 27.0 28.0 29.1 30.1 31.1 32.0 33.0 34.0
  SAY #46263 /* ~O czym chcesz poczytać?~ */
  IF ~~ THEN REPLY #46264 /* ~Przeczytaj o 'szepczących cieniach'.~ */ GOTO 20
  IF ~~ THEN REPLY #46265 /* ~Przeczytaj o duchu kobiety.~ */ GOTO 21
  IF ~~ THEN REPLY #46266 /* ~Przeczytaj o ukrywaniu czegoś wewnątrz twojego ciała.~ */ GOTO 22
  IF ~~ THEN REPLY #46267 /* ~Przeczytaj trochę wywodów paranoika.~ */ GOTO 23
  IF ~~ THEN REPLY #46268 /* ~Przeczytaj o 'przeklętych' tatuażach.~ */ GOTO 24
  IF ~~ THEN REPLY #46269 /* ~Przeczytaj o snach i Raveli.~ */ GOTO 25
  IF ~~ THEN REPLY #46270 /* ~Przeczytaj o niebezpieczeństwie związanym z imionami.~ */ GOTO 26
  IF ~~ THEN REPLY #46271 /* ~Przeczytaj o morderstwie w Gmachu Rozrywki.~ */ GOTO 27
  IF ~~ THEN REPLY #46272 /* ~Przeczytaj o zamordowaniu tego, który próbował ci pomóc.~ */ GOTO 28
  IF ~~ THEN REPLY #46273 /* ~Przeczytaj tajemną odpowiedź z nieznanego źródła.~ */ GOTO 29
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #46274 /* ~Przeczytaj coś o zapisie.~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",1)
SetGlobal("Know_Nameless_Legacy","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #53673 /* ~Przeczytaj coś o zapisie.~ */ GOTO 34
  IF ~~ THEN REPLY #47074 /* ~Nic. Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46275 /* ~"Szepty nie są PORUSZENIAMI cieni. One MÓWIĄ SPISKUJĄ ROZMAWIAJĄ ze sobą. Mogę zrozumieć tylko niektóre ich słowa."~ */
  IF ~~ THEN REPLY #46276 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46277 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #46278 /* ~"Ta księga opowiada mi o różnych rzeczach, szepcze mi o różnych rzeczach. Mówi mi, żeby unikać ducha dziewczyny, unikać jej. NIE ZNAM JEJ, a ona mnie DRĘCZY."~ */
  IF ~~ THEN REPLY #46279 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46280 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY #46281 /* ~"Więc POŁKNĄŁEM to, mając nadzieję, że PRZYCZEPI się do moich WNĘTRZNOŚCI. Jak będzie potrzebne, powiem komuś, żeby to ze mnie WYCIĄGNĄŁ."~ */
  IF ~~ THEN REPLY #46282 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46284 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.3
  SAY #46283 /* ~"Już wiem, że MOJE ŻYCIE NIE NALEŻY DO MNIE. NIE oddam ci go..."

"Musisz wyciągnąć życie z mojego ZNISZCZONEGO CIAŁA, jeśli chcesz je posiąść..."

"To TY UMRZESZ, jeśli ja tego nie mogę mieć, TY TEŻ nie go nie dostaniesz."

"TO TY ODPOWIADASZ ZA ZDRADĘ CIAŁA, NIE DOCZEKASZ SIĘ MOMENTU, AŻ BĘDZIESZ ŻYĆ MOIM ŻYCIEM."~ */
  IF ~~ THEN REPLY #46285 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46286 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.4
  SAY #46287 /* ~"Te przeklęte tatuaże nie chcą zejść z mojej SKÓRY! Próbowałem je wypalić - NIE UDAŁO SIĘ, nie udało się! Próbowałem się ODZIAĆ, ale cały czas czuję, że ludzie CZYTAJĄ moje CIAŁO, czytają we mnie jak w KSIĘDZE. Za każdym razem, kiedy na mnie patrzą, CHCĘ IM WYDŁUBAĆ OCZY, wyjąć im je jak WINNE GRONA i ROZGNIEŚĆ POD OBCASEM."~ */
  IF ~~ THEN REPLY #46288 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46289 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.5
  SAY #46290 /* ~"DLACZEGO NIE MOGĘ ŚNIĆ?!"

"Użyłem Kielicha Semira, aby zmusić się do SNU NA JAWIE. Zobaczyłem WIEDŹMĘ. KUSIŁA MNIE, GROZIŁA mi CIENIAMI! Nigdy wcześniej jej nie WIDZIAŁEM, ale przyszła, gdy ŚNIŁEM. NIE WOLNO mi więcej śnić. Zawsze muszę być ŚWIADOMY. ZNISZCZYŁEM KIELICH."

"Ona mówi, że ma MOC i mnie ODNAJDZIE. Wynoś się ode mnie, WIEDŹMO! Trzymaj się ode mnie z DALEKA! Nie chcę mieć z tobą NIC wspólnego!"~ */
  IF ~~ THEN REPLY #46291 /* ~Przeczytaj dalszy ciąg tego fragmentu dziennika.~ */ GOTO 33
  IF ~~ THEN REPLY #46292 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46293 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.6
  SAY #46294 /* ~"Wystrzegaj się IMION. IMIONA mają moc ujawniania tożsamości. Można ich użyć jako BRONI przeciw INNYM. To dzięki nim można ODSZUKAĆ CIĘ ZASZCZUĆ CIĘ POLOWAĆ NA CIEBIE pośród Sfer. Pozostań BEZIMIENNY, a będziesz BEZPIECZNY."~ */
  IF ~~ THEN REPLY #46295 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46296 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 19.7
  SAY #46297 /* ~"Udałem się do Gmachu Rozrywki, szukając w jego komnatach ścieżki prowadzącej do mojej FAŁSZYWEJ JAŹNI. To było takie PRZENIKLIWE, że ci, których nie ZNAŁEM, FAŁSZYWI, obdarzyli mnie ZAUFANIEM, traktowali mnie jak PRZYJACIELA, pokazali mi MOJĄ KOMNATĘ, zaspokajali moje POTRZEBY. Musiałem się powstrzymywać, żeby przeciwko nim nie wystąpić. To byłoby przedwczesne. Przede wszystkim musiałem CHRONIĆ moją TOŻSAMOŚĆ. Spotkałem jednego, który znał niezwykły język Uyo, nauczyłem się go od niego, a potem ZABIŁEM. Potem udałem się do sensorium i przygotowałem się do ZAKOŃCZENIA całej sprawy. Już wkrótce, już wkrótce..."~ */
  IF ~~ THEN REPLY #46298 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46299 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.8
  SAY #46300 /* ~"NIC nie może zrobić. Mówi że wspomnienia ODESZŁY i NIGDY nie powrócą. Mówi/kłamie, że właśnie to mi powiedział! KŁAMSTWA! Mówi że po każdej śmierci mój umysł staje się SŁABSZY! KŁAMSTWA! Siedział tam, cały czas STARAJĄC SIĘ ZMNIEJSZYĆ moją PEWNOŚĆ SIEBIE. Mówi że już po TRZECH NASTĘPNYCH ŚMIERCIACH, TRZECH NASTĘPNYCH ŻYCIACH zdobędę umiejętność zatrzymywania wspomnień, ale że JA, ja UMRĘ, kiedy umrę. UMRĘ! Jak można być nieśmiertelnym i UMRZEĆ?! Nie umiał mi odpowiedzieć, więc uznałem, że już mi się nie przyda. POSZLACHTOWAŁEM go tak, że już żadne inne wcielenie nie skorzysta z jego BEZUŻYTECZNOŚCI."~ */
  IF ~~ THEN REPLY #46302 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46303 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.9
  SAY #46301 /* ~"Więc UPIORNE GŁOWY powiedziały:"

"Zostałeś PODZIELONY. JESTEŚ JEDNYM Z WIELU ludzi. (Jednym w WIELU LUDZIACH?) Nosisz wiele IMION, a każde z nich zostawiło po sobie bliznę na twym ciele..."~ */
  IF ~~ THEN REPLY #46304 /* ~Przeczytaj dalszy ciąg tego fragmentu dziennika.~ */ GOTO 30
  IF ~~ THEN REPLY #46305 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46306 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #46307 /* ~ZAGUBIONY
NIEŚMIERTELNY
OSTATNIA INKARNACJA
CZŁOWIEK TYSIĄCA ŚMIERCI
SKAZANY NA ŻYCIE
NIESPOKOJNY
JEDEN Z WIELU
WIĘZIEŃ ŻYCIA
TEN KTÓRY SPROWADZA CIENIE
ZRANIONY
PRZYNOSZĄCY NIESZCZĘŚCIE
YEMET~ */
  IF ~~ THEN REPLY #46308 /* ~Przeczytaj dalszy ciąg tego fragmentu dziennika.~ */ GOTO 31
  IF ~~ THEN REPLY #46309 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46310 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #46311 /* ~"JESTEŚ srebrnym kielichem, który pękł, a jego odłamki zostały rozsypane pośród historii."

"TYLKO JEDNA CZĘŚĆ jest ważna. Odzyskaj ją, a twoje ŻYCIE znowu będzie należało do ciebie. Trzeba będzie jednak zapłacić cenę. Za tę cenę kupisz sobie szansę. A bez szansy, twój los będzie PRZESĄDZONY..."~ */
  IF ~~ THEN REPLY #46312 /* ~Przeczytaj dalszy ciąg tego fragmentu dziennika.~ */ GOTO 32
  IF ~~ THEN REPLY #46313 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46314 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #46315 /* ~"STRACIŁEŚ COŚ, CO NIGDY NIE MIAŁO ODDZIELAĆ SIĘ OD CZŁOWIEKA. ZOSTAŁA CI ZABRANA TWOJA ŚMIERTELNOŚĆ. ZAGUBIONA. MUSISZ JĄ ODNALEŹĆ ZANIM STRACISZ TAKŻE UMYSŁ."~ */
  IF ~~ THEN REPLY #46316 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46317 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.0
  SAY #46318 /* ~"W jej głosie było pełno złych SZPONÓW, jak PAJĄKÓW, które KOPAŁY SOBIE NORY w moich szarych komórkach. Musiałem wyrzucić ją z MOJEGO UMYSŁU. WYNOCHA! WYNOCHA, wiedźmo!"

"Była MITEM, BAŚNIĄ, która odważyła się RZUCIĆ WYZWANIE PANI BÓLU! Jak można WALCZYĆ z MITEM? Nie mam takiej BRONI. Potrzebuję broni, która ZABIJE ją, gdyby mnie ODNALAZŁA. Potrzeba mi STRATEGII, aby nie udało jej się mnie pokonać, kiedy PO MNIE PRZYJDZIE. Muszę MYŚLEĆ - uda mi się ją POKONAĆ."~ */
  IF ~~ THEN REPLY #46319 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #46320 /* ~Odłóż dziennik.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 19.10 19.11
  SAY #47071 /* ~"Na notatce widniały słowa: 'NIE ZAPOMNIJ ODEBRAĆ SWOJEGO ZAPISU', obok tych słów zapisano mały KOD: 51-AA..."

"Bez wątpienia to PUŁAPKA zastawiona przez jakąś FAŁSZYWĄ JAŹŃ. Postaram się ją ZNISZCZYĆ."~ */
  IF ~~ THEN REPLY #47079 /* ~Przeczytaj o czymś innym.~ */ GOTO 19
  IF ~~ THEN REPLY #47081 /* ~Odłóż dziennik.~ */ EXIT
END
