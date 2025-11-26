init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm506_logic import Zm506Logic
    zm506Logic = Zm506Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM506.DLG
# ###


# s0 # say45419
label zm506_s0: # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    nr 'Ten pokryty szwami trup włóczy się leniwie pomiędzy dwoma płytami. Na czole… z boku karku… i na prawej ręce ktoś wyszył mu numer "506". W rzeczy samej, skóra tego obdartego truposza została pozszywana tak wieloma nićmi, że wygląda niczym dziwaczny plan ulic.'

    menu:
        'Przyjrzyj się szwom.' if zm506Logic.r45420_condition():
            # a0 # r45420
            jump zm506_s3

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm506Logic.r45421_condition():
            # a1 # r45421
            jump zm506_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm506Logic.r45422_condition():
            # a2 # r45422
            jump zm506_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a3 # r45423
            jump zm506_dispose

        'Zostaw truposza w spokoju.':
            # a4 # r45424
            jump zm506_dispose


# s1 # say45425
label zm506_s1: # from 0.1 4.0 4.1 5.0 5.1 5.2
    nr 'Truposz patrzy przed siebie w zapomnieniu.'

    menu:
        'Zostaw truposza w spokoju.':
            # a5 # r45478
            jump zm506_dispose


# s2 # say45426
label zm506_s2: # from 0.2 5.3
    nr 'Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r45479
            jump zm506_dispose


# s3 # say45427
label zm506_s3: # from 0.0
    nr 'Szwy opasują całe ciało truposza, biegnąc od ramion, poprzez klatkę piersiową, po karku w górę i nikną w wilgotnej masie siwych włosów. Kiedy tak przypatrujesz się tej krzyżówce szwów, dostrzegasz, iż ktoś wbił igłę w czoło truposza… igła jest przytwierdzona do nici, która zszywa bok czaszki. Prawdopodobnie mógłbyś ją wyciągnąć, gdybyś miał czym przeciąć nić.'

    menu:
        'Przetnij szwy przy pomocy skalpela, następnie wydobądź igłę i nić.' if zm506Logic.r45480_condition():
            # a7 # r45480
            $ zm506Logic.r45480_action()
            jump zm506_s4

        '"Hmmm. Może jest tu gdzieś coś, czym mógłbym przeciąć nić… Zaraz wrócę."' if zm506Logic.r45481_condition():
            # a8 # r45481
            jump zm506_dispose

        'Ponownie obejrzyj truposza.':
            # a9 # r45482
            jump zm506_s0

        'Zostaw truposza w spokoju.':
            # a10 # r45483
            jump zm506_dispose


# s4 # say45428
label zm506_s4: # from 3.0
    nr 'Tniesz nić równo skalpelem, następnie wyłuskujesz igłę i wyjmujesz szwy. Gdy to robisz, skóra pokrywająca czoło nagle odgina się, odsłaniając kredowo-białą czaszkę, na której - ku twemu zdumieniu - ktoś wyrył numer "78".'

    menu:
        '"Wygląda na to, że masz dwa różne oznaczenia, trupku."' if zm506Logic.r45484_condition():
            # a11 # r45484
            $ zm506Logic.r45484_action()
            jump zm506_s1

        '"Wygląda na to, że masz dwa różne oznaczenia, trupku."' if zm506Logic.r45496_condition():
            # a12 # r45496
            jump zm506_s1

        'Ponownie obejrzyj truposza.':
            # a13 # r50097
            jump zm506_s5

        'Zostaw truposza w spokoju.':
            # a14 # r66889
            jump zm506_dispose


# s5 # say45429
label zm506_s5: # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    nr 'Ten pokryty szwami trup włóczy się leniwie pomiędzy dwoma płytami. Mimo że ktoś wyszył mu numer "506" na całym ciele, skóra na jego czole odginając się, ukazała numer "78" wyryty na czaszce.'

    menu:
        '"Wygląda na to, że masz dwa różne oznaczenia, trupku."' if zm506Logic.r45502_condition():
            # a15 # r45502
            $ zm506Logic.r45502_action()
            jump zm506_s1

        '"Wygląda na to, że masz dwa różne oznaczenia, trupku."' if zm506Logic.r45508_condition():
            # a16 # r45508
            jump zm506_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm506Logic.r45510_condition():
            # a17 # r45510
            jump zm506_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm506Logic.r45512_condition():
            # a18 # r45512
            jump zm506_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a19 # r45513
            jump zm506_dispose

        'Zostaw truposza w spokoju.':
            # a20 # r45514
            jump zm506_dispose
