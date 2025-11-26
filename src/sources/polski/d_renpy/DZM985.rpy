init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm985_logic import Zm985Logic
    zm985Logic = Zm985Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM985.DLG
# ###


# s0 # say45515
label zm985_s0: # - # IF ~  Global("Topple_985","GLOBAL",0)
    nr 'Ten trup - numer "985" - nagle zamarł; sądząc po stanie jego lewej nogi, wydaje się, że jakiś proces gnicia albo coś w tym rodzaju przegryzło mu się przez kolano. Truposz chwieje się w przód i w tył, usiłując zachować równowagę.'

    menu:
        'Popchnij truposza.' if zm985Logic.r45516_condition():
            # a0 # r45516
            $ zm985Logic.r45516_action()
            jump morte_s482  # EXTERN

        'Popchnij truposza.' if zm985Logic.r45517_condition():
            # a1 # r45517
            $ zm985Logic.r45517_action()
            jump zm985_s3

        'Postaraj się pomóc truposzowi złapać równowagę.' if zm985Logic.r45518_condition():
            # a2 # r45518
            $ zm985Logic.r45518_action()
            jump zm985_s4

        'Postaraj się pomóc truposzowi złapać równowagę.' if zm985Logic.r45519_condition():
            # a3 # r45519
            $ zm985Logic.r45519_action()
            jump zm985_s6

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm985Logic.r45520_condition():
            # a4 # r45520
            jump zm985_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm985Logic.r45521_condition():
            # a5 # r45521
            jump zm985_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a6 # r45522
            jump zm985_dispose

        'Zostaw truposza w spokoju.':
            # a7 # r45523
            jump zm985_dispose


# s1 # say45524
label zm985_s1: # from 0.4 5.0 5.1 5.2
    nr 'Trup patrzy przed siebie w zapomnieniu. Nie daje żadnych oznak, że cię usłyszał.'

    menu:
        'Zostaw truposza w spokoju.':
            # a8 # r45525
            jump zm985_dispose


# s2 # say45526
label zm985_s2: # from 0.5 5.3
    nr 'Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a9 # r45527
            jump zm985_dispose


# s3 # say45528
label zm985_s3: # from 0.1 6.0
    nr 'Słychać *trzask* z lewej nogi truposza i cały pada na ziemię niczym martwe drzewo. Jego tors uderza w kamienną posadzkę i roztrzaskuje się niczym zgniły arbuz, a z dziury z głośnym gulgotem wylewa się posoka i cuchnąca maź. Ku twemu zdziwieniu nie wydaje się, aby ktokolwiek zauważył upadek truposza… a co dziwniejsze, lewa noga wciąż tkwi w tym samym miejscu, gdzie była przed upadkiem całego ciała, jak gdyby stała na baczność. Po chwili, noga przewraca się z wilgotnym stuknięciem.'

    $ zm985Logic.s3_action()
    jump zm985_s7


# s4 # say45530
label zm985_s4: # from 0.2
    nr 'Wyciągasz rękę w kierunku lewego ramienia truposza, aby pomóc mu złapać równowagę. Jednakże, gdy chwytasz jego ramię, truposz nagle przechyla się w prawo, i wszystko kończy się na tym, że zamiast pomagać mu złapać równowagę, popychasz go.'

    $ zm985Logic.s4_action()
    jump morte_s482  # EXTERN


# s5 # say45531
label zm985_s5: # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    nr 'Wygląda na to, że ktoś zamienił lewą rękę i lewą nogę truposza na jakieś kończyny wymienne wzięte od innych truposzy. Lewa noga jest krótsza niż ta stara, ale teraz truposz jest przynajmniej w stanie stać.'

    menu:
        '"Przepraszam, że cię wcześniej przewróciłem. To był wypadek."' if zm985Logic.r45532_condition():
            # a10 # r45532
            $ zm985Logic.r45532_action()
            jump zm985_s1

        '"Przepraszam, że cię wcześniej przewróciłem. To był wypadek."' if zm985Logic.r45533_condition():
            # a11 # r45533
            jump zm985_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm985Logic.r45534_condition():
            # a12 # r45534
            jump zm985_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm985Logic.r45535_condition():
            # a13 # r45535
            jump zm985_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a14 # r45536
            jump zm985_dispose

        'Zostaw truposza w spokoju.':
            # a15 # r45537
            jump zm985_dispose


# s6 # say45538
label zm985_s6: # from 0.3
    nr 'Wyciągasz rękę w kierunku lewego ramienia truposza, aby pomóc mu złapać równowagę. Jednakże, gdy chwytasz jego ramię, truposz nagle przechyla się w prawo, i wszystko kończy się na tym, że zamiast pomagać mu złapać równowagę, popychasz go.'

    menu:
        '"Uh-oh…"':
            # a16 # r45539
            $ zm985Logic.r45539_action()
            jump zm985_s3


# s7 # say64205
label zm985_s7: # from 3.0
    nr 'Gdy tak patrzysz na przegniłe szczątki truposza, zauważasz, iż jego lewa ręka chyba wyszła z upadku bez szwanku - urwała się od korpusu w trakcie upadku i wygląda na to, że nie została tknięta przez żaden proces gnicia, który zaatakował resztę ciała.'

    menu:
        '"Hmmm. Zastanawiam się, czy nie można by w jakiś sposób zrobić pożytku z tej ręki…"':
            # a17 # r64206
            jump zm985_dispose
