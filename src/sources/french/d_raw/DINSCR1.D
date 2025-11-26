// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38097 /* ~Le peu de vie qu'il y a en ce monde se vide de mon corps par ce trou. Que le monde brûle, que les plans brûlent, mais donne-moi la vie ! Je vais détruire cette vie, la briser, l'écraser, la souiller de sang et d'excréments, pour que toi non plus, tu ne puisses pas vivre ! Que toute la création brûle car je ne peux pas mourir !~ */
  IF ~  Global("Inscr_1","GLOBAL",0)
~ THEN REPLY #53654 /* ~Examine le panneau.~ */ GOTO 1
  IF ~~ THEN REPLY #53652 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53656 /* ~Le panneau est conçu de façon à ce qu'on puisse le nicher dans le mur.~ */
  IF ~~ THEN REPLY #53657 /* ~Pousse le panneau.~ */ DO ~SetGlobal("Inscr_1","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53658 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53659 /* ~Tu pousses le panneau et il se glisse en douceur dans le mur. Tu entends un déclic provenant du sarcophage derrière toi.~ */
  IF ~~ THEN REPLY #53660 /* ~Détourne-toi de l'inscription.~ */ EXIT
END
