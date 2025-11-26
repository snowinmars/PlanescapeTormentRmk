// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHAD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23954 /* ~Ciało tego zbieracza o piaskowych włosach jest pokryte okrutnymi ugryzieniami. Jego szyja wciąż się wije, jakby starała się oderwać od ciała.~ */
  IF ~~ THEN REPLY #23967 /* ~"To... interesujące."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",3)
~ THEN BEGIN 1 // from:
  SAY #23968 /* ~Ciało Chada mówi grobowym głosem: "Czego chcesz, przyjacielu?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23969 /* ~"Możesz mi jeszcze raz powiedzieć, gdzie jest karafka?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23970 /* ~"Chciałbym wiedzieć, gdzie jest ten przedmiot, o którym mi mówiłeś."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #23971 /* ~"Opowiedz mi o sobie."~ */ GOTO 5
  IF ~~ THEN REPLY #23972 /* ~"Opowiedz mi o innych Zbieraczach."~ */ GOTO 6
  IF ~~ THEN REPLY #23973 /* ~"Co możesz powiedzieć mi o katakumbach?"~ */ GOTO 8
  IF ~~ THEN REPLY #23974 /* ~"W tej chwili niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0 4.1 5.0 6.1 7.0 8.0 14.1
  SAY #23975 /* ~"Och, daj spokój." Przerywa. "Czego chcesz?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23976 /* ~"Możesz mi jeszcze raz powiedzieć, gdzie jest karafka?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23977 /* ~"Chciałbym wiedzieć, gdzie jest ten przedmiot, o którym mi mówiłeś."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #23978 /* ~"Opowiedz mi o sobie."~ */ GOTO 5
  IF ~~ THEN REPLY #23979 /* ~"Opowiedz mi o innych Zbieraczach."~ */ GOTO 6
  IF ~~ THEN REPLY #23980 /* ~"Co możesz powiedzieć mi o katakumbach?"~ */ GOTO 8
  IF ~~ THEN REPLY #23981 /* ~"W tej chwili niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0
  SAY #23982 /* ~"Prześlizgniesz się albo przez truposzy albo szczury do Zatopionych Ziem. Gdy już się tam dostaniesz, udaj się głównym korytarzem obok trojga drzwi po lewej. Przejdź pod łukiem, po czym skręć w pierwsze drzwi po lewej. Jest w alkowie najbliższej tylnej ściany. Nie znam zaklęcia uruchamiającego... ale coś tam ci skapnie. Zrozumiałeś, przyjacielu?"~ */
  IF ~~ THEN REPLY #23983 /* ~"Tak mi się zdaje. Mam jednak jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #23984 /* ~"Tak mi się zdaje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 14.0
  SAY #23985 /* ~"Dobrze. Zatopione Ziemie nie nazywają się tak bez powodu. W tamtejszych katakumbach znajduje się ukryta magiczna karafka, z której nigdy nie przestaje płynąć woda. Dorwiesz ją, to masz tyle świeżej wody, ile kiedykolwiek zapragniesz."~ */
  IF ~~ THEN REPLY #23986 /* ~"Dobra. Gdzie ona jest?"~ */ GOTO 3
  IF ~~ THEN REPLY #23987 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #23988 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2
  SAY #23989 /* ~"Ja? Jestem Chad. Byłem kiedyś artystą. Pieniądze, sława, respekt, kobiety... i wtedy to wszystko się rozpadło. Przyłączyłem się do Faroda i jego ludzi, a potem stałem się jednym z najlepszych przetrząsaczy krypt w tej bandzie - potrafiłem ukraść rzecz sprzed nosa samej królowej ghuli. Później... później byłem trochę zbyt arogancki i dorwałem też plany jednego z kamiennych pomieszczeń - to właśnie nazywam *poważnymi* katakumbami - i stałem się pożywieniem dla wargulców. Prawie sam się nim stałem. Trzymam się tej głowy tylko siłą woli. Dobrze, że się tu pojawiłeś."~ */
  IF ~~ THEN REPLY #23990 /* ~"Rozumiem. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #23991 /* ~"Faktycznie, dobra rzecz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #23992 /* ~"He... całkiem nas sporo. Gris był jednak najlepszy, oczywiście poza mną."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #23993 /* ~"Gris też jest martwy."~ */ GOTO 7
  IF ~~ THEN REPLY #23994 /* ~"Mam zatem jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #23995 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23996 /* ~"Naprawdę?" Jego głos się rozjaśnia. "Przynajmniej nie będzie mi krakał nad uchem, jak to on jest ode mnie lepszy."~ */
  IF ~~ THEN REPLY #23997 /* ~"Nie, prawdopodobnie nie. Odpowiesz mi jeszcze na kilka pytań?"~ */ GOTO 2
  IF ~~ THEN REPLY #23998 /* ~"Nie sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.4
  SAY #23999 /* ~"Co mogę powiedzieć ci o katakumbach? Wiele potworów i jeśli jesteś mądry, nie będziesz tam marnować czasu. Weź to, po co tam przyszedłeś i zmiataj stąd. Zbyt wiele z tych miejsc ma pułapki i zbyt wiele stało się domem istot, których wolałbyś nie spotkać. Moja rada, to wynosić się stąd, póki jeszcze można."~ */
  IF ~~ THEN REPLY #24000 /* ~"Odpowiedz mi jeszcze na kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #24001 /* ~"Zastanowię się nad tym."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #24002 /* ~Kark ciała wciąż się wije. "Nie dorwałeś jeszcze tego, co mnie wrobił, prawda?" pyta ciało.~ */
  IF ~~ THEN REPLY #24003 /* ~"Jeszcze nie. Pracuję nad tym. Potrzebuję przedtem kilka odpowiedzi."~ */ GOTO 10
  IF ~~ THEN REPLY #24004 /* ~"Jeszcze nie. Pracuję nad tym."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #24005 /* ~"Pospiesz się, trepie! Nie wiem, jak długo jeszcze mój kark będzie w stanie to wytrzymać..."~ */
  IF ~~ THEN REPLY #24006 /* ~"Powiedz mi, co mi za to dasz."~ */ GOTO 11
  IF ~~ THEN REPLY #24007 /* ~"Opowiedz mi o sobie."~ */ GOTO 12
  IF ~~ THEN REPLY #24008 /* ~"Opowiedz mi o tych katakumbach."~ */ GOTO 12
  IF ~~ THEN REPLY #24009 /* ~"Jeszcze raz, co chciałeś, żebym uczynił?"~ */ GOTO 13
  IF ~~ THEN REPLY #24010 /* ~"Dobrze, dobrze. Nie ma się co przepracowywać."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #24011 /* ~"Obiecałem powiedzieć ci... jak znaleźć... ugh... magiczny przedmiot, który może ci się przydać..."~ */
  IF ~~ THEN REPLY #24012 /* ~"Dobra, dobra. Proszę, jeszcze tylko kilka odpowiedzi..."~ */ GOTO 10
  IF ~~ THEN REPLY #24013 /* ~"Pracuję nad tym. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 17 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",1)
~ THEN BEGIN 12 // from: 10.1 10.2 17.1 17.2 17.3
  SAY #24014 /* ~"Słuchaj... moja głowa zaraz odpadnie... naprawdę nie mam *czasu* by teraz rozmawiać... spytaj mnie... później."~ */
  IF ~  Global("Revenge_V","GLOBAL",1)
~ THEN REPLY #24015 /* ~"Jeszcze raz, co chciałeś, żebym uczynił?"~ */ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24016 /* ~"Czego ode mnie chcesz?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24017 /* ~"A tak właściwie, to czego chcesz?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.3 12.0 12.1 12.2 17.0 17.4
  SAY #24018 /* ~"Widzisz... tę... szyję?" Wyciąga się jak u żyrafy i skurcza. "Przeklęty wargulec mnie ugryzł. Jestem martwy i... muszę trzymać się mojej głowy, jeśli nie chcę zostać... jedną z tych przeklętych... istot." Mówi z wysiłkiem. "Zabijesz wargulce w tym przejściu... wszystkie... aby mnie od tego uratować."~ */
  IF ~~ THEN REPLY #24019 /* ~"Co mi za to dasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Chad_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #24020 /* ~"Proszę."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Chad_1","GLOBALGood",1)
~ GOTO 15
END

IF WEIGHT #2 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #24021 /* ~Zauważasz, że szyja Chada ma się znacznie lepiej... już nie wije się, jakby chciała się oddzielić od reszty ciała. "Dzięki, przyjacielu... przynajmniej teraz wiem, że nie będę przez wieczność wargulcem... Chcesz teraz swoją nagrodę?"~ */
  IF ~~ THEN REPLY #24022 /* ~"Powiedz mi."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #24023 /* ~"Nie. Odpowiedz mi na kilka pytań."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.0 13.1
  SAY #24024 /* ~"W zamian... dam ci... wskazówki... jak zdobyć... potężny magiczny przedmiot... przeczucie mówi mi... że możesz go potrzebować..."~ */
  IF ~~ THEN REPLY #24025 /* ~"Co to jest?"~ */ GOTO 16
  IF ~~ THEN REPLY #24026 /* ~"Ruszam w drogę."~ */ EXIT
  IF ~~ THEN REPLY #24027 /* ~"Pomyślę o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #24028 /* ~"Znajdź wargulce... i wtedy ci powiem. Nie wcześniej."~ */
  IF ~~ THEN REPLY #24029 /* ~"Dobrze. Już idę."~ */ EXIT
  IF ~~ THEN REPLY #24030 /* ~"Pomyślę o tym. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",0)
~ THEN BEGIN 17 // from:
  SAY #24031 /* ~Ciało tego zbieracza o piaskowych włosach jest pokryte okrutnymi ugryzieniami. Jego szyja wciąż się wije, jakby starała się oderwać od ciała. Mówi z wysiłkiem: "Hej... jestem Chad... potrzebuję twojej pomocy..."~ */
  IF ~~ THEN REPLY #24032 /* ~"Co ci jest?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #24033 /* ~"Co możesz powiedzieć mi o katakumbach?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24034 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24035 /* ~"Gdzie jesteśmy?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24036 /* ~"Nie. Żegnaj."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END
