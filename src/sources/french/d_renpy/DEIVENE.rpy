init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.eivene_logic import EiveneLogic
    eiveneLogic = EiveneLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


# s0 # say3404
label eivene_s0: # - # IF ~  Global("EiVene","GLOBAL",0)
    nr 'Tu vois une jeune femme au teint pâle. La peau creusée au niveau des joues et du cou donne l„impression qu“elle souffre de la faim. Elle semble prête à disséquer le cadavre devant elle, tâtant la poitrine avec un doigt.'

    menu:
        '"Bonjour."':
            # a0 # r3406
            jump eivene_s1

        'Laisse-la tranquille.':
            # a1 # r3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1: # from 0.0
    nr 'La femme ne répond pas… elle semble trop absorbée par le cadavre devant elle. Tu l„observes à la tâche, et tu remarques ses mains… ses doigts sont des lames. Elles entrent et sortent de la poitrine du cadavre, comme des couteaux, et en retirent les organes.'

    menu:
        '"J„ai dit, bonjour."' if eiveneLogic.r3412_condition():
            # a2 # r3412
            jump eivene_s2

        '"J„ai dit, bonjour."' if eiveneLogic.r3413_condition():
            # a3 # r3413
            jump eivene_s3

        '"Qu„est-ce que tu as aux mains ?"' if eiveneLogic.r3414_condition():
            # a4 # r3414
            jump eivene_s2

        '"Qu„est-ce que tu as aux mains ?"' if eiveneLogic.r3415_condition():
            # a5 # r3415
            jump eivene_s19

        'Laisse-la tranquille.':
            # a6 # r3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2: # from 1.0 1.2
    nr 'La femme ne répond pas.'

    menu:
        'Donne une petite tape à la femme, attire son attention.':
            # a7 # r3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        'Laisse-la tranquille.':
            # a8 # r3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3: # from 1.1
    nr 'La femme ne répond pas.'

    jump morte_s55  # EXTERN


# s4 # say3421
label eivene_s4: # from 2.0
    nr 'La femme saute et se retourne brusquement pour te faire face. Ses yeux ont la couleur du pus ; deux petits points orange forment ses pupilles. Elle t„aperçoit et son expression passe de la surprise à l“agacement. Elle fronce les sourcils.'

    menu:
        '"Euh… Bonjour."':
            # a9 # r3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5: # from 4.0
    nr 'Elle ne semble pas t„avoir entendu. Elle se penche en avant, plisse les yeux, comme si elle ne te voyait pas bien… Quel que soit son problème oculaire, ça la rend terriblement myope. "Toi", elle claque ses doigts griffus, puis fait un geste étrange avec ses mains. "Trouve du FIL et de la LOTION d“embaumement ; apporte ça ICI, à Ei-Vene. Va - va - va."  ^NREMARQUE : on t„a assigné une quête. Les quêtes sont affichées dans ton journal intime et dans la section “Quêtes„ de ton journal. Pour voir toutes les quêtes qui t“ont été assignées (et savoir si tu les as menées à bien ou non), il te suffit de sélectionner „Quêtes“ dans le menu du journal.^-'

    menu:
        'Donne-lui le fil et la lotion d„embaumement.' if eiveneLogic.r3424_condition():
            # a10 # r3424
            $ eiveneLogic.j37701_s5_r3424_action()
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        '"J„ai d“abord quelques questions…"' if eiveneLogic.r3425_condition():
            # a11 # r3425
            $ eiveneLogic.j37702_s5_r3425_action()
            jump eivene_s6

        '"J„ai d“abord quelques questions…"' if eiveneLogic.r3426_condition():
            # a12 # r3426
            $ eiveneLogic.j37702_s5_r3426_action()
            jump eivene_s20

        '"Qu„est-ce que tu as aux mains ?"' if eiveneLogic.r3427_condition():
            # a13 # r3427
            $ eiveneLogic.j37702_s5_r3427_action()
            jump eivene_s6

        '"Qu„est-ce que tu as aux mains ?"' if eiveneLogic.r3428_condition():
            # a14 # r3428
            $ eiveneLogic.j37702_s5_r3428_action()
            jump eivene_s20

        'Pars.':
            # a15 # r3429
            $ eiveneLogic.j37702_s5_r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6: # from 5.1 5.3
    nr 'Elle se détourne… Rien ne montre qu„elle t“a entendu. Son ouïe doit être aussi mauvaise que sa vue.'

    menu:
        'Donne-lui une tape sur l„épaule, attire son attention.':
            # a16 # r3431
            jump eivene_s17

        'Pars.':
            # a17 # r3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7: # from 5.0 17.0
    nr 'Sans perdre une seconde, Ei-Vene arrache le fil de tes mains, l„accroche à l“une de ses lames, puis se met à coudre la poitrine du cadavre. Ensuite, elle prend la lotion d„embaumement et en badigeonne le cadavre.'

    menu:
        'Attends.':
            # a18 # r3434
            jump eivene_s9

        'Pars.':
            # a19 # r3435
            jump eivene_s8


# s8 # say3436
label eivene_s8: # from 7.1
    nr 'Tu es sur le point de partir quand Ei-Vene prend la parole : "Reste. Toi - prochain."'

    menu:
        'Attends.':
            # a20 # r3437
            jump eivene_s9

        'Va-t„en. Vite.':
            # a21 # r3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9: # from 7.0 8.0
    nr 'En quelques minutes, elle a terminé. Elle fait cliqueter ses lames, puis se retourne vers toi. À ta surprise, elle tend la main et entoure tes bras et ta poitrine de ses lames.'

    menu:
        '"Euh, ça me flatte, mais…"' if eiveneLogic.r3440_condition():
            # a22 # r3440
            jump eivene_s11

        '"Euh, ça me flatte, mais…"' if eiveneLogic.r3441_condition():
            # a23 # r3441
            jump morte_s59  # EXTERN

        'Continue à jouer le zombi.' if eiveneLogic.r3442_condition():
            # a24 # r3442
            jump eivene_s11

        'Continue à jouer le zombi.' if eiveneLogic.r3443_condition():
            # a25 # r3443
            jump morte_s59  # EXTERN

        'Repousse-la, va-t„en.':
            # a26 # r3444
            jump eivene_s10


# s10 # say3445
label eivene_s10: # from 9.4 12.1
    nr 'Elle a l„air choqué que tu la rejettes. "Zomfi ? Toi pas zomfi !" Elle recule d“un pas, et avant que tu n„aies eu le temps de réagir, elle tape trois fois dans les mains. En réponse, une cloche énorme résonne dans toute la Morgue.'

    menu:
        '"Alors très bien…"':
            # a27 # r3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11: # from 9.0 9.2
    nr 'Alors qu„elle suit le dessin de tes bras et de ta poitrine, tu t“aperçois qu„elle semble examiner tes cicatrices. Elle retire ses lames, les fait cliquer deux fois, puis se penche en avant et examine les tatouages sur ta poitrine. "Hmmpf. Qui écrire sur toi ? Rucheux faire ça ? Aucun respect pour zomfis. Zomfis, pas peintures." Elle renifle, puis elle touche l“une de tes cicatrices. "Celle-là, mauvaise ; beaucoup pas garder."'

    menu:
        'Attends.':
            # a28 # r3447
            jump eivene_s12


# s12 # say3448
label eivene_s12: # from 11.0
    nr 'Soudain, ses lames s„accrochent au fil que tu lui as apporté, et comme un éclair, elle plante une autre lame dans ta peau, près d“une cicatrice. C„est à peine plus douloureux que la piqûre d“une aiguille. Mais elle semble prête à te coudre.'

    menu:
        'Laisse-la travailler.':
            # a29 # r3449
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        'Repousse-la, va-t„en.':
            # a30 # r3450
            jump eivene_s10


# s13 # say3451
label eivene_s13: # from 12.0
    nr 'Elle commence à coudre tes cicatrices, et curieusement, la sensation n„est pas douloureuse.  Après avoir terminé, elle renifle, fronce les sourcils, puis plonge les doigts dans la lotion d“embaumement. En quelques minutes, elle en a badigeonné ton corps. Bizarrement, tu te sens *mieux*.'

    menu:
        'Laisse-la travailler.' if eiveneLogic.r3452_condition():
            # a31 # r3452
            jump eivene_s14

        'Laisse-la travailler.' if eiveneLogic.r3453_condition():
            # a32 # r3453
            jump morte_s60  # EXTERN


# s14 # say3454
label eivene_s14: # from 13.0
    nr 'Ei-Vene ajoute une dernière touche sur ton corps, renifle encore une fois, hoche la tête et fait un mouvement avec ses lames. "Fini. Va - va."'

    menu:
        '"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J„ai besoin d“une clé d„embaumement. Tu en as une ?"' if eiveneLogic.r3456_condition():
            # a33 # r3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        '"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J„ai besoin d“une clé d„embaumement. Tu en as une ?"' if eiveneLogic.r3457_condition():
            # a34 # r3457
            jump eivene_s24

        'Pars.':
            # a35 # r4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15: # - # IF ~  Global("EiVene","GLOBAL",1)
    nr 'Tu aperçois Ei-Vene. Elle dissèque la poitrine du cadavre avec ses lames. Le rythme de ses lames te rappelle quelque chose, mais tu ne sais pas quoi.'

    menu:
        'Observe-la, étudie sa manière de bouger les mains.' if eiveneLogic.r3459_condition():
            # a36 # r3459
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        'Donne-lui une petite tape, attire son attention.' if eiveneLogic.r3463_condition():
            # a37 # r3463
            jump eivene_s17

        'Donne-lui une petite tape, attire son attention.' if eiveneLogic.r4351_condition():
            # a38 # r4351
            jump eivene_s22

        'Pars.':
            # a39 # r4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16: # from 15.0
    nr 'Tandis que tu observes le rythme des mains de Ei-Vene, tu ressens une démangeaison au cuir chevelu, puis soudain ta vision se trouble et…'

    $ eiveneLogic.s16_action()
    jump eivene_s26


# s17 # say3468
label eivene_s17: # from 6.0 15.1 25.0 27.0
    nr 'Elle se retourne, te voit, et fronce les sourcils. "Zomfis idiots." Elle fait claquer ses lames d„impatience, puis fait le geste de recoudre quelque chose. "Trouve fil et lotion d“embaumement, amène ici, à Ei-Vene. Va - va - va."'

    menu:
        'Donne-lui le fil et la lotion d„embaumement.' if eiveneLogic.r3469_condition():
            # a40 # r3469
            $ eiveneLogic.j38202_s17_r3469_action()
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        '"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J„ai besoin d“une clé d„embaumement. Tu en as une ?"' if eiveneLogic.r3470_condition():
            # a41 # r3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        '"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J„ai besoin d“une clé d„embaumement. Tu en as une ?"' if eiveneLogic.r3497_condition():
            # a42 # r3497
            jump eivene_s24

        'Pars.':
            # a43 # r4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18: # from 14.0 17.1 22.0
    nr 'Elle se penche en avant, observe tes gestes, puis renifle. Sa main plonge dans son habit, ressort, une clé pendue à son index méchamment pointu. Elle la jette dans ta main. "Ramène quand fini. Va - va."'

    menu:
        '"Qu„est-ce que tu as aux mains ?"' if eiveneLogic.r3494_condition():
            # a44 # r3494
            $ eiveneLogic.j38203_s18_r3494_action()
            jump eivene_s23

        '"Qu„est-ce que tu as aux mains ?"' if eiveneLogic.r3495_condition():
            # a45 # r3495
            $ eiveneLogic.j38203_s18_r3495_action()
            jump eivene_s21

        'Pars.':
            # a46 # r3496
            $ eiveneLogic.j38203_s18_r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19: # from 1.3
    nr 'La femme ne répond pas.'

    $ eiveneLogic.j38205_s19_action()
    jump morte_s56  # EXTERN


# s20 # say3485
label eivene_s20: # from 5.2 5.4
    nr 'Elle se détourne et ne montre aucun signe qu„elle t“a entendu.'

    jump morte_s57  # EXTERN


# s21 # say3486
label eivene_s21: # from 18.1
    nr 'Elle se détourne… Elle ne fait aucun signe qu„elle t“a entendu. Son ouïe doit être aussi mauvaise que sa vue.'

    $ eiveneLogic.j38205_s21_action()
    jump morte_s58  # EXTERN


# s22 # say3493
label eivene_s22: # from 15.2 25.1 27.1
    nr 'Elle se retourne, t„aperçoit, puis fronce les sourcils. "Zomfis idiots". Elle fait claquer ses lames d“impatience, puis fait le geste de recoudre quelque chose. "Fini. Tout recousu. Va - va - va."'

    menu:
        '"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J„ai besoin d“une clé d„embaumement. Tu en as une ?"' if eiveneLogic.r3501_condition():
            # a47 # r3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        '"Attends une minute." (Tu fais comme si tu tournais une clé dans le vide.) "J„ai besoin d“une clé d„embaumement. Tu en as une ?"' if eiveneLogic.r3502_condition():
            # a48 # r3502
            jump eivene_s24

        'Pars.':
            # a49 # r4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23: # from 18.0
    nr 'Elle se détourne… Elle ne fait aucun signe qu„elle t“a entendu. Son ouïe doit être aussi mauvaise que sa vue.'

    menu:
        'Pars.':
            # a50 # r3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24: # from 14.1 17.2 22.1
    nr 'Elle se penche en avant, observe tes gestes, puis renifle. Sa main plonge dans son habit, fouille un instant. Elle hausse les épaules. "Pas de clé." Elle te fait signe de partir. "Va - va - va."'

    menu:
        'Pars.':
            # a51 # r4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25: # -
    nr 'Tu l„observes un moment, et le rythme de ses mains fait remonter deux souvenirs à la surface. Dans le premier, tu joues d“un instrument à cordes, peut-être une harpe. Dans le second, tu voles une bourse… À ta grande surprise, ce dernier souvenir suscite en toi l„envie soudaine de voler la bourse de Ei-Vene.  ^NREMARQUE : tu as retrouvé un souvenir. Les souvenirs peuvent t“apporter des points d„expérience supplémentaires ou de nouvelles compétences, et même te permettre de te rappeler davantage de souvenirs plus tard dans le jeu.^-'

    menu:
        'Donne-lui une petite tape, attire son attention.' if eiveneLogic.r4354_condition():
            # a52 # r4354
            jump eivene_s17

        'Donne-lui une petite tape, attire son attention.' if eiveneLogic.r4355_condition():
            # a53 # r4355
            jump eivene_s22

        'Pars.':
            # a54 # r4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26: # from 16.0
    nr '… tu te trouves devant un zombi récemment tué. Son sourire n„est plus qu“un rictus à cause de la raideur cadavérique. Le numéro „42“ a été gravé sur son crâne. Le zombi repose sur une plaque de pierre et tu viens juste de finir d„ouvrir son torse. Tu as mis quelque chose à l“intérieur, quelque chose qui peut t„être utile si tu reviens par là…'

    menu:
        'Écho : "Prends soin de ces choses et attends mon retour."' if eiveneLogic.r63478_condition():
            # a55 # r63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        'Écho : "Prends soin de ces choses et attends mon retour."' if eiveneLogic.r63479_condition():
            # a56 # r63479
            jump eivene_s27


# s27 # say63480
label eivene_s27: # from 26.0 26.1
    nr 'Le souvenir de ta voix résonne, étrange et creux à tes oreilles. Tu croises les bras et, à ta grande surprise, le cadavre fait pareil. Après quelques instants, ses bras retombent le long de son corps et la vision s„estompe… jusqu“à ce que tu observes une nouvelle fois le mouvement saccadé des mains d„Ei-Vene.  ^NREMARQUE : Tu t“es remémoré un souvenir. Les souvenirs peuvent te permettre de gagner des points d„expérience supplémentaires, des talents et peuvent même t“amener un peu plus tard à découvrir quelque chose ayant de la valeur.^-'

    menu:
        'Attire son attention.' if eiveneLogic.r63482_condition():
            # a57 # r63482
            jump eivene_s17

        'Attire son attention.' if eiveneLogic.r63481_condition():
            # a58 # r63481
            jump eivene_s22

        'Pars.':
            # a59 # r63483
            jump eivene_dispose
