// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROTWILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DROTWILL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2824 /* ~Tu vois un homme aux traits anguleux. Son visage est confiant mais diffus. Ses yeux sont clairs et cruels. Il semble à la fois indolent et calme. Il tient un couteau dans ses mains calleuses. "Bon. Un autre visiteur pour William le Véreux. Parle, voyageur. Si tes propos nous plaisent, nous te laisserons partir."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3371 /* ~"Je cherche Pharod."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3648 /* ~"Je cherche un journal."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3649 /* ~"Je ne fais que passer."~ */ GOTO 13
  IF ~~ THEN REPLY #3650 /* ~"Je ne veux pas d'ennuis."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3651 /* ~"Rosenoir veut ta mort."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3652 /* ~"Krystall veut ta mort."~ */ GOTO 17
  IF ~~ THEN REPLY #3653 /* ~"Ça ne te regarde pas."~ */ GOTO 20
END

IF ~~ THEN BEGIN 1 // from: 0.0 12.0 20.0
  SAY #3654 /* ~"Tu veux Pharod, hein ? Eh ben, mon pote, si tu y mets le prix, je te dirai où il est."~ */
  IF ~~ THEN REPLY #3718 /* ~"Combien ?"~ */ GOTO 2
  IF ~~ THEN REPLY #3719 /* ~"Excuse-moi, ça ne m'intéresse pas."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #3661 /* ~Il te jauge. "Cinq pauvres pièces. C'est honnête pour quelqu'un aussi désespéré que toi."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #3656 /* ~"D'accord, tiens. Où est-il ?"~ */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY #3657 /* ~"Ça ne m'intéresse pas."~ */ GOTO 4
  IF ~~ THEN REPLY #3658 /* ~"Je n'ai pas cette somme."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #3668 /* ~"Tu le trouveras près du Square du Chiffonnier, avec ses Récupérateurs. Après, tu n'auras pas de problèmes pour traiter avec lui."~ */
  IF ~~ THEN REPLY #3659 /* ~"Tu n'es pas le premier à me dire ça !"~ */ GOTO 5
  IF ~~ THEN REPLY #3660 /* ~"Merci. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 2.2 3.1
  SAY #3672 /* ~"Oui, eh bien, il y a une chose qui pourrait t'intéresser. Une dénommée Krystall est chef des Anges Rasoirs. Élimine-la et nous parlerons de ta récompense."~ */
  IF ~~ THEN REPLY #3662 /* ~"Qu'est-ce que tu m'offres ?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3663 /* ~"Je m'en charge."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3664 /* ~"Pas question. Je ne suis pas un assassin."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #3665 /* ~"Je voudrais d'abord y réfléchir."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #37831 /* ~"Elle est déjà morte."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #3676 /* ~"Oui, eh bien, t'as que ce que tu mérites. Alors… qu'est-ce qui t'amène ici ?"~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3666 /* ~"Je cherche un journal."~ */ GOTO 12
  IF ~~ THEN REPLY #3667 /* ~"Je ne fais que passer."~ */ GOTO 13
  IF ~~ THEN REPLY #3669 /* ~"Je ne veux pas d'ennuis."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3670 /* ~"Rosenoire veut te voir mort."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3671 /* ~"Krystall veut te voir mort."~ */ GOTO 17
  IF ~~ THEN REPLY #3673 /* ~"Ça ne te regarde pas."~ */ GOTO 20
END

IF ~~ THEN BEGIN 6 // from: 4.0 14.0 15.0
  SAY #3677 /* ~"Je t'avais pas dit qu'on en parlerait une fois que tu aurais accompli l'assassinat ? Je n'ai qu'une parole, bige. Alors, tu vas le faire ou pas ?"~ */
  IF ~~ THEN REPLY #3674 /* ~"Je veux juste savoir ce que ça me rapportera."~ */ GOTO 9
  IF ~  !Dead("Krystall")
~ THEN REPLY #3690 /* ~"Non. Je ne suis pas un assassin."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3692 /* ~"Bien sûr. Je m'en charge."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37832 /* ~"Elle est déjà morte."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.2 8.2 9.1 10.1 14.1 15.1
  SAY #3678 /* ~"Magnifique ! Reviens quand tu auras fini, et assure-toi d'avoir bien fini. Je ne veux pas entendre d'excuses. On a conclu un marché."~ */
  IF ~~ THEN REPLY #3693 /* ~"Ne t'inquiète pas pour ça."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 4.3 6.1 14.2 14.3 15.2 15.3
  SAY #3679 /* ~"Je te demande de reconsidérer ta position. Pas de hâte, hein ? Que dirais-tu de deux cents pièces ?"~ */
  IF ~~ THEN REPLY #3694 /* ~"Et qu'est-ce que tu dirais de quatre cents ?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3695 /* ~"Non. Je ne le ferai pas."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3696 /* ~"Je m'en charge."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~William le Véreux m'a offert 200 pièces pour que j'élimine Krystall, chef d'un gang rival de l'Allée des Angles dangereux. J'ai accepté.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37833 /* ~"Elle est déjà morte."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #3680 /* ~"Tu auras ce que tu mérites, bige. Disons, deux cents pièces, hein ? Marché conclu ?"~ */
  IF ~~ THEN REPLY #3681 /* ~"Et si on disait plus ?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3682 /* ~"Oui, marché conclu."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~William le Véreux m'a offert 200 pièces pour que j'élimine Krystall, chef d'un gang rival de l'Allée des Angles dangereux. J'ai accepté.~ */ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3697 /* ~"Non. Je ne le ferai pas."~ */ GOTO 11
  IF ~  Dead("Krystall")
~ THEN REPLY #37834 /* ~"Elle est déjà morte."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #3683 /* ~"Alors trois cents. Ma dernière offre."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3699 /* ~"Non. Je ne le ferai pas."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3700 /* ~"D'accord. Considère qu'elle est déjà morte."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31877 /* ~William le Véreux m'a offert 300 pièces pour que j'élimine Krystall, chef d'un gang rival de l'Allée des Angles dangereux. J'ai accepté.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37835 /* ~"Elle est déjà morte."~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.2 10.0
  SAY #3684 /* ~"Si c'est comme ça que tu l'entends. Dommage que tu n'aies pas su trouver d'autre solution." Il élève la voix. "Shivs ! Éliminez cette ordure !"~ */
  IF ~~ THEN REPLY #3701 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3702 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.1 5.0 20.1
  SAY #3685 /* ~"Un journal, hein ? Pas un journal intime ? Pas un livre de bord ? Un journal, précisément ?" Il fait une pause, et au moment où tu t'apprêtes à répondre, il dit : "S'il est passé par-là, il a dû servir à faire un bon feu. Je l'ai pas vu."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3703 /* ~"Je cherche Pharod."~ */ GOTO 1
  IF ~~ THEN REPLY #3704 /* ~"Je ne fais que passer."~ */ GOTO 13
  IF ~~ THEN REPLY #3705 /* ~"Je ne veux pas d'ennuis."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3706 /* ~"Rosenoir veut ta mort."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3707 /* ~"Krystall veut ta mort."~ */ GOTO 17
  IF ~~ THEN REPLY #3708 /* ~"Ça ne te regarde pas."~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 0.2 5.1 12.1
  SAY #3686 /* ~"Tu ne fais que passer, hein ? Quel dommage ! Tous ceux qui passent ici doivent payer le prix."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #3709 /* ~"J'ai déjà payé le prix."~ */ GOTO 14
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #3710 /* ~Bluff : "J'ai déjà payé le prix."~ */ GOTO 14
  IF ~~ THEN REPLY #3711 /* ~"Quel prix ?"~ */ GOTO 15
  IF ~~ THEN REPLY #3712 /* ~"Alors essaye de me l'extorquer."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.3
  SAY #3687 /* ~Il rit et lève une main. "Pas si vite, l'ami. Ce n'est pas de ce prix-là dont je te parle. C'est complètement différent. Tu vois, une bige mène un groupe rival de l'autre côté de l'allée. J'aimerais que tu l'inscrives dans le livre des morts… avec son sang. Elle s'appelle Krystall."~ */
  IF ~~ THEN REPLY #3713 /* ~"Qu'est-ce que tu m'offres ?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3714 /* ~"Je m'en charge."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3715 /* ~"Pas question. Je ne suis pas un assassin."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3716 /* ~"Je voudrais d'abord y réfléchir."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #38114 /* ~"Elle est déjà morte."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 15 // from: 13.2 16.0
  SAY #3688 /* ~"C'est un petit don de sang. Par chance pour toi, il n'est pas question de ton sang. C'est celui d'une autre - une bige dénommée Krystall. Elle a l'audace de détenir un morceau de mon territoire. Trouve-la et tue-la."~ */
  IF ~~ THEN REPLY #3717 /* ~"Qu'est-ce que tu m'offres ?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #3720 /* ~"Je m'en charge."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #3721 /* ~"Pas question. Je ne suis pas un assassin."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #3722 /* ~"Je voudrais d'abord y réfléchir."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #41720 /* ~"Elle est déjà morte."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 16 // from: 0.3 5.2 12.2 20.2
  SAY #3698 /* ~"Oui, tu as de la chance, je ne te veux pas de mal. J'aimerais seulement que tu me rendes un service. Tu me suis ?"~ */
  IF ~~ THEN REPLY #3723 /* ~"Qu'est-ce que c'est ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 0.4 0.5 5.3 5.4 12.3 12.4 20.3 20.4
  SAY #3725 /* ~"Bon, d'accord. Tu mèneras ta mission à son terme ?"~ */
  IF ~~ THEN REPLY #3724 /* ~"Oui."~ */ GOTO 18
  IF ~~ THEN REPLY #3726 /* ~"Je ne sais pas."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 22.1
  SAY #34367 /* ~"Alors pas d'temps à perdre, hein ? Mes Shivs me protègeront."~ */
  IF ~~ THEN REPLY #3727 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11670 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #34368 /* ~"Faut toujours être sûr, mon gars. J'suis sûr que tu vas mourir." Il fait un léger mouvement de la main.~ */
  IF ~~ THEN REPLY #34384 /* ~"Que veux-tu dire ?"~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.6 5.5 12.5
  SAY #34369 /* ~"Quoi qu't'en penses, tout c'qui s'passe ici m'regarde. J'te l'demande encore… qu'est-ce que tu fais ici ?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #34385 /* ~"Je cherche Pharod."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34386 /* ~"Je cherche un journal."~ */ GOTO 12
  IF ~~ THEN REPLY #34388 /* ~"Je ne veux pas d'ennuis."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #34389 /* ~"Rosenoir veut ta mort."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #34390 /* ~"Krystall veut ta mort."~ */ GOTO 17
  IF ~~ THEN REPLY #34391 /* ~"Je t'ai dit que ça ne te regardait pas."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.5
  SAY #34370 /* ~"Dommage que tu dises ça. Dommage que tu doives mourir." Il agite le bras comme pour faire un signal, et tire son couteau.~ */
  IF ~~ THEN REPLY #34392 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34393 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("RW","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #34371 /* ~"T'as déjà trouvé l'milicien Rosenoire ? Tu l'as descendu, comme on avait dit ?"~ */
  IF ~~ THEN REPLY #34394 /* ~"Pas encore."~ */ GOTO 23
  IF ~  Global("BR_RW","GLOBAL",2)
!Dead("BlackR")
~ THEN REPLY #34395 /* ~"Je l'ai trouvé, mais en fait, il a réussi à me convaincre de te tuer."~ */ GOTO 18
  IF ~  Dead("BlackR")
~ THEN REPLY #34396 /* ~"Il est mort. J'attends ma récompense."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34372 /* ~"Pas encore ? Qu'est-ce que t'es, incompétent ou quoi ? Va l'trouver et reviens quand t'auras fait l'boulot !" Il se détourne, exaspéré.~ */
  IF ~~ THEN REPLY #34397 /* ~"J'avais d'abord quelques questions…"~ */ EXIT
  IF ~~ THEN REPLY #34398 /* ~"Bon, très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 27.2
  SAY #34373 /* ~Les yeux de William le Véreux s'écarquillent. "Tu les as tous eus, hein ? Dans c'cas-là, j'ai ta récompense. J'vais juste la sortir…" Il saisit brusquement son poignard et se jette en direction de ton ventre.~ */
  IF ~~ THEN REPLY #34399 /* ~Bats-toi.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34400 /* ~Fuis.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  Global("RW","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #34374 /* ~Il te fusille du regard. "Est-ce que t'as tué cette chienne comme prévu, ou t'es venu t'vanter encore une fois d'ton échec ?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34401 /* ~"Pas encore."~ */ GOTO 26
  IF ~  Dead("Krystall")
~ THEN REPLY #34402 /* ~"Elle est morte."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #34375 /* ~Il secoue la tête. "Même ces bougres qui s'prennent pour mes potes réussissent à faire ce qu'ils disent. T'es qu'un bon à rien, c'est tout. Ça sera rendre service à la cité que d'se débarrasser d'toi." Il sort son couteau.~ */
  IF ~~ THEN REPLY #34403 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34404 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.4 6.3 8.3 9.3 10.2 14.4 15.4 25.1 31.1
  SAY #34376 /* ~"Oui, t'as fait ton boulot, on dirait. J'ai juste besoin d'me débarrasser d'ce tueur qui m'fait perdre mes hommes. J'doublerai même tes gages. Ça t'paraît intéressant ? Tu peux pas refuser ça, hein."~ */
  IF ~~ THEN REPLY #34405 /* ~"J'ai bien peur de devoir la refuser."~ */ GOTO 28
  IF ~  !Dead("BlackR")
~ THEN REPLY #34406 /* ~"Je m'en charge."~ */ GOTO 30
  IF ~  Dead("BlackR")
~ THEN REPLY #37836 /* ~"Il est déjà mort. Je voudrais ma récompense, maintenant."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #34379 /* ~"T'es sûr de ça ? Tu veux pas l'faire ?"~ */
  IF ~~ THEN REPLY #34407 /* ~"Non, j'veux pas."~ */ GOTO 29
  IF ~~ THEN REPLY #34408 /* ~"Finalement, si tu me donnes le double, ça m'intéresse. Je m'en charge."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34380 /* ~"C'est bien dommage. Ouais les gars, c'est l'moment d'brûler cette saleté." Il tire doucement son couteau et se dirige vers toi…~ */
  IF ~~ THEN REPLY #34409 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34410 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #34381 /* ~"Bien. Bien. Tu l'trouveras en train d'errer dans l'allée. J'crois qu'il reste caché dans l'ombre."~ */
  IF ~~ THEN REPLY #34411 /* ~"Je le trouverai."~ */ JOURNAL #31878 /* ~William le Véreux m'a demandé de tuer l'assassin Rosenoire, qui fait la loi autour de l'Allée des Angles dangereux, à ce qu'il paraît.~ */ EXIT
END

IF ~  Global("RW","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #34382 /* ~"Tu t'es débarrassé d'cette misérable chienne de Krystall ?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34412 /* ~"Pas encore."~ */ DO ~SetGlobal("RW","GLOBAL",4)
~ GOTO 32
  IF ~  Dead("Krystall")
~ THEN REPLY #34413 /* ~"Elle est morte."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #34383 /* ~Il serre les dents, prononçant chaque mot distinctement. "Ne… reviens… pas… avant… qu'elle… soit… morte. Tu… m'entends ?" Il se retourne. "J'veux pas voir un poil ou une once de ta peau avant qu'elle soit liquidée."~ */
  IF ~~ THEN REPLY #34414 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END
