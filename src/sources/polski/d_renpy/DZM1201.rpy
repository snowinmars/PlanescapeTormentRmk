init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1201_logic import Zm1201Logic
    zm1201Logic = Zm1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1201.DLG
# ###


# s0 # say34953
label zm1201_s0: # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    nr 'Na czole tego truposza ktoś atramentem napisał numer "1201". Atrament rozlał się na oczy, policzki i szczękę trupa. Kiedy tak wzrokiem śledzisz ślady atramentu na jego twarzy, zauważasz, że zatrzymał się on na szwie zamykającym wargi trupa i zahaczył o coś, co wygląda na róg listu z wiadomością.'

    menu:
        'Spróbuj wyciągnąć wiadomość.' if zm1201Logic.r34954_condition():
            # a0 # r34954
            jump zm1201_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm1201Logic.r34957_condition():
            # a1 # r34957
            jump zm1201_s3

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm1201Logic.r34958_condition():
            # a2 # r34958
            jump zm1201_s4

        '"Miło było z tobą pogadać. Żegnaj."':
            # a3 # r34959
            jump zm1201_dispose

        'Zostaw truposza w spokoju.':
            # a4 # r34962
            jump zm1201_dispose


# s1 # say34955
label zm1201_s1: # from 0.0
    nr 'List zlał się z posoką w ustach zombiaka. Gdybyś spróbował go wyciągnąć poprzez ścieg krzyżykowy na ustach truposza, papier podarłby się na strzępy. Próba nacięcia trupa, w celu dostania się do wiadomości zniszczyłaby ją - musisz więc znaleźć delikatny sposób na usunięcie szwów, zanim ją wyjmiesz.'

    menu:
        'Posłuż się skalpelem, aby przeciąć szwy.' if zm1201Logic.r34956_condition():
            # a5 # r34956
            $ zm1201Logic.r34956_action()
            jump zm1201_s2

        '"Hmmm. Być może znalazłoby się tu coś, co mogłoby przeciąć te szwy…"' if zm1201Logic.r45122_condition():
            # a6 # r45122
            jump zm1201_dispose


# s2 # say34960
label zm1201_s2: # from 1.0
    nr 'Szybkim ruchem rozcinasz nić zszywającą usta trupa. Jego żuchwa zwisa bezwładnie. Ostrożnie wyciągasz z jego ust notatkę… Pomimo stanu papieru jej treść nadal jest czytelna.  ^NNOTE: <READSTUFF>^-'

    menu:
        'Ponownie zbadaj truposza.':
            # a7 # r34961
            jump zm1201_s5

        'Zostaw truposza w spokoju.':
            # a8 # r45123
            jump zm1201_dispose


# s3 # say45124
label zm1201_s3: # from 0.1 5.0 5.1 5.2
    nr 'Mlecznobiałe oczy truposza wpatrują się w ciebie bezmyślnie.'

    menu:
        'Zostaw truposza w spokoju.':
            # a9 # r45125
            jump zm1201_dispose


# s4 # say45126
label zm1201_s4: # from 0.2 5.3
    nr 'Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a10 # r45127
            jump zm1201_dispose


# s5 # say45128
label zm1201_s5: # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    nr 'Na czole tego trupa ktoś atramentem napisał numer "1201". Atrament rozlał się na oczy, policzki i szczękę trupa, przez co sam trup wygląda tak, jakby płakał. Jego szczęka zwisa otwarta, a strużka posoki wolno sączy się z kącika ust.'

    menu:
        '"Przepraszam za przecięcie tych szwów… ale po prostu musiałem zobaczyć, co miałeś w ustach."' if zm1201Logic.r45129_condition():
            # a11 # r45129
            $ zm1201Logic.r45129_action()
            jump zm1201_s3

        '"Przepraszam za przecięcie tych szwów… ale po prostu musiałem zobaczyć, co miałeś w ustach."' if zm1201Logic.r45130_condition():
            # a12 # r45130
            jump zm1201_s3

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm1201Logic.r45131_condition():
            # a13 # r45131
            jump zm1201_s3

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm1201Logic.r45132_condition():
            # a14 # r45132
            jump zm1201_s4

        '"Miło było z tobą pogadać. Żegnaj."':
            # a15 # r45133
            jump zm1201_dispose

        'Zostaw truposza w spokoju.':
            # a16 # r45134
            jump zm1201_dispose
