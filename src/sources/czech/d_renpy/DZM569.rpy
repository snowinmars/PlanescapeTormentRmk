init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm569_logic import Zm569Logic
    zm569Logic = Zm569Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM569.DLG
# ###


# s0 # say24575
label zm569_s0: # - # IF ~  True()
    nr 'Tato belhající se mrtvola vypadá, že je mrtvá už několik let. Kůže kolem čela se už odloupala, čímž se odhalila její křídově bílá lebka. Někdo vyryl na odhalenou kost číslo "569".'

    menu:
        '"Hledám klíč… je možné, abys ho měl ty?"' if zm569Logic.r24576_condition():
            # a0 # r24576
            jump morte1_s31  # EXTERN

        '"Hledám klíč… je možné, abys ho měl ty?"' if zm569Logic.r24579_condition():
            # a1 # r24579
            jump zm569_s1

        '"Tak… viděl jsi něco zajímavého?"' if zm569Logic.r24580_condition():
            # a2 # r24580
            jump zm569_s1

        '"Vím, že nejsi zombie, víš. Nikoho neoklameš."' if zm569Logic.r24581_condition():
            # a3 # r24581
            jump zm569_s1

        'Použij na mrtvolu Kosti vyprávějte.' if zm569Logic.r24584_condition():
            # a4 # r24584
            jump zm569_s2

        'Prohledej mrtvolu, koukni se jestli nemá klíč.' if zm569Logic.r24585_condition():
            # a5 # r24585
            jump zm569_s3

        '"Bylo skvělý si s tebou poklábosit. Sbohem."':
            # a6 # r42290
            jump zm569_dispose

        'Nechej mrtvolu odpočívat v pokoji.':
            # a7 # r42291
            jump zm569_dispose


# s1 # say24577
label zm569_s1: # from 0.1 0.2 0.3 3.1
    nr 'Mrtvola na tebe tiše zírá..'

    menu:
        '"No, nevadí. Sbohem."':
            # a8 # r24578
            jump zm569_dispose

        'Nechej mrtvolu odpočívat v pokoji.':
            # a9 # r42292
            jump zm569_dispose


# s2 # say24582
label zm569_s2: # from 0.4
    nr 'Mrtvola se nehýbe. Vypadá to, že už je natolik hotová, že ti neodpoví na nějakou tvou otázku.'

    menu:
        'Nechej mrtvolu na pokoji.':
            # a10 # r24583
            jump zm569_dispose


# s3 # say42293
label zm569_s3: # from 0.5
    nr 'Nezdá se, že by tenhle mrtvák měl u sebe nějaký klíč… a stejně i kdyby měl, těžko by ho mohl používat. Má úplně zpřerážené prsty, jako by je někdo přetáhl kladivem. Nutno podotknout, že jeho levé rameno je silně zafačováno… obvazy by se daly použít, ale to by je napřed mrtvák musel chtít vydat.'

    menu:
        '"Poslyš, nemáš náhodou - nebo spíš některý z tvých přátel mrtváků - klíč, kterým by se dalo odtud dostat?"' if zm569Logic.r42294_condition():
            # a11 # r42294
            jump morte1_s31  # EXTERN

        '"Poslyš, nemáš náhodou - nebo spíš některý z tvých přátel mrtváků - klíč, kterým by se dalo odtud dostat?"' if zm569Logic.r42295_condition():
            # a12 # r42295
            jump zm569_s1

        '"Skvěle jsem se si s tebou popovídal. Sbohem."':
            # a13 # r42296
            jump zm569_dispose

        'Nechat mrtváka napokoji.':
            # a14 # r42297
            jump zm569_dispose
