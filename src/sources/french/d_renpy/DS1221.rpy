init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s1221_logic import S1221Logic
    s1221Logic = S1221Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS1221.DLG
# ###


# s0 # say35306
label s1221_s0: # - # IF ~  True()
    nr 'Ce squelette animé empeste, comme si on l„avait dépecé et préparé depuis peu. Sa mâchoire et ses principales jointures sont solidement maintenues par des lanières de cuir, et il est recouvert d“une robe grossière. Le numéro „1221“ est gravé sur son front.{#s1221_s0_}'

    menu:
        '"Excuse-moi, tu n„aurais pas vu des squelettes errants dans le coin ?"{#s1221_s0_r35307}' if s1221Logic.r35307_condition():
            # a0 # r35307
            $ s1221Logic.r35307_action()
            jump s1221_s1

        '"Excuse-moi, tu n„aurais pas vu des squelettes errants dans le coin ?"{#s1221_s0_r35330}' if s1221Logic.r35330_condition():
            # a1 # r35330
            jump s1221_s1

        '"Il faut que je te demande : pourquoi ce sarrau ? Je veux dire, ce n„est pas comme si tu avais quelque chose à cacher."{#s1221_s0_r35331}' if s1221Logic.r35331_condition():
            # a2 # r35331
            $ s1221Logic.r35331_action()
            jump s1221_s1

        '"Il faut que je te demande : pourquoi ce sarrau ? Je veux dire, ce n„est pas comme si tu avais quelque chose à cacher."{#s1221_s0_r35332}' if s1221Logic.r35332_condition():
            # a3 # r35332
            jump s1221_s1

        'Utilise Histoires-Os-Conter sur le squelette.{#s1221_s0_r35333}' if s1221Logic.r35333_condition():
            # a4 # r35333
            jump s1221_s2

        'Examine attentivement le squelette.{#s1221_s0_r35338}':
            # a5 # r35338
            $ s1221Logic.r35338_action()
            jump s1221_s3

        'Essaie de déboulonner les articulations du squelette.{#s1221_s0_r35371}' if s1221Logic.r35371_condition():
            # a6 # r35371
            $ s1221Logic.r35371_action()
            jump morte_s376  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#s1221_s0_r35372}' if s1221Logic.r35372_condition():
            # a7 # r35372
            jump s1221_s4

        'Essaie de déboulonner les articulations du squelette.{#s1221_s0_r35373}' if s1221Logic.r35373_condition():
            # a8 # r35373
            jump s1221_s5

        'Essaie de déboulonner les articulations du squelette.{#s1221_s0_r35374}' if s1221Logic.r35374_condition():
            # a9 # r35374
            jump s1221_s6

        'Essaie de déboulonner les articulations du squelette.{#s1221_s0_r35375}' if s1221Logic.r35375_condition():
            # a10 # r35375
            jump s1221_s4

        'Essaie de déboulonner les articulations du squelette.{#s1221_s0_r35376}' if s1221Logic.r35376_condition():
            # a11 # r35376
            jump s1221_s5

        'Essaie de déboulonner les articulations du squelette.{#s1221_s0_r35377}' if s1221Logic.r35377_condition():
            # a12 # r35377
            jump s1221_s6

        '"Qu„est-ce que tu dis de ce squelette, Morte ? Ça t“ira comme corps ?"{#s1221_s0_r35378}' if s1221Logic.r35378_condition():
            # a13 # r35378
            jump morte_s372  # EXTERN

        'Laisse le squelette tranquille.{#s1221_s0_r35379}' if s1221Logic.r35379_condition():
            # a14 # r35379
            $ s1221Logic.r35379_action()
            jump morte_s370  # EXTERN

        'Laisse le squelette tranquille.{#s1221_s0_r35380}' if s1221Logic.r35380_condition():
            # a15 # r35380
            jump s1221_dispose

        'Laisse le squelette tranquille.{#s1221_s0_r35381}' if s1221Logic.r35381_condition():
            # a16 # r35381
            jump s1221_dispose


# s1 # say35308
label s1221_s1: # from 0.0 0.1 0.2 0.3
    nr 'Le squelette ne répond pas.{#s1221_s1_}'

    menu:
        '"C„était sympa de parler avec toi, Os. Prends soin de toi."{#s1221_s1_r35309}' if s1221Logic.r35309_condition():
            # a17 # r35309
            $ s1221Logic.r35309_action()
            jump morte_s370  # EXTERN

        '"C„était sympa de parler avec toi, Sac d“os. Prends soin de toi."{#s1221_s1_r35328}' if s1221Logic.r35328_condition():
            # a18 # r35328
            jump s1221_dispose

        '"C„était sympa de parler avec toi, Sac d“os. Prends soin de toi."{#s1221_s1_r35329}' if s1221Logic.r35329_condition():
            # a19 # r35329
            jump s1221_dispose


# s2 # say35334
label s1221_s2: # from 0.4
    nr 'Ce squelette ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#s1221_s2_}'

    menu:
        'Laisse le squelette tranquille.{#s1221_s2_r35335}' if s1221Logic.r35335_condition():
            # a20 # r35335
            $ s1221Logic.r35335_action()
            jump morte_s370  # EXTERN

        'Laisse le squelette tranquille.{#s1221_s2_r35336}' if s1221Logic.r35336_condition():
            # a21 # r35336
            jump s1221_dispose

        'Laisse le squelette tranquille.{#s1221_s2_r35337}' if s1221Logic.r35337_condition():
            # a22 # r35337
            jump s1221_dispose


# s3 # say35339
label s1221_s3: # from 0.5
    nr 'Quelqu„un a pris soin d“attacher les os de ce squelette avec des sangles de cuir, enroulées autour du corps de telle manière qu„elles ressemblent à des muscles et des tendons. Les sangles sont fixées à des boulons métalliques, enfoncés dans les articulations du squelette. Ce squelette semble avoir fait l“objet de nombreuses réparations. Nombre de ses os sont ébréchés, et ses innombrables fractures ont été réparées avec des colles puantes.{#s1221_s3_}'

    menu:
        'Essaie de déboulonner les articulations du squelette.{#s1221_s3_r35340}' if s1221Logic.r35340_condition():
            # a23 # r35340
            $ s1221Logic.r35340_action()
            jump morte_s376  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#s1221_s3_r35362}' if s1221Logic.r35362_condition():
            # a24 # r35362
            jump s1221_s4

        'Essaie de déboulonner les articulations du squelette.{#s1221_s3_r35363}' if s1221Logic.r35363_condition():
            # a25 # r35363
            jump s1221_s5

        'Essaie de déboulonner les articulations du squelette.{#s1221_s3_r35364}' if s1221Logic.r35364_condition():
            # a26 # r35364
            jump s1221_s6

        '"Je peux emprunter quelques sangles et boulons ?"{#s1221_s3_r35365}' if s1221Logic.r35365_condition():
            # a27 # r35365
            jump s1221_s4

        '"Je peux emprunter quelques sangles et boulons ?"{#s1221_s3_r35366}' if s1221Logic.r35366_condition():
            # a28 # r35366
            jump s1221_s5

        '"Je peux emprunter quelques sangles et boulons ?"{#s1221_s3_r35367}' if s1221Logic.r35367_condition():
            # a29 # r35367
            jump s1221_s6

        'Laisse le squelette tranquille.{#s1221_s3_r35368}' if s1221Logic.r35368_condition():
            # a30 # r35368
            $ s1221Logic.r35368_action()
            jump morte_s370  # EXTERN

        'Laisse le squelette tranquille.{#s1221_s3_r35369}' if s1221Logic.r35369_condition():
            # a31 # r35369
            jump s1221_dispose

        'Laisse le squelette tranquille.{#s1221_s3_r35370}' if s1221Logic.r35370_condition():
            # a32 # r35370
            jump s1221_dispose


# s4 # say35345
label s1221_s4: # from 0.7 0.10 3.1 3.4
    nr 'Tu tires sur les boulons, mais tu n„es pas assez fort pour les extraire. Ils sont enfoncés assez serrés.{#s1221_s4_}'

    menu:
        '"Peut-être qu„avec l“outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d„os."{#s1221_s4_r35346}' if s1221Logic.r35346_condition():
            # a33 # r35346
            $ s1221Logic.r35346_action()
            jump morte_s370  # EXTERN

        '"Peut-être qu„avec l“outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d„os."{#s1221_s4_r35347}' if s1221Logic.r35347_condition():
            # a34 # r35347
            jump s1221_dispose

        '"Peut-être qu„avec l“outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d„os."{#s1221_s4_r35348}' if s1221Logic.r35348_condition():
            # a35 # r35348
            jump s1221_dispose

        'Laisse le squelette tranquille.{#s1221_s4_r35349}' if s1221Logic.r35349_condition():
            # a36 # r35349
            $ s1221Logic.r35349_action()
            jump morte_s370  # EXTERN

        'Laisse le squelette tranquille.{#s1221_s4_r35350}' if s1221Logic.r35350_condition():
            # a37 # r35350
            jump s1221_dispose

        'Laisse le squelette tranquille.{#s1221_s4_r35351}' if s1221Logic.r35351_condition():
            # a38 # r35351
            jump s1221_dispose


# s5 # say35353
label s1221_s5: # from 0.8 0.11 3.2 3.5
    nr 'Tu tires sur les boulons de toutes tes forces, et après quelques instants, tu arraches le boulon des articulations. Le squelette s„effondre, certains de ses os remuant encore.{#s1221_s5_}'

    menu:
        '"Excuse-moi, Sac d„os…"{#s1221_s5_r35354}':
            # a39 # r35354
            $ s1221Logic.r35354_action()
            jump s1221_dispose


# s6 # say35356
label s1221_s6: # from 0.9 0.12 3.3 3.6
    nr 'Tu arraches les boulons des articulations du squelette avec ton pied-de-biche. Le squelette s„effondre, certains de ses os remuant encore.{#s1221_s6_}'

    menu:
        '"Excuse-moi, Sac d„os…"{#s1221_s6_r35357}':
            # a40 # r35357
            $ s1221Logic.r35357_action()
            jump s1221_dispose


# s7 # say35382
label s1221_s7: # - # IF ~  False()
    nr 'Ce squelette ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#s1221_s7_}'

    menu:
