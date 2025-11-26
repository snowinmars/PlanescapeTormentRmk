// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48979 /* ~Widzisz nieładną kobietę, wygląda na poirytowaną.~ */
  IF ~~ THEN REPLY #48980 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #48981 /* ~Zostaw ją w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48982 /* ~"Może masz problemy z pamięcią. Powiedziałam, że chcę zostać sama."~ */
  IF ~~ THEN REPLY #48983 /* ~"Hmm, widzę, że nastrój ci się nie poprawił."~ */ GOTO 3
  IF ~~ THEN REPLY #48984 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48985 /* ~"Czy w tym mieście nie ma miejsca, w którym mogłabym choć przez chwilę być sama?"~ */
  IF ~~ THEN REPLY #48986 /* ~"Dlaczego chcesz być sama?"~ */ GOTO 3
  IF ~~ THEN REPLY #48987 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48988 /* ~"'Sama' oznacza 'bez ciebie'. Zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #48989 /* ~"Żegnaj."~ */ EXIT
END
