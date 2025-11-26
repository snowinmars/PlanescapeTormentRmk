// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFLEECE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFLEECE~

IF ~  Global("Fleece","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1754 /* ~Tu vois un homme qui observe les bâtiments, déconcerté. Il a l'air perdu et il marmonne tout seul.~ */
  IF ~~ THEN REPLY #1755 /* ~"Bonjour."~ */ DO ~SetGlobal("Fleece","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #1756 /* ~Continue ta route.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1757 /* ~L'homme a l'air soulagé. "Ah, *enfin* ! Je t'en prie, messire, sois indulgent, je me suis perdu dans ce dédale de rues…" Il glousse de manière inconfortable. "J'ai bien peur que ce quartier de la cité ne me soit quelque peu…" Il regarde autour de lui d'un air inquiet. "… étranger. Les habitants semblent plutôt réticents à aider les visiteurs…" Il te regarde, plein d'espoir. "Pourrais-je éventuellement compter sur ton aide ?"~ */
  IF ~~ THEN REPLY #1758 /* ~"Ça dépend du genre d'aide que tu attends."~ */ GOTO 2
  IF ~~ THEN REPLY #1759 /* ~"Certainement. Où veux-tu aller ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fleece_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #1760 /* ~"Ne compte pas sur moi. À ta place, je quitterais cette zone dès que je le pourrais."~ */ GOTO 9
  IF ~~ THEN REPLY #1761 /* ~"Je n'ai pas le temps de t'aider pour le moment… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 27.0
  SAY #1762 /* ~"Je cherche la maison de ma tante Marguerite. Elle habite près de la Morgue, mais la disposition des rues a l'air d'avoir changé depuis ma dernière visite… tu vois de quelle maison je veux parler ?"~ */
  IF ~~ THEN REPLY #1763 /* ~Mensonge : "Oui. Je peux te guider… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1764 /* ~Vérité : "J'ai bien peur de ne jamais avoir entendu parler de cet endroit."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Fleece_2","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #1765 /* ~"Je ne peux pas t'aider. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1766 /* ~"Ah, d'accord. Aux dernières nouvelles, elle habiterait à proximité de la Morgue." Ses yeux se rétrécissent, comme pour te toiser. "Tu es sûr de savoir où elle habite ?"~ */
  IF ~~ THEN REPLY #2246 /* ~Mensonge : "Elle se trouve au sud-est de la Morgue, près d'un des mausolées."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_3","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #2247 /* ~"Excuse-moi, tu as dit 'Tante Marguerite' ? J'avais mal compris, je pensais à quelqu'un d'autre."~ */ GOTO 6
  IF ~~ THEN REPLY #2248 /* ~"Oh, attends. Je croyais que tu parlais d'une des maisons de tolérance. Tant pis."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_3","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2249 /* ~L'homme secoue la tête. "Oh, nan, nan… c'est pas *si* près que ça. Tu dois te tromper." L'homme regarde autour de lui, puis se retourne vers toi. "Je vais voir si quelqu'un d'autre peut me renseigner. Merci pour ton aide."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2250 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2251 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2252 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2253 /* ~"Au revoir."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2254 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #2255 /* ~L'homme fronce les sourcils d'un air déçu. "Ah, j'imagine que ç'aurait été trop beau que tu connaisses cet endroit." Il s'incline légèrement en guise de remerciement. "Eh bien, merci pour ton aide. Les gens aimables sont rares par ici."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2256 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2257 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2258 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2259 /* ~"Au revoir."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2260 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2261 /* ~"C'est une erreur compréhensible, mon bon monsieur. Bien, merci pour votre aide."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2262 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2263 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2264 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2265 /* ~"Au revoir."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2266 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #2267 /* ~L'homme cligne des yeux, surpris. "Eh… nan, nan." Il sourit, l'air peu sûr de lui. "Ma tante ne s'occupe pas de ce genre de choses."~ */
  IF ~~ THEN REPLY #2268 /* ~"Ce n'est pas ce que *j'ai* entendu dire."~ */ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2269 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2270 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2271 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2272 /* ~"Au revoir."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2273 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #2274 /* ~L'homme paraît troublé. "Je… je dois y aller."~ */
  IF ~~ THEN REPLY #2275 /* ~"Dis bonjour à ta Tante pour moi. Dis-lui que je reviendrai bientôt."~ */ EXIT
  IF ~~ THEN REPLY #2540 /* ~Laisse-le partir… cette fois.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 2.2 27.1
  SAY #2541 /* ~L'homme fronce les sourcils d'un air déçu. "Ah… Eh bien, merci pour votre aide. Au revoir."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2542 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #7614 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #7615 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #7616 /* ~"Au revoir."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #7617 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 5.1 6.1 7.2 9.1
  SAY #7618 /* ~Tu es sur le point de t'en aller, mais tu as soudain l'impression que quelque chose cloche. L'air soupçonneux, tu regardes de nouveau l'homme, juste à temps pour le voir glisser quelque chose dans sa manche… Il te semble que cet objet t'appartient.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7619 /* ~Attrape-lui la main.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7620 /* ~Attrape-lui la main.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7621 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7622 /* ~Guette l'homme qui te vole de nouveau et observe sa technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7624 /* ~Guette l'homme qui te vole de nouveau et observe sa technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7625 /* ~Guette l'homme qui te vole de nouveau et observe sa technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7626 /* ~Attaque-le.~ */ DO ~SetGlobal("Remove_Fleece","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7627 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 15.1 16.1
  SAY #7628 /* ~En un éclair, tu saisis son poignet presque en le broyant. L'homme pousse un cri et tente désespérément de se dégager.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7629 /* ~Doucement : "Arrête de te débattre ou je garde ta main."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7630 /* ~"Ça suffit, arrête de te débattre !"~ */ GOTO 14
  IF ~~ THEN REPLY #7631 /* ~Attaque-le.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7632 /* ~Laisse-le partir.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 15.0 16.0
  SAY #7633 /* ~Tu n'es pas assez rapide. Il retire sa main avant que tu aies le temps de l'attraper. Il pousse un cri et dévale la rue en courant.~ */
  IF ~~ THEN REPLY #7634 /* ~"Alors très bien…"~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 15.2 16.2
  SAY #7635 /* ~L'homme sursaute de surprise, puis se met à courir.~ */
  IF ~~ THEN REPLY #7636 /* ~"Alors très bien…"~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #7637 /* ~Il continue de se débattre. Il devient de plus en plus difficile de le retenir.~ */
  IF ~~ THEN REPLY #7638 /* ~Attaque-le.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7639 /* ~Donne-lui un coup de poing avec ta main libre, attire son attention.~ */ GOTO 23
  IF ~~ THEN REPLY #7640 /* ~Laisse-le partir.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.2 5.2 6.2 7.3 9.2
  SAY #7641 /* ~Peut-être que c'est ta manie de chaparder qui te fait te tenir sur tes gardes, mais, alors que tu es sur le point de partir, tu vérifies instinctivement ta bourse… et tu remarques que l'homme retire sa main. Il ne semble pas s'être rendu compte que tu l'as vu.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7642 /* ~Attrape-lui la main.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7643 /* ~Attrape-lui la main.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7644 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7645 /* ~Tente l'homme pour qu'il te vole de nouveau et observe sa technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7647 /* ~Tente l'homme pour qu'il te vole à nouveau et observe sa technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7648 /* ~Tente l'homme pour qu'il te vole à nouveau et observe sa technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7649 /* ~Attaque-le.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7650 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3 10.4 10.5 15.3 15.4 15.5
  SAY #7651 /* ~Tu te mets à discuter de choses et d'autres avec l'homme, tout en épiant discrètement ses gestes. Cet homme semble compter sur deux choses : d'une part, se faire passer pour un membre d'une classe élevée sorti de son élément, afin de ne pas trop attirer l'attention ; d'autre part, distraire la victime en la désorientant… lorsque celle-ci désigne une rue ou un point de repère quelconque, l'homme prend la bourse de la victime et enfouit des objets dans ses (relativement longues) manches. Tu mémorises sa technique… juste au moment où il tente à nouveau de chaparder ta bourse.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7652 /* ~Prends sa main.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7653 /* ~Prends sa main.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7654 /* ~"Hé ! Mais qu'est-ce que tu fais ?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #7655 /* ~Attaque-le.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7656 /* ~Ignore l'incident, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0
  SAY #7657 /* ~Il doit y avoir *quelque chose* dans ta voix, car il s'arrête net de se débattre. Il semble fondre sous ton regard.~ */
  IF ~~ THEN REPLY #7658 /* ~"Rends-moi tout de suite ce que tu m'as volé."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7659 /* ~Laisse-le s'en aller et pars.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #7660 /* ~Il s'incline et commence à vider ses poches. Il te tend une main pleine de pièces, bien plus qu'il ne t'en ait pas volé… Il doit y en avoir plusieurs dizaines en tout.~ */
  IF ~~ THEN REPLY #7661 /* ~"Non, garde le reste… Je veux seulement récupérer ce que tu m'as volé."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_2","GLOBALLaw",1)
TakePartyGold(25)
~ GOTO 19
  IF ~~ THEN REPLY #7662 /* ~"Nous sommes quittes. Maintenant, je ne veux plus jamais te revoir. Compris ?"~ */ GOTO 21
  IF ~~ THEN REPLY #7663 /* ~Bluff : "Donne-moi tout ce que tu as et je ne te tuerai pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_4","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7664 /* ~Vérité : "Donne-moi tout ce que tu as et je ne te tuerai pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_4","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7665 /* ~Remercie-le d'un signe de tête et attaque-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7666 /* ~Laisse-le s'en aller et pars.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7667 /* ~Il te regarde, l'air surpris, comme si tu lui jouais un tour. Puis il hausse les épaules et remet les pièces en trop dans sa poche.~ */
  IF ~~ THEN REPLY #7668 /* ~"Nous sommes quittes. Maintenant, je ne veux plus jamais te revoir. Compris ?"~ */ GOTO 21
  IF ~~ THEN REPLY #7669 /* ~Attaque-le.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7671 /* ~Laisse-le s'en aller et pars.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.3
  SAY #7670 /* ~"Eh…" Il avale sa salive. "Écoute, matois, c'est tout. Y'a plus rien."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7672 /* ~"J'ai dit *tout*, alors donne-moi *tout*."~ */ GOTO 28
  IF ~~ THEN REPLY #7673 /* ~"Bien. Je ne veux plus jamais te revoir. Compris ?"~ */ GOTO 21
  IF ~~ THEN REPLY #7674 /* ~"C'en est fini pour toi. Prépare-toi à mourir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7675 /* ~Laisse-le s'en aller et pars.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1 28.0
  SAY #7676 /* ~Il acquiesce.~ */
  IF ~~ THEN REPLY #7677 /* ~Donne-lui un coup de poing, assure-toi qu'il a compris.~ */ GOTO 22
  IF ~~ THEN REPLY #7678 /* ~Attaque-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7679 /* ~Laisse-le s'en aller et pars.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 25.0
  SAY #7680 /* ~La force de ton poing frappant sa mâchoire le projette à terre. Il se tient la mâchoire avec sa main, grogne et se met debout. On dirait que tu lui as cassé une ou deux dents.~ */
  IF ~~ THEN REPLY #7681 /* ~"Maintenant, va-t'en d'ici."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #7682 /* ~Le crochet du gauche que tu lui décoches lui tord le cou, et il se remet à crier. Légèrement déséquilibré à présent, il se retourne vers toi en maintenant sa tête avec sa main libre.~ */
  IF ~~ THEN REPLY #7683 /* ~"Tu m'écoutes ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #7684 /* ~Il s'incline en silence.~ */
  IF ~~ THEN REPLY #7685 /* ~"Rends-moi tout ce que tu m'as volé."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7686 /* ~"Je me moque de ce que tu m'as volé… À condition que je ne te revoie plus. Jamais. Compris ?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #7687 /* ~Il acquiesce de nouveau.~ */
  IF ~~ THEN REPLY #7688 /* ~Donne-lui un coup de poing, assure-toi qu'il a compris.~ */ GOTO 22
  IF ~~ THEN REPLY #7689 /* ~Attaque-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7690 /* ~Laisse-le s'en aller et pars.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~  Global("Fleece","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #7691 /* ~Tu aperçois de nouveau le même homme… Il a toujours l'air perdu et marmonne en regardant les bâtiments.~ */
  IF ~~ THEN REPLY #7692 /* ~"Bonjour."~ */ GOTO 27
  IF ~~ THEN REPLY #7693 /* ~Passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #7694 /* ~Il sursaute lorsque tu l'interpelles ; il semble nerveux. "Eh… content de te revoir, l'ami." Il a l'air plein d'espoir. "Oserais-je te demander de me guider ?"~ */
  IF ~~ THEN REPLY #7695 /* ~"Te guider où déjà ?"~ */ GOTO 2
  IF ~~ THEN REPLY #7696 /* ~"Non, pas aujourd'hui."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 20.0
  SAY #7697 /* ~"Je te le jure ! Je n'ai rien d'autre !"~ */
  IF ~~ THEN REPLY #7698 /* ~"Bien. Je ne veux plus jamais te revoir. Compris ?"~ */ GOTO 21
  IF ~~ THEN REPLY #7699 /* ~"C'en est fini pour toi. Prépare-toi à mourir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7700 /* ~Laisse-le s'en aller et pars.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END
