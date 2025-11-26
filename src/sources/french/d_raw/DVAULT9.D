// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAULT9.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAULT9~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45843 /* ~"Bienvenue à la Voûte du Neuvième Monde. Que puis-je pour toi en ce jour radieux, Sigilien ?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45844 /* ~"C'est quoi, cet endroit ?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45845 /* ~"Qu'est-ce que tu es ?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45846 /* ~"J'ai entendu dire qu'il était parfois difficile de récupérer les objets que l'on met en dépôt chez toi."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45847 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #66903 /* ~"Au revoir."~ */ GOTO 11
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45848 /* ~"Une fois encore, bienvenue à la Voûte du Neuvième Monde. Que puis-je pour toi en ce jour radieux, Sigilien ?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45849 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45850 /* ~"Qu'est-ce que tu es ?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~~ THEN REPLY #45851 /* ~"Je voudrais mettre un objet en dépôt."~ */ GOTO 6
  IF ~~ THEN REPLY #45852 /* ~"Je viens récupérer un objet mis en dépôt."~ */ GOTO 9
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45853 /* ~"J'ai entendu dire qu'il était parfois difficile de récupérer les objets que l'on met en dépôt chez toi."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45854 /* ~"Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0
  SAY #45855 /* ~"La Voûte du Neuvième Monde sert d'entrepôt au Bas Quartier et à tous les êtres sensibles de Sigil ! 'Quand un seul monde ne suffit plus !', telle est notre devise. Nous proposons un espace de rangement à ceux qui en manquent. Nos prix sont très compétitifs, et nos services exemplaires ! Notre courtoisie envers nos clients fait notre réputation dans tous les plans !"~ */
  IF ~~ THEN REPLY #45856 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 3
  IF ~~ THEN REPLY #45857 /* ~"Au revoir."~ */ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 7.1
  SAY #45858 /* ~"Je suis le porte-parole de la Voûte du Neuvième Monde. J'ai pour fonction de te servir, ami client. Dis-moi en quoi je puis t'être utile."~ */
  IF ~~ THEN REPLY #45859 /* ~"Je voudrais mettre un objet en dépôt."~ */ GOTO 6
  IF ~~ THEN REPLY #45860 /* ~"Je viens récupérer un objet mis en dépôt."~ */ GOTO 9
  IF ~~ THEN REPLY #45861 /* ~"Pourquoi ce lieu s'appelle-t-il Voûte du Neuvième Monde ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45862 /* ~"Ce lieu est-il aussi vaste qu'un monde entier ?"~ */ GOTO 5
  IF ~~ THEN REPLY #45863 /* ~"Ce n'est pas grave. Merci."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 7.4
  SAY #45864 /* ~"Très franchement, je n'en ai pas la moindre idée. Sans doute que ce nom plaisait aux propriétaires."~ */
  IF ~~ THEN REPLY #45865 /* ~"Je voudrais mettre un objet en dépôt."~ */ GOTO 6
  IF ~~ THEN REPLY #45866 /* ~"Je viens récupérer un objet mis en dépôt."~ */ GOTO 9
  IF ~~ THEN REPLY #45867 /* ~"Ce lieu est-il aussi vaste qu'un monde entier ?"~ */ GOTO 5
  IF ~~ THEN REPLY #45868 /* ~"Oh. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 3.3 4.2 7.5
  SAY #45869 /* ~"Non, c'est comme qui dirait une exagération, pour avoir bonne presse. C'est vrai que nous avons de la place, mais pas tant que ça."~ */
  IF ~~ THEN REPLY #45870 /* ~"Je voudrais mettre un objet en dépôt."~ */ GOTO 6
  IF ~~ THEN REPLY #45871 /* ~"Je viens récupérer un objet mis en dépôt."~ */ GOTO 9
  IF ~~ THEN REPLY #45872 /* ~"Pourquoi ce lieu s'appelle-t-il Voûte du Neuvième Monde ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45873 /* ~"Oh. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.0 4.0 5.0 7.2
  SAY #45874 /* ~"Je suis désolé, mais nous sommes pleins à l'heure actuelle. Autre chose ?"~ */
  IF ~~ THEN REPLY #45875 /* ~"Je croyais que cet entrepôt était censé être gigantesque."~ */ GOTO 8
  IF ~~ THEN REPLY #45876 /* ~"Je viens récupérer un objet mis en dépôt."~ */ GOTO 9
  IF ~~ THEN REPLY #45877 /* ~"J'avais d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #45878 /* ~"Non. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 0.3 6.2 8.0 9.7 10.1 12.0 13.1 15.0 16.0 17.0 18.0 19.0 20.0
  SAY #45879 /* ~"Bien sûr ! En quoi puis-je t'être utile ?"~ */
  IF ~~ THEN REPLY #45880 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #45881 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 3
  IF ~~ THEN REPLY #45882 /* ~"Je voudrais mettre un objet en dépôt."~ */ GOTO 6
  IF ~~ THEN REPLY #45883 /* ~"Je viens récupérer un objet mis en dépôt."~ */ GOTO 9
  IF ~~ THEN REPLY #45884 /* ~"Pourquoi ce lieu s'appelle-t-il Voûte du Neuvième Monde ?"~ */ GOTO 4
  IF ~~ THEN REPLY #45885 /* ~"Ce lieu est-il aussi vaste qu'un monde entier ?"~ */ GOTO 5
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45886 /* ~"J'ai entendu dire qu'il était parfois difficile de récupérer les objets que l'on met en dépôt chez toi."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45887 /* ~"Ce n'est pas grave. Merci."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45888 /* ~"Euh… oui." La tête a l'air dans l'embarras. "Mais nous n'avons plus de place et il se passe des choses étranges par ici. Bref, en un mot comme en cent, nous n'acceptons plus aucun objet de nos clients."~ */
  IF ~~ THEN REPLY #45889 /* ~"Oh. Dans ce cas, j'aurais quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #45890 /* ~"Je vois. Alors, au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 4.1 5.1 6.1 7.3 10.0 13.0
  SAY #45891 /* ~"Et qu'est-ce que tu veux exactement ?"~ */
  IF ~  Global("Vault_Gold","GLOBAL",1)
~ THEN REPLY #45892 /* ~"Je cherchais un gros sac plein de pièces."~ */ GOTO 13
  IF ~  Global("Vault_Gold","GLOBAL",0)
~ THEN REPLY #45893 /* ~"Je cherchais un gros sac plein de pièces."~ */ GOTO 14
  IF ~  Global("Pillow_Quest","GLOBAL",3)
~ THEN REPLY #45894 /* ~"J'ai été chargé de récupérer un oreiller pour Hamrys, le fabricant de cercueils."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",4)
GiveItemCreate("DrmPllw",Protagonist,1,0,0)
~ GOTO 17
  IF ~  Global("Plans_Quest","GLOBAL",3)
~ THEN REPLY #45895 /* ~"On m'a dit que je pourrais récupérer le plan d'un tombeau ici."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",4)
GiveItemCreate("TombPlan",Protagonist,1,0,0)
~ GOTO 18
  IF ~  Global("Stolen_Papers","GLOBAL",3)
!Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45896 /* ~"On m'a conseillé de te dire que je venais pour un prêt."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",3)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45897 /* ~"On m'a conseillé de te dire que j'avais réussi à faire rire Tourloupe."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",4)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45898 /* ~"On m'a conseillé de te dire que j'avais réussi à faire rire Tourloupe."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
~ GOTO 20
  IF ~~ THEN REPLY #45899 /* ~"Rien. Par contre, j'aurais quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #45900 /* ~"Rien. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.4 2.1 7.6
  SAY #45901 /* ~"Oui, mes maîtres se posent beaucoup de questions à ce sujet. Ils m'auraient peut-être mis au courant si je n'étais pas juste une tête animée par un sort ! J'ignore totalement ce qu'il a pu advenir de notre espace disponible. Nous sommes ouverts, et tu ne devrais pas avoir de problème pour sortir quoi que ce soit de l'entrepôt. Il suffit de demander."~ */
  IF ~~ THEN REPLY #45902 /* ~"D'accord. Dans ce cas, je voudrais récupérer quelque chose."~ */ GOTO 9
  IF ~~ THEN REPLY #45903 /* ~"Je préférerais plutôt te poser une ou deux questions."~ */ GOTO 7
  IF ~~ THEN REPLY #45904 /* ~"Merci. Je n'y manquerai pas, mais plus tard. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.4 1.5 3.4 4.3 5.3 6.3 7.7 8.1 9.8 10.2 12.1 13.2 15.1 16.1 17.1 18.1 19.1 20.1
  SAY #45905 /* ~"Au revoir ! La Voûte du Neuvième Monde est toujours heureuse d'accueillir ses clients. Reviens-nous vite."~ */
  IF ~~ THEN REPLY #45906 /* ~"Ça, je veux bien le croire !"~ */ EXIT
  IF ~~ THEN REPLY #45907 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Vault_Attack","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #45908 /* ~"Je suis désolé. Ne passe pas tes nerfs sur ma tête, je t'en prie."~ */
  IF ~~ THEN REPLY #45909 /* ~"Bien. J'aurais juste quelques questions à te poser…"~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 7
  IF ~~ THEN REPLY #45910 /* ~"Bien. Au revoir."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #45911 /* ~"Je suis sincèrement désolé, monsieur, mais cet article a déjà été réclamé. Désires-tu autre chose ?"~ */
  IF ~~ THEN REPLY #45912 /* ~"Oui."~ */ GOTO 9
  IF ~~ THEN REPLY #45913 /* ~"Non. Réponds seulement à mes questions."~ */ GOTO 7
  IF ~~ THEN REPLY #45914 /* ~"Non. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #45915 /* ~"Nous avons un sac de pièces similaire à celui que tu me décris. Je dois juste te demander quelle somme se trouvait à l'intérieur."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #45916 /* ~Sans savoir comment, tu as la sensation que ton estimation est juste : "1 123 pièces."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #45918 /* ~Sans savoir comment, tu as la sensation que ton estimation est juste : "1 123 pièces."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #45930 /* ~Sans savoir comment, tu as la sensation que ton estimation est juste : "1 123 pièces."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~~ THEN REPLY #45937 /* ~Estimation : "1 000 pièces."~ */ GOTO 16
  IF ~~ THEN REPLY #45938 /* ~Estimation : "500 pièces."~ */ GOTO 16
  IF ~~ THEN REPLY #45940 /* ~Estimation : "750 pièces."~ */ GOTO 16
  IF ~~ THEN REPLY #45943 /* ~Estimation : "331 pièces."~ */ GOTO 16
  IF ~~ THEN REPLY #45945 /* ~Estimation : "2 112 pièces."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #45917 /* ~"Voilà, monsieur ! Merci d'avoir fait confiance à la Voûte du Neuvième Monde ! Autre chose pour ton service ?"~ */
  IF ~~ THEN REPLY #45984 /* ~"Réponds encore à quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #45986 /* ~"Non, merci. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.4 14.5 14.6 14.7
  SAY #45948 /* ~"Toutes mes excuses, monsieur ! Il ne s'agit manifestement pas de ton sac de cuivre ! Puis-je te trouver autre chose ?"~ */
  IF ~~ THEN REPLY #45950 /* ~"Réponds à d'autres questions pour moi…"~ */ GOTO 7
  IF ~~ THEN REPLY #45952 /* ~"Non, merci. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY #45954 /* ~"Un oreiller ? Moi aussi, j'en aurais bien besoin… s'il était en PIERRE ! Tiens, Maître Hamrys, et fais de beaux rêves. Autre chose ?"~ */
  IF ~~ THEN REPLY #45957 /* ~"Réponds encore à quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #45959 /* ~"Non, merci. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 9.3
  SAY #45962 /* ~"Un plan de tombeau ? Tu n'as pourtant pas l'air mort… mais si tu l'es, ça ne me regarde en rien, bien sûr. Tiens, voici ton plan. Autre chose ?"~ */
  IF ~~ THEN REPLY #45965 /* ~"Réponds encore à quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #45978 /* ~"Non, merci. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 9.4
  SAY #45990 /* ~"Oh, un de mes mots de passe secrets ! Voici les papiers que tu voulais. Que puis-je faire d'autre pour toi ?"~ */
  IF ~~ THEN REPLY #45991 /* ~"Réponds à d'autres questions pour moi…"~ */ GOTO 7
  IF ~~ THEN REPLY #45992 /* ~"Non, merci. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 9.5 9.6
  SAY #45993 /* ~"Je l'espère, monsieur… quoi que ça puisse vouloir dire. Moi, je ne suis qu'une tête sans cervelle, tu sais. Tiens, tes papiers ! Merci. Que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #45994 /* ~"Réponds encore à quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #45995 /* ~"Non, merci. Au revoir."~ */ GOTO 11
END
