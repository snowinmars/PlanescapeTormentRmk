init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm257_logic import Zm257Logic
    zm257Logic = Zm257Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM257.DLG
# ###


# s0 # say6507
label zm257_s0: # - # IF ~  True()
    nr 'Les yeux de ce cadavre sont rapprochés et il souffre d„un léger strabisme divergent : l“un de ses yeux donne sur la gauche, l„autre sur la droite. Tu peux tout juste déchiffrer le numéro “257„ gravé sur son front meurtri ; on dirait qu“il a reçu plusieurs coups sur la tête, ce qui rend le numéro difficile à déchiffrer.'

    menu:
        '"Ça ne te donne pas le mal de mer, le fait d„avoir les yeux qui foutent le camp comme ça ?"' if zm257Logic.r6510_condition():
            # a0 # r6510
            $ zm257Logic.r6510_action()
            jump zm257_s1

        '"Ça ne te donne pas le mal de mer, le fait d„avoir les yeux qui foutent le camp comme ça ?"' if zm257Logic.r6511_condition():
            # a1 # r6511
            jump zm257_s1

        '"Je sais que tu n„es pas un zombi. Tu ne trompes personne."' if zm257Logic.r6512_condition():
            # a2 # r6512
            jump zm257_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm257Logic.r6513_condition():
            # a3 # r6513
            jump zm257_s2

        '"Je suis heureux de t„avoir parlé. Au revoir."':
            # a4 # r6514
            jump zm257_dispose

        'Laisse le cadavre tranquille.':
            # a5 # r6515
            jump zm257_dispose


# s1 # say6508
label zm257_s1: # from 0.0 0.1 0.2
    nr 'Il ne semble pas y avoir une seule lueur de compréhension dans les yeux du cadavre ; ils regardent en silence vers la droite et la gauche.'

    menu:
        'Laisse le cadavre tranquille.':
            # a6 # r6516
            jump zm257_dispose


# s2 # say6509
label zm257_s2: # from 0.3
    nr 'L„esprit resurgit dans le corps avec une violence telle que, d“une simple contraction musculaire, le corps est projeté en arrière ! Il se remet debout en un instant, dansant et gesticulant frénétiquement, bougeant les bras ; il arrache ses points de suture, et des morceaux de chair flasque virevoltent. Ses yeux globuleux tournent dans sa tête et il ne cesse de rire sottement…'

    menu:
        '"Euh… j„ai une question à te poser, esprit…"':
            # a7 # r6517
            jump zm257_s3

        'Laisse l„esprit tranquille.':
            # a8 # r9558
            jump zm257_dispose


# s3 # say9553
label zm257_s3: # from 2.0
    nr 'Le corps possédé sautille et gambade en chantant d„une voix qui enfle et retombe de manière aléatoire. "TU es l“ESPRIT, je suis le VIVANT, tu DOIS répondre à mes QUESTIONS !" Ta perplexité semble le ravir ; il met deux doigts dans sa bouche, l„étire en un affreux sourire avec un rire maniaque tout en tirant une langue blanche qui te paraît très chargée.'

    menu:
        '"Très bien… Pose tes questions."':
            # a9 # r9559
            jump zm257_s4

        '"Non. Je voudrais *te* poser une question…"':
            # a10 # r9560
            jump zm257_s5

        'Laisse l„esprit à son chaos.':
            # a11 # r9561
            jump zm257_s6


# s4 # say9554
label zm257_s4: # from 3.0 4.0 5.0
    nr 'L„esprit paraît se calmer, mais ça ne dure qu“un instant, car il se met à hurler une litanie de mots sans suite, à pleins poumons. La cacophonie est telle que tu en as la tête qui tourne ; tu vas tomber à genoux quand elle cesse, aussi soudainement qu„elle a débuté. Le cadavre ne fait plus que tressaillir de temps en temps.'

    menu:
        '"Je n„ai pas tout compris. Tu peux répéter ?"':
            # a12 # r9562
            $ zm257Logic.r9562_action()
            jump zm257_s4

        '"Je ne comprends pas. Mais, j„ai une question…"':
            # a13 # r9563
            jump zm257_s5

        '"Je ne te comprends pas. Au revoir."':
            # a14 # r9564
            jump zm257_s6


# s5 # say9555
label zm257_s5: # from 3.1 4.1 5.1
    nr 'De nouveau, l„esprit chantonne : "Questions des VIVANTS AUX doivent les MORTS répondre ; c“était AINSI, AINSI c„est, sera en toujours ainsi IL. Tu dois mes questions RÉPONDRE à !" Ton expression paraît le réjouir ; il cabriole maintenant avec un tel enthousiasme que tu songes que le cadavre ne résistera pas. Tu entends presque ses os casser et ses tendons se briser tandis qu“il tourbillonne autour de toi.'

    menu:
        '"Très bien… Pose tes questions."':
            # a15 # r9565
            jump zm257_s4

        '"Tu ne comprends pas. J„ai une question à *te* poser…"':
            # a16 # r9566
            jump zm257_s5

        'Abandonne et laisse l„esprit à son bavardage.':
            # a17 # r9567
            jump zm257_s6


# s6 # say9556
label zm257_s6: # from 3.2 4.2 5.2
    nr 'Alors que l„esprit déserte le cadavre, ses lèvres déchiquetées s“étirent en un sourire sagace et ses yeux brillants te fixent du regard acéré d„un psychopathe, puis il murmure deux mots, en tout trois syllabes prononcées avec une extrême précision : "Les Limbes…"'

    menu:
        '"Quoi ?"':
            # a18 # r9568
            jump zm257_s7

        'Ignore-le, tourne les talon.':
            # a19 # r9569
            jump zm257_dispose


# s7 # say9557
label zm257_s7: # from 6.0
    nr '… et il disparaît. Tu n„es guère plus avancé, et tu te sens même un peu mal à l“aise. Quant au zombi, il reprend son travail.'

    jump zm257_dispose
