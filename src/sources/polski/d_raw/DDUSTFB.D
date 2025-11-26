// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2305 /* ~Widzisz ponurą, bladą kobietę odzianą w ciemne szaty. Wpatruje się w coś odległego i zdaje się nie zauważać twojej obecności.~ */
  IF ~~ THEN REPLY #2306 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #2307 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2308 /* ~Widzisz ponurą, bladą kobietę odzianą w ciemne szaty. Wpatruje się w coś odległego i zdaje się nie zauważać twojej obecności.~ */
  IF ~~ THEN REPLY #2313 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #2314 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2309 /* ~Powoli obraca się twarzą do ciebie. "Tak?"~ */
  IF ~~ THEN REPLY #2315 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #2316 /* ~"Nic, nie ważne."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2310 /* ~Ukrywa ręce w swych szatach i czeka.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2317 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ JOURNAL #66588 /* ~Jedne z Grabarzy powiedział mi, że jeżeli poszukuję Faroda, powinienem zagadnąć o niego osobnika o imieniu Emorik, bawiącego w Karczmie "Proch do Prochu. Karczmę tę znajdę idąc od frontowej bramy Kostnicy w kierunku południowym, a potem zachodnim.~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2318 /* ~"Szukam zagubionego dziennika. Nie widziałaś żadnego?"~ */ GOTO 5
  IF ~~ THEN REPLY #2319 /* ~"Nic, nie ważne."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2311 /* ~Potrząsa głową.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2320 /* ~"Szukam zagubionego dziennika. Nie widziałaś żadnego?"~ */ GOTO 5
  IF ~~ THEN REPLY #2321 /* ~"Mimo wszystko dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2312 /* ~Potrząsa głową.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2322 /* ~"Nie wiesz, gdzie mogę znaleźć osobnika o imieniu Farod?"~ */ JOURNAL #66588 /* ~Jedne z Grabarzy powiedział mi, że jeżeli poszukuję Faroda, powinienem zagadnąć o niego osobnika o imieniu Emorik, bawiącego w Karczmie "Proch do Prochu. Karczmę tę znajdę idąc od frontowej bramy Kostnicy w kierunku południowym, a potem zachodnim.~ */ GOTO 6
  IF ~~ THEN REPLY #2323 /* ~"Mimo wszystko dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66589 /* ~"Farod jest jednym ze Zbieraczy." Kobieta przypatruje ci się wnikliwie przez chwilę. "Gdybyś się chciał o nim czegoś więcej dowiedzieć, to słyszałam, że Wtajemniczony Emorik, z karczmy 'Proch do Prochu', również go szuka. Być może będzie ci mógł pomóc."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66591 /* ~"Gdzie jest karczma 'Proch do Prochu'?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66592 /* ~"Karczma, o której mówisz, jest mi znana. Zanim się tam skieruję, mam do ciebie kilka innych pytań..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66593 /* ~"Karczma 'Proch do Prochu'? To na południowy zachód stąd, nie? Udam się tam więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66590 /* ~"Gdy się wychodzi z Frontowej Bramy Kostnicy, należy się skierować na południowy zachód. Znajduje się ona za kamieniem pamiątkowym."~ */
  IF ~~ THEN REPLY #66594 /* ~"W porządku. Zanim wyruszę, mam kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #66595 /* ~"Dobrze, poszukam jej więc."~ */ EXIT
END
