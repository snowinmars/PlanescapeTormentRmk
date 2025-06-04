init python:
    def _r41145_action(gsm):        
        gsm.set_morte_mortuary_walkthrough_1(True)
    def _r41146_action(gsm):        
        gsm.set_morte_mortuary_walkthrough_1(True)
    def _r41147_action(gsm):        
        gsm.set_morte_mortuary_walkthrough_1(True)
    def _r41148_action(gsm):        
        gsm.set_morte_mortuary_walkthrough_1(True)
    def _r41177_action(gsm):        
        gsm.update_journal('39516')    # '39516': ' ~Мой предыдущий дневник пропал, так что я завел новый. Я очнулся в месте под названием «Морг». Я не знаю, кто я, что я здесь делаю и даже как я сюда попал. Единственного, кого я здесь пока встретил, — говорящий без умолку череп по имени Морт... Когда он осматривал мои раны, он нашел «указания», вытатуированные на моей спине:  «Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых».  «Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».  Мог ли сам себе оставить это сообщение? Судя по всему, мне придется найти этого «Фарода» и свой дневник.~ '
    def _r41251_action(gsm):        
        gsm.set_in_party_morte(True)
    def _r41255_action(gsm):        
        gsm.set_in_party_morte(True)
    def _r41258_action(gsm):        
        gsm.set_in_party_morte(True)
    def _r41263_action(gsm):        
        gsm.set_morte_mortuary_walkthrough_2(True)


init python:
    def _r41163_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int')
    def _r41181_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41182_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41184_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41185_condition(gsm):
        return gsm.get_has_bandages()
    def _r41186_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41187_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41191_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41192_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41196_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41197_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41201_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41203_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41206_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41207_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41210_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41211_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41214_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41215_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41219_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41220_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41223_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41224_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41227_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41228_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41231_condition(gsm):
        return not gsm.get_morte_mortuary_walkthrough_1()
    def _r41232_condition(gsm):
        return gsm.get_morte_mortuary_walkthrough_1()
    def _r41239_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int')


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DMORTE2.DLG
# Starts:    dmorte2_s
# ###


label dmorte2_init:
    return


label dmorte2_dispose:
    jump show_graphics_menu


# s0 # say41144
label dmorte2_s0:  # from - # ~ THEN BEGIN 0 // from:
    SPEAKER 'Тсссс… Небольшой совет, шеф: с этого момента я бы вел себя потише. Не нужно больше вписывать трупы в книгу мертвых без необходимости… особенно женские. К тому же, их убийство может заинтересовать здешних смотрителей.'

    menu:
        'Кажется, ты еще не говорил об этом… *кто* такие эти смотрители?':
            # r0 # reply41145
            $ _r41145_action(gsm)
            jump dmorte2_s1
        'Эти трупы… откуда они все берутся?':
            # r1 # reply41146
            $ _r41146_action(gsm)
            jump dmorte2_s3
        'Почему тебя так заботят женские тела?':
            # r2 # reply41147
            $ _r41147_action(gsm)
            jump dmorte2_s4
        'Ладно… Я… попробую это запомнить.':
            # r3 # reply41148
            $ _r41148_action(gsm)
            jump dmorte2_s8


# s1 # say41149
label dmorte2_s1:  # from 0.0 3.0 7.0
    SPEAKER 'Они зовут себя «тленными». Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица. Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.'

    menu:
        'Я запутался… какое тленным дело, если я сбегу?':
            # r4 # reply41150
            jump dmorte2_s2


# s2 # say41151
label dmorte2_s2:  # from 1.0
    SPEAKER 'Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже. Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?'

    menu:
        'Эти трупы, которых я видел здесь… откуда они все берутся?':
            # r5 # reply41152
            jump dmorte2_s3
        'До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?':
            # r6 # reply41153
            jump dmorte2_s4
        'Ладно… Я… попробую это запомнить.':
            # r7 # reply41154
            jump dmorte2_s8


# s3 # say41155
label dmorte2_s3:  # from 0.1 2.0 7.1
    SPEAKER 'Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.'

    menu:
        'Просвяти меня… *кто* такие эти смотрители?':
            # r8 # reply41156
            jump dmorte2_s1
        'До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?':
            # r9 # reply41157
            jump dmorte2_s4
        'Ладно… Я… попробую это запомнить.':
            # r10 # reply41158
            jump dmorte2_s8


# s4 # say41159
label dmorte2_s4:  # from 0.2 2.1 3.1
    SPEAKER 'Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы. Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.'

    menu:
        'Последняя возможность? Погоди… о *чем* это ты толкуешь?':
            # r11 # reply41160
            jump dmorte2_s5


# s5 # say41161
label dmorte2_s5:  # from 4.0
    SPEAKER 'Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?'

    menu:
        'Нет… не очень, если честно.':
            # r12 # reply41162
            jump dmorte2_s6
        'Ты это *несерьезно*.' if _r41163_condition(gsm):
            # r13 # reply41163
            jump dmorte2_s6


# s6 # say41164
label dmorte2_s6:  # from 5.0 5.1
    SPEAKER 'Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* мертвы, по крайней мере один раз: у нас есть общая тема для разговоров. Они предрасположены к мужчинам с нашим опытом смерти.'

    menu:
        'Постой… разве ты не говорил до этого, что я *не мертвый*?':
            # r14 # reply41165
            jump dmorte2_s7


# s7 # say41166
label dmorte2_s7:  # from 6.0
    SPEAKER 'Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да. И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц. Морт начинает в предвкушении щелкать зубами. Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…'

    menu:
        'Еще раз, кто эти смотрители?':
            # r15 # reply41167
            jump dmorte2_s1
        'Но откуда берутся все эти трупы?':
            # r16 # reply41168
            jump dmorte2_s3
        'Ладно… Я попробую это запомнить.':
            # r17 # reply41169
            jump dmorte2_s8


# s8 # say41170
label dmorte2_s8:  # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    SPEAKER 'Послушай, шеф. Очевидно, ты еще не отошел от свидания со смертью, поэтому у меня два небольших совета для тебя. Во-первых, если у тебя возникают вопросы, *спроси* меня, хорошо?'

    menu:
        'Хорошо… если у меня возникнут вопросы, я спрошу у тебя.':
            # r18 # reply41171
            jump dmorte2_s9


# s9 # say41172
label dmorte2_s9:  # from 8.0
    SPEAKER 'Во-вторых, если ты хоть *наполовину* забывчив от того, каким кажешься, то начни записывать свои мысли: как только ты встретишь то, что *может* быть важным, запиши это, чтобы не забыть.'

    menu:
        'Если бы у меня был бы дневник, который *должен* был быть рядом со мной, я бы так и поступил.':
            # r19 # reply41173
            jump dmorte2_s10


# s10 # say41174
label dmorte2_s10:  # from 9.0
    SPEAKER 'Тогда заведи себе новый, шеф. Без проблем. Вокруг для тебя полным-полно пергамента и чернил.'

    menu:
        'Хм-м. Ну хорошо. Хуже от этого не будет… Заведу себе новый.':
            # r20 # reply41175
            jump dmorte2_s11


# s11 # say41176
label dmorte2_s11:  # from 10.0
    SPEAKER 'Записывай в него каждый свой шаг. Если начнешь забывать важные вещи… например, кто ты… или, что еще важнее, кто *я*… то воспользуйся им, чтобы освежить свою память.'

    menu:
        'Ладно… Уяснил. Идем.':
            # r21 # reply41177
            $ _r41177_action(gsm)
            jump show_graphics_menu


# s12 # say41178
label dmorte2_s12:  # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0
    SPEAKER 'Что гложет тебя, шеф?'

    menu:
        'Можешь еще раз прочитать, что у меня вытатуировано на спине?':
            # r22 # reply41179
            jump dmorte2_s13
        'Еще раз, что это за место?':
            # r23 # reply41180
            jump dmorte2_s18
        'Это место такое огромное… Кто за ним присматривает?' if _r41181_condition(gsm):
            # r24 # reply41181
            jump dmorte2_s19
        'Еще раз, кто эти смотрители?' if _r41182_condition(gsm):
            # r25 # reply41182
            jump dmorte2_s19
        'Эти трупы… откуда они все берутся?':
            # r26 # reply41183
            jump dmorte2_s22
        'До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?' if _r41184_condition(gsm):
            # r27 # reply41184
            jump dmorte2_s23
        'Как мне использовать эти бинты?' if _r41185_condition(gsm):
            # r28 # reply41185
            jump dmorte2_s21
        'Пока ничего, Морт. Просто проверяю, что ты еще со мной.' if _r41186_condition(gsm):
            # r29 # reply41186
            jump dmorte2_s8
        'Пока ничего, Морт. Просто проверяю, что ты еще со мной.' if _r41187_condition(gsm):
            # r30 # reply41187
            jump show_graphics_menu


# s13 # say41188
label dmorte2_s13:  # from 12.0
    SPEAKER 'Эй, шеф, *да ладно* тебе. Только не говори, что ты опять все забыл.'

    menu:
        'Мне просто нужно освежить свою память, вот и все.':
            # r31 # reply41189
            jump dmorte2_s14
        'Ладно, неважно. У меня есть другие вопросы…':
            # r32 # reply41190
            jump dmorte2_s12
        'Ладно, забудь. Идем.' if _r41191_condition(gsm):
            # r33 # reply41191
            jump dmorte2_s8
        'Ладно, забудь. Идем.' if _r41192_condition(gsm):
            # r34 # reply41192
            jump show_graphics_menu


# s14 # say41193
label dmorte2_s14:  # from 13.0
    SPEAKER 'Готов поспорить, что услышу ЭТО много раз. Морт прочищает горло. Посмотрим…  «Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его уже не записали в книгу мертвых».'

    menu:
        'Фарод… хм-м. Продолжай.':
            # r35 # reply41194
            jump dmorte2_s15
        'Неважно. У меня есть другие вопросы…':
            # r36 # reply41195
            jump dmorte2_s12
        'Забудь. Я уже достаточно наслушался. Идем.' if _r41196_condition(gsm):
            # r37 # reply41196
            jump dmorte2_s8
        'Забудь. Я уже достаточно наслушался. Идем.' if _r41197_condition(gsm):
            # r38 # reply41197
            jump show_graphics_menu


# s15 # say41198
label dmorte2_s15:  # from 14.0
    SPEAKER 'Сейчас, сейчас, погоди, — Морт на миг умолкает. — Хорошо, вот последний кусок…  «Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».'

    menu:
        'Когда я очнулся, рядом со мной не было дневника?':
            # r39 # reply41199
            jump dmorte2_s16
        'Неважно. У меня есть другие вопросы…':
            # r40 # reply41200
            jump dmorte2_s12
        'Забудь. Я уже достаточно наслушался. Идем.' if _r41201_condition(gsm):
            # r41 # reply41201
            jump dmorte2_s8
        'Забудь. Я уже достаточно наслушался. Идем.' if _r41203_condition(gsm):
            # r42 # reply41203
            jump show_graphics_menu


# s16 # say41202
label dmorte2_s16:  # from 15.0
    SPEAKER 'Нет… тебя обобрали догола. Как я уже говорил, похоже, что достаточно того дневника, что выбит у тебя на теле.'

    menu:
        'Ты уверен, что не знаешь никого по имени Фарод?':
            # r43 # reply41204
            jump dmorte2_s17
        'И то правда. У меня есть другие вопросы…':
            # r44 # reply41205
            jump dmorte2_s12
        'Ладно. Идем.' if _r41206_condition(gsm):
            # r45 # reply41206
            jump dmorte2_s8
        'Ладно. Идем.' if _r41207_condition(gsm):
            # r46 # reply41207
            jump show_graphics_menu


# s17 # say41208
label dmorte2_s17:  # from 16.0
    SPEAKER 'Неа. В общем, какой-нибудь пень да знает, как добраться до него. Надо поспрашивать в округе… ПОСЛЕ того, как мы выберемся отсюда.'

    menu:
        'Перед тем как мы пойдем, у меня есть еще вопросы…':
            # r47 # reply41209
            jump dmorte2_s12
        'Ладно. Идем.' if _r41210_condition(gsm):
            # r48 # reply41210
            jump dmorte2_s8
        'Ладно. Идем.' if _r41211_condition(gsm):
            # r49 # reply41211
            jump show_graphics_menu


# s18 # say41212
label dmorte2_s18:  # from 12.1
    SPEAKER 'Оно называется «Моргом»… это такое большое черное здание с чарующей архитектурой беременной паучихи.'

    menu:
        'Ясно. У меня есть другие вопросы к тебе…':
            # r50 # reply41213
            jump dmorte2_s12
        'Это все, что я хотел узнать. Спасибо.' if _r41214_condition(gsm):
            # r51 # reply41214
            jump dmorte2_s8
        'Это все, что я хотел узнать. Спасибо.' if _r41215_condition(gsm):
            # r52 # reply41215
            jump show_graphics_menu


# s19 # say41216
label dmorte2_s19:  # from 12.2 12.3
    SPEAKER 'Они зовут себя «тленными». Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица. Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.'

    menu:
        'Я запутался… какое тленным дело, если я сбегу?':
            # r53 # reply41217
            jump dmorte2_s20
        'Ясно. У меня есть другие вопросы к тебе…':
            # r54 # reply41218
            jump dmorte2_s12
        'Понятно. Тогда я буду осторожен.' if _r41219_condition(gsm):
            # r55 # reply41219
            jump dmorte2_s8
        'Понятно. Тогда я буду осторожен.' if _r41220_condition(gsm):
            # r56 # reply41220
            jump show_graphics_menu


# s20 # say41221
label dmorte2_s20:  # from 19.0
    SPEAKER 'Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже. Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?'

    menu:
        'Ясно. У меня есть другие вопросы к тебе…':
            # r57 # reply41222
            jump dmorte2_s12
        'Ладно… Я… попробую это запомнить.' if _r41223_condition(gsm):
            # r58 # reply41223
            jump dmorte2_s8
        'Ладно… Я… попробую это запомнить.' if _r41224_condition(gsm):
            # r59 # reply41224
            jump show_graphics_menu


# s21 # say41225
label dmorte2_s21:  # from 12.6
    SPEAKER 'Нууу… просто *используй* их. Останавливает кровотечение и все такое.'

    menu:
        'Ясно. У меня есть другие вопросы к тебе…':
            # r60 # reply41226
            jump dmorte2_s12
        'Спасибо. Думаю, я смогу с ними справиться.' if _r41227_condition(gsm):
            # r61 # reply41227
            jump dmorte2_s8
        'Спасибо. Думаю, я смогу с ними справиться.' if _r41228_condition(gsm):
            # r62 # reply41228
            jump show_graphics_menu


# s22 # say41229
label dmorte2_s22:  # from 12.4
    SPEAKER 'Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.'

    menu:
        'Ясно. У меня есть другие вопросы к тебе…':
            # r63 # reply41230
            jump dmorte2_s12
        'Ладно… Я… попробую это запомнить.' if _r41231_condition(gsm):
            # r64 # reply41231
            jump dmorte2_s8
        'Ладно… Я… попробую это запомнить.' if _r41232_condition(gsm):
            # r65 # reply41232
            jump show_graphics_menu


# s23 # say41233
label dmorte2_s23:  # from 12.5
    SPEAKER 'Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы. Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.'

    menu:
        'Последняя возможность? Погоди… о *чем* это ты толкуешь?':
            # r66 # reply41234
            jump dmorte2_s24
        'Неважно. У меня к тебе еще вопросы…':
            # r67 # reply41235
            jump dmorte2_s12
        'Ладно… Я… попробую это запомнить.':
            # r68 # reply41236
            jump show_graphics_menu


# s24 # say41237
label dmorte2_s24:  # from 23.0
    SPEAKER 'Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?'

    menu:
        'Нет… не очень, если честно.':
            # r69 # reply41238
            jump dmorte2_s25
        'Ты это *несерьезно*.' if _r41239_condition(gsm):
            # r70 # reply41239
            jump dmorte2_s25
        'Неважно. У меня к тебе еще вопросы…':
            # r71 # reply41240
            jump dmorte2_s12
        'Я достаточно наслушался. Идем.':
            # r72 # reply41241
            jump show_graphics_menu


# s25 # say41242
label dmorte2_s25:  # from 24.0 24.1
    SPEAKER 'Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* мертвы, по крайней мере один раз: у нас есть общая тема для разговоров. Они предрасположены к мужчинам с нашим опытом смерти.'

    menu:
        'Постой… разве ты не говорил до этого, что я *не мертвый*?':
            # r73 # reply41243
            jump dmorte2_s26
        'Неважно. У меня к тебе еще вопросы…':
            # r74 # reply41244
            jump dmorte2_s12
        'Я достаточно наслушался. Идем.':
            # r75 # reply41245
            jump show_graphics_menu


# s26 # say41246
label dmorte2_s26:  # from 25.0
    SPEAKER 'Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да. И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц. Морт начинает в предвкушении щелкать зубами. Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…'

    menu:
        'У меня есть другие вопросы к тебе, Морт…':
            # r76 # reply41247
            jump dmorte2_s12
        'Я достаточно наслушался. Идем.':
            # r77 # reply41248
            jump show_graphics_menu


# s27 # say41250
label dmorte2_s27:  # from -
    SPEAKER 'Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а?'

    menu:
        'Да… идем.':
            # r78 # reply41251
            $ _r41251_action(gsm)
            jump show_graphics_menu
        'Не сейчас, Морт.':
            # r79 # reply41252
            jump dmorte2_s28


# s28 # say41253
label dmorte2_s28:  # from 27.1
    SPEAKER 'Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс. Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?'

    menu:
        'Морт, у тебя НЕТ ни того, ни другого.':
            # r80 # reply41254
            jump dmorte2_s29
        'Ладно. Я передумал. Давай, идем.':
            # r81 # reply41255
            $ _r41255_action(gsm)
            jump show_graphics_menu
        'Не сейчас, Морт. Может быть, потом.':
            # r82 # reply41256
            jump dmorte2_s29


# s29 # say41257
label dmorte2_s29:  # from 28.0 28.2
    SPEAKER 'Ты пытаешься задеть мои чувства, шеф? Погоди, разве я что-то не так сказал? Или это из-за того, что у меня нет рук? Что?'

    menu:
        'Ладно. Я передумал. Давай, идем.':
            # r83 # reply41258
            $ _r41258_action(gsm)
            jump show_graphics_menu
        'Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.':
            # r84 # reply41259
            jump dmorte2_s30


# s30 # say41260
label dmorte2_s30:  # from 29.1
    SPEAKER 'Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.'

    menu:
        'Я так и сделаю. Прощай, Морт.':
            # r85 # reply41261
            jump show_graphics_menu


# s31 # say41262
label dmorte2_s31:  # from -
    SPEAKER 'Силы небесные. Это одна из этих ЧЕРТОВЫХ книг.'

    menu:
        'Что такое?':
            # r86 # reply41263
            $ _r41263_action(gsm)
            jump dmorte2_s32


# s32 # say41264
label dmorte2_s32:  # from 31.0
    SPEAKER 'Если я прав, то это та книга, куда они записывают имена всех несчастных бедолаг, которым не повезло оказаться здесь.'

    menu:
        'А мое имя может быть там?':
            # r87 # reply41265
            jump dmorte2_s33


# s33 # say41266
label dmorte2_s33:  # from 32.0
    SPEAKER 'Э… ну… *Возможно*. Чтобы определить это, нужно потрясти черепушкой вон с тем парящим трухлявиком. Вот только я не уверен, что это хорошая идея.'

    menu:
        'Мне нужны ответы. Я поговорю с ним.':
            # r88 # reply41267
            jump show_graphics_menu