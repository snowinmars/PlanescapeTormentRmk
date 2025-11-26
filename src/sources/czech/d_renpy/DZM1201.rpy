init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1201_logic import Zm1201Logic
    zm1201Logic = Zm1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1201.DLG
# ###


# s0 # say34953
label zm1201_s0: # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    nr 'Na čele této mrtvoly stojí napsáno číslo "1021" inkoustem, který jí stekl do očí, na tváře a čelist. Když sleduješ inkoustové skvrny na tváři mrtvoly, všiml sis, že inkoust stekl do sešitých úst a zastavil se na něčem, co vypadá jako růžek papírku, nacpaného v ústech mrtvoly.'

    menu:
        'Zkus papírek vytáhnout.' if zm1201Logic.r34954_condition():
            # a0 # r34954
            jump zm1201_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."' if zm1201Logic.r34957_condition():
            # a1 # r34957
            jump zm1201_s3

        'Použij na mrtvolu Kosti-vyprávějte.' if zm1201Logic.r34958_condition():
            # a2 # r34958
            jump zm1201_s4

        '"Rád jsem si s tebou popovídal. Sbohem."':
            # a3 # r34959
            jump zm1201_dispose

        'Nechej mrtvolu být.':
            # a4 # r34962
            jump zm1201_dispose


# s1 # say34955
label zm1201_s1: # from 0.0
    nr 'Papírek je nacpaný v ústech zombie. Pokud by ses pokusil vytáhnout papír skrze mezeru mezi stehy, roztrhal bys jej. Rozsekáním mrtvoly taky nic nevyřešíš, asi bys papírek zničil. Potřebuješ najít nějaký jemný způsob, jak odstranit stehy, než budeš moci papírek vytáhnout.'

    menu:
        'Prořezej stehy skalpelem.' if zm1201Logic.r34956_condition():
            # a5 # r34956
            $ zm1201Logic.r34956_action()
            jump zm1201_s2

        '"Hmmm. Možná by se daly ty stehy přeříznout…"' if zm1201Logic.r45122_condition():
            # a6 # r45122
            jump zm1201_dispose


# s2 # say34960
label zm1201_s2: # from 1.0
    nr 'ŠIkovně jsi rozpáral stehy, sešívající ústa mrtvoly, čelist se rozevřela. Opatrně si vytáhl papírek z úst mrtvoly… navzdory špatnému stavu papíru je text ještě čitelný.  Poznámka: "čtení" poznámek, knih a svitků provedeš tak, že si je dáš do inventáře a potom na ně klikneš pravým tlačítkem myši.'

    menu:
        'Prozkoumej mrtvolu znovu.':
            # a7 # r34961
            jump zm1201_s5

        'Nechej mrtvolu v klidu odpočívat.':
            # a8 # r45123
            jump zm1201_dispose


# s3 # say45124
label zm1201_s3: # from 0.1 5.0 5.1 5.2
    nr 'Mléčně bílé oči mrtvoly na tebe prázdně zírají.'

    menu:
        'Nechej mrtvolu v klidu odpočívat.':
            # a9 # r45125
            jump zm1201_dispose


# s4 # say45126
label zm1201_s4: # from 0.2 5.3
    nr 'Mrtvola se nepohnula. Asi už moc uhnila, anebo nemá náladu na povídání.'

    menu:
        'Nechej mrtvolu v klidu odpočívat.':
            # a10 # r45127
            jump zm1201_dispose


# s5 # say45128
label zm1201_s5: # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    nr 'Na čele mrtvoly je inkoustem napsáno číslo "1201". Trochu inkoustu steklo dolů k očím a tvářím, takže to vypadá, jako by mrtvola plakala. Její čelist visí dolů a z koutku úst vychází nějaká nepříjemně vypadající tekutina.'

    menu:
        '"Omlouvám se za ty stehy… ale potřeboval jsem se podívat, co to bylo v tvé puse."' if zm1201Logic.r45129_condition():
            # a11 # r45129
            $ zm1201Logic.r45129_action()
            jump zm1201_s3

        '"Omlouvám se za ty stehy… ale potřeboval jsem se podívat, co to bylo v tvé puse."' if zm1201Logic.r45130_condition():
            # a12 # r45130
            jump zm1201_s3

        '"Hele, já vím, že nejsi zombie. Nikoho neoblbneš."' if zm1201Logic.r45131_condition():
            # a13 # r45131
            jump zm1201_s3

        'Použij na mrtvolu schopnost Kosti-vyprávějte.' if zm1201Logic.r45132_condition():
            # a14 # r45132
            jump zm1201_s4

        '"Skvěle jsme si pokecali. Sbohem."':
            # a15 # r45133
            jump zm1201_dispose

        'Nechej mrtvolu v klidu odpočívat.':
            # a16 # r45134
            jump zm1201_dispose
