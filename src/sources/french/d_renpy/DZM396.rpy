init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm396_logic import Zm396Logic
    zm396Logic = Zm396Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM396.DLG
# ###


# s0 # say34931
label zm396_s0: # - # IF ~  HasItem("Bandage","ZM396")
    nr 'Ce cadavre va d„une dalle à l“autre en traînant les pieds ; il panse les cadavres étendus là. Le numéro „396“ est gravé sur sa tempe gauche et ses lèvres sont cousues ensemble. Tu vois qu„il porte un rouleau de pansements dans la main… qui te semblent utilisables.'

    menu:
        '"Ça te gêne pas si j„emprunte ces pansements ?"' if zm396Logic.r34932_condition():
            # a0 # r34932
            $ zm396Logic.r34932_action()
            jump zm396_s1

        '"Ça te gêne pas si j„emprunte ces pansements ?"' if zm396Logic.r34935_condition():
            # a1 # r34935
            jump zm396_s1

        'Essaie de prendre les pansements au zombi.':
            # a2 # r34936
            $ zm396Logic.r34936_action()
            jump zm396_s3

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm396Logic.r34937_condition():
            # a3 # r34937
            jump zm396_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm396Logic.r34940_condition():
            # a4 # r34940
            jump zm396_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a5 # r34941
            jump zm396_dispose

        'Laisse le cadavre tranquille.':
            # a6 # r45106
            jump zm396_dispose


# s1 # say34933
label zm396_s1: # from 0.0 0.1 0.3 4.0 4.1 4.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        'Essaie de prendre les pansements au zombi.' if zm396Logic.r34934_condition():
            # a7 # r34934
            $ zm396Logic.r34934_action()
            jump zm396_s3

        'Laisse le cadavre tranquille.':
            # a8 # r45107
            jump zm396_dispose


# s2 # say34938
label zm396_s2: # from 0.4 4.3
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.'

    menu:
        'Laisse le cadavre tranquille.':
            # a9 # r34939
            jump zm396_dispose


# s3 # say45108
label zm396_s3: # from 0.2 1.0
    nr 'Tu dégages ta main en prenant les bandages que tenait le cadavre. Ce dernier ne s„en aperçoit même pas. Il continue de panser les autres corps comme si de rien n“était.'

    menu:
        'Réexamine le cadavre.':
            # a10 # r45109
            jump zm396_s4

        'Laisse le cadavre tranquille.':
            # a11 # r45110
            jump zm396_dispose


# s4 # say45111
label zm396_s4: # from 3.0 # IF ~  !HasItem("Bandage","ZM396")
    nr 'Le mort-vivant passe d„une table à l“autre et panse les cadavres allongés. Ou du moins, il effectue les gestes nécessaires, car il n„a plus le moindre bandage en main. Le numéro “396„ est gravé sur sa tempe gauche et ses lèvres ont été cousues.'

    menu:
        '"Désolé de t„avoir pris ces bandages, mais j“en ai davantage besoin que ces cadavres."' if zm396Logic.r45112_condition():
            # a12 # r45112
            $ zm396Logic.r45112_action()
            jump zm396_s1

        '"Désolé de t„avoir pris ces bandages, mais j“en ai davantage besoin que ces cadavres."' if zm396Logic.r45113_condition():
            # a13 # r45113
            jump zm396_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm396Logic.r45114_condition():
            # a14 # r45114
            jump zm396_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm396Logic.r45115_condition():
            # a15 # r45115
            jump zm396_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a16 # r45116
            jump zm396_dispose

        'Laisse le cadavre tranquille.':
            # a17 # r45117
            jump zm396_dispose
