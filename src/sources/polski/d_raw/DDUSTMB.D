// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2324 /* ~Widzisz posępnego, ubranego w ciemne szaty mężczyznę. Zdaje się on nie zauważać twojej obecności.~ */
  IF ~~ THEN REPLY #2330 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #2331 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2325 /* ~Widzisz posępnego, ubranego w ciemne szaty mężczyznę. Zdaje się on nie zauważać twojej obecności.~ */
  IF ~~ THEN REPLY #2332 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #2333 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2326 /* ~Powoli obraca się twarzą do ciebie. "Tak?"~ */
  IF ~~ THEN REPLY #2334 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #2335 /* ~"Nic, mniejsza z tym."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2327 /* ~Chowa ręce w fałdach swej szaty i czeka.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2336 /* ~"Nie wiesz, gdzie mogę znaleźć osobnika o imieniu Farod?"~ */ JOURNAL #66588 /* ~Jedne z Grabarzy powiedział mi, że jeżeli poszukuję Faroda, powinienem zagadnąć o niego osobnika o imieniu Emorik, bawiącego w Karczmie "Proch do Prochu. Karczmę tę znajdę idąc od frontowej bramy Kostnicy w kierunku południowym, a potem zachodnim.~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2337 /* ~"Szukam zagubionego dziennika. Nie widziałaś żadnego?"~ */ GOTO 5
  IF ~~ THEN REPLY #2338 /* ~"Nic, mniejsza z tym."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2328 /* ~Potrząsa głową.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2339 /* ~"Szukam zagubionego dziennika. Nie widziałaś żadnego?"~ */ GOTO 5
  IF ~~ THEN REPLY #2340 /* ~"Mimo wszystko dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2329 /* ~Potrząsa głową.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2341 /* ~"Wiesz może, gdzie mogę znaleźć osobnika o imieniu Farod?"~ */ JOURNAL #66588 /* ~Jedne z Grabarzy powiedział mi, że jeżeli poszukuję Faroda, powinienem zagadnąć o niego osobnika o imieniu Emorik, bawiącego w Karczmie "Proch do Prochu. Karczmę tę znajdę idąc od frontowej bramy Kostnicy w kierunku południowym, a potem zachodnim.~ */ GOTO 6
  IF ~~ THEN REPLY #2342 /* ~"Mimo wszystko dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66581 /* ~"Farod jest jednym ze Zbieraczy." Mężczyzna przypatruje ci się wnikliwie przez chwilę. "Gdybyś się chciał o nim coś więcej dowiedzieć, to słyszałam, że Wtajemniczony Emorik, z karczmy 'Proch do Prochu', również go szuka. Być może będzie ci mógł pomóc."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66582 /* ~"Gdzie jest karczma 'Proch do Prochu'?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66586 /* ~"Karczma, o której mówisz, jest mi znana. Zanim się tam skieruję, mam do ciebie kilka innych pytań..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66583 /* ~"Karczma 'Proch do Prochu'? To na południowy zachód stąd, nie? Udam się tam więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66584 /* ~"Gdy się wychodzi z Frontowej Bramy Kostnicy, należy się skierować na południowy zachód. Znajduje się ona za kamieniem pamiątkowym."~ */
  IF ~~ THEN REPLY #66585 /* ~"W porządku. Zanim wyruszę, mam kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #66587 /* ~"Dobrze, poszukam jej więc."~ */ EXIT
END
