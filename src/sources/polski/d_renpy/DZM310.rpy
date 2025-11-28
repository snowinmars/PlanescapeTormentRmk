init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm310_logic import Zm310Logic
    zm310Logic = Zm310Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM310.DLG
# ###


# s0 # say6495
label zm310_s0: # - # IF ~  Global("Oinosian","GLOBAL",0)
    nr 'Ten ponownie ożywiony truposz ma zszyte wargi i numer "310" wyryty na czole; odór formaliny wypełnia wszystko wokół niego. Podnosi swe pozbawione życia oczy na ciebie, kiedy blokujesz mu drogę.{#zm310_s0_1}'

    menu:
        '"Więc jak… widziałeś, aby działo się tu coś interesującego?"{#zm310_s0_r6499}' if zm310Logic.r6499_condition():
            # a0 # r6499
            $ zm310Logic.r6499_action()
            jump zm310_s1

        '"Więc jak… widziałeś, aby działo się tu coś interesującego?"{#zm310_s0_r6500}' if zm310Logic.r6500_condition():
            # a1 # r6500
            jump zm310_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm310_s0_r6501}' if zm310Logic.r6501_condition():
            # a2 # r6501
            jump zm310_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm310_s0_r6502}' if zm310Logic.r6502_condition():
            # a3 # r6502
            $ zm310Logic.r6502_action()
            jump zm310_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zm310_s0_r6503}':
            # a4 # r6503
            jump zm310_dispose

        'Zostaw truposza w spokoju.{#zm310_s0_r6504}':
            # a5 # r6504
            jump zm310_dispose


# s1 # say6496
label zm310_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.{#zm310_s1_1}'

    menu:
        'Zostaw truposza w spokoju.{#zm310_s1_r6505}':
            # a6 # r6505
            jump zm310_dispose


# s2 # say6498
label zm310_s2: # from 0.3
    nr 'Przez chwilę sądzisz, że truposz jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania… ale nagle dostrzegasz prawdziwe cierpienie wyryte na jego twarzy i czujesz jednocześnie jego rozpacz tak przejmującą, że domyślasz się, iż dusza z pewnością wróciła do swej dawnej powłoki.{#zm310_s2_1}'

    menu:
        '"Chcę zadać pytanie…"{#zm310_s2_r6506}':
            # a7 # r6506
            jump zm310_s3

        'Zostaw truposza w spokoju.{#zm310_s2_r9657}':
            # a8 # r9657
            jump zm310_s17


# s3 # say9642
label zm310_s3: # from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
    nr 'Mówi wolno, monotonnie, załamanym i pozbawionym nadziei głosem. Nawet teraz nie da się go prawie odróżnić od pozbawionego duszy zombiaka. "Czego pragniesz się dowiedzieć, mój panie?"{#zm310_s3_1}'

    menu:
        '"Kim jesteś?"{#zm310_s3_r9658}':
            # a9 # r9658
            jump zm310_s4

        '"Skąd pochodzisz?"{#zm310_s3_r9659}':
            # a10 # r9659
            jump zm310_s5

        '"W jaki sposób się tutaj znalazłeś? To znaczy, jako zombie?"{#zm310_s3_r9660}':
            # a11 # r9660
            jump zm310_s6

        '"Gdzie ty… gdzie zamieszkuje twoja dusza… teraz?"{#zm310_s3_r9661}':
            # a12 # r9661
            jump zm310_s7

        '"Skąd u ciebie taka rozpacz?"{#zm310_s3_r9662}':
            # a13 # r9662
            jump zm310_s8

        '"Co wiesz o tym miejscu?"{#zm310_s3_r9663}':
            # a14 # r9663
            jump zm310_s9

        '"Czy znasz kogoś o imieniu Farod?"{#zm310_s3_r9664}' if zm310Logic.r9664_condition():
            # a15 # r9664
            jump zm310_s10

        '"Nic to, nieważne."{#zm310_s3_r9665}':
            # a16 # r9665
            jump zm310_s17


# s4 # say9643
label zm310_s4: # from 3.0
    nr 'Duch przemawia tak cichutko, że musisz wytężyć słuch, aby go usłyszeć; usta truposza prawie się nie ruszają wymawiając poszczególne słowa. "Jestem nikt, mój panie; nędzny robak, który rozpaczliwie uczepił się Wieży Przemijania w Oinos. Chociaż niegdyś zwałem się Arabhiem, mój panie… bardzo, bardzo dawno."{#zm310_s4_1}'

    menu:
        '"Wieża Przemijania?"{#zm310_s4_r9666}':
            # a17 # r9666
            jump zm310_s13

        '"Oinos?"{#zm310_s4_r9667}':
            # a18 # r9667
            jump zm310_s7

        '"Mam następne pytanie…"{#zm310_s4_r9668}':
            # a19 # r9668
            jump zm310_s3

        '"Nic więcej nie chcę wiedzieć. Żegnaj."{#zm310_s4_r9669}':
            # a20 # r9669
            jump zm310_s17


# s5 # say9644
label zm310_s5: # from 3.1
    nr '"Mieszkałem w Sigil, mój panie. W Ulu. Nie było to takie straszne miejsce, jak niegdyś sądziłem, zwłaszcza, że teraz mój dom jest… w Oinos." Trup mruga oczami, tak wolno, że przez chwilę wydawało ci się, że zamknął oczy.{#zm310_s5_1}'

    menu:
        '"Ul?"{#zm310_s5_r9670}':
            # a21 # r9670
            jump zm310_s12

        '"Oinos?"{#zm310_s5_r9671}':
            # a22 # r9671
            jump zm310_s7

        '"Mam następne pytanie…"{#zm310_s5_r9672}':
            # a23 # r9672
            jump zm310_s3

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm310_s5_r9673}':
            # a24 # r9673
            jump zm310_s17


# s6 # say9645
label zm310_s6: # from 3.2
    nr '"Zostałem zamordowany, mój panie, przez bandytów. Upiłem się i szedłem zaułkami Ula, zataczając się i potykając. Zgubiłem drogę i w końcu padłem ofiarą bandy rzezimieszków. No i dobrze; moje życie było prawdopodobnie mniej warte niż te kilka miedziaków, które jakiś Zbieracz mógł dostać za moje zwłoki."{#zm310_s6_1}'

    menu:
        '"Skądże tak marne zdanie o własnym życiu?"{#zm310_s6_r9674}':
            # a25 # r9674
            jump zm310_s16

        '"Zbieracz?"{#zm310_s6_r9675}':
            # a26 # r9675
            jump zm310_s15

        '"Mam następne pytanie…"{#zm310_s6_r9676}':
            # a27 # r9676
            jump zm310_s3

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm310_s6_r9677}':
            # a28 # r9677
            jump zm310_s17


# s7 # say9646
label zm310_s7: # from 3.3 4.1 5.1 8.0 12.0
    nr 'Duch na chwilę zamyka oczy, a jego ciałem wstrząsają dreszcze. "Straszliwy Oinos, mój panie. Na Szarym Pustkowiu. To właśnie tam zamknięto moją duszę, w cieniu Khin-Oin, Wieży Przemijania."{#zm310_s7_1}'

    menu:
        '"Opowiedz mi więcej o tym… Oinos."{#zm310_s7_r9678}':
            # a29 # r9678
            jump zm310_s11

        '"Khin-Oin?"{#zm310_s7_r9679}':
            # a30 # r9679
            jump zm310_s13

        '"Mam następne pytanie…"{#zm310_s7_r9680}':
            # a31 # r9680
            jump zm310_s3

        '"Nic więcej nie chcę wiedzieć. Żegnaj."{#zm310_s7_r9681}':
            # a32 # r9681
            jump zm310_s17


# s8 # say9647
label zm310_s8: # from 3.4
    nr '"Nic innego mi nie pozostało, mój panie. Uwięziony na wieczność w przeklętej pustce Oinos, oto czym jestem. Dla takich jak ja nie ma nadziei." Duch wydaje się uderzać w jeszcze bardziej patetyczne tony, a jego ramiona zwisają pod ciężarem jego niedoli.{#zm310_s8_1}'

    menu:
        '"Oinos?"{#zm310_s8_r9682}':
            # a33 # r9682
            jump zm310_s7

        '"Rozumiem. Mam następne pytanie…"{#zm310_s8_r9683}':
            # a34 # r9683
            jump zm310_s3

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm310_s8_r9684}':
            # a35 # r9684
            jump zm310_s17


# s9 # say9648
label zm310_s9: # from 3.5 15.0
    nr '"Bardzo mało, mój panie; tyle że przywozi się tutaj zmarłych na pochówek lub do kremacji… albo jako pracowników, jak było z moim ciałem."{#zm310_s9_1}'

    menu:
        '"Teraz rozumiem. Następne pytanie…"{#zm310_s9_r9685}':
            # a36 # r9685
            jump zm310_s3

        '"Nic więcej nie chcę wiedzieć. Żegnaj."{#zm310_s9_r9686}':
            # a37 # r9686
            jump zm310_s17


# s10 # say9649
label zm310_s10: # from 3.6
    nr 'Duch powoli kręci przecząco głową z boku na bok. "Nie, mój panie. Nie znałem nikogo o tym imieniu. Przykro mi, mój panie."{#zm310_s10_1}'

    menu:
        '"Nie ma takiej potrzeby. Mam następne pytanie…"{#zm310_s10_r9687}':
            # a38 # r9687
            jump zm310_s3

        '"A zatem żegnaj."{#zm310_s10_r9688}':
            # a39 # r9688
            jump zm310_s17


# s11 # say9650
label zm310_s11: # from 7.0
    nr '"Niewiele można o tym powiedzieć. Jest to ziemia mojego Pana, Lorda Khin-Oin… pełna udręki i chorób, robactwa, które toczy zarówno ciało jak i duszę. Jest to miejsce całkowitej beznadziei."{#zm310_s11_1}'

    menu:
        '"Kim jest ten… „Pan“?"{#zm310_s11_r9689}':
            # a40 # r9689
            jump zm310_s14

        '"Khin-Oin?"{#zm310_s11_r9690}':
            # a41 # r9690
            jump zm310_s13

        '"Mam następne pytanie…"{#zm310_s11_r9691}':
            # a42 # r9691
            jump zm310_s3

        '"Tak to z pewnością brzmi. Żegnaj, duszo."{#zm310_s11_r9692}':
            # a43 # r9692
            jump zm310_s17


# s12 # say9651
label zm310_s12: # from 5.0
    nr '"Tak, mój panie. Nędzne to miejsce, ale nie tak straszne jak Oinos."{#zm310_s12_1}'

    menu:
        '"Oinos?"{#zm310_s12_r9693}':
            # a44 # r9693
            jump zm310_s7

        '"Mam następne pytanie…"{#zm310_s12_r9694}':
            # a45 # r9694
            jump zm310_s3

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm310_s12_r9695}':
            # a46 # r9695
            jump zm310_s17


# s13 # say9652
label zm310_s13: # from 4.0 7.1 11.1 14.0
    nr '"Tak, panie. Jest to potężna wieża, o wiele wyższa niż najwyższa wieża w Sigil. Ma wygląd kości, podobna do kręgosłupa jakiegoś gigantycznego stwora. To właśnie w niej haruję, naprawiając szkody wyrządzone przez armie nieprzyjaciół mojego Pana, rywalizujących z nim książąt."{#zm310_s13_1}'

    menu:
        '"Kim jest ten… „Pan“?"{#zm310_s13_r9696}':
            # a47 # r9696
            jump zm310_s14

        '"Rozumiem. Mam następne pytanie…"{#zm310_s13_r9697}':
            # a48 # r9697
            jump zm310_s3

        '"Rozumiem. Odchodzę już, duszo; żegnaj."{#zm310_s13_r9698}':
            # a49 # r9698
            jump zm310_s17


# s14 # say9653
label zm310_s14: # from 11.0 13.0
    nr '"Znam go tylko jako Pana, Lorda Khin-Oin. Jest to szatański książę - nienawistnik o przeraźliwej mocy. To on właśnie ma moją duszę, i na zawsze ją będzie miał, moją duszyczkę skazaną na śmierć pod jego stopami aż do chwili, gdy wieczność skaże ją na Zapomnienie."{#zm310_s14_1}'

    menu:
        '"Opowiedz mi o tym „Khin-Oin“."{#zm310_s14_r9699}':
            # a50 # r9699
            jump zm310_s13

        '"Mam następne pytanie…"{#zm310_s14_r9700}':
            # a51 # r9700
            jump zm310_s3

        '"Nic więcej nie chcę wiedzieć. Żegnaj."{#zm310_s14_r9701}':
            # a52 # r9701
            jump zm310_s17


# s15 # say9654
label zm310_s15: # from 6.1
    nr '"Tak, mój panie, Zbieracz. To ci, którzy zbierają zmarłych w Sigil i odwożą ich do Kostnicy - w której to właśnie stoimy teraz - za niewielką opłatą." Przez chwilę duch spoziera na otoczenie, potem cichutko wzdycha.{#zm310_s15_1}'

    menu:
        '"Co wiesz o tej Kostnicy?"{#zm310_s15_r9702}':
            # a53 # r9702
            jump zm310_s9

        '"Rozumiem. Mam do ciebie następne pytanie…"{#zm310_s15_r9703}':
            # a54 # r9703
            jump zm310_s3

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm310_s15_r9704}':
            # a55 # r9704
            jump zm310_s17


# s16 # say9655
label zm310_s16: # from 6.0
    nr '"Nie chciałbym o tym mówić, mój panie. Nie warto." Duch wydaje się nieugięty w tej kwestii.{#zm310_s16_1}'

    menu:
        '"Doskonale. W takim razie mam następne pytanie…"{#zm310_s16_r9705}':
            # a56 # r9705
            jump zm310_s3

        '"A zatem żegnaj."{#zm310_s16_r9706}':
            # a57 # r9706
            jump zm310_s17


# s17 # say9656
label zm310_s17: # from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
    nr 'Nie zdajesz sobie sprawy z tego, że duch opuścił już ciało aż do momentu gdy zombie, powłócząc nogami, wraca do swoich obowiązków.{#zm310_s17_1}'

    jump zm310_dispose


# s18 # say20102
label zm310_s18: # - # IF ~  Global("Oinosian","GLOBAL",1)
    nr 'Wydaje się, że truposz zapada się w sobie, garbiąc się pod ciężarem rozpaczy własnej duszy.{#zm310_s18_1}'

    menu:
        '"Mam kilka pytań…"{#zm310_s18_r20103}':
            # a58 # r20103
            jump zm310_s3

        '"Tylko tędy przechodziłem. Żegnaj."{#zm310_s18_r20104}':
            # a59 # r20104
            jump zm310_dispose
