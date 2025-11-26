// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONTAGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONTAGU~

IF ~  Global("Montague","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #43991 /* ~Ten przystojny młody mężczyzna wydaje się pogrążony we własnych myślach. Ma zmarszczone czoło, na ustach grymas.~ */
  IF ~~ THEN REPLY #43992 /* ~"Witaj..."~ */ DO ~SetGlobal("Montague","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #43993 /* ~Pozostaw go swym myślom.~ */ EXIT
END

IF ~  GlobalGT("Montague","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #43994 /* ~Ten młodzieniec wciąż wydaje się zmartwiony. Wita się z tobą, kiedy doń podchodzisz. "Raz jeszcze śpieszę powitać cię, panie. Czego życzysz sobie ode mnie?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66154 /* ~"Czy to ty jesteś Montek? Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66155 /* ~"Czy to ty jesteś Montek? Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66156 /* ~"Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66157 /* ~"Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~~ THEN REPLY #43995 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #43996 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #43997 /* ~"I ciebie, panie, pozdrawiam. Czego pragniesz ode mnie?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66152 /* ~"Czy to ty jesteś Montek? Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66153 /* ~"Czy to ty jesteś Montek? Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~~ THEN REPLY #43998 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #43999 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.2 4.4 5.1 6.1 7.1 8.2 9.1 10.1 11.1 12.1 13.2 15.0 16.0 17.2 39.0 40.0
  SAY #44000 /* ~"Tak?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
~ THEN REPLY #44001 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Montague","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Montague","GLOBAL",1)
~ THEN REPLY #44002 /* ~"Jeszcze raz: kim jesteś?"~ */ GOTO 4
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66158 /* ~"Czy to ty jesteś Montek? Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66159 /* ~"Czy to ty jesteś Montek? Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44003 /* ~"Muszę porozmawiać z tobą o Julii."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44004 /* ~"Muszę porozmawiać z tobą o Julii."~ */ GOTO 17
  IF ~~ THEN REPLY #44005 /* ~"Co tutaj robisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #44006 /* ~"Mam kilka pytań na temat tego miejsca..."~ */ GOTO 39
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #44007 /* ~"Co wiesz na temat Raveli Szaradnej?"~ */ GOTO 40
  IF ~~ THEN REPLY #44008 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #44009 /* ~"Nazywam się Montek, jestem faktotumem frakcji Czuciowców."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #52994 /* ~"Montek... Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #52995 /* ~"Montek... Muszę z tobą porozmawiać o Julii."~ */ GOTO 17
  IF ~~ THEN REPLY #44010 /* ~"Faktotumem?"~ */ GOTO 5
  IF ~~ THEN REPLY #44011 /* ~"Czuciowców?"~ */ GOTO 6
  IF ~~ THEN REPLY #44012 /* ~"Mam kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #44013 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.0
  SAY #44014 /* ~"Doprawdy, panie. Jestem 'członkiem', jeśli takie określenie wolisz."~ */
  IF ~~ THEN REPLY #44016 /* ~"Czy powiedziałeś 'Czuciowców'?"~ */ GOTO 6
  IF ~~ THEN REPLY #44017 /* ~"Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44018 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3 5.0
  SAY #44015 /* ~"Doprawdy, panie... 'Stronnictwa Doznań'. To frakcja w Sigil, panie... największa. Jeśliby życzeniem twoim było dowiedzieć się czegoś więcej o Czuciowcach, porozmawiaj z Drzazgą. Znajdziesz go zaraz opodal wejścia do tego budynku."~ */
  IF ~~ THEN REPLY #44019 /* ~"Czy powiedziałeś 'faktotumem'?"~ */ GOTO 5
  IF ~~ THEN REPLY #44020 /* ~"Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44021 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.6
  SAY #44022 /* ~"Pracuję jako asystent u boku jednego z administratorów frakcji. Jednakowoż, o wiele częściej niźli w przeszłości, bywam skonfundowany dziwnymi kolejami losu."~ */
  IF ~~ THEN REPLY #44023 /* ~"Takimi jak...?"~ */ GOTO 8
  IF ~~ THEN REPLY #44025 /* ~"Rozumiem. Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44026 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #44024 /* ~"Problemy złożoności kobiet."~ */
  IF ~~ THEN REPLY #44027 /* ~"W czym, tak naprawdę, tkwi problem?"~ */ GOTO 10
  IF ~~ THEN REPLY #44028 /* ~"Jesteś kobietą?"~ */ GOTO 9
  IF ~~ THEN REPLY #44029 /* ~"Rozumiem. Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44030 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #44031 /* ~Młodzieniec obdarza cię powłóczystym spojrzeniem. "Nie."~ */
  IF ~~ THEN REPLY #44032 /* ~"W czym, tak naprawdę, tkwi problem?"~ */ DO ~SetGlobal("Montague","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY #44033 /* ~"W każdym bądź razie, mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44034 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #44035 /* ~"Nie wiem, co ją trapi. Próbowałem ją pocieszać. Nie mam pojęcia, w czym tkwi jej problem."~ */
  IF ~~ THEN REPLY #44036 /* ~"Jak się sprawy mają pomiędzy wami?"~ */ GOTO 11
  IF ~~ THEN REPLY #44037 /* ~"To fatalnie. Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44038 /* ~"Powodzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #44039 /* ~"Z wyjątkiem sporadycznych wybuchów niezadowolenia lub nudy, wszystko jest doskonałe! Wszystko, co obraca się wokół nas, czyni to ze spokojem... Nasze rodziny są bardziej niż zadowolone z naszego silnego związku, a jej rodzeństwo wręcz mnie uwielbia. Wszystko jest w porządku."~ */
  IF ~~ THEN REPLY #44040 /* ~"Hmm. Być może to jest ten problem: brak problemów."~ */ GOTO 12
  IF ~~ THEN REPLY #44041 /* ~"To fatalnie. Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44042 /* ~"Mam nadzieję, że coś z tego wyjdzie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44043 /* ~"Jakże to sobie koncypujesz: brak problemów to problem? Zaiste, pragnę, abyś wyrażał się jaśniej, panie."~ */
  IF ~~ THEN REPLY #44045 /* ~"Być może ona pragnie odrobiny więcej pikanterii w waszym związku."~ */ GOTO 13
  IF ~~ THEN REPLY #44046 /* ~"Nic to, mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44047 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #44048 /* ~"A skądże mi wiedzieć, czego ona pragnie?" Młodzieniec zaczyna się ekscytować. "My kochamy, i to kochamy bezwarunkowo, bez tych wszystkich obskurnych i obrzydliwych opakowań, które wydają się spowijać całą młodzieńczą miłość. Wyzywam cię, panie, i nazywam cię małodusznym i tchórzliwym szelmą i głupcem!"~ */
  IF ~~ THEN REPLY #44049 /* ~"No, no... uspokój się."~ */ GOTO 14
  IF ~~ THEN REPLY #44050 /* ~"Jesteś głupcem, jeżeli szukasz ze mną zwady, ale dam ci tę satysfakcję..."~ */ DO ~SetGlobal("Montague_Problem","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44051 /* ~"Wystarczy już tych obelg, chłopcze. Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44052 /* ~"Uważaj na to, co mówisz, albo wydrę ci język z ust. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44053 /* ~"Wybacz mi... to tylko chwilowa wściekłość włożyła te słowa w me usta. Moje przeprosiny kieruję do ciebie i twoich ludzi, dobry panie."~ */
  IF ~~ THEN REPLY #44054 /* ~"Nie myśl o tym. To nie jest ważne."~ */ GOTO 15
  IF ~~ THEN REPLY #44055 /* ~"Po prostu uważaj. Walka ze mną mogłaby być największym błędem, jakiego się kiedykolwiek dopuściłeś."~ */ GOTO 16
  IF ~~ THEN REPLY #44056 /* ~Zignoruj go i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44057 /* ~"W rzeczy samej jesteś łaskawy, panie."~ */
  IF ~~ THEN REPLY #44058 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #44059 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #44060 /* ~"W takim razie będę pilnował siebie, panie."~ */
  IF ~~ THEN REPLY #44061 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #44062 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.0 1.1 1.2 1.3 2.0 2.1 3.2 3.3 3.4 3.5 4.0 4.1
  SAY #44063 /* ~"O?" Patrzy na ciebie ze zdiwieniem przemieszanym z podejrzliwością.~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44064 /* ~"Podsłuchałem ją w Przybytku. Ma romans, wiesz."~ */ GOTO 18
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44065 /* ~"Żądam jej miłości. I żądam, abyś wycofał swe fałszywe deklaracje miłości zanim stłukę cię na kwaśne jabłko."~ */ GOTO 34
  IF ~~ THEN REPLY #44066 /* ~"Tak naprawdę, to nic to. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #44067 /* ~"Porozmawiamy o niej jednak później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44068 /* ~"Fałszywie przemawiasz. Chciałbym, abyś przedstawił jakiś dowód, zanim potraktuję twe słowa jak na prawdę przystało."~ */
  IF ~  PartyHasItem("LoveLtr")
~ THEN REPLY #44069 /* ~"Znalazłem także te listy... Proszę, przeczytaj je."~ */ DO ~TakePartyItemNum("LoveLtr",1)
~ GOTO 20
  IF ~  !PartyHasItem("LoveLtr")
~ THEN REPLY #44070 /* ~Kłamstwo: "Ja... widziałem, jak czytała listy od niego."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Montague_1","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #44071 /* ~"Porozmawiamy o tym jednak później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #44072 /* ~"Nie. Nie daję wiary słowom i oskarżeniom... Muszę odczuć ciężar takich listów w ręce, zanim odważę się ocenić sytuację. Gdybyś tak przyniósł mi te listy, chętnie wróciłbym ponownie do tej sprawy."~ */
  IF ~~ THEN REPLY #44073 /* ~"Wróce, gdy będę je miał. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #44074 /* ~Bierze listy i je czyta. "Niestety! To prawda! Znalazła innego, co kocha ją namiętnie. Mniemam, że ból serca to los Czuciowca. Pokocham inną, a ten niech sobie ją weźmie, zważywszy na namiętność jego słów."~ */
  IF ~~ THEN REPLY #44075 /* ~"Zaczekaj - to wszystko to podstęp."~ */ GOTO 21
  IF ~~ THEN REPLY #44076 /* ~"W takim razie życzę ci szczęścia. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #44077 /* ~"Że jak? O czym ty mówisz?"~ */
  IF ~~ THEN REPLY #44078 /* ~"Ona próbuje cię podstępem zmusić do tego, abyś był bardziej namiętny."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 22
  IF ~~ THEN REPLY #44079 /* ~"Nieważne... żegnaj."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44080 /* ~"A dlaczego ona tego po prostu nie powiedziała?"~ */
  IF ~~ THEN REPLY #44081 /* ~"Nie wydaje mi się, aby jej to przyszło do głowy."~ */ GOTO 23
  IF ~~ THEN REPLY #44082 /* ~"Tak mogło być jej łatwiej."~ */ GOTO 32
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44083 /* ~"Widocznie nie. Więc co trzeba robić?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44084 /* ~"Zwrot o sto osiemdziesiąt stopni to uczciwa gra..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44085 /* ~"Zwrot o sto osiemdziesiąt stopni to uczciwa gra..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44086 /* ~"Nic, jak sądzę."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.2 25.2 27.1 28.0 31.2 33.2 37.2
  SAY #44087 /* ~"Doskonale. W takim razie powstrzymam się od odpowiedzi."~ */
  IF ~~ THEN REPLY #44088 /* ~"Mam nadzieję, że to rozpracujesz. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #44089 /* ~"Jak sobie chcesz. Żegnaj."~ */ GOTO 41
END

IF ~~ THEN BEGIN 25 // from: 23.0 33.0 37.0
  SAY #44090 /* ~"W jakiż sposób mam to uczynić, panie?"~ */
  IF ~~ THEN REPLY #44091 /* ~"Powiedz jej, że znudził ci się wasz związek - że ona nie jest już interesująca."~ */ GOTO 26
  IF ~~ THEN REPLY #44092 /* ~"Powiedz, że masz romans."~ */ GOTO 27
  IF ~~ THEN REPLY #44093 /* ~"Nie jestem pewny. Sam powinieneś zdecydować."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 25.0 31.0
  SAY #44094 /* ~"Powiadasz, iż mam udawać brak zainteresowania, aby wzbudzić jej zainteresowanie. Cóż za ironia! Zgodzę się z tym, co proponujesz i obejrzę tego efekty."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44095 /* ~"Powodzenia - mam nadzieję, że wszystko zadziała. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44096 /* ~"Pójdę już. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44097 /* ~"Powodzenia - mam nadzieję, że wszystko zadziała. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44098 /* ~"Pójdę już. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 27 // from: 25.1 31.1
  SAY #44099 /* ~"Taka porada mogłaby być niebezpieczna. Jednakowoż niewątpliwie zachęci ją ona do baczniejszego przyjrzenia się naszemu związkowi i do walki o jego utrzymanie. Tak zrobię. W jaki sposób to przeprowadzić?"~ */
  IF ~~ THEN REPLY #44100 /* ~"Ja to załatwię. Powiem, że zastałem cię z inną kobietą."~ */ GOTO 28
  IF ~~ THEN REPLY #44101 /* ~"Nie jestem pewny. Sam powinieneś zdecydować."~ */ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44102 /* ~"W porządku. Będzie tak, jak mówisz."~ */
  IF ~~ THEN REPLY #44103 /* ~"Po namyśle sądzę, że najlepiej będzie, jak pozwolę ci załatwić to samemu."~ */ GOTO 24
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44104 /* ~"Z pewnością jej powiem, gdy spotkamy się następnym razem. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44105 /* ~"Z pewnością jej powiem, gdy spotkamy się następnym razem. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 29 // from:
  SAY #44106 /* ~"Doprawdy?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 465
END

IF ~~ THEN BEGIN 30 // from:
  SAY #44107 /* ~"O, brzmi to bardzo ładnie."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44108 /* ~"Powodzenia - mam nadzieję, że to zadziała. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44109 /* ~"Pójdę już. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44110 /* ~"Powodzenia - mam nadzieję, że to zadziała. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44111 /* ~"Pójdę już. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 31 // from:
  SAY #44112 /* ~"W porządku... W takim razie co powinienem zrobić?"~ */
  IF ~~ THEN REPLY #44113 /* ~"Powiedz jej, że znudził ci się wasz związek - że ona nie jest już interesująca."~ */ GOTO 26
  IF ~~ THEN REPLY #44114 /* ~"Powiedz, że masz romans."~ */ GOTO 27
  IF ~~ THEN REPLY #44115 /* ~"Nie jestem pewien. Sam powinieneś zdecydować."~ */ GOTO 24
END

IF ~~ THEN BEGIN 32 // from: 22.1
  SAY #44116 /* ~"Ale... myślałem, że możemy rozmawiać o wszystkim."~ */
  IF ~~ THEN REPLY #44117 /* ~"Być może było to coś, co - z samej swej natury - nie mogło być przedmiotem dyskusji."~ */ GOTO 33
  IF ~~ THEN REPLY #44118 /* ~"Być może się pomyliłeś."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #44119 /* ~"Co zalecałbyś, abym uczynił, panie?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44120 /* ~"Zwrot o sto osiemdziesiąt stopni to uczciwa gra..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44121 /* ~"Zwrot o sto osiemdziesiąt stopni to uczciwa gra..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44122 /* ~"Nic, jak sądzę."~ */ GOTO 24
END

IF ~~ THEN BEGIN 34 // from: 17.1
  SAY #44123 /* ~"Kochasz ją tak bardzo, że walczyłbyś ze mną?"~ */
  IF ~~ THEN REPLY #44124 /* ~"Tak."~ */ GOTO 35
  IF ~~ THEN REPLY #44125 /* ~"Nie, nie kocham jej - ale będę walczyć dla niej."~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #44126 /* ~Przypatruje ci się przez chwilę. "W tej sprawie widać całą twoją namiętność. Namiętność wyrasta z miłości. Kochasz ją, a ja nie mógłbym odmówić jej takiej miłości, jak twoja, panie. Od tej pory nie będę już się jej dopominał; możesz czynić, co chcesz."~ */
  IF ~~ THEN REPLY #44127 /* ~"Chwileczkę... to był tylko taki podstęp."~ */ GOTO 36
  IF ~~ THEN REPLY #44128 /* ~"Uch... W porządku. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.0
  SAY #44130 /* ~"Podstęp? Jakiego rodzaju?"~ */
  IF ~~ THEN REPLY #44131 /* ~"Ona chciała cię sprowokować do walki o nią."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 37
  IF ~~ THEN REPLY #44132 /* ~"Nic to... żegnaj."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44133 /* ~"Tak? Czy ona sądziła, że moja miłość jest na tyle bezgraniczna, że wdam się w bijatykę z człowiekiem tak straszliwie pokrytym bliznami i twojej postury? Chyba przesadza z tym moim oddaniem. Więc... co należy zrobić z tym podstępem?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44134 /* ~"Zwrot o sto osiemdziesiąt stopni to uczciwa gra..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44135 /* ~"Zwrot o sto osiemdziesiąt stopni to uczciwa gra..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44136 /* ~"Nic, jak sądzę."~ */ GOTO 24
END

IF ~~ THEN BEGIN 38 // from: 34.1
  SAY #44137 /* ~"Ah, ale widzisz... to jest namiętność. Namiętność wyrasta z miłości. Kochasz ją, a ja nie mógłbym odmówić jej takiej miłości, jak twoja, panie. Znam doskonale jej urodę, jej powściągliwość, jej cnotę. Wiem też, że potrafi pobudzać mężczyzn do wielkich czynów. Od tej pory nie będę już się jej dopominał; możesz czynić, co chcesz."~ */
  IF ~~ THEN REPLY #44138 /* ~"Chwileczkę... to wszystko to podstęp."~ */ GOTO 36
  IF ~~ THEN REPLY #44139 /* ~"Uch... W porządku. Żegnaj."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 3.7
  SAY #44140 /* ~"Na temat Gmachu Rozrywki? Dobrze uczynisz rozmawiając z Drzazgą, zaraz w wejściu do tego budynku."~ */
  IF ~~ THEN REPLY #44141 /* ~"Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44142 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.8
  SAY #44143 /* ~"Hmm... legendarna nocna wiedźma, co? Powinieneś porozmawiać z Quellem, panie - on to najlepiej zna się na tych sprawach. Jest w Gmachu Rozrywki, choć gdzie dokładnie, tego nie wiem."~ */
  IF ~~ THEN REPLY #44144 /* ~"Mam inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #44145 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.1 21.1 24.1 26.0 26.1 26.2 26.3 28.1 28.2 30.0 30.1 30.2 30.3 35.1 36.1 38.1
  SAY #44146 /* ~"Żegnaj i ty, panie. Teraz muszę zająć się kilkoma sprawami; gdybyśmy tak znowu mieli się spotkać, możemy więcej porozmawiać o tej sprawie." Montek kłania się i odwraca, chcąc odejść.~ */
  IF ~~ THEN REPLY #44147 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END
