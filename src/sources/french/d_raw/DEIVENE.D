// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEIVENE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEIVENE~

IF ~  Global("EiVene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3404 /* ~Tu vois une jeune femme au teint pâle. La peau creusée au niveau des joues et du cou donne l'impression qu'elle souffre de la faim. Elle semble prête à disséquer le cadavre devant elle, tâtant la poitrine avec un doigt.~ */
  IF ~~ THEN REPLY #3406 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #3407 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #3410 /* ~La femme ne répond pas… elle semble trop absorbée par le cadavre devant elle. Tu l'observes à la tâche, et tu remarques ses mains… ses doigts sont des lames. Elles entrent et sortent de la poitrine du cadavre, comme des couteaux, et en retirent les organes.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3412 /* ~"J'ai dit, bonjour."~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3413 /* ~"J'ai dit, bonjour."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3414 /* ~"Qu'est-ce que tu as aux mains ?"~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3415 /* ~"Qu'est-ce que tu as aux mains ?"~ */ GOTO 19
  IF ~~ THEN REPLY #3416 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2
  SAY #3417 /* ~La femme ne répond pas.~ */
  IF ~~ THEN REPLY #3418 /* ~Donne une petite tape à la femme, attire son attention.~ */ DO ~FaceObject(Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #3419 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #3420 /* ~La femme ne répond pas.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 55
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #3421 /* ~La femme saute et se retourne brusquement pour te faire face. Ses yeux ont la couleur du pus ; deux petits points orange forment ses pupilles. Elle t'aperçoit et son expression passe de la surprise à l'agacement. Elle fronce les sourcils.~ */
  IF ~~ THEN REPLY #3422 /* ~"Euh… Bonjour."~ */ DO ~SetGlobal("EiVene","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #3423 /* ~Elle ne semble pas t'avoir entendu. Elle se penche en avant, plisse les yeux, comme si elle ne te voyait pas bien… Quel que soit son problème oculaire, ça la rend terriblement myope. "Toi", elle claque ses doigts griffus, puis fait un geste étrange avec ses mains. "Trouve du FIL et de la LOTION d'embaumement ; apporte ça ICI, à Ei-Vene. Va - va - va."

^NREMARQUE : on t'a assigné une quête. Les quêtes sont affichées dans ton journal intime et dans la section 'Quêtes' de ton journal. Pour voir toutes les quêtes qui t'ont été assignées (et savoir si tu les as menées à bien ou non), il te suffit de sélectionner 'Quêtes' dans le menu du journal.^-~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3424 /* ~Donne-lui le fil et la lotion d'embaumement.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #37701 /* ~J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Comme j'avais déjà trouvé ce qu'elle me demandait, je le lui ai donné. ~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3425 /* ~"J'ai d'abord quelques questions…"~ */ JOURNAL #37702 /* ~J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines. ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3426 /* ~"J'ai d'abord quelques questions…"~ */ JOURNAL #37702 /* ~J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines. ~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3427 /* ~"Qu'est-ce que tu as aux mains ?"~ */ JOURNAL #37702 /* ~J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines. ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3428 /* ~"Qu'est-ce que tu as aux mains ?"~ */ JOURNAL #37702 /* ~J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines. ~ */ GOTO 20
  IF ~~ THEN REPLY #3429 /* ~Pars.~ */ JOURNAL #37702 /* ~J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.3
  SAY #3430 /* ~Elle se détourne… Rien ne montre qu'elle t'a entendu. Son ouïe doit être aussi mauvaise que sa vue.~ */
  IF ~~ THEN REPLY #3431 /* ~Donne-lui une tape sur l'épaule, attire son attention.~ */ GOTO 17
  IF ~~ THEN REPLY #3432 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 17.0
  SAY #3433 /* ~Sans perdre une seconde, Ei-Vene arrache le fil de tes mains, l'accroche à l'une de ses lames, puis se met à coudre la poitrine du cadavre. Ensuite, elle prend la lotion d'embaumement et en badigeonne le cadavre.~ */
  IF ~~ THEN REPLY #3434 /* ~Attends.~ */ GOTO 9
  IF ~~ THEN REPLY #3435 /* ~Pars.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #3436 /* ~Tu es sur le point de partir quand Ei-Vene prend la parole : "Reste. Toi - prochain."~ */
  IF ~~ THEN REPLY #3437 /* ~Attends.~ */ GOTO 9
  IF ~~ THEN REPLY #3438 /* ~Va-t'en. Vite.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #3439 /* ~En quelques minutes, elle a terminé. Elle fait cliqueter ses lames, puis se retourne vers toi. À ta surprise, elle tend la main et entoure tes bras et ta poitrine de ses lames.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3440 /* ~"Euh, ça me flatte, mais…"~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3441 /* ~"Euh, ça me flatte, mais…"~ */ EXTERN ~DMORTE~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3442 /* ~Continue à jouer le zombi.~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3443 /* ~Continue à jouer le zombi.~ */ EXTERN ~DMORTE~ 59
  IF ~~ THEN REPLY #3444 /* ~Repousse-la, va-t'en.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.4 12.1
  SAY #3445 /* ~Elle a l'air choqué que tu la rejettes. "Zomfi ? Toi pas zomfi !" Elle recule d'un pas, et avant que tu n'aies eu le temps de réagir, elle tape trois fois dans les mains. En réponse, une cloche énorme résonne dans toute la Morgue.~ */
  IF ~~ THEN REPLY #3491 /* ~"Alors très bien…"~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.2
  SAY #3446 /* ~Alors qu'elle suit le dessin de tes bras et de ta poitrine, tu t'aperçois qu'elle semble examiner tes cicatrices. Elle retire ses lames, les fait cliquer deux fois, puis se penche en avant et examine les tatouages sur ta poitrine. "Hmmpf. Qui écrire sur toi ? Rucheux faire ça ? Aucun respect pour zomfis. Zomfis, pas peintures." Elle renifle, puis elle touche l'une de tes cicatrices. "Celle-là, mauvaise ; beaucoup pas garder."~ */
  IF ~~ THEN REPLY #3447 /* ~Attends.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #3448 /* ~Soudain, ses lames s'accrochent au fil que tu lui as apporté, et comme un éclair, elle plante une autre lame dans ta peau, près d'une cicatrice. C'est à peine plus douloureux que la piqûre d'une aiguille. Mais elle semble prête à te coudre.~ */
  IF ~~ THEN REPLY #3449 /* ~Laisse-la travailler.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,1)
FullHeal(Protagonist)
SetGlobal("Ravel_EiVene","GLOBAL",1)
~ JOURNAL #38199 /* ~Après lui avoir donné la lotion d'embaumement et le fil, Ei-Vene a suturé mes cicatrices et a appliqué la lotion d'embaumement sur mon corps. Bizarrement, je me suis senti… en meilleure santé.~ */ GOTO 13
  IF ~~ THEN REPLY #3450 /* ~Repousse-la, va-t'en.~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #3451 /* ~Elle commence à coudre tes cicatrices, et curieusement, la sensation n'est pas douloureuse.

Après avoir terminé, elle renifle, fronce les sourcils, puis plonge les doigts dans la lotion d'embaumement. En quelques minutes, elle en a badigeonné ton corps. Bizarrement, tu te sens *mieux*.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3452 /* ~Laisse-la travailler.~ */ GOTO 14
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3453 /* ~Laisse-la travailler.~ */ EXTERN ~DMORTE~ 60
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3454 /* ~Ei-Vene ajoute une dernière touche sur ton corps, renifle encore une fois, hoche la tête et fait un mouvement avec ses lames. "Fini. Va - va."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3456 /* ~"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J'ai besoin d'une clé d'embaumement. Tu en as une ?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3457 /* ~"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J'ai besoin d'une clé d'embaumement. Tu en as une ?"~ */ GOTO 24
  IF ~~ THEN REPLY #4350 /* ~Pars.~ */ EXIT
END

IF ~  Global("EiVene","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #3458 /* ~Tu aperçois Ei-Vene. Elle dissèque la poitrine du cadavre avec ses lames. Le rythme de ses lames te rappelle quelque chose, mais tu ne sais pas quoi.~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #3459 /* ~Observe-la, étudie sa manière de bouger les mains.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ JOURNAL #61612 /* ~En regardant Ei-Vene recoudre le cadavre à l'aide de ses lames, un étrange souvenir m'est revenu en mémoire. Je me souviens avoir pratiqué le même genre d'opération sur un mort, il y a bien longtemps, sauf que je crois que j'ai fait cela pour lui *insérer* quelque chose dans la poitrine plutôt que de le lui ôter. J'ai l'impression que j'ai agi ainsi afin de pouvoir récupérer l'objet plus tard. Dans mon souvenir, quand j'ai croisé les bras, le cadavre a fait de même. Le numéro '42' était inscrit sur son cuir chevelu.~ */ GOTO 16
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #3463 /* ~Donne-lui une petite tape, attire son attention.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4351 /* ~Donne-lui une petite tape, attire son attention.~ */ GOTO 22
  IF ~~ THEN REPLY #4352 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #3464 /* ~Tandis que tu observes le rythme des mains de Ei-Vene, tu ressens une démangeaison au cuir chevelu, puis soudain ta vision se trouble et…~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 6.0 15.1 25.0 27.0
  SAY #3468 /* ~Elle se retourne, te voit, et fronce les sourcils. "Zomfis idiots." Elle fait claquer ses lames d'impatience, puis fait le geste de recoudre quelque chose. "Trouve fil et lotion d'embaumement, amène ici, à Ei-Vene. Va - va - va."~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3469 /* ~Donne-lui le fil et la lotion d'embaumement.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #38202 /* ~J'ai donné la lotion d'embaumement et le fil à Ei-Vene. Elle n'a pas eu l'air particulièrement reconnaissante. ~ */ GOTO 7
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3470 /* ~"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J'ai besoin d'une clé d'embaumement. Tu en as une ?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3497 /* ~"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J'ai besoin d'une clé d'embaumement. Tu en as une ?"~ */ GOTO 24
  IF ~~ THEN REPLY #4357 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.0 17.1 22.0
  SAY #3471 /* ~Elle se penche en avant, observe tes gestes, puis renifle. Sa main plonge dans son habit, ressort, une clé pendue à son index méchamment pointu. Elle la jette dans ta main. "Ramène quand fini. Va - va."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3494 /* ~"Qu'est-ce que tu as aux mains ?"~ */ JOURNAL #38203 /* ~J'ai convaincu Ei-Vene de me donner la clé d'embaumement. ~ */ GOTO 23
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3495 /* ~"Qu'est-ce que tu as aux mains ?"~ */ JOURNAL #38203 /* ~J'ai convaincu Ei-Vene de me donner la clé d'embaumement. ~ */ GOTO 21
  IF ~~ THEN REPLY #3496 /* ~Pars.~ */ JOURNAL #38203 /* ~J'ai convaincu Ei-Vene de me donner la clé d'embaumement. ~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.3
  SAY #3472 /* ~La femme ne répond pas.~ */
  IF ~~ THEN JOURNAL #38205 /* ~Apparemment, la femme Homme-Poussière embaumeuse que j'ai rencontrée est une 'tieffeline', créature au sang démoniaque. On dit que le sang démoniaque pervertit leur corps et dans certains cas, leur esprit aussi. D'après ce que m'a dit Morte, il semble y avoir pas mal de tieffelins dans le coin… ce qui impliquerait aussi un certain nombre de fiélons.~ */ EXTERN ~DMORTE~ 56
END

IF ~~ THEN BEGIN 20 // from: 5.2 5.4
  SAY #3485 /* ~Elle se détourne et ne montre aucun signe qu'elle t'a entendu.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 57
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY #3486 /* ~Elle se détourne… Elle ne fait aucun signe qu'elle t'a entendu. Son ouïe doit être aussi mauvaise que sa vue.~ */
  IF ~~ THEN JOURNAL #38205 /* ~Apparemment, la femme Homme-Poussière embaumeuse que j'ai rencontrée est une 'tieffeline', créature au sang démoniaque. On dit que le sang démoniaque pervertit leur corps et dans certains cas, leur esprit aussi. D'après ce que m'a dit Morte, il semble y avoir pas mal de tieffelins dans le coin… ce qui impliquerait aussi un certain nombre de fiélons.~ */ EXTERN ~DMORTE~ 58
END

IF ~~ THEN BEGIN 22 // from: 15.2 25.1 27.1
  SAY #3493 /* ~Elle se retourne, t'aperçoit, puis fronce les sourcils. "Zomfis idiots". Elle fait claquer ses lames d'impatience, puis fait le geste de recoudre quelque chose. "Fini. Tout recousu. Va - va - va."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3501 /* ~"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J'ai besoin d'une clé d'embaumement. Tu en as une ?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3502 /* ~"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J'ai besoin d'une clé d'embaumement. Tu en as une ?"~ */ GOTO 24
  IF ~~ THEN REPLY #4358 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.0
  SAY #3498 /* ~Elle se détourne… Elle ne fait aucun signe qu'elle t'a entendu. Son ouïe doit être aussi mauvaise que sa vue.~ */
  IF ~~ THEN REPLY #3499 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.1 17.2 22.1
  SAY #4200 /* ~Elle se penche en avant, observe tes gestes, puis renifle. Sa main plonge dans son habit, fouille un instant. Elle hausse les épaules. "Pas de clé." Elle te fait signe de partir. "Va - va - va."~ */
  IF ~~ THEN REPLY #4201 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #4353 /* ~Tu l'observes un moment, et le rythme de ses mains fait remonter deux souvenirs à la surface. Dans le premier, tu joues d'un instrument à cordes, peut-être une harpe. Dans le second, tu voles une bourse… À ta grande surprise, ce dernier souvenir suscite en toi l'envie soudaine de voler la bourse de Ei-Vene.

^NREMARQUE : tu as retrouvé un souvenir. Les souvenirs peuvent t'apporter des points d'expérience supplémentaires ou de nouvelles compétences, et même te permettre de te rappeler davantage de souvenirs plus tard dans le jeu.^-~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #4354 /* ~Donne-lui une petite tape, attire son attention.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4355 /* ~Donne-lui une petite tape, attire son attention.~ */ GOTO 22
  IF ~~ THEN REPLY #4356 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.0
  SAY #63477 /* ~… tu te trouves devant un zombi récemment tué. Son sourire n'est plus qu'un rictus à cause de la raideur cadavérique. Le numéro '42' a été gravé sur son crâne. Le zombi repose sur une plaque de pierre et tu viens juste de finir d'ouvrir son torse. Tu as mis quelque chose à l'intérieur, quelque chose qui peut t'être utile si tu reviens par là…~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #63478 /* ~Écho : "Prends soin de ces choses et attends mon retour."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("42_Secret","GLOBAL",1)
~ GOTO 27
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #63479 /* ~Écho : "Prends soin de ces choses et attends mon retour."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #63480 /* ~Le souvenir de ta voix résonne, étrange et creux à tes oreilles. Tu croises les bras et, à ta grande surprise, le cadavre fait pareil. Après quelques instants, ses bras retombent le long de son corps et la vision s'estompe… jusqu'à ce que tu observes une nouvelle fois le mouvement saccadé des mains d'Ei-Vene.

^NREMARQUE : Tu t'es remémoré un souvenir. Les souvenirs peuvent te permettre de gagner des points d'expérience supplémentaires, des talents et peuvent même t'amener un peu plus tard à découvrir quelque chose ayant de la valeur.^-~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #63482 /* ~Attire son attention.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #63481 /* ~Attire son attention.~ */ GOTO 22
  IF ~~ THEN REPLY #63483 /* ~Pars.~ */ EXIT
END
