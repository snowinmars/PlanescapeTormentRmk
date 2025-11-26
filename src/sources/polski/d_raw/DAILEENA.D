// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAILEENA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAILEENA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58096 /* ~Widzisz młodą kobietę w brudnym ubraniu roboczym. Kiwa głową, gdy się zbliżasz.~ */
  IF ~~ THEN REPLY #58098 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58099 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58100 /* ~"Cześć... potrzebujesz czegoś?"~ */
  IF ~~ THEN REPLY #58101 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58102 /* ~"Nie, właściwie nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.0 10.0
  SAY #58103 /* ~"W porządku."~ */
  IF ~~ THEN REPLY #58104 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #58105 /* ~"Co robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #58106 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 8
  IF ~~ THEN REPLY #58107 /* ~"Szukam devy. Powiedziano mi, że znajduje się w Klątwie."~ */ GOTO 9
  IF ~~ THEN REPLY #58108 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58109 /* ~"Aileena jestem."~ */
  IF ~~ THEN REPLY #58110 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58111 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58112 /* ~"Realizuję zamówienia. Otrzymuję od handlarzy w mieście wiele zamówień na towary. Potem znajduję odpowiednie rzeczy i przygotowuję je do transportu."~ */
  IF ~~ THEN REPLY #58113 /* ~"Wygląda na interesującą pracę."~ */ GOTO 5
  IF ~~ THEN REPLY #58114 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58115 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58116 /* ~Uśmiecha się. "Tak właściwie to jest..." Wzdycha i wzrusza ramionami. "Gdyby nie była, z pewnością bym tego nie robiła."~ */
  IF ~~ THEN REPLY #58117 /* ~"Czemuż to?"~ */ GOTO 6
  IF ~~ THEN REPLY #58118 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58119 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58120 /* ~Marszczy brwi w zamyśleniu. "Cóż... nie jest to łatwa praca i powinna ją wykonywać więcej niż jedna osoba. Jednakże szef jest skąpym synem dziwki i nie wynajmie nikogo do pomocy."~ */
  IF ~~ THEN REPLY #58121 /* ~"Zatem czemu stąd nie odejdziesz?"~ */ GOTO 7
  IF ~~ THEN REPLY #58122 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58123 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58124 /* ~Ponownie się uśmiecha. "Devore, nasz szef, może być skąpy, ale ma jedną sympatyczną cechę. Daje nam co tydzień jeden płatny wolny dzień!"~ */
  IF ~~ THEN REPLY #58125 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58126 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58127 /* ~Wzrusza ramionami. "Tu nie ma co opowiadać. Jeśli widziałeś jeden magazyn, to widziałeś już wszystkie. Ten się niczym od innych nie różni."~ */
  IF ~~ THEN REPLY #58128 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58129 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58130 /* ~Przez chwilę wpatruje się przez ciebie zdziwiona. "Prawie chciałam powiedzieć ci, że musisz być bzikiem, żeby szukać w Klątwie... ale przypomniałam sobie coś o devie." Przerywa. "Nie pamiętam jednak co. Sądzę, że powinieneś udać się do biura administracji i spytać tam. Znajduje się ono na rynku miejskim."~ */
  IF ~~ THEN REPLY #58131 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58132 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58133 /* ~Widzisz Aileenę, pracownika magazynu. Gdy się zbliżasz, uśmiecha się i kiwa głową. "Witaj ponownie. Co jest grane?"~ */
  IF ~~ THEN REPLY #58134 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58135 /* ~"Nic, nieważne."~ */ EXIT
END
