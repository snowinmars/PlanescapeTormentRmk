init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm506_logic import Zm506Logic
    zm506Logic = Zm506Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM506.DLG
# ###


# s0 # say45419
label zm506_s0: # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    nr 'Tato těžce rozpíchaná mrtvola se líně přesouvá tam a zpět mezi dvěma deskami. Číslo "506" má přišito na čele… a straně krku… a pravé paži… dá se říci, že kůže na této loupající se mrtvole byla sešita tolika stehy, že vypadá jako bizarní mapa ulic.{#zm506_s0_}'

    menu:
        'Prozkoumej steh.{#zm506_s0_r45420}' if zm506Logic.r45420_condition():
            # a0 # r45420
            jump zm506_s3

        '"Já vím, že nejsi zombie. Nikoho tady nepřevezeš."{#zm506_s0_r45421}' if zm506Logic.r45421_condition():
            # a1 # r45421
            jump zm506_s1

        'Použij na mrtvolu svou schopnost Historky-kosti-povídejte.{#zm506_s0_r45422}' if zm506Logic.r45422_condition():
            # a2 # r45422
            jump zm506_s2

        '"Bylo ohromné mluvit s tebou. Sbohem."{#zm506_s0_r45423}':
            # a3 # r45423
            jump zm506_dispose

        'Nechej mrtvolu být.{#zm506_s0_r45424}':
            # a4 # r45424
            jump zm506_dispose


# s1 # say45425
label zm506_s1: # from 0.1 4.0 4.1 5.0 5.1 5.2
    nr 'Mrtvola tupě zírá přímo dopředu.{#zm506_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm506_s1_r45478}':
            # a5 # r45478
            jump zm506_dispose


# s2 # say45426
label zm506_s2: # from 0.2 5.3
    nr 'Mrtvola se nehýbá. Vypadá, že je příliš daleko na to, aby ti odpověděla na otázky.{#zm506_s2_}'

    menu:
        'Nechej mrtvolu být.{#zm506_s2_r45479}':
            # a6 # r45479
            jump zm506_dispose


# s3 # say45427
label zm506_s3: # from 0.0
    nr 'Vpichy obkružují celou mrtvolu, jdou z jejích paží, přes hrudník a krk až nahoru do vlhkého chomáče bílých vlasů. Jak sleduješ křižovatky vpichů, všimneš si, že do čela mrtvoly někdo zapíchl jehlu… jehla je připevněna k vláknu našitému ke straně lebky. Mohl bys to pravděpodobně uvolnit, kdybys měl něco, s čím bys mohl přeříznout vlákno.{#zm506_s3_}'

    menu:
        'Přeřízni stehy skalpelem a pak vytáhni jehlu i s nití.{#zm506_s3_r45480}' if zm506Logic.r45480_condition():
            # a7 # r45480
            $ zm506Logic.r45480_action()
            jump zm506_s4

        '"Hmmm. Možná by tu někde mohlo být něco, čím bych mohl přeříznout tu nit… ještě se vrátím."{#zm506_s3_r45481}' if zm506Logic.r45481_condition():
            # a8 # r45481
            jump zm506_dispose

        'Prozkoumej mrtvolu ještě jednou.{#zm506_s3_r45482}':
            # a9 # r45482
            jump zm506_s0

        'Nechej tělo být.{#zm506_s3_r45483}':
            # a10 # r45483
            jump zm506_dispose


# s4 # say45428
label zm506_s4: # from 3.0
    nr 'Opatrně jsi přeřízl skalpelem nit, vytrhl jsi jehlu a vytáhl stehy. Jakmile jsi to udělal, kůže pokrývající čelo se odchlípla a odhalila křídově bílou lebku mrtvoly - a tam je, k tvému údivu, vyryto číslo "78".{#zm506_s4_}'

    menu:
        '"Mrtvolo, zdá se, že máš dvě rozdílná označení."{#zm506_s4_r45484}' if zm506Logic.r45484_condition():
            # a11 # r45484
            $ zm506Logic.r45484_action()
            jump zm506_s1

        '"Mrtvolo, zdá se, že máš dvě rozdílná označení."{#zm506_s4_r45496}' if zm506Logic.r45496_condition():
            # a12 # r45496
            jump zm506_s1

        'Prohledej tělo znovu.{#zm506_s4_r50097}':
            # a13 # r50097
            jump zm506_s5

        'Nechej tělo na pokoji.{#zm506_s4_r66889}':
            # a14 # r66889
            jump zm506_dispose


# s5 # say45429
label zm506_s5: # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    nr 'Tato hustě sestehovaná mrtvola se lenivě belhá sem a tam mezi dvěma deskami. Ačkoliv jsou téměř po celém jejím těle vyšita čísla "506", od lebky se jí na čele odloupla kůže a odkryla tak číslo "78", vyryté do kosti.{#zm506_s5_}'

    menu:
        '"Mrtvolo, zdá se, že máš dvě rozdílná označení."{#zm506_s5_r45502}' if zm506Logic.r45502_condition():
            # a15 # r45502
            $ zm506Logic.r45502_action()
            jump zm506_s1

        '"Mrtvolo, zdá se, že máš dvě rozdílná označení."{#zm506_s5_r45508}' if zm506Logic.r45508_condition():
            # a16 # r45508
            jump zm506_s1

        '"Ty nejsi zombie, vždyť víš. Tady nikoho neošálíš."{#zm506_s5_r45510}' if zm506Logic.r45510_condition():
            # a17 # r45510
            jump zm506_s1

        'Použij na mrtvolu svoji schopnost Historky-kosti-povídejte.{#zm506_s5_r45512}' if zm506Logic.r45512_condition():
            # a18 # r45512
            jump zm506_s2

        '"Pěkně jsem si s tebou popovídal. Sbohem."{#zm506_s5_r45513}':
            # a19 # r45513
            jump zm506_dispose

        'Nechej mrtvolu být.{#zm506_s5_r45514}':
            # a20 # r45514
            jump zm506_dispose
