// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILLON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILLON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #7095 /* ~"Straż! Straż! Intruz!"~ */
  IF ~~ THEN REPLY #7096 /* ~Gotowe.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #7097 /* ~"Panie, musisz już iść. Skoro masz zostać odeskortowany, nie chcem cię tu zatrzymywać."~ */
  IF ~~ THEN REPLY #7098 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",0)
Global("Alarm1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #7099 /* ~"Co mogem dla ciebie zrobić, panie?"~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7100 /* ~"Muszę skorzystać z kuźni. Czy możesz dać mi trochę rudy?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7101 /* ~"Muszę skorzystać z kuźni. Czy możesz dać mi trochę rudy?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7102 /* ~"Powiedz mi o swym poprzedniku."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7103 /* ~"Powiedz mi o swym poprzedniku."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7104 /* ~"Powiedz mi o swym poprzedniku."~ */ GOTO 7
  IF ~~ THEN REPLY #7105 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0
  SAY #7106 /* ~"Przykro mi, panie. Szef powiedział, że spendziłeś przy kuźni za dużo czasu. Musimy tam innych dopuścić. Wybacz, panie."~ */
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7107 /* ~"Powiedz mi o swym poprzedniku."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7108 /* ~"Powiedz mi o swym poprzedniku."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7109 /* ~"Powiedz mi o swym poprzedniku."~ */ GOTO 7
  IF ~~ THEN REPLY #7110 /* ~"Dobrze. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1
  SAY #7111 /* ~"Chcesz trochę rudy? Dobra. Używaj jej dobrze, panie. Chce, by siem z nią grzecznie obchodzić."~ */
  IF ~~ THEN REPLY #7112 /* ~"Zrobię to. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #7113 /* ~"Nieważne. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.0
  SAY #7114 /* ~"To było bardzo dziwne! Jak tylko Saros został zamknienty, Tyldon po prostu zniknął. Bez wiadomości, bez wyjaśnienia... Nic. Tak po prostu zniknął. To był straszny skurczybyk i nikt po nim nie płakał, gdy odszedł."~ */
  IF ~~ THEN REPLY #7115 /* ~"Muszę skorzystać z kuźni. Czy możesz dać mi trochę rudy?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7116 /* ~"Muszę skorzystać z kuźni. Czy możesz dać mi trochę rudy?"~ */ GOTO 4
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7117 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1
  SAY #7118 /* ~"Dobra! Gdy go aresztowano i zamkniento, wystaraliśmy się jakżeśmy tylko mogli, żeby go zapomnieć. Zawsze nie cierpieliśmy tego trepa, oj tak. Poczuliśmy ulgę, gdy odszedł."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7119 /* ~"Muszę skorzystać z kuźni. Czy możesz dać mi trochę rudy?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7120 /* ~"Muszę skorzystać z kuźni. Czy możesz dać mi trochę rudy?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7121 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 3.2
  SAY #7122 /* ~"To cholerny wstyd widzieć, że Saros odszedł. To samo się stało z tym dudkiem Tyldonem... To jakiś diabelski układ, to pewne. Soros był całkiem, ale Tyldon? On odszedł. I bardzo dobrze."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7123 /* ~"Muszę skorzystać z kuźni. Czy możesz dać mi trochę rudy?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7124 /* ~"Muszę skorzystać z kuźni. Czy możesz dać mi trochę rudy?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7125 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END
