// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCINDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCINDER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34264 /* ~Tu aperçois un gros marchand à l'air coléreux. Il semble être totalement glabre et sa peau jaune et pâle est couverte de cicatrices ressemblant à des vestiges de brûlures. Il te regarde intensément alors que tu t'approches.~ */
  IF ~~ THEN REPLY #34265 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #34266 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34267 /* ~Il te sourit. "Bonjour, j'suis Cendre. J'ai entendu parler d'toi. T'es l'béjaune couvert de cicatrices qui s'promène en posant des questions dans tous les Quartiers. En quoi j'peux t'aider ?"~ */
  IF ~~ THEN REPLY #34268 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34269 /* ~"Tu as l'air d'avoir quelques cicatrices toi aussi."~ */ GOTO 13
  IF ~~ THEN REPLY #34270 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 5.0 9.0 10.0 13.1 14.1 15.0 16.0 17.1 18.2 20.1 21.2 22.2 23.1 24.2 25.1 26.1 28.1
  SAY #34271 /* ~"J'répondrais volontiers à tes questions…" Il plisse les yeux et te fait un sourire entendu. "À propos d'la boutique et des articles que tu vois là, j'veux dire. J'suis pas un rabatteur, moi."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34272 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34273 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 4
  IF ~~ THEN REPLY #34274 /* ~"Je voudrais acheter des armes."~ */ GOTO 9
  IF ~~ THEN REPLY #34275 /* ~"Je voudrais acheter des objets magiques."~ */ GOTO 10
  IF ~~ THEN REPLY #34276 /* ~"Ce sont les sorts qui m'intéressent."~ */ GOTO 11
  IF ~~ THEN REPLY #34277 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #34278 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34279 /* ~Il fronce les sourcils, réfléchissant. "Lothar… Maître des… Nan, j'peux pas dire qu'ça m'dit quelque chose."~ */
  IF ~~ THEN REPLY #34280 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34281 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #34282 /* ~Il fronce les sourcils. "Un crâne ? Tu veux dire… un crâne ?"~ */
  IF ~~ THEN REPLY #34283 /* ~"Oui, un crâne."~ */ GOTO 5
  IF ~~ THEN REPLY #34284 /* ~"Non, je te fais marcher."~ */ GOTO 6
  IF ~~ THEN REPLY #34285 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34286 /* ~Il te regarde d'un air troublé. "J'vois pas pourquoi tu voudrais un crâne, et encore moins pourquoi un bige te le volerait."~ */
  IF ~~ THEN REPLY #34287 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34288 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #34289 /* ~Il te regarde d'un air agacé. "J'crois qu'on parle visiblement d'deux choses différentes, matois. Reviens quand tu auras sérieusement besoin d'faire des affaires."~ */
  IF ~~ THEN REPLY #34290 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #34291 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #34292 /* ~Il paraît en colère. "J'me fiche de tes questions. Est-ce que tu veux *acheter* quelque chose ? J'ai pas toute la vie d'vant moi pour répondre à tes questions. Si t'as besoin d'causer, parle à ce fainéant d'Lazlo. C'gars te parlera pendant des heures des Grands Anneaux, si tu lui en donnes l'occasion."~ */
  IF ~~ THEN REPLY #34293 /* ~"Lazlo ?"~ */ GOTO 8
  IF ~~ THEN REPLY #34294 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34295 /* ~Il acquiesce. "D'habitude, il s'occupe du fourneau."~ */
  IF ~~ THEN REPLY #34296 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #34297 /* ~Il indique le marché. "C'est Anze que tu cherches, dans ce cas-là. Sa guitoune s'trouve du côté du fourneau."~ */
  IF ~~ THEN REPLY #34298 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34299 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #34300 /* ~Il indique le marché. "C'est Anze que tu cherches, dans ce cas-là. Il plante sa guitoune au bout, du côté du fourneau."~ */
  IF ~~ THEN REPLY #34301 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34302 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.4 16.1
  SAY #34303 /* ~Il sourit. "J'crois qu'j'peux t'aider. Laisse-moi t'montrer mes articles."~ */
  IF ~~ THEN REPLY #34304 /* ~"D'accord."~ */ DO ~StartStore("Cindstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34305 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #34306 /* ~Nœud nul~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #34310 /* ~Il fronce les sourcils, puis se met à rire. "Ça, ouais. Y'a quelques années d'ça, j'avais ma guitoune dans la Ruche. Une espèce de mage azimuté a décidé d'incendier l'quartier juste en dehors de Sigil. Il m'a presque cramé par la même occasion. Malade pendant un mois, qu'j'étais."~ */
  IF ~~ THEN REPLY #34311 /* ~"Un mois ? Ce n'est pas si long que ça."~ */ GOTO 14
  IF ~~ THEN REPLY #34312 /* ~"Je vois. J'ai quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #34313 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34314 /* ~Il acquiesce et paraît prendre du recul pendant un instant. "Ouais, ça pourrait être pire. L'mage local m'a guéri, il a soigné mes cicatrices et tout l'reste. Il aurait pu m'faire repousser les poils, mais j'crois qu'j'aime mieux comme ça."~ */
  IF ~~ THEN REPLY #34315 /* ~"Tu penses que ce mage pourrait faire quelque chose pour mes cicatrices ?"~ */ GOTO 15
  IF ~~ THEN REPLY #34316 /* ~"Je vois. J'ai quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #34317 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34318 /* ~Il te regarde pendant un instant, puis hausse les épaules. "J'vois pas c'qui l'en empêcherait. Tes cicatrices ont pas l'air trop vilaines…" Il te regarde d'un peu plus près. "Ouais, qui peut dire. Tu d'vrais lui parler toi-même. Il s'appelle Sébastion, et il a sa guitoune près d'la fonderie."~ */
  IF ~~ THEN REPLY #34319 /* ~"C'est ce que je vais faire. J'ai quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #34320 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #34321 /* ~Cendre te sourit. "D'retour, hein ? Qu'est-ce que j'peux t'montrer cette fois-ci ?"~ */
  IF ~~ THEN REPLY #34322 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34323 /* ~"J'ai besoin de sorts."~ */ GOTO 11
  IF ~~ THEN REPLY #34324 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.5
  SAY #34325 /* ~Il indique les alentours d'un air fier. "C'est l'marché en plein air, l'un des meilleurs endroits de Sigil pour les courses. C'est ta bonne étoile qui t'envoie ici, matois. On a un étal libre." Il indique l'étal jouxtant le sien. "Si tu veux devenir toi aussi un marchand, tu peux installer ta guitoune et troquer avec nous autres, tant que tu fais pas trop de raffut et que tu nous casses pas trop les pieds…"~ */
  IF ~~ THEN REPLY #34326 /* ~"Pourquoi est-ce que ce stand est vide ?"~ */ GOTO 18
  IF ~~ THEN REPLY #34327 /* ~"Je m'en souviendrai. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34328 /* ~"Merci, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34329 /* ~Il jette un œil à l'étal libre. "Un marchand du nom d'Zac avait sa guitoune ici. Il s'est inscrit au livre des morts, il y a pas longtemps." Il fronce les sourcils. "Ouais, une étrange histoire."~ */
  IF ~~ THEN REPLY #34330 /* ~"Pourquoi étrange ?"~ */ GOTO 19
  IF ~~ THEN REPLY #34331 /* ~"Le Livre des morts ?"~ */ GOTO 25
  IF ~~ THEN REPLY #34332 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34333 /* ~"Merci, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 25.0
  SAY #34334 /* ~Il réfléchit pendant un instant. "Ben… J'connais pas tout l'soltif, mais Zac avait quelques problèmes avec son affaire, et il avait besoin d'argent. Il a emprunté chez Byron Tourloupe, l'usurier. Après ça, Tourloupe a essayé d'prendre l'affaire de Zac, mais il a refusé." Il s'interrompt.~ */
  IF ~~ THEN REPLY #34335 /* ~"Continue."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #34336 /* ~Il soupire et secoue la tête. "Pas longtemps après ça, Zac s'est r'trouvé mort. Tourloupe a traîné sa veuve, Trist, devant les tribunaux, pour essayer de récupérer l'jonc que Zac lui devait. Elle disait que la dette avait été payée, et qu'elle avait les papiers pour l'prouver… mais ils ont disparu."~ */
  IF ~~ THEN REPLY #34337 /* ~"Et qu'est-ce qui s'est passé ?"~ */ GOTO 21
  IF ~~ THEN REPLY #34338 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34339 /* ~"Merci, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34340 /* ~Il hausse les épaules. "Puisque y'avait pas d'preuve qu'la dette avait été payée, l'affaire a été vendue, et la veuve Trist a été tenue pour responsable du reste de la dette. Elle a pas pu payer, alors ils l'ont mise au bloc."~ */
  IF ~~ THEN REPLY #34341 /* ~"Le bloc ?"~ */ GOTO 22
  IF ~~ THEN REPLY #34342 /* ~"Tu as parlé de papiers qui avaient disparu."~ */ JOURNAL #31880 /* ~Le bruit court qu'un dénommé Byron Tourloupe trempe dans des affaires louches. À ce qu'il paraît, il a tué un marchand du nom de Zac et dérobé des documents chez sa veuve, Trist. Sans ces documents, Trist ne peut pas prouver qu'elle a remboursé certains prêts et elle sera vendue en tant qu'esclave en remboursement de la dette. Je vais peut-être m'occuper de cette affaire.~ */ GOTO 24
  IF ~~ THEN REPLY #34343 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34344 /* ~"Merci, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #34345 /* ~"Ouais, l'bloc des enchères. Si tu peux pas payer tes dettes, on t'vend pour servir quelques années d'châtiment." Il secoue tristement la tête.~ */
  IF ~~ THEN REPLY #34346 /* ~"Où se trouve le bloc ?"~ */ GOTO 23
  IF ~~ THEN REPLY #34347 /* ~"Tu as parlé de papiers qui avaient disparu."~ */ JOURNAL #31880 /* ~Le bruit court qu'un dénommé Byron Tourloupe trempe dans des affaires louches. À ce qu'il paraît, il a tué un marchand du nom de Zac et dérobé des documents chez sa veuve, Trist. Sans ces documents, Trist ne peut pas prouver qu'elle a remboursé certains prêts et elle sera vendue en tant qu'esclave en remboursement de la dette. Je vais peut-être m'occuper de cette affaire.~ */ GOTO 24
  IF ~~ THEN REPLY #34348 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34349 /* ~"Merci, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34350 /* ~"Va vers l'nord du marché. Tu peux pas le manquer, avec la foule qu'y a."~ */
  IF ~~ THEN REPLY #34351 /* ~"Tu as parlé de papiers qui avaient disparu."~ */ JOURNAL #31880 /* ~Le bruit court qu'un dénommé Byron Tourloupe trempe dans des affaires louches. À ce qu'il paraît, il a tué un marchand du nom de Zac et dérobé des documents chez sa veuve, Trist. Sans ces documents, Trist ne peut pas prouver qu'elle a remboursé certains prêts et elle sera vendue en tant qu'esclave en remboursement de la dette. Je vais peut-être m'occuper de cette affaire.~ */ GOTO 24
  IF ~~ THEN REPLY #34352 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34353 /* ~"Merci, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1 22.1 23.0
  SAY #34354 /* ~"Ouais. Trist disait qu'son mari Zac avait payé toute la dette, et qu'elle avait les papiers pour le prouver. Quand elle est allée les chercher, ils avaient disparu." Il pousse un grognement et paraît en colère. "J'mettrai du jonc au tapis que Tourloupe est derrière tout ça."~ */
  IF ~~ THEN REPLY #34355 /* ~"Où est-ce que je peux trouver ce Tourloupe ?"~ */ GOTO 26
  IF ~~ THEN REPLY #34356 /* ~"Quelqu'un s'en occupe ?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34357 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #66229 /* ~"Merci. Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.1
  SAY #34358 /* ~Il te regarde bizarrement. "Hé, t'es béjaune ou quoi ? Il s'est fait tuer et inscrire au livre des morts."~ */
  IF ~~ THEN REPLY #34359 /* ~"Je vois. Donc, tu me parlais du stand vide."~ */ GOTO 19
  IF ~~ THEN REPLY #34360 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34361 /* ~"Merci. Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0 28.0
  SAY #34362 /* ~"Il a sa guitoune juste en dehors du marché, matois. Tu peux pas l'manquer."~ */
  IF ~~ THEN REPLY #34356 /* ~"Quelqu'un s'en occupe ?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34363 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #34364 /* ~"Merci. Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.0
  SAY #66230 /* ~"L'Harmonium, oui…" Il s'interrompt un bref instant, puis soupire. "Mais nous n'avons pu trouver aucune preuve de malversation, bien sûr. Corvus, l'un des gardes de l'Harmonium sur le marché, a vraiment envie de savoir ce qui est arrivé à Zac. Si le moindre indice devait être découvert, c'est à lui qu'il faudrait l'amener…"~ */
  IF ~~ THEN REPLY #66231 /* ~"Où puis-je trouver Corvus ?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #66232 /* ~"Il se trouve généralement par là, à côté de l'entrée ouest, fait-il dans un soupir. Autre chose ?"~ */
  IF ~~ THEN REPLY #66233 /* ~"Où puis-je trouver Byron Tourloupe ?"~ */ GOTO 26
  IF ~~ THEN REPLY #66234 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #66235 /* ~"Merci. Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END
