// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ROBTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~ROBTEST~

IF ~  False()
~ THEN BEGIN 0 // from:
  SAY #166 /* ~Marteau à tête d'argent~ */
  IF ~~ THEN REPLY #167 /* ~Marteau à tête d'argent~ */ GOTO 1
  IF ~~ THEN REPLY #168 /* ~MARTEAU À TÊTE D'ARGENT
Dégâts : 1-4 Contondants
Vitesse : 6
Poids : 6
Compétence : Marteaux
Utilisable uniquement par les Guerriers et les Prêtres

Il s'agit d'un petit marteau de guerre. La tête du marteau, cabossée et rayée en de nombreux endroits, est recouverte d'une fine couche d'argent. Il est possible que ce marteau ait été utilisé dans des cérémonies.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #170 /* ~Hache d'armes~ */
  IF ~~ THEN REPLY #172 /* ~LOTION D'EMBAUMEMENT
Spécial :
Octroie +2-8 aux points de vie de base
   +1 à la classe d'armure
Poids : 1
Utilisable uniquement par Sans-nom et Morte

Il s'agit d'un bocal hermétique de lotion d'embaumement. Il est utilisé comme conservateur des corps morts. La lotion a l'avantage supplémentaire de dégager une odeur si forte qu'elle suffit à masquer la puanteur des corps en décomposition sur lesquels elle est utilisée. Ses effets sont temporaires.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #171 /* ~PASSE-PARTOUT
+5% à l'ouverture des serrures
Poids : 0
Utilisable uniquement par les Voleurs

Ces instruments en métal servent à ouvrir les portes récalcitrantes.~ */
  IF ~~ THEN REPLY #173 /* ~HACHE D'ARMES
Dégât : tranchant 1-8
Vitesse : 7
Poids : 7
Compétence : haches
Utilisable uniquement par les Guerriers

Cette énorme hache est une arme à double tranchant surmontée d'une pointe. Les lames sont extrêmement acérées, et son long manche permet à l'utilisateur de mettre énormément de force derrière chaque coup.~ */ EXIT
END
