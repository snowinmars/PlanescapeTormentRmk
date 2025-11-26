// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILLON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILLON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #7095 /* ~"Eh ! Gardes ! L'intrus est ici !"~ */
  IF ~~ THEN REPLY #7096 /* ~Terminé.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #7097 /* ~"Faut qu'tu partes. J'ai pas l'intention de te garder ici."~ */
  IF ~~ THEN REPLY #7098 /* ~Pars.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",0)
Global("Alarm1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #7099 /* ~"Qu'est-ce que j'peux faire pour toi ?"~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7100 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7101 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7102 /* ~"Parle-moi de ton prédécesseur."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7103 /* ~"Parle-moi de ton prédécesseur."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7104 /* ~"Parle-moi de ton prédécesseur."~ */ GOTO 7
  IF ~~ THEN REPLY #7105 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0
  SAY #7106 /* ~"Désolée. La directrice m'a dit que t'avais passé trop de temps à la forge. Il faut laisser la place aux autres. Toutes mes excuses."~ */
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7107 /* ~"Parle-moi de ton prédécesseur."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7108 /* ~"Parle-moi de ton prédécesseur."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7109 /* ~"Parle-moi de ton prédécesseur."~ */ GOTO 7
  IF ~~ THEN REPLY #7110 /* ~"D'accord. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1
  SAY #7111 /* ~"Tu veux du minerai ? Pas d'problème. Utilise-le à bon escient. Faut y faire attention."~ */
  IF ~~ THEN REPLY #7112 /* ~"D'accord. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #7113 /* ~"Bref. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.0
  SAY #7114 /* ~"C'était très bizarre. Quand Saros s'est retrouvé sous les verrous, Thildon a disparu. Sans explication… comme ça. Volatilisé. C'est un vrai salaud, alors personne n'a regretté son départ."~ */
  IF ~~ THEN REPLY #7115 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7116 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ GOTO 4
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7117 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1
  SAY #7118 /* ~"Ben, une fois qu'il a été arrêté et mis sous les verrous, on a tout fait pour l'effacer de nos mémoires. On a toujours détesté ce bige et on était soulagé de le voir partir."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7119 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7120 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7121 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 3.2
  SAY #7122 /* ~"Ça nous a fait de la peine pour Saros. En échange de Thildon… un accord avec un fiélon, à coup sûr. T'adores Saros, mais Thildon ? Il est parti. C'est bien comme ça."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7123 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7124 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7125 /* ~"Je vois. Au revoir."~ */ EXIT
END
