// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCORNUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCORNUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3331 /* ~Grrr. Ich sein großer Cornugon. Ich sein verletzt. Ich viele Schmerzen.~ */
  IF ~~ THEN REPLY #3332 /* ~Ich auch. Nett, dich kennenzulernen.~ */ EXIT
  IF ~~ THEN REPLY #3520 /* ~Solltest du nicht eigentlich viel pfiffiger sein? Ich meine, du BIST schließlich ein Scheusal der höheren Ebenen, das seit Jahrtausenden seine Bösartigkeit und Intelligenz geschärft hat, oder?~ */ GOTO 1
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.1
  SAY #3521 /* ~Hmmm, na ja, aber es ist viel, viel einfacher, einfach ordentlich zu knurren... schindet viel Eindruck bei den planlosen Außenseitern.~ */
  IF ~~ THEN EXIT
END
