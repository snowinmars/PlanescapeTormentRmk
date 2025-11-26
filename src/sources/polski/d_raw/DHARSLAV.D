// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARSLAV~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50939 /* ~Widzisz mocno zbudowanego strażnika Harmonium. Wygląda na ponurego i podpitego. Pilnuje zebranych niewolników i mówi półgębkiem. "Czego chcesz?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50940 /* ~"Jestem tu, by odzyskać córkę Plugawego Barsa."~ */ GOTO 2
  IF ~~ THEN REPLY #50941 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #50942 /* ~"Co robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #50943 /* ~"Jestem tu, by skończyć z niewolnictwem."~ */ GOTO 5
  IF ~~ THEN REPLY #50944 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #50945 /* ~"Znowu ty?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50946 /* ~"Jestem tu, by odzyskać córkę Plugawego Barsa."~ */ GOTO 2
  IF ~~ THEN REPLY #50947 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #50948 /* ~"Co robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #50949 /* ~"Jestem tu, by skończyć z niewolnictwem."~ */ GOTO 5
  IF ~~ THEN REPLY #50950 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.0
  SAY #50951 /* ~"Chcesz ją wykupić? Więc pogadaj o tym ze Skaczem... on tu dowodzi."~ */
  IF ~~ THEN REPLY #50952 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #50953 /* ~"Co robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #50954 /* ~"Jestem tu, by skończyć z niewolnictwem."~ */ GOTO 5
  IF ~~ THEN REPLY #50955 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 4.1
  SAY #50956 /* ~Chrząka. "A na co to wygląda? 'Rekrutującym' Harmonium."~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50957 /* ~"A więc, jestem tu by odzyskać córkę Plugawego Barsa."~ */ GOTO 2
  IF ~~ THEN REPLY #50958 /* ~"Co robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #50959 /* ~"Cóż, jestem tu by skończyć z niewolnictwem."~ */ GOTO 5
  IF ~~ THEN REPLY #50960 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.1 3.1
  SAY #50961 /* ~"A na co to wygląda? Skacz nazywa to 'poborem rekrutów'. Ja ścieżką niewolników. Czy mnie to rusza? Niee. Mam z tego niezłe pieniądze." Uważnie cię obserwuje. "Chcesz czegoś?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50962 /* ~"Jestem tu, by odzyskać córkę Plugawego Barsa."~ */ GOTO 2
  IF ~~ THEN REPLY #50963 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #50964 /* ~"Jestem tu, by skończyć z niewolnictwem."~ */ GOTO 5
  IF ~~ THEN REPLY #50965 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.2 3.2 4.2
  SAY #50966 /* ~"He. Czemu mi to mówisz? Teraz muszę cię zabić." Wyciąga broń i atakuje!~ */
  IF ~~ THEN REPLY #50967 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
