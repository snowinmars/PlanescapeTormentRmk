init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1664_logic import Zm1664Logic
    zm1664Logic = Zm1664Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1664.DLG
# ###


# s0 # say47002
label zm1664_s0: # from 5.0 # IF ~  True()
    nr 'Diese riesige Leiche steht still und mit dem Gesicht zur Wand in einer Ecke des Raums. Sie muß einmal ein Mann gewesen sein, der in jungen Jahren sehr kräftig war. Nach dem Zustand der Leiche zu urteilen ist sie erst vor kurzem gestorben. Die frisch eingenähte Nummer auf der Stirn lautet "1664." Diese Leiche scheint die Funktion eines Bibliothekars zu erfüllen, denn sie trägt einen riesigen Stapel Bücher auf dem Arm.{#zm1664_s0_}'

    menu:
        'Sieh dir die Bücher genau an.{#zm1664_s0_r47003}' if zm1664Logic.r47003_condition():
            # a0 # r47003
            jump zm1664_s3

        'Sieh dir die Bücher noch einmal genau an.{#zm1664_s0_r47004}' if zm1664Logic.r47004_condition():
            # a1 # r47004
            jump zm1664_s6

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm1664_s0_r47005}' if zm1664Logic.r47005_condition():
            # a2 # r47005
            jump zm1664_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm1664_s0_r47006}' if zm1664Logic.r47006_condition():
            # a3 # r47006
            jump zm1664_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm1664_s0_r47007}':
            # a4 # r47007
            jump zm1664_dispose

        'Laß die Leiche in Ruhe.{#zm1664_s0_r47008}':
            # a5 # r47008
            jump zm1664_dispose


# s1 # say47009
label zm1664_s1: # from 0.2 6.0
    nr 'Die Leiche starrt ausdruckslos gegen die Wand.{#zm1664_s1_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm1664_s1_r47010}':
            # a6 # r47010
            jump zm1664_dispose


# s2 # say47011
label zm1664_s2: # from 0.3
    nr 'Die Leiche rührt sich nicht. Obwohl sie aussieht, als wäre sie noch nicht lange tot, scheint sie keine deiner Fragen beantworten zu können.{#zm1664_s2_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm1664_s2_r47012}':
            # a7 # r47012
            jump zm1664_dispose


# s3 # say47013
label zm1664_s3: # from 0.0
    nr 'Die Bücher scheinen alte Dienstbücher der Leichenhalle zu sein, von denen keines besonders auffällig ist. Als du die Eintragungen durchgehst, bemerkst du eine lose Seite, die zusammengefaltet zwischen zwei Büchern liegt. Du hast den Verdacht, daß sie jemand absichtlich dort versteckt hat.{#zm1664_s3_}'

    menu:
        'Nimm die Seite.{#zm1664_s3_r47014}':
            # a8 # r47014
            $ zm1664Logic.r47014_action()
            jump zm1664_s4


# s4 # say47015
label zm1664_s4: # from 3.0
    nr 'Die Seite sieht nicht aus, als gehöre sie zu den Dienstbüchern… Sie scheint eher aus irgendeinem Verzeichnis zu stammen. Die Kante ist so sauber, als wäre die Seite mit einem Messer abgetrennt worden. Sie muß absichtlich herausgenommen worden sein.{#zm1664_s4_}'

    menu:
        'Lies sie durch.{#zm1664_s4_r47016}':
            # a9 # r47016
            jump zm1664_s5


# s5 # say47017
label zm1664_s5: # from 4.0
    nr 'Du liest dir die Seite kurz durch… Es ist eine Liste von Leichen, die zur Leichenhalle gebracht und im Empfangsraum protokolliert wurden. Alle Einträge scheinen Neuzugänge zu sein.  ^NHINWEIS: <READSTUFF>^-{#zm1664_s5_}'

    menu:
        'Sieh dir den Zombie noch einmal genau an.{#zm1664_s5_r47018}':
            # a10 # r47018
            jump zm1664_s0

        'Nimm die Seite mit und geh weg.{#zm1664_s5_r47019}':
            # a11 # r47019
            jump zm1664_dispose


# s6 # say47021
label zm1664_s6: # from 0.1
    nr 'Die Bücher scheinen alte Dienstbücher der Leichenhalle zu sein, von denen keines besonders auffällig ist. Du gehst die Eintragungen noch einmal durch, findest aber nichts mehr.{#zm1664_s6_}'

    menu:
        '"Wie kommt„s, das du dich ausgerechnet als Bibliothekar verdingst? War sonst nichts frei?"{#zm1664_s6_r47022}':
            # a12 # r47022
            jump zm1664_s1

        'Laß den Zombie in Ruhe.{#zm1664_s6_r47023}':
            # a13 # r47023
            jump zm1664_dispose
