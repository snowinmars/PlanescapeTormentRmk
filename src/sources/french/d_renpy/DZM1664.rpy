init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1664_logic import Zm1664Logic
    zm1664Logic = Zm1664Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1664.DLG
# ###


# s0 # say47002
label zm1664_s0: # from 5.0 # IF ~  True()
    nr 'L„impressionnant cadavre se dresse dans un coin de la pièce, face au mur. L“homme était manifestement jeune et solidement charpenté. S„il faut en croire l“état de sa dépouille, il est mort récemment. Le numéro „1664“ a été récemment cousu sur son front. Ce zombi a l„air de faire office de bibliothécaire, à en juger par le nombre de livres qu“il porte.{#zm1664_s0_}'

    menu:
        'Examine les livres.{#zm1664_s0_r47003}' if zm1664Logic.r47003_condition():
            # a0 # r47003
            jump zm1664_s3

        'Examine les livres une nouvelle fois.{#zm1664_s0_r47004}' if zm1664Logic.r47004_condition():
            # a1 # r47004
            jump zm1664_s6

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm1664_s0_r47005}' if zm1664Logic.r47005_condition():
            # a2 # r47005
            jump zm1664_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm1664_s0_r47006}' if zm1664Logic.r47006_condition():
            # a3 # r47006
            jump zm1664_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm1664_s0_r47007}':
            # a4 # r47007
            jump zm1664_dispose

        'Laisse le cadavre tranquille.{#zm1664_s0_r47008}':
            # a5 # r47008
            jump zm1664_dispose


# s1 # say47009
label zm1664_s1: # from 0.2 6.0
    nr 'Le cadavre fixe le mur d„un regard vide.{#zm1664_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm1664_s1_r47010}':
            # a6 # r47010
            jump zm1664_dispose


# s2 # say47011
label zm1664_s2: # from 0.3
    nr 'Il ne bouge pas. Bien que mort depuis peu, il semble incapable de répondre à tes questions.{#zm1664_s2_}'

    menu:
        'Laisse le cadavre tranquille.{#zm1664_s2_r47012}':
            # a7 # r47012
            jump zm1664_dispose


# s3 # say47013
label zm1664_s3: # from 0.0
    nr 'Ces livres semblent être de vieux registres de la Morgue qui ne présentent pas le moindre intérêt. Toutefois, en les feuilletant, tu remarques une feuille volante coincée entre deux d„entre eux… et tu as le sentiment que quelqu“un l„a glissée là pour la cacher.{#zm1664_s3_}'

    menu:
        'Prends la page.{#zm1664_s3_r47014}':
            # a8 # r47014
            $ zm1664Logic.r47014_action()
            jump zm1664_s4


# s4 # say47015
label zm1664_s4: # from 3.0
    nr 'Cette page ne semble pas avoir été arrachée à l„un des registres, mais plutôt à un carnet. La déchirure est nette, ce qui indique vraisemblablement qu“elle a été sciemment découpée, par exemple à l„aide d“un couteau.{#zm1664_s4_}'

    menu:
        'Lis-la.{#zm1664_s4_r47016}':
            # a9 # r47016
            jump zm1664_s5


# s5 # say47017
label zm1664_s5: # from 4.0
    nr 'Tu prends le temps de lire la page… il s„agit d“une liste de corps apportés à la Morgue et conservés à la Réception. Les diverses entrées concernent des arrivées plutôt récentes.  ^NREMARQUE : <READSTUFF>^-{#zm1664_s5_}'

    menu:
        'Examine une nouvelle fois le zombi.{#zm1664_s5_r47018}':
            # a10 # r47018
            jump zm1664_s0

        'Prends la page et va-t„en.{#zm1664_s5_r47019}':
            # a11 # r47019
            jump zm1664_dispose


# s6 # say47021
label zm1664_s6: # from 0.1
    nr 'Ces livres semblent être de vieux registres de la Morgue, ils ne présentent pas le moindre intérêt. Tu parcours à nouveau les textes, en vain.{#zm1664_s6_}'

    menu:
        '"Alors, dis-moi, comment es-tu devenu bibliothécaire ? Tous les autres boulots étaient déjà pris ?"{#zm1664_s6_r47022}':
            # a12 # r47022
            jump zm1664_s1

        'Laisse le zombi tranquille.{#zm1664_s6_r47023}':
            # a13 # r47023
            jump zm1664_dispose
