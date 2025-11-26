// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRADDO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRADDO~

IF ~  Global("Craddock","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22870 /* ~Widzisz potężnego mężczyznę, który z gniewnym wyrazem twarzy i przymkniętymi oczami obserwuje otaczający go teren. Garbi się trochę, jakby dźwigał jakiś ciężar na swych ramionach. Z jego ubrań wyziewa nieprzyjemny zapach potu i brudu.~ */
  IF ~~ THEN REPLY #22893 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #22894 /* ~Zignoruj mężczyznę i pokręć się po targowisku.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22871 /* ~Mężczyzna przygląda się tobie i gniew na jego twarzy pogłębia się. "Ta? Czego tu węszysz wokoło?"~ */
  IF ~~ THEN REPLY #22895 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22896 /* ~"Tyś Kradok?"~ */ GOTO 3
  IF ~~ THEN REPLY #22897 /* ~"Mniejsza z tym. Przepraszam za najście."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #22872 /* ~Wydaje z siebie chrząknięcie. "Nie mam czasu dla żebraków bądź psom podobnym. Teraz zjeżdżaj stąd."~ */
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22898 /* ~"Tyś Kradok?"~ */ GOTO 3
  IF ~~ THEN REPLY #22900 /* ~"W takim razie mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #22873 /* ~"Może..." Przygląda się twojej twarzy tak, jakby starał się sobie ciebie przypomnieć. "Jeśli jestem, to co ci do tego?"~ */
  IF ~~ THEN REPLY #22901 /* ~"Przychodzę z wiadomością od Baena Wysłannika. Oto wiadomość: 'Przesyłka musi się znaleźć w Klątwie najpóźniej za trzy dni, inaczej nałożona zostanie kara'."~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",2)
SetGlobal("Craddock","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #22902 /* ~"Mniejsza z tym. Wziąłem cię za kogoś innego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22874 /* ~"Niech to *diabli*! Czyżby byli aż tak *durni*, by sądzić, że dokonamy cudu, by to tam przetransportować?" Ale dobrze - twa wiadomość dotarła do przeznaczonych jej uszu. Cokolwiek by miała za sobą pociągnąć!"~ */
  IF ~~ THEN REPLY #22903 /* ~"W czym problem?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #22875 /* ~"Rozejrzyj się!" Kradok kiwa głową w stronę pracujących na targowisku osób, po czym krzywi się. "Ci lenie i półgłówki ledwo co nadążali z załadowaniem, a teraz trzeba to zrobić w dwa razy krótszym czasie!"~ */
  IF ~~ THEN REPLY #22906 /* ~"Potrzebujesz pomocy?"~ */ GOTO 6
  IF ~~ THEN REPLY #22907 /* ~"Przykro mi to słyszeć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #22876 /* ~"Powiem ci, czego mi trzeba. Tego, by wszyscy moi ludzie stawili się do pracy. Jhelai od rana się nie pojawił i potrzebuję, by wrócił."~ */
  IF ~~ THEN REPLY #22908 /* ~"Jhelai? Dokąd poszedł?"~ */ GOTO 7
  IF ~~ THEN REPLY #22909 /* ~"Przykro mi to słyszeć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #22877 /* ~"Zamiast nam pomagać, ten cap rodem z Ula najpewniej leży zemdlony gdzieś na ulicy w pobliżu gospody Pod Gorejącym Człekiem. Bezwartościowy skurl..."~ */
  IF ~~ THEN REPLY #22910 /* ~"Mogę pójść go dla ciebie poszukać."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #22911 /* ~"Mogę iść go poszukać dla ciebie... Za odpowiednią opłatę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22912 /* ~"Przykro mi to słyszeć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #22878 /* ~"Ta, możesz?" Kradok mruży oczy. "A z jakiego to niby powodu?"~ */
  IF ~~ THEN REPLY #22914 /* ~"Potrzebujesz pomocy, czyż nie? Zdaje się, że nie masz czasu, by pójść go poszukać. A robota czeka."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #22916 /* ~"Cóż, mogę go poszukać, ale za darmo tego nie zrobię."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22915 /* ~"W takim razie mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 8.1
  SAY #22879 /* ~Kradok milczy przez chwilę, po czym przytakuje. "Dobra... Znajdż Jhelaia i powiedz mu, żeby przytargał tu ten swój bezużyteczny, rozleniwiony tyłek. Zapłacę ci za fatygę..." Marszczy brwi. "...kiedy już go znajdziesz. A teraz idź!"~ */
  IF ~~ THEN REPLY #22917 /* ~"Powiedziałeś, że można go najprawdopodobniej znaleźć w pobliżu gospody Pod Gorejącym Człekiem? Gdzie to jest?"~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~Kradokowi brakuje jednego z pracowników, pijaka o imieniu Jhelai. Powiedział, że najpewniej wałęsa się po ulicy przed karczmą Pod Gorejącym Człekiem.~ */ GOTO 10
  IF ~~ THEN REPLY #22918 /* ~"W porządku. Pójdę go poszukać. Żegnaj."~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~Kradokowi brakuje jednego z pracowników, pijaka o imieniu Jhelai. Powiedział, że najpewniej wałęsa się po ulicy przed karczmą Pod Gorejącym Człekiem.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22880 /* ~"To na południowy wschód stąd. Przejdź przez południowo-wschodnią bramę, po czym skieruj się na wschód około jedną przecznicę. Na zewnątrz będzie sporo pijanych, nie możesz jej przegapić. Jhelai najpewniej gdzieś tam będzie."~ */
  IF ~~ THEN REPLY #22919 /* ~"Dobrze. Pójdę go poszukać. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Craddock","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #22881 /* ~Widzisz Kradoka. Jest jeszcze bardziej pochmurny niż przy pierwszym spotkaniu... Wygląda, jakby mu twarz miała na pół rozpęknąć.~ */
  IF ~  Global("Craddock_Quest","GLOBAL",0)
~ THEN REPLY #22920 /* ~"Zdajesz się byś zasmucony wiadomością od Baena. Stwarza ona jakiś problem?"~ */ GOTO 5
  IF ~  Global("Craddock_Quest","GLOBAL",2)
~ THEN REPLY #22921 /* ~"Znalazłem Jhelaia."~ */ GOTO 12
  IF ~  Global("Craddock_Quest","GLOBAL",3)
~ THEN REPLY #22922 /* ~"Mogę ci pomóc, skoro brakuje ci pracowników po odejściu Jhelaia."~ */ GOTO 16
  IF ~~ THEN REPLY #22923 /* ~Zostaw Kradoka w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #22882 /* ~"Ta? Rozgląda się wokół. "W takim razie gdzie on *jest*?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22924 /* ~Prawda: "Powiedział, żebyś się 'odszpicował'. Że jesteś 'skurlem najgorszego gatunku' i że 'nie zamierza dłużej dla ciebie pracować'."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ JOURNAL #22699 /* ~Przekazałem Kradokowi, słowo po słowie, wiadomość od Jhelaia... Nie był zbyt zadowolony. Kiedy wytrzeźwieje, Jhelai może żałować swoich słów.~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22946 /* ~Prawda: "Powiedział, żebyś się 'odszpicował'. Że jesteś 'skurlem najgorszego gatunku' i że 'nie zamierza dłużej dla ciebie pracować'."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22701 /* ~Przekazałem Kradokowi, słowo po słowie, wiadomość od Jhelaia... Nie był zbyt zadowolony - prawdę mówiąc, był tak niezadowolony, że Morte nauczył się chyba całego zestawu nowych przekleństw.~ */ GOTO 13
  IF ~~ THEN REPLY #22947 /* ~Kłamstwo: "Powiedział... ech, że mam go zastąpić."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Craddock_1","GLOBALLaw",-1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22702 /* ~Znalazłem Jhelaia, a następnie powiedziałem Kradokowi, że mogę go zastąpić... Początkowo Kradok był sceptycznie nastawiony, ale w końcu się zgodził.~ */ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #22883 /* ~Jego twarz przybiera kolor purpury i przecina ją na pół warknięcie. "Niech klątwa spadnie na jego imię! Niech zło wszelakie gnieżdżące się w Sferach depcze mu po piętach..." Nagły potok przekleństw, gróźb i domysłów dotyczących pochodzenia rodziny Jhelaia wytacza się z jego ust... Budzi to respekt.~ */
  IF ~~ THEN REPLY #22950 /* ~"Wiesz, mogę go zastąpić, jeśli potrzebujesz pomocy."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22951 /* ~"Potrzebuję jednodniowego zajęcia. Przejmę obowiązki Jhelaia na krótki czas, w zamian za jego wynagrodzenie."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22948 /* ~"Cóż, to była ta wiadomość. Jeśli to już wszystko, chcę teraz dostać moje miedziaki..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22952 /* ~"Ech... nie musisz się troszczyć o zapłatę dla mnie za znalezienie go. Pójdę już. Żegnaj."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22953 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #22884 /* ~Jego twarz przybiera kolor purpury i warknięcie przecina ją na pół. "Niech klątwa spadnie na jego imię! Niech zło wszelakie gnieżdżące się w Sferach depce mu po piętach..." Nagły potok przekleństw, gróźb i domysłów dotyczących pochodzenia rodziny Jhelaia wylewa się z jego ust...~ */
  IF ~~ THEN EXTERN ~DMORTE~ 227
END

IF ~~ THEN BEGIN 15 // from:
  SAY #22885 /* ~Kradok kończy swą tyradę burknięciem. "Niech go... tego Jhelaia..."~ */
  IF ~~ THEN REPLY #22954 /* ~"Wiesz, mogę go zastąpić, jeśli potrzebujesz pomocy."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22955 /* ~"Potrzebuję jednodniowego zajęcia. Przejmę obowiązki Jhelaia na krótki czas, w zamian za jego wynagrodzenie."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22956 /* ~"No, oto wiadomość. Jeśli to już wszystko, chcę teraz dostać moje miedziaki..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22958 /* ~"Ech... nie musisz się troszczyć o zapłatę dla mnie za znalezienie go. Pójdę już. Żegnaj."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22960 /* ~"Odejdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.2 12.2 13.0 13.1 15.0 15.1 20.0 20.1
  SAY #22886 /* ~Przygląda ci się przez chwilę. "Ty? Ha! Nie mógłbyś..." Milknie nagle. "Cóż, może jednak mógłbyś. To ciężka robota. I nie ma żadnego picia w czasie zmiany..."~ */
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #22962 /* ~"Rozumiem... Czas zaczynać."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(10)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,STR)
CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #22963 /* ~"Rozumiem... Czas zaczynać."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(20)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #22964 /* ~"Rozumiem... Czas zaczynać."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(30)
~ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #22887 /* ~Długa to praca, jednak pod koniec zmiany nie jesteś nawet odrobinę zmęczony. Gdy wracasz, Kradok wydaje z siebie chrząknięcie. "Nieźle się spisałeś... Oto twoja zapłata." Wręcza ci garść monet. "Teraz odejdź. Nie jesteś już nam potrzebny."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22965 /* ~"Co z zapłatą za dostarczenie wiadomości od Jhelaia?"~ */ GOTO 21
  IF ~~ THEN REPLY #22966 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #22888 /* ~Długa to praca, jednak pod koniec zmiany nie jesteś nawet odrobinę zmęczony. Zadziwiasz innych pracujących szybkością swojej pracy i ilością ciężaru, jaki jesteś w stanie podnieść. Gdy powracasz, Kradok wydaje z siebie chrząknięcie. "Masz ramiona niczym Bariaur, oj tak. Jesteś wart dwa razy tyle, co Jhelai... Oto twoja zapłata." Wręcza ci garść monet - w sumie dwadzieścia miedziaków. "Teraz odejdź. Nie jesteś już nam potrzebny."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22967 /* ~"Co z zapłatą za dostarczenie wiadomości od Jhelaia?"~ */ GOTO 21
  IF ~~ THEN REPLY #22968 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #22889 /* ~Długa to praca, jednak pod koniec zmiany nie jesteś nawet odrobinę zmęczony. Zadziwiasz innych pracujących szybkością swojej pracy i ilością ciężaru, jaki jesteś w stanie podnieść. Gdy powracasz, Kradok wydaje z siebie chrząknięcie. "Masz ramiona niczym tokola, oj tak. Jesteś wart trzy razy tyle, co Jhelai... Oto twoja zapłata." Wręcza ci garść monet - w sumie trzydzieści miedziaków. "Teraz odejdź. Nie jesteś już nam potrzebny."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22969 /* ~"Co z zapłatą za dostarczenie wiadomości od Jhelaia?"~ */ GOTO 21
  IF ~~ THEN REPLY #22970 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.2 15.2
  SAY #22890 /* ~Kradok wydaje z siebie chrząknięcie, następnie sięga do sakiewki i rzuca ci garść miedziaków. "Teraz zjeżdżaj. I jeśli spotkasz Jhelaia ponownie, powiedz mu, że jest już trupem!"~ */
  IF ~~ THEN REPLY #22971 /* ~"Wiesz, mogę go zastąpić, jeśli potrzebujesz pomocy."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22972 /* ~"Potrzebuję jednodniowego zajęcia. Przejmę obowiązki Jhelaia na krótki czas, w zamian za jego wynagrodzenie."~ */ GOTO 16
  IF ~~ THEN REPLY #22973 /* ~"Zapamiętam to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0 18.0 19.0
  SAY #22891 /* ~Kradok wydaje z siebie chrząknięcie, następnie sięga do sakiewki, po czym odlicza dziesięć miedziaków i wręcza je tobie.~ */
  IF ~~ THEN REPLY #22974 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ EXIT
END
