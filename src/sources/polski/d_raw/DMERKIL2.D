// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL2~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10481 /* ~Ten mężczyzna w ciężkiej zbroi, bez słowa, wyciąga broń i rusza do ataku.~ */
  IF ~~ THEN REPLY #10482 /* ~Zaatakuj go.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10483 /* ~Uciekaj.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10484 /* ~Mężczyzna jest ogromny, to potwór w zbroi. Wzrok jego jest przenikliwy i wydaje się, że jego wzrokowi nie uchodzi nic, co go otacza. Wydaje się również, że nie ma najmniejszej ochoty z tobą rozmawiać.~ */
  IF ~~ THEN REPLY #10485 /* ~"Chciałbym ci zadać kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10486 /* ~"Dzień dobry?"~ */ GOTO 2
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10487 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 4
  IF ~~ THEN REPLY #10488 /* ~"Zatem, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1 5.0
  SAY #10489 /* ~Mężczyzna gapi się na ciebie, jakby zobaczył jakąś pluskwę. Wpatruje się i wolno mruga oczami. Naraz odwraca głowę i odprawia cię bez słowa.~ */
  IF ~~ THEN REPLY #10490 /* ~"Rozmawiaj ze mną albo wyrwę ci serce, ty niezdarna kupo blachy."~ */ GOTO 3
  IF ~~ THEN REPLY #10491 /* ~"Dzień dobry?"~ */ GOTO 3
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10492 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 4
  IF ~~ THEN REPLY #10493 /* ~"Zatem, żegnaj. Poszukam swoich odpowiedzi gdzieś indziej."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #10494 /* ~Słyszysz jak głęboko z piersi mężczyzny, wydobywa się dudnienie. Gładzi lekko swoją broń i patrzy na ciebie z ponownym zainteresowaniem.~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10495 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 4
  IF ~~ THEN REPLY #10496 /* ~"Skoro tak chcesz, to żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #10497 /* ~Zaatakuj go.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.2 3.0
  SAY #10498 /* ~Ku twojemu zdziwieniu, milczący gigant reaguje. Wychyla się w przód i zaczyna wpatrywać się w ciebie swoimi błyszczącymi, nieruchomymi oczami. Potężny, głęboki głos wydobywa się z jego ogromnej piersi: "Vhailor był z nas najlepszy. Prawdziwy Łaskobójca. Sprawiedliwość była jego panią i jego życiem. Jeśli wierzyć śpiewce, to potrafił zobaczyć czystość twojej duszy. Był tak oddany sprawie, że nawet w obliczu śmierci nigdy, by się nie poddał. Zniknął lata temu, kiedy ścigał przez portal jakiegoś przestępcę. Od tego czasu go nie widzieliśmy. To żywa legenda." Usadawia się z powrotem na swoim krześle i przestaje reagować.~ */
  IF ~~ THEN REPLY #10499 /* ~"Możesz mi odpowiedzieć na kilka innych pytań?"~ */ GOTO 5
  IF ~~ THEN REPLY #10500 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10501 /* ~"Nie." Łaskobójca nawet na ciebie nie patrzy.~ */
  IF ~~ THEN REPLY #10502 /* ~"Chcę tylko odpowiedzi na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #10503 /* ~"Zatem, żegnaj."~ */ EXIT
END
