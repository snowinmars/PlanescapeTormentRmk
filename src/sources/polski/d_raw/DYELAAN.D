// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELAAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELAAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58377 /* ~Widzisz młodą kobietę o zabrudzonej twarzy, rozczochranych włosach i osobliwych szatach, wyglądających na zbieraninę kawałków rozmaitych części garderoby. Kobieta wyraźnie krzywi się na twój widok.~ */
  IF ~~ THEN REPLY #58378 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58379 /* ~Nie zwracaj na nią uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58380 /* ~Kobieta patrzy na ciebie z rezerwą i cofa się. "Czego chcesz, trepie?"~ */
  IF ~~ THEN REPLY #58381 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58382 /* ~"Niczego. Żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58383 /* ~Kobieta patrzy na ciebie przez chwilę i trochę się odpręża. "Lepiej będzie, jeżeli to wszystko, czego ode mnie chcesz." Lustruje cię podejrzliwym spojrzeniem.~ */
  IF ~~ THEN REPLY #58384 /* ~"A czegóż innego miałbym chcieć?"~ */ GOTO 3
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58386 /* ~"Potrzebuję tylko odpowiedzi na kilka pytań."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58387 /* ~"Potrzebuję tylko odpowiedzi na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #58388 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58389 /* ~Kobieta marszczy brwi i kładzie ręce na biodrach. "Słuchaj, trepie. Nie jestem znowu taka brzydka, a i kobiet tutaj nie za wiele. Łapiesz już, o co mi chodzi?"~ */
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58390 /* ~"Potrzebuję tylko odpowiedzi na kilka pytań."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58391 /* ~"Potrzebuję tylko odpowiedzi na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #58392 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58393 /* ~"Jasne, czemu nie?" Nagle milknie i wpatruje się w ciebie intensywnie. Coś jakby błysk rozpoznania pojawia się w jej oczach. "Poczekaj chwilę. Wielki trep, cały w bliznach, z dziwaczną fryzurą... Czyś ty jest tym człowiekiem, który zakapował Robertę?"~ */
  IF ~~ THEN REPLY #58394 /* ~"Roberta Parfidor... Czy ona jest tutaj?"~ */ GOTO 5
  IF ~~ THEN REPLY #58395 /* ~"Nie wiem, o czym mówisz."~ */ GOTO 6
  IF ~~ THEN REPLY #58396 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58397 /* ~"Tak, jest tutaj." Kobieta milknie i uśmiecha się. "Powinieneś ją odwiedzić. Będzie na pewno zachwycona."~ */
  IF ~~ THEN REPLY #58398 /* ~"Uważam podobnie, ale najpierw chciałbym, żebyś odpowiedziała na kilka moich pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58399 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58401 /* ~Kobieta marszczy brwi. "Ależ oczywiście, że nie. Zatem, czego chcesz?"~ */
  IF ~~ THEN REPLY #58404 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58406 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 15.1 16.0 17.0
  SAY #58408 /* ~"Pytaj, o co chcesz."~ */
  IF ~~ THEN REPLY #58409 /* ~"Kim jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #58410 /* ~"Możesz powiedzieć mi coś o tym miejscu?"~ */ GOTO 12
  IF ~~ THEN REPLY #58411 /* ~"Szukam devy. Mówiono mi, że można go tutaj znaleźć."~ */ GOTO 13
  IF ~~ THEN REPLY #58413 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58415 /* ~"Na imię mam Yelaan. Niezbyt to piękne imię, ale tak właśnie się nazywam."~ */
  IF ~~ THEN REPLY #58418 /* ~"Dlaczego się tutaj znalazłaś?"~ */ GOTO 9
  IF ~~ THEN REPLY #58420 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58423 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58425 /* ~Kobieta namyśla się przez chwilę, a potem wzrusza ramionami. "Pokancerowałam jedną ladacznicę, która przeszkadzała mi w prowadzeniu interesów. Złapano mnie i wtrącono tutaj."~ */
  IF ~~ THEN REPLY #58427 /* ~"Przeszkadzała ci w prowadzeniu interesów?"~ */ GOTO 10
  IF ~~ THEN REPLY #58429 /* ~"Kogo pokancerowałaś?"~ */ GOTO 11
  IF ~~ THEN REPLY #58431 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58434 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #58436 /* ~"Byłam nierządnicą i dobrze szły mi interesy... Aż pojawiła się ona. Wtedy doszłam do wniosku, że jeśli zajmę się trochę jej twarzyczką, będę mogła być spokojna o moje interesy." Kobieta wzdycha.~ */
  IF ~~ THEN REPLY #58439 /* ~"Kogo pokancerowałaś?"~ */ GOTO 11
  IF ~~ THEN REPLY #58443 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58445 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #58448 /* ~Kobieta namyśla się przez chwilę, a potem wzrusza ramionami. "Nie pamiętam, jak miała na imię. A może nigdy tego nie wiedziałam. Stanowiła dla mnie konkurencję i tylko to było dla mnie istotne."~ */
  IF ~~ THEN REPLY #58453 /* ~"Powiedziałaś, że ona przeszkadzała ci w prowadzeniu interesów?"~ */ GOTO 10
  IF ~~ THEN REPLY #58455 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58457 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #58459 /* ~Kobieta spogląda na ciebie przez chwilę i spostrzegasz, że w jej oczach pojawiają się łzy. Szybko jednak wyciera oczy i opanowuje się. "O czym tutaj mówić... To więzienie i życie tutaj nie jest łatwe. Słyszałam, że bywają cięższe miejsca, ale nigdy w to nie uwierzę..." Jej głos słabnie i osuwa się w szept. "Gdybyż można było odwrócić bieg tamtych wypadków..."~ */
  IF ~~ THEN REPLY #58461 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58463 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #58465 /* ~Kobieta kiwa głową. "Deva jest gdzieś tutaj. Nigdy go nie widziałam, ale wiele się o nim mówi w całym więzieniu. Większość ludzi nazywa go *sprawcą zarazy*."~ */
  IF ~~ THEN REPLY #58469 /* ~"Sprawcą zarazy?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #58472 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58475 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58478 /* ~"Tak... Niedługo po tym, jak go odnaleziono, wybuchła tutaj zaraza. Rozprzestrzeniła się po całym więzieniu i ponoć zdziesiątkowała jego lokatorów." Kobieta wzrusza ramionami. "Większość ludzi twierdzi, że to przez niego, chociaż nikt nie ma pewności."~ */
  IF ~~ THEN REPLY #58480 /* ~"A gdzie można go spotkać?"~ */ GOTO 15
  IF ~~ THEN REPLY #58482 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58486 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58488 /* ~Kobieta wzrusza ramionami. "Nie wiem. Wiem tyle, że to gdzieś w pobliżu."~ */
  IF ~~ THEN REPLY #58489 /* ~"Wiesz, że jest w pobliżu, ale nie wiesz, gdzie dokładnie..."~ */ GOTO 16
  IF ~~ THEN REPLY #58491 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58493 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58494 /* ~Kobieta kiwa głową. "Słuchaj, trepie. Zaraza, która się tutaj wykluła, to rzecz wielce niszczycielska i większość osób uważa, że jej sprawcą jest deva. Na Baator, niby dlaczego miałabym go poszukiwać?"~ */
  IF ~~ THEN REPLY #58495 /* ~"Ach tak. Chciałbym ci zadać kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58496 /* ~"Czas już na mnie, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #58497 /* ~Widzisz Yelaan. Kobieta pozdrawia cię machnięciem dłoni. "Znowu ty? I czego chcesz tym razem?"~ */
  IF ~~ THEN REPLY #58498 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #58499 /* ~"Niczego, żegnaj."~ */ EXIT
END
