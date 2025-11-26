// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS6~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #3208 /* ~Ta dziwna, sześcienna istota zdaje się być zarówno maszyną, jak i żywym organizmem. Gdy się do niej zbliżasz, przez chwilę wpatruje się w ciebie szerokimi, otwartymi oczami. Na jej twarzy nie ma żadnych śladów emocji.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 429
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #40748 /* ~Ta dziwna, sześcienna istota zdaje się być zarówno maszyną, jak i żywym organizmem. Gdy się do niej zbliżasz, przez chwilę wpatruje się w ciebie szerokimi, otwartymi oczami. Na jej twarzy nie ma żadnych śladów emocji.~ */
  IF ~~ THEN REPLY #40749 /* ~"Witaj..."~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #40750 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #40751 /* ~Modron wpatruje się w ciebie bez słowa.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40752 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40753 /* ~"Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #40754 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #40755 /* ~Jego głos ma metaliczny, dudniący pogłos, jakby był raczej dźwiękiem granym przez dziwny instrument, niż prawdziwą mową: "Odpowiadam na twoje powitanie." Rozlega się ciche kliknięcie, gdy istota mruga. W powietrzu pomiędzy wami zapada niewygodne milczenie.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40756 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40757 /* ~"Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #65533 /* ~"Będę już szedł. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #40758 /* ~"Zidentyfikuj się przed nami."~ */
  IF ~~ THEN REPLY #40759 /* ~"Ale... moje pytania..."~ */ GOTO 5
  IF ~~ THEN REPLY #40760 /* ~"To, kim jestem, jest nieważne."~ */ GOTO 6
  IF ~~ THEN REPLY #40761 /* ~Kłamstwo: "Jestem... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40762 /* ~"Nie jestem pewien, kim jestem."~ */ GOTO 8
  IF ~~ THEN REPLY #40763 /* ~"Zapomnij... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40764 /* ~"Poznanie tożsamości przedmiotu ma wysoki priorytet. Odpowiedź na różne pytania, które przedmiot może postawić ma niski priorytet. Zidentyfikuj się przed nami."~ */
  IF ~~ THEN REPLY #40765 /* ~"To, kim jestem, jest nieważne."~ */ GOTO 6
  IF ~~ THEN REPLY #40766 /* ~Kłamstwo: "Jestem... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40767 /* ~"Nie jestem pewien, kim jestem."~ */ GOTO 8
  IF ~~ THEN REPLY #40768 /* ~"Zapomnij... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 8.0
  SAY #40769 /* ~"Zdanie przedmiotu co do ważności jego tożsamości jest nieistotne. Uznajemy, że tożsamość przedmiotu jest ważna. Dlatego też pod każdym względem jest ona ważna."~ */
  IF ~~ THEN REPLY #40770 /* ~Kłamstwo: "Jestem... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40771 /* ~"Nie jestem pewien, kim jestem."~ */ GOTO 8
  IF ~~ THEN REPLY #40772 /* ~"Zapomnij... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.0 8.2
  SAY #40773 /* ~Istota pochyla się nieco do przodu, potem w tył na metalicznych nogach - nie jesteś pewny, czy ruch ma za zadanie udawać ukłon, czy skinięcie głową. "Identyfikujemy się przedmiotowi, Adahnowi, jako modrony, typ kwadron, model uskrzydlony."~ */
  IF ~~ THEN REPLY #40774 /* ~"Mam teraz kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #40775 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.2 6.1
  SAY #40776 /* ~"Pragnęlibyśmy wiedzieć, czemu tak jest."~ */
  IF ~~ THEN REPLY #40777 /* ~"To naprawdę nieważne..."~ */ GOTO 6
  IF ~~ THEN REPLY #40778 /* ~"Sam nie wiem. Po prostu nie pamiętam."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
~ GOTO 9
  IF ~~ THEN REPLY #40779 /* ~Kłamstwo: "Jestem... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40780 /* ~"Zapomnij... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #40781 /* ~"Wszystkie rzeczy posiadają nazwę. Wszystkie powinny zostać zidentyfikowane. Twoja odpowiedź nie zadowala nas, ale powinna wystarczyć na ten czas." Istota milknie i mruga. "Identyfikujemy się przedmiotowi jako modrony, typ kwadron, model uskrzydlony."~ */
  IF ~~ THEN REPLY #40782 /* ~"Mam teraz kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #40783 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.1 7.0 9.0 11.1 12.1 13.1 14.1 15.0 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.0 25.0
  SAY #40784 /* ~"Przedmiot może zadawać pytania."~ */
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #40785 /* ~"Czy wiesz, czym jest ta mała zabawka?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #40786 /* ~"Co tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #40787 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 16
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40788 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 18
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68126 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ GOTO 18
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40789 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40790 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ GOTO 21
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40791 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 21
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40792 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 22
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40793 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 23
  IF ~~ THEN REPLY #40794 /* ~"Tak właściwie, to nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40795 /* ~"Naszym celem tutaj jest obserwacja."~ */
  IF ~~ THEN REPLY #40796 /* ~"Co obserwujesz?"~ */ GOTO 12
  IF ~~ THEN REPLY #40797 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40798 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #40799 /* ~"Obserwujemy jedną osobę z tutaj zatrudnionych."~ */
  IF ~~ THEN REPLY #40800 /* ~"Co obserwujesz?"~ */ GOTO 13
  IF ~~ THEN REPLY #40801 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40802 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #40803 /* ~"Jak już stwierdzono, obserwujemy jedną osobę z tutaj zatrudnionych."~ */
  IF ~~ THEN REPLY #40804 /* ~"Tak, ale co *dokładnie* obserwujesz?"~ */ GOTO 14
  IF ~~ THEN REPLY #40805 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40806 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40807 /* ~"Obiekt naszych obserwacji nazywa się 'Dolora'."~ */
  IF ~~ THEN REPLY #40808 /* ~"Czemu ją oglądacie?"~ */ GOTO 15
  IF ~~ THEN REPLY #40809 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40810 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40811 /* ~"Nie poinformowano nas co do konkretnego celu lub celów, które spowodowały, że otrzymaliśmy takie zadanie. Rozkaz naszego przełożonego pentadrona jest wystarczającą przyczyną, aby owo zadanie wykonać. Z tego powodu cel lub cele są dla nas nieistotne."~ */
  IF ~~ THEN REPLY #40812 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40813 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY #40814 /* ~"Budynek umiejscowiony w części Sigil powszechnie znanej jako Dzielnica Urzędników. Nie potrafimy podać dokładnych współrzędnych, ponieważ powierzchnia Sigil zmienia się w odstępach, których jeszcze nie określiliśmy. Sam budynek znany jest jako Przybytek Zaspokajania Żądz Intelektualnych. Służy jako coś, co można szeroko określić jako szkoła językowa. Jej uczniami są głównie kobiety, które zamierzają, w którymś momencie, jakiego jeszcze nie ustaliliśmy, a który waha się od ucznia do ucznia, stać się faktotumami Stronnictwa Doznań."~ */
  IF ~~ THEN REPLY #40815 /* ~"Stronnictwa Doznań?"~ */ GOTO 17
  IF ~~ THEN REPLY #40816 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40817 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #40818 /* ~"Podamy krótkie streszczenie tego, w jaki sposób zdefiniowane jest Stronnictwo Doznań: frakcja, której głównym wierzeniem jest to, iż z doświadczeniem przychodzi prawdziwe zrozumienie wieloświata i jego tajemnic."~ */
  IF ~~ THEN REPLY #40819 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40820 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.3 10.4
  SAY #40821 /* ~"Przedmiot, do którego odnosi się ta wypowiedź ma na imię 'Ecco'. Nie zebraliśmy o nim żadnych więcej informacji."~ */
  IF ~~ THEN REPLY #40822 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40823 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.5
  SAY #40824 /* ~"Gdybyśmy mieli zastanawiać się nad pewnością tego, co do której Raveli się to odnosi, wciąż nie posiadalibyśmy środków do stwierdzenia, czy Ravela jest matką Kesai, czy nie."~ */
  IF ~~ THEN REPLY #40825 /* ~"Której Raveli? To jest ich więcej niż jedna?"~ */ GOTO 20
  IF ~~ THEN REPLY #40826 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40827 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40828 /* ~"Nie możemy stwierdzić tego faktu, ale musimy rozważyć, że nie mniej niż 11,032 sfer jest nieskończonych, z których nie mniej niż 3,701 zaludniają świadome istoty używające nazw osobowych. Jest w takim razie wiarygodne, że w danej chwili znajduje się nieskończenie wiele istot o tym imieniu."~ */
  IF ~~ THEN REPLY #40829 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40830 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.6 10.7
  SAY #40831 /* ~"Nie wiemy. Jeśli tego w tej chwili nie czynisz, sugerowalibyśmy podejście metodyczne i przepytywanie każdego mieszkańca tego budynku."~ */
  IF ~~ THEN REPLY #40832 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40833 /* ~"Zatem jeszcze popytam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.8
  SAY #40834 /* ~"Nie wiemy nic o żadnej istocie ani obiekcie posiadającym taki tytuł."~ */
  IF ~~ THEN REPLY #40835 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40836 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 10.9
  SAY #40837 /* ~"Nie wiemy. Do tej pory nie staraliśmy się skatalogować każdego z mieszkańców tego budynku i nie zamierzamy tego uczynić."~ */
  IF ~~ THEN REPLY #40838 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40839 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 10.0
  SAY #40840 /* ~Modron - większy, ale w każdym calu identyczny jak przedmiot w twoich dłoniach - mruga raz, potem drugi i mówi: "Ten przedmiot to sześcienny portal. Użytkownik powinien ustawić członki tego sześcianu, że zostanie on zaktywizowany. Gdy tak się stanie, przedmiot ten przeniesie użytkownika w miejsce, które zostało zaprogramowane przy jego tworzeniu."~ */
  IF ~~ THEN REPLY #40841 /* ~"Jaka jest właściwa kombinacja, aby go uruchomić?"~ */ GOTO 25
  IF ~~ THEN REPLY #40842 /* ~"Dokąd ten sześcian zabierze użytkownika?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #40843 /* ~"Nie posiadamy takiej informacji. Ponad dziewięćdziesiąt siedem procent wszystkich sześciennych portali funkcjonuje w nieco inny sposób. Nie byliśmy obecni przy konstruowaniu tego przedmiotu ani nie dano nam instrukcji, co do jego użycia. Gdyby przedmiot pragnął użyć tego portalu, będzie on musiał odnaleźć sposób działania i cel drogą eksperymentu."~ */
  IF ~~ THEN REPLY #40844 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #40845 /* ~"Zatem żegnaj."~ */ EXIT
END
