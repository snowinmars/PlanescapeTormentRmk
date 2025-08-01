init 10 python:
    from dlgs.zm1041_logic import Zm1041Logic
    zm1041Logic = Zm1041Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM1041.DLG
# ###


label zm1041_init:
    return


label zm1041_dispose:
    jump show_graphics_menu


# s0 # say6573
label zm1041_s0:  # - # IF ~  Global("Bei","GLOBAL",0)
    SPEAKER 'У этого поднятого трупа мужчины на лбу вырезан номер 1041. Несмотря на жесткую высушенную плоть, совершенно очевидно, что его лицо когда-то придавало ему довольно экзотическую внешность. Губы зомби крепко зашиты — скорее всего, чтобы не стонал все время, — а сам он сильно пахнет формальдегидом.'

    menu:
        'Итак… что тут у нас интересного?' if zm1041Logic.r6576_condition():
            # r0 # reply6576
            $ zm1041Logic.r6576_action()
            jump zm1041_s1

        'Итак… что тут у нас интересного?' if zm1041Logic.r6577_condition():
            # r1 # reply6577
            jump zm1041_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm1041Logic.r6578_condition():
            # r2 # reply6578
            jump zm1041_s1

        'Использовать на трупе свою способность История костей.' if zm1041Logic.r6579_condition():
            # r3 # reply6579
            jump zm1041_s2

        'Использовать на трупе свою способность История костей.' if zm1041Logic.r6580_condition():
            # r4 # reply6580
            jump zm1041_s37

        'Было приятно с тобой поболтать. Прощай.':
            # r5 # reply6581
            jump zm1041_dispose

        'Оставить труп в покое.':
            # r6 # reply9095
            jump zm1041_dispose


# s1 # say6574
label zm1041_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6582
            jump zm1041_dispose


# s2 # say6575
label zm1041_s2:  # from 0.3
    SPEAKER 'В миг, когда дух возвращается в свою прежнюю обитель, труп вздрагивает. Его миндалевидные глаза снова темнеют, бледная кожа приобретает слегка бронзовый оттенок. Он выпрямляется, отряхивая пыль из одежды.  Заметив, наконец, вызывающего, призрак бросает на тебя пытливый взгляд, затем делает легкий поклон.'

    menu:
        'Поклониться в ответ.':
            # r8 # reply6583
            $ zm1041Logic.r6583_action()
            jump zm1041_s3

        'У меня есть вопросы…':
            # r9 # reply9096
            $ zm1041Logic.r9096_action()
            jump zm1041_s4

        'Оставить духа.':
            # r10 # reply9097
            $ zm1041Logic.r9097_action()
            jump zm1041_dispose


# s3 # say9060
label zm1041_s3:  # from 2.0
    SPEAKER 'Несколько мгновений дух удовлетворенно улыбается. Он собирается, закладывает одну руку за спину и начинает тихо, нараспев декламировать:  Сян цзянь ши нань, бе и нань Дун фэн у ли, бай хуа цань Чунь цань дао сы, сы фань цзинь Да цзю чэн хуй, лэй ши гань.  Сказав это, он принимает довольный вид, терпеливо ожидая твоей реакции.'

    menu:
        'Я… э-э…':
            # r11 # reply9098
            jump zm1041_s5

        'Я понятия не имею, о чем ты говоришь… Ты вообще понял, что я говорю?':
            # r12 # reply9099
            jump zm1041_s5

        'Я не понимаю тебя. Прощай.':
            # r13 # reply9100
            jump zm1041_dispose


# s4 # say9061
label zm1041_s4:  # from 2.1
    SPEAKER 'Ты открываешь рот, чтобы задать вопрос, но дух опережает тебя, начав тихо, нараспев декламировать:  Сян цзянь ши нань, бе и нань Дун фэн у ли, бай хуа цань Чунь цань дао сы, сы фань цзинь Да цзю чэн хуй, лэй ши гань.  Сказав это, он принимает довольный вид, терпеливо ожидая твоей реакции.'

    menu:
        'Я… э-э…':
            # r14 # reply9101
            jump zm1041_s5

        'Я понятия не имею, о чем ты говоришь… Ты вообще понял, что я говорю?':
            # r15 # reply9102
            jump zm1041_s5

        'Я не понимаю тебя. Прощай.':
            # r16 # reply9103
            jump zm1041_dispose


# s5 # say9062
label zm1041_s5:  # from 3.0 3.1 4.0 4.1
    SPEAKER 'Дух на некоторое время умолкает, словно чтобы поразмыслить. Затем он начинает говорить, с сильным акцентом, и все же с весьма изысканным произношением. Прости меня, достопочтенный господин. Прошло немало времени с тех пор, как я говорил на твоем языке. Не сомневаюсь, что мой дух был призван сюда, чтобы отвечать на твои вопросы. Что же ты хотел узнать от меня?'

    menu:
        'Так кто ты?':
            # r17 # reply9104
            jump zm1041_s6

        'Откуда ты?':
            # r18 # reply9105
            jump zm1041_s7

        'Как ты попал сюда? То есть, как стал зомби?':
            # r19 # reply9106
            jump zm1041_s8

        'Где ты… где находится твой дух… сейчас?':
            # r20 # reply9107
            jump zm1041_s11

        'Что ты знаешь об этом месте?':
            # r21 # reply9108
            jump zm1041_s9

        'Ты знаешь кого-нибудь по имени Фарод?' if zm1041Logic.r9109_condition():
            # r22 # reply9109
            jump zm1041_s10

        'Ничего, неважно.':
            # r23 # reply9110
            jump zm1041_dispose


# s6 # say9063
label zm1041_s6:  # from 5.0 14.0
    SPEAKER 'Трудно объяснить, кто я… а вот кем я *был* — нет. Я был известен как Чжуань Бэй, наставник и телохранитель Лю Сиси, дочери Цензора Ши-аня.'

    menu:
        'Наставник *и* телохранитель?':
            # r24 # reply9111
            jump zm1041_s12

        'Хм-м. Звучит впечатляюще.':
            # r25 # reply9112
            jump zm1041_s13

        'Понятно. У меня есть другие вопросы…':
            # r26 # reply9113
            jump zm1041_s14

        'Это все, что я хотел узнать. Прощай.':
            # r27 # reply9114
            jump zm1041_dispose


# s7 # say9064
label zm1041_s7:  # from 5.1 14.1
    SPEAKER 'Я родом из места под названием Шоу Лунь… места, которое я когда-то считал центром вселенной Похоже, на него накатили теплые воспоминания. Столько мест, столько миров. Раньше я считал себя довольно образованным человеком, и все же перед смертью я знал слишком мало…'

    menu:
        'А как ты попал сюда из этого 'Шоу Луня'?':
            # r28 # reply9115
            jump zm1041_s16

        'Понятно. У меня есть другие вопросы…':
            # r29 # reply9116
            jump zm1041_s14

        'Это все, что я хотел узнать. Прощай.':
            # r30 # reply9117
            jump zm1041_dispose


# s8 # say9065
label zm1041_s8:  # from 5.2 14.2
    SPEAKER 'Я был убит одним из тех, с кем я попал в этот мир. Я охотился за ним в этом городе многие недели — за это время я успел изучить ваш язык, — но он нашел меня первым. Он профессиональный убийца; он застигнул меня врасплох и убил меня во сне.'

    menu:
        'Попал в этот мир?':
            # r31 # reply9118
            jump zm1041_s16

        'Охотился за убийцами?':
            # r32 # reply9119
            jump zm1041_s16

        'Понятно, но ты знаешь, как твое тело стало здесь работать?':
            # r33 # reply9120
            jump zm1041_s17

        'Ты говоришь достаточно хорошо для того, кто так недолго изучал язык.':
            # r34 # reply9121
            jump zm1041_s18

        'Понятно. У меня есть другие вопросы…':
            # r35 # reply9122
            jump zm1041_s14

        'Это все, что я хотел узнать. Прощай.':
            # r36 # reply9123
            jump zm1041_dispose


# s9 # say9066
label zm1041_s9:  # from 5.4 14.4
    SPEAKER 'Об этом здании? Совершенно ничего. Я слышал о нем, знаю, что мое тело работает здесь, но это все. Я довольно мало знаю об этом великом городе, 'Сигиле'. Недели, проведенные здесь, я потратил на поиски людей, с которыми попал в этот мир, и на изучение языка; хоть это и огорчало меня, но времени на другие вещи у меня не было. А ведь я мог познать мириады чудес этого места…'

    menu:
        'Твое тело служит здесь? Как это могло случиться?':
            # r37 # reply9124
            jump zm1041_s17

        'Попал в этот мир?':
            # r38 # reply9125
            jump zm1041_s16

        'Ты говоришь достаточно хорошо для того, кто так недолго изучал язык.':
            # r39 # reply9126
            jump zm1041_s18

        'Понятно. У меня есть другие вопросы…':
            # r40 # reply9127
            jump zm1041_s14

        'Хорошо. Возможно, мы еще встретимся.':
            # r41 # reply9128
            jump zm1041_dispose


# s10 # say9067
label zm1041_s10:  # from 5.5 14.5
    SPEAKER 'Нет, это имя ничего для меня не значит. Я прошу прощения, но в данном вопросе я тебе не помощник.'

    menu:
        'Понимаю. У меня еще вопросы…':
            # r42 # reply9129
            jump zm1041_s14

        'Хорошо. Возможно, мы еще встретимся.':
            # r43 # reply9130
            jump zm1041_dispose


# s11 # say9068
label zm1041_s11:  # from 5.3 14.3
    SPEAKER 'На миг тебе кажется, что дух огорчен.  Я… Мой дух находится во владениях прославленного магистрата Яньвана, в Дворце Правосудия.'

    menu:
        'Что-то не так? Это плохое место?':
            # r44 # reply9131
            jump zm1041_s15

        'Понимаю. У меня еще вопросы…':
            # r45 # reply9132
            jump zm1041_s14

        'Это все, что я хотел узнать. Прощай.':
            # r46 # reply9133
            jump zm1041_dispose


# s12 # say9069
label zm1041_s12:  # from 6.0 16.1
    SPEAKER 'Да. Там, откуда я родом, это встречается не так уж редко. Моей обязанностью было все время находиться рядом с госпожой Лю, и не только оберегать ее, но и обучать. Я был уважаемым учителем, а также фехтовальщиком. Возможно, я послужил бы ей лучше, будь я лучшим фехтовальщиком…'

    menu:
        'Послужить ей лучше? Ты чем-то ей не услужил?':
            # r47 # reply9134
            jump zm1041_s16

        'Возможно. У меня есть еще вопросы…':
            # r48 # reply9135
            jump zm1041_s14

        'Это все, что я хотел узнать. Прощай.':
            # r49 # reply9136
            jump zm1041_dispose


# s13 # say9070
label zm1041_s13:  # from 6.1
    SPEAKER 'Впечатляюще? Да, как для меня, то даже слишком. Я… я подвел госпожу Лю и Цензора в своей миссии.'

    menu:
        'Каким образом?':
            # r50 # reply9137
            jump zm1041_s16

        'У меня есть еще вопросы…':
            # r51 # reply9138
            jump zm1041_s14

        'Ясно. Возможно, мы еще встретимся.':
            # r52 # reply9139
            jump zm1041_dispose


# s14 # say9071
label zm1041_s14:  # from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
    SPEAKER 'Дух кивает с неожиданной грацией, как для иссохшего трупа. Пожалуйста, спрашивай все, что пожелаешь.'

    menu:
        'Так кто ты?':
            # r53 # reply9140
            jump zm1041_s6

        'Откуда ты?':
            # r54 # reply9141
            jump zm1041_s7

        'Как ты попал сюда? То есть, как стал зомби?':
            # r55 # reply9142
            jump zm1041_s8

        'Где ты… где находится твой дух… сейчас?':
            # r56 # reply9143
            jump zm1041_s11

        'Что ты знаешь об этом месте?':
            # r57 # reply9144
            jump zm1041_s9

        'Ты знаешь кого-нибудь по имени Фарод?' if zm1041Logic.r9145_condition():
            # r58 # reply9145
            jump zm1041_s10

        'Что ты сказал, когда впервые появился здесь?':
            # r59 # reply9146
            jump zm1041_s26

        'Неважно. Прощай.':
            # r60 # reply9147
            jump zm1041_dispose


# s15 # say9072
label zm1041_s15:  # from 11.0
    SPEAKER 'Ну, видишь ли… — дух на время умолкает в раздумьях, потирая иссохшие руки трупа. — Прибыв туда, после недолгого ожидания меня должны были сопроводить в мое конечное, *истинное* место назначения. Тем не менее, пока меня вели по дворцу, началась какая-то суматоха, и меня оставили в комнате, пообещав, что тотчас же вернутся.'

    menu:
        'И?..':
            # r61 # reply9148
            jump zm1041_s19

        'Конечное место назначения? Куда тебя послали?':
            # r62 # reply9149
            jump zm1041_s20

        'Постой… Перед тем, как ты продолжишь, у меня есть еще вопросы…':
            # r63 # reply9150
            jump zm1041_s14

        'Возможно, я выслушаю оставшуюся часть в другой раз. Прощай.':
            # r64 # reply9151
            jump zm1041_dispose


# s16 # say9073
label zm1041_s16:  # from 7.0 8.0 8.1 9.1 12.0 13.0
    SPEAKER 'Я расскажу тебе всю историю. Как наставник и телохранитель Лю Сиси, я, конечно же, отвечал за ее безопасность и образование. Одним ясным вечером мы стояли на балконе, выходившем во внутренний двор, где я показывал ей различные созвездия.'

    menu:
        'Пожалуйста, продолжай.':
            # r65 # reply9152
            jump zm1041_s21

        'Наставник *и* телохранитель?':
            # r66 # reply9153
            jump zm1041_s12

        'Возможно, я выслушаю оставшуюся часть в другой раз. Прощай.':
            # r67 # reply9154
            jump zm1041_dispose


# s17 # say9074
label zm1041_s17:  # from 8.2 9.0
    SPEAKER 'Ах, это. Однажды ночью я встретил на улице девушку. Она принадлежала к организации под названием Тленные, той самой, что присматривает за этим комплексом. Она сделала мне предложение, согласно которому в обмен за небольшую сумму мое тело может быть… использовано… здесь после моей кончины.'

    menu:
        'И это не кажется тебе немного странным?':
            # r68 # reply9155
            jump zm1041_s22

        'Понятно. Еще вопрос, если можно…':
            # r69 # reply9156
            jump zm1041_s14

        'Это все, что я хотел узнать. Прощай.':
            # r70 # reply9157
            jump zm1041_dispose


# s18 # say9075
label zm1041_s18:  # from 8.3 9.2
    SPEAKER 'На самом деле, лингвистика всегда представляла для меня большой интерес. Будучи студентом, я обнаружил, что могу без особых проблем изучать новые наречия.'

    menu:
        'Тогда это все объясняет. Еще один вопрос…':
            # r71 # reply9158
            jump zm1041_s14

        'Понятно. Спасибо за разговор. Прощай.':
            # r72 # reply9159
            jump zm1041_dispose


# s19 # say9076
label zm1041_s19:  # from 15.0 20.0
    SPEAKER 'Видишь ли… за мной так никто и не вернулся. Я терпеливо ждал несколько дней, но безуспешно. В конце концов, я покинул комнату и стал бродить по дворцу в надежде на то, что кто-нибудь проведет меня… Он тихо вздыхает, выдыхая легкое облачко бальзамирующей жидкости. Там 9001 комната, и в каждой из них меня направляли в другую. Я словно навеки попал в трясину.'

    menu:
        'Понятно. Тогда у меня есть другой вопрос…':
            # r73 # reply9160
            jump zm1041_s14

        'Я могу чем-нибудь помочь?':
            # r74 # reply9161
            $ zm1041Logic.r9161_action()
            jump zm1041_s24

        'Несчастный глупец… Представляю, как долго тебе придется там бродить!':
            # r75 # reply9162
            $ zm1041Logic.r9162_action()
            jump zm1041_s25

        'Желаю тебе удачи. Прощай.':
            # r76 # reply9163
            jump zm1041_dispose


# s20 # say9077
label zm1041_s20:  # from 15.1
    SPEAKER 'Не могу сказать. Все это сильно огорчает меня! Он умолкает, чтобы восстановить самообладание. При этом его закостеневшие суставы и сухожилия тихонько поскрипывают.'

    menu:
        'Пожалуйста, продолжай свой рассказ.':
            # r77 # reply9164
            jump zm1041_s19

        'Могу себе представить… У меня есть другой вопрос…':
            # r78 # reply9165
            jump zm1041_s14

        'Возможно, я выслушаю оставшуюся часть в другой раз. Прощай.':
            # r79 # reply9166
            jump zm1041_dispose


# s21 # say9078
label zm1041_s21:  # from 16.0
    SPEAKER 'Да-да, конечно. Пока мы стояли, с крыши над балконом внезапно спрыгнули двое убийц, скорее всего, чтобы убить или похитить госпожу Лю. Позвав стражу, я обнажил свой клинок и бросился на ее защиту. В разгар битвы перила балкона обломились, и мы вчетвером упали в Нефритовый Портал.'

    menu:
        'Куда? В Нефритовый Портал?':
            # r80 # reply9167
            jump zm1041_s23

        'Постой… Перед тем, как ты продолжишь, у меня есть еще вопросы…':
            # r81 # reply9168
            jump zm1041_s14

        'Возможно, я выслушаю оставшуюся часть в другой раз. Прощай.':
            # r82 # reply9169
            jump zm1041_dispose


# s22 # say9079
label zm1041_s22:  # from 17.0
    SPEAKER 'Пожалуй, только сначала… В конце концов, эта идея немного жутковата. Но поговорив с ней немного, я понял, что они, тленные, разделяют со мной взгляды на смерть. Мое тело? Это всего лишь оболочка, не более. Я верю, что их 'Истинная Смерть' будет тем достойным местом, которого лично я когда-нибудь достигну… полностью освободившись и отделившись от материального мира. И если мое тело, служившее этой цели в качестве моей смертной оболочки, сможет служить здесь каким-нибудь целям, тем лучше. Дух учтиво улыбается тебе.'

    menu:
        'Мне ясны твои доводы. Еще один вопрос…':
            # r83 # reply9170
            jump zm1041_s14

        'Интересно. Теперь мне лучше уйти. Прощай.':
            # r84 # reply9171
            jump zm1041_dispose


# s23 # say9080
label zm1041_s23:  # from 21.0
    SPEAKER 'О! Прошу прощения за упущение… Нефритовый Портал — это круглый водоем во внутреннем дворе. Он выложен зелеными и белыми стеатитами и назван Порталом из-за того, что время от времени в отражении его мерцающих вод можно увидеть совершенно другое место.'

    menu:
        'Понятно. Пожалуйста, продолжай свой рассказ.':
            # r85 # reply9172
            jump zm1041_s27

        'Перед тем, как ты продолжишь, у меня есть другие вопросы…':
            # r86 # reply9173
            jump zm1041_s14

        'Пока это все, что я хотел знать. Прощай.':
            # r87 # reply9174
            jump zm1041_dispose


# s24 # say9081
label zm1041_s24:  # from 19.1
    SPEAKER 'Твое предложение великодушно. Но я боюсь, что здесь ничего нельзя поделать… Я уверен, что со временем все-таки найду свой путь. Так или иначе, благодарю тебя.'

    menu:
        'Несомненно. У меня еще вопрос…':
            # r88 # reply9175
            jump zm1041_s14

        'Не стоит беспокоиться. Теперь мне лучше уйти. Прощай.':
            # r89 # reply9176
            jump zm1041_dispose


# s25 # say9082
label zm1041_s25:  # from 19.2 33.1 35.1
    SPEAKER 'Дух недовольно смотрит на тебя, в глазах трупа вспыхивает призрачный огонек. Кажется, ты его оскорбил.'

    menu:
        'Прошу прощения. Можно спросить тебя кое-что еще?':
            # r90 # reply9177
            jump zm1041_s14

        'Отойти, оставить парящего духа.':
            # r91 # reply9178
            jump zm1041_dispose


# s26 # say9083
label zm1041_s26:  # from 14.6
    SPEAKER 'Ах, это… э-э… это стихи. Трудно перевести. Может, есть другой вопрос? Он неловко улыбается.'

    menu:
        'Да… да, конечно же.':
            # r92 # reply9179
            jump zm1041_s14

        'Нет… но я хотел бы побольше знать об этих стихах.':
            # r93 # reply9180
            jump zm1041_s28

        'Нет. Собственно, пожалуй, мне уже пора идти. Прощай.':
            # r94 # reply9181
            jump zm1041_dispose


# s27 # say9084
label zm1041_s27:  # from 23.0
    SPEAKER 'Как я уже сказал, мы упали в Нефритовый Портал. Я даже и не предполагал, что он *на самом* деле был порталом, во всех смыслах этого слова, и все же это так! Неожиданно я очутился в незнакомом переулке, лежащий со сломанной ногой. Придя в себя, я успел увидеть, как убийцы убегают, унося на плечах Лю Сиси.'

    menu:
        'Очень странно. Пожалуйста, продолжай.':
            # r95 # reply9182
            jump zm1041_s31

        'Перед тем, как ты продолжишь, я хотел бы задать другие вопросы…':
            # r96 # reply9183
            jump zm1041_s14

        'Понятно. Спасибо тебе, но мне уже пора.':
            # r97 # reply9184
            jump zm1041_dispose


# s28 # say9085
label zm1041_s28:  # from 26.1
    SPEAKER 'Хорошо. Он ненадолго задумывается, барабаня длинными костлявыми пальцами трупа. Затем он начинает декламировать в более твердом, выверенном ритме:  Как встречаться нам тяжело, так тяжело расставаться. Ветер жизни лишился сил, все цветы увядают. Лишь когда шелкопряд умрет, нити дум прекратятся. Лишь когда фитиль догорит, слезы свечи иссякнут.  Он учтиво улыбается тебе.'

    menu:
        'Ах… У меня есть другой вопрос.':
            # r98 # reply9185
            jump zm1041_s14

        'Интересно. А что это означает?':
            # r99 # reply9186
            jump zm1041_s29

        'Значит, говоришь, я должен оставить твой дух в покое? Я оскорбил тебя, вызвав сюда?' if zm1041Logic.r9187_condition():
            # r100 # reply9187
            jump zm1041_s30

        'О. Спасибо, что разъяснил мне это. Прощай.':
            # r101 # reply9188
            jump zm1041_dispose


# s29 # say9086
label zm1041_s29:  # from 28.1
    SPEAKER 'Ну, мне стыдно признаться, но это было деликатной попыткой сказать… сказать, что, наверно, лучше бы тебе оставить в покое души мертвых. У меня больше нет желания быть частью этого, — дух делает широкий жест, охватывая все, что находится вокруг него, — мира.'

    menu:
        'Хм-м. Ясно. У меня есть еще кое-какие вопросы.':
            # r102 # reply9189
            jump zm1041_s14

        'Я понимаю. В таком случае, прощай.':
            # r103 # reply9190
            jump zm1041_dispose


# s30 # say9087
label zm1041_s30:  # from 28.2
    SPEAKER 'А… э-э… нет. Я не хотел быть столь прямолинеен, чтобы избежать конфронтации. Это всего лишь означает, что у меня нет больше желания быть частью этого, — дух делает широкий жест, охватывая все, что находится вокруг него, — мира.'

    menu:
        'Хм-м. Ясно. У меня есть еще кое-какие вопросы…':
            # r104 # reply9191
            jump zm1041_s14

        'Я понимаю. В таком случае, прощай.':
            # r105 # reply9192
            jump zm1041_dispose


# s31 # say9088
label zm1041_s31:  # from 27.0
    SPEAKER 'Ну, это почти все. Мне пришлось хромать с болью в ноге, пока я не нашел того, кто вылечил мою ногу. Он взял в качестве платы все те небольшие накопления, что у меня были. У этого целителя и у других людей я научился здешнему языку, не переставая разыскивать двух убийц и свою подопечную.'

    menu:
        'Значит, ты их не нашел?':
            # r106 # reply9193
            jump zm1041_s32

        'Хм-м. Знаешь, довольно странно, что ты смог так быстро изучить язык…':
            # r107 # reply9194
            jump zm1041_s38

        'Перед тем, как ты продолжишь, я хотел бы задать другие вопросы…':
            # r108 # reply9195
            jump zm1041_s14

        'Я выслушаю оставшуюся часть истории в другой раз. Прощай.':
            # r109 # reply9196
            jump zm1041_dispose


# s32 # say9089
label zm1041_s32:  # from 31.0 38.0
    SPEAKER 'Я поймал одного из них, но он не пожелал говорить. Я казнил его и положил его голову в шелковый мешок, чтобы преподнести ее Цензору, когда я вернусь назад с его дочерью, — на миг он мрачнеет, потом продолжает. — Другой убийца… ускользнул от меня. Даже больше: он убил меня, прежде чем я смог убить его и спасти свою подопечную. Мне жаль, но теперь для меня уже все кончено.'

    menu:
        'А ты хоть знал, как вернуться назад, на родину, если бы спас эту… 'Сиси'?':
            # r110 # reply9197
            jump zm1041_s33

        'Занятная история. Тем не менее, у меня есть еще вопросы…':
            # r111 # reply9198
            jump zm1041_s14

        'Восхитительно. Теперь мне следует оставить тебя. Прощай.':
            # r112 # reply9199
            jump zm1041_dispose


# s33 # say9090
label zm1041_s33:  # from 32.0
    SPEAKER 'Нет, но я был уверен, что смог бы найти способ. Хотя теперь это под сомнением.'

    menu:
        'Возможно, они все еще в городе. Может быть, я смогу найти и спасти эту девушку.':
            # r113 # reply9200
            $ zm1041Logic.r9200_action()
            jump zm1041_s34

        'Похоже, тебе легко забыть о своем долге только лишь потому, что ты мертв. Не представляю, как бы я смог допустить подобное.':
            # r114 # reply9201
            $ zm1041Logic.r9201_action()
            jump zm1041_s25

        'Интересно. Позволь мне спросить кое о чем еще…':
            # r115 # reply9202
            jump zm1041_s14

        'Хм-м. Мне пора. Удачи тебе.':
            # r116 # reply9203
            jump zm1041_dispose


# s34 # say9091
label zm1041_s34:  # from 33.0
    SPEAKER 'Твое предложение отличает в тебе благородного человека… тем не менее, прошло не меньше семидесяти пяти лет с тех пор, как я был убит. Человек, убивший меня, давно уже мертв, и Сиси, скорее всего, тоже.'

    menu:
        'Хм-м. Тогда неважно. У меня есть другой вопрос…':
            # r117 # reply9205
            jump zm1041_s14

        'Тогда неважно. Прощай.':
            # r118 # reply9206
            jump zm1041_dispose


# s35 # say9092
label zm1041_s35:  # -
    SPEAKER 'Убийца похож на меня внешне, над бровью у него татуировка лотоса. Заметив твое смятение, он добавляет: Это такой цветок с семью лепестками. Лю Сиси — это молодая девушка, ей всего лишь четырнадцать лет. Возможно, она или убийца знают путь назад и как снова активировать портал.'

    menu:
        'Если встречу ее — сделаю все, что в моих силах, чтобы помочь ей — в память о тебе.':
            # r119 # reply9207
            $ zm1041Logic.r9207_action()
            jump zm1041_s36

        'Неважно. У меня нет времени на это.':
            # r120 # reply9208
            $ zm1041Logic.r9208_action()
            jump zm1041_s25

        'Хорошо. У меня есть другой вопрос…':
            # r121 # reply9209
            $ zm1041Logic.r9209_action()
            jump zm1041_s14

        'Это все, что мне нужно. Прощай.':
            # r122 # reply9210
            $ zm1041Logic.r9210_action()
            jump zm1041_dispose


# s36 # say9093
label zm1041_s36:  # from 35.0
    SPEAKER 'Ты добрый и благородный человек. Однако не делай этого для меня… девушка и ее отец — вот кому нужна твоя помощь.'

    menu:
        'Хорошо. У меня еще один вопрос…':
            # r123 # reply9211
            jump zm1041_s14

        'Я понимаю. Прощай, дух.':
            # r124 # reply9212
            jump zm1041_dispose


# s37 # say9094
label zm1041_s37:  # from 0.4 # IF ~  Global("Bei","GLOBAL",1)
    SPEAKER 'Я определенно не ожидал увидеть тебя снова, — дух учтиво кланяется, но его лицо остается непроницаемым. — Что тебе нужно от меня?'

    menu:
        'Вопрос…':
            # r125 # reply9213
            jump zm1041_s14

        'Ничего, я оставляю тебя в покое.':
            # r126 # reply9214
            jump zm1041_dispose


# s38 # say9718
label zm1041_s38:  # from 31.1
    SPEAKER 'На самом деле, лингвистика всегда представляла для меня большой интерес. Будучи студентом, я обнаружил, что могу без особых проблем изучать новые наречия.'

    menu:
        'Это многое объясняет. Итак, ты больше не встречал убийц?':
            # r127 # reply9719
            jump zm1041_s32

        'Понятно. Позволь мне спросить кое о чем еще…':
            # r128 # reply9720
            jump zm1041_s14

        'Понятно. Спасибо за разговор. Прощай.':
            # r129 # reply9721
            jump zm1041_dispose
