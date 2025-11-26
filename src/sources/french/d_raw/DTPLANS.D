// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPLANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPLANS~

IF ~  Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 0 // from:
  SAY #61864 /* ~Les plans révèlent que la tombe est bourrée de pièges dont les emplacements exacts ont été omis. Tu vois toutefois une annotation sur un côté qui indique qu'un piège mortel a été installé dans chaque pièce et, en bas, figure une note griffonnée de ce qui paraît être ta main.~ */
  IF ~~ THEN REPLY #61869 /* ~Lis le mot.~ */ DO ~Explore()
~ GOTO 2
  IF ~~ THEN REPLY #61870 /* ~Terminé.~ */ DO ~Explore()
~ EXIT
END

IF ~  !Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 1 // from:
  SAY #61866 /* ~Tu comprendrais les plans si tu te trouvais dans la tombe. Tu pourrais les comparer au site tel qu'il a été réalisé.~ */
  IF ~~ THEN REPLY #61867 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61868 /* ~"Le piège est amorcé, je n'ai plus qu'à attendre la venue de mon bourreau dans ses murs. Mais il me vient à l'esprit que je dois trouver un moyen de sortir le cadavre en évitant les pièges… Hmm. Un sort, peut-être, qui ramènerait le cadavre au début de l'itinéraire…"~ */
  IF ~~ THEN EXIT
END
