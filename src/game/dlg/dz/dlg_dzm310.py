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
    gsm.set_location('mortuary1')
    renpy.exports.show("bg mortuary1")
    _show('dzm310_img default', center_right_down)
def _dispose():
    _hide('dzm310_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r6499_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r6499_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r6500_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r6501_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6502_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r6502_action(gsm):
    gsm.set_meet_oinosian(True)
def _r9664_condition(gsm):
    return not gsm.get_meet_pharod()
###

# DLG/DZM310.DLG
def dlg_dzm310(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm310        = renpy.store.characters['dzm310']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM310.D_s0
    DialogStateBuilder() \
    .state('DZM310.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Губы этого ходячего трупа крепко сшиты, над бровью вырезан номер «310»; воздух вокруг него насыщен формальдегидом.", 's0', 'say6495').with_action(lambda: _init(gsm)) \
            .line(teller, "Как только ты встаешь на его пути, он поворачивает к тебе свой безжизненный взгляд.", 's0', 'say6495') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM310.D_s1', 'r0', 'reply6499').with_condition(lambda: _r6499_condition(gsm)).with_action(lambda: _r6499_action(gsm)) \
            .response("Итак… что тут у нас интересного?", 'DZM310.D_s1', 'r1', 'reply6500').with_condition(lambda: _r6500_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM310.D_s1', 'r2', 'reply6501').with_condition(lambda: _r6501_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM310.D_s2', 'r3', 'reply6502').with_condition(lambda: _r6502_condition(gsm)).with_action(lambda: _r6502_action(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6503').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6504').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6496') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM310.D_s2', 'r3', 'reply6502').with_condition(lambda: _r6502_condition(gsm)).with_action(lambda: _r6502_action(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6503').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6505').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "В глазах трупа нет даже намека на понимание; они продолжают смотреть каждый в свою сторону.", 's1', 'say6508') \
            .line(teller, "Ты уж было решаешь, что труп слишком далек от того, чтобы отвечать…", 's2', 'say6498') \
            .line(teller, "…но вдруг ты замечаешь страдания, отпечатанные на его лице, и ощущаешь в них беспредельное отчаяние — дух точно вернулся в свою старую оболочку.", 's2', 'say6498') \
        .with_responses() \
            .response("Я хотел бы задать тебе вопрос…", 'DZM310.D_s3', 'r7', 'reply6506') \
            .response("Оставить духа в покое.", 'DZM310.D_s17', 'r8', 'reply9657') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s3', '# from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0') \
        .with_npc_lines() \
            .line(teller, "Он говорит медленно и монотонно, его голос полон страдания и безысходности. Даже сейчас его почти не отличить от бездушного зомби.", 's3', 'say9642') \
            .line(dzm310, "Что ты хочешь знать, милорд?", 's3', 'say9642') \
        .with_responses() \
            .response("Так кто ты?", 'DZM310.D_s4', 'r9', 'reply9658') \
            .response("Откуда ты?", 'DZM310.D_s5', 'r10', 'reply9659') \
            .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM310.D_s6', 'r11', 'reply9660') \
            .response("Где ты… где находится твой дух… теперь?", 'DZM310.D_s7', 'r12', 'reply9661') \
            .response("Почему ты говоришь с таким отчаянием?", 'DZM310.D_s8', 'r13', 'reply9662') \
            .response("Что ты знаешь об этом месте?", 'DZM310.D_s9', 'r14', 'reply9663') \
            .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM310.D_s10', 'r15', 'reply9664').with_condition(lambda: _r9664_condition(gsm)) \
            .response("Ничего, неважно.", 'DZM310.D_s17', 'r16', 'reply9665') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s4', '# from 3.0') \
        .with_npc_lines() \
            .line(dzm310, "Я никто, милорд; бедное насекомое, отчаянно вцепившееся в Башню Утрат в Ойносе. Когда-то меня называли Арабеймом, милорд… давно, очень давно.", 's4', 'say9643') \
        .with_responses() \
            .response("Башне Утрат?", 'DZM310.D_s13', 'r17', 'reply9666') \
            .response("Ойносе?", 'DZM310.D_s7', 'r18', 'reply9667') \
            .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r19', 'reply9668') \
            .response("Больше нет ничего, что я хотел бы узнать. Прощай.", 'DZM310.D_s17', 'r20', 'reply9669') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s5', '# from 3.1') \
        .with_npc_lines() \
            .line(dzm310, "Я жил в Сигиле, милорд. В Улье. Это было не самое ужасное место, как теперь мне кажется, по крайней мере, по сравнению с моим новым домом, где я теперь… Ойносом.", 's5', 'say9644') \
            .line(teller, "Труп моргает, так медленно, что на мгновенье тебе кажется, что он просто закрыл глаза.", 's5', 'say9644') \
        .with_responses() \
            .response("В Улье?", 'DZM310.D_s12', 'r21', 'reply9670') \
            .response("Ойносе?", 'DZM310.D_s7', 'r22', 'reply9671') \
            .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r23', 'reply9672') \
            .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r24', 'reply9673') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s6', '# from 3.2') \
        .with_npc_lines() \
            .line(dzm310, "Я был убит разбойниками, милорд. Я напился и заблудился по улицам Улья. В конце концов, я стал добычей банды головорезов. Вот и все.", 's6', 'say9645') \
            .line(dzm310, "Наверно, моя жизнь стоила даже меньше тех медяков, которые получил сборщик за мое тело.", 's6', 'say9645') \
        .with_responses() \
            .response("Почему ты такого низкого мнения о своей жизни?", 'DZM310.D_s16', 'r25', 'reply9674') \
            .response("Сборщик?", 'DZM310.D_s15', 'r26', 'reply9675') \
            .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r27', 'reply9676') \
            .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r28', 'reply9677') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s7', '# from 3.3 4.1 5.1 8.0 12.0') \
        .with_npc_lines() \
            .line(dzm310, "На секунду дух закрывает глаза; труп слегка дрожит.", 's7', 'say9646') \
            .line(dzm310, "Ужасный Ойнос, милорд. В Серой пустоши. Там, где пребывает моя душа, в тени Хин-Ойна, Башни Утрат.", 's7', 'say9646') \
        .with_responses() \
            .response("Расскажи мне больше об этом… Ойносе.", 'DZM310.D_s11', 'r29', 'reply9678') \
            .response("Хин-Ойна?", 'DZM310.D_s13', 'r30', 'reply9679') \
            .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r31', 'reply9680') \
            .response("Больше нет ничего, что я хотел бы узнать. Прощай.", 'DZM310.D_s17', 'r32', 'reply9681') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s8', '# from 3.4') \
        .with_npc_lines() \
            .line(dzm310, "Для меня больше ничего нет, милорд. Я в вечной западне в чумной пустоши, в Ойносе. Для таких, как я, больше нет надежд.", 's8', 'say9647') \
            .line(teller, "Кажется, дух опустился в более чем патетичное состояние, плечи трупа поникли под весом его скорби.", 's8', 'say9647') \
        .with_responses() \
            .response("Ойносе?", 'DZM310.D_s7', 'r33', 'reply9682') \
            .response("Понятно. У меня есть другой вопрос…", 'DZM310.D_s3', 'r34', 'reply9683') \
            .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r35', 'reply9684') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s9', '# from 3.5 15.0') \
        .with_npc_lines() \
            .line(dzm310, "Очень мало, милорд. Только то, что сюда доставляют умерших для погребения или кремации… или в качестве дешевой рабочей силы, как это случилось с моим телом.", 's9', 'say9648') \
        .with_responses() \
            .response("Теперь понятно. Еще вопрос…", 'DZM310.D_s3', 'r36', 'reply9685') \
            .response("Больше нет ничего, что я хотел бы узнать. Прощай.", 'DZM310.D_s17', 'r37', 'reply9686') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s10', '# from 3.6') \
        .with_npc_lines() \
            .line(teller, "Труп медленно качает головой из стороны в сторону.", 's10', 'say9649') \
            .line(dzm310, "Нет, милорд. Я не знаю никого с таким именем. Прошу прощения, милорд.", 's10', 'say9649') \
        .with_responses() \
            .response("Не надо извиняться. У меня еще вопрос…", 'DZM310.D_s3', 'r38', 'reply9687') \
            .response("Тогда прощай.", 'DZM310.D_s17', 'r39', 'reply9688') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s11', '# from 7.0') \
        .with_npc_lines() \
            .line(dzm310, "Мало что можно сказать, милорд. Это земля моего Повелителя, лорда Хин-Ойна… полная боли и страданий, разлагающихся тел и душ. Это место полной безнадеги.", 's11', 'say9650') \
        .with_responses() \
            .response("Кто такой этот… 'Повелитель'?", 'DZM310.D_s14', 'r40', 'reply9689') \
            .response("Хин-Ойна?", 'DZM310.D_s13', 'r41', 'reply9690') \
            .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r42', 'reply9691') \
            .response("Безусловно, это так. Прощай, дух.", 'DZM310.D_s17', 'r43', 'reply9692') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s12', '# from 5.0') \
        .with_npc_lines() \
            .line(dzm310, "Да, милорд. Плохое место, но там не так страшно, как в Ойносе.", 's12', 'say9651') \
        .with_responses() \
            .response("Ойносе?", 'DZM310.D_s7', 'r44', 'reply9693') \
            .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r45', 'reply9694') \
            .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r46', 'reply9695') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s13', '# from 4.0 7.1 11.1 14.0') \
        .with_npc_lines() \
            .line(dzm310, "Да, милорд. Это очень большая башня, намного выше любого здания в Сигиле. Она сделана из кости, милорд, она очень похоже на позвоночник огромного существа.", 's13', 'say9652') \
            .line(dzm310, "Там я и тружусь, восстанавливая урон, нанесенный армиями мятежных принцев, врагов моего Повелителя.", 's13', 'say9652') \
        .with_responses() \
            .response("Кто такой этот 'Повелитель'?", 'DZM310.D_s14', 'r47', 'reply9696') \
            .response("Понятно. У меня есть другой вопрос…", 'DZM310.D_s3', 'r48', 'reply9697') \
            .response("Понятно. Теперь мне нужно идти, дух. Прощай.", 'DZM310.D_s17', 'r49', 'reply9698') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s14', '# from 11.0 13.0') \
        .with_npc_lines() \
            .line(dzm310, "Я знаю его только как Повелителя, милорд. Он — лорд Хин-Ойна, принц нечисти, несказанно могущественный ультралот.", 's14', 'say9653') \
            .line(dzm310, "Он тот, кому принадлежит моя душа, и будет принадлежать вечно, обреченная чахнуть под его ступней, пока вечность не будет перемолота в Забвение.", 's14', 'say9653') \
        .with_responses() \
            .response("Расскажи мне об этом 'Хин-Ойне'.", 'DZM310.D_s13', 'r50', 'reply9699') \
            .response("У меня есть другие вопросы…", 'DZM310.D_s3', 'r51', 'reply9700') \
            .response("Больше нет ничего, что я хотел бы узнать. Прощай.", 'DZM310.D_s17', 'r52', 'reply9701') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s15', '# from 6.1') \
        .with_npc_lines() \
            .line(dzm310, "Да, милорд, сборщик. Тот, кто собирает мертвецов Сигила и доставляет их в Морг — там, где мы находимся — за небольшую цену.", 's15', 'say9654') \
            .line(teller, "Дух оглядывает окружающую обстановку, затем тихо вздыхает.", 's15', 'say9654') \
        .with_responses() \
            .response("Что ты знаешь об этом Морге?", 'DZM310.D_s9', 'r53', 'reply9702') \
            .response("Понятно. У меня есть другой вопрос к тебе…", 'DZM310.D_s3', 'r54', 'reply9703') \
            .response("Это все, что я хотел узнать. Прощай.", 'DZM310.D_s17', 'r55', 'reply9704') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s16', '# from 6.0') \
        .with_npc_lines() \
            .line(dzm310, "Я не хочу говорить об этом, милорд. Это не тема для разговоров.", 's16', 'say9655') \
            .line(teller, "Похоже, дух непоколебим в данном вопросе.", 's16', 'say9655') \
        .with_responses() \
            .response("Хорошо. Тогда у меня есть вопросы…", 'DZM310.D_s3', 'r56', 'reply9705') \
            .response("Тогда прощай.", 'DZM310.D_s17', 'r57', 'reply9706') \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s17', '# from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1') \
        .with_npc_lines() \
            .line(teller, "Ты даже не замечаешь, как дух покинул тело, до тех пор, пока зомби, неуклюже шагая, не вернулся к своей работе.", 's17', 'say9656') \
        .with_responses() \
            .response("Прощай.", EXIT, 'r58', 'reply20104').with_action(lambda: _hide('dzm310_img')) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM310.D_s18', '# from -') \
        .with_npc_lines() \
            .line(teller, "Похоже, этот труп сгорбился под тяжестью страданий духа.", 's18', 'say20102') \
        .with_responses() \
            .response("У меня есть несколько вопросов…", 'DZM310.D_s3', 'r59', 'reply20103') \
            .response("Я просто проходил мимо. Прощай.", EXIT, 'r60', 'reply20104').with_action(lambda: _dispose()) \
        .push(manager)
