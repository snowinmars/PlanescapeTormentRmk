// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHJULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHJULL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 100.0
  SAY #2913 /* ~"Przez ciebie, wszystko przepadło! Będą tu wciąż mnie nachodzić... O, na myśl o udręce, która stanie się twoim udziałem za moim pośrednictwem... aaach... wybacz mi. Moje słowa wypowiedziane były w takim pośpiechu."~ */
  IF ~~ THEN REPLY #2914 /* ~"Dobrze. Potrzebuję niektórych twoich rzeczy. Co masz?"~ */ GOTO 2
  IF ~~ THEN REPLY #54881 /* ~"Mam nadzieję, że tak. Mam kilka pytań do ciebie..."~ */ GOTO 7
  IF ~~ THEN REPLY #54882 /* ~"Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 99.0
  SAY #54883 /* ~"Z daleka wyczuwam w tobie smród zdrady, czuję i słyszę, jak nadchodzą moi bracia, aby zabrać mego ducha z powrotem do Baator... Wynocha, krzywoprzysięzco! Dałem ci wszystko, co mogłem! Nie mogę dać ci więcej!"~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54884 /* ~"Czy napewno nie masz już nic więcej?"~ */ GOTO 2
  IF ~~ THEN REPLY #54885 /* ~"Mam po prostu jeszcze kilka pytań..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54886 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54887 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54888 /* ~"Żegnaj więc."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.4
  SAY #54889 /* ~Bies zastyga w bezruchu. "Eee... nic wartościowego. Może jakiś banalny czar, może jakąś błyskotkę... jeżeli naprawdę ich potrzebujesz, to tak, możesz je mieć... w przeciwnym razie..."~ */
  IF ~~ THEN REPLY #54890 /* ~"Co masz?"~ */ GOTO 3
  IF ~~ THEN REPLY #54891 /* ~"Nie ważne. Po prostu odpowiedz mi na parę pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54892 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54893 /* ~"Nie ma o czym mówić. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54894 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #54895 /* ~"Fe! Po trzykroć bądź przeklęty, śmiertelniku! Lepiej się módl, żeby deva miał w swych żyłach wieczność, bo jeśli nie ma, to dopilnuję, abyś mi zapłacił w naturze, tylko że to nie magii będę oczekiwał jako zapłaty... Urkhhhh... ugnnnhhh... Nie, nie, nie chciałem niczyjej krzywdy... Wycofuję te niemądre słowa... Nie chciałem niczyjej krzywdy..."~ */
  IF ~~ THEN REPLY #54896 /* ~"Dobrze. Dawaj to. Już."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54897 /* ~"Jeżeli ty ich nie potrzebujesz, Rozdwojony Języku, mnie mogłyby się przydać."~ */ GOTO 5
  IF ~~ THEN REPLY #54898 /* ~"Nie ma o czym mówić, Rozdwojony Języku. Odpowiedz mi zamiast tego na kilka pytań..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54899 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54900 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54901 /* ~"Żegnaj więc."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0
  SAY #54902 /* ~"Przeklęty, wykorzystujący sytuację... Oczywiście, możesz spojrzeć na moje towary. Co w szczególności cię interesuje?"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54903 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54904 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54905 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54906 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54907 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54908 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54909 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #54910 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54911 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54912 /* ~"Żadne. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54913 /* ~"Żadne. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #54914 /* ~"Aaach! Zawsze mogę ich używać! Mogę ich użyć zwłaszcza przeciwko tej diabelskiej hordzie, która przez ciebie doprowadzona została pod moje drzwi."~ */
  IF ~~ THEN REPLY #54915 /* ~"To fatalnie. W takim razie daj mi je."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54916 /* ~"W takim razie pozwolę ci je zatrzymać."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #54917 /* ~"Fe! Twoja szczodrość przypomina mi po trzykroć przeklęte devy Elizjum. Czego więcej ci potrzeba od biednego Fhjulla?"~ */
  IF ~~ THEN REPLY #54918 /* ~"Skoro już o tym mowa, to chcę zobaczyć twoje towary."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54919 /* ~"Po prostu odpowiedzi na kilka pytań..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54920 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54921 /* ~"Nic na razie. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54922 /* ~"Nic na razie. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.2 4.7 6.1 9.0 10.0 11.0 12.0 13.7 14.7 15.7 16.7 17.7 18.7 19.7 20.13 21.2 22.2 23.1 24.0 25.0
  SAY #54923 /* ~Zgrzyta zębami. "W czym jeszcze mógłbym ci służyć?"~ */
  IF ~  Global("Curst_Portal","GLOBAL",0)
~ THEN REPLY #54924 /* ~"Jak mam wydostać się z tego krateru?"~ */ DO ~SetGlobal("Curst_Portal","GLOBAL",1)
~ JOURNAL #66806 /* ~Rozdwojony-Język powiedział, że portal prowadzący poza krater, dzięki któremu mógłbym powrócić do Klątwy, znajduje się pod kością ogonową wielkiego szkieletu. Myśl o tym, że bramą mojej podróży będzie otwór odbytowy zdawała się wprawiać biesa w znakomity nastrój.~ */ GOTO 9
  IF ~  Global("Curst_Portal","GLOBAL",1)
~ THEN REPLY #54925 /* ~"Powtórz, jak mogę się stąd wydostać?"~ */ GOTO 9
  IF ~~ THEN REPLY #54926 /* ~"Opowiedz mi o Triasie."~ */ GOTO 10
  IF ~~ THEN REPLY #54927 /* ~"Więc czemu baatezu cię ścigają?"~ */ GOTO 11
  IF ~~ THEN REPLY #54928 /* ~"Czy nie masz czegoś, czym chciałbyś... podzielić się ze mną?"~ */ GOTO 2
  IF ~~ THEN REPLY #54929 /* ~"Czemu ukrywasz się w tym kraterze?"~ */ JOURNAL #66807 /* ~Rozdwojony-Język zdradził mi, że ukrywa się we wnętrzu krateru i mieszka w wielkim szkielecie, ponieważ magia kości Ul-Gorisa chroni go przed wykryciem z użyciem czarów, i dzięki temu bies może czuć się bezpieczny przed wszelkimi prześladowcami.~ */ GOTO 12
  IF ~~ THEN REPLY #47138 /* ~"Szukam miejsca, gdzie mogę odpocząć."~ */ GOTO 101
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54931 /* ~"W tej chwili nie możesz. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54932 /* ~"W tej chwili nie możesz. Żegnaj."~ */ GOTO 8
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54931 /* ~"W tej chwili nie możesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.4 2.4 3.5 4.10 6.4 7.8 9.3 10.3 11.3 12.3 13.10 14.10 15.10 16.10 17.10 18.10 19.10 20.16 21.5 22.5 23.4
  SAY #54933 /* ~"Ha! Jakiż kłopot przywleczesz ze sobą następnym razem? Tacy jak ty zawsze wracają... Fe!"~ */
  IF ~~ THEN REPLY #54934 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #54935 /* ~"Fe... Czy to znaczy, że raz jeszcze zostawisz mnie samemu sobie? W takim razie oświadczam, nie posiadając się z radości, że portal leży pod kościstym tyłkiem tej istoty. Przeniesie cię on do tej zapadłej nory, znanej jako miasto Klątwa, skąd przybyłeś. Trudno byłoby mi wymyślić bardziej odpowiedni sposób dla twoich podróży."~ */
  IF ~~ THEN REPLY #54936 /* ~"Dziękuję. Mam kilka innych pytań..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54937 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54938 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54939 /* ~"Żegnaj więc."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #54940 /* ~"To czyhające niby-dziecko światła! Ten niegodziwy... aaach... nie życzę mu źle, jemu i jego zdradliwym, kłamliwym, gardzącym prawem sposobikom! Fe! To oszust, śmiertelniku, i nie można mu w niczym wierzyć. Oczywiście, mówię o tym z życzliwości i..." Fhjull Rozdwojony-Język spluwa na ziemię. "...uprzejmości. Jego oszukaństwa kosztowały mnie wieczność... Chyba że umrze." Jego szeroki uśmiech ma w sobie zaskakująco dużo nadziei.~ */
  IF ~~ THEN REPLY #54941 /* ~"Mam kilka innych pytań..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54942 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54943 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54944 /* ~"Żegnaj więc."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #54945 /* ~"Fe... Usiłują zrównoważyć swoje księgi, naprawić krzywdy, zapewnić, żeby wszystko było ustawione w porządku. Moje istnienie, z dala od ich wzroku, jest zmąceniem tej doskonałości, której poszukują, aby ją zarzucić na oblicze zła."~ */
  IF ~~ THEN REPLY #54946 /* ~"Mam kilka innych pytań..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54947 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54948 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54949 /* ~"Żegnaj więc."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY #54950 /* ~"To szkielet Ul-Gorisa, twórcy goristro. Są to żywe, niedźwiedziopodobne wieże oblężnicze, molochy chaosu, olbrzymie, praktycznie nie do zatrzymania, wielce odporne na magię... a z krateru, w którym znalazł śmierć, kości Ul-Gorisa emanują dużo energii, która neguje magię wykrywającą. Fe!"~ */
  IF ~~ THEN REPLY #54951 /* ~"Mam kilka innych pytań..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54952 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54953 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54954 /* ~"Żegnaj więc."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 4.0 14.1 15.1 16.1 17.1 18.1 19.0
  SAY #54955 /* ~"Fe... to Dar Nienawiści, wspaniała broń dla takich, jak ty." Chichocze do siebie. "Nie sądzę, aby ci się nadała... jest na nią nałożona klątwa. Być może raz jeszcze rozważysz..."~ */
  IF ~~ THEN REPLY #54956 /* ~"Wezmę go i tak."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 19
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54957 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54958 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54959 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54960 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54961 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54962 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #54963 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54964 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54965 /* ~"Żadne. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54966 /* ~"Żadne. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 4.1 13.1 15.2 16.2 17.2 18.2 19.1
  SAY #54967 /* ~"Ten staroć? Fe! To węzeł gordyjski. Przetnij go, a staniesz się po dwakroć takim przywódcą, jakim jesteś obecnie, he he. Oczywiście za odpowiednią cenę. Jest to cena, której na szczęście nie mogę zmienić."~ */
  IF ~~ THEN REPLY #54968 /* ~"Wezmę go i tak."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54969 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 13
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54970 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54971 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54972 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54973 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54974 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #54975 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54976 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54977 /* ~"Żadne. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54978 /* ~"Żadne. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 4.2 13.2 14.2 16.3 17.3 18.3 19.2
  SAY #54979 /* ~Wzdycha. "To jest łza węża. Włóż ją do ust, a twój pocałunek przypominać będzie pocałunek żmii, pełny jadu i nienawiści."~ */
  IF ~~ THEN REPLY #54980 /* ~"Wezmę ją."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54981 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54982 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 14
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54983 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54984 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54985 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54986 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #54987 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54988 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54989 /* ~"Żadne. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54990 /* ~"Żadne. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 4.3 13.3 14.3 15.3 17.4 18.4 19.3
  SAY #54991 /* ~"To pamiątka z moich czasów w Baator - nóż z zielonej stali Baator, jednego z najtwardszych materiałów, jaki kiedykolwiek znałem. Fe! Weź ze sobą moje dzieje i zakończmy to!"~ */
  IF ~~ THEN REPLY #54992 /* ~"Wezmę go, choć nie mam jeszcze pewności, czy to będzie wszystko."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54993 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54994 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54995 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 15
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54996 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54997 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54998 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #54999 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55000 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55001 /* ~"Żadne. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55002 /* ~"Żadne. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 4.4 13.4 14.4 15.4 16.4 18.5 19.4
  SAY #55003 /* ~"Ten rupieć? Fe! To tylko sztylet z zielonej stali Baator. Dobrze się go trzyma. Z pewnością jednak nie jest to coś, co mogłoby cię zainteresować."~ */
  IF ~~ THEN REPLY #55004 /* ~"Wezmę go i tak."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55005 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55006 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55007 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55008 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 16
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55009 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55010 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #55014 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55015 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55016 /* ~"Żadne. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55017 /* ~"Żadne. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 4.5 13.5 14.5 15.5 16.5 17.5 19.5
  SAY #55018 /* ~"To? To *kassegi*, pasożyty, które wnikają do mózgu i pożerają energię mentalną, nie dając nic w zamian... Fe! Przeklęty kontrakt! One powiększają energię mentalną, coś, co z pewnością można by wykorzystać! Bierz je! Bierz!"~ */
  IF ~~ THEN REPLY #55019 /* ~"Wezmę."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55020 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55022 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55023 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55024 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55025 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 17
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55026 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #55027 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55028 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55029 /* ~"Żadne. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55030 /* ~"Żadne. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0 15.0 16.0 17.0 18.0 21.1 22.1 23.0
  SAY #55031 /* ~"Fe! Oczywiście, że tak! Czy potrzebujesz jeszcze czegoś od swego *uniżonego* sługi?"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55032 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55033 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55034 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55035 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55036 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55037 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55038 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #55039 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55040 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55041 /* ~"Żadne. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55042 /* ~"Żadne. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 4.6 13.6 14.6 15.6 16.6 17.6 18.6 19.6 21.0 22.0
  SAY #55043 /* ~"Ech! Obedrzesz mnie ze wszystkiego, co posiadam! Chcesz zaklęcia? Fe! Oto, co mam, krwiopijco!" Błyskawicznie wykłada listę zaklęć.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55046 /* ~"Masz może Zdjęcie klątwy?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55047 /* ~"Daj mi jeszcze jedno Zdjęcie klątwy."~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55048 /* ~"Klosz niewrażliwości brzmi użytecznie. Biorę."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55049 /* ~"Czy masz jeszcze więcej Kloszy niewrażliwości?"~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55050 /* ~"A co powiesz na Nawałnicę seryjnych błyskawic?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55051 /* ~"Następna Nawałnica seryjnych błyskawic też by się przydała..."~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55052 /* ~"Nawałnica kwasu brzmi niebezpiecznie. Daj mi ją."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55053 /* ~"Nawałnica kwasu. Daj mi ją."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55054 /* ~"Nawałnica ostrzy? Nazwa robi wrażenie. Dawaj."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55055 /* ~"Daj mi następną Nawałnicę ostrzy."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55056 /* ~"Stygijska lodowa nawałnica? Brzmi zbyt niebezpiecznie, żebyś mógł ją przechowywać... najlepiej wezmę ją od ciebie."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55057 /* ~"Stygijska lodowa nawałnica? Dawaj."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55058 /* ~"Lista, którą podałeś, jest pusta."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 23
  IF ~~ THEN REPLY #55059 /* ~"Nie ma o czym mówić. Mam kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55060 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55061 /* ~"Nie ma o czym mówić. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55062 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.2 20.4 20.6 20.8 20.10
  SAY #55063 /* ~Jego dłoń znika w momencie, gdy sięga do dziwnej przestrzeni-nie-przestrzeni. Wyciąga zwój, który w dotyku wydaje się być miękką ludzką skórą, i rzuca ci go. "Fe! Bierz go i niech cię... bierz go!"~ */
  IF ~~ THEN REPLY #55064 /* ~"Dziękuję... co jeszcze masz z zaklęć?"~ */ GOTO 20
  IF ~~ THEN REPLY #55065 /* ~"Przypatrzmy się tym rzeczom raz jeszcze."~ */ GOTO 19
  IF ~~ THEN REPLY #55066 /* ~"Nie ma o czym mówić. Mam kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55067 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55068 /* ~"Nie ma o czym mówić. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55070 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.3 20.5 20.7 20.9 20.11
  SAY #55072 /* ~Pokazuje zęby w grymasie. "Z głęboką i olbrzymią radością wyznaję, że zostałem pozbawiony przez ciebie wszystkich kopii tego szczególnego zaklęcia. Fe!"~ */
  IF ~~ THEN REPLY #55073 /* ~"Jakie masz inne zaklęcia?"~ */ GOTO 20
  IF ~~ THEN REPLY #55074 /* ~"Przypatrzmy się tym rzeczom raz jeszcze."~ */ GOTO 19
  IF ~~ THEN REPLY #55075 /* ~"Nie ma o czym mówić. Mam kilka pytań."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55076 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55078 /* ~"Nie ma o czym mówić. Żegnaj."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55080 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 20.12
  SAY #55081 /* ~Fhjull Rozdwojony Język warczy opryskliwie. "Oto udało ci się zrujnować, zniszczyć, wypatroszyć jedną z najbardziej wyjątkowych bibliotek zaklęć w wieloświecie... i niech dobrze ci służą te zaklęcia. Nie mam już żadnych innych zaklęć do zaoferowania."~ */
  IF ~~ THEN REPLY #55082 /* ~"Przypatrzmy się tym rzeczom raz jeszcze."~ */ GOTO 19
  IF ~~ THEN REPLY #55083 /* ~"Zatem nie ma o czym mówić. Odpowiedz mi za to na kilka pytań..."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55084 /* ~"Żegnaj więc."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55085 /* ~"Żegnaj więc."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55086 /* ~"Żegnaj więc."~ */ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY #55087 /* ~"Ha! A więc wróciłeś! I o czym powiedział ci Słup? Czy odpowiedział na twoje nudne pytania?"~ [FFT067] */
  IF ~~ THEN REPLY #55088 /* ~"Mam tylko kilka pytań..."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #55089 /* ~"Nie ma o czym mówić. Żegnaj."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #55090 /* ~"Wrrr! Czego? CZEGO??"~ [FFT018] */
  IF ~~ THEN REPLY #55091 /* ~"Mam tylko kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #55094 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 95.0
  SAY #55095 /* ~"Fe! Ten cuchnący odór tanar'ri! Wyczuwam go na mile! Okaż szacunek memu domowi! Czy nie możesz użyć jakichś pachnideł czy kwasowych wonności, aby w nich zginął twój odór? Fe! Nigdy nie pozbędę się tego smrodu z mojego domu. Będzie przyciągać baatezu ze wszystkich sfer."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 594
END

IF ~~ THEN BEGIN 27 // from:
  SAY #55096 /* ~"Och, do mego domu wkroczył nie jakiś tam tanar'ri, ale dziwka tanar'ri... gorzej już być nie może. Proszę! Proszę! Mój dom jest twoim domem!" Macha rękami w powietrzu w geście rozpaczy. "A może by tak zaprosić całą resztę harpii z Otchłani, aby mnie dręczyły?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 28 // from: 96.0
  SAY #55097 /* ~"Fe! Ten cuchnący odór tanar'ri! Wyczuwam go na mile! Okaż szacunek memu domowi! Czy nie możesz użyć jakichś pachnideł czy kwasowych wonności, aby w nich zginął twój odór? Fe! Nigdy nie pozbędę się tego smrodu z mojego domu. Będzie przyciągać baatezu ze wszystkich sfer."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 29 // from:
  SAY #55098 /* ~"Czy przybywasz tutaj, aby mnie zabić? Zadręczyć? Jeśli tak, to wiedz, że dysponuję jeszcze sporą mocą!"~ */
  IF ~~ THEN REPLY #55100 /* ~"Nie przyszedłem, aby cię zabić."~ */ GOTO 45
  IF ~~ THEN REPLY #55101 /* ~"Nie przyszedłem, aby cię dręczyć."~ */ GOTO 44
  IF ~~ THEN REPLY #55103 /* ~"Chcę po prostu odpowiedzi na kilka pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #55104 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 98.0
  SAY #55187 /* ~"Czy wciąż musisz zasmradzać mój dom tym cuchnącym odorem tanar'ri? Pytaj i wynocha!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55188 /* ~"Opowiedz mi o Triasie."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55381 /* ~"Opowiedz mi o Triasie."~ */ GOTO 55
  IF ~~ THEN REPLY #55389 /* ~"Jak to się stało, że twoje skrzydła są w takim stanie?"~ */ GOTO 49
  IF ~~ THEN REPLY #55391 /* ~"Opowiedz mi o sobie."~ */ GOTO 56
  IF ~~ THEN REPLY #55392 /* ~"Gdzie jest to miejsce?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55394 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55397 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 64
  IF ~~ THEN REPLY #55400 /* ~"Co robisz?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55404 /* ~"Potrzebuję pomocy."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55406 /* ~"Opowiedz mi raz jeszcze o tym Słupie i jak do niego dotrzeć."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 98 96 95 99 100 even though they appear after this state */
~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN BEGIN 31 // from:
  SAY #55413 /* ~"Taaaak się cieszę, że znów was widzę... Byłbym równie zadowolony, gdybyście tak zwinęli się w kłębek i zdechli."~ [FFT044A] */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55416 /* ~"Opowiedz mi o Triasie."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55419 /* ~"Opowiedz mi o Triasie."~ */ GOTO 55
  IF ~~ THEN REPLY #55422 /* ~"Opowiedz mi o sobie."~ */ GOTO 55
  IF ~~ THEN REPLY #55423 /* ~"Jak to się stało, że twoje skrzydła są w takim stanie?"~ */ GOTO 49
  IF ~~ THEN REPLY #55424 /* ~"Gdzie jest to miejsce?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55425 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55426 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 64
  IF ~~ THEN REPLY #55428 /* ~"Co robisz?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55430 /* ~"Potrzebuję pomocy."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55433 /* ~"Opowiedz mi raz jeszcze o tym Słupie i jak do niego dotrzeć."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 97.0
  SAY #55440 /* ~"Czego chcesz ode mnie, jak tym razesz chcesz mnie okpić?"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55441 /* ~"Opowiedz mi o Triasie."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55443 /* ~"Opowiedz mi o Triasie."~ */ GOTO 55
  IF ~~ THEN REPLY #55444 /* ~"Opowiedz mi o sobie."~ */ GOTO 56
  IF ~~ THEN REPLY #55446 /* ~"Jak to się stało, że twoje skrzydła są w takim stanie?"~ */ GOTO 49
  IF ~~ THEN REPLY #55447 /* ~"Gdzie jest to miejsce?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55448 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55451 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 64
  IF ~~ THEN REPLY #55455 /* ~"Co robisz?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55457 /* ~"Potrzebuję pomocy."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55460 /* ~"Opowiedz mi raz jeszcze o tym Słupie i jak do niego dotrzeć."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 97 98 96 95 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 33 // from:
  SAY #55539 /* ~"He! Kto idzie?! Czy przybyłeś mnie zabić?! Dręczyć mnie? Jeśli tak, to wiedz, że wciąż dysponuję wielką mocą."~ [FFT066] */
  IF ~~ THEN REPLY #55541 /* ~"Czy ty jesteś Fhjull Rozdwojony Język?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55543 /* ~"Fe! Oczywiście, że tak! Na pewno było ci to wiadomym, skoro spodobała ci się właśnie *ta* czaszka potwora, ze wszystkich czaszek poniewierających się po nieskończonych Krainach Zewnętrznych... A może to po prostu ślepy los podsyła mi pod drzwi idiotę?" Można odnieść wrażenie, że nagle przychodzi mu do głowy jakaś myśl. "Musisz mi przysiąc, że NIKOMU nie powiesz, że wiesz, gdzie ja jestem!"~ */
  IF ~~ THEN REPLY #55554 /* ~Prawda: "Przysięgam."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fhjull_1","GLOBALLaw",1)
~ GOTO 35
  IF ~~ THEN REPLY #55555 /* ~"Nie."~ */ GOTO 36
  IF ~~ THEN REPLY #61261 /* ~Kłamstwo: "Przysięgam."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-1)
SetGlobal("Lawful_Fhjull_1","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.2
  SAY #55556 /* ~Wyraźnie oddycha z ulgą. "A w jaki sposób udało ci się mnie odnaleźć, co?"~ */
  IF ~~ THEN REPLY #55558 /* ~"Deva Trias powiedział, że będziesz umiał odpowiedzieć mi na kilka pytań."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #55560 /* ~"No to bądź przeklęty! Zobaczysz, czy się przejmuję! Fe! W jaki sposób udało ci się mnie odnaleźć?!"~ */
  IF ~~ THEN REPLY #55562 /* ~"Deva Trias powiedział, że będziesz umiał odpowiedzieć mi na kilka pytań."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #55563 /* ~Sztywnieje. "Trias? Trias *Zdrajca* przysłał cię tutaj?" Jego szpony zwierają się i rozwierają. "To już krańcowa zniewaga! Ten obłudny bękart! Zabij go, a wynagrodzę ci to wszystkim, co mam do dyspozycji! Obedrzyj go ze skóry i przynieś ją mnie, żebym mógł się nią okrywać niczym płaszczem... hurkkk!"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMEGETHIT)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #55565 /* ~"To znaczy... nie, nie... nie krzywdź devy. Źle byłoby uczynić coś takiego... Pomyliłem się. Tak, pomyliłem się."~ */
  IF ~~ THEN REPLY #55567 /* ~"Co Trias ci uczynił?"~ */ GOTO 39
  IF ~~ THEN REPLY #55568 /* ~"To było nawet zajmujące, ale potrzebuję odpowiedzi na kilka pytań."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 30.0 31.0 32.0 38.0 43.0 46.0 47.0 56.0 87.0
  SAY #55569 /* ~"Fe! Lata służby jako Prokurator Generalny Piekieł! Pracowitość i organizacja. Nigdy nie poddawałem w wątpliwość słów przełożonych. Robiłem WSZYSTKO, o co mnie proszono. Karałem tych niżej mnie najokrutniejszymi i najbardziej pomysłowymi metodami, kiedykolwiek zawodzili."~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #55571 /* ~"WTEDY... jedna nieostrożność i wszystko się zawaliło! Wszystko przez ŚLEPY TRAF. CHAOS. PRZYPADEK. A niższe rasy zastanawiają się, dlaczego baatezu pragną, aby wieloświat był uporządkowany." Przerywa i syczy ze złości. "Deva kłamał. *Kłamał*. Trias zdrajca podstępem namówił mnie do podpisania kontraktu i ja, zaślepiony możliwością pojmania go, wszedłem prosto w jego pułapkę."~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #55573 /* ~"Jeśli on umrze, kontrakt wygaśnie... ale nie byłem w stanie go odnaleźć, a gdyby nawet, to jak miałbym wyrządzić mu krzywdę?! Co mam robić? Nawet te zdradliwe myśli palą boleśnie mój umysł. Ta krótkowzroczna chciwość kosztowała mnie resztę stuleci pobłażania i pogrzebała mnie w tej kloace dobrej woli. Ble."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~Odnalazłem Fhjulla Rozdwojony-Język, biesa-filantropa. Wygląda na to, że ma jakieś zobowiązania wobec Triasa, którego nazywa namiętnie Triasem Zdrajcą. Fhjull został skazany na świadczenie bliźnim dobrych uczynków i niesienie pomocy potrzebującym. Całkiem znośna dola, ale bies nie sprawia wrażenia zachwyconego swoim położeniem.~ */ GOTO 42
  IF ~  NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~Odnalazłem Fhjulla Rozdwojony-Język, biesa-filantropa. Wygląda na to, że ma jakieś zobowiązania wobec Triasa, którego nazywa namiętnie Triasem Zdrajcą. Fhjull został skazany na świadczenie bliźnim dobrych uczynków i niesienie pomocy potrzebującym. Całkiem znośna dola, ale bies nie sprawia wrażenia zachwyconego swoim położeniem.~ */ EXTERN ~DVHAIL~ 153
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #55574 /* ~"Noszę teraz klątwę i muszę czynić dobro i pomagać tym, którzy pomocy potrzebują. Fe! Niech na Triasa spadnie wieczność klątw! Niech ta jego błogosławiona pomoc się zasyfi! Niech całe sterty łajna Maladomini wyleją mu się na głowę!" Mówi z patosem jeszcze przez chwilę, a potem z powrotem zwraca się do ciebie i mówi przez zaciśnięte zęby. "Mój kontrakt z devą wymaga, abym teraz zapytał cię, czego sobie życzysz. Czy przychodzisz, aby mnie zabić? Zadręczyć?"~ */
  IF ~~ THEN REPLY #55590 /* ~"Przychodzę w poszukiwaniu wiedzy."~ */ GOTO 43
  IF ~~ THEN REPLY #55575 /* ~"Nie przyszedłem, aby cię dręczyć."~ */ GOTO 44
  IF ~~ THEN REPLY #55591 /* ~"Nie przyszedłem, aby cię zabić."~ */ GOTO 45
  IF ~~ THEN REPLY #55592 /* ~"Nie. Tak naprawdę, to już wychodzę."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.2 38.1 42.0 50.2 55.0 57.2 72.7 77.7 79.7 83.1 84.1 88.1 92.1 93.2 94.0
  SAY #55593 /* ~"Och, WSPANIALE."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55594 /* ~"Opowiedz mi o Triasie."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55595 /* ~"Opowiedz mi o Triasie."~ */ GOTO 55
  IF ~~ THEN REPLY #55596 /* ~"Opowiedz mi o sobie."~ */ GOTO 56
  IF ~~ THEN REPLY #55598 /* ~"Jak to się stało, że twoje skrzydła są w takim stanie?"~ */ GOTO 49
  IF ~~ THEN REPLY #55600 /* ~"Gdzie jest to miejsce?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55601 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55603 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 64
  IF ~~ THEN REPLY #55606 /* ~"Co robisz?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55607 /* ~"Potrzebuję pomocy."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55609 /* ~"Opowiedz mi raz jeszcze o tym Słupie i jak do niego dotrzeć."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 29.1 42.1
  SAY #55614 /* ~"Fe! Zobaczymy, zobaczymy! Jeśli nie masz zamiaru mnie zabić albo zadać mi ból, obawiam się, że udręka ma bardziej subtelną naturę... niewątpliwie zadaje najgorszy ból ze wszystkich."~ */
  IF ~~ THEN REPLY #55615 /* ~"Szukam po prostu odpowiedzi na kilka pytań..."~ */ GOTO 47
  IF ~~ THEN REPLY #55617 /* ~"W porządku, nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 29.0 42.2
  SAY #55620 /* ~"Fe! Jeślibyś zdołał! Wówczas udałoby ci się położyć kres istnieniu tej pustej egzystencji!"~ */
  IF ~~ THEN REPLY #55622 /* ~"Szukam po prostu odpowiedzi na kilka pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55623 /* ~"Co sprawia, że twoje życie jest tak marne?"~ */ GOTO 48
  IF ~~ THEN REPLY #55624 /* ~"Więc nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0 49.2 51.1 53.1 54.4 56.3 63.1 71.0 73.7 74.7 76.7 78.7 82.2 86.1 90.0
  SAY #55626 /* ~"Jak to się dzieje, że KRETYNI mówią tak dużo?" Macha ręką. "Mów. Mów. Fe!"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55627 /* ~"Opowiedz mi o Triasie."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55630 /* ~"Opowiedz mi o Triasie."~ */ GOTO 55
  IF ~~ THEN REPLY #55632 /* ~"Opowiedz mi o sobie."~ */ GOTO 56
  IF ~~ THEN REPLY #55633 /* ~"Jak to się stało, że twoje skrzydła są w takim stanie?"~ */ GOTO 49
  IF ~~ THEN REPLY #55634 /* ~"Gdzie jest to miejsce?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55635 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55636 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 64
  IF ~~ THEN REPLY #55640 /* ~"Co robisz?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55641 /* ~"Potrzebuję pomocy."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55643 /* ~"Opowiedz mi raz jeszcze o tym Słupie i jak do niego dotrzeć."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.0 52.1 60.1 70.3 75.7 80.13 81.2 85.0 87.2 89.0 91.1
  SAY #55649 /* ~"Fe. Mów. Mów, co masz do powiedzenia."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55651 /* ~"Opowiedz mi o Triasie."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55652 /* ~"Opowiedz mi o Triasie."~ */ GOTO 55
  IF ~~ THEN REPLY #55654 /* ~"Opowiedz mi o sobie."~ */ GOTO 56
  IF ~~ THEN REPLY #55656 /* ~"Jak to się stało, że twoje skrzydła są w takim stanie?"~ */ GOTO 49
  IF ~~ THEN REPLY #55658 /* ~"Gdzie jest to miejsce?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55659 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55661 /* ~"Powiedziano mi, że ty będziesz wiedział coś na temat mojej śmiertelności. Ukradziono mi ją."~ */ GOTO 64
  IF ~~ THEN REPLY #55663 /* ~"Co robisz?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55665 /* ~"Potrzebuję pomocy."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55667 /* ~"Opowiedz mi raz jeszcze o tym Słupie i jak do niego dotrzeć."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #55671 /* ~Przewraca oczami. "Gdyby dane ci było widzieć chwałę Baator, przechadzać się po ciemnych pałacach i odwiedzać wyjące stalowe miasta, ukryte pod śmierdzącymi wyziewami, wtedy nie słyszałbym takich pytań od ciebie. Fe!"~ */
  IF ~~ THEN REPLY #55672 /* ~"W porządku. Odpowiedz mi na kilka pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55674 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.2 31.3 32.3 43.3 46.3 47.3
  SAY #55676 /* ~"O, tak. Czyż nie są one piękne...? Fe! Przed wygnaniem odarto mnie przede wszystkim z nich. Zanim zostałem zmuszony uciekać z płonących gmachów mego ludu, skrzydła zostały mi odebrane jako trofea przez jakiegoś *abiszai* marnego pochodzenia i użyte w charakterze chorągwi w Wojnie Krwi. Wyrwano mi rogi z czaszki; jeden wydrążono, aby służył jako róg do picia dla mego Pana Bel, niech jego imię będzie przeklęte we wszystkich Sferach."~ */
  IF ~~ THEN REPLY #55677 /* ~"Dlaczego tak się stało?"~ */ GOTO 55
  IF ~~ THEN REPLY #55678 /* ~"Co możesz mi powiedzieć o Wojnie Krwi?"~ */ GOTO 84
  IF ~~ THEN REPLY #55679 /* ~"Odpowiedz mi jeszcze na kilka innych pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55680 /* ~"Dziękuję... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 30.4 31.4 32.4 43.4 46.4 47.4
  SAY #55682 /* ~"Fe. Przeklęty krater w Krainach Zewnętrznych, który odzwierciedla pustkę i nicość mojego życia. Fe. Potrzebuję trochę. Szpik kostny z tego stworzenia dostarcza mi jedzenia, a szczególna energia tego miejsca uniemożliwia rozmaitym wróżbiarzom odnalezienie mnie... choć najwyraźniej idioci wciąż mogą odnaleźć drogę do mnie."~ */
  IF ~~ THEN REPLY #55684 /* ~"Co to za stwór?"~ */ GOTO 85
  IF ~~ THEN REPLY #55686 /* ~"Co sprawia, że twoje życie jest tak puste?"~ */ GOTO 86
  IF ~~ THEN REPLY #55688 /* ~"Odpowiedz mi jeszcze na kilka innych pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #55690 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 30.5 31.5 32.5 43.5 46.5 47.5 93.0
  SAY #55693 /* ~Po raz pierwszy bacznie ci się przygląda. "Wspomnienia biegną w mym umyśle, niemal tak jak u człowieka, niczym puste kaniony. Wielem stworzeń napotkał w mym życiu nieśmiertelnym... choć nie sądzę, abym spotkał wówczas i ciebie."~ */
  IF ~~ THEN REPLY #55695 /* ~"Mów dalej."~ */ GOTO 57
  IF ~~ THEN REPLY #55696 /* ~"Odpowiedz mi jeszcze na kilka innych pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55698 /* ~"W takim razie nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 30.7 31.7 32.7 43.7 46.7 47.7
  SAY #55700 /* ~"Wiodłem sobie po prostu żywot pełen ogłuszającego bólu i tragicznej samotności, a tu nagle do tego krateru życia wkraczasz bez zaproszenia ty. Krater to taka metafora mojego życia, mojego istnienia, blady cień domostw, które niegdyś należały do mnie."~ */
  IF ~~ THEN REPLY #55701 /* ~"Co ci się przydarzyło?"~ */ GOTO 87
  IF ~~ THEN REPLY #55702 /* ~"Odpowiedz mi jeszcze na kilka innych pytań..."~ */ GOTO 47
  IF ~~ THEN REPLY #55703 /* ~"No dobrze. Samowciągające przemówienie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 30.8 31.8 32.8 43.8 46.8 47.8
  SAY #55704 /* ~Wydaje zduszony charkot. "Mam kilka... bardzo niewiele... przedmiotów, które uzbierałem przez całe te lata. Są... cenne dla mnie... ale jeśli ich potrzebujesz..."~ */
  IF ~~ THEN REPLY #55705 /* ~"No jasne. Zobaczmy, co tam masz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 72
  IF ~~ THEN REPLY #55706 /* ~"Odpowiedz mi jeszcze na kilka innych pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55707 /* ~"Nic. Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 30.9 31.9 32.9 43.9 46.9 47.9
  SAY #55708 /* ~"Czego pragniesz się dowiedzieć? Jak tam się dostać? Co to jest? Co? Co?!"~ */
  IF ~~ THEN REPLY #55709 /* ~"Powiedz mi, co to jest."~ */ GOTO 89
  IF ~~ THEN REPLY #55710 /* ~"Powiedz mi, jak się tam dostać."~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55711 /* ~"A jak stamtąd wrócić, kiedy się tam już dostanę?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55713 /* ~"Jak mam wrócić spod Słupa?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~~ THEN REPLY #55716 /* ~"Odpowiedz mi jeszcze na kilka innych pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55721 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 30.1 31.1 31.2 32.1 43.1 46.1 47.1 49.0 56.1 87.1
  SAY #55718 /* ~"Fe! Powiedziałem już wszystko, co miałem zamiar powiedzieć, na temat Zdrajcy. On to skazał mnie na taki żywot, i to jego flaki ujrzę, jak opinają Wrota Poranka niczym niebiańska harfa... Nie... Nie... Nie wolno krzywdzić devy. Przeklęty!"~ */
  IF ~~ THEN REPLY #55724 /* ~"Odpowiedz mi jeszcze na kilka innych pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #55726 /* ~"Rozumiem... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 30.3 32.2 43.2 46.2 47.2
  SAY #55732 /* ~"Byłem kiedyś jednym z najwspanialszych Prokuratorów Generalnych w Baator... a potem spotkało mnie niepowodzenie. Fortuna się odwróciła, całkowicie. Takie rzeczy sprawiają, że najbardziej nienawidzę ślepego trafu i chaosu wieloświata."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55734 /* ~"Co ci się przydarzyło?"~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55737 /* ~"Co ci się przydarzyło?"~ */ GOTO 55
  IF ~~ THEN REPLY #55740 /* ~"Dlaczego musiałeś odejść?"~ */ GOTO 90
  IF ~~ THEN REPLY #55741 /* ~"Odpowiedz mi jeszcze na kilka innych pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55744 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 51.0
  SAY #55746 /* ~Fhjull Rozdwojony Język wzrusza ramionami. "Wszyscy wydajecie mi się podobni do siebie... i myślę, że zapamiętałbym twoje naznaczone bliznami ciało... jest bardzo podobne do oddychających obrazów, które zapełniają galerię skór Pana Bel w Baator, oprócz tego, że mniej jest wdzięku, a więcej namiętności w rysach blizn."~ */
  IF ~~ THEN REPLY #55747 /* ~"Zignorujmy blizny i porozmawiajmy znów o mojej śmiertelności, dobrze?"~ */ GOTO 64
  IF ~~ THEN REPLY #55748 /* ~"Mów dalej..."~ */ GOTO 58
  IF ~~ THEN REPLY #55749 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #55750 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #55751 /* ~"Te blizny wymagały dużej przemocy, sięgającej dających się zaakceptować poziomów, lecz wykonanie jest tak nieokrzesane, jakby to zrobił tanar'ri, nie dbając przy tym o to, czy ból odbiorcy się wzmoże, czy nie. Artysta baatezu byłby o wiele bardziej przywiązany do śledzenia ścieżek bólu na ciele. Niektóre z tych ran wyglądają na czyste rany śmiertelne, inne sprawiają wrażenie, że jakiś ślepy rzeźnik rąbał ludzkie steki."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 59
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #60449 /* ~"Co...?"~ */ DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #55753 /* ~"Fe. Ludzka sztuka przyprawia mnie czasem o chorobę. Taki potencjał - i wszystko zmarnowane."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 193
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #55754 /* ~"Fe. Ludzka sztuka przyprawia mnie czasem o chorobę. Taki potencjał - i wszystko zmarnowane."~ */
  IF ~~ THEN REPLY #55755 /* ~"Zignorujmy blizny i porozmawiajmy znów o mojej śmiertelności, dobrze?"~ */ GOTO 64
  IF ~~ THEN REPLY #55756 /* ~"Mam kilka pytań..."~ */ GOTO 47
  IF ~~ THEN REPLY #55757 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #55758 /* ~"Fe! Powiedzieć, że tanar'ri są nieokrzesane to obraza dla nieokrzesania. Każda niższa rasa, która delektuje się chaosem i daje się ciągnąć i topić w jego stojących wodach, nazywając to 'złem' - nie jest wcale żadną rasą. To bestie."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 194
END

IF ~~ THEN BEGIN 62 // from:
  SAY #55759 /* ~"Fe i po dwakroć fe! Bestie tanar'ri chcą zedrzeć ład i porządek z oblicza zła! To niewybaczalne! Nie do zniesienia! Ja nie mogę..."~ */
  IF ~~ THEN DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ EXTERN ~DGRACE~ 195
END

IF ~~ THEN BEGIN 63 // from:
  SAY #55760 /* ~"Fe! Mówisz tak, bo po prostu jesteś... czym jesteś." Porusza brwiami, spoglądając na nią. Macha ręką, jakby próbując wszystko zbyć. "Przynajmniej wciąż wolno mi być cynicznym."~ */
  IF ~~ THEN REPLY #55761 /* ~"Wspaniale. Wróćmy jednak do dyskusji i mojej śmiertelności, zamiast gadać o moich bliznach."~ */ GOTO 64
  IF ~~ THEN REPLY #55762 /* ~"Szukam odpowiedzi na kilka pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55763 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 30.6 31.6 32.6 43.6 46.6 47.6 57.0 60.0 63.0
  SAY #55764 /* ~"Bardzo dobrze, bardzo dobrze." Drapie się po głowie. "Jeśli mnie pamięć nie myli - a jest tego tyle, że może mnie mylić, dzięki temu przeklętemu devie! - to słyszałem o takim przypadku jak twój. Dzięki temu jesteś nieśmiertelny, czyż nie?"~ */
  IF ~~ THEN REPLY #55765 /* ~"Tak."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #55766 /* ~"Jeśli tak, to sama śmierć nie jest już niczym świętym. Fe. W moich czasach śmiertelnicy byli śmiertelni i znali swoje miejsce w szeregu... teraz każdy wraz ze swą matką poznał już nudę wieczności. Powinniśmy się zebrać i zaprosić wszystkich ze Sfer i zaoferować im kontrakty nieśmiertelności... zaoszczędziłoby to nam, ciężko pracującym baatezu, mnóstwa wysiłku. Fe."~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #55767 /* ~"Wiesz, że gdyby każdy był nieśmiertelny, cały ten system penitencjarny mieściłby się w tej osławionej cuchnącej rzeczce. Fe. Nieśmiertelność nie jest zabawką, która przeznaczona jest dla tak niesfornych dzieci, jak ty."~ */
  IF ~~ THEN REPLY #55768 /* ~"Nieważne. Powiedz mi, co wiesz o mojej śmiertelności."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55769 /* ~"Fe... jak mówiłem, przypominam sobie, że słyszałem o miejscu nazywanym Fortecą Żalu." Zastanawia się przez chwilę. "Tak... właśnie tak."~ */
  IF ~~ THEN REPLY #55770 /* ~"Jak tam dotrzeć?"~ */ GOTO 68
  IF ~~ THEN REPLY #55771 /* ~"Co ci wiadomo o tym miejscu?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #55772 /* ~Uśmiecha się szeroko. "Z przyjemnością informuję, że NIE WIEM. Nic a nic! Nie mogę pomóc ci tam się dostać, przez co moja dusza odczuwa rozkoszny dreszczyk zadowolenia. Nie. Ja. Nie. Mogę. Ci. Pomóc. Och, jak bardzo tęskniłem, aby móc wypowiedzieć te słowa. Jakże słodko one sma..."~ */
  IF ~  Global("Know_Pillar","AR1101",0)
~ THEN REPLY #55773 /* ~"Czy znasz kogoś, kto wie?"~ */ DO ~AddexperienceParty(350000)
SetGlobal("Know_Pillar","AR1101",1)
~ GOTO 69
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #66919 /* ~"Czy znasz kogoś, kto wie?"~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #55774 /* ~"Ejże! Wystarczy tego krzyżowego ognia pytań! Tak, tak, znam *kogoś*, kto mógłby wiedzieć... w Baator znajduje się słup zdrajców, kłamców... i mędrców. Pomimo swej natury ich wiedza jest znaczna. Być może oni wiedzą, gdzie możesz odnaleźć Fortecę Żalu."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #55775 /* ~"Jak dostać się do Baator?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ JOURNAL #66809 /* ~Rozdwojony-Język oznajmił mi, że słup utoczony z mędrców, kłamców i zdrajców może wiedzieć coś na temat mojej zagubionej śmiertelności. Pod lewym ramieniem gigantycznego kościotrupa znajduje się portal, przez który będę mógł dostać się do Sfery Baator.~ */ EXTERN ~DMORTE~ 595
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55776 /* ~"Jak dostać się do Baator?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 54.1 69.1
  SAY #55777 /* ~"Za moim domem znajduje się portal. Leży w ręku tego gigantycznego stwora. Przejdź pod łukiem utworzonym przez lewe ramię szkieletu, a przeniesiesz się do Słupa Czaszek. Teraz uaktywnię dla ciebie portal."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55778 /* ~"A jak wrócić?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Bies powiedział mi również, jak mogę powrócić z okolic Słupa - wystarczy tylko, jeśli znajdę tam jakąś rzecz bardzo powszechną dla tutejszej Sfery, a dzięki niej będę mógł wrócić, skąd przybyłem.~ */ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55779 /* ~"Jak mam wrócić spod Słupa?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Bies powiedział mi również, jak mogę powrócić z okolic Słupa - wystarczy tylko, jeśli znajdę tam jakąś rzecz bardzo powszechną dla tutejszej Sfery, a dzięki niej będę mógł wrócić, skąd przybyłem.~ */ GOTO 71
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #55780 /* ~"Jak mam wrócić spod Słupa?"~ */ GOTO 94
  IF ~~ THEN REPLY #55781 /* ~"Dziękuję. Mam tu jeszcze kilka pytań..."~ */ GOTO 47
  IF ~~ THEN REPLY #61262 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 54.2 54.3 70.0 70.1
  SAY #55782 /* ~"Co? Wrócić? Nie pomyślałem o tym. Aby wrócić z Baator, musisz mieć wiedzę i kawałek ostrego obsydianu, do zacięcia się w język. Wiedzę otrzymasz ze Słupa Czaszek. Ale nie ma powodu, by tutaj wracać. A ja nie mam ochoty więcej cię oglądać."~ */
  IF ~~ THEN REPLY #55783 /* ~"Dziękuję. Mam kilka innych pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55784 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 53.0
  SAY #55785 /* ~Mówi opryskliwie. "Nie noszę się z zamiarem uduszenia was i pozostawienia waszych zwłok trelonom."~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55786 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55787 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55788 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55789 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55790 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55791 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55792 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55793 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 43
  IF ~~ THEN REPLY #55794 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 74.1 75.1 76.1 77.1 78.1 79.0
  SAY #55795 /* ~"Fe... to Dar Nienawiści, wspaniała broń dla takich, jak ty." Chichocze do siebie. "Nie sądzę, aby ci się nadała... jest na nią nałożona klątwa. Być może raz jeszcze rozważysz..."~ */
  IF ~~ THEN REPLY #55796 /* ~"Wezmę go i tak."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 79
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55797 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55798 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55799 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55800 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55801 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55802 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55803 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 46
  IF ~~ THEN REPLY #55804 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1 73.1 75.2 76.2 77.2 78.2 79.1
  SAY #55805 /* ~"Ten staroć? Fe! To węzeł gordyjski. Przetnij go, a staniesz się po dwakroć takim przywódcą, jakim jesteś obecnie, he he. Oczywiście za odpowiednią cenę. Jest to cena, której na szczęście nie mogę zmienić."~ */
  IF ~~ THEN REPLY #55806 /* ~"Wezmę go i tak."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55807 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 73
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55808 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55809 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55810 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55811 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 78
  IF ~~ THEN REPLY #55812 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55813 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 46
  IF ~~ THEN REPLY #55814 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2 73.2 74.2 76.3 77.3 78.3 79.2
  SAY #55815 /* ~Wzdycha. "To jest łza węża. Włóż ją do ust, a twój pocałunek przypominać będzie pocałunek żmii, pełny jadu i nienawiści."~ */
  IF ~~ THEN REPLY #55816 /* ~"Wezmę ją."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55817 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55818 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 74
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55819 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55820 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55821 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55822 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55823 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 47
  IF ~~ THEN REPLY #55824 /* ~"Nic. Żegnam..."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3 73.3 74.3 75.3 77.4 78.4 79.3
  SAY #55825 /* ~"To pamiątka z moich czasów w Baator - nóż z zielonej stali Baator, jednego z najtwardszych materiałów, jaki kiedykolwiek znałem. Fe! Weź ze sobą moje dzieje i zakończmy to!"~ */
  IF ~~ THEN REPLY #55826 /* ~"Wezmę go, choć nie mam jeszcze pewności, czy to będzie wszystko."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55827 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55828 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55829 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 75
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55830 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55831 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55835 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55838 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 46
  IF ~~ THEN REPLY #55840 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4 73.4 74.4 75.4 76.4 78.5 79.4
  SAY #55851 /* ~"Ten rupieć? Fe! To tylko sztylet z zielonej stali Baator. Dobrze się go trzyma. Z pewnością jednak nie jest to coś, co mogłoby cię zainteresować."~ */
  IF ~~ THEN REPLY #55852 /* ~"Wezmę go i tak."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55854 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55856 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55859 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55861 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 76
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55863 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55866 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55868 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 43
  IF ~~ THEN REPLY #55869 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 72.5 73.5 74.5 75.5 76.5 77.5 79.5
  SAY #55872 /* ~"To? To *kassegi*, pasożyty, które wnikają do mózgu i pożerają energię mentalną, nie dając nic w zamian... Fe! Przeklęty kontrakt! One powiększają energię mentalną, coś, co z pewnością można by wykorzystać! Bierz je! Bierz!"~ */
  IF ~~ THEN REPLY #55874 /* ~"Wezmę."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55878 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55880 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55881 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55883 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55885 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 77
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55888 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55889 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 46
  IF ~~ THEN REPLY #55891 /* ~"Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 73.0 74.0 75.0 76.0 77.0 78.0 81.1 82.1 83.0
  SAY #55893 /* ~"Fe! Oczywiście, że tak! Czy potrzebujesz jeszcze czegoś od swego *uniżonego* sługi?"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55896 /* ~Obejrzyj dokładnie topór o przerażającym wyglądzie: "Co to jest?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55899 /* ~Obejrzyj dokładnie zasupłany sznur: "Co to jest?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55903 /* ~Obejrzyj dokładnie zieloną pastylkę: "Co to jest?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55904 /* ~Obejrzyj dokładnie nóż z zielonej stali: "Co to jest?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55908 /* ~Obejrzyj dokładnie zielonkawy sztylet: "Co to jest?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55911 /* ~Obejrzyj dokładnie wijące się robaki: "Co to jest?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55916 /* ~"Czy nie masz przypadkiem jakichś zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55919 /* ~"Nie ma o czym mówić. Odpowiedz mi za to na kilka pytań."~ */ GOTO 43
  IF ~~ THEN REPLY #55920 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 72.6 73.6 74.6 75.6 76.6 77.6 78.6 79.6 81.0 82.0
  SAY #55922 /* ~"Ech! Obedrzesz mnie ze wszystkiego, co posiadam! Chcesz zaklęcia? Fe! Oto, co mam, krwiopijco!" Błyskawicznie wykłada listę zaklęć.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55929 /* ~"Masz może Zdjęcie klątwy?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55932 /* ~"Masz może Zdjęcie klątwy?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55933 /* ~"Klosz niewrażliwości brzmi użytecznie. Biorę."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55934 /* ~"Czy masz jeszcze więcej Kloszy niewrażliwości?"~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55939 /* ~"A co powiesz na Nawałnicę seryjnych błyskawic?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55943 /* ~"Następna Nawałnica seryjnych błyskawic też by się przydała..."~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55945 /* ~"Nawałnica kwasu brzmi niebezpiecznie. Daj mi ją."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55946 /* ~"Nawałnica kwasu. Daj mi ją."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55947 /* ~"Nawałnica ostrzy? Nazwa robi wrażenie. Dawaj."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55948 /* ~"Daj mi następną Nawałnicę ostrzy."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55949 /* ~"Stygijska lodowa nawałnica? Brzmi zbyt niebezpiecznie, żebyś mógł ją przechowywać... najlepiej wezmę ją od ciebie."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55950 /* ~"Stygijska lodowa nawałnica? Dawaj."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55951 /* ~"Lista, którą podałeś, jest pusta."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 83
  IF ~~ THEN REPLY #55952 /* ~"Nie ma o czym mówić. Mam kilka pytań."~ */ GOTO 47
  IF ~~ THEN REPLY #55953 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.2 80.4 80.6 80.8 80.10
  SAY #55954 /* ~Jego dłoń znika w momencie, gdy sięga do dziwnej przestrzeni-nie-przestrzeni. Wyciąga zwój, który w dotyku wydaje się być miękką ludzką skórą, i rzuca ci go. "Fe! Bierz go i niech cię... bierz go!"~ */
  IF ~~ THEN REPLY #55955 /* ~"Dziękuję... co jeszcze masz z zaklęć?"~ */ GOTO 80
  IF ~~ THEN REPLY #55956 /* ~"Przypatrzmy się tym rzeczom raz jeszcze."~ */ GOTO 79
  IF ~~ THEN REPLY #55957 /* ~"Nie ma o czym mówić. Mam kilka pytań."~ */ GOTO 47
  IF ~~ THEN REPLY #55958 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1 80.3 80.5 80.7 80.9 80.11
  SAY #55959 /* ~Pokazuje zęby w grymasie. "Z głęboką i olbrzymią radością wyznaję, że zostałem pozbawiony przez ciebie wszystkich kopii tego szczególnego zaklęcia. Fe!"~ */
  IF ~~ THEN REPLY #55960 /* ~"Jakie masz inne zaklęcia?"~ */ GOTO 80
  IF ~~ THEN REPLY #55961 /* ~"Przypatrzmy się tym rzeczom raz jeszcze."~ */ GOTO 79
  IF ~~ THEN REPLY #55962 /* ~"Nie ma o czym mówić. Mam kilka pytań."~ */ GOTO 46
  IF ~~ THEN REPLY #55963 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.12
  SAY #55964 /* ~Fhjull Rozdwojony Język warczy opryskliwie. "Oto udało ci się zrujnować, zniszczyć, wypatroszyć jedną z najbardziej wyjątkowych bibliotek zaklęć w wieloświecie... i niech dobrze ci służą te zaklęcia. Nie mam już żadnych innych zaklęć do zaoferowania."~ */
  IF ~~ THEN REPLY #55965 /* ~"Przypatrzmy się tym rzeczom raz jeszcze."~ */ GOTO 79
  IF ~~ THEN REPLY #55966 /* ~"Zatem nie ma o czym mówić. Odpowiedz mi za to na kilka pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #55967 /* ~"Nic. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 49.1
  SAY #55969 /* ~"Fe! Czy twoja głowa uderzała w każdą skałę, która spadała z góry niewiedzy? W Sferach Niższych szaleje Wojna Krwi. Nie ma innej sfery, której ten konflikt by nie dotknął. Pomyśl o najbardziej obrzydliwej do wyobrażenia wojnie, powiększ ten obraz bilion razy w czasie i przestrzeni, a otrzymasz ułamek pola bitwy, o które wojują Niższe Sfery. Jest to wojna ideologiczna, która toczy się o zdefiniowanie najbardziej podstawowych konceptów wieloświata!"~ */
  IF ~~ THEN REPLY #55970 /* ~"Mów dalej."~ */ GOTO 91
  IF ~~ THEN REPLY #55972 /* ~"Nie mamy o czym rozmawiać. Mam jeszcze parę pytań."~ */ GOTO 43
  IF ~~ THEN REPLY #55973 /* ~"Dzięki. Żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 50.0
  SAY #55976 /* ~"To szkielet Ul-Gorisa, twórcy goristro. Są to żywe, niedźwiedziopodobne wieże oblężnicze, molochy chaosu, olbrzymie, praktycznie nie do zatrzymania, wielce odporne na magię... a z krateru, w którym znalazł śmierć, kości Ul-Gorisa emanują dużo energii, która neguje magię wykrywającą. Fe!"~ */
  IF ~~ THEN REPLY #55978 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 47
  IF ~~ THEN REPLY #55981 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 50.1
  SAY #55982 /* ~"Gdyby zdarzyło ci się spacerować wrzącymi ulicami Dis i czuć słodki smród palącego się ciała, wdychać głęboko trujące wyziewy lodowej kry Stygii, prowadzić armie przez pałace rozjaśniane nocą... nie przyszłoby ci do głowy pytać o takie rzeczy, prawie-człowieku."~ */
  IF ~~ THEN REPLY #55983 /* ~"Więc co ci się przytrafiło?"~ */ GOTO 87
  IF ~~ THEN REPLY #55985 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #55986 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 52.0 86.0
  SAY #55987 /* ~"Co mi się przydarzyło? Ten przeklęty deva! Tak bezpieczny byłem, tak pewny... Fe! A teraz jestem odarty z mocy niczym gołowąs, żółtodziób. Nic dziwnego, że hordy szeryfów z Baator szukają mnie."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55989 /* ~"Opowiedz mi o Triasie."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55990 /* ~"Opowiedz mi o Triasie."~ */ GOTO 55
  IF ~~ THEN REPLY #55992 /* ~"Mam kilka pytań..."~ */ GOTO 47
  IF ~~ THEN REPLY #55993 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #55995 /* ~"Fe! Nie opowiadałem ci jeszcze o naturze tego przeklętego kontraktu?! NIE MOGĘ ukrywać informacji. Słup... jest twoją jedyną nadzieją."~ */
  IF ~~ THEN REPLY #55997 /* ~"Morte, może byśmy tam poszli?"~ */ EXTERN ~DMORTE~ 596
  IF ~~ THEN REPLY #55998 /* ~"W porządku. Odpowiedz tylko na inne pytania."~ */ GOTO 43
  IF ~~ THEN REPLY #55999 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 54.0
  SAY #56001 /* ~"Fe... co to jest? No, masywny stos głów, dusze tych zmarłych, którzy trafili tam poprzez kłamstwa powodujące śmierć innych. Jest to kolekcja mędrców i oszustów, wszystkich splecionnych ze sobą, dysponujących olbrzymią wiedzą na temat sfer."~ */
  IF ~~ THEN REPLY #56003 /* ~"Dziękuję. Mam kilka innych pytań..."~ */ GOTO 47
  IF ~~ THEN REPLY #56004 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 56.2
  SAY #56006 /* ~"Fe! Rozproszę twoją niewiedzę w tym temacie. Wiedz, że nie istnieje ŻADNE miejsce dla baatezu skutego łańcuchami miłosierdzia, w którym CHCIAŁBYM być. Tu przynajmniej mogę ukryć się przed okrucieństwem narzuconego mi kontraktu. Mówię ci, że ten deva ma duszę biesa."~ */
  IF ~~ THEN REPLY #56007 /* ~"Odpowiedz mi w takim razie, na jeszcze kilka pytań..."~ */ GOTO 46
  IF ~~ THEN REPLY #56008 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 84.0
  SAY #56009 /* ~"Z powodu Wojny Krwi pojawiły się bardziej przerażające stwory. Dlaczego? Ponieważ znaczy ona ból, śmierć, zło. Tanar'ri walczą o chaos i zło... zło zrodzone w brutalnej sile i nagłym podrygom kaprysu i nienawiści. Ich 'zło' to zło hordy, mentalność tłumu wirującego zła. Zabijają i plądrują."~ */
  IF ~~ THEN REPLY #56010 /* ~"A druga strona?"~ */ GOTO 92
  IF ~~ THEN REPLY #56011 /* ~"Zapomnij o tym. Mam jeszcze pytania..."~ */ GOTO 47
  IF ~~ THEN REPLY #56012 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #56013 /* ~"Baatezu pragną jedynie dokładnie zorganizowanego zła, które promowałoby przyczynę zła w dokładny, uporządkowany sposób. Tanar'ri mordują. Baatezu wykorzystują. Obie strony zdecydowane są unicestwić się nawzajem."~ */
  IF ~~ THEN REPLY #56014 /* ~"Kontynuuj."~ */ GOTO 93
  IF ~~ THEN REPLY #56015 /* ~"Zapomnij o tym. Lepiej odpowiedz na kilka pytań."~ */ GOTO 43
  IF ~~ THEN REPLY #56016 /* ~"To wszystko, czego muszę wysłuchiwać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #56017 /* ~"Częścią mego zadania... a byłem najlepszy, pamiętaj, stanowiło rekrutowanie nowicjuszy, głównie rycerzy ze sfer i magów z innych światów, do służby w charakterze mięsa armatniego i żołnierzy formacji frontowych na wojnie. Wieść niosła, że wpadłem w oko samemu Panu Bel. Nawet on ujrzał moją wartość! A teraz moje poniżenie jest już całkowite!"~ */
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #56018 /* ~"Poznajesz mnie?"~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #56019 /* ~"Poznajesz mnie?"~ */ GOTO 94
  IF ~~ THEN REPLY #56020 /* ~"W porządku. Odpowiedz mi na kilka innych pytań..."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56021 /* ~"No, no. Żegnaj."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56022 /* ~"No, no. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 70.2 93.1
  SAY #56023 /* ~"Czy już tego nie przerabialiśmy? Fe! Głupi ludzie!"~ */
  IF ~~ THEN REPLY #56024 /* ~"Odpowiedz mi na kilka innych pytań..."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56025 /* ~"Dziękuję. Żegnaj."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56026 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
NearbyDialog("Dmorte")
~ THEN BEGIN 95 // from:
  SAY #61568 /* ~Zauważasz biesa ze złamanymi skrzydłami; jedno jego skrzydło jest postrzępione, pokryte bliznami. Jego głos grzęźnie mu w krtani, gniewny, pełen rozpaczy, dochodzący zza zaciśniętych zębów. "Tanar'ri w moim domu! Cóż za zniewaga! Dlaczego nie zaprosisz tu swojej całej plugawej rasy?!"~ [FFT003] */
  IF ~~ THEN GOTO 26
END

IF WEIGHT #5 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
!NearbyDialog("Dmorte")
~ THEN BEGIN 96 // from:
  SAY #61569 /* ~Zauważasz biesa ze złamanymi skrzydłami; jedno jego skrzydło jest postrzępione, pokryte bliznami. Jego głos grzęźnie mu w krtani, gniewny, pełen rozpaczy, dochodzący zza zaciśniętych zębów. "Tanar'ri w moim domu! Cóż za zniewaga! Dlaczego nie zaprosisz tu swojej całej plugawej rasy?!"~ [FFT003] */
  IF ~~ THEN GOTO 28
END

IF WEIGHT #8 /* Triggers after states #: 98 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 97 // from:
  SAY #61570 /* ~"Zdaje się, że będę się musiał ZAKOPAĆ, żeby uniknąć towarzystwa."~ [FFT002] */
  IF ~~ THEN GOTO 32
END

IF WEIGHT #6 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
~ THEN BEGIN 98 // from:
  SAY #61571 /* ~"Świetnie! Cuchnie jeszcze bardziej!"~ [FFT037] */
  IF ~~ THEN GOTO 30
END

IF WEIGHT #1 /* Triggers after states #: 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",0)
~ THEN BEGIN 99 // from:
  SAY #61572 /* ~"Fe! Przeklęty! Mimo moich ostrzeżeń i przyrzeczeń, przyprowadzasz pod moje drzwi legiony Baator! Przeniewierco! Zdrajco! Ja... hmm... a więc to takie uczucie..."~ [FFT068] */
  IF ~~ THEN GOTO 1
END

IF WEIGHT #0 ~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",1)
~ THEN BEGIN 100 // from:
  SAY #61573 /* ~"Co wy tu robicie?!" Bies odwraca się i spluwa na podłogę.~ [FFT082] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 101 // from: 7.6 30.10 31.10 32.10 43.10 46.10 47.10
  SAY #68475 /* ~"CO? Muszę znosić twoją obecność jeszcze dłużej? Czy ta udręka nigdy się nie skończy? Fe! W takim razie dobrze, dobrze! Rozejdźcie się po domu! Splądrujcie spiżarnię! Rozwalcie moje eksperymenty! A ja będę tutaj, cały wściekły! Fe!" Złorzecząc odchodzi.~ */
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #5595 /* ~"Dzięki."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #11798 /* ~"Dzięki..."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #11798 /* ~"Dzięki..."~ */ EXIT
END
