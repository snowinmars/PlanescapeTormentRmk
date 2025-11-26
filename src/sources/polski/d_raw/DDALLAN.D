// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLAN~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #49373 /* ~Widzisz wysokiego mężczyznę o sięgających do ramion włosach i przeszywających błękitnych oczach. Wszystko, na co spojrzy, zdaje się iskrzyć pod wpływem jego wzroku. Obok niego stoi milcząca młoda kobieta, która delikatnym uśmiechem kwituje wszystko to, co on do niej mówi. Mężczyzna kieruje na ciebie swe szafirowe oczy i uśmiecha się szeroko. Podaje ci rękę: "Nazywam się Dallan. Miło mi się poznać."~ */
  IF ~~ THEN REPLY #49374 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49375 /* ~"Miło było cię poznać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #49376 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #49377 /* ~Dallan uśmiecha się do ciebie szeroko po raz kolejny. "Co się dzieje?"~ */
  IF ~~ THEN REPLY #49378 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49379 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0 7.1
  SAY #49380 /* ~"Czego się chcesz dowiedzieć?"~ */
  IF ~~ THEN REPLY #49381 /* ~"Obiło mi się o uszy, że w mieście jest deva."~ */ GOTO 3
  IF ~~ THEN REPLY #49382 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #49383 /* ~"Kim jest ta dziewczyna?"~ */ GOTO 5
  IF ~~ THEN REPLY #49384 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49385 /* ~Śmieje się i potrząsa przecząco głową. "Masz jakieś inne pytanie?"~ */
  IF ~~ THEN REPLY #49386 /* ~"Tak. Co wiesz o tym devie?"~ */ GOTO 6
  IF ~~ THEN REPLY #49387 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #49388 /* ~"Kim jest ta twoja przyjaciółka?"~ */ GOTO 5
  IF ~~ THEN REPLY #49389 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.2
  SAY #49390 /* ~"Jestem bardem, znawcą historii, aktorem i wszechstronnym artystą. Najszybsze palce w Krainach Zewnętrznych." Na jego twarzy gości kolejny, tym razem porozumiewawczy uśmiech. "W każdym razie to właśnie wszystkim rozpowiadam."~ */
  IF ~~ THEN REPLY #49391 /* ~"Opowiedz mi więc o tym devie..."~ */ GOTO 6
  IF ~~ THEN REPLY #49392 /* ~"Kim jest twoja przyjaciółka?"~ */ GOTO 5
  IF ~~ THEN REPLY #49393 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.1 6.1
  SAY #49394 /* ~Śmieje się. "Jest przyjaciółką. To wszystko, co potrzebujesz wiedzieć." Kobieta uśmiecha się delikatnie i zaczyna rumienić.~ */
  IF ~~ THEN REPLY #49395 /* ~"W porządku. Opowiedz mi teraz o tym devie..."~ */ GOTO 6
  IF ~~ THEN REPLY #49396 /* ~"W takim razie opowiedz mi o sobie..."~ */ GOTO 4
  IF ~~ THEN REPLY #49397 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 5.0
  SAY #49398 /* ~Śmieje się głośno. "Każda rzecz ma swoją cenę, ale ja nie jestem jeszcze gotów, by wycenić taką informację. Może później."~ */
  IF ~~ THEN REPLY #49399 /* ~"A co, jeśli się posłużę groźbami?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 7
  IF ~~ THEN REPLY #49400 /* ~"W takim razie opowiedz mi o swojej przyjaciółce..."~ */ GOTO 5
  IF ~~ THEN REPLY #49401 /* ~"W takim razie opowiedz mi o sobie..."~ */ GOTO 4
  IF ~~ THEN REPLY #49402 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #49403 /* ~Sięga ręką po broń. "W takim razie przekonamy się, kto lepiej walczy."~ */
  IF ~~ THEN REPLY #49404 /* ~"Spokojnie. Zadaję jedynie pytania. Odpowiedz mi jeszcze na parę."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANCETOSTAND)
~ GOTO 2
  IF ~~ THEN REPLY #49405 /* ~"Może później. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49406 /* ~"Hmm. Zastanowię się nad tym. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 8 // from:
  SAY #49407 /* ~Widzisz wysokiego mężczyznę o sięgających do ramion włosach i przeszywających błękitnych oczach. Wszystko, na co spojrzy, zdaje się iskrzyć pod wpływem jego wzroku. Obok niego stoi milcząca młoda kobieta, która delikatnym uśmiechem kwituje wszystko to, co on do niej mówi. Mężczyzna kieruje na ciebie swe szafirowe oczy i uśmiecha się szeroko. Podaje ci rękę: "Nazywam się Dallan. Szukasz Klucza."~ */
  IF ~~ THEN REPLY #49408 /* ~"Zgadza się. Co mam zrobić w zamian?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~Aby zdobyć część Klucza, o której powiedział mi Dallan, muszę porozmawiać z urzędnikiem githyanki o nazwisku An'izjusz. Można go spotkać w pobliżu bramy do Tartaru, w centrum miasta.~ */ GOTO 10
  IF ~~ THEN REPLY #49409 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",4)
Global("C_Off","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49412 /* ~"Potrzebujesz Klucza, nieprawdaż?"~ */
  IF ~~ THEN REPLY #49413 /* ~"Zgadza się. Co mam zrobić w zamian?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~Aby zdobyć część Klucza, o której powiedział mi Dallan, muszę porozmawiać z urzędnikiem githyanki o nazwisku An'izjusz. Można go spotkać w pobliżu bramy do Tartaru, w centrum miasta.~ */ GOTO 10
  IF ~~ THEN REPLY #49414 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #49415 /* ~"To jest samo z siebie bardzo proste. Powiedzmy, że jeden z rządzących miastem ma pewne... trudności natury politycznej. Jeden z jego wrogów w radzie miejskiej sprawia mu pewne kłopoty. Idź i porozmawiaj z nim, by się przekonać, czy będziesz w stanie jakoś mu pomóc. Nazywa się An'izjusz i należy do githyanki. Znajdziesz go w pobliżu bramy wiodącej do Tartaru w centrum miasta."~ */
  IF ~~ THEN REPLY #49416 /* ~"Pozwól mi zadać ci w związku z tym kilka pytań. Czy to jeden z twych przyjaciół? Spodziewasz się po tym jakiś wymiernych korzyści?"~ */ GOTO 11
  IF ~~ THEN REPLY #49418 /* ~"Dobrze. Jeszcze wrócę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #49419 /* ~Uśmiecha się szerzej. "Powiedzmy po prostu, że ufam twojej dyskrecji. Zrozumiesz, o co mi chodzi."~ */
  IF ~~ THEN REPLY #49421 /* ~"Dobrze. Jeszcze wrócę. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",1)
GlobalLT("C_Off","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #49422 /* ~Dallan raczy cię kolejnym ze swych pokazowych uśmiechów, gdy obejmuje ramieniem swoją przyjaciółkę. "I jak tam idzie, hm? Jakiś postęp?"~ */
  IF ~~ THEN REPLY #49423 /* ~"Pracuję nad tym. Mam kilka pytań do ciebie..."~ */ GOTO 13
  IF ~~ THEN REPLY #49424 /* ~"Pracuję nad tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49425 /* ~"Może później. Mam teraz coś ważnego do wykonania..." Rozgląda się pobieżnie po pokoju. "Porozmawiamy, gdy już skończysz."~ */
  IF ~~ THEN REPLY #49426 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #49427 /* ~"Wszystko słyszałem o twojej świetnie wykonanej robocie, przyjacielu. To była miła odmiana, nieprawdaż? Jak ci się podoba polityka Klątwy?" Pociąga łyk piwa. "Oto zapłata z mojej strony." Głos jego pogłębia się, przyjmując wręcz rytualny ton: "A tyle ich dzieli od Bogów i Niebiańskiego Światła..." jego głos wraca do normy i rzecze on, "By otrzymać ostatnią część klucza, porozmawiaj ze stojącą tam Doną Kiszał."~ */
  IF ~~ THEN REPLY #49428 /* ~"Wpierw chcę ci zadać jeszcze kilka pytań..."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan wynagrodził mnie swoją częścią Klucza i skierował mnie do Dony Kiszał. Czwarta część Klucza to słowa: "A tyle ich dzieli od Bogów i Niebiańskiego Światła..."~ */ GOTO 16
  IF ~~ THEN REPLY #49429 /* ~"Dzięki. Żegnaj."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan wynagrodził mnie swoją częścią Klucza i skierował mnie do Dony Kiszał. Czwarta część Klucza to słowa: "A tyle ich dzieli od Bogów i Niebiańskiego Światła..."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 15 // from:
  SAY #49431 /* ~"Znowu tu, co? Mało ci było?" Dziewczyna, z którą tu przebywa, zdaje się być nieco inną... Oko postrzega ją jako odmienną osobę, ale porusza się ona tak podobnie do tamtej, że nie potrafisz zdecydować, jak jest w rzeczywistości.~ */
  IF ~~ THEN REPLY #49432 /* ~"Mam kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #49433 /* ~"W zasadzie to już tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0
  SAY #49434 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #49435 /* ~"Kim jest ta twoja przyjaciółka?"~ */ GOTO 17
  IF ~~ THEN REPLY #49436 /* ~"Poza tym dlaczego chciałeś, by się zająć tą sprawą? Jaki miałeś z tym powiązania?"~ */ GOTO 18
  IF ~~ THEN REPLY #49437 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49438 /* ~"To tylko przyjaciółka. Przyjaciółka. I wiedzie się nam bardzo dobrze. Chcesz coś jeszcze?"~ */
  IF ~~ THEN REPLY #49439 /* ~"Poza tym dlaczego chciałeś, by się zająć tą sprawą? Jaki miałeś z tym powiązania?"~ */ GOTO 18
  IF ~~ THEN REPLY #49440 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #49441 /* ~"Ponieważ An'zjusz zabronił mi występować w mieście." Spluwa na podłogę. "Ponieważ Sjaba odmówiła mi pomocy pomimo naszej wieloletniej znajomości. Powiedziała, że wtedy nie było jej to na rękę. Ponieważ on był złaknionym władzy psem, a ona pnącą się coraz wyżej suką. Wiedziałem, że prędzej czy później jedno z nich lub oboje poniosą porażkę.~ */
  IF ~~ THEN REPLY #49442 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END
