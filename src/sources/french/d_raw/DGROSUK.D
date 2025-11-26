// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGROSUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGROSUK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36054 /* ~Tu aperçois une créature reptilienne possédant un corps de serpent, quatre pieds griffus, des ailes de cuir et une tête de dragon. Les écailles qui couvrent son corps sont d'une ignoble couleur verte. La créature se tient droite sur ses pattes arrière, en s'équilibrant avec sa queue préhensile. Alors que tu t'approches, elle plisse les yeux et se met à siffler.~ */
  IF ~~ THEN REPLY #36055 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36056 /* ~Ignore la créature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36057 /* ~Autour de la créature, la chaleur commence à irradier, et ses écailles prennent un éclat pâle. Elle te jette un regard affamé, et paraît prête à frapper. Elle lâche soudain une série de sifflements et se relaxe. "Sssssss ! Pars. Grossssuk pas parler, doit attendre… Ssssssss…" Elle te jette un regard mauvais, alors que sa queue frappe d'avant en arrière.~ */
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36058 /* ~"C'est Sébastion qui m'envoie."~ */ GOTO 2
  IF ~~ THEN REPLY #36059 /* ~"Quel genre de créature es-tu ?"~ */ GOTO 10
  IF ~~ THEN REPLY #36060 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.1 12.1
  SAY #36061 /* ~La créature se relâche quelque peu et l'air refroidit. Elle te tend une main griffue. "Ssssss. Donne informations Grosssuk." Il te regarde, attendant quelque chose.~ */
  IF ~~ THEN REPLY #36062 /* ~"Quelles informations ?"~ */ GOTO 3
  IF ~~ THEN REPLY #36063 /* ~"Non, Sébastion m'a envoyé te tuer."~ */ GOTO 9
  IF ~~ THEN REPLY #36064 /* ~"Je ne les ai pas, je vais les chercher. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36065 /* ~Il est difficile de lire les expressions faciales sur un reptile, mais tu es sûr que Grosuk a l'air mécontent de toi. Sa queue bat furieusement l'air, et l'air se réchauffe. "Pas de quessssstions. Donne informations Grosssuk ou meurs. Grosssuk les prendre du corps."~ */
  IF ~~ THEN REPLY #36066 /* ~"Il faut que je sache quelles informations sont pour toi. Je fais des commissions pour plusieurs personnes, tu comprends."~ */ GOTO 4
  IF ~~ THEN REPLY #36067 /* ~"En fait, Sébastion m'a envoyé te tuer."~ */ GOTO 9
  IF ~~ THEN REPLY #36068 /* ~"Je ne les ai pas, je vais les chercher. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36069 /* ~Il te regarde pendant quelques instants en réfléchissant à tes propos. Finalement, il fait un geste en direction de la tour toute proche. "Tour de sssiège. Ssssss. Comment aller dedansss. Sssébastion dit qu'il a une sssolution…" Grosuk s'avance vers toi et tend la main. "Maintenant donne !"~ */
  IF ~~ THEN REPLY #36070 /* ~"Ah, cette information-là ! Excuse-moi, mais Sébastion veut te la remettre en personne. Il va bientôt arriver."~ */ JOURNAL #66527 /* ~Grosuk, l'abishaï, cherche le moyen de pénétrer dans la tour de siège proche du marché en plein air. Je me demande ce qu'elle a de si important, cette tour.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36072 /* ~Autour de la créature, la chaleur commence à irradier, et ses écailles prennent un éclat pâle. Elle te jette un regard affamé, et paraît prête à frapper. Elle ouvre sa bouche, qui révèle plusieurs rangées de dents acérées. "Non… Grosssuk pense tu mens ! Donne informations maintenant, Grosssuk tuera rapide. Pas lent. Donne pas, Grosssuk prendre temps. Vider toi. Toi regarder !"~ */
  IF ~~ THEN REPLY #36073 /* ~"Attends, je n'ai pas les informations que tu me demandes, mais je sais quelque chose qui, d'après moi, vaut bien ma vie."~ */ GOTO 6
  IF ~~ THEN REPLY #36074 /* ~"Bien, de toute façon, Sébastion m'a envoyé te tuer."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36075 /* ~Grosuk incline la tête d'un côté et te jette un regard mauvais. Il semble un instant perdu dans ses pensées. "Grosssuk écoute. Informations bonnes, tu vis." Il te fait un sourire de toutes ses dents. "Pas bonnes, tu meurs. Grosssuk jure."~ */
  IF ~~ THEN REPLY #36076 /* ~"Sébastion ne peut pas respecter ton contrat. Il m'a envoyé te tuer."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~J'ai dit à Grosuk que Sébastion m'avait chargé de le tuer. Ce n'est sans doute pas ce que je pouvais faire de plus honorable mais, au moins, ça m'a sauvé la vie.~ */ GOTO 7
  IF ~~ THEN REPLY #36077 /* ~"Comment je peux savoir que tu tiendras parole ?"~ */ GOTO 8
  IF ~~ THEN REPLY #36078 /* ~"Laisse tomber, de toute façon, Sébastion m'a envoyé te tuer."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #36079 /* ~Grosuk te fixe pendant un moment, puis lâche une série de sifflements de frustration. Il serre ses griffes et sa queue bat d'avant en arrière. Tu remarques qu'un dard piquant apparaît parfois au bout de sa queue. "Oui. Informations bonnes. Grosssuk jure, tu vis. Grosssuk remercie. Grosssuk va maintenant, parler à Sssssébassstion."~ */
  IF ~~ THEN REPLY #36080 /* ~"Au revoir."~ */ DO ~SetGlobal("SNUFF_GROSUK","GLOBAL",5)
StartCutSceneMode()
StartCutSceneEx("0500cut5",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #36081 /* ~La créature te jette un regard mauvais. "Ce pacte, toi et Grosssuk. Grosssuk utiliser pactes. Maintenant, tu parles."~ */
  IF ~~ THEN REPLY #36082 /* ~"Sébastion ne peut pas respecter ton contrat. Il m'a envoyé te tuer."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~J'ai dit à Grosuk que Sébastion m'avait chargé de le tuer. Ce n'est sans doute pas ce que je pouvais faire de plus honorable mais, au moins, ça m'a sauvé la vie.~ */ GOTO 7
  IF ~~ THEN REPLY #36083 /* ~"Laisse tomber, de toute façon, Sébastion m'a envoyé te tuer."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1
  SAY #36084 /* ~Sans hésiter, la créature s'élance sur toi.~ */
  IF ~~ THEN REPLY #36085 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.1
  SAY #36086 /* ~Chaque muscle de la créature semble se contracter alors qu'elle lâche une série de sifflements. Elle s'approche de toi, puis s'arrête. La haine coule de ses yeux. "Grosssuk pas parler. Sssssssssss. Toi chanceux humain. Pars tant que chanceux. Toi ressssster, Grosssuk découper !"~ */
  IF ~~ THEN REPLY #36087 /* ~Sarcasme : "Grossssssuk pas parler ? Grosssssuk dit ssssûrement beaucoup de chosssses pour quelqu'un qui ne parle pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grosuk_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36088 /* ~"C'est Sébastion qui m'envoie."~ */ GOTO 2
  IF ~~ THEN REPLY #36089 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36090 /* ~Grosuk incline la tête d'un côté et te fixe, les yeux écarquillés. Un instant après, il plisse les yeux et son corps commence à trembler alors que ses muscles se tendent. Tu entends un craquement, et en regardant par terre, tu remarques que ses griffes se sont enfoncées dans le sol pierreux. L'air autour de la créature est chargé et semble presque luire. "Pars… maintenant. Ssssssssssssss !"~ */
  IF ~~ THEN REPLY #36091 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #36092 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #36093 /* ~Tu aperçois Grosuk, l'abishaï. Il paraît presque ennuyé par ta présence. "Ssssssss… Tu reviens. Pars. Grosssuk tuer."~ */
  IF ~~ THEN REPLY #36094 /* ~"Tu n'es pas la plus sympathique des créatures, hein ?"~ */ GOTO 13
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36095 /* ~"C'est Sébastion qui m'envoie."~ */ GOTO 2
  IF ~~ THEN REPLY #36096 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36097 /* ~Grosuk te fixe, contractant ses griffes. Il plisse les yeux et se penche pour te regarder en face. "Non, Grosssuk pas ami. Pars maintenant !"~ */
  IF ~~ THEN REPLY #36098 /* ~"Bien, au revoir."~ */ EXIT
END
