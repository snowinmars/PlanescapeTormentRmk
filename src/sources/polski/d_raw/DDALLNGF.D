// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLNGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLNGF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49445 /* ~Ta młoda dziewczyna uśmiecha się do ciebie miło. Stoi schowana z boku mężczyzny, z którym tu jest. Nic nie mówi, a gdy się do niej odzywasz, jeszcze bardziej się chowa.~ */
  IF ~~ THEN REPLY #49446 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49448 /* ~Odskakuje do tyłu, gdy spostrzega, że się zbliżasz. Patrzy wszędzie, byle nie na ciebie. Wygląda bardzo młodo.~ */
  IF ~~ THEN REPLY #49449 /* ~"Żegnaj."~ */ EXIT
END
