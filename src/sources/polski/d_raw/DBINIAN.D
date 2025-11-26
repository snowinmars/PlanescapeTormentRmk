// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBINIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBINIAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57500 /* ~Widzisz młodego mężczyznę w podartym ubraniu. Ma na twarzy wyraz znudzenia i wpatruje się w dal.~ */
  IF ~~ THEN REPLY #57501 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #57502 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57503 /* ~Twoje powitanie przestraszyło go tak, że aż podskoczył. Wpatruje się w ciebie przez chwilę. "Nie podkradaj się do mnie w ten sposób, śmiałku. Prawie umarłem ze strachu."~ */
  IF ~~ THEN REPLY #57505 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57506 /* ~"Nieważne, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.1 7.0 8.2 9.1 10.1 11.0
  SAY #57504 /* ~Marszczy się. "Jakie?"~ */
  IF ~~ THEN REPLY #57507 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #57508 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 5
  IF ~~ THEN REPLY #57509 /* ~"Słyszałem, że gdzieś tam niżej znajduje się deva."~ */ GOTO 8
  IF ~~ THEN REPLY #57510 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57511 /* ~"Nie musisz znać mojego imienia, po prostu zadaj swoje pytania i zostaw mnie w spokoju." Obdarza cię wyzywającym spojrzeniem.~ */
  IF ~~ THEN REPLY #57512 /* ~"Nienawidzę ludzi o takich manierach, przeważnie wybijam im je z głowy."~ */ GOTO 4
  IF ~~ THEN REPLY #57513 /* ~"Dobrze, mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57514 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57515 /* ~Wzrusza ramionami. "Dobra, nazywam się Binian. Szczęśliwy?"~ */
  IF ~~ THEN REPLY #57516 /* ~"Tak, mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57517 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #57518 /* ~"To sterta gówna, a ty, ja i wszyscy inni, których tam widzisz, to tylko śmiecie, które miasto na tę stertę wyrzuca." Uśmiecha się drwiąco. "To właściwie mówi wszystko."~ */
  IF ~~ THEN REPLY #57519 /* ~"Dlaczego tu jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #57520 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57521 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57522 /* ~Wzrusza ramionami i rozgląda się nerwowo dookoła. "Ukradłem parę rzeczy... może skrzywdziłem paru skurli tu i tam... więc jestem tutaj."~ */
  IF ~~ THEN REPLY #57523 /* ~"Zatem jesteś złodziejem..."~ */ GOTO 7
  IF ~~ THEN REPLY #57524 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57525 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57526 /* ~Potrząsa głową. "Nie, jestem byłym złodziejem. Po spędzeniu roku w tej dziurze jestem już byłym złodziejem..." Wzdycha i odwraca wzrok. "Nie chcę skończyć tu już nigdy więcej, to na pewno."~ */
  IF ~~ THEN REPLY #57527 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57528 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57529 /* ~Marszczy się i odwraca wzrok. "Jeden jest na dole, na nowych wykopaliskach. Poszukaj śladów niedawnego kopania, a go znajdziesz."~ */
  IF ~~ THEN REPLY #57530 /* ~"Gdzie mogę znaleźć te wykopaliska?"~ */ GOTO 9
  IF ~~ THEN REPLY #57531 /* ~"Co oni wydobywają?"~ */ GOTO 10
  IF ~~ THEN REPLY #57532 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57533 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #57534 /* ~Wzrusza ramionami. "Nigdy tam nie byłem, to kawałek w tamtą stronę." Wskazuje gestem. "Nie możesz tego przegapić, szukaj śladów kopania."~ */
  IF ~~ THEN REPLY #57535 /* ~"Co oni wydobywają?"~ */ GOTO 10
  IF ~~ THEN REPLY #57536 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57537 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0
  SAY #57538 /* ~Potrząsa głową. "Nic. Gdy chcą powiększyć więzienie, strażnicy zmuszają nas do kopania." Parska. To wszystko jest częścią kary..."~ */
  IF ~~ THEN REPLY #57539 /* ~"Gdzie mogę znaleźć te wykopaliska?"~ */ GOTO 9
  IF ~~ THEN REPLY #57540 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57541 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57542 /* ~Widzisz Biniana, złodzieja. "Znowu ty... czego teraz chcesz?"~ */
  IF ~~ THEN REPLY #57543 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57544 /* ~"Nieważne, żegnaj."~ */ EXIT
END
