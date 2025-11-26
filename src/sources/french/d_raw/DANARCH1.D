// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44239 /* ~Tu vois une femme d'un certain âge ; son visage compatissant est marqué par les soucis. Elle semble avoir eu une vie difficile. "Comment puis-je t'être utile, étranger ?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44241 /* ~"Un… ami… m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44247 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44248 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44249 /* ~"Je cherche un crâne flottant sarcastique. Tu ne l'aurais pas vu ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44251 /* ~"Je n'ai besoin de rien. Désolé. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #44254 /* ~"Je peux faire quelque chose pour toi ?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44255 /* ~"Un… ami… m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44256 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44257 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44258 /* ~"Je cherche un crâne flottant sarcastique. Tu ne l'aurais pas vu ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44260 /* ~"Je n'ai besoin de rien. Désolé. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #44262 /* ~"Déjà de retour ? Tu as détruit les plans de quelqu'un ?"~ */
  IF ~  GlobalGT("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #44263 /* ~"Pas encore. Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 12
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44264 /* ~"L'officier de l'Harmonium ? Il est mort."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~Je suis allé trouver Leena pour lui dire que j'avais réussi à tuer l'officier de l'Harmonium.~ */ GOTO 11
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",2)
~ THEN REPLY #44265 /* ~"Pas récemment. Je voudrais juste te poser quelques questions."~ */ GOTO 12
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
GlobalLT("Kill_Vorten","GLOBAL",3)
~ THEN REPLY #44266 /* ~"Pas encore. Je voudrais juste te poser quelques questions."~ */ GOTO 7
  IF ~~ THEN REPLY #44267 /* ~"J'y travaille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 4.2 5.0
  SAY #44268 /* ~Elle t'observe très attentivement. Elle marmonne quelque chose qui semble être : "Il faut vite changer ça…" Elle se reprend et te regarde droit dans les yeux. "Tu es des nôtres ? Prouve-le."~ */
  IF ~~ THEN REPLY #44269 /* ~"Comment ça ?"~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44270 /* ~"Je n'ai rien à te prouver."~ */ GOTO 15
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #44271 /* ~"Celui qui m'a donné ces renseignements s'appelle Loimoqueuse Penn. Il a dit que tu connaîtrais son nom."~ */ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #44272 /* ~"Je m'appelle Leena. Je surveille ces deux-là." Elle fait un signe de la main à ses compagnons.~ */
  IF ~~ THEN REPLY #44273 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #44274 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44275 /* ~"Un… ami… m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'." ~ */ GOTO 3
  IF ~~ THEN REPLY #44276 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 4.0 4.1
  SAY #44277 /* ~"C'est un entrepôt. Je suis la directrice. Tout est entreposé ici avant d'en ressortir…" Elle hausse les épaules. "En fait, il n'y a pas grand-chose à dire."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44278 /* ~"Un… ami… m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44279 /* ~"Je vois. Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.3
  SAY #44280 /* ~"Un crâne flottant sarcastique ? Désolée. Je n'en ai vu aucun par ici. Si tu cherches des crânes, va aux Os de la Nuit - on dirait que tu aimes bien les cicatrices, et aussi sûr que les balors détestent les diantrefosses, Lothar t'en ornera de nouvelles."~ */
  IF ~~ THEN REPLY #44281 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #44282 /* ~"Tu… as réussi ? Réponds-moi honnêtement, maintenant."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44302 /* ~"Oui. Il est mort."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~Je suis allé trouver Leena pour lui dire que j'avais réussi à tuer l'officier de l'Harmonium.~ */ GOTO 11
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44303 /* ~Vérité : "Pas encore."~ */ GOTO 8
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44304 /* ~Mensonge : "Oui. Il est mort."~ */ GOTO 10
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44305 /* ~"Hum… Qu'est-ce que j'étais censé faire, déjà ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.3
  SAY #44306 /* ~"Tu été censé te débarrasser de Vorten, ce poseur de vertu arrogant de l'Harmonium. Maintenant va-t'en, j'ai déjà perdu assez de temps avec toi comme ça !"~ */
  IF ~~ THEN REPLY #44307 /* ~"Je voulais juste te poser quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #44308 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #44309 /* ~Elle se tourne, et tout en t'ignorant, commence à donner des ordres à ses subalternes.~ */
  IF ~~ THEN REPLY #44310 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #44311 /* ~"Je t'en prie, ne me mens pas. Ça signifie que tu n'as aucun respect pour mes sources, ce qui te rend encore plus bête à mes yeux. Maintenant, va-t'en et fais ce que tu as à faire."~ */
  IF ~~ THEN REPLY #44312 /* ~"Je voulais juste te poser quelques questions !"~ */ GOTO 9
  IF ~~ THEN REPLY #44313 /* ~"Bon, très bien. Je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 7.0
  SAY #44314 /* ~"Bien, bien… Il commençait à fourrer son nez d'un peu trop près dans l'une de nos opérations, même s'il ne le savait pas lui-même. Les oppresseurs devraient maintenant se lancer à la poursuite d'une autre cible." Une lueur traverse son regard. "Tu as fait tes preuves. Mais au fait, qu'est-ce que tu voulais ?"~ */
  IF ~~ THEN REPLY #44315 /* ~"Je voulais te poser quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #44316 /* ~"Un endroit pour me reposer."~ */ GOTO 13
  IF ~~ THEN REPLY #44317 /* ~"Je voulais ramasser des objets supplémentaires."~ */ GOTO 13
  IF ~~ THEN REPLY #44318 /* ~"Rien pour le moment, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.0 2.2 11.0 13.0 14.0 18.1 19.0 20.0 21.1 22.1 23.0 24.0
  SAY #44319 /* ~"Qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #44320 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 13
  IF ~~ THEN REPLY #44321 /* ~"Il faut que je ramasse des objets supplémentaires."~ */ GOTO 13
  IF ~~ THEN REPLY #44322 /* ~"Parle-moi un peu de ta cellule."~ */ GOTO 18
  IF ~~ THEN REPLY #44323 /* ~"Qu'est-ce que vous espérez accomplir ici ?"~ */ GOTO 19
  IF ~~ THEN REPLY #44324 /* ~"Pourquoi es-tu Anarchiste ?"~ */ GOTO 20
  IF ~~ THEN REPLY #44325 /* ~"Qu'est-ce que tu peux me dire sur la Ligue Révolutionnaire ?"~ */ GOTO 21
  IF ~~ THEN REPLY #44326 /* ~"Rien d'autre, je crois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2 12.0 12.1
  SAY #44327 /* ~"Va parler à Conall là-bas. C'est lui qui s'occupe de ça pour nous."~ */
  IF ~~ THEN REPLY #44328 /* ~"Très bien. Réponds encore à quelques questions, alors…"~ */ GOTO 12
  IF ~~ THEN REPLY #44329 /* ~"Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2
  SAY #44330 /* ~Ses yeux s'écarquillent. "Il est haut placé, tu sais. En tout cas, c'est ce que j'ai appris au cours de mes recherches. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #44331 /* ~"Il me faut juste des réponses…"~ */ GOTO 12
  IF ~~ THEN REPLY #44332 /* ~"Rien pour l'instant. Je voulais juste me présenter. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.1
  SAY #44333 /* ~"Si. Sinon, nous ne pouvons pas savoir si tu as simplement acheté un mot de passe à quelqu'un d'un peu trop bavard ou si tu n'es qu'un autre de ces sacs d'os agités. Soit tu prouves ta loyauté, soit tu meurs."~ */
  IF ~~ THEN REPLY #44334 /* ~"Je vais le prouver."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44335 /* ~"Essaie un peu de me tuer si tu l'oses."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.1
  SAY #44336 /* ~"Très bien." Elle siffle ses compagnons et ils t'attaquent immédiatement !~ */
  IF ~~ THEN REPLY #44337 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44338 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.0 15.0
  SAY #44339 /* ~"Il y a un officier de l'Harmonium qui s'appelle Vorten. Tu le trouveras près de l'entrée de la Ruche, dans le Bas Quartier. Occupe-toi de lui et reviens me prévenir." Alors qu'elle s'apprête à partir, elle s'arrête. "N'essaie pas de me mentir - j'ai des yeux *partout*."~ */
  IF ~~ THEN REPLY #44340 /* ~"J'y vais."~ */ JOURNAL #39497 /* ~Dans l'entrepôt du Bas Quartier, Leena m'a dit que je pourrais faire la preuve de ma loyauté envers les Anarchistes en tuant Vorten, l'officier de l'Harmonium.~ */ EXIT
  IF ~~ THEN REPLY #44341 /* ~"Laisse tomber. Il faudra d'abord que tu me tues."~ */ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #44342 /* ~"Il n'y a que nous trois. Nous rendons compte de nos actes à quelqu'un d'autre, dont je ne peux te révéler le nom, et nous travaillons séparément. Parfois, il arrive qu'une personne extérieure nous présente quelqu'un, et en fonction de ce qu'on sait sur cette personne, on l'aide ou pas. Conall est notre fournisseur, Otis notre cogneur et moi je suis le cerveau."~ */
  IF ~~ THEN REPLY #44343 /* ~"Comment savez-vous à qui vous pouvez faire confiance ?"~ */ GOTO 22
  IF ~~ THEN REPLY #44344 /* ~"J'avais d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #44345 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY #44346 /* ~"Ce que nous espérons accomplir, c'est la destruction du système moderne, pour éliminer tout ce qu'il y a de malsain. Nous voulons que le bien l'emporte, si tu préfères. Maintenant."~ */
  IF ~~ THEN REPLY #44347 /* ~"Hum. J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #44348 /* ~"Je vois. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.4
  SAY #44349 /* ~"Tu veux dire à part voir les familles courir dans tous les sens à cause des pratiques militantes de l'Harmonium ? À part voir mes amis dépérir et mourir à cause de la fumée déversée par les Hommes-Dieux ? À part les réclamations désespérantes des Marqués et les plaisirs complaisants des Sensats qui se réjouissent de voir les autres souffrir ? Oh, il n'y a pas de raison, je suppose. Les choses sont très bien ainsi, pourquoi devraient-elles changer ?"~ */
  IF ~~ THEN REPLY #44350 /* ~"Très bien. Tu peux répondre à deux autres questions ?"~ */ GOTO 12
  IF ~~ THEN REPLY #44351 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5
  SAY #44352 /* ~"Tu en sais déjà trop, surtout pour quelqu'un qui ne fait pas partie de notre cellule. Voilà comment ça marche : nous nous répartissons en cellules, de façon à ce qu'aucun groupe ne puisse en détruire un autre en cas de négligence ou de malchance. Nous pouvons parfois avoir des divergences, mais généralement nous sommes une épine dans le pied des factions oppressives qui courent les rues de Sigil. Nous les gênons suffisamment pour qu'elles nous prennent au sérieux."~ */
  IF ~~ THEN REPLY #44353 /* ~"Et comment entrez-vous en contact les uns avec les autres ? Vous avez une organisation ?"~ */ GOTO 24
  IF ~~ THEN REPLY #44354 /* ~"Ça a l'air intéressant… et dangereux. J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #44355 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0
  SAY #44356 /* ~"On ne peut pas le savoir. C'est pour ça que nous nous faisons mutuellement confiance. Et même entre nous, nous marchons sur des œufs. Nous ne nous faisons jamais entièrement confiance. C'est un jeu dangereux, mais nécessaire si nous voulons un jour atteindre la liberté."~ */
  IF ~~ THEN REPLY #44357 /* ~"Si vous ne pouvez pas vous faire confiance, comment savez-vous vers quoi vous tourner ?"~ */ GOTO 23
  IF ~~ THEN REPLY #44358 /* ~"J'avais d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #44359 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44360 /* ~"Pour le moment, nous n'avons aucun autre but que la destruction de l'ordre parasitaire en place. Il faut d'abord supprimer la corruption. La guérison pourra débuter lorsque nous aurons purgé le poison des veines de cette société."~ */
  IF ~~ THEN REPLY #44361 /* ~"Bien. Réponds encore à quelques questions, alors…"~ */ GOTO 12
  IF ~~ THEN REPLY #44362 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #44363 /* ~"Nous avons des maisons sûres à travers le Grand Anneau. La meilleure - la dernière dont j'ai entendu parler - est la puissante cellule que nous avons à Maudith, la ville-portail qui mène aux Carcères. Mais ils ne se montreront probablement pas tant que rien d'IMPORTANT ne se passera. Cette ville regorge de traîtres et, dans ce contexte, mieux vaut ne pas rester tapi."~ */
  IF ~~ THEN REPLY #44364 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #44365 /* ~"Merci. Au revoir."~ */ EXIT
END
