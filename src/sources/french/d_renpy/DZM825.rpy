init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr 'La tête du cadavre bascule d„avant en arrière sur ses épaules. À en juger par l“angle du cou, tu en déduis que cet homme a été pendu. Le numéro „825“ a été peint sur sa tempe.{#zm825_s0_1}'

    menu:
        '"Je cherche une clé… tu n„en aurais pas une, par hasard ?"{#zm825_s0_r24565}' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '"Je cherche une clé… tu n„en aurais pas une, par hasard ?"{#zm825_s0_r24568}' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm825_s0_r24569}' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm825_s0_r24570}' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm825_s0_r24573}' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        'Examine le cadavre et regarde s„il possède une clé.{#zm825_s0_r24574}' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm825_s0_r42308}':
            # a6 # r42308
            jump zm825_dispose

        'Laisse le cadavre tranquille.{#zm825_s0_r42309}':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr 'Le cadavre fixe le sol sans répondre.{#zm825_s1_1}'

    menu:
        '"Bon, peu importe. Au revoir."{#zm825_s1_r24567}':
            # a8 # r24567
            jump zm825_dispose

        'Laisse le cadavre tranquille.{#zm825_s1_r42310}':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.{#zm825_s2_1}'

    menu:
        'Laisse le cadavre tranquille.{#zm825_s2_r24572}':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr 'Ce cadavre n„a rien… mais tu remarques que ses mains sont bandées. Une fois enlevés du cadavre, ces bandages pourraient resservir.{#zm825_s3_1}'

    menu:
        '"Je suppose que tu n„as pas la clé… Tu ne saurais pas lequel de tes amis cadavres a fait sortir cette clé d“ici, par hasard ?"{#zm825_s3_r42312}' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '"Je suppose que tu n„as pas la clé… Tu ne saurais pas lequel de tes amis cadavres a fait sortir cette clé d“ici, par hasard ?"{#zm825_s3_r42313}' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm825_s3_r42314}':
            # a13 # r42314
            jump zm825_dispose

        'Laisse le cadavre tranquille.{#zm825_s3_r42315}':
            # a14 # r42315
            jump zm825_dispose
