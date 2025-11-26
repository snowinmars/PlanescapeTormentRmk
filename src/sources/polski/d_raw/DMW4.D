// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47991 /* ~Widzisz mężczyznę w średnim wieku pracującego skrzętnie przy skrzyniach. Kiedy podchodzisz kłania się.~ */
  IF ~~ THEN REPLY #47992 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #47993 /* ~Zignoruj mężczyznę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47994 /* ~Uśmiecha się i ociera czoło. "Jak się masz, śmiałku."~ */
  IF ~~ THEN REPLY #47995 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47996 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.1 6.0 7.1 8.1 9.0 10.0
  SAY #47997 /* ~Kiwnął głową. "Bardzo dobrze..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47998 /* ~"Szukam człowieka o imieniu Lotar, zwanego również Panem Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47999 /* ~"Miałem czaszkę, którą mi ukradziono. Czy znasz kogoś, kto mógłby to zrobić?"~ */ GOTO 4
  IF ~~ THEN REPLY #48000 /* ~"Gdzie mogę kupić jakąś broń?"~ */ GOTO 5
  IF ~~ THEN REPLY #48001 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 7
  IF ~~ THEN REPLY #48002 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48003 /* ~Potrząsa głową. "Nigdy o nim nie słyszałem. Popytałbym w okolicy, może ktoś będzie wiedział."~ */
  IF ~~ THEN REPLY #48004 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48005 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #48006 /* ~Spogląda na ciebie bez wyrazu. "Szukasz czaszki... ja, uch..." Wzrusza ramionami. "Wybacz, nic mi o tym nie wiadomo..." Wygląda jakby chciał cię o coś zapytać, ale się rozmyślił.~ */
  IF ~~ THEN REPLY #48007 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48008 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #48009 /* ~Skupia się przez chwilę, jakby starał się zrozumieć twoje pytanie. "Więc... broń? Nie wiem... wydaje mi się, że jeden z kupców handluje nią. Nie jest to jednak coś, co przeciętny mieszkaniec by potrzebował."~ */
  IF ~~ THEN REPLY #48010 /* ~"Jak się bronisz, skoro nie masz broni?"~ */ GOTO 6
  IF ~~ THEN REPLY #48011 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48012 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48013 /* ~Patrzy na ciebie z niedowierzaniem. "Harmonium... do nich należy ochrona nas, mieszkańców. Stoją na straży prawa, karzą winnych, i takie tam rzeczy. Mieszkańcy nie powinni się martwić o swoje bezpieczeństwo." Spogląda na ciebie bez wyrazu.~ */
  IF ~~ THEN REPLY #48014 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48015 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #48016 /* ~"Magii? Ja..." Wykrzywia twarz w zakłopotaniu. "Nie wiem. Może u jednego z kupców tutaj, ale magia nie jest, aż tak bardzo powszechna... czyż nie?" Czeka na twoją odpowiedź.~ */
  IF ~~ THEN REPLY #48017 /* ~"Po prostu nie masz pojęcia, tak?"~ */ GOTO 8
  IF ~~ THEN REPLY #48018 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48019 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48020 /* ~Patrzy na ciebie zszokowany. "Cóż, nie... to znaczy tak... uch, więc... może nie." Wzrusza ramionami. "Mówią o mnie, że jestem naiwny, ale nie wydaje mi się, żeby to była prawda. Nie jestem po prostu taki *obyty* jak niektórzy, to wszystko."~ */
  IF ~~ THEN REPLY #48021 /* ~"Jakiego koloru jest niebo w twoim wszechświecie?"~ */ GOTO 9
  IF ~~ THEN REPLY #48022 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48023 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #48024 /* ~Spogląda na zewnątrz i pokazuje. "Żółtego... wszystko przez cały ten dym z fabryk i inne świństwa, które wypluwają."~ */
  IF ~~ THEN REPLY #48025 /* ~"Mniejsza z tym. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48026 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #48027 /* ~Robotnik spogląda na ciebie. "Witaj znowu. W czym mogę pomóc."~ */
  IF ~~ THEN REPLY #48028 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #48029 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END
