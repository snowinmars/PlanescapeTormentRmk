// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43405 /* ~"Hej, nie dotykaj mnie! Zostaw mnie w spokoju!"~ */
  IF ~~ THEN REPLY #43406 /* ~"Chciałem tylko... nieważne."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #43407 /* ~"Złapali cię, co? Niedobrze."~ */
  IF ~~ THEN REPLY #43408 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
!Dead("Sandoz")
~ THEN BEGIN 2 // from:
  SAY #43409 /* ~"Dziękuję za twoją litość. Od teraz będę postępował zgodnie z prawem."~ */
  IF ~~ THEN REPLY #43410 /* ~"Na pewno, Sarosie. Odpowiesz na kilka moich pytań?"~ */ GOTO 4
  IF ~~ THEN REPLY #43411 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 6 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",3)
GlobalLT("G_Test2","GLOBAL",12)
~ THEN BEGIN 3 // from:
  SAY #43412 /* ~"Co znalazłeś? Pozwolisz mi odejść wolno?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43413 /* ~"Tyldon mówi, że podłożyłeś szydło na miejscu zbrodni i że próbujesz wrobić go w zbrodnię ponieważ się pokłóciliście."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43414 /* ~"Tyldon mówi, że ty i Bedai-Lin jesteście Anarchistami i że próbujecie wrobić go w zbrodnię ponieważ nie chciał się do was przyłączyć."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43415 /* ~"Dowiedziałem się dosyć, aby podjąć decyzję."~ */ GOTO 18
  IF ~~ THEN REPLY #43416 /* ~"Nie, jeszcze nie. Mam jednak kilka pytań do ciebie."~ */ GOTO 15
  IF ~~ THEN REPLY #43417 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.2 8.0 10.2 11.0 13.0
  SAY #43418 /* ~"Jasne. Cokolwiek chcesz wiedzieć..."~ */
  IF ~~ THEN REPLY #43419 /* ~"Opowiedz mi o sobie."~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43420 /* ~"Opowiedz mi o Wielkiej Kuźni."~ */ GOTO 9
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43421 /* ~"Opowiedz mi o Wielkiej Kuźni."~ */ GOTO 8
  IF ~~ THEN REPLY #43422 /* ~"Opowiedz mi o Anarchistach."~ */ GOTO 10
  IF ~~ THEN REPLY #43423 /* ~"Opowiedz mi o tutejszych ludziach."~ */ GOTO 11
  IF ~~ THEN REPLY #43424 /* ~"W tej chwili nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43425 /* ~"Zobaczmy... wychowałem się w Kuźni wraz z moją siostrą Sarossą. Mój ojciec, Sandoz, jest tutaj faktorem, dlatego też większą część czasu spędzał poza domem próbując pozyskać nowych zwolenników i w ten sposób zwiększyć wpływy frakcji. Sarossa to w pewnym sensie wiedźma, ale zna się na rzeczy. Wie jak zmienić ludzi, aby stali się bardziej tacy jacy naprawdę są."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43426 /* ~"Co masz na myśli?"~ */ GOTO 13
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43427 /* ~"Co masz na myśli?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 13
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43428 /* ~"Już to słyszałem. Odpowiesz na jeszcze kilka pytań?"~ */ GOTO 4
  IF ~~ THEN REPLY #43429 /* ~"Dziękuję za poświęcenie mi czasu. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
Dead("Sandoz")
~ THEN BEGIN 6 // from:
  SAY #43430 /* ~"Zostaw mnie w spokoju. Mój ojciec nie żyje."~ */
  IF ~~ THEN REPLY #43431 /* ~"Mam parę pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #43432 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #43433 /* ~"Powiedziałem, zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #43434 /* ~"Świetnie, świetnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #43435 /* ~"Wychowałem się tutaj. Bawiłem się w głównej kuźni. Śmierdzi tu i jest głośno i ludzie mogą być... ludźmi, jak sądzę... ale wciąż traktuję to miejsce jak swój dom."~ */
  IF ~~ THEN REPLY #43436 /* ~"Wzruszające. Odpowiedz jeszcze na kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #43437 /* ~"Dzięki, Saros. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY #43438 /* ~"Wszyscy nie żyją. Wszyscy ludzie, którzy bawili się ze mną, kiedy byłem jeszcze dzieckiem... wszyscy zginęli podczas tego wybuchu. Kuźnia była jak dom, ale teraz jedynie rani. Możesz mnie zostawić w spokoju?"~ */
  IF ~~ THEN REPLY #43439 /* ~"Trudno, chłopcze. Mam jeszcze kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #43440 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3
  SAY #43441 /* ~"Wolałbym o tym nie mówić. Myślałem, że mi pomogą i sprawią, że moje życie stanie się ekscytujące, ale zamiast tego odwrócili się ode mnie. Myślę, że muszą się troszczyć o siebie samych, gdy wszyscy są przeciwko nim... ale ja chciałem być jednym z nich."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",0)
~ THEN REPLY #43442 /* ~"To obala całą ideę anarchii, Sarosie. Masz być sobą samym."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Saros_1","GLOBALLaw",-1)
AddexperienceParty(200)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",1)
~ THEN REPLY #43443 /* ~"To obala całą ideę anarchii, Sarosie. Masz być sobą samym."~ */ GOTO 14
  IF ~~ THEN REPLY #43444 /* ~"Jasne. Jesteś tylko dzieckiem. Przejdzie ci. Odpowiedz mi na jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #43445 /* ~"Rozumiem. Jakoś to przetrwasz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.4
  SAY #43446 /* ~Wzrusza ramionami. "Są tylko ludźmi."~ */
  IF ~~ THEN REPLY #43447 /* ~"Pomocne. Odpowiesz mi jeszcze na jakieś pytania?"~ */ GOTO 4
  IF ~~ THEN REPLY #43448 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #43449 /* ~"Więc chcąc być jednym z nich, muszę nie chcieć być jednym z nich?"~ */
  IF ~~ THEN REPLY #43450 /* ~"Z grubsza rzecz biorąc. Będąc sobą samym, stajesz się czymś więcej niż pionkiem. Pomyśl o tym. Żegnaj."~ */ JOURNAL #39515 /* ~Powiedziałem Sarosowi jak zostać Anarchistą.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1
  SAY #43451 /* ~"Wystarczy że spojrzy na kogoś i od razu wie, co trzeba dodać, a czego trzeba ująć. Nie wiem jak ona to robi. Mój ojciec zawsze mawiał, że to ma jakiś związek z jej wznoszeniem się na inny poziom. Powiedział, że *ona* jest urodzonym Bogowcem."~ */
  IF ~~ THEN REPLY #43452 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #43453 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #43454 /* ~"Już to mówiłeś! Nie możesz wymyślić czegoś oryginalnego? Dlaczego wciąż powtarzasz te same rzeczy? Oczekujesz czegoś więcej ode mnie?"~ */
  IF ~~ THEN REPLY #43455 /* ~"Myślę, że nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 16.0 19.0 20.0 21.0 23.1 28.2 29.0
  SAY #43456 /* ~"Co chcesz wiedzieć?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43457 /* ~"Tyldon mówi, że podłożyłeś szydło na miejscu zbrodni i że próbujesz wrobić go w zbrodnię ponieważ się pokłóciliście."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43458 /* ~"Tyldon mówi, że ty i Bedai-Lin jesteście Anarchistami i że próbujecie wrobić go w zbrodnię ponieważ nie chciał się do was przyłączyć."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43459 /* ~"Dowiedziałem się dosyć, aby podjąć decyzję."~ */ GOTO 18
  IF ~~ THEN REPLY #43460 /* ~"Opowiedz mi o sobie."~ */ GOTO 19
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43461 /* ~"Opowiedz mi o Wielkiej Kuźni."~ */ GOTO 20
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43462 /* ~"Opowiedz mi o Wielkiej Kuźni."~ */ GOTO 21
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
~ THEN REPLY #43463 /* ~"Opowiedz mi o Anarchistach."~ */ GOTO 22
  IF ~~ THEN REPLY #43464 /* ~"Opowiedz mi o tutejszych ludziach."~ */ GOTO 23
  IF ~~ THEN REPLY #43465 /* ~"W tej chwili nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.0 15.0
  SAY #43466 /* ~"Oczywiście, że mógł to powiedzieć! Po prostu jest winny i chce, abyś szukał gdzieś indziej! Widziałem jak zabił tego człowieka! Oczywiście, że mieliśmy różne zdania, ale to nie znaczy, że chcę jego śmierci. To, że jest skończonym trepem, nie oznacza wcale, że powinien być aresztowany. Powinien zostać uwięziony za zabicie Avildona! Powiedz mu, że potrzebuje dowodów!"~ */
  IF ~~ THEN REPLY #43468 /* ~"Dobrze więc. Mam do ciebie jeszcze kilka pytań."~ */ JOURNAL #39514 /* ~Saros zaprzecza, że wrobił Tyldona. Twierdzi, że Tyldon powinien zostać aresztowany za morderstwo. Jakbym jeszcze nie wiedział, że KOGOŚ trzeba aresztować.~ */ GOTO 15
  IF ~~ THEN REPLY #43469 /* ~"Zrobię to. Żegnaj."~ */ JOURNAL #39514 /* ~Saros zaprzecza, że wrobił Tyldona. Twierdzi, że Tyldon powinien zostać aresztowany za morderstwo. Jakbym jeszcze nie wiedział, że KOGOŚ trzeba aresztować.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.1 15.1 22.0 22.1
  SAY #43470 /* ~Saros blednie. "Ona nie ma z tym nic wspólnego. Zrobiłem to sam. Ale prawda jest taka, że Tyldon pchnął Avildona na maszyny. Zostawiłem tam szydło, aby się upewnić, że wszyscy dowiedzą się, że on tam był. Ponieważ jestem tylko dzieckiem i nikt by nie uwierzył w to co mówię. Jasne? Przyznaję, że podłożyłem to szydło, ale zrobiłem to tylko po to, żeby się upewnić, że zostanie ukarany za swoją zbrodnię."~ */
  IF ~~ THEN REPLY #43471 /* ~"W takim razie podejmę decyzję o tym, w jaki sposób powiedzieć o tym Keldorowi."~ */ JOURNAL #39513 /* ~Saros otwarcie przyznał, że podrzucił szydło w miejscu morderstwa. Twierdzi, że zrobił to gdyż chciał się upewnić, iż zostanie przeprowadzone śledztwo odnośnie udziału Tyldona w morderstwie.~ */ GOTO 18
  IF ~~ THEN REPLY #43472 /* ~"Dlaczego? Dlaczego nie miałbym pomyśleć, że robisz to, aby odegrać się na nim za jakąś inną zbrodnię?"~ */ JOURNAL #39513 /* ~Saros otwarcie przyznał, że podrzucił szydło w miejscu morderstwa. Twierdzi, że zrobił to gdyż chciał się upewnić, iż zostanie przeprowadzone śledztwo odnośnie udziału Tyldona w morderstwie.~ */ GOTO 27
  IF ~~ THEN REPLY #43473 /* ~"Zobaczymy. Żegnaj."~ */ JOURNAL #39513 /* ~Saros otwarcie przyznał, że podrzucił szydło w miejscu morderstwa. Twierdzi, że zrobił to gdyż chciał się upewnić, iż zostanie przeprowadzone śledztwo odnośnie udziału Tyldona w morderstwie.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.2 15.2 17.0
  SAY #43474 /* ~"Co to za decyzja?" Zdaje się powstrzymywać łzy.~ */
  IF ~~ THEN REPLY #43475 /* ~"Dowiesz się, gdy mu powiem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #43476 /* ~"Boję się. Obawiam się, że ogłosisz mnie zabójcą, a ja nim nie jestem!"~ */
  IF ~~ THEN REPLY #43477 /* ~"Zobaczymy. Odpowiedz mi na jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #43478 /* ~"Zrobię to jeśli jesteś winny. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #43479 /* ~"Wszystko zdaje się tu iść nie tak... mówią, że to kolejny sprawdzian dla życia, ale... sam nie wiem..."~ */
  IF ~~ THEN REPLY #43480 /* ~"Odpowiedz więc na jeszcze kilka moich pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #43481 /* ~"Życie jest wszędzie brutalne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY #43482 /* ~"Wychowałem się tutaj. Bawiłem się w głównej kuźni. Śmierdzi tu i jest głośno i ludzie mogą być jak Tyldon... ale wciąż traktuję to miejsce jak swój dom."~ */
  IF ~~ THEN REPLY #43483 /* ~"Rozumiem. Odpowiedz na jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #43484 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY #43485 /* ~"Oni są... niektórzy ludzie przyszli, aby ze mną porozmawiać i powiedzieli mi, że jestem osobą jakiej potrzebują ponieważ mam dostęp do wszystkiego i nikt nie zwraca na mnie uwagi... nigdy nie sądziłem, że ktoś mógłby zginąć. Myślałem, że mam jedynie być oczami i uszami. Ale wtedy Tyldon pchnął Avildona na maszyny i powiedział, że doniesie na mnie... ja nawet nie wiem, kto ze mną rozmawiał!"~ */
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #43486 /* ~"Wrobiliście więc Tyldona, ty i Bedai-Lin? On mówi, że tak. Wygląda na to, że jest całkiem pewny, że ona była w to zamieszana."~ */ GOTO 17
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43487 /* ~"Wrobiliście więc Tyldona, ty i Bedai-Lin? On mówi, że tak. Wygląda na to, że jest całkiem pewny, że ona była w to zamieszana."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
END

IF ~~ THEN BEGIN 23 // from: 15.7
  SAY #43488 /* ~"To kowale i robotnicy. Myślę, że chcą dobrze, ale wszyscy są tacy poważni i *nudni*. Potrzebują odrobiny ożywienia. Tak jak, powiedzmy, Czuciowcy."~ */
  IF ~~ THEN REPLY #43489 /* ~"Lubisz Czuciowców, co?"~ */ GOTO 28
  IF ~~ THEN REPLY #43490 /* ~"Rozumiem dlaczego mogłeś tak pomyśleć. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #43491 /* ~"Dziękuję za poświęcenie mi czasu. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalLT("G_Test2","GLOBAL",4)
GlobalGT("G_Test2","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #43492 /* ~"Ten biedny kowal... nie mogę uwierzyć w to co mu się przytrafiło..."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
~ THEN REPLY #43493 /* ~"Wiesz może, co się mogło wydarzyć albo masz może jakieś wskazówki?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #43494 /* ~"To straszne zostać wciągniętym w takie maszyny. Mam do ciebie kilka pytań..."~ */ GOTO 26
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43495 /* ~"Wiesz może, co się mogło wydarzyć albo masz może jakieś wskazówki?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #64942 /* ~"Ani ja. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.2 26.0 26.1
  SAY #43496 /* ~"Kto ci powiedział? Nadzorca? Ma rację. Przychodzę tu czasem w nocy, gdy nikogo nie ma." Rozgląda się przez chwilę dookoła jak konspirator i pochyla głowe ku tobie. "Widziałem jak Tyldon wymykał się stąd ukradkiem. Coś co upuścił, to główny powód, dla którego twierdzę, że to on." Wręcza ci szydło z wyrytym na drewnianej rączce imieniem 'Tyldon'.~ */
  IF ~~ THEN REPLY #43497 /* ~"Dzięki. Z pewnością wrócę tu jeszcze, by z tobą porozmawiać."~ */ JOURNAL #39512 /* ~Saros dał mi szydło z wygrawerowanym imieniem Tyldona. Powiedział mi, że znalazł je obok ciała w noc morderstwa.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 30.0 31.0 32.0 33.1 34.2 35.0 36.0 37.0
  SAY #43498 /* ~"Pytaj o co zechcesz."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"Wiesz może, co się mogło wydarzyć albo masz może jakieś wskazówki?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"Wiesz może, co się mogło wydarzyć albo masz może jakieś wskazówki?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #43500 /* ~"Opowiedz mi o sobie."~ */ GOTO 30
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43501 /* ~"Opowiedz mi o Wielkiej Kuźni."~ */ GOTO 31
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43502 /* ~"Opowiedz mi o Wielkiej Kuźni."~ */ GOTO 32
  IF ~~ THEN REPLY #43503 /* ~"Opowiedz mi o tutejszych ludziach."~ */ GOTO 33
  IF ~~ THEN REPLY #43504 /* ~"W tej chwili nic więcej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #43505 /* ~"Ponieważ... ponieważ... nie wiem dlaczego miałbyś tak pomyśleć. Ale obiecuję... porozmawiaj z nim i powiedz mu, co usłyszałeś ode mnie, a potem możesz sam zadecydować!"~ */
  IF ~~ THEN REPLY #43506 /* ~"Zrobię to. Zostań tutaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.0
  SAY #43507 /* ~"Wiedzą jak żyć. Wiedzą na czym polega życie. Nie tak jak ci ludzie. Oni wciąż udają, że wszystkiemu przyświeca jakiś wielki, szlachetny cel, ale ja go nie widzę. Moja siostra mówi, że życie to coś więcej niż pokazują nam nasze zmysły, ale nie wiem, skąd ona to wie, ponieważ wszystko co wie pochodzi od zmysłów. Po prostu nie kapuję po co ludzie wymyślają całe te historie."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43508 /* ~"Kim jest twoja siostra?"~ */ GOTO 29
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43509 /* ~"Kim jest twoja siostra?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 29
  IF ~~ THEN REPLY #43510 /* ~"Hmm. Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #43511 /* ~"Dziękuję za poświęcenie mi czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #43512 /* ~"Sarossa? Wystarczy, że spojrzy na kogoś i od razu wie, co trzeba dodać, a czego trzeba ująć. Nie wiem jak ona to robi. Mój ojciec zawsze mawiał, że to ma jakiś związek z jej wznoszeniem się na inny poziom. Powiedział, że *ona* jest urodzonym Bogowcem."~ */
  IF ~~ THEN REPLY #43513 /* ~"Interesujące. Pozwól, że zadam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #43514 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY #43515 /* ~"Jestem Saros. Wychowałem się tutaj. Przyzwyczaiłem się do biegania po Kuźni i zabawy różnymi przedmiotami... Jestem taki jak wszyscy tutaj, za wyjątkiem Tyldona. Wciąż powtarza, że nie zostałem prawidłowo wychowany i że mój ojciec to kiepski rodzic. Wiem tylko, że Tyldon to najgorszy skurl jakiego kiedykolwiek spotkałem."~ */
  IF ~~ THEN REPLY #43516 /* ~"Jestem tego pewien. Mam jeszcze kilka pytań."~ */ GOTO 26
  IF ~~ THEN REPLY #43517 /* ~"Kapuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY #43518 /* ~"Wszystko zdaje się tu iść nie tak... mówią, że to kolejny sprawdzian dla życia, ale... sam nie wiem..."~ */
  IF ~~ THEN REPLY #43519 /* ~"Odpowiedz więc na jeszcze kilka moich pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #43520 /* ~"Życie jest wszędzie brutalne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.4
  SAY #43521 /* ~"Wychowałem się tutaj. Bawiłem się w głównej kuźni. Może tu śmierdzieć, być za głośno, a ludzie mogą być tacy jak Tyldon... ale wciąż traktuję to miejsce jak swój dom."~ */
  IF ~~ THEN REPLY #43522 /* ~"Rozumiem. Odpowiedz na jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #43523 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.5
  SAY #43524 /* ~"To kowale i robotnicy. Myślę, że chcą dobrze, ale wszyscy są tacy poważni i *nudni*. Potrzebują odrobiny ożywienia. Tak jak, powiedzmy, Czuciowcy."~ */
  IF ~~ THEN REPLY #43525 /* ~"Lubisz Czuciowców, co?"~ */ GOTO 34
  IF ~~ THEN REPLY #43526 /* ~"Rozumiem dlaczego mogłeś tak pomyśleć. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #43527 /* ~"Dziękuję za poświęcenie mi czasu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #43528 /* ~"Wiedzą jak żyć. Wiedzą na czym polega życie. Nie tak jak ci ludzie. Oni wciąż udają, że wszystkiemu przyświeca jakiś wielki, szlachetny cel, ale ja go nie widzę. Moja siostra mówi, że życie to coś więcej niż pokazują nam nasze zmysły, ale nie wiem, skąd ona to wie, ponieważ wszystko, co wie pochodzi od zmysłów. Po prostu nie kapuję, po co ludzie wymyślają całe te historie."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43529 /* ~"Kim jest twoja siostra?"~ */ GOTO 35
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43530 /* ~"Kim jest twoja siostra?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 35
  IF ~~ THEN REPLY #43531 /* ~"Hmm. Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #43532 /* ~"Dziękuję, że poświęciłeś mi swój czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #43534 /* ~"Sarossa? Wystarczy, że spojrzy na kogoś i od razu wie co trzeba dodać, a czego trzeba ująć. Nie wiem jak ona to robi. Mój ojciec zawsze mawiał, że to ma jakiś związek z jej wznoszeniem się na inny poziom. Powiedział, że *ona* jest urodzonym Bogowcem."~ */
  IF ~~ THEN REPLY #43535 /* ~"To ciekawe. Pozwól, że zadam jeszcze kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #43536 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 36 // from:
  SAY #43537 /* ~"To znowu ty? Czego chcesz?"~ */
  IF ~~ THEN REPLY #43538 /* ~"Chcę tylko zadać kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #43539 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from:
  SAY #43540 /* ~Widzisz młodzieńca o włosach koloru piasku. Jest w wieku, kiedy wkracza się w dorosłość, pozostawiając za sobą wiek młodzieńczy. Sądząc po jego oczach, chłopak stara się być jak najbardziej dorosły, nie mając zielonego pojęcia jak to robić - innymi słowy, wygląda na niewinnego. "Hej, nieznajomy. W czym mogę pomóc?"~ */
  IF ~~ THEN REPLY #43541 /* ~"Mógłbyś odpowiedzieć na kilka moich pytań..."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #43542 /* ~"Nic, dziękuję. Żegnaj."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ EXIT
END
