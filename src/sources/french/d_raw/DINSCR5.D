// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38105 /* ~J'ai perdu des vies à cause de mon assassin. Pour ne pas le berner, il me faut le tuer. J'ai essayé de le semer en brouillant les pistes. J'ai laissé de faux corps bien maquillés pour le calmer. J'ai parcouru les plans les plus extérieurs, espérant que la distance me serait un bouclier. J'ai creusé ce tombeau piégé à mort pour essayer de tuer l'assassin. Je me suis caché.~ */
  IF ~~ THEN REPLY #53727 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53728 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53729 /* ~Tout ce que j'ai gagné, c'est du temps. Les attaques ont recommencé, inévitablement, avec plus de fureur qu'auparavant. Les supercheries sont inutiles. Bizarrement, le tueur sait toujours que je vis. Et où que je me cache dans les plans, il me retrouve. Inévitablement.~ */
  IF ~  Global("Inscr_5","GLOBAL",0)
~ THEN REPLY #53730 /* ~Examine le panneau.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53731 /* ~Détourne-toi de l'inscription.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53732 /* ~Le panneau semble pouvoir s'enfoncer dans le mur.~ */
  IF ~~ THEN REPLY #53733 /* ~Pousse le panneau.~ */ DO ~SetGlobal("Inscr_5","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53734 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53735 /* ~Le panneau glisse en douceur dans le mur. Tu entends un déclic provenant du sarcophage derrière toi.~ */
  IF ~~ THEN REPLY #53736 /* ~Détourne-toi de l'inscription.~ */ EXIT
END
