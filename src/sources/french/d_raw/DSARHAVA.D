// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSARHAVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSARHAVA~

IF ~  Global("Sarhava","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #32064 /* ~Une odeur d'alcool pèse sur cette jeune femme et, malgré sa peau sombre, tu peux apercevoir son visage - magnifique mais cruel - et voir qu'elle rougit. Elle est mince mais musclée, ornée de bijoux exotiques et de vêtements de soie translucide. De nombreuses cicatrices parcourent ses chevilles et avant-bras. Elles semblent provenir de blessures de guerre.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #32065 /* ~"Bonjour…"~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 24
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
NearbyDialog("DMorte")
~ THEN REPLY #32536 /* ~"Bonjour…"~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #32537 /* ~"Bonjour…"~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32538 /* ~"Bonjour…"~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 29
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("DAnnah")
~ THEN REPLY #32539 /* ~"Bonjour…"~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #32540 /* ~Ne t'approche pas de cette femme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 30.2 31.1 33.2 36.1 37.1
  SAY #32491 /* ~"Quelle créature répugnante t'a donné naissance m'sieur ?" Elle grimace de dégoût, puis se met à rire de façon criarde. "Et cette puanteur ! Es-tu l'un des bâtards de la mort ?" Tu remarques un long couteau courbé pendu à sa taille ; sa main repose sur son pommeau.~ */
  IF ~~ THEN REPLY #32541 /* ~"*Qu'est-ce* que tu as dit, jeune fille ?"~ */ GOTO 23
  IF ~~ THEN REPLY #32542 /* ~Bluff : "Adhana ? C'est toi ?"~ */ GOTO 4
  IF ~~ THEN REPLY #32543 /* ~"Qu'est-ce que tu as ?"~ */ GOTO 21
  IF ~~ THEN REPLY #32544 /* ~"Je ne veux pas me disputer avec toi. Laisse tomber et passe ton chemin."~ */ GOTO 10
  IF ~~ THEN REPLY #32545 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32546 /* ~Ignore-la et éloigne-toi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 0.1 30.1 31.0 33.1 36.0 37.0
  SAY #32492 /* ~"Quelle créature répugnante t'a donné naissance m'sieur ?" Elle grimace de dégoût, puis se met à rire de façon criarde. "Et cette puanteur ! Es-tu l'un des bâtards de la mort ?" Tu remarques un long couteau courbé pendu à sa taille ; sa main repose sur son pommeau.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 310
END

IF ~~ THEN BEGIN 3 // from:
  SAY #32493 /* ~"Oh, il faut que je voie *ça*. Alors dis-moi m'sieur : est-ce que tu pues comme les égouts de la Ruche ? Ou est-ce que les égouts de la Ruche puent comme *toi* ?*"~ */
  IF ~~ THEN REPLY #32547 /* ~"*Qu'est-ce* que tu as dit, jeune fille ?"~ */ GOTO 23
  IF ~~ THEN REPLY #32548 /* ~Bluff : "Adhana ? C'est toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32549 /* ~"Qu'est-ce que tu as ?"~ */ GOTO 21
  IF ~~ THEN REPLY #32550 /* ~"Je ne veux pas me disputer avec toi. Laisse tomber et passe ton chemin."~ */ GOTO 10
  IF ~~ THEN REPLY #32551 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32552 /* ~Ignore-la et éloigne-toi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 1.1 23.0
  SAY #32494 /* ~La femme cille, surprise.~ */
  IF ~~ THEN REPLY #32553 /* ~"Adhana ? Tu ne te souviens pas de moi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #32554 /* ~"Je te l'ai dit, Adhana : je ne t'ai jamais aimée et je ne t'aimerai jamais. Le peu de plaisir que tu m'as donné n'était rien comparé au supplice de ta présence. Maintenant, laisse-moi tranquille."~ */ GOTO 6
  IF ~~ THEN REPLY #32555 /* ~"Oh… Excuse-moi. Je t'avais prise pour Adhana, mais tu es deux fois plus laide et tu sens deux fois plus mauvais qu'elle."~ */ GOTO 6
  IF ~~ THEN REPLY #32556 /* ~"Peu importe. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32495 /* ~Elle te regarde avec attention pendant un instant, puis sourit. "Tes blessures profondes doivent t'avoir induit en erreur, m'sieur." La femme se met à glousser. "Je ne suis pas ton amie, et ne me joindrai jamais à l'un de tes pareils."~ */
  IF ~~ THEN REPLY #32557 /* ~"Oh… Excuse-moi. Je t'avais prise pour Adhana, mais tu es deux fois plus laide et tu sens deux fois plus mauvais qu'elle."~ */ GOTO 6
  IF ~~ THEN REPLY #32558 /* ~"Peu importe. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 5.0
  SAY #32496 /* ~Elle t'écoute pendant un instant, troublée, puis ricane et fait mine de sortir son arme.~ */
  IF ~~ THEN REPLY #32559 /* ~Bats-toi avec elle.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32560 /* ~Appelle les gardes.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 11.1 13.1 17.1 20.1 31.2 38.1 42.1
  SAY #32497 /* ~Elle en a le souffle coupé. "Espèce d'idiot… es-tu fou ? Ta parole contre la mienne, devant les gardes ? Tu n'as aucune chance !"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #32561 /* ~"Tu as l'air saoule, et tes cicatrices te marquent comme une bagarreuse née… Tu as sans doute une réputation pour ce genre de chose. Je crois qu'ils le pourraient."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #32562 /* ~"Tu as l'air saoule, et tes cicatrices te marquent comme une bagarreuse née… Je crois qu'ils le pourraient."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #32498 /* ~Elle te fixe d'un regard dur en grinçant des dents. "Tu ferais mieux d'espérer qu'on ne se revoie jamais, *chien* !" Elle se retourne pour s'éloigner à grands pas.~ */
  IF ~~ THEN REPLY #32563 /* ~"Oh, j'espère que *si*…"~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32564 /* ~Bâille d'ennui pendant qu'elle s'éloigne.~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32565 /* ~"Au revoir."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #32499 /* ~Elle te fixe d'un regard dur, en grinçant des dents. "Alors laissons cela, et partons chacun de notre côté."~ */
  IF ~~ THEN REPLY #32566 /* ~"D'accord - Tu m'as déjà fait perdre assez de temps. Au revoir."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32567 /* ~"D'accord. Au revoir."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.3 3.3 23.3
  SAY #32500 /* ~"Oh, certainement. Mais d'abord…" Elle s'arrête, ses lèvres formant un sourire cruel. "…une question : est-il possible de devenir aussi laid que toi en une vie ?"~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32568 /* ~"Oui… Regarde-toi, tu en es la meilleure preuve."~ */ GOTO 11
  IF ~~ THEN REPLY #32569 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32570 /* ~Pars.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0 22.0 22.1 25.0
  SAY #32501 /* ~Elle te regarde pendant un instant, surprise, avant de grogner et de s'emparer de son poignard…~ */
  IF ~~ THEN REPLY #32571 /* ~Bats-toi avec elle.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32572 /* ~Appelle les gardes.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 1.5 3.5 4.3 5.1 10.2 21.3 22.3 23.5
  SAY #32502 /* ~"Ne me tourne pas le dos, chien. Ta présence ici, dans cette rue, me fait profondément offense. Tu dois t'amender." Elle met un pied en avant. "Lèche ma botte, va-t'en loin de moi, et tu seras pardonné."~ */
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32573 /* ~Baisse-toi et lèche sa botte.~ */ GOTO 14
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32574 /* ~Baisse-toi et lèche sa botte.~ */ EXTERN ~DANNAH~ 174
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32575 /* ~Baisse-toi et lèche sa botte.~ */ EXTERN ~DMORTE~ 312
  IF ~~ THEN REPLY #32576 /* ~Penche-toi sur sa botte, attends le moment opportun pour l'attaquer.~ */ GOTO 16
  IF ~~ THEN REPLY #32577 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32578 /* ~Ignore ses menaces et pars.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.5
  SAY #32503 /* ~Alors que tu te retournes pour t'en aller, elle grogne et tend la main vers son poignard…~ */
  IF ~~ THEN REPLY #32579 /* ~Bats-toi avec elle.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32580 /* ~Appelle les gardes.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.4
  SAY #32504 /* ~Son rire haut perché, réjoui et plein de dérision, résonne dans les rues. "Maintenant pars, lâche. Ose me parler encore une fois, et ma lame t'arrachera le cœur avant même que tes mots atteignent mes oreilles."~ */
  IF ~~ THEN REPLY #32581 /* ~"Bon, ça suffit. Montre-moi si tu sais te servir de ton petit couteau, jeune fille."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32582 /* ~Pars.~ */ DO ~SetGlobal("Sarhava","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32505 /* ~"Pourceaux !" hurle-t-elle. "Je vous tuerai tous les deux !"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Myself,"Annah")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #32506 /* ~Alors que tu t'agenouilles devant la femme, elle mets les mains sur ses hanches et renverse la tête. Son rire haut perché, réjoui et plein de dérision, résonne dans les rues.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #32583 /* ~Mords un morceau de sa jambe nue.~ */ DO ~Damage("Sarhava",LOWER,2)
SetGlobal("Sarhava","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 18
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32584 /* ~Mords un morceau de sa jambe nue.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #32585 /* ~Attrape ses jambes et tire-les.~ */ DO ~Damage("Sarhava",LOWER,2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32586 /* ~Attrape ses jambes et tire-les.~ */ GOTO 17
  IF ~~ THEN REPLY #32587 /* ~Lèche sa botte.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 16.1 16.3
  SAY #32507 /* ~Tu te jettes sur elle… mais elle échappe à ta prise. "Tu paieras pour cela de ta *vie*, espèce de chien !" Elle commence à sortir son poignard…~ */
  IF ~~ THEN REPLY #32588 /* ~Bats-toi avec elle.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32589 /* ~Appelle les gardes.~ */ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #32508 /* ~Tu attrapes sa jambe et enfonces tes dents dans la chair de son mollet. Elle hurle de douleur, reculant et sortant son poignard - ta morsure semble l'avoir dégrisée. "Par les puissances, es-tu *FOU* ?!"~ */
  IF ~~ THEN REPLY #32590 /* ~Souris-lui, lèche le sang sur tes lèvres.~ */ GOTO 19
  IF ~~ THEN REPLY #32591 /* ~"Je ne lécherai les bottes de personne aujourd'hui, jeune fille. Maintenant, va-t'en avant que je décide d'arracher de plus gros morceaux."~ */ GOTO 19
  IF ~~ THEN REPLY #32592 /* ~Passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #32509 /* ~Elle frémit de manière visible, un mélange d'incompréhension et de dégoût sur son visage. "Beurk ! Puisse-je ne jamais te rencontrer à nouveau ! Monstre…" Elle se retourne pour s'en aller.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32593 /* ~Fais des bruits de mastication pendant qu'elle s'éloigne.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32594 /* ~Fais des bruits de mastication pendant qu'elle s'éloigne.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32595 /* ~"Au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32596 /* ~"Au revoir."~ */ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32597 /* ~Laisse-la partir tranquillement.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32598 /* ~Laisse-la partir tranquillement.~ */ EXTERN ~DMORTE~ 314
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY #32510 /* ~Tu attrapes ses chevilles et tire sur ses jambes. Elle paraît suspendue en l'air pendant un moment, bouche bée… puis elle s'abat lourdement sur le pavé. Elle se remet aussitôt sur ses pieds, folle de rage. "Je vais te *tuer* !" Elle sort son poignard…~ */
  IF ~~ THEN REPLY #32599 /* ~Bats-toi avec elle.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32600 /* ~Appelle les gardes.~ */ GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 1.2 3.2 23.2
  SAY #32511 /* ~"C'est *affreux*, m'sieur." Elle ricane de dégoût. "Le simple fait de te regarder me donne envie de vomir."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32601 /* ~"Ce n'est pas ce que ta mère a dit à ta naissance ?"~ */ GOTO 11
  IF ~~ THEN REPLY #32602 /* ~"Je m'en irais, jeune fille, si tu ne veux pas finir comme moi."~ */ GOTO 22
  IF ~~ THEN REPLY #32603 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32604 /* ~Ignore-la et éloigne-toi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #32512 /* ~"Oh, nan, nan… Je ne pourrai jamais être comme toi, m'sieur. *Rares* sont ceux qui mangent leurs propres excréments."~ */
  IF ~~ THEN REPLY #32605 /* ~"Si tu l'ouvres encore, jeune fille, je ferai en sorte que tu apprennes à aimer ça."~ */ GOTO 11
  IF ~~ THEN REPLY #32606 /* ~"Si j'avais besoin d'excréments, je te presserais la tête, jeune fille."~ */ GOTO 11
  IF ~~ THEN REPLY #32607 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32608 /* ~Ignore-la et éloigne-toi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 1.0 3.0
  SAY #32513 /* ~"Je crois que la question appropriée, m'sieur, c'est 'qu'est-ce que c'est que cette *odeur* ?'" Elle renifle l'air, puis plisse le nez de dégoût. "Eh bien, je crois que c'est toi ! Oui, c'est bien toi, espèce de carcasse pleine de mouches !"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32609 /* ~Bluff : "Attends… Je te reconnais. Adhana !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32610 /* ~Bluff : "Attends… Je te reconnais. Adhana !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32611 /* ~"Qu'est-ce que tu as ?"~ */ GOTO 21
  IF ~~ THEN REPLY #32612 /* ~"Je ne veux pas me disputer avec toi. Laisse tomber et passe ton chemin."~ */ GOTO 10
  IF ~~ THEN REPLY #32613 /* ~Attaque-la.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32614 /* ~Ignore-la et éloigne-toi.~ */ GOTO 12
END

IF ~~ THEN BEGIN 24 // from: 0.0
  SAY #32514 /* ~"Quelle créature répugnante t'a enfanté, m'sieur ?" Elle grimace de dégoût, puis part d'un rire criard. "Et cette puanteur ! Es-tu l'un de ces bâtards de la mort ?" Tu remarques un long couteau courbé pendu à sa taille ; sa main repose sur son pommeau….~ */
  IF ~~ THEN EXTERN ~DGRACE~ 130
END

IF ~~ THEN BEGIN 25 // from:
  SAY #32515 /* ~La jeune femme paraît troublée pendant un instant, puis elle reconnaît Tombée-en-Disgrâce. Elle semble étonnée et confuse. "Maîtresse Grâce ! Je ne vous avais pas remarquée… j'ai honte de l'avouer, car votre noble apparence crèverait même les yeux d'un idiot."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32615 /* ~"Alors tu es pire qu'une idiote, jeune fille."~ */ GOTO 11
  IF ~~ THEN REPLY #32616 /* ~Laisse Grâce continuer à parler.~ */ EXTERN ~DGRACE~ 131
END

IF ~~ THEN BEGIN 26 // from:
  SAY #32516 /* ~Elle paraît honteuse. "Oui, maîtresse… Je regrette que de tels mots aient été prononcés en votre présence."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 132
END

IF ~~ THEN BEGIN 27 // from:
  SAY #32517 /* ~"Euh…" Elle fronce les sourcils, puis recouvre son sang-froid. "Quoi qu'il en soit, Maîtresse, qu'est-ce qui vous amène en ces lieux ? "~ */
  IF ~~ THEN EXTERN ~DGRACE~ 133
END

IF ~~ THEN BEGIN 28 // from:
  SAY #32518 /* ~Sarhava s'incline. "Alors permettez-moi de vous présenter mes excuses, Maîtresse Grâce, ainsi qu'à vos compagnons. Mes mots étaient mal choisis. C'est la boisson qui me fait dire toutes ces bêtises et j'ai honte de m'être rabaissée comme ça devant mon ancienne tutrice." Elle s'incline, tourne les talons et s'en va.~ */
  IF ~~ THEN REPLY #32617 /* ~Pars.~ */ DO ~SetGlobal("Sarhava","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY #32519 /* ~"Eh bien… qu'avons-nous ici ? Une petite reine des égouts, qui a rampé hors de la Ruche ?" La femme fait la moue, comme si elle parlait à un jeune enfant. "Es-tu perdue, petite créature ? Oh, regardez ! Elle a une queue ! Comme c'est… mignon !"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 178
END

IF ~~ THEN BEGIN 30 // from:
  SAY #32520 /* ~"À ta place je ne ferais pas ça, fiélonne." La femme ne paraît pas inquiète en voyant Annah sortir ses armes, et elle émet un claquement de langue réprobateur. "Fais attention, ou je vais t'arracher la queue et la donner à manger à mes chiens."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32618 /* ~"Ça suffit, jeune fille. Présente-lui tes excuses ou c'est *moi* qui te découperai en morceaux."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32619 /* ~"Ça suffit, jeune fille. Présente-lui tes excuses ou c'est *moi* qui te découperai en morceaux."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32620 /* ~Laisse Annah régler ça.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32621 /* ~"Laisse tomber, Annah. Elle n'en vaut pas la peine."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
END

IF ~~ THEN BEGIN 31 // from:
  SAY #32521 /* ~"Sale engeance des Plans Inférieurs, bâtarde de chienne que même un tanar'ri ne garderait pas dans un enclos !" Elle sort sa lame.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32622 /* ~"Rengaine cette lame, jeune fille, ou je te transperce le corps avec."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32623 /* ~"Rengaine cette lame, jeune fille, ou je te transperce le corps avec."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #32624 /* ~Appelle les gardes.~ */ GOTO 7
  IF ~~ THEN REPLY #32625 /* ~Laisse les choses se faire.~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY #32522 /* ~"Et qu'est-ce que c'est que ça *ça* ?! Un gith ? Si *loin* de la fosse putride des Limbes, le cabinet de toilette des Plans ?" Elle plisse les yeux, attendant la réponse de Dak'kon.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 114
END

IF ~~ THEN BEGIN 33 // from:
  SAY #32523 /* ~Elle fronce les sourcils. "Je croyais que ceux de ton espèce se sentaient plus à l'aise parmi les grenouilles carnivores qui folâtrent dans les soupes des Limbes, gith."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32626 /* ~"Et peut-être que *toi*, tu serais mieux à la Morgue, jeune fille."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32627 /* ~"Et peut-être que *toi*, tu serais mieux à la Morgue, jeune fille."~ */ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32628 /* ~Laisse Dak'kon régler ça.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3
  SAY #32524 /* ~Elle attend un moment avant de répondre, puis continue à haranguer Dak'kon : "Pourquoi ne retournes-tu pas dans les Limbes, gith ?" Elle réfléchit pendant un instant, tapotant son menton. "Ou est-ce sur le Plan Astral que ceux de ton espèce vivent ? Je me mélange tellement les pinceaux avec vous autres - githyanki, githzeraï, où est la différence…"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DDAKKON~ 115
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32629 /* ~Continue.~ */ EXTERN ~DDAKKON~ 115
END

IF ~~ THEN BEGIN 35 // from:
  SAY #32525 /* ~La femme sourit soudainement. "Oh ! Raconte-moi une plaisanterie, gith !" Elle frappe des mains de plaisir. "Fais-moi découvrir le célèbre humour de ta race, *githyanki* !"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 116
END

IF ~~ THEN BEGIN 36 // from:
  SAY #32526 /* ~Elle sourit dédaigneusement à Dak'kon. "Et lorsque je suis tombé sur toi dans les rues de Sigil, gith, la jeune Sarhava t'a regardé et s'est dit 'il n'y pas grand-chose ici qui mérite qu'on crache dessus'. Tu n'es qu'un chien incestueux de *githyanki*, qui doit vénérer les bâtards de sa propre race et s'ébattre avec les grenouilles." Elle attrape la garde de son poignard. "Sors ton frêle morceau d'acier, saleté de gith."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32630 /* ~"Tu dépasses les bornes, jeune fille. Tais-toi."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32631 /* ~"Tu dépasses les bornes, jeune fille. Tais-toi."~ */ GOTO 1
  IF ~~ THEN REPLY #32632 /* ~Attaque-la toi-même.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32633 /* ~"Attaque-la, Dak'kon."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32634 /* ~Attends de voir la réaction de Dak'kon.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.4
  SAY #32527 /* ~Elle patiente, mais Dak'kon ne répond toujours pas. "Je souhaiterais que les écorcheurs de crânes te tiennent toujours en leur pouvoir, gith, pour que le danger de voir ta race se reproduire soit épargné au multivers."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32635 /* ~"Tu dépasses les bornes, jeune fille. Tais-toi."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32636 /* ~"Tu dépasses les bornes, jeune fille. Tais-toi."~ */ GOTO 1
  IF ~~ THEN REPLY #32637 /* ~Attaque-la toi-même.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32638 /* ~"Attaque-la, Dak'kon."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32639 /* ~Attends de voir la réaction de Dak'kon.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.4
  SAY #32528 /* ~Dak'kon reste silencieux comme une tombe. La femme grogne et se prépare à se jeter sur lui. "Dans ce cas, puisses-tu pourrir sur Baator, lâche !"~ */
  IF ~~ THEN REPLY #32640 /* ~Aide Dak'kon à la combattre.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32641 /* ~Appelle les gardes.~ */ GOTO 7
  IF ~~ THEN REPLY #32642 /* ~Laisse les choses se faire.~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #32529 /* ~Prise par surprise, la femme ne répond pas.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 317
END

IF ~~ THEN BEGIN 40 // from:
  SAY #32530 /* ~"Quoi… qui… comment oses-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 318
END

IF ~~ THEN BEGIN 41 // from:
  SAY #32531 /* ~"Je… Je…"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 319
END

IF ~~ THEN BEGIN 42 // from:
  SAY #32532 /* ~La femme sort sa lame et, grognant comme un animal enragé, se jette sur Morte.~ */
  IF ~~ THEN REPLY #32643 /* ~Aide Morte à la combattre.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32644 /* ~Appelle les gardes.~ */ GOTO 7
  IF ~~ THEN REPLY #32645 /* ~Laisse les choses se faire.~ */ DO ~Enemy()
Attack("Morte")
~ EXIT
END

IF ~  Global("Sarhava","GLOBAL",2)
~ THEN BEGIN 43 // from:
  SAY #32533 /* ~La jeune femme refuse de te dire un mot de plus.~ */
  IF ~~ THEN REPLY #32646 /* ~Pars.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #32534 /* ~La jeune femme grogne d'un air cruel et te montre le bout de sa botte. "Revenu pour goûter à ma botte, chien ? Eh bien, tu n'en auras pas le plaisir ! Est-ce que je ne t'ai pas déjà dit de ne plus jamais me parler ? Fiche le camp avant que je sorte ma lame."~ */
  IF ~~ THEN REPLY #32647 /* ~"J'en ai assez, jeune fille… Sors ta lame."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32648 /* ~Reste et bats-toi avec elle.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32649 /* ~Pars.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 45 // from:
  SAY #32535 /* ~Sarhava fait signe qu'elle t'a vu de la tête, mais ne veut pas de dire un mot.~ */
  IF ~~ THEN REPLY #32650 /* ~Pars.~ */ EXIT
END
