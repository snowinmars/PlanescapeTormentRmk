init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm396_logic import Zm396Logic
    zm396Logic = Zm396Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM396.DLG
# ###


# s0 # say34931
label zm396_s0: # - # IF ~  HasItem("Bandage","ZM396")
    nr 'Mrtvola přechází od desky k desce a obvazuje ležící těla. Do levého spánku má vyryto číslo "369", rty má pevně sešité. Všiml sis, že nese v ruce obvazy… vypadají použitelně.'

    menu:
        '"Můžu si půjčit ty obvazy?"' if zm396Logic.r34932_condition():
            # a0 # r34932
            $ zm396Logic.r34932_action()
            jump zm396_s1

        '"Můžu si půjčit ty obvazy?"' if zm396Logic.r34935_condition():
            # a1 # r34935
            jump zm396_s1

        'Zkus ze zombie odmotat obvazy.':
            # a2 # r34936
            $ zm396Logic.r34936_action()
            jump zm396_s3

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."' if zm396Logic.r34937_condition():
            # a3 # r34937
            jump zm396_s1

        'Použij na mrtvolu Kosti-vyprávějte.' if zm396Logic.r34940_condition():
            # a4 # r34940
            jump zm396_s2

        '"Rád jsem si s tebou popovídal. Sbohem."':
            # a5 # r34941
            jump zm396_dispose

        'Nechej mrtvolu na pokoji.':
            # a6 # r45106
            jump zm396_dispose


# s1 # say34933
label zm396_s1: # from 0.0 0.1 0.3 4.0 4.1 4.2
    nr 'Mrtvola na tebe dál zírá.'

    menu:
        'Zkus vytrhnout zombie z rukou obvazy.' if zm396Logic.r34934_condition():
            # a7 # r34934
            $ zm396Logic.r34934_action()
            jump zm396_s3

        'Nechej mrtvolu v klidu odpočívat.':
            # a8 # r45107
            jump zm396_dispose


# s2 # say34938
label zm396_s2: # from 0.4 4.3
    nr 'Mrtvola se nehýbe. Asi už ti neodpoví na žádnou otázku.'

    menu:
        'Nechej mrtvolu být.':
            # a9 # r34939
            jump zm396_dispose


# s3 # say45108
label zm396_s3: # from 0.2 1.0
    nr 'Nenápadně jsi natáhl ruku a vzal balíček obvazů nebožtíkovi z ruky. Mrtvola to zřejmě vůbec nepostřehla. Pořád dělá pohyby, jako by obvazovala.'

    menu:
        'Znovu prozkoumej mrtvolu.':
            # a10 # r45109
            jump zm396_s4

        'Nechej mrtvolu v klidu odpočívat.':
            # a11 # r45110
            jump zm396_dispose


# s4 # say45111
label zm396_s4: # from 3.0 # IF ~  !HasItem("Bandage","ZM396")
    nr 'Tahle zombie se přesouvá od stolu ke stolu a obvazuje ležící mrtvoly. Pořád plní svou povinnost, i když už nemá obvazy. Do levého spánku má vyryto číslo "369", rty má sešité dohromady.'

    menu:
        '"Omlouvám se, že jsem si vzal ty obvazy, ale já je potřebuju víc než ty mrtvoly tady kolem."' if zm396Logic.r45112_condition():
            # a12 # r45112
            $ zm396Logic.r45112_action()
            jump zm396_s1

        '"Omlouvám se, že jsem si vzal ty obvazy, ale já je potřebuju víc než ty mrtvoly tady kolem."' if zm396Logic.r45113_condition():
            # a13 # r45113
            jump zm396_s1

        '"Hele, já vím, že nejsi zombie. Nikoho neoblbneš."' if zm396Logic.r45114_condition():
            # a14 # r45114
            jump zm396_s1

        'Použij na mrtvolu schopnost Kosti-vyprávějte.' if zm396Logic.r45115_condition():
            # a15 # r45115
            jump zm396_s2

        '"Skvěle jsme si pokecali. Sbohem."':
            # a16 # r45116
            jump zm396_dispose

        'Nechej mrtvolu v klidu odpočívat.':
            # a17 # r45117
            jump zm396_dispose
