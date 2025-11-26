init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm985_logic import Zm985Logic
    zm985Logic = Zm985Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM985.DLG
# ###


# s0 # say45515
label zm985_s0: # - # IF ~  Global("Topple_985","GLOBAL",0)
    nr 'Le cadavre „985“ s„est arrêté. S“il faut en juger par l„état de sa jambe gauche, la putréfaction ou une sorte de moisissure lui a rongé la rotule. Il tangue d“avant en arrière et fait de son mieux pour conserver son équilibre.'

    menu:
        'Pousse le cadavre.' if zm985Logic.r45516_condition():
            # a0 # r45516
            $ zm985Logic.r45516_action()
            jump morte_s482  # EXTERN

        'Pousse le cadavre.' if zm985Logic.r45517_condition():
            # a1 # r45517
            $ zm985Logic.r45517_action()
            jump zm985_s3

        'Essaie d„aider le cadavre à garder l“équilibre.' if zm985Logic.r45518_condition():
            # a2 # r45518
            $ zm985Logic.r45518_action()
            jump zm985_s4

        'Essaie d„aider le cadavre à garder l“équilibre.' if zm985Logic.r45519_condition():
            # a3 # r45519
            $ zm985Logic.r45519_action()
            jump zm985_s6

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm985Logic.r45520_condition():
            # a4 # r45520
            jump zm985_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm985Logic.r45521_condition():
            # a5 # r45521
            jump zm985_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a6 # r45522
            jump zm985_dispose

        'Laisse le cadavre tranquille.':
            # a7 # r45523
            jump zm985_dispose


# s1 # say45524
label zm985_s1: # from 0.4 5.0 5.1 5.2
    nr 'Le cadavre regarde droit devant, sans se rendre compte de quoi que ce soit. Rien n„indique qu“il t„a aperçu.'

    menu:
        'Laisse le cadavre tranquille.':
            # a8 # r45525
            jump zm985_dispose


# s2 # say45526
label zm985_s2: # from 0.5 5.3
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.'

    menu:
        'Laisse le cadavre tranquille.':
            # a9 # r45527
            jump zm985_dispose


# s3 # say45528
label zm985_s3: # from 0.1 6.0
    nr 'La jambe gauche du cadavre craque soudainement et il s„effondre comme un arbre mort. Son torse explose comme un melon trop mûr en heurtant les dalles de pierre et une substance écœurante s“en échappe. À ta grande surprise, personne ne semble s„être aperçu de la chute du zombi. Plus étrange encore, le bas de sa jambe gauche est toujours là, bien droit. Au bout de quelques instants, le mollet tombe à son tour dans un bruit sourd.'

    $ zm985Logic.s3_action()
    jump zm985_s7


# s4 # say45530
label zm985_s4: # from 0.2
    nr 'Tu saisis le bras gauche du cadavre pour l„aider à tenir debout. À ce moment, il bascule vers la droite, et tu te retrouves à essayer de l“empêcher de tomber.'

    $ zm985Logic.s4_action()
    jump morte_s482  # EXTERN


# s5 # say45531
label zm985_s5: # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    nr 'On dirait que quelqu„un a remplacé le bras gauche et la jambe gauche de ce zombi par des membres prélevés sur un autre cadavre. La nouvelle jambe gauche est plus petite que l“ancienne mais, au moins, le mort-vivant peut désormais se tenir debout.'

    menu:
        '"Désolé de t„avoir fait tomber. C“était un accident."' if zm985Logic.r45532_condition():
            # a10 # r45532
            $ zm985Logic.r45532_action()
            jump zm985_s1

        '"Désolé de t„avoir fait tomber. C“était un accident."' if zm985Logic.r45533_condition():
            # a11 # r45533
            jump zm985_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm985Logic.r45534_condition():
            # a12 # r45534
            jump zm985_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm985Logic.r45535_condition():
            # a13 # r45535
            jump zm985_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a14 # r45536
            jump zm985_dispose

        'Laisse le cadavre tranquille.':
            # a15 # r45537
            jump zm985_dispose


# s6 # say45538
label zm985_s6: # from 0.3
    nr 'Tu saisis le bras gauche du cadavre pour l„aider à tenir debout. À ce moment, il bascule vers la droite, et tu te retrouves à essayer de l“empêcher de tomber.'

    menu:
        '"Oh-oh…"':
            # a16 # r45539
            $ zm985Logic.r45539_action()
            jump zm985_s3


# s7 # say64205
label zm985_s7: # from 3.0
    nr 'Tandis que tu regardes fixement les restes putréfiés du cadavre, tu remarques que son bras gauche a l„air intact - il s“est séparé du torse pendant la chute et il ne semble pas atteint par la pourriture, comme le reste du corps.'

    menu:
        '"Hmmm. Je me demande si ce bras peut m„être utile…"':
            # a17 # r64206
            jump zm985_dispose
