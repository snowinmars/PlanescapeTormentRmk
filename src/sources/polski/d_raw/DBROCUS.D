// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2887 /* ~Ten miły starszy człowiek odwraca się w twoją stronę, gdy do niego podchodzisz i skłania się grzecznie. "Witam... czy jest coś, w czym mógłbym ci pomóc?"~ */
  IF ~~ THEN REPLY #2888 /* ~"Tak, mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #39381 /* ~"Nie, tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #39382 /* ~Starszy mężczyzna odwraca się w twoją stronę i uśmiecha. "Witaj ponownie. Czy jest coś, co mógłbym dla ciebie uczynić?"~ */
  IF ~~ THEN REPLY #39383 /* ~"Tak, mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #39384 /* ~"Nie, tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.1 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0
  SAY #39385 /* ~"Oczywiście. Pytaj, młodzieńcze."~ */
  IF ~~ THEN REPLY #39386 /* ~"Co tu robisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #39387 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39388 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68124 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39389 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39390 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39391 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39392 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39393 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 11
  IF ~~ THEN REPLY #39394 /* ~"Właściwie to nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #39395 /* ~Mężczyzna przyjemnie chichocze. "To, co robi tu większość mężczyzn, młodzieńcze... rozmawiam z pięknymi paniami tego Przybytku."~ */
  IF ~~ THEN REPLY #39396 /* ~"Czy możesz polecić którąś z nich?"~ */ GOTO 4
  IF ~~ THEN REPLY #39397 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39398 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39399 /* ~Gładzi brodę, zatopiony w myślach. "Muszę powiedzieć... nie, uderz to. Cóż, młodzieńcze, nie wiem, czego poszukujesz. Gdybym znał rodzaj rozmowy, jaka cię bawi, może wtedy byłbym w stanie coś ci zasugerować."~ */
  IF ~~ THEN REPLY #39400 /* ~"W porządku. Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39401 /* ~"Zatem podejrzewam, że najlepiej będzie, jak sam z nimi porozmawiam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #39402 /* ~Mężczyzna uśmiecha się, oczy mu błyszczą. "Mogę ci rzec, że jest to *najcudowniejsza* instytucja! Panie tutaj są takie czarujące... nawet ta cudownie pyskata Kimasxi na swój specyficzny sposób. Ale proszę, młody paniczu, porozmawiaj o Przybytku z Nie-Sławą... jako jego właścicielka może podzielić się z tobą większą ilością jego sekretów niż ja."~ */
  IF ~~ THEN REPLY #39403 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39404 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY #39405 /* ~"Ach, tak... ta kochana istota to Ecco. Słodka młoda dziewczyna... tak łatwo się do niej mówi. Nie tylko dlatego, że milczy, ale po prostu coś *w niej* jest." Wzdycha szczęśliwie. "Nie jestem jednak pewien *dlaczego* nie chce mówić."~ */
  IF ~~ THEN REPLY #39406 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39407 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #39408 /* ~"Raveli?" Starszy mężczyzna podnosi brew. "Raveli Szaradnej, nocnej wiedźmy? Dość niepokojące! Nie, nic o tym nie słyszałem. Całkiem niezła plotka, prawdziwa, czy też nie."~ */
  IF ~~ THEN REPLY #39409 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39410 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #39411 /* ~"Nie. I obawiam się, że nawet gdyby znajdował się on tuż przed moim nosem, nie zdałbym sobie z tego sprawy... rozumiesz, prawie nie posiadam już węchu." Klepie się po nosie. "To smutne, wiem, ale wszyscy się starzejemy. Powiedziano mi, że Vivian zawsze pachnie najpiękniej..."~ */
  IF ~~ THEN REPLY #39412 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39413 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #39414 /* ~Potrząsa głową. "Wiem, o jakim welonie mówisz... raz, czy dwa widziałem Marissę poza Przybytkiem, noszącą ów welon... ale nie wiem, gdzie on może się teraz znajdować."~ */
  IF ~~ THEN REPLY #39415 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39416 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #39417 /* ~"Znam tylko legendy, które słyszało większość dzieci - że jest ona nocną wiedźmą, wyjątkowo złą, i że wygnano ją z Sigil dawno, dawno temu."~ */
  IF ~~ THEN REPLY #39418 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39419 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #39420 /* ~Mężczyzna martwi się i drapie po brodzie. "Jeśli *istnieje* dziesiąta uczennica, młody przyjacielu, bardzo chętnie bym się z nią spotkał! Ale z tego, co wiem, nie ma jej."~ */
  IF ~~ THEN REPLY #39421 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #39422 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
