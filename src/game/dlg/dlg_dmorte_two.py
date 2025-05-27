import renpy
from engine.dialog import (DialogStateBuilder)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)



###
def _init(gsm):
    gsm.set_location('morgue2')
    _show('morte_img default', center_left_down)
    pick_up_intro_key(False)
def _dispose():
    _hide('morte_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
def _check_char_prop_gt(who, gtValue, prop):
    return True
def _check_char_prop_lt(who, gtValue, prop):
    return True
###
###
def _r41145_action(gsm):
    gsm.set_morte_mortuary_walkthrough(1)
def _r41146_action(gsm):
    gsm.set_morte_mortuary_walkthrough(1)
def _r41147_action(gsm):
    gsm.set_morte_mortuary_walkthrough(1)
def _r41148_action(gsm):
    gsm.set_morte_mortuary_walkthrough(1)
def _r41163_condition(gsm):
    return _check_char_prop_gt('protagonist',12,'int')
def _r41177_action(gsm):
    gsm.set_unblock_journal(True)
    gsm.update_journal('39516')
def _r41181_condition(gsm):
    return not gsm.get_morte_mortuary_walkthrough_1()
def _r41182_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
def _r41184_condition(gsm):
    return gsm.get_morte_mortuary_walkthrough_1()
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
    return _check_char_prop_gt('protagonist',12,'int')
def _r41263_action(gsm):
    gsm.set_morte_mortuary_walkthrough(2)
def _reply41263_action(gsm):
    gsm.set_morte_mortuary_walkthrough(2)
###

# DLG/DMORTE2.DLG
# DLG/DZM782.DLG
def dlg_dmorte_two(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    scares        = renpy.store.characters['scares']
    EXIT          = -1
    gsm           = renpy.store.global_settings_manager

    DialogStateBuilder() \
    .state('DMORTE2.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Двери открываются с лёгким шорохом.", '-', '-').with_action(lambda: _init(gsm)) \
            .line(morte, "Тсссс… Небольшой совет, шеф: с этого момента я бы вел себя потише. Не нужно больше вписывать трупы в книгу мертвых без необходимости…", 's0', 'say41144') \
            .line(morte, "…особенно женские. К тому же, их убийство может заинтересовать здешних смотрителей.", 's0', 'say41144') \
        .with_responses() \
            .response("Кажется, ты еще не говорил об этом… *кто* такие эти смотрители?", 'DMORTE2.D_s1', 'r1', 'reply41145').with_action(lambda: _r41145_action(gsm)) \
            .response("Эти трупы… откуда они все берутся?", 'DMORTE2.D_s3', 'r2', 'reply41146').with_action(lambda: _r41146_action(gsm)) \
            .response("Почему тебя так заботят женские тела?", 'DMORTE2.D_s4', 'r3', 'reply41147').with_action(lambda: _r41147_action(gsm)) \
            .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r4', 'reply41148').with_action(lambda: _r41148_action(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s1', '# from 0.0 3.0 7.0') \
        .with_npc_lines() \
            .line(morte, "Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица.", 's1', 'say41149') \
            .line(morte, "Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.", 's1', 'say41149') \
        .with_responses() \
            .response("Я запутался… какое тленным дело, если я сбегу?", 'DMORTE2.D_s2', 'r4', 'reply41150') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s2', '# from 1.0') \
        .with_npc_lines() \
            .line(morte, "Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже.", 's2', 'say41151') \
            .line(morte, "Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?", 's2', 'say41151') \
        .with_responses() \
            .response("Эти трупы, которых я видел здесь… откуда они все берутся?", 'DMORTE2.D_s3', 'r5', 'reply41152') \
            .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE2.D_s4', 'r6', 'reply41153') \
            .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r7', 'reply41154') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s3', '# from 0.1 2.0 7.1') \
        .with_npc_lines() \
            .line(morte, "Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.", 's3', 'say41155') \
        .with_responses() \
            .response("Просвяти меня… *кто* такие эти смотрители?", 'DMORTE2.D_s1', 'r8', 'reply41156') \
            .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE2.D_s4', 'r9', 'reply41157') \
            .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r10', 'reply41158') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s4', '# from 0.2 2.1 3.1') \
        .with_npc_lines() \
            .line(morte, "Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы.", 's4', 'say41159') \
            .line(morte, "Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.", 's4', 'say41159') \
        .with_responses() \
            .response("Последняя возможность? Погоди… о *чем* это ты толкуешь?", 'DMORTE2.D_s5', 'r11', 'reply41160') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s5', '# from 4.0') \
        .with_npc_lines() \
            .line(morte, "Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?", 's5', 'say41161') \
        .with_responses() \
            .response("Нет… не очень, если честно.", 'DMORTE2.D_s6', 'r12', 'reply41162') \
            .response("Ты это *несерьезно*.", 'DMORTE2.D_s6', 'r13', 'reply41163').with_condition(lambda: _r41163_condition(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s6', '# from 5.0 5.1') \
        .with_npc_lines() \
            .line(morte, "Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* мертвы, по крайней мере один раз: у нас есть общая тема для разговоров.", 's6', 'say41164') \
            .line(morte, "Они предрасположены к мужчинам с нашим опытом смерти.", 's6', 'say41164') \
        .with_responses() \
            .response("Постой… разве ты не говорил до этого, что я *не мертвый*?", 'DMORTE2.D_s7', 'r14', 'reply41165') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s7', '# from 6.0') \
        .with_npc_lines() \
            .line(morte, "Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да.", 's7', 'say41166') \
            .line(morte, "И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц.", 's7', 'say41166') \
            .line(teller, "Морт начинает в предвкушении щелкать зубами.", 's7', 'say41166') \
            .line(morte, "Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…", 's7', 'say41166') \
        .with_responses() \
            .response("Еще раз, кто эти смотрители?", 'DMORTE2.D_s1', 'r15', 'reply41167') \
            .response("Но откуда берутся все эти трупы?", 'DMORTE2.D_s3', 'r16', 'reply41168') \
            .response("Ладно… Я попробую это запомнить.", 'DMORTE2.D_s8', 'r17', 'reply41169') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s8', '# from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1') \
        .with_npc_lines() \
            .line(morte, "Послушай, шеф. Очевидно, ты еще не отошел от свидания со смертью, поэтому у меня два небольших совета для тебя.", 's8', 'say41170') \
            .line(morte, "Во-первых, если у тебя возникают вопросы, *спроси* меня, хорошо?", 's8', 'say41170') \
        .with_responses() \
            .response("Хорошо… если у меня возникнут вопросы, я спрошу у тебя.", 'DMORTE2.D_s9', 'r18', 'reply41171') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s9', '# from 8.0') \
        .with_npc_lines() \
            .line(morte, "Во-вторых, если ты хоть *наполовину* забывчив от того, каким кажешься, то начни записывать свои мысли.", 's9', 'say41172') \
            .line(morte, "Как только ты встретишь то, что *может* быть важным, запиши это, чтобы не забыть.", 's9', 'say41172') \
        .with_responses() \
            .response("Если бы у меня был бы дневник, который *должен* был быть рядом со мной, я бы так и поступил.", 'DMORTE2.D_s10', 'r19', 'reply41173') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s10', '# from 9.0') \
        .with_npc_lines() \
            .line(morte, "Тогда заведи себе новый, шеф. Без проблем. Вокруг для тебя полным-полно пергамента и чернил.", 's10', 'say41174') \
        .with_responses() \
            .response("Хм-м. Ну хорошо. Хуже от этого не будет… Заведу себе новый.", 'DMORTE2.D_s11', 'r20', 'reply41175') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s11', '# from 10.0') \
        .with_npc_lines() \
            .line(morte, "Записывай в него каждый свой шаг. Если начнешь забывать важные вещи… например, кто ты… или, что еще важнее, кто *я*…", 's11', 'say41176') \
            .line(morte, "…то воспользуйся им, чтобы освежить свою память.", 's11', 'say41176') \
        .with_responses() \
            .response("Ладно… Уяснил. Идем.", 'DMORTE2.D_s31', 'r21', 'reply41177').with_action(lambda: _r41177_action(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s31', '-') \
        .with_npc_lines() \
            .line(teller, "Я делаю несколько шагов вперёд и слышу удивлённый возглас.", '-', '-') \
            .line(morte, "Силы небесные. Это одна из этих ЧЕРТОВЫХ книг.", 's31', 'say41262') \
        .with_responses() \
            .response("Что такое?", 'DMORTE2.D_s32', 'r86', 'reply41263').with_action(lambda: _reply41263_action(gsm)) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s12', '# from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0') \
        .with_npc_lines() \
            .line(morte, "Что гложет тебя, шеф?", 's12', 'say41178').with_action(lambda: _show('morte_img default', center_left_down)) \
        .with_responses() \
            .response("Можешь еще раз прочитать, что у меня вытатуировано на спине?", 'DMORTE2.D_s13', 'r22', 'reply41179') \
            .response("Еще раз, что это за место?", 'DMORTE2.D_s18', 'r23', 'reply41180') \
            .response("Это место такое огромное… Кто за ним присматривает?", 'DMORTE2.D_s19', 'r24', 'reply41181').with_condition(lambda: _r41181_condition(gsm)) \
            .response("Еще раз, кто эти смотрители?", 'DMORTE2.D_s19', 'r25', 'reply41182').with_condition(lambda: _r41182_condition(gsm)) \
            .response("Эти трупы… откуда они все берутся?", 'DMORTE2.D_s22', 'r26', 'reply41183') \
            .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE2.D_s23', 'r27', 'reply41184').with_condition(lambda: _r41184_condition(gsm)) \
            .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной.", 'DMORTE2.D_s8', 'r29', 'reply41186').with_condition(lambda: _r41186_condition(gsm)) \
            .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной.", EXIT, 'r30', 'reply41187').with_condition(lambda: _r41187_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s13', '# from 12.0') \
        .with_npc_lines() \
            .line(morte, "Эй, шеф, *да ладно* тебе. Только не говори, что ты опять все забыл.", 's13', 'say41188') \
        .with_responses() \
            .response("Мне просто нужно освежить свою память, вот и все.", 'DMORTE2.D_s14', 'r31', 'reply41189') \
            .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE2.D_s12', 'r32', 'reply41190') \
            .response("Ладно, забудь. Идем.", 'DMORTE2.D_s8', 'r33', 'reply41191').with_condition(lambda: _r41191_condition(gsm)) \
            .response("Ладно, забудь. Идем.", EXIT, 'r34', 'reply41192').with_condition(lambda: _r41192_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s14', '# from 13.0') \
        .with_npc_lines() \
            .line(morte, "Готов поспорить, что услышу ЭТО много раз.", 's14', 'say41193') \
            .line(teller, "Морт прочищает горло.", 's14', 'say41193') \
            .line(morte, "Посмотрим…", 's14', 'say41193') \
            .line(scares, "«Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ».", 's14', 'say41193') \
            .line(scares, "«Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело».", 's14', 'say41193') \
            .line(scares, "«ФАРОД сможет дополнить оставшуюся часть истории, если его уже не записали в книгу мертвых».", 's14', 'say41193') \
        .with_responses() \
            .response("Фарод… хм-м. Продолжай.", 'DMORTE2.D_s15', 'r35', 'reply41194') \
            .response("Неважно. У меня есть другие вопросы…", 'DMORTE2.D_s12', 'r36', 'reply41195') \
            .response("Забудь. Я уже достаточно наслушался. Идем.", 'DMORTE2.D_s8', 'r37', 'reply41196').with_condition(lambda: _r41196_condition(gsm)) \
            .response("Забудь. Я уже достаточно наслушался. Идем.", EXIT, 'r38', 'reply41197').with_condition(lambda: _r41197_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s15', '# from 14.0') \
        .with_npc_lines() \
            .line(morte, "Сейчас, сейчас, погоди.", 's15', 'say41198') \
            .line(teller, "Морт на миг умолкает.", 's15', 'say41198') \
            .line(morte, "Хорошо, вот последний кусок…", 's15', 'say41198') \
            .line(scares, "«Не потеряй дневник, иначе мы вновь окажемся в Стиксе».", 's15', 'say41198') \
            .line(scares, "«И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий».", 's15', 'say41198') \
            .line(scares, "«Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».", 's15', 'say41198') \
        .with_responses() \
            .response("Когда я очнулся, рядом со мной не было дневника?", 'DMORTE2.D_s16', 'r39', 'reply41199') \
            .response("Неважно. У меня есть другие вопросы…", 'DMORTE2.D_s12', 'r40', 'reply41200') \
            .response("Забудь. Я уже достаточно наслушался. Идем.", 'DMORTE2.D_s8', 'r41', 'reply41201').with_condition(lambda: _r41201_condition(gsm)) \
            .response("Забудь. Я уже достаточно наслушался. Идем.", EXIT, 'r42', 'reply41203').with_condition(lambda: _r41203_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s16', '# from 15.0') \
        .with_npc_lines() \
            .line(morte, "Нет… тебя обобрали догола. Как я уже говорил, похоже, что достаточно того дневника, что выбит у тебя на теле.", 's16', 'say41202') \
        .with_responses() \
            .response("Ты уверен, что не знаешь никого по имени Фарод?", 'DMORTE2.D_s17', 'r43', 'reply41204') \
            .response("И то правда. У меня есть другие вопросы…", 'DMORTE2.D_s12', 'r44', 'reply41205') \
            .response("Ладно. Идем.", 'DMORTE2.D_s8', 'r45', 'reply41206').with_condition(lambda: _r41206_condition(gsm)) \
            .response("Ладно. Идем.", EXIT, 'r46', 'reply41207').with_condition(lambda: _r41207_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s17', '# from 16.0') \
        .with_npc_lines() \
            .line(morte, "Неа. В общем, какой-нибудь пень да знает, как добраться до него. Надо поспрашивать в округе… ПОСЛЕ того, как мы выберемся отсюда.", 's17', 'say41208') \
        .with_responses() \
            .response("Перед тем как мы пойдем, у меня есть еще вопросы…", 'DMORTE2.D_s12', 'r47', 'reply41209') \
            .response("Ладно. Идем.", 'DMORTE2.D_s8', 'r48', 'reply41210').with_condition(lambda: _r41210_condition(gsm)) \
            .response("Ладно. Идем.", EXIT, 'r49', 'reply41211').with_condition(lambda: _r41211_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s18', '# from 12.1') \
        .with_npc_lines() \
            .line(morte, "Оно называется 'Моргом'… это такое большое черное здание с чарующей архитектурой беременной паучихи.", 's18', 'say41212') \
        .with_responses() \
            .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r50', 'reply41213') \
            .response("Это все, что я хотел узнать. Спасибо.", 'DMORTE2.D_s8', 'r51', 'reply41214').with_condition(lambda: _r41214_condition(gsm)) \
            .response("Это все, что я хотел узнать. Спасибо.", EXIT, 'r52', 'reply41215').with_condition(lambda: _r41215_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s19', '# from 12.2 12.3') \
        .with_npc_lines() \
            .line(morte, "Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица.", 's19', 'say41216') \
            .line(morte, "Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.", 's19', 'say41216') \
        .with_responses() \
            .response("Я запутался… какое тленным дело, если я сбегу?", 'DMORTE2.D_s20', 'r53', 'reply41217') \
            .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r54', 'reply41218') \
            .response("Понятно. Тогда я буду осторожен.", 'DMORTE2.D_s8', 'r55', 'reply41219').with_condition(lambda: _r41219_condition(gsm)) \
            .response("Понятно. Тогда я буду осторожен.", EXIT, 'r56', 'reply41220').with_condition(lambda: _r41220_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s20', '# from 19.0 // # s21 got removed because these lines is about gameplay mechanics, that the visual novel does not have') \
        .with_npc_lines() \
            .line(morte, "Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже.", 's20', 'say41221') \
            .line(morte, "Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?", 's20', 'say41221') \
        .with_responses() \
            .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r57', 'reply41222') \
            .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r58', 'reply41223').with_condition(lambda: _r41223_condition(gsm)) \
            .response("Ладно… Я… попробую это запомнить.", EXIT, 'r59', 'reply41224').with_condition(lambda: _r41224_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s22', '# from 12.4') \
        .with_npc_lines() \
            .line(morte, "Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.", 's22', 'say41229') \
        .with_responses() \
            .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r63', 'reply41230') \
            .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r64', 'reply41231').with_condition(lambda: _r41231_condition(gsm)) \
            .response("Ладно… Я… попробую это запомнить.", EXIT, 'r65', 'reply41232').with_condition(lambda: _r41232_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s23', '# from 12.5') \
        .with_npc_lines() \
            .line(morte, "Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы.", 's23', 'say41233') \
            .line(morte, "Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.", 's23', 'say41233') \
        .with_responses() \
            .response("Последняя возможность? Погоди… о *чем* это ты толкуешь?", 'DMORTE2.D_s24', 'r66', 'reply41234') \
            .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE2.D_s12', 'r67', 'reply41235') \
            .response("Ладно… Я… попробую это запомнить.", EXIT, 'r68', 'reply41236').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s24', '# from 23.0') \
        .with_npc_lines() \
            .line(morte, "Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?", 's24', 'say41237') \
        .with_responses() \
            .response("Нет… не очень, если честно.", 'DMORTE2.D_s25', 'r69', 'reply41238') \
            .response("Ты это *несерьезно*.", 'DMORTE2.D_s25', 'r70', 'reply41239').with_condition(lambda: _r41239_condition(gsm)) \
            .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE2.D_s12', 'r71', 'reply41240') \
            .response("Я достаточно наслушался. Идем.", EXIT, 'r72', 'reply41241').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s25', '# from 24.0 24.1') \
        .with_npc_lines() \
            .line(morte, "Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* мертвы, по крайней мере один раз: у нас есть общая тема для разговоров.", 's25', 'say41242') \
            .line(morte, "Они предрасположены к мужчинам с нашим опытом смерти.", 's25', 'say41242') \
        .with_responses() \
            .response("Постой… разве ты не говорил до этого, что я *не мертвый*?", 'DMORTE2.D_s26', 'r73', 'reply41243') \
            .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE2.D_s12', 'r74', 'reply41244') \
            .response("Я достаточно наслушался. Идем.", EXIT, 'r75', 'reply41245').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s26', '# from 25.0') \
        .with_npc_lines() \
            .line(morte, "Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да.", 's26', 'say41246') \
            .line(morte, "И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц.", 's26', 'say41246') \
            .line(teller, "Морт начинает в предвкушении щелкать зубами.", 's26', 'say41246') \
            .line(morte, "Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…", 's26', 'say41246') \
        .with_responses() \
            .response("У меня есть другие вопросы к тебе, Морт…", 'DMORTE2.D_s12', 'r76', 'reply41247') \
            .response("Я достаточно наслушался. Идем.", EXIT, 'r77', 'reply41248').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s27', '# from -') \
        .with_npc_lines() \
            .line(morte, "Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а?", 's27', 'say41250') \
        .with_responses() \
            .response("Да… идем.", EXIT, 'r78', 'reply41251').with_action(lambda: _dispose()) \
            .response("Не сейчас, Морт.", 'DMORTE2.D_s28', 'r79', 'reply41252') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s28', '# from 27.1') \
        .with_npc_lines() \
            .line(morte, "Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс.", 's28', 'say41253') \
            .line(morte, "Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?", 's28', 'say41253') \
        .with_responses() \
            .response("Морт, у тебя НЕТ ни того, ни другого.", 'DMORTE2.D_s29', 'r80', 'reply41254') \
            .response("Ладно. Я передумал. Давай, идем.", EXIT, 'r81', 'reply41255').with_action(lambda: _dispose()) \
            .response("Не сейчас, Морт. Может быть, потом.", 'DMORTE2.D_s29', 'r82', 'reply41256') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s29', '# from 28.0 28.2') \
        .with_npc_lines() \
            .line(morte, "Ты пытаешься задеть мои чувства, шеф?", 's29', 'say41257') \
            .line(morte, "Погоди, разве я что-то не так сказал?", 's29', 'say41257') \
            .line(morte, "Или это из-за того, что у меня нет рук? Что?", 's29', 'say41257') \
        .with_responses() \
            .response("Ладно. Я передумал. Давай, идем.", EXIT, 'r83', 'reply41258').with_action(lambda: _dispose()) \
            .response("Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.", 'DMORTE2.D_s30', 'r84', 'reply41259') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s30', '# from 29.1') \
        .with_npc_lines() \
            .line(morte, "Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.", 's30', 'say41260') \
        .with_responses() \
            .response("Я так и сделаю. Прощай, Морт.", EXIT, 'r85', 'reply41261').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s32', '# from 31.0') \
        .with_npc_lines() \
            .line(morte, "Если я прав, то это та книга, куда они записывают имена всех несчастных бедолаг, которым не повезло оказаться здесь.", 's32', 'say41264') \
        .with_responses() \
            .response("А мое имя может быть там?", 'DMORTE2.D_s33', 'r87', 'reply41265') \
        .push(manager)

    DialogStateBuilder() \
    .state('DMORTE2.D_s33', '# from 32.0') \
        .with_npc_lines() \
            .line(morte, "Э… ну… *Возможно*. Чтобы определить это, нужно потрясти черепушкой вон с тем парящим трухлявиком. Вот только я не уверен, что это хорошая идея.", 's33', 'say41266') \
        .with_responses() \
            .response("Мне нужны ответы. Я поговорю с ним.", EXIT, 'r88', 'reply41267').with_action(lambda: _dispose()) \
        .push(manager)
