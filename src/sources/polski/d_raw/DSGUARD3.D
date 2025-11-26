// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37953 /* ~Widzisz przed sobą strażnika Harmonium. Kiedy podchodzisz, przygląda ci się ze znudzoną miną.~ */
  IF ~~ THEN REPLY #37961 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37962 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37954 /* ~Strażnik kiwa do ciebie głową. "Nawzajem, obywatelu."~ */
  IF ~~ THEN REPLY #37963 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37964 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #37955 /* ~"Jestem nowy w Harmonium i w tej dzielnicy, obywatelu. Nie potrafię odpowiedzieć na twoje pytania." Strażnik uśmiecha się do ciebie przepraszająco.~ */
  IF ~~ THEN REPLY #37965 /* ~"Może powiesz mi przynajmniej, co się tutaj dzieje?"~ */ GOTO 3
  IF ~~ THEN REPLY #37966 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37956 /* ~Strażnik kiwa głową. "Ci ludzie popełnili różne wykroczenia. Zostali skazani na kilka lat darmowej służby i właśnie są sprzedawani. Tylko tyle mogę ci powiedzieć."~ */
  IF ~~ THEN REPLY #37967 /* ~"Rozumiem. Mogę zadać ci jeszcze jedno pytanie?"~ */ GOTO 4
  IF ~~ THEN REPLY #37968 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37957 /* ~Strażnik kręci przecząco głową. "Nie wolno mi rozmawiać na służbie, obywatelu. Muszę cię prosić, abyś stąd odszedł."~ */
  IF ~~ THEN REPLY #37969 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #37958 /* ~Widzisz przed sobą strażnika Harmonium. Na twój widok kiwa głową. "Witaj znowu, obywatelu. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #37970 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37960 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END
