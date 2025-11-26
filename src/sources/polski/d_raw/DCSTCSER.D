// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9998 /* ~Widzisz mężczyznę w średnim wieku, który sprawia wrażenie zmęczonego. Gdy dostrzega, że zwracasz na niego uwagę, kłania ci się nieznacznie.~ */
  IF ~~ THEN REPLY #9999 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #10000 /* ~Pozostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10001 /* ~Unika spotkania z twoim wzrokiem - zamiast tego wpatruje się podłoże koło twych stóp. "Witaj, śmiałku. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #10002 /* ~"Mógłbyś na mnie spojrzeć, kiedy do ciebie mówię."~ */ GOTO 2
  IF ~~ THEN REPLY #10003 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #10004 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10005 /* ~Rzuca ci przelotne spojrzenie, po czym ponownie kieruje swój wzrok na twoje stopy. "Jako służący powinienem unikać twego wzroku, śmiałku."~ */
  IF ~~ THEN REPLY #10006 /* ~"Dobrze. Znasz swoje miejsce i powinieneś się tego trzymać."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Servant_1","GLOBALLaw",1)
~ GOTO 3
  IF ~~ THEN REPLY #10007 /* ~"Cóż. Nie jesteś moim sługą, będę cię więc traktować jak równego sobie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Servant_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #10008 /* ~"Jak chcesz. Mam do ciebie parę innych pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #10009 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2 4.0 6.0 7.1 8.0 10.0
  SAY #10010 /* ~Przytakuje, wciąż jednak patrzy w inna stronę. "Tak, śmiałku."~ */
  IF ~~ THEN REPLY #10011 /* ~"Szukam devy. Powiedziano mi, że jest w Klątwie. Widziałeś go?"~ */ GOTO 4
  IF ~~ THEN REPLY #10012 /* ~"Opowiedz mi o Klątwie."~ */ GOTO 5
  IF ~~ THEN REPLY #10013 /* ~"Co nowego słychać?"~ */ GOTO 7
  IF ~~ THEN REPLY #10014 /* ~"Kto tu rządzi?"~ */ GOTO 9
  IF ~~ THEN REPLY #10015 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10016 /* ~"Nie wiem nic o devie, śmiałku. Nie potrafię sobie nawet wyobrazić, że deva mógłby przebywać gdzieś w okolicy Klątwy, a co dopiero w niej samej." Przerywa na chwilę, by się zastanowić. "Radziłbym spytać w biurze administracyjnym na rynku. Powinni wiedzieć o takim przybyszu."~ */
  IF ~~ THEN REPLY #10017 /* ~"Dziękuję. Mam jednak jeszcze parę pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #10018 /* ~"Byłeś mi bardzo pomocny. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #10019 /* ~"Raczej niewiele jest tu do powiedzenia, śmiałku. Klątwa jest miastem-bramą położnym na krańcu Krain Zewnętrznych. Strzeże bramy wiodącej do Tartaru - którą możesz znaleźć na rynku..." Marszczy brew, zamyślając się. "Nie sądzę jednakże, by była ona nadal otwarta. Ma to jakiś związek z zapobieganiem rozprzestrzeniania się zarazy."~ */
  IF ~~ THEN REPLY #10020 /* ~"Zarazy?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10021 /* ~Ton twojego głosu zmusza go do natychmiastowych wyjaśnień. "Tak, śmiałku. Nie musisz się jednak obawiać. Zarażone części miasta zostały odizolowane i wszystko jest pod kontrolą."~ */
  IF ~~ THEN REPLY #10022 /* ~"Ech... Dobrze. W takim razie pozwól mi jeszcze o coś zapytać."~ */ GOTO 3
  IF ~~ THEN REPLY #10023 /* ~"Byłeś mi bardzo pomocny. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #10024 /* ~"Co nowego...? Cóż. Wiem, że w najbliższym czasie ma się odbyć egzekucja. Oprócz tego nic mi to głowy nie przychodzi, śmiałku."~ */
  IF ~~ THEN REPLY #10025 /* ~"Kto ma zostać stracony i z jakiego powodu?"~ */ GOTO 8
  IF ~~ THEN REPLY #10026 /* ~"W porządku. Chcę cię spytać o coś innego."~ */ GOTO 3
  IF ~~ THEN REPLY #10027 /* ~"Rozumiem. Dziękuję za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10028 /* ~Wzrusza ramionami. "Nie wiem, śmiałku. To nie ty, ani nie ja... Ma to więc jakieś znaczenie?"~ */
  IF ~~ THEN REPLY #10029 /* ~"...zgaduję, że nie. Pozwól mi spytać o coś innego."~ */ GOTO 3
  IF ~~ THEN REPLY #10030 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY #10031 /* ~"To Włodarz Tovus Giljaf. Można go znaleźć w biurze administracyjnym na rynku."~ */
  IF ~~ THEN REPLY #10032 /* ~"Rozumiem. Co możesz mi powiedzieć o Torvusie?"~ */ GOTO 10
  IF ~~ THEN REPLY #10033 /* ~"Wielkie dzięki. Chcę cię coś innego zapytać."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10034 /* ~Dopiero teraz po raz pierwszy podnosi wzrok i spogląda ci w oczy. "Nic, śmiałku. W sumie nic. Jeśli masz jakieś pytania odnośnie jego lordowskiej mości, powinieneś się z nimi do niego udać." Opuszcza wzrok.~ */
  IF ~~ THEN REPLY #10035 /* ~"W porządku. Może tak zrobię. Pozwól, że spytam o coś innego."~ */ GOTO 3
  IF ~~ THEN REPLY #10036 /* ~"Rozumiem. Cóż, muszę już iść. Żegnaj."~ */ EXIT
END
