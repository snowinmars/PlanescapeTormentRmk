// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMACH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMACH1~

IF ~  Global("Machine_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64241 /* ~Ta starożytna machina wygląda na relikt z czasów jakiejś dawno zapomnianej wojny. Praktycznie całe urządzenie tonie w grubym kurzu, wyjąwszy osobliwie wyglądającą, umieszczoną z przodu tablicę, wyposażoną w wiele dźwigni. Co ciekawe, ziemia w pobliżu tablicy jest wyraźnie zdeptana, zupełnie jakby ktoś całkiem niedawno tutaj stał. Całkiem niedawno to znaczy zapewne dobre kilka lat temu.~ */
  IF ~  Global("Machine","GLOBAL",3)
~ THEN REPLY #64261 /* ~Poszukaj tablicy, a potem dźwigni oznaczonej symbolem 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Machine","GLOBAL",0)
GlobalLT("Machine","GLOBAL",3)
~ THEN REPLY #64246 /* ~Poszukaj tablicy, a potem dźwigni oznaczonej symbolem 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Machine","GLOBAL",0)
~ THEN REPLY #64247 /* ~Przyjrzyj się tablicy.~ */ GOTO 1
  IF ~~ THEN REPLY #64248 /* ~Zostaw machinę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #64242 /* ~Na tablicy znajduje się wiele dźwigni i pokręteł. Obok każdego przyrządu widnieją znaki, które ktoś musiał w dużym pośpiechu wyżłobić ostrzem sztyletu. W pobliżu niektórych dźwigni znaki są ledwo widocznymi kropkami, inne oznaczone tylko jedną kreską, natomiast jednej jedynej dźwigni w całym zestawie towarzyszy zamaszysty znak w kształcie litery 'X'. Wyciągasz dłonie, aby pociągnąć tę dźwignię. Masz niejasne wrażenie, że manewr ten w jakiś sposób pomoże ci opuścić to miejsce.~ */
  IF ~  Global("Clock_1","GLOBAL",1)
~ THEN REPLY #64249 /* ~Pociągnij dźwignię oznaczoną symbolem 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64238 /* ~W Fortecy znalazłem osobliwą maszynę. Wyglądała jak rodzaj armaty, ale podejrzewam, że to rodzaj 'bramy' albo mechanizmu zamykającego Fortecę. Kiedy ją pociągnąłem, zostałem przeniesiony do innej, niedostępnej części Fortecy - balkonu wznoszącego się nad główną galerią. Będę musiał znaleźć inne takie maszyny i również jakoś je uruchomić. Jeżeli wiadomość zostawiona na zegarze była wskazówką dla mnie, to musiałem już w którymś z poprzednich żywotów mieć do czynienia z takimi obiektami.~ */ GOTO 2
  IF ~  Global("Clock_1","GLOBAL",0)
~ THEN REPLY #64250 /* ~Pociągnij dźwignię oznaczoną symbolem 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64239 /* ~W Fortecy znalazłem osobliwą maszynę. Wyglądała jak rodzaj armaty, ale podejrzewam, że to rodzaj 'bramy' albo mechanizmu zamykającego Fortecę. Kiedy ją pociągnąłem, zostałem przeniesiony do innej, niedostępnej części Fortecy - balkonu wznoszącego się nad główną galerią. Będę musiał znaleźć inne takie maszyny i również jakoś je uruchomić. Jeżeli wiadomość zostawiona na zegarze była wskazówką dla mnie, to musiałem już w którymś z poprzednich żywotów mieć do czynienia z takimi obiektami. Nie wiem skąd, ale mam niejasne odczucie, że już wcześniej miałem do czynienia z takimi obiektami.~ */ GOTO 2
  IF ~~ THEN REPLY #64251 /* ~Zostaw machinę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #64243 /* ~Dźwignia nie stawia żadnego oporu i przesuwa się lekko, a zaraz potem, ku twojemu ogromnemu zdziwieniu, rozpływa we mgle... Ta sama pochłaniająca kształty mgła ogarnia teraz twoją dłoń, potem ramię i nagle ogarnia cię wzbierająca fala mdłości, a otaczające cię mury osuwają się w ciemność...~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64252 /* ~"Co się dzi..."~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64310 /* ~"Co się dzi..."~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64311 /* ~"Co się dzi..."~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~  Global("Machine_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #64244 /* ~Ta starożytna machina wygląda na relikt z czasów jakiejś dawno zapomnianej wojny. Praktycznie całe urządzenie tonie w grubym kurzu, wyjąwszy osobliwie wyglądającą, wyposażoną w wiele dźwigni tablicę. Po tajemniczej dźwigni, którą poprzednio pociągnąłeś, nie ma śladu. Tak, jakby jej nigdy nie było.~ */
  IF ~~ THEN REPLY #64253 /* ~Zostaw machinę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY #64245 /* ~Szybko odnajdujesz dźwignię oznaczoną znakiem 'X' i pociągasz ją do siebie. Dźwignia nie stawia żadnego oporu i przesuwa się lekko, a zaraz potem rozpływa we mgle... Zaczerpujesz głęboko powietrza do płuc, a potem porywa cię fala mdłości i otaczające cię mury osuwają się w ciemność...~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64254 /* ~"Dokąd tym razem..."~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64314 /* ~"Dokąd tym razem..."~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64315 /* ~"Dokąd tym razem..."~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64255 /* ~Szybko odnajdujesz dźwignię oznaczoną znakiem 'X' i pociągasz ją do siebie. Dźwignia nie stawia żadnego oporu i przesuwa się lekko, a potem rozpływa we mgle... Zaczerpujesz głęboko powietrza do płuc, ale w odróżnieniu od poprzednich sytuacji tego typu, nic się nie dzieje.~ */
  IF ~~ THEN JOURNAL #64260 /* ~Kiedy pociągnąłem dźwignię czwartego reliktu, otworzyło się coś w krypcie Fortecy... Może to wyjście? Muszę jakoś znaleźć to wyjście i zabierać się stąd jak najszybciej...~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64256 /* ~Z oddali dobiega cię głuchy łoskot, jak gdyby *coś* właśnie otwierało się z dużym oporem. W chwilę potem krypty wypełnia zawodzący wściekle wicher. Kiedy próbujesz zlokalizować miejsce, z którego nadciągnął wiatr, nagle czujesz, że twoje ciało gubi swoją materialność i roztapia się w szalejącym żywiole powietrza...~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64257 /* ~"A cóż to się dzieje...?"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64312 /* ~"A cóż to się dzieje...?"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64313 /* ~"A cóż to się dzieje...?"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END
