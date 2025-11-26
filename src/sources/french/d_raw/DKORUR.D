// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKORUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKORUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36238 /* ~Ce vieil homme porte des habits poussiéreux. Il n'a pas l'air très en forme. Il a le teint jaune pâle et quelques pustules sur les bras.~ */
  IF ~~ THEN REPLY #36265 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36266 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36239 /* ~Il se retourne et t'observe de ses yeux vides. La méfiance lui fait plisser les yeux alors qu'il continue à regarder autour de lui. "Qu'est-ce que tu veux ?" Sa voix est rauque.~ */
  IF ~~ THEN REPLY #36267 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36268 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36240 /* ~Il reporte son attention sur toi. "Pourquoi tu m'embêtes ? Est-ce qu'j'ai l'air d'un rabatteur ?"~ */
  IF ~~ THEN REPLY #36269 /* ~"Tu es disponible."~ */ GOTO 3
  IF ~~ THEN REPLY #36270 /* ~"J'ai l'impression que tu pourrais m'apprendre des tas de choses."~ */ GOTO 4
  IF ~~ THEN REPLY #36271 /* ~"Qu'est-ce qu'un rabatteur ?"~ */ GOTO 23
  IF ~~ THEN REPLY #36272 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36241 /* ~Il te regarde et grogne : "J'ai de la chance… Écoute, j'ai pas de temps à perdre." Il te tourne le dos.~ */
  IF ~~ THEN REPLY #36273 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.3 6.1 7.2 8.3 9.2 10.2 11.1 12.3 13.2 14.1 15.1 16.0 17.2 18.1 19.0 21.0 23.0 24.0 25.1
  SAY #36242 /* ~Il soupire. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #36274 /* ~"Qui es-tu ?"~ */ GOTO 25
  IF ~~ THEN REPLY #36275 /* ~"Tu te sens bien ?"~ */ GOTO 5
  IF ~~ THEN REPLY #36276 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 11
  IF ~~ THEN REPLY #36277 /* ~"Il y a quelque chose d'intéressant à voir par ici ?"~ */ GOTO 17
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36278 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 20
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36279 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54106 /* ~"Je veux être guerrier. Tu peux m'apprendre ?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54107 /* ~"Je veux devenir un meilleur guerrier. Tu peux m'aider à m'améliorer ?"~ */ GOTO 27
  IF ~~ THEN REPLY #64627 /* ~"Merci. Je dois y aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #36243 /* ~"Rien que quelques années d'mort guériront pas." Il tousse et lève la tête. "L'air a empiré dans l'Quartier récemment. À mon avis, ça d'vrait se stabiliser une fois que la Grande Fonderie sera installée… ou qu'le vent soufflera par l'aiguille."~ */
  IF ~~ THEN REPLY #36281 /* ~"Qu'est-ce qu'il a, l'air d'ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #36282 /* ~"Parle-moi de la Fonderie."~ */ GOTO 8
  IF ~~ THEN REPLY #36283 /* ~"Qu'est-ce que tu voulais dire sur les vents ?"~ */ GOTO 10
  IF ~~ THEN REPLY #36284 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36285 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1 9.0 10.0
  SAY #36244 /* ~"C'est en grande partie à cause des portails." Il tousse puis reporte son attention sur toi.~ */
  IF ~~ THEN REPLY #36286 /* ~"Que veux-tu dire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #36287 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36288 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36245 /* ~"Y'a plein de portes vers les Plans Inférieurs qui laissent échapper de l'air vicié, des fumées, et je ne sais pas quoi d'autre des Abysses. C'est pourquoi cette partie est le quartier *inférieur*." Il rit. "Une balade dans cet endroit est comme respirer un repas. Du sel, de la fumée, de l'herbe à pipe… ce quartier produit que des couches de fumée jaune et des gaz sulfureux puants." Il te sourit, de sa bouche à moitié édentée. "Joli-joli, hein ?"~ */
  IF ~~ THEN REPLY #36289 /* ~"Euh, oui… Tu as parlé de la Fonderie."~ */ GOTO 8
  IF ~~ THEN REPLY #36290 /* ~"Qu'est-ce que tu disais sur les vents ?"~ */ GOTO 10
  IF ~~ THEN REPLY #36291 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36292 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0 10.1
  SAY #36246 /* ~"Ouais, au centre du Quartier. Tu la reconnaîtras aux piles de minerai. Les Hommes-Dieux font des tas d'choses avec le fer ; rien de bien extraordinaire, mais ça marche. Ça améliore pas la qualité d'l'air."~ */
  IF ~~ THEN REPLY #36293 /* ~"Les Hommes-Dieux ?"~ */ GOTO 9
  IF ~~ THEN REPLY #36294 /* ~"Qu'est-ce qu'il a, l'air d'ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #36295 /* ~"Tu as parlé des vents, tout à l'heure."~ */ GOTO 10
  IF ~~ THEN REPLY #36296 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36297 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36247 /* ~"Les Adorateurs. Ils ont leur guitoune dans la Grande Fonderie, ils rythment et chantent leurs stupidités d'azimutés, racontant qu'ils seront des Puissances dans une vie future." Il lève les yeux au ciel, puis crache une masse brunâtre. "Tout c'qu'ils font, c'est souffrir et travailler comme des esclaves… J'besogne deux fois plus, et pas question que j'devienne une Puissance, tu m'comprends, bige ?" Il éclate d'un faux rire.~ */
  IF ~~ THEN REPLY #36298 /* ~"Qu'est-ce qu'il a, l'air d'ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #36299 /* ~"Tu as parlé des vents, tout à l'heure."~ */ GOTO 10
  IF ~~ THEN REPLY #36300 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36301 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.1 8.2 9.1
  SAY #36248 /* ~"Des fois, les vents soufflent depuis l'aiguille de Sigil, ça chasse le brouillard…" Il lève les yeux et tousse. "… pour quelque temps."~ */
  IF ~~ THEN REPLY #36302 /* ~"Qu'est-ce qu'il a, l'air d'ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #36303 /* ~"Parle-moi de cette Fonderie."~ */ GOTO 8
  IF ~~ THEN REPLY #36304 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36305 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY #36249 /* ~"Hé…" Il te regarde comme si tu étais fou. "T'es béjaune ? Les artisans, les boutiques, les entrepôts, ils ont tous leur guitoune ici." Il louche vers toi, ses yeux quelque peu vitreux. "Tu cherches quelque chose en particulier ?"~ */
  IF ~~ THEN REPLY #36306 /* ~"Qu'est-ce qu'il y a à faire par ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #36307 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36308 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36250 /* ~Il t'observe pendant un instant, puis te regarde d'un air entendu. "Tu cherches à tremper ta lame, p't'être ?" Il rit, ce qui provoque une crise de toux. "Pas d'endroits comme ça par ici. Tu peux essayer une des guitounes dans les autres quartiers. Si c'est c'que tu cherches."~ */
  IF ~~ THEN REPLY #36309 /* ~"Pardon ?"~ */ GOTO 13
  IF ~~ THEN REPLY #36310 /* ~"J'aurais besoin d'un peu de jonc."~ */ GOTO 14
  IF ~~ THEN REPLY #36311 /* ~"Je voudrais faire quelques achats."~ */ GOTO 15
  IF ~~ THEN REPLY #36312 /* ~"J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #36313 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36251 /* ~Il rit à nouveau, ce qui provoque une crise de toux encore plus sérieuse. "Désolé, matois. Fais pas gaffe. T'cherches quelque chose en particulier ?"~ */
  IF ~~ THEN REPLY #36314 /* ~"J'aurais besoin d'un peu de jonc."~ */ GOTO 14
  IF ~~ THEN REPLY #36315 /* ~"Je voudrais faire quelques achats."~ */ GOTO 15
  IF ~~ THEN REPLY #36316 /* ~"J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #36317 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #36252 /* ~"Si tu cherches du boulot, pas de chance. Y'en a juste assez pour ceux qui vivent ici."~ */
  IF ~~ THEN REPLY #36318 /* ~"Je voudrais faire quelques achats."~ */ GOTO 15
  IF ~~ THEN REPLY #36319 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36320 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.1 14.0
  SAY #36253 /* ~"Si tu cherches à acheter une ou deux choses, ou trafiquer des marchandises plus sérieuses, alors j'te conseillerais l'marché en plein air." Il recommence à tousser.~ */
  IF ~~ THEN REPLY #36321 /* ~"Qu'est-ce que tu peux me dire sur le marché ?"~ */ GOTO 16
  IF ~~ THEN REPLY #36323 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36324 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36254 /* ~Il te fait un sourire malicieux. "Tu peux acheter et vendre là-bas, bige. C'est un marché - rien de plus à ajouter !"~ */
  IF ~~ THEN REPLY #36325 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36326 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.3
  SAY #36255 /* ~"Hé…" Il se concentre un instant. "Ben, y'a la tour. Il semble qu'ils la chantent pas mal."~ */
  IF ~~ THEN REPLY #36327 /* ~"Parle-moi de la tour."~ */ GOTO 18
  IF ~~ THEN REPLY #36328 /* ~"Il y a autre chose qui te revient ?"~ */ GOTO 19
  IF ~~ THEN REPLY #36329 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 4
  IF ~~ THEN REPLY #36330 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36256 /* ~"Ha !" Il rit, mais son rire se transforme rapidement en toux. "Un des plus maudits mystères du Quartier… On dit qu'elle est simplement tombée sur Sigil un beau jour, y'a très longtemps, aucune idée d'où elle vient, comment elle est arrivée ou comment y entrer. Ça prend d'la place, c'est un sacré spectacle… toutes ces brûlures d'acide, ces dégâts causés par les armes… On dirait qu'elle a vécu une centaine de guerres, ouais."~ */
  IF ~~ THEN REPLY #36331 /* ~"Il y a autre chose qui te revient ?"~ */ GOTO 19
  IF ~~ THEN REPLY #36332 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 4
  IF ~~ THEN REPLY #36333 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #36257 /* ~Il réfléchit un instant, puis hausse les épaules. "J'vois pas c'qui pourrait être intéressant."~ */
  IF ~~ THEN REPLY #36334 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 4
  IF ~~ THEN REPLY #36335 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.4
  SAY #36258 /* ~Il paraît nerveux et regarde aux alentours. "Ouais… J'ai entendu parler d'lui. Faut pas l'ennuyer, crois-moi. Sa guitoune se trouve à un endroit appelé les *Os de la Nuit* ou quelque chose d'aussi débile."~ */
  IF ~~ THEN REPLY #36336 /* ~"Ça se trouve où ?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #36259 /* ~Il se renfrogne. "Ça c'est d'la bavasse dangereuse… Si je *devais* te dire quelque chose, c'que j'fais pas, j'te dirais de chercher un bâtiment éventré dans l'Quartier. P't'être que tu trouveras quelque chose là-bas, hein ?" Il te regarde d'un air sérieux. "Mais j't'ai jamais rien dit, compris ?"~ */
  IF ~~ THEN REPLY #36337 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36338 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 4.5
  SAY #36260 /* ~Il paraît quelque peu mal à l'aise. "T'as perdu un crâne, hein ? Bon, j't'ai jamais dit ça, mais y'a des gens par ici qui…" Il regarde aux alentours. "Ils trafiquent dans les têtes de morts. Ils travaillent pour un certain lascar nommé Lothar. Ils l'appellent le *Maître des Os*."~ */
  IF ~~ THEN REPLY #36339 /* ~"Où est-ce que je peux trouver ce Lothar ?"~ */ GOTO 21
  IF ~~ THEN REPLY #36340 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2
  SAY #36261 /* ~Il se renfrogne. "Quelqu'un chez qui t'atterrit si tu poses trop d'questions…" Il te regarde fixement.~ */
  IF ~~ THEN REPLY #36341 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #36342 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #36262 /* ~Tu aperçois un vieil homme portant des vêtements poussiéreux. "De retour, hein ?" Il fronce les sourcils. "Quoi encore ?"~ */
  IF ~~ THEN REPLY #36343 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54108 /* ~"Je veux être guerrier. Tu peux m'apprendre ?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54109 /* ~"Je veux devenir un meilleur guerrier. Tu peux m'aider à m'améliorer ?"~ */ GOTO 27
  IF ~~ THEN REPLY #54110 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.0
  SAY #36263 /* ~Il te fait une légère révérence. "J'm'appelle Korur. À une époque, j'étais un sacré bon guerrier…" Il s'interrompt et soupire. "C'est du passé, mais j'peux encore faire un truc ou deux."~ */
  IF ~~ THEN REPLY #36345 /* ~"Tu peux m'apprendre des trucs de guerrier ?"~ */ GOTO 26
  IF ~~ THEN REPLY #36346 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 4.6 24.1 25.0
  SAY #36264 /* ~"Ma foi… pourquoi pas. T'es sûr de vouloir laisser tomber ta profession actuelle ?"~ */
  IF ~~ THEN REPLY #36347 /* ~"Oui, j'en suis sûr."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 27
  IF ~~ THEN REPLY #52333 /* ~"Non, je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.7 24.2 26.0
  SAY #52334 /* ~"Bon… à quoi tu veux t'entraîner, exactement ?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52335 /* ~"Tu peux me dire si je suis prêt pour plus d'instructions ?"~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52336 /* ~"Tu peux me dire si je suis prêt pour plus d'instructions ?"~ */ GOTO 29
  IF ~~ THEN REPLY #52338 /* ~"À rien pour l'instant. Je reviendrai plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 38.1 40.1
  SAY #52339 /* ~"Je t'ai appris tout ce que je pouvais pour le moment… reviens quand tu auras un peu plus d'expérience du monde."~ */
  IF ~~ THEN REPLY #52340 /* ~"Très bien, merci."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #52341 /* ~"Je peux t'en apprendre un peu plus."~ */
  IF ~~ THEN REPLY #52342 /* ~"Je suis prêt, qu'est-ce que tu peux m'apprendre ?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.6 33.6 34.6 35.6 36.6 38.0 39.0 40.0
  SAY #52343 /* ~"Qu'est-ce que tu veux apprendre ?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52344 /* ~"Apprends-moi à me battre avec les poings."~ */ GOTO 32
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52345 /* ~"Apprends-moi à utiliser les dagues."~ */ GOTO 33
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52346 /* ~"Apprends-moi à utiliser les gourdins."~ */ GOTO 34
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52347 /* ~"Apprends-moi à utiliser les haches."~ */ GOTO 35
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52348 /* ~"Apprends-moi à utiliser les marteaux."~ */ GOTO 36
  IF ~~ THEN REPLY #52349 /* ~"Je n'ai pas envie de m'entraîner aujourd'hui. Je reviendrai plus tard." ~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #52350 /* ~"Je ne peux pas faire mieux. Tu es le meilleur guerrier que j'aie jamais vu… peut-être un des meilleurs à avoir couru les plans."~ */
  IF ~~ THEN REPLY #52351 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52352 /* ~"Les poings, hein ? Bon… si tu veux."~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52353 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52354 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52355 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52356 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66935 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66936 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66937 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 30
  IF ~~ THEN REPLY #66938 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #52357 /* ~"Les dagues, hein ? Bon… si tu veux."~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52358 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52359 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52361 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66939 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66940 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66941 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66948 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 30
  IF ~~ THEN REPLY #66952 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY #52362 /* ~"Les gourdins, hein ? Bon… si tu veux."~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52363 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52364 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52365 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52366 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66942 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66943 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66949 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 30
  IF ~~ THEN REPLY #66953 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY #52367 /* ~"Les haches, hein ? Bon… si tu veux."~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52368 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52369 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52370 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52371 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66944 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66945 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66950 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 30
  IF ~~ THEN REPLY #66954 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.4
  SAY #52372 /* ~"Les marteaux, hein ? Bon… si tu veux."~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52373 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52374 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52375 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52376 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66946 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66947 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66951 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 30
  IF ~~ THEN REPLY #66955 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.0 32.2 32.4 33.0 33.2 33.4 34.0 34.2 34.4 35.0 35.2 35.4 36.0 36.2 36.4
  SAY #52377 /* ~"Bon, allons-y… tu es prêt ?"~ */
  IF ~~ THEN REPLY #52378 /* ~"Oui…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #52379 /* ~"Hé… bon, je crois que c'est tout. Et maintenant ?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52380 /* ~"Merci. Je voudrais savoir utiliser d'autres armes, si tu veux bien m'apprendre."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #52381 /* ~"Merci. Je voudrais savoir utiliser d'autres armes, si tu veux bien m'apprendre."~ */ GOTO 28
  IF ~~ THEN REPLY #52382 /* ~"Merci. C'est tout ce que je voulais savoir pour aujourd'hui."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.1 32.3 33.1 33.3 34.1 34.3 35.1 35.3 36.1 36.3
  SAY #52383 /* ~"Je ne peux rien t'apprendre de plus tant que tu ne te seras pas voué à une vie de guerrier. Quand tu auras fait une arme de ton corps, je t'en apprendrai davantage."~ */
  IF ~~ THEN REPLY #52384 /* ~"Très bien. Quelles autres armes est-ce que tu peux m'apprendre à utiliser ?"~ */ JOURNAL #68288 /* ~On m'a dit que je ne pourrai pas apprendre à manier d'autres armes à moins de choisir la voie du guerrier. Pour obtenir la spécialisation que je recherche, il me faut me concentrer sur l'art de la guerre, et ne jamais l'abandonner pour la magie ou les talents de voleur.~ */ GOTO 30
  IF ~~ THEN REPLY #52385 /* ~"Merci. Au revoir."~ */ JOURNAL #68288 /* ~On m'a dit que je ne pourrai pas apprendre à manier d'autres armes à moins de choisir la voie du guerrier. Pour obtenir la spécialisation que je recherche, il me faut me concentrer sur l'art de la guerre, et ne jamais l'abandonner pour la magie ou les talents de voleur.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 32.5 33.5 34.5 35.5 36.5
  SAY #66931 /* ~Il te regarde, stupéfait. "Tu veux que je t'en apprenne davantage ? Mon ami, ni moi ni personne d'autre ne pouvons plus t'enseigner quoi que ce soit au sujet de cette arme."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66932 /* ~"Merci. Je voudrais savoir utiliser d'autres armes, si tu veux bien m'apprendre."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66933 /* ~"Merci. Je voudrais savoir utiliser d'autres armes, si tu veux bien m'apprendre."~ */ GOTO 28
  IF ~~ THEN REPLY #66934 /* ~"Merci. C'est tout ce que je voulais savoir pour aujourd'hui."~ */ EXIT
END
