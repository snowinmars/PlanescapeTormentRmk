// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIRI~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #59069 /* ~Widzisz ładną, młodą kobietę. Jej twarz jest zaczerwieniona i posiniaczona, a włosy w nieładzie. Choć jej ubranie jest ładne, widać w nim wiele rozdarć. Dziewczyna idzie bardzo ostrożnie, od czasu do czasu oglądając się przez ramię.~ */
  IF ~~ THEN REPLY #59070 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #59071 /* ~Nie zwracaj na nią uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #59072 /* ~Na dźwięk twego głosu podskakuje i odwraca się szybko w twoją stronę. Na widok twych blizn, na jej twarzy pojawia się obawa. "Witaj, śmiałku. Jestem Kiri, co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #59073 /* ~"Wyglądasz na zdenerwowaną. Co się stało?"~ */ GOTO 2
  IF ~~ THEN REPLY #59074 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #59075 /* ~Marszczy czoło i wzrusza ramionami. "Są tu ludzie, którzy mnie nie lubią. Jeśli to tylko możliwe, próbuję ich unikać."~ */
  IF ~~ THEN REPLY #59076 /* ~"Dlaczego cię nie lubią?"~ */ GOTO 3
  IF ~~ THEN REPLY #59077 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #59078 /* ~"Jestem nierządnicą. Jestem młoda, ładna i... dobra w tym, co robię." Uśmiecha się. "Inne dziewczyny mówią, że odbieram im klientów. Więc zbiły mnie i kazały więcej się tu nie pokazywać. Powiedziały, że jak mnie tu złapią, sprawią, że już nie będę ładna."~ */
  IF ~~ THEN REPLY #59079 /* ~"Więc dlaczego wróciłaś?"~ */ GOTO 4
  IF ~~ THEN REPLY #59080 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59081 /* ~Śmieje się. "Brzdęk, a cóż innego? Nie mogę odejść i osiedlić się gdzie indziej bez pieniędzy, a nie mogę zarabiać, jeśli mnie tu nie ma. Jestem w całkiem niezłej pułapce." Wzdycha i patrzy gdzieś w dal. "Zrobiłabym *wszystko*, żeby móc zarobić niezłe pieniądze..."~ */
  IF ~~ THEN REPLY #59083 /* ~"Wszystko?"~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 12.0
  SAY #59084 /* ~Rozważa twoje słowa, a następnie odpowiada. "Jasne, śmiałku. Czemuś takiemu dam radę. Proponujesz mi umowę?"~ */
  IF ~~ THEN REPLY #59085 /* ~"Nie, byłem tylko ciekaw."~ */ GOTO 6
  IF ~~ THEN REPLY #59086 /* ~"Znam pewną kobietę, kto chce się pozbyć męża. Lubi nierządnice, a jej się to nie podoba."~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",2)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #59087 /* ~Wzrusza ramionami. "No cóż, tak jak powiedziałam, potrzebuję pieniędzy i jestem gotowa na wszystko."~ */
  IF ~~ THEN REPLY #59088 /* ~"Zapamiętam to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #59089 /* ~Śmieje się. "Lubi nierządnice, co? No cóż, chyba idealnie się do tego nadaję." Przerywa. "O kogo chodzi?"~ */
  IF ~~ THEN REPLY #59090 /* ~"O Karla Parfidora."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #59091 /* ~Myśląc marszczy czoło, a następnie kiwa głowa. "Znam Karla... i jego żonę." Waha się przez chwilę. "Powiedz Robercie, że jeżeli chce widzieć Karla martwego, to ja to zrobię."~ */
  IF ~~ THEN REPLY #59092 /* ~"Nie chcesz wiedzieć, za ile?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #59093 /* ~Śmieje się szelmowsko. "Nie, niespecjalnie. Jeśli mnie oszuka, ją też umieszczę w księdze umarłych. Zaraz obok Karla... Możesz jej to powiedzieć."~ */
  IF ~~ THEN REPLY #59094 /* ~"Może i tak. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #59095 /* ~Widzisz nierządnicę, Kiri. Uważnie obserwuje otoczenie. Na twój widok uśmiecha się. "Witaj znowu, śmiałku. Co mogę dla ciebie zrobić?"~ */
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #59096 /* ~"Wydajesz się być zdenerwowana. Co się stało?"~ */ GOTO 2
  IF ~  Global("Know_Kiri","GLOBAL",1)
~ THEN REPLY #59097 /* ~"Ostatnim razem powiedziałaś, że za pieniądze zrobisz wszystko."~ */ GOTO 12
  IF ~  Global("Know_Kiri","GLOBAL",2)
Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #59098 /* ~"Rozmawiałem z Robertą. Chce, żeby Karl zginął i chce, żebyś się tym zajęła."~ */ DO ~SetGlobal("Carl_Snuffed","GLOBAL",1)
~ JOURNAL #59100 /* ~Wynająłem ladacznicę Kiri, aby zabiła Karla Parfidora. Powiedziała, że zajmie się tą sprawą bez ociągania.~ */ GOTO 11
  IF ~~ THEN REPLY #59099 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY #59101 /* ~Uśmiecha się do ciebie. "Możesz powiedzieć Robercie, że właśnie wykupiła Karlowi miejsce w księdze umarłych. Pójdę się tym zająć."~ */
  IF ~~ THEN REPLY #59102 /* ~"Bardzo dobrze. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 10.1
  SAY #61394 /* ~Zanim odpowie, uważnie ci się przygląda. "Pewnie, śmiałku, wszystko... jeśli cena jest odpowiednia. Masz coś konkretnego na myśli?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61395 /* ~"Zabijesz kogoś?"~ */ JOURNAL #59002 /* ~Ladacznica Kiri, gotowa jest zrobić wszystko dla pieniędzy, nawet odebrać komuś życie. Dlatego może zgodzi się zgładzić Karla Parfidora z polecenia Roberty.~ */ GOTO 5
  IF ~~ THEN REPLY #61396 /* ~"Nie bardzo, po prostu byłem ciekaw. Żegnaj."~ */ JOURNAL #61397 /* ~Ladacznica o imieniu Kiri oświadczyła, że zrobi wszystko dla pieniędzy... Postaram się o tej deklaracji nie zapomnieć. Może kiedyś będę potrzebował kogoś tak bezwzględnego.~ */ EXIT
END
