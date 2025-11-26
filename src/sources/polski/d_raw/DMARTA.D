// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARTA~

IF ~  Global("Marta","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2831 /* ~Widzisz tumanowatą kobietę, ubraną w ciężki konopny kaftan. Kobieta chodzi ociężale po pomieszczeniu, kiedy nachyla się nad stołami żeby coś zabrać, strzela jej w kościach. Włosy ma upięte do tyłu, wsuwką z kości. Minę ma skwaszoną. Mamrocze do siebie, jakby coś nuciła.~ */
  IF ~~ THEN REPLY #20473 /* ~"Witaj."~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #20474 /* ~Odejdź.~ */ EXIT
END

IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2832 /* ~Widzisz Martę. Chodzi ociężale po pomieszczeniu, kiedy nachyla się nad stołami żeby coś zabrać, strzela jej w kościach. Włosy ma upięte do tyłu, wsuwką z kości. Minę ma skwaszoną. Mamrocze do siebie, jakby nuciła coś dziwnego.~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20475 /* ~"Witaj, Marto."~ */ GOTO 2
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20476 /* ~"Mam do ciebie kilka pytań, Marto..."~ */ GOTO 30
  IF ~~ THEN REPLY #20477 /* ~Zignoruj Martę.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #20432 /* ~Chyba cię nie słyszy - bo potykając się, podchodzi do jednego z długich stołów i zaczyna dłubać w jednym z trupów. "A nuże..." Zgrzyta zębami. "Nie róbże Marcie problemów... no patrzta robi problemy, no robi, Marto...? Tak, tak robi problemy..."~ */
  IF ~~ THEN REPLY #20478 /* ~"Uch... witaj?"~ */ GOTO 4
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20479 /* ~Obserwuj co robi.~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20480 /* ~Obserwuj co robi.~ */ GOTO 3
  IF ~~ THEN REPLY #20481 /* ~Zignoruj Martę.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2
  SAY #20433 /* ~Z tego co widzisz, to Marta wydłubuje z trupa zęby... samymi rękami i paznokciami. Kiedy to nie pomaga, wyciąga rozszczepione drewniane dłuto i pobijakiem *wali* w dziąsła wyłupując ząb, po czym wkłada go do torby u pasa.~ */
  IF ~~ THEN REPLY #20482 /* ~"Uch... co robisz?"~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #20483 /* ~Nie zwracaj uwagi na Martę, rozejrzyj się po pomieszczeniu.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #20434 /* ~Marta odskakuje od trupa, przestraszona i wydaje przenikliwy krzyk. "Aj!" Chwyta oddech, po czym, ze złości na trupa, syczy. "Jeśliś nie był trupem, mogłeś był co powiedzieć wcześniej, ty fałszywy, złośliwy trupie! *Wstydu* nie masz?"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20484 /* ~Natęż głos: "*Jesteś* tą, która powinna okryta być hańbą. Tak mi wybić zęby... nie masz szacunku dla umarłych?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20485 /* ~Natęż głos: "*Jesteś* tą, która powinna okryta być hańbą. Wyciągać mi szwy i zęby... nie masz szacunku dla umarłych?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20486 /* ~"To ja się odezwałem, nie trup."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20487 /* ~"To ja się odezwałem, nie trup."~ */ GOTO 10
  IF ~~ THEN REPLY #20488 /* ~Zignoruj Martę.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #20435 /* ~"Ha!" Marta przystawia ręce do ust i nadyma się z oburzeniem. "Tacy jak ty zwykle *dbają* o ząbki! A tu wszyskie pognite i porysowane, brązowe jak syrop - że też ci nie powylatywały z jadaczki!" Drapie się po głowie. "Dobrze mówiem, Marto? Ano, wszystkie pognite i spróchniałe..."~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20489 /* ~Natęż głos: "Ooooch... zostaniesz *ukarana* za swe niecne wybijanie zębów, Marto. Będę cię *nawiedzał* do końca twoich dni..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20490 /* ~"To ja się odezwałem, nie trup."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20491 /* ~"To ja się odezwałem, nie trup."~ */ GOTO 10
  IF ~~ THEN REPLY #20492 /* ~Zignoruj Martę.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20436 /* ~"Ha! Słyszałaś to, Marto? Słyszałaś?" Twarz Marty ściąga się jak wykręcona szmata. "Słyszem to, Marto! Słyszem!" Chrząka i zaczyna okładać trupa pięściami, a każde uderzenie to odgłos *tłuczonego* mięsa. "Nawiedź *mnie*, nawiedź! A masz! A masz!"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20493 /* ~Natęż głos: "Ooooch... przestań... przestań... nie będę cię już nawiedzał... wybacz mi..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20494 /* ~"To ja się odezwałem, nie trup."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20495 /* ~"To ja się odezwałem, nie trup."~ */ GOTO 10
  IF ~~ THEN REPLY #20496 /* ~Zignoruj Martę.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20437 /* ~"Przeklynte truposze..." Marta bierze głęboki oddech i upuszcza dłuto obok siebie. "A to ci dopiero, co, Marto? Tak, tak... cicho tam trupy... tak."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20497 /* ~"To ja się odezwałem, nie trup."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20498 /* ~"To ja się odezwałem, nie trup."~ */ GOTO 10
  IF ~~ THEN REPLY #20499 /* ~Zignoruj Martę.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.1 7.0
  SAY #20438 /* ~Marta mruży oczy i odwraca się. "He? Jak się tam dostałeś tak szybko?" Mamrocze do siebie. "Marto, jak on to zrobił? Pojęcia ni mam."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 207
END

IF ~~ THEN BEGIN 9 // from:
  SAY #20439 /* ~Marta mamrocze nadal do siebie coś o *trupach* i *wdzięczności*, ale nie za bardzo wiesz o co jej chodzi.~ */
  IF ~~ THEN REPLY #20500 /* ~"Kim jesteś?"~ */ JOURNAL #18470 /* ~W Zakopanej Wiosce spotkałem pomyloną szwaczkę o imieniu Marta. Cały czas mówi do siebie, jak gdyby była dwoma osobami... z tego co wiem, może tak być.~ */ GOTO 11
  IF ~~ THEN REPLY #20501 /* ~"Uch... dobrze. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3 5.2 6.2 7.1
  SAY #20440 /* ~Marta mruży oczy i odwraca się. "He? Jak się tam dostałeś tak szybko?" Mamrocze do siebie. "Marto, jak on to zrobił? Pojęcia ni mam."~ */
  IF ~~ THEN REPLY #20502 /* ~"Kim jesteś?"~ */ JOURNAL #18470 /* ~W Zakopanej Wiosce spotkałem pomyloną szwaczkę o imieniu Marta. Cały czas mówi do siebie, jak gdyby była dwoma osobami... z tego co wiem, może tak być.~ */ GOTO 11
  IF ~~ THEN REPLY #20503 /* ~"Uch... dobrze. Muszę już iść. Żegnaj."~ */ JOURNAL #18470 /* ~W Zakopanej Wiosce spotkałem pomyloną szwaczkę o imieniu Marta. Cały czas mówi do siebie, jak gdyby była dwoma osobami... z tego co wiem, może tak być.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0 13.0 30.0
  SAY #20441 /* ~"Marto, czy to cuś pytało kim jesteś? Nu, pytało, pytało..." Zaczyna nucić. "Nik inny tyko ja, jam jes Marta, Marta Szwaczka... hmnnnn... Mar-ta Szwa-czka... Mar-ta Szwa-czka..." Odwraca się z powrotem do trupa, nucąc do siebie swoje imię.~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20504 /* ~"Co robisz?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",2)
~ GOTO 12
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20505 /* ~"Co robisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #20506 /* ~"Uch... dobrze. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 13.1 30.1
  SAY #20442 /* ~Marta obraca się do trupa wzburzona. "Usiłujem przekonać tego trepa, żeby dał mniem wyciągnąć szwusie i oddał mi ząbki swoje, a on nie chce wyko-operowieć, no nie chce..." Kiwa palcem, jak gdyby prawiła kazanie dziecku. "Uparty jak kamień, dobrze mówiem, Marto?" Wydyma wargi. "Tak, tak, uparty..."~ */
  IF ~~ THEN REPLY #20507 /* ~"Szwusie... i ząbki? O czy ty mówisz?"~ */ GOTO 14
  IF ~~ THEN REPLY #20508 /* ~"Rozumiem. Mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20509 /* ~"Uch... dobrze. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.4 16.9 17.1 18.1 19.2 20.1 21.0 23.4 24.4 25.4 26.2 26.3 27.0 28.1 29.1 31.2 37.0 39.4
  SAY #20443 /* ~"Czy to tu, o cuś pytało, Marto...?" Marta mruga, po czym marszczy brwi. "Ano, Marto, tak pytało, bo pytanie ma wypisane na czole, oj ma..."~ */
  IF ~~ THEN REPLY #20510 /* ~"Kim jesteś?"~ */ JOURNAL #18470 /* ~W Zakopanej Wiosce spotkałem pomyloną szwaczkę o imieniu Marta. Cały czas mówi do siebie, jak gdyby była dwoma osobami... z tego co wiem, może tak być.~ */ GOTO 11
  IF ~~ THEN REPLY #20511 /* ~"Co robisz?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20512 /* ~"Dlaczego wyciągasz z trupów zęby i szwy?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Zadaniem Marty Szwaczki jest chyba zajmowanie się przyniesionymi do niej zwłokami. Wyrywa im zęby, rozpruwa szwy, szuka wszelakich cennych rzeczy jakie mogłyby znajdować się w ciele, a następnie zszywa zwłoki z powrotem.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20513 /* ~"Dlaczego wyciągasz z trupów zęby i szwy?"~ */ JOURNAL #20538 /* ~Zadaniem Marty Szwaczki jest chyba zajmowanie się przyniesionymi do niej zwłokami. Wyrywa im zęby, rozpruwa szwy, szuka wszelakich cennych rzeczy jakie mogłyby znajdować się w ciele, a następnie zszywa zwłoki z powrotem.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20514 /* ~"Możesz pogrzebać w moim ciele i znaleźć coś?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20515 /* ~"Możesz pogrzebać w moim ciele i znaleźć coś?"~ */ GOTO 23
  IF ~~ THEN REPLY #20516 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20517 /* ~"Wyciągasz z trupów szwy... czy mogę kupić od ciebie igłę i nici?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20518 /* ~"Czy masz jeszcze coś, co wyciągnęłaś z trupów, a mogłoby mi się przydać?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20519 /* ~"Mogę zobaczyć, co ostatnio wyciągnęłaś z trupów?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20520 /* ~"Nie mam już pytań. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #20444 /* ~"Muszem wyciągnąć szwusie, ząbki... uch, Marto, może ty mogłabyś mi pomóc... *pomagam* ci ty stary czubku... nie ma potrzeby mówić do mnie takim tonem... wyciągamy szwusie i ząbki, o tak. I trzewusie ze środeczka."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20521 /* ~"Trzewusie ze środeczka?"~ */ EXTERN ~DMORTE~ 208
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20522 /* ~"Trzewusie ze środeczka?"~ */ GOTO 31
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20523 /* ~"Dlaczego wyciągasz z trupów zęby i szwy?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Zadaniem Marty Szwaczki jest chyba zajmowanie się przyniesionymi do niej zwłokami. Wyrywa im zęby, rozpruwa szwy, szuka wszelakich cennych rzeczy jakie mogłyby znajdować się w ciele, a następnie zszywa zwłoki z powrotem.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20524 /* ~"Dlaczego wyciągasz z trupów zęby i szwy?"~ */ JOURNAL #20538 /* ~Zadaniem Marty Szwaczki jest chyba zajmowanie się przyniesionymi do niej zwłokami. Wyrywa im zęby, rozpruwa szwy, szuka wszelakich cennych rzeczy jakie mogłyby znajdować się w ciele, a następnie zszywa zwłoki z powrotem.~ */ GOTO 16
  IF ~~ THEN REPLY #20525 /* ~"Rozumiem. Czy mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20526 /* ~"Uch... dobrze. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #20445 /* ~"Trzewusie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 209
END

IF ~~ THEN BEGIN 16 // from: 13.2 13.3 14.2 14.3 30.2 30.3 31.0 31.1
  SAY #20446 /* ~"Odkładam je, Marto, to właśnie robię." Drapie się po głowie. "Ano, Marto, nitusie do zaszywamia i ząbki są cenniutkie, zamienimy ja na brzdęk-brzdęk. 'Rozpruj trupy, cośmy ci przynieśli' powiedzom Marcie: 'Wyciąg ząbki, szwusie, i trzewusie ze środeczka, rozpruj je, i sprzedamy je Grabom'."~ */
  IF ~~ THEN REPLY #20527 /* ~"Sprzedajesz trupy Grabom...?"~ */ GOTO 17
  IF ~~ THEN REPLY #20528 /* ~"Kto ci to każe robić?"~ */ GOTO 19
  IF ~~ THEN REPLY #20529 /* ~"Co znajdujesz w ciałach?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20530 /* ~"Szukasz jakichś rzeczy w trupach? Możesz za czymś pogrzebać w moim ciele?"~ */ GOTO 22
  IF ~  !NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20531 /* ~"Szukasz jakichś rzeczy w trupach? Możesz za czymś pogrzebać w moim ciele?"~ */ GOTO 23
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20532 /* ~"Wyciągasz z trupów szwy... czy mogę kupić od ciebie igłę i nici?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20533 /* ~"Czy masz jeszcze coś, co wyciągnęłaś z trupów, a mogłoby mi się przydać?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20534 /* ~"Mogę zobaczyć, co ostatnio wyciągnęłaś z trupów?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20535 /* ~"Czy masz coś przeciwko, jeśli tutaj odpocznę?"~ */ GOTO 29
  IF ~~ THEN REPLY #20536 /* ~"Rozumiem. Czy mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20537 /* ~"Uch... dobrze. Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20447 /* ~Marta marszczy brwi. "Czy nie mówiłymy, że je zhandlujem, Marto?" Jeszcze bardziej marszczy brwi i potrząsa głową. "Ano, mówiłymy. Graby skupujom ciała, ale najsam wpierw my wyciungamy z nich, ile się da."~ */
  IF ~~ THEN REPLY #20539 /* ~"Kto każe ci rozpruwać te trupy?"~ */ GOTO 19
  IF ~~ THEN REPLY #20540 /* ~"Rozumiem. Mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20541 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY #20448 /* ~"Trzewusie, trzewusie..." Wzrusza jednym ramieniem. "Bierze je kto inny."~ */
  IF ~~ THEN REPLY #20542 /* ~"Kto?"~ */ GOTO 19
  IF ~~ THEN REPLY #20543 /* ~"Rozumiem. Mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20544 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1 17.0 18.0
  SAY #20449 /* ~"Ta ulana na gębie pazerna świnia Kwint i ten drugi kulawiec Farod, racja, Marto?" Uśmiecha się dziwnie i potakuje głową. "Ano, racja, Marto..."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #20545 /* ~"Farod? Gdzie on jest?"~ */ GOTO 20
  IF ~~ THEN REPLY #20546 /* ~"Co oni robią z tymi rzeczami, które wyciągasz z trupów?"~ */ GOTO 21
  IF ~~ THEN REPLY #20547 /* ~"Rozumiem. Mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20548 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20450 /* ~Marta wzrusza ramionami. "Gdzie jest Farod, pyta toto? Tu jes, nie tak, Marto...?" Przytakuje. "Ano, Farod jes tu, Marto. W jednem z tych budynków jes..."~ */
  IF ~~ THEN REPLY #20549 /* ~"Co oni robią z tymi rzeczami, które wyciągasz z trupów?"~ */ GOTO 21
  IF ~~ THEN REPLY #20550 /* ~"Rozumiem. Mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20551 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #20451 /* ~"Sprzedajom. Sprzedajom za brzęczydełka."~ */
  IF ~~ THEN REPLY #20552 /* ~"Rozumiem... Czy mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20553 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.4 16.3 30.4
  SAY #20452 /* ~Marta patrzy na ciebie przez zmrużone oczy. "Hmnnn." Następnie potakuje głową. "Marta może to zrobić, prawda Marto? Tak, możesz."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 210
END

IF ~~ THEN BEGIN 23 // from: 13.5 16.4 30.5
  SAY #20453 /* ~Marta patrzy na ciebie przez zmrużone oczy. "Hmnnn." Następnie potakuje głową. "Marta może to zrobić, możesz Marto? Tak, możesz..." Wyciąga rozszczepione dłuto. "Gdzie? Gdzie..." Przygląda ci się uważnie, jakby szukała najlepszego miejsca, żeby cię rozpruć.~ */
  IF ~~ THEN REPLY #20554 /* ~"Spróbujmy żołądek..."~ */ GOTO 38
  IF ~~ THEN REPLY #20555 /* ~"A moją klatkę piersiową...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20556 /* ~"Sprawdź jelita... tam mogło coś utknąć."~ */ GOTO 34
  IF ~~ THEN REPLY #20557 /* ~"Otwórz moją czaszkę, jeśli możesz."~ */ GOTO 32
  IF ~~ THEN REPLY #20558 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #20559 /* ~"Uch... mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #20454 /* ~"Gdzie? Gdzie..." Przygląda ci się uważnie, jakby szukała najlepszego miejsca, żeby cię rozpruć.~ */
  IF ~~ THEN REPLY #20560 /* ~"Spróbujmy żołądek..."~ */ GOTO 38
  IF ~~ THEN REPLY #20561 /* ~"A moją klatkę piersiową...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20562 /* ~"Sprawdź jelita... tam mogło coś utknąć."~ */ GOTO 34
  IF ~~ THEN REPLY #20563 /* ~"Otwórz moją czaszkę, jeśli możesz."~ */ GOTO 32
  IF ~~ THEN REPLY #20564 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #20565 /* ~"Uch... mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 32.0 33.0 34.1 38.0
  SAY #20455 /* ~Odzyskujesz powoli przytomność... a kiedy się budzisz, widzisz Martę jak potrząsa głową. "Nic, nic, nie znalazłam, nie Marto?" Potrząsa głową. "Nie, nic, Marto, nie miałymy szczęścia... możem spróbować jeszcze raz?"~ */
  IF ~~ THEN REPLY #20566 /* ~"Spr... Sp... Spróbujmy żołądek..."~ */ GOTO 38
  IF ~~ THEN REPLY #20567 /* ~"Aaa... aaa... A moją klatkę piersiową...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20568 /* ~"Spra... spra... sprawdź jelita... tam mogło coś utknąć."~ */ GOTO 34
  IF ~~ THEN REPLY #20569 /* ~"Otw... otw... Otwórz moją czaszkę, jeśli możesz."~ */ GOTO 32
  IF ~~ THEN REPLY #20570 /* ~"Nii - nii - nie, mam kilka innych pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #20571 /* ~"Nii... nii... jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.7 16.5 30.7
  SAY #20456 /* ~Wydaje się zmieszana. "Kupić? Brzdęk-brzdęk? Czy nie jesteś tu, żeby coś podłapać... przeto po to tu jesteś, nie tak? Żeby podłapać nici, kości, szczękające ząbki?"~ */
  IF ~~ THEN REPLY #20572 /* ~Kłamstwo: "No, jestem tu, żeby je podłapać."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_4","GLOBALLaw",-1)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Teeth",Protagonist,1,0,0)
~ GOTO 27
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20573 /* ~"Nie, nie jestem tu, żeby je podłapać, ale kupię trochę od ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 28
  IF ~  PartyGold(0)
~ THEN REPLY #20574 /* ~"Nie, nie jestem tu, żeby je podłapać, ale kupię trochę od ciebie... kiedy będę miał trochę pieniędzy do wydania. Na razie to mam kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 13
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20575 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #20576 /* ~"Uch... mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20457 /* ~"Przeto po to tu jesteś..." Podaje ci rzeczy. "Wszysko co mam, wszyściutko..."~ */
  IF ~~ THEN REPLY #20577 /* ~"Dziękuję. Mam kilka innych pytań..."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #20578 /* ~"Dziękuję... to powinno mi pomóc. Żegnaj."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #20458 /* ~Spogląda na monety w twojej ręce, jakby nie była pewna co o nich ma myśleć. "Brzęczące brzęczydełka. Brzęczą..." Marszczy brwi. "Czego one chcom, znowu, Marto?" Zaczyna mamrotać. "Marto... Marto, czego one chcom?"~ */
  IF ~~ THEN REPLY #20579 /* ~"Mogę zobaczyć, co masz?"~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20580 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #20581 /* ~"Uch... mniejsza z tym. Żegnaj."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 13.6 16.8 30.6
  SAY #20459 /* ~Marta potakuje głową. "Marty dom, Marta tu spać; możesz się przespać jeźli chcesz, tak. Nie myślem, co by Marta miała cuś przeciwko... a ty, Marto? Potrząsa głową. "Nie, nie Marto, jeźli ty tak nie myślisz, to ja też..."~ */
  IF ~~ THEN REPLY #20583 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #20584 /* ~"Nie chcę odpoczywać w tej chwili. Najpierw mam kilka innych pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #20585 /* ~"Może wrócę, kiedy będę potrzebował snu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 1.1
  SAY #20460 /* ~Kiedy się odzywasz, Marta zerka do góry. "Czy to tu o cuś pytało, Marto...? Marta mruga, po czym marszczy brwi. "Ano, Marto, tak pytało, bo pytanie ma wypisane na czole, ano ma..."~ */
  IF ~~ THEN REPLY #20586 /* ~"Kim jesteś?"~ */ GOTO 11
  IF ~~ THEN REPLY #20587 /* ~"Co robisz?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20588 /* ~"Dlaczego wyciągasz z trupów zęby i szwy?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Zadaniem Marty Szwaczki jest chyba zajmowanie się przyniesionymi do niej zwłokami. Wyrywa im zęby, rozpruwa szwy, szuka wszelakich cennych rzeczy jakie mogłyby znajdować się w ciele, a następnie zszywa zwłoki z powrotem.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20589 /* ~"Dlaczego wyciągasz z trupów zęby i szwy?"~ */ JOURNAL #20538 /* ~Zadaniem Marty Szwaczki jest chyba zajmowanie się przyniesionymi do niej zwłokami. Wyrywa im zęby, rozpruwa szwy, szuka wszelakich cennych rzeczy jakie mogłyby znajdować się w ciele, a następnie zszywa zwłoki z powrotem.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20590 /* ~"Możesz pogrzebać w moim ciele i znaleźć coś?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20591 /* ~"Możesz pogrzebać w moim ciele i znaleźć coś?"~ */ GOTO 23
  IF ~~ THEN REPLY #20592 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20593 /* ~"Wyciągasz z trupów szwy... czy mogę kupić od ciebie igłę i nici?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20594 /* ~"Czy masz jeszcze coś, co wyciągnęłaś z trupów, a mogłoby mi się przydać?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20595 /* ~"Mogę zobaczyć, co ostatnio wyciągnęłaś z trupów?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20596 /* ~"Nie mam już pytań. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.1
  SAY #20461 /* ~"Trzewusie ze środeczka, trzewusie ze środeczka... tak, Marto?" Potakuje, a potem potrząsa głową. "Kiedy je będom mieć, Marto, kiedy je będom mieć..."~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20597 /* ~"Dlaczego wyciągasz z trupów zęby i szwy?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Zadaniem Marty Szwaczki jest chyba zajmowanie się przyniesionymi do niej zwłokami. Wyrywa im zęby, rozpruwa szwy, szuka wszelakich cennych rzeczy jakie mogłyby znajdować się w ciele, a następnie zszywa zwłoki z powrotem.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20598 /* ~"Dlaczego wyciągasz z trupów zęby i szwy?"~ */ JOURNAL #20538 /* ~Zadaniem Marty Szwaczki jest chyba zajmowanie się przyniesionymi do niej zwłokami. Wyrywa im zęby, rozpruwa szwy, szuka wszelakich cennych rzeczy jakie mogłyby znajdować się w ciele, a następnie zszywa zwłoki z powrotem.~ */ GOTO 16
  IF ~~ THEN REPLY #20599 /* ~"Rozumiem... Czy mogę ci zadać kilka innych pytań?"~ */ GOTO 13
  IF ~~ THEN REPLY #20600 /* ~"Uch... bardzo dobrze. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.3 24.3 25.3 39.3
  SAY #20462 /* ~Kładziesz się na stole i ostatnią rzeczą jaką widzisz, jest Marta stojąca nad tobą z przygotowanym dłutem i pobijakiem. Słyszysz ostre *trzaśnięcie* i krzycząc tracisz przytomność.~ */
  IF ~~ THEN REPLY #20601 /* ~Zapadnij w ciemność...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #20602 /* ~Poprosiłem Martę... pomyloną Szwaczkę w Zakopanej Wiosce... aby zajrzała do mojej czaszki i sprawdziła czy coś w niej jest. Nie było.~ */ GOTO 25
END

IF ~~ THEN BEGIN 33 // from: 23.1 24.1 25.1 39.1
  SAY #20463 /* ~Kładziesz się na stole, nad tobą stoi Marta z przygotowanym dłutem i pobijakiem. Słyszysz ostre *trzaśnięcie* kiedy rozdziera ci klatkę piersiową i dławisz się własnym krzykiem, kiedy zaczyna grzebać w twoich płucach... kiedy próbujesz złapać powietrze drętwiejesz i tracisz przytomność uwalniając się od bólu.~ */
  IF ~~ THEN REPLY #20603 /* ~Zapadnij w ciemność...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 23.2 24.2 25.2 39.2
  SAY #20464 /* ~Kładziesz się na stole, nad tobą stoi Marta z przygotowanym zardzewiałym nożem.
Czujesz kłujący ból, kiedy najpierw kraje twój brzuch, a potem brutalnie tnie na dół, jak piła, odkrywając twoje wnętrzności. Mimo bólu, w milczeniu, z makabryczną fascynacją, obserwujesz jak plądruje twoje organy, nucąc coś sobie...~ */
  IF ~  Global("Marta_Ring","GLOBAL",0)
~ THEN REPLY #20604 /* ~Obserwuj...~ */ GOTO 35
  IF ~  Global("Marta_Ring","GLOBAL",1)
~ THEN REPLY #20605 /* ~Zapadnij w ciemność...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #20465 /* ~"Ach!" Czujesz rwący ból, kiedy Marta podnosi do góry sznurowatą masę twoich wnętrzności, z których cieknie krew i inne płyny. "Spójrz na to, Marto... spójrz na to... widzem, widzem, przetnij tam, przetnij tam..." Marta robi małe zręczne nacięcie na jednym z jelit i słyszysz *dinnng* kiedy coś małego i metalowego spada na podłogę.~ */
  IF ~~ THEN REPLY #20606 /* ~"Yyyyy..."~ */ DO ~SetGlobal("Marta_Ring","GLOBAL",1)
GiveItemCreate("Ring02",Protagonist,1,0,0)
GiveItemCreate("Intest",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #20607 /* ~Poprosiłem Martę... pomyloną Szwaczkę w Zakopanej Wiosce... aby przeszukała moje jelita i sprawdziła czy nic się w nich zatrzymało. Znalazła pierścień... i zostawiła mi też resztę jelit.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #20466 /* ~Następnie, wrzuca gęstą masę z powrotem do twojego ciała, po czym sięga na podłogę, podnosi przedmiot... pierścień, chyba, i rzuca go do ciebie. "Ładnie, ładnie, co, Marto?" Potakuje głową. "Tak, Marto, nie powinno się połykać takich rzeczy, nie, nie..."~ */
  IF ~~ THEN REPLY #20608 /* ~"Dzię - dziękuję... czy... było... coś... jeszcze...?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 13.8 16.6 30.8
  SAY #20467 /* ~"Niczego więcej ni mam, prawda Marto? Potakuje głową. "Zabrał wszysko ostatnim razem, ten tu, ni ma już, ni ma..."~ */
  IF ~~ THEN REPLY #20609 /* ~"Dobrze. Mam kilka innych pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #20610 /* ~"Zatem mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.0 24.0 25.0 39.0
  SAY #20468 /* ~Kładziesz się na stole, nad tobą stoi Marta z przygotowanym zardzewiałym nożem.
Czujesz kłujący ból, kiedy najpierw kraje twój brzuch, a potem brutalnie tnie na dół, jak piła, odkrywając twoje wnętrzności. Mimo bólu, z makabryczną fascynacją, obserwujesz jak podnosi do góry twój żołądek...~ */
  IF ~~ THEN REPLY #20611 /* ~Obserwuj...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0
  SAY #45007 /* ~Marta potrząsa głową. "Nic więcej, nic więcej, co Marto? Może powinnyśmy spróbować w innem miejscu, Marto?"~ */
  IF ~~ THEN REPLY #45009 /* ~"Spr... Sp... Spróbujmy żółądek..."~ */ GOTO 38
  IF ~~ THEN REPLY #45010 /* ~"Aaa... aaa... A moją klatkę piersiową...?"~ */ GOTO 33
  IF ~~ THEN REPLY #45011 /* ~"Spra... spra... sprawdź jelita... jeszcze... tylko... ten... jeden... raz..."~ */ GOTO 34
  IF ~~ THEN REPLY #45012 /* ~"Otw... otw... Otwórz moją czaszkę, jeśli możesz."~ */ GOTO 32
  IF ~~ THEN REPLY #45013 /* ~"Nii - nii - nie, mam kilka innych pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #45014 /* ~"Nii... nii... jeszcze nie. Żegnaj."~ */ EXIT
END
