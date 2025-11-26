// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #35792 /* ~Tu aperçois un commissaire-priseur frénétique. Il s'agite en tous sens et ne cesse de crier, d'appeler et de taper du pied. Il semble avoir une certaine tendance à exagérer jusqu'au mélodrame en levant les bras, et son visage reflète diverses expressions étranges…~ */
  IF ~~ THEN REPLY #35834 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #35835 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #35793 /* ~Il te jette un coup d'œil et indique à la foule qu'il va prendre une pause. "Permets-moi de te souhaiter mille fois la bienvenue !" Il marque un temps d'arrêt lorsqu'il remarque tes cicatrices. "Tu sais, d'un seul regard de mon œil avisé, je peux voir un homme qui a besoin de charmes de guérison."~ */
  IF ~~ THEN REPLY #35836 /* ~"Tu as des charmes ?"~ */ GOTO 2
  IF ~~ THEN REPLY #35837 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35838 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35794 /* ~Il te regarde, choqué, et gesticule. "Est-ce que moi, Deran, j'ai des charmes ?" Il s'arrête pour marquer ses propos. "Non, je n'en ai pas, je n'en ai pas… mais il ne faut pas que ça te décourage. J'ai beaucoup d'autres articles à vendre." Il t'indique le fond de la salle, où un groupe de personnes est enchaîné.~ */
  IF ~~ THEN REPLY #35839 /* ~"Tu vends des esclaves ?"~ */ GOTO 3
  IF ~~ THEN REPLY #35840 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #35841 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 22.0
  SAY #35795 /* ~Il secoue la tête. "Non, ce sont des serviteurs en cours d'apprentissage, pas des esclaves. Ils sont pour la plupart coupables de petits crimes. La recette de leur vente sert à payer leur dette envers la cité. Après l'échéance de leur servitude, ils seront à nouveau de libres citoyens."~ */
  IF ~~ THEN REPLY #35842 /* ~Vérité : "Moi, j'appelle ça de l'esclavage."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Deran_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #35843 /* ~Vérité : "Ça semble être un bon moyen de leur faire payer leur dette envers la société."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deran_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #35844 /* ~Vérité : "Peu importe, ça ne m'intéresse pas vraiment."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #35796 /* ~Il te fait un sourire éclatant. "Je ne me tracasse pas avec ces choses-là. Ma tâche consiste à vendre leurs contrats comme convenu avec les tribunaux de Sigil." Il baisse le ton et se penche pour se rapprocher. "Et ramasser un pourcentage pour mes efforts, comprends-tu." Il se redresse.~ */
  IF ~~ THEN REPLY #35845 /* ~"Tu as dit qu'ils étaient coupables de crimes. Quels crimes ont-ils commis ?"~ */ GOTO 6
  IF ~~ THEN REPLY #35846 /* ~"J'ai des questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #35847 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #35803 /* ~Nœud nul.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #35801 /* ~Il hausse les épaules de manière exagérée. "Je n'en suis pas sûr, mais j'imagine que ça peut être un vol, une agression ou des dettes non honorées. Ce sont les infractions les plus courantes."~ */
  IF ~~ THEN REPLY #35848 /* ~"Je vois… J'ai quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #35849 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1 4.1 6.0 8.1 14.3 15.3 16.2 17.2 18.2 19.0 20.0 22.1
  SAY #35802 /* ~Il secoue la tête. "Pas le temps pour ça, l'ami. Il y a des affaires à traiter ! Parle vite !"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #35850 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 8
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #35851 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35852 /* ~"Je veux te questionner sur Trist."~ */ GOTO 23
  IF ~~ THEN REPLY #35853 /* ~"Qui es-tu ?"~ */ GOTO 22
  IF ~~ THEN REPLY #35854 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 14
  IF ~~ THEN REPLY #35855 /* ~"Qu'est-ce que tu peux me dire sur Sigil ?"~ */ GOTO 19
  IF ~~ THEN REPLY #35856 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 13.0
  SAY #35804 /* ~Il te jette un regard faussement inquiet. "Ça serait dangereux de te le dire, l'ami… Je n'ai aucune envie de te mettre en péril."~ */
  IF ~~ THEN REPLY #35857 /* ~"Il se trouve que j'aime le danger. Mets-moi en péril."~ */ GOTO 9
  IF ~~ THEN REPLY #35858 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35859 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35805 /* ~Il éclate d'un rire frénétique. "Très bien, l'ami. Lothar est le Maître, le seigneur, des célèbres Os de la nuit. La bibliothèque où les morts eux-mêmes ont l'habitude de livrer leurs mystères. Tous les morts de Sigil et des plans murmurent des secrets dans son Salon des Crânes."~ */
  IF ~~ THEN REPLY #35860 /* ~"Où se trouve cet endroit ?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35806 /* ~"Essaie au sud-est du marché du quartier… tu tomberas peut-être sur un bâtiment en ruines, et tu trouveras peut-être une échelle d'os qui mène vers le bas, qui pourrait être l'échelle qui mène au Salon des Crânes."~ */
  IF ~~ THEN REPLY #35861 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #35862 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #35807 /* ~Il sourit. "Nan, l'ami, je n'ai plus de réponses pour toi. J'ai parlé plus que je ne devrais d'affaires que je ne devrais pas mentionner. Je dois m'en retourner aux besoins de mes clients." Il se détourne de toi.~ */
  IF ~~ THEN REPLY #35863 /* ~"Je vois. Au revoir."~ */ DO ~SetGlobal("Deran_Questions","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #35808 /* ~"Un crâne ?" Il paraît troublé. "Il n'y a pas une grande demande pour ça, en tout cas pour ceux qui sont séparés de leur corps…" Il fronce les sourcils, puis se tourne vers toi, baissant nettement le ton. "À moins que bien sûr…"~ */
  IF ~~ THEN REPLY #35864 /* ~"Continue…"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #35809 /* ~"Eh bien, une histoire de crânes disparus peut être une affaire sérieuse, une affaire très sérieuse. Tu vois, si quelqu'un cherche à faire le commerce de crânes, ça ne peut intéresser que l'élite de Sigil…" Il s'interrompt. "Et c'est un pari facile que de penser que l'une de ces personnes est…" Il jette un coup d'œil à droite, puis à gauche, puis te regarde d'un air de conspirateur. "… Lothar, le Maître des os en personne !"~ */
  IF ~~ THEN REPLY #36237 /* ~"Parle-moi de ce Lothar."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 7.4
  SAY #35810 /* ~Il gesticule pour indiquer les alentours. "Ici, c'est le Bas Quartier. Domaine des gens ordinaires et de pas grand-chose d'autre d'intéressant. Les seules choses qui méritent d'être mentionnées sont la Fonderie, le marché en plein air et la tour de siège."~ */
  IF ~~ THEN REPLY #35865 /* ~"Parle-moi de la Fonderie."~ */ GOTO 15
  IF ~~ THEN REPLY #35866 /* ~"Parle-moi de la tour de siège."~ */ GOTO 17
  IF ~~ THEN REPLY #35867 /* ~"Parle-moi du marché en plein air."~ */ GOTO 18
  IF ~~ THEN REPLY #35868 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35869 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0 18.0
  SAY #35811 /* ~Il ouvre grand les bras et regarde en direction du ciel. "L'atelier de toute création, où l'acier et l'âme d'une personne forment une pièce d'art et où la création elle-même peut être changée…" Il se retourne vers toi. "C'est ce que pensent les Hommes-Dieux."~ */
  IF ~~ THEN REPLY #35870 /* ~"Les Hommes-Dieux ?"~ */ GOTO 16
  IF ~~ THEN REPLY #35871 /* ~"Parle-moi de la tour de siège."~ */ GOTO 17
  IF ~~ THEN REPLY #35872 /* ~"Parle-moi du marché en plein air."~ */ GOTO 18
  IF ~~ THEN REPLY #35873 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35874 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #35812 /* ~Il sourit. "Une noble faction - tous peuvent devenir dieux, s'ils en apprennent assez durant leurs vies, qu'ils mûrissent, se développent et deviennent de meilleurs esprits ! Penses-tu qu'il existe une faction plus noble ?"~ */
  IF ~~ THEN REPLY #35875 /* ~"Parle-moi de la tour de siège."~ */ GOTO 17
  IF ~~ THEN REPLY #35876 /* ~"Parle-moi du marché en plein air."~ */ GOTO 18
  IF ~~ THEN REPLY #35877 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35878 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1 16.0 18.1
  SAY #35813 /* ~"Un véritable mystère, même pour moi. C'est tout simplement apparu un beau jour. Personne ne peut y entrer et rien n'en est jamais sorti."~ */
  IF ~~ THEN REPLY #35879 /* ~"Parle-moi de la Fonderie."~ */ GOTO 15
  IF ~~ THEN REPLY #35880 /* ~"Parle-moi du marché en plein air."~ */ GOTO 18
  IF ~~ THEN REPLY #35881 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35882 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2 15.2 16.1 17.1
  SAY #35814 /* ~"Le marché se trouve au sud, et pourvoit à presque toutes les nécessités. Je te recommande de le visiter."~ */
  IF ~~ THEN REPLY #35883 /* ~"Parle-moi de la Fonderie."~ */ GOTO 15
  IF ~~ THEN REPLY #35884 /* ~"Parle-moi de la tour de siège."~ */ GOTO 17
  IF ~~ THEN REPLY #35885 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35886 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #35815 /* ~Il rit et écarte les bras comme pour embrasser toute la cité. "La glorieuse cité d'or, la cité d'où partent toutes les portes…" Il sourit et remue les sourcils. "… et où mènent toutes les portes ! On ne peut pas te raconter Sigil, tu dois faire l'expérience de Sigil !"~ */
  IF ~~ THEN REPLY #35887 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35888 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #35816 /* ~Tu aperçois Deran le commissaire-priseur. Il sourit à ton approche. "Rebonjour ! Que puis-je faire pour toi en cette glorieuse journée embrumée ?"~ */
  IF ~  !Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35889 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~  Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35890 /* ~"J'ai quelques questions…"~ */ GOTO 21
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35891 /* ~"Je veux te questionner sur Trist."~ */ GOTO 23
  IF ~~ THEN REPLY #35892 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #35817 /* ~Il te sourit tristement. "Je ne répondrai plus à tes questions. Je nous ai déjà mis tous deux en danger, et je ne vois pas pourquoi je devrais continuer dans cette voie…"~ */
  IF ~~ THEN REPLY #35893 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.3
  SAY #35818 /* ~"Mon nom est Deran, l'ami ! Est-il possible que tu n'aies pas entendu parler de moi ? Ça me blesse, vraiment !" Il sourit encore plus à la blessure imaginaire. "Tu ne trouveras ni meilleur ni plus renommé dans l'art de rapprocher les gens." Il pointe vers l'arrière de la vente aux enchères, où un groupe de personnes est enchaîné. "Veux-tu quelqu'un, l'ami ?"~ */
  IF ~~ THEN REPLY #35894 /* ~"Tu vends des esclaves ?"~ */ GOTO 3
  IF ~~ THEN REPLY #35895 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #35896 /* ~"Non merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.2 20.2
  SAY #35819 /* ~Il fronce les sourcils un instant, puis hausse les épaules. "Très bien. Que veux-tu savoir à propos de Trist ?"~ */
  IF ~~ THEN REPLY #35897 /* ~"Je peux acheter son contrat ?"~ */ GOTO 24
  IF ~~ THEN REPLY #35898 /* ~"Elle dit qu'elle n'a aucune raison d'être là."~ */ GOTO 31
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35899 /* ~"J'ai la preuve qu'elle est innocente."~ */ GOTO 33
  IF ~~ THEN REPLY #35900 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #35820 /* ~Il fronce les sourcils. "Certainement… si tu réponds aux conditions énoncées par les tribunaux de Sigil, et que tu peux te permettre le contrat." Il te sourit.~ */
  IF ~~ THEN REPLY #35901 /* ~"Quelles sont ces conditions ?"~ */ GOTO 25
  IF ~~ THEN REPLY #35902 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 27.0
  SAY #35821 /* ~Il commence à compter les points sur les doigts d'une main. "Premièrement, tu dois être citoyen de Sigil. Deuxièmement, tu dois avoir des justificatifs de domicile et tu dois prouver que tu peux fournir le gîte et le repas à ton serviteur. Et tu dois avoir un casier judiciaire vierge."~ */
  IF ~~ THEN REPLY #35903 /* ~"Je vois… Combien vaut son contrat ?"~ */ GOTO 26
  IF ~~ THEN REPLY #35904 /* ~"Et si je prouve qu'elle est innocente des crimes dont elle est accusée ?"~ */ GOTO 28
  IF ~~ THEN REPLY #35905 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #35822 /* ~Il te fait un large sourire puis fait un geste à l'attention de la foule avoisinante. "Je démarrerai les enchères à cinq cents pièces de cuivre."~ */
  IF ~~ THEN REPLY #35906 /* ~"Et si je veux l'acheter sans passer par les enchères ?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #35823 /* ~Il te regarde l'air faussement triste et secoue la tête. "Elle sera adjugée à la personne qui placera l'enchère la plus haute. C'est la loi."~ */
  IF ~~ THEN REPLY #35907 /* ~"Je vois… Quelles sont les conditions requises pour acheter un serviteur ?"~ */ GOTO 25
  IF ~~ THEN REPLY #35908 /* ~"Et si je prouve qu'elle est innocente des crimes dont elle est accusée ?"~ */ GOTO 28
  IF ~~ THEN REPLY #35909 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.1 27.1 31.0
  SAY #35824 /* ~Il rit et te regarde d'un air moqueur. "En tant qu'agent des tribunaux, je pourrais paraître devant eux avec de nouvelles preuves et annuler les verdicts à l'encontre de Trist. Possèdes-tu de telles preuves ?"~ */
  IF ~~ THEN REPLY #35910 /* ~"Pas pour le moment."~ */ GOTO 29
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35911 /* ~"Oui."~ */ GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #35825 /* ~Il acquiesce. "As-tu l'intention de rechercher de telles preuves pour Trist ?"~ */
  IF ~~ THEN REPLY #35912 /* ~"Oui."~ */ GOTO 30
  IF ~~ THEN REPLY #35913 /* ~"Je ne sais pas…"~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #35826 /* ~Il te fixe pendant un instant, essayant de juger de ton sérieux. "Très bien. Je ne mettrai donc pas Trist aux enchères pour l'instant. Je te souhaite bonne chance dans ta quête. Maintenant, laisse-moi et mets-toi au travail."~ */
  IF ~~ THEN REPLY #35914 /* ~"Merci, au revoir."~ */ JOURNAL #66524 /* ~J'ai parlé à Deran, le commissaire-priseur, au sujet de Trist. Je lui ai dit que j'entendais faire la preuve de l'innocence de cette dernière, et il a accepté d'attendre avant de la mettre aux enchères.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY #35827 /* ~Il soupire, puis se renfrogne. "Ne dirais-tu pas la même chose si tu étais à sa place ?" Il secoue la tête. "J'ai écouté son histoire. Bien que j'aie de la compassion pour elle, sans preuves, je ne peux rien faire pour l'appuyer."~ */
  IF ~~ THEN REPLY #35915 /* ~"Et si je prouve qu'elle est innocente ?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY #35797 /* ~Il secoue la tête. "Alors tu perds ton temps et le mien avec cette conversation."~ */
  IF ~~ THEN REPLY #35916 /* ~"Très bien, je compte l'aider."~ */ GOTO 30
  IF ~~ THEN REPLY #35917 /* ~"Tu as raison, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.2 28.1
  SAY #35798 /* ~Il fait un large sourire, puis se met à rire. "Très bien, montre-moi ces preuves." Il tend la main.~ */
  IF ~~ THEN REPLY #35918 /* ~Donne-lui le document.~ */ DO ~DestroyItemObject("loandoc",Protagonist,FALSE)
SetGlobal("Trist_Quest","GLOBAL",4)
AddexperienceParty(4000)
~ GOTO 34
  IF ~~ THEN REPLY #35919 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #35799 /* ~Il ouvre les documents et les parcourt rapidement. Après un moment, il soupire, puis place les documents à l'intérieur de sa chemise. "Il semble que la cour doive des excuses à Dame Trist. Elle est désormais libre et je ferai en sorte que son statut et ses biens lui soient restitués."~ */
  IF ~~ THEN REPLY #35920 /* ~"Merci, Deran."~ */ JOURNAL #66525 /* ~J'ai donné à Deran le document de prêt de Trist. Il a accepté de la libérer et de veiller à ce que toutes ses prérogatives lui soient rendues.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #35800 /* ~"Non, merci à toi. Il est rare que quelqu'un fasse ce que tu as fait." Il s'incline devant toi. "Excuse-moi, je dois m'entretenir avec Dame Trist. Au revoir." Il se met à marcher en direction de Trist.~ */
  IF ~~ THEN REPLY #35921 /* ~"Au revoir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ EXIT
END
