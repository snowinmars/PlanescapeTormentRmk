init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.deionarra_logic import DeionarraLogic
    deionarraLogic = DeionarraLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDEIONS.DLG
# ###


# s0 # say69459
label deionarra_s0: # from 5.2 9.5 10.8 11.3 12.3 13.4 14.2 25.3 27.4 28.4 30.2 31.3 32.2 41.4 41.5 42.3 42.4 43.4 44.4
    nr '"Będę na ciebie czekać w komnatach śmierci, Najdroższy…" Uśmiecha się smutno, zamyka oczy, i z cichym westchnieniem, znika.~ [DEN008B]{#deionarra_s0_}'

    menu:
        'Odejdź.{#deionarra_s0_r701}' if deionarraLogic.r701_condition():
            # a0 # r701
            $ deionarraLogic.r701_action()
            jump deionarra_dispose

        'Odejdź.{#deionarra_s0_r699}' if deionarraLogic.r699_condition():
            # a1 # r699
            $ deionarraLogic.r699_action()
            jump morte_s105  # EXTERN

        'Odejdź.{#deionarra_s0_r9616}' if deionarraLogic.r9616_condition():
            # a2 # r9616
            $ deionarraLogic.r9616_action()
            jump deionarra_dispose


# s1 # say5
label deionarra_s1: # - # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Widzisz przed sobą uderzająco piękną zjawę. Ma skrzyżowane ramiona i zamknięte oczy. Posiada długie, opadające włosy, suknia jej zaś zdaje się być poruszana przez eteryczne podmuchy. Gdy na nią patrzysz, dostrzegasz, iż porusza się nieznacznie i mruga oczami.{#deionarra_s1_}'

    menu:
        '"Witaj…?"{#deionarra_s1_r703}':
            # a3 # r703
            jump deionarra_s2

        'Poczekaj.{#deionarra_s1_r704}':
            # a4 # r704
            jump deionarra_s2

        'Odejdź, zanim zjawa zyska pełną świadomość.{#deionarra_s1_r705}':
            # a5 # r705
            $ deionarraLogic.r705_action()
            jump deionarra_dispose


# s2 # say706
label deionarra_s2: # from 1.0 1.1
    nr 'Otwiera powoli oczy i, jakby niepewna, gdzie się znajduje, zaczyna nimi mrugać zaskoczona. Rozgląda się powoli wokół i dostrzega ciebie. Spokój na jej twarzy przeistacza się momentalnie w gniew. "Ty! Cóż *cię* tutaj sprowadza?! Zjawiłeś się, by na własne oczy ujrzeć rozpacz, której sam byłeś sprawcą? Nawet będąc w otchłani śmierci, wciąż mam w zanadrzu kilka cierni przeznaczonych dla ciebie…" Głos jej przechodzi w syk. "…„Najdroższy“."~ [DEN001]{#deionarra_s2_}'

    menu:
        '"Kim jesteś?"{#deionarra_s2_r707}':
            # a6 # r707
            $ deionarraLogic.r707_action()
            jump deionarra_s3

        '"„Najdroższy“? Czy ja cię znam?"{#deionarra_s2_r708}' if deionarraLogic.r708_condition():
            # a7 # r708
            $ deionarraLogic.r708_action()
            jump deionarra_s3

        '"„Najdroższy“? Czy ja cię znam?"{#deionarra_s2_r709}' if deionarraLogic.r709_condition():
            # a8 # r709
            $ deionarraLogic.r709_action()
            jump deionarra_s3


# s3 # say710
label deionarra_s3: # from 2.0 2.1 2.2 10.0
    nr 'Zjawa wykonuje rękami błagalny gest. "Jak to możliwe, że złodzieje umysłu nieustannie wykradają imię me spośród twoich wspomnień? Nie *przypominasz* mnie sobie, Najdroższy?" Zjawa wyciąga ręce. "Pomyśl…" Jej głos ponownie przybiera ton pełen desperacji. "…imię *Deionarra* musi budzić w tobie jakieś wspomnienia."{#deionarra_s3_}'

    menu:
        '"Nie, przykro mi. Utraciłem wspomnienia."{#deionarra_s3_r711}':
            # a9 # r711
            jump deionarra_s6

        'Kłamstwo: "Tak… Tak, imię to brzmi *naprawdę* znajomo."{#deionarra_s3_r712}':
            # a10 # r712
            $ deionarraLogic.r712_action()
            jump deionarra_s7

        '"*Sądzę*, że wyczuwam jakieś przebłyski w mej pamięci… Powiedz mi więcej. Być może twe słowa usuną zasłonę z mego umysłu, Deionarro."{#deionarra_s3_r713}' if deionarraLogic.r713_condition():
            # a11 # r713
            jump deionarra_s9

        '"*Sądzę*, że wyczuwam jakieś przebłyski w mej pamięci… Powiedz mi więcej. Być może twe słowa usuną zasłonę z mego umysłu, Deionarro."{#deionarra_s3_r714}' if deionarraLogic.r714_condition():
            # a12 # r714
            jump deionarra_s9

        '"Nie budzi. Żegnaj… Deionarro."{#deionarra_s3_r1308}' if deionarraLogic.r1308_condition():
            # a13 # r1308
            jump deionarra_s15

        '"Nie budzi. Żegnaj… Deionarro."{#deionarra_s3_r6080}' if deionarraLogic.r6080_condition():
            # a14 # r6080
            jump deionarra_s26


# s4 # say715
label deionarra_s4: # - # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Deionarra materializuje się ponownie… Tym razem jej twarz przepełnia desperacja, ramiona zaś trzyma ona wyciągnięte tak, jakby chciała czegoś dosięgnąć. Gdy już pojawia się w pełni, wyraz desperacji na jej twarzy przemienia się w gniew. "Znowu się pojawiłeś! Cóż to sprawia, że nie przestajesz mnie dręczyć?"~ [DEN002]{#deionarra_s4_}'

    menu:
        '"Wiele jest rzeczy, o których bym się chciał dowiedzieć. Mam kilka pytań do ciebie…"{#deionarra_s4_r765}':
            # a15 # r765
            jump deionarra_s33

        '"Nie będę cię już więcej dręczył. Żegnaj."{#deionarra_s4_r1307}':
            # a16 # r1307
            jump deionarra_s26


# s5 # say716
label deionarra_s5: # - # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Deionarra materializuje się ponownie… Tym razem twarz jej przepełnia desperacja, zaś ramiona trzyma ona wyciągnięte tak, jakby chciała czegoś dosięgnąć. Gdy już pojawia się w pełni, wyraz desperacji na jej twarzy przemienia się w ulgę. "Najdroższy… Wróciłeś do mnie! Czy to możliwe, że odzyskałeś wspomnienia?"~ [DEN003A]{#deionarra_s5_}'

    menu:
        '"Mam do ciebie kilka pytań…"{#deionarra_s5_r766}':
            # a17 # r766
            jump deionarra_s10

        '"Jeszcze nie. Żegnaj, Deionorro."{#deionarra_s5_r767}' if deionarraLogic.r767_condition():
            # a18 # r767
            jump deionarra_s15

        '"Jeszcze nie. Żegnaj, Deionarro."{#deionarra_s5_r1309}' if deionarraLogic.r1309_condition():
            # a19 # r1309
            jump deionarra_s0


# s6 # say717
label deionarra_s6: # from 3.0
    nr '"A więc jest tak, jak się obawiałam. Przestałam dla ciebie istnieć… i to, co kiedyś było dla ciebie źródłem kłopotów, teraz stało się wymówką, by odrzucić mnie tak, jak odrzuciłeś pamięć o mnie!"{#deionarra_s6_}'

    menu:
        '"„Źródło kłopotów?“, „Odrzucić cię?“ Nie znam cię, zjawo… Me wspomnienia odeszły. Powiedz mi… kim jesteś? Co o mnie wiesz?"{#deionarra_s6_r720}':
            # a20 # r720
            jump deionarra_s11

        '"*Sądzę*, że wyczuwam jakieś przebłyski w mej pamięci… Powiedz mi więcej. Być może twe słowa usuną zasłonę z mego umysłu, Deionarro."{#deionarra_s6_r718}' if deionarraLogic.r718_condition():
            # a21 # r718
            jump deionarra_s9

        '"*Sądzę*, że wyczuwam jakieś przebłyski w mej pamięci… Powiedz mi więcej. Być może twe słowa usuną zasłonę z mego umysłu, Deionarro."{#deionarra_s6_r719}' if deionarraLogic.r719_condition():
            # a22 # r719
            jump deionarra_s9

        '"Skoro cię już wcześniej odrzuciłem, to najwyraźniej znów zmuszony jestem to zrobić. Żegnaj, zjawo."{#deionarra_s6_r721}' if deionarraLogic.r721_condition():
            # a23 # r721
            jump deionarra_s15

        '"Muszę już iść, Deionarro. Żegnaj."{#deionarra_s6_r1310}' if deionarraLogic.r1310_condition():
            # a24 # r1310
            jump deionarra_s15

        '"Skoro cię już wcześniej odrzuciłem, to najwyraźniej znów zmuszony jestem to zrobić. Żegnaj, zjawo."{#deionarra_s6_r1311}' if deionarraLogic.r1311_condition():
            # a25 # r1311
            jump deionarra_s26

        '"Muszę już iść, Deionarro. Żegnaj."{#deionarra_s6_r764}' if deionarraLogic.r764_condition():
            # a26 # r764
            jump deionarra_s26


# s7 # say722
label deionarra_s7: # from 3.1
    nr '"Tak…" Wydaje się być pełna nadziei. "Jakie wspomnienia budzi w tobie me imię?{#deionarra_s7_}'

    menu:
        '"Żadne. Skłamałem."{#deionarra_s7_r700}':
            # a27 # r700
            $ deionarraLogic.r700_action()
            jump deionarra_s8

        'Kłamstwo: "Imię twe przywołuje namiętne wspomnienia, jednak ich istota jest dla mnie niejasna. Może gdybyś powiedziała mi więcej…"{#deionarra_s7_r702}':
            # a28 # r702
            $ deionarraLogic.r702_action()
            jump deionarra_s9

        '"Nie jestem pewien… Ale wyczuwam jakieś przebłyski w mej pamięci, gdy rozmawiamy. Powiedz mi więcej. Być może twe słowa usuną zasłonę z mego umysłu, Deionarro."{#deionarra_s7_r723}' if deionarraLogic.r723_condition():
            # a29 # r723
            jump deionarra_s9

        '"Nie jestem pewien… Ale wyczuwam jakieś przebłyski w mej pamięci, gdy rozmawiamy. Powiedz mi więcej. Być może twe słowa usuną zasłonę z mego umysłu, Deionarro."{#deionarra_s7_r724}' if deionarraLogic.r724_condition():
            # a30 # r724
            jump deionarra_s9

        '"Muszę już iść, Deionarro. Żegnaj."{#deionarra_s7_r1312}' if deionarraLogic.r1312_condition():
            # a31 # r1312
            jump deionarra_s15

        '"Muszę już iść, Deionarro. Żegnaj."{#deionarra_s7_r6084}' if deionarraLogic.r6084_condition():
            # a32 # r6084
            jump deionarra_s26


# s8 # say725
label deionarra_s8: # from 7.0 47.2
    nr 'Twarz Deionarry przeistacza się w maskę wściekłości. "Ty parszywy psie! Zdrajco serca mego! Życzyłabym ci, byś został przeklęty… gdyby nie to, że udręka ściga cię w każdym twym wcieleniu bez pomocy mych klątw! Odejdź!" Krzyżuje ramiona i zamyka oczy.{#deionarra_s8_}'

    menu:
        '"Dobrze…"{#deionarra_s8_r747}' if deionarraLogic.r747_condition():
            # a33 # r747
            $ deionarraLogic.r747_action()
            jump deionarra_dispose

        '"Dobrze…"{#deionarra_s8_r1313}' if deionarraLogic.r1313_condition():
            # a34 # r1313
            $ deionarraLogic.r1313_action()
            jump morte_s105  # EXTERN

        'Odejdź.{#deionarra_s8_r13255}' if deionarraLogic.r13255_condition():
            # a35 # r13255
            $ deionarraLogic.r13255_action()
            jump deionarra_dispose


# s9 # say726
label deionarra_s9: # from 3.2 3.3 6.1 6.2 7.1 7.2 7.3
    nr '"Och, w końcu los okazuje miłosierdzie! Nawet śmierć nie jest w stanie wymazać mnie z twego umysłu, Najdroższy! Nie rozumiesz? Twe wspomnienia powrócą! Powiedz mi, jak mogę ci pomóc, a uczynię to!"{#deionarra_s9_}'

    menu:
        '"Czy wiesz, kim jestem?"{#deionarra_s9_r729}':
            # a36 # r729
            jump deionarra_s11

        '"Możesz mi powiedzieć, gdzie jestem?"{#deionarra_s9_r730}':
            # a37 # r730
            jump deionarra_s12

        '"Muszę się wydostać z tego miejsca. Możesz mi pomóc?"{#deionarra_s9_r731}' if deionarraLogic.r731_condition():
            # a38 # r731
            jump deionarra_s43

        '"Muszę się wydostać z tego miejsca. Możesz mi pomóc?"{#deionarra_s9_r732}' if deionarraLogic.r732_condition():
            # a39 # r732
            jump deionarra_s44

        '"Nie w tej chwili, Deionarro. Ale jeszcze tu wrócę. Żegnaj."{#deionarra_s9_r1314}' if deionarraLogic.r1314_condition():
            # a40 # r1314
            jump deionarra_s15

        '"Nie w tej chwili, Deionarro. Ale jeszcze tu wrócę. Żegnaj."{#deionarra_s9_r6127}' if deionarraLogic.r6127_condition():
            # a41 # r6127
            jump deionarra_s0


# s10 # say733
label deionarra_s10: # from 5.0 11.1 12.1 13.1 14.0 25.1 27.2 28.0 30.0 31.1 32.0 34.1 35.1 36.0 41.1 42.0 43.1 44.2 74.0
    nr '"Czegoż chcesz się dowiedzieć?"{#deionarra_s10_}'

    menu:
        '"Kim jesteś?"{#deionarra_s10_r734}':
            # a42 # r734
            jump deionarra_s3

        '"Możesz mi powiedzieć, kim jestem?"{#deionarra_s10_r735}':
            # a43 # r735
            jump deionarra_s11

        '"Możesz mi powiedzieć, gdzie jestem?"{#deionarra_s10_r736}':
            # a44 # r736
            jump deionarra_s12

        '"Muszę się wydostać z tego miejsca. Możesz mi pomóc?"{#deionarra_s10_r737}' if deionarraLogic.r737_condition():
            # a45 # r737
            jump deionarra_s43

        '"Muszę się wydostać z tego miejsca. Możesz mi pomóc?"{#deionarra_s10_r738}' if deionarraLogic.r738_condition():
            # a46 # r738
            jump deionarra_s44

        '"Co to za wizja, o której wcześniej mówiłaś?"{#deionarra_s10_r768}' if deionarraLogic.r768_condition():
            # a47 # r768
            jump deionarra_s22

        '"Czy jesteś w stanie zdjąć klątwę, którą na mnie nałożyłaś?"{#deionarra_s10_r1315}' if deionarraLogic.r1315_condition():
            # a48 # r1315
            jump deionarra_s41

        '"Na razie niczego, Deionarro. Ale jeszcze tu wrócę. Żegnaj."{#deionarra_s10_r6107}' if deionarraLogic.r6107_condition():
            # a49 # r6107
            jump deionarra_s15

        '"Na razie niczego, Deionarro. Ale jeszcze tu wrócę. Żegnaj."{#deionarra_s10_r6128}' if deionarraLogic.r6128_condition():
            # a50 # r6128
            jump deionarra_s0


# s11 # say739
label deionarra_s11: # from 6.0 9.0 10.1
    nr '"Tyś tym, którego i błogosławieństwem, i klątwą obłożono, Najdroższy. Tyś również tym, który nigdy myślom mym i sercu memu nie był zbyt odległy."{#deionarra_s11_}'

    menu:
        '"„Błogosławieństwem i klątwą obłożony“? Co przez to rozumiesz?"{#deionarra_s11_r740}':
            # a51 # r740
            jump deionarra_s13

        '"Mam do ciebie jeszcze kilka pytań…"{#deionarra_s11_r741}':
            # a52 # r741
            jump deionarra_s10

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s11_r742}' if deionarraLogic.r742_condition():
            # a53 # r742
            jump deionarra_s15

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s11_r1316}' if deionarraLogic.r1316_condition():
            # a54 # r1316
            jump deionarra_s0


# s12 # say743
label deionarra_s12: # from 9.1 10.2
    nr '"Gdzie jesteś? Jesteś przecież tu, ze mną, Najdroższy… Jak za czasów, gdy nasze życia splatały się ze sobą. Teraz zaś odgradza nas od siebie Ostateczna Granica."{#deionarra_s12_}'

    menu:
        '"„Ostateczna Granica“?"{#deionarra_s12_r744}':
            # a55 # r744
            jump deionarra_s14

        '"Mam do ciebie jeszcze kilka pytań…"{#deionarra_s12_r745}':
            # a56 # r745
            jump deionarra_s10

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s12_r746}' if deionarraLogic.r746_condition():
            # a57 # r746
            jump deionarra_s15

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s12_r792}' if deionarraLogic.r792_condition():
            # a58 # r792
            jump deionarra_s0


# s13 # say748
label deionarra_s13: # from 11.0
    nr '"Natura twego przekleństwa wydaje się być oczywista, Najdroższy. Spójrz na siebie." Wskazuje na ciebie. "Śmierć się ciebie wyrzekła. Wspomnienia cię porzuciły. Nie zatrzymasz się, by się zastanowić - dlaczego?"{#deionarra_s13_}'

    menu:
        '"Prawdę mówiąc, wciąż staram się ustalić, kim jestem. Co jeszcze możesz mi o mnie powiedzieć?"{#deionarra_s13_r749}':
            # a59 # r749
            jump deionarra_s27

        '"Mam jeszcze kilka pytań…"{#deionarra_s13_r750}':
            # a60 # r750
            jump deionarra_s10

        '"Wspomnienia odeszły… Przypuśćmy też, że śmierć się mnie wyrzekła… Czemu miałaby być to klątwa?"{#deionarra_s13_r751}':
            # a61 # r751
            jump deionarra_s25

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s13_r790}' if deionarraLogic.r790_condition():
            # a62 # r790
            jump deionarra_s15

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s13_r1318}' if deionarraLogic.r1318_condition():
            # a63 # r1318
            jump deionarra_s0


# s14 # say752
label deionarra_s14: # from 12.0
    nr 'W głosie Deionarry słychać smutek. "To bariera, której - jak się obawiam - nigdy ci się nie uda przełamać. To bariera pomiędzy twym życiem a tym, co ze mnie pozostało…"{#deionarra_s14_}'

    menu:
        '"Ro… zumiem. Może mogłabyś mi odpowiedzieć na parę innych pytań…"{#deionarra_s14_r753}':
            # a64 # r753
            jump deionarra_s10

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s14_r755}' if deionarraLogic.r755_condition():
            # a65 # r755
            jump deionarra_s15

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s14_r1319}' if deionarraLogic.r1319_condition():
            # a66 # r1319
            jump deionarra_s0


# s15 # say756
label deionarra_s15: # from 3.4 5.1 6.3 6.4 7.4 9.4 10.7 11.2 12.2 13.3 14.1 25.2 27.3 28.1 28.3 30.1 31.2 32.1 41.2 41.3 42.1 42.2 43.3 44.3 47.3
    nr '"Poczekaj chwilę… Wiele się nauczyłam, gdy z tobą podróżowałam, Najdroższy. I zachowałam to, co ty utraciłeś. Nie wyjawiłam ci wszystkiego, co wiem. Ja widzę wszystko wyraźnie… gdy ty wędrujesz po omacku w ciemności, szukając przebłysku myśli."{#deionarra_s15_}'

    menu:
        '"Cokolwiek wiesz, może to poczekać. Żegnaj."{#deionarra_s15_r757}':
            # a67 # r757
            jump deionarra_s26

        '"O czym mogłabyś mi powiedzieć, co byłoby godne mej uwagi?"{#deionarra_s15_r758}':
            # a68 # r758
            jump deionarra_s17

        '"Cóż widzi twój wzrok, czego ja nie dostrzegam?"{#deionarra_s15_r759}':
            # a69 # r759
            jump deionarra_s17

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s15_r761}':
            # a70 # r761
            jump deionarra_s26


# s16 # say762
label deionarra_s16: # from 20.0 21.0
    nr 'Deionarra wydaje się być zaskoczona. Jej głos zmienia się, przyjmując wręcz błagalny ton. "Ja… nie chciałam wymuszać na tobie przyrzeczenia, Najdroższy. Po prostu tak długo czekałam na ciebie, byś do mnie dołączył ponad…"{#deionarra_s16_}'

    menu:
        '"Skoro nie chcesz wymuszać na mnie przyrzeczenia, Deionarro, to tego nie rób. Opowiedz mi teraz o twojej wizji i nie rozmawiajmy już więcej o przyrzeczeniach i obietnicach."{#deionarra_s16_r763}':
            # a71 # r763
            jump deionarra_s40


# s17 # say769
label deionarra_s17: # from 15.1 15.2
    nr '"Czas sam rozluźnia swoje okowy, gdy chłód zapomnienia powoli wysuwa po nas swoje ręce, Najdroższy. Przebłyski rzeczy, które mają nadejść, pojawiają się bardzo licznie w moich wizjach. Widzę cię, Najdroższy. Widzę cię, gdy tu jesteś i…" Deionarra milknie.{#deionarra_s17_}'

    menu:
        '"Czemuż tak nagle zamilkłaś? Czyżby zmęczyły cię twoje tyrady?"{#deionarra_s17_r770}':
            # a72 # r770
            jump deionarra_s18

        '"Co to? Co widzisz?"{#deionarra_s17_r771}':
            # a73 # r771
            jump deionarra_s18

        '"Nie interesują mnie wizje przyszłości. Żegnaj."{#deionarra_s17_r772}':
            # a74 # r772
            jump deionarra_s19


# s18 # say773
label deionarra_s18: # from 17.0 17.1
    nr '"Widzę, co na ciebie czeka. Faluje pośród sfer, a ma swój początek w tym oto miejscu. Mam mówić o tym, co widzę?"{#deionarra_s18_}'

    menu:
        '"Powiedz mi."{#deionarra_s18_r774}':
            # a75 # r774
            jump deionarra_s20

        '"Nie chcę wiedzieć. Przyszłość ujawni się sama… gdy przyjdzie na to czas."{#deionarra_s18_r775}':
            # a76 # r775
            jump deionarra_s19


# s19 # say776
label deionarra_s19: # from 17.2 18.1
    nr '"Zawsze taki byłeś, Najdroższy. Nigdy nie zważałeś na wezwania śmierci. Czy następnym razem również je odrzucisz?" Zamyka oczy i, przy wtórze eterycznego szeptu, znika.{#deionarra_s19_}'

    menu:
        'Odejdź.{#deionarra_s19_r803}' if deionarraLogic.r803_condition():
            # a77 # r803
            $ deionarraLogic.r803_action()
            jump deionarra_dispose

        'Odejdź.{#deionarra_s19_r6085}' if deionarraLogic.r6085_condition():
            # a78 # r6085
            $ deionarraLogic.r6085_action()
            jump morte_s105  # EXTERN

        'Odejdź.{#deionarra_s19_r13256}' if deionarraLogic.r13256_condition():
            # a79 # r13256
            $ deionarraLogic.r13256_action()
            jump deionarra_dispose


# s20 # say777
label deionarra_s20: # from 18.0
    nr '"Chcę najpierw, żebyś mi coś przyrzekł. Złóż mi przyrzeczenie, że powrócisz. Że znajdziesz sposób, by mnie uratować lub do mnie dołączyć."{#deionarra_s20_}'

    menu:
        '"Ciężko jest mi uwierzyć, że kobieta, którą kiedyś kochałem, szantażuje mnie, żądając mojego przyrzeczenia w zamian za swe informacje. Nie ufasz mi, Deionarro?"{#deionarra_s20_r778}' if deionarraLogic.r778_condition():
            # a80 # r778
            jump deionarra_s16

        '"Cena tej obietnicy jest zbyt wygórowana."{#deionarra_s20_r779}':
            # a81 # r779
            jump deionarra_s21

        'Kłamstwo: "Przysięgam, że znajdę jakiś sposób, by cię uratować lub do ciebie dołączyć."{#deionarra_s20_r780}':
            # a82 # r780
            $ deionarraLogic.r780_action()
            jump deionarra_s22

        '"Nie złożę takiego przyrzeczenia, zjawo! Nie dręcz mnie przyszłością… Powiedz mi to, co chcę wiedzieć albo odejdź!"{#deionarra_s20_r781}':
            # a83 # r781
            jump deionarra_s26

        '"Zro… zrobię wszystko, co w mojej mocy."{#deionarra_s20_r782}':
            # a84 # r782
            jump deionarra_s40

        'Przyrzeczenie: "Przysięgam, że znajdę jakiś sposób, by cię uratować lub do ciebie dołączyć."{#deionarra_s20_r6093}':
            # a85 # r6093
            $ deionarraLogic.r6093_action()
            jump deionarra_s22


# s21 # say783
label deionarra_s21: # from 20.1
    nr 'Deionarra krzyżuje ręce. "Tak niewątpliwie jest, Najdroższy. Pewne jest jednak, że cena nieśmiertelności nie była zbyt wysoka. Nie znajdziesz sposobu, by zachwiać swą integralnością?"{#deionarra_s21_}'

    menu:
        '"Ciężko jest mi uwierzyć, że kobieta, którą kiedyś kochałem, szantażuje mnie, żądając mojego przyrzeczenia w zamian za swe informacje. Nie ufasz mi, Deionarro?"{#deionarra_s21_r804}':
            # a86 # r804
            jump deionarra_s16

        'Kłamstwo: "Przysięgam, że znajdę jakiś sposób, by cię uratować lub do ciebie dołączyć."{#deionarra_s21_r805}':
            # a87 # r805
            $ deionarraLogic.r805_action()
            jump deionarra_s22

        '"Nie złożę takiego przyrzeczenia, zjawo! Nie dręcz mnie przyszłością… Powiedz mi to, co chcę wiedzieć albo odejdź!"{#deionarra_s21_r806}':
            # a88 # r806
            jump deionarra_s26

        '"Zro… zrobię wszystko, co w mojej mocy."{#deionarra_s21_r807}':
            # a89 # r807
            jump deionarra_s40

        'Przyrzeczenie: "Przysięgam, że znajdę jakiś sposób, by cię uratować lub do ciebie dołączyć."{#deionarra_s21_r808}':
            # a90 # r808
            $ deionarraLogic.r808_action()
            jump deionarra_s22

        '"Być może. Żegnaj, Deionarro."{#deionarra_s21_r6094}':
            # a91 # r6094
            jump deionarra_s26


# s22 # say784
label deionarra_s22: # from 10.5 20.2 20.5 21.1 21.4 40.0
    nr '"Oto, co widzą me oczy, Najdroższy, nieskrępowane przez czasu okowy…"~ [DEN020]{#deionarra_s22_}'

    menu:
        'Poczekaj, niech kontynuuje.{#deionarra_s22_r786}':
            # a92 # r786
            $ deionarraLogic.r786_action()
            jump deionarra_s23


# s23 # say785
label deionarra_s23: # from 22.0
    nr '"Trójkę nieprzyjaciół dane ci będzie spotkać… Żaden z nich jednakże niebezpieczniejszy nie będzie niż ty w pełni swojej chwały. To cienie zła, dobra i neutralności obdarzone życiem i zniekształcone zgodnie z prawami, jakimi się sfery rządzą."~ [DEN021]{#deionarra_s23_}'

    menu:
        'Poczekaj, niech kontynuuje.{#deionarra_s23_r787}':
            # a93 # r787
            jump deionarra_s24


# s24 # say788
label deionarra_s24: # from 23.0
    nr '"Dojdziesz do więzienia z żalu i płaczu powstałego, gdzie nawet cienie odchodzą od zmysłów. Zażądają tam od ciebie potwornej ofiary, Najdroższy. By móc w końcu spocząć, zmuszony będziesz unicestwić to, co utrzymuje cię wśród żywych i utracić nieśmiertelność."~ [DEN022]{#deionarra_s24_}'

    menu:
        '"„Unicestwić to, co utrzymuje mnie wśród żywych?“"{#deionarra_s24_r789}':
            # a94 # r789
            jump deionarra_s29


# s25 # say791
label deionarra_s25: # from 13.2 29.0
    nr '"Nie wątpię w twą zdolność powstawania z martwych. Jestem jednak przekonana, że każde wcielenie osłabia twój umysł oraz pamięć. Twierdzisz, że utraciłeś wspomnienia. Być może jest to skutek uboczny niezliczonych zgonów? Jeśli tak, co jeszcze przyjdzie ci utracić przy kolejnych odejściach? Gdy utracisz swój umysł, nie będziesz miał nawet dostatecznej wiedzy, by być świadomym, że nie możesz umrzeć. To będzie kulminacja twej klęski."{#deionarra_s25_}'

    menu:
        '"„Niezliczone zgony“? Jak długo to już trwa?"{#deionarra_s25_r812}':
            # a95 # r812
            jump deionarra_s30

        '"Mam jeszcze kilka pytań…"{#deionarra_s25_r811}':
            # a96 # r811
            jump deionarra_s10

        '"Żegnaj, Deionarro."{#deionarra_s25_r813}' if deionarraLogic.r813_condition():
            # a97 # r813
            jump deionarra_s15

        '"Żegnaj, Deionarro."{#deionarra_s25_r1320}' if deionarraLogic.r1320_condition():
            # a98 # r1320
            jump deionarra_s0


# s26 # say793
label deionarra_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    nr 'Deionarra wygląda na wściekłą. "W takim razie odejdź, jak to już bez mała trzysta razy wcześniej zrobiłeś! Przychodzisz jedynie po to, by mnie dręczyć?! Odejdź i nie wracaj!" Zamyka oczy i znika przy wtórze eterycznego szeptu.{#deionarra_s26_}'

    menu:
        'Odejdź.{#deionarra_s26_r6081}' if deionarraLogic.r6081_condition():
            # a99 # r6081
            $ deionarraLogic.r6081_action()
            jump deionarra_dispose

        'Odejdź.{#deionarra_s26_r6082}' if deionarraLogic.r6082_condition():
            # a100 # r6082
            $ deionarraLogic.r6082_action()
            jump morte_s105  # EXTERN

        'Odejdź.{#deionarra_s26_r13257}' if deionarraLogic.r13257_condition():
            # a101 # r13257
            $ deionarraLogic.r13257_action()
            jump deionarra_dispose


# s27 # say795
label deionarra_s27: # from 13.0
    nr '"Wiem, że kiedyś twierdziłeś, iż mnie kochasz i będziesz mnie kochał, póki śmierć się po nas dwoje nie upomni. Wierzyłam w to, nie znając prawdy kim byłeś, czym byłeś."{#deionarra_s27_}'

    menu:
        '"A czym jestem?"{#deionarra_s27_r797}' if deionarraLogic.r797_condition():
            # a102 # r797
            jump deionarra_s28

        '"A czym jestem?"{#deionarra_s27_r66911}' if deionarraLogic.r66911_condition():
            # a103 # r66911
            jump deionarra_s72

        '"Mam jeszcze kilka pytań…"{#deionarra_s27_r796}':
            # a104 # r796
            jump deionarra_s10

        '"Żegnaj, Deionarro."{#deionarra_s27_r798}' if deionarraLogic.r798_condition():
            # a105 # r798
            jump deionarra_s15

        '"Żegnaj, Deionarro."{#deionarra_s27_r1321}' if deionarraLogic.r1321_condition():
            # a106 # r1321
            jump deionarra_s0


# s28 # say799
label deionarra_s28: # from 27.0
    nr '"Rozmawialiśmy o twej naturze już wcześniej." Twarz Deionarry zdaje się patrzeć gdzieś w dal. "Drugi raz robić tego nie będziemy."{#deionarra_s28_}'

    menu:
        '"W porządku… Mam kilka innych pytań…"{#deionarra_s28_r800}':
            # a107 # r800
            jump deionarra_s10

        '"Twierdzisz, że znasz mnie dobrze, mimo to w wielu kwestiach wydajesz się wiedzieć o mnie bardzo niewiele. Żegnaj, Deionarro."{#deionarra_s28_r801}' if deionarraLogic.r801_condition():
            # a108 # r801
            jump deionarra_s15

        '"Twierdzisz, że znasz mnie dobrze, mimo to w wielu kwestiach wydajesz się wiedzieć o mnie bardzo niewiele. Żegnaj, Deionarro."{#deionarra_s28_r802}' if deionarraLogic.r802_condition():
            # a109 # r802
            jump deionarra_s26

        '"W takim razie żegnaj, Deionarro."{#deionarra_s28_r1322}' if deionarraLogic.r1322_condition():
            # a110 # r1322
            jump deionarra_s15

        '"W takim razie żegnaj, Deionarro."{#deionarra_s28_r1323}' if deionarraLogic.r1323_condition():
            # a111 # r1323
            jump deionarra_s0


# s29 # say809
label deionarra_s29: # from 24.0
    nr '"Wiem, że musisz umrzeć… póki jeszcze masz taką możliwość. Krąg *musi* się zamknąć, Najdroższy. Nie przeznaczono ci takiego życia i śmierć już zbyt długo czeka na ciebie. Musisz odnaleźć to, co zostało ci odebrane i udać się w podróż poza granice tej egzystencji, do krainy umarłych."~ [DEN023]{#deionarra_s29_}'

    menu:
        '"„Umrzeć, póki jeszcze mam taką możliwość“?"{#deionarra_s29_r810}':
            # a112 # r810
            $ deionarraLogic.j26087_s29_r810_action()
            jump deionarra_s25


# s30 # say814
label deionarra_s30: # from 25.0
    nr '"Nie wiem dokładnie. Oprócz tego, iż trwa to już bardzo długo."{#deionarra_s30_}'

    menu:
        '"Mam jeszcze kilka pytań…"{#deionarra_s30_r815}':
            # a113 # r815
            jump deionarra_s10

        '"Żegnaj, Deionarro."{#deionarra_s30_r816}' if deionarraLogic.r816_condition():
            # a114 # r816
            jump deionarra_s15

        '"Żegnaj, Deionarro."{#deionarra_s30_r1324}' if deionarraLogic.r1324_condition():
            # a115 # r1324
            jump deionarra_s0


# s31 # say817
label deionarra_s31: # from 45.0
    nr '"Portale to otwory w materii, wiodące do miejsc położonych w Wewnętrznych bądź Zewnętrznych Sferach… Gdybyś znalazł właściwy klucz, mógłbyś uciec przez jeden z nich."{#deionarra_s31_}'

    menu:
        '"Klucz?"{#deionarra_s31_r819}':
            # a116 # r819
            jump deionarra_s32

        '"Mam jeszcze kilka pytań…"{#deionarra_s31_r818}':
            # a117 # r818
            jump deionarra_s10

        '"Żegnaj, Deionarro."{#deionarra_s31_r820}' if deionarraLogic.r820_condition():
            # a118 # r820
            jump deionarra_s15

        '"Żegnaj, Deionarro."{#deionarra_s31_r1325}' if deionarraLogic.r1325_condition():
            # a119 # r1325
            jump deionarra_s0


# s32 # say821
label deionarra_s32: # from 31.0
    nr 'Deionarra milknie na chwilę, jakby próbowała sobie przypomnieć. "Portale ujawnią się same, gdy będziesz miał odpowiedni *klucz*. Niestety, prawie wszystko może być takim kluczem… Uczucie, kawałek drewna, sztylet ze srebrzonego szkła, fragment ubrania; melodia, którą będziesz nucił do siebie… Obawiam się, że Grabarze są jedynymi znającymi klucze, dzięki którym mógłbyś opuścić ich włości, Najdroższy."{#deionarra_s32_}'

    menu:
        '"Rozumiem. Mam jeszcze kilka pytań…"{#deionarra_s32_r824}':
            # a120 # r824
            jump deionarra_s10

        '"W takim razie powinienem spytać któregoś z nich. Żegnaj, Deionarro."{#deionarra_s32_r823}' if deionarraLogic.r823_condition():
            # a121 # r823
            jump deionarra_s15

        '"W takim razie powinienem spytać któregoś z nich. Żegnaj, Deionarro."{#deionarra_s32_r1326}' if deionarraLogic.r1326_condition():
            # a122 # r1326
            jump deionarra_s0


# s33 # say6083
label deionarra_s33: # from 4.0
    nr '"Nie mam dla ciebie odpowiedzi! Skoro twe nieszczere serce zaprowadziło cię aż tak daleko, pozwól mu, by było twym przewodnikiem podczas dalszej drogi! Teraz odejdź!"{#deionarra_s33_}'

    menu:
        'Kłamstwo: "To nie jest taka Deionarra, jaką pamiętam. Ta, którą kochałem, była miła, łagodna… I nigdy nie opuściła duszy w potrzebie. Doprawdy, czyżbyś aż tak dalece upadła?"{#deionarra_s33_r6129}' if deionarraLogic.r6129_condition():
            # a123 # r6129
            $ deionarraLogic.r6129_action()
            jump deionarra_s35

        '"Twa pomoc jest mi niezbędna, Deionarro. Czy odrzucisz mnie, gdy tak bardzo cię potrzebuję?"{#deionarra_s33_r6130}':
            # a124 # r6130
            jump deionarra_s37

        'Blef: "Świetnie. Uszanuję twoje życzenia, Deionarro… Odejdę i nigdy już nie wrócę."{#deionarra_s33_r6131}' if deionarraLogic.r6131_condition():
            # a125 # r6131
            $ deionarraLogic.r6131_action()
            jump deionarra_s34

        'Blef: "Świetnie. Uszanuję twoje życzenia, Deionarro… Odejdę i nigdy już nie wrócę."{#deionarra_s33_r6132}' if deionarraLogic.r6132_condition():
            # a126 # r6132
            $ deionarraLogic.r6132_action()
            jump deionarra_s34

        '"Przykro mi, że cię zraniłem, Deionarro. Odejdę i już nigdy więcej nie będę cię dręczyć."{#deionarra_s33_r6133}':
            # a127 # r6133
            $ deionarraLogic.r6133_action()
            jump deionarra_s34

        'Odejdź po cichu.{#deionarra_s33_r6134}':
            # a128 # r6134
            jump deionarra_s48


# s34 # say6086
label deionarra_s34: # from 33.2 33.3 33.4
    nr 'Gniewny grymas jej twarzy znika jak kamfora… Tempo, w jakim następuje ta zmiana, jest tak samo przerażające, jak obecny, pełen desperacji wyraz jej twarzy. "Nie! Poczekaj, Najdroższy." Jej głos przybiera błagalny ton. "Proszę, wybacz mi. Błagam cię! Nie odchodź!"{#deionarra_s34_}'

    menu:
        '"Deionarro, ma wyrozumiałość wobec twoich napadów zaczyna się kończyć. Jeśli mamy kontynuować nasze rozmowy, *musisz* zacząć nad sobą panować. W przeciwnym razie więcej już ze sobą mówić nie będziemy. Zostaniesz sama. Czy wyraziłem się jasno?"{#deionarra_s34_r6095}':
            # a129 # r6095
            $ deionarraLogic.r6095_action()
            jump deionarra_s36

        '"Przebaczam ci. Potrzebuję twojej pomocy, Deionarro."{#deionarra_s34_r6096}':
            # a130 # r6096
            jump deionarra_s10


# s35 # say6087
label deionarra_s35: # from 33.0
    nr 'Gniewny grymas jej twarzy znika jak kamfora… Tempo, w jakim następuje ta zmiana, jest tak samo przerażające, jak obecny, pełen desperacji wyraz jej twarzy. "Nie… nie… nie… Wciąż jestem tą Deionarrą, którą pamiętasz, Najdroższy. Proszę, wybacz mi. Błagam cię."{#deionarra_s35_}'

    menu:
        '"Deionarro, ma wyrozumiałość wobec twoich napadów zaczyna się kończyć. Jeśli mamy kontynuować nasze rozmowy, *musisz* zacząć nad sobą panować. W przeciwnym razie więcej już ze sobą mówić nie będziemy. Zostaniesz sama. Czy wyraziłem się jasno?"{#deionarra_s35_r6097}':
            # a131 # r6097
            $ deionarraLogic.r6097_action()
            jump deionarra_s36

        '"Przebaczam ci. Potrzebuję twojej pomocy, Deionarro."{#deionarra_s35_r6098}':
            # a132 # r6098
            jump deionarra_s10


# s36 # say6088
label deionarra_s36: # from 34.0 35.0
    nr 'Głos jej zniża się do ledwo słyszalnego szeptu. "Tak… Tak, proszę. Nie odchodź." Wygląd jej, gdy cię błaga, sprawia, że czujesz słabe dreszcze… nie ze strachu, ale z przyjemności. Wyczuwasz, że nie jest to pierwszy raz, gdy manipulujesz tą kobietą.{#deionarra_s36_}'

    menu:
        '"Teraz słuchaj, Deionarro. Mam kilka pytań do ciebie…"{#deionarra_s36_r6099}':
            # a133 # r6099
            jump deionarra_s10


# s37 # say6089
label deionarra_s37: # from 33.1 47.0
    nr '"Odrzucić *cię*?! ŚMIESZ podejrzewać mnie o to, że CIĘ odrzuciłam?!" Deionarra rozkłada ręce po bokach i formuje je na kształt łuku, po czym wyciąga je do przodu, wycelowując w ciebie wskazującymi palcami obu dłoni. Wygląda na to, iż przyzywa jakiś rodzaj magii. "OŚMIELIŁEŚ się…!"{#deionarra_s37_}'

    menu:
        '"Zamilcz! Słuchaj, zjawo! Kończy mi się już cierpliwość wobec twoich gierek…"{#deionarra_s37_r6100}':
            # a134 # r6100
            $ deionarraLogic.r6100_action()
            jump deionarra_s38

        'Przygotuj się do obrony.{#deionarra_s37_r6101}':
            # a135 # r6101
            $ deionarraLogic.r6101_action()
            jump deionarra_s38


# s38 # say6090
label deionarra_s38: # from 37.0 37.1
    nr '"Płoń! Spłoń, jakby wszystkie ognie Baator wzięły cię w swoje objęcia. Płoń, będąc świadomym, że to zaledwie *cząstka* nienawiści, jaką do ciebie pałam! Przeklinam cię… Przeklinam cię całym sercem i całą duszą moją, byś nigdy nie wyzwolił się z kajdan swego żałosnego niebytu. Niechaj uschnie twe ciało i skona. Umysł twój niech obumrze, gdy ropiejące rany pokryją twe gnijące ciało!"{#deionarra_s38_}'

    menu:
        '"Zważaj na swoje przekleństwa, kobieto! Straciłem już cierpliwość…"{#deionarra_s38_r6102}':
            # a136 # r6102
            jump deionarra_s39

        '"Deionarro! Poczekaj, przyszedłem, żeby przeprosić…"{#deionarra_s38_r6103}':
            # a137 # r6103
            jump deionarra_s39


# s39 # say6091
label deionarra_s39: # from 38.0 38.1
    nr '"Raz wypowiedzianej klątwy nie da się już cofnąć." Głos Deionarry przechodzi w syk. "Wiedz to: Ja mam całą wieczność, „Najdroższy“. Będę na ciebie czekać w komnatach śmierci." Obdarza cię uśmiechem, nie ma w nim jednak radości. "Znów *będziemy* razem."{#deionarra_s39_}'

    menu:
        '"Poczekaj chwilę! Chcę porozmawiać…"{#deionarra_s39_r6104}':
            # a138 # r6104
            jump deionarra_s48

        '"Odwróć to, co uczyniłaś! Ostrzegam cię…"{#deionarra_s39_r6105}':
            # a139 # r6105
            jump deionarra_s48


# s40 # say6092
label deionarra_s40: # from 16.0 20.4 21.3
    nr 'Deionarra zamiera. Zdaje się, że chce coś powiedzieć, po czym wzdycha pokonana. "No dobrze, Najdroższy… Tak jak wcześniej, znów będę musiała ci zaufać." Zamyka oczy.{#deionarra_s40_}'

    menu:
        'Poczekaj…{#deionarra_s40_r6106}':
            # a140 # r6106
            jump deionarra_s22


# s41 # say6108
label deionarra_s41: # from 10.6
    nr 'Deionarra potrząsa ze smutkiem głową. "Raz wypowiedzianej klątwy nie da się już cofnąć. Wybacz mi, Najdroższy."{#deionarra_s41_}'

    menu:
        '"Czy istnieje ktoś, kto mógłby ją zdjąć?"{#deionarra_s41_r6110}':
            # a141 # r6110
            jump deionarra_s42

        '"Ro… zumiem. Jest jeszcze coś, o co chcę cię spytać…"{#deionarra_s41_r6111}':
            # a142 # r6111
            jump deionarra_s10

        '"Sądzę, że jest już trochę za późno, by prosić o przebaczenie. Żegnaj, Deionarro."{#deionarra_s41_r6112}' if deionarraLogic.r6112_condition():
            # a143 # r6112
            jump deionarra_s15

        '"Być może ktoś będzie mógł mi pomóc. Żegnaj, Deionarro."{#deionarra_s41_r6113}' if deionarraLogic.r6113_condition():
            # a144 # r6113
            jump deionarra_s15

        '"Sądzę, że jest już trochę za późno, by prosić o przebaczenie. Żegnaj, Deionarro."{#deionarra_s41_r6114}' if deionarraLogic.r6114_condition():
            # a145 # r6114
            jump deionarra_s0

        '"Być może ktoś będzie mógł mi pomóc. Żegnaj, Deionarro."{#deionarra_s41_r6115}' if deionarraLogic.r6115_condition():
            # a146 # r6115
            jump deionarra_s0


# s42 # say6109
label deionarra_s42: # from 41.0
    nr '"Jeśli tak, nic o tym nie wiem." Spogląda z nadzieją. "Ale istnieją inni, potężniejsi ode mnie, którzy mogą być w stanie ją zdjąć. Raz jeszcze proszę cię o przebaczenie, Najdroższy. Nie wiedziałam, co robię."{#deionarra_s42_}'

    menu:
        '"Jest jeszcze coś, o co chcę cię spytać…"{#deionarra_s42_r6116}':
            # a147 # r6116
            jump deionarra_s10

        '"Sądzę, że jest już trochę za późno, by prosić o przebaczenie. Żegnaj, Deionarro."{#deionarra_s42_r6117}' if deionarraLogic.r6117_condition():
            # a148 # r6117
            jump deionarra_s15

        '"Być może ktoś będzie mógł mi pomóc. Żegnaj, Deionarro."{#deionarra_s42_r6118}' if deionarraLogic.r6118_condition():
            # a149 # r6118
            jump deionarra_s15

        '"Sądzę, że jest już trochę za późno, by prosić o przebaczenie. Żegnaj, Deionarro."{#deionarra_s42_r6119}' if deionarraLogic.r6119_condition():
            # a150 # r6119
            jump deionarra_s0

        '"Być może ktoś będzie mógł mi pomóc. Żegnaj, Deionarro."{#deionarra_s42_r6120}' if deionarraLogic.r6120_condition():
            # a151 # r6120
            jump deionarra_s0


# s43 # say6121
label deionarra_s43: # from 9.2 10.3 44.0
    nr '"Opuścić…?" Głos Deionarry przemienia się w syk, po czym ponownie wznosi się do normalnego tonu. "*Opuścić*?! Pytasz mnie, która jestem tu z twojego powodu uwięziona, jak *opuścić* to miejsce?!"{#deionarra_s43_}'

    menu:
        '"Tak. Muszę się stąd wydostać. Wiesz, jak stąd uciec?"{#deionarra_s43_r6137}':
            # a152 # r6137
            jump deionarra_s47

        '"Przepraszam za moją prośbę. Nie chciałem cię obrazić. Proszę, mam jeszcze parę innych pytań…"{#deionarra_s43_r6138}':
            # a153 # r6138
            jump deionarra_s10

        '"Deionarro, grozi mi niebezpieczeństwo. Czy mogłabyś skierować mnie w jakieś bezpieczne miejsce? Wrócę, gdy tylko będę mógł z tobą znów porozmawiać."{#deionarra_s43_r6139}' if deionarraLogic.r6139_condition():
            # a154 # r6139
            jump deionarra_s46

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s43_r6140}' if deionarraLogic.r6140_condition():
            # a155 # r6140
            jump deionarra_s15

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s43_r6141}' if deionarraLogic.r6141_condition():
            # a156 # r6141
            jump deionarra_s0


# s44 # say6122
label deionarra_s44: # from 9.3 10.4
    nr 'Masz zamiar zadać Deionarze pytanie, więźnie ono jednak w twym gardle. Wydaje ci się, że gdybyś powiedział jej, że szukasz drogi ucieczki, pomyślałaby sobie, iż chcesz ją porzucić. Jeśli zamierzasz spytać ją o możliwość wydostania się z tego miejsca, musisz to zrobić bardzo delikatnie.{#deionarra_s44_}'

    menu:
        '"Możesz mi powiedzieć, jak mogę opuścić to miejsce?"{#deionarra_s44_r6142}':
            # a157 # r6142
            jump deionarra_s43

        '"Deionarro, grozi mi niebezpieczeństwo. Czy mogłabyś skierować mnie w jakieś bezpieczne miejsce? Wrócę, gdy tylko będę mógł z tobą znów porozmawiać."{#deionarra_s44_r6143}':
            # a158 # r6143
            jump deionarra_s46

        '"Mam do ciebie jeszcze kilka pytań…"{#deionarra_s44_r6144}':
            # a159 # r6144
            jump deionarra_s10

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s44_r6145}' if deionarraLogic.r6145_condition():
            # a160 # r6145
            jump deionarra_s15

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s44_r6146}' if deionarraLogic.r6146_condition():
            # a161 # r6146
            jump deionarra_s0


# s45 # say6123
label deionarra_s45: # from 46.0 46.1
    nr '"Wyczuwam, że miejsce to kryje w sobie wiele drzwi ukrytych przed wzrokiem śmiertelników. Być może mógłbyś wykorzystać któryś z tych portali w celu ucieczki.{#deionarra_s45_}'

    menu:
        '"Portali?"{#deionarra_s45_r6124}':
            # a162 # r6124
            jump deionarra_s31


# s46 # say6125
label deionarra_s46: # from 43.2 44.1 47.1
    nr '"Niebezpieczeństwo?" Wygląda na pełną obawy. "Oczywiście, Najdroższy. Pomogę ci na tyle, na ile będę w stanie…" Zamyka na chwilę oczy, ty zaś dostrzegasz eteryczny podmuch, który przemyka przez jej ciało, unosząc jej włosy. Po chwili podmuch znika, zaś oczy jej powoli się otwierają. "Być może jest wyjście."{#deionarra_s46_}'

    menu:
        '"Tak?"{#deionarra_s46_r6147}' if deionarraLogic.r6147_condition():
            # a163 # r6147
            jump deionarra_s45

        '"Tak?"{#deionarra_s46_r6148}' if deionarraLogic.r6148_condition():
            # a164 # r6148
            $ deionarraLogic.r6148_action()
            jump deionarra_s45


# s47 # say6135
label deionarra_s47: # from 43.0
    nr '"Przyszedłeś do mnie, umarłej, tylko po to, by mi powiedzieć, że potrzebujesz mej pomocy, by móc mnie znowu opuścić?!" Twarz jej formuje się w maskę gniewu. "*Umarłam* dla ciebie, Najdroższy. Nawet teraz wciąż *cierpię* z tego powodu!"{#deionarra_s47_}'

    menu:
        '"Proszę, Deionarro… Twa pomoc jest mi niezbędna. Czy odrzucisz mnie, gdy tak bardzo cię potrzebuję?"{#deionarra_s47_r6149}':
            # a165 # r6149
            jump deionarra_s37

        '"Deionarro, pytam jedynie dlatego, że grozi mi niebezpieczeństwo. Czy mogłabyś skierować mnie w jakieś bezpieczne miejsce? Wrócę, gdy tylko będę mógł z tobą znów porozmawiać."{#deionarra_s47_r6150}' if deionarraLogic.r6150_condition():
            # a166 # r6150
            jump deionarra_s46

        '"Mniejsza z tym. Słuchaj, mam jeszcze parę innych pytań…"{#deionarra_s47_r6151}':
            # a167 # r6151
            jump deionarra_s8

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s47_r6152}' if deionarraLogic.r6152_condition():
            # a168 # r6152
            jump deionarra_s15

        '"Muszę już iść. Żegnaj, Deionarro."{#deionarra_s47_r6153}' if deionarraLogic.r6153_condition():
            # a169 # r6153
            jump deionarra_s26


# s48 # say6136
label deionarra_s48: # from 33.5 39.0 39.1
    nr 'Deionarra zamyka oczy i znika przy wtórze eterycznego westchnięcia.{#deionarra_s48_}'

    menu:
        'Odejdź.{#deionarra_s48_r6154}' if deionarraLogic.r6154_condition():
            # a170 # r6154
            $ deionarraLogic.r6154_action()
            jump deionarra_dispose

        'Odejdź.{#deionarra_s48_r6155}' if deionarraLogic.r6155_condition():
            # a171 # r6155
            $ deionarraLogic.r6155_action()
            jump morte_s105  # EXTERN

        'Odejdź.{#deionarra_s48_r13258}' if deionarraLogic.r13258_condition():
            # a172 # r13258
            $ deionarraLogic.r13258_action()
            jump deionarra_dispose


# s49 # say63356
label deionarra_s49: # - # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Widzisz przed sobą uderzająco piękną zjawę. Posiada długie, opadające włosy, suknia jej zaś zdaje się być poruszana przez eteryczne podmuchy. Oczy jej wpatrują się w twoje; doznajesz dziwnego uczucie rozproszenia - tak, jakbyś patrzył równocześnie na kilka par oczu.{#deionarra_s49_}'

    menu:
        '"Tyś jest Deionarra…?"{#deionarra_s49_r63357}':
            # a173 # r63357
            jump deionarra_s51


# s50 # say63358
label deionarra_s50: # - # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Przed tobą znajduje się zjawa Deionarry. Jej niematerialna suknia zdaje się być poruszana eterycznymi podmuchami, oczy jej wpatrują się w twoje; doznajesz dziwnego uczucie rozproszenia - tak, jakbyś patrzył równocześnie na kilka par oczu.{#deionarra_s50_}'

    menu:
        '"Deionarra…?{#deionarra_s50_r63359}':
            # a174 # r63359
            jump deionarra_s51


# s51 # say63360
label deionarra_s51: # from 49.0 50.0
    nr '"Najdroższy, w końcu cię *odnalazłam*… Poszukiwałam cię, odkąd zostałeś podzielony przez kryształ. Ta Forteca rozciąga się na setki kilometrów i bałam się, że cię straciłam." Jej niematerialne oczy lustrują twe ciało w poszukiwaniu nowych ran. "Wszystko w porządku?"{#deionarra_s51_}'

    menu:
        '"Tak sądzę. Kryształ mnie podzielił, ale na powrót stanowię całość. Teraz jednak jestem tu uwięziony."{#deionarra_s51_r63362}':
            # a175 # r63362
            jump deionarra_s52


# s52 # say63363
label deionarra_s52: # from 51.0
    nr '"Podejrzewam, że uwięzienie cię było głównym celem kryształu. Ale nie stanowi on przeszkody dla kogoś takiego, jak ja." Zamyka oczy. "Sporo me oczy widzą i dobrze znam sale tej Fortecy."{#deionarra_s52_}'

    jump deionarra_s53


# s53 # say63364
label deionarra_s53: # from 52.0 58.0 59.0
    nr '"Skoro jesteś tu uwięziony, Najdroższy, postaram się, byś odzyskał wolność. Gdzie chciałbyś się udać?"{#deionarra_s53_}'

    menu:
        '"Chciałbym odnaleźć mojego wroga i pokonać go."{#deionarra_s53_r63365}':
            # a176 # r63365
            jump deionarra_s54

        '"Chciałbym się udać tam, gdzie spoczywa moja śmiertelność - i odzyskać ją."{#deionarra_s53_r63366}':
            # a177 # r63366
            jump deionarra_s54

        '"Chciałbym przyłączyć się do mych przyjaciół."{#deionarra_s53_r63367}' if deionarraLogic.r63367_condition():
            # a178 # r63367
            jump deionarra_s54

        '"Chciałbym przyłączyć się do mych przyjaciół. Jest kilka przedmiotów, które muszę od nich odebrać."{#deionarra_s53_r63368}' if deionarraLogic.r63368_condition():
            # a179 # r63368
            jump deionarra_s54

        '"Chciałbym porozmawiać z tobą przez chwilę i powiedzieć ci, w jaki sposób umarłaś… i dlaczego."{#deionarra_s53_r63369}' if deionarraLogic.r63369_condition():
            # a180 # r63369
            jump deionarra_s55


# s54 # say63370
label deionarra_s54: # from 53.0 53.1 53.2 53.3
    nr '"Jak sobie życzysz, Najdroższy." Wyciąga rękę. "Dotknij mej dłoni, a ściany tej Fortecy przestaną być nimi."{#deionarra_s54_}'

    menu:
        'Dotknij jej dłoni…{#deionarra_s54_r63371}' if deionarraLogic.r63371_condition():
            # a181 # r63371
            $ deionarraLogic.r63371_action()
            jump deionarra_dispose

        'Dotknij jej dłoni…{#deionarra_s54_r64594}' if deionarraLogic.r64594_condition():
            # a182 # r64594
            $ deionarraLogic.r64594_action()
            jump deionarra_dispose


# s55 # say63372
label deionarra_s55: # from 53.4
    nr '"O czym mówiesz?"{#deionarra_s55_}'

    menu:
        'Prawda: "Kiedy przywiodłem cię do tej Fortecy, chciałem, być tu umarła. Potrzebowałem kogoś, kto by tu został i służył jako pomost do tego miejsca. Ponieważ tak bardzo mnie kochałaś, wiedziałem, że miłość twa odeprze śmierć i pozwoli ci stać się zjawą. To właśnie dlatego teraz cierpisz."{#deionarra_s55_r63373}':
            # a183 # r63373
            $ deionarraLogic.r63373_action()
            jump deionarra_s56

        'Kłamstwo: "Kiedy umarłaś tu, w Fortecy, stało się to z przyczyny oczekującego nas wroga. Chciał, byś umarła, byśmy zostali rozdzieleni. Wkrótce stawię mu czoła i pomszczę cię."{#deionarra_s55_r63374}':
            # a184 # r63374
            $ deionarraLogic.r63374_action()
            jump deionarra_s58


# s56 # say63375
label deionarra_s56: # from 55.0
    nr 'Gdy wymawiasz te słowa, twarz Deionarry zastyga w maskę.{#deionarra_s56_}'

    menu:
        'Kłamstwo: "Bardzo mi przykro, Deionarro."{#deionarra_s56_r63376}':
            # a185 # r63376
            $ deionarraLogic.r63376_action()
            jump deionarra_s57

        'Prawda: "Bardzo mi przykro, Deionarro."{#deionarra_s56_r63377}':
            # a186 # r63377
            $ deionarraLogic.r63377_action()
            jump deionarra_s57

        'Prawda: "To było konieczne, Deionarro. Przykro mi, że musiałaś cierpieć."{#deionarra_s56_r63378}':
            # a187 # r63378
            jump deionarra_s57


# s57 # say63379
label deionarra_s57: # from 56.0 56.1 56.2
    nr '"*Kochasz* mnie? Jeśli powiesz tak, Najdroższy, wtedy nic, co się wydarzyło, nie będzie miało znaczenia."{#deionarra_s57_}'

    menu:
        'Kłamstwo: "Oczywiście, że cię kocham. Nawet śmierć nie jest w stanie unicestwić istniejącej między nami więzi."{#deionarra_s57_r63380}':
            # a188 # r63380
            $ deionarraLogic.r63380_action()
            jump deionarra_s58

        'Prawda: "Mimo iż na początku nie znałem cię, ostatecznie cię pokochałem. Twe cierpienie stało się mym własnym. Postanowiłem, że zrobię wszystko, by ci pomóc."{#deionarra_s57_r63381}':
            # a189 # r63381
            $ deionarraLogic.r63381_action()
            jump deionarra_s58

        'Prawda: "Przykro mi Deionarro. Nie kocham. Nigdy cię nie znałem. Może gdyby dane mi było poznać cię w innych okolicznościach…"{#deionarra_s57_r63382}':
            # a190 # r63382
            $ deionarraLogic.r63382_action()
            jump deionarra_s59


# s58 # say63383
label deionarra_s58: # from 55.1 57.0 57.1
    nr '"W takim razie pomogę ci, Najdroższy. Powiedz mi, co mogę dla ciebie zrobić, a uczynię to."{#deionarra_s58_}'

    menu:
        '"Jestem tu uwięziony. Możesz mi pomóc w ucieczce?"{#deionarra_s58_r63384}':
            # a191 # r63384
            $ deionarraLogic.r63384_action()
            jump deionarra_s53


# s59 # say63385
label deionarra_s59: # from 57.2
    nr '"W takim razie… oznacza to koniec wszystkiego, co między nami istniało, Najdroższy. Zostałam tu dla ciebie - innego powodu nie było. Pomogę ci po raz ostatni i udam się poza Ostateczną Granicę, jak było mi przeznaczone."{#deionarra_s59_}'

    menu:
        '"W takim razie poproszę cię o ostatnią rzecz i zostawię cię w spokoju: Jestem tu uwięziony. Możesz mi pomóc?"{#deionarra_s59_r63386}':
            # a192 # r63386
            jump deionarra_s53


# s60 # say63387
label deionarra_s60: # - # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Widzisz przed sobą uderzająco piękną zjawę. Posiada długie, opadające włosy, suknia jej zaś zdaje się być poruszana przez eteryczne podmuchy. Stoi na krawędzi wykonanej z czarnego kamienia drogi, wpatrując się w pustkę Sfery.{#deionarra_s60_}'

    menu:
        '"Kim jesteś?"{#deionarra_s60_r63388}':
            # a193 # r63388
            $ deionarraLogic.r63388_action()
            jump deionarra_s62

        'Zostaw niematerialną istotę w spokoju.{#deionarra_s60_r63389}':
            # a194 # r63389
            jump deionarra_dispose


# s61 # say63390
label deionarra_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Przed tobą znajduje się zjawa Deionarry; jej niematerialna suknia zdaje się być poruszana eterycznymi podmuchami. Stoi na krawędzi wykonanej z czarnego kamienia drogi, wpatrując się w pustkę Sfery.{#deionarra_s61_}'

    menu:
        '"Deionarra…?"{#deionarra_s61_r63391}':
            # a195 # r63391
            $ deionarraLogic.r63391_action()
            jump deionarra_s62

        'Zostaw Deionarrę w spokoju.{#deionarra_s61_r63392}':
            # a196 # r63392
            jump deionarra_dispose


# s62 # say63393
label deionarra_s62: # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    nr '"Najdroższy! *Nie* powinno cię tu być! Musisz natychmiast stąd odejść!"{#deionarra_s62_}'

    menu:
        '"Dlaczego? Kim jesteś, zjawo…? Co to za miejsce?"{#deionarra_s62_r63394}' if deionarraLogic.r63394_condition():
            # a197 # r63394
            jump deionarra_s63

        '"Deionarro, co to za miejsce? Czy to Forteca?"{#deionarra_s62_r63395}' if deionarraLogic.r63395_condition():
            # a198 # r63395
            jump deionarra_s63


# s63 # say63396
label deionarra_s63: # from 62.0 62.1
    nr '"To jest Forteca Żalu. To miejsce, które więzi chwilę mojej śmierci i daleko od tych sal odejść nie mogę. Jeśli jesteś w stanie odnaleźć drogę do Sigil, *musisz* to zrobić. Gdybyś tu został, Najdroższy, zginąłbyś."{#deionarra_s63_}'

    menu:
        '"Jestem nieśmiertelny, zjawo. Cenię twe ostrzeżenie, śmierć jednak należy do ostatnich rzeczy, jakich się obawiam."{#deionarra_s63_r63397}' if deionarraLogic.r63397_condition():
            # a199 # r63397
            jump deionarra_s64

        '"Jestem nieśmiertelny, Deionarro. Nie sądzę, bym się musiał obawiać, nawet tutaj."{#deionarra_s63_r63398}' if deionarraLogic.r63398_condition():
            # a200 # r63398
            jump deionarra_s64

        '"A co z moją nieśmiertelnością? Bez wątpienia wciąż jestem nieśmiertelny, nawet tutaj…?"{#deionarra_s63_r63399}':
            # a201 # r63399
            jump deionarra_s64


# s64 # say63400
label deionarra_s64: # from 63.0 63.1 63.2
    nr 'Potrząsa głową. "Nie, Najdroższy. Jest w tej Fortecy coś istotnego - osłona, która ją otacza, oddziela ją od reszty Sfer. To osłona, która jest dla twej nieśmiertelności zaporą."{#deionarra_s64_}'

    menu:
        '"Osłona? Słup powiedział mi, że gdy umieram, ktoś inny kona zamiast mnie. I gdy nie będę mógł znaleźć kogoś, kto za mnie umrze…"{#deionarra_s64_r63401}' if deionarraLogic.r63401_condition():
            # a202 # r63401
            jump deionarra_s66

        '"W jaki sposób osłona ta może działać jako przeszkoda? To nie ma sensu."{#deionarra_s64_r63402}' if deionarraLogic.r63402_condition():
            # a203 # r63402
            jump deionarra_s65


# s65 # say63403
label deionarra_s65: # from 64.1
    nr '"Podczas mego długiego czuwania w tym miejscu, poznawałam naturę twej nieśmiertelności, Najdroższy. To coś, co łaknie bytów innych ludzi. W chwili twej śmierci, zabiera zamiast ciebie innego żywego, pozwalając tobie żyć. Dusza, która umiera zamiast ciebie, zostaje przygnana tu, do Fortecy, jako cień. Wierzę, że osłona ta uniemożliwia twej nieśmiertelności znalezienie kolejnej ofiary."{#deionarra_s65_}'

    menu:
        '"A więc… kiedy umieram, zamiast mnie ginie ktoś inny. I jeśli nie znajdę kogoś żywego, by *za* mnie umarł…"{#deionarra_s65_r63404}':
            # a204 # r63404
            jump deionarra_s66


# s66 # say63405
label deionarra_s66: # from 64.0 65.0
    nr '"W takim razie jeśli tu umrzesz, nastąpi twój kres, gdyż nie ma tu żadnej *żywej* istoty. Dlatego też musisz być ostrożny. Powróć do Sigil i opuść to przeklęte miejsce.{#deionarra_s66_}'

    menu:
        '"Ale - znajdują się tu moi sprzymierzeńcy. Oznacza to, iż są we wnętrzu osłony. Co się z *nimi* stanie, gdy umrę?"{#deionarra_s66_r63406}' if deionarraLogic.r63406_condition():
            # a205 # r63406
            jump deionarra_s67

        '"Ale - znajduje się tu jeden z mych sprzymierzeńców. Oznacza to, że jest we wnętrzu osłony. Co się stanie z mym towarzyszem, gdy umrę?"{#deionarra_s66_r63407}' if deionarraLogic.r63407_condition():
            # a206 # r63407
            jump deionarra_s67

        '"Deionarro, czy mogłobyś powiedzieć mi coś jeszcze, co mogłoby mi pomóc? Co się wewnątrz znajduje?"{#deionarra_s66_r63408}' if deionarraLogic.r63408_condition():
            # a207 # r63408
            jump deionarra_s68

        '"Zjawo, czy mogłobyś powiedzieć mi coś jeszcze, co mogłoby mi pomóc? Co się wewnątrz znajduje?"{#deionarra_s66_r63409}' if deionarraLogic.r63409_condition():
            # a208 # r63409
            jump deionarra_s68


# s67 # say63410
label deionarra_s67: # from 66.0 66.1
    nr '"Najdroższy, jeśli przywiodłeś do tego miejsca *cokolwiek* żywego, znajduje się to w śmiertelnym niebezpieczeństwie - zarówno ze strony cieni, jak i twojej. Jeśli tu umrzesz, twa nieśmiertelność wyruszy polować na najbliższą żywą istotę w tej Fortecy i to *ona* umrze zamiast ciebie. Musisz stąd odejść, natychmiast!"{#deionarra_s67_}'

    menu:
        '"Nie mogę *udać* się w drogę powrotną. Mogłabyś powiedzieć mi o czymś, co by mi było pomocne? Co czeka na mnie we wnętrzu Fortecy?"{#deionarra_s67_r63411}':
            # a209 # r63411
            jump deionarra_s68


# s68 # say63412
label deionarra_s68: # from 66.2 66.3 67.0
    nr '"W Fortecy nie ma naturalnych ciemności, Najdroższy. Są jedynie cienie tych, którzy miast ciebie umarli. Karmi ich energia tej Sfery, zaś ich nienawiść do ciebie stoi ponad wszystkim. Nie pozwolą ci odejść." Zerka na ściany Fortecy. "*Nie* wchodź, błagam cię!"{#deionarra_s68_}'

    menu:
        '"Ale - są tu moi sprzymierzeńcy. Nie mogę ich zostawić. Masz może jakiś pomysł, gdzie mogą się znajdować?"{#deionarra_s68_r63413}' if deionarraLogic.r63413_condition():
            # a210 # r63413
            jump deionarra_s69

        '"Ale - jest tu jeden z mych sprzymierzeńców. Nie mogę odejść. Masz może jakiś pomysł, gdzie może się znajdować?"{#deionarra_s68_r63414}' if deionarraLogic.r63414_condition():
            # a211 # r63414
            jump deionarra_s69

        '"Musze wkroczyć do Fortecy. Nie mogę się cofnąć."{#deionarra_s68_r63415}' if deionarraLogic.r63415_condition():
            # a212 # r63415
            $ deionarraLogic.j68117_s68_r63415_action()
            jump deionarra_s75


# s69 # say63416
label deionarra_s69: # from 68.0 68.1
    nr '"Jeśli przywiodłeś innych ze sobą, zostali od ciebie zabrani, gdy tu przybyłeś. W naturze tego miejsca leży rozdzielanie wszelkich żywych istot… następnie ich zabijanie." Widać trwogę na jej twarzy. "Ta Forteca to miejsce ciągnące się przez wiele kilometrów - odnalezienie twych przyjaciół może być ciężką sprawą."{#deionarra_s69_}'

    menu:
        '"Muszę ich znaleźć. W tym względzie nie mam wyboru."{#deionarra_s69_r63417}':
            # a213 # r63417
            $ deionarraLogic.j68117_s69_r63417_action()
            jump deionarra_s75


# s70 # say63418
label deionarra_s70: # from 75.0
    nr '"Jeszcze jedna rzecz…" Deionarra przerywa, jakby chciała pochwycić przemykające wspomnienie. "W… W komnacie znajdują się ogromne zegary…" Jej głos stabilizuje się, nabiera pewności. "Zegary, o których mówiłeś kiedyś, że były dla ciebie kluczem umożliwiającym ucieczkę z tej komnaty… Gdy byłeś tam kiedyś uwięziony." Spogląda na ciebie. "Wiem, że nie mogę zwieść cię z twego kursu, Najdroższy… Będę cię obserwować i pomogę ci, jeśli będę w stanie."{#deionarra_s70_}'

    menu:
        '"Przyniosłem ci pierścień, Deionarro. Odnalazłem twój testament."{#deionarra_s70_r63419}' if deionarraLogic.r63419_condition():
            # a214 # r63419
            $ deionarraLogic.r63419_action()
            jump deionarra_s71

        '"Dziękuję, Zjawo. Muszę już iść."{#deionarra_s70_r63420}' if deionarraLogic.r63420_condition():
            # a215 # r63420
            jump deionarra_dispose

        '"Dziękuję, Deionarro. Muszę już iść."{#deionarra_s70_r63421}' if deionarraLogic.r63421_condition():
            # a216 # r63421
            jump deionarra_dispose


# s71 # say63422
label deionarra_s71: # from 70.0
    nr '"Ten pierścień nadal zawiera w sobie cząstkę mnie samej, Najdroższy. Kiedy go będziesz nosił, me serce będzie zawsze przy tobie." Zamyka na chwilę oczy i czujesz nagle przypływające przez ciebie ciepło. Deionarra otwiera oczy, po czym uśmiecha się. "Wiedziałam, że powrócisz do mnie, mając go w swej opiece. Weź go teraz wraz z mym błogosławieństwem i trzymaj blisko serca swego. Poprzez niego, będę cię chronić."{#deionarra_s71_}'

    menu:
        '"Dziękuję, Deionarro. Muszę już iść."{#deionarra_s71_r63423}' if deionarraLogic.r63423_condition():
            # a217 # r63423
            jump deionarra_dispose


# s72 # say66912
label deionarra_s72: # from 27.1
    nr '"Ty… ja… nie…" Zamiera nagle i zaczyna przemawiać powoli, ostrożnie - jakby jej głos ją przerażał. "Oto prawda: jesteś tym, którego wiele śmierci zabrało. Śmierci owe umożliwiły ci poznanie wszelkich żywych rzeczy, i w rękach twych kryje się iskra życia… i śmierci. Ci, którzy umierają blisko ciebie, pozostawiają po sobie cień ich samych, dzięki któremu możesz ich ponownie przywołać…"{#deionarra_s72_}'

    jump deionarra_s73


# s73 # say66913
label deionarra_s73: # from 72.0
    nr 'Gdy Deionarra wymawia te słowa, dziwne mrowienie wzbiera w tyle twej czaszki… Odczuwasz nagły przymus, by spojrzeć na swoją rękę. Kiedy ją unosisz i *przyglądasz* się jej, WIDZISZ krew przepływającą powoli poprzez twoje ramie, wypełniającą twe muskuły, w końcu zaś - przydającą siłę twym kościom…{#deionarra_s73_}'

    menu:
        '"Co s…"{#deionarra_s73_r66914}':
            # a218 # r66914
            $ deionarraLogic.r66914_action()
            jump deionarra_s74


# s74 # say66915
label deionarra_s74: # from 73.0
    nr 'Wiesz, że Deionarra ma *rację*. Nagle przypominasz sobie, jak odnaleźć najmniejszą iskrę życia w ciele i wydobyć ją na wierzch… Ta myśl jednocześnie przeraża cię i intryguje.  UWAGA: Przypomniałeś sobie, jak przywracać innych do życia. Aby użyć tej zdolności, wybierz „Zdolności Specjalne“ z Menu Podręcznego. Możesz jej użyć jedynie na tych spośród drużyny, przy których śmierci byłeś obecny. Nie będzie ona działać na kimś, kto z tobą nie podróżował, *nie* będzie też działać na tych z drużyny, których po ich śmierci z niej usunąłeś.{#deionarra_s74_}'

    menu:
        '"M… M… Mam kilka innych pytań…"{#deionarra_s74_r66916}':
            # a219 # r66916
            jump deionarra_s10


# s75 # say68114
label deionarra_s75: # from 68.2 69.0
    nr '"Dobrze, Najdroższy… Skoro zamierzasz iść dalej, wiedz jedno: Za wejściem wiodącym do Fortecy znajduje się wielki przedsionek wypełniony niezliczoną liczbą cieni. Musisz pokonać go szybko, inaczej cię otoczą i bez wątpienia zabiją!"{#deionarra_s75_}'

    jump deionarra_s70
