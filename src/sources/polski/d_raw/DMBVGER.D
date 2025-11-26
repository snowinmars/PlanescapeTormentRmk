// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20067 /* ~Kiedy mężczyzna w łachmanach zauważa, że do niego podchodzisz, ucieka ze strachem wypisanym na twarzy.~ */
  IF ~~ THEN REPLY #20068 /* ~"Może następnym razem..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20069 /* ~Mężczyzna w łachmanach patrzy na ciebie ze strachem, a kiedy po chwili zdaje sobie sprawę, że nie chcesz mu wyrządzić krzywdy, prostuje się. "Czegu chcesz, trepie?"~ */
  IF ~~ THEN REPLY #20070 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #20071 /* ~"Co robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #20072 /* ~"Czego się boisz?"~ */ GOTO 5
  IF ~~ THEN REPLY #20073 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20074 /* ~"Ni ważne, śmiołku. Jezdym jeszcze jednym, co to próbuje zarobić na utrzymanie jak sie do."~ */
  IF ~~ THEN REPLY #20075 /* ~"W porządku. Mam kilka innych pytań do ciebie."~ */ GOTO 3
  IF ~~ THEN REPLY #20076 /* ~"Rozumiem. Żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20077 /* ~"Byle szybko, śmiołku. Mom gemby do wykarmienia."~ */
  IF ~~ THEN REPLY #20078 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #20079 /* ~"Co robisz?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20080 /* ~"Czego się boisz?"~ */ GOTO 5
  IF ~~ THEN REPLY #20081 /* ~"Zapomnij więc o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20082 /* ~"Próbujom zarobić na życie. Jak to wyglądo? Wszyscy tyko zadajom mi pytania i mom już doś. Kuniec już?"~ */
  IF ~~ THEN REPLY #20083 /* ~"Nie. Mam kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #20084 /* ~"Na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20085 /* ~"Mosz na myśli coś oprócz dabusa, który zabudowuje te miejsce, abo Twardogłowych, którzy skubiom nos z piniędzy, albo truposzy, które wyłażom z katakumb na dole, albo czaszkoszurów, które próbujom przejąć nad nami kontrolę, albo tego że przykładajom nom noże do gardeł, albo tego, że głodujemy? Oprócz codzinnego życia, to tylko tych stworów co wykuńczyły Faroda..."~ */
  IF ~~ THEN REPLY #20086 /* ~"Stwory? Jakie stwory?"~ */ GOTO 6
  IF ~~ THEN REPLY #20087 /* ~"Farod nie żyje?"~ */ GOTO 6
  IF ~~ THEN REPLY #20088 /* ~"Mam zatem kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #20089 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20090 /* ~"Stwory prosto z pyska Baator, oto czem som... stwory z najpodlejszych koszmarów, nic ino strach budzące, stworzone z czystygo cienia. Wzieły go i porwały na strzempy. Prawie nic z nigo nie zostało. Pochowalimy, co my mogli znalyźć."~ */
  IF ~~ THEN REPLY #20091 /* ~"W porządku. Powiedz mi więc coś innego..."~ */ GOTO 3
  IF ~~ THEN REPLY #20092 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20093 /* ~Kaszle głośno w dłonie. "Czegu chcesz tym razem?"~ */
  IF ~~ THEN REPLY #20094 /* ~"Chciałem odpowiedzi."~ */ GOTO 3
  IF ~~ THEN REPLY #20095 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20096 /* ~Widzisz obdartego mężczyznę w połatanym ubraniu. Cuchnie dymem i śmieciami, a skórę ma żółtawą. Spogląda krzywo na ciebie. "Czegu ody mnie chcesz, śmiołku?"~ */
  IF ~~ THEN REPLY #20097 /* ~"Tylko odpowiedzi na kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #20098 /* ~"Nic. Żegnaj."~ */ EXIT
END
