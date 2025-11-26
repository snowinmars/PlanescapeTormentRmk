// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRATBONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRATBONE~

IF ~  Global("Ratbone","AR0101",0)
~ THEN BEGIN 0 // from:
  SAY #16225 /* ~Cet homme grand, maigrichon garde les yeux fixés sur le sol à ses pieds ; il s'arrête et s'agenouille de temps à autre comme s'il cherchait un objet ou un indice caché dans les immondices. Malgré sa dégaine étrange et dégingandée, il semble plutôt rapide et agile.~ */
  IF ~~ THEN REPLY #16305 /* ~"Bonjour…"~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 1
  IF ~~ THEN REPLY #16306 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16226 /* ~Pendant que tu parles, il pirouette et tombe en s'accroupissant à moitié… tu ne sais pas trop s'il va te sauter dessus ou s'il va partir dans une autre direction. "Quoi ? Parle vite, tout de suite…"~ */
  IF ~~ THEN REPLY #16307 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #16308 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16227 /* ~"J'ai pas de réponses. Dégage !" Tu ne l'avais pas remarqué mais il a une longue dague recourbée dans la main.~ */
  IF ~~ THEN REPLY #16309 /* ~"Ça ne te coûtera rien de me parler…"~ */ GOTO 3
  IF ~~ THEN REPLY #16310 /* ~"Tu me menaces ?"~ */ GOTO 6
  IF ~~ THEN REPLY #16311 /* ~"Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #16228 /* ~"Ah vraiment ?" Il te regarde furtivement puis crache sur le sol à côté de lui. "Et comment je suis sensé le savoir, hein ?"~ */
  IF ~~ THEN REPLY #16312 /* ~"Je ne comprends pas."~ */ GOTO 4
  IF ~~ THEN REPLY #16313 /* ~"Il va falloir que tu me fasses confiance."~ */ GOTO 5
  IF ~~ THEN REPLY #16314 /* ~"Peu importe. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16229 /* ~"Qu'est-ce que tu compren'pas, bige ? Pfff ! Écoute bien : comment est-ce que je suis supposé savoir que t'es ici pour poser des questions ? Et si j'veux pas y répondre à tes questions, hein ? T'vas me maintenir à terre, me torturer ? Hmm ?"~ */
  IF ~~ THEN REPLY #16315 /* ~"Parle-moi, c'est tout. Je n'ai que quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #16316 /* ~Serment : "Je ne te ferai aucun mal. Je t'en donne ma parole."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #16317 /* ~Mensonge : "Je ne te ferai aucun mal. Je t'en donne ma parole."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #16318 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 4.1 4.2
  SAY #16230 /* ~"Nan. Pas question. Va harceler quelqu'un d'autre."~ */
  IF ~~ THEN REPLY #16319 /* ~Pars.~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #16231 /* ~"Pourquoi ? Y t'fait peur, Ratos ? Tu t'sens menacé, bige ?"~ */
  IF ~~ THEN REPLY #16320 /* ~"Non."~ */ GOTO 7
  IF ~~ THEN REPLY #16321 /* ~"Oui."~ */ GOTO 8
  IF ~~ THEN REPLY #16322 /* ~"Laisse tomber. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16232 /* ~"Hé hé ! C'est ça. Y'a qu'à voir ta tête. OK, qu'est-ce que t'attends de moi ?"~ */
  IF ~~ THEN REPLY #16323 /* ~"Comme je te l'ai déjà dit, j'ai des questions…"~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16324 /* ~"Rien, tant pis. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #16233 /* ~"Et ben c'est de ta faute. Dégage et laisse-moi respirer."~ */
  IF ~~ THEN REPLY #16325 /* ~Pars.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 2.2 3.2 4.3 5.0 6.2 7.1 8.0
  SAY #16234 /* ~Il appelle alors que tu t'apprêtes à partir : "Hé ! Attends un moment, toi…"~ */
  IF ~~ THEN REPLY #16326 /* ~"Oui ?"~ */ GOTO 10
  IF ~~ THEN REPLY #16327 /* ~Ignore-le, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16235 /* ~Il se redresse et range son arme. "Qui t'envoie ? Pourquoi t'es ici ?"~ */
  IF ~~ THEN REPLY #16328 /* ~"Personne. Je suis là de mon propre chef."~ */ GOTO 12
  IF ~~ THEN REPLY #16329 /* ~"Qu'est-ce qui te fait croire que quelqu'un m'envoie ?"~ */ GOTO 12
  IF ~~ THEN REPLY #16330 /* ~"De quoi tu *parles* ?"~ */ GOTO 12
  IF ~~ THEN REPLY #16331 /* ~"Ça ne te regarde pas."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #16236 /* ~Il crache de nouveau. "Pff. Tire-toi, alors."~ */
  IF ~~ THEN REPLY #16332 /* ~Pars.~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2
  SAY #16237 /* ~"Hum…" Il te regarde de biais, avec un regard dur et appuyé puis après un silence gênant, parle : "Bon. Qu'est-ce 'tu veux de moi ?"~ */
  IF ~~ THEN REPLY #16333 /* ~"Comme je te l'ai déjà dit, j'ai des questions…"~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16334 /* ~"Rien, tant pis. Au revoir."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0 12.0 15.0 17.0 20.0 21.1 22.3 23.1 24.2 25.1 27.2 28.0 29.1 33.0 34.0 35.7 36.0 37.4 39.0 40.4 41.0 42.4 43.3 44.2 45.2 46.1 47.2 48.4 49.3 50.3 51.2 52.3 55.1 58.2 59.2 62.0 64.1 65.1 76.0 77.0 79.0
  SAY #16238 /* ~"Vas-y. Pose tes questions."~ */
  IF ~  Global("RB_Name","AR0101",0)
~ THEN REPLY #16335 /* ~"Qui es-tu ?"~ */ GOTO 14
  IF ~  Global("RB_Name","AR0101",1)
~ THEN REPLY #16336 /* ~"Qui es-tu déjà ?"~ */ GOTO 20
  IF ~~ THEN REPLY #16337 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 21
  IF ~~ THEN REPLY #16338 /* ~"Peux-tu me parler de cette zone ?"~ */ GOTO 42
  IF ~  Global("RB_Quest","AR0101",3)
~ THEN REPLY #16339 /* ~"Parle-moi encore du Récupérateur et du roué."~ */ GOTO 67
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",0)
~ THEN REPLY #16340 /* ~"Je cherche un certain Pharod."~ */ GOTO 32
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",1)
~ THEN REPLY #16341 /* ~"Je cherche un certain Pharod."~ */ GOTO 39
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",2)
~ THEN REPLY #16342 /* ~"Je cherche un certain Pharod."~ */ GOTO 40
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16343 /* ~"Je cherche un journal perdu."~ */ GOTO 41
  IF ~~ THEN REPLY #16344 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #16239 /* ~"Je m'appelle Ratos. Qui t'es ?"~ */
  IF ~~ THEN REPLY #16345 /* ~Mensonge : "Je suis, euh… Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16346 /* ~"Je n'ai pas de nom."~ */ GOTO 16
  IF ~~ THEN REPLY #16347 /* ~"Je… ne sais pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16348 /* ~"Ça ne te regarde pas."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #16240 /* ~Il fronce les sourcils. "Ouais, c'est ça."~ */
  IF ~~ THEN REPLY #16349 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16350 /* ~"Oui, c'est moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #16241 /* ~Ratos minaude. "Bien sûr. Je l'avais deviné. Et pourquoi pas, hein ?"~ */
  IF ~~ THEN REPLY #16351 /* ~Mensonge : "Très bien… Je suis, euh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16352 /* ~"Parce que je ne m'en souviens pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16353 /* ~"Ça ne te regarde pas."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.2 16.1
  SAY #16242 /* ~Ratos lève les sourcils. "Vraiment ? C'est assez étrange pour être vrai… hein. Qu'est-ce qui t'est arrivé ? Quelqu'un t'a calotté ta petite caboche balafrée ?"~ */
  IF ~~ THEN REPLY #16354 /* ~"Quelque chose comme ça. J'ai d'autres questions…"~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16355 /* ~"C'est une longue histoire. Peut-être une autre fois. Au revoir."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3 16.2 30.3 31.2 32.3 35.3 35.5 37.0 37.2 40.0 40.2
  SAY #16243 /* ~"Ah ouais ? Pfff. C'était pas un bon plan de te parler. Dégage, j'ai plus rien à voir avec toi."~ */
  IF ~~ THEN REPLY #16356 /* ~"J'ai d'autres questions…"~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16357 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 38.0 60.0
  SAY #16244 /* ~Il t'interrompt à mi-phrase. "Non ! Garde tes questions pour toi. Va t'en." Il s'éloigne de toi et reprend ses recherches.~ */
  IF ~~ THEN REPLY #16358 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #16245 /* ~"Eh ! T'as déjà oublié, tête de linotte ? Ratos !"~ */
  IF ~~ THEN REPLY #16359 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16360 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #16246 /* ~"Ça t'regarde pas."~ */
  IF ~~ THEN REPLY #16361 /* ~"On dirait que tu cherches quelque chose."~ */ GOTO 22
  IF ~~ THEN REPLY #16362 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 13
  IF ~~ THEN REPLY #16363 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #16247 /* ~"Non, en fait je chass-" il s'arrête tout d'un coup, en te regardant de biais de façon soupçonneuse. "Qu'est-ce que ça peux te faire, hein ?"~ */
  IF ~~ THEN REPLY #16364 /* ~"Simple curiosité."~ */ GOTO 30
  IF ~~ THEN REPLY #16365 /* ~Vérité : "Je me demandais si je pouvais t'aider."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Rbone_1","GLOBALGood",1)
~ GOTO 30
  IF ~~ THEN REPLY #16366 /* ~Mensonge : " Je me demandais si je pouvais t'aider."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_3","GLOBALLaw",-1)
~ GOTO 30
  IF ~~ THEN REPLY #16367 /* ~"Ça m'est égal. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16368 /* ~"Rien, après tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 30.0 30.1 31.0 31.1 31.3
  SAY #16248 /* ~"Hum. En fait, je chasse les rats-crâne."~ */
  IF ~~ THEN REPLY #16369 /* ~"Pourquoi tu chasses les rats ?"~ */ GOTO 24
  IF ~~ THEN REPLY #16370 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16371 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #16249 /* ~"Pas que des rats, attention - des rats-crâne. Une prime est offerte. Tu le savais ? Une pièce de cuivre par queue rapportée."~ */
  IF ~~ THEN REPLY #16372 /* ~"Pourquoi cette prime ?"~ */ GOTO 25
  IF ~~ THEN REPLY #16373 /* ~"Où est-ce que tu apportes les queues ?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16374 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16375 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #16250 /* ~"Hein ? Parc'que c'est pas des rats normaux ; ils sont beaucoup plus dangereux pour les biges. Plus il y en a, plus ils deviennent rusés… assez rusés pour lancer des sorts, même, comme un mage. La Ruche - tout Sigil en fait - est assez dangereuse sans que des bandes de rats brillants et jeteurs de sorts viennent y couiner partout !"~ */
  IF ~~ THEN REPLY #16376 /* ~"Où est-ce que tu apportes les queues ?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16377 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16378 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #16251 /* ~"Pourquoi ? T'songerais toi aussi à attraper des rats ?"~ */
  IF ~~ THEN REPLY #16379 /* ~"Oui."~ */ GOTO 27
  IF ~~ THEN REPLY #16380 /* ~"Peut-être."~ */ GOTO 27
  IF ~~ THEN REPLY #16381 /* ~"Non, simple curiosité."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #16252 /* ~"Ben pas ici, bige ! Ils sont déjà assez rares ces temps-ci, pas besoin d'un autre bougre sur mon terrain de chasse."~ */
  IF ~~ THEN REPLY #16382 /* ~"Ils se font rares ces temps-ci ? Tu sais pourquoi ?"~ */ GOTO 28
  IF ~~ THEN REPLY #16383 /* ~"J'aimerais savoir, c'est tout."~ */ GOTO 29
  IF ~~ THEN REPLY #16384 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16385 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #16253 /* ~"Non. Peut-être on les a trop chassés, j'suis pas le seul chasseur de rats à Sigil, t'sais. Juste le seul attrapeur de rats du Square du Chiffonnier."~ */
  IF ~~ THEN REPLY #16386 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16387 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.1
  SAY #16254 /* ~"Hum." Il te regarde un moment du coin de l'œil, puis soupire. "J'sais pas pourquoi j'te donne le soltif, mais c'est à l'est, en sortant du Square puis vers le sud. C'est au sud de la place du marché. Mais chasse pas les rats ici, il y en a à peine assez pour un seul chasseur !"~ */
  IF ~~ THEN REPLY #16388 /* ~"Ah bon ? Tu sais pourquoi ?"~ */ GOTO 28
  IF ~~ THEN REPLY #16389 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16390 /* ~"Merci, je m'y arrêterai un de ces jours. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 22.0 22.1 22.2
  SAY #16255 /* ~"Hum. J'vais pas t'faire des confidences si j'ai rien en retour. Dis-moi d'abord c'que tu fais ici."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16391 /* ~"Je cherche un certain Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16392 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 23
  IF ~~ THEN REPLY #16393 /* ~"Je ne sais pas moi-même. Je me balade, c'est tout."~ */ GOTO 31
  IF ~~ THEN REPLY #16394 /* ~"Il me semble que ça ne te regarde pas."~ */ GOTO 18
  IF ~~ THEN REPLY #16395 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY #16256 /* ~"Allez, bige, tu peux mieux faire. Mens, s'il le faut… et t'es pas déjà en train de le faire !" Il lève les yeux au ciel, riant amèrement.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16396 /* ~"Je cherche un certain Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16397 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 23
  IF ~~ THEN REPLY #16398 /* ~"Je te l'ai dit, je me balade, c'est tout."~ */ GOTO 18
  IF ~~ THEN REPLY #16399 /* ~Invente quelque chose.~ */ GOTO 23
  IF ~~ THEN REPLY #16400 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 13.5
  SAY #16257 /* ~"Ah, c'est ça ? Hum…" Il se penche et baisse la voix. "Il est prêt d'ici, tu sais. Pourquoi t'le cherches, hein ? Un ami ? Un ennemi ?"~ */
  IF ~~ THEN REPLY #16401 /* ~"Il a des informations pour moi."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 33
  IF ~~ THEN REPLY #16402 /* ~Mensonge : "C'est un ami à moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 34
  IF ~~ THEN REPLY #16403 /* ~Mensonge : "Un ennemi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~~ THEN REPLY #16404 /* ~"Il me semble que ça ne te regarde pas."~ */ DO ~SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~~ THEN REPLY #16405 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #16258 /* ~"Ah bon ? Ben t'es au bon endroit. C'qui faut qu'tu fasses, c'est qu'tu continue à chercher par ici. L'homme est assez bien caché mais tu finiras par le trouver ici dans le Square du Chiffonnier. Tu le trouveras bien assez vite va."~ */
  IF ~~ THEN REPLY #16406 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16407 /* ~"Alors, je vais essayer de le trouver. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #16259 /* ~"Ah bon?" Ratos te regarde soigneusement. "Hum. T'veux qu'il t'donne du travail ? T'as pas le style. Bon, peu importe… t'es au bon endroit. C'qui faut qu'tu fasses, c'est qu'tu continue à chercher par ici. L'homme est assez bien caché mais tu finiras par le trouver ici dans le Square du Chiffonnier. Tu le trouveras bien assez vite, va."~ */
  IF ~~ THEN REPLY #16408 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16409 /* ~"Alors, je vais essayer de le trouver. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #16260 /* ~Il fait une grimace puis secoue la tête, en riant sous cape. "Eh ! J'voudrais pas qu'un matois de ta sorte vienne me chercher ! Sais pas si le vieux Pharod aimerait que je dise à un lascar de ton espèce où il est. Ça pourrait m'attirer des ennuis…"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16410 /* ~Serment : "Je te jure de ne pas mentionner ton nom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
~ GOTO 36
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16411 /* ~Serment : "Je te jure de ne pas mentionner ton nom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~~ THEN REPLY #16412 /* ~Mensonge : "Je te jure que je ne mentionnerai pas ton nom."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_5","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16413 /* ~Vérité : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16414 /* ~Vérité : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16415 /* ~Bluff : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16416 /* ~Bluff : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~~ THEN REPLY #16417 /* ~"Alors, peu importe. Je voudrais te demander autre chose…"~ */ GOTO 13
  IF ~~ THEN REPLY #16418 /* ~"Alors, oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #16261 /* ~"Bon, allez ! J'sais pas pourquoi… mais j'te fais confiance." Il s'arrête le temps de cracher par-dessus son épaule. "J'espère que j'aurai pas à le regretter, bige ! C'qui faut qu'tu fasses, c'est qu'tu continue à chercher par ici. L'homme est assez bien caché, mais tu finiras par le trouver ici dans le Square du Chiffonnier. Tu le trouveras bien assez vite, va."~ */
  IF ~~ THEN REPLY #16419 /* ~"Merci. J'ai d'autres questions…"~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16420 /* ~"Alors, je vais essayer de le trouver. Au revoir."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 35.2
  SAY #16262 /* ~Il secoue la tête tristement. "Désolé, pas la peine d'insister. Il est pas loin pourtant. Tu le trouveras toi-même bien assez vite."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16421 /* ~Vérité : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16422 /* ~Vérité : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16423 /* ~Bluff : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16424 /* ~Bluff : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16425 /* ~"J'ai d'autres questions, alors…"~ */ GOTO 13
  IF ~~ THEN REPLY #16426 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.4 35.6 37.1 37.3 40.1 40.3
  SAY #16263 /* ~Il ricane et crache à tes pieds. "Hum. Et tu m'avais donné ta parole que t'ne me ferais pas de mal. J'ai eu tort de te parler. Dégage, j'veux plus te voir."~ */
  IF ~~ THEN REPLY #16427 /* ~"J'ai d'autres questions…"~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16428 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 13.6
  SAY #16264 /* ~Il secoue la tête, ennuyé. "On en a déjà parlé, non  ? C'qui faut qu'tu fasses, c'est qu'tu continue à chercher par ici. L'homme est assez bien caché mais tu finiras par le trouver ici dans le Square du Chiffonnier… Va trouver ce bougre, avant que t'oublies et qu'tu reviennes m'embêter avec tes questions !"~ */
  IF ~~ THEN REPLY #16429 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16430 /* ~"Alors, je vais essayer de le trouver. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7
  SAY #16265 /* ~Le visage de Ratos se renfrogne. "Je te l'ai déjà dit : j'vais pas te le dire. Il est pas loin. T'as qu'à le trouver."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16431 /* ~Vérité : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16432 /* ~Vérité : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16433 /* ~Bluff : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16434 /* ~Bluff : "Dis-moi ce que tu sais ou tu subiras le même sort que lui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16435 /* ~"J'ai d'autres questions, alors…"~ */ GOTO 13
  IF ~~ THEN REPLY #16436 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 13.8
  SAY #16266 /* ~"Si tu l'as perdu ici, bonne chance dans ce foutoir. Je ne peux rien faire pour toi."~ */
  IF ~~ THEN REPLY #16437 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16438 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 13.3
  SAY #16267 /* ~"Qu'est-ce que tu veux savoir ? Ratos pourrait avoir une ou deux réponses pour toi."~ */
  IF ~~ THEN REPLY #16439 /* ~"Où est-ce que je pourrais trouver du travail ?"~ */ GOTO 43
  IF ~~ THEN REPLY #16440 /* ~"Où est-ce que je pourrais m'amuser un peu ?"~ */ GOTO 48
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16441 /* ~"Je dois faire attention à quelque chose ici ?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16442 /* ~"Je dois faire attention à quelque chose ici ?"~ */ GOTO 50
  IF ~~ THEN REPLY #16443 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16444 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 48.1 49.0 50.1 51.0 52.1 58.0 59.0
  SAY #16268 /* ~"Du travail ? Y'en a pas beaucoup dans la Ruche. Rien d'honnête, pour sûr. Si t'es désespéré, tu pourrais travailler comme Récupérateur… Personnellement, je chercherais dans un autre quartier. Plus tu descends bas, plus t'as de chances."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16445 /* ~"Et la chasse aux rats ?"~ */ GOTO 47
  IF ~~ THEN REPLY #16446 /* ~"Un Récupérateur ?"~ */ GOTO 45
  IF ~~ THEN REPLY #16447 /* ~"Par où je dois passer pour aller au Bas Quartier ?"~ */ GOTO 44
  IF ~~ THEN REPLY #16448 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16449 /* ~"Alors, j'irai peut-être voir là-bas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2 45.1 47.1
  SAY #16269 /* ~"C'est facile. T'as qu'à… hum, non. La vérité, avant c'était facile, mais maintenant tout a changé… ces Dabus ont tout réarrangé. Sais pas trop comment un matois y arriverait maintenant."~ */
  IF ~~ THEN REPLY #16450 /* ~"Les dabus ?"~ */ GOTO 46
  IF ~~ THEN REPLY #16451 /* ~"Qu'est-ce que tu as dit sur le fait de devenir Récupérateur ?"~ */ GOTO 45
  IF ~~ THEN REPLY #16452 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16453 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.1 46.0 47.0
  SAY #16270 /* ~"Ouais. Les Récupérateurs amènent les macchabées de Sigil… de la Ruche pour la plupart… à la Morgue. Les Morts -- les Hommes-Poussière -- paient pour les cadavres. Ça évite que l'endroit n'empire."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16454 /* ~"Et la chasse aux rats ?"~ */ GOTO 47
  IF ~~ THEN REPLY #16455 /* ~"Par où je dois passer pour aller au Bas Quartier ?"~ */ GOTO 44
  IF ~~ THEN REPLY #16456 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16457 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0
  SAY #16271 /* ~"Tu sais vraiment rien à rien ? Houah ! Les Dabus sont les serviteurs de la Dame des Douleurs, la Maîtresse de Sigil. Ne m'en demande pas plus, parce que ça porte la poisse de parler d'elle."~ */
  IF ~~ THEN REPLY #16458 /* ~"Qu'est-ce que tu as dit sur le fait de devenir Récupérateur ?"~ */ GOTO 45
  IF ~~ THEN REPLY #16459 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16460 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.0 45.0
  SAY #16272 /* ~Ratos lève les mains, comme pour t'arrêter : "Oh, non ! Pas question… pas ici, du moins ! Il y en a à peine assez pour moi ; je pense qu'ils ont presque tous été chassés. Va ailleurs si tu songes à t'établir l'dedans."~ */
  IF ~~ THEN REPLY #16461 /* ~"Qu'est-ce que tu as dit sur le fait de devenir Récupérateur ?"~ */ GOTO 45
  IF ~~ THEN REPLY #16462 /* ~"Par où je dois passer pour aller au Bas Quartier ?"~ */ GOTO 44
  IF ~~ THEN REPLY #16463 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16464 /* ~"On verra. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.1 50.2 51.1 52.2 58.1 59.1
  SAY #16273 /* ~"J'sais pas c'que tu cherches exactement, mais n'importe où plutôt qu'ici. Même les 'dames' peuvent avoir des ennuis dans ce coin de Sigil, si tu vois c'que j'veux dire."~ */
  IF ~~ THEN REPLY #16465 /* ~"Non, je ne vois pas."~ */ GOTO 49
  IF ~~ THEN REPLY #16466 /* ~"Où est-ce que je pourrais trouver du travail ici ?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16467 /* ~"Je dois faire attention à quelque chose ici ?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16468 /* ~"Je dois faire attention à quelque chose ici ?"~ */ GOTO 50
  IF ~~ THEN REPLY #16469 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16470 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #16274 /* ~"Ah… et ben tant pis."~ */
  IF ~~ THEN REPLY #16471 /* ~"Où est-ce que je pourrais trouver du travail ici ?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
!Dead("Adyzoel")
~ THEN REPLY #16472 /* ~"Je dois faire attention à quelque chose ici ?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16473 /* ~"Je dois faire attention à quelque chose ici ?"~ */ GOTO 50
  IF ~~ THEN REPLY #16474 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16475 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 42.3 48.3 49.2
  SAY #16275 /* ~"Rien d'particulier… mais t'sais jamais d'où viennent les ennuis, ici. Surveille tes arrières et fais attention à c'que tu dis. Si tu t'adresses pas au bon type, tu pourrais t'retrouver dans le livre des morts -- ou pire -- et vite encore."~ */
  IF ~~ THEN REPLY #16476 /* ~"Pire ?"~ */ GOTO 51
  IF ~~ THEN REPLY #16477 /* ~"Où est-ce que je pourrais trouver du travail ?"~ */ GOTO 43
  IF ~~ THEN REPLY #16478 /* ~"Où est-ce que je pourrais m'amuser un peu ?"~ */ GOTO 48
  IF ~~ THEN REPLY #16479 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16480 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #16276 /* ~Il acquiesce gravement. "Ouais. N'me dis pas que tu peux penser à rien de pire que la mort…"~ */
  IF ~~ THEN REPLY #16481 /* ~"Où est-ce que je pourrais trouver du travail ?"~ */ GOTO 43
  IF ~~ THEN REPLY #16482 /* ~"Où est-ce que je pourrais m'amuser un peu ?"~ */ GOTO 48
  IF ~~ THEN REPLY #16483 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16484 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.2 48.2 49.1
  SAY #16277 /* ~"Plein de choses. Mais il y a un truc auquel il faut que tu fasses gaffe… y'a un roué qui erre dans la Ruche. Il a pas l'air d'un lascar, mais c'est un lutteur né aussi sûr que Sigil est ronde."~ */
  IF ~~ THEN REPLY #16485 /* ~"Qui est-ce ?"~ */ GOTO 53
  IF ~~ THEN REPLY #16486 /* ~"Où est-ce que je pourrais trouver du travail ?"~ */ GOTO 43
  IF ~~ THEN REPLY #16487 /* ~"Où est-ce que je pourrais m'amuser un peu ?"~ */ GOTO 48
  IF ~~ THEN REPLY #16488 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16489 /* ~"Alors, je ferai attention. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #16278 /* ~"Attends bige, j'ai pas fini encore. J'allais te dire : c'est pas tellement le roué mais le Récupérateur crasseux qui le pourchasse tout l'temps, tu vois ? J'te le dis, ce Récupérateur a plus à voir avec la tuerie du roué qu'avec le simple enlèvement des macchabées."~ */
  IF ~~ THEN REPLY #16490 /* ~"Le Récupérateur ?"~ */ GOTO 54
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16491 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16492 /* ~"Comment tu sais ça ?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16493 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16494 /* ~"Comment tu sais ça ?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #16279 /* ~"Ouais, ceux qui amènent les morts de Sigil - de la Ruche, surtout - à la Morgue, pour du jonc."~ */
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16495 /* ~"Qu'est-ce que tu veux dire par 'plus à voir avec' ?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16496 /* ~"Comment tu sais tout ça sur ce Récupérateur ?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16497 /* ~"Qu'est-ce que tu veux dire par 'plus à voir avec' ?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16498 /* ~"Comment tu connais ce Récupérateur ?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 55 // from: 53.1 53.2 54.0 54.1
  SAY #16280 /* ~"Hum… écoute, j'vois que t'es intéressé, et c'est pas la chanson habituelle, si t'me suis -- c'est le soltif le plus complet. Je vais t'demander un service si tu veux qu'je crache le morceau."~ */
  IF ~~ THEN REPLY #16499 /* ~"Je t'écoute."~ */ GOTO 56
  IF ~~ THEN REPLY #16500 /* ~"Alors, peu importe. J'ai d'autres questions."~ */ GOTO 13
  IF ~~ THEN REPLY #16501 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #16281 /* ~"Bien, bien. J'ai fait un pari avec un pote… une sorte de compétition, en fait. Suffit que tu saches que je veux des queues de rats, le plus possible. Mais pas des rats normaux, attention, des queues de rats-crâne… de la vermine à cerveau. Donne-moi cinq queues, et je te donne le soltif sur ce Récupérateur crasseux et ce soudrillard sanglant."~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16502 /* ~"J'ai tes cinq queues de rats."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16503 /* ~"Des rats-crâne ?"~ */ GOTO 57
  IF ~~ THEN REPLY #16504 /* ~"Je comprends."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16505 /* ~"Je crois que c'est pas la peine que je perde mon temps."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY #16282 /* ~"C'est ça. C'sont pas des rats normaux, ils sont beaucoup plus dangereux. Plus il y en a, plus ils deviennent rusés… assez rusés pour tendre des pièges et j'ter des sorts, comme un mage. Fais attention à toi en prenant ces queues !"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16506 /* ~"J'ai tes cinq queues de rats."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16507 /* ~"Je comprends."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16508 /* ~"Je crois que c'est pas la peine que je perde mon temps."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 56.2 57.1 78.0
  SAY #16283 /* ~"Bon. Autre chose ?"~ */
  IF ~~ THEN REPLY #16509 /* ~"Oui. Où est-ce que je pourrais trouver du travail ?"~ */ GOTO 43
  IF ~~ THEN REPLY #16510 /* ~"Oui. Où est-ce que je pourrais m'amuser un peu ?"~ */ GOTO 48
  IF ~~ THEN REPLY #16511 /* ~"Oui, j'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16512 /* ~"Non, rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 56.3 57.2 78.1
  SAY #16284 /* ~"Comme tu veux. Tu sais c'que tu dois m'apporter si tu veux connaître le soltif sur ces deux-là. Autre chose ?"~ */
  IF ~~ THEN REPLY #16513 /* ~"Oui. Où est-ce que je pourrais trouver du travail ?"~ */ GOTO 43
  IF ~~ THEN REPLY #16514 /* ~"Oui. Où est-ce que je pourrais m'amuser un peu ?"~ */ GOTO 48
  IF ~~ THEN REPLY #16515 /* ~"Oui, j'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16516 /* ~"Non, rien. Au revoir."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",1)
~ THEN BEGIN 60 // from:
  SAY #16285 /* ~"Sais pas pourquoi tu reviens, j'ai rien d'autre à te dire."~ */
  IF ~~ THEN REPLY #16517 /* ~"J'ai des questions…"~ */ GOTO 19
  IF ~  !Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16518 /* ~"Je voulais m'excuser."~ */ GOTO 62
  IF ~  Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16519 /* ~"Je voulais m'excuser."~ */ GOTO 61
  IF ~  Global("RB_Sorry","AR0101",1)
~ THEN REPLY #16520 /* ~"Je voulais m'excuser."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 60.2
  SAY #16286 /* ~"Non, bige ; t'es allé trop loin, t'as menti et en plus tu m'as menacé… dégage."~ */
  IF ~~ THEN REPLY #16521 /* ~Pars.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1
  SAY #16287 /* ~"Hum." Il réfléchit un moment, puis crache par-dessus son épaule. "C'est pas que j'aimr'ais pas t'donner une seconde chance, ça c'est sûr. Fais gaffe à c'que tu dis cette fois-ci, bige…"~ */
  IF ~~ THEN REPLY #16522 /* ~"Merci. J'ai des questions…"~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16523 /* ~"D'accord. Au revoir."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.3
  SAY #16288 /* ~"Non, j'tai déjà donné ta seconde chance. Dégage."~ */
  IF ~~ THEN REPLY #16524 /* ~Pars.~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
GlobalLT("RB_Quest","AR0101",2)
~ THEN BEGIN 64 // from:
  SAY #16289 /* ~Ratos te regarde alors que tu approches. "Hum ?"~ */
  IF ~  GlobalGT("RB_Quest","AR0101",0)
NumItemsPartyGT("Tail",4)
~ THEN REPLY #16525 /* ~"J'ai tes queues de rats."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16526 /* ~"J'ai des questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16527 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",2)
~ THEN BEGIN 65 // from:
  SAY #16290 /* ~Ratos te regarde alors que tu approches. "On s'retrouve. T'as les queues ?"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16528 /* ~"Oui."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16529 /* ~"Pas encore. J'ai quelques questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16530 /* ~"Non, pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 56.0 57.0 64.0 65.0
  SAY #16291 /* ~Il prend les queues et les laisse tomber dans une bourse en cuir, tout en riant sous cape. "Cela fera sûrement l'affaire ! J'te remercie."~ */
  IF ~~ THEN REPLY #16531 /* ~"Tu peux me parler de ton secret, maintenant."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 13.4 66.0
  SAY #16292 /* ~"Bien sûr, bien sûr. J'ai tout de suite pensé que quelque chose n'allait pas quand j'ai vu pour la première fois ce roué. Se battre en duel dans la Ruche pour éviter de se faire remarquer, c'est une chose, mais cela fait plusieurs jours qu'il est là… il habite même dans la Ruche, plutôt que de prendre un chariot ou autre pour regagner sa case."~ */
  IF ~~ THEN REPLY #16532 /* ~"Se faire remarquer ?"~ */ GOTO 68
  IF ~~ THEN REPLY #16533 /* ~"Continue…"~ */ GOTO 69
  IF ~~ THEN REPLY #16534 /* ~"J'écouterai la suite plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #16293 /* ~"Ouais, de la loi. Des Rectifieurs et des types du genre. Ils patrouillent les rues de Sigil - une partie du moins - en faisant respecter l''ordre'." Il fait une grimace. "Ils restent à l'écart des parties les plus pauvres de la cité, comme la Ruche."~ */
  IF ~~ THEN REPLY #16535 /* ~"Je vois. Alors, continue…"~ */ GOTO 69
  IF ~~ THEN REPLY #16536 /* ~"J'écouterai la suite plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0
  SAY #16294 /* ~"J'ai renoncé à voler il y a bien longtemps - m'demande pas pourquoi - mais ça devenait trop facile. Tard une nuit, autour d'antipic, je m'suis glissé furtivement à l'arrière de l'auberge pouilleuse où il dormait et qui j'ai vu à la fenêtre de sa chambre ? Ce Récupérateur !"~ */
  IF ~~ THEN REPLY #16537 /* ~"Continue, s'il te plaît…"~ */ GOTO 70
  IF ~~ THEN REPLY #16538 /* ~"J'écouterai la suite plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #16295 /* ~"Depuis je suis doublement soupçonneux. La curiosité a piqué le vieux Ratos et j'me suis mis à suivre ce Récupérateur. Il ne dort jamais, ne mange jamais… lorsque le roué n'est pas là, il s'assoit dans l'allée la plus sombre qu'il peut trouver et regarde dans le vide."~ */
  IF ~~ THEN REPLY #16539 /* ~"Intéressant. Continue…"~ */ GOTO 71
  IF ~~ THEN REPLY #16540 /* ~"J'écouterai la suite plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #16296 /* ~"Voilà la meilleure de l'histoire : Par une nuit très sombre, j'étais allongé sur un toit qui surplombe l'allée où se trouve le Récupérateur, et devine qui vient lui parler ?"~ */
  IF ~~ THEN REPLY #16541 /* ~"Le roué ?"~ */ GOTO 72
  IF ~~ THEN REPLY #16542 /* ~"Je t'écoute."~ */ GOTO 73
  IF ~~ THEN REPLY #16543 /* ~"Tu me diras ça une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #16297 /* ~"Non ! Une *fiélonne* !"~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.1 72.0
  SAY #16298 /* ~"Une fiélonne, j'te dis. Charmante, avec des ailes comme un ange et des lèvres comme… comme… bref elle était sublime. Mais une fiélonne - une tentatrice, une baatezu, le type qu'on appelait Erinye, d'où je viens."~ */
  IF ~~ THEN REPLY #16544 /* ~"Alors, continue…"~ */ GOTO 74
  IF ~~ THEN REPLY #16545 /* ~"J'écouterai la suite plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #16299 /* ~"J'aurais donné n'importe quoi pour entendre ce qu'ils disaient, mais je sais bien que s'faire remarquer par un fiélon n'attire que des ennuis. Ils ont parlé pendant un moment, puis la fiélonne a ri - un rire cruel, moqueur - et a disparu. Le Récupérateur grognait et sifflait tandis qu'elle disparaissait !"~ */
  IF ~~ THEN REPLY #16546 /* ~"Tu es sûr de tout ça ?"~ */ GOTO 75
  IF ~~ THEN REPLY #16547 /* ~"Pourquoi un fiélon parlerait à un Récupérateur ?"~ */ GOTO 76
  IF ~~ THEN REPLY #16548 /* ~"C'est une histoire intéressante. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #16300 /* ~"Eh ! Vas-y voir toi-même si tu n'me crois pas ! Mais ne tente pas le diable - ce roué est un méchant lascar et quiconque s'attaque à lui ou importune ce Récupérateur se retrouve vite fait dans le livre des morts."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #16549 /* ~"Pourquoi un fiélon parlerait à un Récupérateur ?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #16550 /* ~"Pourquoi un fiélon parlerait à un Récupérateur ?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #16551 /* ~"C'est une histoire intéressante. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 74.1 75.0
  SAY #16301 /* ~"T'as rien pigé, pauvre enfumé ! Ce n'est pas un Récupérateur ! Eh… si tu parles un jour à un fiélon… un baatezu et pas une de ces azimutées de tanar'ris… pourquoi pas lui demander ? T'sais jamais ce que tu pourrais trouver."~ */
  IF ~~ THEN REPLY #16552 /* ~"Merci du renseignement. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16553 /* ~"Je suivrai peut-être tes conseils, si j'en rencontre un. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #16302 /* ~"T'as rien pigé, abruti ! Ce n'est pas un Récupérateur ! Eh… si tu parles un jour à un fiélon… un baatezu et pas un de ces azimutés de…" Il s'arrête, en remarquant Tombée-en-Disgrâce. "Euh, j'veux dire, un de ces 'plus libres' tanar'ris… pourquoi pas lui demander ? T'sais jamais ce que tu pourrais trouver."~ */
  IF ~~ THEN REPLY #16554 /* ~"Merci du renseignement. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16555 /* ~"Je suivrai peut-être tes conseils, si j'en rencontre un. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 53.3 53.4 54.2 54.3
  SAY #16303 /* ~"Je t'ai déjà dit ce que je voulais pour cracher le soltif : cinq queues de rats. Et pas des rats normaux, attention, des rats-crâne… de la vermine à cerveau. Apporte-moi ces cinq queues et je t'éclaircirai sur le Récupérateur crasseux et sur le soudrillard sanglant."~ */
  IF ~~ THEN REPLY #16556 /* ~"Je comprends."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16557 /* ~"Je crois que c'est pas la peine que je perde mon temps."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",3)
~ THEN BEGIN 79 // from:
  SAY #16304 /* ~Ratos te regarde alors que tu approches. "Hum ?"~ */
  IF ~~ THEN REPLY #16558 /* ~"J'ai des questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #16559 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END
