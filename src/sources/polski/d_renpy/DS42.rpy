init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s42_logic import S42Logic
    s42Logic = S42Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS42.DLG
# ###


# s0 # say6595
label s42_s0: # - # IF ~  True()
    nr 'Szkielet odwraca się do ciebie. Na czole wyryto mu liczbę "42", a wiele kości, zwłaszcza przy żuchwie i stawach, związano skórzanymi paskami. Jego ubranie stanowi czarny kaftan.{#s42_s0_1}'

    menu:
        '"To *chyba* jest ten szkielet, którego ujrzałem we wspomnieniu."{#s42_s0_r6612}' if s42Logic.r6612_condition():
            # a0 # r6612
            jump s42_s1

        '"Przepraszam, widziałeś może jakieś przechodzące szkielety?"{#s42_s0_r6613}':
            # a1 # r6613
            $ s42Logic.r6613_action()
            jump s42_s1

        '"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"{#s42_s0_r6614}' if s42Logic.r6614_condition():
            # a2 # r6614
            $ s42Logic.r6614_action()
            jump s42_s1

        '"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"{#s42_s0_r6615}' if s42Logic.r6615_condition():
            # a3 # r6615
            jump s42_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#s42_s0_r6616}' if s42Logic.r6616_condition():
            # a4 # r6616
            jump s42_s2

        'Przyjrzyj się temu szkieletowi uważnie.{#s42_s0_r6617}':
            # a5 # r6617
            $ s42Logic.r6617_action()
            jump s42_s3

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s42_s0_r6618}' if s42Logic.r6618_condition():
            # a6 # r6618
            $ s42Logic.r6618_action()
            jump morte_s110  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s42_s0_r6619}' if s42Logic.r6619_condition():
            # a7 # r6619
            jump s42_s6

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s42_s0_r6620}' if s42Logic.r6620_condition():
            # a8 # r6620
            jump s42_s6

        '"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#s42_s0_r6621}' if s42Logic.r6621_condition():
            # a9 # r6621
            jump s42_s1

        'Zostaw szkielet w spokoju.{#s42_s0_r6622}' if s42Logic.r6622_condition():
            # a10 # r6622
            jump morte_s111  # EXTERN

        'Zostaw szkielet w spokoju.{#s42_s0_r6623}' if s42Logic.r6623_condition():
            # a11 # r6623
            jump s42_dispose

        'Zostaw szkielet w spokoju.{#s42_s0_r6624}' if s42Logic.r6624_condition():
            # a12 # r6624
            jump s42_dispose


# s1 # say6596
label s42_s1: # from 0.0 0.1 0.2 0.3 0.9 3.0 3.3
    nr 'Na dźwięk twojego głosu szkielet nagle się prostuje. Składa ręce na klatce piersiowej, a jego palce wpijają się w żebra.{#s42_s1_1}'

    menu:
        'Skrzyżuj ręce na piersi.{#s42_s1_r6625}' if s42Logic.r6625_condition():
            # a13 # r6625
            jump s42_s4

        'Zrób to, co szkielet… i zobacz, co się stanie.{#s42_s1_r6626}' if s42Logic.r6626_condition():
            # a14 # r6626
            jump s42_s9

        '"Uch…"{#s42_s1_r6627}':
            # a15 # r6627
            jump s42_s10

        'Zostaw szkielet w spokoju.{#s42_s1_r6628}':
            # a16 # r6628
            jump s42_dispose


# s2 # say6597
label s42_s2: # from 0.4
    nr 'Szkielet nic nie odpowiada. Wygląda na to, że jest już martwy zbyt długo, żeby odpowiadać na twoje pytania.{#s42_s2_1}'

    menu:
        'Zostaw szkielet w spokoju.{#s42_s2_r6629}' if s42Logic.r6629_condition():
            # a17 # r6629
            $ s42Logic.r6629_action()
            jump morte_s111  # EXTERN

        'Zostaw szkielet w spokoju.{#s42_s2_r6630}' if s42Logic.r6630_condition():
            # a18 # r6630
            jump s42_dispose

        'Zostaw szkielet w spokoju.{#s42_s2_r6631}' if s42Logic.r6631_condition():
            # a19 # r6631
            jump s42_dispose


# s3 # say6598
label s42_s3: # from 0.5 10.2
    nr 'To zadziwiające, że ta kupa kości jeszcze się nie rozpadła. Pożółkły szkielet pokryto gipsem i kilkoma warstwami cuchnącego kleju… A nieliczne wystające kawałki kości pokryte są setkami małych pęknięć. Choć ktoś powiązał to wszystko za pomocą skórzanych pasków i żelaznych nitów, to skóra jest już przetarta, a nity wyglądają, jakby miały za chwilę powypadać.{#s42_s3_1}'

    menu:
        '"To *chyba* jest ten szkielet, którego ujrzałem we wspomnieniu."{#s42_s3_r63495}' if s42Logic.r63495_condition():
            # a20 # r63495
            jump s42_s1

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s42_s3_r6632}' if s42Logic.r6632_condition():
            # a21 # r6632
            $ s42Logic.r6632_action()
            jump morte_s110  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s42_s3_r6633}' if s42Logic.r6633_condition():
            # a22 # r6633
            jump s42_s6

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"{#s42_s3_r6634}' if s42Logic.r6634_condition():
            # a23 # r6634
            jump s42_s1

        'Zostaw szkielet w spokoju.{#s42_s3_r6635}' if s42Logic.r6635_condition():
            # a24 # r6635
            $ s42Logic.r6635_action()
            jump morte_s111  # EXTERN

        'Zostaw szkielet w spokoju.{#s42_s3_r6636}' if s42Logic.r6636_condition():
            # a25 # r6636
            jump s42_dispose

        'Zostaw szkielet w spokoju.{#s42_s3_r6637}' if s42Logic.r6637_condition():
            # a26 # r6637
            jump s42_dispose


# s4 # say6599
label s42_s4: # from 1.0 12.0
    nr 'W odpowiedzi szkielet opuszcza ręce. Skórzane pasy obwiązujące jego klatkę pękają, a klatka piersiowa otwiera się jak podwójne wrota.{#s42_s4_1}'

    menu:
        'Sięgnij do wnętrza klatki piersiowej i pomacaj naokoło.{#s42_s4_r6638}':
            # a27 # r6638
            jump s42_s5

        'Zostaw szkielet w spokoju.{#s42_s4_r6639}':
            # a28 # r6639
            jump s42_dispose


# s5 # say6600
label s42_s5: # from 4.0 9.0
    nr 'Ku twojemu zdumieniu, kiedy sięgasz do wnętrz klatki piersiowej, twoja ręka znika… Masz dziwne wrażenie, że ona jest w jakimś *innym* miejscu. W końcu natrafiasz na jakiś niewidzialny przedmiot wielkości pięści, który przymocowano do kręgosłupa szkieletu.{#s42_s5_1}'

    menu:
        'Wyciągnij nieznany przedmiot.{#s42_s5_r6640}':
            # a29 # r6640
            $ s42Logic.r6640_action()
            jump s42_s7

        'Zostaw szkielet w spokoju.{#s42_s5_r6641}':
            # a30 # r6641
            jump s42_dispose


# s6 # say6601
label s42_s6: # from 0.7 0.8 3.2
    nr 'Nity z łatwością wysuwają się ze stawów. Szkielet pada na ziemię, choć niektóre kości ciągle jeszcze drżą.{#s42_s6_1}'

    menu:
        '"Przykro mi, Kostuszku…"{#s42_s6_r6642}':
            # a31 # r6642
            $ s42Logic.r6642_action()
            jump s42_dispose


# s7 # say6602
label s42_s7: # from 5.0
    nr 'Kiedy wyciągasz tajemniczy przedmiot, szkielet nagle się rozpada, a żelazne nity spadają z brzdękiem na ziemię. Wygląda na to, że tylko ten przedmiot trzymał kości w kupie.{#s42_s7_1}'

    menu:
        'Obejrzyj przedmiot.{#s42_s7_r6643}' if s42Logic.r6643_condition():
            # a32 # r6643
            jump s42_s8

        'Obejrzyj przedmiot.{#s42_s7_r6644}' if s42Logic.r6644_condition():
            # a33 # r6644
            jump s42_s8


# s8 # say6603
label s42_s8: # from 7.0 7.1
    nr 'Przedmiot przypomina niepozorną bryłę żelaza. Zastanawiasz się, dlaczego ktoś miałby ukrywać coś takiego wewnątrz klatki piersiowej szkieletu.{#s42_s8_1}'

    menu:
        'Dokładnie zbadaj bryłę żelaza.{#s42_s8_r6645}':
            # a34 # r6645
            $ s42Logic.r6645_action()
            jump s42_s14


# s9 # say6604
label s42_s9: # from 1.1 12.1
    nr 'W odpowiedzi szkielet opuszcza ręce. Skórzane pasy obwiązujące jego klatkę pękają, a klatka piersiowa otwiera się jak podwójne wrota. Nie wiedząc czemu, nagle nachodzi cię chęć sięgnięcia do wewnątrz.{#s42_s9_1}'

    menu:
        'Sięgnij do wnętrza klatki piersiowej i pomacaj naokoło.{#s42_s9_r6646}':
            # a35 # r6646
            jump s42_s5

        'Zostaw szkielet w spokoju.{#s42_s9_r6647}':
            # a36 # r6647
            jump s42_dispose


# s10 # say6605
label s42_s10: # from 1.2 12.2
    nr 'Ręce szkieletu opadają na boki.{#s42_s10_1}'

    menu:
        '"Uch… cześć?"{#s42_s10_r6648}' if s42Logic.r6648_condition():
            # a37 # r6648
            jump s42_s12

        '"Uch… cześć?"{#s42_s10_r6649}' if s42Logic.r6649_condition():
            # a38 # r6649
            jump s42_s13

        'Przyjrzyj się temu szkieletowi uważnie.{#s42_s10_r6650}':
            # a39 # r6650
            $ s42Logic.r6650_action()
            jump s42_s3

        'Zostaw szkielet w spokoju.{#s42_s10_r6651}':
            # a40 # r6651
            jump s42_dispose


# s11 # say6606
label s42_s11: # -
    nr 'Przedmiot przypomina niepozorną bryłę żelaza. Twoje wcześniejsze wcielenie musiało mieć jakiś powód, żeby ją tam ukryć.{#s42_s11_1}'

    menu:
        'Przyjrzyj się kawałkowi żelaza uważnie.{#s42_s11_r6652}':
            # a41 # r6652
            $ s42Logic.r6652_action()
            jump s42_s14


# s12 # say6607
label s42_s12: # from 10.0
    nr 'Szkielet znowu krzyżuje ręce na piersi.{#s42_s12_1}'

    menu:
        'Skrzyżuj ręce na piersi.{#s42_s12_r6653}' if s42Logic.r6653_condition():
            # a42 # r6653
            jump s42_s4

        'Zrób to, co szkielet… i zobacz, co się stanie.{#s42_s12_r6654}' if s42Logic.r6654_condition():
            # a43 # r6654
            jump s42_s9

        '"Uch…"{#s42_s12_r6655}':
            # a44 # r6655
            jump s42_s10

        'Zostaw szkielet w spokoju.{#s42_s12_r6656}':
            # a45 # r6656
            jump s42_dispose


# s13 # say6608
label s42_s13: # from 10.1
    nr 'Szkielet znowu krzyżuje ręce na piersi.{#s42_s13_1}'

    jump morte_s112  # EXTERN


# s14 # say58983
label s42_s14: # from 8.0 11.0
    nr 'Kiedy ujmujesz bryłę obiema rękami, żeby się jej lepiej przyjrzeć, nagle do twoich uszu dochodzi *ssssssssss* i metal znika. W dłoniach zostaje ci sztylet, trochę monet zawiniętych w brudną szmatkę i dwie krwawe łzy - wygląda na to, że te rzeczy znajdowały się *wewnątrz* bryły.{#s42_s14_1}'

    menu:
        'Zabierz przedmioty i odejdź.{#s42_s14_r58984}':
            # a46 # r58984
            $ s42Logic.r58984_action()
            jump s42_dispose
