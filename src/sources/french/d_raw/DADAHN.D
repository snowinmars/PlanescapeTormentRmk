// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADAHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DADAHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3015 /* ~L'homme en face de toi a de grands yeux et semble fragile. Il a l'air perdu et apeuré par les autres clients. Il semble incroyablement rassuré de te voir.~ */
  IF ~~ THEN REPLY #3016 /* ~"Bonjour ?"~ */ GOTO 1
  IF ~~ THEN REPLY #13301 /* ~Ignore l'homme, va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11268 /* ~Il glousse légèrement et roule ses yeux comme pour dire "tu ne croiras pas ce qui m'est arrivé" et cette expression te semble familière. "Ah, quand même ! J'ai cru que j'attendrais là toute la journée."~ */
  IF ~~ THEN REPLY #13302 /* ~"Euh… on se connaît ?"~ */ DO ~SetGlobal("Know_Adahn","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11269 /* ~"Eh bien, oui." Il t'examine. "Je pense. Je… euh… bon. Je ne me souviens pas de tout à ton sujet, mais…" Il se perd dans ses pensées, puis hausse les épaules. "… bref, content de te revoir. Je suis Adahn. Nous étions amis, je crois. Excellent ! J'ai bien besoin d'amis comme toi, il me semble…" Il regarde autour de lui avec désarroi. "Je ne connais personne par ici et je sais encore moins comment je suis arrivé ici."~ */
  IF ~~ THEN REPLY #13303 /* ~"D'où viens-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #13304 /* ~"Adahn était un personnage que j'avais inventé. Je ne savais pas qu'il y avait quelqu'un qui s'appelait comme ça."~ */ GOTO 5
  IF ~~ THEN REPLY #13305 /* ~"Eh bien, je dois partir. Au revoir… Adahn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13289 /* ~Adahn a l'air surpris et son trouble resurgit. "Je…  hmmnnn." Il fronce les sourcils. "Eh bien, pas de par ici, je ne crois pas… ou bien si ? Je crois que je me serais souvenu d'un tel endroit. Je ne me souviens pas bien d'où je viens, ni où je vais…"~ */
  IF ~~ THEN REPLY #13306 /* ~"Sais-tu qui je suis ?"~ */ GOTO 4
  IF ~~ THEN REPLY #13307 /* ~"Eh bien, je dois partir. Au revoir… Adahn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #13290 /* ~"Un… un vieil ami ?" Il semble tester le terrain. "C'est bien ça ?"~ */
  IF ~~ THEN REPLY #13308 /* ~"Si, si. Dis-moi, j'ai quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #13309 /* ~"Pas vraiment. Adahn était un personnage que j'avais inventé. Je ne savais pas qu'il y avait quelqu'un qui s'appelait comme ça et encore moins qu'on était amis."~ */ GOTO 5
  IF ~~ THEN REPLY #13310 /* ~"Eh bien, c'est très intéressant, Adahn, mais je dois partir. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #13291 /* ~"Vraiment ?" Il hausse les épaules, comme si ce n'était pas important. "Bon, je ne crois pas t'avoir inventé, donc, pas de problème… n'est-ce pas ? Je pense, donc je suis. Je crois." Il a l'air perplexe. "Tu ne crois pas ?"~ */
  IF ~~ THEN REPLY #13311 /* ~"Oui, c'est vrai. Dis-moi, j'ai quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #13312 /* ~"En fait, je ne crois pas t'avoir volontairement inventé. Est-il possible que tu ne sois rien de plus que le fruit de mon imagination ?"~ */ GOTO 6
  IF ~~ THEN REPLY #13313 /* ~"Eh bien, c'est très intéressant, Adahn, mais je dois partir. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #13292 /* ~Adahn a l'air surpris. Il s'apprête à dire quelque chose, puis disparaît soudain.~ */
  IF ~~ THEN REPLY #36923 /* ~"Euh… alors, au revoir."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #13293 /* ~"Oh, et j'en ai pour toi, moi aussi…" Il fronce les sourcils. "Sauf que j'arrive pas à mettre la main dessus." Il hausse les épaules. "Des questions - qui en a besoin, de toute façon ? Ce qui compte, c'est les réponses. Enfin, je crois…"~ */
  IF ~~ THEN REPLY #13314 /* ~"Eh bien, c'est très intéressant, Adahn, mais je dois partir. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1 4.2 5.2 7.0
  SAY #13294 /* ~"Eh… euh…" Il se renfrogne. "Écoute, avant que tu disparaisses, j'ai quelque chose pour toi… enfin, je crois…"~ */
  IF ~~ THEN REPLY #13315 /* ~"Quoi ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #13295 /* ~"J'en suis pas sûr." Il fouille dans ses poches et se renfrogne. "Ces poches sont bien trop petites…" Il se gratte la tête. "Peut-être…" Il relève ses manches, la gauche d'abord, puis la droite, semble furieux et les laisse retomber.~ */
  IF ~~ THEN REPLY #13316 /* ~"Tu l'as perdu ?"~ */ DO ~GiveItemCreate("AdRing",Protagonist,1,0,0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13317 /* ~"Et si tu revérifiais la manche gauche ? C'est peut-être dedans."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13318 /* ~"Et si tu revérifiais la manche gauche ? C'est peut-être dedans."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13296 /* ~"Non, non, juste une minute." Il jure à mi-mot, puis relève encore ses manches, d'abord la droite, ensuite la gauche. Comme il relève la manche gauche, tu aperçois un paquet attaché à son poignet. Il sourit l'air soulagé, le détache puis te le tend. "Pour toi, l'ami. De moi à toi… un remerciement !" Il acquiesce lorsque tu le prends. Tu l'examines… on dirait une sorte d'anneau.~ */
  IF ~~ THEN REPLY #13319 /* ~"Merci, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 9.1 9.2
  SAY #13297 /* ~"Tu crois ?" Il relève de nouveau sa manche gauche et cette fois, tu aperçois un paquet attaché à son poignet. Il sourit l'air soulagé, le détache et te le tend. "Pour toi, l'ami. De moi à toi… un remerciement !" Il acquiesce lorsque tu le prends. Tu l'examines… on dirait une sorte d'anneau.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #13320 /* ~"Il n'y avait pas d'argent avec ?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #13321 /* ~"Il n'y avait pas d'argent avec ?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~~ THEN REPLY #13322 /* ~"Merci, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #13298 /* ~Il claque des doigts. "Oui, il y en avait." Il regarde sa ceinture où se trouve maintenant une bourse. Il la détache et te la tend. "Tout est là. Les cent pièces de cuivre." Tu prends le sac et tu l'ouvres. On dirait que tout est bien là.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #13323 /* ~"Et cet objet enchanté que tu voulais me donner ?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #13324 /* ~"Et cet objet enchanté que tu voulais me donner ?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~~ THEN REPLY #13325 /* ~"Merci, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #13299 /* ~Il a l'air troublé un instant, puis il sourit, comme si la mémoire lui revenait. "Mais oui, y en avait un, c'est vrai ?" Il tire une longue et fine dague de sa manche droite. "Tiens."~ */
  IF ~~ THEN REPLY #13326 /* ~"Merci, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 10.0 11.2 12.2 13.0
  SAY #13300 /* ~Alors que tu lèves les yeux pour remercier Adahn, tu t'aperçois soudain qu'il a disparu. Tu ne l'as même pas entendu partir.~ */
  IF ~~ THEN REPLY #36922 /* ~"Euh… alors, au revoir."~ */ DO ~DestroySelf()
~ EXIT
END
