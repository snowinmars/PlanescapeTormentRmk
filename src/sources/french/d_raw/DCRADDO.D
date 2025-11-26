// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRADDO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRADDO~

IF ~  Global("Craddock","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22870 /* ~Tu vois un colosse qui surveille les alentours, les yeux mi-clos, les lèvres pincées. Il se tient un peu voûté, comme s'il portait une lourde charge sur ses épaules. Ses habits exhalent des relents de sueur et de crasse.~ */
  IF ~~ THEN REPLY #22893 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #22894 /* ~Ignore cet homme, promène-toi sur la place du marché.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22871 /* ~L'homme te dévisage, et fronce davantage les sourcils. "Ouais ? Qu'est-ce qu'tu cherches ici ?"~ */
  IF ~~ THEN REPLY #22895 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22896 /* ~"T'es Craddock ?"~ */ GOTO 3
  IF ~~ THEN REPLY #22897 /* ~"Peu importe. Désolé de t'avoir dérangé."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #22872 /* ~Il grogne. "J'ai pas d'temps à perdre avec les chiens et les mendiants. Hors de ma vue !"~ */
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22898 /* ~"T'es Craddock ?"~ */ GOTO 3
  IF ~~ THEN REPLY #22900 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #22873 /* ~"P'têt bien…" Il étudie ton visage, comme s'il essayait de se souvenir de toi. "Si c'est moi, qu'est-ce que ça peut t'faire ?"~ */
  IF ~~ THEN REPLY #22901 /* ~"J'ai un message de Baen l'Expéditeur. Ce message dit : 'La cargaison doit parvenir à Maudith d'ici trois jours ou une pénalité sera encourue.'~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",2)
SetGlobal("Craddock","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #22902 /* ~"Peu importe. Je t'avais pris pour quelqu'un d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22874 /* ~"Par les *enfers* ! Est-ce qu'ils sont assez *stupides* pour croire qu'on fait des miracles ici ?! D'accord, ton message est parvenu aux bonnes oreilles, pour c'que ça peut faire !"~ */
  IF ~~ THEN REPLY #22903 /* ~"Quel est le problème ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #22875 /* ~"Regarde autour de toi !" Craddock indique les travailleurs sur la place du marché, puis se renfrogne. "Ces traînards et ces mauviettes peuvent à peine supporter la charge de travail actuelle, et maintenant faut l'faire avec moitié moins de temps !"~ */
  IF ~~ THEN REPLY #22906 /* ~"As-tu besoin d'un coup de main ?"~ */ GOTO 6
  IF ~~ THEN REPLY #22907 /* ~"Désolé d'apprendre ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #22876 /* ~"J'vais te dire ce dont j'ai besoin - que tous mes hommes viennent travailler ! Jhelai est porté manquant depuis c'matin et j'ai besoin d'lui maintenant."~ */
  IF ~~ THEN REPLY #22908 /* ~"Jhelai ? Où est-ce qu'il est allé ?"~ */ GOTO 7
  IF ~~ THEN REPLY #22909 /* ~"Désolé d'apprendre ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #22877 /* ~"Ce bibard de natif d'la Ruche est sûrement affalé sur le trottoir à la porte du Cadavre fumant au lieu être ici pour nous aider. Bon à rien…"~ */
  IF ~~ THEN REPLY #22910 /* ~"Je pourrais aller te le chercher."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #22911 /* ~"Je pourrais te le trouver… mais tout a un prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22912 /* ~"Désolé d'apprendre ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #22878 /* ~"Oh, c'est vrai, tu pourrais ?" Craddock te regarde avec méfiance. "Et pourquoi tu f'rais ça ?"~ */
  IF ~~ THEN REPLY #22914 /* ~"T'as besoin d'un coup de main, non ? On dirait que tu veux pas perdre ton temps à le chercher et il reste du boulot à faire."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #22916 /* ~"Bien, je pourrais le trouver, mais ça sera pas gratuit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22915 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 8.1
  SAY #22879 /* ~Craddock reste silencieux un instant, puis acquiesce. "Ouais… tu trouves Jhelai, tu m'ramènes ce bon à rien d'pouilleux ici. J'te paierai…" Il fronce les sourcils. "… *quand* tu l'auras trouvé. Maintenant fiche le camp !"~ */
  IF ~~ THEN REPLY #22917 /* ~"T'as dit qu'il se trouve sans doute près du Cadavre fumant ? C'est où ?"~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~L'un des employés de Craddock, un ivrogne du nom de Jhelai, a disparu. Selon Craddock, il est sûrement en train de traîner dans les rues, autour du Cadavre fumant.~ */ GOTO 10
  IF ~~ THEN REPLY #22918 /* ~"Très bien. J'vais le chercher. Au revoir."~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~L'un des employés de Craddock, un ivrogne du nom de Jhelai, a disparu. Selon Craddock, il est sûrement en train de traîner dans les rues, autour du Cadavre fumant.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22880 /* ~C'est au sud et à l'est d'ici - va vers la porte sud-est, puis va à l'est pendant un pâté de maisons. Y'a un tas d'poivrots dehors, tu peux pas l'manquer. Jhelai est très certainement pas loin."~ */
  IF ~~ THEN REPLY #22919 /* ~"Très bien. J'vais le chercher. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Craddock","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #22881 /* ~Tu aperçois Craddock. Il est encore plus renfrogné que la première fois que tu l'as vu… On dirait que son visage va se couper en deux.~ */
  IF ~  Global("Craddock_Quest","GLOBAL",0)
~ THEN REPLY #22920 /* ~"T'avais l'air contrarié par le message de Baen. Un problème ?"~ */ GOTO 5
  IF ~  Global("Craddock_Quest","GLOBAL",2)
~ THEN REPLY #22921 /* ~"J'ai trouvé Jhelai."~ */ GOTO 12
  IF ~  Global("Craddock_Quest","GLOBAL",3)
~ THEN REPLY #22922 /* ~"Je pourrais t'aider si t'es à court de personnel maintenant que Jhelai est parti."~ */ GOTO 16
  IF ~~ THEN REPLY #22923 /* ~Laisse Craddock tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #22882 /* ~"Ah bon ?" Craddock regarde alentour. "*Où* est-ce qu'il est, alors ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22924 /* ~Vérité : "Il t'a dit 'd'aller caguer', que tu étais un 'bâtard de la pire espèce' et qu'il allait 'plus travailler pour toi'."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ JOURNAL #22699 /* ~J'ai passé le message de Jhelai à Craddock, mot pour mot… Craddock n'était pas très content du message. Jhelai risque de regretter d'avoir parlé une fois dessoûlé.~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22946 /* ~Vérité : "Il t'a dit 'd'aller caguer', que tu étais un 'bâtard de la pire espèce' et qu'il allait 'plus travailler pour toi'."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22701 /* ~J'ai passé le message de Jhelai à Craddock, mot pour mot… Craddock n'était pas très content du message - en fait, il en était tellement mécontent que depuis, Morte semble avoir acquis toute une nouvelle série d'insultes dans son répertoire.~ */ GOTO 13
  IF ~~ THEN REPLY #22947 /* ~Mensonge : "Il a dit… euh, que je pourrais le remplacer."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Craddock_1","GLOBALLaw",-1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22702 /* ~J'ai retrouvé Jhelai, puis j'ai dit à Craddock que je le remplacerais temporairement… Craddock a eu l'air sceptique au début, mais il a finalement accepté.~ */ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #22883 /* ~Le visage de Craddock tourne au rouge cramoisi, et il éclate d'un rugissement. "Maudit soit-il ! Que toutes les malédictions des Plans marquent chacun de ses pas…" Une suite d'insultes, d'injures, de menaces et de spéculations sur les origines de la famille de Jhelai sort de la bouche de Craddock… assez impressionnant.~ */
  IF ~~ THEN REPLY #22950 /* ~"Tu sais, je pourrais le remplacer, si t'as besoin d'un coup de main."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22951 /* ~"J'ai besoin d'un peu de travail. Je ferai le travail de Jhelai pour quelque temps en échange de sa paye."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22948 /* ~"Écoute, c'était le message. S'il y a rien de plus, j'prendrais bien mes pièces maintenant…"~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22952 /* ~"Euh… c'est pas la peine de m'payer pour ça. Je m'en vais. Au revoir."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22953 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #22884 /* ~Le visage de Craddock tourne au rouge cramoisi, et il éclate d'un rugissement. "Maudit soit-il ! Que toutes les malédictions des Plans marquent chacun de ses pas…" Une suite d'insultes, injures, menaces et spéculations quant aux origines de la famille de Jhelai sort de la bouche de Craddock…~ */
  IF ~~ THEN EXTERN ~DMORTE~ 227
END

IF ~~ THEN BEGIN 15 // from:
  SAY #22885 /* ~Craddock finit sa tirade avec un grognement. "Maudit… Jhelai…"~ */
  IF ~~ THEN REPLY #22954 /* ~"Tu sais, je pourrais le remplacer, si t'as besoin d'un coup de main."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22955 /* ~"J'ai besoin d'un peu de travail. Je ferai le travail de Jhelai pour quelque temps en échange de sa paye."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22956 /* ~"Écoute, c'était le message. S'il y a rien de plus, j'prendrais bien mes pièces maintenant"~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22958 /* ~"Euh… c'est pas la peine de m'payer pour ça. Je m'en vais. Au revoir."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22960 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.2 12.2 13.0 13.1 15.0 15.1 20.0 20.1
  SAY #22886 /* ~Craddock t'examine un instant. "Toi ? Ha ! Tu pourrais pas…" Il s'interrompt . "Ben… p'être que tu peux. C'est dur, et avec moi, on boit pas…"~ */
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #22962 /* ~"Compris…  allons-y."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(10)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,STR)
CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #22963 /* ~"Compris…  allons-y. "~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(20)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #22964 /* ~"Compris…  allons-y."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(30)
~ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #22887 /* ~Le travail est long, mais à la fin de ton quart, tu n'es pas du tout fatigué. Craddock grogne quand tu reviens. "Tu t'es bien débrouillé… voilà ta paie." Il te remet une poignée de pièces. "Maintenant, fiche le camp. On n'a plus besoin d'toi."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22965 /* ~"Et ma rétribution pour le message de Jhelai que je t'ai transmis ?"~ */ GOTO 21
  IF ~~ THEN REPLY #22966 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #22888 /* ~Le travail est long, mais à la fin de ton poste, tu n'es pas du tout fatigué. Les autres travailleurs sont épatés par la vitesse à laquelle tu travailles et le poids que tu peux soulever. Craddock grogne quand tu reviens. "T'as des épaules de bariaure, ben vrai ; Tu vaux deux fois c'que Jhelai gagnait… voilà ta paie." Il te remet une poignée de pièces de cuivre, vingt au total. "Maintenant, fiche le camp. On n'a plus besoin d'toi."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22967 /* ~"Et ma rétribution pour le message de Jhelai que je t'ai transmis ?"~ */ GOTO 21
  IF ~~ THEN REPLY #22968 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #22889 /* ~Le travail est long, mais à la fin, tu n'es absolument pas fatigué. Les autres travailleurs sont surpris de la vitesse à laquelle tu travailles et du poids que tu peux porter. Craddock grogne à ton retour. "T'as des épaules de thokola, c'est sûr ; tu vaux trois fois c'que valait Jhelai… v'là ta paye." Il te donne une poignée de pièces de cuivre, trente en tout. "Et maintenant, file, on a plus b'soin d'toi."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22969 /* ~"Et ma rétribution pour le message de Jhelai que je t'ai transmis ?"~ */ GOTO 21
  IF ~~ THEN REPLY #22970 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.2 15.2
  SAY #22890 /* ~Craddock grogne puis fouille dans sa bourse et te jette une poignée de pièces. "Maintenant, fiche le camp. Et si tu vois Jhelai, dis-lui qu'c'est un homme mort."~ */
  IF ~~ THEN REPLY #22971 /* ~"Tu sais, je pourrais le remplacer, si t'as besoin d'un coup de main."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22972 /* ~"J'ai besoin d'un peu de travail. Je ferai le travail de Jhelai pour quelque temps en échange de sa paye."~ */ GOTO 16
  IF ~~ THEN REPLY #22973 /* ~"J'm'en souviendrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0 18.0 19.0
  SAY #22891 /* ~Craddock grogne puis fouille dans sa bourse et compte dix pièces, qu'il te remet. "Voilà ta paie, maintenant fiche le camp !"~ */
  IF ~~ THEN REPLY #22974 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ EXIT
END
