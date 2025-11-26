// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEMORIC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DEMORIC~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1790 /* ~Widzisz potężnie zbudowanego mężczyznę z ciemnymi włosami, o surowych rysach twarzy. Ma na sobie togę Grabarzy, przygląda ci się lodowatym spojrzeniem.~ */
  IF ~~ THEN REPLY #1791 /* ~"Witaj."~ */ GOTO 3
  IF ~~ THEN REPLY #14590 /* ~Zignoruj go.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14589 /* ~Widzisz Emorika. Przygląda ci się lodowatym spojrzeniem.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14591 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14592 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #14823 /* ~Zignoruj Emorika. Idź dalej.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #14824 /* ~"Wyrzekłeś się nas." Emorik ścisza głos; brzmi to jakby ogłaszał wyrok. "Nie jesteś już Grabarzem."~ */
  IF ~~ THEN REPLY #14825 /* ~"Rozumiem. Jednak wciąż jest jeszcze kilka rzeczy, które chciałbym wiedzieć..."~ */ GOTO 6
  IF ~~ THEN REPLY #14826 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #14827 /* ~"Wyglądasz na zagubionego." Głos mężczyzny jest spokojny jak głaz. "Zesłał cię wiatr, czy przyszedłeś tu w jakimś celu?"~ */
  IF ~~ THEN REPLY #14828 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Emoric","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14829 /* ~"Jestem tylko gościem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14830 /* ~"Jestem Emorik, Faktotum i Wtajemniczony Czwartego Kręgu."~ */
  IF ~~ THEN REPLY #14831 /* ~"To twoja karczma?"~ */ GOTO 5
  IF ~~ THEN REPLY #14832 /* ~"Dobrze. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #14833 /* ~"Jeśli mierzysz członkostwo w miedzi, to nie jest to moje miejsce. Jeśli mierzysz członkostwo duchem, to jest to moje miejsce." Przerywa na chwilę, jakby próbował coś podkreślić. "Grabarze to moi studenci. Są pod moją opieką."~ */
  IF ~~ THEN REPLY #14834 /* ~"Mogę ci zadać kilka pytań...?"~ */ GOTO 6
  IF ~~ THEN REPLY #14835 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 2.0 5.0 7.4 8.4 9.4 10.2 11.4 12.3 13.1 14.3 15.1 16.1 18.1 19.1 20.0 21.3 24.0 25.0 26.1 27.2 28.0 29.2 30.4 31.2 38.4 39.2 40.0 41.2 42.2 43.1 44.2 45.2 46.2 47.4 48.2 49.1 50.1 51.1 52.3 53.0 54.1 56.0 57.3 62.3 67.4 68.0 80.8 81.5 82.5 83.2 84.2 86.3 87.2 88.5 89.1 90.3 91.2 92.2 93.4 94.1 96.1 97.2 98.4 99.4 100.4 101.3 102.2
  SAY #14836 /* ~Emorik czeka.~ */
  IF ~~ THEN REPLY #14837 /* ~"To twoja karczma?"~ */ GOTO 5
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14838 /* ~"Możesz mi opowiedzieć o frakcji Grabarzy?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14839 /* ~"Możesz mi opowiedzieć o frakcji Grabarzy?"~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #14840 /* ~"Chciałbym wstąpić do frakcji Grabarzy."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #14841 /* ~"Chciałbym wstąpić do frakcji Grabarzy."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #14842 /* ~"Chciałbym wstąpić do frakcji Grabarzy."~ */ GOTO 41
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14843 /* ~"Chciałbym wstąpić do frakcji Grabarzy."~ */ GOTO 97
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14844 /* ~Zinfiltruj Grabarzy dla Anarchistów: "Chciałbym wstąpić do frakcji Grabarzy."~ */ GOTO 97
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #14845 /* ~"Możesz mi opowiedzieć o Kontraktach Umarłych?"~ */ GOTO 29
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14846 /* ~"Przyszedłem tutaj szukając dziennika."~ */ GOTO 25
  IF ~  Global("Emoric_Pharod","GLOBAL",0)
Global("Pharod","GLOBAL",0)
~ THEN REPLY #14847 /* ~"Szukam człowieka o imieniu Farod. Widziałeś go?"~ */ GOTO 7
  IF ~  Global("Emoric_Pharod","GLOBAL",2)
GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14848 /* ~"Rozmawiałem z Farodem i dowiedziałem się skąd bierze ciała, które wam przynosi."~ */ GOTO 21
  IF ~  Global("Emoric_Pharod","GLOBAL",1)
~ THEN REPLY #14849 /* ~"Jeśli chodzi o szukanie Faroda i zapytanie go skąd pochodzą te ciała... ta robota jest wciąż aktualna?"~ */ GOTO 17
  IF ~  Global("Dustman_Initiation","GLOBAL",2)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14850 /* ~"Rozmawiałem z Norochjem i zrobiłem o co prosił."~ */ GOTO 55
  IF ~  Global("Dustman_Initiation","GLOBAL",3)
GlobalGT("Await","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14851 /* ~"Rozmawiałem z Oczekującym Śmierci."~ */ GOTO 59
  IF ~  Global("Dustman_Initiation","GLOBAL",4)
GlobalGT("Sere","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14852 /* ~"Rozmawiałem z Sere."~ */ GOTO 63
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14854 /* ~"Znalazłem Soego."~ */ GOTO 69
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14855 /* ~"Znalazłem Soego."~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14856 /* ~"Jako grabarz proszę cię o pomoc."~ */ GOTO 93
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14857 /* ~"Jako grabarz mam do ciebie kilka pytań dotyczących naszej frakcji..."~ */ GOTO 81
  IF ~~ THEN REPLY #14858 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.10
  SAY #14859 /* ~"Chciałbym wiedzieć dlaczego szukasz Zbieracza Faroda."~ */
  IF ~~ THEN REPLY #14860 /* ~"Zbieracza?"~ */ GOTO 8
  IF ~~ THEN REPLY #14861 /* ~"Ukradł mi coś."~ */ GOTO 13
  IF ~~ THEN REPLY #14862 /* ~"Chciałbym z nim porozmawiać."~ */ GOTO 14
  IF ~~ THEN REPLY #14863 /* ~"Dlaczego? Coś nie tak?"~ */ GOTO 11
  IF ~~ THEN REPLY #14864 /* ~"Właściwie źle się wyraziłem. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14865 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14866 /* ~"Zbieracze gromadzą martwych i przynoszą ich do nas. Chciałbym wiedzieć dlaczego szukasz tego Zbieracza."~ */
  IF ~~ THEN REPLY #14867 /* ~"Dlaczego Zbieracze gromadzą ciała?"~ */ GOTO 9
  IF ~~ THEN REPLY #14868 /* ~"Ukradł mi coś."~ */ GOTO 13
  IF ~~ THEN REPLY #14869 /* ~"Chciałbym z nim porozmawiać."~ */ GOTO 14
  IF ~~ THEN REPLY #14870 /* ~"Dlaczego? Coś nie tak?"~ */ GOTO 11
  IF ~~ THEN REPLY #14871 /* ~"Właściwie źle się wyraziłem. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14872 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #14873 /* ~"Zbierają dla nas martwych przez wzgląd na miedź."~ */
  IF ~~ THEN REPLY #14874 /* ~"Płacicie im za ciała zmarłych? Dlaczego?"~ */ GOTO 10
  IF ~~ THEN REPLY #14875 /* ~"Ukradł mi coś."~ */ GOTO 13
  IF ~~ THEN REPLY #14876 /* ~"Chciałbym z nim porozmawiać."~ */ GOTO 14
  IF ~~ THEN REPLY #14877 /* ~"Dlaczego? Coś nie tak?"~ */ GOTO 11
  IF ~~ THEN REPLY #14878 /* ~"Właściwie źle się wyraziłem. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14879 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14880 /* ~"Ulice to nie miejsce spoczynku. Martwi powinni być złożeni w Kostnicy. To zadanie Grabarzy." Emorik milknie na chwilę. Z jakiejś przyczyny wydaje ci się, że chce coś przekazać. "Chciałbym wiedzieć, dlaczego szukasz Zbieracza Faroda."~ */
  IF ~~ THEN REPLY #14881 /* ~"Chciałbym z nim porozmawiać."~ */ GOTO 14
  IF ~~ THEN REPLY #14882 /* ~"Dlaczego? Coś nie tak?"~ */ GOTO 11
  IF ~~ THEN REPLY #14883 /* ~"Właściwie źle się wyraziłem. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14884 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3 8.3 9.3 10.1 13.0 14.0 15.0
  SAY #14885 /* ~"Zbieracz Farod przyniósł ostatnio do Kostnicy wiele ciał. Ktoś musi zapytać skąd pochodzą."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14886 /* ~"Dowiedziałem się, skąd pochodzą."~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #14887 /* ~"Powiedz mi coś więcej o tych ciałach."~ */ GOTO 12
  IF ~~ THEN REPLY #14888 /* ~"Słuchaj, cokolwiek jest między wami dwoma, to wasza sprawa. Ja chcę tylko wiedzieć, gdzie on jest."~ */ GOTO 20
  IF ~~ THEN REPLY #14889 /* ~"Może mógłbym się dowiedzieć, skąd pochodzą te ciała."~ */ GOTO 16
  IF ~~ THEN REPLY #14890 /* ~"Naprawdę nie wiem. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14891 /* ~"Nie sądzę bym potrafił ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #14892 /* ~"Niektóre z nich są świeże. Wciąż mają w oczach ostatnie chwile. O wiele więcej nie żyje od wieków. Ich kości pokrywa stary pył. Ktoś musi zapytać, skąd pochodzą te ciała."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14893 /* ~"Dowiedziałem się, skąd pochodzą."~ */ GOTO 21
  IF ~~ THEN REPLY #14894 /* ~"Słuchaj, cokolwiek jest między wami dwoma, to wasza sprawa. Ja chcę tylko wiedzieć, gdzie on jest."~ */ GOTO 20
  IF ~~ THEN REPLY #14895 /* ~"Może mógłbym się dowiedzieć, skąd pochodzą te ciała."~ */ GOTO 16
  IF ~~ THEN REPLY #14896 /* ~"Naprawdę nie wiem. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14897 /* ~"Nie sądzę bym potrafił ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 8.1 9.1
  SAY #14898 /* ~Emorik milczy. Jego spojrzenie odbiera odwagę... On chyba nie mruga.~ */
  IF ~~ THEN REPLY #14899 /* ~"Dlaczego chcesz wiedzieć, jaką mam sprawę do Faroda?"~ */ GOTO 11
  IF ~~ THEN REPLY #14900 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14901 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.2 8.2 9.2 10.0
  SAY #14902 /* ~"Tak jak i ja. Sprawił, że to trudne. Mówi przez innych." Emorik milczy przez chwilę. "Gdy dwóch ludzi rozmawia przez innych, niewiele zostaje powiedziane, a wiele stracone."~ */
  IF ~~ THEN REPLY #14903 /* ~"Dlaczego chcesz porozmawiać z Farodem?"~ */ GOTO 11
  IF ~~ THEN REPLY #14904 /* ~"Dlaczego Farod nie chce rozmawiać z innymi?'~ */ GOTO 15
  IF ~~ THEN REPLY #14905 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 20
  IF ~~ THEN REPLY #14906 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14907 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #14908 /* ~"To 'dlaczego' jest niejasne. On jest człowiekiem, który ukrywa się przed innymi i przed swymi motywami."~ */
  IF ~~ THEN REPLY #14909 /* ~"Dlaczego chcesz wiedzieć, jaką mam sprawę do Faroda?"~ */ GOTO 11
  IF ~~ THEN REPLY #14910 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14911 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.2
  SAY #14912 /* ~"Jak chcesz tego dokonać?"~ */
  IF ~~ THEN REPLY #14913 /* ~"Mógłbym znaleźć Faroda i zapytać go."~ */ GOTO 17
  IF ~~ THEN REPLY #14914 /* ~"Naprawdę nie wiem. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14915 /* ~"Nie sądzę, bym potrafił ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.12 16.0
  SAY #14916 /* ~"Gdybyś porozmawiał ze Zbieraczem Farodem i przyniósł nam jego odpowiedzi, to wyświadczyłbyś Grabarzom wielką przysługę. Dowiedz się skąd pochodzą umarli, których nam przynosi, a nagroda cię nie minie."~ */
  IF ~~ THEN REPLY #14917 /* ~"Dobrze. Znajdę Faroda, porozmawiam z nim i dowiem się skąd pochodzą ciała, które wam przynosi."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",2)
~ GOTO 18
  IF ~~ THEN REPLY #14918 /* ~"Nie, dzięki. Nie chcę tej roboty."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #14919 /* ~Emorik kiwa głową. "Twoja ścieżka jest naszą ścieżką. Wróć gdy uzyskasz od Zbieracza Faroda odpowiedzi na pytania."~ */
  IF ~~ THEN REPLY #14920 /* ~"Możesz mi powiedzieć, gdzie on jest?"~ */ GOTO 20
  IF ~~ THEN REPLY #14921 /* ~"Dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14922 /* ~"W takim wypadku zobaczę co da się zrobić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #14923 /* ~Emorik kiwa głową. "Twoja ścieżka należy tylko do ciebie."~ */
  IF ~~ THEN REPLY #14924 /* ~"Możesz mi powiedzieć, gdzie on jest?"~ */ GOTO 20
  IF ~~ THEN REPLY #14925 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14926 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.2 12.1 14.2 18.0 19.0
  SAY #14927 /* ~"Nie wiem gdzie jest Zbieracz Farod. Ukrywa się przed wzrokiem Grabarzy. Powinieneś poszukać innych Zbieraczy i ich zapytać."~ */
  IF ~~ THEN REPLY #14928 /* ~"Dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14929 /* ~"W takim wypadku zobaczę co da się zrobić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.11 11.0 12.0
  SAY #14930 /* ~"Skąd pochodzą ciała, które nam przynosi?"~ */
  IF ~  Global("Lawful_Pharod_3","GLOBAL",0)
~ THEN REPLY #14931 /* ~Prawda: "Pochodzą z katakumb pod Sigil. Zabiera ciała, które pochowaliście i znowu je wam sprzedaje. Kiedy ponownie je chowacie, on po prostu znowu je odkopuje."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_1","GLOBALLaw",2)
~ GOTO 22
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #14932 /* ~Prawda: "Pochodzą z katakumb pod Sigil. Zabiera ciała, które pochowaliście i znowu je wam sprzedaje. Kiedy ponownie je chowacie, on po prostu znowu je odkopuje."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_2","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14933 /* ~Kłamstwo: "Sporo ludzi z Placu Szmaciarzy nabawiło się strasznej choroby, która powoduje, że ich ciała przedwcześnie się rozkładają. Ich ciała *wydają* się starsze niż są w rzeczywistości."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_1","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14934 /* ~"Właściwie źle się wyraziłem - jeszcze tego nie odkryłem. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14935 /* ~"Właściwe wciąż się tym zajmuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2
  SAY #14936 /* ~Emorik cichnie. Patrzy na ciebie swym kamiennym spojrzeniem - nagle pojawia się uczucie, że te oczy grzebią ci w czaszce.~ */
  IF ~~ THEN REPLY #14937 /* ~"Uch..."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",3)
AddexperienceParty(2500)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14938 /* ~Emorik kiwa głową. "Wyświadczyłeś Grabarzom przysługę." Wyciąga dłonie z rękawów i pozwala, by długie rękawy zasłoniły stół jak kurtyna. Gdy zabiera je z powrotem, na stole leży mała trumna z lazurytu. Jest naprawdę niewielka, ledwie dwa cale szerokości i trzy długości. Na jej wieku wygrawerowany jest znak Grabarzy.~ */
  IF ~~ THEN REPLY #14939 /* ~Weź pudełko.~ */ DO ~GiveGoldForce(300)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14940 /* ~Gdy podnosisz trumnę, wydaje dziwny dźwięk, otwiera się i rozpływa w potok miedzianych monet, które (w jakiś sposób) udaje ci się powstrzymać przed rozsypaniem się po całej podłodze karczmy. Sposób, w jaki te wszystkie monety zmieściły się w miniaturowej trumnie, przekracza twoje zdolności pojmowania.~ */
  IF ~~ THEN REPLY #14941 /* ~"Dzięki. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14942 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.9
  SAY #14943 /* ~"Te oczy nie widziały żadnego dziennika. Może twoje poszukiwania zaprowadzą cię gdzie indziej."~ */
  IF ~~ THEN REPLY #14944 /* ~"Dobrze. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14945 /* ~"W takim razie poszukam gdzie indziej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 6.1 6.2
  SAY #14946 /* ~"Grabarze szukają Prawdziwej Śmierci. Niektórzy nazywają to 'zapomnieniem', ale to niewłaściwa nazwa. Dla Grabarzy Prawdziwa Śmierć jest wyswobodzeniem z okowów tego fałszywego życia."~ */
  IF ~~ THEN REPLY #14947 /* ~"Fałszywego życia?"~ */ GOTO 27
  IF ~~ THEN REPLY #14948 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14949 /* ~"Przyszło mi to na myśl. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14950 /* ~"To 'życie', którego wielu uporczywie trzyma się własnymi emocjami, to fałszywa egzystencja. Tak długo jak ktoś będzie się jej kurczowo trzymał, będzie się znowu odradzał. By złamać ten krąg, trzeba się wyzbyć emocji."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #14951 /* ~"Rozumiem. Możesz mi powiedzieć, w jaki sposób zorganizowana jest twoja frakcja?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",2)
~ GOTO 28
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #14952 /* ~"Rozumiem. Możesz mi powiedzieć, w jaki sposób zorganizowana jest twoja frakcja?"~ */ GOTO 28
  IF ~~ THEN REPLY #14953 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14954 /* ~"Przyszło mi to na myśl. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #14955 /* ~"Grabarze są zorganizowani w pięć kręgów. Piąty Krąg składa się z Grabarzy najniższych rangą, Wtajemniczonych. Pierwszy Krąg składa się z Grabarzy stojących najwyżej w hierarchii, to ciało rządzące naszej frakcji."~ */
  IF ~~ THEN REPLY #14956 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14957 /* ~"Przyszło mi to na myśl. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 6.8
  SAY #14958 /* ~"Chcesz podpisać Kontrakt Umarłych?"~ */
  IF ~~ THEN REPLY #14959 /* ~"Co to dokładnie jest?"~ */ GOTO 30
  IF ~~ THEN REPLY #14960 /* ~"Tak, podpiszę."~ */ GOTO 31
  IF ~~ THEN REPLY #14961 /* ~"Nie, chciałem zadać jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14962 /* ~"Może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14963 /* ~"W zamian za pięćdziesiąt miedziaków, Kontrakt Umarłych daje frakcji Grabarzy prawo do twoich zwłok, po twojej Śmierci. Chcesz podpisać Kontrakt Umarłych?"~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14964 /* ~"Podpiszę."~ */ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14965 /* ~Pomimo tego, że podpisałeś umowę z Mortai: "Podpiszę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #14966 /* ~Pomimo tego, że podpisałeś umowę z Miedziookim: "Podpiszę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14967 /* ~Pomimo tego, że podpisałeś umowy zarówno z Mortai jak i Miedziookim: "Podpiszę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #14968 /* ~"Nie, chciałem zadać jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14969 /* ~"Może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 30.1 30.2 30.3
  SAY #14970 /* ~Emorik wyciąga z togi zakurzony kawałek pergaminu i gęsie pióro. Wskazuje ci trzy miejsca, w których masz złożyć podpis."~ */
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",0)
~ THEN REPLY #14971 /* ~Podpisz we wskazanych miejscach.~ */ DO ~SetGlobal("Memory_Dustman_Contract_2","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 32
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",1)
~ THEN REPLY #14972 /* ~Podpisz we wskazanych miejscach.~ */ GOTO 39
  IF ~~ THEN REPLY #14973 /* ~"Zmieniłem zdanie. Chciałem zadać jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #14974 /* ~"Może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 39.1
  SAY #14975 /* ~Bierzesz pióro do ręki i zaczynasz składać na pergaminie swój podpis... Gdy pióro dotyka pergaminu wydaje z siebie dziwny odgłos, jak dłuto na kamieniu.~ */
  IF ~~ THEN REPLY #14976 /* ~Podpisuj dalej.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #14977 /* ~Gdy chcesz złożyć na pergaminie swój podpis, zauważasz, że zdaje się być nieczuły na twoje pióro... Nie ważne jak bardzo się starasz, nie możesz napisać swego imienia. Inkaust nie chce opuścić pióra.~ */
  IF ~~ THEN REPLY #14978 /* ~"Uch... Emoriku? Co jest z tą umową?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14979 /* ~Gdy podnosisz wzrok, by odezwać się do Emorika, zauważasz, że jego twarz obróciła się w kamień... Stał się posągiem. Reszta karczmy zdaje się być wypełniona szarą mgiełką i nie widzisz pozostałych klientów. Z ust Emorika wydostaje się nikły szept, jak gdyby skamieniałe płuca chciały wypuścić z piersi powietrze.~ */
  IF ~~ THEN REPLY #14981 /* ~"Emoriku...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14983 /* ~Z ledwością możesz zrozumieć wydobywający się z ust Emorika szept, kiedy nagle zdajesz sobie sprawę, że to nie jeden, a wiele szeptów...

     *Podpisz*

     *Ale wiedz, że cena jest ustalona w duszy i kamieniu*

     *A cóż może zmienić naturę człowieka?*

Szeptane słowa przybierają na sile, aż stają się nierównym chórem martwych głosów, jakby były wypowiadane przez dziesięć, dwadzieścia, sto głosów - starych, młodych, kobiecych, męskich, zdesperowanych, spokojnych, histerycznych...~ */
  IF ~~ THEN REPLY #14988 /* ~"Naturę człowieka...?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14992 /* ~Gdy wypowiadasz te słowa, nagle czujesz się słabo, a następną rzeczą jaką słyszysz jest głos Emorika, normalny. "Wciąż chcesz podpisać?"~ */
  IF ~~ THEN REPLY #14994 /* ~Spróbuj ustalić swoją pozycję...~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #14996 /* ~Wydaje się, że czas odetchnął i wrócił do normalnego rytmu... Mgiełka wypełniająca karczmę zniknęła, a Emorik już nie jest posągiem. Czujesz pod czaszką dziwny ucisk, jakby coś desperacko chciało się wydostać, ale nie może. Jakbyś pamiętał jednocześnie tuzin odłamków wspomnienia, walczących ze sobą, by stworzyć obraz... i nagle wiesz, że każdy szept, który wyszedł ze skamieniałych ust Emorika, należał do *kogoś*... od dawna martwego.~ */
  IF ~~ THEN REPLY #15001 /* ~Spójrz jeszcze raz na pergamin.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15003 /* ~Gdy tak patrzysz na leżący na stole zakurzony pergamin, zdajesz sobie sprawę z faktu, że nie był to pierwszy raz, kiedy złożyłeś swój podpis na kontrakcie... i prawdopodobnie nie pierwszy raz, kiedy podpisałeś taki jak ten.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15009 /* ~Dokończ podpisywanie umowy.~ */ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15011 /* ~Pomimo tego, że podpisałeś umowę z Mortai, dokończ podpisywać kontrakt Emorika.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #15013 /* ~Pomimo tego, że podpisałeś umowę z Miedziookim, dokończ podpisywać kontrakt Emorika.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15015 /* ~Pomimo tego, że podpisałeś umowy z Mortai i Miedziookim, dokończ podpisywać kontrakt Emorika.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~~ THEN REPLY #15017 /* ~"Właściwie chyba się wstrzymam z zawarciem tej umowy. Najpierw chciałbym zadać kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15019 /* ~"Nie chcę zawierać umowy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.1
  SAY #15029 /* ~Gdy ponownie dotykasz piórem pergaminu, słyszysz szept, a pod czaszką wzbiera nagły przypływ myśli i wspomnień...~ */
  IF ~~ THEN REPLY #15031 /* ~Stłum to wspomnienie, podpisz kontrakt...~ */ GOTO 40
  IF ~~ THEN REPLY #15033 /* ~Posłuchaj wspomnienia.~ */ GOTO 32
  IF ~~ THEN REPLY #15035 /* ~"Właściwie chyba się wstrzymam z zawarciem tej umowy. Najpierw chciałbym zadać kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15037 /* ~"Nie chcę zawierać umowy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.1 38.2 38.3 39.0
  SAY #15085 /* ~Wydrapujesz 'X' w trzech wskazanych przez Emorika na kontrakcie miejscach. Emorik zabiera umowę i wręcza ci sakiewkę z pięćdziesięcioma miedziakami.~ */
  IF ~~ THEN REPLY #15086 /* ~"Teraz, skoro mamy to już z głowy, chciałbym spytać o coś innego..."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 6
  IF ~~ THEN REPLY #15087 /* ~"Zakończyliśmy nasze sprawy... Żegnaj."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 6.3 6.4 6.5
  SAY #15088 /* ~"Inna frakcja już traktuje cię jako swego członka."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #15089 /* ~Kłamstwo: "Mylisz się. Nie należę do żadnej frakcji."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_5","GLOBALLaw",-2)
~ GOTO 42
  IF ~~ THEN REPLY #15090 /* ~"Chcę porzucić tamtą frakcję i dołączyć do Grabarzy."~ */ GOTO 45
  IF ~~ THEN REPLY #15091 /* ~"W takim razie nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15092 /* ~"Przyszło mi to na myśl. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15093 /* ~"Nie mylę się." Głos Emorika jest niczym głaz, ale mimo to możesz wyczuć nutkę wątpliwości w jego głosie.~ */
  IF ~~ THEN REPLY #15094 /* ~"Mylisz się. Mój umysł jest umysłem Grabarza, nie należy do żadnej innej frakcji. Sprawdź mnie, jeśli we mnie *wątpisz*."~ */ GOTO 43
  IF ~~ THEN REPLY #15095 /* ~"Cóż, chcę porzucić tamtą frakcję i dołączyć do Grabarzy."~ */ GOTO 45
  IF ~~ THEN REPLY #15096 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15097 /* ~"W takim razie nie mamy już o czym rozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #15098 /* ~Gdy wypowiadasz słowo *wątpisz*, Emorik lekko się wzdryga; na jego bladej jak kamień twarzy jest to niemal niezauważalne, ale wiesz czego szukać. Emorik może być grabarzem, ale by zdradzić jego myśli wystarczy najmniejsza zmiana wyrazu twarzy.~ */
  IF ~~ THEN REPLY #15099 /* ~"Ponownie - jeśli we mnie *wątpisz*, sprawdź mnie. Przekonasz się, że mój umysł jest wolny od emocji, a moja ścieżka to ścieżka Grabarza."~ */ GOTO 44
  IF ~~ THEN REPLY #15100 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15101 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15102 /* ~Emorik milknie, gdy tak ci się przygląda. Odzywa się po chwili. "Nie mam żadnych wątpliwości. Mimo to niezbędny jest sprawdzian. Jeśli pragniesz wstąpić do frakcji Grabarzy, wysłucham twojej prośby."~ */
  IF ~~ THEN REPLY #15103 /* ~"Tak, pragnę wstąpić do frakcji Grabarzy."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15104 /* ~"Ponownie źle mnie oceniłeś. Nie *pragnę* wstąpić do frakcji Grabarzy. Jedynie podzielam wiarę Grabarzy."~ */ GOTO 48
  IF ~~ THEN REPLY #15105 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15106 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1
  SAY #15107 /* ~"Czy twoje pragnienie wstąpienia do frakcji Grabarzy jest silniejsze od lojalności do tej drugiej frakcji?"~ */
  IF ~~ THEN REPLY #15108 /* ~"Tak."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15109 /* ~"Źle zrozumiałeś moje zamiary. Nie *pragnę* wstąpić do waszej frakcji. Jedynie podzielam wiarę Grabarzy."~ */ GOTO 48
  IF ~~ THEN REPLY #15110 /* ~"Wycofuję prośbę. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15111 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0 45.0 97.0
  SAY #15112 /* ~"Jeśli pragniesz wstąpić do frakcji Grabarzy, to namiętność rządzi twoim umysłem. Droga namiętności nie jest drogą Grabarza."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15114 /* ~"Źle się wyraziłem. Nie *pragnę* wstąpić do waszej frakcji. Jedynie podzielam wiarę Grabarzy."~ */ GOTO 48
  IF ~~ THEN REPLY #15115 /* ~"W takim razie możesz mi powiedzieć więcej o drodze Grabarzy?"~ */ GOTO 49
  IF ~~ THEN REPLY #15116 /* ~"Wycofuję prośbę. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15117 /* ~"W takim razie nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #15118 /* ~"W twojej starej frakcji pojawi się złość. Nie będziesz już mile widziany w ich komnatach i umysłach."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #15119 /* ~Wyrzeknij się frakcji: "Jeśli tak ma być, to musi tak być. Mój umysł musi pozostać wierny samemu sobie. W tym momencie wyrzekam się przekonań Bogowców."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #15120 /* ~Wyrzeknij się frakcji: "Jeśli tak ma być, to musi tak być. Mój umysł musi pozostać wierny samemu sobie. W tym momencie wyrzekam się... eee... 'przekonań' Kaosytów."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #15121 /* ~Wyrzeknij się frakcji: "Jeśli tak ma być, to musi tak być. Mój umysł musi pozostać wierny samemu sobie. W tym momencie wyrzekam się przekonań Czuciowców."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
~ GOTO 48
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15122 /* ~Skłam, by zinfiltrować Grabarzy dla Anarchistów: "Jeśli tak ma być, to musi tak być. Mój umysł musi pozostać wierny samemu sobie. W tym momencie wyrzekam się przekonań mojej starej frakcji."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_6","GLOBALLaw",-2)
~ GOTO 48
  IF ~~ THEN REPLY #15123 /* ~"W takim razie nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15124 /* ~"W takim razie nie jestem gotowy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1 45.1 46.0 47.0 47.1 47.2 47.3 97.1
  SAY #15203 /* ~"Dobrze. Znasz naszą filozofię?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15205 /* ~"Tak."~ */ GOTO 51
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15206 /* ~"Nie w pełni."~ */ GOTO 49
  IF ~~ THEN REPLY #15207 /* ~"Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15209 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.1 48.1
  SAY #15210 /* ~"Grabarze szukają Prawdziwej Śmierci. Niektórzy nazywają to 'zapomnieniem', ale to niewłaściwa nazwa. Dla Grabarzy Prawdziwa Śmierć jest wyswobodzeniem z okowów tego fałszywego życia."~ */
  IF ~~ THEN REPLY #15211 /* ~"Fałszywego życia?"~ */ GOTO 50
  IF ~~ THEN REPLY #15212 /* ~"Wycofuję prośbę o przyjęcie do mnie frakcji Grabarzy. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15213 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15214 /* ~"To 'życie', którego wielu uporczywie trzyma się własnymi emocjami, to fałszywa egzystencja. Tak długo jak ktoś będzie się jej kurczowo trzymał, będzie się znowu odradzał. By złamać ten krąg, trzeba się wyzbyć emocji."~ */
  IF ~~ THEN REPLY #15216 /* ~"Dobrze. Teraz rozumiem waszą filozofię."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 51
  IF ~~ THEN REPLY #15217 /* ~"Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15219 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.0 50.0
  SAY #15221 /* ~"Wypowiedz ją."~ */
  IF ~~ THEN REPLY #15223 /* ~"Celem Grabarzy jest osiągnięcie Prawdziwej Śmierci, zapomnienia. To 'życie', którego wielu uporczywie trzyma się własnymi emocjami jest nieprawdziwe. Tak długo jak ktoś będzie się go kurczowo trzymał, będzie się znowu odradzał. By złamać ten krąg, trzeba się wyzbyć emocji."~ */ GOTO 52
  IF ~~ THEN REPLY #15225 /* ~"Wycofuję prośbę o przyjęcie do mnie frakcji Grabarzy. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15227 /* ~"Nieważne. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #15229 /* ~"Wierzysz w to?"~ */
  IF ~~ THEN REPLY #15230 /* ~Prawda: "Tak."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 53
  IF ~~ THEN REPLY #15232 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Emoric_7","GLOBALLaw",-2)
~ GOTO 53
  IF ~~ THEN REPLY #15233 /* ~Prawda: "Nie w pełni."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALLawful_Emoric_2","GLOBALLaw",2)
~ GOTO 54
  IF ~~ THEN REPLY #15235 /* ~"Wycofuję prośbę o przyjęcie do mnie frakcji Grabarzy. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15239 /* ~"Nieważne. Nie chcę już zostać członkiem frakcji Grabarzy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1 54.0
  SAY #15605 /* ~"W takim razie należy to sprawdzić. Porozmawiaj z Wtajemniczonym Norochjem. Jest tutaj, w karczmie. Wróć gdy zrobisz to o co cię poprosi."~ */
  IF ~~ THEN REPLY #15609 /* ~"Porozmawiam z nim. Ale przedtem chciałbym zadać kilka pytań..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #15610 /* ~"Dobrze. Pójdę z nim teraz porozmawiać."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #15611 /* ~"Mimo wszystko chyba nie chcę tego robić. Żegnaj."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.2
  SAY #15612 /* ~"Wiara może nadejść z upływem czasu. Czy twoje przekonanie jest tak silne, że nasza filozofia nigdy nie zagości w twoim umyśle?"~ */
  IF ~~ THEN REPLY #15613 /* ~"Chciałbym poddać mą niepewność próbie czasu. Spędzę pośród Grabarzy trochę czasu, a potem przeanalizuję swoje przekonania."~ */ GOTO 53
  IF ~~ THEN REPLY #15614 /* ~"Nie sądzę, bym kiedykolwiek uwierzył w waszą filozofię. Wycofuję prośbę. Mam kilka innych pytań..."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 6
  IF ~~ THEN REPLY #15615 /* ~"Nie wydaje mi się, bym chciał wstąpić do frakcji Grabarzy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 6.13
  SAY #15616 /* ~Emorik kiwa głową. "Zrobiłeś o co prosiłem. Chcesz kontynuować inicjację?"~ */
  IF ~~ THEN REPLY #15618 /* ~"Tak. Chciałbym poznać więcej członków frakcji Grabarzy."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15620 /* ~"Tak. Wciąż nie jestem pewien, czy moje przekonania odpowiadają temu w co wierzą Grabarze. Zanim podejmę ostateczną decyzję chciałbym lepiej poznać frakcję."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15622 /* ~"Nie. Chciałbym wycofać prośbę o członkostwo we frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.2 55.2 57.4 59.5 60.4 62.4 63.3 64.4 65.1 66.1 67.5 68.2 69.2 70.3 71.3 72.1 74.0 75.2 76.2
  SAY #15626 /* ~"Nie zostaniesz poproszony o nic więcej."~ */
  IF ~~ THEN REPLY #15628 /* ~"Dobrze. Mam jednak jeszcze kilka pytań..."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ GOTO 6
  IF ~~ THEN REPLY #15630 /* ~"W takim razie cię opuszczę. Żegnaj."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 55.1
  SAY #15634 /* ~"Mam kolejne zadanie. Znajdź następnego z naszych Wtajemniczonych, Oczekującego Śmierci. Jest tu w karczmie. Czeka na Prawdziwą Śmierć bez przekonania. Jeśli nie zmieni swojego nastawienia, to pozostanie ona na zawsze poza jego zasięgiem. Porozmawiaj z nim i sprawdź, czy można mu pomóc."~ */
  IF ~  Global("Await","GLOBAL",2)
~ THEN REPLY #15636 /* ~"Już z nim o tym rozmawiałem."~ */ GOTO 60
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15638 /* ~"Nie będzie ze mną rozmawiał."~ */ GOTO 58
  IF ~  !Global("Await","GLOBAL",2)
!Global("Await","GLOBAL",3)
~ THEN REPLY #15640 /* ~"Porozmawiam z Oczekującym Śmierci i zobaczę co da się zrobić."~ */ EXIT
  IF ~~ THEN REPLY #15642 /* ~"Porozmawiam z nim. Jednak najpierw chciałbym zadać kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15644 /* ~"Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.1 59.0
  SAY #15645 /* ~"On też nie usłyszałby moich słów. Usłyszeć chciałbym twą opinię o Oczekującym Śmierci."~ */
  IF ~~ THEN REPLY #15646 /* ~"Czy Grabarz tak pełen pasji może być prawdziwym Grabarzem? Nie sądzę."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15647 /* ~"On nie jest Grabarzem. Może za jakiś czas."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15648 /* ~"On jest Grabarzem."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15649 /* ~"Nie mam na ten temat żadnego zdania. Co ma być, będzie.~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 6.14
  SAY #15651 /* ~"Wiedzieć chciałbym o czym mówiliście."~ */
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15652 /* ~"Nie będzie ze mną rozmawiał. Próbowałem, ale mnie nie słuchał."~ */ GOTO 58
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
Global("Await","GLOBAL",2)
~ THEN REPLY #15653 /* ~"Jego wybór to życie ponad śmiercią. Jak na razie."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15655 /* ~"Zdecydował się jeszcze trochę pożyć i spróbować nieco ostudzić swe zamiłowanie do śmierci."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15656 /* ~"Zdecydował, że przetrwa to życie i w ten sposób ostudzić swe zamiłowanie do śmierci."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15658 /* ~"Zdecydował jeszcze trochę pożyć i nauczyć się jak umrzeć."~ */ GOTO 61
  IF ~~ THEN REPLY #15660 /* ~"Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 60 // from: 57.0
  SAY #15666 /* ~"Wiedzieć chciałbym o czym mówiliście."~ */
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
~ THEN REPLY #15668 /* ~"Jego wybór to życie ponad śmiercią. Jak na razie."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15670 /* ~"Zdecydował się jeszcze trochę pożyć i spróbować nieco ostudzić swe zamiłowanie do śmierci."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15671 /* ~"Zdecydował, że przetrwa to życie i w ten sposób ostudzić swe zamiłowanie do śmierci."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15673 /* ~"Zdecydował jeszcze trochę pożyć i nauczyć się jak umrzeć."~ */ GOTO 61
  IF ~~ THEN REPLY #15674 /* ~"Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 61 // from: 59.1 59.2 59.3 59.4 60.0 60.1 60.2 60.3
  SAY #15678 /* ~"Poznać chciałbym twą opinię o Oczekującym Śmierci."~ */
  IF ~~ THEN REPLY #15680 /* ~"On nigdy nie będzie Grabarzem."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15681 /* ~"On nie jest Grabarzem. Może za jakiś czas."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15683 /* ~"On jest Grabarzem. Pojął swą lekcję."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15685 /* ~"Nie mam na ten temat żadnego zdania. Co ma być, będzie."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.0 58.1 58.2 58.3 61.0 61.1 61.2 61.3
  SAY #15692 /* ~"Rozmawiałeś ze Wtajemniczonym Oczekującym Śmierci. Twoja opinia o Wtajemniczonym Oczekującym Śmierci jest mi znana. Zrobiłeś to, o co prosiłem." Emorik kiwa głową. "Mam kolejny sprawdzian. W barze jest jeszcze ktoś z kim chciałbym, żebyś porozmawiał. Ma na imię Sere. Jest Wtajemniczoną Piątego Kręgu." Emorik cichnie na chwilę. "Już nie zajmuje się nauczaniem Grabarzy, jak kiedyś. Jej serce jest zgorzkniałe. Ten chciałby wiedzieć dlaczego."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15693 /* ~"Ona nie będzie ze mną rozmawiać."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15695 /* ~"Już z nią rozmawiałem. Gorączka, która ją raziła pół miesiąca temu sprawiła, że boi się śmierci. Obwinia Grabarzy."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 64
  IF ~  !Global("Sere","GLOBAL",2)
~ THEN REPLY #15697 /* ~"Teraz pójdę z nią porozmawiać."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #15699 /* ~"Porozmawiam z nią. Jednak najpierw chciałbym zadać kilka pytań..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 6
  IF ~~ THEN REPLY #15701 /* ~"Nie życzę sobie tego sprawdzianu. Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 56
END

IF ~~ THEN BEGIN 63 // from: 6.15
  SAY #15735 /* ~"Wiedzieć chciałbym co ci powiedziała."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15737 /* ~"Nie będzie ze mną rozmawiała."~ */ DO ~AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15739 /* ~"Gorączka, która ją raziła pół miesiąca temu sprawiła, że boi się śmierci. Obwinia Grabarzy."~ */ GOTO 64
  IF ~~ THEN REPLY #15740 /* ~"Jak dotąd nic ważnego. Porozmawiam z nią jeszcze raz."~ */ EXIT
  IF ~~ THEN REPLY #15741 /* ~"Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 64 // from: 62.1 63.1
  SAY #15744 /* ~"Wiedzieć chciałbym co jej powiedziałeś."~ */
  IF ~  Global("Sere_Answer","GLOBAL",1)
~ THEN REPLY #15746 /* ~"Powiedziałem jej, że określił ją jej strach i wątpliwości. Nie jest Grabarzem."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",2)
~ THEN REPLY #15747 /* ~"Powiedziałem jej, że jej strach minie. Czas dowiedzie, że ona jest Grabarzem."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",3)
~ THEN REPLY #15749 /* ~"Powiedziałem jej, że jej strach minie. Czas dowiedzie, że ona jest Grabarzem."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #15750 /* ~"Znalazłem źródło jej cierpienia, ale nie potrafiłem sobie z nim poradzić."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #15752 /* ~"Nie chcę mówić. Wycofuję prośbę o członkostwo we frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 65 // from: 62.0 63.0
  SAY #15751 /* ~"Też by mnie nie usłyszała." Emorik kiwa głową. "Zrobiłeś to, o co prosiłem. Chcesz kontynuować inicjację?"~ */
  IF ~~ THEN REPLY #15753 /* ~"Tak. Chciałbym się dowiedzieć więcej o frakcji Grabarzy. Chcę kontynuować sprawdziany."~ */ GOTO 67
  IF ~~ THEN REPLY #15754 /* ~"Nie. Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 66 // from: 64.0 64.1 64.2 64.3
  SAY #15755 /* ~"Zrobiłeś to, o co prosiłem." Emorik kiwa głową. "Chcesz kontynuować inicjację?"~ */
  IF ~~ THEN REPLY #15756 /* ~"Tak. Chciałbym się dowiedzieć więcej o frakcji Grabarzy. Chcę kontynuować sprawdziany."~ */ GOTO 67
  IF ~~ THEN REPLY #15757 /* ~"Nie sądzę bym mógł nauczyć się czegoś więcej. Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0
  SAY #15758 /* ~"Soe, Wtajemniczony Piątego Kręgu, podjął się pracy misyjnej dla Grabarzy." Emorik cichnie na chwilę... i nie wiesz czy chce przedstawić argument, czy jest zakłopotany. "Jego ścieżka nie jest znana ani mnie, ani frakcji. Wiedzieć chciałbym, gdzie przebywa."~ */
  IF ~  Global("Soego","GLOBAL",1)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15759 /* ~"Soe nie jest w Kostnicy?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Global("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15760 /* ~"Wydawało mi się, że go za... ee... ostatnio słyszałem, że miał wypadek. Nie ma go w kostnicy?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15761 /* ~"Już go znalazłem."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15762 /* ~"Już go znalazłem."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~~ THEN REPLY #15763 /* ~"W takim razie pójdę go poszukać. Wcześniej chciałbym zadać kilka pytań..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 6
  IF ~~ THEN REPLY #15764 /* ~"Nie chcę tego robić. Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 56
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #15765 /* ~"Już nie. Jego odejście było dość nagłe."~ */
  IF ~~ THEN REPLY #15766 /* ~"W takim razie pójdę go poszukać. Wcześniej chciałbym zadać kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15767 /* ~"W takim razie pójdę go poszukać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #15768 /* ~"Wycofuję prośbę o przyjęcie mnie do frakcji Grabarzy."~ */ GOTO 56
END

IF ~~ THEN BEGIN 69 // from: 6.16 6.17 67.2 67.3
  SAY #15769 /* ~"Wiedzieć chciałbym, gdzie przebywa."~ */
  IF ~  Dead("Soego2")
~ THEN REPLY #15770 /* ~"Znalazłem go w katakumbach pod Sigil. Zginął tam."~ */ GOTO 71
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
~ THEN REPLY #15771 /* ~"Znalazłem go w katakumbach pod Sigil."~ */ GOTO 70
  IF ~~ THEN REPLY #15772 /* ~"Nie chcę mówić. Wycofuję prośbę o członkostwo we frakcji Grabarzy."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
AddexperienceParty(2500)
~ GOTO 56
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY #15773 /* ~"Dlaczego tam przebywa?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15774 /* ~"Nie wiem."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15776 /* ~"Znalazł grupę nieumarłych strażników, którzy ochraniali katakumby. Próbuje ich przekonać, by spotkali Prawdziwą Śmierć."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15778 /* ~"Jest zarażony likantropią. Jego umysł już do niego nie należy, stracił przekonanie do filozofii Grabarzy."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15779 /* ~"Nie chcę mówić. Wycofuję prośbę o członkostwo we frakcji Grabarzy."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 71 // from: 69.0
  SAY #15780 /* ~"Dlaczego tam był?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15781 /* ~"Nie wiem."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15783 /* ~"Znalazł grupę nieumarłych strażników, którzy ochraniali katakumby. Próbował ich przekonać, by spotkali Prawdziwą Śmierć."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15785 /* ~"Był zarażony likantropią. Jego umysł już do niego nie należał, stracił przekonanie do filozofii Grabarzy."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15786 /* ~"Nie chcę mówić. Wycofuję prośbę o członkostwo we frakcji Grabarzy."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 72 // from: 70.0 70.1 70.2 71.0 71.1 71.2
  SAY #15790 /* ~"Dobrze. Znalazłeś go." Emorik poza lekkim skinieniem głowy nie reaguje na twoją odpowiedź. "Zrobiłeś wszystko, o co prosiłem. Zrobię z ciebie Grabarza, Wtajemniczonego Piątego Kręgu. Wciąż chcesz zostać członkiem frakcji?"~ */
  IF ~~ THEN REPLY #15791 /* ~"Tak."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #15792 /* ~"Nie. Zmieniłem zdanie."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #15794 /* ~"Inicjacja wymaga złożenia przysięgi."~ */
  IF ~~ THEN REPLY #15797 /* ~"Przysięgi?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #15798 /* ~"Musisz przysiąc, że będziesz służył Grabarzom. Musisz przysiąc, że zostawiłeś Życie za sobą. Musisz przysiąc, że twoim celem jest Prawdziwa Śmierć."~ */
  IF ~~ THEN REPLY #15800 /* ~"Ee... nie, dziękuję."~ */ GOTO 56
  IF ~~ THEN REPLY #15802 /* ~"Dobrze."~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY #15843 /* ~"Ponownie: Wierzysz w zasady Grabarzy?"~ */
  IF ~~ THEN REPLY #15844 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_10","GLOBALLaw",-2)
IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 76
  IF ~~ THEN REPLY #15845 /* ~"Tak."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 76
  IF ~~ THEN REPLY #15846 /* ~"Nie. Zmieniłem zdanie."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 56
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #15848 /* ~"Posłużę ci za świadka. Złóż przysięgę."~ */
  IF ~~ THEN REPLY #15849 /* ~Przyrzeczenie: "Przyrzekam służyć Grabarzom. Zostawiłem Życie za sobą. Szukam jedynie Prawdziwej Śmierci."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_4","GLOBALLaw",3)
~ GOTO 77
  IF ~~ THEN REPLY #15850 /* ~Kłamstwo: "Przyrzekam służyć Grabarzom. Zostawiłem Życie za sobą. Szukam jedynie Prawdziwej Śmierci."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_11","GLOBALLaw",-3)
~ GOTO 77
  IF ~~ THEN REPLY #15851 /* ~"Nie. Zmieniłem zdanie."~ */ GOTO 56
END

IF ~~ THEN BEGIN 77 // from: 76.0 76.1
  SAY #15853 /* ~"Teraz zaliczasz się do Martwych. Są rzeczy, które muszę ci powiedzieć."~ */
  IF ~~ THEN REPLY #15854 /* ~Słuchaj.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #15855 /* ~"Pośród Grabarzy są chodzący umarli. Pracują pośród Grabarzy. Jednak przy innych okazjach byli wrogami żyjących."~ */
  IF ~~ THEN REPLY #15856 /* ~"Nie umknęło to mojej uwadze."~ */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #15857 /* ~"Grabarze mają pakt ze wszystkimi martwymi. Ten pakt jest znany jako *Pakt Umarłych*. Tak długo jak będziemy go dotrzymywać umarli nigdy nie zrobią Grabarzowi krzywdy." Gdy Emorik wypowiada te słowa, nagle czujesz dziwne mrowienie z tyłu czaszki... Ma to jakiś związek z Paktem Umarłych, ale nie możesz sobie przypomnieć jaki.~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #15858 /* ~"Rozumiem."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",1)
SetGlobal("Dustman_Ressurection","GLOBAL",1)
SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,2500)
~ JOURNAL #61611 /* ~W trakcie przyjęcia w szeregi frakcji Grabarzy, Emorik mówił coś o "Rozejmie Śmierci". Najwyraźniej Grabarze mają podpisane coś w rodzaju zawieszenia broni ze wszystkimi nieumarłymi stworami, jak szkielety czy zombie i na podstawie tego rozejmu, istoty te nie będą krzywdzić członków frakcji Grabarzy, o ile nie będę przez nich samych atakowane. Niemniej jednak, kiedy Emorik pasował mnie na Grabarza, odniosłem wrażenie, że już wcześniej zdążyłem zadać gwałt temu porozumieniu. Rozejm Śmierci służy jako ochrona przed atakami istot nieumarłych, ale mam niejasne przeczucie, że w moim przypadku porozumienie to nie powstrzyma umarlaków przed nastawaniem na moje życie. Cóż ja im takiego zrobiłem? Może w grę wchodzą jakieś grzechy z moich poprzednich żywotów?~ */ GOTO 80
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15860 /* ~"Ee... taa, domyślam się, że nie zrobiliby krzywdy prawdziwemu Grabarzowi... Pewnie każdy kto by udawał, że jest Grabarzem nie miałby takiej osłony."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15861 /* ~"Ee... taa, domyślam się, że nie zrobiliby krzywdy prawdziwemu Grabarzowi... Pewnie każdy kto by udawał, że jest Grabarzem nie miałby takiej osłony."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15862 /* ~"Ee... taa, domyślam się, że nie zrobiliby krzywdy prawdziwemu Grabarzowi... Pewnie każdy kto by udawał, że jest Grabarzem nie miałby takiej osłony."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",7)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15863 /* ~"Ee... taa, domyślam się, że nie zrobiliby krzywdy prawdziwemu Grabarzowi... Pewnie każdy kto by udawał, że jest Grabarzem nie miałby takiej osłony."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0 79.1 79.2 79.3 79.4
  SAY #15867 /* ~"Ponadto są magowie, którzy przedłużają życie, czy majstrują przy śmierci. Tacy magowie są obiektem nienawiści naszej frakcji. Rzadko pracują na członkach naszej frakcji. Nic nie może zakłócić twej drogi do Prawdziwej Śmierci. Rozumiesz?"~ */
  IF ~~ THEN REPLY #15875 /* ~"A co jeśli osobie, o której mowa, umrzeć jest... trudno...?"~ */ GOTO 82
  IF ~~ THEN REPLY #15876 /* ~"Czy to obejmuje czary leczące?"~ */ GOTO 89
  IF ~~ THEN REPLY #15877 /* ~"Mam pytanie odnośnie tego Paktu Umarłych..."~ */ GOTO 90
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15878 /* ~"Ee... taa, podejrzewam, że ten zakaz wskrzeszeń dotyczy tylko prawdziwych Grabarzy, co? Nie zakazuje czarów leczących?"~ */ GOTO 89
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15879 /* ~"Ee... taa, podejrzewam, że ten zakaz wskrzeszeń dotyczy tylko prawdziwych Grabarzy, co? Nie zakazuje czarów leczących?"~ */ GOTO 89
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15880 /* ~"Ee... taa, podejrzewam, że ten zakaz wskrzeszeń dotyczy tylko prawdziwych Grabarzy, co? Nie zakazuje czarów leczących?"~ */ GOTO 89
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15881 /* ~"Ee... taa, podejrzewam, że ten zakaz wskrzeszeń dotyczy tylko prawdziwych Grabarzy, co? Nie zakazuje czarów leczących?"~ */ GOTO 89
  IF ~~ THEN REPLY #15882 /* ~"Rozumiem. Teraz gdy już jestem Grabarzem, mam kilka pytań związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15883 /* ~"Mam kilka pytań niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15884 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 6.19 80.7 82.4 83.1 84.1 86.2 87.1 88.4 89.0 90.2 91.1 92.1 93.3 94.0 96.0 98.3 99.3 100.3 101.2 102.1
  SAY #15885 /* ~Emorik czeka.~ */
  IF ~~ THEN REPLY #15886 /* ~"Chodzi mi o fakt, że 'nic nie powinno zakłócać Prawdziwej Śmierci'. Co jeśli osobie, o której mowa, umrzeć jest... trudno...?"~ */ GOTO 82
  IF ~~ THEN REPLY #15887 /* ~"Czy ta polityka 'nie-wskrzeszania' obejmuje czary leczące?"~ */ GOTO 89
  IF ~~ THEN REPLY #15888 /* ~"Mam pytanie odnośnie Paktu Umarłych."~ */ GOTO 90
  IF ~~ THEN REPLY #15889 /* ~"Jaka forma pomocy jest dla mnie, jako Grabarza, dostępna?"~ */ GOTO 98
  IF ~~ THEN REPLY #15890 /* ~"Potrzebuję pomocy."~ */ GOTO 93
  IF ~~ THEN REPLY #15891 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15892 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0 81.0
  SAY #15893 /* ~"Wtajemniczony, natura twego pytania jest niejasna."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15894 /* ~Prawda: "Wydaje mi się, że jestem nieśmiertelny."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15895 /* ~Prawda: "Wydaje mi się, że jestem nieśmiertelny."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15896 /* ~"Cóż, znam kogoś, kto jest nieśmiertelny, pytam w jego imieniu."~ */ GOTO 86
  IF ~~ THEN REPLY #15897 /* ~"A co jeśli Grabarz, o którym mowa, jest nieśmiertelny?"~ */ GOTO 88
  IF ~~ THEN REPLY #15898 /* ~"Nieważne. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15899 /* ~"Zapomnij o tym. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15900 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 82.1 88.1 99.0
  SAY #15901 /* ~"Wtajemniczony, co skłania cię do mówienia takich rzeczy?"~ */
  IF ~~ THEN REPLY #15902 /* ~"Wygląda na to, że nie mogę umrzeć. Mogę zostać zraniony, ale szybko wracam do zdrowia."~ */ GOTO 84
  IF ~~ THEN REPLY #15903 /* ~"Nieważne. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15904 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15905 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #15906 /* ~Emorik patrzy na ciebie. "Pokaż mi, Wtajemniczony."~ */
  IF ~~ THEN REPLY #15907 /* ~Zrób to.~ */ GOTO 85
  IF ~~ THEN REPLY #15908 /* ~"Nieważne. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15909 /* ~"Zapomnij o tym... nie wyraziłem się jasno. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15910 /* ~"Źle się wyraziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #15911 /* ~Robisz małe nacięcie, a rana niemal natychmiast się zasklepia. Emorik patrzy jak rana się goi, milczy przez chwilę, a potem znowu przenosi spojrzenie na ciebie. "Coś w twej naturze opiera się Prawdziwej Śmierci. Nie jesteś już Grabarzem. Musisz odejść."~ */
  IF ~~ THEN REPLY #15912 /* ~"Jeśli muszę... wyrzekam się Grabarzy. Żegnaj."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 82.2 88.2 99.1
  SAY #15913 /* ~Emorik cichnie na chwilę. "W takim razie... ten przyjaciel... bardzo cierpi. Uwięził siebie w tej fałszywej egzystencji i nigdy nie osiągnie Prawdziwej Śmierci."~ */
  IF ~~ THEN REPLY #15914 /* ~"Uwięził *siebie*?"~ */ GOTO 101
  IF ~~ THEN REPLY #15915 /* ~"Dlaczego ktoś miałby być uwięziony w tej fałszywej egzystencji?"~ */ GOTO 87
  IF ~~ THEN REPLY #15916 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15917 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15918 /* ~"Zrozumiałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.1 101.1 102.0
  SAY #15919 /* ~"By osiągnąć Prawdziwą Śmierć, trzeba się wyzbyć wszystkich namiętności i więzi z tą fałszywą egzystencją. Te rzeczy działają na duszę jak kotwica. Wiele istot, jak na przykład duchy, czy inne niespokojne dusze są skazane na tę fałszywą egzystencję z powodu niespełnionych namiętności."~ */
  IF ~~ THEN REPLY #15920 /* ~"Gdy wspomniałeś, że ta nieśmiertelna osoba uwięziła siebie w tym życiu, co miałeś na myśli?"~ */ GOTO 101
  IF ~~ THEN REPLY #15921 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15922 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15923 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 82.3 99.2
  SAY #15924 /* ~"W takim razie nie byłby Grabarzem. Wiara w nieśmiertelność uwięziłaby Wtajemniczonego w obecnym życiu i nigdy nie osiągnąłby Prawdziwej Śmierci." Emorik cichnie na moment. "Wtajemniczony, skąd wzięło się to pytanie?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15925 /* ~Prawda: "Wydaje mi się, że jestem nieśmiertelny."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15926 /* ~Prawda: "Wydaje mi się, że jestem nieśmiertelny."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15927 /* ~"Widzisz, mam przyjaciela, który jest nieśmiertelny. Pytałem w jego imieniu."~ */ GOTO 86
  IF ~~ THEN REPLY #15928 /* ~"*Wiara* by go uwięziła? W jaki sposób?'~ */ GOTO 101
  IF ~~ THEN REPLY #15929 /* ~"Bez przyczyny. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15930 /* ~"Nieważne. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15931 /* ~"Tylko spytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 80.1 80.3 80.4 80.5 80.6 81.1
  SAY #15932 /* ~"Magia lecząca będzie działać normalnie. Jednak magia reinkarnacji i wskrzeszeń nie powinna być stosowana wobec członków naszego stowarzyszenia. Jest to przeciwne oczekiwaniu na Prawdziwą Śmierć."~ */
  IF ~~ THEN REPLY #15933 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15934 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15935 /* ~"Dobrze. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 80.2 81.2
  SAY #15936 /* ~Emorik czeka.~ */
  IF ~~ THEN REPLY #15937 /* ~"Co się stanie, gdy zaatakuję jednego z chodzących umarłych?"~ */ GOTO 91
  IF ~~ THEN REPLY #15938 /* ~"Co z samoobroną?"~ */ GOTO 92
  IF ~~ THEN REPLY #15939 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15940 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15941 /* ~"Dobrze. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 92.0
  SAY #15942 /* ~"W takim wypadku złamiesz Pakt Umarłych."~ */
  IF ~~ THEN REPLY #15943 /* ~"A co z samoobroną?"~ */ GOTO 92
  IF ~~ THEN REPLY #15944 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15945 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15946 /* ~"Dobrze. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1 91.0
  SAY #15947 /* ~"Tak długo jak Pakt jest podtrzymywany, nie zdarzy się sytuacja, by Umarły cię zaatakował."~ */
  IF ~~ THEN REPLY #15948 /* ~"Co się stanie, gdy zaatakuję któregoś z nich?"~ */ GOTO 91
  IF ~~ THEN REPLY #15949 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15950 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15951 /* ~"Dobrze. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 6.18 81.4
  SAY #15952 /* ~"Wtajemniczony, w jaki sposób ten może ci pomóc?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15953 /* ~"Potrzebuję leczenia."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 95
  IF ~~ THEN REPLY #15955 /* ~"Masz jakieś czary, albo przedmioty, które mogłyby mi pomóc?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15956 /* ~"Nieważne. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15957 /* ~"Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15958 /* ~"Dzisiaj właściwie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 98.0 100.0
  SAY #15959 /* ~Emorik lekko schyla głowę, czujesz jak przez twe ciało przenika paraliżujące zimno, jakby kości i mięśnie zamieniały się w kamień. Gdy zimno rozchodzi się po twoim ciele, ból ran znika. Chwilę później uczucie powraca, ale ból zniknął.~ */
  IF ~~ THEN REPLY #15960 /* ~"Dziękuję ci. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15961 /* ~"Znowu czuję się kompletny. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15962 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.1 98.1 100.1
  SAY #15963 /* ~"Wtajemniczony, możesz tu odpocząć."~ */
  IF ~~ THEN REPLY #15964 /* ~"Dziękuję ci..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 96 // from:
  SAY #15965 /* ~Jakiś czas później budzisz się wypoczęty i idziesz z powrotem do Emorika.~ */
  IF ~~ THEN REPLY #15966 /* ~"Jestem wypoczęty, dziękuję. Mam kilka innych pytań, związanych z frakcją..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 81
  IF ~~ THEN REPLY #15967 /* ~"Znowu czuję się kompletny. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 6
  IF ~~ THEN REPLY #15968 /* ~"Dziękuję, że pozwoliłeś mi odpocząć. Żegnaj."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 6.6 6.7
  SAY #15969 /* ~"Jeśli pragniesz wstąpić do frakcji Grabarzy, wysłucham twojej prośby."~ */
  IF ~~ THEN REPLY #15970 /* ~"Tak, pragnę wstąpić do frakcji Grabarzy."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15971 /* ~"Źle mnie oceniłeś. Nie *pragnę* wstąpić do frakcji. Jedynie podzielam wiarę Grabarzy."~ */ GOTO 48
  IF ~~ THEN REPLY #15972 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #15973 /* ~"Nie dzisiaj. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 81.3
  SAY #15974 /* ~"Jako Wtajemniczony Grabarz będziesz miał dostęp do naszej składnicy wiedzy oraz naszej składnicy magii i przedmiotów. Możesz też przyjść do mnie, gdy twe ciało będzie potrzebować leczenia lub gdy twe ciało będzie potrzebować odpoczynku."~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15975 /* ~"Potrzebuję leczenia."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15976 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 95
  IF ~~ THEN REPLY #15977 /* ~"Co masz w składzie?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15978 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15979 /* ~"Dobrze. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15980 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 82.0 88.0
  SAY #15981 /* ~Gdy już chcesz otworzyć usta, nagle czujesz mrowienie z tyłu czaszki. Masz uczucie, że wspominanie Emorikowi o twoim stanie może się okazać złym pomysłem. Wciąż na ciebie patrzy, czekając na odpowiedź.~ */
  IF ~~ THEN REPLY #15982 /* ~Prawda: "Wydaje mi się, że jestem nieśmiertelny."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_6","GLOBALLaw",3)
~ GOTO 83
  IF ~~ THEN REPLY #15983 /* ~"Cóż, znam kogoś, kto jest nieśmiertelny, pytam w jego imieniu."~ */ GOTO 86
  IF ~~ THEN REPLY #15984 /* ~"A co jeśli Grabarz, o którym mowa, jest nieśmiertelny?"~ */ GOTO 88
  IF ~~ THEN REPLY #15985 /* ~"Nieważne. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15986 /* ~"Zapomnij o tym. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15987 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #15988 /* ~"Potrzeba ci czegoś jeszcze, Wtajemniczony?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15989 /* ~"Potrzebuję leczenia."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15990 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 95
  IF ~~ THEN REPLY #15991 /* ~"Chciałbym jeszcze raz zajrzeć do składu."~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15992 /* ~"Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15993 /* ~"Tak, mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #15994 /* ~"Dzisiaj właściwie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 86.0 87.0 88.3
  SAY #15995 /* ~"Nieśmiertelność to wybór. Wiara, bez względu na to czy własna, czy kogoś innego wpływa na ciało. Ktoś jest nieśmiertelny, jeśli nie *chce* oddać życia."~ */
  IF ~~ THEN REPLY #15996 /* ~"Ale w takim razie, zgodnie z twoim argumentem, śmierć także jest wyborem. Dlaczego ludzie w pierwszej kolejności umierają?"~ */ GOTO 102
  IF ~~ THEN REPLY #15997 /* ~"Dlaczego ktoś miałby być uwięziony w tej fałszywej egzystencji?"~ */ GOTO 87
  IF ~~ THEN REPLY #15998 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #15999 /* ~"Hmm. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #16000 /* ~"Interesujące. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #16001 /* ~"Śmierć to także wybór. Ale w przeciwieństwie do nieśmiertelności jest wielu takich co w nią wierzą. Ich wiara pozwala nam umierać." Emorik cichnie na chwilę. "Wtajemniczony, my nie mamy żyć wiecznie. W głębi naszych umysłów wiemy, że to prawda."~ */
  IF ~~ THEN REPLY #16002 /* ~"Cóż... dlaczego ktoś miałby być uwięziony w tej fałszywej egzystencji?"~ */ GOTO 87
  IF ~~ THEN REPLY #16003 /* ~"Rozumiem. Mam kilka innych pytań, związanych z frakcją..."~ */ GOTO 81
  IF ~~ THEN REPLY #16004 /* ~"Hmm. Mam kilka innych pytań, niezwiązanych z frakcją..."~ */ GOTO 6
  IF ~~ THEN REPLY #16005 /* ~"Interesujące. Żegnaj."~ */ EXIT
END
