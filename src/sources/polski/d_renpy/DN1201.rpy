init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DN1201.DLG
# ###


# s0 # say44993
label n1201_s0: # from 1.6 3.0 # IF ~  True()
    nr 'Na tej śmierdzącej notatce narysowano dziwnie wyglądający diagram. Wygląda na to, że to instrukcja, według której masz zagiąć rogi notatki w ten sposób, żeby ich końce dotykały środka. Na każdym rogu znajdują się dziwne znaki - jeden znak w prawym górnym rogu, dwa znaki w prawym dolnym, trzy znaki w lewym dolnym, a w lewym górnym rogu nie ma żadnych znaków.{#n1201_s0_1}'

    menu:
        'Zagnij prawy górny róg do środka.{#n1201_s0_r44994}':
            # a0 # r44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        'Zagnij prawy dolny róg do środka.{#n1201_s0_r44995}':
            # a1 # r44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        'Zagnij lewy dolny róg do środka.{#n1201_s0_r44996}':
            # a2 # r44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        'Zagnij lewy górny róg do środka.{#n1201_s0_r44997}':
            # a3 # r44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        'Zostaw notatkę w spokoju.{#n1201_s0_r44998}':
            # a4 # r44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1: # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    nr 'Zaginasz róg, tak aby jego koniec dotykał środka.{#n1201_s1_1}'

    menu:
        'Zagnij prawy górny róg do środka.{#n1201_s1_r45000}' if n1201Logic.r45000_condition():
            # a5 # r45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        'Zagnij prawy dolny róg do środka.{#n1201_s1_r45001}' if n1201Logic.r45001_condition():
            # a6 # r45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        'Zagnij prawy dolny róg do środka.{#n1201_s1_r45002}' if n1201Logic.r45002_condition():
            # a7 # r45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        'Zagnij lewy dolny róg do środka.{#n1201_s1_r45003}' if n1201Logic.r45003_condition():
            # a8 # r45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        'Zagnij lewy górny róg do środka.{#n1201_s1_r45004}' if n1201Logic.r45004_condition():
            # a9 # r45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        'Zagnij lewy górny róg do środka.{#n1201_s1_r45005}' if n1201Logic.r45005_condition():
            # a10 # r45005
            jump n1201_s2

        'Rozłóż notkę i zacznij od nowa.{#n1201_s1_r45006}':
            # a11 # r45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        'Rozłóż notkę i zostaw ją w spokoju.{#n1201_s1_r45008}':
            # a12 # r45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2: # from 1.5
    nr 'Kiedy zaginasz lewy górny róg do środka, spostrzegasz, że prawy górny róg odgina się i powraca do swojego poprzedniego położenia.{#n1201_s2_1}'

    menu:
        'Jeszcze raz zagnij prawy górny róg do środka.{#n1201_s2_r45016}':
            # a13 # r45016
            jump n1201_s4

        'Zagnij lewy dolny róg do wewnątrz.{#n1201_s2_r45017}':
            # a14 # r45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        'Rozłóż notkę i zostaw ją w spokoju.{#n1201_s2_r45018}':
            # a15 # r45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3: # from 2.1
    nr 'Zaginasz lewy dolny róg do środka, a po chwili dwa pozostałe rogi rozprostowują się. Nic się nie dzieje.{#n1201_s3_1}'

    menu:
        'Jeszcze raz dokładnie przyjrzyj się notatce.{#n1201_s3_r45020}':
            # a16 # r45020
            jump n1201_s0

        'Odłóż notatkę.{#n1201_s3_r45021}':
            # a17 # r45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4: # from 2.0
    nr 'Kiedy zaginasz do środka prawy górny róg, lewy dolny robi to samo, aż w końcu wszystkie rogi dotykają środka notatki. Patrzysz na to przez chwilę, a w tym czasie rogi unoszą się, a cała notatka zamienia się w czworokątną, papierową piramidę.{#n1201_s4_1}'

    menu:
        'Otwórz boczne ściany piramidy.{#n1201_s4_r45023}':
            # a18 # r45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5: # from 4.0
    nr 'Odginasz boczne ściany piramidy, a papier zamienia się w proch. Wewnątrz znajduje się mały, trójkątny kolczyk, w którym odbija się światło.{#n1201_s5_1}'

    menu:
        'Weź trójkątny kolczyk…{#n1201_s5_r45025}':
            # a19 # r45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose
