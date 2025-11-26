init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s863_logic import S863Logic
    s863Logic = S863Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS863.DLG
# ###


# s0 # say35537
label s863_s0: # from 10.0 # IF ~  !HasItem("DRemind","S863")
    nr 'Ce squelette paraît avoir beaucoup servi, soit au combat, soit à tomber dans des escaliers ; ses jambes et ses bras, brisés en plusieurs endroits, ont été redressés et renforcés à l„aide de sangles en cuir et de tiges de fer. Son front porte le numéro “863„… mais il a l“arrière du crâne défoncé.'

    menu:
        '"Désolé d„avoir pris ce parchemin, mais tu n“aurais sans doute pas pu l„apporter avant quelque temps."' if s863Logic.r35538_condition():
            # a0 # r35538
            $ s863Logic.r35538_action()
            jump s863_s1

        '"Désolé d„avoir pris ce parchemin, mais tu n“aurais sans doute pas pu l„apporter avant quelque temps."' if s863Logic.r35561_condition():
            # a1 # r35561
            jump s863_s1

        '"Il faut que je te demande : ces os brisés, c„est le résultat d“un combat ou d„une chute ?"' if s863Logic.r35562_condition():
            # a2 # r35562
            $ s863Logic.r35562_action()
            jump s863_s1

        '"Il faut que je te demande : ces os brisés, c„est le résultat d“un combat ou d„une chute ?"' if s863Logic.r35563_condition():
            # a3 # r35563
            jump s863_s1

        'Utilise Histoires-Os-Conter sur le squelette.' if s863Logic.r35564_condition():
            # a4 # r35564
            jump s863_s2

        'Examine attentivement le squelette.':
            # a5 # r35569
            $ s863Logic.r35569_action()
            jump s863_s3

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35602_condition():
            # a6 # r35602
            $ s863Logic.r35602_action()
            jump morte_s400  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35603_condition():
            # a7 # r35603
            jump s863_s4

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35604_condition():
            # a8 # r35604
            jump s863_s5

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35605_condition():
            # a9 # r35605
            jump s863_s6

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35606_condition():
            # a10 # r35606
            jump s863_s4

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35607_condition():
            # a11 # r35607
            jump s863_s5

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35608_condition():
            # a12 # r35608
            jump s863_s6

        '"Qu„est-ce que tu dis de ce squelette, Morte ? Ça t“ira comme corps ?"' if s863Logic.r35609_condition():
            # a13 # r35609
            jump morte_s396  # EXTERN

        'Laisse le squelette tranquille.' if s863Logic.r35610_condition():
            # a14 # r35610
            $ s863Logic.r35610_action()
            jump morte_s394  # EXTERN

        'Laisse le squelette tranquille.' if s863Logic.r35611_condition():
            # a15 # r35611
            jump s863_dispose

        'Laisse le squelette tranquille.' if s863Logic.r35612_condition():
            # a16 # r35612
            jump s863_dispose


# s1 # say35539
label s863_s1: # from 0.0 0.1 0.2 0.3
    nr 'Le squelette ne répond pas.'

    menu:
        '"C„était sympa de parler avec toi, Sac d“os. Prends soin de toi."' if s863Logic.r35540_condition():
            # a17 # r35540
            $ s863Logic.r35540_action()
            jump morte_s394  # EXTERN

        '"C„était sympa de parler avec toi, Sac d“os. Prends soin de toi."' if s863Logic.r35559_condition():
            # a18 # r35559
            jump s863_dispose

        '"C„était sympa de parler avec toi, Sac d“os. Prends soin de toi."' if s863Logic.r35560_condition():
            # a19 # r35560
            jump s863_dispose


# s2 # say35565
label s863_s2: # from 0.4
    nr 'Ce squelette ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
        'Laisse le squelette tranquille.' if s863Logic.r35566_condition():
            # a20 # r35566
            $ s863Logic.r35566_action()
            jump morte_s394  # EXTERN

        'Laisse le squelette tranquille.' if s863Logic.r35567_condition():
            # a21 # r35567
            jump s863_dispose

        'Laisse le squelette tranquille.' if s863Logic.r35568_condition():
            # a22 # r35568
            jump s863_dispose


# s3 # say35570
label s863_s3: # from 0.5
    nr 'Quelqu„un a pris soin d“attacher les os de ce squelette avec des sangles de cuir, enroulées autour du corps de telle manière qu„elles ressemblent à des muscles et des tendons. Les sangles sont fixées à des boulons métalliques, enfoncés dans les articulations du squelette. Ce squelette semble avoir fait l“objet de nombreuses réparations. Nombre de ses os sont ébréchés, et ses innombrables fractures ont été réparées avec des colles puantes.'

    menu:
        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35571_condition():
            # a23 # r35571
            $ s863Logic.r35571_action()
            jump morte_s400  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35593_condition():
            # a24 # r35593
            jump s863_s4

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35594_condition():
            # a25 # r35594
            jump s863_s5

        'Essaie de déboulonner les articulations du squelette.' if s863Logic.r35595_condition():
            # a26 # r35595
            jump s863_s6

        '"Je peux emprunter quelques sangles et boulons ?"' if s863Logic.r35596_condition():
            # a27 # r35596
            jump s863_s4

        '"Je peux emprunter quelques sangles et boulons ?"' if s863Logic.r35597_condition():
            # a28 # r35597
            jump s863_s5

        '"Je peux emprunter quelques sangles et boulons ?"' if s863Logic.r35598_condition():
            # a29 # r35598
            jump s863_s6

        'Laisse le squelette tranquille.' if s863Logic.r35599_condition():
            # a30 # r35599
            $ s863Logic.r35599_action()
            jump morte_s394  # EXTERN

        'Laisse le squelette tranquille.' if s863Logic.r35600_condition():
            # a31 # r35600
            jump s863_dispose

        'Laisse le squelette tranquille.' if s863Logic.r35601_condition():
            # a32 # r35601
            jump s863_dispose


# s4 # say35576
label s863_s4: # from 0.7 0.10 3.1 3.4
    nr 'Tu tires sur les boulons, mais tu n„es pas assez fort pour les extraire. Ils sont enfoncés assez serrés.'

    menu:
        '"Peut-être qu„avec l“outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d„os."' if s863Logic.r35577_condition():
            # a33 # r35577
            $ s863Logic.r35577_action()
            jump morte_s394  # EXTERN

        '"Peut-être qu„avec l“outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d„os."' if s863Logic.r35578_condition():
            # a34 # r35578
            jump s863_dispose

        '"Peut-être qu„avec l“outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d„os."' if s863Logic.r35579_condition():
            # a35 # r35579
            jump s863_dispose

        'Laisse le squelette tranquille.' if s863Logic.r35580_condition():
            # a36 # r35580
            $ s863Logic.r35580_action()
            jump morte_s394  # EXTERN

        'Laisse le squelette tranquille.' if s863Logic.r35581_condition():
            # a37 # r35581
            jump s863_dispose

        'Laisse le squelette tranquille.' if s863Logic.r35582_condition():
            # a38 # r35582
            jump s863_dispose


# s5 # say35584
label s863_s5: # from 0.8 0.11 3.2 3.5
    nr 'Tu tires sur les boulons de toutes tes forces, et après quelques instants, tu arraches le boulon des articulations. Le squelette s„effondre, certains de ses os remuant encore.'

    menu:
        '"Excuse-moi, Sac d„os…"':
            # a39 # r35585
            $ s863Logic.r35585_action()
            jump s863_dispose


# s6 # say35587
label s863_s6: # from 0.9 0.12 3.3 3.6
    nr 'Tu arraches les boulons des articulations du squelette avec ton pied-de-biche. Le squelette s„effondre, certains de ses os remuant encore.'

    menu:
        '"Excuse-moi, Sac d„os…"':
            # a40 # r35588
            $ s863Logic.r35588_action()
            jump s863_dispose


# s7 # say35613
label s863_s7: # - # IF ~  False()
    nr 'Ce squelette ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:

# s8 # say64262
label s863_s8: # - # IF ~  HasItem("DRemind","S863")
    nr 'Soit ce squelette a beaucoup combattu, soit il est trop souvent tombé dans des escaliers. Ses deux bras et ses deux jambes ont été brisés et réparés à l„aide de bouts de métal et de lanières de cuir. Sur son front, on peut lire le numéro “863„… l“arrière du crâne est défoncé et forme une cavité. Tu remarques que quelqu„un en a profité pour y glisser un parchemin.'

    menu:
        'Prends le parchemin dans le crâne du squelette.':
            # a41 # r64263
            jump s863_s9

        'Laisse le squelette tranquille.':
            # a42 # r64264
            jump s863_dispose


# s9 # say64265
label s863_s9: # from 8.0
    nr 'Tu extrais le parchemin du crâne - étrangement, il semble que la cavité était *prévue* pour recevoir des messages. Le parchemin est attaché avec une petite ficelle, elle-même fixée à un crochet dans le crâne, comme si on avait voulu éviter que le message ne tombe accidentellement de sa cachette.'

    menu:
        'Détache la ficelle et prends le parchemin.':
            # a43 # r64266
            $ s863Logic.r64266_action()
            jump s863_s10


# s10 # say64267
label s863_s10: # from 9.0
    nr 'Tu détaches la ficelle et examines le parchemin - cela semble être une note d„un des gardiens de la Morgue. Ce squelette devait être une sorte de messager ambulant. En y regardant à deux fois, tu te rends compte que le squelette s“est arrêté devant la dalle de pierre parce qu„il ne savait pas comment la franchir.  ^NREMARQUE : pour “lire„ des notes, des livres ou des parchemins, place-les dans ton inventaire, puis clique dessus avec le bouton droit de la souris pour faire apparaître leur panneau d“information.^-'

    menu:
        'Étudie encore le squelette.':
            # a44 # r64268
            jump s863_s0

        'Laisse le squelette tranquille.':
            # a45 # r64269
            jump s863_dispose
