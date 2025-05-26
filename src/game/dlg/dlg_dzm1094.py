import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    current_global_settings,
    travel,
    meet_asonje,
    set_asonje_state
)
from settings.settings_morgue import (
    current_morgue_settings
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init():
    travel('morgue1')
    _show('dzm1094_img default', center_right_down)
def _dispose():
    _hide('dzm1094_img')
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
def s5_action():
    meet_asonje()
###
def _r6565_condition():
    return not changed_law_once('zombie_chaotic')
def _r6565_action():
    change_law_once(-1, 'zombie_chaotic')
def _r6566_condition():
    return changed_law_once('zombie_chaotic')
def _r6567_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r6568_condition():
    return current_global_settings()['can_speak_with_dead']
def _r6568_action():
    set_asonje_state(1)
def _r9247_action():
    change_good_once(-1, 'evil_asonje_1')
    set_asonje_state(3)
def _r9256_condition():
    return not current_global_settings()['meet_pharod']
def _r9276_condition():
    return not current_global_settings()['meet_pharod']
def _r9282_condition():
    return current_global_settings()['asonje_state'] != 2
def _r9286_condition():
    return current_global_settings()['asonje_state'] == 2
def _r9319_condition():
    return not current_global_settings()['meet_pharod']
def _r9289_action():
    set_asonje_state(2)
def _r9290_action():
    set_asonje_state(2)
def _r9291_action():
    set_asonje_state(2)
    _dispose()
def _r9304_action():
    change_adahn_once('DZM1094.D_s23', 1)
def _r9306_condition():
    return current_global_settings()['asonje_state'] != 2
def _r9307_condition():
    return current_global_settings()['asonje_state'] == 2
def _r9312_condition():
    return not current_global_settings()['meet_pharod']
###

# DLG/DZM1094.DLG
def dlg_dzm1094(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm1094       = renpy.store.characters['dzm1094']
    asonje        = renpy.store.characters['asonje']
    EXIT          = -1

    DialogStateBuilder() \
    .state('DZM1094.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "У этого ходячего трупа на лбу вырезан номер «1094». Его губы крепко сшиты, от него исходит сильный химический запах свежего формальдегида, окружающего его в виде облака.", 's0', 'say6562') \
            .line(teller, "Несмотря на мертвенно-бледное лицо и впалые безжизненные молочно-белые глаза, совершенно очевидно, что раньше это был красивый молодой человек.", 's0', 'say6562') \
        .with_responses() \
            .response("Итак… что тут у нас интересного?", 'DZM1094.D_s1', 'r0', 'reply6565').with_condition(lambda: _r6565_condition()).with_action(lambda: _r6565_action()) \
            .response("Итак… что тут у нас интересного?", 'DZM1094.D_s1', 'r1', 'reply6566').with_condition(lambda: _r6566_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM1094.D_s1', 'r2', 'reply6567').with_condition(lambda: _r6567_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM1094.D_s2', 'r3', 'reply6568').with_condition(lambda: _r6568_condition()).with_action(lambda: _r6568_action()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6569').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6570').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6563') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6571').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Тело на миг вздрагивает, затем замирает: душа еще раз вселяется в когда-то покинутую оболочку.", 's2', 'say6564') \
            .line(teller, "В считанные секунды в глазах зомби появляется некое подобие жизни, и он начинает оглядываться по сторонам с любопытно-озадаченным выражением лица. Все тело теперь окружено мягким золотым свечением.", 's2', 'say6564') \
        .with_responses() \
            .response("Я хотел бы задать тебе вопрос…", 'DZM1094.D_s3', 'r7', 'reply6572') \
            .response("Оставить духа.", EXIT, 'r8', 'reply9246').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s3', '# from 2.0') \
        .with_npc_lines() \
            .line(teller, "Внезапно дух обращает на тебя внимание. Он сверкает обезоруживающе-дружелюбной улыбкой, разрывая при этом все швы на рту.", 's3', 'say9224') \
            .line(teller, "Удивившись, он касается руками своих губ, затем пожимает плечами и приветственно кивает.", 's3', 'say9224') \
            .line(dzm1094, "Где… где я? Какое странное место. Я тебя знаю?", 's3', 'say9224') \
            .line(teller, "Он осторожно кашляет, потирая окоченевшую глотку.", 's3', 'say9224') \
        .with_responses() \
            .response("Ты здесь, чтобы отвечать на *мои* вопросы, дух.", 'DZM1094.D_s4', 'r9', 'reply9247').with_action(lambda: _r9247_action()) \
            .response("Ты… по крайней мере твои останки… находятся в морге.", 'DZM1094.D_s13', 'r10', 'reply9248') \
            .response("Нет, сомневаюсь, что мы знакомы. У меня вопрос к тебе…", 'DZM1094.D_s14', 'r11', 'reply9249') \
            .response("Вряд ли. Прощай.", EXIT, 'r12', 'reply9250').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s4', '# from 3.0') \
        .with_npc_lines() \
            .line(teller, "Дружелюбность духа моментально испаряется. Он хмурится, разорванные швы лохмотьями свешиваются с его серых иссохших губ.", 's4', 'say9225') \
            .line(dzm1094, "Хорошо, спрашивай, что хотел.", 's4', 'say9225') \
            .line(teller, "Он отстраняет взгляд: ему явно скучно.", 's4', 'say9225') \
        .with_responses() \
            .response("Так кто ты?", 'DZM1094.D_s5', 'r13', 'reply9251') \
            .response("Откуда ты?", 'DZM1094.D_s6', 'r14', 'reply9252') \
            .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1094.D_s7', '15', 'reply9253') \
            .response("Где ты… где находится твой дух… сейчас?", 'DZM1094.D_s8', 'r16', 'reply9254') \
            .response("Что ты знаешь об этом месте?", 'DZM1094.D_s9', 'r17', 'reply9255') \
            .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1094.D_s10', 'r18', 'reply9256').with_condition(lambda: _r9256_condition()) \
            .response("Ничего, неважно.", EXIT, 'r19', 'reply9257').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s5', '# from 4.0 11.0') \
        .with_npc_lines() \
            .line(asonje, "Меня зовут Асонж. Я могу уйти?", 's5', 'say9226').with_action(lambda: s5_action()) \
        .with_responses() \
            .response("Нет, у меня есть другие вопросы…", 'DZM1094.D_s11', 'r20', 'reply9258') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r21', 'reply9259').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s6', '# from 4.1 11.1') \
        .with_npc_lines() \
            .line(asonje, "Не могу вспомнить. Что-нибудь еще?", 's6', 'say9227') \
        .with_responses() \
            .response("Да, еще один вопрос…", 'DZM1094.D_s11', 'r22', 'reply9260') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r23', 'reply9261').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s7', '# from 4.2 11.2') \
        .with_npc_lines() \
            .line(teller, "Дух пожимает плечами и смотрит вверх.", 's7', 'say9228') \
            .line(asonje, "Точно не скажу. Да и какая вообще разница?", 's7', 'say9228') \
            .line(teller, "Он печально сжимает свои губы и бросает на тебя тяжелый взгляд; призрачные искорки в его глазах сверкают гневом.", 's7', 'say9228') \
            .line(asonje, "Что-нибудь еще?", 's7', 'say9228') \
        .with_responses() \
            .response("Да, еще один вопрос…", 'DZM1094.D_s11', 'r24', 'reply9262') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r25', 'reply9263').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s8', '# from 4.3 11.3') \
        .with_npc_lines() \
            .line(asonje, "Мой дух на Арборее…", 's8', 'say9229') \
            .line(teller, "Он на минуту умолкает, теряясь в теплых воспоминаниях.", 's8', 'say9229') \
            .line(asonje, "В данный момент я жажду вернуться домой, подальше от твоего эгоистичного, самовольного и довольно скучного любопытства. Могу ли я вернуться?", 's8', 'say9229') \
        .with_responses() \
            .response("Нет, у меня есть другие вопросы…", 'DZM1094.D_s11', 'r26', 'reply9264') \
            .response("Да. Прощай.", EXIT, 'r27', 'reply9265').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s9', '# from 4.4 11.4') \
        .with_npc_lines() \
            .line(teller, "Дух окидывает тебя раздраженным взглядом.", 's9', 'say9230') \
            .line(asonje, "Нет, конечно же!", 's9', 'say9230') \
            .line(teller, "Он раздосадовано мотает головой, от этого движения разорванные швы качаются туда-сюда.", 's9', 'say9230') \
        .with_responses() \
            .response("Тогда как же твое тело попало сюда на работу в эти унылые залы?", 'DZM1094.D_s12', 'r28', 'reply9266') \
            .response("У меня есть другие вопросы…", 'DZM1094.D_s11', 'r29', 'reply9267') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r30', 'reply9268').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s10', '# from 4.5 11.5') \
        .with_npc_lines() \
            .line(asonje, "Нет.", 's10', 'say9231') \
            .line(teller, "Похоже, ты мало его интересуешь.", 's10', 'say9231') \
        .with_responses() \
            .response("Тогда у меня есть другой вопрос…", 'DZM1094.D_s11', 'r31', 'reply9269') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r32', 'reply9270').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s11', '# from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0') \
        .with_npc_lines() \
            .line(teller, "Дух шумно вздыхает, наполняя воздух запахом формальдегида из легких трупа.", 's11', 'say9232') \
            .line(asonje, "Да-да… спрашивай.", 's11', 'say9232') \
        .with_responses() \
            .response("Так кто ты?", 'DZM1094.D_s5', 'r33', 'reply9271') \
            .response("Откуда ты?", 'DZM1094.D_s6', 'r34', 'reply9272') \
            .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1094.D_s7', 'r35', 'reply9273') \
            .response("Где ты… где находится твой дух… сейчас?", 'DZM1094.D_s8', 'r36', 'reply9274') \
            .response("Что ты знаешь об этом месте?", 'DZM1094.D_s9', 'r37', 'reply9275') \
            .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1094.D_s10', 'r38', 'reply9276').with_condition(lambda: _r9276_condition()) \
            .response("Ничего, неважно.", EXIT, 'r39', 'reply9277').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s12', '# from 9.0') \
        .with_npc_lines() \
            .line(asonje, "Тебе, дорогой мой приятель, остается только предполагать, как и мне. Мне уже пора, если ты не против.", 's12', 'say9233') \
        .with_responses() \
            .response("Нет, у меня есть другие вопросы…", 'DZM1094.D_s11', 'r40', 'reply9278') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r41', 'reply9279').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s13', '# from 3.1') \
        .with_npc_lines() \
            .line(teller, "Он немного обдумывает это, затем начинает хохотать.", 's13', 'say9234') \
            .line(asonje, "Да! Это все объясняет, не так ли? Постой, я знаю тебя?", 's13', 'say9234') \
            .line(teller, "Он склоняет голову набок, внимательно смотря на тебя. Похоже, для него опознание твоей личности — своего рода увлекательная игра.", 's13', 'say9234') \
        .with_responses() \
            .response("Нет, сомневаюсь, что мы знакомы. У меня вопрос к тебе…", 'DZM1094.D_s14', 'r42', 'reply9280') \
            .response("Вряд ли. Прощай.", EXIT, 'r43', 'reply9281').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s14', '# from 3.2 13.0') \
        .with_npc_lines() \
            .line(teller, "Дух пожимает плечами и улыбается, слегка посмеиваясь.", 's14', 'say9235') \
            .line(asonje, "Возможно, ты прав! Что ты хочешь узнать от меня?", 's14', 'say9235') \
            .line(teller, "Он начинает рассеянно вытягивать остатки швов из своих губ и бросать их на пол, один за одним.", 's14', 'say9235') \
        .with_responses() \
            .response("Так кто ты?", 'DZM1094.D_s15', 'r44', 'reply9282').with_condition(lambda: _r9282_condition()) \
            .response("Так кто ты?", 'DZM1094.D_s25', 'r45', 'reply9286').with_condition(lambda: _r9286_condition()) \
            .response("Откуда ты?", 'DZM1094.D_s16', 'r46', 'reply9287') \
            .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1094.D_s17', 'r47', 'reply9288') \
            .response("Где ты… где находится твой дух… сейчас?", 'DZM1094.D_s18', 'r48', 'reply9317') \
            .response("Что ты знаешь об этом месте?", 'DZM1094.D_s19', 'r49', 'reply9318') \
            .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1094.D_s20', 'r50', 'reply9319').with_condition(lambda: _r9319_condition()) \
            .response("Ничего, неважно.", EXIT, 'r51', 'reply9320').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s15', '# from 14.0 22.0') \
        .with_npc_lines() \
            .line(asonje, "Меня зовут Асонж. А как тебя?", 's15', 'say9236') \
        .with_responses() \
            .response("Я… не знаю.", 'DZM1094.D_s21', 'r52', 'reply9289').with_action(lambda: _r9289_action()) \
            .response("Я скажу тебе в другой раз. У меня есть вопрос…", 'DZM1094.D_s22', 'r53', 'reply9290').with_action(lambda: _r9290_action()) \
            .response("Может быть в другой раз. Прощай.", EXIT, 'r54', 'reply9291').with_action(lambda: _r9291_action()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s16', '# from 14.2 22.2') \
        .with_npc_lines() \
            .line(asonje, "Я отовсюду! По правде говоря, я не знаю, откуда я родом. В жизни я много путешествовал, и могу назвать своим домом многие места. Сейчас передо мной Арборея…", 's16', 'say9237') \
            .line(teller, "Дух выглядит довольным.", 's16', 'say9237') \
        .with_responses() \
            .response("Понятно. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r55', 'reply9292') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r56', 'reply9293').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s17', '# from 14.3 22.3') \
        .with_npc_lines() \
            .line(teller, "Улыбка духа угасает, и он на мгновенье выглядит озадаченным.", 's17', 'say9238') \
            .line(asonje, "Странно… Я не знаю! Я точно не знаю, как умер, правда.", 's17', 'say9238') \
            .line(teller, "Он пожимает плечами.", 's17', 'say9238') \
            .line(asonje, "Неважно!", 's17', 'say9238') \
            .line(teller, "Его радостная улыбка возвращается, сверкая даже несмотря на то, что она находится на высохшем лице трупа.", 's17', 'say9238') \
        .with_responses() \
            .response("У меня есть другие вопросы…", 'DZM1094.D_s22', 'r57', 'reply9294') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r58', 'reply9295').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s18', '# from 14.4 22.4') \
        .with_npc_lines() \
            .line(asonje, "В Арборее! О более удивительном месте я и не мечтал. Нигде в моей смертной жизни я встречал места, столь чувственного… столь величественного…", 's18', 'say9239') \
            .line(teller, "Он умолкает, теряясь в приятных воспоминаниях.", 's18', 'say9239') \
            .line(asonje, "Прекрасные земли, прекрасный народ. Если честно, я уже скучаю по ней!", 's18', 'say9239') \
        .with_responses() \
            .response("Понятно. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r59', 'reply9296') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r60', 'reply9297').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s19', '# from 14.5 22.5') \
        .with_npc_lines() \
            .line(asonje, "Не так уж и много. Я подписал контракт с тленной, подчинившись внезапному порыву… Она показала мне какое-то ужасное место, и сказала, что мое тело будет поднято и использовано в качестве работника.", 's19', 'say9240') \
            .line(asonje, "Я подумал: ведь оно мне не понадобится, когда я перейду в следующую жизнь, так почему бы и нет? Можно перехватить немного серебра и потратить его на женщин и вино!", 's19', 'say9240') \
            .line(teller, "Он тихонько смеется от этой мысли, в его глазах сверкают веселые призрачные искорки.", 's19', 'say9240') \
        .with_responses() \
            .response("Ты что-нибудь знаешь о городе, окружающем Морг?", 'DZM1094.D_s24', 'r61', 'reply9298') \
            .response("Понятно. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r62', 'reply9299') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r63', 'reply9300').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s20', '# from 14.6 22.6') \
        .with_npc_lines() \
            .line(asonje, "Дух на минуту задумывается. Нет, боюсь, что не слышал об этом человеке. Он твой друг?", 's20', 'say9241') \
        .with_responses() \
            .response("Возможно. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r64', 'reply9301') \
            .response("Не знаю. Прощай.", EXIT, 'r65', 'reply9302').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s21', '# from 15.0') \
        .with_npc_lines() \
            .line(teller, "Он выглядит удивленным.", 's21', 'say9242') \
            .line(asonje, "Как странно! Мне очень жаль. Я ведь должен тебя *как-то* называть, верно?", 's21', 'say9242') \
            .line(teller, "Дух выжидающе смотрит на тебя.", 's21', 'say9242') \
        .with_responses() \
            .response("Можешь называть меня, как хочешь. У меня есть вопрос…", 'DZM1094.D_s22', 'r66', 'reply9303') \
            .response("Придумать имя: Ну, не знаю… 'Адан'?", 'DZM1094.D_s23', 'r67', 'reply9304').with_action(lambda: _r9304_action()) \
            .response("Нет, это неважно. Прощай.", EXIT, 'r68', 'reply9305').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s22', '# from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0') \
        .with_npc_lines() \
            .line(asonje, "Конечно. Спрашивай!", 's22', 'say9243') \
            .line(teller, "Он довольно улыбается, с интересом ожидая твоего вопроса. Последний шов был убран, и теперь его улыбка не такая зловещая.", 's22', 'say9243') \
        .with_responses() \
            .response("Так кто ты?", 'DZM1094.D_s15', 'r69', 'reply9306').with_condition(lambda: _r9306_condition()) \
            .response("Так кто ты?", 'DZM1094.D_s25', 'r70', 'reply9307').with_condition(lambda: _r9307_condition()) \
            .response("Откуда ты?", 'DZM1094.D_s16', 'r71', 'reply9308') \
            .response("Как ты попал сюда? То есть, как стал зомби?", 'DZM1094.D_s17', 'r72', 'reply9309') \
            .response("Где ты… где находится твой дух… сейчас?", 'DZM1094.D_s18', 'r73', 'reply9310') \
            .response("Что ты знаешь об этом месте?", 'DZM1094.D_s19', 'r74', 'reply9311') \
            .response("Ты знаешь кого-нибудь по имени Фарод?", 'DZM1094.D_s20', 'r75', 'reply9312').with_condition(lambda: _r9312_condition()) \
            .response("Ничего, неважно.", EXIT, 'r76', 'reply9321').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s23', '# from 21.1') \
        .with_npc_lines() \
            .line(teller, "Дух, чувствуя твои колебания, начинает хохотать.", 's23', 'say9244') \
            .line(asonje, "Вот ведь бедолага! Ну пусть будет Адан, приятель. Так какие у тебя вопросы?", 's23', 'say9244') \
        .with_responses() \
            .response("Да, есть…", 'DZM1094.D_s22', 'r77', 'reply9313') \
            .response("Нет, нету. Прощай.", EXIT, 'r78', 'reply9314').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s24', '# from 19.0') \
        .with_npc_lines() \
            .line(asonje, "О Сигиле, что ли?", 's24', 'say9245') \
            .line(teller, "Увидев твой кивок, труп растягивает улыбку до ушей.", 's24', 'say9245') \
            .line(asonje, "О, я не собираюсь портить тебе впечатление! Иди и разведай его сам! Затеряйся в его улочках, тавернах, среди людей… но будь внимателен!", 's24', 'say9245') \
            .line(asonje, "Это место не только удивительно, но и опасно. Но ведь это и делает все таким захватывающим, не так ли?", 's24', 'say9245') \
        .with_responses() \
            .response("Да… наверное. У меня есть другой вопрос…", 'DZM1094.D_s22', 'r79', 'reply9315') \
            .response("Возможно. Прощай.", EXIT, 'r80', 'reply9316').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s25', '# from 14.1 22.1') \
        .with_npc_lines() \
            .line(asonje, "Меня зовут Асонж.", 's25', 'say9283') \
        .with_responses() \
            .response("У меня есть другие вопросы…", 'DZM1094.D_s22', 'r81', 'reply9284') \
            .response("Это все, что я хотел узнать. Прощай.", EXIT, 'r82', 'reply9285').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s26', '# from -') \
        .with_npc_lines() \
            .line(asonje, "Снова вернулся, а? Он широко улыбается.", 's26', 'say20061') \
        .with_responses() \
            .response("У меня есть несколько вопросов…", 'DZM1094.D_s22', 'r83', 'reply20063') \
            .response("Я просто проходил мимо. Прощай.", EXIT, 'r84', 'reply20064').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM1094.D_s27', '# from -') \
        .with_npc_lines() \
            .line(asonje, "А, это ты… снова.", 's27', 'say20062') \
            .line(teller, "Он хмурится, глядя в сторону.", 's27', 'say20062') \
        .with_responses() \
            .response("У меня есть несколько вопросов…", 'DZM1094.D_s11', 'r85', 'reply20065') \
            .response("Я просто проходил мимо. Прощай.", EXIT, 'r86', 'reply20066').with_action(lambda: _dispose()) \
        .push(manager)