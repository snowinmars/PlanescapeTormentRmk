init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0: # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    nr 'Les yeux et les lèvres de ce cadavre branlant ont été cousus, et le numéro „732“ a été gravé sur son front. Le travail de couture qui ferme ses cavités oculaires a l„air très ancien… tu te demandes si les yeux du cadavre ont été cousus avant ou après sa mort.'

    menu:
        '"Désolé de t„avoir pris ce livre… il m“a semblé trop intéressant pour le laisser."' if zm732Logic.r6533_condition():
            # a0 # r6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        '"Désolé de t„avoir pris ce livre… il m“a semblé trop intéressant pour le laisser."' if zm732Logic.r6532_condition():
            # a1 # r6532
            jump zm732_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm732Logic.r6534_condition():
            # a2 # r6534
            jump zm732_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm732Logic.r6535_condition():
            # a3 # r6535
            jump zm732_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a4 # r6536
            jump zm732_dispose

        'Laisse le cadavre tranquille.':
            # a5 # r6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        'Laisse le cadavre tranquille.':
            # a6 # r6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
        'Laisse le cadavre tranquille.':
            # a7 # r6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3: # - # IF ~  HasItem("TomeBA","ZM732")
    nr 'On a cousu les yeux et la bouche de ce cadavre chancelant et on lui a gravé sur le front le numéro „732“. Les coutures des yeux semblent très vieilles… tu te demandes si elles ont été faites avant ou après sa mort. Tu remarques qu„il tient dans ses mains un énorme livre, comme s“il l„emmenait quelque part.'

    menu:
        'Prends le livre de ses mains… avec précaution.':
            # a8 # r64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        'Laisse le cadavre tranquille.':
            # a9 # r64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4: # from 3.0
    nr 'Avec précaution, tu prends le livre des mains du zombi - il semble ne rien remarquer. L„ouvrage a l“air d„être un livre de sorcellerie - il contient des diagrammes et des symboles détaillant divers aspects de l“art de la nécromancie. Le livre est très lourd ; aussi maladroit que peut être ce zombi, il est très fort.  ^NREMARQUE : <READSTUFF>^-'

    menu:
        'Réexamine le cadavre.':
            # a10 # r64274
            jump zm732_s0

        'Laisse le cadavre tranquille.':
            # a11 # r64275
            jump zm732_dispose
