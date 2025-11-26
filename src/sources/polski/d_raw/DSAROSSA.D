// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROSSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROSSA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from: 1.1 2.0 3.0 7.0 11.0 12.0 16.0
  SAY #8415 /* ~"Głupcze! Myślałeś, że tak po prostu możesz mi grozić?" Kobieta wymawia trzy tajemnicze sylaby, a po chwili czujesz, jakby ktoś wydarł ci kawałek serca. Potem kobieta zaczyna krzyczeć. "Straże! STRAŻE!"~ */
  IF ~~ THEN REPLY #8416 /* ~Zaatakuj ją.~ */ DO ~Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8417 /* ~Odejdź.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #8418 /* ~"Lepiej stąd odejdź. Nie warto próbować walki z naszymi strażnikami. Uciekaj stąd."~ */
  IF ~~ THEN REPLY #8419 /* ~"Chciałbym, żebyś odpowiedziała mi na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #8420 /* ~"Odpowiesz na moje pytania, albo poniesiesz karę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8421 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #8422 /* ~"Nie będę odpowiadać na twoje pytania, kiedy strażnicy chcą od ciebie czegoś innego. To wszystko."~ */
  IF ~~ THEN REPLY #8423 /* ~"Odpowiesz na moje pytania, albo zapłacisz za to, dziewko."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8424 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  GlobalGT("SarossaStatChange","GLOBAL",3)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN BEGIN 3 // from:
  SAY #8425 /* ~"Więc wróciłeś, żeby błagać o wybaczenie, czy dalej będziesz obstawać przy swoim?"~ */
  IF ~~ THEN REPLY #8426 /* ~"Przychodzę, żeby cię zabić."~ */ GOTO 0
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8427 /* ~"Przychodzę, żeby cię przeprosić, Sarosso."~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8428 /* ~"Przychodzę, żeby cię przeprosić, Sarosso."~ */ GOTO 13
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN REPLY #8429 /* ~"Przychodzę, żeby cię przeprosić, Sarosso."~ */ GOTO 14
  IF ~~ THEN REPLY #8430 /* ~"Ani to, ani to. Żegnaj... przynajmniej na razie."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 25 22 even though they appear after this state */
~  Global("Sarossa_Saros_Anger","AR0503",0)
GlobalGT("G_Test2","GLOBAL",8)
GlobalLT("G_Test2","GLOBAL",12)
!Global("G_Test2","GLOBAL",10)
~ THEN BEGIN 4 // from:
  SAY #8431 /* ~"Jak śmiesz odzywać się do mnie po tym, jak wysłałeś mojego brata pod katowskie ostrze? Za ból, który zadałeś mojej rodzinie, powinnam cię pozbawić ducha."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8432 /* ~"Saros był twoim bratem?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8433 /* ~"Przykro mi, Sarosso. Był winny, a tego nie zmienią żadne więzy krwi."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8434 /* ~"Saros był twoim bratem?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8435 /* ~"Przykro mi, Sarosso. Był winny, a tego nie zmienią żadne więzy krwi."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8437 /* ~"Zarówno on jak i Tyldon byli winni, choć popełnili różne zbrodnie. Obaj musieli stanąć przed prawem."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~~ THEN REPLY #8438 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.4 42.0 42.4
  SAY #8436 /* ~"To był mój brat. Czy postąpiłbyś inaczej, gdybyś wiedział, że jest ze mną spokrewniony?"~ */
  IF ~~ THEN REPLY #8439 /* ~Prawda: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8440 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8440 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8441 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_1","GLOBALLaw",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 9.0 9.1 9.2 9.3 42.1
  SAY #8442 /* ~"Naprawdę w to wierzysz, prawda? Kocham mojego brata, ale ty jesteś szczery wobec mnie, więc muszę ci uwierzyć."~ */
  IF ~~ THEN REPLY #8443 /* ~"Dobrze. W takim razie odpowiedz mi na kilka pytań, dobrze?"~ */ GOTO 18
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8444 /* ~"W takim razie, czy możesz przywrócić mi tę część mojego ducha, którą mi ukradłaś?"~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8445 /* ~"W takim razie, czy możesz przywrócić mi tę część mojego ducha, którą mi ukradłaś?"~ */ GOTO 13
  IF ~  Global("SarossaStatChange","GLOBAL",6)
~ THEN REPLY #8446 /* ~"W takim razie, czy możesz przywrócić mi tę część mojego ducha, którą mi ukradłaś?"~ */ GOTO 14
  IF ~~ THEN REPLY #8447 /* ~Prawda: "Przepraszam, że zadałem ból tobie i twoim bliskim."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 8
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8448 /* ~Kłamstwo: "Przepraszam, że zadałem ból tobie i twoim bliskim."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8448 /* ~Kłamstwo: "Przepraszam, że zadałem ból tobie i twoim bliskim."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Kłamstwo: "Przepraszam, że zadałem ból tobie i twoim bliskim."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Kłamstwo: "Przepraszam, że zadałem ból tobie i twoim bliskim."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8449 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.5 30.1
  SAY #8450 /* ~"Głupcze! Czy naprawdę myślisz, że uda ci się oszukać kogoś, kto potrafi czytać w ludzkich sercach?" Kobieta wymawia pojedynczą sylabę, która najpierw wywołuje zaburzenie powietrza wokół ciebie, a potem wyrywa kawałek twojego ciała i rzuca go w eter. "Wynoś się stąd, człowieku pokryty bliznami i nie waż się już nigdy do mnie odzywać."~ */
  IF ~~ THEN REPLY #8451 /* ~"Jeszcze tu wrócę. Zapłacisz mi za to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ GOTO 0
  IF ~~ THEN REPLY #8452 /* ~"Żegnaj, Sarosso. Nie zapomnę ci tego."~ */ DO ~PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5 6.4
  SAY #8453 /* ~Jej oczy spoglądają w dal, jak gdyby widziała coś, czego nie jesteś w stanie spostrzec swoimi zmysłami. "Wybaczam ci, ale musisz pamiętać, że wszystko, co robisz, ma swoje następstwa, bez względu na to, czy je widzisz, czy nie. Nie zapomnij, że dzięki swojej niewiedzy możesz wyrządzić innym ból. Zapamiętaj te słowa."~ */
  IF ~~ THEN REPLY #8454 /* ~"Dziękuję. Mogłabyś odpowiedzieć mi na kilka pytań?"~ */ GOTO 18
  IF ~~ THEN REPLY #8455 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 4.3 42.2 42.3
  SAY #8456 /* ~"To był mój brat, a teraz i ojciec jest gotowy na śmierć. Mam nadzieję, że twoje serce wytrzyma świadomość, że sprowadziło na świat tak dużo bólu."~ */
  IF ~~ THEN REPLY #8457 /* ~"Nie mogę zapomnieć o tym, że wierzę w prawo, żeby zrobić wyjątek dla jednej osoby."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_2","GLOBALLaw",1)
~ GOTO 6
  IF ~~ THEN REPLY #8458 /* ~"Na pewno. Robiłem to już wcześniej i bardzo prawdopodobne, że zrobię to znowu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_4","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8459 /* ~"Gdybym wiedział, że on był twoim bratem, to bym go nie wydał."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8460 /* ~"Myśl o tym nie wnosi ciepła w moje serce - ale wierzę, że taki ból często powoduje poprawę. Choć na początku nie widzimy żadnych korzyści, kiedy ból minie, uczymy się widzieć dobro."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 3.1 6.1
  SAY #8461 /* ~"W takim razie przeproś."~ */
  IF ~~ THEN REPLY #8462 /* ~Prawda: "Nie miałem prawa mówić do ciebie w ten sposób. Moje słowa i moje czyny są pospieszne i nierozważne. W przyszłości postaram się bardziej nad sobą panować."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8463 /* ~Kłamstwo: "Nie miałem prawa mówić do ciebie w ten sposób. Moje słowa i moje czyny są pospieszne i nierozważne. W przyszłości postaram się bardziej nad sobą panować."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8464 /* ~"Nie."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.2 5.3 6.6 6.7 10.1 13.1 30.2 30.3
  SAY #8465 /* ~"Nie okłamuj mnie, pół-człowieku, albo oderwę życie od twojego ciała." Kobieta wyrzuca z siebie jeszcze jedną sylabę, a w chwilę potem wijesz się w konwulsjach, gdy wydziera z ciebie następny kawałek ducha. "Teraz idź. Nie życzę sobie rozmawiać z tobą."~ */
  IF ~~ THEN REPLY #8466 /* ~Zaatakuj ją.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8467 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 13.2 14.2
  SAY #8468 /* ~"Jeśli nie masz w sobie żadnego żalu, to dlaczego ja mam go mieć. Odejdź. Teraz."~ */
  IF ~~ THEN REPLY #8469 /* ~Zaatakuj ją.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8470 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.2
  SAY #8471 /* ~"W takim razie przeproś."~ */
  IF ~~ THEN REPLY #8472 /* ~Prawda: "Nie miałem prawa mówić do ciebie w ten sposób. Moje słowa i moje czyny są pospieszne i nierozważne. W przyszłości postaram się bardziej nad sobą panować."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8473 /* ~Kłamstwo: "Nie miałem prawa mówić do ciebie w ten sposób. Moje słowa i moje czyny są pospieszne i nierozważne. W przyszłości postaram się bardziej nad sobą panować."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8474 /* ~"Nie."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 3.3 6.3
  SAY #8475 /* ~"W takim razie przeproś."~ */
  IF ~~ THEN REPLY #8476 /* ~Prawda: "Nie miałem prawa mówić do ciebie w ten sposób. Moje słowa i moje czyny są pospieszne i nierozważne. W przyszłości postaram się bardziej nad sobą panować."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8477 /* ~Kłamstwo: "Nie miałem prawa mówić do ciebie w ten sposób. Moje słowa i moje czyny są pospieszne i nierozważne. W przyszłości postaram się bardziej nad sobą panować."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8478 /* ~"Nie."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 10.0 13.0 14.0
  SAY #8479 /* ~Usta kobiety znowu wymawiają parę sylab, a po chwili czujesz, jak stajesz się całością - jakby ktoś dodał brakujące elementy do twojej jaźni. "Jesteś wolny, pół-człowieku. Czego chcesz?"~ */
  IF ~~ THEN REPLY #8480 /* ~"Dlaczego ciągle nazywasz mnie pół-człowiekiem?"~ */ JOURNAL #67281 /* ~Czarownica Sarossa z Wielkiej Kuźni powiedziała mi, że według niej jestem półczłowiekiem, ponieważ nie można dostrzec mojej duszy. Sarossa nie potrafi powiedzieć, czy to znaczy, że nie mam duszy, czy też, że moja dusza została wydzielona z mojego ciała. Tak, czy siak Sarossa uważa, że jestem pół-człowiekiem.~ */ GOTO 17
  IF ~~ THEN REPLY #8481 /* ~"Chciałem tylko uzyskać odpowiedzi na kilka pytań."~ */ GOTO 18
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8482 /* ~"Opowiedz mi o swojej rodzinie."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8483 /* ~"Opowiedz mi o swojej rodzinie."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8484 /* ~"Opowiedz mi o swojej rodzinie."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8485 /* ~"Opowiedz mi o swojej rodzinie."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8487 /* ~"Twój brat wspomniał, że posiadasz specjalny dar."~ */ GOTO 22
  IF ~~ THEN REPLY #8488 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.4 6.8 14.1 30.4
  SAY #8486 /* ~"Nie masz respektu przed nikim innym oprócz siebie, prawda? Nie znoszę takich ludzi, bez względu na to, jakimi talentami są obdarzeni. Żegnaj, pół-człowieku. STRAŻE!"~ */
  IF ~~ THEN REPLY #8489 /* ~Zaatakuj ją.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8490 /* ~Odejdź.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 18.0
  SAY #8491 /* ~"Nazywam cię pół-człowiekiem, bo nie widzę twojego ducha. Wszyscy inni śmiertelnicy, którzy przewinęli się przez moje życie, pokazywali mi swoje duchy. Jedne były błyszczącymi iskierkami, a inne gorejącymi węglikami. U ciebie nie widzę nic. Nazywam cię pół-człowiekiem, bo nie widzę twojego ducha, tak jak u innych. Nie wiem, czy jest tak dlatego, że nie masz duszy, czy dlatego, że stałeś się istotą transcendentną. W każdym razie, jesteś tylko pół-człowiekiem. Niestety, nie jestem w stanie powiedzieć, czym jest twoja druga połowa."~ */
  IF ~~ THEN REPLY #8492 /* ~"Rozumiem. W takim razie odpowiedz mi na kilka pytań."~ */ GOTO 18
  IF ~~ THEN REPLY #8493 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.0 8.0 15.1 17.0 19.4 20.4 21.4 22.2 23.4 24.0 24.1 25.0 26.0 28.2 29.0 31.0 32.1 35.0 36.0 37.0 38.0 41.0 43.0
  SAY #8494 /* ~"Jakich odpowiedzi szukasz, pół-człowieku?"~ */
  IF ~~ THEN REPLY #8495 /* ~"Dlaczego nazywasz mnie pół-człowiekiem?"~ */ JOURNAL #67281 /* ~Czarownica Sarossa z Wielkiej Kuźni powiedziała mi, że według niej jestem półczłowiekiem, ponieważ nie można dostrzec mojej duszy. Sarossa nie potrafi powiedzieć, czy to znaczy, że nie mam duszy, czy też, że moja dusza została wydzielona z mojego ciała. Tak, czy siak Sarossa uważa, że jestem pół-człowiekiem.~ */ GOTO 17
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8496 /* ~"Muszę z tobą porozmawiać o twoim ojcu."~ */ GOTO 39
  IF ~~ THEN REPLY #8497 /* ~"Kim jesteś?"~ */ GOTO 38
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8498 /* ~"Opowiedz mi o swojej rodzinie."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8499 /* ~"Opowiedz mi o swojej rodzinie."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8500 /* ~"Opowiedz mi o swojej rodzinie."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8501 /* ~"Opowiedz mi o swojej rodzinie."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8502 /* ~"Wygląda na to, że każdy ma jakiś specjalny dar. Opowiedz mi o twoim."~ */ GOTO 22
  IF ~~ THEN REPLY #8503 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 18.3
  SAY #8504 /* ~"Mój brat, Saros, jest dzieckiem Kuźni, ale boję się, że nigdy nie pojął filozofii Wyznawców Źródła. Mój ojciec jest tam faktorem - w swoich podróżach dotarł w rejony bardzo oddalone od Kuźni, w krainy, o których większość śmiertelników nawet nie śmie marzyć."~ */
  IF ~~ THEN REPLY #8505 /* ~"Opowiedz mi coś więcej o twoim bracie."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8506 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8507 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8508 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 26
  IF ~~ THEN REPLY #8509 /* ~"Rozumiem. Mogę ci zadać kilka pytań?"~ */ GOTO 18
  IF ~~ THEN REPLY #8510 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 15.5 18.4 18.6
  SAY #8511 /* ~W tonie głosu kobiety wyczuwasz nutę goryczy. "Mój brat - jak już zresztą wiesz - oczekuje na decyzję kata. Mój ojciec, jak wiesz, albo i nie wiesz, podróżuje po całym wieloświecie, poszukując sensu, którego większość nieśmiertelników nigdy by nie pojęła."~ */
  IF ~~ THEN REPLY #8512 /* ~"Opowiedz mi coś więcej o twoim bracie."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8513 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8514 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8515 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 26
  IF ~~ THEN REPLY #8516 /* ~"Rozumiem. Mogę ci zadać kilka pytań?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 15.4 18.5
  SAY #8517 /* ~"Mój brat, Saros, jest, mam nadzieję, mądrzejszy o swoje doświadczenia, a mój ojciec jest tutaj faktorem. W swoich podróżach dotarł w rejony bardzo oddalone od Wielkiej Kuźni, w krainy, o których większość śmiertelników nawet nie śmie marzyć."~ */
  IF ~~ THEN REPLY #8518 /* ~"Opowiedz mi coś więcej o twoim bracie."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8519 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8520 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8521 /* ~"Opowiedz mi coś więcej o swoim ojcu."~ */ GOTO 26
  IF ~~ THEN REPLY #8522 /* ~"Rozumiem. Mogę ci zadać kilka pytań?"~ */ GOTO 18
  IF ~~ THEN REPLY #8523 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 22 // from: 15.6 18.7 32.0
  SAY #8524 /* ~"Nie wiem, skąd to mam. Wydaje się, że to od zawsze było częścią mnie. Mogę tylko przypuszczać, że w czasie moich wcześniejszych żyć, a także przez moje przekonania, zostałam obdarzona specjalną umiejętnością spoglądania w naturę śmiertelników. Dzięki temu mogę w każdej istocie spostrzec część potencjału. Odczytując prawdziwe imię, wyryte na samej jaźni śmiertelnika, i wymawiając je trochę inaczej, mogę zmienić naturę potencjału i w ten sposób zmienić naturę tego, do którego on należy."~ */
  IF ~~ THEN REPLY #8525 /* ~"Czy możesz mnie tego nauczyć?"~ */ GOTO 28
  IF ~~ THEN REPLY #8526 /* ~"Czy możesz dokonać we mnie zmiany?"~ */ GOTO 28
  IF ~~ THEN REPLY #8527 /* ~"Ciekawe. Mam do ciebie parę pytań."~ */ GOTO 18
  IF ~~ THEN REPLY #8528 /* ~"Dziwne są prawa kosmosu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 21.0
  SAY #8529 /* ~"Saros to szorstki i impulsywny człowiek, który łatwo daje się ponieść swojej męskiej naturze. Rwie się, by udowodnić, że dorównuje czemukolwiek, co znajduje się w sferach, jest pełen agresji wywołanej młodością. Wydaje mi się, że mój brat uważa się bardziej za Czuciowca niż za Bogowca, co tylko potwierdza mój pogląd, że Czuciowcy są najbardziej niedojrzali ze wszystkich frakcji w Sigil."~ */
  IF ~~ THEN REPLY #8530 /* ~"Dlaczego są najbardziej niedojrzali?"~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8531 /* ~"Opowiedz mi o swoim ojcu."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8532 /* ~"Opowiedz mi o swoim ojcu."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8533 /* ~"Opowiedz mi o swoim ojcu."~ */ GOTO 26
  IF ~~ THEN REPLY #8534 /* ~"Odpowiedz mi na kilka pytań, dobrze?"~ */ GOTO 18
  IF ~~ THEN REPLY #8535 /* ~"Dziękuję... i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 23.1
  SAY #8536 /* ~"Mój ojciec jest faktorem Wyznawców Źródła. W ciągu swojego życia zawsze głęboko wierzył, że mamy do spełnienia jakiś cel. Mogę tylko mieć nadzieję, że ciągle w wierzy w to, a także pamięta, że jego dzieci go kochają."~ */
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8537 /* ~"W takim razie przekażę mu, że jesteś pełna nadziei. Mogę ci zadać parę pytań?"~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",2)
~ THEN REPLY #8538 /* ~"Wygląda na to, że to dobry człowiek. Mogę ci zadać parę pytań?"~ */ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",1)
~ THEN REPLY #8539 /* ~"Wygląda na to, że to dobry człowiek. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8540 /* ~"W takim razie przekażę mu, że jesteś pełna nadziei. Żegnaj."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
!Dead("Sandoz")
~ THEN BEGIN 25 // from: 19.2 20.2 21.2 23.2
  SAY #8541 /* ~"Dziękuję za twoje słowa, mój ojciec, Sandoz żyje i ma się dobrze. Mogę tylko mieć nadzieję, że cokolwiek tak go przestraszyło - bo nie wierzę, że zrobił to własnowolnie - zapłaci za swoje przewinienia. Co jeszcze mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #8542 /* ~"Zadam ci parę pytań."~ */ GOTO 18
  IF ~~ THEN REPLY #8543 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
Dead("Sandoz")
~ THEN BEGIN 26 // from: 19.3 20.3 21.3 23.3
  SAY #8544 /* ~"Mój ojciec nie żyje."~ */
  IF ~~ THEN REPLY #8545 /* ~"Przykro mi. Mogę ci zadać parę pytań?"~ */ GOTO 18
  IF ~~ THEN REPLY #8546 /* ~"Eee... masz rację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0
  SAY #8547 /* ~"Nie zrobię tego. Był bardzo impulsywny, zawsze był gotowy udowodnić swoją odwagę wobec okrutnego kosmosu - a teraz nie może. Nie będę za to nikogo winić, ale i nie mam zamiaru o tym mówić. Jeśli chcesz się dowiedzieć więcej, przyjdź do mnie później. Żegnaj."~ */
  IF ~~ THEN REPLY #8548 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.0 22.1
  SAY #8549 /* ~"Mogę cię zmienić, ale nie potrafię cię uczyć - to jak mówienie ślepemu o tym, co to jest kolor, a albo uczenie głuchego o dźwiękach. I *zmienię* cię, jeśli zaproponujesz odpowiednią cenę."~ */
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",0)
~ THEN REPLY #8550 /* ~"Jaka to cena?"~ */ GOTO 30
  IF ~~ THEN REPLY #8551 /* ~"Nie wydaje mi się, żeby to było sprawiedliwe."~ */ GOTO 31
  IF ~~ THEN REPLY #8552 /* ~"Mniejsza z tym. Odpowiedz mi za kilka pytań."~ */ GOTO 18
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",1)
~ THEN REPLY #8553 /* ~"Jaka to cena?"~ */ GOTO 43
  IF ~~ THEN REPLY #61301 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0
  SAY #8554 /* ~"Dlaczego są najbardziej niedojrzali? Bo podobnie jak dzieci, nie rozumieją, że istnieje jeszcze coś poza tym, co wychwytujemy swoimi zmysłami, co widzimy, słyszymy, dotykamy czy wąchamy. Rozejrzyj się wokół siebie. Znajdujesz się w Sferach Zewnętrznych. To urzeczywistniona wiara - co wcale nie oznacza, że tę materię można pojąć zmysłami. To wiara - żadna zwykła fizyczność nie może się z nią mierzyć."~ */
  IF ~~ THEN REPLY #8555 /* ~"Rozumiem. Porozmawiajmy o czymś innym."~ */ GOTO 18
  IF ~~ THEN REPLY #8556 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #8557 /* ~"Powiedz mi. Czy zgadzasz się z filozofią Bogowców?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #8558 /* ~Prawda: "Tak."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
SetGlobal("Sarossa_ChangeUp","GLOBAL",1)
~ JOURNAL #67283 /* ~Powiedziałem czarownicy Sarosie, że wierzę w nauki Bogowców, a ona oświeciła mój umysł. Czuję się teraz mądrzejszy.~ */ GOTO 32
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8559 /* ~Kłamstwo: "Tak."~ */ JOURNAL #67282 /* ~Okłamałem czarownicę Sarossę, że wierzę w nauki Bogowców, a wiedźma wyssała ze mnie siłę wymawiając jedno słowo.~ */ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8559 /* ~Kłamstwo: "Tak."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Kłamstwo: "Tak."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Kłamstwo: "Tak."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8560 /* ~"Nie."~ */ GOTO 33
  IF ~~ THEN REPLY #8561 /* ~"Nie wiem na tyle dużo, żeby ci coś powiedzieć."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY #8562 /* ~"Nie. To nie jest w porządku. Ale to mój dar i moje sprawdziany, a ja zrobię z moimi darami to, co będę chciała. W czym ci mogę pomóc?"~ */
  IF ~~ THEN REPLY #8563 /* ~"Odpowiedz mi na parę pytań."~ */ GOTO 18
  IF ~~ THEN REPLY #8564 /* ~"Nie możesz tego zrobić, przynajmniej nie w tym momencie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #8565 /* ~"W takim razie nie mam nic przeciwko temu, żebym podzielić się z tobą moim darem." Kobieta wymawia tajemną sylabę, która wzrusza podstawami twojej jaźni, a po chwili czujesz, że twoje ciało jest silniejsze."~ */
  IF ~~ THEN REPLY #8566 /* ~"Jak to zrobiłaś?"~ */ GOTO 22
  IF ~~ THEN REPLY #8567 /* ~"Dziękuję! Odpowiedz mi na kilka pytań, dobrze?"~ */ GOTO 18
  IF ~~ THEN REPLY #8568 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #8569 /* ~"Nie podoba ci się ta filozofia? Dlaczego?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #8570 /* ~"Bo już przyłączyłem się do Grabarzy."~ */ GOTO 35
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #8571 /* ~"Bo już przyłączyłem się do Czuciowców."~ */ GOTO 35
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #8572 /* ~"Bo już przyłączyłem się do Anarchistów."~ */ GOTO 35
  IF ~~ THEN REPLY #8573 /* ~"Wydaje mi się, że filozofia Grabarzy jest lepsza. Przynajmniej oni nie wygłaszają kazań - po prostu przyjmują to, co się musi stać."~ */ GOTO 35
  IF ~~ THEN REPLY #8574 /* ~"Ciągle się nad tym zastanawiam. Spróbuj mnie przekonać."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.6 33.4
  SAY #8575 /* ~"Dowiedz się o nas więcej. Zostań pełnym członkiem naszej frakcji. Jeśli jeszcze tego nie zrobiłeś, to idź i porozmawiaj z Keldorem z Durian. To faktor, który zajmuje się rekrutacją nowych członków. Znajdziesz go w Wielkiej Sali. Żegnaj."~ */
  IF ~~ THEN REPLY #8576 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 33.2 33.3
  SAY #8577 /* ~"Zatem nie będę próbowała przekonywać cię, żebyś przestał wierzyć w to, w co wierzysz. Co jeszcze mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #8578 /* ~"Możesz mi odpowiedzieć na kilka pytań."~ */ GOTO 18
  IF ~~ THEN REPLY #8579 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 36 // from:
  SAY #8580 /* ~Widzisz przed sobą młodą kobietę. Kiedy się do niej zbliżasz, napotykasz oczyma jej baczne spojrzenie. Masz nieprzyjemne uczucie, że kobieta chce sięgnąć głębiej, niż tylko sprawdzić kolor twoich oczu. "Witaj, nieznajomy. Jak minął ci dzień?"~ */
  IF ~~ THEN REPLY #8581 /* ~"Dobrze. Chciałbym, żebyś mi odpowiedziała na kilka pytań."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8582 /* ~"Czy to ty jesteś Sarossa? Muszę porozmawiać z tobą o twoim ojcu."~ */ GOTO 39
  IF ~~ THEN REPLY #8583 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 37 // from:
  SAY #8584 /* ~"Witaj, ranny człowieku. Czego ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #8585 /* ~"Odpowiedzi."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8586 /* ~"Muszę z tobą porozmawiać o twoim ojcu."~ */ GOTO 39
  IF ~~ THEN REPLY #8587 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 18.2
  SAY #8588 /* ~"Jestem Sarossa, córka Sandoza, jednego z faktorów Bogowców."~ */
  IF ~~ THEN REPLY #8589 /* ~"Mogę ci zadać parę pytań?"~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8590 /* ~"Muszę z tobą porozmawiać o twoim ojcu."~ */ GOTO 39
  IF ~~ THEN REPLY #8591 /* ~"Rozumiem. Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.1 36.1 37.1 38.1
  SAY #8592 /* ~"Co się z nim stało?"~ */
  IF ~~ THEN REPLY #8593 /* ~"Zamknął się w swojej wierzy i grozi, że się zabije. Czy możesz mi powiedzieć coś o nim, co pozwoli mi powstrzymać go, żeby tego nie robił?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8594 /* ~"Kłamiesz! Mój ojciec podróżuje! Wcale nie ma do nas wrócić, przynajmniej w najbliższym czasie!"~ */
  IF ~~ THEN REPLY #8595 /* ~"Porozmawiaj z Keldorem, jeśli mi nie wierzysz. Jeśli mam uratować twojego ojca, to musisz mi w tym pomóc."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 41
  IF ~~ THEN REPLY #8596 /* ~"Nie wierzysz mi? Dobrze. W takim razie to ty będziesz za to odpowiedzialna. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #8597 /* ~"Pomogę ci, możesz być tego pewien." Sarossa przerywa na chwilę i spogląda na ciebie poważnie. "Mówisz prawdę, tak? Nie widzę w twoim sercu żadnego podstępu. Dobrze. W takim razie przekaż mojemu ojcu te słowa: Całe życie jest sprawdzianem. Nie można od razu przeskoczyć na jego koniec. To nie jest żadne rozwiązanie. Jedynie Straż Zagłady i Grabarze wierzą w całkowity rozkład - a ty zawsze nimi gardziłeś. Pamiętaj o tym."~ */
  IF ~~ THEN REPLY #8598 /* ~"Przekażę mu tę wiadomość. Ale najpierw muszę ci zadać parę pytań."~ */ GOTO 18
  IF ~~ THEN REPLY #8599 /* ~"Przekażę mu tę wiadomość. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 ~  False()
Global("G_Test2","GLOBAL",11)
~ THEN BEGIN 42 // from:
  SAY #8600 /* ~"Jak śmiesz odzywać się do mnie po tym, jak wysłałeś mojego brata pod katowskie ostrze? Za ból, który zadałeś mojej rodzinie, powinnam cię pozbawić ducha."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8601 /* ~"Saros był twoim bratem?"~ */ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8602 /* ~"Przykro mi, Sarosso. Był winny, a tego nie zmienią żadne więzy krwi."~ */ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8603 /* ~"Saros był twoim bratem?"~ */ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8604 /* ~"Przykro mi, Sarosso. Był winny, a tego nie zmienią żadne więzy krwi."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8605 /* ~"Zarówno on jak i Tyldon byli winni, choć popełnili różne zbrodnie. Oboje musieli stanąć przed prawem."~ */ GOTO 5
  IF ~~ THEN REPLY #8606 /* ~"Nie mogę tego zrobić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 28.3
  SAY #61302 /* ~"Już wymówiłam słowa, które zmienią twoje serce. Reszta ciebie będzie musiała nauczyć się, żeby zmienić się za jego przykładem."~ */
  IF ~~ THEN REPLY #61303 /* ~"W porządku. W takim razie odpowiedz mi na kilka pytań."~ */ GOTO 18
  IF ~~ THEN REPLY #61304 /* ~"Żegnaj."~ */ EXIT
END
