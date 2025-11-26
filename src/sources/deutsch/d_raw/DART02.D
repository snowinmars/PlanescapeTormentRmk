// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34188 /* ~Ein massives Horn aus gehämmertem Blei, das mit Messingketten umschlungen ist. Das Horn ist schrecklich übel zugerichtet, so, als habe eine ungeheure Kraft es zerschmettert. Überall ragen scharf gezackte Klingen heraus, ganz als ob es einem riesigen Wesen sowohl als Keule als auch als Schlachthorn dienen sollte. Eine Plakette unter den Hörnern weist es als das Reinigende Horn von Acheron' aus.~ */
  IF ~~ THEN REPLY #34189 /* ~Leg deine Hand gegen die Wand. Versuch, das Horn zu blasen.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42670 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42669 /* ~So sehr du es auch versuchst, du kannst diesem massiven Horn keinen einzigen Ton entlocken. Als du das Mundstück absetzt, schmecken deinen Lippen nach Blut, Rauch und Metall.~ */
  IF ~~ THEN REPLY #42671 /* ~Geh weg.~ */ EXIT
END
