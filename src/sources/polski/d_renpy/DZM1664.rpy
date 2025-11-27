init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1664_logic import Zm1664Logic
    zm1664Logic = Zm1664Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1664.DLG
# ###


# s0 # say47002
label zm1664_s0: # from 5.0 # IF ~  True()
    nr 'Ten olbrzymi truposz stoi cicho w rogu pokoju, twarzą do ściany. Wygląda na to, że kiedyś był potężnie zbudowanym mężczyzną w młodym wieku. Sądząc po stanie jego zwłok, umarł niedawno. Na czole ma świeżo wyszyty numer "1664". Wydaje się, że trup ten pełni funkcję bibliotekarza, ponieważ trzyma w rękach olbrzymi stos książek.{#zm1664_s0_}'

    menu:
        'Zbadaj książki.{#zm1664_s0_r47003}' if zm1664Logic.r47003_condition():
            # a0 # r47003
            jump zm1664_s3

        'Zbadaj książki ponownie.{#zm1664_s0_r47004}' if zm1664Logic.r47004_condition():
            # a1 # r47004
            jump zm1664_s6

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm1664_s0_r47005}' if zm1664Logic.r47005_condition():
            # a2 # r47005
            jump zm1664_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm1664_s0_r47006}' if zm1664Logic.r47006_condition():
            # a3 # r47006
            jump zm1664_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zm1664_s0_r47007}':
            # a4 # r47007
            jump zm1664_dispose

        'Zostaw truposza w spokoju.{#zm1664_s0_r47008}':
            # a5 # r47008
            jump zm1664_dispose


# s1 # say47009
label zm1664_s1: # from 0.2 6.0
    nr 'Truposz beznamiętnie wpatruje się w ścianę.{#zm1664_s1_}'

    menu:
        'Zostaw truposza w spokoju.{#zm1664_s1_r47010}':
            # a6 # r47010
            jump zm1664_dispose


# s2 # say47011
label zm1664_s2: # from 0.3
    nr 'Trup nie porusza się. Pomimo że wygląda na takiego, co to zmarł całkiem niedawno, nie wydaje się być w stanie odpowiedzieć na żadne z twoich pytań.{#zm1664_s2_}'

    menu:
        'Zostaw truposza w spokoju.{#zm1664_s2_r47012}':
            # a7 # r47012
            jump zm1664_dispose


# s3 # say47013
label zm1664_s3: # from 0.0
    nr 'Książki wyglądają na stare księgi główne Kostnicy i żadna z nich nie jest szczególnie interesująca. Jednakowoż, kiedy tak wertujesz te teksty, zauważasz luźną stronę złożoną pomiędzy dwiema księgami. Nagle uderza cię myśl, że ktoś wcisnął ją tam, aby ją ukryć.{#zm1664_s3_}'

    menu:
        'Weź stronicę.{#zm1664_s3_r47014}':
            # a8 # r47014
            $ zm1664Logic.r47014_action()
            jump zm1664_s4


# s4 # say47015
label zm1664_s4: # from 3.0
    nr 'Strona nie wydaje się pochodzić z ksiąg głównych… wygląda na kartkę z dziennika rejestracyjnego. Rozdarcie jest gładkie, jakby od noża, więc podejrzewasz, że stronicę usunięto celowo.{#zm1664_s4_}'

    menu:
        'Przeczytaj ją.{#zm1664_s4_r47016}':
            # a9 # r47016
            jump zm1664_s5


# s5 # say47017
label zm1664_s5: # from 4.0
    nr 'Wertujesz stronicę przez kilka chwil… To lista trupów zniesionych do kostnicy i skatalogowanych w sali przyjęć. Listę sporządzono niedawno.  ^NNOTE: <READSTUFF>^-{#zm1664_s5_}'

    menu:
        'Raz jeszcze zbadaj zombiaka.{#zm1664_s5_r47018}':
            # a10 # r47018
            jump zm1664_s0

        'Weź stronicę ze sobą i odejdź.{#zm1664_s5_r47019}':
            # a11 # r47019
            jump zm1664_dispose


# s6 # say47021
label zm1664_s6: # from 0.1
    nr 'Książki wyglądają na stare księgi główne Kostnicy i żadna z nich nie jest szczególnie interesująca. Ponownie przeglądasz teksty, ale nie znajdujesz już niczego więcej.{#zm1664_s6_}'

    menu:
        '"No więc jak to się stało, że zostałeś bibliotekarzem? Wszystko inne było już zajęte?"{#zm1664_s6_r47022}':
            # a12 # r47022
            jump zm1664_s1

        'Zostaw zombiaka w spokoju.{#zm1664_s6_r47023}':
            # a13 # r47023
            jump zm1664_dispose
