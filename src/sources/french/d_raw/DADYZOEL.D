// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADYZOEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DADYZOEL~

IF ~  Global("Adyzoel","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15296 /* ~Ce jeune homme légèrement efféminé, bien soigné de sa personne regarde les passants avec dédain. Sa main repose sur la garde très ouvragée et parée de bijoux d'un sabre. Avec ses vêtements en soie et ses bottines en daim, il jure dans le paysage.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #15351 /* ~"Bonjour…"~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #15352 /* ~"Bonjour…"~ */ EXTERN ~DANNAH~ 97
  IF ~~ THEN REPLY #15353 /* ~Passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15297 /* ~Même si ses traits délicats et ses lèvres pincées peuvent faire croire à une femme avenante, sa voix, malgré sa douceur, est bien masculine : "Mmm, un étranger. Un autre 'matois'…", il crache ce mot, comme si son goût le scandalisait, "… es-tu venu me défier à l'épée ?"~ */
  IF ~~ THEN REPLY #15354 /* ~"Non, mais J'ai des questions…"~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15355 /* ~"Pourquoi pas ? Oui."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15356 /* ~"Pourquoi pas ? Oui."~ */ EXTERN ~DMORTE~ 169
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15357 /* ~"Oui, mais ça te dérangerait de faire un pari sur l'issue de ce duel ?"~ */ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15358 /* ~"Oui, mais ça te dérangerait de faire un pari sur l'issue de ce duel ?"~ */ EXTERN ~DMORTE~ 171
  IF ~~ THEN REPLY #15359 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 21.2
  SAY #15298 /* ~"Va-t'en. Je n'ai pas de temps à perdre avec ceux de ton espèce." Il te fait signe de t'éloigner.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #15360 /* ~"Tu me sous-estimes, 'monsieur'. Tu vas écouter mes questions, oui ou non ?"~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15361 /* ~"Tu vas prendre le temps et répondre à mes questions."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15362 /* ~"Tu vas prendre le temps et répondre à mes questions."~ */ EXTERN ~DMORTE~ 170
  IF ~~ THEN REPLY #15363 /* ~"Bon, je ne vais pas te faire perdre ton temps, sale cabot bâtard."~ */ GOTO 3
  IF ~~ THEN REPLY #15364 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 37.1
  SAY #15299 /* ~Les yeux du jeune homme luisent comme de la glace brûlante ; une esquisse de sourire glacial apparaît sur ses lèvres. "Alors tu viens ? Répète ce que tu viens de dire, espèce de débris lourdaud et bestial. Qu'est-ce que tu m'as dit ?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15365 /* ~"Tu as très bien entendu, femme."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15366 /* ~"Tu as très bien entendu, femme."~ */ EXTERN ~DMORTE~ 173
  IF ~~ THEN REPLY #15367 /* ~"Rien. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0 13.0 13.1
  SAY #15300 /* ~Tu as à peine le temps de faire un mouvement que son sabre est déjà prêt. Il se lèche les lèvres et rit doucement : "Tâche de ne pas saigner sur mes bottines." Derrière lui, un personnage vêtu d'une robe très sale te regarde de ses yeux avides…~ */
  IF ~~ THEN REPLY #15368 /* ~Réponds à son attaque.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15369 /* ~Fuis.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 21.3
  SAY #15301 /* ~"Non, non, non… ce n'est pas si facile." Il ferme les yeux et secoue la tête avec un regret feint. "Si tu pars, c'est en cadavre ou en couard ; c'est à toi de choisir."~ */
  IF ~~ THEN REPLY #15370 /* ~"Tu es sûr qu'il n'y a pas de troisième possibilité ?"~ */ GOTO 8
  IF ~~ THEN REPLY #15371 /* ~"Je regarde le seul cadavre qu'il y a ici."~ */ GOTO 6
  IF ~~ THEN REPLY #15372 /* ~Retourne-toi et pars.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #15302 /* ~Tu as à peine le temps de faire un mouvement que son sabre est déjà prêt. "Ton reflet ne se voit déjà plus dans mes yeux, bête. Tâche de ne pas saigner sur mes bottines." Derrière lui, un personnage vêtu d'une robe très sale te regarde de ses yeux avides…~ */
  IF ~~ THEN REPLY #15373 /* ~Réponds à son attaque.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15374 /* ~Fuis.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 8.2 10.1 11.1 13.2 36.1
  SAY #15303 /* ~Alors que tu t'éloignes, il parle : "C'est bien ce que je pensais. Couard." Bien que ce soit à peine audible, tu entends quelqu'un derrière lui pousser un soupir de déception.~ */
  IF ~~ THEN REPLY #15375 /* ~Retourne-toi et attaque-le.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15376 /* ~Ignore le commentaire et pars.~ */ DO ~SetGlobal("Adyzoel","AR0400",2)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15377 /* ~Ignore le commentaire et pars.~ */ EXTERN ~DMORTE~ 180
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #15304 /* ~Il semble surpris un moment, puis acquiesce. "Il y en a *toujours*, n'est-ce pas ? Hum… Je suppose que tu pourrais demander mon pardon et prier une puissance quelconque pour que je sois d'humeur généreuse."~ */
  IF ~~ THEN REPLY #15378 /* ~"Jamais. Battons-nous."~ */ GOTO 4
  IF ~~ THEN REPLY #15379 /* ~"Alors, je te demande pardon. Ce n'est pas ce que je voulais dire."~ */ GOTO 9
  IF ~~ THEN REPLY #15380 /* ~"Pas question. Au revoir."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #15305 /* ~Il fronce les sourcils, en faisant rouler ses yeux. "Très bien, je…" Il s'arrête soudain, troublé, et pose la main sur sa tempe.~ */
  IF ~~ THEN REPLY #15381 /* ~Attends de voir ce qui se passe.~ */ GOTO 10
  IF ~~ THEN REPLY #15382 /* ~"Ça va ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #15383 /* ~Attaque-le au moment où il baisse sa garde.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15384 /* ~Pars pendant qu'il est distrait.~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #15306 /* ~"Je… euh… non, il ne peut y avoir de pardon !" Il secoue la tête et son expression passe de la confusion à une résolution sinistre. "Fuis ou meurs !"~ */
  IF ~~ THEN REPLY #15385 /* ~Attaque-le.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15386 /* ~Pars.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #15307 /* ~Il te rappelle alors que tu t'en vas : "Reviens ici, espèce d'épave !"~ */
  IF ~~ THEN REPLY #15387 /* ~Retourne-toi et fais-lui face.~ */ GOTO 12
  IF ~~ THEN REPLY #15388 /* ~Ne t'arrête pas.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15308 /* ~Alors que tu te retournes vers lui, son sabre est prêt en un mouvement. "Ah, bien, tu vas te battre ! Tâche de ne pas saigner sur mes bottines." Derrière lui, un personnage vêtu d'une robe très sale te regarde de ses yeux avides…~ */
  IF ~~ THEN REPLY #15389 /* ~Réponds à son attaque.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15390 /* ~Fuis.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.1 40.0
  SAY #15309 /* ~Il rit amèrement. "Tu n'arriveras pas à m'intimider, espèce de brute. Je suggère que tu partes avant que ta vie ne dégouline dans les caniveaux de Sigil."~ */
  IF ~~ THEN REPLY #15391 /* ~Vérité : "Je vais te donner une dernière chance de parler avant de vous briser en deux, toi et ta belle épée."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Adyzoel_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15392 /* ~Bluff : "Je vais te laisser une dernière chance de parler avant de vous briser en deux, toi et ta belle épée."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_2","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15393 /* ~Pars.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 2.0
  SAY #15310 /* ~"Tien donc ?!' Hum…ton impudence m'amuse, rucheux. Qu'est-ce que tu veux me demander ?"~ */
  IF ~~ THEN REPLY #15394 /* ~"Qui es-tu ?"~ */ GOTO 17
  IF ~~ THEN REPLY #15395 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15396 /* ~"Je veux me battre en duel."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15397 /* ~"Je veux me battre en duel."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15398 /* ~"Je cherche un certain Pharod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15399 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 16
  IF ~~ THEN REPLY #15400 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.4 22.4
  SAY #15311 /* ~"Les noms des… "gens"… ici ne m'intéressent pas. Je connaîtrais ce Pharod si je l'avais rencontré."~ */
  IF ~~ THEN REPLY #15401 /* ~"J'ai d'autres questions…"~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15402 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15403 /* ~"Alors, au revoir."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15404 /* ~"Alors, au revoir."~ */ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 14.5 22.5
  SAY #15312 /* ~"Tu sais *lire ?*" Il rit sous cape. "Bon… tu l'as perdu ici ? Il a été volé, c'est sûr ; il a sûrement servi de literie ou de petit bois aux dégénérés locaux. À ta place, j'oublierais carrément son existence ; je suis certain que si tu tombais dessus, t'en voudrais même plus."~ */
  IF ~~ THEN REPLY #15405 /* ~"J'ai d'autres questions…"~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15406 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15407 /* ~"Alors, au revoir."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15408 /* ~"Alors, au revoir."~ */ GOTO 25
END

IF ~~ THEN BEGIN 17 // from: 14.0 22.0
  SAY #15313 /* ~"Tu peux m'appeler Adyzoel, de la Maison Eriane-Ard."~ */
  IF ~~ THEN REPLY #15409 /* ~"J'ai d'autres questions…"~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15410 /* ~"On aura peut-être l'occasion de se reparler, Adyzoel. Au revoir."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15411 /* ~"On aura peut-être l'occasion de se reparler, Adyzoel. Au revoir."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15412 /* ~"On aura peut-être l'occasion de se reparler, Adyzoel. Au revoir."~ */ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 14.1 22.1
  SAY #15314 /* ~Il grimace méchamment ; ses dents, parfaites et blanches comme de la neige qui vient de tomber, semblent aussi aiguisées que des couteaux. "Oh, rien de bien particulier. Je m'entraîne, je cherche des ennuis. 'Le quotidien de la Ruche', quoi."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15413 /* ~"Je crois que je serais un bon moyen de tester tes talents."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15414 /* ~"Je crois que je serais un bon moyen de tester tes talents."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15415 /* ~"J'ai d'autres questions…"~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15416 /* ~"J'espère que tu trouveras des ennuis, alors. Au revoir."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15417 /* ~"J'espère que tu trouveras des ennuis, alors. Au revoir."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15418 /* ~"J'espère que tu trouveras des ennuis, alors. Au revoir."~ */ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 1.1 14.2 18.0 21.0 22.2 23.0 27.0 28.1 29.0 31.0 38.1 40.1
  SAY #15315 /* ~Les yeux du jeune homme luisent comme de la glace brûlante ; une esquisse de sourire glacial apparaît sur ses lèvres. "Excellent…" Tu as à peine le temps de faire un mouvement que son sabre est déjà prêt. "Tâche de ne pas saigner sur mes bottines." Derrière lui, un personnage vêtu d'une robe très sale te regarde de ses yeux avides…~ */
  IF ~  Global("Adyzoel","AR0400",6)
~ THEN REPLY #15419 /* ~"Attends…"~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15420 /* ~Réponds à son attaque.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15421 /* ~Fuis.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.3
  SAY #15316 /* ~Ses yeux s'illuminent. "Eh oui, voilà une splen-" Il s'arrête soudain, troublé et pose la main sur sa tempe.~ */
  IF ~~ THEN REPLY #15422 /* ~Attends de voir ce qui se passe.~ */ GOTO 21
  IF ~~ THEN REPLY #15423 /* ~"Ça va ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 21
  IF ~~ THEN REPLY #15424 /* ~Attaque-le au moment où il baisse sa garde.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15425 /* ~Pars pendant qu'il est distrait.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15317 /* ~"Je… eh… non, pas de paris ! Tu gagnes, tu vis ; tu perds, tu meurs. C'est aussi simple que ça."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15426 /* ~"Très bien. Battons-nous."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15427 /* ~"Très bien. Battons-nous."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15428 /* ~"Alors, laisse tomber. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #15429 /* ~"Alors, tant pis. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 15.0 16.0 17.0 18.2 23.2 23.3 31.2
  SAY #15318 /* ~"Bien, bien. Continue."~ */
  IF ~~ THEN REPLY #15430 /* ~"Qui es-tu ?"~ */ GOTO 17
  IF ~~ THEN REPLY #15431 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15432 /* ~"Je veux me battre en duel."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15433 /* ~"Je veux me battre en duel."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15434 /* ~"Je cherche un certain Pharod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15435 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 16
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15436 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15437 /* ~"Rien, peu importe. Au revoir."~ */ GOTO 24
END

IF ~  Global("Adyzoel","AR0400",1)
~ THEN BEGIN 23 // from: 26.0
  SAY #15319 /* ~Adyzoel fait un signe de tête lorsqu'il t'aperçoit. "Ah, de retour. Pour croiser le fer cette fois ou pour m'ennuyer avec tes questions ?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15438 /* ~"Je suis là pour me battre."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15439 /* ~"Je suis là pour me battre."~ */ EXTERN ~DMORTE~ 169
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15440 /* ~"J'ai des questions…"~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15441 /* ~"J'ai des questions…"~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 22
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15442 /* ~"Ni l'un ni l'autre. Au revoir."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15443 /* ~"Ni l'un ni l'autre. Au revoir."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 15.2 16.2 17.2 18.4 22.7 23.4 31.3
  SAY #15320 /* ~Son ton est très sec : "'Adieu." Je vais te demander de ne plus me déranger, sauf si tu viens pour me défier."~ */
  IF ~~ THEN REPLY #15444 /* ~Pars.~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.3 16.3 17.3 18.5 23.5
  SAY #15321 /* ~Adyzoel parle avec dédain alors que tu t'apprêtes à partir : "Je te l'ai dit la dernière fois que nous avons discuté : ne me dérange plus, sauf si tu viens pour me défier. Si nous nous rencontrons encore, nous croiserons le fer à vue, que cela te plaise ou non."~ */
  IF ~~ THEN REPLY #15445 /* ~Pars.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",5)
~ THEN BEGIN 26 // from:
  SAY #15322 /* ~Tu te souviens qu'Adyzoel t'a demandé de ne plus le déranger, sauf pour venir le défier.~ */
  IF ~~ THEN REPLY #15446 /* ~Parle-lui quand même.~ */ GOTO 23
  IF ~~ THEN REPLY #15447 /* ~Laisse-le.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",6)
~ THEN BEGIN 27 // from:
  SAY #15323 /* ~Tu te souviens qu'Adyzoel a dit qu'il le considèrerait comme un défi et qu'il t'attaquerait à vue, si tu l'approchais de nouveau.~ */
  IF ~~ THEN REPLY #15448 /* ~Parle-lui quand même.~ */ GOTO 19
  IF ~~ THEN REPLY #15449 /* ~Laisse-le.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",2)
~ THEN BEGIN 28 // from:
  SAY #15324 /* ~"Euh ! La brute lâche est revenue !"~ */
  IF ~~ THEN REPLY #15450 /* ~"J'ai des questions…"~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15451 /* ~"C'est un chien qui aboie que j'entends ? Je suis là pour me battre, espèce de sale cabot vérolé."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15452 /* ~"C'est un chien qui aboie que j'entends ? Je suis là pour me battre, espèce de sale cabot vérolé."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15453 /* ~Retourne-toi et pars.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15325 /* ~Il ricane, en détournant la tête. "Je n'adresserai plus la parole à un mollasson comme toi. Bats-toi ou pars."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15454 /* ~"Alors, battons-nous."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15455 /* ~"Alors, battons-nous."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15456 /* ~"Je m'en vais. Au revoir."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.3 29.2
  SAY #15326 /* ~"Je ne te laisserai plus me harceler, couard. Je ne veux plus te voir sauf si tu viens pour me défier. Si nous nous rencontrons de nouveau, nous croiserons le fer à vue, que cela te plaise ou non."~ */
  IF ~~ THEN REPLY #15457 /* ~Pars.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",3)
~ THEN BEGIN 31 // from:
  SAY #15327 /* ~Adyzoel semble véritablement surpris. "Quoi, encore ? D'où sors-tu, espèce de brute ? J'étais certain d'en avoir fini avec toi."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15458 /* ~"Pas tout à fait. Je reviens pour me battre de nouveau."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15459 /* ~"Pas tout à fait. Je reviens pour me battre de nouveau."~ */ EXTERN ~DMORTE~ 172
  IF ~~ THEN REPLY #15460 /* ~"Et bien, non. J'ai des questions…"~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~~ THEN REPLY #15461 /* ~"Tu t'es trompé. Au revoir."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
END

IF ~~ THEN BEGIN 32 // from:
  SAY #15328 /* ~Le jeune homme, surpris, reste bouche bée devant Morte. "Et toi, qui es-tu ?"~ */
  IF ~~ THEN REPLY #15462 /* ~"Ne fais pas attention à lui. Il est inoffensif."~ */ EXTERN ~DMORTE~ 174
  IF ~~ THEN REPLY #15463 /* ~Laisse Morte parler.~ */ EXTERN ~DMORTE~ 174
END

IF ~~ THEN BEGIN 33 // from:
  SAY #15329 /* ~L'homme arrive à peine à esquisser un semblant de grognement, des particules de salive s'échappent de ses lèvres : "Rargh !" Il dégaine prestement son sabre, son visage livide de rage. "Assez ! J'*EXIGE* satisfaction !"~ */
  IF ~~ THEN REPLY #15464 /* ~"Je te demande juste d'excuser mon compagnon."~ */ GOTO 36
  IF ~~ THEN REPLY #15465 /* ~"Et bien, Morte ? Tu veux te battre en duel avec lui ?"~ */ EXTERN ~DMORTE~ 178
  IF ~~ THEN REPLY #15466 /* ~"Très bien… Mais il faudra que tu te battes contre nous deux."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2
  SAY #15330 /* ~"Bien ! Vous mourrez tous les deux !" Alors qu'il se prépare à frapper, tu remarques que dans son dos se tient un personnage vêtu d'une robe très sale, qui te regarde de ses yeux avides…~ */
  IF ~~ THEN REPLY #15467 /* ~Réponds à son attaque.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15468 /* ~Fuis.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15331 /* ~"Quoi ?" Le jeune homme, incrédule, lorgne Morte. "C'est un mimir *étrange*, c'est le moins qu'on puisse dire !"~ */
  IF ~~ THEN REPLY #15469 /* ~"Mimir ?"~ */ EXTERN ~DMORTE~ 179
  IF ~~ THEN REPLY #15470 /* ~"Tu peux lui pardonner ses offenses ?"~ */ GOTO 36
  IF ~~ THEN REPLY #15471 /* ~"Battons-nous… Mais il faudra que tu nous affrontes tous les deux."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 33.0 35.1
  SAY #15332 /* ~"Silence, espèce de fou blablatant !" Il se calme, rengainant son sabre. "Tous les deux. Battez-vous ou fuyez, c'est mon dernier mot." Bien qu'il ait dominé sa fureur, les yeux du jeune homme semblent luire d'une haine glacée.~ */
  IF ~~ THEN REPLY #15472 /* ~Attaque-le.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15473 /* ~Retourne-toi et pars.~ */ GOTO 7
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15333 /* ~"Toi là, laisse cette épave. N'est-il pas déjà assez misérable, cesse de le sermonner ?"~ */
  IF ~~ THEN REPLY #15474 /* ~"Ça ne te regarde pas."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 38
  IF ~~ THEN REPLY #15475 /* ~"Fais gaffe à ce que tu dis ou tu seras le prochain."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 3
  IF ~~ THEN REPLY #15476 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15334 /* ~"Ça me regarde. Et maintenant, laisse cette misérable créature ou tu auras à faire à moi."~ */
  IF ~~ THEN REPLY #15477 /* ~"Dis-moi d'abord ce que ça peut te faire."~ */ GOTO 39
  IF ~~ THEN REPLY #15478 /* ~"À faire à toi ? Essaie un peu si tu l'oses."~ */ GOTO 19
  IF ~~ THEN REPLY #15479 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #15335 /* ~"Parce que… parce que…" Il s'arrête, déconcerté, et pose la main sur sa tempe. Il semble stupéfié.~ */
  IF ~~ THEN REPLY #15480 /* ~"Ça va ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 40
  IF ~~ THEN REPLY #15481 /* ~Attends.~ */ GOTO 40
  IF ~~ THEN REPLY #15482 /* ~Pars pendant qu'il est distrait.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15336 /* ~Il se reprend. "Ça ne te regarde pas. L'ultimatum était là avant que tu arrives ; bats-toi contre moi ou pars."~ */
  IF ~~ THEN REPLY #15483 /* ~"C'est moi qui décide si ça me regarde ou pas. Maintenant, parle-moi."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15484 /* ~Battons-nous."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15485 /* ~Battons-nous."~ */ EXTERN ~DMORTE~ 169
END
