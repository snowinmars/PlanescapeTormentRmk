init 10 python:
    from game.dlgs.mortuary.dhall_logic import DhallLogic
    dhallLogic = DhallLogic(renpy.store.global_settings_manager)

    def logic_get_know_dhall_name():
        return dhall if dhallLogic.get_know_dhall_name() else dhall_unknown


# ###
# Original:  DLG/DHALL.DLG
# ###


label start_dhall_talk_first:
    call dhall_init
    jump dhall_s5
label start_dhall_talk:
    call dhall_init
    jump dhall_s40
label start_dhall_kill_first:
    call dhall_init
    jump dhall_kill_first
label start_dhall_kill:
    call dhall_init
    jump dhall_kill
label dhall_init:
    $ dhallLogic.dhall_init()
    scene bg mortuary_f2r3
    show dhall_img default at center_left_down
    return
label dhall_dispose:
    hide dhall_img
    jump graphics_menu
label dhall_dispose_no_talk:
    $ dhallLogic.dhall_dispose_no_talk()
    hide dhall_img
    jump graphics_menu


# s0 # say822
label dhall_s0: # externs morte_s103
    nr 'Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять.'
    nr 'Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.'

    jump morte_s104  # EXTERN

# s1 # say826
label dhall_s1: # externs morte_s104
    nr 'Прежде чем Морт успевает закончить, взгляд серых глаз писаря падает на тебя.'
    dhall_unknown '«Бремя прожитых лет лежит на мне тяжелым грузом, Неугомонный».'
    nr 'Он откладывает перо.'
    dhall_unknown '«Но глухотой я еще не страдаю».'

    menu:
        '«Неугомонный? Ты меня знаешь?»':
            # a0 # r827
            $ dhallLogic.r827_action()
            jump dhall_s44


# s2 # say829
label dhall_s2: # from 21.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Тебе знакома женщина, чьи останки погребены внизу, в мемориальном зале? Я думаю, что в прошлом она путешествовала вместе с тобой…»'
    nr '[y] начинает кашлять, но ему удается перевести дыхание.'
    x '«Я ошибаюсь?»'

    menu:
        '«Где ее тело?»' if dhallLogic.r5070_condition():
            # a1 # r5070
            jump dhall_s42

        '«Я ничего о ней не знаю».' if dhallLogic.r5071_condition():
            # a2 # r5071
            jump dhall_s43

        '«Она узнала меня, но я не смог ее вспомнить».' if dhallLogic.r5072_condition():
            # a3 # r5072
            jump dhall_s28

        '«Ты говорил, что здесь есть другие. Кто они?»' if dhallLogic.r5073_condition():
            # a4 # r5073
            jump dhall_s12

        '«Ты говорил, что здесь есть другие. Кто они?»' if dhallLogic.r5074_condition():
            # a5 # r5074
            jump dhall_s12

        '«Возможно. У меня есть другие вопросы к тебе…»':
            # a6 # r6063
            jump dhall_s9

        '«Пойду вниз, в мемориальный зал. Может быть, я найду ее тело».' if dhallLogic.r6064_condition():
            # a7 # r6064
            jump dhall_s11

        '«Возможно, нет. Прощай».' if dhallLogic.r13288_condition():
            # a8 # r13288
            jump dhall_s11


# s3 # say832
label dhall_s3: # from 9.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] пристально смотрит на тебя.'
    x '«Ты уверен?»'

    menu:
        '«Да. Он очень хорошо замаскировался».' if dhallLogic.r830_condition():
            # a9 # r830
            $ dhallLogic.r830_action()
            jump dhall_s4

        '«Да. Он очень хорошо замаскировался».' if dhallLogic.r831_condition():
            # a10 # r831
            $ dhallLogic.r831_action()
            jump dhall_s4

        '«Нет, пожалуй, мне просто показалось. У меня есть другие вопросы…»':
            # a11 # r834
            jump dhall_s9


# s4 # say833
label dhall_s4: # from 3.0 3.1
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолла' if dhallLogic.get_know_dhall_name() else 'него'
    x '«Я…»'
    nr 'У [y] начинается очередной приступ кашля. Спустя минуту или две его дыхание становится достаточно спокойным, чтобы он смог продолжить.'
    x '«Я… незамедлительно предупрежу стражу».'

    menu:
        '«Спасибо. У меня есть другие вопросы…»':
            # a12 # r836
            jump dhall_s9

        '«Отлично. Прощай».':
            # a13 # r837
            jump dhall_s11


# s5 # say838
label dhall_s5: # - # IF ~  Global("Dhall","GLOBAL",0)
    nr 'Этот писарь выглядит очень старым… его кожа морщиниста и имеет желтый оттенок, как у старого пергамента.'
    nr 'Темно-серые глаза глубоко посажены на его угловатом лице, длинная белая борода ниспадает на его одежды, подобно водопаду.'
    nr 'Его дыхание неровно и прерывисто, но даже периодический кашель не может замедлить движение его пера.'

    menu:
        '«Приветствую».' if dhallLogic.r839_condition():
            # a14 # r839
            jump morte_s102  # EXTERN

        '«Приветствую».' if dhallLogic.r835_condition():
            # a15 # r835
            jump dhall_s7

        '«Приветствую».' if dhallLogic.r5058_condition():
            # a16 # r5058
            jump dhall_s6

        'Оставить старого писаря в покое.':
            # a17 # r5060
            jump dhall_dispose_no_talk


# s6 # say841
label dhall_s6: # from 5.2
    $ x = logic_get_know_dhall_name()
    nr 'Его серые глаза сверкают, когда он отрывает свой взгляд от книги.'
    x '«Подозреваю, что это ты в ответе за нападения в Морге. Это…»'
    nr 'Он тихо кашляет, затем тяжело хрипит.'
    x '«Это не позволит тебе обрести следующую жизнь».'

    menu:
        '«Я всего лишь защищался. У меня есть несколько вопросов перед тем, как я удалюсь…»' if dhallLogic.r842_condition():
            # a18 # r842
            jump dhall_s9

        '«Как по мне, дарить смерть вам, трупопоклонникам, — не такое уж и не преступление. А теперь у меня есть вопросы к тебе…»' if dhallLogic.r843_condition():
            # a19 # r843
            $ dhallLogic.r843_action()
            jump dhall_s9

        '«Ты знаешь меня?»' if dhallLogic.r5062_condition():
            # a20 # r5062
            jump dhall_s44

        '«Прощай».':
            # a21 # r5063
            jump dhall_dispose


# s7 # say844
label dhall_s7: # from 5.1
    $ x = logic_get_know_dhall_name()
    nr 'Писарь прекращает вести записи в стоящую перед ним книгу и оглядывается. Его глаза похожи на два гвоздя, забитые в его череп.'
    x '«Итак…»'
    nr 'Его голос уставший, как будто он повторял это уже много раз.'
    x '«Ты пробудился ото сна и вернулся в свои грезы».'
    nr 'Он продолжает более уважительным голосом.'
    x '«Приятно встретиться… снова, Неугомонный».'

    menu:
        '«Неугомонный? Ты меня знаешь?»':
            # a22 # r845
            jump dhall_s44


# s8 # say851
label dhall_s8: # from 22.0
    $ x = logic_get_know_dhall_name()
    x '«Ты должен понять. Твое существование для них — богохульство».'
    x '«Многие из нашей фракции распорядились бы тебя кремировать… если бы узнали о твоем несчастье».'

    menu:
        '«Ты — тленный, и все же не пытаешься убить меня. Почему?»':
            # a23 # r940
            jump dhall_s23

        '«Расскажи мне побольше о Морге».':
            # a24 # r911
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a25 # r913
            jump dhall_s9

        '«Я выслушал достаточно. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a26 # r6038
            jump dhall_s11

        '«Я выслушал достаточно. Прощай.' if not dhallLogic.get_know_dhall_name():
            # a26 # r6038
            jump dhall_s11


# s9 # say852
label dhall_s9: # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    $ x = logic_get_know_dhall_name()
    x '«Хорошо. Что ты хочешь узнать?»'

    menu:
        '«Ты знал, что в восточной комнате находится кто-то, замаскированный под зомби?»' if dhallLogic.r854_condition():
            # a27 # r854
            jump dhall_s3

        '«Что это за место?»':
            # a28 # r857
            jump dhall_s10

        '«Как я попал сюда?»':
            # a29 # r855
            jump dhall_s15

        '«Не подскажешь, как мне выбраться отсюда?»' if dhallLogic.r858_condition():
            # a30 # r858
            jump dhall_s13

        '«Ты знаешь, кто я?»':
            # a31 # r5069
            $ dhallLogic.r5069_action()
            jump dhall_s21

        '«Чем ты здесь занимаешься?»':
            # a32 # r5748
            jump dhall_s25

        '«Твой кашель ужасен. Ты хорошо себя чувствуешь?»':
            # a33 # r6065
            jump dhall_s26

        '«Ничего… прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a34 # r41663
            jump dhall_s11

        '«Ничего… прощай».' if not dhallLogic.get_know_dhall_name():
            # a34 # r41663
            jump dhall_s11


# s10 # say859
label dhall_s10: # from 9.1
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'он'
    x '«Ты находишься в Морге, Неугомонный. Ты снова… пришел…»'
    nr 'Не успев закончить, [y] заходится в приступе кашля. Спустя некоторое время он берет себя в руки, и его дыхание снова становится неровным хрипом.'
    x '«…это зал ожидания для тех, кто собирается покинуть тень этой жизни».'

    menu:
        '«Расскажи мне о Морге».':
            # a35 # r861
            jump dhall_s32

        '«*Неугомонный*?»':
            # a36 # r860
            jump dhall_s38

        '«Тень этой жизни?»':
            # a37 # r862
            jump dhall_s33

        '«Снова?.. Я был здесь раньше?»':
            # a38 # r863
            jump dhall_s14

        '«Как я попал сюда?»':
            # a39 # r864
            jump dhall_s15

        '«У меня есть другие вопросы…»':
            # a40 # r865
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a41 # r866
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a41 # r866
            jump dhall_s11


# s11 # say867
label dhall_s11: # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    $ x = logic_get_know_dhall_name()
    $ y1 = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'он'
    $ y2 = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr 'Когда ты собираешься уйти, [y1] начинает говорить.'
    x '«Знай: я не завидую тебе, Неугомонный. Твои возрождения — проклятье, которого я бы не смог вынести».'
    x '«Ты должен смириться с этим. Когда-нибудь твой путь вернет тебя сюда… »'
    nr '[y2] кашляет, из его горла доносятся хрипы.'
    x '«Это путь всех существ из плоти и костей».'

    menu:
        '«Тогда, возможно, мы еще встретимся, Дхолл».':
            # a42 # r41564
            jump dhall_dispose


# s12 # say868
label dhall_s12: # from 2.3 2.4 42.2 42.3 43.1 43.2
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Несомненно, они здесь, но я не знаю ни их имен, ни где они лежат. Ты прошел путь, по которому ходят многие, но немногие выживают».'
    nr '[y] обводит вокруг тебя рукой.'
    x '«Все умершие прибывают сюда. Кое-кто из них, должно быть, путешествовал с тобой».'

    menu:
        '«Где та женщина, которую ты упомянул?»' if dhallLogic.r870_condition():
            # a43 # r870
            jump dhall_s42

        '«Я не вижу изъяна в твоих рассуждениях. У меня еще вопросы…»':
            # a44 # r871
            jump dhall_s9

        '«Тогда я поищу их. Возможно, они смогут возродить мою память. Прощай».':
            # a45 # r872
            jump dhall_s11


# s13 # say875
label dhall_s13: # from 9.3
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Хм-м… Главные ворота — самый очевидный выход, но они не выпустят никого, кроме тленных…»'
    nr '[y] заходится в кашле, затем продолжает.'
    x '«У одного из проводников у главных ворот есть ключ к ним, но он вряд ли откроет их для тебя, разве что ты будешь весьма убедительным».'

    menu:
        '«Понятно. У меня еще вопросы…»':
            # a46 # r876
            jump dhall_s9

        '«Тогда прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a47 # r877
            jump dhall_dispose

        '«Тогда прощай».' if not dhallLogic.get_know_dhall_name():
            # a47 # r877
            jump dhall_dispose


# s14 # say878
label dhall_s14: # from 10.3
    $ x = logic_get_know_dhall_name()
    x '«Да, *снова*. Ты попадал сюда много раз, Неугомонный. Я надеялся, что этот раз будет последним, учитывая полученные тобой раны».'
    nr 'Он вздыхает.'
    x '«Когда же ты откажешься от своих страстей и покинешь эту тень жизни?»'

    menu:
        '«*Неугомонный*?»':
            # a48 # r880
            jump dhall_s38

        '«Ранен?»':
            # a49 # r881
            jump dhall_s34

        '«Тень жизни?»':
            # a50 # r883
            jump dhall_s33

        '«Расскажи мне побольше о Морге».':
            # a51 # r879
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a52 # r5751
            jump dhall_s9

        '«Прощай, Дхолл».':
            # a53 # r5752
            jump dhall_s11


# s15 # say885
label dhall_s15: # from 9.2 10.4 32.5
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] презрительно фыркает, как будто его воротит от воспоминания об этом.'
    x '«К Моргу тебя доставила твоя ветхая карета, Неугомонный. Увидев ее, ты мог бы возомнить себя аристократом, учитывая количеств подданных, лежащих в ней зловонной разлагающейся кучей».'

    menu:
        '«Я приехал сюда на повозке?»':
            # a54 # r886
            $ dhallLogic.r886_action()
            jump dhall_s16

        '«Расскажи мне побольше о Морге».':
            # a55 # r887
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a56 # r888
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a57 # r889
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a57 # r889
            jump dhall_s11


# s16 # say890
label dhall_s16: # from 15.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Да… твое тело лежало где-то посреди горы трупов».'
    nr '[y] снова заходится в приступе кашля, который ему удается побороть только несколько минут спустя.'
    x '«Твоим «сенешалем», как всегда, был Фарод, который был рад доставить твое тело к вратам Морга за несколько медяков».'

    menu:
        '«Кто этот Фарод?»' if dhallLogic.r891_condition():
            # a58 # r891
            jump dhall_s17

        '«Похоже, тебе не очень-то нравится Фарод».' if dhallLogic.r892_condition():
            # a59 # r892
            jump dhall_s35

        '«Расскажи мне побольше о Морге».':
            # a60 # r893
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a61 # r894
            jump dhall_s9

        '«Прощай, Дхолл».':
            # a62 # r5753
            jump dhall_s11


# s17 # say895
label dhall_s17: # from 16.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Он… сборщик мертвых».'
    nr '[y] переводит дыхание, затем продолжает.'
    x '«У нас в городе есть такие люди, которые собирают тела тех, кто вступил на путь Истинной Смерти, и приносят их нам для подобающего погребения».'

    menu:
        '«Где я могу найти этого Фарода?»':
            # a63 # r897
            jump dhall_s18

        '«Похоже, тебе не очень-то нравится Фарод».' if dhallLogic.r898_condition():
            # a64 # r898
            jump dhall_s35

        '«Расскажи мне побольше о Морге».':
            # a65 # r899
            jump dhall_s32

        '«Понятно. У меня еще вопросы…»':
            # a66 # r5754
            jump dhall_s9

        '«Тогда пойду и разыщу этого Фарода. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a67 # r6031
            jump dhall_s19

        '«Тогда пойду и разыщу этого Фарода. Прощай, Дхолл».' if not dhallLogic.get_know_dhall_name():
            # a67 # r6031
            jump dhall_s19


# s18 # say900
label dhall_s18: # from 17.0 29.1 31.0 35.1 36.1
    $ x = logic_get_know_dhall_name()
    x '«Если все пойдет своим чередом, Неугомонный, то скорее Фарод найдет тебя и притащит нам сюда, чем ты найдешь ту лужу грязи, в которой он барахтается».'

    menu:
        '«Тем не менее, я должен его найти».':
            # a68 # r902
            jump dhall_s19

        '«Расскажи мне побольше о Морге».':
            # a69 # r903
            jump dhall_s32

        '«Понятно. У меня еще вопросы…»':
            # a70 # r904
            jump dhall_s9

        '«У меня такое чувство, что наши пути еще пересекутся. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a71 # r5755
            jump dhall_s19

        '«У меня такое чувство, что наши пути еще пересекутся. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a71 # r5755
            jump dhall_s19


# s19 # say901
label dhall_s19: # from 17.4 18.0 18.3 29.3 31.2
    $ x = logic_get_know_dhall_name()
    $ y = 'Голос Дхолла' if dhallLogic.get_know_dhall_name() else 'Его голос'
    nr '[y] начинает звучать предостерегающе.'
    x '«Не ищи Фарода, Неугомонный. Я уверен, что ты попросту пройдешь еще один полный круг, и не станешь от этого мудрее, зато обогатишь Фарода на несколько медяков».'
    x '«Прими смерть, Неугомонный. Не повторяй свой круг страданий».'

    menu:
        '«Мне *нужно* найти его. Ты не знаешь, где он может быть?»':
            # a72 # r906
            $ dhallLogic.r906_action()
            jump dhall_s20

        '«Расскажи мне побольше о Морге».':
            # a73 # r905
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a74 # r907
            jump dhall_s9

        '«Я не могу больше с тобой говорить. Прощай, Дхолл».':
            # a75 # r5756
            jump dhall_s11


# s20 # say908
label dhall_s20: # from 19.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] умолкает на минуту. Когда же он начинает говорить, то становится ясно, что он делает это с явной неохотой.'
    x '«Я не знаю, в каком притоне находится логово Фарода в данный момент, но могу предположить, что оно где-то за воротами Морга, в Улье».'
    x '«Возможно, кто-то из местных знает, где его найти».'

    menu:
        '«Похоже, тебе не очень-то нравится Фарод».' if dhallLogic.r910_condition():
            # a76 # r910
            jump dhall_s35

        '«Расскажи мне побольше о Морге».':
            # a77 # r909
            jump dhall_s32

        '«Спасибо. У меня есть другие вопросы…»':
            # a78 # r5757
            jump dhall_s9

        '«Тогда я пойду и поспрашиваю тамошних жителей. Прощай».':
            # a79 # r6030
            jump dhall_s11


# s21 # say914
label dhall_s21: # from 9.4
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«О тебе, Неугомонный, я знаю совсем немного. О твоих спутниках, лежащих теперь под нашим присмотром, я знаю ненамного больше».'
    nr '[y] вздыхает.'
    x '«Прошу тебя, Неугомонный, больше не проси никого идти с тобой: за тобой остается только несчастье. Не разделяй свою ношу с другими».'

    menu:
        '«Меня кто-то сопровождал в пути? Они здесь?»':
            # a80 # r921
            $ dhallLogic.r921_action()
            jump dhall_s2

        '«У меня есть другие вопросы…»':
            # a81 # r922
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a82 # r923
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a82 # r923
            jump dhall_s11


# s22 # say915
label dhall_s22: # from 47.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] вздыхает.'
    x '«Говорят, что есть души, которые не могут достичь Истинной Смерти. Смерть отказалась от них, и их имена никогда не попадут в книгу мертвых».'
    x '«Подняться из мертвых, как это сделал ты… Это наводит на мысль, что ты — одна из таких душ. Само твое существование неприемлемо для нашей фракции».'

    menu:
        '«Неприемлемо? Похоже, мое положение оставляет желать лучшего».':
            # a83 # r917
            jump dhall_s8

        '«Ясно. Расскажи мне побольше о Морге».':
            # a84 # r918
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a85 # r919
            jump dhall_s9

        '«Думаю, я услышал достаточно. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a86 # r920
            jump dhall_s11

        '«Думаю, я услышал достаточно. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a86 # r920
            jump dhall_s11


# s23 # say924
label dhall_s23: # from 8.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Потому что заставлять тебя принимать нашу веру несправедливо. Ты должен оставить тень этой жизни по своей воле, а не по нашей».'
    nr '[y], кажется, готов разразиться очередным приступом кашля, но с некоторыми усилиями ему удается сдержаться.'
    x '«И покуда я не покину свою должность, я буду защищать твое право искать свою правду».'

    menu:
        '«Каковы твои обязанности?»':
            # a87 # r927
            jump dhall_s25

        '«Расскажи мне побольше о Морге».':
            # a88 # r928
            jump dhall_s32

        '«Хорошо. У меня есть другие вопросы…»':
            # a89 # r925
            jump dhall_s9

        '«Я выслушал достаточно. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a90 # r6039
            jump dhall_s11

        '«Я выслушал достаточно. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a90 # r6039
            jump dhall_s11


# s24 # say929
label dhall_s24: # from 25.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Я — единственный, кто регистрирует тела, поступающие в наши залы, Неугомонный».'
    nr '[y] начинает кашлять, затем успокаивается.'
    x '«Только я вижу лица тех, кто лежит на наших плитах. Тайна твоего существования со мной в безопасности».'

    menu:
        '«Расскажи мне побольше о Морге».':
            # a91 # r1305
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a92 # r6041
            jump dhall_s9

        '«Кажется, я обязан тебе. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a93 # r6042
            jump dhall_s11

        '«Кажется, я обязан тебе. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a93 # r6042
            jump dhall_s11


# s25 # say930
label dhall_s25: # from 9.5 23.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Я — писарь. Я веду учет всех тел, которые поступают в Морг».'
    nr '[y] снова кашляет, затем глубоко вздыхает.'
    x '«И пока поток трупов идет через Морг, я буду при своей должности».'

    menu:
        '«Ты сказал, что я был здесь много раз. Почему же тленные не узнают меня?»' if dhallLogic.r931_condition():
            # a94 # r931
            $ dhallLogic.r931_action()
            jump dhall_s24

        '«Расскажи мне побольше о Морге».':
            # a95 # r932
            jump dhall_s32

        '«Понятно. У меня еще вопросы…»':
            # a96 # r933
            jump dhall_s9

        '«Отлично. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a97 # r6040
            jump dhall_s11

        '«Отлично. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a97 # r6040
            jump dhall_s11


# s26 # say934
label dhall_s26: # from 9.6
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Я уже близок к Истинной Смерти, Неугомонный. Уже скоро я пересеку Границу Вечности и обрету покой, который давно искал. Я устал от этой смертной сферы…»'
    nr '[y] тяжело вздыхает.'
    x '«Для такого, как я, на планах больше нет чудес».'

    menu:
        '«Границу Вечности?»':
            # a98 # r935
            jump dhall_s41

        '«Ты уверен? Должен же быть способ помочь тебе».':
            # a99 # r936
            $ dhallLogic.r936_action()
            jump dhall_s27

        '«У меня есть другие вопросы…»':
            # a100 # r937
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a101 # r960
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a101 # r960
            jump dhall_s11

# s27 # say938
label dhall_s27: # from 26.1
    $ x = logic_get_know_dhall_name()
    x '«Я не желаю жить вечно или возрождаться, Неугомонный. Я не смогу этого вынести».'

    menu:
        '«Хорошо. У меня есть другие вопросы…»':
            # a102 # r1303
            jump dhall_s9

        '«Пусть будет так. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a103 # r1304
            jump dhall_s11

        '«Пусть будет так. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a103 # r1304
            jump dhall_s11


# s28 # say939
label dhall_s28: # from 2.2 42.1
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Она *разговаривала* с тобой?»'
    nr '[y] переходит на шепот.'
    x '«Ты случаем не *бредишь*, Неугомонный? Она достигла Истинной Смерти и ушла туда, куда тебе не добраться».'

    menu:
        '«Она разговаривала со мной, Дхолл. Ее душа находится здесь».' if dhallLogic.get_know_dhall_name():
            # a104 # r981
            jump dhall_s30

        '«Она разговаривала со мной. Ее душа находится здесь».' if not dhallLogic.get_know_dhall_name():
            # a104 # r981
            jump dhall_s30

        '«Возможно, я это выдумал. У меня есть другие вопросы…»':
            # a105 # r982
            jump dhall_s9

        '«Не уверен, что она достигла Истинной Смерти. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a106 # r873
            jump dhall_s11

        '«Не уверен, что она достигла Истинной Смерти. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a106 # r873
            jump dhall_s11


# s29 # say941
label dhall_s29: # from 36.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] умолкает в раздумье.'
    x '«Скорее всего. Ты что-то потерял… что-то особенно ценное?»'
    nr 'Он хмурится, понижая тон.'
    x '«Вряд ли Фарод будет делать исключения для чего либо, кроме вживленных в плоть вещей, но порой даже этого недостаточно, чтобы остановить его жадность».'

    menu:
        '«Я потерял дневник».' if dhallLogic.r942_condition():
            # a107 # r942
            jump dhall_s31

        '«Хм-м. Ты не знаешь, где мне найти Фарода?»' if dhallLogic.r943_condition():
            # a108 # r943
            jump dhall_s18

        '«У меня есть другие вопросы…»':
            # a109 # r944
            jump dhall_s9

        '«Возможно, мне стоит поговорить с Фародом. Прощай, Дхолл».' if dhallLogic.r6026_condition() and dhallLogic.get_know_dhall_name():
            # a110 # r6026
            jump dhall_s19

        '«Возможно, мне стоит поговорить с Фародом. Прощай».' if dhallLogic.r6026_condition() and not dhallLogic.get_know_dhall_name():
            # a110 # r6026
            jump dhall_s19

        '«Понятно. Прощай, Дхолл».' if dhallLogic.r874_condition() and dhallLogic.get_know_dhall_name():
            # a111 # r874
            jump dhall_s11

        '«Понятно. Прощай».' if dhallLogic.r874_condition() and not dhallLogic.get_know_dhall_name():
            # a111 # r874
            jump dhall_s11


# s30 # say945
label dhall_s30: # from 28.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] описывает пальцем полукруг в воздухе перед собой.'
    x '«Это дурное знамение, Неугомонный. Я молюсь о том, чтобы это оказалось твоим сном… и все же боюсь, это не так».'

    menu:
        '«Возможно, мне показалось. У меня еще вопросы».':
            # a112 # r946
            jump dhall_s9

        '«Возможно, мы поговорим об этом позже. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a113 # r947
            jump dhall_s11

        '«Возможно, мы поговорим об этом позже. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a113 # r947
            jump dhall_s11


# s31 # say850
label dhall_s31: # from 29.0
    $ x = logic_get_know_dhall_name()
    x '«Дневник? Если он представляет хоть какую-то ценность, то он наверняка в руках Фарода».'

    menu:
        '«Где мне найти этого Фарода?»' if dhallLogic.r948_condition():
            # a114 # r948
            jump dhall_s18

        '«Понятно. У меня еще вопросы…»':
            # a115 # r949
            jump dhall_s9

        '«В таком случае, я должен разыскать его. Прощай, Дхолл».' if dhallLogic.r6027_condition() and dhallLogic.get_know_dhall_name():
            # a116 # r6027
            jump dhall_s19

        '«В таком случае, я должен разыскать его. Прощай».' if dhallLogic.r6027_condition() and not dhallLogic.get_know_dhall_name():
            # a116 # r6027
            jump dhall_s19

        '«Понятно. Прощай, Дхолл».' if dhallLogic.r6066_condition() and dhallLogic.get_know_dhall_name():
            # a117 # r6066
            jump dhall_s11

        '«Понятно. Прощай».' if dhallLogic.r6066_condition() and not dhallLogic.get_know_dhall_name():
            # a117 # r6066
            jump dhall_s11


# s32 # say950
label dhall_s32: # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Это место, куда мертвых доставляют для погребения или кремации. Забота об умерших, покинувших эту тень жизни и ступивших на путь Истинной Смерти, входит в обязанности тленных».'
    nr '[y] от волнения понижает тон.'
    x '«Должно быть, ты был тяжело ранен, раз не узнаешь это место. Это практически твой дом».'

    menu:
        '«Тень жизни?»':
            # a118 # r951
            jump dhall_s33

        '«Истинной Смерти?»':
            # a119 # r953
            $ dhallLogic.r953_action()
            jump dhall_s48

        '«Тленных?»':
            # a120 # r954
            jump dhall_s47

        '«Сигил?»':
            # a121 # r955
            jump dhall_s37

        '«Ранен?»':
            # a122 # r956
            jump dhall_s34

        '«Как я попал сюда?»':
            # a123 # r846
            jump dhall_s15

        '«У меня есть другие вопросы…»':
            # a124 # r5735
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a125 # r6062
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a125 # r6062
            jump dhall_s11


# s33 # say957
label dhall_s33: # from 10.2 14.2 32.0 41.0 47.2 49.0
    $ x = logic_get_know_dhall_name()
    x '«Да, тень. Видишь ли, Неугомонный, эта жизнь… она не настоящая. Наши с тобой жизни — всего лишь тени, жалкое подобие от того, что было однажды жизнью».'
    x '«Эта «жизнь» — то, куда мы попадаем *после* того, как умираем. А здесь мы… в западне. В клетке. До тех пор, пока не достигнем Истинной Смерти».'

    menu:
        '«Истинной Смерти?»':
            # a126 # r958
            $ dhallLogic.r958_action()
            jump dhall_s48

        '«Почему ты решил, что эта жизнь ненастоящая?»':
            # a127 # r959
            jump dhall_s50

        '«Расскажи мне еще о Морге».':
            # a128 # r5736
            jump dhall_s32

        '«Понятно. У меня еще вопросы…»':
            # a129 # r5737
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a130 # r5738
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a130 # r5738
            jump dhall_s11


# s34 # say961
label dhall_s34: # from 14.1 32.4
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Да, раны, украшающие твое тело… Получи их более слабый человек, он бы уже был на пути к Истинной Смерти, а у тебя некоторые из них уже зажили».'
    nr '[y] надрывно кашляет, затем успокаивается.'
    x '«Но это всего лишь поверхностные раны».'

    menu:
        '«Всего лишь поверхностные раны? Что ты имеешь в виду?»':
            # a131 # r1301
            $ dhallLogic.r1301_action()
            jump dhall_s53

        '«Расскажи мне побольше о Морге».':
            # a132 # r1302
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a133 # r5746
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a134 # r5747
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a134 # r5747
            jump dhall_s11


# s35 # say962
label dhall_s35: # from 16.1 17.1 20.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Есть люди, которых я уважаю, Неугомонный».'
    nr '[y] успокаивает свое неровное дыхание.'
    x '«Фарод не входит в их число. Он носит свою дурную репутацию как знак гордости и свободно распоряжается имуществом умерших. Он рыцарь легкой наживы, подлая мразь самого низкого пошиба».'

    menu:
        '«Рыцарь легкой наживы?»':
            # a135 # r963
            jump dhall_s36

        '«Ты не знаешь, где я могу найти Фарода?»' if dhallLogic.r964_condition():
            # a136 # r964
            jump dhall_s18

        '«Понятно. У меня еще вопросы…»':
            # a137 # r965
            jump dhall_s9

        '«Звучит ободряюще. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a138 # r6028
            jump dhall_s11

        '«Звучит ободряюще. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a138 # r6028
            jump dhall_s11


# s36 # say966
label dhall_s36: # from 35.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Рыцарь легкой наживы —»'
    nr '[y] кашляет.'
    x '«— вор. Все, кого Фарод приносит к нашим стенам, лишены всего имущества, которым они обладали при жизни».'
    x '«Фарод присваивает себе все, что ему удается вырвать из их окоченевших пальцев».'

    menu:
        '«Мог ли Фарод взять что-нибудь у *меня*?»':
            # a139 # r967
            jump dhall_s29

        '«Ты не знаешь, где я могу найти Фарода?»' if dhallLogic.r968_condition():
            # a140 # r968
            jump dhall_s18

        '«Понятно. У меня еще вопросы…»':
            # a141 # r969
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a142 # r6029
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a142 # r6029
            jump dhall_s11


# s37 # say970
label dhall_s37: # from 32.3
    $ x = logic_get_know_dhall_name()
    x '«Сигил — это наш прекрасный город, Неугомонный».'

    menu:
        '«Расскажи мне еще о Морге».':
            # a143 # r971
            jump dhall_s32

        '«Понятно. У меня еще вопросы…»':
            # a144 # r972
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a145 # r5758
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a145 # r5758
            jump dhall_s11


# s38 # say973
label dhall_s38: # from 10.1 14.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Неугомонный — имя не хуже других…»'
    nr '[y] переводит дыхание.'
    x '«Ведь что-то держит тебя здесь, не так ли? Какое-то незаконченное дело, какая-то страсть, которая должна быть подавлена, прежде чем ты сможешь достигнуть Истинной Смерти?»'

    menu:
        '«Истинной Смерти?»':
            # a146 # r974
            $ dhallLogic.r974_action()
            jump dhall_s48

        '«Расскажи мне еще о Морге».':
            # a147 # r975
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a148 # r5749
            jump dhall_s9

        '«Прощай, Дхолл».':
            # a149 # r5750
            jump dhall_s11


# s39 # say884
label dhall_s39: # -
    $ x = logic_get_know_dhall_name()
    x '«Ты будешь делать то же, что и раньше, Неугомонный. Разыщешь того любителя звенелок, того плешивого идиота, Червеволосого, и вернешь свое имущество».'
    x '«После продолжишь свои бессмысленные поиски, пытаясь выполнить бессмысленные задания, собирая бессмысленные предметы. Затем ты падешь и вернешься назад к нам».'
    x '«Сэкономь время и поговори с мной сейчас, чтобы нам не пришлось вновь заводить этот разговор, когда твои воспоминания снова покинут тебя».'

    menu:
        '«У меня есть другие вопросы…»':
            # a150 # r976
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a151 # r977
            jump dhall_dispose

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a151 # r977
            jump dhall_dispose


# s40 # say978
label dhall_s40: # - # IF ~  Global("Dhall","GLOBAL",1)
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] мельком смотрит на тебя.'
    x '«Итак. Ты вернулся…»'
    nr '[y] начинает хрипло дышать, затем у него начинается удушливый кашель. Спустя минуту кашель прекращается, и он, хрипло дыша, продолжает.'
    x '«…приветствую тебя снова, Неугомонный».'

    menu:
        '«У меня к тебе другие вопросы, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a152 # r979
            jump dhall_s9

        '«У меня к тебе другие вопросы».' if not dhallLogic.get_know_dhall_name():
            # a152 # r979
            jump dhall_s9

        '«Неважно. Прощай».':
            # a153 # r980
            jump dhall_dispose


# s41 # say983
label dhall_s41: # from 26.0 52.0
    $ x = logic_get_know_dhall_name()
    x '«Границу между владениями тени этой жизни и Истинной Смерти».'

    menu:
        '«Тень этой жизни?»':
            # a154 # r984
            jump dhall_s33

        '«Истинной Смерти?»':
            # a155 # r985
            $ dhallLogic.r985_action()
            jump dhall_s48

        '«Расскажи мне побольше о Морге».':
            # a156 # r5739
            jump dhall_s32

        '«Понятно. У меня еще вопросы…»':
            # a157 # r5740
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a158 # r5741
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a158 # r5741
            jump dhall_s11


# s42 # say5075
label dhall_s42: # from 2.0 12.0 43.0
    $ x = logic_get_know_dhall_name()
    x '«В северо-западном мемориальном зале, этажом ниже. Проверь гробы… ее имя должно быть на одной из мемориальных табличек».'
    x '«Возможно, это оживит твои воспоминания».'

    menu:
        '«Я не знаю. Не припомню, чтобы даже путешествовал вместе с женщиной».' if dhallLogic.r5076_condition():
            # a159 # r5076
            jump dhall_s43

        '«Да, она утверждает, что знает меня, но я не могу ее вспомнить».' if dhallLogic.r5077_condition():
            # a160 # r5077
            jump dhall_s28

        '«Ты говорил, что здесь есть другие. Кто они?»' if dhallLogic.r5078_condition():
            # a161 # r5078
            jump dhall_s12

        '«Ты говорил, что здесь есть другие. Кто они?»' if dhallLogic.r5079_condition():
            # a162 # r5079
            jump dhall_s12

        '«Возможно, мне стоит найти ее. Перед уходом у меня есть к тебе другие вопросы…»':
            # a163 # r6067
            jump dhall_s9

        '«Пойду вниз, в мемориальный зал. Может быть, я найду ее тело».':
            # a164 # r6068
            jump dhall_s11


# s43 # say5080
label dhall_s43: # from 2.1 42.0
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] не отвечает. Он просто молчаливо смотрит на тебя.'

    menu:
        '«Где я могу найти ее?»' if dhallLogic.r5081_condition():
            # a165 # r5081
            jump dhall_s42

        '«Ты говорил, что здесь похоронены и другие мои спутники. Где они?»' if dhallLogic.r5082_condition():
            # a166 # r5082
            jump dhall_s12

        '«Ты говорил, что здесь похоронены и другие мои спутники. Где они?»' if dhallLogic.r5083_condition():
            # a167 # r5083
            jump dhall_s12

        '«У меня есть другие вопросы к тебе…»':
            # a168 # r6069
            jump dhall_s9

        '«Тогда прощай».':
            # a169 # r6070
            jump dhall_s11


# s44 # say840
label dhall_s44: # from 1.0 6.2 7.0
    dhall_unknown '«Знаю ли я тебя? Я…»'
    nr 'В голосе писца звучит горечь.'
    dhall_unknown '«Я *никогда* не знал тебя, Неугомонный. Не больше, чем ты знал о себе сам».'
    nr 'Он умолкает на секунду.'
    dhall_unknown '«Ты ведь все забыл, не так ли?»'

    menu:
        '«*Кто* ты?»':
            # a170 # r1327
            $ dhallLogic.r1327_action()
            jump dhall_s45


# s45 # say5728
label dhall_s45: # from 44.0
    dhall_unknown '«Как всегда, вопрос. И как всегда, неправильный».'
    nr 'Он делает легкий поклон, но движение вызывает у него неожиданный приступ кашля.'
    dhall_unknown '«Я…»'
    nr 'Он умолкает на минуту, переводя дыхание.'
    dhall '«Я… Дхолл».'
    $ dhallLogic.set_know_dhall_name()

    menu:
        '«Возможно, ты ответишь на некоторые из моих вопросов, Дхолл…»':
            # a171 # r5731
            $ dhallLogic.r5731_action()
            jump dhall_s9

        '«У меня нет времени на это. Прощай».':
            # a172 # r5732
            $ dhallLogic.r5732_action()
            jump dhall_s46


# s46 # say5730
label dhall_s46: # from 45.1
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Хорошо, Неугомонный».'
    nr '[y] кивает.'
    x '«Но, боюсь, в данном вопросе время тебе не враг».'
    nr 'Он снова берется за перо.'
    x '«Когда ты снова захочешь поговорить, я буду здесь».'

    menu:
        '«Я еще вернусь. Прощай».':
            # a173 # r40005
            jump dhall_dispose


# s47 # say847
label dhall_s47: # from 32.2
    $ x = logic_get_know_dhall_name()
    x '«Мы — тленные, фракция, собравшая всех тех, кто понял иллюзорность этой жизни».'
    x '«Мы ждем следующей жизни и помогаем другим в их путешествии».'

    menu:
        '«Может, ты мне объяснишь, почему тленные хотят моей смерти?»' if dhallLogic.r6032_condition():
            # a174 # r6032
            jump dhall_s22

        '«Истинной Смерти?»':
            # a175 # r6033
            $ dhallLogic.r6033_action()
            jump dhall_s48

        '«Иллюзорность этой жизни?»':
            # a176 # r6034
            jump dhall_s33

        '«Расскажи мне побольше о Морге».':
            # a177 # r6035
            jump dhall_s32

        '«У меня есть другие вопросы к тебе…»':
            # a178 # r6036
            jump dhall_s9

        '«Тогда прощай».':
            # a179 # r6037
            jump dhall_s11


# s48 # say848
label dhall_s48: # from 32.1 33.0 38.0 41.1 47.1
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Истинная Смерть — это небытие. Состояние, свободное от мыслей, чувств, страстей».'
    nr '[y] кашляет, затем восстанавливает неровное дыхание.'
    x '«Состояние чистоты».'

    menu:
        '«Похоже на забвение. И зачем кому-то это нужно?»':
            # a180 # r6043
            jump dhall_s49

        '«Ого. Расскажи мне побольше о Морге».':
            # a181 # r6044
            jump dhall_s32

        '«Понятно… У меня есть другие вопросы».':
            # a182 # r6045
            jump dhall_s9

        '«Я должен идти. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a183 # r6046
            jump dhall_s11

        '«Я должен идти. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a183 # r6046
            jump dhall_s11


# s49 # say849
label dhall_s49: # from 48.0
    $ x = logic_get_know_dhall_name()
    x '«По-твоему, лучше оставаться в тени того, что раньше называлось жизнью? Я так не думаю».'

    menu:
        '«Тень жизни?»':
            # a184 # r6047
            jump dhall_s33

        '«Расскажи мне побольше о Морге».':
            # a185 # r6048
            jump dhall_s32

        '«Понятно… У меня есть другие вопросы».':
            # a186 # r6049
            jump dhall_s9

        '«Я должен идти. Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a187 # r6050
            jump dhall_s11

        '«Я должен идти. Прощай».' if not dhallLogic.get_know_dhall_name():
            # a187 # r6050
            jump dhall_s11


# s50 # say853
label dhall_s50: # from 33.1
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«А что заставляет тебя думать, что эта жизнь *настоящая*? Прислушайся к себе. Разве ты не чувствуешь какую-то опустошенность?»'
    nr '[y] качает головой.'
    x '«Это чистилище. Здесь только горе. Несчастье. Страдание. Они не являются элементами «жизни». Они — часть клетки, в которой мы заперты в этой тени».'

    menu:
        '«Мне кажется, твой фатализм превзошел тебя самого. Жизнь состоит из этих элементов, но не только из них».':
            # a188 # r6051
            $ dhallLogic.r6051_action()
            jump dhall_s51

        '«Заперты? Каким образом?»':
            # a189 # r6052
            jump dhall_s51

        '«Довольно этой философии. Как все это относится к тому, что я оказался здесь?»':
            # a190 # r6053
            $ dhallLogic.r6053_action()
            jump dhall_s51


# s51 # say5733
label dhall_s51: # from 50.0 50.1 50.2
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] качает головой.'
    x '«Страсти — тяжелый груз. Многих они приковали к этой тени жизни».'
    x '«Цепляясь за эмоции, ты будешь без конца возрождаться в этой «жизни», в постоянных муках, так никогда и не познав чистоты Истинной Смерти».'

    menu:
        '«Понимаю… Как же выбраться из этого кольца возрождений и достигнуть этой… Истинной Смерти?»':
            # a191 # r6054
            jump dhall_s52

        '«Расскажи мне побольше о Морге».':
            # a192 # r6055
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a193 # r6056
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a194 # r6057
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a194 # r6057
            jump dhall_s11


# s52 # say5734
label dhall_s52: # from 51.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Убей в себе страсти. Отбрось нужду в переживаниях. Когда ты будешь действительно очищен, кольцо возрождений прервется, и ты обретешь покой».'
    nr '[y] делает вздох… как будто смерть клокочет в его глотке.'
    x '«За нашими бренными телами, за Границей Вечности, находится покой, к которому стремится каждая душа».'

    menu:
        '«Границу Вечности?»':
            # a195 # r6058
            jump dhall_s41

        '«Расскажи мне побольше о Морге».':
            # a196 # r6059
            jump dhall_s32

        '«У меня есть другие вопросы…»':
            # a197 # r6060
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a198 # r6061
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a198 # r6061
            jump dhall_s11


# s53 # say5742
label dhall_s53: # from 34.0
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    x '«Я говорю о ранах разума. Ты ведь многое забыл, не так ли? Возможно, настоящие раны гораздо глубже, чем эти шрамы, украшающие твое тело».'
    nr '[y] снова кашляет.'
    x '«Но только ты можешь знать это точно».'

    menu:
        '«Расскажи мне побольше о Морге».':
            # a199 # r5743
            jump dhall_s32

        '«Понятно. У меня еще вопросы…»':
            # a200 # r5744
            jump dhall_s9

        '«Прощай, Дхолл».' if dhallLogic.get_know_dhall_name():
            # a201 # r5745
            jump dhall_s11

        '«Прощай».' if not dhallLogic.get_know_dhall_name():
            # a201 # r5745
            jump dhall_s11


label dhall_kill:
    $ x = logic_get_know_dhall_name()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] мельком смотрит на тебя.'
    x '«Итак. Ты вернулся…»'
    nr '[y] начинает хрипло дышать, затем у него начинается удушливый кашель. Спустя минуту кашель прекращается, и он, хрипло дыша, продолжает.'
    x '«…приветствую тебя снова, Неугомонный».'

    menu:
        '(Уйти.)':
            jump dhall_dispose
        '(Убить Дхолла).' if dhallLogic.get_know_dhall_name():
            jump dhall_killed
        '(Убить его).' if not dhallLogic.get_know_dhall_name():
            jump dhall_killed


label dhall_killed:
    $ dhallLogic.kill_dhall()
    $ y = 'Дхолл' if dhallLogic.get_know_dhall_name() else 'Он'
    nr '[y] не успевает даже посмотреть на меня: он слишком стар и слишком слаб.'
    nr 'И ему мешает кашель.'
    nr 'Я скорее намечаю удары, нежели наношу их.'
    nr 'Перо, которое он до этого держал в руке, падает в тень книги. Мне оно нужно больше, чем ему.'
    jump dhall_dispose


label dhall_kill_first:
    nr 'Этот писарь выглядит очень старым… его кожа морщиниста и имеет желтый оттенок, как у старого пергамента.'
    nr 'Темно-серые глаза глубоко посажены на его угловатом лице, длинная белая борода ниспадает на его одежды, подобно водопаду.'
    nr 'Его дыхание неровно и прерывисто, но даже периодический кашель не может замедлить движение его пера.'

    menu:
        '(Уйти.)':
            jump dhall_dispose
        '(Убить писаря).':
            jump dhall_killed_first


label dhall_killed_first:
    $ dhallLogic.kill_dhall()
    nr 'Он не успевает даже посмотреть на меня: он слишком стар и слишком слаб.'
    nr 'И ему мешает кашель.'
    nr 'Я скорее намечаю удары, нежели наношу их.'
    nr 'Перо, которое он до этого держал в руке, падает в тень книги. Мне оно нужно больше, чем ему.'
    jump dhall_dispose
