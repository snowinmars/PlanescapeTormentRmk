// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOOTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOOTER~

IF ~  !Dead("Jujog")
~ THEN BEGIN 0 // from:
  SAY #53202 /* ~Cette personne trépigne d'excitation. Ses yeux brûlent d'une d'anticipation malveillante. Il se tourne et sourie d'un air narquois à ton approche. "Quoi ?"~ */
  IF ~~ THEN REPLY #53203 /* ~"Que se passe-t-il ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #53204 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53205 /* ~"Parle à Jujog si tu veux un peu d'action. Maintenant, va caguer !"~ */
  IF ~~ THEN REPLY #53206 /* ~"Attends… qui est Jujog ?"~ */ GOTO 2
  IF ~~ THEN REPLY #53207 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53208 /* ~Il te jette un regard agacé et indique vaguement une direction. "Le garde là, en armure."~ */
  IF ~~ THEN REPLY #53209 /* ~Pars.~ */ EXIT
END

IF ~  Dead("Jujog")
~ THEN BEGIN 3 // from:
  SAY #53210 /* ~Cette personne est paniquée ; incapable de réfléchir rationnellement, elle crie. "Jujog est mort ! Qu'est-ce qu'on va faire ? Il faut qu'on fiche le camp d'ici !"~ */
  IF ~~ THEN REPLY #53211 /* ~Pars.~ */ EXIT
END
