init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm569_logic import Zm569Logic
    zm569Logic = Zm569Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM569.DLG
# ###


# s0 # say24575
label zm569_s0: # - # IF ~  True()
    nr 'Ce cadavre qui se traîne semble être mort depuis de nombreuses années. La peau de son front a pelé, découvrant son crâne couleur de craie. Quelqu„un a gravé le numéro “569„ dans l“os ainsi découvert.'

    menu:
        '"Je cherche une clé… tu n„en aurais pas une, par hasard ?"' if zm569Logic.r24576_condition():
            # a0 # r24576
            jump morte1_s31  # EXTERN

        '"Je cherche une clé… tu n„en aurais pas une, par hasard ?"' if zm569Logic.r24579_condition():
            # a1 # r24579
            jump zm569_s1

        '"Alors… Tu as vu quelque chose d„intéressant ?"' if zm569Logic.r24580_condition():
            # a2 # r24580
            jump zm569_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm569Logic.r24581_condition():
            # a3 # r24581
            jump zm569_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm569Logic.r24584_condition():
            # a4 # r24584
            jump zm569_s2

        'Examine le cadavre et regarde s„il possède une clé.' if zm569Logic.r24585_condition():
            # a5 # r24585
            jump zm569_s3

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a6 # r42290
            jump zm569_dispose

        'Laisse le cadavre tranquille.':
            # a7 # r42291
            jump zm569_dispose


# s1 # say24577
label zm569_s1: # from 0.1 0.2 0.3 3.1
    nr 'Le cadavre t„observe en silence.'

    menu:
        '"Bon, peu importe. Au revoir."':
            # a8 # r24578
            jump zm569_dispose

        'Laisse le cadavre tranquille.':
            # a9 # r42292
            jump zm569_dispose


# s2 # say24582
label zm569_s2: # from 0.4
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.'

    menu:
        'Laisse le cadavre tranquille.':
            # a10 # r24583
            jump zm569_dispose


# s3 # say42293
label zm569_s3: # from 0.5
    nr 'Ce cadavre ne semble pas avoir de clé… Et si c„était le cas, il ne pourrait apparemment pas s“en servir. Ses doigts sont cassés, comme si quelqu„un les avait frappés à coups de marteau. Tu constates aussi que son épaule gauche est entièrement bandée… Une fois enlevés du cadavre, ces bandages pourraient resservir.'

    menu:
        '"Je suppose que tu ne l„as pas… Tu ne saurais pas lequel de tes amis cadavres a la clé pour sortir d“ici, par hasard ?"' if zm569Logic.r42294_condition():
            # a11 # r42294
            jump morte1_s31  # EXTERN

        '"Je suppose que tu ne l„as pas… Tu ne saurais pas lequel de tes amis cadavres a la clé pour sortir d“ici, par hasard ?"' if zm569Logic.r42295_condition():
            # a12 # r42295
            jump zm569_s1

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a13 # r42296
            jump zm569_dispose

        'Laisse le cadavre tranquille.':
            # a14 # r42297
            jump zm569_dispose
