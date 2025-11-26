// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSHINER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSHINER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51711 /* ~Młody mężczyzna uśmiecha się, gdy wchodzisz do jego namiotu i gestem pokazuje, abyś usiadł. "Wyczyścić i nawoskować panu buty? Cudowny połysk za jedyne dwa miedziaki..."~ */
  IF ~~ THEN REPLY #51712 /* ~"Nie, dzięki. Żegnaj."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51713 /* ~"Witam cię, panie, ponownie. Czy może przyszedłeś tu, aby wybłyszczeć sobie buty? Czyszczenie i woskowanie za dwa miedziaki..."~ */
  IF ~~ THEN REPLY #51714 /* ~"Nie, dzięki. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51715 /* ~"Ja również pana żegnam... gdyby tylko pan potrzebował wybłyszczonych butów, proszę tu wrócić."~ */
  IF ~~ THEN REPLY #51716 /* ~Odejdź.~ */ EXIT
END
