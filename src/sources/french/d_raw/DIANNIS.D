// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIANNIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DIANNIS~

IF ~  Global("Iannis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2935 /* ~Cet homme est vêtu d'un habit bleu foncé aux dessins compliqués ; malgré leur ampleur, ses robes sont froissées et usées. Tu situes l'âge de cet homme entre cinquante et soixante ans… les rides expressives rendent toute interprétation difficile. Alors que tu entres, l'homme se retourne doucement vers toi. Tu es saisi de la terrible impression que tu connais cet homme… ou que tu l'as connu.~ */
  IF ~~ THEN REPLY #2936 /* ~"Bonjour…"~ */ GOTO 5
  IF ~~ THEN REPLY #29703 /* ~Ignore l'homme, explore le bureau.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.0 4.1 6.1 7.1 9.2 10.3 11.3 12.3 13.2 14.2 15.3 16.3 17.2 18.3 19.1 20.1 23.0 24.0 25.5 26.6 27.3 28.2 32.0 32.1 32.2 34.0 35.1 36.5 37.0 38.0 39.6 55.5 56.5 57.2 58.6 59.3 60.3 61.5 62.5 63.9 64.7 66.6 67.3 68.3 71.0 72.7 73.6 74.5 78.0 85.5 86.7 87.3 93.3 94.3 95.3 96.1 102.7
  SAY #29704 /* ~"Très bien. En quoi puis-je t'aider ?"~ */
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29705 /* ~"Pardonne-moi de te demander ça, mais ça va ?"~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29706 /* ~"Pardonne-moi de te demander ça, mais ça va ?"~ */ GOTO 57
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29707 /* ~"Ça va ?"~ */ GOTO 60
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29708 /* ~"Ça va ?"~ */ GOTO 57
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29709 /* ~"On s'est déjà rencontrés ?"~ */ GOTO 35
  IF ~~ THEN REPLY #29710 /* ~"Qui es-tu déjà ?"~ */ GOTO 7
  IF ~~ THEN REPLY #29711 /* ~"C'est quoi cet endroit déjà ?"~ */ GOTO 9
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29712 /* ~"C'est quoi un avocat déjà ?"~ */ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29714 /* ~"Tu peux me parler des héritages ?"~ */ GOTO 12
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64282 /* ~"Iannis, il y a une pierre sensorielle dans le sensorium, qui contient un fragment de la vie de ta fille."~ */ GOTO 65
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",3)
PartyHasItem("Dlegacy1")
~ THEN REPLY #29715 /* ~"Voici l'héritage de Deionarra, comme promis."~ */ GOTO 33
  IF ~  Global("Know_Iannis_Fire","GLOBAL",1)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29717 /* ~"Tu peux me parler de l'incendie ?"~ */ GOTO 39
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29719 /* ~"Tu peux me parler de ta fille ?"~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #29721 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #29724 /* ~"Rien aujourd'hui. Je dois m'en aller… Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
!Global("Iannis_Sensory_Quest","GLOBAL",1)
!Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #29725 /* ~Tu aperçois Iannis… Il se tourne à ton entrée et te fixe d'un regard las. Des poches noires marquent ses yeux et il a l'air de ne pas avoir dormi.~ */
  IF ~~ THEN REPLY #29727 /* ~"Bonjour, Iannis."~ */ GOTO 3
  IF ~~ THEN REPLY #29728 /* ~Ignore Iannis.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29729 /* ~"Encore toi." Iannis fronce légèrement les sourcils en te fixant. "Qu'est-ce que tu veux, cette fois-ci ?"~ */
  IF ~~ THEN REPLY #29730 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 1
  IF ~~ THEN REPLY #29731 /* ~"Rien aujourd'hui, merci."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
GlobalGT("Iannis_Sensory_Quest","GLOBAL",0)
GlobalLT("Iannis_Sensory_Quest","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #29732 /* ~Tu aperçois Iannis… Il se tourne à ton entrée et son visage s'éclaire. "Ah ! Enfin ! As-tu pu les convaincre de m'accorder l'accès à leur Sensorium ?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29733 /* ~"Oui. Ils ont accepté de te donner accès à la pierre sensorielle de ta fille."~ */ GOTO 69
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29734 /* ~"J'ai des questions à te poser d'abord."~ */ GOTO 1
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29735 /* ~"Non, pas encore. Mais j'espère bien t'apporter des nouvelles bientôt. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #29736 /* ~L'homme plisse des yeux, comme pour essayer de se souvenir de toi. "Oui ? En quoi puis-je t'aider ?"~ */
  IF ~~ THEN REPLY #29737 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Iannis","GLOBAL",1)
~ JOURNAL #28831 /* ~J'ai rencontré un homme du nom de Iannis ; il travaille dans le Quartier des Gratte-Papier. J'ai l'impression de l'avoir déjà rencontré, mais je ne sais pas où.~ */ GOTO 6
  IF ~~ THEN REPLY #29738 /* ~"Pardon, j'ai dû entrer dans la mauvais boutique. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29739 /* ~"Je suis Iannis." Il t'observe et fronce les sourcils. "Tu me cherchais ?"~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29740 /* ~"Je ne sais pas… C'est quoi cet endroit ?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29741 /* ~"Pardon… Tu as déjà parlé de ça. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29742 /* ~"Pardon, j'ai dû entrer dans la mauvais boutique. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY #29743 /* ~"Comme je l'ai déjà dit, je m'appelle Iannis. As-tu besoin de quelque chose ?"~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29744 /* ~"Je ne sais pas vraiment… C'est quoi cet endroit ?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29745 /* ~"Pardon… Tu as déjà parlé de ça. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29746 /* ~"Pardon, j'ai dû entrer dans la mauvais boutique. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #29747 /* ~"Je suis avocat. Et ceci est mon bureau." La voix de Iannis prend un ton irritant. "Tu souhaites me demander conseil ? Si ce n'est pas le cas, il vaudrait peut-être mieux que tu ailles voir ailleurs."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29748 /* ~"Un avocat ? Comment ça ?"~ */ JOURNAL #28830 /* ~Apparemment, Iannis est un 'avocat', quelqu'un qui fournit un conseil juridique, règle les héritages et plaide au tribunal.~ */ EXTERN ~DMORTE~ 291
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #29749 /* ~"Un avocat ? Comment ça ?"~ */ JOURNAL #28830 /* ~Apparemment, Iannis est un 'avocat', quelqu'un qui fournit un conseil juridique, règle les héritages et plaide au tribunal.~ */ EXTERN ~DGRACE~ 127
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #29750 /* ~"Un avocat ? Comment ça ?"~ */ JOURNAL #28830 /* ~Apparemment, Iannis est un 'avocat', quelqu'un qui fournit un conseil juridique, règle les héritages et plaide au tribunal.~ */ GOTO 10
  IF ~~ THEN REPLY #29751 /* ~"Pardon de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY #29752 /* ~"Je suis avocat. Et ceci est mon bureau. Ceux qui cherchent conseil viennent me voir."~ */
  IF ~  GlobalLT("Iannis","GLOBAL",3)
~ THEN REPLY #29753 /* ~"Quel genre de conseil ?"~ */ DO ~SetGlobal("Iannis","GLOBAL",3)
~ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29754 /* ~"Quel genre de conseil ?"~ */ GOTO 11
  IF ~~ THEN REPLY #29755 /* ~"Je vois. Tu peux peut-être faire autre chose pour moi, alors…"~ */ GOTO 1
  IF ~~ THEN REPLY #29756 /* ~"Pardon de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY #29757 /* ~Iannis fronce davantage les sourcils. "Un avocat fournit des conseils, aide les autres à naviguer au travers des labyrinthes du système juridique de Sigil, organise les héritages pour faire en sorte que les citoyens voient leurs biens partagés selon leur désir après leur mort, et défend dans les tribunaux de Sigil ceux qui ont été accusés à tort…" Il s'arrête. "As-tu besoin d'aide dans l'un de ces domaines ?"~ */
  IF ~~ THEN REPLY #29758 /* ~"Des héritages ?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29759 /* ~"En fait, je crois que tu as un héritage pour moi."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29760 /* ~"En fait, je suis ici pour récupérer l'héritage d'une jeune femme…"~ */ GOTO 15
  IF ~~ THEN REPLY #29761 /* ~"En fait, j'ai besoin de conseils."~ */ GOTO 1
  IF ~~ THEN REPLY #29762 /* ~"Non, pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7 9.0 9.1
  SAY #29763 /* ~"Un avocat fournit des conseils, aide les autres à naviguer au travers des labyrinthes du système juridique de Sigil, organise les héritages pour faire en sorte que les citoyens voient leurs avoirs partagés selon leur désir après leur mort, et défend dans les tribunaux de Sigil ceux qui ont été accusés à tort…" Il s'arrête. "As-tu besoin d'aide dans l'un de ces domaines ?"~ */
  IF ~~ THEN REPLY #29764 /* ~"Des héritages ?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29765 /* ~"En fait, je crois que tu as un héritage pour moi."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29766 /* ~"En fait, je suis ici pour récupérer l'héritage d'une jeune femme…"~ */ GOTO 15
  IF ~~ THEN REPLY #29767 /* ~"En fait, j'ai besoin de conseils."~ */ GOTO 1
  IF ~~ THEN REPLY #29768 /* ~"Non, pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.8 10.0 11.0 13.1 14.1 54.0 56.2
  SAY #29769 /* ~"Il y a des contrats qui prennent effet à la mort du client. Ils fournissent des détails concernant la manière dont les possessions d'une personne doivent être divisées dans l'éventualité de son décès. On les appelle aussi *testaments*."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #29770 /* ~"Un peu comme les contrats des Hommes-Poussière ?"~ */ GOTO 13
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29771 /* ~"En fait, je crois que tu as un héritage pour moi."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29772 /* ~"En fait, je suis ici pour récupérer l'héritage d'une jeune femme…"~ */ GOTO 15
  IF ~~ THEN REPLY #29773 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29774 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #29775 /* ~"Oh bon sang, non ! Les contrats des Hommes-Poussière, bien qu'ils prennent effet lors de la mort du client, lèguent le corps du client aux Hommes-Poussière ; ce n'est pas vraiment très agréable, mais pour certains démunis, c'est le moyen de subvenir à leurs besoins…"~ */
  IF ~~ THEN REPLY #29776 /* ~"Comment peut-on invalider un contrat d'Homme-Poussière ?"~ */ JOURNAL #28829 /* ~Iannis m'a expliqué que le seul moyen d'annuler un contrat d'Homme-Poussière était de le détruire.~ */ GOTO 14
  IF ~~ THEN REPLY #29777 /* ~"Pardon… tu peux me réexpliquer ce qu'est un héritage ?"~ */ GOTO 12
  IF ~~ THEN REPLY #29778 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29779 /* ~"Merci. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #29780 /* ~Il fronce légèrement les sourcils. "Un contrat déjà signé ? On ne peut pratiquement plus rien y faire. Les contrats des Hommes-Poussière sont vraiment très précis sur la destination du cadavre après la mort. Sans la destruction du contrat, il n'y a vraiment rien à faire."~ */
  IF ~~ THEN REPLY #29781 /* ~"Je vois. Je te dois quelque chose pour ce renseignement ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Iannis_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #29782 /* ~"Pardon… tu peux me réexpliquer ce qu'est un héritage ?"~ */ GOTO 12
  IF ~~ THEN REPLY #29783 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29784 /* ~"Merci. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 10.2 11.1 11.2 12.1 12.2
  SAY #29785 /* ~"Vraiment ? Très bien… te souviens-tu du testament en question ?"~ */
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29786 /* ~"Le testament est le numéro '51-AA', je crois."~ */ GOTO 16
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29787 /* ~"Le testament de la jeune femme est le numéro '687-KS'."~ */ GOTO 25
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29788 /* ~"Le testament de la jeune femme est le numéro '687-KS'."~ */ GOTO 104
  IF ~~ THEN REPLY #29789 /* ~"En fait, pas pour le moment. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29790 /* ~"Non, j'ai dû me tromper. Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #29791 /* ~Il te regarde d'un air surpris alors que tu mentionnes le numéro du testament. "Cela remonte à loin… tu es sûr…" Il semble être choqué. "J'espère que ce n'était pas l'un de ceux qui ont brûlé…"~ */
  IF ~~ THEN REPLY #29792 /* ~"À quand est-ce qu'il remonte ?"~ */ GOTO 17
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29793 /* ~"Brûlés ?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29794 /* ~"Tu peux vérifier si cet héritage existe toujours ?"~ */ GOTO 19
  IF ~~ THEN REPLY #29795 /* ~"En fait, peu importe. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29796 /* ~"J'ai dû faire une erreur sur l'héritage. Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.0
  SAY #29797 /* ~"Eh bien…" Iannis y réfléchit pendant un moment. "Au moins plusieurs décennies."~ */
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29798 /* ~"Tu as dit qu'il avait peut-être brûlé ? Comment ça ?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29799 /* ~"Tu peux vérifier si cet héritage existe toujours ?"~ */ GOTO 19
  IF ~~ THEN REPLY #29800 /* ~"En fait, peu importe. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29801 /* ~"J'ai dû faire une erreur sur l'héritage. Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #29802 /* ~Iannis paraît attristé. "Oui, ces bureaux ont été l'objet d'actes de pur vandalisme. Il y a eu un cambriolage dans ce bureau l'an passé. L'unique désir du vandale semblait être de brûler mes documents légaux. J'en ai perdu une grande partie. Une honte, vraiment. Sigil peut vraiment… user votre foi…" Il paraît se tasser sur lui-même alors qu'il mentionne Sigil. "Le vandale a détruit des documents bien précis. Irremplaçables."~ */
  IF ~~ THEN REPLY #29803 /* ~"À quand remonte l'héritage ?"~ */ GOTO 17
  IF ~~ THEN REPLY #29804 /* ~"Tu peux vérifier si cet héritage existe toujours ?"~ */ GOTO 19
  IF ~~ THEN REPLY #29805 /* ~"Que peux-tu me dire d'autre sur l'incendie ?"~ */ GOTO 39
  IF ~~ THEN REPLY #29806 /* ~"En fait, peu importe. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29807 /* ~"J'ai dû faire une erreur sur l'héritage. Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2 17.1 18.1
  SAY #29808 /* ~Il hoche la tête . "Oh, oui, bien sûr… Cela prendra un instant."~ */
  IF ~~ THEN REPLY #29809 /* ~"Très bien, j'attendrai."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 20
  IF ~~ THEN REPLY #29810 /* ~"En fait, peu importe. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29811 /* ~"Non, j'ai dû me tromper sur l'héritage. Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #29812 /* ~Iannis revient en acquiesçant. "Oui, par bonheur, il n'a pas souffert dans l'incendie. Tous les articles sont intacts."~ */
  IF ~~ THEN REPLY #29813 /* ~"Je peux le récupérer ? J'en suis le bénéficiaire."~ */ DO ~SetGlobal("Know_Nameless_Legacy","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 21
  IF ~~ THEN REPLY #29814 /* ~"En fait, peu importe. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29815 /* ~"Merci. Je voulais juste vérifier qu'il était en lieu sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #29816 /* ~"Bien sûr. Signe ici et ici… sur la ligne en pointillés…"~ */
  IF ~~ THEN REPLY #29817 /* ~"Là ? Et là ? Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #29818 /* ~"Nous y voilà ; cela devrait être le dernier des documents. Voici tous les objets qui se trouvaient dans le coffre… l'un d'entre eux ressemble à un récépissé de la Fonderie, bien que très ancien, à dire vrai. Est-ce que le défunt avait commandé quelque chose à la Fonderie ?"~ */
  IF ~~ THEN REPLY #29819 /* ~"Je ne sais pas vraiment. Peut-être… Je commence à croire que tout est possible. Où est la Fonderie ?"~ */ DO ~GiveItemCreate("Receipt",Protagonist,1,0,0)
GiveItemCreate("Gullet",Protagonist,1,0,0)
GiveItemCreate("EyeKal",Protagonist,1,0,0)
GiveGoldForce(731)
SetGlobal("Receipt","GLOBAL",1)
~ JOURNAL #28828 /* ~J'ai récupéré mon héritage chez Iannis l'Avocat, dans le Quartier des Gratte-Papier. Parmi les objets de l'héritage, il y avait un récépissé bizarre… qui avait l'air très vieux. Iannis l'appelle le 'récépissé de la Grande Fonderie' ; d'après lui, j'ai dû commander quelque chose chez les Hommes-Dieux. Iannis dit que le récépissé devrait me permettre d'accéder à la Grande Fonderie du Bas Quartier.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29820 /* ~"Dans le Bas Quartier. Passé le grand portail… si tu vois un grand nombre de gardes des Hommes-Dieux à la porte, alors tu es au bon endroit."~ */
  IF ~~ THEN REPLY #29821 /* ~"Très bien. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29822 /* ~"Merci pour ces indications. J'y vais de suite."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.0
  SAY #29823 /* ~"Je ne suis pas du genre à faire payer pour ce type d'aide." Il sourit. "Je suis avocat, pas marchand de tapis, et l'avidité n'a pas sa place dans mes bureaux."~ */
  IF ~~ THEN REPLY #29824 /* ~"Merci… C'est gentil. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29825 /* ~"Alors, un grand merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY #29826 /* ~"Que…" Ses yeux s'écarquillent lorsque tu mentionnes le testament. "Un legs de ma *fille*… ?!" Il paraît choqué. "Comment se fait-il que tu la connaisses ?!"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64283 /* ~"Je n'en suis pas certain. Il y a une pierre sensorielle dans la Salle des Fêtes, qui contient le numéro."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64284 /* ~"Je n'en suis pas certain. J'ai découvert le numéro dans cette pierre sensorielle de la Salle des Fêtes. Je te l'ai déjà dit, il a été laissé là pour moi."~ */ GOTO 27
  IF ~~ THEN REPLY #29827 /* ~"Je ne sais pas. J'espère trouver la réponse dans l'héritage."~ */ GOTO 26
  IF ~~ THEN REPLY #29828 /* ~"En fait, c'est une affaire juridique qui ne te regarde pas."~ */ GOTO 30
  IF ~~ THEN REPLY #29829 /* ~"Ça ne te regarde pas. Tu peux vérifier si l'héritage existe toujours ?"~ */ GOTO 30
  IF ~~ THEN REPLY #29830 /* ~"J'ai dû faire une erreur sur l'héritage. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29831 /* ~"Pardon, ce n'était pas le bon héritage. Excuse-moi de t'avoir dérangé… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.2 66.3 67.1 68.1
  SAY #29832 /* ~"Pourquoi…" Iannis semble manquer de mots. "Qui es-tu, pour que ma fille te lègue quoi que ce soit ?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64285 /* ~"Je n'en suis pas certain. Il y a une pierre sensorielle dans la Salle des Fêtes, qui contient le numéro."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64286 /* ~"Je n'en suis pas certain. J'ai découvert le numéro dans cette pierre sensorielle de la Salle des Fêtes. Je te l'ai déjà dit, il a été laissé là pour moi."~ */ GOTO 27
  IF ~~ THEN REPLY #29833 /* ~"Je l'ai peut-être connue par le passé… et oubliée."~ */ GOTO 27
  IF ~~ THEN REPLY #29834 /* ~" Je t'ai déjà dit que je ne savais pas. J'espère que l'héritage permettra de le savoir."~ */ GOTO 29
  IF ~~ THEN REPLY #29835 /* ~"En fait, c'est une affaire juridique qui ne te regarde pas."~ */ GOTO 30
  IF ~~ THEN REPLY #29836 /* ~"Ça ne te regarde pas. Tu peux vérifier si l'héritage existe toujours ?"~ */ GOTO 30
  IF ~~ THEN REPLY #29837 /* ~"J'ai dû faire une erreur sur l'héritage. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29838 /* ~"Pardon, ce n'était pas le bon héritage. Excuse-moi de t'avoir dérangé… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.1 26.2
  SAY #29839 /* ~Iannis étudie tes traits avec attention. "Tu me rappelles *bel et bien* quelqu'un, bizarrement…"~ */
  IF ~~ THEN REPLY #29840 /* ~"Tu sais qui je suis ?"~ */ GOTO 28
  IF ~~ THEN REPLY #29841 /* ~"Si tu avais l'héritage, il répondrait peut-être aux questions qu'on se pose tous les deux."~ */ GOTO 29
  IF ~~ THEN REPLY #29842 /* ~"Tu peux me retrouver son héritage, s'il te plaît ? C'est une affaire juridique, pas un sujet de discussion."~ */ GOTO 30
  IF ~~ THEN REPLY #29843 /* ~"J'ai dû faire une erreur sur l'héritage. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29844 /* ~"Pardon, mais je dois m'en aller… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29845 /* ~"Je dois l'avouer, non." Iannis soupire.~ */
  IF ~~ THEN REPLY #29846 /* ~"Si tu avais l'héritage, il répondrait peut-être aux questions qu'on se pose tous les deux."~ */ GOTO 29
  IF ~~ THEN REPLY #29847 /* ~"Tu peux me retrouver son héritage, s'il te plaît ? C'est une affaire juridique, pas un sujet de discussion."~ */ GOTO 30
  IF ~~ THEN REPLY #29848 /* ~"J'ai dû faire une erreur sur l'héritage. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29849 /* ~"Pardon, mais je dois m'en aller… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.3 27.1 28.0
  SAY #29850 /* ~"Bien sûr, bien sûr… attends une seconde, je reviens tout de suite."~ */
  IF ~~ THEN REPLY #29851 /* ~"Très bien. J'attendrai."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28827 /* ~J'ai récupéré l'héritage de Deionarra chez son père.~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.3 25.4 26.4 26.5 27.2 28.1
  SAY #29852 /* ~Iannis te fixe du regard pendant un instant, puis plisse des yeux. "Bien sûr." Sa voix est de glace. "Si tu peux patienter pendant un instant, je reviens tout de suite avec son testament."~ */
  IF ~~ THEN REPLY #29853 /* ~"Très bien."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28826 /* ~J'ai récupéré l'héritage de Deionarra chez son lourdaud de père. Je n'aime pas la façon dont il me parle… il faut qu'il se méfie ou il va finir comme sa fille.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 104.0
  SAY #29854 /* ~"Tous les articles sont là…" Iannis porte trois parchemins dans les mains. "Je n'avais aucune idée qu'elle avait établi un testament ici…" Il fixe les objets, comme hypnotisé. "Voilà. Puis-je… Puis-je les lire ?"~ */
  IF ~~ THEN REPLY #29855 /* ~"C'est une affaire *privée*. En tant qu'avocat, tu dois le comprendre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_1","GLOBALGood",-1)
~ GOTO 32
  IF ~~ THEN REPLY #29856 /* ~"Laisse-moi d'abord les lire, je déciderai ensuite."~ */ GOTO 32
  IF ~~ THEN REPLY #29857 /* ~"Bien sûr. Voilà."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Iannis_2","GLOBALGood",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #29858 /* ~"Bien sûr…" Iannis semble hésitant. "Mais s'il te plaît, je t'en prie, il me reste si peu pour me rappeler ma fille…"~ */
  IF ~~ THEN REPLY #29859 /* ~Mensonge : "Je vais veiller à ce que tu puisses les lire. En attendant, tu peux peut-être faire autre chose pour moi…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #29860 /* ~Serment : "Je te promets que tu pourras les consulter. Mais en attendant, tu peux peut-être faire autre chose pour moi…~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ GOTO 1
  IF ~~ THEN REPLY #29861 /* ~"Je comprends. Tu peux peut-être faire autre chose pour moi, pour le moment…"~ */ GOTO 1
  IF ~~ THEN REPLY #29862 /* ~Mensonge : "Je m'en souviendrai. Je reviendrai après les avoir lus."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #29863 /* ~Serment : "Je m'en souviendrai. Je reviendrai après les avoir lus."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #29864 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 1.10 31.2
  SAY #29865 /* ~Iannis prend le parchemin et l'étudie. Après un long silence, il lève lentement la tête vers toi. "Tu… comptais beaucoup pour ma fille. Elle était prête à donner sa vie pour toi."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29866 /* ~"J'ai bien peur que ce soit le cas."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~J'ai laissé Iannis lire l'héritage de Deionarra. Ses dernières paroles ont semblé lui apporter un certain réconfort.~ */ GOTO 34
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29867 /* ~"Je crois que c'est le cas."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~J'ai laissé Iannis lire l'héritage de Deionarra. Ses dernières paroles ont semblé lui apporter un certain réconfort.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #29873 /* ~Iannis te rend le parchemin. "Merci, j'apprécie ta gentillesse."~ */
  IF ~~ THEN REPLY #29874 /* ~"C'est le moins que je puisse faire. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29875 /* ~"Je pleure ta fille disparue. J'espère que ses paroles t'ont réconforté. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.4
  SAY #29876 /* ~L'homme t'étudie pendant un instant, fronçant les sourcils, pensif. Les rides de son visage s'accentuent, et tu es à nouveau sidéré par le poids que les ans semblent avoir eu sur lui. "Non… et pourtant tu me rappelles quelqu'un…"~ */
  IF ~~ THEN REPLY #29877 /* ~"Mais…"~ */ GOTO 36
  IF ~~ THEN REPLY #29878 /* ~"Peu importe. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29879 /* ~"Peu importe, je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #29880 /* ~Il continue à étudier tes traits, puis secoue la tête. "Je dois avouer que tu me rappelles quelqu'un ; je te prie de m'excuser de l'affront que ma mémoire te fait en ce moment… Je suis préoccupé depuis pas mal de temps. Nous serions-nous *déjà* rencontrés ?"~ */
  IF ~~ THEN REPLY #29881 /* ~Vérité : "Je crois. Mais je n'arrive pas vraiment à m'en souvenir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_3","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #29882 /* ~Mensonge : "Non ; c'est une erreur. Je ne crois pas qu'on se soit déjà rencontrés."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_2","GLOBALLaw",-1)
~ GOTO 38
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29883 /* ~"Préoccupé ?"~ */ GOTO 57
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29884 /* ~"Préoccupé ?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29885 /* ~"Préoccupé ?"~ */ GOTO 60
  IF ~~ THEN REPLY #29886 /* ~"Peu importe. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29887 /* ~"Peu importe, je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #29888 /* ~"Hmmm. Frustrant pour nous deux, semble t-il."~ */
  IF ~~ THEN REPLY #29889 /* ~"Peu importe. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29890 /* ~"Peu importe, je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #29891 /* ~"Hmmm. Très bien, dans ce cas."~ */
  IF ~~ THEN REPLY #29892 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29893 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 1.11 18.2 59.2 60.2 61.4 62.4 63.8 64.6 72.6 73.5 74.4 85.4 86.6 102.6
  SAY #29894 /* ~"Il n'y a pas grand-chose à dire à ce propos… c'était un incendie bizarre, très localisé. J'ai du mal à imaginer ce qu'il y avait de précieux dans les documents qui ont brûlé, mais quelqu'un devait vouloir les détruire."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29895 /* ~"Je suis peut-être responsable de l'incendie."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29896 /* ~"Je suis peut-être responsable de l'incendie."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
~ THEN REPLY #29897 /* ~"Euh… il y a une chance de connaître le responsable ?"~ */ GOTO 55
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #29898 /* ~"Il y a une chance de connaître le responsable ?"~ */ GOTO 55
  IF ~~ THEN REPLY #29899 /* ~"Tu peux me dire ce qui a brûlé ?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29900 /* ~"Je vois. Parle-moi de ta fille."~ */ GOTO 63
  IF ~~ THEN REPLY #29901 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29902 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1 55.1 56.1
  SAY #29903 /* ~"Toi ? Qu'est-ce que tu veux dire ?"~ */
  IF ~~ THEN REPLY #29904 /* ~Vérité : "Je… je l'ai peut-être fait par le passé. Quand je n'étais pas moi-même. Je le regrette et j'implore ton pardon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29905 /* ~Mensonge : "C'est une compulsion magique qui m'a fait agir ainsi. Je ne sais pas ce qui s'est passé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29906 /* ~"Pardon, j'ai dit une bêtise. Parle-moi de ta fille."~ */ GOTO 41
  IF ~~ THEN REPLY #29907 /* ~"Pardonne-moi, je ne pensais pas un mot de ce que j'ai dit. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 41
  IF ~~ THEN REPLY #29908 /* ~"Ça n'a pas d'importance. Au revoir."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.2 40.3 40.4
  SAY #29909 /* ~"Non…" Le visage de Iannis semble de pierre. "Je t'ai très bien entendu. Tu revendiques la responsabilité de l'incendie. Pourquoi avouer avoir fait une telle chose ? Tu es fou ?!"~ */
  IF ~~ THEN REPLY #29910 /* ~Vérité : "Je… je l'ai peut-être fait par le passé. Quand je n'étais pas moi-même. Je le regrette et j'implore ton pardon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29911 /* ~Mensonge : "C'est une compulsion magique qui m'a fait agir ainsi. Je ne sais pas ce qui s'est passé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #29912 /* ~"Ne hausse plus jamais la voix sur moi ou le prochain incendie qui frappera cet endroit pourrait bien se révéler fatal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_5","GLOBALGood",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2
  SAY #29913 /* ~Le visage de Iannis se contracte sous la colère. " *Chien* de Sigilien. J'espérais bien que tu te montrerais après ton acte de lâcheté ! Tu as endommagé ma maison et des souvenirs qui me sont chers, et tu oses revenir tel un vampire dans la nuit et me menacer de nouveau ?!"~ */
  IF ~~ THEN REPLY #29914 /* ~Vérité : "Je… je l'ai peut-être fait par le passé. Quand je n'étais pas moi-même. Je le regrette et j'implore ton pardon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29915 /* ~Mensonge : "C'est une compulsion magique qui m'a fait agir ainsi. Je ne sais pas ce qui s'est passé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29916 /* ~Brise-lui la nuque~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29917 /* ~Brise-lui la nuque~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29918 /* ~Brise-lui la nuque~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #29919 /* ~"Eh oui. Qu'est-ce que tu comptes faire, vieil homme ?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 43 // from: 42.3 90.6 92.2 103.2
  SAY #29920 /* ~Iannis esquive alors que tu te jettes sur lui, puis crie : "Gardes ! À l'aide ! Je suis attaqué !"~ */
  IF ~~ THEN REPLY #29921 /* ~"Bon sang…"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 90.5 92.1 103.1
  SAY #29922 /* ~Tes mains agrippent sans difficulté les tempes de Iannis, et tu tords brusquement sa tête vers la gauche.~ */
  IF ~~ THEN REPLY #29923 /* ~"Je n'ai pas de temps à perdre avec tes sermons, vieil homme…"~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(15)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #29924 /* ~Dans un *crac*, Iannis s'écroule amorphe dans tes bras.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29925 /* ~"Tu reposes en paix maintenant…"~ */ DO ~PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke","GLOBAL",1)
~ JOURNAL #28822 /* ~Iannis m'a irrité pour la dernière fois puisque je l'ai étranglé pour le faire taire. Avec le meurtre, un souvenir a pointé… mais il n'était pas assez puissant pour faire surface. Une chose est sûre, j'en ai étranglé d'autres.~ */ GOTO 46
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29926 /* ~"Tu reposes en paix maintenant…"~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ JOURNAL #28821 /* ~Iannis m'a irrité pour la dernière fois puisque je l'ai étranglé pour le faire taire.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29927 /* ~À ta grande surprise, cette action t'a paru instinctive, comme si tu l'avais déjà réalisée plusieurs fois… cela te rappelle vaguement quelque chose, mais le souvenir n'est pas assez fort pour refaire surface.~ */
  IF ~~ THEN REPLY #29928 /* ~Laisse le corps, continue.~ */ DO ~GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.5 90.8 92.4 103.4
  SAY #29929 /* ~Iannis se met à crier. "Gardes ! À l'aide ! À l'intrus ! À l'aide !"~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29930 /* ~"Bon sang…"~ */ DO ~Enemy()
~ EXTERN ~DVHAIL~ 5
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #29931 /* ~"Bon sang…"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 40.0 41.0 42.0
  SAY #29932 /* ~"Mais…" Iannis semble sans voix. "Mais… pourquoi ? Certains objets qui ont brûlé… ils n'avaient de valeur que pour moi… irremplaçables !"~ */
  IF ~~ THEN REPLY #29933 /* ~"Il y a des chances pour que ces documents ou journaux aient fait peur à la personne que j'étais alors… Je crois que je ne saurai jamais."~ */ GOTO 49
  IF ~~ THEN REPLY #29934 /* ~"À vrai dire, je ne sais pas."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29935 /* ~"La personne que tu étais ? Qu'est-ce que tu racontes ?"~ */
  IF ~~ THEN REPLY #29936 /* ~"Je ne suis pas comme tout le monde… Parfois, je me perds et je deviens quelqu'un d'autre pendant un temps. Dans ces cas-là, je ne suis pas maître de mes agissements."~ */ GOTO 52
  IF ~~ THEN REPLY #29937 /* ~"À vrai dire, je ne sais pas."~ */ GOTO 50
  IF ~~ THEN REPLY #29938 /* ~Mensonge : "C'est une compulsion magique qui m'a fait agir ainsi. Je ne sais pas ce qui s'est passé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.1
  SAY #29939 /* ~"Tu ne sais pas ?! Je parle à un enfant ou quoi ?! Comment se fait-il que tu ne connaisses pas les raisons de tes propres actions !"~ */
  IF ~~ THEN REPLY #29940 /* ~"Je ne suis pas comme tout le monde… Parfois, je me perds et je deviens quelqu'un d'autre pendant un temps. Dans ces cas-là, je ne suis pas maître de mes agissements."~ */ GOTO 52
  IF ~~ THEN REPLY #29941 /* ~Mensonge : "C'est une compulsion magique qui m'a fait agir ainsi. Je ne sais pas ce qui s'est passé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 40.1 41.1 42.1 49.2 50.1
  SAY #29942 /* ~Iannis fronce les sourcils… Il semble réfléchir à la question. "J'ai entendu parler de ces *sorts* jetés sur des personnes." Il reste un moment silencieux. "Et tu *as* décidé d'endosser la responsabilité de ce crime…"~ */
  IF ~~ THEN REPLY #29943 /* ~"Je suis juste ici pour te demander pardon pour ce crime."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~J'ai menti à Iannis en lui disant que c'est sous l'effet d'un charme magique que j'ai mis le feu à son magasin et je lui ai demandé de me pardonner. Il m'a cru et m'a pardonné sans difficulté. Il m'a assuré que les dommages n'étaient pas graves.~ */ GOTO 53
  IF ~~ THEN REPLY #29944 /* ~"Je suis ici pour te demander pardon et me racheter pour ce qui t'est arrivé, si c'est en mon pouvoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~J'ai menti à Iannis en lui disant que c'est sous l'effet d'un charme magique que j'ai mis le feu à son magasin et je lui ai demandé de me pardonner. Il m'a cru et m'a pardonné sans difficulté. Il m'a assuré que les dommages n'étaient pas graves.~ */ GOTO 53
  IF ~~ THEN REPLY #29945 /* ~"Eh bien… je n'ai rien à voir avec ce crime. Après tout, je n'étais pas maître de mes agissements."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29946 /* ~J'ai menti à Iannis en lui disant que c'est sous l'effet d'un charme magique que j'ai mis le feu à son magasin et je lui ai demandé de me pardonner. Il m'a cru et m'a pardonné sans difficulté. Il m'a assuré que les dommages n'étaient pas graves.~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 49.0 50.0
  SAY #29947 /* ~Iannis fronce les sourcils… Il semble réfléchir au sujet. "J'ai entendu parler de tels symptômes… amnésie temporaire et émergence d'une autre personnalité… mais il y a aussi le fait que tu aies choisi de revendiquer la responsabilité de ce crime…"~ */
  IF ~~ THEN REPLY #29948 /* ~"Ça… ressemble à ma maladie. Je suis ici pour te demander pardon pour ce crime."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~J'ai dit à Iannis que j'étais responsable de l'incendie de son magasin et je lui ai demandé de me pardonner. Il m'a pardonné sans difficulté et m'a assuré que les dommages n'étaient pas graves.~ */ GOTO 53
  IF ~~ THEN REPLY #29949 /* ~"Je suis ici pour te demander pardon et me racheter pour ce qui t'est arrivé, si c'est en mon pouvoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~J'ai dit à Iannis que j'étais responsable de l'incendie de son magasin et je lui ai demandé de me pardonner. Il m'a pardonné sans difficulté et m'a assuré que les dommages n'étaient pas graves.~ */ GOTO 53
  IF ~~ THEN REPLY #29950 /* ~"Eh bien… je n'ai rien à voir avec ce crime. Après tout, je n'étais pas maître de mes agissements."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29951 /* ~J'ai dit à Iannis que j'étais responsable de l'incendie de son magasin et je lui ai demandé de me pardonner. Il m'a pardonné sans difficulté et m'a assuré que les dommages n'étaient pas graves.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 52.0 52.1 52.2
  SAY #29952 /* ~"Je…" Iannis fronce les sourcils, puis paraît plus calme. "Il n'y a rien à pardonner… Je me suis résigné à cette perte, et aucun dommage permanent n'a été causé. Je ne comprends toutefois pas pourquoi cette cible a été choisie. Il n'y avait rien de valeur parmi les documents brûlés."~ */
  IF ~~ THEN REPLY #29953 /* ~"En quoi consistaient les documents ?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #29954 /* ~"Des héritages, pour la plupart. Certains très anciens."~ */
  IF ~~ THEN REPLY #29955 /* ~"Des héritages ?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 55 // from: 39.2 39.3
  SAY #29956 /* ~"Non, ni l'Harmonium, ni les Rectifieurs n'ont réussi à trouver le responsable."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29957 /* ~"Je suis peut-être responsable de l'incendie."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29958 /* ~"Je suis peut-être responsable de l'incendie."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29959 /* ~"Tu peux me dire ce qui a brûlé ?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29960 /* ~"Je vois. Parle-moi de ta fille."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64204 /* ~"Je vois. Parle-moi de ta fille."~ */ GOTO 63
  IF ~~ THEN REPLY #29961 /* ~"C'est dommage. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29962 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 39.4 55.2
  SAY #29963 /* ~"Un certain nombre de testaments ont brûlé, ainsi que quelques souvenirs qui n'avaient de valeur que pour moi."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29964 /* ~"Je suis peut-être responsable de l'incendie."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29965 /* ~"Je suis peut-être responsable de l'incendie."~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29966 /* ~"Des héritages ?"~ */ GOTO 12
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29967 /* ~"Je vois. Parle-moi de ta fille."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64203 /* ~"Je vois. Parle-moi de ta fille."~ */ GOTO 63
  IF ~~ THEN REPLY #29968 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29969 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.1 1.3 36.2
  SAY #29970 /* ~"Excuse-moi. J'ai été dernièrement assailli de troubles… Je crains que ces dernières années n'aient été quelque peu éprouvantes pour moi."~ */
  IF ~~ THEN REPLY #29971 /* ~"Je peux faire quelque chose ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_5","GLOBALGood",1)
~ GOTO 58
  IF ~~ THEN REPLY #29972 /* ~"Quels troubles ?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29973 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29974 /* ~"Excuse-moi de t'avoir dérangé… J'espère que ça va s'arranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #29975 /* ~"Non, non… il n'y a pas grand-chose à faire." Il te remercie d'un signe de tête. "Quoi qu'il en soit, j'apprécie ton offre. Merci."~ */
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29976 /* ~"Le fait de parler de tes problèmes apaisera peut-être ton esprit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29977 /* ~"Le fait de parler de tes problèmes apaisera peut-être ton esprit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29978 /* ~"Le fait de parler de tes problèmes apaisera peut-être ton esprit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29979 /* ~"Qu'est-ce que tu as eu comme problèmes ?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29980 /* ~"Qu'est-ce que tu as eu comme problèmes ?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29981 /* ~"Qu'est-ce que tu as eu comme problèmes ?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29982 /* ~"Très bien. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #29983 /* ~"J'espère que ça va s'arranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1 58.0 58.2 58.3 58.5
  SAY #29984 /* ~Iannis soupire. "Je ne veux pas t'accabler… J'ai perdu ma fille il y a peu de temps. Et il y a aussi l'incendie… mais c'est une autre histoire."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29985 /* ~"Parle-moi de ta fille."~ */ GOTO 61
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29986 /* ~"Parle-moi de ta fille."~ */ GOTO 62
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29987 /* ~"Un incendie ?"~ */ GOTO 39
  IF ~~ THEN REPLY #29988 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29989 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 1.0 1.2 36.3 36.4 58.1 58.4
  SAY #29990 /* ~Iannis soupire. "Je ne veux pas t'accabler davantage… comme je l'ai déjà dit, j'ai perdu ma fille il y a peu de temps. Et il y a aussi l'incendie… mais c'est une autre histoire."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29991 /* ~"Parle-moi de ta fille."~ */ GOTO 63
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29992 /* ~"Parle-moi de ta fille."~ */ GOTO 63
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29993 /* ~"Un incendie ?"~ */ GOTO 39
  IF ~~ THEN REPLY #29994 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #29995 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #30224 /* ~Iannis semble immédiatement se refermer sur lui-même. "Oui…" Son attitude d'homme d'affaires disparaît et laisse la place à un froid désespoir. "Ma fille, Deionarra, a rendu l'âme il y a quelque temps…" Le nom provoque un choc en toi. Tu *connaissais* cette femme.~ */
  IF ~~ THEN REPLY #30225 /* ~"Parle-moi d'elle. Comment était-elle ?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30226 /* ~"Comment elle est morte ?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30227 /* ~"J'ai vu une femme de ce nom enterrée dans la Salle de Commémoration de la Morgue."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30228 /* ~"J'ai vu une femme de ce nom enterrée dans la Salle de Commémoration de la Morgue. Elle s'était transformée en fantôme et prétendait me connaître."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30229 /* ~"En fait, parle-moi encore de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30230 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30231 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 59.1
  SAY #30232 /* ~Aussitôt, Iannis semble se recroqueviller. "Oui…" Son air professionnel fait place à un désespoir poli. "Ma fille, Deionarra, a rendu l'âme il y a quelque temps… "~ */
  IF ~~ THEN REPLY #30233 /* ~"Parle-moi d'elle. Comment était-elle ?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30234 /* ~"Comment elle est morte ?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30235 /* ~"J'ai vu une femme de ce nom enterrée dans la Salle de Commémoration de la Morgue."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30236 /* ~"J'ai vu une femme de ce nom enterrée dans la Salle de Commémoration de la Morgue. Elle s'était transformée en fantôme et prétendait me connaître."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30237 /* ~"En fait, parle-moi encore de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30238 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30239 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 1.12 39.5 55.3 55.4 56.3 56.4 60.0 60.1 61.0 62.0 66.5 67.0 68.0 87.2 93.2 94.2 95.2 96.0
  SAY #30240 /* ~"Deionarra ? Elle était… jeune. Elle venait juste de rejoindre la Société des Sensations, les Sensats… pas une mauvaise faction, mais elle a aussi rencontré quelqu'un là-bas… elle l'a suivi en voyage, et elle est morte. Son corps…" Il paraît peiné. "Je n'ai même pas pu récupérer son corps…"~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30241 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 75
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30235 /* ~"J'ai vu une femme de ce nom enterrée dans la Salle de Commémoration de la Morgue."~ */ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 86
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",2)
~ THEN REPLY #30236 /* ~"J'ai vu une femme de ce nom enterrée dans la Salle de Commémoration de la Morgue. Elle s'était transformée en fantôme et prétendait me connaître."~ */ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 87
  IF ~~ THEN REPLY #30242 /* ~"Tu dis qu'elle était Sensat ?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30243 /* ~"Tu sais quelque chose sur cet homme avec qui elle voyageait ?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 72
  IF ~~ THEN REPLY #30244 /* ~"Tu sais où l'a menée ce voyage ?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30245 /* ~"Tu sais comment elle est morte ?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 85
  IF ~~ THEN REPLY #30246 /* ~"Pardonne-moi de te demander ça, mais si tu n'as pas pu récupérer son corps, comment tu sais qu'elle est morte ?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30247 /* ~"Je vois. Parle-moi de cet incendie."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 39
  IF ~~ THEN REPLY #30248 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ GOTO 1
  IF ~~ THEN REPLY #30249 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Le père de Deionarra, Iannis, m'a dit qu'elle était membre des Sensats. Il m'a dit qu'elle était morte très jeune et que c'était arrivé alors qu'elle suivait un homme qu'elle avait rencontré au cours d'un voyage. Son corps n'a jamais été retrouvé.~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.3 72.2 73.1 74.1 85.1 86.2 102.1
  SAY #30250 /* ~"Oui… " Il paraît plus vivant, comme s'il réchauffait son cœur d'un souvenir précieux. "Elle les avait rejoints à cause de son don… et le fait qu'elle voulait *tant* savoir du multivers. Les Sensats partagent volontiers les expériences et les sensations."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30252 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ GOTO 75
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #30253 /* ~"Je l'ai remarqué. J'ai trouvé une pierre sensorielle dans le sensorium, elle contenait un fragment de ses expériences."~ */ GOTO 65
  IF ~~ THEN REPLY #2944 /* ~"Un don ?"~ */ DO ~SetGlobal("Deionarra_Sight","GLOBAL",1)
~ JOURNAL #30260 /* ~Iannis m'a dit que Deionarra avait du sang d'oracle dans les veines. Elle jouissait grâce à cela du don de 'vision', qui lui permettait de voir les événements avant qu'ils se réalisent.~ */ GOTO 102
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30254 /* ~"Tu sais quelque chose sur cet homme avec qui elle voyageait ?"~ */ GOTO 72
  IF ~~ THEN REPLY #30255 /* ~"Tu sais où l'a menée ce voyage ?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30256 /* ~"Tu sais comment elle est morte ?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30257 /* ~"Je vois. Parle-moi de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30258 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30259 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 1.9 25.0 26.0 64.1
  SAY #30261 /* ~Ses yeux se remplissent d'espoir. "C'est vrai ? Mais dans laquelle… ? Il faut que tu me le dises !"~ */
  IF ~~ THEN REPLY #30262 /* ~"C'est une des pierres sensorielles des Sensats… et si tu n'es pas un Sensat, tu n'y as pas accès."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #30263 /* ~Il réfléchit pendant un instant. "Il faut que je trouve un moyen… peut-être feront-ils une exception pour son père…"~ */
  IF ~~ THEN REPLY #30264 /* ~"Si tu veux, je peux essayer de parler à quelqu'un. Je pense vraiment qu'ils peuvent faire une exception dans ton cas."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~J'ai dit à Iannis que je pourrais me renseigner à la Salle des Fêtes et essayer de le faire entrer pour qu'il voie la pierre sensorielle de sa fille. Je ne sais pas ce que je vais pouvoir faire, mais je vais essayer.~ */ GOTO 67
  IF ~~ THEN REPLY #30265 /* ~"Je ne veux pas enfreindre les lois des Sensats. Mais, je peux essayer de parler à quelqu'un pour voir si on peut faire autre chose."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_5","GLOBALLaw",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~J'ai dit à Iannis que je pourrais me renseigner à la Salle des Fêtes et essayer de le faire entrer pour qu'il voie la pierre sensorielle de sa fille. Je ne sais pas ce que je vais pouvoir faire, mais je vais essayer.~ */ GOTO 67
  IF ~~ THEN REPLY #30266 /* ~"Je peux t'aider, moyennant finances. J'ai une certaine influence à la Salle des Fêtes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_2","GLOBALGood",-1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30271 /* ~J'ai dit à Iannis que je pourrais me renseigner à la Salle des Fêtes et essayer de le faire entrer pour qu'il voie la pierre sensorielle de sa fille… moyennant un certain prix. Il m'a dit qu'il me paierait une fois que j'aurais obtenu l'autorisation des Sensats.~ */ GOTO 68
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64287 /* ~"C'est possible. Ce qui est sûr, c'est qu'elle m'a laissé le numéro dans la pierre sensorielle…"~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64288 /* ~"C'est possible. Ce qui est sûr, c'est qu'elle m'a laissé le numéro dans la pierre sensorielle…"~ */ GOTO 104
  IF ~~ THEN REPLY #30267 /* ~"C'est une affaire entre toi et eux. Dis-m'en plus sur Deionarra…"~ */ GOTO 63
  IF ~~ THEN REPLY #30268 /* ~"C'est possible. Tu devrais leur parler. Quoi qu'il en soit, j'ai d'autres questions à te poser…"~ */ GOTO 1
  IF ~~ THEN REPLY #30269 /* ~"Peut-être. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1
  SAY #30272 /* ~Iannis paraît soulagé. "Si tu le pouvais, je t'en serais extrêmement reconnaissant."~ */
  IF ~~ THEN REPLY #30273 /* ~"Je vais voir ce qu'on peut faire. Mais je voudrais en savoir plus sur Deionarra. Comment elle était ?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64289 /* ~"Je vais régler cette question rapidement. Pour le moment, elle m'a laissé le numéro dans la pierre sensorielle…"~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64290 /* ~"Je vais régler cette question rapidement. Pour le moment, elle m'a laissé le numéro dans la pierre sensorielle…"~ */ GOTO 104
  IF ~~ THEN REPLY #30274 /* ~"Je vais essayer… Avant que je m'en aille, tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #30275 /* ~"Je vais voir ce que je peux faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY #30276 /* ~Iannis paraît soulagé. "Une fois que tu auras obtenu pour moi l'autorisation de voir la pierre, reviens, et je veillerai à ce que tu sois amplement récompensé de tes efforts."~ */
  IF ~~ THEN REPLY #30277 /* ~"Je vais voir ce qu'on peut faire, mais ça risque de ne pas être facile. Je voudrais en savoir plus sur Deionarra avant de faire mes recherches à la Salle des Fêtes. Comment elle était ?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64291 /* ~"Je vais régler cette question rapidement. Pour le moment, je m'intéresse à l'héritage qu'elle a laissé pour moi…"~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64292 /* ~"Je vais régler cette question rapidement. Pour le moment, je m'intéresse à l'héritage qu'elle a laissé pour moi…"~ */ GOTO 104
  IF ~~ THEN REPLY #30278 /* ~"Je vais essayer… Avant que je m'en aille, tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #30279 /* ~"Je vais voir ce que je peux faire… mais ça risque de coûter *très* cher. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.0
  SAY #30280 /* ~"Tu… Je… merci, merci, merci ! Je te suis redevable !"~ */
  IF ~  Global("Evil_Iannis_2","GLOBAL",1)
~ THEN REPLY #30281 /* ~"En fait, tu es… Je crois t'avoir entendu parler d'une compensation tout à l'heure…"~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30284 /* ~Je suis retourné voir Iannis et je lui ai dit que les Sensats acceptaient de le laisser voir la pierre sensorielle de sa fille. Il était extrêmement reconnaissant… à tel point qu'il était prêt à me payer une grosse somme en cuivre et en objets magiques mineurs qu'il avait mis de côté. Je suppose qu'il est possible de mettre un prix sur l'amour d'un père envers sa fille…~ */ GOTO 70
  IF ~  Global("Evil_Iannis_2","GLOBAL",0)
~ THEN REPLY #30282 /* ~"Ça a été simple, Iannis. Je t'en prie, va voir les expériences de ta fille. Peut-être qu'elles apaiseront tes problèmes."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30285 /* ~Je suis retourné voir Iannis et je lui ai dit que les Sensats acceptaient de le laisser voir la pierre sensorielle de sa fille. Il était extrêmement reconnaissant ; la simple allusion au fait que j'avais réussi à lui obtenir une autorisation pour voir la pierre sensorielle de sa Deionarra a permis une diminution sensible de sa dépression.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #30283 /* ~"Bien sûr, bien sûr… attends un instant, je reviens tout de suite."~ */
  IF ~~ THEN REPLY #30286 /* ~"Très bien. J'attendrai."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(500)
GiveItemCreate("Maslow",Protagonist,33,33,33)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #30287 /* ~Après quelques instants, Iannis revient. Il tient dans ses mains un grand sac de pièces et, apparemment, plusieurs charmes de guérison. "Voilà… et encore un fois, tu as toute ma gratitude pour tes efforts."~ */
  IF ~~ THEN REPLY #30288 /* ~"Oui, oui… Écoute, tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #30289 /* ~"Bien sûr, bien sûr… Pas de problèmes… pour une somme pareille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 63.4 64.3 73.2 74.2 102.2
  SAY #30290 /* ~"Peu. J'étais à peine au courant de son existence lorsqu'elle est partie. Il était alors déjà trop tard pour faire sa connaissance."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30291 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30292 /* ~"Je crois que l'homme, c'était moi. Mais j'ai presque tout oublié."~ */ GOTO 88
  IF ~~ THEN REPLY #30293 /* ~"Tu dis qu'elle était Sensat ?"~ */ GOTO 64
  IF ~~ THEN REPLY #30295 /* ~"Tu sais où l'a menée ce voyage ?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30297 /* ~"Comment elle est morte ?"~ */ GOTO 85
  IF ~~ THEN REPLY #30300 /* ~"Comment tu sais qu'elle est morte ?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30301 /* ~"Je vois. Parle-moi de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30302 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30303 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 63.5 64.4 72.3 74.3 85.2 86.3 102.3
  SAY #30304 /* ~"Elle ne l'a jamais dit. Je ne suis pas sûr qu'elle ait pu dire où ils allaient. Cela devait être un endroit… terrible."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30305 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30306 /* ~"Tu dis qu'elle était Sensat ?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30307 /* ~"Tu sais quelque chose sur cet homme avec qui elle voyageait ?"~ */ GOTO 72
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30308 /* ~"Comment elle est morte ?"~ */ GOTO 85
  IF ~~ THEN REPLY #30309 /* ~"Comment tu sais qu'elle est morte ?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30310 /* ~"Je vois. Parle-moi de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30311 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30312 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 63.7 72.5 73.4 85.3 86.5 102.5
  SAY #30313 /* ~"C'est très curieux… Je me suis adressé aux Hommes-Poussière pour savoir s'ils avaient trouvé son corps, et ils m'ont renvoyé vers l'un des leurs à l'extérieur du Mémorial… un Homme-Poussière appelé Mort-Des-Noms, je crois. On dit qu'il est oracle, qu'il sait qui est mort. Il m'a dit que ma fille était morte."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30314 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30315 /* ~"Tu dis qu'elle était Sensat ?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30316 /* ~"Tu sais quelque chose sur cet homme avec qui elle voyageait ?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #30317 /* ~"Tu sais où l'a menée ce voyage ?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 73
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30318 /* ~"Je vois. Parle-moi de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30319 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30320 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 1.13 63.0 64.0 72.0 73.0 74.0 85.0 86.0 102.0
  SAY #30321 /* ~Iannis ne paraît d'abord pas t'avoir entendu. Lorsqu'il reprend la parole, les mots lui viennent doucement. "Dis-moi. Il faut que je sache."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Vérité : "Je suis responsable de la mort de ta fille. Je l'ai tuée sur le Plan d'Énergie Négative en espérant que son amour pour moi la lierait à cet endroit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~J'ai avoué au père de Deionarra, Iannis, ce qui était arrivé à sa fille. Malgré la gravité du crime, j'espère que le fait de savoir ce qui lui est vraiment arrivé soulagera un peu sa peine.~ */ EXTERN ~DVHAIL~ 6
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30323 /* ~Vérité : "Je suis responsable de la mort de ta fille. Je l'ai tuée sur le Plan d'Énergie Négative en espérant que son amour pour moi la lierait à cet endroit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~J'ai avoué au père de Deionarra, Iannis, ce qui était arrivé à sa fille. Malgré la gravité du crime, j'espère que le fait de savoir ce qui lui est vraiment arrivé soulagera un peu sa peine.~ */ GOTO 76
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Demi-vérité : "Elle a trouvé la mort sur le Plan d'Énergie Négative à la suite d'une trahison."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~J'ai en partie avoué au père de Deionarra, Iannis, ce qui était arrivé à sa fille. J'espère que le fait de savoir ce qui lui est arrivé soulagera un peu sa peine. De toute façon, il n'aurait sûrement pas supporté toute la vérité, et je n'ai pas besoin qu'une autre personne me blâme pour *tous* les problèmes des plans.~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30325 /* ~Demi-vérité : "Elle a trouvé la mort sur le Plan d'Énergie Négative à la suite d'une trahison."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~J'ai en partie avoué au père de Deionarra, Iannis, ce qui était arrivé à sa fille. J'espère que le fait de savoir ce qui lui est arrivé soulagera un peu sa peine. De toute façon, il n'aurait sûrement pas supporté toute la vérité, et je n'ai pas besoin qu'une autre personne me blâme pour *tous* les problèmes des plans.~ */ GOTO 77
  IF ~~ THEN REPLY #30326 /* ~Mensonge : "Elle est tombée malade au cours du voyage… Apparemment, le temps qu'elle avait passé à Sigil ne l'avait pas préparée à l'environnement des autres plans."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~J'ai menti au père de Deionarra, Iannis, sur ce qui était arrivé à sa fille. J'espère que ce mensonge va soulager la peine du vieil homme. De toute façon, il n'aurait sûrement pas supporté la vérité, et je n'ai pas besoin qu'une autre personne me blâme pour *tous* les problèmes des plans.~ */ GOTO 89
  IF ~~ THEN REPLY #30327 /* ~"Peu importe. J'ai dit une bêtise. Tu peux peut-être faire autre chose pour moi…"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
  IF ~~ THEN REPLY #30328 /* ~"Ça n'a pas d'importance. Au revoir."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
END

IF ~~ THEN BEGIN 76 // from: 75.1 77.0 90.2
  SAY #30332 /* ~Iannis te fixe sans un mot, puis sa voix se brise. "Pourquoi… *pourquoi* as-tu commis un acte aussi terrible ?"~ */
  IF ~~ THEN REPLY #30333 /* ~"Ce n'était pas moi… mais une autre partie de moi. Il l'a fait dans l'espoir qu'elle servirait de lien avec ce plan pour servir ses propres intérêts… . Pardon, Iannis."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30334 /* ~"Je crois que je suis responsable de choses terribles, des choses, dont, pour la plupart, je ne me souviens même pas. Je l'ai fait dans l'espoir qu'elle servirait de lien avec ce plan. Pardon, Iannis."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30335 /* ~"Ce n'était pas un acte 'terrible' mais un acte *nécessaire*, Iannis. Ta fille voulait renoncer à sa vie pour moi, et j'avais besoin de sa vie pour sauver la mienne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_3","GLOBALGood",-3)
AddexperienceParty(12000)
~ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 75.3 90.3
  SAY #30336 /* ~Iannis te dévisage. "Qui ?"~ */
  IF ~~ THEN REPLY #30337 /* ~Vérité : "Je suis responsable."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",1)
~ GOTO 76
  IF ~~ THEN REPLY #30338 /* ~Mensonge : "Je ne sais pas. Mais il vaut mieux ne pas chercher à savoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
~ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY #30339 /* ~Iannis paraît hésitant. "Il faut que je sache…" Il lève la tête vers toi. "Merci de me l'avoir dit. Il fallait que je sache ce qui lui est arrivé…"~ */
  IF ~~ THEN REPLY #30340 /* ~"Je comprends. Tu peux peut-être faire autre chose pour moi avant que je m'en aille…"~ */ GOTO 1
  IF ~~ THEN REPLY #30341 /* ~"Je pleure la disparition de ta fille, Iannis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.0 76.1
  SAY #30342 /* ~"Tu…" Iannis semble essayer de trouver le sens de tes propos. "Attends… tu as dit que cela était fait pour la lier à ce plan ? Qu'est-ce que tu veux dire ?"~ */
  IF ~~ THEN REPLY #30343 /* ~"D'après ce que je comprends, on espérait que la combinaison de son amour pour moi et de sa mort sur le Plan d'Énergie Négative lui permettraient de vivre en tant qu'esprit."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #30344 /* ~"Elle est *vivante* ?"~ */
  IF ~~ THEN REPLY #30345 /* ~"Dans un sens… oui."~ */ GOTO 81
  IF ~~ THEN REPLY #30346 /* ~"Eh bien, je ne dirais pas qu'elle *vit*. Son esprit existe toujours…"~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #30347 /* ~"Que…" Il paraît horrifié. "Il faut la libérer !"~ */
  IF ~~ THEN REPLY #30348 /* ~"Si je pouvais trouver un moyen de le faire, je le ferais."~ */ GOTO 82
  IF ~  Global("Lawful_Deionarra_1","GLOBAL",1)
~ THEN REPLY #30349 /* ~"J'ai déjà juré d'essayer de la libérer… ou de la rejoindre là-bas."~ */ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0 81.1 92.0
  SAY #30350 /* ~"Si tu as le moindre soupçon de décence, épargne ma fille. Il n'y a rien qui puisse être fait pour changer ce qui est arrivé, alors je te demande de laisser son âme reposer en paix. Je réussirai à te pardonner ton acte, si tu fais cela pour moi."~ */
  IF ~~ THEN REPLY #30351 /* ~Serment : "Je te jure que je ferai tout pour que ta fille repose en paix."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_8","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30352 /* ~"Je vais voir ce que je peux faire."~ */ GOTO 83
  IF ~~ THEN REPLY #30353 /* ~"Impossible…"~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0 82.1 97.2 100.0 100.1 100.2 101.0
  SAY #30354 /* ~"Très bien, dans ce cas. Maintenant, pars. Je veux rester seul avec mes pensées."~ */
  IF ~~ THEN REPLY #30355 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.2
  SAY #30356 /* ~"Alors, que la justice des Plans s'abatte sur toi !" Iannis serre les dents. "Puisse la souffrance de ma fille t'accabler au centuple !"~ */
  IF ~~ THEN REPLY #30357 /* ~"Attention à ce que tu dis, Iannis, si tu ne veux pas rejoindre ta fille plus vite que prévu."~ */ GOTO 92
  IF ~~ THEN REPLY #30358 /* ~"Je vois qu'il n'y a plus rien à ajouter. Au revoir."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 61.1 62.1 63.6 64.5 72.4 73.3 86.4 102.4
  SAY #30359 /* ~"Je ne sais pas… son corps n'a jamais été retrouvé." Le visage de Iannis devient rouge pivoine, et il serre les poings. "Et c'est peut-être la partie la plus *rageante* de ce malheur… Je ne saurai jamais ce qui l'a poussée à partir comme ça, ce qui lui est arrivé, ni même où son corps gît désormais !"~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30360 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30361 /* ~"Tu dis qu'elle était Sensat ?"~ */ GOTO 64
  IF ~~ THEN REPLY #30362 /* ~"Est-ce que tu sais où Deionarra et cet homme sont allés au cours de leur voyage ?"~ */ GOTO 73
  IF ~~ THEN REPLY #30363 /* ~"Excuse-moi de te demander ça, mais comment est-ce que tu sais qu'elle est morte si tu n'as pas vu son corps ?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30364 /* ~"Je vois. Parle-moi de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30365 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30366 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 61.2 62.2 63.1
  SAY #30367 /* ~"Oui, j'ai fait en sorte qu'un cercueil soit placé dans la Salle de Commémoration. Il n'y a pas de corps à l'intérieur, bien sûr, mais j'espérais que le cercueil lui serve de repère, pour qu'elle retrouve le chemin de sa maison."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30368 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30369 /* ~"Ça a marché… Son esprit est ici maintenant."~ */ GOTO 87
  IF ~~ THEN REPLY #30370 /* ~"Tu dis qu'elle était Sensat ?"~ */ GOTO 64
  IF ~~ THEN REPLY #30371 /* ~"Est-ce que tu sais où Deionarra et cet homme sont allés au cours de leur voyage ?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30372 /* ~"Tu sais comment elle est morte ?"~ */ GOTO 85
  IF ~~ THEN REPLY #30373 /* ~"S'il n'y a pas de corps, comment est-ce que tu sais qu'elle est morte ?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30374 /* ~"Je vois. Parle-moi de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30375 /* ~"Je vois. Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30376 /* ~"Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 61.3 62.3 63.2 86.1
  SAY #30377 /* ~"Que… quoi ?!" Iannis paraît troublé. "Que… qu'as-tu dit ?!"~ */
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30378 /* ~"Son esprit vit désormais dans la Salle de Commémoration."~ */ GOTO 93
  IF ~~ THEN REPLY #30379 /* ~"Son esprit vit désormais dans la Salle de Commémoration. Je lui ai parlé un moment, et elle semblait en détresse."~ */ GOTO 97
  IF ~~ THEN REPLY #30380 /* ~"Je n'ai rien dit… Parle-moi encore de Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30381 /* ~"Rien… J'ai dit une bêtise. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #30382 /* ~"J'ai dit que je te faisais mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 72.1 98.0
  SAY #30383 /* ~"Toi ?!" Iannis te toise de la tête aux pieds. "C'est toi… et tu dis que tu as *oublié* ?!" Iannis se lève, prêt à se battre. "Tu as *oublié*… mais cet incident s'est produit il n'y a pas si longtemps. Comment est-ce possible ?"~ */
  IF ~~ THEN REPLY #30384 /* ~"Je souffre d'un mal étrange… Parfois, je me perds… pendant un temps. Tout ce que tu pourras me dire sur moi ou sur ta fille me sera très précieux."~ */ GOTO 99
  IF ~~ THEN REPLY #30385 /* ~"J'ai dit une bêtise. Je ne pense pas être cet homme. Je n'aurais certainement pas oublié ta fille si j'avais voyagé avec elle."~ */ GOTO 103
  IF ~~ THEN REPLY #30386 /* ~"J'en ai assez de ces questions. Au revoir."~ */ GOTO 103
END

IF ~~ THEN BEGIN 89 // from: 75.4 90.4
  SAY #30387 /* ~"C'est ce dont j'avais peur." Iannis soupire. "Ton histoire sonne vrai… elle a vécu une vie sans soucis dans la cité, et même au mieux, sa santé n'était pas très bonne." Il lève la tête avec espoir. "Sais-tu où se trouve son corps ? Je veillerai à ce qu'il soit enterré convenablement."~ */
  IF ~~ THEN REPLY #30388 /* ~"Il ne reste rien de son corps… C'était une maladie foudroyante qui n'a pas laissé grand-chose de ses restes."~ */ GOTO 101
END

IF ~~ THEN BEGIN 90 // from: 75.5 75.6
  SAY #30389 /* ~"Non, je t'ai bien entendu. Ainsi donc, tu sais ce qui est arrivé à ma fille. Parle. Immédiatement." Iannis fronce encore plus les sourcils. "Ou j'appelle une patrouille de l'Harmonium pour t'arracher les réponses."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Vérité : "Je suis responsable de la mort de ta fille. Je l'ai tuée sur le Plan d'Énergie Négative en espérant que son amour pour moi la lierait à cet endroit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~J'ai avoué au père de Deionarra, Iannis, ce qui était arrivé à sa fille. Malgré la gravité du crime, j'espère que le fait de savoir ce qui lui est vraiment arrivé soulagera un peu sa peine.~ */ EXTERN ~DVHAIL~ 6
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Demi-vérité : "Elle a trouvé la mort sur le Plan d'Énergie Négative à la suite d'une trahison."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~J'ai en partie avoué au père de Deionarra, Iannis, ce qui était arrivé à sa fille. J'espère que le fait de savoir ce qui lui est arrivé soulagera un peu sa peine. De toute façon, il n'aurait sûrement pas supporté toute la vérité, et je n'ai pas besoin qu'une autre personne me blâme pour *tous* les problèmes des plans.~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30390 /* ~Vérité : "Je suis responsable de la mort de ta fille. Je l'ai tuée sur le Plan d'Énergie Négative en espérant que son amour pour moi la lierait à cet endroit."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~J'ai avoué au père de Deionarra, Iannis, ce qui était arrivé à sa fille. Malgré la gravité du crime, j'espère que le fait de savoir ce qui lui est vraiment arrivé soulagera un peu sa peine.~ */ GOTO 76
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30391 /* ~Demi-vérité : "Elle a trouvé la mort sur le Plan d'Énergie Négative à la suite d'une trahison."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~J'ai en partie avoué au père de Deionarra, Iannis, ce qui était arrivé à sa fille. J'espère que le fait de savoir ce qui lui est arrivé soulagera un peu sa peine. De toute façon, il n'aurait sûrement pas supporté toute la vérité, et je n'ai pas besoin qu'une autre personne me blâme pour *tous* les problèmes des plans.~ */ GOTO 77
  IF ~~ THEN REPLY #30392 /* ~Mensonge : "Elle est tombée malade au cours du voyage… Apparemment, le temps qu'elle avait passé à Sigil ne l'avait pas préparée à l'environnement des autres plans."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~J'ai menti au père de Deionarra, Iannis, sur ce qui était arrivé à sa fille. J'espère que ce mensonge va soulager la peine du vieil homme. De toute façon, il n'aurait sûrement pas supporté la vérité, et je n'ai pas besoin qu'une autre personne me blâme pour *tous* les problèmes des plans.~ */ GOTO 89
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30393 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30394 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30395 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30396 /* ~"Tu veux appeler les gardes ? Alors, vas-y. Il reste encore de la place pour toi dans le livre des morts."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #30397 /* ~"Pourquoi avoir fait une telle chose ?! C'était la VIE de ma fille, pas -"~ */
  IF ~~ THEN REPLY #30398 /* ~"Ta fille était libre de faire ce qu'elle voulait de sa vie. C'est elle qui m'a donné la permission de contrôler sa vie."~ */ GOTO 92
  IF ~~ THEN REPLY #30399 /* ~"J'en ai assez de me chamailler avec toi. Tais-toi si tu ne veux pas mourir comme ta fille."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 84.0 91.0 91.1
  SAY #30400 /* ~Le visage de Iannis se contracte sous l'effet de la colère. "Espèce de… *chien* de Sigilien. Tu as tué ma fille sans une once de remords, et tu oses revenir ici tel un vampire dans la nuit et me menacer ?!"~ */
  IF ~  Global("Evil_Iannis_3","GLOBAL",0)
~ THEN REPLY #30401 /* ~"J'ai parlé trop vite… Je regrette ce que j'ai dit."~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30402 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30403 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30404 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30405 /* ~"J'ose et ça m'est égal de rajouter des cadavres à ma liste. Qu'est-ce que tu comptes faire contre ça, vieil homme ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 93 // from: 87.0
  SAY #30461 /* ~"Tu fais bien de parler au figuré !" Iannis paraît furieux. "Si c'est le cas, alors je n'ai pas le temps de jouer avec les mots…"~ */
  IF ~~ THEN REPLY #30462 /* ~"Non, c'est du concret. Son esprit vit dans la Salle de Commémoration."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",1)
~ GOTO 94
  IF ~~ THEN REPLY #30463 /* ~"Non, c'est du concret. Son esprit vit dans la Salle de Commémoration. Je lui ai parlé un moment et elle semblait dans la détresse."~ */ GOTO 97
  IF ~~ THEN REPLY #30464 /* ~"Alors, je te présente mes excuses… Parle-moi encore de Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30465 /* ~"J'ai dit une bêtise. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #30466 /* ~"J'ai mal choisi mes mots. Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #30467 /* ~"Elle est devenue un… esprit ?"~ */
  IF ~~ THEN REPLY #30468 /* ~"Oui."~ */ GOTO 95
  IF ~~ THEN REPLY #30469 /* ~"Oui, je lui ai parlé un moment et elle semblait dans la détresse."~ */ GOTO 97
  IF ~~ THEN REPLY #30470 /* ~"Non, j'ai dit une bêtise… Parle-moi encore de Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30471 /* ~"J'ai dit une bêtise. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #30472 /* ~"J'ai mal choisi mes mots. Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #30484 /* ~"Je… Je… devrai la rechercher, voir si je peux communiquer avec elle, voir ce qui l'a retient ici… son état… comment sais-tu qu'elle est devenue un esprit ?"~ */
  IF ~~ THEN REPLY #30485 /* ~"J'ai aperçu un spectre près de sa bière, à la Morgue. J'ai supposé que c'était elle."~ */ GOTO 96
  IF ~~ THEN REPLY #30486 /* ~"Je lui ai parlé un moment et elle semblait dans la détresse."~ */ GOTO 97
  IF ~~ THEN REPLY #30487 /* ~"Non, j'ai dit une bêtise… Parle-moi encore de Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30488 /* ~"J'ai dit une bêtise. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #30489 /* ~"J'ai mal choisi mes mots. Toutes mes condoléances. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0 97.0 98.1
  SAY #30490 /* ~"Je voyagerai là-bas dès que je pourrai enquêter sur cela moi-même." Il te fait un signe de tête. "Si tes dires sont vrais, alors je te suis redevable…"~ */
  IF ~~ THEN REPLY #30491 /* ~"Ce n'est rien… Parle-moi encore de Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30492 /* ~"Bon, très bien. Tu peux peut-être faire autre chose pour moi…"~ */ GOTO 1
  IF ~~ THEN REPLY #30493 /* ~"Tu t'acquitteras peut-être de cette dette une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 87.1 93.1 94.1 95.1
  SAY #30494 /* ~"Tu… lui as parlé ?!" Iannis semble de plus en plus troublé. "Qu'est-ce qui l'afflige ?"~ */
  IF ~~ THEN REPLY #30495 /* ~"Je… je ne sais pas exactement. Je ne comprenais pas ce qu'elle disait."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 96
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Moi, visiblement. Elle a dit qu'elle m'aimait et que je l'avais aimée… mais que je l'avais abandonnée."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 98
  IF ~  GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Moi, visiblement. Elle a dit qu'elle m'aimait et que je l'avais aimée… mais que je l'avais abandonnée."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 83
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY #30497 /* ~"Je vois. Peut-être…" Iannis fronce les sourcils et t'étudie… son visage est de pierre. "Es-tu celui avec qui elle a quitté Sigil ? Celui qui l'a guidée lors du voyage qui lui a coûté la vie ?"~ */
  IF ~~ THEN REPLY #30498 /* ~"Je… je ne sais pas exactement. Je suis peut-être cet homme, mais j'ai oublié tant de choses."~ */ GOTO 88
  IF ~~ THEN REPLY #30499 /* ~"Je ne crois pas. Elle semblait hystérique et savait très peu de choses sur son entourage. Tu veux peut-être aller lui demander."~ */ GOTO 96
END

IF ~~ THEN BEGIN 99 // from: 88.0 103.0
  SAY #30500 /* ~"J'ai connu un nombre incroyable de menteurs dans l'exercice de mes fonctions ici." Iannis t'étudie. "Tu ne me sembles pas être l'un d'entre eux… du moins sur ce sujet." Il soupire. "Si tu ne te souviens vraiment pas, alors ce qui vous est arrivé lors de ce périple doit avoir laissé de profondes cicatrices."~ */
  IF ~~ THEN REPLY #30501 /* ~"Je serais plutôt d'accord."~ */ DO ~SetGlobal("Deionarra_Fate_Quest","GLOBAL",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #30502 /* ~"Alors je te demande de me jurer ceci : si la mémoire te revient, et que tu découvres ce qui est arrivé à ma fille, reviens, pour qu'au moins mon esprit trouve le repos."~ */
  IF ~~ THEN REPLY #30503 /* ~Serment : "Je le promets."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_7","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30504 /* ~Mensonge : "Je le promets."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Iannis_4","GLOBALGood",-1)
~ GOTO 83
  IF ~~ THEN REPLY #30505 /* ~"Si je découvre ce qui lui est arrivé, je reviendrai… si possible."~ */ GOTO 83
END

IF ~~ THEN BEGIN 101 // from: 89.0
  SAY #30506 /* ~"Je… vois." Iannis fronce les sourcils. "Merci de m'avoir libéré de mes doutes. J'espère seulement qu'elle n'a pas trop souffert et que sa mort a été rapide."~ */
  IF ~~ THEN REPLY #30507 /* ~"C'est certain… Je suis sûr qu'elle est morte rapidement. La maladie l'a touchée comme un poignard, sans crier gare. *C'est* pas de chance."~ */ GOTO 83
END

IF ~~ THEN BEGIN 102 // from: 64.2
  SAY #30508 /* ~"Oh, oui…" Iannis approuve de la tête. "Ma fille avait le sang d'un oracle dans les veines, mais c'était un don peu fiable. Elle pouvait parfois prédire des événements… elle 'voyait' ; elle pouvait voir à travers le temps lui-même, examiner les fils du destin…"~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30509 /* ~"Iannis, j'ai découvert ce qui est arrivé à Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30510 /* ~"Tu dis qu'elle était Sensat ?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30511 /* ~"Tu sais quelque chose sur cet homme avec qui elle voyageait ?"~ */ GOTO 72
  IF ~~ THEN REPLY #30512 /* ~"Tu sais où l'a menée ce voyage ?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30513 /* ~"Tu sais comment elle est morte ?"~ */ GOTO 85
  IF ~~ THEN REPLY #30514 /* ~"Pardonne-moi de te demander ça, mais si tu n'as pas pu récupérer son corps, comment tu sais qu'elle est morte ?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30515 /* ~"Je vois. Parle-moi de cet incendie."~ */ GOTO 39
  IF ~~ THEN REPLY #30516 /* ~"Tu peux peut-être m'aider pour autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #30517 /* ~"Hmmm. Ça a dû être un don très utile, en effet… notamment pour la personne avec qui elle a voyagé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 88.1 88.2
  SAY #30518 /* ~"Non, je t'ai bien entendu. Dis-moi tout ce que tu sais. Maintenant." Iannis fronce encore plus les sourcils. "Ou je veillerai à ce qu'une patrouille de l'Harmonium t'arrache les réponses.~ */
  IF ~~ THEN REPLY #30519 /* ~"Je souffre d'un mal étrange… Parfois, je me perds… pendant un temps. Je ne t'ai pas menti sur ta fille. C'est juste que j'ai oublié beaucoup de choses sur ma vie et sur moi-même."~ */ GOTO 99
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30520 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30521 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30522 /* ~Brise-lui la nuque.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30523 /* ~"Tu veux appeler les gardes ? Vas-y. Ils mourront aussi facilement que toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 104 // from: 15.2 66.4 67.2 68.2
  SAY #30524 /* ~"Ah !" Iannis secoue la tête. "Il semble que tu aies dit la vérité… ma fille ne t'était pas étrangère, alors." Il soupire. "Attends un instant, je vais voir ce qui a été laissé pour toi."~ */
  IF ~~ THEN REPLY #30525 /* ~"J'attends."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #30526 /* ~J'ai récupéré l'héritage de Deionarra chez son père.~ */ GOTO 31
END
