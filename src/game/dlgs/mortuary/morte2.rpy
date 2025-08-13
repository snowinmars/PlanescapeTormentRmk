init 10 python:
    from game.dlgs.mortuary.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/MORTE2.DLG
# ###


label start_morte2_talk_first:
    call morte2_talk_first
    jump morte2_s0
label start_morte2_talk_dhall:
    call morte2_talk_dhall
    jump morte2_s31
label start_morte2_talk:
    call morte2_init
    jump morte2_s12
label start_morte2_kill:
    call morte2_init
    jump morte2_kill
label morte2_talk_first:
    scene bg mortuary_f2r2
    show morte_img default at center_left_down
    $ morte2Logic.morte_init_first()
    return
label morte2_init:
    show morte_img default at center_left_down
    $ morte2Logic.morte_init()
    return
label morte2_talk_dhall:
    scene bg mortuary_f2r3
    show morte_img default at center_left_down
    $ morte2Logic.morte_talk_dhall()
    return
label morte2_dispose:
    hide morte_img
    jump graphics_menu


# s0 # say41144
label morte2_s0:  # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr "Двери открываются с лёгким шорохом."
    morte '«Тсссс… Небольшой совет, шеф: с этого момента я бы вел себя потише».'
    morte '«Не нужно больше вписывать трупы в книгу мертвых без необходимости…»'
    morte '«…особенно женские. К тому же, их убийство может заинтересовать здешних смотрителей».'

    menu:
        '«Кажется, ты еще не говорил об этом… *кто* такие эти смотрители?»':
            # r0 # reply41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '«Эти трупы… откуда они все берутся?»':
            # r1 # reply41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '«Почему тебя так заботят женские тела?»':
            # r2 # reply41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '«Ладно… Я… попробую это запомнить».':
            # r3 # reply41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1:  # from 0.0 3.0 7.0
    morte '«Они зовут себя «тленными». Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица».'
    morte '«Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже».'

    menu:
        '«Я запутался… какое тленным дело, если я сбегу?»':
            # r4 # reply41150
            jump morte2_s2


# s2 # say41151
label morte2_s2:  # from 1.0
    morte '«Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже».'
    morte '«Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?»'

    menu:
        '«Эти трупы, которых я видел здесь… откуда они все берутся?»':
            # r5 # reply41152
            jump morte2_s3

        '«До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?»':
            # r6 # reply41153
            jump morte2_s4

        '«Ладно… Я… попробую это запомнить».':
            # r7 # reply41154
            jump morte2_s8


# s3 # say41155
label morte2_s3:  # from 0.1 2.0 7.1
    morte '«Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям».'

    menu:
        '«Просвяти меня… *кто* такие эти смотрители?»':
            # r8 # reply41156
            jump morte2_s1

        '«До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?»':
            # r9 # reply41157
            jump morte2_s4

        '«Ладно… Я… попробую это запомнить».':
            # r10 # reply41158
            jump morte2_s8


# s4 # say41159
label morte2_s4:  # from 0.2 2.1 3.1
    morte '«Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы».'
    morte '«Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого».'

    menu:
        '«Последняя возможность? Погоди… о *чем* это ты толкуешь?»':
            # r11 # reply41160
            jump morte2_s5


# s5 # say41161
label morte2_s5:  # from 4.0
    morte '««Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?»»'

    menu:
        '«Нет… не очень, если честно».':
            # r12 # reply41162
            jump morte2_s6

        '«Ты это *несерьезно*».' if morte2Logic.r41163_condition():
            # r13 # reply41163
            jump morte2_s6


# s6 # say41164
label morte2_s6:  # from 5.0 5.1
    morte '«Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* мертвы, по крайней мере один раз: у нас есть общая тема для разговоров».'
    morte '«Они предрасположены к мужчинам с нашим опытом смерти».'

    menu:
        '«Постой… разве ты не говорил до этого, что я *не мертвый*?»':
            # r14 # reply41165
            jump morte2_s7


# s7 # say41166
label morte2_s7:  # from 6.0
    morte '«Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да».'
    morte '«И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц».'
    nr 'Морт начинает в предвкушении щелкать зубами.'
    morte '«Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…»'

    menu:
        '«Еще раз, кто эти смотрители?»':
            # r15 # reply41167
            jump morte2_s1

        '«Но откуда берутся все эти трупы?»':
            # r16 # reply41168
            jump morte2_s3

        '«Ладно… Я попробую это запомнить».':
            # r17 # reply41169
            jump morte2_s8


# s8 # say41170
label morte2_s8:  # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    morte '«Послушай, шеф. Очевидно, ты еще не отошел от свидания со смертью, поэтому у меня два небольших совета для тебя».'
    morte '«Во-первых, если у тебя возникают вопросы, *спроси* меня, хорошо?»'

    menu:
        '«Хорошо… если у меня возникнут вопросы, я спрошу у тебя».':
            # r18 # reply41171
            jump morte2_s9


# s9 # say41172
label morte2_s9:  # from 8.0
    morte '«Во-вторых, если ты хоть *наполовину* забывчив от того, каким кажешься, то начни записывать свои мысли».'
    morte '«Как только ты встретишь то, что *может* быть важным, запиши это, чтобы не забыть».'

    menu:
        '«Если бы у меня был бы дневник, который *должен* был быть рядом со мной, я бы так и поступил».':
            # r19 # reply41173
            jump morte2_s10


# s10 # say41174
label morte2_s10:  # from 9.0
    morte '«Тогда заведи себе новый, шеф. Без проблем. Вокруг для тебя полным-полно пергамента и чернил».'

    menu:
        '«Хм-м. Ну хорошо. Хуже от этого не будет… Заведу себе новый».':
            # r20 # reply41175
            jump morte2_s11


# s11 # say41176
label morte2_s11:  # from 10.0
    morte '«Записывай в него каждый свой шаг. Если начнешь забывать важные вещи… например, кто ты…»'
    morte '«…или, что еще важнее, кто *я*… то воспользуйся им, чтобы освежить свою память».'

    menu:
        '«Ладно… Уяснил. Идем».':
            # r21 # reply41177
            $ morte2Logic.r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12:  # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    morte '«Что гложет тебя, шеф?»'

    menu:
        '«Можешь еще раз прочитать, что у меня вытатуировано на спине?»':
            # r22 # reply41179
            jump morte2_s13

        '«Еще раз, что это за место?»':
            # r23 # reply41180
            jump morte2_s18

        '«Это место такое огромное… Кто за ним присматривает?»' if morte2Logic.r41181_condition():
            # r24 # reply41181
            jump morte2_s19

        '«Еще раз, кто эти смотрители?»' if morte2Logic.r41182_condition():
            # r25 # reply41182
            jump morte2_s19

        '«Эти трупы… откуда они все берутся?»':
            # r26 # reply41183
            jump morte2_s22

        '«До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?»' if morte2Logic.r41184_condition():
            # r27 # reply41184
            jump morte2_s23

        '«Как мне использовать эти бинты?»' if morte2Logic.r41185_condition():
            # r28 # reply41185
            jump morte2_s21

        '«Пока ничего, Морт. Просто проверяю, что ты еще со мной».' if morte2Logic.r41186_condition():
            # r29 # reply41186
            jump morte2_s8

        '«Пока ничего, Морт. Просто проверяю, что ты еще со мной».' if morte2Logic.r41187_condition():
            # r30 # reply41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13:  # from 12.0
    morte '«Эй, шеф, *да ладно* тебе. Только не говори, что ты опять все забыл».'

    menu:
        '«Мне просто нужно освежить свою память, вот и все».':
            # r31 # reply41189
            jump morte2_s14

        '«Ладно, неважно. У меня есть другие вопросы…»':
            # r32 # reply41190
            jump morte2_s12

        '«Ладно, забудь. Идем».' if morte2Logic.r41191_condition():
            # r33 # reply41191
            jump morte2_s8

        '«Ладно, забудь. Идем».' if morte2Logic.r41192_condition():
            # r34 # reply41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14:  # from 13.0
    morte '«Готов поспорить, что услышу ЭТО много раз».'
    nr 'Морт прочищает горло.'
    morte '«Посмотрим…»'
    scars '«Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ».'
    scars '«Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело».'
    scars '«ФАРОД сможет дополнить оставшуюся часть истории, если его уже не записали в книгу мертвых».'

    menu:
        '«Фарод… хм-м. Продолжай».':
            # r35 # reply41194
            jump morte2_s15

        '«Неважно. У меня есть другие вопросы…»':
            # r36 # reply41195
            jump morte2_s12

        '«Забудь. Я уже достаточно наслушался. Идем».' if morte2Logic.r41196_condition():
            # r37 # reply41196
            jump morte2_s8

        '«Забудь. Я уже достаточно наслушался. Идем».' if morte2Logic.r41197_condition():
            # r38 # reply41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15:  # from 14.0
    morte '«Сейчас, сейчас, погоди…»'
    nr 'Морт на миг умолкает.'
    morte '«Хорошо, вот последний кусок…»'
    scars '«Не потеряй дневник, иначе мы вновь окажемся в Стиксе».'
    scars '«И что бы ты ни делал, НЕ ГОВОРИ никому КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий».'
    scars '«Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».'


    menu:
        '«Когда я очнулся, рядом со мной не было дневника?»':
            # r39 # reply41199
            jump morte2_s16

        '«Неважно. У меня есть другие вопросы…»':
            # r40 # reply41200
            jump morte2_s12

        '«Забудь. Я уже достаточно наслушался. Идем».' if morte2Logic.r41201_condition():
            # r41 # reply41201
            jump morte2_s8

        '«Забудь. Я уже достаточно наслушался. Идем».' if morte2Logic.r41203_condition():
            # r42 # reply41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16:  # from 15.0
    morte '«Нет… тебя обобрали догола. Как я уже говорил, похоже, что достаточно того дневника, что выбит у тебя на теле».'

    menu:
        '«Ты уверен, что не знаешь никого по имени Фарод?»':
            # r43 # reply41204
            jump morte2_s17

        '«И то правда. У меня есть другие вопросы…»':
            # r44 # reply41205
            jump morte2_s12

        '«Ладно. Идем».' if morte2Logic.r41206_condition():
            # r45 # reply41206
            jump morte2_s8

        '«Ладно. Идем».' if morte2Logic.r41207_condition():
            # r46 # reply41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17:  # from 16.0
    morte '«Неа. В общем, какой-нибудь пень да знает, как добраться до него. Надо поспрашивать в округе… ПОСЛЕ того, как мы выберемся отсюда».'

    menu:
        '«Перед тем как мы пойдем, у меня есть еще вопросы…»':
            # r47 # reply41209
            jump morte2_s12

        '«Ладно. Идем».' if morte2Logic.r41210_condition():
            # r48 # reply41210
            jump morte2_s8

        '«Ладно. Идем».' if morte2Logic.r41211_condition():
            # r49 # reply41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18:  # from 12.1
    morte '«Оно называется «Моргом»… это такое большое черное здание с чарующей архитектурой беременной паучихи».'

    menu:
        '«Ясно. У меня есть другие вопросы к тебе…»':
            # r50 # reply41213
            jump morte2_s12

        '«Это все, что я хотел узнать. Спасибо».' if morte2Logic.r41214_condition():
            # r51 # reply41214
            jump morte2_s8

        '«Это все, что я хотел узнать. Спасибо».' if morte2Logic.r41215_condition():
            # r52 # reply41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19:  # from 12.2 12.3
    morte '«Они зовут себя «тленными». Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица».'
    morte '«Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже».'

    menu:
        '«Я запутался… какое тленным дело, если я сбегу?»':
            # r53 # reply41217
            jump morte2_s20

        '«Ясно. У меня есть другие вопросы к тебе…»':
            # r54 # reply41218
            jump morte2_s12

        '«Понятно. Тогда я буду осторожен».' if morte2Logic.r41219_condition():
            # r55 # reply41219
            jump morte2_s8

        '«Понятно. Тогда я буду осторожен».' if morte2Logic.r41220_condition():
            # r56 # reply41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20:  # from 19.0
    morte '«Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже».'
    morte '«Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?»'

    menu:
        '«Ясно. У меня есть другие вопросы к тебе…»':
            # r57 # reply41222
            jump morte2_s12

        '«Ладно… Я… попробую это запомнить».' if morte2Logic.r41223_condition():
            # r58 # reply41223
            jump morte2_s8

        '«Ладно… Я… попробую это запомнить».' if morte2Logic.r41224_condition():
            # r59 # reply41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21:  # from 12.6
    morte '«Нууу… в общем-то никак.' # TODO [snow]: обыграть»?

    menu:
        '«Ясно. У меня есть другие вопросы к тебе…»':
            # r60 # reply41226
            jump morte2_s12

        '«Спасибо. Думаю, я смогу с ними справиться».' if morte2Logic.r41227_condition():
            # r61 # reply41227
            jump morte2_s8

        '«Спасибо. Думаю, я смогу с ними справиться».' if morte2Logic.r41228_condition():
            # r62 # reply41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22:  # from 12.4
    morte '«Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям».'

    menu:
        '«Ясно. У меня есть другие вопросы к тебе…»':
            # r63 # reply41230
            jump morte2_s12

        '«Ладно… Я… попробую это запомнить».' if morte2Logic.r41231_condition():
            # r64 # reply41231
            jump morte2_s8

        '«Ладно… Я… попробую это запомнить».' if morte2Logic.r41232_condition():
            # r65 # reply41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23:  # from 12.5
    morte '«Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы».'
    morte '«Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого».'

    menu:
        '«Последняя возможность? Погоди… о *чем* это ты толкуешь?»':
            # r66 # reply41234
            jump morte2_s24

        '«Неважно. У меня к тебе еще вопросы…»':
            # r67 # reply41235
            jump morte2_s12

        '«Ладно… Я… попробую это запомнить».':
            # r68 # reply41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24:  # from 23.0
    morte '«Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?»'

    menu:
        '«Нет… не очень, если честно».':
            # r69 # reply41238
            jump morte2_s25

        '«Ты это *несерьезно*».' if morte2Logic.r41239_condition():
            # r70 # reply41239
            jump morte2_s25

        '«Неважно. У меня к тебе еще вопросы…»':
            # r71 # reply41240
            jump morte2_s12

        '«Я достаточно наслушался. Идем».':
            # r72 # reply41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25:  # from 24.0 24.1
    morte '«Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* мертвы, по крайней мере один раз: у нас есть общая тема для разговоров».'
    morte '«Они предрасположены к мужчинам с нашим опытом смерти».'

    menu:
        '«Постой… разве ты не говорил до этого, что я *не мертвый*?»':
            # r73 # reply41243
            jump morte2_s26

        '«Неважно. У меня к тебе еще вопросы…»':
            # r74 # reply41244
            jump morte2_s12

        '«Я достаточно наслушался. Идем».':
            # r75 # reply41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26:  # from 25.0
    morte '«Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да».'
    morte '«И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц».'
    nr 'Морт начинает в предвкушении щелкать зубами.'
    morte '«Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…»'

    menu:
        '«У меня есть другие вопросы к тебе, Морт…»':
            # r76 # reply41247
            jump morte2_s12

        '«Я достаточно наслушался. Идем».':
            # r77 # reply41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27:  # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    morte '«Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а?»'

    menu:
        '«Да… идем».':
            # r78 # reply41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '«Не сейчас, Морт».':
            # r79 # reply41252
            jump morte2_s28


# s28 # say41253
label morte2_s28:  # from 27.1
    morte '«Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс».'
    morte '«Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?»'

    menu:
        '«Морт, у тебя НЕТ ни того, ни другого».':
            # r80 # reply41254
            jump morte2_s29

        '«Ладно. Я передумал. Давай, идем».':
            # r81 # reply41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '«Не сейчас, Морт. Может быть, потом».':
            # r82 # reply41256
            jump morte2_s29


# s29 # say41257
label morte2_s29:  # from 28.0 28.2
    morte '«Ты пытаешься задеть мои чувства, шеф?»'
    morte '«Погоди, разве я что-то не так сказал?»'
    morte '«Или это из-за того, что у меня нет рук? Что?»'

    menu:
        '«Ладно. Я передумал. Давай, идем».':
            # r83 # reply41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '«Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт».':
            # r84 # reply41259
            jump morte2_s30


# s30 # say41260
label morte2_s30:  # from 29.1
    morte '«Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь».'

    menu:
        '«Я так и сделаю. Прощай, Морт».':
            # r85 # reply41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31:  # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    morte '«Силы небесные. Это одна из этих ЧЕРТОВЫХ книг».'

    menu:
        '«Что такое?»':
            # r86 # reply41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32:  # from 31.0
    morte '«Если я прав, то это та книга, куда они записывают имена всех несчастных бедолаг, которым не повезло оказаться здесь».'

    menu:
        '«А мое имя может быть там?»':
            # r87 # reply41265
            jump morte2_s33


# s33 # say41266
label morte2_s33:  # from 32.0
    morte '«Э… ну… *Возможно*. Чтобы определить это, нужно потрясти черепушкой вон с тем парящим трухлявиком. Вот только я не уверен, что это хорошая идея».'

    menu:
        '«Мне нужны ответы. Я поговорю с ним».':
            # r88 # reply41267
            jump morte2_dispose


label morte2_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump morte2_dispose
        'Убить.':
            jump morte2_killed


label morte2_killed:
    $ morte2Logic.kill_morte()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'morte2s.'
    nr 'Who is morte2?'
    nr 'morte2 is dead, baby, morte2 is dead.'
    jump morte2_dispose


label morte2_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump morte2_dispose
        'Убить.':
            jump morte2_killed_first


label morte2_killed_first:
    $ morte2Logic.kill_morte()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'morte2s.'
    nr 'Who is morte2?'
    nr 'morte2 is dead, baby, morte2 is dead.'
    jump morte2_dispose
