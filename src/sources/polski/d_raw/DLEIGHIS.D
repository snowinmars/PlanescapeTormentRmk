// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLEIGHIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLEIGHIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58803 /* ~Widzisz starszego mężczyznę w brudnym ubraniu roboczym. Kiedy się zbliżasz, patrzy na ciebie z niezadowoleniem.~ */
  IF ~~ THEN REPLY #58804 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58805 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58806 /* ~Jego niezadowolenie pogłębia się. "No prosze... dzień ci dobry, trepie. Czemuż to zawdzięczam, że kłapiesz mnie tu jadaczką? Mam robote."~ */
  IF ~~ THEN REPLY #58807 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58808 /* ~"Mniejsza z tym, żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0 7.0
  SAY #58809 /* ~Wzdycha. "Tylko sie streszczaj, nie?"~ */
  IF ~~ THEN REPLY #58810 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #58811 /* ~"Co robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #58812 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 5
  IF ~~ THEN REPLY #58813 /* ~"Szukam devy. Powiedziano mi, że jest w Klątwie.~ */ GOTO 6
  IF ~~ THEN REPLY #58814 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58815 /* ~"Nie, żeby ci to było na co potrzebne, ale zwą mnie Leighis."~ */
  IF ~~ THEN REPLY #58816 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58817 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58818 /* ~Parska. "No i gadaj tu z głupim, kiedy mam robote..."~ */
  IF ~~ THEN REPLY #58819 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58820 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #58821 /* ~Rozgląda się. "To jes skład, ty świrowaty trepie. Czego jeszcze wiedzieć pragnie?"~ */
  IF ~~ THEN REPLY #58822 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58823 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #58824 /* ~Patrzy na ciebie srogo i kiwa głową. "Szukasz devy w Klątwie..." Śmieje się z ciebie. "Poszukaj se lepiej dziewic w zamtuzie. Tam ci sie bardziej poszczęści, trepie."~ */
  IF ~~ THEN REPLY #58825 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58826 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #58827 /* ~Widzisz Leighisa, pracownika składu. Widząc cię znowu, patrzy z niezadowoleniem. "Przygnało cie z powrotem. Czego?"~ */
  IF ~~ THEN REPLY #58828 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58829 /* ~"Nic, żegnaj."~ */ EXIT
END
