init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1201_logic import Zm1201Logic
    zm1201Logic = Zm1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1201.DLG
# ###


# s0 # say34953
label zm1201_s0: # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    nr 'Le numéro „1201“ est inscrit à l„encre sur le front du cadavre. L“encre a coulé sur les yeux, les joues et la mâchoire. En suivant la trace laissée par ces „larmes“ sur le visage, tu remarques que l„encre a coulé dans la couture qui ferme les lèvres, prenant la forme de ce qui ressemble à une note coincée dans la bouche du cadavre.'

    menu:
        'Essaie de sortir la note.' if zm1201Logic.r34954_condition():
            # a0 # r34954
            jump zm1201_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm1201Logic.r34957_condition():
            # a1 # r34957
            jump zm1201_s3

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm1201Logic.r34958_condition():
            # a2 # r34958
            jump zm1201_s4

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a3 # r34959
            jump zm1201_dispose

        'Laisse le cadavre tranquille.':
            # a4 # r34962
            jump zm1201_dispose


# s1 # say34955
label zm1201_s1: # from 0.0
    nr 'La note s„est mélangée à l“encre dans la bouche du zombi. Si tu essayais de tirer sur le papier à travers les coutures, tu risquerais de le déchirer. Tailler le cadavre en pièces risque aussi de détruire la note… Il va falloir trouver un moyen d„enlever délicatement les points de couture avant de tirer sur la note.'

    menu:
        'Sers-toi du scalpel pour couper les coutures.' if zm1201Logic.r34956_condition():
            # a5 # r34956
            $ zm1201Logic.r34956_action()
            jump zm1201_s2

        '"Hmmm. Il y a peut-être quelque chose qui nous permettra d„ôter ces points de suture, par ici…"' if zm1201Logic.r45122_condition():
            # a6 # r45122
            jump zm1201_dispose


# s2 # say34960
label zm1201_s2: # from 1.0
    nr 'Tu découpes habilement les coutures qui ferment la bouche du cadavre, et la mâchoire s„ouvre béante. Délicatement, tu retires la note de la bouche… Malgré le mauvais état du papier, l“écriture semble lisible.  ^NREMARQUE : <READSTUFF>^-'

    menu:
        'Réexamine le cadavre.':
            # a7 # r34961
            jump zm1201_s5

        'Laisse le cadavre tranquille.':
            # a8 # r45123
            jump zm1201_dispose


# s3 # say45124
label zm1201_s3: # from 0.1 5.0 5.1 5.2
    nr 'Les yeux blancs du cadavre te regardent sans te voir.'

    menu:
        'Laisse le cadavre tranquille.':
            # a9 # r45125
            jump zm1201_dispose


# s4 # say45126
label zm1201_s4: # from 0.2 5.3
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.'

    menu:
        'Laisse le cadavre tranquille.':
            # a10 # r45127
            jump zm1201_dispose


# s5 # say45128
label zm1201_s5: # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    nr 'Le numéro „1201“ a été inscrit à l„encre sur le front de ce cadavre. L“encre a coulé sur ses yeux, ses joues et sa mâchoire, à tel point que l„on croirait qu“il a pleuré. Sa bouche est grande ouverte et un filet de substance indéfinissable coule à la commissure de ses lèvres.'

    menu:
        '"Désolé d„avoir enlevé ces points de suture, mais il fallait que je voie ce que tu avais dans la bouche."' if zm1201Logic.r45129_condition():
            # a11 # r45129
            $ zm1201Logic.r45129_action()
            jump zm1201_s3

        '"Désolé d„avoir enlevé ces points de suture, mais il fallait que je voie ce que tu avais dans la bouche."' if zm1201Logic.r45130_condition():
            # a12 # r45130
            jump zm1201_s3

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm1201Logic.r45131_condition():
            # a13 # r45131
            jump zm1201_s3

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm1201Logic.r45132_condition():
            # a14 # r45132
            jump zm1201_s4

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a15 # r45133
            jump zm1201_dispose

        'Laisse le cadavre tranquille.':
            # a16 # r45134
            jump zm1201_dispose
