init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0: # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    nr 'Les yeux et les lèvres de ce cadavre branlant ont été cousus, et le numéro „732“ a été gravé sur son front. Le travail de couture qui ferme ses cavités oculaires a l„air très ancien… tu te demandes si les yeux du cadavre ont été cousus avant ou après sa mort.{#zm732_s0_}'

    menu:
        '"Désolé de t„avoir pris ce livre… il m“a semblé trop intéressant pour le laisser."{#zm732_s0_r6533}' if zm732Logic.r6533_condition():
            # a0 # r6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        '"Désolé de t„avoir pris ce livre… il m“a semblé trop intéressant pour le laisser."{#zm732_s0_r6532}' if zm732Logic.r6532_condition():
            # a1 # r6532
            jump zm732_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm732_s0_r6534}' if zm732Logic.r6534_condition():
            # a2 # r6534
            jump zm732_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm732_s0_r6535}' if zm732Logic.r6535_condition():
            # a3 # r6535
            jump zm732_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm732_s0_r6536}':
            # a4 # r6536
            jump zm732_dispose

        'Laisse le cadavre tranquille.{#zm732_s0_r6537}':
            # a5 # r6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.{#zm732_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm732_s1_r6538}':
            # a6 # r6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zm732_s2_}'

    menu:
        'Laisse le cadavre tranquille.{#zm732_s2_r6539}':
            # a7 # r6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3: # - # IF ~  HasItem("TomeBA","ZM732")
    nr 'On a cousu les yeux et la bouche de ce cadavre chancelant et on lui a gravé sur le front le numéro „732“. Les coutures des yeux semblent très vieilles… tu te demandes si elles ont été faites avant ou après sa mort. Tu remarques qu„il tient dans ses mains un énorme livre, comme s“il l„emmenait quelque part.{#zm732_s3_}'

    menu:
        'Prends le livre de ses mains… avec précaution.{#zm732_s3_r64271}':
            # a8 # r64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        'Laisse le cadavre tranquille.{#zm732_s3_r64272}':
            # a9 # r64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4: # from 3.0
    nr 'Avec précaution, tu prends le livre des mains du zombi - il semble ne rien remarquer. L„ouvrage a l“air d„être un livre de sorcellerie - il contient des diagrammes et des symboles détaillant divers aspects de l“art de la nécromancie. Le livre est très lourd ; aussi maladroit que peut être ce zombi, il est très fort.  ^NREMARQUE : <READSTUFF>^-{#zm732_s4_}'

    menu:
        'Réexamine le cadavre.{#zm732_s4_r64274}':
            # a10 # r64274
            jump zm732_s0

        'Laisse le cadavre tranquille.{#zm732_s4_r64275}':
            # a11 # r64275
            jump zm732_dispose
