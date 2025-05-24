EXIT = -1
# from -
DialogStateBuilder('DMORTE2.D_s0') \
    .with_npc_lines() \
        .line(SPEAKER, "Тсссс… Небольшой совет, шеф: с этого момента я бы вел себя потише. Не нужно больше вписывать трупы в книгу мертвых без необходимости… особенно женские. К тому же, их убийство может заинтересовать здешних смотрителей.", 's0', 'say41144') \
    .with_responses() \
        .response("Кажется, ты еще не говорил об этом… *кто* такие эти смотрители?", 'DMORTE2.D_s1', 'r', 'reply41145').with_action(lambda: ' DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ~ ') \
        .response("Эти трупы… откуда они все берутся?", 'DMORTE2.D_s3', 'r', 'reply41146').with_action(lambda: ' DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ~ ') \
        .response("Почему тебя так заботят женские тела?", 'DMORTE2.D_s4', 'r', 'reply41147').with_action(lambda: ' DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ~ ') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r', 'reply41148').with_action(lambda: ' DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ~ ') \
    .done()

# from 0.0 3.0 7.0
DialogStateBuilder('DMORTE2.D_s1') \
    .with_npc_lines() \
        .line(SPEAKER, "Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица. Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.", 's1', 'say41149') \
    .with_responses() \
        .response("Я запутался… какое тленным дело, если я сбегу?", 'DMORTE2.D_s2', 'r', 'reply41150') \
    .done()

# from 1.0
DialogStateBuilder('DMORTE2.D_s2') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже. Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?", 's2', 'say41151') \
    .with_responses() \
        .response("Эти трупы, которых я видел здесь… откуда они все берутся?", 'DMORTE2.D_s3', 'r', 'reply41152') \
        .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE2.D_s4', 'r', 'reply41153') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r', 'reply41154') \
    .done()

# from 0.1 2.0 7.1
DialogStateBuilder('DMORTE2.D_s3') \
    .with_npc_lines() \
        .line(SPEAKER, "Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.", 's3', 'say41155') \
    .with_responses() \
        .response("Просвяти меня… *кто* такие эти смотрители?", 'DMORTE2.D_s1', 'r', 'reply41156') \
        .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE2.D_s4', 'r', 'reply41157') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r', 'reply41158') \
    .done()

# from 0.2 2.1 3.1
DialogStateBuilder('DMORTE2.D_s4') \
    .with_npc_lines() \
        .line(SPEAKER, "Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы. Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.", 's4', 'say41159') \
    .with_responses() \
        .response("Последняя возможность? Погоди… о *чем* это ты толкуешь?", 'DMORTE2.D_s5', 'r', 'reply41160') \
    .done()

# from 4.0
DialogStateBuilder('DMORTE2.D_s5') \
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?", 's5', 'say41161') \
    .with_responses() \
        .response("Нет… не очень, если честно.", 'DMORTE2.D_s6', 'r', 'reply41162') \
        .response("Ты это *несерьезно*.", 'DMORTE2.D_s6', 'r', 'reply41163').with_condition(lambda: '  CheckStatGT(Protagonist,12,INT) ') \
    .done()

# from 5.0 5.1
DialogStateBuilder('DMORTE2.D_s6') \
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* мертвы, по крайней мере один раз: у нас есть общая тема для разговоров. Они предрасположены к мужчинам с нашим опытом смерти.", 's6', 'say41164') \
    .with_responses() \
        .response("Постой… разве ты не говорил до этого, что я *не мертвый*?", 'DMORTE2.D_s7', 'r', 'reply41165') \
    .done()

# from 6.0
DialogStateBuilder('DMORTE2.D_s7') \
    .with_npc_lines() \
        .line(SPEAKER, "Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да. И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц. Морт начинает в предвкушении щелкать зубами. Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…", 's7', 'say41166') \
    .with_responses() \
        .response("Еще раз, кто эти смотрители?", 'DMORTE2.D_s1', 'r', 'reply41167') \
        .response("Но откуда берутся все эти трупы?", 'DMORTE2.D_s3', 'r', 'reply41168') \
        .response("Ладно… Я попробую это запомнить.", 'DMORTE2.D_s8', 'r', 'reply41169') \
    .done()

# from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
DialogStateBuilder('DMORTE2.D_s8') \
    .with_npc_lines() \
        .line(SPEAKER, "Послушай, шеф. Очевидно, ты еще не отошел от свидания со смертью, поэтому у меня два небольших совета для тебя. Во-первых, если у тебя возникают вопросы, *спроси* меня, хорошо?", 's8', 'say41170') \
    .with_responses() \
        .response("Хорошо… если у меня возникнут вопросы, я спрошу у тебя.", 'DMORTE2.D_s9', 'r', 'reply41171') \
    .done()

# from 8.0
DialogStateBuilder('DMORTE2.D_s9') \
    .with_npc_lines() \
        .line(SPEAKER, "Во-вторых, если ты хоть *наполовину* забывчив от того, каким кажешься, то начни записывать свои мысли: как только ты встретишь то, что *может* быть важным, запиши это, чтобы не забыть.", 's9', 'say41172') \
    .with_responses() \
        .response("Если бы у меня был бы дневник, который *должен* был быть рядом со мной, я бы так и поступил.", 'DMORTE2.D_s10', 'r', 'reply41173') \
    .done()

# from 9.0
DialogStateBuilder('DMORTE2.D_s10') \
    .with_npc_lines() \
        .line(SPEAKER, "Тогда заведи себе новый, шеф. Без проблем. Вокруг для тебя полным-полно пергамента и чернил.", 's10', 'say41174') \
    .with_responses() \
        .response("Хм-м. Ну хорошо. Хуже от этого не будет… Заведу себе новый.", 'DMORTE2.D_s11', 'r', 'reply41175') \
    .done()

# from 10.0
DialogStateBuilder('DMORTE2.D_s11') \
    .with_npc_lines() \
        .line(SPEAKER, "Записывай в него каждый свой шаг. Если начнешь забывать важные вещи… например, кто ты… или, что еще важнее, кто *я*… то воспользуйся им, чтобы освежить свою память.", 's11', 'say41176') \
    .with_responses() \
        .response("Ладно… Уяснил. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41177').with_action(lambda: ' JOURNAL #39516 /* ~Мой предыдущий дневник пропал, так что я завел новый. Я очнулся в месте под названием «Морг». Я не знаю, кто я, что я здесь делаю и даже как я сюда попал. Единственного, кого я здесь пока встретил, — говорящий без умолку череп по имени Морт... Когда он осматривал мои раны, он нашел «указания», вытатуированные на моей спине:  «Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых».  «Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».  Мог ли сам себе оставить это сообщение? Судя по всему, мне придется найти этого «Фарода» и свой дневник.~ */ ') \
    .done()

# from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0
DialogStateBuilder('DMORTE2.D_s12') \
    .with_npc_lines() \
        .line(SPEAKER, "Что гложет тебя, шеф?", 's12', 'say41178') \
    .with_responses() \
        .response("Можешь еще раз прочитать, что у меня вытатуировано на спине?", 'DMORTE2.D_s13', 'r', 'reply41179') \
        .response("Еще раз, что это за место?", 'DMORTE2.D_s18', 'r', 'reply41180') \
        .response("Это место такое огромное… Кто за ним присматривает?", 'DMORTE2.D_s19', 'r', 'reply41181').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Еще раз, кто эти смотрители?", 'DMORTE2.D_s19', 'r', 'reply41182').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
        .response("Эти трупы… откуда они все берутся?", 'DMORTE2.D_s22', 'r', 'reply41183') \
        .response("До этого ты говорил, чтобы я не убивал *женские* трупы. Почему?", 'DMORTE2.D_s23', 'r', 'reply41184').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
        .response("Как мне использовать эти бинты?", 'DMORTE2.D_s21', 'r', 'reply41185').with_condition(lambda: '  PartyHasItem("Bandage") ') \
        .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной.", 'DMORTE2.D_s8', 'r', 'reply41186').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной.", 'DMORTE2.D_sNaN', 'r', 'reply41187').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 12.0
DialogStateBuilder('DMORTE2.D_s13') \
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф, *да ладно* тебе. Только не говори, что ты опять все забыл.", 's13', 'say41188') \
    .with_responses() \
        .response("Мне просто нужно освежить свою память, вот и все.", 'DMORTE2.D_s14', 'r', 'reply41189') \
        .response("Ладно, неважно. У меня есть другие вопросы…", 'DMORTE2.D_s12', 'r', 'reply41190') \
        .response("Ладно, забудь. Идем.", 'DMORTE2.D_s8', 'r', 'reply41191').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Ладно, забудь. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41192').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 13.0
DialogStateBuilder('DMORTE2.D_s14') \
    .with_npc_lines() \
        .line(SPEAKER, "Готов поспорить, что услышу ЭТО много раз. Морт прочищает горло. Посмотрим…  'Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его уже не записали в книгу мертвых'.", 's14', 'say41193') \
    .with_responses() \
        .response("Фарод… хм-м. Продолжай.", 'DMORTE2.D_s15', 'r', 'reply41194') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE2.D_s12', 'r', 'reply41195') \
        .response("Забудь. Я уже достаточно наслушался. Идем.", 'DMORTE2.D_s8', 'r', 'reply41196').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Забудь. Я уже достаточно наслушался. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41197').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 14.0
DialogStateBuilder('DMORTE2.D_s15') \
    .with_npc_lines() \
        .line(SPEAKER, "Сейчас, сейчас, погоди, — Морт на миг умолкает. — Хорошо, вот последний кусок…  'Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода'.", 's15', 'say41198') \
    .with_responses() \
        .response("Когда я очнулся, рядом со мной не было дневника?", 'DMORTE2.D_s16', 'r', 'reply41199') \
        .response("Неважно. У меня есть другие вопросы…", 'DMORTE2.D_s12', 'r', 'reply41200') \
        .response("Забудь. Я уже достаточно наслушался. Идем.", 'DMORTE2.D_s8', 'r', 'reply41201').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Забудь. Я уже достаточно наслушался. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41203').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 15.0
DialogStateBuilder('DMORTE2.D_s16') \
    .with_npc_lines() \
        .line(SPEAKER, "Нет… тебя обобрали догола. Как я уже говорил, похоже, что достаточно того дневника, что выбит у тебя на теле.", 's16', 'say41202') \
    .with_responses() \
        .response("Ты уверен, что не знаешь никого по имени Фарод?", 'DMORTE2.D_s17', 'r', 'reply41204') \
        .response("И то правда. У меня есть другие вопросы…", 'DMORTE2.D_s12', 'r', 'reply41205') \
        .response("Ладно. Идем.", 'DMORTE2.D_s8', 'r', 'reply41206').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Ладно. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41207').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 16.0
DialogStateBuilder('DMORTE2.D_s17') \
    .with_npc_lines() \
        .line(SPEAKER, "Неа. В общем, какой-нибудь пень да знает, как добраться до него. Надо поспрашивать в округе… ПОСЛЕ того, как мы выберемся отсюда.", 's17', 'say41208') \
    .with_responses() \
        .response("Перед тем как мы пойдем, у меня есть еще вопросы…", 'DMORTE2.D_s12', 'r', 'reply41209') \
        .response("Ладно. Идем.", 'DMORTE2.D_s8', 'r', 'reply41210').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Ладно. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41211').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 12.1
DialogStateBuilder('DMORTE2.D_s18') \
    .with_npc_lines() \
        .line(SPEAKER, "Оно называется 'Моргом'… это такое большое черное здание с чарующей архитектурой беременной паучихи.", 's18', 'say41212') \
    .with_responses() \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r', 'reply41213') \
        .response("Это все, что я хотел узнать. Спасибо.", 'DMORTE2.D_s8', 'r', 'reply41214').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Это все, что я хотел узнать. Спасибо.", 'DMORTE2.D_sNaN', 'r', 'reply41215').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 12.2 12.3
DialogStateBuilder('DMORTE2.D_s19') \
    .with_npc_lines() \
        .line(SPEAKER, "Они зовут себя 'тленными'. Ты их не пропустишь: они питают особую тягу к черному цвету и окоченевшему выражению лица. Они — всего лишь кучка свихнувшихся упырей, поклоняющихся смерти. Они верят в то, что все должны умереть… и лучше раньше, чем позже.", 's19', 'say41216') \
    .with_responses() \
        .response("Я запутался… какое тленным дело, если я сбегу?", 'DMORTE2.D_s20', 'r', 'reply41217') \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r', 'reply41218') \
        .response("Понятно. Тогда я буду осторожен.", 'DMORTE2.D_s8', 'r', 'reply41219').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Понятно. Тогда я буду осторожен.", 'DMORTE2.D_sNaN', 'r', 'reply41220').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 19.0
DialogStateBuilder('DMORTE2.D_s20') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты что, вообще ничего не слушал?! Я сказал, что трухлявые верят в то, что ВСЕ должны умереть, и лучше раньше, чем позже. Думаешь, что трупы, которых ты видел, счастливее в книге мертвых, чем вне ее?", 's20', 'say41221') \
    .with_responses() \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r', 'reply41222') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r', 'reply41223').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_sNaN', 'r', 'reply41224').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 12.6
DialogStateBuilder('DMORTE2.D_s21') \
    .with_npc_lines() \
        .line(SPEAKER, "Нууу… просто *используй* их. Останавливает кровотечение и все такое.", 's21', 'say41225') \
    .with_responses() \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r', 'reply41226') \
        .response("Спасибо. Думаю, я смогу с ними справиться.", 'DMORTE2.D_s8', 'r', 'reply41227').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Спасибо. Думаю, я смогу с ними справиться.", 'DMORTE2.D_sNaN', 'r', 'reply41228').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 12.4
DialogStateBuilder('DMORTE2.D_s22') \
    .with_npc_lines() \
        .line(SPEAKER, "Смерть посещает планы каждый день, шеф. Эти увальни — все, что осталось от тех бедолаг, кто продал свои тела смотрителям.", 's22', 'say41229') \
    .with_responses() \
        .response("Ясно. У меня есть другие вопросы к тебе…", 'DMORTE2.D_s12', 'r', 'reply41230') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_s8', 'r', 'reply41231').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0) ') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_sNaN', 'r', 'reply41232').with_condition(lambda: '  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1) ') \
    .done()

# from 12.5
DialogStateBuilder('DMORTE2.D_s23') \
    .with_npc_lines() \
        .line(SPEAKER, "Чт… ты *серьезно*? Послушай, шеф, у этих мертвых крошек есть последняя возможность познакомиться с такими крутыми громилами как мы. Нам следует быть более *деликатными*… не ломать их ради ключей, не отрывать им конечности, ничего такого.", 's23', 'say41233') \
    .with_responses() \
        .response("Последняя возможность? Погоди… о *чем* это ты толкуешь?", 'DMORTE2.D_s24', 'r', 'reply41234') \
        .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE2.D_s12', 'r', 'reply41235') \
        .response("Ладно… Я… попробую это запомнить.", 'DMORTE2.D_sNaN', 'r', 'reply41236') \
    .done()

# from 23.0
DialogStateBuilder('DMORTE2.D_s24') \
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, ОНИ мертвы, МЫ тоже мертвы… улавливаешь, куда я клоню? А? А?", 's24', 'say41237') \
    .with_responses() \
        .response("Нет… не очень, если честно.", 'DMORTE2.D_s25', 'r', 'reply41238') \
        .response("Ты это *несерьезно*.", 'DMORTE2.D_s25', 'r', 'reply41239').with_condition(lambda: '  CheckStatGT(Protagonist,12,INT) ') \
        .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE2.D_s12', 'r', 'reply41240') \
        .response("Я достаточно наслушался. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41241') \
    .done()

# from 24.0 24.1
DialogStateBuilder('DMORTE2.D_s25') \
    .with_npc_lines() \
        .line(SPEAKER, "Шеф, для нас до этих ковыляющих цыпочек — открытая дорога. Мы *все* мертвы, по крайней мере один раз: у нас есть общая тема для разговоров. Они предрасположены к мужчинам с нашим опытом смерти.", 's25', 'say41242') \
    .with_responses() \
        .response("Постой… разве ты не говорил до этого, что я *не мертвый*?", 'DMORTE2.D_s26', 'r', 'reply41243') \
        .response("Неважно. У меня к тебе еще вопросы…", 'DMORTE2.D_s12', 'r', 'reply41244') \
        .response("Я достаточно наслушался. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41245') \
    .done()

# from 25.0
DialogStateBuilder('DMORTE2.D_s26') \
    .with_npc_lines() \
        .line(SPEAKER, "Ну… хорошо, *ты*, может быть, и не мертвый, а вот *я* — да. И как я уже говорил, я не против разделить гроб с какой-нибудь из здешних красивеньких жилистых покойниц. Морт начинает в предвкушении щелкать зубами. Конечно же, у здешних смотрителей есть приоритет, так что им это навряд ли понравится…", 's26', 'say41246') \
    .with_responses() \
        .response("У меня есть другие вопросы к тебе, Морт…", 'DMORTE2.D_s12', 'r', 'reply41247') \
        .response("Я достаточно наслушался. Идем.", 'DMORTE2.D_sNaN', 'r', 'reply41248') \
    .done()

# from -
DialogStateBuilder('DMORTE2.D_s27') \
    .with_npc_lines() \
        .line(SPEAKER, "Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а?", 's27', 'say41250') \
    .with_responses() \
        .response("Да… идем.", 'DMORTE2.D_sNaN', 'r', 'reply41251').with_action(lambda: ' DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~ ') \
        .response("Не сейчас, Морт.", 'DMORTE2.D_s28', 'r', 'reply41252') \
    .done()

# from 27.1
DialogStateBuilder('DMORTE2.D_s28') \
    .with_npc_lines() \
        .line(SPEAKER, "Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс. Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?", 's28', 'say41253') \
    .with_responses() \
        .response("Морт, у тебя НЕТ ни того, ни другого.", 'DMORTE2.D_s29', 'r', 'reply41254') \
        .response("Ладно. Я передумал. Давай, идем.", 'DMORTE2.D_sNaN', 'r', 'reply41255').with_action(lambda: ' DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~ ') \
        .response("Не сейчас, Морт. Может быть, потом.", 'DMORTE2.D_s29', 'r', 'reply41256') \
    .done()

# from 28.0 28.2
DialogStateBuilder('DMORTE2.D_s29') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты пытаешься задеть мои чувства, шеф? Погоди, разве я что-то не так сказал? Или это из-за того, что у меня нет рук? Что?", 's29', 'say41257') \
    .with_responses() \
        .response("Ладно. Я передумал. Давай, идем.", 'DMORTE2.D_sNaN', 'r', 'reply41258').with_action(lambda: ' DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~ ') \
        .response("Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.", 'DMORTE2.D_s30', 'r', 'reply41259') \
    .done()

# from 29.1
DialogStateBuilder('DMORTE2.D_s30') \
    .with_npc_lines() \
        .line(SPEAKER, "Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.", 's30', 'say41260') \
    .with_responses() \
        .response("Я так и сделаю. Прощай, Морт.", 'DMORTE2.D_sNaN', 'r', 'reply41261') \
    .done()

# from -
DialogStateBuilder('DMORTE2.D_s31') \
    .with_npc_lines() \
        .line(SPEAKER, "Силы небесные. Это одна из этих ЧЕРТОВЫХ книг.", 's31', 'say41262') \
    .with_responses() \
        .response("Что такое?", 'DMORTE2.D_s32', 'r', 'reply41263').with_action(lambda: ' DO ~SetGlobal("Morte_Mortuary_Walkthrough_2","GLOBAL",1) ~ ') \
    .done()

# from 31.0
DialogStateBuilder('DMORTE2.D_s32') \
    .with_npc_lines() \
        .line(SPEAKER, "Если я прав, то это та книга, куда они записывают имена всех несчастных бедолаг, которым не повезло оказаться здесь.", 's32', 'say41264') \
    .with_responses() \
        .response("А мое имя может быть там?", 'DMORTE2.D_s33', 'r', 'reply41265') \
    .done()

# from 32.0
DialogStateBuilder('DMORTE2.D_s33') \
    .with_npc_lines() \
        .line(SPEAKER, "Э… ну… *Возможно*. Чтобы определить это, нужно потрясти черепушкой вон с тем парящим трухлявиком. Вот только я не уверен, что это хорошая идея.", 's33', 'say41266') \
    .with_responses() \
        .response("Мне нужны ответы. Я поговорю с ним.", 'DMORTE2.D_sNaN', 'r', 'reply41267') \
    .done()