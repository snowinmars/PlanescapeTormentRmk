init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DGIANTSK.DLG
# ###


# s0 # say292
label giantsk_s0: # - # IF ~  True()
    nr 'Widzisz przed sobą ogromny szkielet odziany w zdobioną zbroję z brązu. Przymocowano ją do kości nitami, a na napierśniku wygrawerowano serię skomplikowanych symboli. Zastanawiasz się nad pochodzeniem tego kościotrupa; nie miałeś pojęcia, że w wieloświecie istnieją ludzie o tym wzroście. Ogromny miecz w jego rękach wygląda tak, jakby ważył tyle, co powóz.{#giantsk_s0_1}'

    menu:
        '"Nie obrazisz się, jeśli potrzymam trochę twój miecz? Musisz być zmęczony."{#giantsk_s0_r293}':
            # a0 # r293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        '"No więc, od kiedy tu stoisz? Długo?"{#giantsk_s0_r1165}':
            # a1 # r1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        'Przyjrzyj się ogromnemu szkieletowi… ale ostrożnie.{#giantsk_s0_r3996}':
            # a2 # r3996
            jump giantsk_s4

        'Spróbuj unieszkodliwić zaklęcia, które wpleciono w napierśnik szkieletu.{#giantsk_s0_r3997}' if giantskLogic.r3997_condition():
            # a3 # r3997
            jump giantsk_s9

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s0_r3998}' if giantskLogic.r3998_condition():
            # a4 # r3998
            jump giantsk_s2

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s0_r3999}' if giantskLogic.r3999_condition():
            # a5 # r3999
            jump giantsk_s3

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s0_r4000}' if giantskLogic.r4000_condition():
            # a6 # r4000
            jump giantsk_s2

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s0_r4001}' if giantskLogic.r4001_condition():
            # a7 # r4001
            jump giantsk_s3

        '"Co powiesz na TEN szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#giantsk_s0_r4002}' if giantskLogic.r4002_condition():
            # a8 # r4002
            jump morte_s73  # EXTERN

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#giantsk_s0_r4003}' if giantskLogic.r4003_condition():
            # a9 # r4003
            jump giantsk_s1

        'Zostaw szkielet w spokoju.{#giantsk_s0_r4004}':
            # a10 # r4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1: # from 0.0 0.1 0.9 # IF ~  False()
    nr 'Wygląda na to, że ten szkielet jest już zbyt długo martwy, żeby mógł odpowiadać na twoje pytania. A może jego głowa znajduje się zbyt wysoko, żeby cię dosłyszeć.{#giantsk_s1_1}'

    menu:
        'Przyjrzyj się ogromnemu szkieletowi… ale ostrożnie.{#giantsk_s1_r1167}':
            # a11 # r1167
            jump giantsk_s4

        'Spróbuj unieszkodliwić zaklęcia, które wpleciono w napierśnik szkieletu.{#giantsk_s1_r4035}' if giantskLogic.r4035_condition():
            # a12 # r4035
            jump giantsk_s9

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s1_r4036}' if giantskLogic.r4036_condition():
            # a13 # r4036
            jump giantsk_s2

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s1_r4037}' if giantskLogic.r4037_condition():
            # a14 # r4037
            jump giantsk_s3

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s1_r4038}' if giantskLogic.r4038_condition():
            # a15 # r4038
            jump giantsk_s2

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s1_r4039}' if giantskLogic.r4039_condition():
            # a16 # r4039
            jump giantsk_s3

        '"Co powiesz na TEN szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#giantsk_s1_r4040}' if giantskLogic.r4040_condition():
            # a17 # r4040
            jump morte_s73  # EXTERN

        'Zostaw ten szkielet w spokoju.{#giantsk_s1_r4041}':
            # a18 # r4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2: # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    nr 'Kiedy dotykasz szkieletu, w całej Kostnicy odzywa się dzwon… a szkielet budzi się z szybkością błyskawicy i podnosi swój miecz do ataku!{#giantsk_s2_1}'

    menu:
        '"Lepiej było zostać martwym, Kościaku…"{#giantsk_s2_r4042}':
            # a19 # r4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3: # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    nr 'Kiedy już masz to zrobić, nagle się zatrzymujesz… A twoje oczy przyciąga jego zbroja. Coś w symbolach wygrawerowanych na płycie piersiowej sprawia, że przerywasz w pół ruchu. Jeśli te szkielety są strażnikami, to zmącenie ich spokoju może… je obudzić.{#giantsk_s3_1}'

    menu:
        '"Chcę zaryzykować…"{#giantsk_s3_r4043}':
            # a20 # r4043
            jump giantsk_s2

        'Przyjrzyj się ogromnemu szkieletowi… ale ostrożnie.{#giantsk_s3_r4044}':
            # a21 # r4044
            jump giantsk_s4

        'Zostaw ten szkielet w spokoju.{#giantsk_s3_r4046}':
            # a22 # r4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4: # from 0.2 1.0 3.1 7.1 15.1 16.3
    nr 'Zdobioną zbroję z brązu przymocowano do jego żeber i łopatek za pomocą żelaznych nitów. Kiedy przyglądasz się jego kościom przez szpary w pancerzu, zauważasz, że takie same nity znajdują się w jego stawach, barkowym, łokciowym, miednicowym i kolanowym. Wzdłuż ramion i nóg szkieletu biegną grube, skórzane pasy i liny, które do złudzenia przypominają mięśnie i ścięgna.{#giantsk_s4_1}'

    menu:
        'Przyjrzyj się zbroi.{#giantsk_s4_r4045}':
            # a23 # r4045
            jump giantsk_s5

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s4_r4048}' if giantskLogic.r4048_condition():
            # a24 # r4048
            jump giantsk_s2

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s4_r4049}' if giantskLogic.r4049_condition():
            # a25 # r4049
            jump giantsk_s3

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s4_r4050}' if giantskLogic.r4050_condition():
            # a26 # r4050
            jump giantsk_s2

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s4_r4051}' if giantskLogic.r4051_condition():
            # a27 # r4051
            jump giantsk_s3

        '"Co powiesz na TEN szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#giantsk_s4_r4052}' if giantskLogic.r4052_condition():
            # a28 # r4052
            jump morte_s73  # EXTERN

        'Zostaw ten szkielet w spokoju.{#giantsk_s4_r4053}':
            # a29 # r4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5: # from 4.0
    nr 'Choć pancerz ma już swoje lata, wygląda na zadbany. Odbite od niego światło świeci jasno, a symbole wygrawerowane na napierśniku zdają się płynąć w ogniu pochodni, zmieniając lekko swoje położenie za każdym razem, kiedy próbujesz na nich skupić swój wzrok.{#giantsk_s5_1}'

    menu:
        'Uważnie przyjrzyj się symbolom.{#giantsk_s5_r4054}' if giantskLogic.r4054_condition():
            # a30 # r4054
            jump giantsk_s6

        'Uważnie przyjrzyj się symbolom.{#giantsk_s5_r4055}' if giantskLogic.r4055_condition():
            # a31 # r4055
            jump giantsk_s6

        'Uważnie przyjrzyj się symbolom.{#giantsk_s5_r64293}' if giantskLogic.r64293_condition():
            # a32 # r64293
            jump giantsk_s7

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s5_r4056}' if giantskLogic.r4056_condition():
            # a33 # r4056
            jump giantsk_s2

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s5_r4057}' if giantskLogic.r4057_condition():
            # a34 # r4057
            jump giantsk_s3

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s5_r4058}' if giantskLogic.r4058_condition():
            # a35 # r4058
            jump giantsk_s2

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s5_r4059}' if giantskLogic.r4059_condition():
            # a36 # r4059
            jump giantsk_s3

        '"Co powiesz na TEN szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#giantsk_s5_r4060}' if giantskLogic.r4060_condition():
            # a37 # r4060
            jump morte_s73  # EXTERN

        'Zostaw ten szkielet w spokoju.{#giantsk_s5_r4061}':
            # a38 # r4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6: # from 5.0 5.1
    nr 'Kiedy spoglądasz na symbole, prawie podświadomie rozluźniasz wzrok. Po chwili symbole przestają się ruszać i układają się w ciąg runów, które biegną przez całą płytę piersiową. To dziwne, ale przeplatający się wzór przypomina łańcuch… Kiedy przychodzi ci to do głowy, nagle przypominasz sobie, że te runy tworzą jakieś zaklęcie strażnicze.{#giantsk_s6_1}'

    menu:
        'Uważnie przyjrzyj się symbolom i spróbuj przypomnieć sobie zaklęcie.{#giantsk_s6_r4062}' if giantskLogic.r4062_condition():
            # a39 # r4062
            jump giantsk_s8

        'Uważnie przyjrzyj się symbolom i spróbuj przypomnieć sobie zaklęcie.{#giantsk_s6_r4063}' if giantskLogic.r4063_condition():
            # a40 # r4063
            jump giantsk_s7

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s6_r4064}' if giantskLogic.r4064_condition():
            # a41 # r4064
            jump giantsk_s2

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s6_r4065}' if giantskLogic.r4065_condition():
            # a42 # r4065
            jump giantsk_s3

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s6_r4066}' if giantskLogic.r4066_condition():
            # a43 # r4066
            jump giantsk_s2

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s6_r4067}' if giantskLogic.r4067_condition():
            # a44 # r4067
            jump giantsk_s3

        '"Co powiesz na TEN szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#giantsk_s6_r4068}' if giantskLogic.r4068_condition():
            # a45 # r4068
            jump morte_s73  # EXTERN

        'Zostaw ten szkielet w spokoju.{#giantsk_s6_r4069}':
            # a46 # r4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7: # from 5.2 6.1 7.2
    nr 'Przez chwilę przyglądasz się runom uważnie, ale nie możesz odszyfrować zaklęcia. Wygląda na to, że jest bardzo skomplikowane, a w dodatku nie możesz się dobrze skoncentrować.{#giantsk_s7_1}'

    menu:
        'Porównaj runy na pancerzu z runami w Księdze Kości i Popiołu.{#giantsk_s7_r64294}' if giantskLogic.r64294_condition():
            # a47 # r64294
            jump giantsk_s15

        'Zbadaj szkielet raz jeszcze.{#giantsk_s7_r4070}':
            # a48 # r4070
            jump giantsk_s4

        'Jeszcze raz uważnie przyjrzyj się runom.{#giantsk_s7_r4071}':
            # a49 # r4071
            jump giantsk_s7

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s7_r4072}' if giantskLogic.r4072_condition():
            # a50 # r4072
            jump giantsk_s2

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s7_r4073}' if giantskLogic.r4073_condition():
            # a51 # r4073
            jump giantsk_s3

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s7_r4074}' if giantskLogic.r4074_condition():
            # a52 # r4074
            jump giantsk_s2

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s7_r4075}' if giantskLogic.r4075_condition():
            # a53 # r4075
            jump giantsk_s3

        '"Co powiesz na TEN szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#giantsk_s7_r4076}' if giantskLogic.r4076_condition():
            # a54 # r4076
            jump morte_s73  # EXTERN

        'Zostaw ten szkielet w spokoju.{#giantsk_s7_r4077}':
            # a55 # r4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8: # from 6.0
    nr 'Przyglądasz się runom, które biegną przez całą płytę piersiową. Na pierwszy rzut oka, tworzą one jakieś mniejsze zaklęcie ochronne, ale kilka runów w kształcie czaszek i kuliste wzory wzdłuż brzegów zbroi każą ci podejrzewać, że w runy wpleciono także kilka potężniejszych zaklęć nekromanckich i strażniczych. Teraz nie masz już wątpliwości, że dotknięcie szkieletu obudzi go… i zmusi do obrony.{#giantsk_s8_1}'

    menu:
        'Spróbuj, czy nie da się tych zaklęć jakoś unieszkodliwić.{#giantsk_s8_r4079}' if giantskLogic.r4079_condition():
            # a56 # r4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        'Spróbuj, czy nie da się tych zaklęć jakoś unieszkodliwić.{#giantsk_s8_r4080}' if giantskLogic.r4080_condition():
            # a57 # r4080
            jump giantsk_s9

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s8_r4081}' if giantskLogic.r4081_condition():
            # a58 # r4081
            jump giantsk_s2

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s8_r4082}' if giantskLogic.r4082_condition():
            # a59 # r4082
            jump giantsk_s3

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s8_r4083}' if giantskLogic.r4083_condition():
            # a60 # r4083
            jump giantsk_s2

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s8_r4084}' if giantskLogic.r4084_condition():
            # a61 # r4084
            jump giantsk_s3

        '"Co powiesz na TEN szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#giantsk_s8_r4085}' if giantskLogic.r4085_condition():
            # a62 # r4085
            jump morte_s73  # EXTERN

        'Zostaw ten szkielet w spokoju.{#giantsk_s8_r4078}':
            # a63 # r4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9: # from 0.3 1.1 8.0 8.1
    nr 'Podejrzewasz, że zatarcie wzoru runów wzdłuż płyty piersiowej mogłoby rozplątać zaklęcia, ale wygląda na to, że to nie jest takie łatwe… Wzór jest skomplikowany, a zarysowanie nie tych runów, co trzeba, mogłoby ożywić szkielet.{#giantsk_s9_1}'

    menu:
        'Przejrzyj Księgę Kości i Popiołu i zobacz, czy nie da się tych zaklęć jakoś przełamać.{#giantsk_s9_r64296}' if giantskLogic.r64296_condition():
            # a64 # r64296
            jump giantsk_s16

        'Najpierw zamaż runy tworzące zaklęcie pancerza, potem zaklęcie nekromanckie, a potem strażnicze.{#giantsk_s9_r4086}':
            # a65 # r4086
            jump giantsk_s10

        'Najpierw zamaż runy tworzące zaklęcie strażnicze, potem wypowiedz runy od tyłu, unieszkodliwiając w ten sposób najpierw zaklęcie nekromanckie, a potem zaklęcie pancerza.{#giantsk_s9_r4087}' if giantskLogic.r4087_condition():
            # a66 # r4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        'Najpierw zamaż runy tworzące zaklęcie strażnicze, potem wypowiedz runy od tyłu, unieszkodliwiając w ten sposób najpierw zaklęcie nekromanckie, a potem zaklęcie pancerza.{#giantsk_s9_r4088}' if giantskLogic.r4088_condition():
            # a67 # r4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s9_r4089}' if giantskLogic.r4089_condition():
            # a68 # r4089
            jump giantsk_s2

        'Spróbuj wyciągnąć miecz z rąk szkieletu.{#giantsk_s9_r4090}' if giantskLogic.r4090_condition():
            # a69 # r4090
            jump giantsk_s3

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s9_r4091}' if giantskLogic.r4091_condition():
            # a70 # r4091
            jump giantsk_s2

        'Spróbuj wyciągnąć nity przytrzymujące zbroję na szkielecie.{#giantsk_s9_r4092}' if giantskLogic.r4092_condition():
            # a71 # r4092
            jump giantsk_s3

        '"Co powiesz na TEN szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#giantsk_s9_r4093}' if giantskLogic.r4093_condition():
            # a72 # r4093
            jump morte_s73  # EXTERN

        'Zostaw ten szkielet w spokoju.{#giantsk_s9_r4094}':
            # a73 # r4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10: # from 9.1 16.0
    nr 'Kiedy zaczynasz majstrować przy runach dekorujących płytę piersiową, w całej Kostnicy odzywa się dzwon… a szkielet budzi się z szybkością błyskawicy i podnosi swój miecz do ataku!{#giantsk_s10_1}'

    menu:
        '"Lepiej było zostać martwym, Kościaku…"{#giantsk_s10_r4095}':
            # a74 # r4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11: # from 9.2 16.1
    nr 'Z początku zadanie jest trudne i stresujące, ale powoli twój umysł zaczyna się koncentrować, a runy zaczynają się rozplatać. Po kilku minutach szkielet zostaje pozbawiony zaklęć, które trzymały go w kupie. Pada na ziemię przy grzechocie kości, wydając przy tym ogromny huk!{#giantsk_s11_1}'

    menu:
        '"Przeklęta kupa kości…!"{#giantsk_s11_r4096}':
            # a75 # r4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12: # from 11.0
    nr 'Czekasz przez chwilę, ale wygląda na to, że nikt nie zareagował na huk spadającego szkieletu. W pośpiechu przeszukujesz jego części leżące na podłodze. Większość z nich jest zbyt ciężka, żebyś mógł ich użyć, ale w końcu znajdujesz kawałek napierśnika, na którym znajduje się kilka nieuszkodzonych zaklęć. Masz przeczucie, że to może ci się przydać.{#giantsk_s12_1}'

    menu:
        '"Tylko to sobie wezmę…"{#giantsk_s12_r4097}':
            # a76 # r4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13: # from 9.3 16.2
    nr 'Tym razem unieszkodliwienie zaklęć jest łatwiejsze, a runy rozplątują się szybko. Po paru minutach ogromny szkielet jest już pozbawiony zaklęć, które go utrzymywały w całości. Mając w pamięci, co się stało przy pierwszym kościotrupie, łapiesz go zanim zdąży upaść i powoli opuszczasz na ziemię."{#giantsk_s13_1}'

    menu:
        '"Zobaczmy, co tu mamy tym razem…"{#giantsk_s13_r4098}':
            # a77 # r4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14: # from 13.0
    nr 'Szybko przeszukujesz to, co zostało ze szkieletu i znowu odnajdujesz część napierśnika… Tak jak wcześniej, także na niej znajduje się fragment nieuszkodzonego zaklęcia. Może ci się to kiedyś do czegoś przydać.{#giantsk_s14_1}'

    menu:
        '"Tylko to sobie wezmę…"{#giantsk_s14_r4099}' if giantskLogic.r4099_condition():
            # a78 # r4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        '"Tylko to sobie wezmę…"{#giantsk_s14_r4100}' if giantskLogic.r4100_condition():
            # a79 # r4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        '"Tylko to sobie wezmę…"{#giantsk_s14_r4101}' if giantskLogic.r4101_condition():
            # a80 # r4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15: # from 7.0
    nr 'Spoglądasz do księgi i porównujesz wykresy ze znakami na płycie piersiowej. Z tego, co rozumiesz, runy składają się na mniejsze zaklęcie pancerza, ale kilka runów w kształcie czaszek i kuliste wzory wzdłuż brzegów zbroi każą ci podejrzewać, że w runy wpleciono także kilka potężniejszych zaklęć nekromanckich i strażniczych. Teraz nie masz już wątpliwości, że dotknięcie szkieletu obudzi go… i zmusi do obrony.{#giantsk_s15_1}'

    menu:
        'Przejrzyj Księgę Kości i Popiołu i zobacz, czy nie da się tych zaklęć jakoś przełamać.{#giantsk_s15_r64298}':
            # a81 # r64298
            jump giantsk_s16

        'Zostaw runy w spokoju i jeszcze raz uważnie przyjrzyj się szkieletowi.{#giantsk_s15_r64299}':
            # a82 # r64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16: # from 9.0 15.0
    nr 'Z tego, co możesz wyczytać w Księdze, wynika, że zaklęcie pancerza odnosi się tylko do napierśnika, zaklęcie nekromanckie pozwala ożywić szkielet, a zaklęcie strażnicze sprawia, że jego postrzeganie otoczenia jest ograniczone. Domyślasz się, że gdybyś spróbował go dotknąć, to szkielet wziąłby to za atak… chyba że najpierw udałoby ci się sprawić, żeby przestał cię zauważać.{#giantsk_s16_1}'

    menu:
        'Najpierw zamaż runy tworzące zaklęcie pancerza, potem zaklęcie nekromanckie, a potem strażnicze.{#giantsk_s16_r64300}':
            # a83 # r64300
            jump giantsk_s10

        'Najpierw zamaż runy tworzące zaklęcie strażnicze, potem wypowiedz runy od tyłu, unieszkodliwiając w ten sposób najpierw zaklęcie nekromanckie, a potem zaklęcie pancerza.{#giantsk_s16_r64301}' if giantskLogic.r64301_condition():
            # a84 # r64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        'Najpierw zamaż runy tworzące zaklęcie strażnicze, potem wypowiedz runy od tyłu, unieszkodliwiając w ten sposób najpierw zaklęcie nekromanckie, a potem zaklęcie pancerza.{#giantsk_s16_r64302}' if giantskLogic.r64302_condition():
            # a85 # r64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        'Zostaw runy w spokoju i jeszcze raz uważnie przyjrzyj się szkieletowi.{#giantsk_s16_r64303}':
            # a86 # r64303
            jump giantsk_s4
