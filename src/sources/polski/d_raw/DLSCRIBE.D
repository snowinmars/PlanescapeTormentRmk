// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLSCRIBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLSCRIBE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51723 /* ~Kiedy podchodzisz, mężczyzna uśmiecha się w zakłopotaniu i lekko się kłania. "Przez chwilę myślałem, że jesteś jednym z moich pracodawców. Na szczęście myliłem się!"~ */
  IF ~~ THEN REPLY #51724 /* ~"Dlaczego? Dlaczego tu jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #51725 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51726 /* ~Mężczyzna przytakuje zmieszany. "Tak, tak, wciąż tu jestem." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #51727 /* ~"Dlaczego?"~ */ GOTO 2
  IF ~~ THEN REPLY #51728 /* ~"Tak, zauważyłem to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51729 /* ~"Nie mogłem już znieść pracy w Siódmym Podgmachu Archiwum, więc się zerwałem... Gdybym po prostu poszedł do domu, mój pracodawca posłałby po mnie posłańca, ten... ten tyran! Dlatego, rzecz jasna, ukrywam się tutaj. Zamierzam popróżnować jeszcze trochę, zanim wrócę za moje ciasne małe biurko."~ */
  IF ~~ THEN REPLY #51730 /* ~"Zatem, żegnaj."~ */ EXIT
END
