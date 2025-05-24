EXIT = -1
# from -
DialogStateBuilder('DMORTE1.D_s0') \
    .with_npc_lines()\
        .line(SPEAKER, "Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба».~ [MRT001]", 's0', 'say39792') \
    .with_responses() \
    .done()

# from 0.0
DialogStateBuilder('DMORTE1.D_s1') \
    .with_npc_lines()\
        .line(SPEAKER, "Э... кто я? А как насчет *тебя* для начала? Кто ты?", 's1', 'say39795') \
    .with_responses() \
        .response("Я... не знаю. Не могу вспомнить».~", 'DMORTE1.D_s2', 'r', 'reply39796').with_action(lambda: ' ') \
        .response("Я *первый* спросил тебя, череп».~", 'DMORTE1.D_s3', 'r', 'reply39797').with_action(lambda: ' ') \
    .done()

# from 1.0 3.0 4.0
DialogStateBuilder('DMORTE1.D_s2') \
    .with_npc_lines()\
        .line(SPEAKER, "Ты не можешь вспомнить свое *имя*? Хе. Что ж, в СЛЕДУЮЩИЙ раз, когда будешь кутить ночью в городе, не налегай на выпивку. Зовут Мортом. Я тоже здесь заперт».~", 's2', 'say39798') \
    .with_responses() \
        .response("Заперт?", 'DMORTE1.D_s5', 'r', 'reply39799').with_action(lambda: ' ') \
    .done()

# from 1.1
DialogStateBuilder('DMORTE1.D_s3') \
    .with_npc_lines()\
        .line(SPEAKER, "Ага, а я спросил тебя *вторым*. Как твое имя?", 's3', 'say39800') \
    .with_responses() \
        .response("Я... не знаю. Не могу вспомнить».~", 'DMORTE1.D_s2', 'r', 'reply39801').with_action(lambda: ' ') \
        .response("Ты первый, череп. В последний раз спрашиваю».~", 'DMORTE1.D_s4', 'r', 'reply39802').with_action(lambda: ' ') \
    .done()

# from 3.1
DialogStateBuilder('DMORTE1.D_s4') \
    .with_npc_lines()\
        .line(SPEAKER, "Пф-ф... да ты натянут как струна. Ну хорошо, пусть *я* буду хорошим парнем. Зовут Мортом. А кто ты?", 's4', 'say39803') \
    .with_responses() \
        .response("Я... не знаю. Не могу вспомнить».~", 'DMORTE1.D_s2', 'r', 'reply39804').with_action(lambda: ' ') \
    .done()

# from 2.0
DialogStateBuilder('DMORTE1.D_s5') \
    .with_npc_lines()\
        .line(SPEAKER, "Ага, и поскольку ты еще не успел размять ноги, вот тебе новость: я перепробовал все двери, и эта комната заперта крепче пояса целомудрия».~", 's5', 'say39805') \
    .with_responses() \
        .response("Мы заперты... где? Что это за место?", 'DMORTE1.D_s6', 'r', 'reply39806').with_action(lambda: ' ') \
    .done()

# from 5.0
DialogStateBuilder('DMORTE1.D_s6') \
    .with_npc_lines()\
        .line(SPEAKER, "Оно называется 'Моргом'... это такое большое черное здание с чарующей архитектурой беременной паучихи».~", 's6', 'say39807') \
    .with_responses() \
        .response("Морг? Постой... я умер?", 'DMORTE1.D_s7', 'r', 'reply39808').with_action(lambda: ' ') \
    .done()

# from 6.0
DialogStateBuilder('DMORTE1.D_s7') \
    .with_npc_lines()\
        .line(SPEAKER, "Не похоже. Хотя на тебе куча шрамов... выглядит так, словно какой-то пень изрисовал тебя всего ножом. Еще одна причина свалить отсюда побыстрее, пока тот, кто изрезал тебя, не вернулся назад и не завершил свою работу».~", 's7', 'say39809') \
    .with_responses() \
        .response("Шрамы? Они так плохи?", 'DMORTE1.D_s8', 'r', 'reply39810').with_action(lambda: ' ') \
    .done()

# from 7.0
DialogStateBuilder('DMORTE1.D_s8') \
    .with_npc_lines()\
        .line(SPEAKER, "Ну... художество на груди не ТАК уж плохо выглядит... но то, что на спине... — Морт делает паузу. — Скажем так, шеф, у тебя целая галерея татуировок на спине. Тут что-то написано...", 's8', 'say39811') \
    .with_responses() \
        .response("Татуировки на моей спине? Что там написано?", 'DMORTE1.D_s9', 'r', 'reply39812').with_action(lambda: ' ') \
    .done()

# from 8.0
DialogStateBuilder('DMORTE1.D_s9') \
    .with_npc_lines()\
        .line(SPEAKER, "", 's9', 'say0') \
    .with_responses() \
        .response("Фарод?.. А там есть еще что-нибудь?", 'DMORTE1.D_s10', 'r', 'reply39814').with_action(lambda: ' ') \
    .done()

# from 9.0
DialogStateBuilder('DMORTE1.D_s10') \
    .with_npc_lines()\
        .line(SPEAKER, "", 's10', 'say0') \
    .with_responses() \
        .response("Неудивительно, что спина так болит: да там целая чертова поэма. А дневник, который должен быть со мной... он был возле меня, пока я здесь валялся?", 'DMORTE1.D_s11', 'r', 'reply39816').with_action(lambda: ' ') \
    .done()

# from 10.0
DialogStateBuilder('DMORTE1.D_s11') \
    .with_npc_lines()\
        .line(SPEAKER, "Нет... тебя обобрали догола, когда доставили сюда. Хотя, с другой стороны, похоже, что достаточно того дневника, что выбит у тебя на теле».~", 's11', 'say39817') \
    .with_responses() \
        .response("А как насчет Фарода? Ты его знаешь?", 'DMORTE1.D_s12', 'r', 'reply39818').with_action(lambda: ' ') \
    .done()

# from 11.0
DialogStateBuilder('DMORTE1.D_s12') \
    .with_npc_lines()\
        .line(SPEAKER, "Нет, не знаю... С другой стороны, я вообще мало кого знаю. В общем, КТО-НИБУДЬ да знает, как добраться до этого Фарода... э, то есть, как только мы выберемся отсюда».~", 's12', 'say39819') \
    .with_responses() \
        .response("И *как* же мы выберемся отсюда?", 'DMORTE1.D_s13', 'r', 'reply39820').with_action(lambda: ' ') \
    .done()

# from 12.0
DialogStateBuilder('DMORTE1.D_s13') \
    .with_npc_lines()\
        .line(SPEAKER, "Ну, если все двери заперты, значит, нам понадобится ключ. Есть шанс, что он есть у одного из ходячих трупов в этой комнате».~", 's13', 'say39821') \
    .with_responses() \
        .response("Ходячих трупов?", 'DMORTE1.D_s14', 'r', 'reply39822').with_action(lambda: ' ') \
    .done()

# from 13.0
DialogStateBuilder('DMORTE1.D_s14') \
    .with_npc_lines()\
        .line(SPEAKER, "Ага, хранители Морга используют мертвые тела в качестве дешевой рабочей силы. Трупы тупые как пробка, они безвредны и не будут атаковать до тех пор, пока ты не нападешь первым».~", 's14', 'say39823') \
    .with_responses() \
        .response("Так значит, я должен напасть на одного из этих трупов и забрать у него ключ?", 'DMORTE1.D_s16', 'r', 'reply39825').with_action(lambda: ' ') \
    .done()

# from 14.0
DialogStateBuilder('DMORTE1.D_s15') \
    .with_npc_lines()\
        .line(SPEAKER, "Погоди, ты что, думаешь, что причинишь им боль? Они уже МЕРТВЫ. Но если тебе нужна мотивация, то пожалуйста: если ты убьешь их, то по крайней мере они отдохнут до того, как хранители поднимут их снова на работу».~", 's15', 'say39826') \
    .with_responses() \
        .response("Ну хорошо... Я собью одного из них и заберу ключ».~", 'DMORTE1.D_s16', 'r', 'reply39827').with_action(lambda: ' ') \
    .done()

# from 14.1 15.0
DialogStateBuilder('DMORTE1.D_s16') \
    .with_npc_lines()\
        .line(SPEAKER, "", 's16', 'say0') \
    .with_responses() \
        .response("Ладно, я поищу его».~", 'DMORTE1.D_s17', 'r', 'reply39829').with_action(lambda: ' ') \
    .done()

# from 16.0
DialogStateBuilder('DMORTE1.D_s17') \
    .with_npc_lines()\
        .line(SPEAKER, "", 's17', 'say0') \
    .with_responses() \
    .done()

# from -
DialogStateBuilder('DMORTE1.D_s18') \
    .with_npc_lines()\
        .line(SPEAKER, "", 's18', 'say0') \
    .with_responses() \
        .response("Ладно... Я поищу».~", 'DMORTE1.D_sNaN', 'r', 'reply39833').with_action(lambda: ' ') \
    .done()

# from -
DialogStateBuilder('DMORTE1.D_s19') \
    .with_npc_lines()\
        .line(SPEAKER, "Отлично, ты нашел скальпель! А теперь пора разделаться с этими трупами... и не бойся, я буду держаться у тебя за спиной и давать ценные тактические советы».~", 's19', 'say39834') \
    .with_responses() \
        .response("А, может, ты мне *поможешь*, Морт?", 'DMORTE1.D_s20', 'r', 'reply39835').with_action(lambda: ' ') \
        .response("Хорошо». ~", 'DMORTE1.D_s23', 'r', 'reply39836').with_action(lambda: ' ') \
    .done()

# from 19.0
DialogStateBuilder('DMORTE1.D_s20') \
    .with_npc_lines()\
        .line(SPEAKER, "Я ПОМОГУ тебе. Хороший совет всегда хорош в трудную минуту».~", 's20', 'say39837') \
    .with_responses() \
        .response("Я имел ввиду помощь в нападении на *трупов*».~", 'DMORTE1.D_s21', 'r', 'reply39838').with_action(lambda: ' ') \
        .response("Ну хорошо тогда».~", 'DMORTE1.D_s23', 'r', 'reply39839').with_action(lambda: ' ') \
    .done()

# from 20.0
DialogStateBuilder('DMORTE1.D_s21') \
    .with_npc_lines()\
        .line(SPEAKER, "Я? Я романтик, а не солдат. Я только под ногами буду путаться».~", 's21', 'say39840') \
    .with_responses() \
        .response("Когда я буду нападать на труп, тебе лучше быть рядом со мной, иначе ты будешь следующим, в кого я воткну этот скальпель».~", 'DMORTE1.D_s22', 'r', 'reply39841').with_action(lambda: ' ') \
        .response("Ну хорошо тогда».~", 'DMORTE1.D_s23', 'r', 'reply39842').with_action(lambda: ' ') \
    .done()

# from 21.0
DialogStateBuilder('DMORTE1.D_s22') \
    .with_npc_lines()\
        .line(SPEAKER, "", 's22', 'say0') \
    .with_responses() \
        .response("Я рад, что мы поняли друг друга».~", 'DMORTE1.D_s23', 'r', 'reply39844').with_action(lambda: ' ') \
    .done()

# from 19.1 20.1 21.1 22.0
DialogStateBuilder('DMORTE1.D_s23') \
    .with_npc_lines()\
        .line(SPEAKER, "", 's23', 'say0') \
    .with_responses() \
        .response("Вперед».~", 'DMORTE1.D_sNaN', 'r', 'reply39846').with_action(lambda: ' ') \
    .done()

# from -
DialogStateBuilder('DMORTE1.D_s24') \
    .with_npc_lines()\
        .line(SPEAKER, "", 's24', 'say0') \
    .with_responses() \
        .response("Хорошо». ~", 'DMORTE1.D_sNaN', 'r', 'reply39848').with_action(lambda: ' ') \
    .done()

# from -
DialogStateBuilder('DMORTE1.D_s25') \
    .with_npc_lines()\
        .line(SPEAKER, "Отлично, вот и ключ. Он должен подойти к одной из дверей в этой комнате».~", 's25', 'say39849') \
    .with_responses() \
        .response("Тогда я перепробую все двери».~", 'DMORTE1.D_sNaN', 'r', 'reply39850').with_action(lambda: ' ') \
    .done()

# from -
DialogStateBuilder('DMORTE1.D_s26') \
    .with_npc_lines()\
        .line(SPEAKER, "Я знал, что ты вернешься, шеф! Все-таки понял, что я нужен тебе, а?»~ [MRT516]", 's26', 'say39851') \
    .with_responses() \
        .response("Не сейчас, Морт».~", 'DMORTE1.D_s27', 'r', 'reply39853').with_action(lambda: ' ') \
    .done()

# from 26.1
DialogStateBuilder('DMORTE1.D_s27') \
    .with_npc_lines()\
        .line(SPEAKER, "Пф-ф. Ну хорошо, не знаю, как долго я смогу здесь быть, так что я даю тебе ПОСЛЕДНИЙ шанс. Ты уверен, что не хочешь моего мудрого совета и быстрой остроты?", 's27', 'say39854') \
    .with_responses() \
        .response("Морт, у тебя НЕТ ни того, ни другого».~", 'DMORTE1.D_s28', 'r', 'reply39855').with_action(lambda: ' ') \
        .response("Не сейчас, Морт. Может быть потом».~", 'DMORTE1.D_s28', 'r', 'reply39857').with_action(lambda: ' ') \
    .done()

# from 27.0 27.2
DialogStateBuilder('DMORTE1.D_s28') \
    .with_npc_lines()\
        .line(SPEAKER, "Ты пытаешься задеть мои чувства, шеф? Погоди, разве я что-то не так сказал? Или это из-за того, что у меня нет рук? Что?", 's28', 'say39858') \
    .with_responses() \
        .response("Ничего такого. Просто сейчас я не нуждаюсь в твоей компании. Прощай, Морт».~", 'DMORTE1.D_s29', 'r', 'reply39860').with_action(lambda: ' ') \
    .done()

# from 28.1
DialogStateBuilder('DMORTE1.D_s29') \
    .with_npc_lines()\
        .line(SPEAKER, "Ну хорошо, я не собираюсь ждать тебя ВЕЧНО, так что тебе лучше вернуться, как только ты передумаешь».~", 's29', 'say39861') \
    .with_responses() \
        .response("Я так и сделаю. Прощай, Морт».~", 'DMORTE1.D_sNaN', 'r', 'reply39862').with_action(lambda: ' ') \
    .done()

# from -
DialogStateBuilder('DMORTE1.D_s30') \
    .with_npc_lines()\
        .line(SPEAKER, "Что тебя гложет, шеф?»~ [MRT515]", 's30', 'say39863') \
    .with_responses() \
        .response("Пока ничего, Морт. Просто проверяю, что ты еще со мной».~", 'DMORTE1.D_sNaN', 'r', 'reply39864').with_action(lambda: ' ') \
    .done()

# from -
DialogStateBuilder('DMORTE1.D_s31') \
    .with_npc_lines()\
        .line(SPEAKER, "Э, шеф... они не слышат тебя, понятно? Они мертвы».~", 's31', 'say42298') \
    .with_responses() \
        .response("Но ты ведь тоже мертв. И разговариваешь со мной».~", 'DMORTE1.D_s32', 'r', 'reply42299').with_action(lambda: ' ') \
    .done()

# from 31.0
DialogStateBuilder('DMORTE1.D_s32') \
    .with_npc_lines()\
        .line(SPEAKER, "Ага, но *я* особенный. Смерть не смогла убить мою жажду к жизни. А здешние трупы... — Морт обводит комнату взглядом. — Они и при жизни из себя ничего не представляли».~", 's32', 'say42300') \
    .with_responses() \
        .response("Понятно...", 'DMORTE1.D_s33', 'r', 'reply42301').with_action(lambda: ' ') \
    .done()

# from 32.0
DialogStateBuilder('DMORTE1.D_s33') \
    .with_npc_lines()\
        .line(SPEAKER, "Слушай шеф... Наблюдение за тем, как ты пытаешься поболтать с этими трупами, не способствует укреплению моей морали. Давай оставим разговоры с мертвецами сумасшедшим, ладно?", 's33', 'say42302') \
    .with_responses() \
        .response("Хорошо. Идем».~", 'DMORTE1.D_sNaN', 'r', 'reply42303').with_action(lambda: ' ') \
    .done()

# from -
DialogStateBuilder('DMORTE1.D_s34') \
    .with_npc_lines()\
        .line(SPEAKER, "Кажется, просителю повезло, шеф. Смотри... у него в руке ключ».~", 's34', 'say42306') \
    .with_responses() \
    .done()