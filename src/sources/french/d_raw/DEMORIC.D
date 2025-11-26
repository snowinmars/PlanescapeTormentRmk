// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEMORIC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEMORIC~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1790 /* ~Tu vois un homme imposant à la peau sombre et aux traits sinistres. Il est vêtu de l'habit des Hommes-Poussière et t'observe d'un regard froid.~ */
  IF ~~ THEN REPLY #1791 /* ~"Bonjour."~ */ GOTO 3
  IF ~~ THEN REPLY #14590 /* ~Ignore l'homme.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14589 /* ~Tu aperçois Emoric. Il te fixe d'un regard glacé.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14591 /* ~"J'ai des questions à te poser."~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14592 /* ~"J'ai quelques questions à te poser."~ */ GOTO 2
  IF ~~ THEN REPLY #14823 /* ~Ignore l'homme, passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #14824 /* ~"Tu nous as désavoués." Emoric devient silencieux, comme s'il était sur le point de prononcer une sentence. "Tu n'es plus un Homme-Poussière."~ */
  IF ~~ THEN REPLY #14825 /* ~"Je comprends. Mais il y a encore certaines choses que je voudrais savoir… "~ */ GOTO 6
  IF ~~ THEN REPLY #14826 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #14827 /* ~"Tu as le regard d'un perdu." La voix de l'homme est aussi dure que la pierre. "Es-tu là par hasard ou pour affaires ?"~ */
  IF ~~ THEN REPLY #14828 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Emoric","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14829 /* ~"Je suis un visiteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14830 /* ~"Je suis Emoric, Factotum et Initié du Quatrième Cercle."~ */
  IF ~~ THEN REPLY #14831 /* ~"C'est ton bar ?"~ */ GOTO 5
  IF ~~ THEN REPLY #14832 /* ~"Très bien. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #14833 /* ~"Si tu mesures la propriété en pièces de cuivre, ceci n'est pas mon établissement. Si tu la mesures en spiritualité, il est à moi." Il s'arrête, comme pour souligner son propos. "Les Hommes-Poussière ici sont mes étudiants. Ils sont sous ma protection."~ */
  IF ~~ THEN REPLY #14834 /* ~"Je peux te poser quelques questions… ?"~ */ GOTO 6
  IF ~~ THEN REPLY #14835 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 2.0 5.0 7.4 8.4 9.4 10.2 11.4 12.3 13.1 14.3 15.1 16.1 18.1 19.1 20.0 21.3 24.0 25.0 26.1 27.2 28.0 29.2 30.4 31.2 38.4 39.2 40.0 41.2 42.2 43.1 44.2 45.2 46.2 47.4 48.2 49.1 50.1 51.1 52.3 53.0 54.1 56.0 57.3 62.3 67.4 68.0 80.8 81.5 82.5 83.2 84.2 86.3 87.2 88.5 89.1 90.3 91.2 92.2 93.4 94.1 96.1 97.2 98.4 99.4 100.4 101.3 102.2
  SAY #14836 /* ~Emoric attend.~ */
  IF ~~ THEN REPLY #14837 /* ~"C'est ton bar ?"~ */ GOTO 5
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14838 /* ~"Tu peux me parler de la faction des Hommes-Poussière ?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14839 /* ~"Tu peux me parler de la faction des Hommes-Poussière ?"~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #14840 /* ~"Je voudrais devenir membre de la faction des Hommes-Poussière."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #14841 /* ~"Je voudrais devenir membre de la faction des Hommes-Poussière."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #14842 /* ~"Je voudrais devenir membre de la faction des Hommes-Poussière."~ */ GOTO 41
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14843 /* ~"Je voudrais devenir membre de la faction des Hommes-Poussière."~ */ GOTO 97
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14844 /* ~Infiltre les Hommes-Poussière pour les Anarchistes : "Je voudrais devenir membre de la faction des Hommes-Poussière."~ */ GOTO 97
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #14845 /* ~"Tu peux me parler des Contrats à mort ?"~ */ GOTO 29
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14846 /* ~"Je suis là pour retrouver un journal."~ */ GOTO 25
  IF ~  Global("Emoric_Pharod","GLOBAL",0)
Global("Pharod","GLOBAL",0)
~ THEN REPLY #14847 /* ~"Je cherche un certain Pharod. Tu ne l'aurais pas vu ?"~ */ GOTO 7
  IF ~  Global("Emoric_Pharod","GLOBAL",2)
GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14848 /* ~"J'ai parlé à Pharod et j'ai découvert où il trouve les corps qu'il t'envoie."~ */ GOTO 21
  IF ~  Global("Emoric_Pharod","GLOBAL",1)
~ THEN REPLY #14849 /* ~"Pour ce qui est de trouver Pharod et de lui demander d'où viennent les corps… la place est toujours vacante ?"~ */ GOTO 17
  IF ~  Global("Dustman_Initiation","GLOBAL",2)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14850 /* ~"J'ai parlé à Norochj et j'ai fait ce qu'il m'a demandé."~ */ GOTO 55
  IF ~  Global("Dustman_Initiation","GLOBAL",3)
GlobalGT("Await","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14851 /* ~"J'ai parlé à Attente-de-la-mort."~ */ GOTO 59
  IF ~  Global("Dustman_Initiation","GLOBAL",4)
GlobalGT("Sere","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14852 /* ~"J'ai parlé à Sère."~ */ GOTO 63
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14854 /* ~"J'ai trouvé Soego."~ */ GOTO 69
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14855 /* ~"J'ai trouvé Soego."~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14856 /* ~"En tant qu'Homme-Poussière, je te demande de m'aider."~ */ GOTO 93
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14857 /* ~"En tant qu'Homme-Poussière, j'ai quelques questions sur notre faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #14858 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.10
  SAY #14859 /* ~"Je veux savoir pourquoi tu cherches le Récupérateur Pharod."~ */
  IF ~~ THEN REPLY #14860 /* ~"Un Récupérateur ?"~ */ GOTO 8
  IF ~~ THEN REPLY #14861 /* ~"Il m'a volé quelque chose."~ */ GOTO 13
  IF ~~ THEN REPLY #14862 /* ~"Je voudrais lui parler."~ */ GOTO 14
  IF ~~ THEN REPLY #14863 /* ~"Pourquoi ? Il y a un problème ?"~ */ GOTO 11
  IF ~~ THEN REPLY #14864 /* ~"En fait, ce n'est pas ce que je voulais dire. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14865 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14866 /* ~"Les Récupérateurs récupèrent les morts et nous les amènent. Je veux savoir pourquoi tu cherches ce Récupérateur."~ */
  IF ~~ THEN REPLY #14867 /* ~"Pourquoi est-ce que les Récupérateurs ramassent les morts ?"~ */ GOTO 9
  IF ~~ THEN REPLY #14868 /* ~"Il m'a volé quelque chose."~ */ GOTO 13
  IF ~~ THEN REPLY #14869 /* ~"Je voudrais lui parler."~ */ GOTO 14
  IF ~~ THEN REPLY #14870 /* ~"Pourquoi ? Il y a un problème ?"~ */ GOTO 11
  IF ~~ THEN REPLY #14871 /* ~"En fait, ce n'est pas ce que je voulais dire. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14872 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #14873 /* ~"Ils récupèrent les morts en échange de quelques pièces."~ */
  IF ~~ THEN REPLY #14874 /* ~"Tu leur achètes les corps morts ? Pourquoi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #14875 /* ~"Il m'a volé quelque chose."~ */ GOTO 13
  IF ~~ THEN REPLY #14876 /* ~"Je voudrais lui parler."~ */ GOTO 14
  IF ~~ THEN REPLY #14877 /* ~"Pourquoi ? Il y a un problème ?"~ */ GOTO 11
  IF ~~ THEN REPLY #14878 /* ~"En fait, ce n'est pas ce que je voulais dire. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14879 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14880 /* ~"Les rues ne sont pas un cimetière. La Morgue est l'endroit où les morts doivent être enterrés. C'est le devoir d'un Homme-Poussière." Emoric reste silencieux un moment. Sans trop savoir pourquoi, tu as l'impression qu'il tient à dire quelque chose. "Je veux savoir pourquoi tu cherches ce Récupérateur Pharod."~ */
  IF ~~ THEN REPLY #14881 /* ~"Je voudrais lui parler."~ */ GOTO 14
  IF ~~ THEN REPLY #14882 /* ~"Pourquoi ? Il y a un problème ?"~ */ GOTO 11
  IF ~~ THEN REPLY #14883 /* ~"En fait, ce n'est pas ce que je voulais dire. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14884 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3 8.3 9.3 10.1 13.0 14.0 15.0
  SAY #14885 /* ~"Le Récupérateur Pharod a récemment amené beaucoup de cadavres à la Morgue. On pourrait se demander d'où viennent ces corps."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14886 /* ~"J'ai découvert d'où ils viennent."~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #14887 /* ~"Parle-moi des corps."~ */ GOTO 12
  IF ~~ THEN REPLY #14888 /* ~"Écoute, ce que vous faites ensemble, ça vous regarde. Je veux juste savoir où il est."~ */ GOTO 20
  IF ~~ THEN REPLY #14889 /* ~"Je pourrais peut-être découvrir d'où viennent ces corps."~ */ GOTO 16
  IF ~~ THEN REPLY #14890 /* ~"Je n'en sais rien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14891 /* ~"Je ne crois pas que je puisse t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #14892 /* ~"Certains viennent de mourir. Leurs yeux sont encore imprégnés de leurs derniers moments. Beaucoup d'autres sont morts depuis des siècles. La poussière du temps s'est accumulée sur leurs os. Il faut savoir d'où viennent ces corps."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14893 /* ~"J'ai découvert d'où ils viennent."~ */ GOTO 21
  IF ~~ THEN REPLY #14894 /* ~"Écoute, ce que vous faites ensemble, ça vous regarde. Je veux juste savoir où il est."~ */ GOTO 20
  IF ~~ THEN REPLY #14895 /* ~"Je pourrais peut-être découvrir d'où viennent ces corps."~ */ GOTO 16
  IF ~~ THEN REPLY #14896 /* ~"Je n'en sais rien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14897 /* ~"Je ne crois pas que je puisse t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 8.1 9.1
  SAY #14898 /* ~Emoric reste silencieux. Son regard est effrayant… fixe.~ */
  IF ~~ THEN REPLY #14899 /* ~"Pourquoi est-ce que tu veux savoir ce que je fais avec Pharod ?"~ */ GOTO 11
  IF ~~ THEN REPLY #14900 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14901 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.2 8.2 9.2 10.0
  SAY #14902 /* ~"Moi aussi. Mais c'est très difficile. Il communique par l'intermédiaire d'autres hommes." Emoric reste silencieux un moment. "Lorsque deux hommes communiquent par l'intermédiaire d'autres hommes, il se dit peu de choses et le sens se perd."~ */
  IF ~~ THEN REPLY #14903 /* ~"Pourquoi est-ce que tu veux parler à Pharod ?"~ */ GOTO 11
  IF ~~ THEN REPLY #14904 /* ~"Pourquoi est-ce que Pharod refuse de parler aux autres ?"~ */ GOTO 15
  IF ~~ THEN REPLY #14905 /* ~"Sais-tu où je peux le trouver ?"~ */ GOTO 20
  IF ~~ THEN REPLY #14906 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14907 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #14908 /* ~"La raison n'est pas claire. C'est un homme qui se cache des autres et qui cache ses raisons."~ */
  IF ~~ THEN REPLY #14909 /* ~"Pourquoi est-ce que tu veux savoir ce que je fais avec Pharod ?"~ */ GOTO 11
  IF ~~ THEN REPLY #14910 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14911 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.2
  SAY #14912 /* ~"Comment ?"~ */
  IF ~~ THEN REPLY #14913 /* ~"Je vais essayer de trouver Pharod et le lui demander."~ */ GOTO 17
  IF ~~ THEN REPLY #14914 /* ~"Je n'en sais rien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14915 /* ~"Je ne crois pas que je puisse t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.12 16.0
  SAY #14916 /* ~"Si tu réussis à parler au Récupérateur Pharod et si tu nous rapportes ses paroles, tu auras rendu un grand service aux Hommes-Poussière. Trouve d'où proviennent les morts qu'il nous ramène et tu seras récompensé."~ */
  IF ~~ THEN REPLY #14917 /* ~"Très bien. Je trouverai Pharod, je lui parlerai et je découvrirai d'où viennent les corps morts qu'il t'envoie."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",2)
~ GOTO 18
  IF ~~ THEN REPLY #14918 /* ~"Non merci. Je ne veux pas de ce travail."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #14919 /* ~Emoric acquiesce. "Ton chemin est le nôtre. Reviens ici lorsque tu auras les réponses du Récupérateur."~ */
  IF ~~ THEN REPLY #14920 /* ~"Tu peux me dire où il est ?"~ */ GOTO 20
  IF ~~ THEN REPLY #14921 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14922 /* ~"Bon, je vais voir ce que je peux faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #14923 /* ~Emoric acquiesce. "Ton chemin est à toi seul."~ */
  IF ~~ THEN REPLY #14924 /* ~"Tu peux me dire où il est ?"~ */ GOTO 20
  IF ~~ THEN REPLY #14925 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14926 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.2 12.1 14.2 18.0 19.0
  SAY #14927 /* ~"Je ne sais pas où se trouve le Récupérateur Pharod. Il se cache des Hommes-Poussière. Je chercherais d'autres Récupérateurs et leur poserais la question."~ */
  IF ~~ THEN REPLY #14928 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14929 /* ~"Bon, je vais voir ce que je peux faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.11 11.0 12.0
  SAY #14930 /* ~"D'où viennent les corps qu'il nous amène ?"~ */
  IF ~  Global("Lawful_Pharod_3","GLOBAL",0)
~ THEN REPLY #14931 /* ~Vérité : "Ils viennent des catacombes situées sous Sigil. Il utilise les corps que tu as enterrés pour te les revendre. Et lorsque tu les ré-enterres, il les exhume de nouveau."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_1","GLOBALLaw",2)
~ GOTO 22
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #14932 /* ~Vérité : "Ils viennent des catacombes situées sous Sigil. Il utilise les corps que tu as enterrés pour te les revendre. Et lorsque tu les ré-enterres, il les exhume de nouveau."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_2","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14933 /* ~Mensonge : "Plusieurs personnes du Square du Chiffonnier ont contracté une maladie qui entraîne leur décomposition prématurée. Leurs corps *paraissent* plus vieux qu'ils ne le sont."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_1","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14934 /* ~"En fait, ce n'est pas ce que je voulais dire - Je n'en sais encore rien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14935 /* ~"En fait, je continue à chercher. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2
  SAY #14936 /* ~Emoric devient silencieux. Il te fixe de son regard froid - et tu es soudain frappé par la sensation que ses yeux creusent à l'intérieur de ton crâne.~ */
  IF ~~ THEN REPLY #14937 /* ~"Euh…"~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",3)
AddexperienceParty(2500)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14938 /* ~Emoric acquiesce. "Tu as rendu un service aux Hommes-Poussière." Il sort les mains de ses manches et laisse ses longues manches se draper autour de la table comme un rideau. Lorsqu'il les retire, un petit cercueil en lapis-lazuli repose sur la table. C'est une chose minuscule, d'une largeur d'à peine 5 cm et d'une longueur de 8 cm. Le symbole de l'Homme-Poussière est gravé sur le couvercle du cercueil.~ */
  IF ~~ THEN REPLY #14939 /* ~Ramasse la boîte.~ */ DO ~GiveGoldForce(300)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14940 /* ~Alors que tu prends le cercueil, il *s'anime*, se déplie et se dissout dans un flot de centaines de pièces de cuivre, que tu réussis (sans trop savoir comment) à attraper avant qu'elles ne tombent sur le sol du bar. La présence de toutes ces pièces dans ce cercueil minuscule te dépasse.~ */
  IF ~~ THEN REPLY #14941 /* ~"Merci. J'ai d'autres questions à te poser…"~ */ GOTO 6
  IF ~~ THEN REPLY #14942 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.9
  SAY #14943 /* ~"Ces yeux n'ont pas vu de journal. Ta quête te mènera peut-être ailleurs."~ */
  IF ~~ THEN REPLY #14944 /* ~"Très bien. J'ai d'autres questions à te poser…"~ */ GOTO 6
  IF ~~ THEN REPLY #14945 /* ~"Alors, je chercherai ailleurs. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 6.1 6.2
  SAY #14946 /* ~"Les Hommes-Poussière cherchent la Vraie Mort. Certains l'appellent 'l'oubli', mais c'est incorrect. Pour les Hommes-Poussière, la Vraie Mort signifie la délivrance des chaînes de cette fausse vie."~ */
  IF ~~ THEN REPLY #14947 /* ~"Cette fausse vie ?"~ */ GOTO 27
  IF ~~ THEN REPLY #14948 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14949 /* ~"Ça m'avait échappé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14950 /* ~"Cette 'vie' à laquelle beaucoup s'accrochent avec leurs émotions est une fausse existence. Tant qu'ils s'y accrocheront, ils continueront à y renaître. Il faut se dépouiller des émotions pour échapper à ce cycle."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #14951 /* ~"Je vois. Tu peux me parler de l'organisation de ta faction ?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",2)
~ GOTO 28
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #14952 /* ~"Je vois. Tu peux me parler de l'organisation de ta faction ?"~ */ GOTO 28
  IF ~~ THEN REPLY #14953 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14954 /* ~"Ça m'avait échappé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #14955 /* ~"Les Hommes-Poussière sont organisés en cinq cercles. Le Cinquième Cercle est composé du rang inférieur des Hommes-Poussière, les Initiés. Le Premier Cercle est composé du rang supérieur des Hommes-Poussière, l'instance de direction de notre faction."~ */
  IF ~~ THEN REPLY #14956 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14957 /* ~"Ça m'avait échappé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 6.8
  SAY #14958 /* ~"Désires-tu signer le Contrat à mort ?"~ */
  IF ~~ THEN REPLY #14959 /* ~"C'est quoi, exactement ?"~ */ GOTO 30
  IF ~~ THEN REPLY #14960 /* ~"Oui, je vais signer."~ */ GOTO 31
  IF ~~ THEN REPLY #14961 /* ~"Non, j'ai d'autres questions à poser…"~ */ GOTO 6
  IF ~~ THEN REPLY #14962 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14963 /* ~"En échange de cinquante communs de cuivre, le Contrat à mort donne à la faction des Hommes-Poussière des droits sur ton cadavre après ta mort. Désires-tu signer le Contrat à mort ?"~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14964 /* ~"Je vais signer."~ */ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14965 /* ~Malgré le fait que tu aies déjà signé le contrat de Mortaï : "Je vais signer."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #14966 /* ~Malgré le fait que tu aies déjà signé le contrat d'Œilcuivré : "Je vais signer."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14967 /* ~Malgré le fait que tu aies déjà signé les contrats de Mortaï et d'Œilcuivré : "Je vais signer."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #14968 /* ~"Non, j'ai d'autres questions à poser…"~ */ GOTO 6
  IF ~~ THEN REPLY #14969 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 30.1 30.2 30.3
  SAY #14970 /* ~Emoric retire un morceau poussiéreux de parchemin de sa robe et une plume. Il te demande de signer le parchemin à trois endroits.~ */
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",0)
~ THEN REPLY #14971 /* ~Signe aux emplacements indiqués.~ */ DO ~SetGlobal("Memory_Dustman_Contract_2","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 32
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",1)
~ THEN REPLY #14972 /* ~Signe aux emplacements indiqués.~ */ GOTO 39
  IF ~~ THEN REPLY #14973 /* ~"J'ai changé d'avis. Je voulais te poser d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #14974 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 39.1
  SAY #14975 /* ~Tu prends la plume et tu commences à griffonner ta signature sur le parchemin… la plume émet un *crissement* étrange en touchant le parchemin, comme un burin sur une pierre.~ */
  IF ~~ THEN REPLY #14976 /* ~Continue à signer…~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #14977 /* ~Comme tu essaies de signer le parchemin, tu remarques qu'il semble rebelle à ta plume… en essayant très fort, tu n'arrives pas à signer ton nom. L'encre ne semble pas vouloir quitter la plume.~ */
  IF ~~ THEN REPLY #14978 /* ~"Euh… Emoric ? Qu'est-ce qu'il a ce contrat ?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14979 /* ~Lorsque tu lèves les yeux pour parler à Emoric, tu vois que son visage est devenu de marbre, une statue. Le reste du bar semble empli d'une vapeur grise et tu n'arrives plus à voir le reste des clients. Un faible murmure sort de la bouche d'Emoric, comme si ses poumons en pierre tentaient de forcer une respiration hors de sa poitrine.~ */
  IF ~~ THEN REPLY #14981 /* ~"Emoric… ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14983 /* ~Tu entends à peine le murmure provenant des lèvres de pierre d'Emoric, et tu réalises que ce n'en est pas un, mais plusieurs…

*Signe*

*Mais sache que son prix lie ton âme et qu'il est gravé dans la pierre*

*Et qu'est-ce qui peut changer la nature d'un homme ?*

Les mots murmurés deviennent un chœur mort, haché, comme s'ils étaient prononcés par cinq, dix, vingt, cent voix - vieilles, jeunes, féminines, masculines, désespérées, calmes, hystériques…~ */
  IF ~~ THEN REPLY #14988 /* ~"La nature d'un homme… ?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14992 /* ~En prononçant les mots, tu te sens faible et tu entends alors la voix d'Emoric avec son intonation normale. "Désires-tu toujours signer ?"~ */
  IF ~~ THEN REPLY #14994 /* ~Essaie de reprendre tes esprits…~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #14996 /* ~C'est comme si le temps avait expiré et repris son cours normal… la vapeur qui emplissait le bar a disparu et Emoric n'est plus une statue. Tu ressens une pression étrange dans le crâne, comme si quelque chose cherchait désespérément à faire surface sans y parvenir, comme si des douzaines de flashs te revenaient en mémoire tous à la fois, les uns s'imbriquant dans les autres pour créer une image… et tu sais que chaque souffle qui sort du visage de pierre d'Emoric appartenait à une *personne* morte depuis bien longtemps.~ */
  IF ~~ THEN REPLY #15001 /* ~Regarde de nouveau le parchemin.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15003 /* ~Tandis que tu examines le parchemin poussiéreux sur la table, tu es sûr que ce n'est pas la première fois que tu as apposé ton nom sur un contrat… et peut-être pas la première fois que tu en as signé un de la sorte.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15009 /* ~Finis de signer le contrat.~ */ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15011 /* ~Malgré le fait que tu aies déjà signé le contrat de Mortaï, finis de signer celui d'Emoric.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #15013 /* ~Malgré le fait que tu aies déjà signé le contrat d'Œilcuivré, finis de signer celui d'Emoric.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15015 /* ~Malgré le fait que tu aies déjà signé les contrats de Mortaï et d'Œilcuivré, finis de signer celui d'Emoric.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~~ THEN REPLY #15017 /* ~"En fait, je pense que je vais attendre avant de signer ça. J'avais d'abord d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15019 /* ~"Je n'ai pas envie de signer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.1
  SAY #15029 /* ~Lorsque tu reposes la plume sur le parchemin, tu entends un murmure et un flot de pensées et de souvenirs jaillit de ton esprit…~ */
  IF ~~ THEN REPLY #15031 /* ~Refoule les souvenirs, signe le contrat…~ */ GOTO 40
  IF ~~ THEN REPLY #15033 /* ~Laisse revenir le souvenir.~ */ GOTO 32
  IF ~~ THEN REPLY #15035 /* ~"En fait, je crois que je vais attendre avant de signer ça. J'avais d'abord d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15037 /* ~"Je n'ai pas envie de signer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.1 38.2 38.3 39.0
  SAY #15085 /* ~Tu griffonnes un "X" sur le contrat aux trois endroits indiqués par Emoric. Dès que tu as fini, Emoric prend le contrat et te tend un sac de cinquante pièces de cuivre.~ */
  IF ~~ THEN REPLY #15086 /* ~"Bon, maintenant j'aurais d'autres questions à te poser…"~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 6
  IF ~~ THEN REPLY #15087 /* ~"Marché conclu… Au revoir."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 6.3 6.4 6.5
  SAY #15088 /* ~"Une autre faction te compte déjà dans ses rangs."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #15089 /* ~Mensonge : "Tu te trompes. Je n'appartiens à aucune autre faction."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_5","GLOBALLaw",-2)
~ GOTO 42
  IF ~~ THEN REPLY #15090 /* ~"Je voudrais quitter cette faction et rejoindre les Hommes-Poussière."~ */ GOTO 45
  IF ~~ THEN REPLY #15091 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15092 /* ~"Ça m'avait échappé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15093 /* ~"Je ne me suis pas trompé." La voix d'Emoric est inflexible, mais tu y décèles de légères inflexions de doute.~ */
  IF ~~ THEN REPLY #15094 /* ~"Tu fais erreur. Mon esprit est celui d'un Homme-Poussière, et il n'appartient à aucune autre faction. Si tu *doutes* de moi, alors fais-moi passer un test."~ */ GOTO 43
  IF ~~ THEN REPLY #15095 /* ~"Très bien, je voudrais quitter cette faction pour rejoindre les Hommes-Poussière."~ */ GOTO 45
  IF ~~ THEN REPLY #15096 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15097 /* ~"Alors, on n'a rien d'autre à se dire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #15098 /* ~Lorsque tu prononces le mot *doute*, Emoric tressaillit légèrement, de façon presque indécelable sur son visage fermé, mais tu t'en rends compte. Emoric est peut-être un Homme-Poussière, mais le plus petit changement dans ses expressions trahit ses pensées.~ */
  IF ~~ THEN REPLY #15099 /* ~"Je te le redis - si tu *doutes* de moi, fais-moi passer un test. Tu verras que mon esprit est dénué d'émotions et que le chemin que je suis est celui d'un Homme-Poussière."~ */ GOTO 44
  IF ~~ THEN REPLY #15100 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15101 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15102 /* ~Emoric demeure silencieux en t'examinant. Au bout d'un moment, il se met à parler. "Je n'ai aucun doute. Mais un test est requis. Si tu désires faire partie de la faction des Hommes-Poussière, j'écouterai ta demande."~ */
  IF ~~ THEN REPLY #15103 /* ~"Oui, je désire devenir membre de la faction des Hommes-Poussière."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15104 /* ~"Une fois de plus, tu t'es trompé sur mon compte. Je n'ai pas *envie* de devenir membre de la faction des Hommes-Poussière. Je crois seulement ce qu'ils croient."~ */ GOTO 48
  IF ~~ THEN REPLY #15105 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15106 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1
  SAY #15107 /* ~"Ton désir de faire partie de la faction des Hommes-Poussière est-il plus fort que ta loyauté à cette autre faction ?~ */
  IF ~~ THEN REPLY #15108 /* ~"Oui."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15109 /* ~"Tu t'es trompé sur mes intentions. Je n'ai pas *envie* de devenir membre de la faction des Hommes-Poussière. Je crois seulement ce qu'ils croient ."~ */ GOTO 48
  IF ~~ THEN REPLY #15110 /* ~"Je renonce à ma demande. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15111 /* ~"Tant pis, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0 45.0 97.0
  SAY #15112 /* ~"Si tu désires faire partie de la faction des Hommes-Poussière, la passion régit ton esprit. Le chemin de la passion n'est pas le chemin d'un Homme-Poussière."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15114 /* ~"Ce n'est pas ce que je voulais dire. Je n'ai pas *envie* de devenir membre de la faction des Hommes-Poussière. Je crois seulement ce qu'ils croient."~ */ GOTO 48
  IF ~~ THEN REPLY #15115 /* ~"Alors, tu peux m'en dire plus sur le chemin d'un Homme-Poussière ?"~ */ GOTO 49
  IF ~~ THEN REPLY #15116 /* ~"Je renonce à ma demande. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15117 /* ~"Alors, tant pis. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #15118 /* ~"Cela va provoquer la colère dans ton ancienne faction. Tu ne seras plus le bienvenu dans leurs salles et dans leurs esprits."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #15119 /* ~Renonce à la faction : "S'il faut qu'il en soit ainsi, qu'il en soit ainsi. Mon esprit doit être en accord avec lui-même, pas avec celui d'un autre. À partir de maintenant, je renonce aux croyances des Hommes-Dieux."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #15120 /* ~Renonce à la faction : "S'il faut qu'il en soit ainsi, qu'il en soit ainsi. Mon esprit doit être en accord avec lui-même, pas avec celui d'un autre. À partir de maintenant, je renonce aux… euh, 'croyances' des Chaoteux."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #15121 /* ~Renonce à la faction : "S'il faut qu'il en soit ainsi, qu'il en soit ainsi. Mon esprit doit être en accord avec lui-même, pas avec celui d'un autre. À partir de maintenant, je renonce aux croyances des Sensats."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
~ GOTO 48
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15122 /* ~Mensonge pour infiltrer les Hommes-Poussière pour les Anarchistes : "S'il faut qu'il en soit ainsi, qu'il en soit ainsi. Mon esprit doit être en accord avec lui-même, pas avec celui d'un autre. À partir de maintenant, je renonce aux croyances de mon ancienne faction."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_6","GLOBALLaw",-2)
~ GOTO 48
  IF ~~ THEN REPLY #15123 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15124 /* ~"Alors, il faut que je m'y prépare. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1 45.1 46.0 47.0 47.1 47.2 47.3 97.1
  SAY #15203 /* ~"Très bien. Connais-tu notre philosophie ?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15205 /* ~"Oui."~ */ GOTO 51
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15206 /* ~"Pas intégralement, non."~ */ GOTO 49
  IF ~~ THEN REPLY #15207 /* ~"Je ne veux plus rejoindre la faction des Hommes-Poussière. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15209 /* ~"Tant pis, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.1 48.1
  SAY #15210 /* ~"Les Hommes-Poussière cherchent la Vraie Mort. Certains l'appellent 'l'oubli', mais c'est faux. Pour les Hommes-Poussière, la Vraie Mort est la délivrance des chaînes de cette fausse vie."~ */
  IF ~~ THEN REPLY #15211 /* ~"Cette fausse vie ?"~ */ GOTO 50
  IF ~~ THEN REPLY #15212 /* ~"Je ne veux plus rejoindre les Hommes-Poussière. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15213 /* ~"Tant pis, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15214 /* ~"Cette 'vie' à laquelle beaucoup s'accrochent avec leurs émotions est une fausse existence. Tant que l'on s'y attache, on y renaît continuellement. Il faut se dépouiller de ses émotions pour échapper à ce cycle."~ */
  IF ~~ THEN REPLY #15216 /* ~"Très bien. Maintenant, je comprends ta philosophie."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 51
  IF ~~ THEN REPLY #15217 /* ~"Je ne veux plus rejoindre les Hommes-Poussière. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15219 /* ~"Tant pis, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.0 50.0
  SAY #15221 /* ~"Récite-la."~ */
  IF ~~ THEN REPLY #15223 /* ~"L'objectif de tout Homme-Poussière est d'atteindre la Vraie Mort, l'oubli. Cette 'vie', à laquelle beaucoup s'accrochent par leurs émotions et leurs passions, est fausse. Tant qu'on s'y accroche, on y renaît sans cesse. Il faut renoncer aux émotions pour échapper à ce cycle."~ */ GOTO 52
  IF ~~ THEN REPLY #15225 /* ~"Je renonce à ma demande. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15227 /* ~"Tant pis, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #15229 /* ~"Y crois-tu ?"~ */
  IF ~~ THEN REPLY #15230 /* ~Vérité : "Oui."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 53
  IF ~~ THEN REPLY #15232 /* ~Mensonge : "Oui."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Emoric_7","GLOBALLaw",-2)
~ GOTO 53
  IF ~~ THEN REPLY #15233 /* ~Vérité : "Pas complètement."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALLawful_Emoric_2","GLOBALLaw",2)
~ GOTO 54
  IF ~~ THEN REPLY #15235 /* ~"Je ne veux plus rejoindre les Hommes-Poussière. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15239 /* ~"Peu importe. Je ne veux plus devenir membre de la faction des Hommes-Poussière. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1 54.0
  SAY #15605 /* ~"Il faudra le tester. Parles-en à l'Initié Norochj. Il est ici dans le bar. Reviens quand tu auras fait ce qu'il t'aura demandé."~ */
  IF ~~ THEN REPLY #15609 /* ~"J'irai lui parler. Mais d'abord, j'ai quelques questions…"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #15610 /* ~"Très bien. Je vais aller lui parler tout de suite."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #15611 /* ~"En fait, je n'en ai pas vraiment envie. Au revoir."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.2
  SAY #15612 /* ~"La croyance peut venir avec le temps. Tes certitudes sont-elles si fortes que notre philosophie ne pourrait jamais avoir une place dans ton esprit ?"~ */
  IF ~~ THEN REPLY #15613 /* ~"Je voudrais soumettre mes doutes à l'épreuve du temps. Je vais passer un peu de temps parmi les Hommes-Poussière, et ensuite je réfléchirai à mes croyances."~ */ GOTO 53
  IF ~~ THEN REPLY #15614 /* ~"Je pense que je ne croirai jamais à votre philosophie. Je renonce à ma demande. J'ai d'autres questions…"~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 6
  IF ~~ THEN REPLY #15615 /* ~"Je ne tiens pas à rejoindre la faction des Hommes-Poussière. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 6.13
  SAY #15616 /* ~Emoric acquiesce. "Tu as fait ce que je t'avais demandé. Désires-tu poursuivre ton initiation ?"~ */
  IF ~~ THEN REPLY #15618 /* ~"Oui. J'aimerais en savoir plus sur la faction des Hommes-Poussière."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15620 /* ~"Oui. Je ne sais toujours pas si mes croyances sont celles des Hommes-Poussière, mais j'aimerais en savoir plus sur la faction avant de prendre ma décision."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15622 /* ~"Non. Je ne veux plus rejoindre la faction des Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.2 55.2 57.4 59.5 60.4 62.4 63.3 64.4 65.1 66.1 67.5 68.2 69.2 70.3 71.3 72.1 74.0 75.2 76.2
  SAY #15626 /* ~"Rien d'autre ne te sera demandé."~ */
  IF ~~ THEN REPLY #15628 /* ~"Très bien. Mais J'ai d'autres questions…"~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ GOTO 6
  IF ~~ THEN REPLY #15630 /* ~"Alors, je m'en vais. Au revoir."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 55.1
  SAY #15634 /* ~"J'ai un autre test. Cherche un de nos Initiés, Attente-de-la-mort. Il se trouve ici dans le bar. Il recherche passionnément la Vraie Mort. S'il persiste, elle restera à jamais hors de sa portée. Parle avec lui et vois si tu peux l'aider."~ */
  IF ~  Global("Await","GLOBAL",2)
~ THEN REPLY #15636 /* ~"Je lui en ai déjà parlé."~ */ GOTO 60
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15638 /* ~"Il ne veut pas me parler."~ */ GOTO 58
  IF ~  !Global("Await","GLOBAL",2)
!Global("Await","GLOBAL",3)
~ THEN REPLY #15640 /* ~"J'irai parler à Attente-de-la-mort et je verrai ce que je peux faire."~ */ EXIT
  IF ~~ THEN REPLY #15642 /* ~"Je vais aller lui parler. Mais j'ai d'abord d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15644 /* ~"Je ne veux plus rejoindre les Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.1 59.0
  SAY #15645 /* ~"Il n'a pas voulu entendre mes paroles. J'écouterai tes pensées sur Attente-de-la-mort."~ */
  IF ~~ THEN REPLY #15646 /* ~"Est-ce qu'un Homme-Poussière aussi passionné est vraiment un Homme-Poussière ? Je ne crois pas."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15647 /* ~"Ce n'est pas un Homme-Poussière. Il le deviendra peut-être avec le temps."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15648 /* ~"C'est un Homme-Poussière."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15649 /* ~"Je n'en pense rien. Ce qui est, est."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 6.14
  SAY #15651 /* ~"Je veux savoir de quoi tu as parlé."~ */
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15652 /* ~"Il ne veut pas me parler. J'ai essayé, mais il ne m'écoute pas."~ */ GOTO 58
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
Global("Await","GLOBAL",2)
~ THEN REPLY #15653 /* ~"Il a choisi la vie plutôt que la mort. Pour l'instant."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15655 /* ~"Il a choisi de vivre encore quelque temps et il essaie de réprimer sa passion pour la mort."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15656 /* ~"Il a choisi d'accepter la vie, et de ce fait, il réprime sa passion pour la mort."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15658 /* ~"Il a choisi de vivre encore quelque temps pour apprendre à mourir."~ */ GOTO 61
  IF ~~ THEN REPLY #15660 /* ~"Je ne veux plus rejoindre les Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 60 // from: 57.0
  SAY #15666 /* ~"Je veux savoir de quoi tu as parlé."~ */
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
~ THEN REPLY #15668 /* ~"Il a choisi la vie plutôt que la mort. Pour l'instant."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15670 /* ~"Il a choisi de vivre encore quelque temps et il essaie de réprimer sa passion pour la mort."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15671 /* ~"Il a choisi d'accepter la vie, et de ce fait, il réprime sa passion pour la mort."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15673 /* ~"Il a choisi de vivre encore quelque temps pour apprendre à mourir."~ */ GOTO 61
  IF ~~ THEN REPLY #15674 /* ~"Je ne veux plus rejoindre les Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 61 // from: 59.1 59.2 59.3 59.4 60.0 60.1 60.2 60.3
  SAY #15678 /* ~"J'aimerais connaître tes sentiments sur le choix d'Attente-de-la-mort."~ */
  IF ~~ THEN REPLY #15680 /* ~"Il ne sera jamais un Homme-Poussière."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15681 /* ~"Ce n'est pas un Homme-Poussière. Il le deviendra peut-être avec le temps."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15683 /* ~"C'est un Homme-Poussière. Il a appris sa leçon."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15685 /* ~"Je n'en pense rien. Ce qui est, est."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.0 58.1 58.2 58.3 61.0 61.1 61.2 61.3
  SAY #15692 /* ~"Tu as parlé avec l'Initié Attente-de-la-mort. Je connais tes pensées sur l'Initié Attente-de-la-mort. Tu as fait ce que je t'ai demandé." Emoric acquiesce. "J'ai un autre test. Il y a quelqu'un d'autre à qui je veux que tu parles dans ce bar. Elle s'appelle Sere. Sere est une Initiée du Cinquième Cercle." Emoric reste silencieux un moment. "Elle ne s'en tient plus aux enseignements des Hommes-Poussière comme elle le faisait. Son cœur est aigri. Je veux savoir pourquoi."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15693 /* ~"Elle ne veut pas me parler."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15695 /* ~"Je lui ai déjà parlé. Depuis la fièvre qui l'a frappée il y a quinze jours, elle a peur de la mort. Elle accuse les Hommes-Poussière."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 64
  IF ~  !Global("Sere","GLOBAL",2)
~ THEN REPLY #15697 /* ~"Je vais aller lui parler tout de suite."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #15699 /* ~"Je vais aller lui parler. Mais j'avais d'abord d'autres questions…"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 6
  IF ~~ THEN REPLY #15701 /* ~"Je ne veux pas de ce test. Je ne veux plus rejoindre les Hommes-Poussière."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 56
END

IF ~~ THEN BEGIN 63 // from: 6.15
  SAY #15735 /* ~"J'aimerais savoir ce que tu lui as dit."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15737 /* ~"Elle ne veut pas me parler."~ */ DO ~AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15739 /* ~"Depuis la fièvre qui l'a frappée il y a quinze jours, elle a peur de la mort. Elle accuse les Hommes-Poussière."~ */ GOTO 64
  IF ~~ THEN REPLY #15740 /* ~"Encore rien d'important. Je vais retourner lui parler."~ */ EXIT
  IF ~~ THEN REPLY #15741 /* ~"Je ne veux plus rejoindre les Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 64 // from: 62.1 63.1
  SAY #15744 /* ~"J'aimerais savoir ce que tu lui as dit."~ */
  IF ~  Global("Sere_Answer","GLOBAL",1)
~ THEN REPLY #15746 /* ~"Je lui ai dit que sa peur et ses doutes l'avaient façonnée. Ce n'est pas un Homme-Poussière."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",2)
~ THEN REPLY #15747 /* ~"Je lui ai dit que sa peur n'était que temporaire. Le temps lui prouvera qu'elle est bien un Homme-Poussière."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",3)
~ THEN REPLY #15749 /* ~"Je lui ai dit que sa peur n'était que temporaire. Le temps lui prouvera qu'elle est bien un Homme-Poussière."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #15750 /* ~"Je sais ce qui l'angoisse, mais je n'ai rien pu faire pour l'aider."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #15752 /* ~"Je n'ai pas envie de te le dire. Je ne veux plus rejoindre les Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 65 // from: 62.0 63.0
  SAY #15751 /* ~"Elle ne voulait pas m'écouter non plus." Emoric fait un signe de tête. "Tu as fait ce que je t'ai demandé. Désires-tu poursuivre ton initiation ?"~ */
  IF ~~ THEN REPLY #15753 /* ~"Oui. J'aimerais en savoir plus sur la faction des Hommes-Poussière. Je voudrais poursuivre les tests."~ */ GOTO 67
  IF ~~ THEN REPLY #15754 /* ~"Non. Je ne veux plus rejoindre les Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 66 // from: 64.0 64.1 64.2 64.3
  SAY #15755 /* ~"Tu as fait ce que je t'ai demandé." Emoric fait un signe de tête. "Désires-tu poursuivre ton initiation ?"~ */
  IF ~~ THEN REPLY #15756 /* ~"Oui. J'aimerais en savoir plus sur la faction des Hommes-Poussière. Je voudrais poursuivre les tests."~ */ GOTO 67
  IF ~~ THEN REPLY #15757 /* ~"Je crois que je n'ai plus rien à apprendre. Je ne veux plus rejoindre les Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0
  SAY #15758 /* ~"Soego, un Initié du Cinquième Cercle, a entrepris un service missionnaire pour les Hommes-Poussière." Emoric observe un silence… tu ne sais pas s'il essaie de s'expliquer ou s'il est troublé. "Ni moi ni la faction ne connaissons son chemin. Je veux savoir où il se trouve."~ */
  IF ~  Global("Soego","GLOBAL",1)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15759 /* ~"Soego n'est pas à la Morgue ?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Global("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15760 /* ~"Je croyais que je l'avais tu… euh… Aux dernières nouvelles, il avait eu un accident. Il n'est plus à la Morgue ?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15761 /* ~"Je l'ai déjà trouvé."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15762 /* ~"Je l'ai déjà trouvé."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~~ THEN REPLY #15763 /* ~"Alors, je vais essayer de le trouver. Mais j'avais d'abord quelques questions…"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 6
  IF ~~ THEN REPLY #15764 /* ~"Je ne veux pas faire ça. Je ne veux plus rejoindre les Hommes-Poussière."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 56
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #15765 /* ~"Plus maintenant. Il est parti brusquement."~ */
  IF ~~ THEN REPLY #15766 /* ~"Alors, je vais essayer de le trouver. Mais j'avais d'abord quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15767 /* ~"Alors, je vais essayer de le trouver. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #15768 /* ~"Je ne veux plus rejoindre les Hommes-Poussière."~ */ GOTO 56
END

IF ~~ THEN BEGIN 69 // from: 6.16 6.17 67.2 67.3
  SAY #15769 /* ~"J'aimerais savoir où il se trouve."~ */
  IF ~  Dead("Soego2")
~ THEN REPLY #15770 /* ~"Je l'ai trouvé dans les catacombes, sous Sigil. Il est mort là."~ */ GOTO 71
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
~ THEN REPLY #15771 /* ~"Je l'ai trouvé dans les catacombes, sous Sigil."~ */ GOTO 70
  IF ~~ THEN REPLY #15772 /* ~"Je n'ai pas envie de te le dire. Je ne veux plus rejoindre les Hommes-Poussière."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
AddexperienceParty(2500)
~ GOTO 56
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY #15773 /* ~"Pourquoi est-il là-bas ?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15774 /* ~"Je ne sais pas."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15776 /* ~"Il a découvert un groupe de morts-vivants qui gardaient les catacombes. Il essaie de les convaincre d'accéder à la Vraie Mort."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15778 /* ~"Il souffre de lycanthropie. Son esprit ne lui appartient plus et ses croyances d'Homme-Poussière ont disparu."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15779 /* ~"Je n'ai pas envie de te le dire. Je ne veux plus rejoindre les Hommes-Poussière."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 71 // from: 69.0
  SAY #15780 /* ~"Pourquoi était-il là-bas ?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15781 /* ~"Je ne sais pas."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15783 /* ~"Il a découvert un groupe de morts-vivants qui gardaient les catacombes. Il a essayé de les convaincre d'accéder à la Vraie Mort."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15785 /* ~"Il souffrait de lycanthropie. C'est ce qui l'a conduit dans les catacombes. Son esprit ne lui appartenait plus et ses croyances d'Homme-Poussière avaient disparu." ~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15786 /* ~"Je n'ai pas envie de te le dire. Je ne veux plus rejoindre les Hommes-Poussière."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 72 // from: 70.0 70.1 70.2 71.0 71.1 71.2
  SAY #15790 /* ~"Très bien. Tu l'as trouvé." Emoric ne réagit à ta réponse que par un simple signe de tête. "Tu as accompli toutes les tâches que je t'avais demandées. Je ferai de toi un Homme-Poussière, un Initié du Cinquième Cercle. Désires-tu toujours être un membre de la faction ?"~ */
  IF ~~ THEN REPLY #15791 /* ~"Oui."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #15792 /* ~"Non. J'ai changé d'avis."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #15794 /* ~"Ton initiation requiert une promesse."~ */
  IF ~~ THEN REPLY #15797 /* ~"Une promesse ?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #15798 /* ~"Tu dois promettre de servir les Hommes-Poussière. Tu dois promettre que tu t'es détaché de la Vie. Tu dois promettre que ton but est d'atteindre la Vraie Mort."~ */
  IF ~~ THEN REPLY #15800 /* ~"Euh… Non, merci."~ */ GOTO 56
  IF ~~ THEN REPLY #15802 /* ~"Très bien."~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY #15843 /* ~"Une fois de plus : crois-tu aux principes des Hommes-Poussière ?"~ */
  IF ~~ THEN REPLY #15844 /* ~Mensonge : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_10","GLOBALLaw",-2)
IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 76
  IF ~~ THEN REPLY #15845 /* ~"Oui."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 76
  IF ~~ THEN REPLY #15846 /* ~"Non. J'ai changé d'avis."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 56
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #15848 /* ~"Je te servirai de témoin. Fais ta promesse."~ */
  IF ~~ THEN REPLY #15849 /* ~Serment : "Je promets de servir les Hommes-Poussière. Je renonce à ma Vie pour me consacrer à la recherche de la Vraie Mort."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_4","GLOBALLaw",3)
~ GOTO 77
  IF ~~ THEN REPLY #15850 /* ~Mensonge : "Je promets de servir les Hommes-Poussière. Je renonce à ma Vie pour me consacrer à la recherche de la Vraie Mort."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_11","GLOBALLaw",-3)
~ GOTO 77
  IF ~~ THEN REPLY #15851 /* ~"Non. J'ai changé d'avis."~ */ GOTO 56
END

IF ~~ THEN BEGIN 77 // from: 76.0 76.1
  SAY #15853 /* ~"Tu comptes désormais au nombre des Morts. Je dois te révéler certaines choses."~ */
  IF ~~ THEN REPLY #15854 /* ~Écoute.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #15855 /* ~"Les morts errants résident parmi les Hommes-Poussière. Ils travaillent avec les Hommes-Poussière. En d'autres temps, ils furent pourtant les ennemis des vivants."~ */
  IF ~~ THEN REPLY #15856 /* ~"Ça ne m'a pas échappé."~ */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #15857 /* ~"Les Hommes-Poussière ont conclu une trêve avec les Morts. Cette trêve s'appelle la *Trêve des Morts.* Les morts ne feront jamais de mal à un Homme-Poussière tant que nous la respecterons." Tandis qu'Emoric entonne ces mots, tu sens tes cheveux se dresser sur ta nuque… La Trève des Morts… ça te dit quelque chose, mais quoi ?~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #15858 /* ~"Je vois."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",1)
SetGlobal("Dustman_Ressurection","GLOBAL",1)
SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,2500)
~ JOURNAL #61611 /* ~Quand j'ai rejoint la faction des Hommes-Poussière, Emoric a évoqué la "Trêve des morts". Apparemment, les Hommes-Poussière ne font rien aux squelettes et zombis, et ces morts-vivants les laissent en paix à moins d'être attaqués les premiers. Mais, quand Emoric a fait de moi un Homme-Poussière, j'ai eu la sensation que j'avais déjà rompu ce pacte. La trêve offre peut-être une protection contre les morts-vivants, mais j'ai bien l'impression qu'elle n'aura aucun effet sur moi. J'ignore pourquoi. Peut-être ai-je autrefois commis un crime terrible contre les morts-vivants…~ */ GOTO 80
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15860 /* ~"Euh… Ouais, je suppose qu'ils ne feraient jamais de mal à un véritable Homme-Poussière… Quelqu'un qui ferait semblant d'en être un n'aurait pas la même protection, j'imagine."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15861 /* ~"Euh… Ouais, je suppose qu'ils ne feraient jamais de mal à un véritable Homme-Poussière… Quelqu'un qui ferait semblant d'en être un n'aurait pas la même protection, j'imagine."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15862 /* ~"Euh… Ouais, je suppose qu'ils ne feraient jamais de mal à un véritable Homme-Poussière… Quelqu'un qui ferait semblant d'en être un n'aurait pas la même protection, j'imagine."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",7)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15863 /* ~"Euh… Ouais, je suppose qu'ils ne feraient jamais de mal à un véritable Homme-Poussière… Quelqu'un qui ferait semblant d'en être un n'aurait pas la même protection, j'imagine."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0 79.1 79.2 79.3 79.4
  SAY #15867 /* ~"Il existe en outre des enchantements qui prolongent la vie ou interfèrent sur la mort. Ces enchantements sont un anathème pour notre faction. Ils agissent rarement sur les membres de notre faction. Rien ne doit empêcher notre passage à la Vraie Mort. Comprends-tu ?"~ */
  IF ~~ THEN REPLY #15875 /* ~"Et si c'est… difficile… pour la personne en question de mourir ?"~ */ GOTO 82
  IF ~~ THEN REPLY #15876 /* ~"C'est aussi valable pour les sorts de guérison ?"~ */ GOTO 89
  IF ~~ THEN REPLY #15877 /* ~"J'ai une question sur cette Trêve des morts…"~ */ GOTO 90
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15878 /* ~"Euh… Ouais, je suppose que le tabou de l'anti-résurrection ne s'applique qu'aux véritables Hommes-Poussière, non ? Ça n'empêche pas les sorts de guérison, si ?"~ */ GOTO 89
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15879 /* ~"Euh… Ouais, je suppose que le tabou de l'anti-résurrection ne s'applique qu'aux véritables Hommes-Poussière, non ? Ça n'empêche pas les sorts de guérison, si ?"~ */ GOTO 89
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15880 /* ~"Euh… Ouais, je suppose que le tabou de l'anti-résurrection ne s'applique qu'aux véritables Hommes-Poussière, non ? Ça n'empêche pas les sorts de guérison, si ?"~ */ GOTO 89
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15881 /* ~"Euh… Ouais, je suppose que le tabou de l'anti-résurrection ne s'applique qu'aux véritables Hommes-Poussière, non ? Ça n'empêche pas les sorts de guérison, si ?"~ */ GOTO 89
  IF ~~ THEN REPLY #15882 /* ~"Je comprends. Maintenant que je suis un Homme-Poussière, j'ai des questions à te poser sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15883 /* ~"J'ai des questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15884 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 6.19 80.7 82.4 83.1 84.1 86.2 87.1 88.4 89.0 90.2 91.1 92.1 93.3 94.0 96.0 98.3 99.3 100.3 101.2 102.1
  SAY #15885 /* ~Emoric attend.~ */
  IF ~~ THEN REPLY #15886 /* ~"À propos de cette philosophie du 'rien ne devrait interférer avec la Vraie Mort'. Euh, et si c'est… difficile… pour la personne en question de mourir ?"~ */ GOTO 82
  IF ~~ THEN REPLY #15887 /* ~"Est-ce que cette politique de 'non résurrection' s'applique aux sorts de guérison ?"~ */ GOTO 89
  IF ~~ THEN REPLY #15888 /* ~"J'ai une question sur la Trêve des morts."~ */ GOTO 90
  IF ~~ THEN REPLY #15889 /* ~"En tant qu'Homme-Poussière, à quel genre d'aide j'ai droit ?"~ */ GOTO 98
  IF ~~ THEN REPLY #15890 /* ~"J'ai besoin d'aide."~ */ GOTO 93
  IF ~~ THEN REPLY #15891 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15892 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0 81.0
  SAY #15893 /* ~"Ta question n'est pas très claire, Initié."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15894 /* ~Vérité : "Je crois que je suis immortel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15895 /* ~Vérité : "Je crois que je suis immortel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15896 /* ~"Et bien, je connais quelqu'un qui est immortel et c'est en son nom que je pose la question."~ */ GOTO 86
  IF ~~ THEN REPLY #15897 /* ~"Et si l'Homme-Poussière en question était immortel ?"~ */ GOTO 88
  IF ~~ THEN REPLY #15898 /* ~"Peu importe. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15899 /* ~"Laisse tomber. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15900 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 82.1 88.1 99.0
  SAY #15901 /* ~"Qu'est-ce qui te fait dire une chose pareille, Initié ?"~ */
  IF ~~ THEN REPLY #15902 /* ~"Apparemment, je ne peux pas mourir. Je peux être blessé et guérir rapidement."~ */ GOTO 84
  IF ~~ THEN REPLY #15903 /* ~"Peu importe. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15904 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15905 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #15906 /* ~Emoric te regarde. "Montre-moi, Initié."~ */
  IF ~~ THEN REPLY #15907 /* ~Fais-le.~ */ GOTO 85
  IF ~~ THEN REPLY #15908 /* ~"Peu importe. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15909 /* ~"Laisse tomber… Ce n'était pas clair. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15910 /* ~"Ce n'est pas ce que je voulais dire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #15911 /* ~Tu fais une légère entaille et la blessure cicatrise presque immédiatement. Emoric regarde la blessure guérir, reste silencieux un moment puis te regarde à nouveau. "Quelque chose en toi s'oppose à la Vraie Mort. Tu n'es plus un Homme-Poussière. Tu dois partir."~ */
  IF ~~ THEN REPLY #15912 /* ~"Puisque c'est comme ça… Je renonce aux Hommes-Poussière. Au revoir."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 82.2 88.2 99.1
  SAY #15913 /* ~Emoric demeure silencieux. "Alors… cet ami… souffre beaucoup. Il s'est laissé piéger dans cette fausse existence et ne peut plus atteindre la Vraie Mort."~ */
  IF ~~ THEN REPLY #15914 /* ~"Il s'est *laissé* piéger ?"~ */ GOTO 101
  IF ~~ THEN REPLY #15915 /* ~"Comment est-ce qu'on peut être piégé dans cette fausse existence ?"~ */ GOTO 87
  IF ~~ THEN REPLY #15916 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15917 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15918 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.1 101.1 102.0
  SAY #15919 /* ~"Pour atteindre la Vraie Mort, il faut se dégager de toutes les passions et rompre tous les liens qui nous rattachent à cette fausse existence. Ces choses pèsent comme une ancre sur l'esprit. Beaucoup de créatures, fantômes ou autres esprits sans repos, sont confinés à cette fausse existence en raison de passions inassouvies."~ */
  IF ~~ THEN REPLY #15920 /* ~"Quand tu parlais de cet immortel qui s'était laissé piéger dans cette vie, qu'est-ce que tu voulais dire ?"~ */ GOTO 101
  IF ~~ THEN REPLY #15921 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15922 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15923 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 82.3 99.2
  SAY #15924 /* ~"Ils ne seraient pas alors des Hommes-Poussière. Leur croyance en l'immortalité piègerait les Initiés dans cette vie et ils n'atteindraient jamais la Vraie Mort." Emoric reste silencieux un moment. "Pourquoi cette question, Initié ?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15925 /* ~Vérité : "Je crois que je suis immortel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15926 /* ~Vérité : "Je crois que je suis immortel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15927 /* ~"J'avais un ami immortel, tu vois. C'est en son nom que je posais la question."~ */ GOTO 86
  IF ~~ THEN REPLY #15928 /* ~"Leur *croyance* les piègerait ? Comment ça ?"~ */ GOTO 101
  IF ~~ THEN REPLY #15929 /* ~"Pour rien. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15930 /* ~"Peu importe. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15931 /* ~"Je voulais juste savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 80.1 80.3 80.4 80.5 80.6 81.1
  SAY #15932 /* ~"La magie curative agit normalement. Mais la magie de la résurrection et les réincarnations ne doivent pas être utilisées sur les membres de nos ordres. Ces magies vont à l'encontre du passage du croyant à la Vraie Mort."~ */
  IF ~~ THEN REPLY #15933 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15934 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15935 /* ~"Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 80.2 81.2
  SAY #15936 /* ~Emoric attend.~ */
  IF ~~ THEN REPLY #15937 /* ~"Qu'est-ce qui se passera si j'attaque un des morts errants ?"~ */ GOTO 91
  IF ~~ THEN REPLY #15938 /* ~"Et l'autodéfense ?"~ */ GOTO 92
  IF ~~ THEN REPLY #15939 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15940 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15941 /* ~"Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 92.0
  SAY #15942 /* ~"Tu auras alors rompu la Trêve des Morts."~ */
  IF ~~ THEN REPLY #15943 /* ~"Et l'autodéfense ?"~ */ GOTO 92
  IF ~~ THEN REPLY #15944 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15945 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15946 /* ~"Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1 91.0
  SAY #15947 /* ~"Tant que la Trêve sera respectée, les Morts ne t'attaqueront pas."~ */
  IF ~~ THEN REPLY #15948 /* ~"Qu'est-ce qui se passera si j'en attaque un ?"~ */ GOTO 91
  IF ~~ THEN REPLY #15949 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15950 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15951 /* ~"Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 6.18 81.4
  SAY #15952 /* ~"Que faire pour t'aider, Initié ?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15953 /* ~"J'ai besoin de guérison."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 95
  IF ~~ THEN REPLY #15955 /* ~"Est-ce que tu as des sorts ou des objets qui pourraient m'aider ?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15956 /* ~"Rien, peu importe. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15957 /* ~"J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15958 /* ~"Rien aujourd'hui, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 98.0 100.0
  SAY #15959 /* ~Emoric courbe légèrement la tête et tu as l'impression qu'un frisson engourdissant te parcourt l'échine, comme si tes os et tes muscles devenaient de marbre. Le frisson qui te parcourt réveille les douleurs de tes blessures. Quelques moments plus tard, la sensation revient… mais la douleur a disparu.~ */
  IF ~~ THEN REPLY #15960 /* ~"Merci. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15961 /* ~"Je me sens entier de nouveau. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15962 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.1 98.1 100.1
  SAY #15963 /* ~"Tu peux te reposer ici, Initié."~ */
  IF ~~ THEN REPLY #15964 /* ~"Merci…"~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 96 // from:
  SAY #15965 /* ~Tu te réveilles un peu plus tard plus ragaillardi et tu reviens voir Emoric.~ */
  IF ~~ THEN REPLY #15966 /* ~"Je suis reposé, merci. J'ai d'autres questions sur la faction…"~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 81
  IF ~~ THEN REPLY #15967 /* ~"Je me sens entier de nouveau. J'ai d'autres questions sans rapport avec la faction…"~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 6
  IF ~~ THEN REPLY #15968 /* ~"Merci de m'avoir laissé me reposer. Au revoir."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 6.6 6.7
  SAY #15969 /* ~"Si tu désires joindre la faction des Hommes-Poussière, je suis prêt à t'entendre."~ */
  IF ~~ THEN REPLY #15970 /* ~"Oui, je voudrais rejoindre la faction des Hommes-Poussière."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15971 /* ~"Tu t'es trompé sur mon compte. Je n'ai pas *envie* de rejoindre la faction des Hommes-Poussière. Je crois seulement ce qu'ils croient."~ */ GOTO 48
  IF ~~ THEN REPLY #15972 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #15973 /* ~"Pas aujourd'hui. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 81.3
  SAY #15974 /* ~"Comme Initié des Hommes-Poussière, tu auras accès à notre boutique de connaissances et à notre boutique de magie et d'objets. Tu peux aussi venir me voir si ton corps doit guérir ou si tu as besoin de repos."~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15975 /* ~"J'ai besoin de guérison."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15976 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 95
  IF ~~ THEN REPLY #15977 /* ~"Qu'est-ce qu'il y a dans cette boutique ?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15978 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15979 /* ~"Très bien. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15980 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 82.0 88.0
  SAY #15981 /* ~Alors que tu es sur le point de parler, tu ressens comme un fourmillement dans le cou. Tu as l'impression qu'il ne serait pas judicieux de mentionner ton "état" à Emoric. Il te regarde toujours et attend ta réponse.~ */
  IF ~~ THEN REPLY #15982 /* ~Vérité : "Je crois que je suis immortel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_6","GLOBALLaw",3)
~ GOTO 83
  IF ~~ THEN REPLY #15983 /* ~"Et bien, je connais quelqu'un qui est immortel et c'est en son nom que je pose la question."~ */ GOTO 86
  IF ~~ THEN REPLY #15984 /* ~"Et si l'Homme-Poussière en question était immortel ?"~ */ GOTO 88
  IF ~~ THEN REPLY #15985 /* ~"Peu importe. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15986 /* ~"Laisse tomber. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15987 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #15988 /* ~"As-tu besoin d'autre chose, Initié ?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15989 /* ~"J'ai besoin de guérison."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15990 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 95
  IF ~~ THEN REPLY #15991 /* ~"Je voudrais jeter encore un œil à la boutique."~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15992 /* ~"J'ai des questions sur la faction à te poser…"~ */ GOTO 81
  IF ~~ THEN REPLY #15993 /* ~"Oui. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #15994 /* ~"Rien aujourd'hui, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 86.0 87.0 88.3
  SAY #15995 /* ~"L'immortalité est un choix. La croyance, que ce soit la sienne propre ou celle d'autrui, affecte la chair. On est immortel lorsqu'on ne *veut* pas renoncer à la vie."~ */
  IF ~~ THEN REPLY #15996 /* ~"Mais alors, d'après ton raisonnement, la mort est aussi un choix. Pourquoi les gens meurent ?"~ */ GOTO 102
  IF ~~ THEN REPLY #15997 /* ~"Comment est-ce qu'on peut être piégé dans cette fausse existence ?"~ */ GOTO 87
  IF ~~ THEN REPLY #15998 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #15999 /* ~"Hmmmm. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #16000 /* ~"Intéressant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #16001 /* ~"La mort aussi est un choix. Mais à l'inverse de l'immortalité, beaucoup croient en la mort. Leur croyance nous permet de mourir." Emoric reste silencieux un instant. "Nous ne sommes pas faits pour vivre éternellement, Initié. Nous savons dans nos cœurs que cela est vrai."~ */
  IF ~~ THEN REPLY #16002 /* ~"Alors… Comment peut-on se laisser piéger dans cette fausse existence ?"~ */ GOTO 87
  IF ~~ THEN REPLY #16003 /* ~"Je vois. J'ai d'autres questions sur la faction…"~ */ GOTO 81
  IF ~~ THEN REPLY #16004 /* ~"Hmmmm. J'ai d'autres questions sans rapport avec la faction…"~ */ GOTO 6
  IF ~~ THEN REPLY #16005 /* ~"Intéressant. Au revoir."~ */ EXIT
END
