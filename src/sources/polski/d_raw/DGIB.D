// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGIB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGIB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58400 /* ~Widzisz starca odzianego w łachmany. Kiedy się do niego zbliżasz, przygląda ci się z wyrazem znudzenia na twarzy.~ */
  IF ~~ THEN REPLY #58402 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58403 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58405 /* ~Mężczyzna nie przestaje przyglądać ci się ze znudzeniem. W końcu kiwa głową. "Witaj, śmiałku. Dlaczego kłapiesz do mnie swoją jadaczką?"~ */
  IF ~~ THEN REPLY #58407 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58412 /* ~"Bez żadnego powodu, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58414 /* ~Mężczyzna powoli kiwa głową i odwraca od ciebie swój wzrok. "No cóż... Za kradzież wpakowali mnie do tej dziury, ale nie było mowy o odpowiadaniu na jakieś głupie pytania..." Rzuca ci gniewne spojrzenie. "Odejdź."~ */
  IF ~~ THEN REPLY #58416 /* ~"Ciężko musi się żyć w tym miejscu. A tobie będzie się żyło jeszcze gorzej, jak zostaniesz kaleką."~ */ GOTO 3
  IF ~~ THEN REPLY #58417 /* ~"Chyba muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58419 /* ~Kiedy mężczyzna zastanawia się nad twoimi słowami, na jego czole pojawiają się zmarszczki. Widzisz, jak wodzi wzrokiem po twoich bliznach, a potem wasze spojrzenia spotykają się. "Grozisz mi, trepie?"~ */
  IF ~~ THEN REPLY #58421 /* ~"Tak. Odpowiedz mi na kilka pytań, albo zacznę ci po kolei odcinać członki."~ */ GOTO 4
  IF ~~ THEN REPLY #58422 /* ~"Nie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.0 8.0 9.2 10.1 11.0 12.1 13.1 14.0
  SAY #58424 /* ~Mężczyzna powoli kiwa głową. "Jakie pytania?"~ */
  IF ~~ THEN REPLY #58426 /* ~"Kim jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #58428 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 8
  IF ~~ THEN REPLY #58430 /* ~"Szukam devy, podobno gdzieś tu jest."~ */ GOTO 9
  IF ~~ THEN REPLY #58432 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58433 /* ~Mężczyzna waha się. "Gib... nazywam się Gib."~ */
  IF ~~ THEN REPLY #58435 /* ~"Dlaczego się tutaj znalazłeś?"~ */ GOTO 6
  IF ~~ THEN REPLY #58437 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58438 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58440 /* ~"Nie słuchałeś mnie? Powiedziałem ci już, że jestem złodziejem. Siedzę tutaj, bo mnie złapali." Na jego twarzy pojawia się uśmiech. "Jeśli masz zamiar mnie zmusić, żebym odpowiadał na twoje pytania, to i tak nie uda ci się skłonić mnie, żeby moje odpowiedzi były choć trochę inteligentne."~ */
  IF ~~ THEN REPLY #58441 /* ~"Twoje wymądrzanie się też mi się nie podoba..."~ */ GOTO 7
  IF ~~ THEN REPLY #58442 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58444 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58446 /* ~Mężczyzna wzrusza ramionami.~ */
  IF ~~ THEN REPLY #58447 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58449 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #58450 /* ~"Więzienie jest podzielone na trzy kręgi, zewnętrzny, środkowy i wewnętrzny. To jest krąg zewnętrzny, w którym uwięzieni są drobni przestępcy, złodzieje i tym podobni. W środkowym kręgu siedzą bardziej zatwardziali kryminaliści i bandyci. Wewnętrzny krąg jest przeznaczony dla groźniejszych przestępców, morderców, spiskowców, wrogów rządu i tym podobnych."~ */
  IF ~~ THEN REPLY #58451 /* ~"Rozumiem. Mam do ciebie parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58452 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #58454 /* ~Mężczyzna spogląda na ciebie z troską. "Ten deva... tak, jest tam na dole. Ale lepiej się zastanów, czy na pewno chcesz go znaleźć."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58456 /* ~"Z powodu zarazy?"~ */ GOTO 10
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #58458 /* ~"Dlaczego?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #58460 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58462 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58464 /* ~Mężczyzna potakuje głową. "Zatem wiesz o tym... Zaraza uderzyła znienacka, a większość tych, którzy się z nią zetknęli, skończyło w księdze umarłych." Potem starzec marszczy czoło. "Nikt kto się dowie, że się z nim widziałeś, nie będzie się chciał do ciebie zbliżyć..."~ */
  IF ~~ THEN REPLY #58466 /* ~"Gdzie go można znaleźć?"~ */ GOTO 11
  IF ~~ THEN REPLY #58467 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58468 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 13.0
  SAY #58470 /* ~"To w tamtą stronę..." Mężczyzna wskazuje nie wiadomo jaki kierunek. "W końcu się na niego natkniesz."~ */
  IF ~~ THEN REPLY #58471 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58473 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #58474 /* ~"Śpiewka niesie, że on roznosi zarazę." Mężczyzna spogląda na ciebie, jakby obserwował jak zareagujesz, a potem wzrusza ramionami. "Nie wiem czy to prawda, ale zaraza faktycznie wybuchła zaraz po tym, jak się tu zjawił."~ */
  IF ~~ THEN REPLY #58476 /* ~"Opowiedz mi o tej zarazie."~ */ GOTO 13
  IF ~~ THEN REPLY #58477 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58479 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #58481 /* ~"Uderzyła na nas znienacka, a większość tych, którzy się z nią zetknęli, skończyło w księdze umarłych." Potem starzec marszczy czoło. "Nikt kto się dowie, że się widziałeś z devą, nie będzie się chciał do ciebie zbliżyć..."~ */
  IF ~~ THEN REPLY #58483 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 11
  IF ~~ THEN REPLY #58484 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58485 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #58487 /* ~Widzisz Giba, złodzieja. Kiedy się do niego zbliżasz, mężczyzna marszczy czoło. "To znowu ty... świetnie."~ */
  IF ~~ THEN REPLY #58490 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58492 /* ~"Żegnaj."~ */ EXIT
END
