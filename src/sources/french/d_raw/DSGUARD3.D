// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37953 /* ~Tu vois un garde de l'Harmonium. Il te regarde arriver d'un air ennuyé.~ */
  IF ~~ THEN REPLY #37961 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37962 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37954 /* ~Il te fait un signe de tête. "Bonjour à toi, citoyen."~ */
  IF ~~ THEN REPLY #37963 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37964 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #37955 /* ~"Je suis nouveau à l'Harmonium et nouveau à ce poste, citoyen. Je ne peux rien faire pour tes questions." Il te sourit d'un air désolé.~ */
  IF ~~ THEN REPLY #37965 /* ~"Tu peux au moins me dire ce qui se passe ici, non ?"~ */ GOTO 3
  IF ~~ THEN REPLY #37966 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37956 /* ~Il fait un signe de la tête. "Ces gens ont été reconnus coupables de crimes mineurs. Ils ont été condamnés à quelques années de servitude et sont en train d'être vendus." Il s'arrête. "C'est tout ce que je peux dire, citoyen."~ */
  IF ~~ THEN REPLY #37967 /* ~"Je vois. Je peux te demander autre chose ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37968 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37957 /* ~Il secoue la tête. "Je dois faire preuve de prudence, citoyen. Je dois te demander de partir sur-le-champ."~ */
  IF ~~ THEN REPLY #37969 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #37958 /* ~Tu vois un garde de l'Harmonium. Il fait un signe de la tête en te voyant arriver. "Rebonjour, citoyen. Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #37970 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37960 /* ~"Peu importe. Au revoir."~ */ EXIT
END
