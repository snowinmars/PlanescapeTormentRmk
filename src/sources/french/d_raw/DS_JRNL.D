// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_JRNL~

IF ~  NearbyDialog("Dsoego")
~ THEN BEGIN 0 // from:
  SAY #48857 /* ~Cette dalle métallique fait apparemment office de lit. On dirait qu'une partie sur le côté peut être ouverte.~ */
  IF ~~ THEN REPLY #48859 /* ~Ouvre-la, regarde à l'intérieur.~ */ GOTO 1
  IF ~~ THEN REPLY #48861 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48862 /* ~Tu ne peux pas fouiller les affaires de Soego tant qu'il est dans le coin. Si tu veux vraiment faire ça, tu dois trouver un moyen de le distraire ou de l'éloigner.~ */
  IF ~~ THEN REPLY #48863 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.0
  SAY #48864 /* ~Une fois certain que Soego n'est plus dans le coin, tu ouvres le petit panneau pour y jeter un coup d'œil. Tu y trouves une sorte de livre ou de journal.~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #66860 /* ~Prends-le et lis-le.~ */ GOTO 3
  IF ~  Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #48865 /* ~Prends-le et lis-le.~ */ DO ~SetGlobal("Soego_Journal","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 3
  IF ~~ THEN REPLY #48866 /* ~Ferme le panneau et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48867 /* ~Le livre se révèle être le journal de Soego. Il décrit la manière dont il a été attaqué par un rat-garou, sa lente régression causée par la lycanthropie et sa fuite de la Morgue après avoir involontairement massacré et dévoré un ami. À la recherche d'une cachette, il est tombé sur les Dédales de la Pensée et a accepté de servir Tant-en-Un, l'esprit des rats-crâne rassemblés là. Il se trouve à présent ici dans les Nations Mortes où il espionne les morts-vivants pour le compte de Tant-en-Un, qui espère un jour prendre le contrôle de cette partie des catacombes.~ */
  IF ~~ THEN REPLY #48868 /* ~Remets le journal en place, ferme le panneau et pars.~ */ JOURNAL #47846 /* ~J'ai découvert le journal de Soego, qui était caché dans sa chambre. Il y raconte qu'il a été attaqué par un rat-garou, puis qu'il s'est lentement transformé en lycanthrope, et enfin qu'il s'est enfui de la Morgue après avoir accidentellement tué un ami. Alors qu'il cherchait une cachette, il a découvert les Dédales de la Pensée et accepté de servir Tant-en-Un, esprit commun des rats-crânes résidant là. Actuellement, il se trouve ici, dans les Nations Mortes. Il espionne les morts-vivants pour le compte de Tant-en-Un, qui espère bien un jour s'emparer de cette partie des catacombes.~ */ EXIT
END

IF ~  !NearbyDialog("Dsoego")
~ THEN BEGIN 4 // from:
  SAY #67165 /* ~Cette dalle métallique fait apparemment office de lit. On dirait qu'une partie sur le côté peut être ouverte.~ */
  IF ~~ THEN REPLY #67166 /* ~Ouvre-la, regarde à l'intérieur.~ */ GOTO 2
  IF ~~ THEN REPLY #67167 /* ~Pars.~ */ EXIT
END
