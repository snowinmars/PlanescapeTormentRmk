// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIANNIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DIANNIS~

IF ~  Global("Iannis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2935 /* ~Mężczyzna ubrany jest w ciemnoniebieski płaszcz w zawiłe wzory; jednak pomimo swego bogactwa, płaszcz wygląda na pomięty i znoszony. Powiedziałbyś, że jest w średnim wieku, może zaraz po sześćdziesiątce... zmarszczki utrudniają dokładniejsze określenie jego wieku. Gdy wchodzisz, mężczyzna odwraca się powoli; nagle dopada cię uczucie, że *znasz* tego człowieka... albo znałeś, gdzieś, kiedyś.~ */
  IF ~~ THEN REPLY #2936 /* ~"Witaj..."~ */ GOTO 5
  IF ~~ THEN REPLY #29703 /* ~Nie zwracaj na niego uwagi, obejrzyj biuro.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.0 4.1 6.1 7.1 9.2 10.3 11.3 12.3 13.2 14.2 15.3 16.3 17.2 18.3 19.1 20.1 23.0 24.0 25.5 26.6 27.3 28.2 32.0 32.1 32.2 34.0 35.1 36.5 37.0 38.0 39.6 55.5 56.5 57.2 58.6 59.3 60.3 61.5 62.5 63.9 64.7 66.6 67.3 68.3 71.0 72.7 73.6 74.5 78.0 85.5 86.7 87.3 93.3 94.3 95.3 96.1 102.7
  SAY #29704 /* ~"Dobrze. W czym mogę pomóc?"~ */
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29705 /* ~"Przepraszam, że pytam, ale dobrze się czujesz?"~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29706 /* ~"Przepraszam, że pytam, ale dobrze się czujesz?"~ */ GOTO 57
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29707 /* ~"Dobrze się czujesz?"~ */ GOTO 60
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29708 /* ~"Dobrze się czujesz?"~ */ GOTO 57
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29709 /* ~"Czy my się znamy?"~ */ GOTO 35
  IF ~~ THEN REPLY #29710 /* ~"Czy mógłbyś powtórzyć, kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #29711 /* ~"Czy mógłbyś powtórzyć, co to za miejsce?"~ */ GOTO 9
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29712 /* ~"Czy mógłbyś powtórzyć, kim jest adwokat?"~ */ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29714 /* ~"Opowiedz mi o zapisach?"~ */ GOTO 12
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64282 /* ~"Iannisie, w sensorium znajduje się kamień doznań, który zawiera fragment przeżyć twojej córki."~ */ GOTO 65
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",3)
PartyHasItem("Dlegacy1")
~ THEN REPLY #29715 /* ~"Oto zapis Deionarry, tak jak obiecałem."~ */ GOTO 33
  IF ~  Global("Know_Iannis_Fire","GLOBAL",1)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29717 /* ~"Opowiedz mi o pożarze."~ */ GOTO 39
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29719 /* ~"Opowiedz mi o swej córce."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #29721 /* ~"Iannisie, wiem co się stało z Deionarrą."~ */ GOTO 75
  IF ~~ THEN REPLY #29724 /* ~"Dzisiaj nic. Muszę już iść... Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
!Global("Iannis_Sensory_Quest","GLOBAL",1)
!Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #29725 /* ~Widzisz Iannisa... odwraca się, gdy wchodzisz i wlepia w ciebie zmęczony wzrok. Pod oczami ma ciemne wory i wygląda jakby w ogóle nie spał.~ */
  IF ~~ THEN REPLY #29727 /* ~"Witaj, Iannisie."~ */ GOTO 3
  IF ~~ THEN REPLY #29728 /* ~Nie zwracaj uwagi na Iannisa.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29729 /* ~"To znowu ty." Patrząc na ciebie lekko marszczy czoło. "Czego chcesz tym razem?"~ */
  IF ~~ THEN REPLY #29730 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #29731 /* ~"Dzisiaj nic. Dziękuję."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
GlobalGT("Iannis_Sensory_Quest","GLOBAL",0)
GlobalLT("Iannis_Sensory_Quest","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #29732 /* ~Widzisz Iannisa... Gdy wchodzisz, odwraca się, a jego oczy płoną nadzieją. "Ach! Nareszcie! Czy udało ci się nakłonić ich, by pozwolili mi wejść do sensorium?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29733 /* ~"Tak. Zgodzili się udostępnić ci kamień doznań twojej córki."~ */ GOTO 69
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29734 /* ~"Najpierw muszę znać odpowiedź na kilka pytań."~ */ GOTO 1
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29735 /* ~"Jeszcze nie. Ale mam nadzieję, że wkrótce będę miał dla ciebie jakieś wiadomości. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #29736 /* ~Mężczyzna zezuje, jak gdyby nie bardzo wiedział, gdzie jesteś. "Tak? W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #29737 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Iannis","GLOBAL",1)
~ JOURNAL #28831 /* ~Spotkałem mężczyznę o imieniu Iannis, który pracuje w Dzielnicy Urzędników. Mam wrażenie, że skądś go znam, ale nie wiem skąd.~ */ GOTO 6
  IF ~~ THEN REPLY #29738 /* ~"Przepraszam. Chyba jestem w złym miejscu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29739 /* ~"Jestem Iannis." Obserwuje cię, marszcząc czoło. "Czy to mnie szukasz?"~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29740 /* ~"Nie wiem... co to za miejsce?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29741 /* ~"Przepraszam... już mi to mówiłeś. Może mógłbyś mi pomóc..."~ */ GOTO 1
  IF ~~ THEN REPLY #29742 /* ~"Przepraszam. Chyba jestem w złym miejscu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY #29743 /* ~"Jak już mówiłem, jestem Iannis. Czegoś ci trzeba?"~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29744 /* ~"Nie mam pewności... co to za miejsce?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29745 /* ~"Przepraszam... już o tym mówiłeś. Może mógłbyś mi pomóc..."~ */ GOTO 1
  IF ~~ THEN REPLY #29746 /* ~"Przepraszam. Chyba jestem w złym miejscu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #29747 /* ~"Jestem adwokatem, a to moje biuro." W jego głosie słychać nutę poirytowania. "Szukasz porady? Bo jeśli nie, to lepiej idź zaspokoić swoją ciekawość gdzie indziej."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29748 /* ~"Adwokatem? Co to jest?"~ */ JOURNAL #28830 /* ~Iannis jest najwyraźniej "adwokatem", osobą która udziela porad prawnych, zajmuje się spadkami i sprawami sądowymi.~ */ EXTERN ~DMORTE~ 291
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #29749 /* ~"Adwokatem? Co to jest?"~ */ JOURNAL #28830 /* ~Iannis jest najwyraźniej "adwokatem", osobą która udziela porad prawnych, zajmuje się spadkami i sprawami sądowymi.~ */ EXTERN ~DGRACE~ 127
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #29750 /* ~"Adwokatem? Co to jest?"~ */ JOURNAL #28830 /* ~Iannis jest najwyraźniej "adwokatem", osobą która udziela porad prawnych, zajmuje się spadkami i sprawami sądowymi.~ */ GOTO 10
  IF ~~ THEN REPLY #29751 /* ~"Przepraszam, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY #29752 /* ~"Jestem adwokatem, a to moje biuro. Ci, którzy potrzebują porady, przychodzą tutaj."~ */
  IF ~  GlobalLT("Iannis","GLOBAL",3)
~ THEN REPLY #29753 /* ~"Jakiego rodzaju porady?"~ */ DO ~SetGlobal("Iannis","GLOBAL",3)
~ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29754 /* ~"Jakiego rodzaju porady?"~ */ GOTO 11
  IF ~~ THEN REPLY #29755 /* ~"Rozumiem. Może więc mógłbyś mi w czymś pomóc..."~ */ GOTO 1
  IF ~~ THEN REPLY #29756 /* ~"Przepraszam, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY #29757 /* ~Jeszcze bardziej marszczy czoło. "Adwokat daje porady, pomaga innym poruszać się po labiryntach systemu prawnego Sigil, załatwia sprawy zapisów, by obywatele mogli być pewni, że po śmierci ich majątek zostanie rozdysponowany tak, jak by tego chcieli oraz broni tych, których niesłusznie oskarżono..." Przerywa. "Potrzebujesz pomocy w tego typu sprawie?"~ */
  IF ~~ THEN REPLY #29758 /* ~"Zapisów?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29759 /* ~"Właściwie myślę, że masz zapis przeznaczony dla mnie."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29760 /* ~"Właściwie przyszedłem po zapis pewnej młodej kobiety..."~ */ GOTO 15
  IF ~~ THEN REPLY #29761 /* ~"Właściwie przyda mi się rada."~ */ GOTO 1
  IF ~~ THEN REPLY #29762 /* ~"Nie, nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7 9.0 9.1
  SAY #29763 /* ~"Adwokat daje porady, pomaga innym poruszać się po labiryntach systemu prawnego Sigil, załatwia sprawy zapisów, by obywatele mogli być pewni, że po śmierci ich majątek zostanie rozdysponowany tak, jak by tego chcieli oraz broni tych, których niesłusznie oskarżono..." Przerywa. "Potrzebujesz pomocy w tego typu sprawie?"~ */
  IF ~~ THEN REPLY #29764 /* ~"Zapisów?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29765 /* ~"Właściwie myślę, że masz zapis przeznaczony dla mnie."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29766 /* ~"Właściwie przyszedłem po zapis pewnej młodej kobiety..."~ */ GOTO 15
  IF ~~ THEN REPLY #29767 /* ~"Właściwie przyda mi się rada."~ */ GOTO 1
  IF ~~ THEN REPLY #29768 /* ~"Nie, nie dzisiaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.8 10.0 11.0 13.1 14.1 54.0 56.2
  SAY #29769 /* ~"Są to takie umowy, które wchodzą w życie po śmierci klienta. Zawierają szczegóły co do tego, w jaki sposób, w przypadku zgonu, zostanie podzielony majątek danej osoby. Słyszałem, że nazywa się je także *testamentami*."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #29770 /* ~"Czy są podobne do kontraktów Grabarzy?"~ */ GOTO 13
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29771 /* ~"Właściwie myślę, że masz dla mnie zapis."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29772 /* ~"Właściwie przyszedłem po zapis pewnej młodej kobiety..."~ */ GOTO 15
  IF ~~ THEN REPLY #29773 /* ~"Rozumiem. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29774 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #29775 /* ~"Och, gdzieżby! Kontrakty Grabarzy mówią, że po śmierci ciało klienta należy do Grabarzy. Nic przyjemnego, ale dla biedaków taki kontrakt to czasami jedyny sposób zapewnienia sobie utrzymania..."~ */
  IF ~~ THEN REPLY #29776 /* ~"W jaki sposób można unieważnić kontrakt Grabarzy?"~ */ JOURNAL #28829 /* ~Iannis powiedział, że jedynym sposobem na anulowanie kontraktu z Grabarzami jest jego zniszczenie.~ */ GOTO 14
  IF ~~ THEN REPLY #29777 /* ~"Przepraszam... Czy mógłbyś jeszcze raz wytłumaczyć czym są zapisy?"~ */ GOTO 12
  IF ~~ THEN REPLY #29778 /* ~"Rozumiem. "Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29779 /* ~"Dzięki. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #29780 /* ~Lekko marszczy czoło. "Już podpisany? W takim przypadku można zrobić bardzo niewiele. Kontrakt Grabarzy bardzo dokładnie określa, co dzieje się z ciałem po czyjejś śmierci. Nie licząc zniszczenia takiej umowy, w zasadzie nie można nic zrobić."~ */
  IF ~~ THEN REPLY #29781 /* ~"Rozumiem. Czy jestem ci coś winien za tę informację?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Iannis_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #29782 /* ~"Przepraszam... Czy mógłbyś jeszcze raz wytłumaczyć czym są zapisy?"~ */ GOTO 12
  IF ~~ THEN REPLY #29783 /* ~"Rozumiem. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29784 /* ~"Dzięki. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 10.2 11.1 11.2 12.1 12.2
  SAY #29785 /* ~"Naprawdę? Doskonale... pamiętasz co to za zapis?"~ */
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29786 /* ~"Ten zapis ma numer '51-AA', tak myślę."~ */ GOTO 16
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29787 /* ~"Zapis tej młodej kobiety to '687-KS'."~ */ GOTO 25
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29788 /* ~"Zapis tej młodej kobiety to '687-KS'."~ */ GOTO 104
  IF ~~ THEN REPLY #29789 /* ~"Nie w tej chwili. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29790 /* ~"Nie, chyba się pomyliłem. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #29791 /* ~Gdy wymieniasz nazwę zapisu, na jego twarzy widać zaskoczenie. "To niesamowicie stare... jesteś pewien..." Wygląda na zszokowanego. "Mam nadzieję, że nie było go wśród tych, które spłonęły..."~ */
  IF ~~ THEN REPLY #29792 /* ~"Z jakiego okresu pochodzi?"~ */ GOTO 17
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29793 /* ~"Spłonęły?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29794 /* ~"Czy mógłbyś sprawdzić, czy ten zapis jeszcze istnieje?"~ */ GOTO 19
  IF ~~ THEN REPLY #29795 /* ~"Nieważne. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29796 /* ~"Chyba się pomyliłem co do tego zapisu. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.0
  SAY #29797 /* ~"No cóż..." Iannis rozmyśla przez chwilę. "Przynajmniej sprzed kilku dekad."~ */
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29798 /* ~"Mówiłeś, że mógł spłonąć? Co to znaczy?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29799 /* ~"Czy mógłbyś sprawdzić, czy ten zapis jeszcze istnieje?"~ */ GOTO 19
  IF ~~ THEN REPLY #29800 /* ~"Nieważne. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29801 /* ~"Chyba się pomyliłem co do tego zapisu. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #29802 /* ~Wygląda na zasmuconego. "Tak, to biuro było celem bezsensownego aktu wandalizmu. Rok temu ktoś się tu włamał. Całym pragnieniem wandala było, jak się wydaje, spalenie moich dokumentów. Wiele z nich utraciłem. Wstyd. Wychodzi na to, że Sigil jest całkiem... że od jednego człowieka zależy..." Mówiąc o Sigil wydaje się zmniejszyć co najmniej o cal. "Wandal zniszczył tylko pewne dokumenty. Niezastąpione."~ */
  IF ~~ THEN REPLY #29803 /* ~"Z jakiego okresu pochodzi ten zapis?"~ */ GOTO 17
  IF ~~ THEN REPLY #29804 /* ~"Czy mógłbyś sprawdzić, czy ten zapis wciąż istnieje?"~ */ GOTO 19
  IF ~~ THEN REPLY #29805 /* ~"Opowiedz mi jeszcze coś o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #29806 /* ~"Nieważne. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29807 /* ~"Chyba się pomyliłem co do tego zapisu. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2 17.1 18.1
  SAY #29808 /* ~Szybko przytakuje. "Och, tak, oczywiście... To zajmie tylko chwilkę."~ */
  IF ~~ THEN REPLY #29809 /* ~"Dobrze, poczekam."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 20
  IF ~~ THEN REPLY #29810 /* ~"Nieważne. "Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29811 /* ~"Nie, chyba się pomyliłem co do tego zapisu. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #29812 /* ~Iannis powraca, kiwając głową. "Tak, na szczęście, płomienie go nie strawiły. Jest bezpieczny."~ */
  IF ~~ THEN REPLY #29813 /* ~"Dostanę coś na jego podstawie? Jestem beneficjentem."~ */ DO ~SetGlobal("Know_Nameless_Legacy","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 21
  IF ~~ THEN REPLY #29814 /* ~"Nieważne. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29815 /* ~"Dziękuję. Chciałem tylko sprawdzić czy jest bezpieczny. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #29816 /* ~"Oczywiście... podpisz tutaj i tutaj... na kropkowanej linii..."~ */
  IF ~~ THEN REPLY #29817 /* ~"Tu? I tu? W porządku..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #29818 /* ~"I już kończymy; to chyba ostatni dokument. Oto wszystkie przedmioty, jakie były w Skarbcu... Jeden wygląda na pokwitowanie z Kuźni, ale chyba bardzo stare. Czy zmarły zamawiał coś w Kuźni?"~ */
  IF ~~ THEN REPLY #29819 /* ~"Tak naprawdę to nie wiem. Może... zaczynam myśleć, że wszystko jest możliwe. Gdzie jest ta Kuźnia?"~ */ DO ~GiveItemCreate("Receipt",Protagonist,1,0,0)
GiveItemCreate("Gullet",Protagonist,1,0,0)
GiveItemCreate("EyeKal",Protagonist,1,0,0)
GiveGoldForce(731)
SetGlobal("Receipt","GLOBAL",1)
~ JOURNAL #28828 /* ~Odebrałem mój spadek od Iannisa, adwokata z Dzielnicy Urzędników. Wśród wielu rzeczy znajdował się tam dziwny kwit... wyglądający na bardzo stary. Iannis powiedział, że jest to "kwit z Wielkiej Kuźni," a to oznacza, że złożyłem jakieś zamówienie u Bogowców. Iannis twierdzi, że dzięki kwitowi będę mógł wejść do Wielkiej Kuźni w Niższej Dzielnicy.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29820 /* ~"Znajduje się w Niższej Dzielnicy. Jest za wielką bramą - szukaj straży Bogowców przy bramie, to właśnie tam."~ */
  IF ~~ THEN REPLY #29821 /* ~"Bardzo dobrze. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29822 /* ~"Dziękuję za wskazówki. Natychmiast tam pójdę."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.0
  SAY #29823 /* ~"Nie jestem z tych, co każą sobie płacić za tego rodzaju pomoc." Lekko się uśmiecha. "Jestem adwokatem, nie sprzedawcą dywanów. Chciwość nie ma wstępu do mojego biura."~ */
  IF ~~ THEN REPLY #29824 /* ~"Dziękuję... Jestem wdzięczny. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29825 /* ~"Masz więc moją wdzięczność. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY #29826 /* ~"To..." Oczy rozszerzają mu się, gdy wymieniasz nazwę zapisu. "Umowa mojej *córki*...?!" Wygląda na zszokowanego. "Skąd znasz moją córkę?!"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64283 /* ~"Nie jestem pewien. W Gmachu Rozrywki jest kamień doznań, w którym jest numer zapisu."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64284 /* ~"Nie jestem pewien. Znalazłem ten numer w tym kamieniu doznań w Gmachu Rozrywki, o którym ci mówiłem. Był przeznaczony dla mnie."~ */ GOTO 27
  IF ~~ THEN REPLY #29827 /* ~"Nie wiem. Mam nadzieję, że w zapisie znajduje się odpowiedź."~ */ GOTO 26
  IF ~~ THEN REPLY #29828 /* ~"Właściwie to sprawa prywatna."~ */ GOTO 30
  IF ~~ THEN REPLY #29829 /* ~"Nie twoja sprawa. Czy mógłbyś sprawdzić, czy zapis wciąż istnieje?"~ */ GOTO 30
  IF ~~ THEN REPLY #29830 /* ~"Chyba się pomyliłem co do tego zapisu. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29831 /* ~"Przykro mi, to nie ten zapis. Przykro mi, że zawracam ci głowę... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.2 66.3 67.1 68.1
  SAY #29832 /* ~"Dlaczego..." brakuje mu słów. "Kim ty jesteś, panie, że moja córka zostawiła dla ciebie zapis?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64285 /* ~"Nie jestem pewien. W Gmachu Rozrywki jest kamień doznań, w którym jest numer zapisu."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64286 /* ~"Nie jestem pewien. Znalazłem ten numer w tym kamieniu doznań w Gmachu Rozrywki, o którym ci mówiłem. Był przeznaczony dla mnie."~ */ GOTO 27
  IF ~~ THEN REPLY #29833 /* ~"Możliwe, że kiedyś ją znałem... ale ją zapomniałem."~ */ GOTO 27
  IF ~~ THEN REPLY #29834 /* ~"Jak już mówiłem, nie wiem. Mam nadzieję, że w zapisie znajduje się odpowiedź."~ */ GOTO 29
  IF ~~ THEN REPLY #29835 /* ~"Właściwie to sprawa prywatna."~ */ GOTO 30
  IF ~~ THEN REPLY #29836 /* ~"Nie twoja sprawa. Czy mógłbyś sprawdzić, czy zapis jeszcze istnieje?"~ */ GOTO 30
  IF ~~ THEN REPLY #29837 /* ~"Chyba się pomyliłem co do tego zapisu. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29838 /* ~"Przepraszam, to nie ten zapis. Przykro mi, że zawracam ci głowę... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.1 26.2
  SAY #29839 /* ~Iannis uważnie się tobie przygląda. "*Naprawdę* wydajesz się znajomy, w jakiś sposób..."~ */
  IF ~~ THEN REPLY #29840 /* ~"Czy wiesz, kim jestem?"~ */ GOTO 28
  IF ~~ THEN REPLY #29841 /* ~"Możliwe, że jeśli masz ten zapis, są w nim odpowiedzi dla nas obu."~ */ GOTO 29
  IF ~~ THEN REPLY #29842 /* ~"Czy mógłbyś odnaleźć dla mnie ten zapis? Nie mogę niestety o nim rozmawiać."~ */ GOTO 30
  IF ~~ THEN REPLY #29843 /* ~"Chyba się pomyliłem co do tego zapisu. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29844 /* ~"Przykro mi, muszę już iść... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29845 /* ~"Muszę przyznać, że nie." Wzdycha.~ */
  IF ~~ THEN REPLY #29846 /* ~"Możliwe, że jeśli masz ten zapis, są w nim odpowiedzi dla nas obu."~ */ GOTO 29
  IF ~~ THEN REPLY #29847 /* ~"Czy mógłbyś odnaleźć dla mnie ten zapis? Nie mogę niestety o nim rozmawiać."~ */ GOTO 30
  IF ~~ THEN REPLY #29848 /* ~"Chyba się pomyliłem co do tego zapisu. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29849 /* ~"Przykro mi, muszę już iść... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.3 27.1 28.0
  SAY #29850 /* ~"Oczywiście, oczywiście... poczekaj chwilę, zaraz wracam."~ */
  IF ~~ THEN REPLY #29851 /* ~"Doskonale. Zaczekam."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28827 /* ~Odebrałem spadek po Deionarze od jej ojca.~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.3 25.4 26.4 26.5 27.2 28.1
  SAY #29852 /* ~Iannis wpatruje się w ciebie przez chwilę, a następnie mruży oczy. "Oczywiście." Ma głos zimny, niczym lód. "Gdybyś był tak dobry i poczekał, zaraz wrócę z jej zapisem."~ */
  IF ~~ THEN REPLY #29853 /* ~"Doskonale."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28826 /* ~Odebrałem spadek po Deionarze od jej ojca. Wyjątkowo irytujący człowiek. Nie podoba mi się ton jakim do mnie mówi - lepiej, żeby uważał na siebie, bo skończy tak jak jego córusia.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 104.0
  SAY #29854 /* ~"Wszystkie artykuły są szczegółowo opisane..." Iannis trzyma trzy zwoje w dłoni. "Nie wiedziałem, że ustanowiła zapis..." Gapi się na nie niczym zahipnotyzowany. "Proszę bardzo. Gdybym mógł... czy mógłbym je przeczytać, panie?"~ */
  IF ~~ THEN REPLY #29855 /* ~"To sprawa *osobista*. Jako adwokat musisz to rozumieć."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_1","GLOBALGood",-1)
~ GOTO 32
  IF ~~ THEN REPLY #29856 /* ~"Muszę je najpierw przeczytać, a potem zdecyduję."~ */ GOTO 32
  IF ~~ THEN REPLY #29857 /* ~"Oczywiście. Proszę."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Iannis_2","GLOBALGood",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #29858 /* ~"Oczywiście..." Iannis wydaje się załamany. "Ale proszę, błagam, nie mam zbyt wielu rzeczy, które mi ją przypominają..."~ */
  IF ~~ THEN REPLY #29859 /* ~Kłamstwo: "Będziesz mógł je przeczytać. Ale teraz może mógłbyś mi w czymś pomóc..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #29860 /* ~Przyrzeczenie: "Będziesz mógł je przeczytać. Ale teraz może mógłbyś mi w czymś pomóc..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ GOTO 1
  IF ~~ THEN REPLY #29861 /* ~"Rozumiem. Może mógłbyś mi w czymś pomóc..."~ */ GOTO 1
  IF ~~ THEN REPLY #29862 /* ~Kłamstwo: "Nie zapomnę. Wrócę, gdy je przeczytam."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #29863 /* ~Przyrzeczenie: "Nie zapomnę. Wrócę, gdy je przeczytam."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #29864 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 1.10 31.2
  SAY #29865 /* ~Iannis bierze zwój i zaczyna go czytać. Następuje długa chwila ciszy, następnie prawnik powoli podnosi wzrok. "Ty... tak wiele znaczyłeś dla mojej córki. Chciała oddać dla ciebie życie."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29866 /* ~"Obawiam się, że o to właśnie chodzi."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~Pozwoliłem Iannisowi przeczytać testament Deionarry. Jej ostatnie słowa dały mu chyba trochę ukojenia.~ */ GOTO 34
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29867 /* ~"Myślę, że o to chodzi."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~Pozwoliłem Iannisowi przeczytać testament Deionarry. Jej ostatnie słowa dały mu chyba trochę ukojenia.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #29873 /* ~Iannis oddaje ci zwój. "Dziękuję, panie. Doceniam twą uprzejmość."~ */
  IF ~~ THEN REPLY #29874 /* ~"To najmniej co mogę zrobić. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29875 /* ~"Opłakuję śmierć twojej córki. Mam nadzieję, że jej słowa trochę cię pocieszyły. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.4
  SAY #29876 /* ~Mężczyzna obserwuje cię przez chwilę, myśląc, marszczy czoło. Zmarszczki na jego twarzy wydają się bardziej widoczne i znów masz wrażenie, że wiek odcisnął na nim swe piętno. "Nie... a jednak wydajesz się znajomy..."~ */
  IF ~~ THEN REPLY #29877 /* ~"A jednak..."~ */ GOTO 36
  IF ~~ THEN REPLY #29878 /* ~"Nieważne. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29879 /* ~"Nieważne. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #29880 /* ~Wciąż bacznie ogląda twe rysy, następnie kiwa głową. "Przyznaję, że jest w tobie coś znajomego, panie, i przepraszam, że przez mą słabą pamięć możesz czuć się urażony... Przez chwilę byłem tak zaabsorbowany. Czy *spotkaliśmy* się już wcześniej?"~ */
  IF ~~ THEN REPLY #29881 /* ~Prawda: "Tak myślę. Tak naprawdę, to sam siebie nie pamiętam."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_3","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #29882 /* ~Kłamstwo: "Nie, to pomyłka. Chyba się nie spotkaliśmy."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_2","GLOBALLaw",-1)
~ GOTO 38
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29883 /* ~"Zaabsorbowany?"~ */ GOTO 57
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29884 /* ~"Zaabsorbowany?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29885 /* ~"Zaabsorbowany?"~ */ GOTO 60
  IF ~~ THEN REPLY #29886 /* ~"Nieważne. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29887 /* ~"Nieważne. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #29888 /* ~"Hmm. Powiedziałbym, że jest to frustrujące dla nas obu."~ */
  IF ~~ THEN REPLY #29889 /* ~"Nieważne. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29890 /* ~"Nieważne. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #29891 /* ~"Hmm. Dobrze."~ */
  IF ~~ THEN REPLY #29892 /* ~"Może mógłbyś mi pomóc w czymś jeszcze..."~ */ GOTO 1
  IF ~~ THEN REPLY #29893 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 1.11 18.2 59.2 60.2 61.4 62.4 63.8 64.6 72.6 73.5 74.4 85.4 86.6 102.6
  SAY #29894 /* ~"Nie za wiele mogę powiedzieć... to był dziwny, ściśle umiejscowiony pożar. Nie wyobrażam sobie, co wartościowego mogło być w spalonych dokumentach, ale ktoś musiał mieć w tym jakiś interes."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29895 /* ~"Możliwe, że to ja jestem odpowiedzialny za ten pożar."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29896 /* ~"Możliwe, że to ja jestem odpowiedzialny za ten pożar."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
~ THEN REPLY #29897 /* ~"Uch... czy udało ci się ustalić sprawcę?"~ */ GOTO 55
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #29898 /* ~"Czy udało ci się ustalić sprawcę?"~ */ GOTO 55
  IF ~~ THEN REPLY #29899 /* ~"Czy możesz powiedzieć mi co spłonęło?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29900 /* ~"Rozumiem. Opowiedz mi o córce."~ */ GOTO 63
  IF ~~ THEN REPLY #29901 /* ~"Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #29902 /* ~"Przykro mi z powodu twojej straty. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1 55.1 56.1
  SAY #29903 /* ~"Ty? Co masz na myśli?"~ */
  IF ~~ THEN REPLY #29904 /* ~Prawda: "Możliwe, że ja to zrobiłem, kiedyś, w przeszłości... Kiedy nie byłem sobą. Żałuję tego, co zrobiłem i proszę abyś mi wybaczył."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29905 /* ~Kłamstwo: "Zmusił mnie do tego magiczny nakaz. Nie wiem co się wtedy wydarzyło."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29906 /* ~"Przykro mi, źle się wyraziłem. Opowiedz mi o córce."~ */ GOTO 41
  IF ~~ THEN REPLY #29907 /* ~"Wybacz mi, mówiąc to, nie miałem niczego konkretnego na myśli. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 41
  IF ~~ THEN REPLY #29908 /* ~"Nieważne. Żegnaj."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.2 40.3 40.4
  SAY #29909 /* ~"Nie..." Iannis ma kamienną twarz. "Dobrze cię słyszałem. Przyjąłeś na siebie odpowiedzialność za pożar. Dlaczego się do tego przyznajesz? Jesteś szalony?!"~ */
  IF ~~ THEN REPLY #29910 /* ~Prawda: "Możliwe, że ja to zrobiłem, kiedyś, w przeszłości... Kiedy nie byłem sobą. Żałuję tego, co zrobiłem i proszę abyś mi wybaczył."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29911 /* ~Kłamstwo: "Zmusił mnie do tego magiczny nakaz. Nie wiem co się wtedy wydarzyło."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #29912 /* ~"Nie podnoś więcej na mnie głosu, albo następny pożar okaże się fatalny w skutkach."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_5","GLOBALGood",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2
  SAY #29913 /* ~Na jego twarzy maluje się złość. "Ty... sigilijski *kundlu*! Miałem nadzieję, że po tym, co zrobiłeś, pojawisz się jeszcze raz! Zniszczyłeś mój dom i kilkanaście cennych dla mnie pamiątek, a teraz ośmielasz się wracać niczym nocne straszydło i MASZ CZELNOŚĆ znowu mi grozić?!"~ */
  IF ~~ THEN REPLY #29914 /* ~Prawda: "Możliwe, że ja to zrobiłem, kiedyś, w przeszłości... Kiedy nie byłem sobą. Żałuję tego, co zrobiłem i proszę abyś mi wybaczył."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29915 /* ~Kłamstwo: "Zmusił mnie do tego magiczny nakaz. Nie wiem co się wtedy wydarzyło."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29916 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29917 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29918 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #29919 /* ~"Ośmielam się. I co z tym zrobisz, starcze?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 43 // from: 42.3 90.6 92.2 103.2
  SAY #29920 /* ~Gdy rzucasz się na niego, Iannis uchyla się do tyłu, a następnie zaczyna krzyczeć. "Straże! Pomocy! Chce mnie zabić!"~ */
  IF ~~ THEN REPLY #29921 /* ~"Cholera..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 90.5 92.1 103.1
  SAY #29922 /* ~Z łatwością zaciskasz dłonie na skroniach Iannisa, następnie gwałtownie wykręcasz jego głowę w lewo.~ */
  IF ~~ THEN REPLY #29923 /* ~"Nie mam czasu wysłuchiwać twoich kazań, starcze..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(15)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #29924 /* ~Słychać *trzask* i Iannis bezwładnie osuwa się na twoje ręce.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29925 /* ~"Pokój z tobą..."~ */ DO ~PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke","GLOBAL",1)
~ JOURNAL #28822 /* ~Iannis zdenerwował mnie po raz ostatni, więc dusiłem go, aż zamilkł. W czasie zabójstwa zacząłem sobie coś przypominać... ale wspomnienie nie było zbyt wyraźne. Jedno jest pewne - dusiłem już przedtem innych.~ */ GOTO 46
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29926 /* ~"Pokój z tobą..."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ JOURNAL #28821 /* ~Iannis zdenerwował mnie po raz ostatni, więc dusiłem go, aż zamilkł.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29927 /* ~Czujesz się zaskoczony. Zrobiłeś to instynktownie, jak gdybyś robił to już wiele razy... zaczynasz sobie coś przypominać, wspomnienie jest jednak bardzo słabe.~ */
  IF ~~ THEN REPLY #29928 /* ~Zostaw ciało i kontynuuj.~ */ DO ~GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.5 90.8 92.4 103.4
  SAY #29929 /* ~Iannis zaczyna krzyczeć. "Straże! Pomocy! Intruz! Pomocy!"~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29930 /* ~"Cholera..."~ */ DO ~Enemy()
~ EXTERN ~DVHAIL~ 5
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #29931 /* ~"Cholera..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 40.0 41.0 42.0
  SAY #29932 /* ~"Ale..." Wydaje się, że brakuje mu słów. "Ale... dlaczego? Niektóre z tych rzeczy, które spłonęły... były cenne tylko dla mnie... niezastąpione!"~ */
  IF ~~ THEN REPLY #29933 /* ~"Możliwe, że jedna z pamiątek albo któryś dokument zagrażał mojej drugiej jaźni... obawiam się, że nigdy się tego nie dowiem."~ */ GOTO 49
  IF ~~ THEN REPLY #29934 /* ~"Prawdę powiedziawszy, nie wiem."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29935 /* ~"Twojej drugiej jaźni? O czym ty mówisz?"~ */
  IF ~~ THEN REPLY #29936 /* ~"Mam pewną przypadłość... od czasu do czasu zatracam się i staję się kimś zupełnie innym. W tym czasie moje czyny nie są tak naprawdę moje."~ */ GOTO 52
  IF ~~ THEN REPLY #29937 /* ~"Prawdę mówiąc, nie wiem."~ */ GOTO 50
  IF ~~ THEN REPLY #29938 /* ~Kłamstwo: "Zmusił mnie do tego magiczny nakaz. Nie wiem co się wtedy wydarzyło."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.1
  SAY #29939 /* ~"Nie wiesz?! Co jest, rozmawiam z dzieckiem, czy co?! Jak możesz nie wiedzieć dlaczego coś robisz?"~ */
  IF ~~ THEN REPLY #29940 /* ~"Mam pewną przypadłość... od czasu do czasu zatracam się i staję się kimś zupełnie innym. W tym czasie moje czyny nie są tak naprawdę moje."~ */ GOTO 52
  IF ~~ THEN REPLY #29941 /* ~Kłamstwo: "Zmusił mnie do tego magiczny nakaz. Nie wiem co się wtedy wydarzyło."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 40.1 41.1 42.1 49.2 50.1
  SAY #29942 /* ~Iannis marszczy czoło... próbuje to wszystko przemyśleć. "Słyszałem już o takich urokach, o tym, że rzucano je na ludzi." Przez chwilę się nie odzywa. "A ty *zdecydowałeś* się przyjść i wziąć na siebie całą odpowiedzialność..."~ */
  IF ~~ THEN REPLY #29943 /* ~"Jestem tu, by prosić cię o wybaczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~Okłamałem Iannisa mówiąc, że kiedy podłożyłem ogień pod jego biurem znajdowałem się pod wpływem zaklęcia. Poprosiłem go o przebaczenie. Przyjął to wytłumaczenie i wybaczył mi od razu, zapewniając, że ogień nie wyrządził trwałych szkód.~ */ GOTO 53
  IF ~~ THEN REPLY #29944 /* ~"Jestem tu, by prosić cię o wybaczenie i wynagrodzić ci stratę, jeśli jest to tylko w mojej mocy."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~Okłamałem Iannisa mówiąc, że kiedy podłożyłem ogień pod jego biurem znajdowałem się pod wpływem zaklęcia. Poprosiłem go o przebaczenie. Przyjął to wytłumaczenie i wybaczył mi od razu, zapewniając, że ogień nie wyrządził trwałych szkód.~ */ GOTO 53
  IF ~~ THEN REPLY #29945 /* ~"No cóż... nie odpowiedzialność za tę zbrodnię. W końcu to nie byłem tak naprawdę ja."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29946 /* ~Okłamałem Iannisa mówiąc, że kiedy podłożyłem ogień pod jego biurem znajdowałem się pod wpływem zaklęcia. Poprosiłem go o przebaczenie. Przyjął to wytłumaczenie i wybaczył mi od razu, zapewniając, że ogień nie wyrządził trwałych szkód.~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 49.0 50.0
  SAY #29947 /* ~Iannis marszczy czoło... próbuje to wszystko przemyśleć. "Słyszałem już o czymś takim... chwilowa amnezja i pojawienie się drugiej osobowości... no i jest też fakt twojej chęci wzięcia na siebie całej odpowiedzialności..."~ */
  IF ~~ THEN REPLY #29948 /* ~"To... podobne do mojej przypadłości. Jestem tu, by prosić cię o wybaczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~Powiedziałem Iannisowi, że to ja byłem odpowiedzialny za pożar w jego biurze i poprosiłem go o przebaczenie. Wybaczył mi od razu, zapewniając, że ogień nie wyrządził trwałych szkód.~ */ GOTO 53
  IF ~~ THEN REPLY #29949 /* ~"Jestem tu, by prosić cię o wybaczenie i wynagrodzić ci stratę, jeśli jest to tylko w mojej mocy."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~Powiedziałem Iannisowi, że to ja byłem odpowiedzialny za pożar w jego biurze i poprosiłem go o przebaczenie. Wybaczył mi od razu, zapewniając, że ogień nie wyrządził trwałych szkód.~ */ GOTO 53
  IF ~~ THEN REPLY #29950 /* ~"No cóż... nie odpowiedzialności za tę zbrodnię. W końcu to nie byłem tak naprawdę ja."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29951 /* ~Powiedziałem Iannisowi, że to ja byłem odpowiedzialny za pożar w jego biurze i poprosiłem go o przebaczenie. Wybaczył mi od razu, zapewniając, że ogień nie wyrządził trwałych szkód.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 52.0 52.1 52.2
  SAY #29952 /* ~"Ja..." Iannis marszczy czoło, następnie rozluźnia się. "Nie ma czego wybaczać... Pogodziłem się już ze stratą, nie była to rana na wieczność. Nie wiem jednak dlaczego wybrano taki cel. W spalonych dokumentach nie było nic wartościowego."~ */
  IF ~~ THEN REPLY #29953 /* ~"Co to za dokumenty?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #29954 /* ~"Głównie zapisy. Niektóre bardzo stare."~ */
  IF ~~ THEN REPLY #29955 /* ~"Zapisy?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 55 // from: 39.2 39.3
  SAY #29956 /* ~"Nie, ani Harmonium, ani Łaskobójcom nie udało się ustalić sprawcy."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29957 /* ~"Możliwe, że to ja ponoszę odpowiedzialność za ten pożar."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29958 /* ~"Możliwe, że to ja ponoszę odpowiedzialność za ten pożar."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29959 /* ~"Powiedz mi co spłonęło."~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29960 /* ~"Rozumiem. Opowiedz mi o córce."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64204 /* ~"Rozumiem. Opowiedz mi o córce."~ */ GOTO 63
  IF ~~ THEN REPLY #29961 /* ~"Niedobrze się składa. Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29962 /* ~"Przykro mi z powodu twojej straty. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 39.4 55.2
  SAY #29963 /* ~"Spłonęło kilka zapisów, trochę pamiątek i innych rzeczy, które miały wartość tylko dla mnie."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29964 /* ~"Możliwe, że to ja ponoszę odpowiedzialność za ten pożar."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29965 /* ~"Możliwe, że to ja ponoszę odpowiedzialność za ten pożar."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29966 /* ~"Zapisów?"~ */ GOTO 12
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29967 /* ~"Rozumiem. Opowiedz mi o córce."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64203 /* ~"Rozumiem. Opowiedz mi o córce."~ */ GOTO 63
  IF ~~ THEN REPLY #29968 /* ~"Może mógłbyś mi pomóc w innej sprawie."~ */ GOTO 1
  IF ~~ THEN REPLY #29969 /* ~"Przykro mi z powodu twojej straty. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.1 1.3 36.2
  SAY #29970 /* ~"Musisz mi wybaczyć. Ostatnio prześladują mnie kłopoty... Obawiam się, że parę ostatnich lat było bardzo męczące."~ */
  IF ~~ THEN REPLY #29971 /* ~"Czy mogę w czymś pomóc?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_5","GLOBALGood",1)
~ GOTO 58
  IF ~~ THEN REPLY #29972 /* ~"Jakie kłopoty?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29973 /* ~"Rozumiem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #29974 /* ~"Przepraszam, że ci przeszkodziłem... Mam nadzieję, że twa sytuacja się polepszy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #29975 /* ~"Nie, nie... nie można zbyt wiele zrobić." Kiwa głową. "Tym niemniej, doceniam twą propozycję. Dziękuję."~ */
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29976 /* ~"Może gdy opowiesz o swoich problemach, trochę ci ulży."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29977 /* ~"Może gdy opowiesz o swoich problemach, trochę ci ulży."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29978 /* ~"Może gdy opowiesz o swoich problemach, trochę ci ulży."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29979 /* ~"Jakie miałeś kłopoty?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29980 /* ~"Jakie miałeś kłopoty?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29981 /* ~"Jakie miałeś kłopoty?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29982 /* ~"Bardzo dobrze. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #29983 /* ~"Mam nadzieję, że twoja sytuacja ulegnie poprawie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1 58.0 58.2 58.3 58.5
  SAY #29984 /* ~Iannis wzdycha. "Nie chcę cię tym obarczać... niedawno straciłem córkę. Był także pożar... ale to już inna historia."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29985 /* ~"Opowiedz mi o córce."~ */ GOTO 61
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29986 /* ~"Opowiedz mi o córce."~ */ GOTO 62
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29987 /* ~"Pożar?"~ */ GOTO 39
  IF ~~ THEN REPLY #29988 /* ~"Rozumiem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #29989 /* ~"Przykro mi z powodu twojej straty. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 1.0 1.2 36.3 36.4 58.1 58.4
  SAY #29990 /* ~Iannis wzdycha. "Nie chcę cię obarczać... tak jak mówiłem, niedawno straciłem córkę. Był także pożar... ale to już inna historia."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29991 /* ~"Opowiedz mi o swojej córce."~ */ GOTO 63
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29992 /* ~"Opowiedz mi o swojej córce."~ */ GOTO 63
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29993 /* ~"Pożar?"~ */ GOTO 39
  IF ~~ THEN REPLY #29994 /* ~"Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #29995 /* ~"Przykro mi z powodu twej straty. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #30224 /* ~W jednej chwili Iannis wydaje się załamany. "Tak..." Traci swoją urzędową pozę, ogarnia go zimna desperacja. "Moja córka, Deionarra, zmarła jakiś czas temu..." To imię wywołuje szok. *Znałeś* tę kobietę.~ */
  IF ~~ THEN REPLY #30225 /* ~"Opowiedz mi o niej. Jaka była?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30226 /* ~"Jak umarła?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30227 /* ~"Widziałem kobietę o tym imieniu pochowaną w sali pamięci w Kostnicy."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30228 /* ~"Widziałem kobietę o tym imieniu pochowaną w sali pamięci w Kostnicy. Stała się duchem i twierdzi, że mnie zna."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30229 /* ~"Powiedz coś więcej o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30230 /* ~"Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30231 /* ~"Przykro mi z powodu twojej straty. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 59.1
  SAY #30232 /* ~Iannis wydaje się załamany. "Tak..." Traci swoją urzędową pozę, ogarnia go zimna desperacja. "Moja córka, Deionarra, zmarła jakiś czas temu..."~ */
  IF ~~ THEN REPLY #30233 /* ~"Opowiedz mi o niej. Jaka była?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30234 /* ~"Jak umarła?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30235 /* ~"Widziałam kobietę o tym imieniu pochowaną w sali pamięci w Kostnicy."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30236 /* ~"Widziałem kobietę o tym imieniu pochowaną w sali pamięci w Kostnicy. Stała się duchem i twierdzi, że mnie zna."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30237 /* ~"Opowiedz mi więcej o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30238 /* ~"Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30239 /* ~"Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 1.12 39.5 55.3 55.4 56.3 56.4 60.0 60.1 61.0 62.0 66.5 67.0 68.0 87.2 93.2 94.2 95.2 96.0
  SAY #30240 /* ~"Deionarra? Była... młoda. Ostatnio przyłączyła się do Stronnictwa Doznań, do Czuciowców... całkiem przyjemna frakcja, ale tam kogoś spotkała... wyruszyła z nim w podróż i tam umarła. Jej cia..." Jest przepełniony bólem. "Nie było mi nawet dane odzyskać jej ciała..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30241 /* ~"Iannisie, odkryłem co stało się z Deionarrą."~ */ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 75
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30235 /* ~"Widziałam kobietę o tym imieniu pochowaną w sali pamięci w Kostnicy."~ */ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 86
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",2)
~ THEN REPLY #30236 /* ~"Widziałem kobietę o tym imieniu pochowaną w sali pamięci w Kostnicy. Stała się duchem i twierdzi, że mnie zna."~ */ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 87
  IF ~~ THEN REPLY #30242 /* ~"Mówisz, że była Czuciowcem?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30243 /* ~"Czy wiesz coś o człowieku, z którym podróżowała?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 72
  IF ~~ THEN REPLY #30244 /* ~"Czy wiesz, dokąd się udali?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30245 /* ~"Czy wiesz, jak umarła?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 85
  IF ~~ THEN REPLY #30246 /* ~"Wybacz, że pytam, ale skoro nie byłeś w stanie znaleźć jej ciała, skąd wiesz, że nie żyje?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30247 /* ~"Rozumiem. Opowiedz mi o pożarze."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 39
  IF ~~ THEN REPLY #30248 /* ~"Może mógłbyś mi pomóc w innej sprawie..."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ GOTO 1
  IF ~~ THEN REPLY #30249 /* ~"Przykro mi z powodu twojej straty. Pójdę już. Żegnaj."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Ojciec Deionarry, Iannis, powiedział mi, że była ona członkinią frakcji Czuciowców. Powiedział też, że w chwili śmierci była bardzo młoda, i że zginęła podążając za mężczyzną, którego spotkała w podróży. Nigdy nie znaleziono jej ciała.~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.3 72.2 73.1 74.1 85.1 86.2 102.1
  SAY #30250 /* ~"Tak..." Trochę się ożywia, jak gdyby wspomnienia dodawały mu sił. "Przyłączyła się do nich przez swój dar... i przez to, że chciała tak *wiele* dowiedzieć się o wieloświecie. Czuciowcy chętnie dzielą się doświadczeniem i doznaniami."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30252 /* ~"Iannisie, odkryłem co stało się z Deionarrą."~ */ GOTO 75
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #30253 /* ~"Zauważyłem. W sensorium widziałem kamień doznań, który zawierał część jej wspomnień."~ */ GOTO 65
  IF ~~ THEN REPLY #2944 /* ~"Dar?"~ */ DO ~SetGlobal("Deionarra_Sight","GLOBAL",1)
~ JOURNAL #30260 /* ~Iannis powiedział, że w żyłach Deionarry płynęła krew wieszczki. Miała dar 'Widzenia', dzięki któremu mogła dostrzec wydarzenia, które miały dopiero nastąpić.~ */ GOTO 102
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30254 /* ~"Czy wiesz coś o człowieku, z którym podróżowała?"~ */ GOTO 72
  IF ~~ THEN REPLY #30255 /* ~"Czy wiesz, dokąd się udali?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30256 /* ~"Czy wiesz, jak umarła?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30257 /* ~"Rozumiem. Opowiedz mi o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30258 /* ~"Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30259 /* ~"Przykro mi z powodu twojej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 1.9 25.0 26.0 64.1
  SAY #30261 /* ~Jego oczy płoną nadzieją. "Naprawdę? Ale który...? Musisz mi powiedzieć!"~ */
  IF ~~ THEN REPLY #30262 /* ~"To jeden z kamieni doznań Czuciowców... jeśli nie jesteś jednym z nich, nie pozwolą ci go zobaczyć."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #30263 /* ~Myśli przez chwilę. "Muszę znaleźć sposób... być może dla jej ojca zrobiliby wyjątek..."~ */
  IF ~~ THEN REPLY #30264 /* ~"Jeśli chcesz, mogę z kimś pomówić. Jestem pewien, że w twoim przypadku zrobiliby wyjątek."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~Powiedziałem Iannisowi, że mogę popytać w Gmachu Rozrywki i zobaczyć czy uda mi się go tam wprowadzić, by mógł zobaczyć kamień doznań swojej córki. Nie wiem co zdołam zrobić, ale spróbuję.~ */ GOTO 67
  IF ~~ THEN REPLY #30265 /* ~"Nie chcę łamać praw Czuciowców. Ale mogę z kimś pomówić i dowiedzieć się co jeszcze można zrobić."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_5","GLOBALLaw",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~Powiedziałem Iannisowi, że mogę popytać w Gmachu Rozrywki i zobaczyć czy uda mi się go tam wprowadzić, by mógł zobaczyć kamień doznań swojej córki. Nie wiem co zdołam zrobić, ale spróbuję.~ */ GOTO 67
  IF ~~ THEN REPLY #30266 /* ~"Mogę ci pomóc, ale za opłatą. Moje słowa mają pewne znaczenie w Gmachu Rozrywki."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_2","GLOBALGood",-1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30271 /* ~Powiedziałem Iannisowi, że mogę popytać w Gmachu Rozrywki i zobaczyć czy uda mi się go tam wprowadzić, by mógł zobaczyć kamień doznań swojej córki... ale nie za darmo. Odparł, że zapłaci mi jeśli zdobędę pozwolenie od Czuciowców.~ */ GOTO 68
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64287 /* ~"Możliwe. Ale do rzeczy, zostawiła mi numer zapisu w kamieniu doznań..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64288 /* ~"Możliwe. Ale do rzeczy, zostawiła mi numer zapisu w kamieniu doznań..."~ */ GOTO 104
  IF ~~ THEN REPLY #30267 /* ~"To sprawa między tobą a nimi. Opowiedz mi jeszcze o Deionarze..."~ */ GOTO 63
  IF ~~ THEN REPLY #30268 /* ~"To możliwe. Powinieneś z nimi pomówić. W każdym razie, mam parę pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #30269 /* ~"Możliwe. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1
  SAY #30272 /* ~Wyraźnie mu ulżyło. "Gdybyś mógł, byłbym ci wdzięczny."~ */
  IF ~~ THEN REPLY #30273 /* ~"Zobaczę co da się zrobić. Chciałbym jednak wiedzieć więcej o Deionarze. Jaka ona była?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64289 /* ~"Pójdę to ustalić. A teraz do rzeczy, zostawiła mi numer zapisu na kamieniu doznań..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64290 /* ~"Pójdę to ustalić. A teraz do rzeczy, zostawiła mi numer zapisu na kamieniu doznań..."~ */ GOTO 104
  IF ~~ THEN REPLY #30274 /* ~"Spróbuję... zanim pójdę, może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30275 /* ~"Zobaczę, co mogę zrobić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY #30276 /* ~Wyraźnie mu ulżyło. "Gdy uzyskasz dla mnie pozwolenie, bym zobaczył ten kamień, wróć proszę, a ja upewnię się, że zostaniesz odpowiednio wynagrodzony."~ */
  IF ~~ THEN REPLY #30277 /* ~"Zobaczę co da się zrobić; to może być duża sprawa. Chcę jednak wiedzieć więcej o Deionarze, zanim popytam w Gmachu Rozrywki. Jaka ona była?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64291 /* ~"Pójdę to ustalić. A teraz do rzeczy, zostawiła mi numer zapisu na kamieniu doznań..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64292 /* ~"Pójdę to ustalić. A teraz do rzeczy, zostawiła mi numer zapisu na kamieniu doznań..."~ */ GOTO 104
  IF ~~ THEN REPLY #30278 /* ~"Spróbuję... zanim pójdę, może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30279 /* ~"Zobaczę co da się zrobić... to może *dużo* kosztować. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.0
  SAY #30280 /* ~"Ja... dziękuję ci, dobry panie, dziękuję! Jestem twoim dłużnikiem!"~ */
  IF ~  Global("Evil_Iannis_2","GLOBAL",1)
~ THEN REPLY #30281 /* ~"Rzeczywiście jesteś... Chyba wspomniałeś coś o wynagrodzeniu..."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30284 /* ~Wróciłem do Iannisa i oznajmiłem, że Czuciowcy zgodzili się dać mu dostęp do kamienia doznań jego córki. Był niezmiernie wdzięczny... tak bardzo wdzięczny, że chciał mi zapłacić mnóstwem monet i pomniejszych magicznych przedmiotów. Wydaje mi się, że jest jakaś cena za miłość ojca do córki...~ */ GOTO 70
  IF ~  Global("Evil_Iannis_2","GLOBAL",0)
~ THEN REPLY #30282 /* ~"To żaden kłopot, Iannisie. Proszę, idź, zobacz to, czego doświadczyła twoja córka. Być może przyniesie ci to ulgę."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30285 /* ~Wróciłem do Iannisa i oznajmiłem, że Czuciowcy zgodzili się dać mu dostęp do kamienia doznań jego córki. Był mi niezmiernie wdzięczny. Wystarczyło wspomnieć, że udało mi się uzyskać dla niego pozwolenie na zobaczenie kamienia doznań Deionarry, aby jego smutek się zmniejszył.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #30283 /* ~"Oczywiście, oczywiście... poczekaj chwilę, za chwilę wracam."~ */
  IF ~~ THEN REPLY #30286 /* ~"Bardzo dobrze. Zaczekam."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(500)
GiveItemCreate("Maslow",Protagonist,33,33,33)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #30287 /* ~Po chwili Iannis wraca. W dłoni trzyma wielką sakiewkę pełną monet, oraz dziwnie wyglądających amuletów. "Proszę bardzo, panie... i jeszcze raz pozwól wyrazić mą wdzięczność."~ */
  IF ~~ THEN REPLY #30288 /* ~"Tak, tak... słuchaj, może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30289 /* ~"Oczywiście, oczywiście... to żaden kłopot... to znaczy, za tę sumę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 63.4 64.3 73.2 74.2 102.2
  SAY #30290 /* ~"Mało. Do momentu, gdy wyjechała, nawet nie wiedziałem, że istnieje. A wtedy było już za późno, by móc go poznać."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30291 /* ~"Iannisie, odkryłem co stało się z Deionarrą."~ */ GOTO 75
  IF ~~ THEN REPLY #30292 /* ~"Myślę, że to byłem ja. Ale wiele zapomniałem."~ */ GOTO 88
  IF ~~ THEN REPLY #30293 /* ~"Mówisz, że była Czuciowcem?"~ */ GOTO 64
  IF ~~ THEN REPLY #30295 /* ~"Czy wiesz, dokąd się udali?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30297 /* ~"Jak umarła?"~ */ GOTO 85
  IF ~~ THEN REPLY #30300 /* ~"Skąd wiesz, że umarła?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30301 /* ~"Rozumiem. Opowiedz mi o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30302 /* ~"Rozumiem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30303 /* ~"Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 63.5 64.4 72.3 74.3 85.2 86.3 102.3
  SAY #30304 /* ~"Nigdy nie powiedziała. Nie jestem pewien, czy była w stanie powiedzieć, dokąd wyruszyli. To musiało być... okropne miejsce."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30305 /* ~"Iannisie, odkryłem co stało się z Deionarrą."~ */ GOTO 75
  IF ~~ THEN REPLY #30306 /* ~"Mówisz, że była Czuciowcem?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30307 /* ~"Czy wiesz coś o człowieku, z którym podróżowała?"~ */ GOTO 72
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30308 /* ~"Jak umarła?"~ */ GOTO 85
  IF ~~ THEN REPLY #30309 /* ~"Skąd wiesz, że umarła?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30310 /* ~"Rozumiem. Opowiedz mi o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30311 /* ~"Rozumiem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30312 /* ~"Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 63.7 72.5 73.4 85.3 86.5 102.5
  SAY #30313 /* ~"To jest najciekawsze... Poszedłem do Grabarzy, żeby dowiedzieć się, czy odnaleźli jej ciało, a oni skierowali mnie do jednego z ich frakcji koło pomnika Grabarzy... chyba do Grabarza zwanego 'Grzebiącym Imiona'. Uważa się, że wie on wszystko o zmarłych. Powiedział mi, że moja córka umarła."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30314 /* ~"Iannisie, wiem co stało się z Deionarrą."~ */ GOTO 75
  IF ~~ THEN REPLY #30315 /* ~"Mówisz, że była Czuciowcem?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30316 /* ~"Czy wiesz coś o człowieku, z którym podróżowała?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #30317 /* ~"Czy wiesz, dokąd się udali?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 73
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30318 /* ~"Rozumiem. Opowiedz mi o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30319 /* ~"Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30320 /* ~"Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 1.13 63.0 64.0 72.0 73.0 74.0 85.0 86.0 102.0
  SAY #30321 /* ~Wydaje się, że przez chwilę cię nie słuchał. Znów zaczyna mówić, ale o wiele wolniej. "Opowiedz mi. Chcę wiedzieć."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Prawda: "To ja odpowiadam za śmierć twojej córki. Zamordowałem ją w Sferze Materii Negatywnej, mając nadzieję, że jej miłość do mnie zwiąże ją z tym miejscem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Przyznałem się Iannisowi, ojcu Deionnary, i powiedziałem co się stało z jego córką. Mam nadzieję, że pomimo ogromu zbrodni, znajomość jej losu przyniesie mu choć trochę ulgi.~ */ EXTERN ~DVHAIL~ 6
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30323 /* ~Prawda: "To ja odpowiadam za śmierć twojej córki. Zamordowałem ją w Sferze Materii Negatywnej, mając nadzieję, że jej miłość do mnie zwiąże ją z tym miejscem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Przyznałem się Iannisowi, ojcu Deionnary, i powiedziałem co się stało z jego córką. Mam nadzieję, że pomimo ogromu zbrodni, znajomość jej losu przyniesie mu choć trochę ulgi.~ */ GOTO 76
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Powiedz półprawdę: "Zginęła w Sferze Materii Negatywnej w wyniku zdrady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Częściowo przyznałem się ojcu Deionarry, Iannisowi, i powiedziałem mu co się stało z jego córką. Mam nadzieję, że znajomość jej losu przyniesie mu choć trochę ulgi. I tak nie mógłby znieść prawdy, a ja nie potrzebuję kolejnej osoby, która oskarżałaby mnie o *wszystkie* problemy w Sferach.~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30325 /* ~Powiedz półprawdę: "Zginęła w Sferze Materii Negatywnej w wyniku zdrady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Częściowo przyznałem się ojcu Deionarry, Iannisowi, i powiedziałem mu co się stało z jego córką. Mam nadzieję, że znajomość jej losu przyniesie mu choć trochę ulgi. I tak nie mógłby znieść prawdy, a ja nie potrzebuję kolejnej osoby, która oskarżałaby mnie o *wszystkie* problemy w Sferach.~ */ GOTO 77
  IF ~~ THEN REPLY #30326 /* ~Kłamstwo: "Zachorowała w czasie podróży... najwyraźniej, czas jaki spędziła w Sigil nie przygotował jej do warunków panujących w innych Sferach."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~Skłamałem Iannisowi, ojcu Deionarry, o tym co stało się z jego córką. Mam nadzieję, że znajomość jej losu przyniesie mu choć trochę ulgi. I tak nie mógłby znieść prawdy, a ja nie potrzebuję kolejnej osoby, która oskarżałaby mnie o *wszystkie* problemy w Sferach.~ */ GOTO 89
  IF ~~ THEN REPLY #30327 /* ~"Nieważne. Źle się wyraziłem. Może mógłbyś mi pomóc w innej sprawie..."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
  IF ~~ THEN REPLY #30328 /* ~"To już bez znaczenia. Żegnaj."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
END

IF ~~ THEN BEGIN 76 // from: 75.1 77.0 90.2
  SAY #30332 /* ~Iannis patrzy na ciebie w milczeniu, potem jego głos załamuje się. "Dlaczego... *dlaczego* zrobiłeś coś tak okropnego?"~ */
  IF ~~ THEN REPLY #30333 /* ~"To nie byłem ja... to moja druga część. Zrobił to, ponieważ miał nadzieję, że będzie wiązała go z tą Sferą. Miał w tym jakiś cel. Przykro mi, Iannisie."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30334 /* ~"Z tego co wiem, odpowiadam za wiele strasznych rzeczy, wielu z nich nie pamiętam. Zrobiłem to mając nadzieję, że zwiąże mnie z tą Sferą. Przykro mi, Iannisie."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30335 /* ~"To nie było 'okropne', to było *konieczne*. Twoja córka chciała poświęcić dla mnie życie, a tego potrzebowałem, by ocalić swoje."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_3","GLOBALGood",-3)
AddexperienceParty(12000)
~ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 75.3 90.3
  SAY #30336 /* ~Iannis patrzy na ciebie w milczeniu. "Kto to zrobił?"~ */
  IF ~~ THEN REPLY #30337 /* ~Prawda: "To ja za to odpowiadam."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",1)
~ GOTO 76
  IF ~~ THEN REPLY #30338 /* ~Kłamstwo: "Nie wiem. Lepiej byłoby nie zgłębiać takich spraw."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
~ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY #30339 /* ~Wygląda na załamanego. "Muszę się dowiedzieć..." Spogląda na ciebie. "Dziękuję, że mi powiedziałeś. Musiałem się dowiedzieć, co się z nią stało..."~ */
  IF ~~ THEN REPLY #30340 /* ~"Rozumiem. Może mógłbyś pomóc mi w innej sprawie. Zanim sobie pójdę..."~ */ GOTO 1
  IF ~~ THEN REPLY #30341 /* ~"Przykro mi, że straciłeś córkę, Iannisie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.0 76.1
  SAY #30342 /* ~"Ty..." Iannis stara się wyłowić sens twoich słów. "Poczekaj... mówisz, że to miało związać ją z tą Sferą? Co masz na myśli?"~ */
  IF ~~ THEN REPLY #30343 /* ~"Z tego, co rozumiem, była nadzieja, że jej miłość do mnie i śmierć w Sferze Materii Negatywnej pozwoliłyby jej żyć jako duch."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #30344 /* ~"Ona *żyje*?"~ */
  IF ~~ THEN REPLY #30345 /* ~"W pewnym sensie... tak."~ */ GOTO 81
  IF ~~ THEN REPLY #30346 /* ~"No cóż, nie powiedziałbym, że *żyje*. Ale jej dusza wciąż istnieje..."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #30347 /* ~"To..." Wygląda na przerażonego. "Trzeba ją uwolnić!"~ */
  IF ~~ THEN REPLY #30348 /* ~"Gdybym mógł znaleźć na to sposób, zrobiłbym to."~ */ GOTO 82
  IF ~  Global("Lawful_Deionarra_1","GLOBAL",1)
~ THEN REPLY #30349 /* ~"Już przysiągłem, że spróbuję ją uwolnić... albo się do niej przyłączyć."~ */ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0 81.1 92.0
  SAY #30350 /* ~"Jeśli jest w tobie choć odrobina przyzwoitości, oszczędź moją córkę. Nie można cofnąć tego, co się stało, więc proszę byś pozwolił, by jej dusza spoczywała w spokoju. Wtedy znajdę sposób, by wybaczyć ci to, co zrobiłeś."~ */
  IF ~~ THEN REPLY #30351 /* ~Przyrzeczenie: "Obiecuję, że pozwolę twej córce spoczywać w pokoju."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_8","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30352 /* ~"Zobaczę co da się zrobić."~ */ GOTO 83
  IF ~~ THEN REPLY #30353 /* ~"Nie mogę..."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0 82.1 97.2 100.0 100.1 100.2 101.0
  SAY #30354 /* ~"Dobrze. A teraz odejdź. Chcę zostać sam ze swoimi myślami."~ */
  IF ~~ THEN REPLY #30355 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.2
  SAY #30356 /* ~"A więc obyś poczuł sprawiedliwość Sfer, panie!" Zaciska zęby. "Obyś po stokroć odczuł cierpienie mojej córki!"~ */
  IF ~~ THEN REPLY #30357 /* ~"Uważaj na to, co mówisz, Iannisie, albo spotkasz się z córką szybciej niż ci się zdaje."~ */ GOTO 92
  IF ~~ THEN REPLY #30358 /* ~"Widzę, że nie mamy już o czym mówić. Żegnaj."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 61.1 62.1 63.6 64.5 72.4 73.3 86.4 102.4
  SAY #30359 /* ~"Nie wiem... nigdy nie odnaleziono jej ciała." Twarz Iannisa czerwienieje, dłonie zaciska w pięści. "A to prawdopodobnie najbardziej *nieznośna* część tej smutnej sprawy... Nigdy nie dowiem się, co ją opętało, by uciekać w ten sposób, co się z nią stało, ani gdzie leży jej ciało!"~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30360 /* ~"Iannisie, wiem co stało się z Deionarrą."~ */ GOTO 75
  IF ~~ THEN REPLY #30361 /* ~"Mówisz, że była Czuciowcem?"~ */ GOTO 64
  IF ~~ THEN REPLY #30362 /* ~"Czy wiesz, dokąd udali się Deionarra i ten mężczyzna?"~ */ GOTO 73
  IF ~~ THEN REPLY #30363 /* ~"Wybacz, że pytam, ale skąd wiesz, że nie żyje, skoro nigdy nie widziałeś jej ciała?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30364 /* ~"Rozumiem. Opowiedz mi o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30365 /* ~"Rozumiem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30366 /* ~"Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 61.2 62.2 63.1
  SAY #30367 /* ~"Tak, kazałem ustawić nosze pogrzebowe w sali pamięci. Nie ma tam ciała, ale miałem nadzieję, że nosze będą znakiem, który pomoże jej odnaleźć drogę do domu."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30368 /* ~"Iannisie, wiem co stało się z Deionarrą."~ */ GOTO 75
  IF ~~ THEN REPLY #30369 /* ~"Zadziałało... jej duch już tam jest."~ */ GOTO 87
  IF ~~ THEN REPLY #30370 /* ~"Mówisz, że była Czuciowcem?"~ */ GOTO 64
  IF ~~ THEN REPLY #30371 /* ~"Czy wiesz, dokąd udali się Deionarra i ten mężczyzna?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30372 /* ~"Czy wiesz, jak umarła?"~ */ GOTO 85
  IF ~~ THEN REPLY #30373 /* ~"Jeśli nie ma ciała, skąd wiesz, że nie żyje?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30374 /* ~"Rozumiem. Opowiedz mi o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30375 /* ~"Rozumiem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30376 /* ~"Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 61.3 62.3 63.2 86.1
  SAY #30377 /* ~"C... co?!" Iannis wygląda na zdenerwowanego. "Co powiedziałeś?!"~ */
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30378 /* ~"Jej duch mieszka teraz w sali pamięci."~ */ GOTO 93
  IF ~~ THEN REPLY #30379 /* ~"Jej duch mieszka teraz w sali pamięci. Rozmawialiśmy przez chwilę i wydaje się, że jest zrozpaczona."~ */ GOTO 97
  IF ~~ THEN REPLY #30380 /* ~"Nic nie mówiłem... opowiedz mi o niej jeszcze raz."~ */ GOTO 63
  IF ~~ THEN REPLY #30381 /* ~"Nic... źle się wyraziłem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30382 /* ~"Mówię, że przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 72.1 98.0
  SAY #30383 /* ~"Ty?!" Iannis lustruje cię wzrokiem. "Jesteś tym... i mówisz, że *zapomniałeś*?!" Przysuwa się; wygląda jak gdyby szykował się do walki. "*Zapomniałeś*... ale przecież to nie było tak dawno temu. Jak to możliwe?"~ */
  IF ~~ THEN REPLY #30384 /* ~"Mam pewną przypadłość... od czasu do czasu zatracam się i staję się kimś zupełnie innym. W tym czasie moje czyny nie są tak naprawdę moje."~ */ GOTO 99
  IF ~~ THEN REPLY #30385 /* ~"Źle się wyraziłem. Wątpię, żebym był tym człowiekiem. Jestem pewien, że pamiętałbym twą córkę, gdybym z nią podróżował."~ */ GOTO 103
  IF ~~ THEN REPLY #30386 /* ~"Męczą mnie te pytania. Żegnaj."~ */ GOTO 103
END

IF ~~ THEN BEGIN 89 // from: 75.4 90.4
  SAY #30387 /* ~"Tak bardzo się bałem." Iannis wzdycha. "Twoja opowieść brzmi wiarygodnie... tu, w mieście, żyła bezpiecznie, a nawet w najlepszych czasach zdrowie jej nie dopisywało." Patrzy z nadzieją. "Czy wiesz, gdzie może być jej ciało? Sprawdziłbym, czy została prawidłowo pochowana."~ */
  IF ~~ THEN REPLY #30388 /* ~"Nic nie zostało z jej ciała... to była straszna choroba, nie zostało z niej wiele."~ */ GOTO 101
END

IF ~~ THEN BEGIN 90 // from: 75.5 75.6
  SAY #30389 /* ~"Nie, panie, słyszałem dobrze. Powiedziałeś, że wiesz, co przytrafiło się mojej córce. Masz mi powiedzieć. Natychmiast." Jeszcze bardziej marszczy czoło. "Albo zawołam patrol Harmonium, a oni już z ciebie wszystko wyciągną."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Prawda: "To ja odpowiadam za śmierć twojej córki. Zamordowałem ją w Sferze Materii Negatywnej, mając nadzieję, że jej miłość do mnie zwiąże ją z tym miejscem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Przyznałem się Iannisowi, ojcu Deionnary, i powiedziałem co się stało z jego córką. Mam nadzieję, że pomimo ogromu zbrodni, znajomość jej losu przyniesie mu choć trochę ulgi.~ */ EXTERN ~DVHAIL~ 6
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Powiedz półprawdę: "Zginęła w Sferze Materii Negatywnej w wyniku zdrady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Częściowo przyznałem się ojcu Deionarry, Iannisowi, i powiedziałem mu co się stało z jego córką. Mam nadzieję, że znajomość jej losu przyniesie mu choć trochę ulgi. I tak nie mógłby znieść prawdy, a ja nie potrzebuję kolejnej osoby, która oskarżałaby mnie o *wszystkie* problemy w Sferach.~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30390 /* ~Prawda: "To ja odpowiadam za śmierć twojej córki. Zamordowałem ją w Sferze Materii Negatywnej, mając nadzieję, że jej miłość do mnie zwiąże ją z tym miejscem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~Przyznałem się Iannisowi, ojcu Deionnary, i powiedziałem co się stało z jego córką. Mam nadzieję, że pomimo ogromu zbrodni, znajomość jej losu przyniesie mu choć trochę ulgi.~ */ GOTO 76
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30391 /* ~Powiedz półprawdę: "Zginęła w Sferze Materii Negatywnej w wyniku zdrady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~Częściowo przyznałem się ojcu Deionarry, Iannisowi, i powiedziałem mu co się stało z jego córką. Mam nadzieję, że znajomość jej losu przyniesie mu choć trochę ulgi. I tak nie mógłby znieść prawdy, a ja nie potrzebuję kolejnej osoby, która oskarżałaby mnie o *wszystkie* problemy w Sferach.~ */ GOTO 77
  IF ~~ THEN REPLY #30392 /* ~Kłamstwo: "Zachorowała w czasie podróży... najwyraźniej, czas jaki spędziła w Sigil nie przygotował jej do warunków panujących w innych Sferach."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~Skłamałem Iannisowi, ojcu Deionarry, o tym co stało się z jego córką. Mam nadzieję, że znajomość jej losu przyniesie mu choć trochę ulgi. I tak nie mógłby znieść prawdy, a ja nie potrzebuję kolejnej osoby, która oskarżałaby mnie o *wszystkie* problemy w Sferach.~ */ GOTO 89
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30393 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30394 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30395 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30396 /* ~"Chcesz zawołać straże? No dalej. Jak na mój gust jest jeszcze sporo miejsca w Księdze Umarłych."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #30397 /* ~"Dlaczego to zrobiłeś?! To było ŻYCIE mojej córki, a nie..."~ */
  IF ~~ THEN REPLY #30398 /* ~"Mogłem rozporządzać jej życiem. Pozwoliła mi na to, oddając swe życie w moje ręce."~ */ GOTO 92
  IF ~~ THEN REPLY #30399 /* ~"Mam już dość gadania z tobą. Zamilcz, albo dołączysz do swej córki."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 84.0 91.0 91.1
  SAY #30400 /* ~Jego twarz staje się napięta z gniewu. "Ty... sigilijski *kundlu*! Zamordowałeś moją córkę bez krzty wyrzutów sumienia, a teraz wracasz niczym nocne straszydło i OŚMIELASZ się mówić takie rzeczy?!"~ */
  IF ~  Global("Evil_Iannis_3","GLOBAL",0)
~ THEN REPLY #30401 /* ~"Mówiłem w pośpiechu... wybacz mi moje słowa."~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30402 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30403 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30404 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30405 /* ~"Właśnie tak. Parę trupów więcej na mojej liście nie robi mi różnicy. I co masz zamiar z tym zrobić, starcze?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 93 // from: 87.0
  SAY #30461 /* ~"Lepiej, żeby to była przenośnia!" Wygląda na wściekłego. "Jeśli tak, to nie mam czasu na twoje słowne gierki..."~ */
  IF ~~ THEN REPLY #30462 /* ~"Nie, to nie przenośnia. Jej duch mieszka w sali pamięci."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",1)
~ GOTO 94
  IF ~~ THEN REPLY #30463 /* ~"Nie, to nie przenośnia. Jej duch mieszka w sali pamięci. Rozmawialiśmy przez chwilę i wydaje się być zrozpaczona."~ */ GOTO 97
  IF ~~ THEN REPLY #30464 /* ~"Więc przyjmij moje przeprosiny... opowiedz mi jeszcze o Deionarze."~ */ GOTO 63
  IF ~~ THEN REPLY #30465 /* ~"Źle się wyraziłem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30466 /* ~"Nie zastanawiałem się nad tym, co mówię. Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #30467 /* ~"Stała się... duchem?"~ */
  IF ~~ THEN REPLY #30468 /* ~"Tak."~ */ GOTO 95
  IF ~~ THEN REPLY #30469 /* ~"Tak, rozmawialiśmy przez chwilę i wydaje się zrozpaczona."~ */ GOTO 97
  IF ~~ THEN REPLY #30470 /* ~"Nie, pomyliłem się... opowiedz mi jeszcze o Deionarze."~ */ GOTO 63
  IF ~~ THEN REPLY #30471 /* ~"Źle się wyraziłem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30472 /* ~"Nie zastanawiałem się nad tym, co mówię. Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #30484 /* ~"Ja... ja... będę musiał ją odszukać, zobaczyć, czy można się z nią porozumieć, dowiedzieć się, co ją tam trzyma... w jakim jest stanie... Skąd wiesz, że stała się duchem?"~ */
  IF ~~ THEN REPLY #30485 /* ~"Widziałem przez chwilę jakieś widmo obok jej noszy pogrzebowych w Kostnicy. Myślę, że to była ona."~ */ GOTO 96
  IF ~~ THEN REPLY #30486 /* ~"Rozmawialiśmy przez jakiś czas i wydaje się być zrozpaczona."~ */ GOTO 97
  IF ~~ THEN REPLY #30487 /* ~"Nie, pomyliłem się... opowiedz mi jeszcze o Deionarze."~ */ GOTO 63
  IF ~~ THEN REPLY #30488 /* ~"Źle się wyraziłem. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30489 /* ~"Nie zastanawiałem się nad tym, co mówię. Przykro mi z powodu twej straty. Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0 97.0 98.1
  SAY #30490 /* ~"Udam się tam, jak tylko będę mógł, sam wybadać sprawę." Kiwa głową. "Jeśli twe słowa są prawdziwe, panie, będę twoim dłużnikiem..."~ */
  IF ~~ THEN REPLY #30491 /* ~"Nie ważne... opowiedz mi jeszcze o Deionarze."~ */ GOTO 63
  IF ~~ THEN REPLY #30492 /* ~"Dobrze więc. Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30493 /* ~"Chyba odbiorę ten dług innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 87.1 93.1 94.1 95.1
  SAY #30494 /* ~"Ty... rozmawiałeś z nią?!" Wydaje się, że jest jeszcze bardziej zagubiony. "Dlaczego cierpi?"~ */
  IF ~~ THEN REPLY #30495 /* ~"Nie... mam pewności. Nie dało się zrozumieć, co mówiła."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 96
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Najwidoczniej przeze mnie. Powiedziała, że mnie kocha i że ja ją kochałem... i że ją porzuciłem."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 98
  IF ~  GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Najwidoczniej przeze mnie. Powiedziała, że mnie kocha i że ja ją kochałem... i że ją porzuciłem."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 83
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY #30497 /* ~"Rozumiem. Być może..." Iannis marszczy czoło i uważnie cię obserwuje... jego twarz jest niczym z kamienia. "To z tobą opuściła Sigil? Jesteś tym, który zabrał ją w tę zabójczą podróż?"~ */
  IF ~~ THEN REPLY #30498 /* ~"Nie... nie mam pewności. Myślę, że to ja, ale tak wielu rzeczy nie pamiętam."~ */ GOTO 88
  IF ~~ THEN REPLY #30499 /* ~"Chyba nie. Wydawała się histeryzować i nie wiedziała wiele o tym, co ją otacza. Ale może chcesz iść jej poszukać."~ */ GOTO 96
END

IF ~~ THEN BEGIN 99 // from: 88.0 103.0
  SAY #30500 /* ~"W czasie mojej kariery poznałem niezliczoną liczbę kłamców." Iannis uważnie cię ogląda. "Nie wyglądasz mi na jednego z nich... przynajmniej w tej materii." Wzdycha. "Jeśli naprawdę nie pamiętasz, to cokolwiek spotkało was podczas podróży musiało zostawić głębokie blizny."~ */
  IF ~~ THEN REPLY #30501 /* ~"Raczej się zgadzam."~ */ DO ~SetGlobal("Deionarra_Fate_Quest","GLOBAL",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #30502 /* ~"W takim razie przyrzeknij mi, że jeśli powróci ci pamięć i odkryjesz, co się stało z moją córką, wrócisz tu, a ja przestanę się tym zamartwiać."~ */
  IF ~~ THEN REPLY #30503 /* ~Przyrzeczenie: "Zrobię to."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_7","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30504 /* ~Kłamstwo: "Zrobię to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Iannis_4","GLOBALGood",-1)
~ GOTO 83
  IF ~~ THEN REPLY #30505 /* ~"Jeśli dowiem się, co się z nią stało, wrócę... jeśli będę w stanie."~ */ GOTO 83
END

IF ~~ THEN BEGIN 101 // from: 89.0
  SAY #30506 /* ~"Rozumiem..." Marszczy czoło. "Dziękuję, że mi ulżyłeś, panie. Mogę tylko mieć nadzieję, że umierając nie cierpiała zbyt długo, że śmierć szybko ją dopadła."~ */
  IF ~~ THEN REPLY #30507 /* ~"Bez wątpienia... Jej koniec był szybki. Choroba uderzyła w nią niczym sztylet, bez ostrzeżenia. *Straszne* nieszczęście."~ */ GOTO 83
END

IF ~~ THEN BEGIN 102 // from: 64.2
  SAY #30508 /* ~"Och, tak..." Przytakuje. "W żyłach mojej córki płynęła krew wyroczni, ale nie można było polegać na jej zdolnościach. Od czasu do czasu potrafiła coś przewidzieć, zanim miało to miejsce... miała 'Dar Jasnowidzenia'; czasami widziała przyszłość i przeszłość, potrafiła przesiewać ziarno przeznaczenia..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30509 /* ~"Iannisie, wiem co stało się z Deionarrą."~ */ GOTO 75
  IF ~~ THEN REPLY #30510 /* ~"Mówisz, że była Czuciowcem?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30511 /* ~"Czy wiesz coś o człowieku, z którym podróżowała?"~ */ GOTO 72
  IF ~~ THEN REPLY #30512 /* ~"Czy wiesz, dokąd się udali?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30513 /* ~"Czy wiesz, jak umarła?"~ */ GOTO 85
  IF ~~ THEN REPLY #30514 /* ~"Wybacz, że pytam, ale skąd wiesz, że nie żyje, skoro nigdy nie widziałeś jej ciała?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30515 /* ~"Rozumiem. Opowiedz mi o tym pożarze."~ */ GOTO 39
  IF ~~ THEN REPLY #30516 /* ~"Może mógłbyś mi pomóc w innej sprawie..."~ */ GOTO 1
  IF ~~ THEN REPLY #30517 /* ~"Hmmm. To musiał być naprawdę użyteczny talent... przede wszystkim dla tego, kto z nią podróżował. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 88.1 88.2
  SAY #30518 /* ~"Nie, panie, słyszałem dobrze. Masz mi powiedzieć wszystko, co wiesz. Natychmiast." Jeszcze bardziej marszczy czoło. "Albo zawołam patrol Harmonium, a oni już z ciebie wszystko wyciągną."~ */
  IF ~~ THEN REPLY #30519 /* ~"Mam pewną przypadłość... od czasu do czasu zatracam się i staję się kimś zupełnie innym. Nie kłamię, co do twej córki. Po prostu nie pamiętam wielkiej części mojego życia."~ */ GOTO 99
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30520 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30521 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30522 /* ~Skręć mu kark.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30523 /* ~"Chcesz zawołać straże? No dalej. Zginą tak łatwo jak i ty."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 104 // from: 15.2 66.4 67.2 68.2
  SAY #30524 /* ~"Ach!" Iannis kiwa głową. "Wydaje się, że powiedziałeś prawdę... więc znałeś moją córkę." Wzdycha. "Poczekaj chwilę, a sprawdzę, co dla ciebie zostawiła."~ */
  IF ~~ THEN REPLY #30525 /* ~"Poczekam."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #30526 /* ~Odebrałem spadek po Deionarze od jej ojca.~ */ GOTO 31
END
