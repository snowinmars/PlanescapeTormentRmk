// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38099 /* ~Cette inscription ressemble aux directives inscrites sur ton dos, que Morte t'a lues dans la Morgue :

Je sais que tu as l'impression d'avoir bu quelques tonneaux du Styx, mais tu dois te RESSAISIR. Parmi tes biens, tu possèdes un JOURNAL qui éclaircira le soltif de cette affaire. PHAROD te donnera les dernières notes de la chanson… s'il n'est pas déjà inscrit au livre des morts.~ */
  IF ~~ THEN REPLY #53675 /* ~Continue à te rafraîchir la mémoire.~ */ GOTO 1
  IF ~  Global("Inscr_2","GLOBAL",0)
~ THEN REPLY #53676 /* ~Ne tiens pas compte du reste de l'inscription et examine le panneau.~ */ GOTO 3
  IF ~~ THEN REPLY #53677 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53678 /* ~Ne perds pas le journal intime, sinon on va encore se retrouver sur le Styx, d'accord ? Et fais-moi confiance, quoi que tu fasses, NE DIS à personne QUI tu es, CE qui t'est arrivé, ni D'OÙ tu viens, sinon tu risques de faire un voyage éclair au crématorium. Fais ce que je te dis : LIS le journal intime, et trouve PHAROD.~ */
  IF ~  Global("Morte_Warning","GLOBAL",0)
~ THEN REPLY #53679 /* ~Continue.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Morte_Warning","GLOBAL",1)
~ THEN REPLY #53680 /* ~Continue.~ */ GOTO 5
  IF ~~ THEN REPLY #53681 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53682 /* ~À ta grande surprise, il y a une ligne supplémentaire - une ligne que Morte n'a pas lue à la Morgue : 'Ne fais pas confiance au crâne.'~ */
  IF ~~ THEN REPLY #53683 /* ~Examine le panneau.~ */ GOTO 3
  IF ~~ THEN REPLY #53684 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 5.0
  SAY #53685 /* ~Le panneau est conçu de façon à ce qu'on puisse le nicher dans le mur.~ */
  IF ~~ THEN REPLY #53686 /* ~Pousse le panneau.~ */ DO ~SetGlobal("Inscr_2","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53687 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53688 /* ~Le panneau glisse en douceur dans le mur. Tu entends un déclic provenant du sarcophage derrière toi.~ */
  IF ~~ THEN REPLY #53689 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #53690 /* ~Il y a une ligne supplémentaire : 'Ne fais pas confiance au crâne.'~ */
  IF ~~ THEN REPLY #53691 /* ~Examine le panneau.~ */ GOTO 3
  IF ~~ THEN REPLY #53692 /* ~Détourne-toi de l'inscription.~ */ EXIT
END
