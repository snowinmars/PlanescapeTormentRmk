// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLL~

IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22975 /* ~Les années n'ont pas épargné cette minuscule poupée de chiffon ; elle est déchirée au niveau des coutures et les fils se décousent. Elle ressemble à une femme étrange en robe de cérémonie, auréolée d'une couronne d'épines.~ */
  IF ~~ THEN REPLY #22981 /* ~"Ahhhh…. t'es qu'une jolie petite poupée, hein ? N'est-ce pas ? Oui, évidemment !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_3","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22982 /* ~Mets la poupée de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22976 /* ~La poupée ne réagit pas à tes cajoleries et te regarde fixement de ses yeux-boutons.~ */
  IF ~~ THEN REPLY #22983 /* ~"Très bien, très bien … J'essayais simplement de m'amuser un peu  …tsss."~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #22977 /* ~Les années n'ont pas épargné cette minuscule poupée de chiffon ; elle est déchirée au niveau des coutures et les fils se décousent. Il est évident qu'elle est censée représenter la Dame des Douleurs, mais les boutons qui lui servent d'yeux et la douceur de la peluche sont loin d'envahir le cœur d'épouvante.~ */
  IF ~~ THEN REPLY #22984 /* ~"Ohhhh… t'es qu'une jolie petite Dame des Douleurs, n'est-ce pas ? Hein ? Mais, bien sûr !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22985 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22986 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22987 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #22988 /* ~Plaisanterie : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22989 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22990 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22991 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #22992 /* ~Plaisanterie : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #22993 /* ~Mets la poupée de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.6 4.2 4.6
  SAY #22978 /* ~Alors que tu t'apprêtes à prononcer les mots, tu ressens soudainement une étrange et progressive sensation derrière le crâne. Tu sens aussi que prononcer ces mots te mettra en grand danger… même ce que tu *ressens* pourrait être dangereux.~ */
  IF ~  GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22994 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22995 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #22996 /* ~Mets la poupée de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 2.3 2.4 3.1 4.0 4.1 4.3 4.4 5.0 5.1 5.2
  SAY #22979 /* ~La poupée ne réagit pas à tes cajoleries et te regarde fixement de ses yeux-boutons.~ */
  IF ~~ THEN REPLY #22997 /* ~"Ohhhh… t'es qu'une jolie petite Dame des Douleurs, n'est-ce pas ? Hein ? Mais, bien sûr !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22998 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22999 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #23000 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #23001 /* ~Plaisanterie : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23002 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23003 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23004 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #23005 /* ~Plaisanterie : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #23006 /* ~Mets la poupée de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 3.0 4.5 4.7 4.8
  SAY #22980 /* ~Alors que tu prononces les mots, tu sens soudainement un frisson glacial t'envahir… accompagné d'un sentiment de terreur. Quelque chose ne va pas, et la poupée ne semble pas aussi inoffensive qu'elle l'a été. Pendant un instant, juste un instant, les lames entourant la tête de la poupée ont pris un éclat métallique.~ */
  IF ~~ THEN REPLY #23007 /* ~"Ohhhh… t'es qu'une jolie petite Dame des Douleurs, n'est-ce pas ? Hein ? Mais, bien sûr !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23008 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #23009 /* ~Plaisanterie : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23010 /* ~Mets la poupée de côté.~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #51951 /* ~Les années n'ont pas épargné cette minuscule poupée de chiffon ; elle est déchirée au niveau des coutures et les fils se décousent. Il est évident qu'elle est censée représenter la Dame des Douleurs, mais les boutons qui lui servent d'yeux et la douceur de la peluche sont loin d'envahir le cœur d'épouvante.~ */
  IF ~~ THEN REPLY #51955 /* ~"Ohhhh… t'es qu'une jolie petite Dame des Douleurs, n'est-ce pas ? Hein ? Mais, bien sûr !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51956 /* ~Vérité : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ GOTO 7
  IF ~~ THEN REPLY #51957 /* ~Plaisanterie : "Oh, grande Dame des Douleurs, déesse de Sigil, écoute mon appel à l'aide et aide-moi dans ces moments difficiles."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51958 /* ~Mets la poupée de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #51960 /* ~La poupée, qui ne répond pas à tes cajoleries, se contente de te regarder avec les boutons qui lui servent d'yeux. Maintenant que tu as quitté Sigil, peut-être que la poupée ne veut simplement plus jouer la Dame des Douleurs.~ */
  IF ~~ THEN REPLY #51961 /* ~Serre la poupée dans tes bras et remets-la dans ton sac.~ */ EXIT
END
