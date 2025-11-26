init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm79_logic import Zm79Logic
    zm79Logic = Zm79Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM79.DLG
# ###


# s0 # say34942
label zm79_s0: # - # IF ~  True()
    nr 'Jest oczywiste, że mięsista głowa truposza została w którymś miejscu odrąbana i pośpiesznie przyszyta z powrotem. Różne rodzaje szwów - każdy w jakiś sposób postrzępiony - wydają się wskazywać na to, że głowa wciąż za bardzo odchyla się do tyłu i z powrotem jest przytwierdzana w trakcie pracy truposza. Na skroni ktoś wyciął numer "79". Jest otaczony kręgiem kłów. Takie same znaki znajdują się na jego czole.'

    menu:
        '"Więc jak… widziałeś, aby działo się tu coś interesującego?"':
            # a0 # r34943
            $ zm79Logic.r34943_action()
            jump zm79_s1

        'Przyjrzyj się dobrze kręgowi kłów.' if zm79Logic.r34946_condition():
            # a1 # r34946
            $ zm79Logic.r34946_action()
            jump zm79_s3

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm79Logic.r34947_condition():
            # a2 # r34947
            jump zm79_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm79Logic.r34948_condition():
            # a3 # r34948
            jump zm79_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r34951
            jump zm79_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r34952
            jump zm79_dispose


# s1 # say34944
label zm79_s1: # from 0.0 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r34945
            jump zm79_dispose


# s2 # say34949
label zm79_s2: # from 0.3 3.0 3.1
    nr 'Truposz nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a7 # r34950
            jump zm79_dispose


# s3 # say64278
label zm79_s3: # from 0.1
    nr 'Krąg kłów wygląda tak, jakby oznakowano nim czoło truposza dawno temu, przypuszczalnie przed jego śmiercią. Być może jest to jakiś religijny znak, lub rytuał przejścia. Zauważasz, że jedna z przerw pomiędzy wewnętrznymi „kłami“ ma niewielki trójkącik w środku, jakby miało to jakieś specjalne znaczenie.'

    menu:
        '"Hmmm. Interesujące… w jaki sposób znalazło się tu to znamię, trupku?"' if zm79Logic.r64279_condition():
            # a8 # r64279
            $ zm79Logic.j64536_s3_r64279_action()
            jump zm79_s2

        '"Hmmm… Zastanawiam się, czy ta przerwa pomiędzy kłami pasuje do wyżłobień na tym miedzianym kolczyku, który mam…"' if zm79Logic.r64280_condition():
            # a9 # r64280
            $ zm79Logic.j64537_s3_r64280_action()
            jump zm79_s2
