// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUMBLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUMBLE~

IF ~  Global("Jumble","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2937 /* ~Pomarańczowa tunika i raczej pokaźny brzuch, nadają temu łysiejącemu mężczyźnie wygląd chodzącej dyni. Z roztargnieniem stuka w olbrzymi brzuch, jak gdyby był to bęben. Dziwny, krzywy uśmiech i dziwny błysk oczu nadają mu nieco szalony wygląd.~ */
  IF ~~ THEN REPLY #2938 /* ~"Witaj..."~ */ DO ~SetGlobal("Jumble","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41917 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41918 /* ~Kłania się przesadnie, zamaszyście i pokazuje małą wizytówkę, na której widnieje tylko 'Mieszacz Mordsens - Jego Knadzwyczajność Kaosycki Kczarnoksiężnik'. Następnie wyrywa ci ją i zaczyna zjadać, cały czas szeroko się uśmiechając.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 462
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41928 /* ~"Mam kilka pytań, Mieszaczu..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41929 /* ~"To ty rzuciłeś klątwę na Śmierdziwiatra, prawda?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~W Miejskim Gmachu Rozrywki spotkałem Mieszacza Mordsensa, człowieka, który rzucił klątwę smrodu na niejakiego Śmierdziwiatra.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #67863 /* ~"Chciałbym, żebyś zdjął klątwę ze Śmierdziwiatra."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41930 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.0
  SAY #41931 /* ~Mieszacz ziewa i rozgląda się, stukając dłonią w brzuch.~ */
  IF ~~ THEN REPLY #41932 /* ~"Mieszaczu? Co z moimi pytaniami?"~ */ GOTO 3
  IF ~~ THEN REPLY #41933 /* ~"Nieważne... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.1 12.2
  SAY #41934 /* ~Mieszacz wywraca oczami. Odwraca się do ciebie, uśmiecha się, a następnie gryzie się w kciuk.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41935 /* ~"Przynajmniej odpowiedz mi na to: czy ty rzuciłeś klątwę na Śmierdziwiatra?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~W Miejskim Gmachu Rozrywki spotkałem Mieszacza Mordsensa, człowieka, który rzucił klątwę smrodu na niejakiego Śmierdziwiatra.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67865 /* ~"W porządku. Ale chciałbym, żebyś zdjął klątwę ze Śmierdziwiatra."~ */ GOTO 9
  IF ~~ THEN REPLY #41936 /* ~"Jesteś niemową? To dlatego mi nie odpowiadasz?"~ */ GOTO 4
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41937 /* ~Prawda: "Chcę odpowiedzi i jeśli trzeba, to je z ciebie wytrząsnę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41938 /* ~Blef: "Chcę odpowiedzi i jeśli trzeba, to je z ciebie wytrząsnę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41939 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #41940 /* ~Mieszacz podnosi głowę i uśmiecha się głupkowato. Powoli wzrusza ramionami... następnie zamyka oczy i pokazuje ci język.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41941 /* ~Prawda: "Chcę odpowiedzi i jeśli trzeba, to je z ciebie wytrząsnę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41942 /* ~Blef: "Chcę odpowiedzi i jeśli trzeba, to je z ciebie wytrząsnę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41943 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 3.4 4.0 4.1 9.1 9.2 10.0 10.1
  SAY #41944 /* ~Mieszacz unosi brew i cofa się o krok. Nagle otwiera usta i - chociaż ani jego wargi, ani grdyka nie ruszają się - z jego gardła wydostaje się niezrozumiały bełkot.~ */
  IF ~~ THEN REPLY #41945 /* ~"Co się...?"~ */ DO ~SetGlobal("Jumble","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_ADD_JUMBLE_CURSE)
~ JOURNAL #66219 /* ~Za sprawą chaosyckiego maga o imieniu Mieszacz Mordsens zostałem obłożony klątwą wiecznej czkawki. Mam nadzieję, że może ktoś inny w Miejskim Gmachu Rozrywki będzie mógł pomóc mi w usunięciu tej przykrej klątwy... albo też pomoże mi namówić Mieszacza, aby sam usunął tę klątwę.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41946 /* ~Mieszacz zamyka usta i bełkot ustaje... obserwuje cię przymrużonymi oczami, na jego tłustej twarzy pojawia się pełen samozadowolenia uśmiech. Nagle, czkasz.

I czkasz. I czkasz. I ponownie.

Mieszacz Mordsens odwraca głowę i odprawia cię gestem.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 463
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41947 /* ~"Coś ty mi zrobił?"~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41948 /* ~"Mieszaczu... proszę, cokolwiek zrobiłeś, cofnij to."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41949 /* ~"Cokolwiek zrobiłeś, cofnij to - albo gorzko tego pożałujesz."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41950 /* ~"Lepiej znajdę kogoś, kto pomoże mi pozbyć się tej klątwy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2 6.3
  SAY #41951 /* ~Mieszacz zupełnie cię ignoruje.~ */
  IF ~~ THEN REPLY #41952 /* ~Zaatakuj go.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41953 /* ~"Lepiej znajdę kogoś, kto pomoże mi pozbyć się tej klątwy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2 3.0 11.1
  SAY #41954 /* ~Mieszacz robi niewinną minę i wzrusza ramionami, jak gdyby chciał powiedzieć 'Nie wiem.' Następnie zakrywa usta i chichocze jak zadowolona uczennica.~ */
  IF ~~ THEN REPLY #41955 /* ~"Chcę, żebyś zdjął z niego klątwę."~ */ GOTO 9
  IF ~~ THEN REPLY #41956 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #41957 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 8.0 11.2
  SAY #41958 /* ~Mieszacz udaje, że cię nie słyszy, zamiast tego wciąż stuka w brzuch, biegając wzrokiem po Gmachu Rozrywki.~ */
  IF ~~ THEN REPLY #41959 /* ~"Czy jest coś, co mogę zrobić, żebyś zdjął klątwę ze Śmierdziwiatra?"~ */ GOTO 10
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41960 /* ~Prawda: "Zdejmij z niego klątwę, Mieszaczu, zanim będę musiał zrobić ci krzywdę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41961 /* ~Blef: "Zdejmij z niego klątwę, Mieszaczu, zanim będę musiał zrobić ci krzywdę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41962 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41963 /* ~Mieszacz nie patrzy na ciebie, ale kręci głową.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41964 /* ~Prawda: "Zdejmij klątwę ze Śmierdziwiatra, Mieszaczu, zanim będę musiał zrobić ci krzywdę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41965 /* ~Blef: "Zdejmij klątwę ze Śmierdziwiatra, Mieszaczu, zanim będę musiał zrobić ci krzywdę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41966 /* ~Odjedź.~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #41967 /* ~Mieszacz Mordsens kłania się przesadnie nisko, zamaszyście, a następnie unosi głowę i zaczyna ci się ciekawie przyglądać.~ */
  IF ~~ THEN REPLY #41968 /* ~"Mam kilka pytań, Mieszaczu..."~ */ GOTO 2
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41969 /* ~"To ty rzuciłeś klątwę na Śmierdziwiatra, prawda?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~W Miejskim Gmachu Rozrywki spotkałem Mieszacza Mordsensa, człowieka, który rzucił klątwę smrodu na niejakiego Śmierdziwiatra.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67866 /* ~"Chciałbym, żebyś zdjął klątwę ze Śmierdziwiatra."~ */ GOTO 9
  IF ~~ THEN REPLY #41970 /* ~"Tylko przechodzę. Żegnaj."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY #41971 /* ~Gdy pojawiasz się, Mieszacz marszczy czoło, gryząc kciuk i odprawiając cię gestem.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41972 /* ~Rzuć na niego klątwę Salabesza.~ */ GOTO 15
  IF ~~ THEN REPLY #41973 /* ~"Mieszaczu, musisz zdjąć klątwę, którą na mnie rzuciłeś."~ */ GOTO 13
  IF ~~ THEN REPLY #41974 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #41975 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #41976 /* ~Wywraca oczy i znacząco ziewa.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41977 /* ~Rzuć na niego klątwę Salabesza.~ */ GOTO 15
  IF ~~ THEN REPLY #41978 /* ~Prawda: "Zdejmij klątwę, Mieszaczu, zanim będę musiał zrobić ci krzywdę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41979 /* ~Blef: "Zdejmij klątwę, Mieszaczu, zanim będę musiał zrobić ci krzywdę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41980 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2
  SAY #41981 /* ~Mieszacz Mordsens daje pokaz oglądania i czyszczenia paznokci.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41982 /* ~Rzuć na niego klątwę Salabesza.~ */ GOTO 15
  IF ~~ THEN REPLY #41983 /* ~Zaatakuj go.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41984 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 13.0 14.0
  SAY #41985 /* ~Mieszacz gapi się na ciebie z nieco sceptycznym wyrazem twarzy, gdy wygłaszasz tajemną formułę klątwy Salabesza. Po chwili niezręcznej ciszy, kaosycki mag zauważa, że nic się nie stało... na jego twarzy pojawia się złośliwy uśmiech.~ */
  IF ~~ THEN REPLY #41986 /* ~Kontynuuj...~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41987 /* ~Otwiera usta, by w odwecie rzucić swą własną klątwę... i zdaje sobie sprawę, że stracił głos! Klątwa Salabesza pozbawiła Mieszacza zdolności mowy, tym samym uniemożliwiając Kaosycie rzucanie klątw. Mieszacz ściska się za gardło, w oczach widać wzbierającą panikę.~ */
  IF ~~ THEN REPLY #41988 /* ~"Wygląda na to, że sytuacja się zmieniła, Mieszaczu. Jak myślisz, co się stanie, gdy ktoś - *czknięcie* - na kogo kiedyś rzuciłeś klątwę, dowie się, że nie możesz już mówić, a więc rzucać klątw?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41989 /* ~Mieszacz pada na kolana z błagalnym wyrazem twarzy. Wygląda jak gdyby miał się rozpłakać.~ */
  IF ~~ THEN REPLY #41990 /* ~"Czy teraz - *czknięcie* - usuniesz ze mnie klątwę? I przysięgniesz, że już nigdy nie rzucisz klątwy na nikogo, kto nie chce cię skrzywdzić?"~ */ DO ~SetGlobal("Jumble","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #41991 /* ~Mieszacz kładzie ręce na piersi i energicznie potakuje.~ */
  IF ~~ THEN REPLY #41992 /* ~"Bardzo dobrze. W takim razie usunę klątwę..."~ */ DO ~ApplySpell(Protagonist,SPECIAL_REMOVE_JUMBLE_CURSE)
~ JOURNAL #66550 /* ~Zmusiłem Mieszacza Mordsensa do zdjęcia ze mnie klątwy. Udało mi się to wszystko z pomocą uroku, którego nauczył mnie Salabesz Onyks, Władca Przekleństw.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41993 /* ~Mieszacz wzdycha z ulgą, gdy zdejmujesz z niego klątwę Salabesza. On, w zamian za to, zdejmuje swoją i nareszcie przestajesz czkać. Następnie kłania się skromnie i wbija oczy w podłogę.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67870 /* ~"Rzuciłeś też klątwę na Śmierdziwiatra, prawda?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~W Miejskim Gmachu Rozrywki spotkałem Mieszacza Mordsensa, człowieka, który rzucił klątwę smrodu na niejakiego Śmierdziwiatra.~ */ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41994 /* ~"Chcę, abyś usunął także klątwę ze Śmierdziwiatra."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Z pomocą mojej własnej klątwy, przekonałem Mieszacza Mordsensa, aby zdjął z Śmierdziwiatra klątwę smrodu.~ */ GOTO 20
  IF ~~ THEN REPLY #41995 /* ~"Żegnaj, Mieszaczu."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1 22.0
  SAY #41996 /* ~Mieszacz przytakuje wydymając wargi i ruchem ręki zdejmuje klątwę ze Śmierdziwiatra.~ */
  IF ~~ THEN REPLY #41997 /* ~"Dzięki. Żegnaj, Mieszaczu."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #41998 /* ~Mieszacz kłania się niezgrabnie i obdarza cię niepewnym spojrzeniem. Widać wyraźnie, że nie chce mieć więcej z tobą do czynienia.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67871 /* ~"Rzuciłeś też klątwę na Śmierdziwiatra, prawda?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41999 /* ~"Chcę, żebyś zdjął także swoją starą klątwę ze Śmierdziwiatra."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Z pomocą mojej własnej klątwy, przekonałem Mieszacza Mordsensa, aby zdjął z Śmierdziwiatra klątwę smrodu.~ */ GOTO 20
  IF ~~ THEN REPLY #42000 /* ~"Jestem tu przypadkiem, Mieszaczu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #67867 /* ~Mieszacz wzdycha głośno, przewracając oczami i przytakuje.~ */
  IF ~~ THEN REPLY #67868 /* ~"Chciałbym, byś zdjął z niego swoją starą klątwę."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 20
  IF ~~ THEN REPLY #67869 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
