init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0: # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    nr 'Ten truposz na trzęsących się nogach ma zaszyte oczy i usta, a na czole wyryty numer "732". Szwy na jego oczodołach wyglądają na bardzo stare… zastanawiasz się, czy jego oczy zaszyto przed, czy może po jego śmierci.{#zm732_s0_}'

    menu:
        '"Przepraszam, że zabrałem ci tę książkę… ale wyglądała zbyt interesująco, aby nie zwrócić na nią uwagi."{#zm732_s0_r6533}' if zm732Logic.r6533_condition():
            # a0 # r6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        '"Przepraszam, że zabrałem ci tę książkę… ale wyglądała zbyt interesująco, aby nie zwrócić na nią uwagi."{#zm732_s0_r6532}' if zm732Logic.r6532_condition():
            # a1 # r6532
            jump zm732_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm732_s0_r6534}' if zm732Logic.r6534_condition():
            # a2 # r6534
            jump zm732_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm732_s0_r6535}' if zm732Logic.r6535_condition():
            # a3 # r6535
            jump zm732_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zm732_s0_r6536}':
            # a4 # r6536
            jump zm732_dispose

        'Zostaw truposza w spokoju.{#zm732_s0_r6537}':
            # a5 # r6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.{#zm732_s1_}'

    menu:
        'Zostaw truposza w spokoju.{#zm732_s1_r6538}':
            # a6 # r6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2: # from 0.3
    nr 'Truposz nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zm732_s2_}'

    menu:
        'Zostaw truposza w spokoju.{#zm732_s2_r6539}':
            # a7 # r6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3: # - # IF ~  HasItem("TomeBA","ZM732")
    nr 'Ten truposz na trzęsących się nogach ma zaszyte oczy i usta, a na czole wyryty numer "732". Szwy na jego oczodołach wyglądają na bardzo stare… zastanawiasz się, czy jego oczy zaszyto przed, czy może po jego śmierci. Zauważasz, że ma w rękach olbrzymie tomisko. Czyżby miał je gdzieś zanieść?{#zm732_s3_}'

    menu:
        'Weź tomisko z jego rąk… ostrożnie.{#zm732_s3_r64271}':
            # a8 # r64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        'Zostaw truposza w spokoju.{#zm732_s3_r64272}':
            # a9 # r64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4: # from 3.0
    nr 'Ostrożnie wyjmujesz księgę z dłoni trupa. Nie reaguje. W księdze spisano uroki i symbole ochronne – wypełniają ją diagramy i wykresy przedstawiające różnego rodzaju zaklęcia magii nekromanckiej. Opasłe tomiszcze jest nadzwyczaj ciężkie; zombie wydaje się nieporadny, ale siły mu nie brakuje.  ^NNOTE: <READSTUFF>^-{#zm732_s4_}'

    menu:
        'Ponownie obejrzyj truposza.{#zm732_s4_r64274}':
            # a10 # r64274
            jump zm732_s0

        'Zostaw truposza w spokoju.{#zm732_s4_r64275}':
            # a11 # r64275
            jump zm732_dispose
