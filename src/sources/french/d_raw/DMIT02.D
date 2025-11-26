// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43002 /* ~Cette personne porte une liasse de papiers et de parchemins intacts ; de temps en temps, elle marque une pause pour les parcourir rapidement et en lire des extraits à haute voix, faisant en même temps des gestes compliqués. La personne lève les yeux au moment où tu te places devant elle. "Bonjour…"~ */
  IF ~~ THEN REPLY #43003 /* ~"Bonjour… C'est quoi cet endroit ?"~ */ GOTO 1
  IF ~~ THEN REPLY #43004 /* ~"Je ne fais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43005 /* ~"C'est ici que les futurs mages viennent se former et étudier. C'est ici que beaucoup de magiciens ont fait leurs premiers pas dans cet Art en tant que sorciers novices."~ */
  IF ~  Global("Thorncombe","GLOBAL",0)
~ THEN REPLY #43006 /* ~"Où est le prof ?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",1)
~ JOURNAL #66871 /* ~Je me suis rendu à la salle d'entraînement des mages de la Salle des Fêtes, mais je n'y ai pas vu le moindre professeur. L'un des apprentis que j'ai trouvés là m'a dit que Dame Peignépine, le professeur, se trouvait dans le sensorium de la Salle des Fêtes.~ */ GOTO 2
  IF ~  GlobalGT("Thorncombe","GLOBAL",0)
GlobalLT("Thorncombe","GLOBAL",3)
~ THEN REPLY #66870 /* ~"Où est le prof ?"~ */ GOTO 2
  IF ~~ THEN REPLY #43007 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43008 /* ~"Je ne sais pas où est allée Madame Peignépine. Essaie les sensoriums… Elle y passe beaucoup de temps…" La personne baisse la voix et fronce les sourcils : "Peut-être trop".~ */
  IF ~~ THEN REPLY #43009 /* ~"Les sensoriums ?"~ */ GOTO 3
  IF ~~ THEN REPLY #43010 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #43011 /* ~"Demande à Écharde, juste après l'entrée de la Salle des Fêtes. Tu ne peux pas les atteindre, mais il t'y amènera."~ */
  IF ~~ THEN REPLY #43012 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
