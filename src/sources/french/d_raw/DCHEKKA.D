// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHEKKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHEKKA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48041 /* ~Tu vois un garde ivre. Il porte l'armure de Maudith, mais la seule chose qui semble l'intéresser, c'est de protéger sa bibe. Il te regarde sans grand intérêt, les yeux vides.~ */
  IF ~~ THEN REPLY #48042 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #48043 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48044 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48045 /* ~Chek'ka Plute t'observe attentivement avec toute la concentration qu'un homme ivre est capable de rassembler. Il ricane et replonge le nez dans sa chope.~ */
  IF ~~ THEN REPLY #48046 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #48047 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48048 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0
  SAY #48049 /* ~"Chek'ka Plute. Une des élites de Maudith." Il rote.~ */
  IF ~~ THEN REPLY #48050 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48051 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #48084 /* ~Il montre Barlouche derrière le comptoir. "J'le surveille. On dit qu'il a un tunnel ici et j'veux l'voir l'utiliser pour savoir si c'est vrai. J'attends. J'surveille. Fiche le camp maintenant. Faut que j'surveille."~ */
  IF ~~ THEN REPLY #48085 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #48086 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #48087 /* ~Le garde ivre s'avance vers toi en titubant et en vociférant. À l'évidence, il pense qu'il va te tuer le premier.~ */
  IF ~~ THEN REPLY #48088 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
