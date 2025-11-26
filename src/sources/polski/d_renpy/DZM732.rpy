init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0: # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    nr 'Ten truposz na trzęsących się nogach ma zaszyte oczy i usta, a na czole wyryty numer "732". Szwy na jego oczodołach wyglądają na bardzo stare… zastanawiasz się, czy jego oczy zaszyto przed, czy może po jego śmierci.'

    menu:
        '"Przepraszam, że zabrałem ci tę książkę… ale wyglądała zbyt interesująco, aby nie zwrócić na nią uwagi."' if zm732Logic.r6533_condition():
            # a0 # r6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        '"Przepraszam, że zabrałem ci tę książkę… ale wyglądała zbyt interesująco, aby nie zwrócić na nią uwagi."' if zm732Logic.r6532_condition():
            # a1 # r6532
            jump zm732_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm732Logic.r6534_condition():
            # a2 # r6534
            jump zm732_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm732Logic.r6535_condition():
            # a3 # r6535
            jump zm732_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r6536
            jump zm732_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2: # from 0.3
    nr 'Truposz nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a7 # r6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3: # - # IF ~  HasItem("TomeBA","ZM732")
    nr 'Ten truposz na trzęsących się nogach ma zaszyte oczy i usta, a na czole wyryty numer "732". Szwy na jego oczodołach wyglądają na bardzo stare… zastanawiasz się, czy jego oczy zaszyto przed, czy może po jego śmierci. Zauważasz, że ma w rękach olbrzymie tomisko. Czyżby miał je gdzieś zanieść?'

    menu:
        'Weź tomisko z jego rąk… ostrożnie.':
            # a8 # r64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        'Zostaw truposza w spokoju.':
            # a9 # r64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4: # from 3.0
    nr 'Ostrożnie wyjmujesz księgę z dłoni trupa. Nie reaguje. W księdze spisano uroki i symbole ochronne – wypełniają ją diagramy i wykresy przedstawiające różnego rodzaju zaklęcia magii nekromanckiej. Opasłe tomiszcze jest nadzwyczaj ciężkie; zombie wydaje się nieporadny, ale siły mu nie brakuje.  ^NNOTE: <READSTUFF>^-'

    menu:
        'Ponownie obejrzyj truposza.':
            # a10 # r64274
            jump zm732_s0

        'Zostaw truposza w spokoju.':
            # a11 # r64275
            jump zm732_dispose
