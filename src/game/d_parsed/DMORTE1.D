def _r39793_action(gsm):
    DO ~gsm.set_in_party_morte(True) ~
def _r39824_action(gsm):
    DO ~gsm.inc_once_good('good_morte_1') ~
def _r39831_action(gsm):
    DO ~ShowFirstTimeHelp() ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r39852_action(gsm):
    DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r39856_action(gsm):
    DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~
def _r39859_action(gsm):
    DO ~ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~

gsm           = renpy.store.global_settings_manager
EXIT          = -1

DialogStateBuilder().state('DMORTE1.D_s0', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба. [MRT001]", 's0', 'say39792') \
    .with_responses() \
        .response("Чт?.. Ты кто?", 'DMORTE1.D_s1', 'r', 'reply39793').with_action(lambda: _r39793_action(gsm)) \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s1', '# from 0.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Э… кто я? А как насчет *тебя* для начала? Кто ты?", 's1', 'say39795') \
    .with_responses() \
        .response("Я… не знаю. Не могу вспомнить.", 'DMORTE1.D_s2', 'r', 'reply39796') \
        .response("Я *первый* спросил тебя, череп.", 'DMORTE1.D_s3', 'r', 'reply39797') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s2', '# from 1.0 3.0 4.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты не можешь вспомнить свое *имя*? Хе. Что ж, в СЛЕДУЮЩИЙ раз, когда будешь кутить ночью в городе, не налегай на выпивку. Зовут Мортом. Я тоже здесь заперт.", 's2', 'say39798') \
    .with_responses() \
        .response("Заперт?", 'DMORTE1.D_s5', 'r', 'reply39799') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s3', '# from 1.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Ага, а я спросил тебя *вторым*. Как твое имя?", 's3', 'say39800') \
    .with_responses() \
        .response("Я… не знаю. Не могу вспомнить.", 'DMORTE1.D_s2', 'r', 'reply39801') \
        .response("Ты первый, череп. В последний раз спрашиваю.", 'DMORTE1.D_s4', 'r', 'reply39802') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s4', '# from 3.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Пф-ф… да ты натянут как струна. Ну хорошо, пусть *я* буду хорошим парнем. Зовут Мортом. А кто ты?", 's4', 'say39803') \
    .with_responses() \
        .response("Я… не знаю. Не могу вспомнить.", 'DMORTE1.D_s2', 'r', 'reply39804') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s5', '# from 2.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ага, и поскольку ты еще не успел размять ноги, вот тебе новость: я перепробовал все двери, и эта комната заперта крепче пояса целомудрия.", 's5', 'say39805') \
    .with_responses() \
        .response("Мы заперты… где? Что это за место?", 'DMORTE1.D_s6', 'r', 'reply39806') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s6', '# from 5.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Оно называется 'Моргом'… это такое большое черное здание с чарующей архитектурой беременной паучихи.", 's6', 'say39807') \
    .with_responses() \
        .response("Морг? Постой… я умер?", 'DMORTE1.D_s7', 'r', 'reply39808') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s7', '# from 6.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Не похоже. Хотя на тебе куча шрамов… выглядит так, словно какой-то пень изрисовал тебя всего ножом. Еще одна причина свалить отсюда побыстрее, пока тот, кто изрезал тебя, не вернулся назад и не завершил свою работу.", 's7', 'say39809') \
    .with_responses() \
        .response("Шрамы? Они так плохи?", 'DMORTE1.D_s8', 'r', 'reply39810') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s8', '# from 7.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ну… художество на груди не ТАК уж плохо выглядит… но то, что на спине… — Морт делает паузу. — Скажем так, шеф, у тебя целая галерея татуировок на спине. Тут что-то написано…", 's8', 'say39811') \
    .with_responses() \
        .response("Татуировки на моей спине? Что там написано?", 'DMORTE1.D_s9', 'r', 'reply39812') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s9', '# from 8.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ха! Похоже, тебя доставили с инструкцией… — Морт прочищает горло. — Посмотрим… начинается с…  Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей должен быть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых.", 's9', 'say39813') \
    .with_responses() \
        .response("Фарод?.. А там есть еще что-нибудь?", 'DMORTE1.D_s10', 'r', 'reply39814') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s10', '# from 9.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ага, здесь есть еще немного… — Морт умолкает. — Посмотрим… вот продолжение…  'Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому, КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода'.", 's10', 'say39815') \
    .with_responses() \
        .response("Неудивительно, что спина так болит: да там целая чертова поэма. А дневник, который должен быть со мной… он был возле меня, пока я здесь валялся?", 'DMORTE1.D_s11', 'r', 'reply39816') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s11', '# from 10.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Нет… тебя обобрали догола, когда доставили сюда. Хотя, с другой стороны, похоже, что достаточно того дневника, что выбит у тебя на теле.", 's11', 'say39817') \
    .with_responses() \
        .response("А как насчет Фарода? Ты его знаешь?", 'DMORTE1.D_s12', 'r', 'reply39818') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s12', '# from 11.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Нет, не знаю… С другой стороны, я вообще мало кого знаю. В общем, КТО-НИБУДЬ да знает, как добраться до этого Фарода… э, то есть, как только мы выберемся отсюда.", 's12', 'say39819') \
    .with_responses() \
        .response("И *как* же мы выберемся отсюда?", 'DMORTE1.D_s13', 'r', 'reply39820') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s13', '# from 12.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ну, если все двери заперты, значит, нам понадобится ключ. Есть шанс, что он есть у одного из ходячих трупов в этой комнате.", 's13', 'say39821') \
    .with_responses() \
        .response("Ходячих трупов?", 'DMORTE1.D_s14', 'r', 'reply39822') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s14', '# from 13.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ага, хранители Морга используют мертвые тела в качестве дешевой рабочей силы. Трупы тупые как пробка, они безвредны и не будут атаковать до тех пор, пока ты не нападешь первым.", 's14', 'say39823') \
    .with_responses() \
        .response("А есть какой-нибудь другой способ? Я не хочу никого убивать из-за какого-то ключа.", 'DMORTE1.D_s15', 'r', 'reply39824').with_action(lambda: _r39824_action(gsm)) \
        .response("Так значит, я должен напасть на одного из этих трупов и забрать у него ключ?", 'DMORTE1.D_s16', 'r', 'reply39825') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s15', '# from 14.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Погоди, ты что, думаешь, что причинишь им боль? Они уже МЕРТВЫ. Но если тебе нужна мотивация, то пожалуйста: если ты убьешь их, то по крайней мере они отдохнут до того, как хранители поднимут их снова на работу.", 's15', 'say39826') \
    .with_responses() \
        .response("Ну хорошо… Я собью одного из них и заберу ключ.", 'DMORTE1.D_s16', 'r', 'reply39827') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s16', '# from 14.1 15.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Хорошо, но перед этим неплохо бы вооружиться. Кажется, здесь где-то на полках есть скальпель.", 's16', 'say39828') \
    .with_responses() \
        .response("Ладно, я поищу его.", 'DMORTE1.D_s17', 'r', 'reply39829') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s17', '# from 16.0') \
    .with_npc_lines() \
        .line(SPEAKER, "И последнее: эти трупы медлительны, но их удар — все равно что поцелуй тарана. Если они начнут доставать тебя, помни, что ты можешь БЕГАТЬ, а они — нет. Используй это, чтобы держаться на дистанции, если тебе нужно восстановиться.", 's17', 'say39830') \
    .with_responses() \
        .response("Хорошо. Спасибо за совет.", EXIT, 'r', 'reply39831').with_action(lambda: _r39831_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s18', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "На одной из тех полок должен быть скальпель. Я бы на твоем месте нашел его до того, как начал бодаться с местными трупаками.", 's18', 'say39832') \
    .with_responses() \
        .response("Ладно… Я поищу.", EXIT, 'r', 'reply39833').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s19', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Отлично, ты нашел скальпель! А теперь пора разделаться с этими трупами… и не бойся, я буду держаться у тебя за спиной и давать ценные тактические советы.", 's19', 'say39834') \
    .with_responses() \
        .response("А, может, ты мне *поможешь*, Морт?", 'DMORTE1.D_s20', 'r', 'reply39835') \
        .response("Хорошо.", 'DMORTE1.D_s23', 'r', 'reply39836') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s20', '# from 19.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Я ПОМОГУ тебе. Хороший совет всегда хорош в трудную минуту.", 's20', 'say39837') \
    .with_responses() \
        .response("Я имел ввиду помощь в нападении на *трупов*.", 'DMORTE1.D_s21', 'r', 'reply39838') \
        .response("Ну хорошо тогда.", 'DMORTE1.D_s23', 'r', 'reply39839') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s21', '# from 20.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Я? Я романтик, а не солдат. Я только под ногами буду путаться.", 's21', 'say39840') \
    .with_responses() \
        .response("Когда я буду нападать на труп, тебе лучше быть рядом со мной, иначе ты будешь следующим, в кого я воткну этот скальпель.", 'DMORTE1.D_s22', 'r', 'reply39841') \
        .response("Ну хорошо тогда.", 'DMORTE1.D_s23', 'r', 'reply39842') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s22', '# from 21.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Э… без проблем. Я помогу тебе.", 's22', 'say39843') \
    .with_responses() \
        .response("Я рад, что мы поняли друг друга.", 'DMORTE1.D_s23', 'r', 'reply39844') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s23', '# from 19.1 20.1 21.1 22.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Тогда настало время познакомить этих трупов с их второй смертью…", 's23', 'say39845') \
    .with_responses() \
        .response("Вперед.", EXIT, 'r', 'reply39846').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s24', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Отлично, похоже, ты позаботился о правильном трупе. Теперь надо найти ключ. Он должен быть на его теле. Как только мы его получим, мы сможем выбраться отсюда.", 's24', 'say39847') \
    .with_responses() \
        .response("Хорошо.", EXIT, 'r', 'reply39848').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s25', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Отлично, вот и ключ. Он должен подойти к одной из дверей в этой комнате.", 's25', 'say39849') \
    .with_responses() \
        .response("Тогда я перепробую все двери.", EXIT, 'r', 'reply39850').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s26', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а? [MRT516]", 's26', 'say39851') \
    .with_responses() \
        .response("Да… идем.", EXIT, 'r', 'reply39852').with_action(lambda: _r39852_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Не сейчас, Морт.", 'DMORTE1.D_s27', 'r', 'reply39853') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s27', '# from 26.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс. Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?", 's27', 'say39854') \
    .with_responses() \
        .response("Морт, у тебя НЕТ ни того, ни другого.", 'DMORTE1.D_s28', 'r', 'reply39855') \
        .response("Ладно. Я передумал. Давай, идем.", EXIT, 'r', 'reply39856').with_action(lambda: _r39856_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Не сейчас, Морт. Может быть потом.", 'DMORTE1.D_s28', 'r', 'reply39857') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s28', '# from 27.0 27.2') \
    .with_npc_lines() \
        .line(SPEAKER, "Ты пытаешься задеть мои чувства, шеф? Погоди, разве я что-то не так сказал? Или это из-за того, что у меня нет рук? Что?", 's28', 'say39858') \
    .with_responses() \
        .response("Ладно. Я передумал. Давай, идем.", EXIT, 'r', 'reply39859').with_action(lambda: _r39859_action(gsm)).with_action(lambda: _dispose())  ### replace two actions with one \
        .response("Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт.", 'DMORTE1.D_s29', 'r', 'reply39860') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s29', '# from 28.1') \
    .with_npc_lines() \
        .line(SPEAKER, "Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь.", 's29', 'say39861') \
    .with_responses() \
        .response("Я так и сделаю. Прощай, Морт.", EXIT, 'r', 'reply39862').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s30', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Что тебя гложет, шеф? [MRT515]", 's30', 'say39863') \
    .with_responses() \
        .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной.", EXIT, 'r', 'reply39864').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s31', '# from -') \
    .with_npc_lines() \
        .line(SPEAKER, "Э, шеф… они не слышат тебя, понятно? Они мертвы.", 's31', 'say42298') \
    .with_responses() \
        .response("Но ты ведь тоже мертв. И разговариваешь со мной.", 'DMORTE1.D_s32', 'r', 'reply42299') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s32', '# from 31.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Ага, но *я* особенный. Смерть не смогла убить мою жажду к жизни. А здешние трупы… — Морт обводит комнату взглядом. — Они и при жизни из себя ничего не представляли.", 's32', 'say42300') \
    .with_responses() \
        .response("Понятно…", 'DMORTE1.D_s33', 'r', 'reply42301') \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s33', '# from 32.0') \
    .with_npc_lines() \
        .line(SPEAKER, "Слушай шеф… Наблюдение за тем, как ты пытаешься поболтать с этими трупами, не способствует укреплению моей морали. Давай оставим разговоры с мертвецами сумасшедшим, ладно?", 's33', 'say42302') \
    .with_responses() \
        .response("Хорошо. Идем.", EXIT, 'r', 'reply42303').with_action(lambda: _dispose()) \
    .push(manager)

DialogStateBuilder().state('DMORTE1.D_s34', '# from - // Check EXTENDS ~DZM782~ : 2') \
    .with_npc_lines() \
        .line(SPEAKER, "Кажется, просителю повезло, шеф. Смотри… у него в руке ключ.", 's34', 'say42306') \
    .with_responses() \
    .push(manager)