// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBODY1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBODY1~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20615 /* ~Le cadavre gît, immobile. Les petits coups ne le font ni réagir, ni parler.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20616 /* ~"Alors, à mon avis, ce n'est pas un zombi…"~ */ EXTERN ~DANNAH~ 111
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #54873 /* ~"Alors, à mon avis, ce n'est pas un zombi…"~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #20617 /* ~Le cadavre est pris de secousses, comme si du courant électrique le traversait, et un souffle s'échappe de sa bouche.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20618 /* ~"Bonjour."~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20619 /* ~"Qui es-tu ?"~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20620 /* ~"Il faut que je te pose des questions."~ */ EXTERN ~DANNAH~ 112
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20621 /* ~"Bonjour."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20631 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20632 /* ~"Il faut que je te pose des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #20633 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.4 1.5
  SAY #20622 /* ~"Unnnngh ! Ahhhh…" Le cadavre balbutie, de sa langue liquéfiée, et tu ne comprends pas un mot de ce qu'il dit.~ */
  IF ~~ THEN REPLY #20624 /* ~"Alors, laisse tomber…"~ */ EXIT
END
