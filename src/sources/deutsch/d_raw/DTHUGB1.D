// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1904 /* ~Du siehst einen kräftig gebauten Mann mit versteinerter Miene.~ */
  IF ~~ THEN REPLY #1905 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #1906 /* ~Geh vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1907 /* ~Der Mann schaut dich kurz an, knurrt und hebt seine Hand, die einen heimtückischen Dolch hält. Mit einem bösen Grinsen wirbelt er den Dolch in einem drohenden Bogen durch die Luft.~ */
  IF ~~ THEN REPLY #1908 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1909 /* ~"Ähh, leb wohl..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
