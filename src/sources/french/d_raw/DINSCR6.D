// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR6~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38107 /* ~On ne peut rien y faire. Les souvenirs sont perdus à jamais. Chacune de mes morts a emporté un peu de moi-même avec elle.~ */
  IF ~~ THEN REPLY #53738 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53739 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53740 /* ~Comment est-il possible d'être immortel tout en mourant ?~ */
  IF ~~ THEN REPLY #53741 /* ~Continue.~ */ GOTO 2
  IF ~~ THEN REPLY #53742 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53743 /* ~Il m'a dit que mon esprit faiblissait à chaque mort. Je lui ai demandé comment cela était possible, mais il n'avait pas de réponse. Il était inutile. Je l'ai massacré pour qu'aucune future incarnation ne puisse bénéficier de son inutilité.~ */
  IF ~  Global("Inscr_6","GLOBAL",0)
~ THEN REPLY #53744 /* ~Examine le panneau.~ */ GOTO 3
  IF ~~ THEN REPLY #53745 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53746 /* ~Les ciselures de l'inscription sont grossières et jurent avec le travail parfait du panneau lui-même. Après une inspection plus rapprochée, il te semble que le panneau peut s'enfoncer dans le mur.~ */
  IF ~~ THEN REPLY #53747 /* ~Pousse le panneau.~ */ DO ~SetGlobal("Inscr_6","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53748 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53749 /* ~Le panneau glisse dans le mur et tu entends un déclic provenant du sarcophage derrière toi.~ */
  IF ~~ THEN REPLY #53750 /* ~Détourne-toi de l'inscription.~ */ EXIT
END
