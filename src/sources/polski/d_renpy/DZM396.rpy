init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm396_logic import Zm396Logic
    zm396Logic = Zm396Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM396.DLG
# ###


# s0 # say34931
label zm396_s0: # - # IF ~  HasItem("Bandage","ZM396")
    nr 'Ten trup włóczy się od płyty do płyty, bandażując leżące tam ciała. Na lewej skroni ma wyryty numer "396", a jego usta są zaszyte. Dostrzegasz, że truposz ma w ręku zwój bandaży… a bandaże wyglądają na zdatne do użycia.'

    menu:
        '"Czy mogę pożyczyć te bandaże?"' if zm396Logic.r34932_condition():
            # a0 # r34932
            $ zm396Logic.r34932_action()
            jump zm396_s1

        '"Czy mogę pożyczyć te bandaże?"' if zm396Logic.r34935_condition():
            # a1 # r34935
            jump zm396_s1

        'Spróbuj wziąć bandaże od zombiaka.':
            # a2 # r34936
            $ zm396Logic.r34936_action()
            jump zm396_s3

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm396Logic.r34937_condition():
            # a3 # r34937
            jump zm396_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm396Logic.r34940_condition():
            # a4 # r34940
            jump zm396_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a5 # r34941
            jump zm396_dispose

        'Zostaw truposza w spokoju.':
            # a6 # r45106
            jump zm396_dispose


# s1 # say34933
label zm396_s1: # from 0.0 0.1 0.3 4.0 4.1 4.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Spróbuj wziąć bandaże od zombiaka.' if zm396Logic.r34934_condition():
            # a7 # r34934
            $ zm396Logic.r34934_action()
            jump zm396_s3

        'Zostaw truposza w spokoju.':
            # a8 # r45107
            jump zm396_dispose


# s2 # say34938
label zm396_s2: # from 0.4 4.3
    nr 'Trup nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a9 # r34939
            jump zm396_dispose


# s3 # say45108
label zm396_s3: # from 0.2 1.0
    nr 'Zręcznym ruchem ręki wyjmujesz zwój bandaży z dłoni truposza. Nie wydaje się, aby cokolwiek zauważył; dalej łazi i bandażuje zwłoki.'

    menu:
        'Ponownie zbadaj truposza.':
            # a10 # r45109
            jump zm396_s4

        'Zostaw truposza w spokoju.':
            # a11 # r45110
            jump zm396_dispose


# s4 # say45111
label zm396_s4: # from 3.0 # IF ~  !HasItem("Bandage","ZM396")
    nr 'Ten trup włóczy się od płyty do płyty, bandażując ciała tam leżące. W dalszym ciągu wykonuje swoje obowiązki, nawet bez bandaży. Na lewej skroni ma wyryty numer "396", a jego usta są zaszyte.'

    menu:
        '"Przepraszam, że wziąłem od ciebie te bandaże. Po prostu mnie się bardziej przydadzą niż tym zwłokom."' if zm396Logic.r45112_condition():
            # a12 # r45112
            $ zm396Logic.r45112_action()
            jump zm396_s1

        '"Przepraszam, że wziąłem od ciebie te bandaże. Po prostu mnie się bardziej przydadzą niż tym zwłokom."' if zm396Logic.r45113_condition():
            # a13 # r45113
            jump zm396_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm396Logic.r45114_condition():
            # a14 # r45114
            jump zm396_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm396Logic.r45115_condition():
            # a15 # r45115
            jump zm396_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a16 # r45116
            jump zm396_dispose

        'Zostaw truposza w spokoju.':
            # a17 # r45117
            jump zm396_dispose
