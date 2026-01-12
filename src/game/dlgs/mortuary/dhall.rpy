init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary.dhall_logic import DhallLogic
    dhallLogic = DhallLogic(runtime.global_state_manager)

    def get_dhall_appeal(upper_case=True):
        if upper_case:
            return __('dhall_name{#dhall_name}') if dhallLogic.get_know_dhall_name() else __('dhall_he_upper{#dhall_he_upper}')
        return __('dhall_name{#dhall_name}') if dhallLogic.get_know_dhall_name() else __('dhall_he_lower{#dhall_he_lower}')
    def get_dhall_appeal_genitive():
        return __('dhall_name_genitive{#dhall_name_genitive}') if dhallLogic.get_know_dhall_name() else __('dhall_he_genitive{#dhall_he_genitive}')


# ###
# Original:  DLG/DDHALL.DLG
# ###


# s0 # say822
label dhall_s0: # externs morte_s103
    'dhall_s0{#dhall_s0}'
    # nr 'Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять. Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.{#dhall_s0_1}'

    jump morte_s104  # EXTERN


# s1 # say826
label dhall_s1: # externs morte_s104
    'dhall_s1{#dhall_s1}'
    # nr 'Прежде чем Морт успевает закончить, взгляд серых глаз писаря падает на тебя.{#dhall_s1_1}'
    # dhall '«Бремя прожитых лет лежит на мне тяжелым грузом, Неугомонный».{#dhall_s1_2}'
    # nr 'Он откладывает перо.{#dhall_s1_3}'
    # dhall '«Но глухотой я еще не страдаю».{#dhall_s1_4}'

    menu:
        'dhall_s1_r827{#dhall_s1_r827}': # '«Неугомонный? Ты меня знаешь?»{#dhall_s1_r827}'
            # a0 # r827
            $ dhallLogic.r827_action()
            jump dhall_s44


# s2 # say829
label dhall_s2: # from 21.0
    'dhall_s2{#dhall_s2}'
    # dhall '«Тебе знакома женщина, чьи останки погребены внизу, в мемориальном зале? Я думаю, что в прошлом она путешествовала вместе с тобой…»{#dhall_s2_1}'
    # nr 'Дхолл начинает кашлять, но ему удается перевести дыхание.{#dhall_s2_2}'
    # dhall '«Я ошибаюсь?»{#dhall_s2_3}'

    menu:
        'dhall_s2_r5070{#dhall_s2_r5070}' if dhallLogic.r5070_condition(): # '«Где ее тело?»{#dhall_s2_r5070}'
            # a1 # r5070
            jump dhall_s42

        'dhall_s2_r5071{#dhall_s2_r5071}' if dhallLogic.r5071_condition(): # '«Я ничего о ней не знаю».{#dhall_s2_r5071}'
            # a2 # r5071
            jump dhall_s43

        'dhall_s2_r5072{#dhall_s2_r5072}' if dhallLogic.r5072_condition(): # '«Она узнала меня, но я не смог ее вспомнить».{#dhall_s2_r5072}'
            # a3 # r5072
            jump dhall_s28

        'dhall_s2_r5073{#dhall_s2_r5073}' if dhallLogic.r5073_condition(): # '«Ты говорил, что здесь есть другие. Кто они?»{#dhall_s2_r5073}'
            # a4 # r5073
            jump dhall_s12

        'dhall_s2_r5074{#dhall_s2_r5074}' if dhallLogic.r5074_condition(): # '«Ты говорил, что здесь есть другие. Кто они?»{#dhall_s2_r5074}'
            # a5 # r5074
            jump dhall_s12

        'dhall_s2_r6063{#dhall_s2_r6063}': # '«Возможно. У меня есть другие вопросы к тебе…»{#dhall_s2_r6063}'
            # a6 # r6063
            jump dhall_s9

        'dhall_s2_r6064{#dhall_s2_r6064}' if dhallLogic.r6064_condition(): # '«Пойду вниз, в мемориальный зал. Может быть, я найду ее тело».{#dhall_s2_r6064}'
            # a7 # r6064
            jump dhall_s11

        'dhall_s2_r13288{#dhall_s2_r13288}' if dhallLogic.r13288_condition(): # '«Возможно, нет. Прощай».{#dhall_s2_r13288}'
            # a8 # r13288
            jump dhall_s11


# s3 # say832
label dhall_s3: # from 9.0
    'dhall_s3{#dhall_s3}'
    # nr 'Дхолл пристально смотрит на тебя.{#dhall_s3_1}'
    # dhall '«Ты уверен?»{#dhall_s3_2}'

    menu:
        'dhall_s3_r830{#dhall_s3_r830}' if dhallLogic.r830_condition(): # '«Да. Он очень хорошо замаскировался».{#dhall_s3_r830}'
            # a9 # r830
            $ dhallLogic.j39468_s3_r830_action()
            $ dhallLogic.r830_action()
            jump dhall_s4

        'dhall_s3_r831{#dhall_s3_r831}' if dhallLogic.r831_condition(): # '«Да. Он очень хорошо замаскировался».{#dhall_s3_r831}'
            # a10 # r831
            $ dhallLogic.r831_action()
            jump dhall_s4

        'dhall_s3_r834{#dhall_s3_r834}': # '«Нет, пожалуй, мне просто показалось. У меня есть другие вопросы…»{#dhall_s3_r834}'
            # a11 # r834
            jump dhall_s9


# s4 # say833
label dhall_s4: # from 3.0 3.1
    'dhall_s4{#dhall_s4}'
    # dhall '«Я…»{#dhall_s4_1}'
    # nr 'У Дхолла начинается очередной приступ кашля. Спустя минуту или две его дыхание становится достаточно спокойным, чтобы он смог продолжить.{#dhall_s4_2}'
    # dhall '«Я… незамедлительно предупрежу стражу».{#dhall_s4_3}'

    menu:
        'dhall_s4_r836{#dhall_s4_r836}': # '«Спасибо. У меня есть другие вопросы…»{#dhall_s4_r836}'
            # a12 # r836
            jump dhall_s9

        'dhall_s4_r837{#dhall_s4_r837}': # '«Отлично. Прощай».{#dhall_s4_r837}'
            # a13 # r837
            jump dhall_s11


# s5 # say838
label dhall_s5: # - # IF ~  Global("Dhall","GLOBAL",0)
    'dhall_s5{#dhall_s5}'
    # nr 'Этот писарь выглядит очень старым… его кожа морщиниста и имеет желтый оттенок, как у старого пергамента. Темно-серые глаза глубоко посажены на его угловатом лице, длинная белая борода ниспадает на его одежды, подобно водопаду. Его дыхание неровно и прерывисто, но даже периодический кашель не может замедлить движение его пера.{#dhall_s5_1}'

    menu:
        'dhall_s5_r839{#dhall_s5_r839}' if dhallLogic.r839_condition(): # '«Приветствую».{#dhall_s5_r839}'
            # a14 # r839
            jump morte_s102  # EXTERN

        'dhall_s5_r835{#dhall_s5_r835}' if dhallLogic.r835_condition(): # '«Приветствую».{#dhall_s5_r835}'
            # a15 # r835
            jump dhall_s7

        'dhall_s5_r5058{#dhall_s5_r5058}' if dhallLogic.r5058_condition(): # '«Приветствую».{#dhall_s5_r5058}'
            # a16 # r5058
            jump dhall_s6

        'dhall_s5_r5060{#dhall_s5_r5060}': # 'Оставить старого писаря в покое.{#dhall_s5_r5060}'
            # a17 # r5060
            jump dhall_dispose


# s6 # say841
label dhall_s6: # from 5.2
    'dhall_s6{#dhall_s6}'
    # nr 'Его серые глаза сверкают, когда он отрывает свой взгляд от книги.{#dhall_s6_1}'
    # dhall '«Подозреваю, что это ты в ответе за нападения в Морге. Это…»{#dhall_s6_2}'
    # nr 'Они тихо кашляет, затем тяжело хрипит.{#dhall_s6_3}'
    # dhall '«Это не позволит тебе обрести следующую жизнь».{#dhall_s6_4}'

    menu:
        'dhall_s6_r842{#dhall_s6_r842}' if dhallLogic.r842_condition(): # '«Я всего лишь защищался. У меня есть несколько вопросов перед тем, как я удалюсь…»{#dhall_s6_r842}'
            # a18 # r842
            jump dhall_s9

        'dhall_s6_r843{#dhall_s6_r843}' if dhallLogic.r843_condition(): # '«Как по мне, дарить смерть вам, трупопоклонникам, — не такое уж и не преступление. А теперь у меня есть вопросы к тебе…»{#dhall_s6_r843}'
            # a19 # r843
            $ dhallLogic.r843_action()
            jump dhall_s9

        'dhall_s6_r5062{#dhall_s6_r5062}' if dhallLogic.r5062_condition(): # '«Ты знаешь меня?»{#dhall_s6_r5062}'
            # a20 # r5062
            jump dhall_s44

        'dhall_s6_r5063{#dhall_s6_r5063}': # '«Прощай».{#dhall_s6_r5063}'
            # a21 # r5063
            jump dhall_dispose


# s7 # say844
label dhall_s7: # from 5.1
    'dhall_s7{#dhall_s7}'
    # nr 'Писарь прекращает вести записи в стоящую перед ним книгу и оглядывается. Его глаза похожи на два гвоздя, забитые в его череп.{#dhall_s7_1}'
    # dhall '«Итак…»{#dhall_s7_2}'
    # nr 'Его голос уставший, как будто он повторял это уже много раз.{#dhall_s7_3}'
    # dhall '«Ты пробудился ото сна и вернулся в свои грезы».{#dhall_s7_4}'
    # nr 'Он продолжает более уважительным голосом.{#dhall_s7_5}'
    # dhall '«Приятно встретиться… снова, Неугомонный».{#dhall_s7_6}'

    menu:
        'dhall_s7_r845{#dhall_s7_r845}': # '«Неугомонный? Ты меня знаешь?»{#dhall_s7_r845}'
            # a22 # r845
            jump dhall_s44


# s8 # say851
label dhall_s8: # from 22.0
    'dhall_s8{#dhall_s8}'
    # dhall '«Ты должен понять. Твое существование для них — богохульство. Многие из нашей фракции распорядились бы тебя кремировать… если бы узнали о твоем несчастье».{#dhall_s8_1}'

    menu:
        'dhall_s8_r940{#dhall_s8_r940}': # '«Ты — тленный, и все же не пытаешься убить меня. Почему?»{#dhall_s8_r940}'
            # a23 # r940
            jump dhall_s23

        'dhall_s8_r911{#dhall_s8_r911}': # '«Расскажи мне побольше о Морге».{#dhall_s8_r911}'
            # a24 # r911
            jump dhall_s32

        'dhall_s8_r913{#dhall_s8_r913}': # '«У меня есть другие вопросы…»{#dhall_s8_r913}'
            # a25 # r913
            jump dhall_s9

        'dhall_s8_r6038_1{#dhall_s8_r6038_1}' if dhallLogic.get_know_dhall_name(): # '«Я выслушал достаточно. Прощай, Дхолл».{#dhall_s8_r6038_1}'
            # a26 # r6038
            jump dhall_s11

        'dhall_s8_r6038_2{#dhall_s8_r6038_2}' if not dhallLogic.get_know_dhall_name(): # '«Я выслушал достаточно. Прощай».{#dhall_s8_r6038_2}'
            # a26 # r6038
            jump dhall_s11


# s9 # say852
label dhall_s9: # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    'dhall_s9{#dhall_s9}'
    # dhall '«Хорошо. Что ты хочешь узнать?»{#dhall_s9_1}'

    menu:
        'dhall_s9_r854{#dhall_s9_r854}' if dhallLogic.r854_condition(): # '«Ты знал, что в восточной комнате находится кто-то, замаскированный под зомби?»{#dhall_s9_r854}'
            # a27 # r854
            jump dhall_s3

        'dhall_s9_r857{#dhall_s9_r857}': # '«Что это за место?»{#dhall_s9_r857}'
            # a28 # r857
            jump dhall_s10

        'dhall_s9_r855{#dhall_s9_r855}': # '«Как я попал сюда?»{#dhall_s9_r855}'
            # a29 # r855
            jump dhall_s15

        'dhall_s9_r858{#dhall_s9_r858}' if dhallLogic.r858_condition(): # '«Не подскажешь, как мне выбраться отсюда?»{#dhall_s9_r858}'
            # a30 # r858
            jump dhall_s13

        'dhall_s9_r5069{#dhall_s9_r5069}': # '«Ты знаешь, кто я?»{#dhall_s9_r5069}'
            # a31 # r5069
            $ dhallLogic.j39460_s9_r5069_action()
            jump dhall_s21

        'dhall_s9_r5748{#dhall_s9_r5748}': # '«Чем ты здесь занимаешься?»{#dhall_s9_r5748}'
            # a32 # r5748
            jump dhall_s25

        'dhall_s9_r6065{#dhall_s9_r6065}': # '«Твой кашель ужасен. Ты хорошо себя чувствуешь?»{#dhall_s9_r6065}'
            # a33 # r6065
            jump dhall_s26

        'dhall_s9_r41663_1{#dhall_s9_r41663_1}' if dhallLogic.get_know_dhall_name(): # '«Ничего… прощай, Дхолл».{#dhall_s9_r41663_1}'
            # a34 # r41663
            jump dhall_s11

        'dhall_s9_r41663_2{#dhall_s9_r41663_2}' if not dhallLogic.get_know_dhall_name(): # '«Ничего… прощай».{#dhall_s9_r41663_2}'
            # a34 # r41663
            jump dhall_s11


# s10 # say859
label dhall_s10: # from 9.1
    'dhall_s10{#dhall_s10}'
    # dhall '«Ты находишься в Морге, Неугомонный. Ты снова… пришел…»{#dhall_s10_1}'
    # nr 'Не успев закончить, Дхолл заходится в приступе кашля. Спустя некоторое время он берет себя в руки, и его дыхание снова становится неровным хрипом.{#dhall_s10_2}'
    # dhall '«…это зал ожидания для тех, кто собирается покинуть тень этой жизни».{#dhall_s10_3}'

    menu:
        'dhall_s10_r861{#dhall_s10_r861}': # '«Расскажи мне о Морге».{#dhall_s10_r861}'
            # a35 # r861
            jump dhall_s32

        'dhall_s10_r860{#dhall_s10_r860}': # '«*Неугомонный*?»{#dhall_s10_r860}'
            # a36 # r860
            jump dhall_s38

        'dhall_s10_r862{#dhall_s10_r862}': # '«Тень этой жизни?»{#dhall_s10_r862}'
            # a37 # r862
            jump dhall_s33

        'dhall_s10_r863{#dhall_s10_r863}': # '«Снова?.. Я был здесь раньше?»{#dhall_s10_r863}'
            # a38 # r863
            jump dhall_s14

        'dhall_s10_r864{#dhall_s10_r864}': # '«Как я попал сюда?»{#dhall_s10_r864}'
            # a39 # r864
            jump dhall_s15

        'dhall_s10_r865{#dhall_s10_r865}': # '«У меня есть другие вопросы…»{#dhall_s10_r865}'
            # a40 # r865
            jump dhall_s9

        'dhall_s10_r866_1{#dhall_s10_r866_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s10_r866_1}'
            # a41 # r866
            jump dhall_s11

        'dhall_s10_r866_2{#dhall_s10_r866_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s10_r866_2}'
            # a41 # r866
            jump dhall_s11


# s11 # say867
label dhall_s11: # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    'dhall_s11{#dhall_s11}'
    # nr 'Когда ты собираешься уйти, Дхолл произносит.{#dhall_s11_1}'
    # dhall '«Знай: я не завидую тебе, Неугомонный. Твои возрождения — проклятье, которого я бы не смог вынести. Ты должен смириться с этим. Когда-нибудь твой путь вернет тебя сюда…»{#dhall_s11_2}'
    # nr 'Дхолл кашляет, из его горла доносятся хрипы.{#dhall_s11_3}'
    # dhall '«Это путь всех существ из плоти и костей».{#dhall_s11_4}'

    menu:
        'dhall_s11_r41564_1{#dhall_s11_r41564_1}' if dhallLogic.get_know_dhall_name(): # '«Тогда, возможно, мы еще встретимся, Дхолл».{#dhall_s11_r41564_1}'
            # a42 # r41564
            jump dhall_dispose

        'dhall_s11_r41564_2{#dhall_s11_r41564_2}' if not dhallLogic.get_know_dhall_name(): # '«Тогда, возможно, мы еще встретимся».{#dhall_s11_r41564_2}'
            # a42 # r41564
            jump dhall_dispose


# s12 # say868
label dhall_s12: # from 2.3 2.4 42.2 42.3 43.1 43.2
    'dhall_s12{#dhall_s12}'
    # dhall '«Несомненно, они здесь, но я не знаю ни их имен, ни где они лежат. Ты прошел путь, по которому ходят многие, но немногие выживают».{#dhall_s12_1}'
    # nr 'Дхолл обводит вокруг тебя рукой.{#dhall_s12_2}'
    # dhall '«Все умершие прибывают сюда. Кое-кто из них, должно быть, путешествовал с тобой».{#dhall_s12_3}'

    menu:
        'dhall_s12_r870{#dhall_s12_r870}' if dhallLogic.r870_condition(): # '«Где та женщина, которую ты упомянул?»{#dhall_s12_r870}'
            # a43 # r870
            jump dhall_s42

        'dhall_s12_r871{#dhall_s12_r871}': # '«Я не вижу изъяна в твоих рассуждениях. У меня еще вопросы…»{#dhall_s12_r871}'
            # a44 # r871
            jump dhall_s9

        'dhall_s12_r872{#dhall_s12_r872}': # '«Тогда я поищу их. Возможно, они смогут возродить мою память. Прощай».{#dhall_s12_r872}'
            # a45 # r872
            jump dhall_s11


# s13 # say875
label dhall_s13: # from 9.3
    'dhall_s13{#dhall_s13}'
    # dhall '«Хм-м… Главные ворота — самый очевидный выход, но они не выпустят никого, кроме тленных…»{#dhall_s13_1}'
    # nr 'Дхолл заходится в кашле, затем продолжает.{#dhall_s13_2}'
    # dhall '«У одного из проводников у главных ворот есть ключ к ним, но он вряд ли откроет их для тебя, разве что ты будешь весьма убедительным».{#dhall_s13_3}'

    menu:
        'dhall_s13_r876{#dhall_s13_r876}': # '«Понятно. У меня еще вопросы…»{#dhall_s13_r876}'
            # a46 # r876
            jump dhall_s9

        'dhall_s13_r877_1{#dhall_s13_r877_1}' if dhallLogic.get_know_dhall_name(): # '«Тогда прощай, Дхолл».{#dhall_s13_r877_1}'
            # a47 # r877
            jump dhall_dispose

        'dhall_s13_r877_2{#dhall_s13_r877_2}' if not dhallLogic.get_know_dhall_name(): # '«Тогда прощай».{#dhall_s13_r877_2}'
            # a47 # r877
            jump dhall_dispose


# s14 # say878
label dhall_s14: # from 10.3
    'dhall_s14{#dhall_s14}'
    # dhall '«Да, *снова*. Ты попадал сюда много раз, Неугомонный. Я надеялся, что этот раз будет последним, учитывая полученные тобой раны».{#dhall_s14_1}'
    # nr 'Он вздыхает.{#dhall_s14_2}'
    # dhall '«Когда же ты откажешься от своих страстей и покинешь эту тень жизни?»{#dhall_s14_3}'

    menu:
        'dhall_s14_r880{#dhall_s14_r880}': # '«*Неугомонный*?»{#dhall_s14_r880}'
            # a48 # r880
            jump dhall_s38

        'dhall_s14_r881{#dhall_s14_r881}': # '«Ранен?»{#dhall_s14_r881}'
            # a49 # r881
            jump dhall_s34

        'dhall_s14_r883{#dhall_s14_r883}': # '«Тень жизни?»{#dhall_s14_r883}'
            # a50 # r883
            jump dhall_s33

        'dhall_s14_r879{#dhall_s14_r879}': # '«Расскажи мне побольше о Морге».{#dhall_s14_r879}'
            # a51 # r879
            jump dhall_s32

        'dhall_s14_r5751{#dhall_s14_r5751}': # '«У меня есть другие вопросы…»{#dhall_s14_r5751}'
            # a52 # r5751
            jump dhall_s9

        'dhall_s14_r5752_1{#dhall_s14_r5752_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s14_r5752_1}'
            # a53 # r5752
            jump dhall_s11

        'dhall_s14_r5752_2{#dhall_s14_r5752_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s14_r5752_2}'
            # a53 # r5752
            jump dhall_s11


# s15 # say885
label dhall_s15: # from 9.2 10.4 32.5
    'dhall_s15{#dhall_s15}'
    # nr 'Дхолл презрительно фыркает, как будто его воротит от воспоминания об этом.{#dhall_s15_1}'
    # dhall '«К Моргу тебя доставила твоя ветхая карета, Неугомонный. Увидев ее, ты мог бы возомнить себя аристократом, учитывая количеств подданных, лежащих в ней зловонной разлагающейся кучей».{#dhall_s15_2}'

    menu:
        'dhall_s15_r886{#dhall_s15_r886}': # '«Я приехал сюда на повозке?»{#dhall_s15_r886}'
            # a54 # r886
            $ dhallLogic.j39463_s15_r886_action()
            jump dhall_s16

        'dhall_s15_r887{#dhall_s15_r887}': # '«Расскажи мне побольше о Морге».{#dhall_s15_r887}'
            # a55 # r887
            jump dhall_s32

        'dhall_s15_r888{#dhall_s15_r888}': # '«У меня есть другие вопросы…»{#dhall_s15_r888}'
            # a56 # r888
            jump dhall_s9

        'dhall_s15_r889_1{#dhall_s15_r889_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s15_r889_1}'
            # a57 # r889
            jump dhall_s11

        'dhall_s15_r889_2{#dhall_s15_r889_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s15_r889_2}'
            # a57 # r889
            jump dhall_s11


# s16 # say890
label dhall_s16: # from 15.0
    'dhall_s16{#dhall_s16}'
    # dhall '«Да… твое тело лежало где-то посреди горы трупов».{#dhall_s16_1}'
    # nr 'Дхолл снова заходится в приступе кашля, который ему удается побороть только несколько минут спустя.{#dhall_s16_2}'
    # dhall '«Твоим „сенешалем“, как всегда, был Фарод, который был рад доставить твое тело к вратам Морга за несколько медяков».{#dhall_s16_3}'

    menu:
        'dhall_s16_r891{#dhall_s16_r891}' if dhallLogic.r891_condition(): # '«Кто этот Фарод?»{#dhall_s16_r891}'
            # a58 # r891
            jump dhall_s17

        'dhall_s16_r892{#dhall_s16_r892}' if dhallLogic.r892_condition(): # '«Похоже, тебе не очень-то нравится Фарод».{#dhall_s16_r892}'
            # a59 # r892
            jump dhall_s35

        'dhall_s16_r893{#dhall_s16_r893}': # '«Расскажи мне побольше о Морге».{#dhall_s16_r893}'
            # a60 # r893
            jump dhall_s32

        'dhall_s16_r894{#dhall_s16_r894}': # '«У меня есть другие вопросы…»{#dhall_s16_r894}'
            # a61 # r894
            jump dhall_s9

        'dhall_s16_r5753_1{#dhall_s16_r5753_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s16_r5753_1}'
            # a62 # r5753
            jump dhall_s11

        'dhall_s16_r5753_2{#dhall_s16_r5753_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s16_r5753_2}'
            # a62 # r5753
            jump dhall_s11


# s17 # say895
label dhall_s17: # from 16.0
    'dhall_s17{#dhall_s17}'
    # dhall '«Он… сборщик мертвых».{#dhall_s17_1}'
    # nr 'Дхолл переводит дыхание, затем продолжает.{#dhall_s17_2}'
    # dhall '«У нас в городе есть такие люди, которые собирают тела тех, кто вступил на путь Истинной Смерти, и приносят их нам для подобающего погребения».{#dhall_s17_3}'

    menu:
        'dhall_s17_r897{#dhall_s17_r897}': # '«Где я могу найти этого Фарода?»{#dhall_s17_r897}'
            # a63 # r897
            jump dhall_s18

        'dhall_s17_r898{#dhall_s17_r898}' if dhallLogic.r898_condition(): # '«Похоже, тебе не очень-то нравится Фарод».{#dhall_s17_r898}'
            # a64 # r898
            jump dhall_s35

        'dhall_s17_r899{#dhall_s17_r899}': # '«Расскажи мне побольше о Морге».{#dhall_s17_r899}'
            # a65 # r899
            jump dhall_s32

        'dhall_s17_r5754{#dhall_s17_r5754}': # '«Понятно. У меня еще вопросы…»{#dhall_s17_r5754}'
            # a66 # r5754
            jump dhall_s9

        'dhall_s17_r6031_1{#dhall_s17_r6031_1}' if dhallLogic.get_know_dhall_name(): # '«Тогда пойду и разыщу этого Фарода. Прощай, Дхолл».{#dhall_s17_r6031_1}'
            # a67 # r6031
            jump dhall_s19

        'dhall_s17_r6031_2{#dhall_s17_r6031_2}' if not dhallLogic.get_know_dhall_name(): # '«Тогда пойду и разыщу этого Фарода. Прощай».{#dhall_s17_r6031_2}'
            # a67 # r6031
            jump dhall_s19


# s18 # say900
label dhall_s18: # from 17.0 29.1 31.0 35.1 36.1
    'dhall_s18{#dhall_s18}'
    # dhall '«Если все пойдет своим чередом, Неугомонный, то скорее Фарод найдет тебя и притащит нам сюда, чем ты найдешь ту лужу грязи, в которой он барахтается».{#dhall_s18_1}'

    menu:
        'dhall_s18_r902{#dhall_s18_r902}': # '«Тем не менее, я должен его найти».{#dhall_s18_r902}'
            # a68 # r902
            jump dhall_s19

        'dhall_s18_r903{#dhall_s18_r903}': # '«Расскажи мне побольше о Морге».{#dhall_s18_r903}'
            # a69 # r903
            jump dhall_s32

        'dhall_s18_r904{#dhall_s18_r904}': # '«Понятно. У меня еще вопросы…»{#dhall_s18_r904}'
            # a70 # r904
            jump dhall_s9

        'dhall_s18_r5755_1{#dhall_s18_r5755_1}' if dhallLogic.get_know_dhall_name(): # '«У меня такое чувство, что наши пути еще пересекутся. Прощай, Дхолл».{#dhall_s18_r5755_1}'
            # a71 # r5755
            jump dhall_s19

        'dhall_s18_r5755_2{#dhall_s18_r5755_2}' if not dhallLogic.get_know_dhall_name(): # '«У меня такое чувство, что наши пути еще пересекутся. Прощай».{#dhall_s18_r5755_2}'
            # a71 # r5755
            jump dhall_s19


# s19 # say901
label dhall_s19: # from 17.4 18.0 18.3 29.3 31.2
    'dhall_s19{#dhall_s19}'
    # nr 'Голос Дхолла начинает звучать предостерегающе.{#dhall_s19_1}'
    # dhall '«Не ищи Фарода, Неугомонный. Я уверен, что ты попросту пройдешь еще один полный круг, и не станешь от этого мудрее, зато обогатишь Фарода на несколько медяков. Прими смерть, Неугомонный. Не повторяй свой круг страданий».{#dhall_s19_2}'

    menu:
        'dhall_s19_r906{#dhall_s19_r906}': # '«Мне *нужно* найти его. Ты не знаешь, где он может быть?»{#dhall_s19_r906}'
            # a72 # r906
            $ dhallLogic.j39464_s19_r906_action()
            jump dhall_s20

        'dhall_s19_r905{#dhall_s19_r905}': # '«Расскажи мне побольше о Морге».{#dhall_s19_r905}'
            # a73 # r905
            jump dhall_s32

        'dhall_s19_r907{#dhall_s19_r907}': # '«У меня есть другие вопросы…»{#dhall_s19_r907}'
            # a74 # r907
            jump dhall_s9

        'dhall_s19_r5756_1{#dhall_s19_r5756_1}' if dhallLogic.get_know_dhall_name(): # '«Я не могу больше с тобой говорить. Прощай, Дхолл».{#dhall_s19_r5756_1}'
            # a75 # r5756
            jump dhall_s11

        'dhall_s19_r5756_2{#dhall_s19_r5756_2}' if not dhallLogic.get_know_dhall_name(): # '«Я не могу больше с тобой говорить. Прощай».{#dhall_s19_r5756_2}'
            # a75 # r5756
            jump dhall_s11


# s20 # say908
label dhall_s20: # from 19.0
    'dhall_s20{#dhall_s20}'
    # nr 'Дхолл умолкает на минуту. Когда же он начинает говорить, то становится ясно, что он делает это с явной неохотой.{#dhall_s20_1}'
    # dhall '«Я не знаю, в каком притоне находится логово Фарода в данный момент, но могу предположить, что оно где-то за воротами Морга, в Улье. Возможно, кто-то из местных знает, где его найти».{#dhall_s20_2}'

    menu:
        'dhall_s20_r910{#dhall_s20_r910}' if dhallLogic.r910_condition(): # '«Похоже, тебе не очень-то нравится Фарод».{#dhall_s20_r910}'
            # a76 # r910
            jump dhall_s35

        'dhall_s20_r909{#dhall_s20_r909}': # '«Расскажи мне побольше о Морге».{#dhall_s20_r909}'
            # a77 # r909
            jump dhall_s32

        'dhall_s20_r5757{#dhall_s20_r5757}': # '«Спасибо. У меня есть другие вопросы…»{#dhall_s20_r5757}'
            # a78 # r5757
            jump dhall_s9

        'dhall_s20_r6030{#dhall_s20_r6030}': # '«Тогда я пойду и поспрашиваю тамошних жителей. Прощай».{#dhall_s20_r6030}'
            # a79 # r6030
            jump dhall_s11


# s21 # say914
label dhall_s21: # from 9.4
    'dhall_s21{#dhall_s21}'
    # dhall '«О тебе, Неугомонный, я знаю совсем немного. О твоих спутниках, лежащих теперь под нашим присмотром, я знаю ненамного больше».{#dhall_s21_1}'
    # nr 'Дхолл вздыхает.{#dhall_s21_2}'
    # dhall '«Прошу тебя, Неугомонный, больше не проси никого идти с тобой: за тобой остается только несчастье. Не разделяй свою ношу с другими».{#dhall_s21_3}'

    menu:
        'dhall_s21_r921{#dhall_s21_r921}': # '«Меня кто-то сопровождал в пути? Они здесь?»{#dhall_s21_r921}'
            # a80 # r921
            $ dhallLogic.j39461_s21_r921_action()
            jump dhall_s2

        'dhall_s21_r922{#dhall_s21_r922}': # '«У меня есть другие вопросы…»{#dhall_s21_r922}'
            # a81 # r922
            jump dhall_s9

        'dhall_s21_r923_1{#dhall_s21_r923_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s21_r923_1}'
            # a82 # r923
            jump dhall_s11

        'dhall_s21_r923_2{#dhall_s21_r923_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s21_r923_2}'
            # a82 # r923
            jump dhall_s11


# s22 # say915
label dhall_s22: # from 47.0
    'dhall_s22{#dhall_s22}'
    # nr 'Дхолл вздыхает.{#dhall_s22_1}'
    # dhall '«Говорят, что есть души, которые не могут достичь Истинной Смерти. Смерть отказалась от них, и их имена никогда не попадут в книгу мертвых. Подняться из мертвых, как это сделал ты… Это наводит на мысль, что ты — одна из таких душ. Само твое существование неприемлемо для нашей фракции».{#dhall_s22_2}'

    menu:
        'dhall_s22_r917{#dhall_s22_r917}': # '«Неприемлемо? Похоже, мое положение оставляет желать лучшего».{#dhall_s22_r917}'
            # a83 # r917
            jump dhall_s8

        'dhall_s22_r918{#dhall_s22_r918}': # '«Ясно. Расскажи мне побольше о Морге».{#dhall_s22_r918}'
            # a84 # r918
            jump dhall_s32

        'dhall_s22_r919{#dhall_s22_r919}': # '«У меня есть другие вопросы…»{#dhall_s22_r919}'
            # a85 # r919
            jump dhall_s9

        'dhall_s22_r920_1{#dhall_s22_r920_1}' if dhallLogic.get_know_dhall_name(): # '«Думаю, я услышал достаточно. Прощай, Дхолл».{#dhall_s22_r920_1}'
            # a86 # r920
            jump dhall_s11

        'dhall_s22_r920_2{#dhall_s22_r920_2}' if not dhallLogic.get_know_dhall_name(): # '«Думаю, я услышал достаточно. Прощай».{#dhall_s22_r920_2}'
            # a86 # r920
            jump dhall_s11


# s23 # say924
label dhall_s23: # from 8.0
    'dhall_s23{#dhall_s23}'
    # dhall '«Потому что заставлять тебя принимать нашу веру несправедливо. Ты должен оставить тень этой жизни по своей воле, а не по нашей».{#dhall_s23_1}'
    # nr 'Дхолл, кажется, готов разразиться очередным приступом кашля, но с некоторыми усилиями ему удается сдержаться.{#dhall_s23_2}'
    # dhall '«И покуда я не покину свою должность, я буду защищать твое право искать свою правду».{#dhall_s23_3}'

    menu:
        'dhall_s23_r927{#dhall_s23_r927}': # '«Каковы твои обязанности?»{#dhall_s23_r927}'
            # a87 # r927
            jump dhall_s25

        'dhall_s23_r928{#dhall_s23_r928}': # '«Расскажи мне побольше о Морге».{#dhall_s23_r928}'
            # a88 # r928
            jump dhall_s32

        'dhall_s23_r925{#dhall_s23_r925}': # '«Хорошо. У меня есть другие вопросы…»{#dhall_s23_r925}'
            # a89 # r925
            jump dhall_s9

        'dhall_s23_r6039_1{#dhall_s23_r6039_1}' if dhallLogic.get_know_dhall_name(): # '«Я выслушал достаточно. Прощай, Дхолл».{#dhall_s23_r6039_1}'
            # a90 # r6039
            jump dhall_s11

        'dhall_s23_r6039_2{#dhall_s23_r6039_2}' if not dhallLogic.get_know_dhall_name(): # '«Я выслушал достаточно. Прощай».{#dhall_s23_r6039_2}'
            # a90 # r6039
            jump dhall_s11


# s24 # say929
label dhall_s24: # from 25.0
    'dhall_s24{#dhall_s24}'
    # dhall '«Я — единственный, кто регистрирует тела, поступающие в наши залы, Неугомонный».{#dhall_s24_1}'
    # nr 'Дхолл начинает кашлять, затем успокаивается.{#dhall_s24_2}'
    # dhall '«Только я вижу лица тех, кто лежит на наших плитах. Тайна твоего существования со мной в безопасности».{#dhall_s24_3}'

    menu:
        'dhall_s24_r1305{#dhall_s24_r1305}': # '«Расскажи мне побольше о Морге».{#dhall_s24_r1305}'
            # a91 # r1305
            jump dhall_s32

        'dhall_s24_r6041{#dhall_s24_r6041}': # '«У меня есть другие вопросы…»{#dhall_s24_r6041}'
            # a92 # r6041
            jump dhall_s9

        'dhall_s24_r6042_1{#dhall_s24_r6042_1}' if dhallLogic.get_know_dhall_name(): # '«Кажется, я обязан тебе. Прощай, Дхолл».{#dhall_s24_r6042_1}'
            # a93 # r6042
            jump dhall_s11

        'dhall_s24_r6042_2{#dhall_s24_r6042_2}' if not dhallLogic.get_know_dhall_name(): # '«Кажется, я обязан тебе. Прощай».{#dhall_s24_r6042_2}'
            # a93 # r6042
            jump dhall_s11


# s25 # say930
label dhall_s25: # from 9.5 23.0
    'dhall_s25{#dhall_s25}'
    # dhall '«Я — писарь. Я веду учет всех тел, которые поступают в Морг».{#dhall_s25_1}'
    # nr 'Дхолл снова кашляет, затем глубоко вздыхает.{#dhall_s25_2}'
    # dhall '«И пока поток трупов идет через Морг, я буду при своей должности».{#dhall_s25_3}'

    menu:
        'dhall_s25_r931{#dhall_s25_r931}' if dhallLogic.r931_condition(): # '«Ты сказал, что я был здесь много раз. Почему же тленные не узнают меня?»{#dhall_s25_r931}'
            # a94 # r931
            $ dhallLogic.j39462_s25_r931_action()
            jump dhall_s24

        'dhall_s25_r932{#dhall_s25_r932}': # '«Расскажи мне побольше о Морге».{#dhall_s25_r932}'
            # a95 # r932
            jump dhall_s32

        'dhall_s25_r933{#dhall_s25_r933}': # '«Понятно. У меня еще вопросы…»{#dhall_s25_r933}'
            # a96 # r933
            jump dhall_s9

        'dhall_s25_r6040_1{#dhall_s25_r6040_1}' if dhallLogic.get_know_dhall_name(): # '«Отлично. Прощай, Дхолл».{#dhall_s25_r6040_1}'
            # a97 # r6040
            jump dhall_s11

        'dhall_s25_r6040_2{#dhall_s25_r6040_2}' if not dhallLogic.get_know_dhall_name(): # '«Отлично. Прощай».{#dhall_s25_r6040_2}'
            # a97 # r6040
            jump dhall_s11


# s26 # say934
label dhall_s26: # from 9.6
    'dhall_s26{#dhall_s26}'
    # dhall '«Я уже близок к Истинной Смерти, Неугомонный. Уже скоро я пересеку Границу Вечности и обрету покой, который давно искал. Я устал от этой смертной сферы…»{#dhall_s26_1}'
    # nr 'Дхолл тяжело вздыхает.{#dhall_s26_2}'
    # dhall '«Для такого, как я, на планах больше нет чудес».{#dhall_s26_3}'

    menu:
        'dhall_s26_r935{#dhall_s26_r935}': # '«Границу Вечности?»{#dhall_s26_r935}'
            # a98 # r935
            jump dhall_s41

        'dhall_s26_r936{#dhall_s26_r936}': # '«Ты уверен? Должен же быть способ помочь тебе».{#dhall_s26_r936}'
            # a99 # r936
            $ dhallLogic.r936_action()
            jump dhall_s27

        'dhall_s26_r937{#dhall_s26_r937}': # '«У меня есть другие вопросы…»{#dhall_s26_r937}'
            # a100 # r937
            jump dhall_s9

        'dhall_s26_r960_1{#dhall_s26_r960_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s26_r960_1}'
            # a101 # r960
            jump dhall_s11

        'dhall_s26_r960_2{#dhall_s26_r960_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s26_r960_2}'
            # a101 # r960
            jump dhall_s11


# s27 # say938
label dhall_s27: # from 26.1
    'dhall_s27{#dhall_s27}'
    # dhall '«Я не желаю жить вечно или возрождаться, Неугомонный. Я не смогу этого вынести».{#dhall_s27_1}'

    menu:
        'dhall_s27_r1303{#dhall_s27_r1303}': # '«Хорошо. У меня есть другие вопросы…»{#dhall_s27_r1303}'
            # a102 # r1303
            jump dhall_s9

        'dhall_s27_r1304_1{#dhall_s27_r1304_1}' if dhallLogic.get_know_dhall_name(): # '«Пусть будет так. Прощай, Дхолл».{#dhall_s27_r1304_1}'
            # a103 # r1304
            jump dhall_s11

        'dhall_s27_r1304_2{#dhall_s27_r1304_2}' if not dhallLogic.get_know_dhall_name(): # '«Пусть будет так. Прощай».{#dhall_s27_r1304_2}'
            # a103 # r1304
            jump dhall_s11


# s28 # say939
label dhall_s28: # from 2.2 42.1
    'dhall_s28{#dhall_s28}'
    # dhall '«Она *разговаривала* с тобой?»{#dhall_s28_1}'
    # nr 'Дхолл переходит на шепот.{#dhall_s28_2}'
    # dhall '«Ты случаем не *бредишь*, Неугомонный? Она достигла Истинной Смерти и ушла туда, куда тебе не добраться».{#dhall_s28_3}'

    menu:
        'dhall_s28_r981_1{#dhall_s28_r981_1}' if dhallLogic.get_know_dhall_name(): # '«Она разговаривала со мной, Дхолл. Ее душа находится здесь».{#dhall_s28_r981_1}'
            # a104 # r981
            jump dhall_s30

        'dhall_s28_r981_2{#dhall_s28_r981_2}' if not dhallLogic.get_know_dhall_name(): # '«Она разговаривала со мной. Ее душа находится здесь».{#dhall_s28_r981_2}'
            # a104 # r981
            jump dhall_s30

        'dhall_s28_r982{#dhall_s28_r982}': # '«Возможно, я это выдумал. У меня есть другие вопросы…»{#dhall_s28_r982}'
            # a105 # r982
            jump dhall_s9

        'dhall_s28_r873_1{#dhall_s28_r873_1}' if dhallLogic.get_know_dhall_name(): # '«Не уверен, что она достигла Истинной Смерти. Прощай, Дхолл».{#dhall_s28_r873_1}'
            # a106 # r873
            jump dhall_s11

        'dhall_s28_r873_2{#dhall_s28_r873_2}' if not dhallLogic.get_know_dhall_name(): # '«Не уверен, что она достигла Истинной Смерти. Прощай».{#dhall_s28_r873_2}'
            # a106 # r873
            jump dhall_s11


# s29 # say941
label dhall_s29: # from 36.0
    'dhall_s29{#dhall_s29}'
    # nr 'Дхолл умолкает в раздумье.{#dhall_s29_1}'
    # dhall '«Скорее всего. Ты что-то потерял… что-то особенно ценное?»{#dhall_s29_2}'
    # nr 'Он хмурится, понижая тон.{#dhall_s29_3}'
    # dhall '«Вряд ли Фарод будет делать исключения для чего либо, кроме вживленных в плоть вещей, но порой даже этого недостаточно, чтобы остановить его жадность».{#dhall_s29_4}'

    menu:
        'dhall_s29_r942{#dhall_s29_r942}' if dhallLogic.r942_condition(): # '«Я потерял дневник».{#dhall_s29_r942}'
            # a107 # r942
            jump dhall_s31

        'dhall_s29_r943{#dhall_s29_r943}' if dhallLogic.r943_condition(): # '«Хм-м. Ты не знаешь, где мне найти Фарода?»{#dhall_s29_r943}'
            # a108 # r943
            jump dhall_s18

        'dhall_s29_r944{#dhall_s29_r944}': # '«У меня есть другие вопросы…»{#dhall_s29_r944}'
            # a109 # r944
            jump dhall_s9

        'dhall_s29_r6026_1{#dhall_s29_r6026_1}' if dhallLogic.r6026_condition() and dhallLogic.get_know_dhall_name(): # '«Возможно, мне стоит поговорить с Фародом. Прощай, Дхолл».{#dhall_s29_r6026_1}'
            # a110 # r6026
            jump dhall_s19

        'dhall_s29_r6026_2{#dhall_s29_r6026_2}' if dhallLogic.r6026_condition() and not dhallLogic.get_know_dhall_name(): # '«Возможно, мне стоит поговорить с Фародом. Прощай».{#dhall_s29_r6026_2}'
            # a110 # r6026
            jump dhall_s19

        'dhall_s29_r874_1{#dhall_s29_r874_1}' if dhallLogic.r874_condition() and dhallLogic.get_know_dhall_name(): # '«Понятно. Прощай, Дхолл».{#dhall_s29_r874_1}'
            # a111 # r874
            jump dhall_s11

        'dhall_s29_r874_2{#dhall_s29_r874_2}' if dhallLogic.r874_condition() and not dhallLogic.get_know_dhall_name(): # '«Понятно. Прощай».{#dhall_s29_r874_2}'
            # a111 # r874
            jump dhall_s11


# s30 # say945
label dhall_s30: # from 28.0
    'dhall_s30{#dhall_s30}'
    # nr 'Дхолл описывает пальцем полукруг в воздухе перед собой.{#dhall_s30_1}'
    # dhall '«Это дурное знамение, Неугомонный. Я молюсь о том, чтобы это оказалось твоим сном… и все же боюсь, это не так».{#dhall_s30_2}'

    menu:
        'dhall_s30_r946{#dhall_s30_r946}': # '«Возможно, мне показалось. У меня еще вопросы».{#dhall_s30_r946}'
            # a112 # r946
            jump dhall_s9

        'dhall_s30_r947_1{#dhall_s30_r947_1}' if dhallLogic.get_know_dhall_name(): # '«Возможно, мы поговорим об этом позже. Прощай, Дхолл».{#dhall_s30_r947_1}'
            # a113 # r947
            jump dhall_s11

        'dhall_s30_r947_2{#dhall_s30_r947_2}' if not dhallLogic.get_know_dhall_name(): # '«Возможно, мы поговорим об этом позже. Прощай».{#dhall_s30_r947_2}'
            # a113 # r947
            jump dhall_s11


# s31 # say850
label dhall_s31: # from 29.0
    'dhall_s31{#dhall_s31}'
    # dhall '«Дневник? Если он представляет хоть какую-то ценность, то он наверняка в руках Фарода».{#dhall_s31_1}'

    menu:
        'dhall_s31_r948{#dhall_s31_r948}' if dhallLogic.r948_condition(): # '«Где мне найти этого Фарода?»{#dhall_s31_r948}'
            # a114 # r948
            jump dhall_s18

        'dhall_s31_r949{#dhall_s31_r949}': # '«Понятно. У меня еще вопросы…»{#dhall_s31_r949}'
            # a115 # r949
            jump dhall_s9

        'dhall_s31_r6027_1{#dhall_s31_r6027_1}' if dhallLogic.r6027_condition() and dhallLogic.get_know_dhall_name(): # '«В таком случае, я должен разыскать его. Прощай, Дхолл».{#dhall_s31_r6027_1}'
            # a116 # r6027
            jump dhall_s19

        'dhall_s31_r6027_2{#dhall_s31_r6027_2}' if dhallLogic.r6027_condition() and not dhallLogic.get_know_dhall_name(): # '«В таком случае, я должен разыскать его. Прощай».{#dhall_s31_r6027_2}'
            # a116 # r6027
            jump dhall_s19

        'dhall_s31_r6066_1{#dhall_s31_r6066_1}' if dhallLogic.r6066_condition() and dhallLogic.get_know_dhall_name(): # '«Понятно. Прощай, Дхолл».{#dhall_s31_r6066_1}'
            # a117 # r6066
            jump dhall_s11

        'dhall_s31_r6066_2{#dhall_s31_r6066_2}' if dhallLogic.r6066_condition() and not dhallLogic.get_know_dhall_name(): # '«Понятно. Прощай».{#dhall_s31_r6066_2}'
            # a117 # r6066
            jump dhall_s11


# s32 # say950
label dhall_s32: # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    'dhall_s32{#dhall_s32}'
    # dhall '«Это место, куда мертвых доставляют для погребения или кремации. Забота об умерших, покинувших эту тень жизни и ступивших на путь Истинной Смерти, входит в обязанности тленных».{#dhall_s32_1}'
    # nr 'Дхолл от волнения понижает тон.{#dhall_s32_2}'
    # dhall '«Должно быть, ты был тяжело ранен, раз не узнаешь это место. Это практически твой дом».{#dhall_s32_3}'

    menu:
        'dhall_s32_r951{#dhall_s32_r951}': # '«Тень жизни?»{#dhall_s32_r951}'
            # a118 # r951
            jump dhall_s33

        'dhall_s32_r953{#dhall_s32_r953}': # '«Истинной Смерти?»{#dhall_s32_r953}'
            # a119 # r953
            $ dhallLogic.r953_action()
            jump dhall_s48

        'dhall_s32_r954{#dhall_s32_r954}': # '«Тленных?»{#dhall_s32_r954}'
            # a120 # r954
            jump dhall_s47

        'dhall_s32_r955{#dhall_s32_r955}': # '«Сигил?»{#dhall_s32_r955}'
            # a121 # r955
            jump dhall_s37

        'dhall_s32_r956{#dhall_s32_r956}': # '«Ранен?»{#dhall_s32_r956}'
            # a122 # r956
            jump dhall_s34

        'dhall_s32_r846{#dhall_s32_r846}': # '«Как я попал сюда?»{#dhall_s32_r846}'
            # a123 # r846
            jump dhall_s15

        'dhall_s32_r5735{#dhall_s32_r5735}': # '«У меня есть другие вопросы…»{#dhall_s32_r5735}'
            # a124 # r5735
            jump dhall_s9

        'dhall_s32_r6062_1{#dhall_s32_r6062_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s32_r6062_1}'
            # a125 # r6062
            jump dhall_s11

        'dhall_s32_r6062_2{#dhall_s32_r6062_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s32_r6062_2}'
            # a125 # r6062
            jump dhall_s11


# s33 # say957
label dhall_s33: # from 10.2 14.2 32.0 41.0 47.2 49.0
    'dhall_s33{#dhall_s33}'
    # dhall '«Да, тень. Видишь ли, Неугомонный, эта жизнь… она не настоящая. Наши с тобой жизни — всего лишь тени, жалкое подобие от того, что было однажды жизнью. Эта „жизнь“ — то, куда мы попадаем *после* того, как умираем. А здесь мы… в западне. В клетке. До тех пор, пока не достигнем Истинной Смерти».{#dhall_s33_1}'

    menu:
        'dhall_s33_r958{#dhall_s33_r958}': # '«Истинной Смерти?»{#dhall_s33_r958}'
            # a126 # r958
            $ dhallLogic.r958_action()
            jump dhall_s48

        'dhall_s33_r959{#dhall_s33_r959}': # '«Почему ты решил, что эта жизнь ненастоящая?»{#dhall_s33_r959}'
            # a127 # r959
            jump dhall_s50

        'dhall_s33_r5736{#dhall_s33_r5736}': # '«Расскажи мне еще о Морге».{#dhall_s33_r5736}'
            # a128 # r5736
            jump dhall_s32

        'dhall_s33_r5737{#dhall_s33_r5737}': # '«Понятно. У меня еще вопросы…»{#dhall_s33_r5737}'
            # a129 # r5737
            jump dhall_s9

        'dhall_s33_r5738_1{#dhall_s33_r5738_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s33_r5738_1}'
            # a130 # r5738
            jump dhall_s11

        'dhall_s33_r5738_2{#dhall_s33_r5738_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s33_r5738_2}'
            # a130 # r5738
            jump dhall_s11


# s34 # say961
label dhall_s34: # from 14.1 32.4
    'dhall_s34{#dhall_s34}'
    # dhall '«Да, раны, украшающие твое тело… Получи их более слабый человек, он бы уже был на пути к Истинной Смерти, а у тебя некоторые из них уже зажили».{#dhall_s34_1}'
    # nr 'Дхолл надрывно кашляет, затем успокаивается.{#dhall_s34_2}'
    # dhall '«Но это всего лишь поверхностные раны».{#dhall_s34_3}'

    menu:
        'dhall_s34_r1301{#dhall_s34_r1301}': # '«Всего лишь поверхностные раны? Что ты имеешь в виду?»{#dhall_s34_r1301}'
            # a131 # r1301
            $ dhallLogic.j39470_s34_r1301_action()
            jump dhall_s53

        'dhall_s34_r1302{#dhall_s34_r1302}': # '«Расскажи мне побольше о Морге».{#dhall_s34_r1302}'
            # a132 # r1302
            jump dhall_s32

        'dhall_s34_r5746{#dhall_s34_r5746}': # '«У меня есть другие вопросы…»{#dhall_s34_r5746}'
            # a133 # r5746
            jump dhall_s9

        'dhall_s34_r5747_1{#dhall_s34_r5747_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s34_r5747_1}'
            # a134 # r5747
            jump dhall_s11

        'dhall_s34_r5747_2{#dhall_s34_r5747_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s34_r5747_2}'
            # a134 # r5747
            jump dhall_s11


# s35 # say962
label dhall_s35: # from 16.1 17.1 20.0
    'dhall_s35{#dhall_s35}'
    # dhall '«Есть люди, которых я уважаю, Неугомонный».{#dhall_s35_1}'
    # nr 'Дхолл успокаивает свое неровное дыхание.{#dhall_s35_2}'
    # dhall '«Фарод не входит в их число. Он носит свою дурную репутацию как знак гордости и свободно распоряжается имуществом умерших. Он рыцарь легкой наживы, подлая мразь самого низкого пошиба».{#dhall_s35_3}'

    menu:
        'dhall_s35_r963{#dhall_s35_r963}': # '«Рыцарь легкой наживы?»{#dhall_s35_r963}'
            # a135 # r963
            jump dhall_s36

        'dhall_s35_r964{#dhall_s35_r964}' if dhallLogic.r964_condition(): # '«Ты не знаешь, где я могу найти Фарода?»{#dhall_s35_r964}'
            # a136 # r964
            jump dhall_s18

        'dhall_s35_r965{#dhall_s35_r965}': # '«Понятно. У меня еще вопросы…»{#dhall_s35_r965}'
            # a137 # r965
            jump dhall_s9

        'dhall_s35_r6028_1{#dhall_s35_r6028_1}' if dhallLogic.get_know_dhall_name(): # '«Звучит ободряюще. Прощай, Дхолл».{#dhall_s35_r6028_1}'
            # a138 # r6028
            jump dhall_s11

        'dhall_s35_r6028_2{#dhall_s35_r6028_2}' if not dhallLogic.get_know_dhall_name(): # '«Звучит ободряюще. Прощай».{#dhall_s35_r6028_2}'
            # a138 # r6028
            jump dhall_s11


# s36 # say966
label dhall_s36: # from 35.0
    'dhall_s36{#dhall_s36}'
    # dhall '«Рыцарь легкой наживы».{#dhall_s36_1}'
    # nr 'Дхолл кашляет.{#dhall_s36_2}'
    # dhall '«Вор. Все, кого Фарод приносит к нашим стенам, лишены всего имущества, которым они обладали при жизни. Фарод присваивает себе все, что ему удается вырвать из их окоченевших пальцев».{#dhall_s36_3}'

    menu:
        'dhall_s36_r967{#dhall_s36_r967}': # '«Мог ли Фарод взять что-нибудь у *меня*?»{#dhall_s36_r967}'
            # a139 # r967
            jump dhall_s29

        'dhall_s36_r968{#dhall_s36_r968}' if dhallLogic.r968_condition(): # '«Ты не знаешь, где я могу найти Фарода?»{#dhall_s36_r968}'
            # a140 # r968
            jump dhall_s18

        'dhall_s36_r969{#dhall_s36_r969}': # '«Понятно. У меня еще вопросы…»{#dhall_s36_r969}'
            # a141 # r969
            jump dhall_s9

        'dhall_s36_r6029_1{#dhall_s36_r6029_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s36_r6029_1}'
            # a142 # r6029
            jump dhall_s11

        'dhall_s36_r6029_2{#dhall_s36_r6029_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s36_r6029_2}'
            # a142 # r6029
            jump dhall_s11


# s37 # say970
label dhall_s37: # from 32.3
    'dhall_s37{#dhall_s37}'
    # dhall '«Сигил — это наш прекрасный город, Неугомонный».{#dhall_s37_1}'

    menu:
        'dhall_s37_r971{#dhall_s37_r971}': # '«Расскажи мне еще о Морге».{#dhall_s37_r971}'
            # a143 # r971
            jump dhall_s32

        'dhall_s37_r972{#dhall_s37_r972}': # '«Понятно. У меня еще вопросы…»{#dhall_s37_r972}'
            # a144 # r972
            jump dhall_s9

        'dhall_s37_r5758_1{#dhall_s37_r5758_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s37_r5758_1}'
            # a145 # r5758
            jump dhall_s11

        'dhall_s37_r5758_2{#dhall_s37_r5758_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s37_r5758_2}'
            # a145 # r5758
            jump dhall_s11


# s38 # say973
label dhall_s38: # from 10.1 14.0
    'dhall_s38{#dhall_s38}'
    # dhall '«Неугомонный — имя не хуже других…»{#dhall_s38_1}'
    # nr 'Дхолл переводит дыхание.{#dhall_s38_2}'
    # dhall '«Ведь что-то держит тебя здесь, не так ли? Какое-то незаконченное дело, какая-то страсть, которая должна быть подавлена, прежде чем ты сможешь достигнуть Истинной Смерти?»{#dhall_s38_3}'

    menu:
        'dhall_s38_r974{#dhall_s38_r974}': # '«Истинной Смерти?»{#dhall_s38_r974}'
            # a146 # r974
            $ dhallLogic.r974_action()
            jump dhall_s48

        'dhall_s38_r975{#dhall_s38_r975}': # '«Расскажи мне еще о Морге».{#dhall_s38_r975}'
            # a147 # r975
            jump dhall_s32

        'dhall_s38_r5749{#dhall_s38_r5749}': # '«У меня есть другие вопросы…»{#dhall_s38_r5749}'
            # a148 # r5749
            jump dhall_s9

        'dhall_s38_r5750_1{#dhall_s38_r5750_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s38_r5750_1}'
            # a149 # r5750
            jump dhall_s11

        'dhall_s38_r5750_2{#dhall_s38_r5750_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s38_r5750_2}'
            # a149 # r5750
            jump dhall_s11


# s39 # say884
label dhall_s39: # -
    'dhall_s39{#dhall_s39}'
    # dhall '«Ты будешь делать то же, что и раньше, Неугомонный. Разыщешь того любителя звенелок, того плешивого идиота, Червеволосого, и вернешь свое имущество. После продолжишь свои бессмысленные поиски, пытаясь выполнить бессмысленные задания, собирая бессмысленные предметы. Затем ты падешь и вернешься назад к нам. Сэкономь время и поговори с мной сейчас, чтобы нам не пришлось вновь заводить этот разговор, когда твои воспоминания снова покинут тебя».{#dhall_s39_1}'

    menu:
        'dhall_s39_r976{#dhall_s39_r976}': # '«У меня есть другие вопросы…»{#dhall_s39_r976}'
            # a150 # r976
            jump dhall_s9

        'dhall_s39_r977_1{#dhall_s39_r977_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s39_r977_1}'
            # a151 # r977
            jump dhall_dispose

        'dhall_s39_r977_2{#dhall_s39_r977_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s39_r977_2}'
            # a151 # r977
            jump dhall_dispose


# s40 # say978
label dhall_s40: # - # IF ~  Global("Dhall","GLOBAL",1)
    'dhall_s40{#dhall_s40}'
    # nr 'Дхолл мельком смотрит на тебя.{#dhall_s40_1}'
    # dhall '«Итак. Ты вернулся…»{#dhall_s40_2}'
    # nr 'Дхолл начинает хрипло дышать, затем у него начинается удушливый кашель. Спустя минуту кашель прекращается, и он, хрипло дыша, продолжает.{#dhall_s40_3}'
    # dhall '«…приветствую тебя снова, Неугомонный».{#dhall_s40_4}'

    menu:
        'dhall_s40_r979_1{#dhall_s40_r979_1}' if dhallLogic.get_know_dhall_name(): # '«У меня к тебе другие вопросы, Дхолл».{#dhall_s40_r979_1}'
            # a152 # r979
            jump dhall_s9

        'dhall_s40_r979_2{#dhall_s40_r979_2}' if not dhallLogic.get_know_dhall_name(): # '«У меня к тебе другие вопросы».{#dhall_s40_r979_2}'
            # a152 # r979
            jump dhall_s9

        'dhall_s40_r980{#dhall_s40_r980}': # '«Неважно. Прощай».{#dhall_s40_r980}'
            # a153 # r980
            jump dhall_dispose


# s41 # say983
label dhall_s41: # from 26.0 52.0
    'dhall_s41{#dhall_s41}'
    # dhall '«Границу между владениями тени этой жизни и Истинной Смерти».{#dhall_s41_1}'

    menu:
        'dhall_s41_r984{#dhall_s41_r984}': # '«Тень этой жизни?»{#dhall_s41_r984}'
            # a154 # r984
            jump dhall_s33

        'dhall_s41_r985{#dhall_s41_r985}': # '«Истинной Смерти?»{#dhall_s41_r985}'
            # a155 # r985
            $ dhallLogic.r985_action()
            jump dhall_s48

        'dhall_s41_r5739{#dhall_s41_r5739}': # '«Расскажи мне побольше о Морге».{#dhall_s41_r5739}'
            # a156 # r5739
            jump dhall_s32

        'dhall_s41_r5740{#dhall_s41_r5740}': # '«Понятно. У меня еще вопросы…»{#dhall_s41_r5740}'
            # a157 # r5740
            jump dhall_s9

        'dhall_s41_r5741_1{#dhall_s41_r5741_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s41_r5741_1}'
            # a158 # r5741
            jump dhall_s11

        'dhall_s41_r5741_2{#dhall_s41_r5741_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s41_r5741_2}'
            # a158 # r5741
            jump dhall_s11


# s42 # say5075
label dhall_s42: # from 2.0 12.0 43.0
    'dhall_s42{#dhall_s42}'
    # dhall '«В северо-западном мемориальном зале, этажом ниже. Проверь гробы… ее имя должно быть на одной из мемориальных табличек. Возможно, это оживит твои воспоминания».{#dhall_s42_1}'

    menu:
        'dhall_s42_r5076{#dhall_s42_r5076}' if dhallLogic.r5076_condition(): # '«Я не знаю. Не припомню, чтобы даже путешествовал вместе с женщиной».{#dhall_s42_r5076}'
            # a159 # r5076
            jump dhall_s43

        'dhall_s42_r5077{#dhall_s42_r5077}' if dhallLogic.r5077_condition(): # '«Да, она утверждает, что знает меня, но я не могу ее вспомнить».{#dhall_s42_r5077}'
            # a160 # r5077
            jump dhall_s28

        'dhall_s42_r5078{#dhall_s42_r5078}' if dhallLogic.r5078_condition(): # '«Ты говорил, что здесь есть другие. Кто они?»{#dhall_s42_r5078}'
            # a161 # r5078
            jump dhall_s12

        'dhall_s42_r5079{#dhall_s42_r5079}' if dhallLogic.r5079_condition(): # '«Ты говорил, что здесь есть другие. Кто они?»{#dhall_s42_r5079}'
            # a162 # r5079
            jump dhall_s12

        'dhall_s42_r6067{#dhall_s42_r6067}': # '«Возможно, мне стоит найти ее. Перед уходом у меня есть к тебе другие вопросы…»{#dhall_s42_r6067}'
            # a163 # r6067
            jump dhall_s9

        'dhall_s42_r6068{#dhall_s42_r6068}': # '«Пойду вниз, в мемориальный зал. Может быть, я найду ее тело».{#dhall_s42_r6068}'
            # a164 # r6068
            jump dhall_s11


# s43 # say5080
label dhall_s43: # from 2.1 42.0
    'dhall_s43{#dhall_s43}'
    # nr 'Дхолл не отвечает. Он просто молчаливо смотрит на тебя.{#dhall_s43_1}'

    menu:
        'dhall_s43_r5081{#dhall_s43_r5081}' if dhallLogic.r5081_condition(): # '«Где я могу найти ее?»{#dhall_s43_r5081}'
            # a165 # r5081
            jump dhall_s42

        'dhall_s43_r5082{#dhall_s43_r5082}' if dhallLogic.r5082_condition(): # '«Ты говорил, что здесь похоронены и другие мои спутники. Где они?»{#dhall_s43_r5082}'
            # a166 # r5082
            jump dhall_s12

        'dhall_s43_r5083{#dhall_s43_r5083}' if dhallLogic.r5083_condition(): # '«Ты говорил, что здесь похоронены и другие мои спутники. Где они?»{#dhall_s43_r5083}'
            # a167 # r5083
            jump dhall_s12

        'dhall_s43_r6069{#dhall_s43_r6069}': # '«У меня есть другие вопросы к тебе…»{#dhall_s43_r6069}'
            # a168 # r6069
            jump dhall_s9

        'dhall_s43_r6070{#dhall_s43_r6070}': # '«Тогда прощай».{#dhall_s43_r6070}'
            # a169 # r6070
            jump dhall_s11


# s44 # say840
label dhall_s44: # from 1.0 6.2 7.0
    'dhall_s44{#dhall_s44}'
    # dhall '«Знаю ли я тебя? Я…»{#dhall_s44_1}'
    # nr 'В голосе писца звучит горечь.{#dhall_s44_2}'
    # dhall '«Я *никогда* не знал тебя, Неугомонный. Не больше, чем ты знал о себе сам».{#dhall_s44_3}'
    # nr 'Он умолкает на секунду.{#dhall_s44_4}'
    # dhall '«Ты ведь все забыл, не так ли?»{#dhall_s44_5}'

    menu:
        'dhall_s44_r1327{#dhall_s44_r1327}': # '«*Кто* ты?»{#dhall_s44_r1327}'
            # a170 # r1327
            $ dhallLogic.r1327_action()
            jump dhall_s45


# s45 # say5728
label dhall_s45: # from 44.0
    'dhall_s45_1{#dhall_s45_1}'
    $ dhallLogic.set_know_dhall_name()
    $ achievement_meet_dhall.grant()
    'dhall_s45_2{#dhall_s45_2}'
    # dhall '«Как всегда, вопрос. И как всегда, неправильный».{#dhall_s45_1}'
    # nr 'Он делает легкий поклон, но движение вызывает у него неожиданный приступ кашля.{#dhall_s45_2}'
    # dhall '«Я…»{#dhall_s45_3}'
    # nr 'Он умолкает на минуту, переводя дыхание.{#dhall_s45_4}'
    # dhall '«Я… Дхолл».{#dhall_s45_5}'

    menu:
        'dhall_s45_r5731_1{#dhall_s45_r5731_1}' if dhallLogic.get_know_dhall_name(): # '«Возможно, ты ответишь на некоторые из моих вопросов, Дхолл…»{#dhall_s45_r5731_1}'
            # a171 # r5731
            $ dhallLogic.j39459_s45_r5731_action()
            jump dhall_s9

        'dhall_s45_r5731_2{#dhall_s45_r5731_2}' if not dhallLogic.get_know_dhall_name(): # '«Возможно, ты ответишь на некоторые из моих вопросов…»{#dhall_s45_r5731_2}'
            # a171 # r5731
            $ dhallLogic.j39459_s45_r5731_action()
            jump dhall_s9

        'dhall_s45_r5732{#dhall_s45_r5732}': # '«У меня нет времени на это. Прощай».{#dhall_s45_r5732}'
            # a172 # r5732
            $ dhallLogic.j39459_s45_r5732_action()
            jump dhall_s46


# s46 # say5730
label dhall_s46: # from 45.1
    'dhall_s46{#dhall_s46}'
    # dhall '«Хорошо, Неугомонный».{#dhall_s46_1}'
    # nr 'Дхолл кивает.{#dhall_s46_2}'
    # dhall '«Но, боюсь, в данном вопросе время тебе не враг».{#dhall_s46_3}'
    # nr 'Он снова берется за перо.{#dhall_s46_4}'
    # dhall '«Когда ты снова захочешь поговорить, я буду здесь».{#dhall_s46_5}'

    menu:
        'dhall_s46_r40005{#dhall_s46_r40005}': # '«Я еще вернусь. Прощай».{#dhall_s46_r40005}'
            # a173 # r40005
            jump dhall_dispose


# s47 # say847
label dhall_s47: # from 32.2
    'dhall_s47{#dhall_s47}'
    # dhall '«Мы — тленные, фракция, собравшая всех тех, кто понял иллюзорность этой жизни. Мы ждем следующей жизни и помогаем другим в их путешествии».{#dhall_s47_1}'

    menu:
        'dhall_s47_r6032{#dhall_s47_r6032}' if dhallLogic.r6032_condition(): # '«Может, ты мне объяснишь, почему тленные хотят моей смерти?»{#dhall_s47_r6032}'
            # a174 # r6032
            jump dhall_s22

        'dhall_s47_r6033{#dhall_s47_r6033}': # '«Истинной Смерти?»{#dhall_s47_r6033}'
            # a175 # r6033
            $ dhallLogic.r6033_action()
            jump dhall_s48

        'dhall_s47_r6034{#dhall_s47_r6034}': # '«Иллюзорность этой жизни?»{#dhall_s47_r6034}'
            # a176 # r6034
            jump dhall_s33

        'dhall_s47_r6035{#dhall_s47_r6035}': # '«Расскажи мне побольше о Морге».{#dhall_s47_r6035}'
            # a177 # r6035
            jump dhall_s32

        'dhall_s47_r6036{#dhall_s47_r6036}': # '«У меня есть другие вопросы к тебе…»{#dhall_s47_r6036}'
            # a178 # r6036
            jump dhall_s9

        'dhall_s47_r6037{#dhall_s47_r6037}': # '«Тогда прощай».{#dhall_s47_r6037}'
            # a179 # r6037
            jump dhall_s11


# s48 # say848
label dhall_s48: # from 32.1 33.0 38.0 41.1 47.1
    'dhall_s48{#dhall_s48}'
    # dhall '«Истинная Смерть — это небытие. Состояние, свободное от мыслей, чувств, страстей».{#dhall_s48_1}'
    # nr 'Дхолл кашляет, затем восстанавливает неровное дыхание.{#dhall_s48_2}'
    # dhall '«Состояние чистоты».{#dhall_s48_3}'

    menu:
        'dhall_s48_r6043{#dhall_s48_r6043}': # '«Похоже на забвение. И зачем кому-то это нужно?»{#dhall_s48_r6043}'
            # a180 # r6043
            jump dhall_s49

        'dhall_s48_r6044{#dhall_s48_r6044}': # '«Ого. Расскажи мне побольше о Морге».{#dhall_s48_r6044}'
            # a181 # r6044
            jump dhall_s32

        'dhall_s48_r6045{#dhall_s48_r6045}': # '«Понятно… У меня есть другие вопросы».{#dhall_s48_r6045}'
            # a182 # r6045
            jump dhall_s9

        'dhall_s48_r6046_1{#dhall_s48_r6046_1}' if dhallLogic.get_know_dhall_name(): # '«Я должен идти. Прощай, Дхолл».{#dhall_s48_r6046_1}'
            # a183 # r6046
            jump dhall_s11

        'dhall_s48_r6046_2{#dhall_s48_r6046_2}' if not dhallLogic.get_know_dhall_name(): # '«Я должен идти. Прощай».{#dhall_s48_r6046_2}'
            # a183 # r6046
            jump dhall_s11


# s49 # say849
label dhall_s49: # from 48.0
    'dhall_s49{#dhall_s49}'
    # dhall '«По-твоему, лучше оставаться в тени того, что раньше называлось жизнью? Я так не думаю».{#dhall_s49_1}'

    menu:
        'dhall_s49_r6047{#dhall_s49_r6047}': # '«Тень жизни?»{#dhall_s49_r6047}'
            # a184 # r6047
            jump dhall_s33

        'dhall_s49_r6048{#dhall_s49_r6048}': # '«Расскажи мне побольше о Морге».{#dhall_s49_r6048}'
            # a185 # r6048
            jump dhall_s32

        'dhall_s49_r6049{#dhall_s49_r6049}': # '«Понятно… У меня есть другие вопросы».{#dhall_s49_r6049}'
            # a186 # r6049
            jump dhall_s9

        'dhall_s49_r6050_1{#dhall_s49_r6050_1}' if dhallLogic.get_know_dhall_name(): # '«Я должен идти. Прощай, Дхолл».{#dhall_s49_r6050_1}'
            # a187 # r6050
            jump dhall_s11

        'dhall_s49_r6050_2{#dhall_s49_r6050_2}' if not dhallLogic.get_know_dhall_name(): # '«Я должен идти. Прощай».{#dhall_s49_r6050_2}'
            # a187 # r6050
            jump dhall_s11


# s50 # say853
label dhall_s50: # from 33.1
    'dhall_s50{#dhall_s50}'
    # dhall '«А что заставляет тебя думать, что эта жизнь *настоящая*? Прислушайся к себе. Разве ты не чувствуешь какую-то опустошенность?»{#dhall_s50_1}'
    # nr 'Дхолл качает головой.{#dhall_s50_2}'
    # dhall '«Это чистилище. Здесь только горе. Несчастье. Страдание. Они не являются элементами „жизни“. Они — часть клетки, в которой мы заперты в этой тени».{#dhall_s50_3}'

    menu:
        'dhall_s50_r6051{#dhall_s50_r6051}': # '«Мне кажется, твой фатализм превзошел тебя самого. Жизнь состоит из этих элементов, но не только из них».{#dhall_s50_r6051}'
            # a188 # r6051
            $ dhallLogic.r6051_action()
            jump dhall_s51

        'dhall_s50_r6052{#dhall_s50_r6052}': # '«Заперты? Каким образом?»{#dhall_s50_r6052}'
            # a189 # r6052
            jump dhall_s51

        'dhall_s50_r6053{#dhall_s50_r6053}': # '«Довольно этой философии. Как все это относится к тому, что я оказался здесь?»{#dhall_s50_r6053}'
            # a190 # r6053
            $ dhallLogic.r6053_action()
            jump dhall_s51


# s51 # say5733
label dhall_s51: # from 50.0 50.1 50.2
    'dhall_s51{#dhall_s51}'
    # nr 'Дхолл качает головой.{#dhall_s51_1}'
    # dhall '«Страсти — тяжелый груз. Многих они приковали к этой тени жизни. Цепляясь за эмоции, ты будешь без конца возрождаться в этой „жизни“, в постоянных муках, так никогда и не познав чистоты Истинной Смерти».{#dhall_s51_2}'

    menu:
        'dhall_s51_r6054{#dhall_s51_r6054}': # '«Понимаю… Как же выбраться из этого кольца возрождений и достигнуть этой… Истинной Смерти?»{#dhall_s51_r6054}'
            # a191 # r6054
            jump dhall_s52

        'dhall_s51_r6055{#dhall_s51_r6055}': # '«Расскажи мне побольше о Морге».{#dhall_s51_r6055}'
            # a192 # r6055
            jump dhall_s32

        'dhall_s51_r6056{#dhall_s51_r6056}': # '«У меня есть другие вопросы…»{#dhall_s51_r6056}'
            # a193 # r6056
            jump dhall_s9

        'dhall_s51_r6057_1{#dhall_s51_r6057_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s51_r6057_1}'
            # a194 # r6057
            jump dhall_s11

        'dhall_s51_r6057_2{#dhall_s51_r6057_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s51_r6057_2}'
            # a194 # r6057
            jump dhall_s11


# s52 # say5734
label dhall_s52: # from 51.0
    'dhall_s52{#dhall_s52}'
    # dhall '«Убей в себе страсти. Отбрось нужду в переживаниях. Когда ты будешь действительно очищен, кольцо возрождений прервется, и ты обретешь покой».{#dhall_s52_1}'
    # nr 'Дхолл делает вздох… как будто смерть клокочет в его глотке.{#dhall_s52_2}'
    # dhall '«За нашими бренными телами, за Границей Вечности, находится покой, к которому стремится каждая душа».{#dhall_s52_3}'

    menu:
        'dhall_s52_r6058{#dhall_s52_r6058}': # '«Границу Вечности?»{#dhall_s52_r6058}'
            # a195 # r6058
            jump dhall_s41

        'dhall_s52_r6059{#dhall_s52_r6059}': # '«Расскажи мне побольше о Морге».{#dhall_s52_r6059}'
            # a196 # r6059
            jump dhall_s32

        'dhall_s52_r6060{#dhall_s52_r6060}': # '«У меня есть другие вопросы…»{#dhall_s52_r6060}'
            # a197 # r6060
            jump dhall_s9

        'dhall_s52_r6061_1{#dhall_s52_r6061_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s52_r6061_1}'
            # a198 # r6061
            jump dhall_s11

        'dhall_s52_r6061_2{#dhall_s52_r6061_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s52_r6061_2}'
            # a198 # r6061
            jump dhall_s11


# s53 # say5742
label dhall_s53: # from 34.0
    'dhall_s53{#dhall_s53}'
    # dhall '«Я говорю о ранах разума. Ты ведь многое забыл, не так ли? Возможно, настоящие раны гораздо глубже, чем эти шрамы, украшающие твое тело».{#dhall_s53_1}'
    # nr 'Дхолл снова кашляет.{#dhall_s53_2}'
    # dhall '«Но только ты можешь знать это точно».{#dhall_s53_3}'

    menu:
        'dhall_s53_r5743{#dhall_s53_r5743}': # '«Расскажи мне побольше о Морге».{#dhall_s53_r5743}'
            # a199 # r5743
            jump dhall_s32

        'dhall_s53_r5744{#dhall_s53_r5744}': # '«Понятно. У меня еще вопросы…»{#dhall_s53_r5744}'
            # a200 # r5744
            jump dhall_s9

        'dhall_s53_r5745_1{#dhall_s53_r5745_1}' if dhallLogic.get_know_dhall_name(): # '«Прощай, Дхолл».{#dhall_s53_r5745_1}'
            # a201 # r5745
            jump dhall_s11

        'dhall_s53_r5745_2{#dhall_s53_r5745_2}' if not dhallLogic.get_know_dhall_name(): # '«Прощай».{#dhall_s53_r5745_2}'
            # a201 # r5745
            jump dhall_s11
