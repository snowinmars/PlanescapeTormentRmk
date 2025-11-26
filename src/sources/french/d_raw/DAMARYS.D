// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAMARYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAMARYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 9 13 11 even though they appear after this state */
~  GlobalLT("Nodd_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #20721 /* ~Tu aperçois une jeune femme vêtue d'un corsage et de jambières en cuir serrés. Elle sent vaguement le parfum bon marché et son visage, bien que joli, est recouvert d'un maquillage criard. Elle te sourit, d'un sourire faussement timide lorsqu'elle t'aperçoit. "Besoin de compagnie, chéri ?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22779 /* ~"Est-ce que tu serais Amarysse, par hasard ?"~ */ GOTO 2
  IF ~~ THEN REPLY #22780 /* ~"Non, mais j'ai des questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #22781 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #20722 /* ~"Désolée, chéri. J'suis pas ici pour répondre aux questions des passants. T'es sûr que t'as pas besoin d'un peu de compagnie, hmm ?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22782 /* ~"Non, mais serais-tu Amarysse, par hasard ?"~ */ GOTO 2
  IF ~~ THEN REPLY #22783 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #22784 /* ~Elle te fixe en silence pendant un instant, puis se met à parler : "On m'appelait comme ça, autrefois, il y a longtemps. Qui es-tu ?"~ */
  IF ~~ THEN REPLY #22785 /* ~"Ton frère Voui m'a envoyé te chercher. Il s'inquiète pour toi, et il voulait que je lui dise comment tu allais."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #22786 /* ~"N… Voui ? Il est vivant ? Où ? Pourquoi est-ce qu'il est pas venu m'chercher lui-même ?"~ */
  IF ~~ THEN REPLY #22787 /* ~"Je pense qu'il a honte. C'est un Récupérateur qui vit dans la pauvreté au Square du Chiffonnier, maintenant. Ça ne semble pas tourner très… rond. Dans sa tête, je veux dire."~ */ JOURNAL #22632 /* ~Amarysse m'a dit que Voui s'appelait 'Thodus' lorsqu'il était enfant.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22788 /* ~"Ouais, il était déjà un peu timbré quand il était enfant, quand son nom était Thodus. Oh, il m'a tellement manqué ! Honteux, hein ? Ha ! Mon propre travail est pas plus honorable ! Ah, ouais, au moins j'gagne bien ma vie pour une de la Ruche, hein ? Faudrait qu'j'aille le voir un d'ces jours." Elle te regarde attentivement pour la première fois depuis que vous vous êtes parlés. "T'es un ami d'Voui, ou… ?"~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22789 /* ~"Si on peut dire. Pourquoi ?"~ */ GOTO 5
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #61490 /* ~"Pas vraiment, non."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22790 /* ~"Pas vraiment. Il me paye pour le dérangement."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22791 /* ~Mensonge : "Oui, oui bien sûr. Pourquoi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Amarysse_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3
  SAY #22792 /* ~"Est-ce que tu pourrais…" Elle fronce les sourcils et se mordille la lèvre, comme si elle réfléchissait à quelque chose. "Est-ce que tu pourrais lui donner ça ?" Elle se rapproche de toi et dévoile une bourse qui paraît contenir une centaine de pièces de cuivre.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22794 /* ~"Oui, je te jure que je le lui apporterai."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~J'ai promis à Amarysse d'apporter le cuivre à son frère Voui, dans le Square du Chiffonnier.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22793 /* ~"Oui, je te jure que je le lui apporterai."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~J'ai promis à Amarysse d'apporter le cuivre à son frère Voui, dans le Square du Chiffonnier.~ */ GOTO 6
  IF ~~ THEN REPLY #22795 /* ~"Oui, je le lui apporterai."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22796 /* ~"Non, il vaut mieux pas. Mais j'lui dirai que tu viendras bientôt le voir. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22797 /* ~"Non, il vaut mieux pas. Mais j'lui dirai que tu viendras bientôt le voir. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1 7.0 7.1
  SAY #22798 /* ~Elle te tend la bourse. "Merci. Va voir Voui pour moi et dis-lui qu'je m'fais du souci pour lui !"~ */
  IF ~~ THEN REPLY #22799 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #22800 /* ~"J'suis désolée, matois, mais est-ce qu'tu peux m'le jurer ? C'est un gros paquet d'jonc, hein… pour moi en tout cas."~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22801 /* ~"Oui, je te jure que je le lui apporterai."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~J'ai promis à Amarysse d'apporter le cuivre à son frère Voui, dans le Square du Chiffonnier.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22802 /* ~"Oui, je te jure que je le lui apporterai."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~J'ai promis à Amarysse d'apporter le cuivre à son frère Voui, dans le Square du Chiffonnier.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22803 /* ~"Non, il vaut mieux pas. Mais j'lui dirai que tu viendras bientôt le voir. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22804 /* ~"Non, il vaut mieux pas. Mais j'lui dirai que tu viendras bientôt le voir. Au revoir."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY #22805 /* ~"Hmm. Ben, j'te remercie quand même. S'il te plaît, va voir Voui pour moi et dis-lui qu'je m'fais du souci pour lui !"~ */
  IF ~~ THEN REPLY #22806 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 11 even though they appear after this state */
~  GlobalGT("Nodd_Quest","GLOBAL",3)
!Global("Nodd_Quest","GLOBAL",8)
!Global("Nodd_Quest","GLOBAL",9)
~ THEN BEGIN 9 // from:
  SAY #22807 /* ~Le visage d'Amarysse s'emplit d'espoir. "Alors, t'as parlé à Voui ?"~ */
  IF ~~ THEN REPLY #22808 /* ~"Non, pas encore."~ */ GOTO 10
  IF ~~ THEN REPLY #22809 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22810 /* ~"Alors, s'il te plaît, va voir Voui et dis-lui qu'je m'fais du souci pour lui !"~ */
  IF ~~ THEN REPLY #22811 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Nodd_Quest","GLOBAL",8)
!Global("Chaotic_Nodd_4","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #22812 /* ~"On m'a dit qu't'avais parlé à Voui pour moi… J'te remercie, matois."~ */
  IF ~~ THEN REPLY #22813 /* ~"Bien sûr… mais comment tu l'as su ?"~ */ GOTO 12
  IF ~~ THEN REPLY #22814 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22815 /* ~"J'ai pas mal d'amis dans la Ruche, tu vois." Elle te fait un clin d'œil. "Merci encore."~ */
  IF ~~ THEN REPLY #22816 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  GlobalGT("Nodd_Quest","GLOBAL",7)
~ THEN BEGIN 13 // from:
  SAY #22817 /* ~Tu aperçois Amarysse. Mais elle ne t'a pas encore remarqué.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",9)
~ THEN REPLY #22818 /* ~Parle-lui.~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",8)
~ THEN REPLY #22819 /* ~Parle-lui.~ */ GOTO 15
  IF ~~ THEN REPLY #22820 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22821 /* ~Ses yeux s'emplissent de rage dès qu'elle t'aperçoit ; elle est sur toi, hurlant et lame à la main avant même que tu ne puisses ouvrir la bouche. "Espèce de salaud ! Crois pas que j'sais pas c'qui est arrivé à mon pauvre frère… J'te tuerai !"~ */
  IF ~~ THEN REPLY #22822 /* ~Réponds à son attaque.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22823 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #22824 /* ~Ses yeux s'emplissent de rage dès qu'elle t'aperçoit ; elle est sur toi, hurlant et lame à la main avant même que tu ne puisses ouvrir la bouche. "Espèce de sale voleur ! On m'a dit c'que t'avais fait ! Prendre le jonc d'une pauvre besogneuse et voler son frère… J'te tuerai !"~ */
  IF ~~ THEN REPLY #22825 /* ~Réponds à son attaque.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22826 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
